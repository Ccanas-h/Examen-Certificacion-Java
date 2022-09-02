--Lista de estudiantes del curso 0004
select rut,e.nombre,apellido_pat,apellido_mat,codigo_curso,c.nombre from estudiante e 
inner JOIN comuna c on e.codigo_comuna = c.codigo_comuna where codigo_curso='0004';


--Lista de cursos existentes/
select codigo_curso,fecha_inicio,fecha_termno,p.descripcion,p.duracion_horas from curso c
inner join plan_formativo p on c.codigo_plan_formativo = p.codigo_plan_formativo
order by fecha_inicio asc;

--Lista de planes formativos y cantidad de modulos 

SELECT pf.descripcion, count(*)cantidad from plan_formativo pf,plan_modulo pm
where pf.codigo_plan_formativo = pm.codigo_plan_formativo
group by pf.descripcion order by cantidad asc;
 

--Lista de modulos formativos FULLSTACK/

select pf.codigo_plan_formativo, pf.descripcion, m.codigo_modulo, m.descripcion
from plan_formativo pf join plan_modulo pm
on pf.codigo_plan_formativo = pm.codigo_plan_formativo
join modulo m
on m.codigo_modulo = pm.codigo_modulo
where pf.descripcion like '%FullStack%';

commit;  

select * from Estudiante;
select * from Curso;
select * from Comuna;
select * from Region;

/*
DROP TABLE COMUNA;
DROP TABLE CURSO;
DROP TABLE CURSO_MODULO_TUTOR;
DROP TABLE ESTUDIANTE;
DROP TABLE MODULO;
DROP TABLE PLAN_FORMATIVO;
DROP TABLE PLAN_MODULO;
DROP TABLE REGION;
DROP TABLE TUTOR; */



CREATE TABLE Region(
	codigo_region INT,
	nombre VARCHAR(30),
	CONSTRAINT pk_region PRIMARY KEY (codigo_region)
    
);

INSERT INTO Region(codigo_region, nombre) VALUES (1,'Arica-Parinacota');
INSERT INTO Region(codigo_region, nombre) VALUES (2,'Tarapaca');
INSERT INTO Region(codigo_region, nombre) VALUES (3,'Antofagasta');
INSERT INTO Region(codigo_region, nombre) VALUES (4,'Atacama');
INSERT INTO Region(codigo_region, nombre) VALUES (5,'Coquimbo');
INSERT INTO Region(codigo_region, nombre) VALUES (6,'Valparaiso');
INSERT INTO Region(codigo_region, nombre) VALUES (7,'Metropolitana');
INSERT INTO Region(codigo_region, nombre) VALUES (8,'O Higgins');
INSERT INTO Region(codigo_region, nombre) VALUES (9,'Maule');
INSERT INTO Region(codigo_region, nombre) VALUES (10,'Nuble');
INSERT INTO Region(codigo_region, nombre) VALUES (11,'Bio Bio');
INSERT INTO Region(codigo_region, nombre) VALUES (12,'Araucania');
INSERT INTO Region(codigo_region, nombre) VALUES (13,'Los Rios');
INSERT INTO Region(codigo_region, nombre) VALUES (14,'Los Lagos');
INSERT INTO Region(codigo_region, nombre) VALUES (15,'Aysen');
INSERT INTO Region(codigo_region, nombre) VALUES (16,'Magallanes y Antartica Chilena');

CREATE TABLE Comuna(
	codigo_comuna INT,
	nombre VARCHAR(30),
	codigo_region INT,
	CONSTRAINT pk_comuna PRIMARY KEY (codigo_comuna),
	CONSTRAINT fk_comuna_region FOREIGN KEY (codigo_region) REFERENCES region(codigo_region)
    

);

INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(1, 'Arica', 1);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(2, 'Camarones', 1);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(3, 'Putre', 1);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(4, 'General Lagos', 1);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(5, 'Iquique', 2);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(6, 'Alto Hospicio', 2);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(7, 'Pozo Almonte', 2);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(8, 'Camiña', 2);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(9, 'Colchane', 2);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(10, 'Huara', 2);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(11, 'Pica', 2);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(12, 'Antofagasta', 3);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(13, 'Mejillones', 3);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(14, 'Sierra Gorda', 3);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(15, 'Taltal', 3);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(16, 'Calama', 3);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(17, 'Ollagüe', 3);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(18, 'San Pedro de Atacama', 3);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(19, 'Tocopilla', 3);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(20, 'María Elena', 3);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(21, 'Copiapó', 4);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(22, 'Caldera', 4);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(23, 'Tierra Amarilla', 4);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(24, 'Chañaral', 4);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(25, 'Diego de Almagro', 4);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(26, 'Vallenar', 4);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(27, 'Alto del Carmen', 4);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(28, 'Freirina', 4);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(29, 'Huasco', 4);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(30, 'La Serena', 5);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(31, 'Coquimbo', 5);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(32, 'Andacollo', 5);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(33, 'La Higuera', 5);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(34, 'Paiguano', 5);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(35, 'Vicuña', 5);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(36, 'Illapel', 5);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(37, 'Canela', 5);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(38, 'Los Vilos', 5);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(39, 'Salamanca', 5);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(40, 'Ovalle', 5);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(41, 'Combarbalá', 5);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(42, 'Monte Patria', 5);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(43, 'Punitaqui', 5);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(44, 'Río Hurtado', 5);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(45, 'Valparaíso', 6);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(46, 'Casablanca', 6);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(47, 'Concón', 6);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(48, 'Juan Fernández', 6);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(49, 'Puchuncaví', 6);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(50, 'Quintero', 6);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(51, 'Viña del Mar', 6);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(52, 'Isla de Pascua', 6);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(53, 'Los Andes', 6);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(54, 'Calle Larga', 6);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(55, 'Rinconada', 6);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(56, 'San Esteban', 6);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(57, 'La Ligua', 6);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(58, 'Cabildo', 6);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(59, 'Papudo', 6);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(60, 'Petorca', 6);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(61, 'Zapallar', 6);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(62, 'Quillota', 6);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(63, 'Calera', 6);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(64, 'Hijuelas', 6);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(65, 'La Cruz', 6);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(66, 'Nogales', 6);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(67, 'San Antonio', 6);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(68, 'Algarrobo', 6);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(69, 'Cartagena', 6);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(70, 'El Quisco', 6);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(71, 'El Tabo', 6);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(72, 'Santo Domingo', 6);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(73, 'San Felipe', 6);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(74, 'Catemu', 6);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(75, 'Llaillay', 6);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(76, 'Panquehue', 6);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(77, 'Putaendo', 6);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(78, 'Santa María', 6);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(79, 'Quilpué', 6);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(80, 'Limache', 6);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(81, 'Olmué', 6);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(82, 'Villa Alemana', 6);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(83, 'Rancagua', 8);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(84, 'Codegua', 8);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(85, 'Coinco', 8);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(86, 'Coltauco', 8);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(87, 'Doñihue', 8);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(88, 'Graneros', 8);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(89, 'Las Cabras', 8);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(90, 'Machalí', 8);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(91, 'Malloa', 8);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(92, 'Mostazal', 8);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(93, 'Olivar', 8);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(94, 'Peumo', 8);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(95, 'Pichidegua', 8);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(96, 'Quinta de Tilcoco', 8);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(97, 'Rengo', 8);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(98, 'Requínoa', 8);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(99, 'San Vicente', 8);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(100, 'Pichilemu', 8);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(101, 'La Estrella', 8);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(102, 'Litueche', 8);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(103, 'Marchihue', 8);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(104, 'Navidad', 8);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(105, 'Paredones', 8);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(106, 'San Fernando', 8);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(107, 'Chépica', 8);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(108, 'Chimbarongo', 8);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(109, 'Lolol', 8);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(110, 'Nancagua', 8);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(111, 'Palmilla', 8);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(112, 'Peralillo', 8);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(113, 'Placilla', 8);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(114, 'Pumanque', 8);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(115, 'Santa Cruz', 8);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(116, 'Talca', 9);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(117, 'Constitución', 9);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(118, 'Curepto', 9);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(119, 'Empedrado', 9);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(120, 'Maule', 9);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(121, 'Pelarco', 9);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(122, 'Pencahue', 9);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(123, 'Río Claro', 9);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(124, 'San Clemente', 9);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(125, 'San Rafael', 9);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(126, 'Cauquenes', 9);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(127, 'Chanco', 9);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(128, 'Pelluhue', 9);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(129, 'Curicó', 9);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(130, 'Hualañé', 9);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(131, 'Licantén', 9);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(132, 'Molina', 9);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(133, 'Rauco', 9);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(134, 'Romeral', 9);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(135, 'Sagrada Familia', 9);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(136, 'Teno', 9);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(137, 'Vichuquén', 9);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(138, 'Linares', 9);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(139, 'Colbún', 9);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(140, 'Longaví', 9);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(141, 'Parral', 9);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(142, 'Retiro', 9);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(143, 'San Javier', 9);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(144, 'Villa Alegre', 9);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(145, 'Yerbas Buenas', 9);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(146, 'Cobquecura', 10);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(147, 'Coelemu', 10);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(148, 'Ninhue', 10);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(149, 'Portezuelo', 10);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(150, 'Quirihue', 10);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(151, 'Ránquil', 10);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(152, 'Treguaco', 10);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(153, 'Bulnes', 10);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(154, 'Chillán Viejo', 10);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(155, 'Chillán', 10);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(156, 'El Carmen', 10);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(157, 'Pemuco', 10);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(158, 'Pinto', 10);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(159, 'Quillón', 10);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(160, 'San Ignacio', 10);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(161, 'Yungay', 10);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(162, 'Coihueco', 10);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(163, 'Ñiquén', 10);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(164, 'San Carlos', 10);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(165, 'San Fabián', 10);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(166, 'San Nicolás', 10);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(167, 'Concepción', 11);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(168, 'Coronel', 11);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(169, 'Chiguayante', 11);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(170, 'Florida', 11);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(171, 'Hualqui', 11);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(172, 'Lota', 11);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(173, 'Penco', 11);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(174, 'San Pedro de la Paz', 11);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(175, 'Santa Juana', 11);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(176, 'Talcahuano', 11);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(177, 'Tomé', 11);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(178, 'Hualpén', 11);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(179, 'Lebu', 11);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(180, 'Arauco', 11);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(181, 'Cañete', 11);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(182, 'Contulmo', 11);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(183, 'Curanilahue', 11);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(184, 'Los �?lamos', 11);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(185, 'Tirúa', 11);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(186, 'Los �?ngeles', 11);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(187, 'Antuco', 11);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(188, 'Cabrero', 11);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(189, 'Laja', 11);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(190, 'Mulchén', 11);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(191, 'Nacimiento', 11);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(192, 'Negrete', 11);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(193, 'Quilaco', 11);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(194, 'Quilleco', 11);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(195, 'San Rosendo', 11);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(196, 'Santa Bárbara', 11);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(197, 'Tucapel', 11);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(198, 'Yumbel', 11);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(199, 'Alto Biobío', 11);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(200, 'Temuco', 12);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(201, 'Carahue', 12);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(202, 'Cunco', 12);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(203, 'Curarrehue', 12);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(204, 'Freire', 12);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(205, 'Galvarino', 12);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(206, 'Gorbea', 12);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(207, 'Lautaro', 12);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(208, 'Loncoche', 12);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(209, 'Melipeuco', 12);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(210, 'Nueva Imperial', 12);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(211, 'Padre las Casas', 12);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(212, 'Perquenco', 12);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(213, 'Pitrufquén', 12);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(214, 'Pucón', 12);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(215, 'Saavedra', 12);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(216, 'Teodoro Schmidt', 12);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(217, 'Toltén', 12);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(218, 'Vilcún', 12);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(219, 'Villarrica', 12);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(220, 'Cholchol', 12);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(221, 'Angol', 12);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(222, 'Collipulli', 12);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(223, 'Curacautín', 12);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(224, 'Ercilla', 12);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(225, 'Lonquimay', 12);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(226, 'Los Sauces', 12);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(227, 'Lumaco', 12);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(228, 'Purén', 12);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(229, 'Renaico', 12);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(230, 'Traiguén', 12);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(231, 'Victoria', 12);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(232, 'Valdivia', 13);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(233, 'Corral', 13);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(234, 'Lanco', 13);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(235, 'Los Lagos', 13);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(236, 'Máfil', 13);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(237, 'Mariquina', 13);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(238, 'Paillaco', 13);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(239, 'Panguipulli', 13);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(240, 'La Unión', 13);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(241, 'Futrono', 13);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(242, 'Lago Ranco', 13);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(243, 'Río Bueno', 13);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(244, 'Puerto Montt', 14);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(245, 'Calbuco', 14);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(246, 'Cochamó', 14);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(247, 'Fresia', 14);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(248, 'Frutillar', 14);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(249, 'Los Muermos', 14);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(250, 'Llanquihue', 14);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(251, 'Maullín', 14);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(252, 'Puerto Varas', 14);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(253, 'Castro', 14);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(254, 'Ancud', 14);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(255, 'Chonchi', 14);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(256, 'Curaco de Vélez', 14);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(257, 'Dalcahue', 14);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(258, 'Puqueldón', 14);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(259, 'Queilén', 14);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(260, 'Quellón', 14);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(261, 'Quemchi', 14);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(262, 'Quinchao', 14);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(263, 'Osorno', 14);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(264, 'Puerto Octay', 14);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(265, 'Purranque', 14);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(266, 'Puyehue', 14);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(267, 'Río Negro', 14);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(268, 'San Juan de la Costa', 14);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(269, 'San Pablo', 14);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(270, 'Chaitén', 14);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(271, 'Futaleufú', 14);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(272, 'Hualaihué', 14);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(273, 'Palena', 14);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(274, 'Coihaique', 15);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(275, 'Lago Verde', 15);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(276, 'Aisén', 15);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(277, 'Cisnes', 15);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(278, 'Guaitecas', 15);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(279, 'Cochrane', 15);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(280, 'O’Higgins', 15);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(281, 'Tortel', 15);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(282, 'Chile Chico', 15);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(283, 'Río Ibáñez', 15);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(284, 'Punta Arenas', 16);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(285, 'Laguna Blanca', 16);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(286, 'Río Verde', 16);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(287, 'San Gregorio', 16);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(288, 'Cabo de Hornos (Ex Navarino)', 16);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(289, 'Antártica', 16);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(290, 'Porvenir', 16);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(291, 'Primavera', 16);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(292, 'Timaukel', 16);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(293, 'Natales', 16);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(294, 'Torres del Paine', 16);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(295, 'Cerrillos', 7);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(296, 'Cerro Navia', 7);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(297, 'Conchalí', 7);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(298, 'El Bosque', 7);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(299, 'Estación Central', 7);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(300, 'Huechuraba', 7);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(301, 'Independencia', 7);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(302, 'La Cisterna', 7);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(303, 'La Florida', 7);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(304, 'La Granja', 7);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(305, 'La Pintana', 7);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(306, 'La Reina', 7);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(307, 'Las Condes', 7);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(308, 'Lo Barnechea', 7);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(309, 'Lo Espejo', 7);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(310, 'Lo Prado', 7);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(311, 'Macul', 7);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(312, 'Maipú', 7);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(313, 'Ñuñoa', 7);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(314, 'Pedro Aguirre Cerda', 7);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(315, 'Peñalolén', 7);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(316, 'Providencia', 7);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(317, 'Pudahuel', 7);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(318, 'Quilicura', 7);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(319, 'Quinta Normal', 7);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(320, 'Recoleta', 7);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(321, 'Renca', 7);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(322, 'Santiago', 7);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(323, 'San Joaquín', 7);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(324, 'San Miguel', 7);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(325, 'San Ramón', 7);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(326, 'Vitacura', 7);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(327, 'Puente Alto', 7);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(328, 'Pirque', 7);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(329, 'San José de Maipo', 7);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(330, 'Colina', 7);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(331, 'Lampa', 7);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(332, 'Tiltil', 7);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(333, 'San Bernardo', 7);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(334, 'Buin', 7);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(335, 'Calera de Tango', 7);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(336, 'Paine', 7);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(337, 'Melipilla', 7);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(338, 'Alhué', 7);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(339, 'Curacaví', 7);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(340, 'María Pinto', 7);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(341, 'San Pedro', 7);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(342, 'Talagante', 7);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(343, 'El Monte', 7);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(344, 'Isla de Maipo', 7);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(345, 'Padre Hurtado', 7);
INSERT INTO Comuna(codigo_comuna, nombre, codigo_region) VALUES(346, 'Peñaflor', 7);

CREATE TABLE Tutor(
	codigo_tutor INT,
	rut VARCHAR(15),
	nombre VARCHAR(30),
	apellido_pat VARCHAR(30),
	apellido_mat VARCHAR(30),
	direccion VARCHAR(100),
	cargo VARCHAR(20),
	codigo_comuna INT,
	CONSTRAINT pk_tutor PRIMARY KEY (codigo_tutor),
	CONSTRAINT fk_tutor_comuna FOREIGN KEY (codigo_comuna) REFERENCES comuna(codigo_comuna)
    

);

