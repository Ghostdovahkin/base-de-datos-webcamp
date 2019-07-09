-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-07-2019 a las 23:13:52
-- Versión del servidor: 10.1.33-MariaDB
-- Versión de PHP: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gdlwebcamp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admins`
--

CREATE TABLE `admins` (
  `id_admin` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `password` varchar(60) NOT NULL,
  `editado` datetime NOT NULL,
  `nivel` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `admins`
--

INSERT INTO `admins` (`id_admin`, `usuario`, `nombre`, `password`, `editado`, `nivel`) VALUES
(75, 'admin', 'lucho   ', '$2y$12$V1UPpmsXvGmktmrIXtVynOSNCbBgwaylyUuLSk4E7mc4bjIKXP6tq', '2018-09-03 18:02:55', 1),
(137, 'admin2', 'lucho', '$2y$12$2CwLkOBrFlKdyRKwqKGOc.UHQtEOmANS059KVYGefIonTZP7NnEk6', '0000-00-00 00:00:00', 0),
(138, 'admin3', 'lucho', '$2y$12$JGQ28Go3A4w0RtQC70aepehaCxtMCZbjAzroPXdNcgUOKcxL1iBTu', '0000-00-00 00:00:00', 0),
(139, 'admin4', 'lucho', '$2y$12$gMsnzjOIGTXMaXqcHOzXGuNSgptic5RC3JVxj8okjIRoLOWsYGFwy', '0000-00-00 00:00:00', 0),
(140, 'admin5', 'lucho', '$2y$12$diV7Tj8NiMmy74ukKfrmiuPXC.ambjL/ZWXyEiHhiEwyhspbAvZFa', '0000-00-00 00:00:00', 0),
(141, 'admin6', 'lucho', '$2y$12$DL3loUkCgXmtACU.QKQ8f.dJQDz.17GdApVUKru9ZNqGXTsyWuWkO', '0000-00-00 00:00:00', 0),
(142, 'admin7', 'lucho', '$2y$12$LCSCEFFNKgdI8KTitAK5p.ZC/50rfTXg1DzRgcn3FvSXTLc6T2Nxa', '0000-00-00 00:00:00', 0),
(143, 'admin8', 'lucho', '$2y$12$OCaNktbm9AzbZYCl7FtaXeIMl7is5b0osHyyBdKt5fkuJpSf1MxWW', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_evento`
--

