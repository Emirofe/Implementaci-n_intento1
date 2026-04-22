select * from categorias;
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(1, 'Mobiliario', NULL, 'ambos'),
(2, 'Mantelería y Textiles', NULL, 'ambos'),
(3, 'Vajilla y Cristalería', NULL, 'ambos'),
(4, 'Estructuras y Pistas', NULL, 'ambos');
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(5, 'Sillas', 1, 'ambos'),
(6, 'Mesas', 1, 'ambos'),
(7, 'Manteles', 2, 'ambos'),
(8, 'Servilletas', 2, 'ambos'),
(9, 'Platos', 3, 'ambos'),
(10, 'Copas y Vasos', 3, 'ambos');
-- Materiales para Sillas (ID 5)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(11, 'Madera', 5, 'ambos'),
(12, 'Resina', 5, 'ambos'),
(13, 'Acero Inoxidable', 5, 'ambos'),
(14, 'Policarbonato', 5, 'ambos');
-- Materiales para Mesas (ID 6)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(15, 'Madera', 6, 'ambos'),
(16, 'Cristal Templado', 6, 'ambos'),
(17, 'Metal', 6, 'ambos'),
(18, 'MDF', 6, 'ambos');
-- Materiales para Mantelería (ID 7 y 8)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(19, 'Lino', 7, 'ambos'),
(20, 'Terciopelo', 7, 'ambos'),
(21, 'Algodón', 8, 'ambos'),
(22, 'Seda y Satín', 7, 'ambos');
-- Materiales para Platos (ID 9)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(23, 'Porcelana', 9, 'ambos'),
(24, 'Cerámica', 9, 'ambos'),
(25, 'Barro', 9, 'ambos'),
(26, 'Vidrio', 9, 'ambos');
-- Materiales para Copas y Vasos (ID 10)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(27, 'Cristal', 10, 'ambos'),
(28, 'Vidrio', 10, 'ambos'),
(29, 'Policarbonato', 10, 'ambos');
-- Acabados para Sillas y Mesas (ID 5 y 6)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(30, 'Oro Espejo', 5, 'ambos'),
(31, 'Blanco Mate', 5, 'ambos'),
(32, 'Nogal Envejecido', 6, 'ambos'),
(33, 'Transparente', 5, 'ambos'),
(34, 'Veteado Natural', 6, 'ambos');
-- Acabados para Textiles (ID 7 y 8)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(35, 'Estampado Damasco', 7, 'ambos'),
(36, 'Bordado', 8, 'ambos'),
(37, 'Color Sólido Mate', 7, 'ambos'),
(38, 'Brillo Satinado', 7, 'ambos');
-- Acabados para Platos (ID 9)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(39, 'Filo Dorado / Platino', 9, 'ambos'),
(40, 'Esmalte Mate', 9, 'ambos'),
(41, 'Textura Rugosa Orgánica', 9, 'ambos'),
(42, 'Transparente con Relieve', 9, 'ambos');
-- Acabados para Copas y Vasos (ID 10)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(43, 'Acabado > Borde de Color (Azul/Ámbar)', 10, 'ambos'),
(44, 'Acabado > Efecto Facetado / Diamante', 10, 'ambos'),
(45, 'Acabado > Opaco / Satinado', 10, 'ambos'),
(46, 'Acabado > Liso Ultra Transparente', 10, 'ambos');
-- Contextos Generales para Mobiliario y Menaje
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(47, 'Boda Elegante / Gala', 5, 'ambos'),
(48, 'Evento Corporativo / Congreso', 5, 'ambos'),
(49, 'Jardín / Exterior / Picnic', 6, 'ambos'),
(50, 'XV Años / Fiesta Temática', 6, 'ambos'),
(51, 'Bautizo / Primera Comunión', 7, 'ambos'),
(52, 'Coctel / Networking', 6, 'ambos'),
(53, 'Cena Íntima / Pedida de Mano', 9, 'ambos');
-- Contextos para Platos, Copas y Vasos
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(54, 'Cena de Gala de 5 Tiempos', 9, 'ambos'),
(55, 'Boda Destino / Playa', 10, 'ambos'),
(56, 'Brunch / Evento de Día', 9, 'ambos'),
(57, 'Cata de Vinos / Maridaje', 10, 'ambos'),
(58, 'Fiesta Infantil / Exterior Seguro', 10, 'ambos'),
(59, 'Banquete Tradicional Mexicano', 9, 'ambos'),
(60, 'Coctelería de Autor / Mixología', 10, 'ambos');


-- Categorías Principales (Nivel 0)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(61, 'Mantelería Fina', NULL, 'ambos'),
(62, 'Complementos Textiles', NULL, 'ambos'),
(63, 'Vestimenta de Mobiliario', NULL, 'ambos');
-- Subcategorías de Mantelería Fina (ID 61)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(64, 'Manteles Redondos', 61, 'ambos'),
(65, 'Manteles Tablón', 61, 'ambos'),
(66, 'Manteles Cuadrados', 61, 'ambos');
-- Subcategorías de Complementos y Vestimenta (IDs 62 y 63)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(67, 'Servilletas de Tela', 62, 'ambos'),
(68, 'Caminos de Mesa', 62, 'ambos'),
(69, 'Fundas para Sillas', 63, 'ambos'),
(70, 'Moños y Bandas', 63, 'ambos');
-- Materiales para Manteles (IDs 64, 65, 66)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(71, 'Lino Importado', 64, 'ambos'),
(72, 'Terciopelo', 64, 'ambos'),
(73, 'Lino Importado', 65, 'ambos'),
(74, 'Jacquard', 65, 'ambos'),
(75, 'Seda Cruda', 66, 'ambos');
-- Materiales para Servilletas y Caminos (IDs 67 y 68)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(76, 'Algodón Peinado', 67, 'ambos'),
(77, 'Lino Fino', 67, 'ambos'),
(78, 'Gasa de Algodón (Cheesecloth)', 68, 'ambos'),
(79, 'Macramé', 68, 'ambos');
-- Acabados para Manteles y Servilletas (IDs 64, 65 y 67)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(80, 'Bordado Artesanal', 64, 'ambos'),
(81, 'Aplicaciones de Guipur', 64, 'ambos'),
(82, 'Liso con Caída Pesada', 65, 'ambos'),
(83, 'Estampado Toile de Jouy', 64, 'ambos'),
(84, 'Vainica a Mano', 67, 'ambos'),
(85, 'Borde Deshilado', 67, 'ambos');
-- Contextos Generales para Textiles (IDs 61 y 62)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(86, 'Boda de Lujo / Etiqueta Rigurosa', 61, 'ambos'),
(87, 'Hacienda / Estilo Mexicano Chic', 61, 'ambos'),
(88, 'Evento Corporativo Premium', 61, 'ambos'),
(89, 'Boho / Playa Romántica', 62, 'ambos'),
(90, 'Cena Degustación / Alta Cocina', 62, 'ambos');


