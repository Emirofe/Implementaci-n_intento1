

-- ============================================
--	TABLA ROLES
-- ============================================
INSERT INTO roles (nombre_rol) VALUES
('cliente'),
('vendedor'),
('admin')
ON CONFLICT DO NOTHING;
select * from roles;


-- ============================================
--	TABLA DIRECCIONES
-- ============================================
select * from direcciones;
INSERT INTO direcciones (calle, ciudad, estado, codigo_postal, pais, geo_location) 
    VALUES ('Calle Revolución #385', 'Benito Juárez', 'Ciudad de México', '03799', 'México', ST_SetSRID(ST_MakePoint(-99.157833, 19.387609), 4326));
INSERT INTO direcciones (calle, ciudad, estado, codigo_postal, pais, geo_location) 
    VALUES ('Calzada Chapultepec #622', 'Miguel Hidalgo', 'Ciudad de México', '11964', 'México', ST_SetSRID(ST_MakePoint(-99.206676, 19.431268), 4326));
INSERT INTO direcciones (calle, ciudad, estado, codigo_postal, pais, geo_location) 
    VALUES ('Avenida Miguel Ángel de Quevedo #526', 'Coyoacán', 'Ciudad de México', '04259', 'México', ST_SetSRID(ST_MakePoint(-99.15585, 19.324545), 4326));
INSERT INTO direcciones (calle, ciudad, estado, codigo_postal, pais, geo_location) 
    VALUES ('Eje Gabriel Mancera #288', 'Benito Juárez', 'Ciudad de México', '03160', 'México', ST_SetSRID(ST_MakePoint(-99.135064, 19.389146), 4326));
INSERT INTO direcciones (calle, ciudad, estado, codigo_postal, pais, geo_location) 
    VALUES ('Avenida Universidad #972', 'Coyoacán', 'Ciudad de México', '04494', 'México', ST_SetSRID(ST_MakePoint(-99.185611, 19.345672), 4326));
INSERT INTO direcciones (calle, ciudad, estado, codigo_postal, pais, geo_location) 
    VALUES ('Paseo de la Reforma #105', 'Cuauhtémoc', 'Ciudad de México', '06371', 'México', ST_SetSRID(ST_MakePoint(-99.141505, 19.444391), 4326));
INSERT INTO direcciones (calle, ciudad, estado, codigo_postal, pais, geo_location) 
    VALUES ('Calle Amsterdam #321', 'Cuauhtémoc', 'Ciudad de México', '06283', 'México', ST_SetSRID(ST_MakePoint(-99.171802, 19.412497), 4326));
INSERT INTO direcciones (calle, ciudad, estado, codigo_postal, pais, geo_location) 
    VALUES ('Avenida Coyoacán #453', 'Benito Juárez', 'Ciudad de México', '03803', 'México', ST_SetSRID(ST_MakePoint(-99.183416, 19.378902), 4326));
INSERT INTO direcciones (calle, ciudad, estado, codigo_postal, pais, geo_location) 
    VALUES ('Calle Madero #11', 'Cuauhtémoc', 'Ciudad de México', '06560', 'México', ST_SetSRID(ST_MakePoint(-99.124508, 19.440263), 4326));
INSERT INTO direcciones (calle, ciudad, estado, codigo_postal, pais, geo_location) 
    VALUES ('Avenida Horno #159', 'Iztapalapa', 'Ciudad de México', '09156', 'México', ST_SetSRID(ST_MakePoint(-99.072973, 19.363945), 4326));
INSERT INTO direcciones (calle, ciudad, estado, codigo_postal, pais, geo_location) 
    VALUES ('Calle Durango #76', 'Cuauhtémoc', 'Ciudad de México', '06716', 'México', ST_SetSRID(ST_MakePoint(-99.167822, 19.418701), 4326));
INSERT INTO direcciones (calle, ciudad, estado, codigo_postal, pais, geo_location) 
    VALUES ('Avenida Tlalpan #2001', 'Coyoacán', 'Ciudad de México', '04677', 'México', ST_SetSRID(ST_MakePoint(-99.138865, 19.352467), 4326));
INSERT INTO direcciones (calle, ciudad, estado, codigo_postal, pais, geo_location) 
    VALUES ('Eje 5 Sur Eugenia #444', 'Benito Juárez', 'Ciudad de México', '03350', 'México', ST_SetSRID(ST_MakePoint(-99.155702, 19.369408), 4326));
