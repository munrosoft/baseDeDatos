-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-05-2023 a las 16:50:42
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `app`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(150) NOT NULL,
  `Apellido` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `telefono` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `Nombre`, `Apellido`, `email`, `telefono`) VALUES
(1, 'ariel', 'valcarce', 'arielvalcarce@isft220.edu.ar', '1166207142'),
(2, 'Brian', 'Alcaraz', 'brianalcaraz@isft220.edu.ar', '4555666'),
(3, 'Alejandro', 'Maidana', 'alejandromaidana@isft220.edu.ar', '1254564888'),
(4, 'Fernando Alejandro', 'Aguayo', 'fernandoaguayo1105@gmail.com', '1133325252'),
(5, 'Ezequiel Angel', 'Castro', 'angelcmspok@gmail.com', '1567828984'),
(6, 'Fabian Agustin', 'Cornejo', 'cornejofabian8376@gmail.com', '1162261064'),
(7, 'Hugo javier', 'Gutierrez Rovain', 'javierrobain31@gmail.com', '1162288345'),
(8, 'Giselle Melany', 'Olivera', 'meel.gisell@gmail.com', '1125522939'),
(9, 'Gabriela Evangelina', 'Fabian', 'gaby013@gmail.com', '1550635553'),
(10, 'Marcelo', 'Nuño', 'adriannunio@hotmail.com', '28442256'),
(11, 'Noelia Soraya', 'Martinez', 'noeliamartinez443@gmail.com', '1127147925'),
(12, 'Camila Florencia', 'Tarafa', 'camilatarafa@outlook.com.ar', '1150245728'),
(13, 'Monica Viviana', 'Alejo', 'monialejo@gmail.com', '1568910629'),
(14, 'alejandro', 'maidana', 'alejandromaidana@isft220.edu.ar', ''),
(15, 'Fernando Alejandro', 'Aguayo', 'fernandoaguayo1105@gmail.com', '1133325252'),
(16, 'Ezequiel Angel', 'Castro', 'angelcmspok@gmail.com', '1567828984'),
(17, 'Fabian Agustin', 'Cornejo', 'cornejofabian8376@gmail.com', '1162261064'),
(18, 'Hugo javier', 'Gutierrez Rovain', 'javierrobain31@gmail.com', '1162288345'),
(19, 'Giselle Melany', 'Olivera', 'meel.gisell@gmail.com', '1125522939'),
(20, 'Gabriela Evangelina', 'Fabian', 'gaby013@gmail.com', '1550635553'),
(21, 'Marcelo', 'Nuño', 'adriannunio@hotmail.com', '28442256'),
(22, 'Noelia Soraya', 'Martinez', 'noeliamartinez443@gmail.com', '1127147925'),
(23, 'Camila Florencia', 'Tarafa', 'camilatarafa@outlook.com.ar', '1150245728'),
(24, 'Monica Viviana', 'Alejo', 'monialejo@gmail.com', '1568910629'),
(25, 'Lucas Maximiliano', 'Angelis', 'lucas.angelis5@hotmail.com', '3815032451'),
(26, 'Valentina Luciana', 'Antivero', 'antiverovalentinaluciana@gmail.com', '1156242206'),
(27, 'Maria Esther', 'Ballesteros', 'MarEstherBallesteros@gmail.com', '1565637033'),
(28, 'Diana Cecilia', 'Catalano Perez', 'catalano.diana11@gmail.com', '1126123085'),
(29, 'Irma Noemi', 'Cortez', 'irmacortrez008@gmail.com', '1132095562'),
(30, 'Andres Alberto', 'Delegliese', 'angeloleonhart01@gmail.com', '1161729678'),
(31, 'Emily Denise', 'Ferreyra', 'emilyana921@gmail.com', '1132871455'),
(32, 'Paul Andrey', 'Marin Correa', '05marinpaul@gmail.com', '1132871455'),
(33, 'Ezequiel', 'Paez', 'ezequielpaez10@hotmail.com', '1176309529'),
(34, 'Andrea Suyai', 'Salinas', 'andreaeluney@gmail.com', '1544137368'),
(35, 'Horacio Alejandro', 'Santillan', 'horacioventas@outlook.com', '1131181485'),
(36, 'Nahuel', 'Sosa', 'nahue4112002@gmail.com', '1122382367'),
(37, 'Luciano Rafael ', 'Verdun', 'verdunluciano012@gmail.com', '1133481016');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignaturas`
--

CREATE TABLE `asignaturas` (
  `id` int(11) NOT NULL,
  `materia_id` int(11) NOT NULL,
  `docente_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `asignaturas`
--

