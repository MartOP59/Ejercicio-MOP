-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-07-2022 a las 15:01:06
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ejercicio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tablaprueba`
--

CREATE TABLE `tablaprueba` (
  `idRegistro` int(11) NOT NULL,
  `Nombre` varchar(25) NOT NULL,
  `Apellidos` varchar(60) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `fechaRegistroEnSistema` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tablaprueba`
--

INSERT INTO `tablaprueba` (`idRegistro`, `Nombre`, `Apellidos`, `fechaNacimiento`, `fechaRegistroEnSistema`) VALUES
(1, 'Pedro', 'Mola', '1979-10-11', '2022-07-11 11:51:11'),
(2, 'Pablo', 'Videgaray', '1975-01-05', '2022-07-12 20:12:43'),
(3, 'Sonia', 'Lopez', '1985-03-06', '2022-07-12 20:12:43'),
(4, 'Alex', 'Lopez', '1980-08-07', '2022-07-12 20:12:43');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tablaprueba`
--
ALTER TABLE `tablaprueba`
  ADD PRIMARY KEY (`idRegistro`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tablaprueba`
--
ALTER TABLE `tablaprueba`
  MODIFY `idRegistro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