INSERT INTO direcciones (calle, ciudad, estado, codigo_postal, pais, geo_location) 
    VALUES ('Avenida Patriotismo #88', 'Miguel Hidalgo', 'Ciudad de México', '11822', 'México', ST_SetSRID(ST_MakePoint(-99.191632, 19.408713), 4326));
INSERT INTO direcciones (calle, ciudad, estado, codigo_postal, pais, geo_location) 
    VALUES ('Calle 5 de Mayo #23', 'Cuauhtémoc', 'Ciudad de México', '06951', 'México', ST_SetSRID(ST_MakePoint(-99.132644, 19.434315), 4326));
INSERT INTO direcciones (calle, ciudad, estado, codigo_postal, pais, geo_location) 
    VALUES ('Avenida Insurgentes Sur #1800', 'Benito Juárez', 'Ciudad de México', '03478', 'México', ST_SetSRID(ST_MakePoint(-99.163456, 19.375635), 4326));
INSERT INTO direcciones (calle, ciudad, estado, codigo_postal, pais, geo_location) 
    VALUES ('Calzada de Tlalpan #5000', 'Tlalpan', 'Ciudad de México', '14681', 'México', ST_SetSRID(ST_MakePoint(-99.158783, 19.267894), 4326));
INSERT INTO direcciones (calle, ciudad, estado, codigo_postal, pais, geo_location) 
    VALUES ('Calle Colima #123', 'Cuauhtémoc', 'Ciudad de México', '06528', 'México', ST_SetSRID(ST_MakePoint(-99.164501, 19.421575), 4326));
INSERT INTO direcciones (calle, ciudad, estado, codigo_postal, pais, geo_location) 
    VALUES ('Avenida Taxqueña #165', 'Coyoacán', 'Ciudad de México', '04987', 'México', ST_SetSRID(ST_MakePoint(-99.141203, 19.328901), 4326));
INSERT INTO direcciones (calle, ciudad, estado, codigo_postal, pais, geo_location) 
    VALUES ('Avenida Azcapotzalco #300', 'Azcapotzalco', 'Ciudad de México', '02450', 'México', ST_SetSRID(ST_MakePoint(-99.167891, 19.502345), 4326));
INSERT INTO direcciones (calle, ciudad, estado, codigo_postal, pais, geo_location) 
    VALUES ('Calle Zacatecas #100', 'Cuauhtémoc', 'Ciudad de México', '06700', 'México', ST_SetSRID(ST_MakePoint(-99.167822, 19.418701), 4326));
INSERT INTO direcciones (calle, ciudad, estado, codigo_postal, pais, geo_location) 
    VALUES ('Eje Central Lázaro Cárdenas #80', 'Cuauhtémoc', 'Ciudad de México', '06085', 'México', ST_SetSRID(ST_MakePoint(-99.137891, 19.425887), 4326));
INSERT INTO direcciones (calle, ciudad, estado, codigo_postal, pais, geo_location) 
    VALUES ('Avenida Viaducto Río de la Piedad #45', 'Benito Juárez', 'Ciudad de México', '03847', 'México', ST_SetSRID(ST_MakePoint(-99.140678, 19.380123), 4326));
INSERT INTO direcciones (calle, ciudad, estado, codigo_postal, pais, geo_location) 
    VALUES ('Calle Balderas #10', 'Cuauhtémoc', 'Ciudad de México', '06742', 'México', ST_SetSRID(ST_MakePoint(-99.148765, 19.425012), 4326));
INSERT INTO direcciones (calle, ciudad, estado, codigo_postal, pais, geo_location) 
    VALUES ('Avenida División del Norte #2300', 'Benito Juárez', 'Ciudad de México', '03310', 'México', ST_SetSRID(ST_MakePoint(-99.160123, 19.356789), 4326));
INSERT INTO direcciones (calle, ciudad, estado, codigo_postal, pais, geo_location) 
    VALUES ('Calzada de la Viga #1200', 'Iztapalapa', 'Ciudad de México', '09440', 'México', ST_SetSRID(ST_MakePoint(-99.098765, 19.380012), 4326));
INSERT INTO direcciones (calle, ciudad, estado, codigo_postal, pais, geo_location) 
    VALUES ('Paseo de la Palmas #700', 'Miguel Hidalgo', 'Ciudad de México', '11000', 'México', ST_SetSRID(ST_MakePoint(-99.223456, 19.435678), 4326));