-- Categorías Principales (Nivel 0)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(91, 'Carpas y Toldos', NULL, 'ambos'),
(92, 'Domos y Estructuras Arquitectónicas', NULL, 'ambos'),
(93, 'Pistas de Baile y Escenarios', NULL, 'ambos'),
(94, 'Complementos (Clima e Iluminación)', NULL, 'ambos');
-- Subcategorías de Carpas (ID 91)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(95, 'Carpas Transparentes', 91, 'ambos'),
(96, 'Carpas Árabes / Blancas Elegantes', 91, 'ambos'),
(97, 'Pabellones Industriales', 91, 'ambos'),
(98, 'Toldos de Pico / 3x3', 91, 'ambos');
-- Subcategorías de Domos y Estructuras (ID 92)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(99, 'Domos Geodésicos', 92, 'ambos'),
(100, 'Estructuras Truss / Ground Support', 92, 'ambos');
-- Subcategorías de Pistas y Escenarios (ID 93)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(101, 'Pistas Iluminadas (Pixel / Infinity)', 93, 'ambos'),
(102, 'Pistas de Cristal / Charol', 93, 'ambos'),
(103, 'Pistas de Madera / Pintadas a Mano', 93, 'ambos'),
(104, 'Tarimas y Templetes', 93, 'ambos');
-- Materiales y Coberturas para Carpas (IDs 95, 96, 97)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(105, 'Lona PVC Transparente (Calibre Pesado)', 95, 'ambos'),
(106, 'Lona Blackout Térmica Blanca', 96, 'ambos'),
(107, 'Lona Ignífuga de Alta Resistencia', 97, 'ambos');
-- Acabados y Accesorios Perimetrales para Carpas (ID 91)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(108, 'Cielo Falso / Plafón Plisado', 91, 'ambos'),
(109, 'Cubrepostes de Tela Lisa', 91, 'ambos'),
(110, 'Cortinas Perimetrales Ciegas (Blancas)', 91, 'ambos'),
(111, 'Cortinas Perimetrales con Ventana Francesa', 91, 'ambos');
-- Complementos: Climatización e Iluminación (ID 94)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(112, 'Calentadores de Hongo / Pirámide', 94, 'ambos'),
(113, 'Cañones de Aire Acondicionado', 94, 'ambos'),
(114, 'Ventiladores Industriales / Brisa', 94, 'ambos'),
(115, 'Candiles de Cristal (Chandeliers)', 94, 'ambos'),
(116, 'Iluminación Arquitectónica (Wash / LED)', 94, 'ambos');
-- Contextos Generales de Eventos
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(117, 'Bodas Masivas en Jardín / Hacienda', 91, 'ambos'),
(118, 'Exposiciones y Ferias Comerciales', 97, 'ambos'),
(119, 'Festivales de Música / Conciertos', 100, 'ambos'),
(120, 'Eventos Corporativos y Plenarias', 91, 'ambos'),
(121, 'Pasarelas y Eventos de Moda', 93, 'ambos');


-- Categorías Principales (Nivel 0)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(122, 'Etiqueta Masculina', NULL, 'ambos'),
(123, 'Vestidos y Moda Femenina', NULL, 'ambos'),
(124, 'Accesorios y Complementos', NULL, 'ambos'),
(125, 'Calzado de Gala', NULL, 'ambos');
-- Subcategorías Masculinas (ID 122)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(126, 'Smokings / Tuxedos', 122, 'ambos'),
(127, 'Trajes Sastre y Clásicos', 122, 'ambos'),
(128, 'Fracs y Jaqués', 122, 'ambos'),
(129, 'Guayaberas de Gala', 122, 'ambos');
-- Subcategorías Femeninas (ID 123)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(130, 'Vestidos de Noche (Largos)', 123, 'ambos'),
(131, 'Vestidos de Cóctel (Cortos/Midi)', 123, 'ambos'),
(132, 'Conjuntos Sastre Femeninos', 123, 'ambos');
-- Cortes y Siluetas Masculinas (IDs 126 y 127)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(133, 'Slim Fit / Corte Europeo', 127, 'ambos'),
(134, 'Regular Fit / Corte Clásico', 127, 'ambos'),
(135, 'Slim Fit / Corte Europeo', 126, 'ambos');
-- Cortes y Siluetas Femeninas (ID 130)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(136, 'Corte Sirena', 130, 'ambos'),
(137, 'Corte Princesa / Línea A', 130, 'ambos'),
(138, 'Corte Imperio', 130, 'ambos');
-- Telas y Materiales (IDs 126 y 130)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(139, 'Lana Super 100s / Lana Fría', 126, 'ambos'),
(140, 'Terciopelo', 126, 'ambos'),
(141, 'Satín / Raso', 130, 'ambos'),
(142, 'Encaje y Pedrería Fina', 130, 'ambos'),
(143, 'Chifón / Gasa', 130, 'ambos');
-- Subcategorías de Accesorios (ID 124)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(144, 'Corbatas, Moños y Plastrones', 124, 'ambos'),
(145, 'Mancuernillas y Pisacorbatas', 124, 'ambos'),
(146, 'Fajas / Cummerbunds y Tirantes', 124, 'ambos'),
(147, 'Bolsos de Noche / Clutches', 124, 'ambos'),
(148, 'Tocados, Tiaras y Peinetas', 124, 'ambos');
-- Contextos y Protocolos (Códigos de Vestimenta)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(149, 'Etiqueta Rigurosa / Black Tie', 122, 'ambos'),
(150, 'Graduación / Prom', 123, 'ambos'),
(151, 'Boda de Día / Hacienda / Playa', 122, 'ambos'),
(152, 'Boda de Día / Hacienda / Playa', 123, 'ambos'),
(153, 'Cóctel Corporativo / Gala', 123, 'ambos');


