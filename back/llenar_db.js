const fs = require('fs');
const { Pool } = require('pg');
const path = require('path');

const pool = new Pool({
  user: "postgres",
  host: "localhost",
  database: "senora_chela",
  password: "hola",
  port: 5432,
});

const filesToRun = [
    '../BD/LLENADO/LLENADO.sql',
    '../BD/LLENADO/ExtraerDatos.sql',
    '../BD/LLENADO/Nuevos_Productos_y_Servicios.sql',
    '../BD/LLENADO/Mapeo.sql'
];

async function run() {
    console.log("Iniciando llenado de base de datos...");
    const client = await pool.connect();
    
    try {
        console.log("Limpiando base de datos previa para evitar conflictos de IDs...");
        await client.query("BEGIN");
        // Reiniciamos todo limpiamente para que coincidan los IDs de los negocios
        await client.query("TRUNCATE TABLE categorias, roles, direcciones, descuentos, metodos_pago CASCADE;");
        // También resetear las secuencias de las tablas que no se limpian por CASCADE o que necesitan estar en cero
        await client.query("ALTER SEQUENCE roles_id_seq RESTART WITH 1;");
        await client.query("ALTER SEQUENCE direcciones_id_seq RESTART WITH 52;");
        await client.query("ALTER SEQUENCE negocios_id_seq RESTART WITH 15;");
        await client.query("ALTER SEQUENCE productos_id_seq RESTART WITH 1;");
        await client.query("ALTER SEQUENCE servicios_id_seq RESTART WITH 1;");
        await client.query("ALTER SEQUENCE usuarios_id_seq RESTART WITH 1;");
        await client.query("ALTER SEQUENCE listas_deseos_id_seq RESTART WITH 1;");
        await client.query("COMMIT");
        console.log("Base de datos limpia.");
    } catch(err) {
        await client.query("ROLLBACK");
        console.error("Error al limpiar:", err.message);
    }

    for (const filePath of filesToRun) {
        console.log(`\nEjecutando: ${filePath}`);
        const fullPath = path.join(__dirname, filePath);
        const sql = fs.readFileSync(fullPath, 'utf8');
        
        try {
            await client.query("BEGIN");
            await client.query(sql);
            await client.query("COMMIT");
            console.log(`✅ ÉXITO: ${filePath}`);
        } catch (err) {
            await client.query("ROLLBACK");
            console.error(`❌ ERROR en ${filePath}:`);
            console.error(err.message);
            // Salimos en cuanto uno falle porque son dependientes
            break;
        }
    }
    client.release();
    await pool.end();
    console.log("\nProceso finalizado.");
}

run();