INSERT INTO Tutor(codigo_tutor, rut, nombre, apellido_pat, apellido_mat, direccion, cargo, codigo_comuna) VALUES (1, '11.111.111-1', 'Osman', 'Perez', 'Martínez', 'Av. Bolívar', 'Relator', 334);
INSERT INTO Tutor(codigo_tutor, rut, nombre, apellido_pat, apellido_mat, direccion, cargo, codigo_comuna) VALUES (2, '22.222.222-2', 'Everto', 'Farias', 'Duran', 'Argomedo 350', 'Relator', 322);
INSERT INTO Tutor(codigo_tutor, rut, nombre, apellido_pat, apellido_mat, direccion, cargo, codigo_comuna) VALUES (3, '33.333.333-3', 'Angeri', 'Martínez', 'González', 'La Zurza II', 'Relator', 80);
INSERT INTO Tutor(codigo_tutor, rut, nombre, apellido_pat, apellido_mat, direccion, cargo, codigo_comuna) VALUES (4, '44.444.444-4', 'Carlos', 'Gracía', 'Bujanda', 'San Francisco 445', 'Relator', 320);
INSERT INTO Tutor(codigo_tutor, rut, nombre, apellido_pat, apellido_mat, direccion, cargo, codigo_comuna) VALUES (5, '55.555.555-5', 'Marcos', 'Ojeda', 'Escalante', 'Carlos Aguirre 554', 'Relator', 327);
INSERT INTO Tutor(codigo_tutor, rut, nombre, apellido_pat, apellido_mat, direccion, cargo, codigo_comuna) VALUES (6, '66.666.666-6', 'Adrian', 'Franco', 'Franco', 'General Mackenna 1325', 'Relator', 322);
INSERT INTO Tutor(codigo_tutor, rut, nombre, apellido_pat, apellido_mat, direccion, cargo, codigo_comuna) VALUES (7, '77.777.777-7', 'Germán', 'Pinto', 'Ramírez', 'Parque Verónica 1234', 'Relator', 312);
INSERT INTO Tutor(codigo_tutor, rut, nombre, apellido_pat, apellido_mat, direccion, cargo, codigo_comuna) VALUES (8, '88.888.888-8', 'Jorge', 'Carmona', 'Llancavil', 'Victor Troncoso Muñoz 456', 'Relator', 334);
INSERT INTO Tutor(codigo_tutor, rut, nombre, apellido_pat, apellido_mat, direccion, cargo, codigo_comuna) VALUES (9, '99.999.999-9', 'Alejandro', 'Bonilla', 'Alfaro', 'Rieles Bajos 567', 'Relator', 31);
INSERT INTO Tutor(codigo_tutor, rut, nombre, apellido_pat, apellido_mat, direccion, cargo, codigo_comuna) VALUES (10, '10.101.010-1', 'Elfar', 'Morantes', 'Sanchez', 'Avenida Alonso Ovalle 467', 'Relator', 336);
INSERT INTO Tutor(codigo_tutor, rut, nombre, apellido_pat, apellido_mat, direccion, cargo, codigo_comuna) VALUES (11, '20.202.020-2', 'Cristian', 'Alveal', 'Vergara', 'Gran Avenida 5435', 'Relator', 298);
INSERT INTO Tutor(codigo_tutor, rut, nombre, apellido_pat, apellido_mat, direccion, cargo, codigo_comuna) VALUES (12, '30.303.030-3', 'Luis', 'Ramírez', 'Llanguihuen', 'San Eugenio 542', 'Relator', 313);
INSERT INTO Tutor(codigo_tutor, rut, nombre, apellido_pat, apellido_mat, direccion, cargo, codigo_comuna) VALUES (13, '40.404.040-4', 'Jorge', 'Zaldivar', 'Toledo', 'Avenida Manuel Montt 456', 'Relator', 316);
INSERT INTO Tutor(codigo_tutor, rut, nombre, apellido_pat, apellido_mat, direccion, cargo, codigo_comuna) VALUES (14, '50.505.050-5', 'Pablo', 'Sandoval', 'Cornejo', 'Isla Mancera 2435', 'Relator', 303);
INSERT INTO Tutor(codigo_tutor, rut, nombre, apellido_pat, apellido_mat, direccion, cargo, codigo_comuna) VALUES (15, '60.606.060-6', 'Roberto', 'Hernandez', 'Capistrán', 'Avenida México', 'Relator', 327);
INSERT INTO Tutor(codigo_tutor, rut, nombre, apellido_pat, apellido_mat, direccion, cargo, codigo_comuna) VALUES (16, '70-707-070-7', 'Juan', 'Rodriguez', 'Rodriguez', 'Raymond Poincaré 4537', 'Relator', 327);
INSERT INTO Tutor(codigo_tutor, rut, nombre, apellido_pat, apellido_mat, direccion, cargo, codigo_comuna) VALUES (17, '80-808-080-8', 'Fernando', 'Lastra', 'Molina', 'Pasaje Los Pistachos 564', 'Relator', 90);
INSERT INTO Tutor(codigo_tutor, rut, nombre, apellido_pat, apellido_mat, direccion, cargo, codigo_comuna) VALUES (18, '90.909.090-9', 'Katherina', 'Serczyk', 'Ortega', 'Sucre 1985', 'Relator', 313);
INSERT INTO Tutor(codigo_tutor, rut, nombre, apellido_pat, apellido_mat, direccion, cargo, codigo_comuna) VALUES (19, '11.010.101-1', 'Rodrigo', 'Vera', 'Castillo', 'Camino del Esteto 495', 'Relator', 346);
INSERT INTO Tutor(codigo_tutor, rut, nombre, apellido_pat, apellido_mat, direccion, cargo, codigo_comuna) VALUES (20, '22.020.202-2', 'Richar', 'Lujano', 'Lujano', 'Santa Victoria 496', 'Relator', 322);
INSERT INTO Tutor(codigo_tutor, rut, nombre, apellido_pat, apellido_mat, direccion, cargo, codigo_comuna) VALUES (21, '33.030.303-3', 'Maria', 'Alfaro', 'Cortez', 'Camino a Huallalolen 34586', 'Relator', 308);
INSERT INTO Tutor(codigo_tutor, rut, nombre, apellido_pat, apellido_mat, direccion, cargo, codigo_comuna) VALUES (22, '44.040.404-4', 'Alejandro', 'Tenias', 'Villarroel', 'Pasaje el Fleque 547', 'Relator', 308);
INSERT INTO Tutor(codigo_tutor, rut, nombre, apellido_pat, apellido_mat, direccion, cargo, codigo_comuna) VALUES (23, '55.050.505-5', 'Ray', 'Rojas', 'Enciso', 'Camino al Volcán 4593', 'Relator', 329);
INSERT INTO Tutor(codigo_tutor, rut, nombre, apellido_pat, apellido_mat, direccion, cargo, codigo_comuna) VALUES (24, '66.060.606-6', 'Juan', 'Gonzalez', 'Mesa', 'Glaciar Grey 5967', 'Relator', 129);
INSERT INTO Tutor(codigo_tutor, rut, nombre, apellido_pat, apellido_mat, direccion, cargo, codigo_comuna) VALUES (25, '77.070.707-7', 'Julian', 'Tuffano', 'Gascon', 'Calle Argentinca 5489', 'Relator', 330);
INSERT INTO Tutor(codigo_tutor, rut, nombre, apellido_pat, apellido_mat, direccion, cargo, codigo_comuna) VALUES (26, '88.080.808-8', 'Daniel', 'Ferrera', 'Leiva', 'Liquidambar 4999', 'Relator', 47);
INSERT INTO Tutor(codigo_tutor, rut, nombre, apellido_pat, apellido_mat, direccion, cargo, codigo_comuna) VALUES (27, '99.090.909-9', 'Jorge', 'Martinez', 'Romero', 'Limarí 5664', 'Relator', 47);
INSERT INTO Tutor(codigo_tutor, rut, nombre, apellido_pat, apellido_mat, direccion, cargo, codigo_comuna) VALUES (28, '12.121.212-2', 'Nelson', 'Ramírez', 'Ramírez', 'Groenlandia 05686', 'Ayudante', 320);
INSERT INTO Tutor(codigo_tutor, rut, nombre, apellido_pat, apellido_mat, direccion, cargo, codigo_comuna) VALUES (29, '13.131.313-3', 'Alan', 'García', 'Muñoz', 'Pasaje Strauss 5679', 'Ayudante', 298);
INSERT INTO Tutor(codigo_tutor, rut, nombre, apellido_pat, apellido_mat, direccion, cargo, codigo_comuna) VALUES (30, '14.141.414-4', 'Alejandro', 'Díaz', 'Aravena', 'Walker Matinez 5493', 'Ayudante', 303);
INSERT INTO Tutor(codigo_tutor, rut, nombre, apellido_pat, apellido_mat, direccion, cargo, codigo_comuna) VALUES (31, '15.151.515-5', 'Alejandro', 'Lara', 'Lara', 'Enrique Olivares 568', 'Ayudante', 303);
INSERT INTO Tutor(codigo_tutor, rut, nombre, apellido_pat, apellido_mat, direccion, cargo, codigo_comuna) VALUES (32, '16.161.616-6', 'Rodrigo', 'Flores', 'Figueroa', 'Pasaje Veinitiuno 593', 'Ayudante', 297);
INSERT INTO Tutor(codigo_tutor, rut, nombre, apellido_pat, apellido_mat, direccion, cargo, codigo_comuna) VALUES (33, '17.171.717-7', 'Miguel', 'Parra', 'Mora', 'Rojas Magallanes 5834', 'Ayudante', 303);
INSERT INTO Tutor(codigo_tutor, rut, nombre, apellido_pat, apellido_mat, direccion, cargo, codigo_comuna) VALUES (34, '18.181.818-8', 'Francisco', 'Marin', 'Ascenso', 'Tucapel 567', 'Ayudante', 313);
INSERT INTO Tutor(codigo_tutor, rut, nombre, apellido_pat, apellido_mat, direccion, cargo, codigo_comuna) VALUES (35, '19.191.919-9', 'Aaron', 'Ubilla', 'Jelvez', 'Vicente Huidobro 984', 'Ayudante', 250);
INSERT INTO Tutor(codigo_tutor, rut, nombre, apellido_pat, apellido_mat, direccion, cargo, codigo_comuna) VALUES (36, '10.010.101-1', 'Eliecer', 'Díaz', 'Rojas', 'Vicuña Mackena 4553', 'Ayudante', 251);
INSERT INTO Tutor(codigo_tutor, rut, nombre, apellido_pat, apellido_mat, direccion, cargo, codigo_comuna) VALUES (37, '20.020.202-2', 'Constanza', 'Puga', 'Rute', 'Independencia 4356', 'Ayudante', 45);
INSERT INTO Tutor(codigo_tutor, rut, nombre, apellido_pat, apellido_mat, direccion, cargo, codigo_comuna) VALUES (38, '25.525.252-5', 'Nathalie', 'Carrasco', 'Campos', 'Ercilla Alto 5665', 'Ayudante', 252);
INSERT INTO Tutor(codigo_tutor, rut, nombre, apellido_pat, apellido_mat, direccion, cargo, codigo_comuna) VALUES (39, '22.343.434-2', 'Patricio', 'San Martín', 'Barraza', 'Chaura 4451', 'Ayudante', 312);
INSERT INTO Tutor(codigo_tutor, rut, nombre, apellido_pat, apellido_mat, direccion, cargo, codigo_comuna) VALUES (40, '23.345.543-3', 'Fanny', 'Tineo', 'Tineo', 'Avenida Arizaleta 5678', 'Ayudante', 253);
INSERT INTO Tutor(codigo_tutor, rut, nombre, apellido_pat, apellido_mat, direccion, cargo, codigo_comuna) VALUES (42, '21.111.111-3', 'Jaime', 'Soto', 'Ruiz', 'Orompello 5677', 'Ayudante', 299);
INSERT INTO Tutor(codigo_tutor, rut, nombre, apellido_pat, apellido_mat, direccion, cargo, codigo_comuna) VALUES (43, '22.111.111-4', 'Cesar', 'Osses', 'Cárcamo', '3 Poniente 456', 'Ayudante', 51);
INSERT INTO Tutor(codigo_tutor, rut, nombre, apellido_pat, apellido_mat, direccion, cargo, codigo_comuna) VALUES (44, '23.111.111-5', 'Iván', 'Espinoza', 'Cortés', 'Tres Sur 6678', 'Ayudante', 51);
INSERT INTO Tutor(codigo_tutor, rut, nombre, apellido_pat, apellido_mat, direccion, cargo, codigo_comuna) VALUES (45, '24.111.111-6', 'José', 'Toloza', 'Avilla', 'Vallejos 50', 'Ayudante', 45);
INSERT INTO Tutor(codigo_tutor, rut, nombre, apellido_pat, apellido_mat, direccion, cargo, codigo_comuna) VALUES (46, '25.111.111-7', 'Hiliana', 'Bustamante', 'Gonzalez', 'Lord Cochrane 339', 'Ayudante', 322);
INSERT INTO Tutor(codigo_tutor, rut, nombre, apellido_pat, apellido_mat, direccion, cargo, codigo_comuna) VALUES (47, '26.111.111-8', 'Daniel', 'Johnson', 'Opazo', 'El Tabo 593', 'Ayudante', 71);