-- Categorías Principales (Nivel 0)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(154, 'Vestidos de Novia', NULL, 'ambos'),
(155, 'Vestidos para Cortejo y Acompañantes', NULL, 'ambos'),
(156, 'Accesorios Nupciales', NULL, 'ambos'),
(157, 'Lencería y Batas de Preparación', NULL, 'ambos');
-- Cortes y Siluetas de Vestidos de Novia (ID 154)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(158, 'Corte Princesa (Volumen)', 154, 'ambos'),
(159, 'Corte Sirena / Trompeta', 154, 'ambos'),
(160, 'Corte en A', 154, 'ambos'),
(161, 'Estilo Imperio / Lánguido', 154, 'ambos'),
(162, 'Trajes Pantalón y Jumpsuits Nupciales', 154, 'ambos');
-- Subcategorías de Cortejo y Acompañantes (ID 155)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(163, 'Damas de Honor (Multiforma/Mismo Tono)', 155, 'ambos'),
(164, 'Madrinas y Mamá de los Novios', 155, 'ambos'),
(165, 'Pajes / Niñas de las Flores', 155, 'ambos');
-- Telas y Materiales para Vestidos de Novia (ID 154)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(166, 'Encaje (Chantilly, Guipur, Alençon)', 154, 'ambos'),
(167, 'Mikado, Raso y Satén', 154, 'ambos'),
(168, 'Tul y Organza', 154, 'ambos'),
(169, 'Crepé con Caída / Minimalista', 154, 'ambos');
-- Subcategorías de Accesorios (ID 156)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(170, 'Velos (Cortos, Catedral, Mantillas)', 156, 'ambos'),
(171, 'Tocados, Tiaras y Peinetas', 156, 'ambos'),
(172, 'Joyería Fina Nupcial', 156, 'ambos'),
(173, 'Ligas, Arras y Cojines', 156, 'ambos'),
(174, 'Calzado Nupcial (Zapatillas y Alpargatas)', 156, 'ambos');
-- Contextos y Estilos de Boda (ID 154)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(175, 'Boda Religiosa / Tradicional de Noche', 154, 'ambos'),
(176, 'Boda Civil / Íntima de Día', 154, 'ambos'),
(177, 'Boda de Playa / Destino', 154, 'ambos'),
(178, 'Boda Boho / Rústica en Jardín', 154, 'ambos');


-- Categorías Principales (Nivel 0)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(179, 'Globos y Arte con Globos', NULL, 'ambos'),
(180, 'Desechables y Vajilla de Fiesta', NULL, 'ambos'),
(181, 'Artículos de Animación / Batucada', NULL, 'ambos'),
(182, 'Bolsas, Cajas y Empaques', NULL, 'ambos');
-- Subcategorías de Globos (ID 179)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(183, 'Globos de Látex', 179, 'ambos'),
(184, 'Globos Metálicos y Números (Foil)', 179, 'ambos'),
(185, 'Globos Burbuja / Transparentes (PVC)', 179, 'ambos'),
(186, 'Arcos, Guirnaldas y Bouquets', 179, 'ambos');
-- Acabados y Variantes de Látex (ID 183)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(187, 'Acabado Mate / Pastel (Macaron)', 183, 'ambos'),
(188, 'Acabado Cromo / Espejo', 183, 'ambos'),
(189, 'Acabado Perlado / Metálico', 183, 'ambos'),
(190, 'Látex Impreso / Con Confeti', 183, 'ambos');
-- Subcategorías de Desechables (ID 180)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(191, 'Platos Desechables', 180, 'ambos'),
(192, 'Vasos, Copas y Shots', 180, 'ambos'),
(193, 'Cubiertos Desechables', 180, 'ambos'),
(194, 'Manteles y Servilletas de Papel/Plástico', 180, 'ambos');
-- Materiales de Desechables (ID 180)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(195, 'Cartón Estampado / Temático', 180, 'ambos'),
(196, 'Plástico Rígido Premium (Tipo Cristal)', 180, 'ambos'),
(197, 'Biodegradables (Bagazo, Bambú, Fécula)', 180, 'ambos');
-- Subcategorías de Animación (ID 181)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(198, 'Artículos Luminosos y Neón (Glow)', 181, 'ambos'),
(199, 'Sombreros, Antifaces y Lentes', 181, 'ambos'),
(200, 'Confeti, Espumas y Bengalas', 181, 'ambos'),
(201, 'Letreros, Velas y Cake Toppers', 181, 'ambos');
-- Contextos y Temáticas (Asignados a Globos ID 179 para Arreglos)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(202, 'Fiesta Infantil / Personajes', 179, 'ambos'),
(203, 'Baby Shower y Revelación de Género', 179, 'ambos'),
(204, 'Despedida de Soltera / Bachelorette', 179, 'ambos'),
(205, 'Graduaciones y Fin de Cursos', 179, 'ambos'),
(206, 'Bodas, Aniversarios y San Valentín', 179, 'ambos');


-- Categorías Principales (Nivel 0)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(207, 'Juguetes', NULL, 'ambos'),
(208, 'Piñatas', NULL, 'ambos'),
(209, 'Dulcería y Relleno', NULL, 'ambos'),
(210, 'Juegos Didácticos y Ludoteca', NULL, 'ambos');
-- Subcategorías de Juguetes (ID 207)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(211, 'Figuras de Acción y Coleccionables', 207, 'ambos'),
(212, 'Muñecas y Accesorios', 207, 'ambos'),
(213, 'Vehículos, Pistas y Radiocontrol', 207, 'ambos'),
(214, 'Juegos de Mesa y Rompecabezas', 207, 'ambos'),
(215, 'Juguetes de Exterior y Montables', 207, 'ambos');
-- Subcategorías de Piñatas (ID 208)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(216, 'Piñatas de Tambor (Personajes)', 208, 'ambos'),
(217, 'Piñatas Tradicionales (Picos/Estrellas)', 208, 'ambos'),
(218, 'Piñatas de Números y Letras', 208, 'ambos'),
(219, 'Piñatas 3D / Esculturales', 208, 'ambos');
-- Materiales y Técnicas de Piñatas (IDs 216, 217 y 219)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(220, 'Estructura de Alambre y Periódico', 217, 'ambos'),
(221, 'Cartón Corrugado', 216, 'ambos'),
(222, 'Papel Maché / Engrudo', 219, 'ambos');
-- Subcategorías de Dulcería y Relleno (ID 209)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(223, 'Dulces y Caramelos a Granel', 209, 'ambos'),
(224, 'Juguetes Piñateros (Sorpresas Mini)', 209, 'ambos'),
(225, 'Bolsas de Dulces Prearmadas (Aguinaldos)', 209, 'ambos');
-- Subcategorías de Ludoteca y Didácticos (ID 210)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(226, 'Construcción y Bloques (Tipo Lego)', 210, 'ambos'),
(227, 'Desarrollo Sensorial y Motricidad', 210, 'ambos'),
(228, 'Arte, Manualidades y Modelado', 210, 'ambos');
-- Clasificación por Edades / Contextos (Asignado a Juguetes ID 207)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(229, 'Bebés y Primera Infancia (0-3 años)', 207, 'ambos'),
(230, 'Preescolar (3-5 años)', 207, 'ambos'),
(231, 'Escolar (6-9 años)', 207, 'ambos'),
(232, 'Preadolescentes (10-12 años)', 207, 'ambos'),
(233, 'Adolescentes y Coleccionistas (+13)', 207, 'ambos');


