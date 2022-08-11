-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-07-2022 a las 18:34:20
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `libros`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE `carrera` (
  `id_carrera` int(11) NOT NULL,
  `nombre_carrera` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`id_carrera`, `nombre_carrera`) VALUES
(1, 'Tecnicatura Superior en Desarrollo de Software Multiplataforma'),
(2, 'Tecnicatura Superior en Telecomunicaciones'),
(3, 'Tecnicatura Superior en Mecatrónica'),
(4, 'Tecnicatura Superior en Química Industrial'),
(5, 'Full Stack');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera_materia`
--

CREATE TABLE `carrera_materia` (
  `id_carrera_materia` int(11) NOT NULL,
  `id_carrera` int(11) DEFAULT NULL,
  `id_materia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `carrera_materia`
--

INSERT INTO `carrera_materia` (`id_carrera_materia`, `id_carrera`, `id_materia`) VALUES
(39, 1, 8),
(40, 1, 3),
(41, 1, 4),
(42, 1, 6),
(43, 1, 5),
(44, 1, 2),
(45, 1, 7),
(46, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `institucion`
--

CREATE TABLE `institucion` (
  `id_institucion` int(11) NOT NULL,
  `facultad` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `institucion`
--

INSERT INTO `institucion` (`id_institucion`, `facultad`) VALUES
(1, 'Instituto Politécnico Formosa- IPF');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instituciones_carreras`
--

CREATE TABLE `instituciones_carreras` (
  `id_instituciones_carreras` int(11) NOT NULL,
  `id_institucion` int(11) DEFAULT NULL,
  `id_carrera` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `instituciones_carreras`
--

INSERT INTO `instituciones_carreras` (`id_instituciones_carreras`, `id_institucion`, `id_carrera`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 5),
(5, 1, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `id_libro` int(11) NOT NULL,
  `nombre_libro` varchar(100) DEFAULT NULL,
  `id_materia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`id_libro`, `nombre_libro`, `id_materia`) VALUES
(38, 'Caracteristicas del software', 8),
(39, 'Fundamentos de la Programación', 8),
(40, 'Pensamiento Computacional', 8),
(41, 'Logica Proporsicional', 5),
(42, 'Teoría de Conjunto', 5),
(43, 'Funciones', 5),
(44, 'Introduccion HTML', 7),
(45, 'Introduccion CSS', 7),
(46, 'Introduccion JavaScript', 7),
(47, 'Diseño de un MYSQL', 4),
(48, 'Manejo de una Base de Datos', 4),
(49, 'Normalizar una Base de Datos', 4),
(50, 'Introduccion al Sistemas Operativos', 3),
(51, 'Administracion de Procesos', 3),
(52, 'Sistema de Numeracion', 3),
(53, 'Método de SCAMPER', 2),
(54, 'WhitePaper', 2),
(55, 'Método Lean Startup', 2),
(56, 'Método de los 6 Sombreros', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id_clases` int(11) NOT NULL,
  `nombre_materia` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id_clases`, `nombre_materia`) VALUES
(1, 'Tecnología y Sociedad'),
(2, 'Taller de Integración'),
(3, 'Arquitectura y Sistemas Operativo'),
(4, 'Bases de Datos'),
(5, 'Matemática Aplicada'),
(6, 'English'),
(7, 'Taller de Lenguaje de Programación'),
(8, 'Algoritmos y Estructura de Datos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias_niveles`
--

CREATE TABLE `materias_niveles` (
  `id_materia_nivel` int(11) NOT NULL,
  `id_materia` int(11) DEFAULT NULL,
  `id_nivel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `materias_niveles`
--

INSERT INTO `materias_niveles` (`id_materia_nivel`, `id_materia`, `id_nivel`) VALUES
(37, 5, 1),
(38, 6, 1),
(39, 7, 1),
(40, 4, 1),
(41, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `niveles_de_materias`
--

CREATE TABLE `niveles_de_materias` (
  `id_niveles_materias` int(11) NOT NULL,
  `descripcion_materias` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `niveles_de_materias`
--

INSERT INTO `niveles_de_materias` (`id_niveles_materias`, `descripcion_materias`) VALUES
(1, 'I'),
(2, 'II'),
(3, 'III'),
(4, 'IV');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `usuario` varchar(100) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `contraseña` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `usuario`, `correo`, `contraseña`) VALUES
(2, 'monte', 'monte@gmail.com', '1234'),
(3, 'esotilin', 'esotilin123@gmail.com', '123456');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`id_carrera`);

--
-- Indices de la tabla `carrera_materia`
--
ALTER TABLE `carrera_materia`
  ADD PRIMARY KEY (`id_carrera_materia`),
  ADD KEY `fk_relacion_carrera_materia` (`id_materia`),
  ADD KEY `fk_relacion_carrera` (`id_carrera`);

--
-- Indices de la tabla `institucion`
--
ALTER TABLE `institucion`
  ADD PRIMARY KEY (`id_institucion`);

--
-- Indices de la tabla `instituciones_carreras`
--
ALTER TABLE `instituciones_carreras`
  ADD PRIMARY KEY (`id_instituciones_carreras`),
  ADD KEY `fk_relacion_institucion_carrera` (`id_carrera`),
  ADD KEY `fk_relacion_institucion` (`id_institucion`);

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id_libro`),
  ADD KEY `fk_rela_materia` (`id_materia`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id_clases`);

--
-- Indices de la tabla `materias_niveles`
--
ALTER TABLE `materias_niveles`
  ADD PRIMARY KEY (`id_materia_nivel`),
  ADD KEY `fk_relacion_materia_nivel` (`id_materia`),
  ADD KEY `fk_relacion_niveles_materias` (`id_nivel`);

--
-- Indices de la tabla `niveles_de_materias`
--
ALTER TABLE `niveles_de_materias`
  ADD PRIMARY KEY (`id_niveles_materias`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carrera`
--
ALTER TABLE `carrera`
  MODIFY `id_carrera` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `carrera_materia`
--
ALTER TABLE `carrera_materia`
  MODIFY `id_carrera_materia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `institucion`
--
ALTER TABLE `institucion`
  MODIFY `id_institucion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `instituciones_carreras`
--
ALTER TABLE `instituciones_carreras`
  MODIFY `id_instituciones_carreras` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `id_libro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id_clases` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `materias_niveles`
--
ALTER TABLE `materias_niveles`
  MODIFY `id_materia_nivel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `niveles_de_materias`
--
ALTER TABLE `niveles_de_materias`
  MODIFY `id_niveles_materias` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carrera_materia`
--
ALTER TABLE `carrera_materia`
  ADD CONSTRAINT `fk_relacion_carrera` FOREIGN KEY (`id_carrera`) REFERENCES `carrera` (`id_carrera`),
  ADD CONSTRAINT `fk_relacion_carrera_materia` FOREIGN KEY (`id_materia`) REFERENCES `materias` (`id_clases`);

--
-- Filtros para la tabla `instituciones_carreras`
--
ALTER TABLE `instituciones_carreras`
  ADD CONSTRAINT `fk_relacion_institucion` FOREIGN KEY (`id_institucion`) REFERENCES `institucion` (`id_institucion`),
  ADD CONSTRAINT `fk_relacion_institucion_carrera` FOREIGN KEY (`id_carrera`) REFERENCES `carrera` (`id_carrera`);

--
-- Filtros para la tabla `libros`
--
ALTER TABLE `libros`
  ADD CONSTRAINT `fk_rela_materia` FOREIGN KEY (`id_materia`) REFERENCES `materias` (`id_clases`);

--
-- Filtros para la tabla `materias_niveles`
--
ALTER TABLE `materias_niveles`
  ADD CONSTRAINT `fk_relacion_materia_nivel` FOREIGN KEY (`id_materia`) REFERENCES `materias` (`id_clases`),
  ADD CONSTRAINT `fk_relacion_niveles_materias` FOREIGN KEY (`id_nivel`) REFERENCES `niveles_de_materias` (`id_niveles_materias`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