CREATE TABLE Modulo(
	codigo_modulo INT,
	descripcion VARCHAR(100),
	duracion_horas INT,
	CONSTRAINT pk_modulo PRIMARY KEY (codigo_modulo)

);

INSERT INTO Modulo(codigo_modulo, descripcion, duracion_horas) VALUES (1, 'Orientación al perfil y metodología', 18);
INSERT INTO Modulo(codigo_modulo, descripcion, duracion_horas) VALUES (2, 'Desarrollo de portafolio de un producto digital', 18);
INSERT INTO Modulo(codigo_modulo, descripcion, duracion_horas) VALUES (3, 'Desarrollo de empleabilidad en la industria digital', 18);
INSERT INTO Modulo(codigo_modulo, descripcion, duracion_horas) VALUES (4, 'Fundamentos de desarrollo frontend', 72);
INSERT INTO Modulo(codigo_modulo, descripcion, duracion_horas) VALUES (5, 'Fundamentos de programación Python', 72);
INSERT INTO Modulo(codigo_modulo, descripcion, duracion_horas) VALUES (6, 'Programación avanzada en Python', 56);
INSERT INTO Modulo(codigo_modulo, descripcion, duracion_horas) VALUES (7, 'Fundamentos de bases de datos relacionales', 56);
INSERT INTO Modulo(codigo_modulo, descripcion, duracion_horas) VALUES (8, 'Desarrollo de aplicaciones web con Python Django', 72);
INSERT INTO Modulo(codigo_modulo, descripcion, duracion_horas) VALUES (9, 'Acceso a datos en aplicaciones Python Django', 80);
INSERT INTO Modulo(codigo_modulo, descripcion, duracion_horas) VALUES (10, 'Fundamentos de programación en JS', 60);
INSERT INTO Modulo(codigo_modulo, descripcion, duracion_horas) VALUES (11, 'Programación avanzada en JS', 48);
INSERT INTO Modulo(codigo_modulo, descripcion, duracion_horas) VALUES (12, 'Desarrollo de aplicaciones web node express', 72);
INSERT INTO Modulo(codigo_modulo, descripcion, duracion_horas) VALUES (13, 'Acceso a datos en aplicaciones node', 64);
INSERT INTO Modulo(codigo_modulo, descripcion, duracion_horas) VALUES (14, 'Implementación de API backend node express', 46);
INSERT INTO Modulo(codigo_modulo, descripcion, duracion_horas) VALUES (15, 'Fundamentos de programación Java', 144);
INSERT INTO Modulo(codigo_modulo, descripcion, duracion_horas) VALUES (16, 'Desarrollo de aplicaciones web dinámicas Java', 64);
INSERT INTO Modulo(codigo_modulo, descripcion, duracion_horas) VALUES (17, 'Desarrollo de aplicaciones JEE con Spring Framework', 90);
INSERT INTO Modulo(codigo_modulo, descripcion, duracion_horas) VALUES (18, 'Desarrollo de la interfaz de usuario web', 56);
INSERT INTO Modulo(codigo_modulo, descripcion, duracion_horas) VALUES (19, 'Desarrollo de interfaces interactivas con Framework VUE', 80);
INSERT INTO Modulo(codigo_modulo, descripcion, duracion_horas) VALUES (20, 'Desarrollo de aplicaciones frontend con Framework VUE', 80);
INSERT INTO Modulo(codigo_modulo, descripcion, duracion_horas) VALUES (21, 'Introducción a los negocios tecnológicos', 30);
INSERT INTO Modulo(codigo_modulo, descripcion, duracion_horas) VALUES (22, 'Design Thinking', 24);
INSERT INTO Modulo(codigo_modulo, descripcion, duracion_horas) VALUES (23, 'Lean Startup', 16);
INSERT INTO Modulo(codigo_modulo, descripcion, duracion_horas) VALUES (24, 'Diseño de producto para emprendimiento digital', 44);
INSERT INTO Modulo(codigo_modulo, descripcion, duracion_horas) VALUES (25, 'Introducción al desarrollo web para emprendimiento', 48);
INSERT INTO Modulo(codigo_modulo, descripcion, duracion_horas) VALUES (26, 'Introducción a la programación con Ruby', 60);
INSERT INTO Modulo(codigo_modulo, descripcion, duracion_horas) VALUES (27, 'Introducción a las bases de datos para emprendimiento', 56);
INSERT INTO Modulo(codigo_modulo, descripcion, duracion_horas) VALUES (28, 'Introducción a desarrollo de aplicaciones ROR', 60);
INSERT INTO Modulo(codigo_modulo, descripcion, duracion_horas) VALUES (29, 'Desarrollo de aplicaciones ROR', 60);
INSERT INTO Modulo(codigo_modulo, descripcion, duracion_horas) VALUES (30, 'Visión del producto en un emprendimiento', 28);
INSERT INTO Modulo(codigo_modulo, descripcion, duracion_horas) VALUES (31, 'Presentación del producto y levantamiento', 24);

CREATE TABLE Plan_Formativo(
	codigo_plan_formativo VARCHAR(30),
	descripcion VARCHAR(250),
	duracion_horas INT,
	CONSTRAINT pk_plan_formativo PRIMARY KEY (codigo_plan_formativo)
    

);

INSERT INTO plan_formativo(codigo_plan_formativo, descripcion, duracion_horas) VALUES ('A1','Desarrollo de aplifaciones Frontend Trainee',438);
INSERT INTO plan_formativo(codigo_plan_formativo, descripcion, duracion_horas) VALUES ('A2','Desarrollo de aplifaciones FullStack Java Trainee',480);
INSERT INTO plan_formativo(codigo_plan_formativo, descripcion, duracion_horas) VALUES ('A3','Desarrollo de aplifaciones FullStack JavaScript Trainee',472);
INSERT INTO plan_formativo(codigo_plan_formativo, descripcion, duracion_horas) VALUES ('A4','Desarrollo de aplifaciones FullStack Python Trainee',462);
INSERT INTO plan_formativo(codigo_plan_formativo, descripcion, duracion_horas) VALUES ('A5','Emprendimiento digital con Ruby On Rails',450);

CREATE TABLE Plan_Modulo(
	codigo_plan_formativo VARCHAR(30),
	codigo_modulo INT,
	CONSTRAINT pk_plan_modulo PRIMARY KEY (codigo_plan_formativo, codigo_modulo),
	CONSTRAINT fk_plan_modulo_plan_formativo FOREIGN KEY (codigo_plan_formativo) REFERENCES plan_formativo(codigo_plan_formativo),
	CONSTRAINT fk_plan_modulo_modulo FOREIGN KEY (codigo_modulo) REFERENCES modulo(codigo_modulo)
    

);

INSERT INTO plan_modulo(codigo_plan_formativo, codigo_modulo) VALUES ('A1',1);
INSERT INTO plan_modulo(codigo_plan_formativo, codigo_modulo) VALUES ('A1',4);
INSERT INTO plan_modulo(codigo_plan_formativo, codigo_modulo) VALUES ('A1',18);
INSERT INTO plan_modulo(codigo_plan_formativo, codigo_modulo) VALUES ('A1',10);
INSERT INTO plan_modulo(codigo_plan_formativo, codigo_modulo) VALUES ('A1',11);
INSERT INTO plan_modulo(codigo_plan_formativo, codigo_modulo) VALUES ('A1',19);
INSERT INTO plan_modulo(codigo_plan_formativo, codigo_modulo) VALUES ('A1',20);
INSERT INTO plan_modulo(codigo_plan_formativo, codigo_modulo) VALUES ('A1',2);
INSERT INTO plan_modulo(codigo_plan_formativo, codigo_modulo) VALUES ('A1',3);
INSERT INTO plan_modulo(codigo_plan_formativo, codigo_modulo) VALUES ('A2',1);
INSERT INTO plan_modulo(codigo_plan_formativo, codigo_modulo) VALUES ('A2',4);
INSERT INTO plan_modulo(codigo_plan_formativo, codigo_modulo) VALUES ('A2',7);
INSERT INTO plan_modulo(codigo_plan_formativo, codigo_modulo) VALUES ('A2',15);
INSERT INTO plan_modulo(codigo_plan_formativo, codigo_modulo) VALUES ('A2',16);
INSERT INTO plan_modulo(codigo_plan_formativo, codigo_modulo) VALUES ('A2',17);
INSERT INTO plan_modulo(codigo_plan_formativo, codigo_modulo) VALUES ('A2',2);
INSERT INTO plan_modulo(codigo_plan_formativo, codigo_modulo) VALUES ('A2',3);
INSERT INTO plan_modulo(codigo_plan_formativo, codigo_modulo) VALUES ('A3',1);
INSERT INTO plan_modulo(codigo_plan_formativo, codigo_modulo) VALUES ('A3',4);
INSERT INTO plan_modulo(codigo_plan_formativo, codigo_modulo) VALUES ('A3',10);
INSERT INTO plan_modulo(codigo_plan_formativo, codigo_modulo) VALUES ('A3',11);
INSERT INTO plan_modulo(codigo_plan_formativo, codigo_modulo) VALUES ('A3',7);
INSERT INTO plan_modulo(codigo_plan_formativo, codigo_modulo) VALUES ('A3',12);
INSERT INTO plan_modulo(codigo_plan_formativo, codigo_modulo) VALUES ('A3',13);
INSERT INTO plan_modulo(codigo_plan_formativo, codigo_modulo) VALUES ('A3',14);
INSERT INTO plan_modulo(codigo_plan_formativo, codigo_modulo) VALUES ('A3',2);
INSERT INTO plan_modulo(codigo_plan_formativo, codigo_modulo) VALUES ('A3',3);
INSERT INTO plan_modulo(codigo_plan_formativo, codigo_modulo) VALUES ('A4',1);
INSERT INTO plan_modulo(codigo_plan_formativo, codigo_modulo) VALUES ('A4',4);
INSERT INTO plan_modulo(codigo_plan_formativo, codigo_modulo) VALUES ('A4',5);
INSERT INTO plan_modulo(codigo_plan_formativo, codigo_modulo) VALUES ('A4',6);
INSERT INTO plan_modulo(codigo_plan_formativo, codigo_modulo) VALUES ('A4',7);
INSERT INTO plan_modulo(codigo_plan_formativo, codigo_modulo) VALUES ('A4',8);
INSERT INTO plan_modulo(codigo_plan_formativo, codigo_modulo) VALUES ('A4',9);
INSERT INTO plan_modulo(codigo_plan_formativo, codigo_modulo) VALUES ('A4',2);
INSERT INTO plan_modulo(codigo_plan_formativo, codigo_modulo) VALUES ('A4',3);
INSERT INTO plan_modulo(codigo_plan_formativo, codigo_modulo) VALUES ('A5',21);
INSERT INTO plan_modulo(codigo_plan_formativo, codigo_modulo) VALUES ('A5',22);
INSERT INTO plan_modulo(codigo_plan_formativo, codigo_modulo) VALUES ('A5',23);
INSERT INTO plan_modulo(codigo_plan_formativo, codigo_modulo) VALUES ('A5',24);
INSERT INTO plan_modulo(codigo_plan_formativo, codigo_modulo) VALUES ('A5',25);
INSERT INTO plan_modulo(codigo_plan_formativo, codigo_modulo) VALUES ('A5',26);
INSERT INTO plan_modulo(codigo_plan_formativo, codigo_modulo) VALUES ('A5',27);
INSERT INTO plan_modulo(codigo_plan_formativo, codigo_modulo) VALUES ('A5',28);
INSERT INTO plan_modulo(codigo_plan_formativo, codigo_modulo) VALUES ('A5',29);
INSERT INTO plan_modulo(codigo_plan_formativo, codigo_modulo) VALUES ('A5',30);
INSERT INTO plan_modulo(codigo_plan_formativo, codigo_modulo) VALUES ('A5',31);