-- Categorías Principales (Nivel 0)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(234, 'Vajilla y Platos Ecológicos', NULL, 'ambos'),
(235, 'Vasos y Popotes Sustentables', NULL, 'ambos'),
(236, 'Cubiertos Biodegradables', NULL, 'ambos'),
(237, 'Empaques y Contenedores (Take-out)', NULL, 'ambos'),
(238, 'Decoración y Ambientación Eco-Friendly', NULL, 'ambos');
-- Materiales para Vajilla y Platos (ID 234)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(239, 'Hoja de Palma (Caída Natural)', 234, 'ambos'),
(240, 'Bagazo de Caña (100% Compostable)', 234, 'ambos'),
(241, 'Fécula de Maíz (PLA)', 234, 'ambos'),
(242, 'Salvado de Trigo', 234, 'ambos');
-- Subcategorías y Materiales para Vasos y Popotes (ID 235)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(243, 'Vasos para Bebidas Frías (Bioplástico PLA)', 235, 'ambos'),
(244, 'Vasos para Bebidas Calientes (Cartón/Kraft)', 235, 'ambos'),
(245, 'Popotes de Semilla de Aguacate', 235, 'ambos'),
(246, 'Popotes de Agave / Fibras Naturales', 235, 'ambos'),
(247, 'Popotes de Papel Biodegradable', 235, 'ambos');
-- Materiales para Cubiertos (ID 236)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(248, 'Madera de Abedul (Certificada FSC)', 236, 'ambos'),
(249, 'Bambú Reutilizable / Compostable', 236, 'ambos'),
(250, 'Bioplástico CPLA (Alta Temperatura)', 236, 'ambos');
-- Subcategorías de Empaques y Contenedores (ID 237)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(251, 'Clamshells (Cajas con tapa abatible)', 237, 'ambos'),
(252, 'Cajas de Cartón Kraft y Reciclado', 237, 'ambos'),
(253, 'Bolsas Compostables (Almidón de Maíz)', 237, 'ambos'),
(254, 'Charolas y Ensaladeras de Bagazo', 237, 'ambos');
-- Subcategorías de Decoración Eco-Friendly (ID 238)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(255, 'Globos de Látex 100% Natural Biodegradable', 238, 'ambos'),
(256, 'Confeti Hidrosoluble / Papel Semilla (Plantable)', 238, 'ambos'),
(257, 'Guirnaldas y Banderines de Papel Reciclado', 238, 'ambos');
-- Contextos y Tipos de Evento
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(258, 'Bodas Eco-Friendly / Conciencia Ambiental', 234, 'ambos'),
(259, 'Festivales al Aire Libre / Zero Waste', 235, 'ambos'),
(260, 'Catering Sustentable y Foodtrucks', 237, 'ambos'),
(261, 'Picnics y Fiestas Infantiles Seguras', 236, 'ambos');


-- Categorías Principales (Nivel 0)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(262, 'Menús de Tiempos y Platos Fuertes', NULL, 'ambos'),
(263, 'Buffets, Estaciones y Barras', NULL, 'ambos'),
(264, 'Bocadillos, Canapés y Entradas', NULL, 'ambos'),
(265, 'Bebidas, Mixología y Barras Libres', NULL, 'ambos'),
(266, 'Repostería y Mesas de Dulces', NULL, 'ambos');
-- Subcategorías de Menús de Tiempos (ID 262)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(267, 'Menú Formal a 3 Tiempos', 262, 'ambos'),
(268, 'Menú de Gala a 4 o 5 Tiempos', 262, 'ambos'),
(269, 'Menú Infantil', 262, 'ambos'),
(270, 'Alternativas Veganas / Vegetarianas', 262, 'ambos'),
(271, 'Dietas Especiales (Sin Gluten / Keto)', 262, 'ambos');
-- Subcategorías de Buffets y Estaciones (ID 263)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(272, 'Buffet Internacional', 263, 'ambos'),
(273, 'Buffet Tradicional Mexicano / Taquizas', 263, 'ambos'),
(274, 'Estaciones Interactivas (Pastas, Sushi, Cortes)', 263, 'ambos'),
(275, 'Brunch y Desayunos', 263, 'ambos');
-- Subcategorías de Bocadillos y Entradas (ID 264)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(276, 'Canapés Fríos', 264, 'ambos'),
(277, 'Canapés Calientes', 264, 'ambos'),
(278, 'Tablas de Quesos y Charcutería Fina', 264, 'ambos'),
(279, 'Bocadillos Dulces', 264, 'ambos');
-- Subcategorías de Bebidas y Barras (ID 265)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(280, 'Barra Libre Nacional', 265, 'ambos'),
(281, 'Barra Libre Internacional / Premium', 265, 'ambos'),
(282, 'Coctelería de Autor y Bienvenida', 265, 'ambos'),
(283, 'Bebidas sin Alcohol y Aguas Frescas', 265, 'ambos'),
(284, 'Servicio de Café y Té', 265, 'ambos'),
(285, 'Descorche (Servicio de Mezcladores)', 265, 'ambos');
-- Subcategorías de Repostería (ID 266)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(286, 'Pasteles de Boda y Celebración', 266, 'ambos'),
(287, 'Mesa de Postres Finos (Petit Fours)', 266, 'ambos'),
(288, 'Mesa de Dulces y Snacks Salados', 266, 'ambos'),
(289, 'Fuentes de Chocolate y Chamoy', 266, 'ambos');
-- Contextos de Servicio y Tipos de Evento
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(290, 'Bodas y Eventos de Etiqueta', 262, 'ambos'),
(291, 'Coffee Break / Corporativo', 263, 'ambos'),
(292, 'Fiesta Casual / Jardín', 263, 'ambos'),
(293, 'Cena de Fin de Año', 262, 'ambos'),
(294, 'Bautizos y Primeras Comuniones', 275, 'ambos');