INSERT INTO direcciones (calle, ciudad, estado, codigo_postal, pais, geo_location) 
    VALUES ('Calle Puebla #150', 'Cuauhtémoc', 'Ciudad de México', '06700', 'México', ST_SetSRID(ST_MakePoint(-99.16789, 19.423456), 4326));
INSERT INTO direcciones (calle, ciudad, estado, codigo_postal, pais, geo_location) 
    VALUES ('Avenida Universidad #1500', 'Benito Juárez', 'Ciudad de México', '03100', 'México', ST_SetSRID(ST_MakePoint(-99.172345, 19.359876), 4326));
INSERT INTO direcciones (calle, ciudad, estado, codigo_postal, pais, geo_location) 
    VALUES ('Eje 3 Sur Baja California #180', 'Cuauhtémoc', 'Ciudad de México', '06760', 'México', ST_SetSRID(ST_MakePoint(-99.156789, 19.409876), 4326));
INSERT INTO direcciones (calle, ciudad, estado, codigo_postal, pais, geo_location) 
    VALUES ('Calle Centenario #25', 'Álvaro Obregón', 'Ciudad de México', '01040', 'México', ST_SetSRID(ST_MakePoint(-99.215678, 19.390123), 4326));
INSERT INTO direcciones (calle, ciudad, estado, codigo_postal, pais, geo_location) 
    VALUES ('Avenida Eduardo Molina #100', 'Venustiano Carranza', 'Ciudad de México', '15200', 'México', ST_SetSRID(ST_MakePoint(-99.089012, 19.445678), 4326));
INSERT INTO direcciones (calle, ciudad, estado, codigo_postal, pais, geo_location) 
    VALUES ('Calle 16 de Septiembre #50', 'Cuauhtémoc', 'Ciudad de México', '06000', 'México', ST_SetSRID(ST_MakePoint(-99.135432, 19.432109), 4326));
INSERT INTO direcciones (calle, ciudad, estado, codigo_postal, pais, geo_location) 
    VALUES ('Calzada del Hueso #700', 'Coyoacán', 'Ciudad de México', '04920', 'México', ST_SetSRID(ST_MakePoint(-99.123456, 19.319876), 4326));
INSERT INTO direcciones (calle, ciudad, estado, codigo_postal, pais, geo_location) 
    VALUES ('Avenida Lomas de Sotelo #120', 'Miguel Hidalgo', 'Ciudad de México', '11200', 'México', ST_SetSRID(ST_MakePoint(-99.234567, 19.456789), 4326));
INSERT INTO direcciones (calle, ciudad, estado, codigo_postal, pais, geo_location) 
    VALUES ('Calle Luz Saviñón #100', 'Benito Juárez', 'Ciudad de México', '03100', 'México', ST_SetSRID(ST_MakePoint(-99.150987, 19.380123), 4326));
INSERT INTO direcciones (calle, ciudad, estado, codigo_postal, pais, geo_location) 
    VALUES ('Avenida Azcapotzalco La Villa #800', 'Gustavo A. Madero', 'Ciudad de México', '07800', 'México', ST_SetSRID(ST_MakePoint(-99.134567, 19.500123), 4326));
INSERT INTO direcciones (calle, ciudad, estado, codigo_postal, pais, geo_location) 
    VALUES ('Calle República de Uruguay #10', 'Cuauhtémoc', 'Ciudad de México', '06000', 'México', ST_SetSRID(ST_MakePoint(-99.130987, 19.430123), 4326));
INSERT INTO direcciones (calle, ciudad, estado, codigo_postal, pais, geo_location) 
    VALUES ('Eje 6 Sur Trabajadoras Sociales #50', 'Iztapalapa', 'Ciudad de México', '09400', 'México', ST_SetSRID(ST_MakePoint(-99.089012, 19.356789), 4326));
INSERT INTO direcciones (calle, ciudad, estado, codigo_postal, pais, geo_location) 
    VALUES ('Avenida Periférico Sur #4300', 'Álvaro Obregón', 'Ciudad de México', '01080', 'México', ST_SetSRID(ST_MakePoint(-99.234567, 19.330123), 4326));
