-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-05-2020 a las 05:52:23
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_agenda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo`
--

CREATE TABLE `articulo` (
  `id` int(11) UNSIGNED NOT NULL,
  `titulo` varchar(800) NOT NULL,
  `contenido` varchar(1000) NOT NULL,
  `fecha_creacion` varchar(20) NOT NULL,
  `autor` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `articulo`
--

INSERT INTO `articulo` (`id`, `titulo`, `contenido`, `fecha_creacion`, `autor`) VALUES
(2, 'Bolivia reporta 5.579 contagios por COVID-19', '', '2020-05-23', 'DR. GONZALES G'),
(3, 'Unilever entrega 20 ventiladores y 1.800 reactivos para detecciÃÂÃÂ³n de COVID-19 al Ministerio de Salud', ' La Paz, 22 may (UC/MS).- La empresa Unilever entregÃÂ³ hoy 20 ventiladores y 1.800 reactivos para la detecciÃÂ³n del COVID-19 al Ministerio de Salud. Los insumos serÃÂ¡n asignados prioritariamente a los departamentos con mayor emergencia por la epidemia.  Ã¢ÂÂAgradecemos muy especialmente esta donaciÃÂ³n que se concreta precisamente cuando las necesidades se multiplican en las regiones del paÃÂ­s mÃÂ¡s afectadas por la pandemiaÃ¢ÂÂ, dijo la Ministra de Salud, Eidy Roca.', '2020-04-07', 'MINISTERIO DE SALUD'),
(5, '22 municipios pasan de riesgo alto a medio en contagios de COVID-19', 'La Paz, 22 may (UC/MS).- SegÃºn el informe del Ãndice de Riesgo Municipal, emitido por el Ministerio de Salud, 22 municipios dejaron, en la Ãºltima semana, la categorÃ­a de riesgo alto y pasaron a riesgo medio de contagio de coronavirus (COVID-19), por lo que podrÃ¡n flexibilizar la cuarentena.  Entre ellos, estÃ¡n Sucre (Chuquisaca), Achacachi, Malla, Cairoma, Cajuata, Chulumani y Copacabana (La Paz), SantivaÃ±ez y Punata (Cochabamba), Oruro, Quillacas y Eucaliptus (Oruro), PotosÃ­ (PotosÃ­), San Carlos, PailÃ³n, RoborÃ©, Cabezas, Vallegrande, San JuliÃ¡n y Puerto Suarez', '2020-05-11', 'MINISTERIO DE SALUD'),
(9, 'Bolivia acumula 2.831 contagios por coronavirus', '', '2020-04-27', 'DR. CARDENAS'),
(12, 'leyes de salud', 'decretos supremos ', '2020-05-25', 'hilari'),
(13, '', '', '', ''),
(14, '', '', '', ''),
(15, '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'admin', '123456');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulo`
--
ALTER TABLE `articulo`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