-- Categorías Principales (Nivel 0)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(295, 'Vinos', NULL, 'ambos'),
(296, 'Destilados y Espirituosas', NULL, 'ambos'),
(297, 'Cervezas', NULL, 'ambos'),
(298, 'Mixología y Complementos', NULL, 'ambos');
-- Subcategorías de Vinos (ID 295)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(299, 'Vino Tinto', 295, 'ambos'),
(300, 'Vino Blanco', 295, 'ambos'),
(301, 'Vino Rosado', 295, 'ambos'),
(302, 'Champagne y Espumosos', 295, 'ambos'),
(303, 'Vinos Dulces y Fortificados', 295, 'ambos');
-- Varietales Principales Tintos (ID 299)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(304, 'Cabernet Sauvignon', 299, 'ambos'),
(305, 'Merlot', 299, 'ambos'),
(306, 'Malbec', 299, 'ambos'),
(307, 'Syrah / Shiraz', 299, 'ambos'),
(308, 'Tempranillo', 299, 'ambos');
-- Varietales Principales Blancos (ID 300)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(309, 'Chardonnay', 300, 'ambos'),
(310, 'Sauvignon Blanc', 300, 'ambos');
-- Subcategorías de Destilados (ID 296)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(311, 'Tequila', 296, 'ambos'),
(312, 'Mezcal', 296, 'ambos'),
(313, 'Whisky y Whiskey', 296, 'ambos'),
(314, 'Ron', 296, 'ambos'),
(315, 'Vodka', 296, 'ambos'),
(316, 'Ginebra', 296, 'ambos'),
(317, 'Cognac y Brandy', 296, 'ambos'),
(318, 'Licores y Digestivos', 296, 'ambos');
-- Clasificación de Tequila (ID 311)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(319, 'Blanco / Plata', 311, 'ambos'),
(320, 'Reposado', 311, 'ambos'),
(321, 'Añejo y Extra Añejo', 311, 'ambos'),
(322, 'Cristalino', 311, 'ambos');
-- Clasificación de Whisky (ID 313)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(323, 'Single Malt', 313, 'ambos'),
(324, 'Blended Scotch', 313, 'ambos'),
(325, 'Bourbon / American Whiskey', 313, 'ambos');
-- Subcategorías de Cervezas (ID 297)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(326, 'Cerveza Comercial Nacional', 297, 'ambos'),
(327, 'Cerveza Artesanal', 297, 'ambos'),
(328, 'Cerveza Importada', 297, 'ambos');
-- Subcategorías de Mixología (ID 298)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(329, 'Aguas Tónicas y Quinas', 298, 'ambos'),
(330, 'Jarabes, Bitters y Botánicos', 298, 'ambos'),
(331, 'Jugos y Refrescos (Mezcladores)', 298, 'ambos');
-- Contextos, Maridajes y Regalos (Niveles varios)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(332, 'Cortes de Carne', 295, 'ambos'),
(333, 'Pescados y Mariscos', 295, 'ambos'),
(334, 'Quesos y Charcutería', 295, 'ambos'),
(335, 'Estuches y Ediciones Especiales', 296, 'ambos');


-- Categorías Principales (Nivel 0)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(336, 'Pasteles de Diseño y Celebración', NULL, 'ambos'),
(337, 'Postres Individuales y Repostería Fina', NULL, 'ambos'),
(338, 'Mesas de Postres (Candy Bar)', NULL, 'ambos'),
(339, 'Panadería Fina y Bocadillos Salados', NULL, 'ambos');
-- Subcategorías de Pasteles (ID 336)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(340, 'Pasteles de Boda y Aniversario', 336, 'ambos'),
(341, 'Pasteles de XV Años', 336, 'ambos'),
(342, 'Pasteles Infantiles y Temáticos', 336, 'ambos'),
(343, 'Pasteles Tradicionales / De Línea', 336, 'ambos'),
(344, 'Bento Cakes y Mini Pasteles', 336, 'ambos');
-- Tipos de Bizcocho / Masa (ID 336)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(345, 'Vainilla / Mantequilla', 336, 'ambos'),
(346, 'Chocolate Intenso', 336, 'ambos'),
(347, 'Red Velvet', 336, 'ambos'),
(348, 'Zanahoria con Nuez', 336, 'ambos'),
(349, 'Tres Leches', 336, 'ambos');
-- Coberturas y Acabados (ID 336)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(350, 'Fondant', 336, 'ambos'),
(351, 'Buttercream (Crema de Mantequilla)', 336, 'ambos'),
(352, 'Ganache de Chocolate', 336, 'ambos'),
(353, 'Naked Cake (Desnudo / Semi-desnudo)', 336, 'ambos'),
(354, 'Merengue Italiano / Suizo', 336, 'ambos');
-- Subcategorías de Postres Individuales (ID 337)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(355, 'Macarons Franceses', 337, 'ambos'),
(356, 'Cupcakes Decorados', 337, 'ambos'),
(357, 'Tartaletas (Fruta, Limón, Nuez)', 337, 'ambos'),
(358, 'Éclairs y Pasta Choux', 337, 'ambos'),
(359, 'Galletas Decoradas (Royal Icing)', 337, 'ambos'),
(360, 'Brownies, Blondies y Barras', 337, 'ambos');
-- Subcategorías de Mesas de Postres (ID 338)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(361, 'Montaje Completo (Postres + Decoración Temática)', 338, 'ambos'),
(362, 'Kits Prearmados (Postres a granel)', 338, 'ambos'),
(363, 'Renta de Bases, Alzadores y Cristalería', 338, 'ambos');
-- Subcategorías de Panadería y Salados (ID 339)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(364, 'Viennoiserie (Croissants, Chocolatines)', 339, 'ambos'),
(365, 'Bocadillos Salados (Hojaldres, Empanadas Mini)', 339, 'ambos'),
(366, 'Pan Rústico y Masa Madre (Para Catering)', 339, 'ambos');


