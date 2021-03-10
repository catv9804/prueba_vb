-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-03-2021 a las 21:17:48
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `vb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autor`
--

CREATE TABLE `autor` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `descripcion` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `autor`
--

INSERT INTO `autor` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Autor 1', 'Autor 1 es un profesional en escribir entradas..'),
(2, 'Autor 2', 'Autor 2 es mejor que autor 1...');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`) VALUES
(1, 'Viajes'),
(2, 'Moda');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ea`
--

CREATE TABLE `ea` (
  `id` int(11) NOT NULL,
  `identrada` int(11) NOT NULL,
  `idautor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ea`
--

INSERT INTO `ea` (`id`, `identrada`, `idautor`) VALUES
(1, 127, 1),
(2, 127, 2),
(3, 128, 1),
(4, 128, 2),
(5, 129, 1),
(6, 129, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ec`
--

CREATE TABLE `ec` (
  `id` int(11) NOT NULL,
  `identrada` int(11) NOT NULL,
  `idcategoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ec`
--

INSERT INTO `ec` (`id`, `identrada`, `idcategoria`) VALUES
(1, 129, 1),
(2, 129, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrada`
--

CREATE TABLE `entrada` (
  `id` int(11) NOT NULL,
  `nombre` varchar(23) NOT NULL,
  `contenido` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `entrada`
--

INSERT INTO `entrada` (`id`, `nombre`, `contenido`) VALUES
(1, '0', ''),
(2, '0', ''),
(3, '0', ''),
(4, '', ''),
(5, '', ''),
(6, '', ''),
(7, 'Titulo 1', ''),
(8, 'Titulo 2', ''),
(9, 'Titulo 3', 'Solucion'),
(10, 'Titulo 3a', 'asdasdasd'),
(11, 'Probando ajax', 'ajax'),
(12, '', ''),
(13, '', ''),
(14, '', ''),
(15, '', ''),
(16, '', ''),
(17, '', ''),
(18, '', ''),
(19, '', ''),
(20, '', ''),
(21, '', ''),
(22, '', ''),
(23, '', ''),
(24, '', ''),
(25, '', ''),
(26, '', ''),
(27, '', ''),
(28, '', ''),
(29, '', ''),
(30, '', ''),
(31, '', ''),
(32, '', ''),
(33, '', ''),
(34, '', ''),
(35, '', ''),
(36, '', ''),
(37, '', ''),
(38, '', ''),
(39, '', ''),
(40, '', ''),
(41, '', ''),
(42, '', ''),
(43, '', ''),
(44, '', ''),
(45, '', ''),
(46, '', ''),
(47, '', ''),
(48, '', ''),
(49, '', ''),
(50, '', ''),
(51, '', ''),
(52, '', ''),
(53, '', ''),
(54, '', ''),
(55, '', ''),
(56, '', ''),
(57, '', ''),
(58, '', ''),
(59, '', ''),
(60, '', ''),
(61, '', ''),
(62, '', ''),
(63, 'natalidad', 'es asdasd'),
(64, 'asda', 'asdasd'),
(65, 'asda', 'asdasd'),
(66, '', ''),
(67, '', ''),
(68, '', ''),
(69, '', ''),
(70, '', ''),
(71, '', ''),
(72, '', ''),
(73, '', ''),
(74, '', ''),
(75, '', ''),
(76, '', ''),
(77, '', ''),
(78, 'hola', ''),
(79, 'hola', ''),
(80, 'hola', 'asdasd'),
(81, 'asdasd', 'asdasd'),
(82, 'Titulo 1', 'Titulo 1'),
(83, 'Titulo 1', 'Titulo 1'),
(84, 'val1', 'val2'),
(85, 'asdasd', 'asdasd'),
(86, 'asdasd', 'asdasd'),
(87, 'Probando nu', 'Probando nu'),
(88, 'asd', 'asd'),
(89, 'asdd', 'asdd'),
(90, 'asdasd', 'asdasd'),
(91, 'asd', 'asd'),
(92, 'Titulo 1', 'asdasd'),
(93, 'Probando nu', 'asdasd'),
(94, 'Titulo 1', 'asdasd'),
(95, 'Eff4', 'Ddz'),
(96, 'asdasd', 'asdasd'),
(97, 'Titulo 1', 'asd'),
(98, 'asdasd', 'asdasd'),
(99, 'Eueks', 'Ksksks'),
(100, 'Hhh', 'Bbb'),
(101, 'adasd', 'asdasd'),
(102, '', ''),
(103, 'Probando nu', 'zxczxc'),
(104, 'asdasd', 'asdasd'),
(105, 'asdasd', 'asdasd'),
(106, 'asdads', 'asdad'),
(107, 'asdads', 'asdad'),
(108, 'asdads', 'asdad'),
(109, 'asdads', 'asdad'),
(110, 'Probando nu', 'asdasd'),
(111, 'Titulo 1', 'asas'),
(112, 'asddas', 'asdads'),
(113, 'asdasd', 'asdads'),
(114, 'asdasd', 'asdasd'),
(115, 'asas', 'as'),
(116, 'asdasd', 'asdad'),
(117, 'asdasd', 'asdad'),
(118, 'asdasd', 'asdads'),
(119, 'asdasd', 'asdads'),
(120, 'asdasd', 'asdads'),
(121, 'asdasd', 'asdasd'),
(122, 'asdasd', 'asdasd'),
(123, 'asdasd', 'asdasda'),
(124, 'asdasd', 'ssss'),
(125, 'asdasd', 'asdasd'),
(126, 'asdasd', 'asdasd'),
(127, 'asdasd', 'asdads'),
(128, 'asdasd', 'asdad'),
(129, 'asdasd', 'asdasd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrada-autor`
--

CREATE TABLE `entrada-autor` (
  `id` int(11) NOT NULL,
  `identrada` int(11) NOT NULL,
  `idautor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `entrada-autor`
--

INSERT INTO `entrada-autor` (`id`, `identrada`, `idautor`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrada-categoria`
--

CREATE TABLE `entrada-categoria` (
  `id` int(11) NOT NULL,
  `identrada` int(11) NOT NULL,
  `idcategoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ea`
--
ALTER TABLE `ea`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkentradaA` (`identrada`),
  ADD KEY `fkautor` (`idautor`);

--
-- Indices de la tabla `ec`
--
ALTER TABLE `ec`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkentradaC` (`identrada`);

--
-- Indices de la tabla `entrada`
--
ALTER TABLE `entrada`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `entrada-autor`
--
ALTER TABLE `entrada-autor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkentrada` (`idautor`);

--
-- Indices de la tabla `entrada-categoria`
--
ALTER TABLE `entrada-categoria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkcategoria` (`idcategoria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autor`
--
ALTER TABLE `autor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `ea`
--
ALTER TABLE `ea`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `ec`
--
ALTER TABLE `ec`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `entrada`
--
ALTER TABLE `entrada`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT de la tabla `entrada-autor`
--
ALTER TABLE `entrada-autor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `entrada-categoria`
--
ALTER TABLE `entrada-categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ea`
--
ALTER TABLE `ea`
  ADD CONSTRAINT `fkautor` FOREIGN KEY (`idautor`) REFERENCES `autor` (`id`),
  ADD CONSTRAINT `fkentradaA` FOREIGN KEY (`identrada`) REFERENCES `entrada` (`id`);

--
-- Filtros para la tabla `ec`
--
ALTER TABLE `ec`
  ADD CONSTRAINT `fkentradaC` FOREIGN KEY (`identrada`) REFERENCES `entrada` (`id`);

--
-- Filtros para la tabla `entrada-autor`
--
ALTER TABLE `entrada-autor`
  ADD CONSTRAINT `fkentrada` FOREIGN KEY (`idautor`) REFERENCES `autor` (`id`);

--
-- Filtros para la tabla `entrada-categoria`
--
ALTER TABLE `entrada-categoria`
  ADD CONSTRAINT `fkcategoria` FOREIGN KEY (`idcategoria`) REFERENCES `categorias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