INSERT INTO direcciones (calle, ciudad, estado, codigo_postal, pais, geo_location) 
    VALUES ('Calle Progreso #10', 'Benito Juárez', 'Ciudad de México', '03800', 'México', ST_SetSRID(ST_MakePoint(-99.178901, 19.378901), 4326));
INSERT INTO direcciones (calle, ciudad, estado, codigo_postal, pais, geo_location) 
    VALUES ('Paseo de la Reforma #300', 'Cuauhtémoc', 'Ciudad de México', '06500', 'México', ST_SetSRID(ST_MakePoint(-99.178901, 19.438901), 4326));
INSERT INTO direcciones (calle, ciudad, estado, codigo_postal, pais, geo_location) 
    VALUES ('Avenida Cuitláhuac #2000', 'Azcapotzalco', 'Ciudad de México', '02200', 'México', ST_SetSRID(ST_MakePoint(-99.189012, 19.489012), 4326));
INSERT INTO direcciones (calle, ciudad, estado, codigo_postal, pais, geo_location) 
    VALUES ('Calle Montecito #38', 'Benito Juárez', 'Ciudad de México', '03810', 'México', ST_SetSRID(ST_MakePoint(-99.170123, 19.400123), 4326));
INSERT INTO direcciones (calle, ciudad, estado, codigo_postal, pais, geo_location) 
    VALUES ('Avenida Observatorio #50', 'Álvaro Obregón', 'Ciudad de México', '01180', 'México', ST_SetSRID(ST_MakePoint(-99.210987, 19.409012), 4326));
INSERT INTO direcciones (calle, ciudad, estado, codigo_postal, pais, geo_location) 
    VALUES ('Calzada México-Xochimilco #5000', 'Xochimilco', 'Ciudad de México', '16700', 'México', ST_SetSRID(ST_MakePoint(-99.110987, 19.290123), 4326));
INSERT INTO direcciones (calle, ciudad, estado, codigo_postal, pais, geo_location) 
    VALUES ('Eje Vial 2 Poniente Monterrey #150', 'Cuauhtémoc', 'Ciudad de México', '06700', 'México', ST_SetSRID(ST_MakePoint(-99.169012, 19.419012), 4326));
INSERT INTO direcciones (calle, ciudad, estado, codigo_postal, pais, geo_location) 
    VALUES ('Avenida Río Churubusco #600', 'Coyoacán', 'Ciudad de México', '04200', 'México', ST_SetSRID(ST_MakePoint(-99.129012, 19.349012), 4326));
INSERT INTO direcciones (calle, ciudad, estado, codigo_postal, pais, geo_location) 
    VALUES ('Calle Tamaulipas #200', 'Cuauhtémoc', 'Ciudad de México', '06140', 'México', ST_SetSRID(ST_MakePoint(-99.179012, 19.409012), 4326));
INSERT INTO direcciones (calle, ciudad, estado, codigo_postal, pais, geo_location) 
    VALUES ('Avenida Miguel Ángel de Quevedo #100', 'Coyoacán', 'Ciudad de México', '04300', 'México', ST_SetSRID(ST_MakePoint(-99.189012, 19.349012), 4326));
INSERT INTO direcciones (calle, ciudad, estado, codigo_postal, pais, geo_location) 
    VALUES ('Avenida Insurgentes Norte #100', 'Gustavo A. Madero', 'Ciudad de México', '07800', 'México', ST_SetSRID(ST_MakePoint(-99.139012, 19.499012), 4326));
select * from direcciones;


-- ============================================
--	TABLA CATEGORIAS
-- ============================================
select * from categorias;
SELECT 
    column_name, 
    data_type, 
    is_nullable, 
    column_default
FROM 
    information_schema.columns
WHERE 
    table_name = 'categorias';

TRUNCATE TABLE productos RESTART IDENTITY CASCADE;


-- ============================================
--	TABLA DESCUENTOS
-- ============================================
-- IDEA LOGICA POR SI LA PROFESORA QUIERE CUPONES GENERALES, SI EL CUPON ESTA REGISTRADO EN DESCUENTOS PERO NO HAY NINGUN PRODUCTO QUE HAGA REFERENCIA, ENTONCES ES GENERAL, SI HAY ALGUNO ESPECIFICO SE APLICA A SOLO ESE
select * from descuentos;
INSERT INTO descuentos (codigo_cupon, porcentaje_descuento, fecha_inicio, fecha_fin)
VALUES 
    (NULL, 50.00, '2026-04-01 00:00:00', '2026-04-10 23:59:59'),
    (NULL, 20.00, '2026-01-01 00:00:00', '2026-12-31 23:59:59'),
    (NULL, 30.00, '2026-05-01 00:00:00', '2026-05-31 23:59:59'),
    (NULL, 15.00, '2026-04-08 00:00:00', '2026-04-15 23:59:59'),
    ('DIABEDIEZ', 10.00, '2026-01-01 00:00:00', '2026-12-31 23:59:59');