-- Categorías Principales (Nivel 0)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(367, 'Audio y Sonido', NULL, 'ambos'),
(368, 'Iluminación Profesional', NULL, 'ambos'),
(369, 'Video y Pantallas', NULL, 'ambos'),
(370, 'Equipo para DJ / Cabina', NULL, 'ambos'),
(371, 'Efectos Especiales (FX)', NULL, 'ambos'),
(372, 'Estructuras y Soportes', NULL, 'ambos'),
(373, 'Paquetes de Servicio', NULL, 'ambos');
-- Subcategorías de Audio y Sonido (ID 367)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(374, 'Bocinas Activas y Monitores', 367, 'ambos'),
(375, 'Subwoofers', 367, 'ambos'),
(376, 'Sistemas Line Array (Audio Aéreo)', 367, 'ambos'),
(377, 'Consolas y Mezcladoras (PA)', 367, 'ambos'),
(378, 'Microfonía Inalámbrica', 367, 'ambos'),
(379, 'Microfonía de Diadema / Lavalier', 367, 'ambos');
-- Subcategorías de Iluminación Profesional (ID 368)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(380, 'Cabezas Móviles (Beam / Spot)', 368, 'ambos'),
(381, 'Iluminación Arquitectónica (Par LED)', 368, 'ambos'),
(382, 'Barras LED y Wash', 368, 'ambos'),
(383, 'Láseres y Efectos Club', 368, 'ambos'),
(384, 'Controladores DMX e Interfaces', 368, 'ambos');
-- Subcategorías de Video y Pantallas (ID 369)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(385, 'Módulos de Pantalla LED (Pixel Pitch)', 369, 'ambos'),
(386, 'Proyectores de Alto Lumen', 369, 'ambos'),
(387, 'Telones y Pantallas de Proyección', 369, 'ambos'),
(388, 'Pantallas de TV (Monitores de Retorno)', 369, 'ambos');
-- Subcategorías de Equipo para DJ (ID 370)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(389, 'Controladores DJ', 370, 'ambos'),
(390, 'Reproductores (CDJ / Media Players)', 370, 'ambos'),
(391, 'Mixers / Mezcladoras DJ', 370, 'ambos'),
(392, 'Tornamesas y Sistemas de Vinilo', 370, 'ambos'),
(393, 'Fachadas y Cabinas (DJ Booths)', 370, 'ambos');
-- Subcategorías de Efectos Especiales (ID 371)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(394, 'Máquinas de Humo / Niebla Baja', 371, 'ambos'),
(395, 'Chispas Frías (Pirotecnia Interior)', 371, 'ambos'),
(396, 'Cañones de CO2', 371, 'ambos'),
(397, 'Lanzadores de Confeti', 371, 'ambos');
-- Subcategorías de Estructuras (ID 372)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(398, 'Tramos de Truss (Aluminio)', 372, 'ambos'),
(399, 'Elevadores / Malacates', 372, 'ambos'),
(400, 'Bases y Placas (Ground Support)', 372, 'ambos');
-- Subcategorías de Paquetes / Contextos (ID 373)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(401, 'Boda / Evento Social Completo', 373, 'ambos'),
(402, 'Montaje Antro / Festival', 373, 'ambos'),
(403, 'Conferencia / Corporativo Plenario', 373, 'ambos'),
(404, 'Fiesta Privada / Lounge', 373, 'ambos');


-- Categorías Principales (Nivel 0)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(405, 'Cabinas y Plataformas', NULL, 'ambos'),
(406, 'Fondos y Backdrops', NULL, 'ambos'),
(407, 'Accesorios y Props', NULL, 'ambos'),
(408, 'Servicios Adicionales e Impresión', NULL, 'ambos'),
(409, 'Paquetes de Tiempo', NULL, 'ambos');
-- Subcategorías de Cabinas y Plataformas (ID 405)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(410, 'Plataforma Video 360', 405, 'ambos'),
(411, 'Espejo Mágico (Magic Mirror)', 405, 'ambos'),
(412, 'Cabina Fotográfica Inflable LED', 405, 'ambos'),
(413, 'Tótem Fotográfico Abierto', 405, 'ambos'),
(414, 'Cabina Tradicional Cerrada', 405, 'ambos'),
(415, 'Cabina Telefónica (Audio Guestbook)', 405, 'ambos');
-- Subcategorías de Fondos y Backdrops (ID 406)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(416, 'Muro Floral 3D', 406, 'ambos'),
(417, 'Muro de Lentejuela (Shimmer Wall)', 406, 'ambos'),
(418, 'Pantalla Verde (Chroma Key)', 406, 'ambos'),
(419, 'Mampara de Madera Rústica', 406, 'ambos');
-- Subcategorías de Accesorios y Props (ID 407)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(420, 'Letreros Neón Perimetrales', 407, 'ambos'),
(421, 'Props Impresos con Frases', 407, 'ambos'),
(422, 'Sombreros, Lentes y Pelucas', 407, 'ambos'),
(423, 'Pistola de Billetes (Money Gun)', 407, 'ambos'),
(424, 'Máquina de Burbujas / Humo (FX)', 407, 'ambos');
-- Subcategorías de Servicios e Impresión (ID 408)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(425, 'Impresión Fotográfica Ilimitada', 408, 'ambos'),
(426, 'Marco Digital Personalizado (Overlay)', 408, 'ambos'),
(427, 'Álbum de Firmas Físico (Scrapbook)', 408, 'ambos'),
(428, 'Galería Web y Descarga por QR', 408, 'ambos'),
(429, 'Compartir vía AirDrop / WhatsApp', 408, 'ambos');
-- Subcategorías de Paquetes de Tiempo (ID 409)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(430, 'Servicio por 2 Horas', 409, 'ambos'),
(431, 'Servicio por 3 Horas', 409, 'ambos'),
(432, 'Servicio por 4 Horas', 409, 'ambos'),
(433, 'Hora Extra Adicional', 409, 'ambos');


