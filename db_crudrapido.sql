-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3308
-- Tiempo de generación: 19-11-2023 a las 04:29:12
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_crudrapido`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `precio` double NOT NULL,
  `producto_id` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `fecha_actualizacion` datetime(6) DEFAULT NULL,
  `fecha_creacion` datetime(6) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`precio`, `producto_id`, `stock`, `fecha_actualizacion`, `fecha_creacion`, `descripcion`, `nombre`) VALUES
(499.99, 1, 30, '2023-11-15 10:00:00.000000', '2023-11-15 10:00:00.000000', 'Lavadora de carga frontal con tecnología inteligente', 'Lavadora SmartClean'),
(799.99, 2, 25, '2023-11-15 11:15:00.000000', '2023-11-15 11:15:00.000000', 'Nevera de dos puertas con sistema de descongelamiento automático', 'Nevera FrostFree'),
(349.99, 3, 40, '2023-11-15 12:30:00.000000', '2023-11-15 12:30:00.000000', 'Horno multifunción con tecnología de cocción avanzada', 'Horno Eléctrico MasterChef'),
(129.99, 4, 50, '2023-11-15 13:45:00.000000', '2023-11-15 13:45:00.000000', 'Aspiradora sin bolsa con filtro HEPA', 'Aspiradora UltraClean');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_venta`
--

CREATE TABLE `tbl_venta` (
  `cantidad` int(11) NOT NULL,
  `precio_total` double NOT NULL,
  `producto_id` int(11) DEFAULT NULL,
  `fecha_actualizacion` datetime(6) DEFAULT NULL,
  `fecha_creacion` datetime(6) DEFAULT NULL,
  `venta_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`producto_id`);

--
-- Indices de la tabla `tbl_venta`
--
ALTER TABLE `tbl_venta`
  ADD PRIMARY KEY (`venta_id`),
  ADD KEY `FKi1nitmflpta2ac56mc0ype3oy` (`producto_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `producto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tbl_venta`
--
ALTER TABLE `tbl_venta`
  MODIFY `venta_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_venta`
--
ALTER TABLE `tbl_venta`
  ADD CONSTRAINT `FKi1nitmflpta2ac56mc0ype3oy` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`producto_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
