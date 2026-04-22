const { Pool } = require('pg');

const pool = new Pool({
  user: "postgres",
  host: "localhost",
  database: "senora_chela",
  password: "hola",
  port: 5432,
});

async function findImageCols() {
  try {
    const tables = ['productos', 'servicios', 'negocios', 'productos_imagenes', 'servicios_imagenes'];
    for (const table of tables) {
      console.log(`--- Columnas de ${table} ---`);
      const res = await pool.query(`
        SELECT column_name, data_type 
        FROM information_schema.columns 
        WHERE table_name = $1
      `, [table]);
      console.table(res.rows);
    }
  } catch (err) {
    console.error("Error:", err.message);
  } finally {
    await pool.end();
  }
}

findImageCols();