-- Categorías Principales (Nivel 0)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(434, 'Flota y Vehículos de Carga', NULL, 'ambos'),
(435, 'Servicios de Mudanza y Flete', NULL, 'ambos'),
(436, 'Maniobras y Personal', NULL, 'ambos'),
(437, 'Empaque, Embalaje y Protección', NULL, 'ambos');
-- Subcategorías de Flota y Vehículos (ID 434)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(438, 'Camionetas Ligeras (Estaquitas / Pick Up)', 434, 'ambos'),
(439, 'Camiones Ligeros (3.5 Toneladas)', 434, 'ambos'),
(440, 'Camiones Medianos (Rabón / Torton)', 434, 'ambos'),
(441, 'Tráiler / Caja Seca (48 y 53 pies)', 434, 'ambos'),
(442, 'Transporte Refrigerado', 434, 'ambos');
-- Subcategorías de Servicios (ID 435)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(443, 'Flete Local (Área Metropolitana)', 435, 'ambos'),
(444, 'Flete Foráneo (Nacional)', 435, 'ambos'),
(445, 'Mudanza Residencial Completa', 435, 'ambos'),
(446, 'Mudanza Corporativa / Oficinas', 435, 'ambos'),
(447, 'Transporte Especializado (Obras de Arte / Pianos)', 435, 'ambos');
-- Subcategorías de Maniobras y Personal (ID 436)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(448, 'Carga y Descarga Básica (Planta Baja)', 436, 'ambos'),
(449, 'Servicio de Empacado Completo', 436, 'ambos'),
(450, 'Armado y Desarmado de Mobiliario', 436, 'ambos'),
(451, 'Volado de Muebles (Uso de Poleas)', 436, 'ambos'),
(452, 'Maniobras por Escalera Estrecha', 436, 'ambos');
-- Subcategorías de Empaque y Protección (ID 437)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(453, 'Cajas de Cartón Corrugado (Chica, Mediana, Grande)', 437, 'ambos'),
(454, 'Plástico Burbuja y Polifoam', 437, 'ambos'),
(455, 'Rollo de Película Estirable (Playo)', 437, 'ambos'),
(456, 'Cinta Canela y Despachadores', 437, 'ambos'),
(457, 'Alquiler de Colchonetas y Cobijas de Mudanza', 437, 'ambos');


-- Categorías Principales (Nivel 0)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(458, 'Fases de Limpieza', NULL, 'ambos'),
(459, 'Personal y Cuadrillas', NULL, 'ambos'),
(460, 'Manejo de Residuos', NULL, 'ambos'),
(461, 'Insumos y Equipamiento', NULL, 'ambos'),
(477, 'Contextos y Tipos de Evento', NULL, 'ambos');
-- Subcategorías de Fases de Limpieza (ID 458)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(462, 'Limpieza Previa y Acondicionamiento', 458, 'ambos'),
(463, 'Mantenimiento Preventivo (Durante el Evento)', 458, 'ambos'),
(464, 'Limpieza Profunda Post-Evento', 458, 'ambos'),
(465, 'Desinfección y Sanitización', 458, 'ambos');
-- Subcategorías de Personal y Cuadrillas (ID 459)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(466, 'Guardia Fija en Baños', 459, 'ambos'),
(467, 'Cuadrilla de Reacción (Derrames y Pista)', 459, 'ambos'),
(468, 'Personal de Desmontaje Pesado', 459, 'ambos'),
(469, 'Supervisores de Limpieza', 459, 'ambos');
-- Subcategorías de Manejo de Residuos (ID 460)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(470, 'Separación y Reciclaje (PET / Aluminio / Vidrio)', 460, 'ambos'),
(471, 'Recolección de Residuos Orgánicos', 460, 'ambos'),
(472, 'Retiro y Disposición Final (Camión Recolector)', 460, 'ambos');
-- Subcategorías de Insumos y Equipamiento (ID 461)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(473, 'Consumibles para Baños (Papel, Jabón, Toallas)', 461, 'ambos'),
(474, 'Químicos Especializados y Desengrasantes', 461, 'ambos'),
(475, 'Bolsas de Basura Industriales', 461, 'ambos'),
(476, 'Maquinaria (Pulidoras, Hidrolavadoras, Aspiradoras)', 461, 'ambos');
-- Subcategorías de Contextos (ID 477)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(478, 'Conciertos y Festivales Masivos', 477, 'ambos'),
(479, 'Bodas y Banquetes de Lujo', 477, 'ambos'),
(480, 'Exposiciones Comerciales / Ferias', 477, 'ambos'),
(481, 'Eventos Corporativos y Plenarias', 477, 'ambos');


-- Categorías Principales (Nivel 0)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(482, 'Personal Operativo y Guardias', NULL, 'ambos'),
(483, 'Control de Acceso y Logística', NULL, 'ambos'),
(484, 'Equipamiento y Perímetro', NULL, 'ambos'),
(485, 'Seguridad VIP y Especializada', NULL, 'ambos');
-- Subcategorías de Personal Operativo (ID 482)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(486, 'Guardias Intramuros (Traje Negro)', 482, 'ambos'),
(487, 'Guardias de Reacción (Tácticos)', 482, 'ambos'),
(488, 'Supervisores de Turno', 482, 'ambos'),
(489, 'Personal Femenino (Cacheo en Accesos)', 482, 'ambos');
-- Subcategorías de Control de Acceso (ID 483)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(490, 'Validadores de Boletos y Pulseras', 483, 'ambos'),
(491, 'Gestión de Filas (Crowd Management)', 483, 'ambos'),
(492, 'Acomodadores / Ushers', 483, 'ambos');
-- Subcategorías de Equipamiento y Perímetro (ID 484)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(493, 'Arcos Detectores de Metales', 484, 'ambos'),
(494, 'Detectores de Metales Manuales (Garret)', 484, 'ambos'),
(495, 'Vallas Metálicas (Popotillo / Pesadas)', 484, 'ambos'),
(496, 'Radios de Comunicación y Cajas Base', 484, 'ambos'),
(497, 'CCTV Móvil y Monitoreo', 484, 'ambos');
-- Subcategorías de Seguridad VIP (ID 485)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(498, 'Escoltas Personales (Armados / Desarmados)', 485, 'ambos'),
(499, 'Protección de Artistas (Backstage)', 485, 'ambos'),
(500, 'Choferes Custodios', 485, 'ambos'),
(501, 'Custodia de Valores (Taquilla)', 485, 'ambos');
-- Contextos y Tipos de Evento
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(502, 'Conciertos y Eventos Masivos', 482, 'ambos'),
(503, 'Exposiciones y Congresos', 482, 'ambos'),
(504, 'Bodas y Eventos Sociales Privados', 482, 'ambos');


