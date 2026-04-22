const { Pool } = require('pg');

const pool = new Pool({
  user: "postgres",
  host: "localhost",
  database: "senora_chela",
  password: "hola",
  port: 5432,
});

async function checkBusinesses() {
  try {
    console.log("--- Consultando Negocios ---");
    const resultNegocios = await pool.query(`
      SELECT n.id, n.nombre_comercial, n.rfc_tax_id, n.id_usuario, n.fecha_creacion,
             d.calle, d.ciudad, d.estado, ST_AsText(d.geo_location) as coordenadas
      FROM negocios n
      LEFT JOIN direcciones d ON n.id_direccion = d.id
      ORDER BY n.fecha_creacion DESC
    `);
    
    if (resultNegocios.rows.length === 0) {
      console.log("No se encontraron negocios en la base de datos.");
    } else {
      console.table(resultNegocios.rows);
    }

  } catch (err) {
    console.error("Error al consultar la base de datos:", err.message);
  } finally {
    await pool.end();
  }
}

checkBusinesses();