INSERT INTO `asignaturas` (`id`, `materia_id`, `docente_id`) VALUES
(8, 12, 4),
(7, 13, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE `carreras` (
  `id` int(11) NOT NULL,
  `nombre` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `carreras`
--

INSERT INTO `carreras` (`id`, `nombre`) VALUES
(2, 'Software');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docentes`
--

CREATE TABLE `docentes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `apellido` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `telefono` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `docentes`
--

INSERT INTO `docentes` (`id`, `nombre`, `apellido`, `email`, `telefono`) VALUES
(3, 'wally', 'pintos', 'asasa@mail.com', '4555666'),
(4, 'emir', 'garcia', 'asaswwa@mail.com', '4888999'),
(5, 'Ariel', 'Bulacio', 'arielbulacio@isft220.edu.ar', '1214545555'),
(6, 'Maria Angeles', 'Ezquerdo', 'mariangelesezquerdo@isft220.edu.ar', '55565656'),
(7, 'Gustavo', 'Fiorotto', 'gustavofiorotto@isft220.edu.ar', '56565656'),
(8, 'Ivan', 'Pereyra', 'ivanpereyra@isft220.edu.ar', '6654945');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `examenes`
--

CREATE TABLE `examenes` (
  `id` int(11) NOT NULL,
  `tipo` varchar(200) NOT NULL,
  `id_inscripciones` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripciones`
--

CREATE TABLE `inscripciones` (
  `id` int(11) NOT NULL,
  `id_alumno` int(11) NOT NULL,
  `id_asignaturas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `carrera_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id`, `nombre`, `carrera_id`) VALUES
(12, 'diseño web', 2),
(13, 'estadistica', 2),
(14, 'introduccion a la programacion', 2),
(15, 'Analisis matematico', 2),
(16, 'algebra', 2),
(17, 'Practicas profesionalizantes 1', 2),
(18, 'Practicas profesionalizantes 2', 2),
(19, 'Practicas profesionalizantes 3', 2),
(47, 'Administración y Gestión de Base de Datos', 2),
(48, 'Introducción a las Redes de Datos', 2),
(49, 'Sistemas Digitales', 2),
(50, 'Sistemas Operativos', 2),
(51, 'Laboratorio de Hardware', 2),
(52, 'Inglés I', 2),
(53, 'Desarrollo de Aplicativos Móviles', 2),
(54, 'Algebra y Lógica', 2),
(55, 'Programación', 2),
(56, 'Estadística y Probabilidades', 2),
(57, 'Desarrollo de Sistemas Orientados a Objetos', 2),
(58, 'Inglés II', 2),
(59, 'Gestión de Proyectos', 2),
(60, 'Desarrollo de Sistemas Web', 2),
(61, 'Ingeniería de Software', 2),
(62, 'Metodología de Pruebas de Sistemas', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE `notas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `calificacion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultados_de_examenes`
--

CREATE TABLE `resultados_de_examenes` (
  `id` int(11) NOT NULL,
  `id_examen` int(11) NOT NULL,
  `id_inscripciones` int(11) NOT NULL,
  `id_notas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `materia_id` (`materia_id`,`docente_id`),
  ADD KEY `docente_id` (`docente_id`);

--
-- Indices de la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `docentes`
--
ALTER TABLE `docentes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `examenes`
--
ALTER TABLE `examenes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_inscripciones` (`id_inscripciones`);

--
-- Indices de la tabla `inscripciones`
--
ALTER TABLE `inscripciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_alumno` (`id_alumno`,`id_asignaturas`),
  ADD KEY `id_asignaturas` (`id_asignaturas`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carrera_id` (`carrera_id`);

--
-- Indices de la tabla `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `resultados_de_examenes`
--
ALTER TABLE `resultados_de_examenes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_examen` (`id_examen`,`id_inscripciones`,`id_notas`),
  ADD KEY `id_inscripciones` (`id_inscripciones`),
  ADD KEY `id_notas` (`id_notas`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `carreras`
--
ALTER TABLE `carreras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `docentes`
--
ALTER TABLE `docentes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `examenes`
--
ALTER TABLE `examenes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `inscripciones`
--
ALTER TABLE `inscripciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT de la tabla `notas`
--
ALTER TABLE `notas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `resultados_de_examenes`
--
ALTER TABLE `resultados_de_examenes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  ADD CONSTRAINT `asignaturas_ibfk_1` FOREIGN KEY (`materia_id`) REFERENCES `materias` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `asignaturas_ibfk_2` FOREIGN KEY (`docente_id`) REFERENCES `docentes` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `examenes`
--
ALTER TABLE `examenes`
  ADD CONSTRAINT `examenes_ibfk_1` FOREIGN KEY (`id_inscripciones`) REFERENCES `inscripciones` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `examenes_ibfk_2` FOREIGN KEY (`id`) REFERENCES `resultados_de_examenes` (`id_examen`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `inscripciones`
--
ALTER TABLE `inscripciones`
  ADD CONSTRAINT `inscripciones_ibfk_1` FOREIGN KEY (`id_alumno`) REFERENCES `alumnos` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `materias`
--
ALTER TABLE `materias`
  ADD CONSTRAINT `materias_ibfk_1` FOREIGN KEY (`carrera_id`) REFERENCES `carreras` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `resultados_de_examenes`
--
ALTER TABLE `resultados_de_examenes`
  ADD CONSTRAINT `resultados_de_examenes_ibfk_1` FOREIGN KEY (`id_inscripciones`) REFERENCES `inscripciones` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `resultados_de_examenes_ibfk_2` FOREIGN KEY (`id_notas`) REFERENCES `notas` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