-- Categorías Principales (Nivel 0)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(505, 'Herramientas', NULL, 'ambos'),
(506, 'Material Eléctrico e Iluminación', NULL, 'ambos'),
(507, 'Plomería y Tubería', NULL, 'ambos'),
(508, 'Fijación y Tornillería', NULL, 'ambos'),
(509, 'Pinturas y Acabados', NULL, 'ambos'),
(510, 'Construcción Obra Negra', NULL, 'ambos');
-- Subcategorías de Herramientas (ID 505)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(511, 'Herramientas Eléctricas', 505, 'ambos'),
(512, 'Herramientas Manuales', 505, 'ambos'),
(513, 'Consumibles (Brocas, Discos, Ceguetas)', 505, 'ambos'),
(514, 'Equipos de Medición', 505, 'ambos'),
(515, 'Equipo de Seguridad (EPP)', 505, 'ambos');
-- Subcategorías de Material Eléctrico (ID 506)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(516, 'Cables y Conductores', 506, 'ambos'),
(517, 'Artefactos (Placas, Apagadores, Contactos)', 506, 'ambos'),
(518, 'Centros de Carga y Pastillas (Breakers)', 506, 'ambos'),
(519, 'Tubería Conduit y Canaletas', 506, 'ambos'),
(520, 'Focos e Iluminación LED', 506, 'ambos');
-- Subcategorías de Plomería (ID 507)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(521, 'Tubería y Conexiones de PVC / CPVC', 507, 'ambos'),
(522, 'Tubería y Conexiones de Cobre / Latón', 507, 'ambos'),
(523, 'Tubería y Conexiones de PPR (Termofusión)', 507, 'ambos'),
(524, 'Grifería y Llaves', 507, 'ambos'),
(525, 'Bombas de Agua y Tinacos', 507, 'ambos');
-- Subcategorías de Fijación (ID 508)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(526, 'Tornillería y Tuercas', 508, 'ambos'),
(527, 'Clavos y Grapas', 508, 'ambos'),
(528, 'Taquetes y Anclajes Especiales', 508, 'ambos'),
(529, 'Adhesivos, Silicones y Espumas', 508, 'ambos');
-- Subcategorías de Pinturas (ID 509)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(530, 'Pintura Vinílica', 509, 'ambos'),
(531, 'Esmaltes y Anticorrosivos', 509, 'ambos'),
(532, 'Impermeabilizantes', 509, 'ambos'),
(533, 'Solventes y Limpiadores', 509, 'ambos'),
(534, 'Brochas, Rodillos y Felpas', 509, 'ambos');
-- Subcategorías de Construcción (ID 510)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(535, 'Cementos, Cales y Yesos', 510, 'ambos'),
(536, 'Pegazulejos y Boquillas', 510, 'ambos'),
(537, 'Aceros (Varillas, Armex, Alambre)', 510, 'ambos');


-- Categorías Principales (Nivel 0)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(538, 'Generadores por Combustible', NULL, 'ambos'),
(539, 'Generadores por Capacidad (Potencia)', NULL, 'ambos'),
(540, 'Distribución Eléctrica y Cableado', NULL, 'ambos'),
(541, 'Servicios Logísticos y Operativos', NULL, 'ambos');
-- Subcategorías por Combustible (ID 538)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(542, 'Diésel', 538, 'ambos'),
(543, 'Gasolina', 538, 'ambos'),
(544, 'Inverter / Silenciosos', 538, 'ambos'),
(545, 'Gas LP / Natural', 538, 'ambos');
-- Subcategorías por Capacidad (ID 539)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(546, 'Portátiles (1,000 W a 10,000 W)', 539, 'ambos'),
(547, 'Medianos (15 kW a 50 kW)', 539, 'ambos'),
(548, 'Plantas Industriales (60 kW a 500+ kW)', 539, 'ambos');
-- Subcategorías de Distribución Eléctrica (ID 540)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(549, 'Cables de Uso Rudo (Calibre 2/0, 4/0, etc.)', 540, 'ambos'),
(550, 'Tableros y Centros de Carga (Break outs)', 540, 'ambos'),
(551, 'Protectores de Cable (Pasacables / Yellow Jackets)', 540, 'ambos'),
(552, 'Clavijas y Conectores (Camlock / Twist Lock)', 540, 'ambos');
-- Subcategorías de Servicios (ID 541)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(553, 'Operador de Planta en Sitio (Técnico)', 541, 'ambos'),
(554, 'Abastecimiento de Combustible (Relleno)', 541, 'ambos'),
(555, 'Flete y Maniobra (Arrastre de Remolque)', 541, 'ambos');


-- Categorías Principales (Nivel 0)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(556, 'Conectividad y Enlaces', NULL, 'ambos'),
(557, 'Infraestructura Inalámbrica (WiFi)', NULL, 'ambos'),
(558, 'Infraestructura Cableada y Montaje', NULL, 'ambos'),
(559, 'Servicios Lógicos y Software de Red', NULL, 'ambos'),
(560, 'Soporte y Operación en Sitio', NULL, 'ambos');
-- Subcategorías de Conectividad (ID 556)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(561, 'Internet Satelital (Starlink / VSAT)', 556, 'ambos'),
(562, 'Enlaces Dedicados (Microondas)', 556, 'ambos'),
(563, 'Bonding Celular (Agregación 4G/5G)', 556, 'ambos');
-- Subcategorías de Infraestructura Inalámbrica (ID 557)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(564, 'Access Points Alta Densidad (Interiores)', 557, 'ambos'),
(565, 'Access Points Omnidireccionales (Exteriores)', 557, 'ambos'),
(566, 'Antenas Direccionales PTP / PTMP', 557, 'ambos');
-- Subcategorías de Infraestructura Cableada (ID 558)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(567, 'Switches Gigabit PoE / Administrables', 558, 'ambos'),
(568, 'Bobinas de Cable UTP (Cat 6 / 6A)', 558, 'ambos'),
(569, 'Mástiles, Tripiés y Herrajes', 558, 'ambos'),
(570, 'Ruteadores (Routers Empresariales)', 558, 'ambos');
-- Subcategorías de Servicios Lógicos (ID 559)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(571, 'Portal Cautivo (Login / Landing Page)', 559, 'ambos'),
(572, 'Balanceo de Cargas y QoS', 559, 'ambos'),
(573, 'Seguridad y Firewall (Bloqueo de sitios)', 559, 'ambos');
-- Subcategorías de Soporte (ID 560)
INSERT INTO categorias (id, nombre_categoria, id_padre, tipo) VALUES 
(574, 'Ingeniero / Técnico de Red en Sitio', 560, 'ambos'),
(575, 'Tendido y Retiro de Cableado', 560, 'ambos');