CREATE TABLE `categoria_evento` (
  `id_categoria` tinyint(10) NOT NULL,
  `cat_evento` varchar(50) NOT NULL,
  `icono` varchar(15) NOT NULL,
  `editado` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categoria_evento`
--

INSERT INTO `categoria_evento` (`id_categoria`, `cat_evento`, `icono`, `editado`) VALUES
(1, 'Seminario', 'fa-university', '0000-00-00 00:00:00'),
(2, 'Conferencias', 'fa-comment', '0000-00-00 00:00:00'),
(3, 'Talleres', 'fa-comments', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `evento_id` tinyint(10) NOT NULL,
  `nombre_evento` varchar(60) NOT NULL,
  `fecha_evento` date NOT NULL,
  `hora_evento` time NOT NULL,
  `id_cat_evento` tinyint(10) NOT NULL,
  `id_inv` tinyint(4) NOT NULL,
  `clave` varchar(10) NOT NULL,
  `editado` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`evento_id`, `nombre_evento`, `fecha_evento`, `hora_evento`, `id_cat_evento`, `id_inv`, `clave`, `editado`) VALUES
(2, 'Responsive Web Design', '2016-12-09', '10:00:00', 3, 1, 'taller_01', '0000-00-00 00:00:00'),
(3, 'Flexbox', '2016-12-09', '12:00:00', 3, 2, 'taller_02', '0000-00-00 00:00:00'),
(4, 'HTML5 y CSS3', '2016-12-09', '14:00:00', 3, 3, 'taller_03', '0000-00-00 00:00:00'),
(5, 'Drupal', '2016-12-09', '17:00:00', 3, 4, 'taller_04', '0000-00-00 00:00:00'),
(6, 'WordPress', '2016-12-09', '19:00:00', 3, 5, 'taller_05', '0000-00-00 00:00:00'),
(7, 'Como ser freelancer', '2016-12-09', '10:00:00', 2, 6, 'conf_01', '0000-00-00 00:00:00'),
(8, 'Tecnologías del Futuro', '2016-12-09', '17:00:00', 2, 1, 'conf_02', '0000-00-00 00:00:00'),
(9, 'Seguridad en la Web', '2016-12-09', '19:00:00', 2, 2, 'conf_03', '0000-00-00 00:00:00'),
(10, 'Diseño UI y UX para móviles', '2016-12-09', '10:00:00', 1, 6, 'sem_01', '0000-00-00 00:00:00'),
(11, 'AngularJS', '2016-12-10', '10:00:00', 3, 1, 'taller_06', '0000-00-00 00:00:00'),
(12, 'PHP y MySQL', '2016-12-10', '12:00:00', 3, 2, 'taller_07', '0000-00-00 00:00:00'),
(13, 'JavaScript Avanzado', '2016-12-10', '14:00:00', 3, 3, 'taller_08', '0000-00-00 00:00:00'),
(14, 'SEO en Google', '2016-12-10', '17:00:00', 3, 4, 'taller_09', '0000-00-00 00:00:00'),
(16, 'PHP Intermedio y Avanzado', '2016-12-10', '21:00:00', 3, 6, 'taller_11', '0000-00-00 00:00:00'),
(17, 'Como crear una tienda online que venda millones en pocos día', '2016-12-10', '10:00:00', 2, 6, 'conf_04', '0000-00-00 00:00:00'),
(18, 'Los mejores lugares para encontrar trabajo', '2016-12-10', '17:00:00', 2, 1, 'conf_05', '0000-00-00 00:00:00'),
(19, 'Pasos para crear un negocio rentable ', '2016-12-10', '19:00:00', 2, 2, 'conf_06', '0000-00-00 00:00:00'),
(20, 'Aprende a Programar en una mañana', '2016-12-10', '10:00:00', 1, 3, 'sem_02', '0000-00-00 00:00:00'),
(21, 'Diseño UI y UX para móviles', '2016-12-10', '22:00:00', 2, 5, 'sem_03', '2018-09-05 16:50:15'),
(22, 'Laravel', '2016-12-11', '10:00:00', 3, 1, 'taller_12', '0000-00-00 00:00:00'),
(23, 'Crea tu propia API', '2016-12-11', '12:00:00', 3, 2, 'taller_13', '0000-00-00 00:00:00'),
(24, 'JavaScript y jQuery', '2016-12-11', '14:00:00', 3, 3, 'taller_14', '0000-00-00 00:00:00'),
(25, 'Creando Plantillas para WordPress', '2016-12-11', '17:00:00', 3, 4, 'taller_15', '0000-00-00 00:00:00'),
(26, 'Tiendas Virtuales en Magento', '2016-12-11', '19:00:00', 3, 5, 'taller_16', '0000-00-00 00:00:00'),
(27, 'Como hacer Marketing en línea', '2016-12-11', '10:00:00', 2, 6, 'conf_07', '0000-00-00 00:00:00'),
(28, '¿Con que lenguaje debo empezar?', '2016-12-11', '17:00:00', 2, 2, 'conf_08', '0000-00-00 00:00:00'),
(29, 'Frameworks y librerias Open Source', '2016-12-11', '19:00:00', 2, 3, 'conf_09', '0000-00-00 00:00:00'),
(30, 'Creando una App en Android en una mañana', '2016-12-11', '10:00:00', 1, 4, 'sem_04', '0000-00-00 00:00:00'),
(31, 'Creando una App en iOS en una tarde', '2016-12-11', '17:00:00', 1, 1, 'sem_05', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invitados`
--

CREATE TABLE `invitados` (
  `invitado_id` tinyint(4) NOT NULL,
  `nombre_invitado` varchar(30) NOT NULL,
  `apellido_invitado` varchar(30) NOT NULL,
  `descripcion` text NOT NULL,
  `url_imagen` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `invitados`
--

INSERT INTO `invitados` (`invitado_id`, `nombre_invitado`, `apellido_invitado`, `descripcion`, `url_imagen`) VALUES
(1, 'Rafael', 'Bautista', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum quia neque ea. Hic fuga expedita dicta adipisci sit vero esse sed harum facere. Velit eveniet tenetur accusantium odio repellat corporis!', 'invitado1.jpg'),
(2, 'Shari', 'Herrera', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 'invitado2.jpg'),
(3, 'Gregorio L', 'Sanchez', 'Lorem ipsum Velit eveniet tenetur accusantium odio repellat corporis!', 'invitado3.jpg'),
(4, 'Susana', 'Rivera', 'odio repellat corporis!', 'invitado4.jpg'),
(5, 'Harold', 'Garcia', 'Nostrum quia neque ea. Hic fuga expedita dicta adipisci sit vero esse sed harum facere. Velit eveniet tenetur accusantium odio repellat corporis!', 'invitado5.jpg'),
(6, 'Susan', 'Sanchez', ' dicta adipisci sit vero esse sed harum facere. Velit eveniet tenetur accusantium odio repellat corporis!', 'invitado6.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regalos`
--

CREATE TABLE `regalos` (
  `ID_Regalo` int(11) NOT NULL,
  `nombre_regalo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `regalos`
--

INSERT INTO `regalos` (`ID_Regalo`, `nombre_regalo`) VALUES
(1, 'pulsera'),
(2, 'etiquetas'),
(3, 'Plumas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registrados`
--

CREATE TABLE `registrados` (
  `ID_Registrado` bigint(20) NOT NULL,
  `nombre_registrado` varchar(50) NOT NULL,
  `apellido_registrado` varchar(50) NOT NULL,
  `email_registrado` varchar(100) NOT NULL,
  `fecha_registro` datetime NOT NULL,
  `pases_articulos` longtext NOT NULL,
  `talleres_registrados` longtext NOT NULL,
  `regalo` int(11) NOT NULL,
  `total_pagado` varchar(50) NOT NULL,
  `pagado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `registrados`
--

INSERT INTO `registrados` (`ID_Registrado`, `nombre_registrado`, `apellido_registrado`, `email_registrado`, `fecha_registro`, `pases_articulos`, `talleres_registrados`, `regalo`, `total_pagado`, `pagado`) VALUES
(1, 'luciano', 'toniani', 'lucianotoniani1987@hotmail.com', '2018-07-13 22:52:03', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"},\"camisas\":1,\"etiquetas\":5}', '{\"eventos\":[\"10\",\"8\",\"9\"]}', 1, '50.75268817204301', 1),
(6, 'Luciano', 'Toniani', 'lucianotoniani1987@hotmail.com', '2018-08-16 21:04:43', '{\"un_dia\":{\"cantidad\":\"\"},\"pase_completo\":{\"cantidad\":\"0\"},\"pase_2dias\":{\"cantidad\":\"1\"},\"camisas\":1,\"etiquetas\":4}', '{\"eventos\":[\"9\",\"13\",\"16\"]}', 1, '63.75268817204301', 1),
(7, 'Luciano', 'Toniani', 'lucianotoniani1987@hotmail.com', '2018-08-16 21:06:51', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"},\"camisas\":1,\"etiquetas\":1}', '{\"eventos\":[\"8\",\"9\",\"7\"]}', 1, '42.75268817204301', 1),
(8, 'Luciano', 'Toniani', 'lucianotoniani1987@hotmail.com', '2018-08-16 21:10:29', '{\"un_dia\":{\"cantidad\":\"\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"},\"camisas\":1,\"etiquetas\":3}', '[]', 2, '16.75268817204301', 1),
(9, 'Luciano', 'Toniani', 'lucianotoniani1987@hotmail.com', '2018-08-16 21:54:13', '{\"un_dia\":{\"cantidad\":\"\"},\"pase_completo\":{\"cantidad\":\"1\"},\"pase_2dias\":{\"cantidad\":\"1\"},\"camisas\":2,\"etiquetas\":2}', '{\"eventos\":[\"8\",\"9\",\"3\"]}', 2, '120.50537634408602', 1),
(10, 'Luciano', 'Toniani', 'lucianotoniani1987@hotmail.com', '2018-08-16 21:54:21', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"},\"camisas\":1,\"etiquetas\":2}', '{\"eventos\":[\"8\",\"9\",\"3\",\"5\"]}', 2, '44.75268817204301', 1),
(14, 'Luciano', 'Toniani', 'lucianotoniani1987@hotmail.com', '2018-08-16 21:58:08', '{\"un_dia\":{\"cantidad\":\"\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"},\"camisas\":1,\"etiquetas\":2}', '[]', 2, '14.75268817204301', 1),
(26, 'Luciano r', 'Toniani', 'lucianotoniani1987@hotmail.com', '2018-08-16 22:32:49', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"},\"camisas\":3,\"etiquetas\":1}', '{\"eventos\":[\"10\",\"8\",\"7\"]}', 1, '64.25806451612902', 1),
(33, 'Luciano', 'Toniani', 'lucianotoniani1987@hotmail.com', '2018-08-16 23:10:14', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"},\"camisas\":3,\"etiquetas\":4}', '{\"eventos\":[\"8\",\"9\",\"7\",\"6\"]}', 1, '70.25806451612902', 1),
(36, '', '', '', '2018-08-16 23:17:29', '{\"camisas\":1,\"etiquetas\":2}', '[]', 2, '14.75268817204301', 0),
(45, '', '', '', '2018-08-17 06:16:45', '{\"camisas\":1,\"etiquetas\":1}', '[]', 2, '12.75268817204301', 0),
(46, '', '', '', '2018-08-17 06:25:27', '{\"camisas\":1,\"etiquetas\":1}', '[]', 2, '12.75268817204301', 0),
(47, '', '', '', '2018-08-17 06:25:53', '{\"camisas\":1,\"etiquetas\":1}', '[]', 2, '12.75268817204301', 0),
(48, '', '', '', '2018-08-17 06:46:13', '{\"camisas\":1,\"etiquetas\":1}', '[]', 2, '12.75268817204301', 0),
(49, '', '', '', '2018-08-17 06:48:32', '{\"camisas\":1,\"etiquetas\":1}', '[]', 2, '12.75268817204301', 0),
(50, '', '', '', '2018-08-17 06:48:40', '{\"camisas\":1,\"etiquetas\":1}', '[]', 2, '12.75268817204301', 0),
(51, '', '', '', '2018-08-17 06:48:52', '{\"camisas\":1,\"etiquetas\":1}', '[]', 2, '12.75268817204301', 0),
(52, '', '', '', '2018-08-17 06:49:00', '{\"camisas\":1,\"etiquetas\":1}', '[]', 2, '12.75268817204301', 0),
(53, '', '', '', '2018-08-17 06:49:16', '{\"camisas\":1,\"etiquetas\":1}', '[]', 2, '12.75268817204301', 0),
(54, '', '', '', '2018-08-17 06:49:40', '{\"camisas\":1,\"etiquetas\":1}', '[]', 2, '12.75268817204301', 0),
(55, '', '', '', '2018-08-17 06:49:56', '{\"camisas\":1,\"etiquetas\":1}', '[]', 2, '12.75268817204301', 0),
(56, '', '', '', '2018-08-17 06:50:12', '{\"camisas\":1,\"etiquetas\":1}', '[]', 2, '12.75268817204301', 0),
(57, '', '', '', '2018-08-17 06:50:33', '{\"camisas\":1,\"etiquetas\":1}', '[]', 2, '12.75268817204301', 0),
(58, '', '', '', '2018-08-17 06:55:52', '{\"camisas\":1,\"etiquetas\":1}', '[]', 2, '12.75268817204301', 0),
(59, '', '', '', '2018-08-17 07:00:45', '{\"camisas\":1,\"etiquetas\":1}', '[]', 2, '12.75268817204301', 0),
(60, '', '', '', '2018-08-17 07:02:18', '{\"camisas\":1,\"etiquetas\":1}', '[]', 2, '12.75268817204301', 0),
(61, '', '', '', '2018-08-17 07:04:30', '{\"camisas\":1,\"etiquetas\":1}', '[]', 2, '12.75268817204301', 0),
(62, '', '', '', '2018-08-17 07:05:24', '{\"camisas\":1,\"etiquetas\":1}', '[]', 2, '12.75268817204301', 0),
(63, 'Luciano', 'Toniani', 'lucianotoniani1987@hotmail.com', '2018-08-17 07:13:00', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"},\"camisas\":1,\"etiquetas\":3}', '{\"eventos\":[\"taller_01\"]}', 2, '46.75268817204301', 0),
(64, 'Luciano', 'Toniani', 'lucianotoniani1987@hotmail.com', '2018-08-17 07:13:46', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"},\"camisas\":1,\"etiquetas\":3}', '{\"eventos\":[\"taller_01\"]}', 2, '46.75268817204301', 0),
(65, 'Luciano', 'Toniani', 'lucianotoniani1987@hotmail.com', '2018-08-17 07:13:58', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"},\"camisas\":1,\"etiquetas\":1}', '{\"eventos\":[\"taller_01\"]}', 2, '42.75268817204301', 0),
(66, 'Luciano', 'Toniani', 'lucianotoniani1987@hotmail.com', '2018-08-17 07:14:20', '{\"un_dia\":{\"cantidad\":\"0\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"},\"camisas\":1,\"etiquetas\":1}', '{\"eventos\":[\"taller_01\"]}', 2, '12.75268817204301', 0),
(67, 'Luciano', 'Toniani', 'lucianotoniani1987@hotmail.com', '2018-08-17 07:14:50', '{\"un_dia\":{\"cantidad\":\"0\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"},\"camisas\":3,\"etiquetas\":3}', '{\"eventos\":[\"taller_01\"]}', 2, '38.25806451612903', 0),
(68, 'Luciano', 'Toniani', 'lucianotoniani1987@hotmail.com', '2018-08-17 07:15:15', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"2\"},\"pase_2dias\":{\"cantidad\":\"2\"},\"camisas\":3,\"etiquetas\":3}', '{\"eventos\":[\"taller_01\",\"taller_06\",\"taller_12\"]}', 2, '258.258064516129', 0),
(69, 'Luciano', 'Toniani', 'lucianotoniani1987@hotmail.com', '2018-08-17 07:15:36', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"0\"},\"pase_2dias\":{\"cantidad\":\"0\"},\"camisas\":3,\"etiquetas\":3}', '{\"eventos\":[\"taller_01\",\"taller_06\",\"taller_12\"]}', 2, '68.25806451612902', 0),
(72, '', '', '', '2018-08-17 07:25:44', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"2\"},\"pase_2dias\":{\"cantidad\":\"3\"}}', '[]', 2, '265', 0),
(73, '', '', '', '2018-08-17 07:26:03', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"2\"},\"pase_2dias\":{\"cantidad\":\"3\"}}', '[]', 2, '265', 0),
(74, '', '', '', '2018-08-17 07:26:58', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"2\"},\"pase_2dias\":{\"cantidad\":\"3\"},\"camisas\":1,\"etiquetas\":1}', '[]', 2, '277.752688172043', 0),
(75, '', '', '', '2018-08-17 07:27:13', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"2\"},\"pase_2dias\":{\"cantidad\":\"3\"}}', '[]', 2, '265', 0),
(76, '', '', '', '2018-08-17 07:38:46', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"2\"},\"pase_2dias\":{\"cantidad\":\"3\"}}', '[]', 2, '265', 0),
(77, '', '', '', '2018-08-17 16:57:01', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"},\"camisas\":1,\"etiquetas\":1}', '{\"eventos\":[\"conf_01\"]}', 2, '42.75268817204301', 0),
(78, '', '', '', '2018-08-17 17:03:09', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"},\"camisas\":1,\"etiquetas\":1}', '{\"eventos\":[\"conf_01\"]}', 2, '42.75268817204301', 0),
(79, '', '', '', '2018-08-17 17:09:10', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"},\"camisas\":1,\"etiquetas\":1}', '{\"eventos\":[\"conf_01\"]}', 2, '42.75268817204301', 0),
(80, '', '', '', '2018-08-17 17:18:14', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"},\"camisas\":1,\"etiquetas\":1}', '{\"eventos\":[\"conf_01\"]}', 2, '42.75268817204301', 0),
(81, '', '', '', '2018-08-17 17:19:44', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"},\"camisas\":1,\"etiquetas\":1}', '{\"eventos\":[\"conf_01\"]}', 2, '42.75268817204301', 0),
(82, '', '', '', '2018-08-17 17:20:06', '{\"un_dia\":{\"cantidad\":\"0\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"},\"camisas\":1,\"etiquetas\":1}', '{\"eventos\":[\"conf_01\"]}', 2, '12.75268817204301', 0),
(83, '', '', '', '2018-08-17 17:21:20', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"},\"camisas\":1,\"etiquetas\":1}', '{\"eventos\":[\"taller_01\"]}', 2, '42.75268817204301', 0),
(84, '', '', '', '2018-08-17 17:22:15', '{\"un_dia\":{\"cantidad\":\"0\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"},\"camisas\":1,\"etiquetas\":1}', '{\"eventos\":[\"taller_01\"]}', 2, '12.75268817204301', 0),
(85, '', '', '', '2018-08-17 17:23:13', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"}}', '{\"eventos\":[\"taller_01\"]}', 2, '30', 0),
(86, '', '', '', '2018-08-17 17:23:30', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"},\"camisas\":1}', '{\"eventos\":[\"taller_01\"]}', 2, '40.75268817204301', 0),
(87, '', '', '', '2018-08-17 17:24:20', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"1\"},\"pase_2dias\":{\"cantidad\":\"\"},\"camisas\":1}', '{\"eventos\":[\"taller_01\"]}', 2, '90.75268817204301', 0),
(88, '', '', '', '2018-08-17 17:27:00', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"0\"},\"pase_2dias\":{\"cantidad\":\"\"}}', '{\"eventos\":[\"taller_01\",\"conf_01\",\"conf_02\",\"sem_01\"]}', 2, '30', 0),
(89, '', '', '', '2018-08-17 17:27:20', '{\"un_dia\":{\"cantidad\":\"0\"},\"pase_completo\":{\"cantidad\":\"1\"},\"pase_2dias\":{\"cantidad\":\"\"}}', '{\"eventos\":[\"taller_01\",\"conf_01\",\"conf_02\",\"sem_01\"]}', 2, '50', 0),
(90, '', '', '', '2018-08-17 17:27:39', '{\"un_dia\":{\"cantidad\":\"0\"},\"pase_completo\":{\"cantidad\":\"0\"},\"pase_2dias\":{\"cantidad\":\"1\"}}', '{\"eventos\":[\"taller_01\",\"conf_01\",\"conf_02\",\"sem_01\"]}', 2, '45', 0),
(91, '', '', '', '2018-08-17 17:27:59', '{\"un_dia\":{\"cantidad\":\"0\"},\"pase_completo\":{\"cantidad\":\"0\"},\"pase_2dias\":{\"cantidad\":\"1\"},\"camisas\":3,\"etiquetas\":1}', '{\"eventos\":[\"taller_01\",\"conf_01\",\"conf_02\",\"sem_01\"]}', 2, '79.25806451612902', 0),
(92, '', '', '', '2018-08-17 17:28:08', '{\"un_dia\":{\"cantidad\":\"0\"},\"pase_completo\":{\"cantidad\":\"0\"},\"pase_2dias\":{\"cantidad\":\"0\"},\"camisas\":3,\"etiquetas\":1}', '{\"eventos\":[\"taller_01\",\"conf_01\",\"conf_02\",\"sem_01\"]}', 2, '34.25806451612903', 0),
(94, '', '', '', '2018-08-17 17:33:47', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"3\"},\"pase_2dias\":{\"cantidad\":\"3\"}}', '{\"eventos\":[\"taller_01\",\"conf_01\",\"taller_06\",\"conf_04\",\"conf_07\",\"conf_08\"]}', 2, '315', 0),
(95, '', '', '', '2018-08-17 17:34:11', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"3\"},\"pase_2dias\":{\"cantidad\":\"3\"},\"camisas\":1,\"etiquetas\":1}', '{\"eventos\":[\"taller_01\",\"conf_01\",\"taller_06\",\"conf_04\",\"conf_07\",\"conf_08\"]}', 2, '327.752688172043', 0),
(96, '', '', '', '2018-08-17 17:35:42', '{\"un_dia\":{\"cantidad\":\"\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"},\"camisas\":1,\"etiquetas\":1}', '[]', 2, '12.75268817204301', 0),
(97, '', '', '', '2018-08-17 17:35:57', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"1\"},\"pase_2dias\":{\"cantidad\":\"1\"},\"camisas\":1,\"etiquetas\":1}', '[]', 2, '137.752688172043', 0),
(99, '', '', '', '2018-08-17 17:37:40', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"1\"},\"pase_2dias\":{\"cantidad\":\"1\"},\"camisas\":1,\"etiquetas\":1}', '[]', 2, '137.752688172043', 0),
(100, '', '', '', '2018-08-17 17:46:18', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"1\"},\"pase_2dias\":{\"cantidad\":\"1\"},\"camisas\":1,\"etiquetas\":1}', '[]', 2, '137.752688172043', 0),
(101, '', '', '', '2018-08-17 17:46:47', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"1\"},\"pase_2dias\":{\"cantidad\":\"1\"},\"camisas\":1,\"etiquetas\":1}', '[]', 2, '137.752688172043', 0),
(102, '', '', '', '2018-08-17 17:57:15', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"1\"},\"pase_2dias\":{\"cantidad\":\"1\"},\"camisas\":1,\"etiquetas\":1}', '[]', 2, '137.752688172043', 0),
(103, '', '', '', '2018-08-17 18:01:42', '{\"un_dia\":{\"cantidad\":\"0\"},\"pase_completo\":{\"cantidad\":\"0\"},\"pase_2dias\":{\"cantidad\":\"0\"},\"camisas\":1,\"etiquetas\":1}', '[]', 2, '12.75268817204301', 0),
(105, '', '', '', '2018-08-17 18:03:05', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"1\"},\"pase_2dias\":{\"cantidad\":\"1\"},\"camisas\":1}', '[]', 1, '135.752688172043', 0),
(109, '', '', '', '2018-08-17 18:34:58', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"1\"},\"pase_2dias\":{\"cantidad\":\"1\"},\"etiquetas\":1}', '[]', 3, '127', 0),
(110, '', '', '', '2018-08-17 18:59:08', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"1\"},\"pase_2dias\":{\"cantidad\":\"1\"},\"etiquetas\":1}', '[]', 3, '127', 0),
(112, '', '', '', '2018-08-17 18:59:46', '{\"un_dia\":{\"cantidad\":\"0\"},\"pase_completo\":{\"cantidad\":\"0\"},\"pase_2dias\":{\"cantidad\":\"0\"},\"camisas\":1,\"etiquetas\":1}', '[]', 3, '12.75268817204301', 0),
(113, '', '', '', '2018-08-17 19:01:06', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"},\"camisas\":1,\"etiquetas\":1}', '[]', 2, '42.75268817204301', 0),
(114, '', '', '', '2018-08-17 19:01:37', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"}}', '[]', 2, '30', 0),
(116, '', '', '', '2018-08-18 02:40:35', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"},\"camisas\":1}', '{\"eventos\":[\"taller_01\"]}', 1, '40.75268817204301', 0),
(117, '', '', '', '2018-08-18 02:42:22', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"},\"camisas\":1}', '{\"eventos\":[\"taller_01\"]}', 1, '40.75268817204301', 0),
(118, '', '', '', '2018-08-18 02:42:29', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"},\"camisas\":1}', '{\"eventos\":[\"taller_01\"]}', 1, '40.75268817204301', 0),
(119, '', '', '', '2018-08-18 02:42:35', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"},\"camisas\":1}', '{\"eventos\":[\"taller_01\"]}', 1, '40.75268817204301', 0),
(120, '', '', '', '2018-08-18 02:43:08', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"}}', '{\"eventos\":[\"taller_01\"]}', 1, '30', 0),
(121, '', '', '', '2018-08-18 02:43:08', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"}}', '{\"eventos\":[\"taller_01\"]}', 1, '30', 0),
(123, '', '', '', '2018-08-18 02:43:54', '{\"un_dia\":{\"cantidad\":\"0\"},\"pase_completo\":{\"cantidad\":\"0\"},\"pase_2dias\":{\"cantidad\":\"0\"},\"camisas\":1,\"etiquetas\":1}', '{\"eventos\":[\"taller_01\",\"conf_06\"]}', 1, '12.75268817204301', 0),
(124, '', '', '', '2018-08-18 02:44:13', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"0\"},\"pase_2dias\":{\"cantidad\":\"1\"},\"camisas\":1,\"etiquetas\":1}', '{\"eventos\":[\"taller_01\",\"conf_06\"]}', 1, '87.75268817204301', 0),
(125, '', '', '', '2018-08-18 02:46:19', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"0\"},\"pase_2dias\":{\"cantidad\":\"1\"},\"camisas\":1,\"etiquetas\":1}', '{\"eventos\":[\"taller_01\",\"conf_06\"]}', 1, '87.75268817204301', 0),
(126, '', '', '', '2018-08-18 02:50:10', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"0\"},\"pase_2dias\":{\"cantidad\":\"1\"},\"camisas\":1,\"etiquetas\":1}', '{\"eventos\":[\"taller_01\",\"conf_06\"]}', 1, '87.75268817204301', 0),
(127, '', '', '', '2018-08-18 02:50:56', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"0\"},\"pase_2dias\":{\"cantidad\":\"1\"},\"camisas\":1,\"etiquetas\":1}', '{\"eventos\":[\"taller_01\",\"conf_06\"]}', 1, '87.75268817204301', 0),
(128, '', '', '', '2018-08-18 02:51:36', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"0\"},\"pase_2dias\":{\"cantidad\":\"1\"},\"camisas\":1,\"etiquetas\":1}', '{\"eventos\":[\"taller_01\",\"conf_06\"]}', 1, '87.75268817204301', 0),
(129, '', '', '', '2018-08-18 02:51:53', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"0\"},\"pase_2dias\":{\"cantidad\":\"1\"},\"camisas\":1,\"etiquetas\":1}', '{\"eventos\":[\"taller_01\",\"conf_06\"]}', 1, '87.75268817204301', 0),
(130, '', '', '', '2018-08-18 02:52:15', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"0\"},\"pase_2dias\":{\"cantidad\":\"1\"},\"camisas\":1,\"etiquetas\":1}', '{\"eventos\":[\"taller_01\",\"conf_06\"]}', 1, '87.75268817204301', 0),
(131, '', '', '', '2018-08-18 02:55:39', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"0\"},\"pase_2dias\":{\"cantidad\":\"1\"},\"camisas\":1,\"etiquetas\":1}', '{\"eventos\":[\"taller_01\",\"conf_06\"]}', 1, '87.75268817204301', 0),
(132, '', '', '', '2018-08-18 02:56:00', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"},\"camisas\":1,\"etiquetas\":1}', '[]', 2, '42.75268817204301', 0),
(133, '', '', '', '2018-08-18 02:57:41', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"},\"camisas\":1,\"etiquetas\":1}', '[]', 2, '42.75268817204301', 0),
(135, '', '', '', '2018-08-18 02:58:22', '{\"un_dia\":{\"cantidad\":\"0\"},\"pase_completo\":{\"cantidad\":\"0\"},\"pase_2dias\":{\"cantidad\":\"0\"},\"camisas\":5,\"etiquetas\":1}', '[]', 2, '55.76344086021505', 0),
(136, '', '', '', '2018-08-18 03:00:14', '{\"un_dia\":{\"cantidad\":\"0\"},\"pase_completo\":{\"cantidad\":\"0\"},\"pase_2dias\":{\"cantidad\":\"0\"},\"camisas\":5,\"etiquetas\":1}', '[]', 2, '55.76344086021505', 0),
(138, '', '', '', '2018-08-18 03:00:48', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"1\"},\"pase_2dias\":{\"cantidad\":\"1\"},\"camisas\":1,\"etiquetas\":1}', '[]', 2, '137.752688172043', 0),
(139, '', '', '', '2018-08-18 03:01:29', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"1\"},\"pase_2dias\":{\"cantidad\":\"1\"},\"camisas\":1,\"etiquetas\":1}', '[]', 2, '137.752688172043', 0),
(140, '', '', '', '2018-08-18 03:01:35', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"1\"},\"pase_2dias\":{\"cantidad\":\"1\"},\"camisas\":1,\"etiquetas\":1}', '[]', 2, '137.752688172043', 0),
(141, '', '', '', '2018-08-18 03:04:17', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"1\"},\"pase_2dias\":{\"cantidad\":\"1\"},\"camisas\":1,\"etiquetas\":1}', '[]', 2, '137.752688172043', 0),
(142, '', '', '', '2018-08-18 03:05:10', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"1\"},\"pase_2dias\":{\"cantidad\":\"1\"},\"camisas\":1,\"etiquetas\":1}', '[]', 2, '137.752688172043', 0),
(143, '', '', '', '2018-08-18 03:05:32', '{\"un_dia\":{\"cantidad\":\"\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"},\"camisas\":1,\"etiquetas\":1}', '[]', 2, '12.75268817204301', 0),
(145, '', '', '', '2018-08-18 03:06:12', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"1\"},\"pase_2dias\":{\"cantidad\":\"1\"},\"camisas\":1}', '[]', 2, '135.752688172043', 0),
(146, '', '', '', '2018-08-18 03:07:32', '{\"un_dia\":{\"cantidad\":\"\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"},\"camisas\":1,\"etiquetas\":1}', '[]', 2, '12.75268817204301', 0),
(147, '', '', '', '2018-08-18 03:07:44', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"1\"},\"pase_2dias\":{\"cantidad\":\"\"},\"camisas\":1,\"etiquetas\":1}', '[]', 2, '92.75268817204301', 0),
(148, '', '', '', '2018-08-18 03:08:40', '{\"un_dia\":{\"cantidad\":\"\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"},\"camisas\":1,\"etiquetas\":1}', '[]', 2, '12.75268817204301', 0),
(150, '', '', '', '2018-08-18 03:10:39', '{\"un_dia\":{\"cantidad\":\"\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"},\"camisas\":1,\"etiquetas\":1}', '[]', 2, '12.75268817204301', 0),
(151, '', '', '', '2018-08-18 03:10:58', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"1\"},\"pase_2dias\":{\"cantidad\":\"1\"},\"camisas\":1,\"etiquetas\":1}', '[]', 2, '137.752688172043', 0),
(153, '', '', '', '2018-08-18 03:11:35', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"1\"},\"pase_2dias\":{\"cantidad\":\"1\"},\"camisas\":1,\"etiquetas\":1}', '[]', 2, '137.752688172043', 0),
(154, '', '', '', '2018-08-18 03:13:21', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"1\"},\"pase_2dias\":{\"cantidad\":\"1\"},\"camisas\":1,\"etiquetas\":1}', '[]', 2, '137.752688172043', 0),
(155, '', '', '', '2018-08-18 03:13:53', '{\"un_dia\":{\"cantidad\":\"2\"},\"pase_completo\":{\"cantidad\":\"2\"},\"pase_2dias\":{\"cantidad\":\"2\"},\"camisas\":2,\"etiquetas\":2}', '[]', 2, '275.505376344086', 0),
(156, '', '', '', '2018-08-22 23:30:37', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"1\"},\"pase_2dias\":{\"cantidad\":\"\"},\"camisas\":1,\"etiquetas\":1}', '{\"eventos\":[\"taller_01\",\"taller_06\"]}', 2, '92.75268817204301', 0),
(157, '', '', '', '2018-09-18 19:06:38', '{\"un_dia\":{\"cantidad\":\"\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"},\"camisas\":1,\"etiquetas\":1}', '[]', 2, '12.75268817204301', 1),
(158, '', '', '', '2018-09-18 19:09:31', '{\"un_dia\":{\"cantidad\":\"\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"},\"camisas\":1,\"etiquetas\":1}', '[]', 2, '12.75268817204301', 1),
(159, '', '', '', '2018-09-18 19:13:38', '{\"un_dia\":{\"cantidad\":\"\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"},\"camisas\":1,\"etiquetas\":1}', '[]', 2, '12.75268817204301', 1),
(160, '', '', '', '2018-09-18 19:15:27', '{\"un_dia\":{\"cantidad\":\"6\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"},\"camisas\":1,\"etiquetas\":1}', '{\"eventos\":[\"8\"]}', 1, '192.752688172043', 1),
(161, 'Luciano', 'Toniani', 'lucianotoniani1987@hotmail.com', '2018-09-19 14:22:56', '{\"un_dia\":{\"cantidad\":\"\"},\"pase_completo\":{\"cantidad\":\"1\"},\"pase_2dias\":{\"cantidad\":\"\"},\"camisas\":1,\"etiquetas\":1}', '[]', 2, '62.75268817204301', 1),
(162, 'Luciano', 'Toniani', 'lucianotoniani1987@hotmail.com', '2018-09-19 14:23:31', '{\"un_dia\":{\"cantidad\":\"\"},\"pase_completo\":{\"cantidad\":\"1\"},\"pase_2dias\":{\"cantidad\":\"\"},\"camisas\":2,\"etiquetas\":1}', '[]', 2, '73.50537634408602', 1),
(163, 'pepe', 'O´´', 'lucianotoniani1987@hotmail.com', '2018-09-19 20:39:33', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"},\"camisas\":5,\"etiquetas\":2}', '{\"eventos\":[\"7\",\"2\"]}', 1, '87.76344086021504', 1),
(164, 'Luciano', 'p', 'lucianotoniani1987@hotmail.com', '2018-09-19 20:40:46', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"1\"},\"pase_2dias\":{\"cantidad\":\"1\"},\"camisas\":3,\"etiquetas\":2}', '{\"eventos\":[\"10\"]}', 3, '161.25806451612902', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id_admin`),
  ADD UNIQUE KEY `usuario` (`usuario`);

--
-- Indices de la tabla `categoria_evento`
--
ALTER TABLE `categoria_evento`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`evento_id`),
  ADD KEY `id_cat_evento` (`id_cat_evento`),
  ADD KEY `id_inv` (`id_inv`);

--
-- Indices de la tabla `invitados`
--
ALTER TABLE `invitados`
  ADD PRIMARY KEY (`invitado_id`);

--
-- Indices de la tabla `regalos`
--
ALTER TABLE `regalos`
  ADD PRIMARY KEY (`ID_Regalo`);

--
-- Indices de la tabla `registrados`
--
ALTER TABLE `registrados`
  ADD PRIMARY KEY (`ID_Registrado`),
  ADD KEY `regalo` (`regalo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admins`
--
ALTER TABLE `admins`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT de la tabla `categoria_evento`
--
ALTER TABLE `categoria_evento`
  MODIFY `id_categoria` tinyint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `evento_id` tinyint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `invitados`
--
ALTER TABLE `invitados`
  MODIFY `invitado_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `regalos`
--
ALTER TABLE `regalos`
  MODIFY `ID_Regalo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `registrados`
--
ALTER TABLE `registrados`
  MODIFY `ID_Registrado` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD CONSTRAINT `eventos_ibfk_1` FOREIGN KEY (`id_cat_evento`) REFERENCES `categoria_evento` (`id_categoria`),
  ADD CONSTRAINT `eventos_ibfk_2` FOREIGN KEY (`id_inv`) REFERENCES `invitados` (`invitado_id`);

--
-- Filtros para la tabla `registrados`
--
ALTER TABLE `registrados`
  ADD CONSTRAINT `registrados_ibfk_1` FOREIGN KEY (`regalo`) REFERENCES `regalos` (`ID_Regalo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
