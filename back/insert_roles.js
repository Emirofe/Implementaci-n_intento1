const { Pool } = require('pg');
const pool = new Pool({ user: 'postgres', host: 'localhost', database: 'senora_chela', password: 'hola', port: 5432 });
pool.query(`
    INSERT INTO roles (id, nombre_rol) VALUES
    (1, 'cliente'),
    (2, 'vendedor'),
    (3, 'admin')
    ON CONFLICT (id) DO UPDATE SET nombre_rol = EXCLUDED.nombre_rol;
    SELECT setval('roles_id_seq', (SELECT MAX(id) FROM roles));
`).then(() => {
    console.log('Roles basicos insertados correctamente');
    pool.end();
}).catch(err => {
    console.error(err.message);
    pool.end();
});
