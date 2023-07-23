-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-07-2023 a las 23:13:51
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
-- Base de datos: `conferencia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `expositores`
--

CREATE TABLE `expositores` (
  `id` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `apellido` varchar(40) NOT NULL,
  `DIA_CONFERENCIA` date NOT NULL,
  `HORA_CONFERENCIA` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `expositores`
--

INSERT INTO `expositores` (`id`, `nombre`, `apellido`, `DIA_CONFERENCIA`, `HORA_CONFERENCIA`) VALUES
(1, 'BILL', 'GATES', '2023-08-01', '14:00'),
(2, 'STEVE', 'JOBS', '2023-08-01', '17:00'),
(3, 'LINUS', 'TORVALDS', '2023-08-02', '12:00'),
(4, 'ADA', ' LOVELACE', '2023-07-02', '14:00'),
(5, 'GUIDO', 'VAN ROSSUM', '2023-07-05', '17:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `expositores`
--
ALTER TABLE `expositores`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `expositores`
--
ALTER TABLE `expositores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