-- ============================================
--	TABLA USUARIOS
-- ============================================
select * from usuarios;

INSERT INTO usuarios (id_rol, nombre, email, password_hash, telefono) VALUES
(3, 'Admin Supremo', 'admin@test.com', 'argon2_hash_admin', '5500000000'),
(1, 'Juan Pérez', 'juan@test.com', 'hash_c1', '5511111111'),
(1, 'María García', 'maria@test.com', 'hash_c2', '5522222222'),
(1, 'Roberto Jiménez', 'roberto@test.com', 'hash_c3', '5533333311'),
(1, 'Lucía Torres', 'lucia@test.com', 'hash_c4', '5544444422'),
(1, 'Elena Rivas', 'elena@test.com', 'hash_c5', '5555555533'),
(2, 'Carlos Vendedor', 'carlos@test.com', 'hash_v1', '5533333333'),
(2, 'Ana Negocio', 'ana@test.com', 'hash_v2', '5544444444'),
(2, 'Pedro Suministros', 'pedro@test.com', 'hash_v3', '5566666601'),
(2, 'Sofía Ventas', 'sofia@test.com', 'hash_v4', '5566666602'),
(2, 'Miguel Distribución', 'miguel@test.com', 'hash_v5', '5566666603'),
(2, 'Laura Comercial', 'laura@test.com', 'hash_v6', '5566666604'),
(2, 'Jorge Enlace', 'jorge@test.com', 'hash_v7', '5566666605'),
(2, 'Carmen Mayorista', 'carmen@test.com', 'hash_v8', '5566666606'),
(2, 'Raúl Mercado', 'raul@test.com', 'hash_v9', '5566666607'),
(2, 'Beatriz Ofertas', 'beatriz@test.com', 'hash_v10', '5566666608'),
(2, 'Hugo Proveedor', 'hugo@test.com', 'hash_v11', '5566666609'),
(2, 'Marta Logística', 'marta@test.com', 'hash_v12', '5566666610'),
(2, 'Diego Importaciones', 'diego@test.com', 'hash_v13', '5566666611'),
(2, 'Sara Export', 'sara@test.com', 'hash_v14', '5566666612'),
(2, 'David Soluciones', 'david@test.com', 'hash_v14', '5566666613'),
(2, 'Jose el divertido', 'jose@test.com', 'hash_v14', '5566666614'),
(2, 'Kalid el alto', 'kalid@test.com', 'hash_v14', '5566666615'),
(2, 'Andrea bellezas', 'andrea@test.com', 'hash_v14', '5566666616'),
(2, 'Montse general', 'montse@test.com', 'hash_v14', '5566666617')
ON CONFLICT (email) DO NOTHING;

-- ============================================
--	TABLA REL_USUARIOS_DIRECCIONES
-- ============================================
select * from rel_usuario_direcciones;
INSERT INTO rel_usuario_direcciones (id_usuario, id_direccion, es_principal, tipo_direccion) VALUES
(1, 1, TRUE, 'hogar'),
(2, 2, TRUE, 'hogar'),
(3, 3, TRUE, 'hogar'),
(4, 4, TRUE, 'hogar'),
(5, 5, TRUE, 'hogar'),
(9, 6, TRUE, 'hogar'),
(10, 7, TRUE, 'hogar'),
(11, 8, TRUE, 'hogar'),
(14, 9, TRUE, 'hogar'),
(15, 10, TRUE, 'hogar'),
(16, 11, TRUE, 'hogar'),
(17, 12, TRUE, 'hogar'),
(18, 13, TRUE, 'hogar'),
(19, 14, TRUE, 'hogar'),
(20, 15, TRUE, 'hogar'),
(21, 16, TRUE, 'hogar'),
(22, 17, TRUE, 'hogar'),
(23, 18, TRUE, 'hogar'),
(24, 19, TRUE, 'hogar'),
(25, 20, TRUE, 'hogar'),
(26, 21, TRUE, 'hogar'),
(27, 22, TRUE, 'hogar'),
(28, 23, TRUE, 'hogar'),
(29, 24, TRUE, 'hogar'),
(30, 25, TRUE, 'hogar');