CREATE TABLE Curso(
	codigo_curso VARCHAR(30),
	fecha_inicio DATE,
	fecha_termno DATE,
	codigo_comuna INT,
	codigo_plan_formativo VARCHAR(30),
	CONSTRAINT pk_curso PRIMARY KEY (codigo_curso),
	CONSTRAINT fk_curso_comuna FOREIGN KEY (codigo_comuna) REFERENCES comuna(codigo_comuna),
	CONSTRAINT fk_curso_plan_formativo FOREIGN KEY (codigo_plan_formativo) REFERENCES plan_formativo(codigo_plan_formativo)
    

);

INSERT INTO Curso(codigo_curso, fecha_inicio, fecha_termno, codigo_comuna, codigo_plan_formativo) VALUES ('0004', '16-03-2022', '09-08-2022', 303, 'A2');
INSERT INTO Curso(codigo_curso, fecha_inicio, fecha_termno, codigo_comuna, codigo_plan_formativo) VALUES ('0010', '17-03-2022', '05-08-2022', 302, 'A4');
INSERT INTO Curso(codigo_curso, fecha_inicio, fecha_termno, codigo_comuna, codigo_plan_formativo) VALUES ('0008', '20-12-2021', '05-03-2022', 306, 'A4');
INSERT INTO Curso(codigo_curso, fecha_inicio, fecha_termno, codigo_comuna, codigo_plan_formativo) VALUES ('0006', '20-12-2021', '30-05-2022', 305, 'A3');
INSERT INTO Curso(codigo_curso, fecha_inicio, fecha_termno, codigo_comuna, codigo_plan_formativo) VALUES ('0045', '05-04-2022', '21-07-2022', 304, 'A5');
INSERT INTO Curso(codigo_curso, fecha_inicio, fecha_termno, codigo_comuna, codigo_plan_formativo) VALUES ('0009', '20-12-2021', '04-06-2022', 304, 'A4');
INSERT INTO Curso(codigo_curso, fecha_inicio, fecha_termno, codigo_comuna, codigo_plan_formativo) VALUES ('0007', '15-03-2022', '12-08-2022', 303, 'A3');
INSERT INTO Curso(codigo_curso, fecha_inicio, fecha_termno, codigo_comuna, codigo_plan_formativo) VALUES ('0001', '15-03-2022', '12-08-2022', 303, 'A2');
INSERT INTO Curso(codigo_curso, fecha_inicio, fecha_termno, codigo_comuna, codigo_plan_formativo) VALUES ('0031', '17-03-2022', '09-08-2022', 303, 'A5');
INSERT INTO Curso(codigo_curso, fecha_inicio, fecha_termno, codigo_comuna, codigo_plan_formativo) VALUES ('0046', '17-03-2022', '05-08-2022', 250, 'A5');
INSERT INTO Curso(codigo_curso, fecha_inicio, fecha_termno, codigo_comuna, codigo_plan_formativo) VALUES ('0012', '15-03-2022', '06-08-2022', 258, 'A1');
INSERT INTO Curso(codigo_curso, fecha_inicio, fecha_termno, codigo_comuna, codigo_plan_formativo) VALUES ('0003', '15-03-2022', '05-08-2022', 317, 'A2');
INSERT INTO Curso(codigo_curso, fecha_inicio, fecha_termno, codigo_comuna, codigo_plan_formativo) VALUES ('0027', '17-03-2022', '06-08-2022', 303, 'A1');
INSERT INTO Curso(codigo_curso, fecha_inicio, fecha_termno, codigo_comuna, codigo_plan_formativo) VALUES ('0044', '18-03-2022', '06-08-2022', 201, 'A5');
INSERT INTO Curso(codigo_curso, fecha_inicio, fecha_termno, codigo_comuna, codigo_plan_formativo) VALUES ('0005', '19-03-2022', '12-08-2022', 47, 'A3');
INSERT INTO Curso(codigo_curso, fecha_inicio, fecha_termno, codigo_comuna, codigo_plan_formativo) VALUES ('0032', '18-03-2022', '08-08-2022', 90, 'A5');
INSERT INTO Curso(codigo_curso, fecha_inicio, fecha_termno, codigo_comuna, codigo_plan_formativo) VALUES ('0013', '19-03-2022', '08-08-2022', 56, 'A1');
INSERT INTO Curso(codigo_curso, fecha_inicio, fecha_termno, codigo_comuna, codigo_plan_formativo) VALUES ('0029', '19-03-2022', '12-08-2022', 303, 'A2');
INSERT INTO Curso(codigo_curso, fecha_inicio, fecha_termno, codigo_comuna, codigo_plan_formativo) VALUES ('0002', '18-03-2022', '06-08-2022', 303, 'A2');
INSERT INTO Curso(codigo_curso, fecha_inicio, fecha_termno, codigo_comuna, codigo_plan_formativo) VALUES ('0028', '18-03-2022', '06-08-2022', 303, 'A2');
INSERT INTO Curso(codigo_curso, fecha_inicio, fecha_termno, codigo_comuna, codigo_plan_formativo) VALUES ('0047', '16-03-2022', '06-08-2022', 303, 'A5');

CREATE TABLE Curso_Modulo_Tutor(
	codigo_curso VARCHAR(30),
	codigo_modulo INT,
	codigo_tutor INT,
	CONSTRAINT pk_curso_modulo_tutor PRIMARY KEY (codigo_curso, codigo_modulo, codigo_tutor),
	CONSTRAINT fk_curso_modulo_tutor_curso FOREIGN KEY (codigo_curso) REFERENCES curso(codigo_curso),
	CONSTRAINT fk_curso_modulo_tutor_modulo FOREIGN KEY (codigo_modulo) REFERENCES modulo(codigo_modulo),
	CONSTRAINT fk_curso_modulo_tutor_tutor FOREIGN KEY (codigo_tutor) REFERENCES tutor(codigo_tutor)
    

);

INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0004', 1, 8);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0004', 1, 36);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0004', 4, 8);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0004', 4, 36);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0004', 7, 8);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0004', 7, 36);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0004', 15, 8);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0004', 15, 36);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0004', 16, 8);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0004', 16, 36);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0004', 17, 8);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0004', 17, 36);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0004', 2, 8);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0004', 2, 36);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0004', 3, 8);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0004', 3, 36);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0001', 1, 6);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0001', 1, 33);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0001', 4, 6);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0001', 4, 33);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0001', 7, 6);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0001', 7, 33);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0001', 15, 6);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0001', 15, 33);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0001', 16, 6);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0001', 16, 33);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0001', 17, 6);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0001', 17, 33);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0001', 2, 6);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0001', 2, 33);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0001', 3, 6);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0001', 3, 33);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0002', 1, 7);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0002', 1, 35);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0002', 4, 7);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0002', 4, 35);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0002', 7, 7);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0002', 7, 35);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0002', 15, 7);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0002', 15, 35);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0002', 16, 7);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0002', 16, 35);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0002', 17, 7);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0002', 17, 35);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0002', 2, 7);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0002', 2, 35);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0002', 3, 7);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0002', 3, 35);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0003', 1, 6);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0003', 1, 34);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0003', 4, 6);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0003', 4, 34);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0003', 7, 6);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0003', 7, 34);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0003', 15, 6);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0003', 15, 34);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0003', 16, 6);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0003', 16, 34);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0003', 17, 6);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0003', 17, 34);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0003', 2, 6);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0003', 2, 34);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0003', 3, 6);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0003', 3, 34);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0028', 1, 11);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0028', 1, 40);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0028', 4, 11);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0028', 4, 40);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0028', 7, 11);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0028', 7, 40);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0028', 15, 11);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0028', 15, 40);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0028', 16, 11);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0028', 16, 40);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0028', 17, 11);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0028', 17, 40);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0028', 2, 11);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0028', 2, 40);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0028', 3, 11);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0028', 3, 40);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0029', 1, 12);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0029', 1, 42);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0029', 4, 12);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0029', 4, 42);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0029', 7, 12);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0029', 7, 42);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0029', 15, 12);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0029', 15, 42);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0029', 16, 12);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0029', 16, 42);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0029', 17, 12);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0029', 17, 42);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0029', 2, 12);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0029', 2, 42);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0029', 3, 12);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0029', 3, 42);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0010', 1, 5);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0010', 1, 32);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0010', 4, 5);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0010', 4, 32);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0010', 5, 5);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0010', 5, 32);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0010', 6, 5);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0010', 6, 32);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0010', 7, 5);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0010', 7, 32);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0010', 8, 5);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0010', 8, 32);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0010', 9, 5);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0010', 9, 32);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0010', 2, 5);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0010', 2, 32);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0010', 3, 5);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0010', 3, 32);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0008', 1, 4);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0008', 1, 31);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0008', 4, 4);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0008', 4, 31);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0008', 5, 4);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0008', 5, 31);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0008', 6, 4);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0008', 6, 31);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0008', 7, 4);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0008', 7, 31);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0008', 8, 4);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0008', 8, 31);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0008', 9, 4);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0008', 9, 31);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0008', 2, 4);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0008', 2, 31);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0008', 3, 4);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0008', 3, 31);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0009', 1, 4);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0009', 1, 31);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0009', 4, 4);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0009', 4, 31);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0009', 5, 4);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0009', 5, 31);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0009', 6, 4);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0009', 6, 31);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0009', 7, 4);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0009', 7, 31);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0009', 8, 4);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0009', 8, 31);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0009', 9, 4);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0009', 9, 31);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0009', 2, 4);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0009', 2, 31);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0009', 3, 4);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0009', 3, 31);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0006', 1, 1);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0006', 1, 28);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0006', 4, 1);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0006', 4, 28);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0006', 10, 1);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0006', 10, 28);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0006', 11, 1);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0006', 11, 28);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0006', 7, 1);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0006', 7, 28);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0006', 12, 1);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0006', 12, 28);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0006', 13, 1);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0006', 13, 28);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0006', 14, 1);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0006', 14, 28);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0006', 2, 1);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0006', 2, 28);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0006', 3, 1);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0006', 3, 28);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0005', 1, 3);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0005', 1, 30);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0005', 4, 3);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0005', 4, 30);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0005', 10, 3);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0005', 10, 30);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0005', 11, 3);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0005', 11, 30);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0005', 7, 3);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0005', 7, 30);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0005', 12, 3);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0005', 12, 30);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0005', 13, 3);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0005', 13, 30);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0005', 14, 3);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0005', 14, 30);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0005', 2, 3);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0005', 2, 30);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0005', 3, 3);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0005', 3, 30);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0007', 1, 2);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0007', 1, 29);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0007', 4, 2);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0007', 4, 29);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0007', 10, 2);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0007', 10, 29);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0007', 11, 2);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0007', 11, 29);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0007', 7, 2);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0007', 7, 29);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0007', 12, 2);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0007', 12, 29);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0007', 13, 2);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0007', 13, 29);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0007', 14, 2);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0007', 14, 29);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0007', 2, 2);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0007', 2, 29);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0007', 3, 2);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0007', 3, 29);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0012', 1, 10);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0012', 1, 39);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0012', 4, 10);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0012', 4, 39);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0012', 18, 10);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0012', 18, 39);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0012', 10, 10);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0012', 10, 39);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0012', 11, 10);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0012', 11, 39);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0012', 19, 10);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0012', 19, 39);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0012', 20, 10);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0012', 20, 39);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0012', 2, 10);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0012', 2, 39);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0012', 3, 10);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0012', 3, 39);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0013', 1, 9);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0013', 1, 37);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0013', 4, 9);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0013', 4, 37);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0013', 18, 9);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0013', 18, 37);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0013', 10, 9);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0013', 10, 37);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0013', 11, 9);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0013', 11, 37);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0013', 19, 9);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0013', 19, 37);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0013', 20, 9);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0013', 20, 37);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0013', 2, 9);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0013', 2, 37);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0013', 3, 9);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0013', 3, 37);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0027', 1, 9);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0027', 1, 38);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0027', 4, 9);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0027', 4, 38);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0027', 18, 9);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0027', 18, 38);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0027', 10, 9);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0027', 10, 38);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0027', 11, 9);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0027', 11, 38);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0027', 19, 9);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0027', 19, 38);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0027', 20, 9);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0027', 20, 38);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0027', 2, 9);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0027', 2, 38);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0027', 3, 9);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0027', 3, 38);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0031', 21, 13);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0031', 21, 43);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0031', 22, 14);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0031', 22, 43);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0031', 23, 13);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0031', 23, 43);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0031', 24, 14);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0031', 24, 43);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0031', 25, 15);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0031', 25, 43);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0031', 26, 15);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0031', 26, 43);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0031', 27, 15);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0031', 27, 43);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0031', 28, 15);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0031', 28, 43);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0031', 29, 15);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0031', 29, 43);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0031', 30, 13);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0031', 30, 43);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0031', 31, 15);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0031', 31, 43);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0032', 21, 13);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0032', 21, 44);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0032', 22, 14);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0032', 22, 44);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0032', 23, 13);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0032', 23, 44);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0032', 24, 14);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0032', 24, 44);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0032', 25, 16);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0032', 25, 44);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0032', 26, 16);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0032', 26, 44);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0032', 27, 16);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0032', 27, 44);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0032', 28, 16);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0032', 28, 44);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0032', 29, 16);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0032', 29, 44);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0032', 30, 13);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0032', 30, 44);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0032', 31, 16);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0032', 31, 44);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0044', 21, 17);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0044', 21, 45);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0044', 22, 18);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0044', 22, 45);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0044', 23, 17);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0044', 23, 45);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0044', 24, 18);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0044', 24, 45);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0044', 25, 20);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0044', 25, 45);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0044', 26, 20);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0044', 26, 45);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0044', 27, 20);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0044', 27, 45);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0044', 28, 20);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0044', 28, 45);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0044', 29, 20);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0044', 29, 45);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0044', 30, 19);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0044', 30, 45);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0044', 31, 20);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0044', 31, 45);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0045', 21, 21);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0045', 21, 46);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0045', 22, 18);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0045', 22, 46);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0045', 23, 21);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0045', 23, 46);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0045', 24, 18);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0045', 24, 46);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0045', 25, 4);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0045', 25, 46);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0045', 26, 4);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0045', 26, 46);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0045', 27, 4);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0045', 27, 46);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0045', 28, 4);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0045', 28, 46);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0045', 29, 4);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0045', 29, 46);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0045', 30, 13);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0045', 30, 46);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0045', 31, 4);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0045', 31, 46);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0046', 21, 21);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0046', 21, 46);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0046', 22, 22);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0046', 22, 46);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0046', 23, 21);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0046', 23, 46);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0046', 24, 22);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0046', 24, 46);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0046', 25, 23);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0046', 25, 46);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0046', 26, 23);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0046', 26, 46);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0046', 27, 23);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0046', 27, 46);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0046', 28, 23);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0046', 28, 46);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0046', 29, 23);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0046', 29, 46);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0046', 30, 13);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0046', 30, 46);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0046', 31, 23);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0046', 31, 46);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0047', 21, 24);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0047', 21, 47);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0047', 22, 25);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0047', 22, 47);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0047', 23, 24);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0047', 23, 47);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0047', 24, 26);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0047', 24, 47);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0047', 25, 27);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0047', 25, 47);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0047', 26, 27);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0047', 26, 47);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0047', 27, 27);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0047', 27, 47);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0047', 28, 27);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0047', 28, 47);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0047', 29, 27);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0047', 29, 47);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0047', 30, 13);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0047', 30, 47);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0047', 31, 27);
INSERT INTO curso_modulo_tutor(codigo_curso, codigo_modulo, codigo_tutor) VALUES ('0047', 31, 47);

CREATE TABLE Estudiante(
	id_estudiante INT,
	rut VARCHAR(15),
	nombre VARCHAR(30),
	apellido_pat VARCHAR(30),
	apellido_mat VARCHAR(30),
	direccion VARCHAR(100),
	codigo_comuna INT,
	codigo_curso VARCHAR(30),
    fecha_nacimiento DATE,
	CONSTRAINT pk_estudiante PRIMARY KEY (id_estudiante),
	CONSTRAINT fk_estudiante_comuna FOREIGN KEY (codigo_comuna) REFERENCES comuna(codigo_comuna),
	CONSTRAINT fk_estudiante_curso FOREIGN KEY (codigo_curso) REFERENCES curso(codigo_curso)
    

);

INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (1, '18000000-0', 'nombre_estudiante0', 'apellido_paterno0', 'apellido_materno0', 'direccion0', 196, '0004', '11-03-2001');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (2, '18000001-1', 'nombre_estudiante1', 'apellido_paterno1', 'apellido_materno1', 'direccion1', 238, '0004', '12-03-2002');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (3, '18000002-2', 'nombre_estudiante2', 'apellido_paterno2', 'apellido_materno2', 'direccion2', 188, '0004', '13-03-2003');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (4, '18000003-3', 'nombre_estudiante3', 'apellido_paterno3', 'apellido_materno3', 'direccion3', 81, '0004', '14-03-2004');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (5, '18000004-4', 'nombre_estudiante4', 'apellido_paterno4', 'apellido_materno4', 'direccion4', 116, '0004', '15-03-2005');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (6, '18000005-5', 'nombre_estudiante5', 'apellido_paterno5', 'apellido_materno5', 'direccion5', 11, '0004', '23-03-2005');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (7, '18000006-6', 'nombre_estudiante6', 'apellido_paterno6', 'apellido_materno6', 'direccion6', 337, '0004', '22-03-2006');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (8, '18000007-7', 'nombre_estudiante7', 'apellido_paterno7', 'apellido_materno7', 'direccion7', 266, '0004', '22-03-2007');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (9, '18000008-8', 'nombre_estudiante8', 'apellido_paterno8', 'apellido_materno8', 'direccion8', 86, '0004', '11-03-2002');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (10, '18000009-9', 'nombre_estudiante9', 'apellido_paterno9', 'apellido_materno9', 'direccion9', 135, '0004', '22-03-2005');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (11, '18000010-0', 'nombre_estudiante10', 'apellido_paterno10', 'apellido_materno10', 'direccion10', 66, '0004', '11-03-2022');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (12, '18000011-1', 'nombre_estudiante11', 'apellido_paterno11', 'apellido_materno11', 'direccion11', 207, '0004', '22-03-2003');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (13, '18000012-2', 'nombre_estudiante12', 'apellido_paterno12', 'apellido_materno12', 'direccion12', 278, '0004', '11-03-2002');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (14, '18000013-3', 'nombre_estudiante13', 'apellido_paterno13', 'apellido_materno13', 'direccion13', 124, '0004', '22-03-2002');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (15, '18000014-4', 'nombre_estudiante14', 'apellido_paterno14', 'apellido_materno14', 'direccion14', 233, '0004', '16-03-2001');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (16, '18000015-5', 'nombre_estudiante15', 'apellido_paterno15', 'apellido_materno15', 'direccion15', 183, '0004', '21-03-2009');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (17, '18000016-6', 'nombre_estudiante16', 'apellido_paterno16', 'apellido_materno16', 'direccion16', 32, '0004', '25-03-2002');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (18, '18000017-7', 'nombre_estudiante17', 'apellido_paterno17', 'apellido_materno17', 'direccion17', 290, '0004', '26-03-2008');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (19, '18000018-8', 'nombre_estudiante18', 'apellido_paterno18', 'apellido_materno18', 'direccion18', 312, '0004', '16-03-2008');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (20, '18000019-9', 'nombre_estudiante19', 'apellido_paterno19', 'apellido_materno19', 'direccion19', 209, '0004', '26-03-2007');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (21, '18000020-0', 'nombre_estudiante20', 'apellido_paterno20', 'apellido_materno20', 'direccion20', 207, '0004', '16-03-2009');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (22, '18000021-1', 'nombre_estudiante21', 'apellido_paterno21', 'apellido_materno21', 'direccion21', 231, '0004', '26-03-2022');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (23, '18000022-2', 'nombre_estudiante22', 'apellido_paterno22', 'apellido_materno22', 'direccion22', 298, '0004', '16-03-2006');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (24, '18000023-3', 'nombre_estudiante23', 'apellido_paterno23', 'apellido_materno23', 'direccion23', 26, '0004', '26-03-2006');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (25, '18000024-4', 'nombre_estudiante24', 'apellido_paterno24', 'apellido_materno24', 'direccion24', 316, '0004', '16-03-2002');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (26, '18000025-5', 'nombre_estudiante25', 'apellido_paterno25', 'apellido_materno25', 'direccion25', 247, '0004', '16-03-2002');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (27, '18000026-6', 'nombre_estudiante26', 'apellido_paterno26', 'apellido_materno26', 'direccion26', 14, '0004', '16-03-1993');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (28, '18000027-7', 'nombre_estudiante27', 'apellido_paterno27', 'apellido_materno27', 'direccion27', 129, '0004', '16-03-1995');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (29, '18000028-8', 'nombre_estudiante28', 'apellido_paterno28', 'apellido_materno28', 'direccion28', 126, '0004', '16-03-1994');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (30, '18000029-9', 'nombre_estudiante29', 'apellido_paterno29', 'apellido_materno29', 'direccion29', 19, '0004', '26-03-1991');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (31, '18000030-0', 'nombre_estudiante30', 'apellido_paterno30', 'apellido_materno30', 'direccion30', 98, '0010', '16-03-1992');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (32, '18000031-1', 'nombre_estudiante31', 'apellido_paterno31', 'apellido_materno31', 'direccion31', 39, '0010', '16-03-1993');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (33, '18000032-2', 'nombre_estudiante32', 'apellido_paterno32', 'apellido_materno32', 'direccion32', 149, '0010', '16-03-1998');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (34, '18000033-3', 'nombre_estudiante33', 'apellido_paterno33', 'apellido_materno33', 'direccion33', 240, '0010', '16-03-1996');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (35, '18000034-4', 'nombre_estudiante34', 'apellido_paterno34', 'apellido_materno34', 'direccion34', 242, '0010', '16-03-1991');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (36, '18000035-5', 'nombre_estudiante35', 'apellido_paterno35', 'apellido_materno35', 'direccion35', 220, '0010', '16-03-1992');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (37, '18000036-6', 'nombre_estudiante36', 'apellido_paterno36', 'apellido_materno36', 'direccion36', 315, '0010', '16-03-1993');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (38, '18000037-7', 'nombre_estudiante37', 'apellido_paterno37', 'apellido_materno37', 'direccion37', 241, '0010', '16-03-1994');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (39, '18000038-8', 'nombre_estudiante38', 'apellido_paterno38', 'apellido_materno38', 'direccion38', 8, '0010', '16-03-1995');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (40, '18000039-9', 'nombre_estudiante39', 'apellido_paterno39', 'apellido_materno39', 'direccion39', 306, '0010', '16-03-1993');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (41, '18000040-0', 'nombre_estudiante40', 'apellido_paterno40', 'apellido_materno40', 'direccion40', 175, '0010', '16-03-1994');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (42, '18000041-1', 'nombre_estudiante41', 'apellido_paterno41', 'apellido_materno41', 'direccion41', 107, '0010', '16-03-1992');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (43, '18000042-2', 'nombre_estudiante42', 'apellido_paterno42', 'apellido_materno42', 'direccion42', 272, '0010', '16-03-1991');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (44, '18000043-3', 'nombre_estudiante43', 'apellido_paterno43', 'apellido_materno43', 'direccion43', 272, '0010', '16-03-1993');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (45, '18000044-4', 'nombre_estudiante44', 'apellido_paterno44', 'apellido_materno44', 'direccion44', 161, '0010', '16-03-1996');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (46, '18000045-5', 'nombre_estudiante45', 'apellido_paterno45', 'apellido_materno45', 'direccion45', 105, '0010', '16-03-1999');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (47, '18000046-6', 'nombre_estudiante46', 'apellido_paterno46', 'apellido_materno46', 'direccion46', 311, '0010', '16-03-1994');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (48, '18000047-7', 'nombre_estudiante47', 'apellido_paterno47', 'apellido_materno47', 'direccion47', 21, '0010', '16-03-1996');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (49, '18000048-8', 'nombre_estudiante48', 'apellido_paterno48', 'apellido_materno48', 'direccion48', 261, '0010', '16-03-1998');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (50, '18000049-9', 'nombre_estudiante49', 'apellido_paterno49', 'apellido_materno49', 'direccion49', 222, '0010', '16-03-1991');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (51, '18000050-0', 'nombre_estudiante50', 'apellido_paterno50', 'apellido_materno50', 'direccion50', 304, '0010', '16-03-1997');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (52, '18000051-1', 'nombre_estudiante51', 'apellido_paterno51', 'apellido_materno51', 'direccion51', 110, '0010', '16-03-1992');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (53, '18000052-2', 'nombre_estudiante52', 'apellido_paterno52', 'apellido_materno52', 'direccion52', 268, '0010', '16-03-1990');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (54, '18000053-3', 'nombre_estudiante53', 'apellido_paterno53', 'apellido_materno53', 'direccion53', 276, '0010', '16-03-1993');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (55, '18000054-4', 'nombre_estudiante54', 'apellido_paterno54', 'apellido_materno54', 'direccion54', 332, '0010', '16-03-2022');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (56, '18000055-5', 'nombre_estudiante55', 'apellido_paterno55', 'apellido_materno55', 'direccion55', 166, '0010', '16-03-1995');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (57, '18000056-6', 'nombre_estudiante56', 'apellido_paterno56', 'apellido_materno56', 'direccion56', 274, '0010', '16-03-1993');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (58, '18000057-7', 'nombre_estudiante57', 'apellido_paterno57', 'apellido_materno57', 'direccion57', 187, '0010', '16-03-1991');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (59, '18000058-8', 'nombre_estudiante58', 'apellido_paterno58', 'apellido_materno58', 'direccion58', 35, '0010', '16-03-1999');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (60, '18000059-9', 'nombre_estudiante59', 'apellido_paterno59', 'apellido_materno59', 'direccion59', 59, '0010', '16-03-1996');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (61, '18000060-0', 'nombre_estudiante60', 'apellido_paterno60', 'apellido_materno60', 'direccion60', 149, '0008', '16-03-1993');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (62, '18000061-1', 'nombre_estudiante61', 'apellido_paterno61', 'apellido_materno61', 'direccion61', 87, '0008', '16-03-1992');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (63, '18000062-2', 'nombre_estudiante62', 'apellido_paterno62', 'apellido_materno62', 'direccion62', 126, '0008', '16-03-1993');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (64, '18000063-3', 'nombre_estudiante63', 'apellido_paterno63', 'apellido_materno63', 'direccion63', 180, '0008', '16-03-1992');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (65, '18000064-4', 'nombre_estudiante64', 'apellido_paterno64', 'apellido_materno64', 'direccion64', 11, '0008', '16-03-1994');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (66, '18000065-5', 'nombre_estudiante65', 'apellido_paterno65', 'apellido_materno65', 'direccion65', 57, '0008', '16-03-1997');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (67, '18000066-6', 'nombre_estudiante66', 'apellido_paterno66', 'apellido_materno66', 'direccion66', 230, '0008', '16-03-1995');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (68, '18000067-7', 'nombre_estudiante67', 'apellido_paterno67', 'apellido_materno67', 'direccion67', 313, '0008', '16-03-1996');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (69, '18000068-8', 'nombre_estudiante68', 'apellido_paterno68', 'apellido_materno68', 'direccion68', 127, '0008', '16-03-1996');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (70, '18000069-9', 'nombre_estudiante69', 'apellido_paterno69', 'apellido_materno69', 'direccion69', 182, '0008', '16-03-1992');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (71, '18000070-0', 'nombre_estudiante70', 'apellido_paterno70', 'apellido_materno70', 'direccion70', 176, '0008', '16-03-1994');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (72, '18000071-1', 'nombre_estudiante71', 'apellido_paterno71', 'apellido_materno71', 'direccion71', 195, '0008', '16-03-1993');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (73, '18000072-2', 'nombre_estudiante72', 'apellido_paterno72', 'apellido_materno72', 'direccion72', 19, '0008', '16-03-1994');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (74, '18000073-3', 'nombre_estudiante73', 'apellido_paterno73', 'apellido_materno73', 'direccion73', 80, '0008', '16-03-1996');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (75, '18000074-4', 'nombre_estudiante74', 'apellido_paterno74', 'apellido_materno74', 'direccion74', 220, '0008', '16-03-1992');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (76, '18000075-5', 'nombre_estudiante75', 'apellido_paterno75', 'apellido_materno75', 'direccion75', 152, '0008', '16-03-1998');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (77, '18000076-6', 'nombre_estudiante76', 'apellido_paterno76', 'apellido_materno76', 'direccion76', 267, '0008', '16-03-1999');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (78, '18000077-7', 'nombre_estudiante77', 'apellido_paterno77', 'apellido_materno77', 'direccion77', 223, '0008', '16-03-1993');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (79, '18000078-8', 'nombre_estudiante78', 'apellido_paterno78', 'apellido_materno78', 'direccion78', 235, '0008', '16-03-2022');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (80, '18000079-9', 'nombre_estudiante79', 'apellido_paterno79', 'apellido_materno79', 'direccion79', 52, '0008', '16-03-1994');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (81, '18000080-0', 'nombre_estudiante80', 'apellido_paterno80', 'apellido_materno80', 'direccion80', 252, '0008', '16-03-2022');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (82, '18000081-1', 'nombre_estudiante81', 'apellido_paterno81', 'apellido_materno81', 'direccion81', 93, '0008', '16-03-1995');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (83, '18000082-2', 'nombre_estudiante82', 'apellido_paterno82', 'apellido_materno82', 'direccion82', 205, '0008', '16-03-2022');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (84, '18000083-3', 'nombre_estudiante83', 'apellido_paterno83', 'apellido_materno83', 'direccion83', 50, '0008', '16-03-1994');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (85, '18000084-4', 'nombre_estudiante84', 'apellido_paterno84', 'apellido_materno84', 'direccion84', 231, '0008', '16-03-1992');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (86, '18000085-5', 'nombre_estudiante85', 'apellido_paterno85', 'apellido_materno85', 'direccion85', 344, '0008', '16-03-1892');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (87, '18000086-6', 'nombre_estudiante86', 'apellido_paterno86', 'apellido_materno86', 'direccion86', 115, '0008', '16-03-1893');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (88, '18000087-7', 'nombre_estudiante87', 'apellido_paterno87', 'apellido_materno87', 'direccion87', 56, '0008', '16-03-1890');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (89, '18000088-8', 'nombre_estudiante88', 'apellido_paterno88', 'apellido_materno88', 'direccion88', 148, '0008', '16-03-1892');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (90, '18000089-9', 'nombre_estudiante89', 'apellido_paterno89', 'apellido_materno89', 'direccion89', 276, '0008', '16-03-1892');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (91, '18000090-0', 'nombre_estudiante90', 'apellido_paterno90', 'apellido_materno90', 'direccion90', 107, '0006', '16-03-1892');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (92, '18000091-1', 'nombre_estudiante91', 'apellido_paterno91', 'apellido_materno91', 'direccion91', 50, '0006', '16-03-1892');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (93, '18000092-2', 'nombre_estudiante92', 'apellido_paterno92', 'apellido_materno92', 'direccion92', 304, '0006', '16-03-1892');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (94, '18000093-3', 'nombre_estudiante93', 'apellido_paterno93', 'apellido_materno93', 'direccion93', 289, '0006', '16-03-1892');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (95, '18000094-4', 'nombre_estudiante94', 'apellido_paterno94', 'apellido_materno94', 'direccion94', 98, '0006', '16-03-1892');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (96, '18000095-5', 'nombre_estudiante95', 'apellido_paterno95', 'apellido_materno95', 'direccion95', 175, '0006', '16-03-1892');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (97, '18000096-6', 'nombre_estudiante96', 'apellido_paterno96', 'apellido_materno96', 'direccion96', 185, '0006', '16-03-1892');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (98, '18000097-7', 'nombre_estudiante97', 'apellido_paterno97', 'apellido_materno97', 'direccion97', 78, '0006', '16-03-1892');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (99, '18000098-8', 'nombre_estudiante98', 'apellido_paterno98', 'apellido_materno98', 'direccion98', 6, '0006', '16-03-1892');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (100, '18000099-9', 'nombre_estudiante99', 'apellido_paterno99', 'apellido_materno99', 'direccion99', 144, '0006', '16-03-1892');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (101, '18000100-0', 'nombre_estudiante100', 'apellido_paterno100', 'apellido_materno100', 'direccion100', 3, '0006', '16-03-1895');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (102, '18000101-1', 'nombre_estudiante101', 'apellido_paterno101', 'apellido_materno101', 'direccion101', 12, '0006', '16-03-1895');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (103, '18000102-2', 'nombre_estudiante102', 'apellido_paterno102', 'apellido_materno102', 'direccion102', 341, '0006', '16-03-1895');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (104, '18000103-3', 'nombre_estudiante103', 'apellido_paterno103', 'apellido_materno103', 'direccion103', 121, '0006', '16-03-1895');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (105, '18000104-4', 'nombre_estudiante104', 'apellido_paterno104', 'apellido_materno104', 'direccion104', 100, '0006', '16-03-1895');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (106, '18000105-5', 'nombre_estudiante105', 'apellido_paterno105', 'apellido_materno105', 'direccion105', 222, '0006', '16-03-1895');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (107, '18000106-6', 'nombre_estudiante106', 'apellido_paterno106', 'apellido_materno106', 'direccion106', 2, '0006', '16-03-2022');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (108, '18000107-7', 'nombre_estudiante107', 'apellido_paterno107', 'apellido_materno107', 'direccion107', 182, '0006', '16-03-1895');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (109, '18000108-8', 'nombre_estudiante108', 'apellido_paterno108', 'apellido_materno108', 'direccion108', 122, '0006', '16-03-1895');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (110, '18000109-9', 'nombre_estudiante109', 'apellido_paterno109', 'apellido_materno109', 'direccion109', 60, '0006', '16-03-1895');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (111, '18000110-0', 'nombre_estudiante110', 'apellido_paterno110', 'apellido_materno110', 'direccion110', 115, '0006', '16-03-1895');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (112, '18000111-1', 'nombre_estudiante111', 'apellido_paterno111', 'apellido_materno111', 'direccion111', 239, '0006', '16-03-1895');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (113, '18000112-2', 'nombre_estudiante112', 'apellido_paterno112', 'apellido_materno112', 'direccion112', 159, '0006', '16-03-1895');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (114, '18000113-3', 'nombre_estudiante113', 'apellido_paterno113', 'apellido_materno113', 'direccion113', 268, '0006', '16-03-1895');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (115, '18000114-4', 'nombre_estudiante114', 'apellido_paterno114', 'apellido_materno114', 'direccion114', 260, '0006', '16-03-1895');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (116, '18000115-5', 'nombre_estudiante115', 'apellido_paterno115', 'apellido_materno115', 'direccion115', 297, '0006', '16-03-1895');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (117, '18000116-6', 'nombre_estudiante116', 'apellido_paterno116', 'apellido_materno116', 'direccion116', 48, '0006', '16-03-1895');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (118, '18000117-7', 'nombre_estudiante117', 'apellido_paterno117', 'apellido_materno117', 'direccion117', 244, '0006', '16-03-1895');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (119, '18000118-8', 'nombre_estudiante118', 'apellido_paterno118', 'apellido_materno118', 'direccion118', 289, '0006', '16-03-1895');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (120, '18000119-9', 'nombre_estudiante119', 'apellido_paterno119', 'apellido_materno119', 'direccion119', 325, '0006', '16-03-1895');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (121, '18000120-0', 'nombre_estudiante120', 'apellido_paterno120', 'apellido_materno120', 'direccion120', 330, '0045', '16-03-2022');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (122, '18000121-1', 'nombre_estudiante121', 'apellido_paterno121', 'apellido_materno121', 'direccion121', 302, '0045', '16-03-1895');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (123, '18000122-2', 'nombre_estudiante122', 'apellido_paterno122', 'apellido_materno122', 'direccion122', 289, '0045', '16-03-1895');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (124, '18000123-3', 'nombre_estudiante123', 'apellido_paterno123', 'apellido_materno123', 'direccion123', 173, '0045', '16-03-1895');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (125, '18000124-4', 'nombre_estudiante124', 'apellido_paterno124', 'apellido_materno124', 'direccion124', 52, '0045', '16-03-1895');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (126, '18000125-5', 'nombre_estudiante125', 'apellido_paterno125', 'apellido_materno125', 'direccion125', 277, '0045', '16-03-1895');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (127, '18000126-6', 'nombre_estudiante126', 'apellido_paterno126', 'apellido_materno126', 'direccion126', 319, '0045', '16-03-1895');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (128, '18000127-7', 'nombre_estudiante127', 'apellido_paterno127', 'apellido_materno127', 'direccion127', 83, '0045', '16-03-1895');
INSERT INTO estudiante(id_estudiante, rut, nombre, apellido_pat, apellido_mat, direccion, codigo_comuna, codigo_curso, fecha_nacimiento) VALUES (129, '18000128-8', 'nombre_estudiante128', 'apellido_paterno128', 'apellido_materno128', 'direccion128', 242, '0045', '16-03-1895');


COMMIT;