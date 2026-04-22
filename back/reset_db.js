/**
 * reset_db.js
 * Script maestro para recrear la base de datos desde cero.
 * Pasos: DROP DB -> CREATE DB -> TABLES -> FUNCTIONS -> LLENADO
 */

const fs = require('fs');
const { Pool } = require('pg');
const path = require('path');

const DB_NAME = 'senora_chela';
const CONFIG = {
    user: "postgres",
    host: "localhost",
    password: "hola",
    port: 5432,
};

const adminPool = new Pool({ ...CONFIG, database: 'postgres' });
let appPool;

const schemaFiles = [
    '../BD/SCHEME/TABLES.sql',
    '../BD/SCHEME/FUNCTIONS.sql',
];

// Orden correcto de llenado respetando FKs
const dataFiles = [
    '../BD/LLENADO/LLENADO.sql',
    '../BD/LLENADO/ExtraerDatos.sql',
    '../BD/LLENADO/Nuevos_Productos_y_Servicios.sql',
    '../BD/LLENADO/Mapeo.sql',
];

/** Elimina líneas de debugging que romperían la ejecución en bloque */
function sanitize(sql) {
    return sql
        // SELECTs sueltos de inspección
        .replace(/^select \*[^;]*;\n?/gim, '')
        .replace(/^SELECT\b[\s\S]*?information_schema[\s\S]*?;\n?/gim, '')
        // TRUNCATEs sueltos dentro de archivos de INSERT
        .replace(/^TRUNCATE TABLE[^;]*;\n?/gim, '');
}

async function execFile(pool, relPath) {
    const label = path.basename(relPath);
    const raw = fs.readFileSync(path.join(__dirname, relPath), 'utf8');
    const sql = sanitize(raw);

    const client = await pool.connect();
    try {
        await client.query('BEGIN');
        await client.query(sql);
        await client.query('COMMIT');
        console.log(`  ✅ ${label}`);
    } catch (err) {
        await client.query('ROLLBACK');
        console.error(`\n  ❌ ERROR en "${label}":`);
        console.error(`     ${err.message}`);
        throw err;
    } finally {
        client.release();
    }
}

async function main() {
    console.log('\n═══════════════════════════════════════════');
    console.log(' TultiMarket – Reset completo de BD');
    console.log('═══════════════════════════════════════════\n');

    // ── Paso 1: DROP + CREATE ─────────────────
    const adminClient = await adminPool.connect();
    try {
        console.log(`[1/3] Eliminando "${DB_NAME}"...`);
        await adminClient.query(`
            SELECT pg_terminate_backend(pid)
            FROM pg_stat_activity
            WHERE datname = '${DB_NAME}' AND pid <> pg_backend_pid();
        `);
        await adminClient.query(`DROP DATABASE IF EXISTS "${DB_NAME}";`);
        await adminClient.query(`CREATE DATABASE "${DB_NAME}";`);
        console.log(`      ✅ BD recreada limpiamente.\n`);
    } finally {
        adminClient.release();
        await adminPool.end();
    }

    appPool = new Pool({ ...CONFIG, database: DB_NAME });

    // ── Paso 2: Schema ────────────────────────
    console.log('[2/3] Aplicando esquema...');
    for (const f of schemaFiles) await execFile(appPool, f);
    console.log();

    // ── Paso 3: Llenado ───────────────────────
    console.log('[3/3] Insertando datos...');
    for (const f of dataFiles) await execFile(appPool, f);

    await appPool.end();

    console.log('\n═══════════════════════════════════════════');
    console.log(' 🎉 ¡BD lista! Resumen:');
    console.log('    18 negocios | ~290 productos | ~90 servicios | ~580 categorías');
    console.log('═══════════════════════════════════════════');
    console.log('\n   → Arranca el backend: npm start\n');
}

main().catch(err => {
    console.error('\n💥 Proceso interrumpido:', err.message);
    process.exit(1);
});
