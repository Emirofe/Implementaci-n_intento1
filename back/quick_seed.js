/**
 * quick_seed.js
 * Aplica schema + llena solo lo que no falla (categorías).
 * Usuarios, negocios y productos los inserta el usuario desde el frontend.
 */

const fs = require('fs');
const { Pool } = require('pg');
const path = require('path');

const DB_NAME = 'senora_chela';
const CONFIG = { user: "postgres", host: "localhost", password: "hola", port: 5432 };
const adminPool = new Pool({ ...CONFIG, database: 'postgres' });

async function execSql(pool, sql, label) {
    const client = await pool.connect();
    try {
        await client.query('BEGIN');
        await client.query(sql);
        await client.query('COMMIT');
        console.log(`  ✅ ${label}`);
    } catch (err) {
        await client.query('ROLLBACK');
        console.error(`  ❌ ${label}: ${err.message}`);
        throw err;
    } finally {
        client.release();
    }
}

function sanitize(sql) {
    return sql
        .replace(/^select \*[^;]*;\n?/gim, '')
        .replace(/^SELECT\b[\s\S]*?information_schema[\s\S]*?;\n?/gim, '')
        .replace(/^TRUNCATE TABLE[^;]*;\n?/gim, '');
}

async function main() {
    console.log('\n═══════════════════════════════════════════');
    console.log(' TultiMarket – Recrear BD desde cero');
    console.log('═══════════════════════════════════════════\n');

    const adminClient = await adminPool.connect();
    try {
        console.log('[1/3] Recreando base de datos...');
        await adminClient.query(`
            SELECT pg_terminate_backend(pid) FROM pg_stat_activity
            WHERE datname = '${DB_NAME}' AND pid <> pg_backend_pid();
        `);
        await adminClient.query(`DROP DATABASE IF EXISTS "${DB_NAME}";`);
        await adminClient.query(`CREATE DATABASE "${DB_NAME}";`);
        console.log('      ✅ BD recreada.\n');
    } finally {
        adminClient.release();
        await adminPool.end();
    }

    const appPool = new Pool({ ...CONFIG, database: DB_NAME });

    // Esquema
    console.log('[2/3] Aplicando esquema...');
    for (const f of ['../BD/SCHEME/TABLES.sql', '../BD/SCHEME/FUNCTIONS.sql']) {
        const sql = fs.readFileSync(path.join(__dirname, f), 'utf8');
        await execSql(appPool, sql, path.basename(f));
    }
    console.log();

    // Solo categorías (no depende de nada)
    console.log('[3/3] Insertando categorías...');
    const catSql = sanitize(fs.readFileSync(path.join(__dirname, '../BD/LLENADO/ExtraerDatos.sql'), 'utf8'));
    await execSql(appPool, catSql, 'ExtraerDatos.sql (categorías)');

    await appPool.end();

    console.log('\n═══════════════════════════════════════════');
    console.log(' ✅ Lista! Categorías cargadas.');
    console.log(' → Inicia el backend: npm start');
    console.log(' → Registra tu negocio desde el frontend');
    console.log('═══════════════════════════════════════════\n');
}

main().catch(err => {
    console.error('\n💥 Error:', err.message);
    process.exit(1);
});