-- ============================================
--	TABLA METODOS_PAGO
-- ============================================
select * from metodos_pago;
INSERT INTO metodos_pago (id_usuario, proveedor_pago, token_pasarela, ultimos_cuatro, fecha_expiracion) VALUES
(1, 'Visa', 'tok_live_8822_aaa', '4422', '12/28'),
(2, 'MasterCard', 'tok_live_1155_bbb', '1155', '05/27'),
(3, 'American Express', 'tok_live_9900_ccc', '9900', '08/29'),
(4, 'Visa', 'tok_live_3344_ddd', '3344', '01/26'),
(5, 'MasterCard', 'tok_live_7766_eee', '7766', '11/27'),
(9, 'Visa', 'tok_live_1212_fff', '1212', '03/30'),
(10, 'MasterCard', 'tok_live_3434_ggg', '3434', '07/28'),
(11, 'Visa', 'tok_live_5656_hhh', '5656', '09/27'),
(14, 'Visa', 'tok_live_7878_iii', '7878', '02/26'),
(15, 'American Express', 'tok_live_9090_jjj', '9090', '06/29'),
(16, 'MasterCard', 'tok_live_2121_kkk', '2121', '10/27'),
(17, 'Visa', 'tok_live_4343_lll', '4343', '12/28'),
(18, 'MasterCard', 'tok_live_6565_mmm', '6565', '04/27'),
(19, 'Visa', 'tok_live_8787_nnn', '8787', '05/29'),
(20, 'MasterCard', 'tok_live_0909_ooo', '0909', '08/30'),
(21, 'MasterCard', 'tok_live_1111_ppp', '1111', '01/27'),
(22, 'Visa', 'tok_live_2222_qqq', '2222', '03/28'),
(23, 'American Express', 'tok_live_3333_rrr', '3333', '11/29'),
(24, 'MasterCard', 'tok_live_4444_sss', '4444', '07/27'),
(25, 'Visa', 'tok_live_5555_ttt', '5555', '09/28'),
(26, 'MasterCard', 'tok_live_abcd_ppp', '1111', '01/27'),
(27, 'Visa', 'tok_live_efgh_qqq', '2222', '03/28'),
(28, 'American Express', 'tok_live_ikjl_rrr', '3333', '11/29'),
(29, 'MasterCard', 'tok_live_rmno_sss', '4444', '07/27'),
(30, 'Visa', 'tok_live_pqrs_ttt', '5555', '09/28');


-- ============================================
--	TABLA NEGOCIOS
-- ============================================
select id, nombre_comercial from negocios;
INSERT INTO negocios (id_usuario, nombre_comercial, rfc_tax_id, id_direccion, logo_url) VALUES
(3, 'Alquiladora Universal: Sillas y Mesas', 'AUS100101A11', 26, 'https://images.unsplash.com/photo-1519167758481-83f550bb49b3?q=80&w=1474'),
(4, 'Mantelería y Textiles Finos "Sofía"', 'MTF200202B22', 27, 'https://images.unsplash.com/photo-1544427920-c49ccfb85579?q=80&w=1470'),
(14, 'Carpas y Estructuras "MegaEventos"', 'CME300303C33', 28, 'https://images.unsplash.com/photo-1533174072545-7a4b6ad7a6c3?q=80&w=1470'),

(15, 'Gala & Tux: Renta de Trajes y Vestidos', 'GTX400404D44', 29, 'https://images.unsplash.com/photo-1594932224828-b4b059b6f6f9?q=80&w=1470'),
(16, 'Boutique "Novias de Ensueño"', 'BNE500505E55', 30, 'https://images.unsplash.com/photo-1546193430-c2d207739ed7?q=80&w=1470'),

(17, 'The Party Store: Globos y Desechables', 'TPS600606F66', 31, 'https://images.unsplash.com/photo-1530103043960-ef38714abb15?q=80&w=1470'),
(18, 'Ludoteca Central: Juguetes y Piñatas', 'LCJ700707G77', 32, 'https://images.unsplash.com/photo-1515488764276-beab7607c1e6?q=80&w=1470'),
(19, 'Eco-Party: Artículos Biodegradables', 'EPB800808H88', 33, 'https://images.unsplash.com/photo-1618506469999-a0a32861f117?q=80&w=1470'),

