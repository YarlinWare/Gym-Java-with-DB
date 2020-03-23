-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-03-2020 a las 02:42:37
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gym_database`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactos`
--

CREATE TABLE `contactos` (
  `con_id` int(11) NOT NULL,
  `con_nombre` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `con_apellido` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `con_telefono_domicilio` int(15) DEFAULT NULL,
  `con_telefono_oficina` int(11) DEFAULT NULL,
  `con_celular` int(11) NOT NULL,
  `con_correo` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `con_direccion_residencia` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `con_direccion_trabajo` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `con_tipo_usuario` varchar(20) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `contactos`
--

INSERT INTO `contactos` (`con_id`, `con_nombre`, `con_apellido`, `con_telefono_domicilio`, `con_telefono_oficina`, `con_celular`, `con_correo`, `con_direccion_residencia`, `con_direccion_trabajo`, `con_tipo_usuario`) VALUES
(1, 'Andrea Marcela', 'Hernandez Garcia', 7685741, 9888766, 310300300, 'amhernandezg@gmail.com', 'calle 45', 'calle 39', 'Cliente'),
(2, 'Mayerly', 'Hernandez Garcia', 7685741, 9888766, 310300300, 'amhernandezg@gmail.com', 'calle 45', 'calle 39', 'Cliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rutinas`
--

CREATE TABLE `rutinas` (
  `rut_nombre` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `rut_id` int(11) NOT NULL,
  `rut_descripcion` text COLLATE utf8mb4_spanish2_ci NOT NULL,
  `rut_repeticiones` varchar(20) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `rut_peso` varchar(20) COLLATE utf8mb4_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `rutinas`
--

INSERT INTO `rutinas` (`rut_nombre`, `rut_id`, `rut_descripcion`, `rut_repeticiones`, `rut_peso`) VALUES
('Abdominales', 1, 'Las elevaciones de tronco en el suelo son un que trabajan sobre todo los abdominales, principalmente solicita músculos como el recto mayor del abdomen y recto anterior.', '5 de 20', '3kg'),
('Hombros + abdominales', 2, 'Siéntate en un banco de espalda baja, mantente en posición erguida y, con las palmas hacia delante, eleva las mancuernas sobre la cabeza a la vez que contraes los músculos de los hombros y extiendes los brazos. Baja lentamente.', '3 de 15', ''),
('Pectoral + abdominales', 3, 'úmbate sobre un banco, planta bien los pies en el suelo haciendo fuerza con los talones, arquea la espalda, clava los hombros contra el banco y apriétalos hacia el centro. A la hora de subir la barra, mantén los hombros pegados al cuerpo y trata de trazar un arco con la barra.', '6 de 20', '10kg máx'),
('Piernas', 4, 'De pie, con las piernas abiertas a la altura de las caderas, baja como si te fueras a sentar a la vez que proyectas los glúteos hacia atrás. Baja lo que puedas y no te olvides de mantener la espalda recta. Puedes extender los brazos hacia adelante para ayudar al movimiento.', '5 de 25', ''),
('Piernas con máquina', 5, 'En la máquina correspondiente, colócate con la espalda bien apoyada en el respaldo y con los pies ligeramente separados entre sí. Empuja la plataforma hasta conseguir que las piernas queden casi extendidas; después desbloquea las rodillas y flexiona las piernas hasta que los muslos lleguen al torso pero sin que superen los 90º.', '5 de 20', 'De 10kg a 45kg'),
('Brazos + abdominales', 6, 'Con las piernas en el aire y el torso ligeramente inclinado, y gracias tan solo al movimiento de los brazos, tienes que subir y bajar tu cuerpo manteniendo las piernas y el torso inmóviles.', '3 de 30', '5kg a 15kg'),
('Spinning o Ciclo Indoor', 7, 'Donde tampoco hay descanso durante el tiempo que dure la clase es en el spinning o, como se le llama ahora, ciclo indoor. Una actividad muy cardiovascular que se centra mucho también en el tren inferior.', '', 'de 30 minutos a 60 m'),
('Crossfit', 8, 'Son muchos nombres, sí, pero todos vienen a significar lo mismo: mover el cuerpo, poner en marcha el corazón, trabajar los músculos y cuidar de nuestra salud.. A partir de aquí, elige el que más te convenza y recuerda.', '5 de 20', '25kg máx'),
('Cardio', 9, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam porta arcu et metus tincidunt suscipit. Morbi fringilla lobortis fermentum. Cras in lacinia ligula, mattis ultrices tortor. Phasellus scelerisque purus vitae.', '15 a 30 min', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `tip_id` int(11) NOT NULL,
  `tip_nombre` varchar(20) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `tip_caracteristica` text COLLATE utf8mb4_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `tipo_usuario`
--

INSERT INTO `tipo_usuario` (`tip_id`, `tip_nombre`, `tip_caracteristica`) VALUES
(1, 'Administrador', NULL),
(2, 'Cliente', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contactos`
--
ALTER TABLE `contactos`
  ADD PRIMARY KEY (`con_id`);

--
-- Indices de la tabla `rutinas`
--
ALTER TABLE `rutinas`
  ADD PRIMARY KEY (`rut_id`);

--
-- Indices de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD PRIMARY KEY (`tip_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contactos`
--
ALTER TABLE `contactos`
  MODIFY `con_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `rutinas`
--
ALTER TABLE `rutinas`
  MODIFY `rut_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  MODIFY `tip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
