-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-07-2024 a las 18:33:53
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `punto_venta1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_clientes` int(10) NOT NULL,
  `cedula` varchar(10) NOT NULL,
  `nombres` varchar(30) NOT NULL,
  `apellidos` varchar(30) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `sexo` varchar(10) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `f_nacimiento` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_clientes`, `cedula`, `nombres`, `apellidos`, `direccion`, `sexo`, `correo`, `telefono`, `f_nacimiento`) VALUES
(1, '1105292203', 'Angel David', 'Chuquimarca', 'Yambaca', 'Hombre', 'adcb@yahoo.com', '3024467', '2024-05-05'),
(2, '1105292203', 'Angel David', 'Chuquimarca', 'Yambaca', 'Hombre', 'adcb@yahoo.com', '3024467', '2024-05-05'),
(3, '1105573016', 'jorge ', 'conza', 'cariamanga', 'Hombre', '', '0912354848', '1991-08-12'),
(4, '1105573016', 'jorge ', 'conza', 'cariamanga', 'Hombre', '', '0912354848', '1991-08-12'),
(5, '1105573016', 'jorge ', 'conza', 'cariamanga', 'Hombre', '', '0912354848', '1991-08-12'),
(6, '1105573016', 'jorge ', 'conza', 'cariamanga', 'Hombre', '', '0912354848', '1991-08-12'),
(7, '1105573016', 'jorge ', 'conza', 'cariamanga', 'Hombre', '', '0912354848', '1991-08-12'),
(8, '1102589745', 'mireya ', 'gualan', 'Ca', 'Mujer', '', '022202020202', '1994-12-25'),
(9, '1102589745', 'mireya ', 'gualan', 'Ca', 'Mujer', '', '022202020202', '1994-12-25'),
(10, '1101547896', 'Fernanda', 'Briceño', 'Cataluña y Argentina', 'Mujer', 'ferbri@google.com', '0991512369', '1991-02-18'),
(11, '1101547896', 'Fernanda', 'Briceño', 'Cataluña y Argentina', 'Mujer', 'ferbri@google.com', '0991512369', '1991-02-18'),
(12, '1101547896', 'Fernanda', 'Briceño', 'Cataluña y Argentina', 'Mujer', 'ferbri@google.com', '0991512369', '1991-02-18'),
(13, '1101547896', 'Fernanda', 'Briceño', 'Cataluña y Argentina', 'Mujer', 'ferbri@google.com', '0991512369', '1991-02-18'),
(14, '1101672887', 'Flora', 'Conza', 'Cariamanga', 'Mujer', 'flora@google.com', '267849012', '1985-12-18'),
(15, '1101672887', 'Flora', 'Conza', 'Cariamanga', 'Mujer', 'flora@google.com', '267849012', '1985-12-18'),
(16, '1101672887', 'Flora', 'Conza', 'Cariamanga', 'Mujer', 'flora@google.com', '267849012', '1985-12-18'),
(17, '1101672887', 'Flora', 'Conza', 'Cariamanga', 'Mujer', 'flora@google.com', '267849012', '1985-12-18'),
(18, '1102578910', 'Elmer Antenor', 'Chuquirima Sarango', 'Cariamanga', 'Hombre', 'elchu@google.com', '1234567890', '1984-06-12'),
(19, '1102578910', 'Elmer Antenor', 'Chuquirima Sarango', 'Cariamanga', 'Hombre', 'elchu@google.com', '1234567890', '1984-06-12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id_persona` int(10) NOT NULL,
  `cedula` int(10) NOT NULL,
  `nombres` varchar(500) NOT NULL,
  `apellidos` varchar(500) NOT NULL,
  `f_nacimiento` date NOT NULL,
  `genero` varchar(200) NOT NULL,
  `estado_civil` varchar(200) NOT NULL,
  `lugar_nacimiento` varchar(200) NOT NULL,
  `nacionalidad` varchar(200) NOT NULL,
  `profesion` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id_persona`, `cedula`, `nombres`, `apellidos`, `f_nacimiento`, `genero`, `estado_civil`, `lugar_nacimiento`, `nacionalidad`, `profesion`) VALUES
(1, 1105292203, 'Angel David ', 'Chuquimarca Baez', '2003-05-05', 'Masculino', 'Soltero', 'Quito', 'Ecuatoriano', 'Estudiante');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(10) NOT NULL,
  `nombre_producto` varchar(100) NOT NULL,
  `precio` int(100) NOT NULL,
  `cantidad` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `cedula` varchar(10) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(300) NOT NULL,
  `rol` int(10) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `cedula`, `nombre`, `apellido`, `correo`, `username`, `password`, `rol`) VALUES
(1, '1105573016', 'Jorge ', 'Chuquirima ', 'jr_chuquirima@marianosamaniego.edu.ec', 'Jraulin8', 'hola', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_clientes`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id_persona`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_clientes` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `id_persona` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_producto` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