(20, 'Banquetes "Delicia Real"', 'BDR900909I99', 34, 'https://images.unsplash.com/photo-1555244162-803834f70033?q=80&w=1470'),
(21, 'Cava Selecta: Vinos y Licores', 'CSV101010J10', 35, 'https://images.unsplash.com/photo-1510812431401-41d2bd2722f3?q=80&w=1470'),
(22, 'Pastelería "Dulce Momento"', 'PDM111111K11', 36, 'https://images.unsplash.com/photo-1535141192574-5d4897c82536?q=80&w=1374'),

(23, 'DJ & Sound System "Eclipse"', 'DSE121212L12', 37, 'https://images.unsplash.com/photo-1470225620780-dba8ba36b745?q=80&w=1470'),
(24, 'Magic PhotoBooth: Renta de Cabinas', 'MPB131313M13', 38, 'https://images.unsplash.com/photo-1516035069371-29a1b244cc32?q=80&w=1338'),

(25, 'Transportes "Flete Segur"', 'TFS141414N14', 39, 'https://images.pexels.com/photos/6169668/pexels-photo-6169668.jpeg'),
(26, 'Clean & Reset: Limpieza de Eventos', 'CRE151515O15', 40, 'https://images.pexels.com/photos/6195129/pexels-photo-6195129.jpeg'),
(27, 'Seguridad Privada "Sentinel"', 'SPS161616P16', 41, 'https://images.pexels.com/photos/6064624/pexels-photo-6064624.jpeg'),
(28, 'Ferretería "El Constructor"', 'FEC171717Q17', 42, 'https://images.unsplash.com/photo-1581244276891-99738006d64f?q=80&w=1470'),
(29, 'Generadores Eléctricos "PowerUp"', 'GEP181818R18', 43, 'https://images.pexels.com/photos/257736/pexels-photo-257736.jpeg'),
(30, 'SkyNet: WiFi Temporal para Eventos', 'SWT191919S19', 44, 'https://images.pexels.com/photos/2582937/pexels-photo-2582937.jpeg');

-- ============================================
--	TABLA LISTA_DESEOS
-- ============================================
select * from listas_deseos;
INSERT INTO listas_deseos (id_usuario, nombre, es_publica) VALUES
(1, 'Mis Favoritos', FALSE),
(2, 'Mis Favoritos', FALSE),
(3, 'Mis Favoritos', FALSE),
(4, 'Mis Favoritos', FALSE),
(5, 'Mis Favoritos', FALSE),
(10, 'Mis Favoritos', FALSE),
(11, 'Mis Favoritos', FALSE),
(14, 'Mis Favoritos', FALSE),
(15, 'Mis Favoritos', FALSE),
(16, 'Mis Favoritos', FALSE),
(17, 'Mis Favoritos', FALSE),
(18, 'Mis Favoritos', FALSE),
(19, 'Mis Favoritos', FALSE),
(20, 'Mis Favoritos', FALSE),
(9, 'Mis Favoritos', FALSE),
(21, 'Mis Favoritos', FALSE),
(22, 'Mis Favoritos', FALSE),
(23, 'Mis Favoritos', FALSE),
(24, 'Mis Favoritos', FALSE),
(25, 'Mis Favoritos', FALSE),
(26, 'Mis Favoritos', FALSE),
(27, 'Mis Favoritos', FALSE),
(28, 'Mis Favoritos', FALSE),
(29, 'Mis Favoritos', FALSE),
(30, 'Mis Favoritos', FALSE);


-- ============================================
--	TABLA PRODUCTOS
-- ============================================
select * from productos;
SELECT 
    column_name, 
    data_type, 
    is_nullable, 
    column_default
FROM 
    information_schema.columns
WHERE 
    table_name = 'productos';

TRUNCATE TABLE productos RESTART IDENTITY CASCADE;


-- ============================================
--	TABLA PRODUCTOS_CATEGORIA
-- ============================================
select * from producto_categoria;
SELECT 
    column_name, 
    data_type, 
    is_nullable, 
    column_default
FROM 
    information_schema.columns
WHERE 
    table_name = 'producto_categoria';
select * from categorias;
