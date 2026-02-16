-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 16-02-2026 a las 15:43:08
-- Versión del servidor: 8.0.42
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ambientesena`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_actualizarambiente` (IN `p_id` INT, IN `p_nombre` VARCHAR(100), IN `p_tipo` VARCHAR(100), IN `p_observacion` VARCHAR(255))   BEGIN

UPDATE ambientes SET nombreAmbiente = p_nombre, tipoAmbiente = p_tipo, observaciones = p_observacion WHERE id=p_id;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultarambiente` (IN `p_id` INT)   BEGIN

SELECT * FROM ambientes WHERE id = p_id;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminarambiente` (IN `p_id` INT)   BEGIN

DELETE FROM ambientes WHERE id = p_id;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insertarambiente` (IN `p_nombre` VARCHAR(100), IN `p_tipo` VARCHAR(100), IN `p_observacion` VARCHAR(255))   BEGIN

INSERT INTO ambientes (nombreAmbiente, tipoAmbiente, observaciones) 
VALUES(p_nombre, p_tipo, p_observacion);

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_listarambientes` ()   BEGIN

SELECT * FROM ambientes ORDER BY id DESC;

END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ambientes`
--

CREATE TABLE `ambientes` (
  `id` int NOT NULL,
  `nombreAmbiente` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `tipoAmbiente` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `observaciones` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `ambientes`
--

INSERT INTO `ambientes` (`id`, `nombreAmbiente`, `tipoAmbiente`, `observaciones`) VALUES
(1, 'Bilinguismo', 'Idiomas', 'Ninguna'),
(2, 'Ambiente 308', 'Sistemas', 'El aire acondicionado dañado'),
(4, 'Ambiente 307', 'Laboratorio', 'La puerta esta sin llave'),
(5, 'Ambiente 300', 'Ambiente convencional', 'Ninguna'),
(6, 'Ambiente 303', 'Taller de sistemas', 'Ninguna'),
(7, 'Ambiente 310', 'Ambiente convencional', 'Faltan muebles'),
(8, 'Ambiente 311', 'Sennova', 'Televisor marca Samsung dañado'),
(9, 'Ambiente 312', 'Laboratorio de Redes', 'Equipos de red completos y en orden'),
(10, 'Ambiente 315', 'Taller ornamentación ', 'Equipos de red completos y en orden'),
(12, 'Bodega 4', 'Bodega almacén ', 'Vacio'),
(17, 'Bodega 2', 'Bodega almacén ', 'Aire dañado');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ambientes`
--
ALTER TABLE `ambientes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ambientes`
--
ALTER TABLE `ambientes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
