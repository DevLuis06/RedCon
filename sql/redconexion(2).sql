-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 23-08-2018 a las 19:57:30
-- Versión del servidor: 5.5.8
-- Versión de PHP: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `redconexion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` text NOT NULL,
  `apellido` text NOT NULL,
  `direccion` text NOT NULL,
  `celular` bigint(20) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `rfc` text,
  `nombre_fiscal` text,
  `id_status` int(11) NOT NULL,
  `id_servicio` int(11) NOT NULL,
  `id_corte` int(11) NOT NULL,
  `id_segmento` int(11) NOT NULL,
  `dir_ip` bigint(20) NOT NULL,
  `latitud` decimal(10,0) DEFAULT NULL,
  `longitud` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`,`id_status`,`id_servicio`,`id_corte`,`id_segmento`),
  UNIQUE KEY `dir_ip` (`dir_ip`),
  KEY `id_status` (`id_status`),
  KEY `id_servicio` (`id_servicio`),
  KEY `id_corte` (`id_corte`),
  KEY `id_segmento` (`id_segmento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `cliente`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente-servicio`
--

CREATE TABLE IF NOT EXISTS `cliente-servicio` (
  `cns` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) NOT NULL,
  `id_servicio` int(11) NOT NULL,
  PRIMARY KEY (`cns`,`id_cliente`,`id_servicio`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_servicio` (`id_servicio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `cliente-servicio`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `corte`
--

CREATE TABLE IF NOT EXISTS `corte` (
  `id_corte` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id_corte`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `corte`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_entrada`
--

CREATE TABLE IF NOT EXISTS `detalle_entrada` (
  `cns` int(11) NOT NULL AUTO_INCREMENT,
  `id_entrada` int(11) NOT NULL,
  `id_mercancia` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `costo` decimal(10,0) NOT NULL,
  PRIMARY KEY (`cns`,`id_entrada`,`id_mercancia`),
  KEY `id_entrada` (`id_entrada`),
  KEY `id_mercancia` (`id_mercancia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `detalle_entrada`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_salida`
--

CREATE TABLE IF NOT EXISTS `detalle_salida` (
  `cns` int(11) NOT NULL AUTO_INCREMENT,
  `id_salida` int(11) NOT NULL,
  `id_mercancia` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `costo` decimal(10,0) NOT NULL,
  PRIMARY KEY (`cns`,`id_salida`,`id_mercancia`),
  KEY `id_salida` (`id_salida`),
  KEY `id_mercancia` (`id_mercancia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `detalle_salida`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `det_pago`
--

CREATE TABLE IF NOT EXISTS `det_pago` (
  `cns` int(11) NOT NULL AUTO_INCREMENT,
  `id_pago` int(11) NOT NULL,
  `id_servicio` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`cns`,`id_pago`,`id_servicio`),
  KEY `id_pago` (`id_pago`),
  KEY `id_servicio` (`id_servicio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `det_pago`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE IF NOT EXISTS `empleado` (
  `id_empleado` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` text NOT NULL,
  `celular` int(11) NOT NULL,
  `username` text NOT NULL,
  `passwd` text NOT NULL,
  `id_puesto` int(11) NOT NULL,
  `fecha_contrato` date NOT NULL,
  PRIMARY KEY (`id_empleado`,`id_puesto`),
  KEY `id_puesto` (`id_puesto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `empleado`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrada`
--

CREATE TABLE IF NOT EXISTS `entrada` (
  `id_entrada` int(11) NOT NULL AUTO_INCREMENT,
  `id_empleado` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `total_costo` decimal(10,0) NOT NULL,
  PRIMARY KEY (`id_entrada`,`id_empleado`),
  KEY `id_empleado` (`id_empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `entrada`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mercancia`
--

CREATE TABLE IF NOT EXISTS `mercancia` (
  `id_mercancia` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` text NOT NULL,
  `cantidad` int(11) NOT NULL,
  `id_um` int(11) NOT NULL,
  PRIMARY KEY (`id_mercancia`,`id_um`),
  KEY `id_um` (`id_um`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `mercancia`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE IF NOT EXISTS `pago` (
  `id_pago` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) NOT NULL,
  `fecha` int(11) NOT NULL,
  `foto_recibo` int(11) NOT NULL,
  `id_tipopago` int(11) NOT NULL,
  `monto` int(11) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  PRIMARY KEY (`id_pago`,`id_cliente`,`id_tipopago`,`id_empleado`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_tipopago` (`id_tipopago`),
  KEY `id_empleado` (`id_empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `pago`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puesto`
--

CREATE TABLE IF NOT EXISTS `puesto` (
  `id_puesto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` text NOT NULL,
  `descripcion` text NOT NULL,
  PRIMARY KEY (`id_puesto`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Volcar la base de datos para la tabla `puesto`
--

INSERT INTO `puesto` (`id_puesto`, `nombre`, `descripcion`) VALUES
(1, 'CoCeo', 'Sub Director Ejecutivo'),
(2, 'Ceo', 'Director Ejecutivo'),
(3, 'Chido', 'el mas chido'),
(4, 'prueba', 'mas pruebas'),
(5, 'asd', 'asdasd'),
(6, 'sadfdsf', 'asdasd'),
(7, 'hla', 'ffgh'),
(8, 'hla', 'ffgh');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reporte`
--

CREATE TABLE IF NOT EXISTS `reporte` (
  `id_reporte` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `descripcion` int(11) NOT NULL,
  `id_status` int(11) NOT NULL,
  PRIMARY KEY (`id_reporte`,`id_cliente`,`id_empleado`,`id_status`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_empleado` (`id_empleado`),
  KEY `id_status` (`id_status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `reporte`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salida`
--

CREATE TABLE IF NOT EXISTS `salida` (
  `id_salida` int(11) NOT NULL AUTO_INCREMENT,
  `id_empleado` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `total_costo` decimal(10,0) NOT NULL,
  PRIMARY KEY (`id_salida`,`id_empleado`),
  KEY `id_empleado` (`id_empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `salida`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `segmento_red`
--

CREATE TABLE IF NOT EXISTS `segmento_red` (
  `id_segmento` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `descripcion` text NOT NULL,
  `dir_ip` bigint(20) NOT NULL,
  PRIMARY KEY (`id_segmento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `segmento_red`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE IF NOT EXISTS `servicio` (
  `id_servicio` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` text NOT NULL,
  `descripcion` text NOT NULL,
  `precio` decimal(10,0) NOT NULL,
  PRIMARY KEY (`id_servicio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `servicio`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `status`
--

CREATE TABLE IF NOT EXISTS `status` (
  `id_status` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` text NOT NULL,
  PRIMARY KEY (`id_status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `status`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_pago`
--

CREATE TABLE IF NOT EXISTS `tipo_pago` (
  `id_tipopago` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` text NOT NULL,
  `simbolo` text NOT NULL,
  PRIMARY KEY (`id_tipopago`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `tipo_pago`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unid_medida`
--

CREATE TABLE IF NOT EXISTS `unid_medida` (
  `id_um` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` text NOT NULL,
  `simbolo` text NOT NULL,
  PRIMARY KEY (`id_um`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `unid_medida`
--


--
-- Filtros para las tablas descargadas (dump)
--

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`id_status`) REFERENCES `status` (`id_status`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cliente_ibfk_2` FOREIGN KEY (`id_servicio`) REFERENCES `servicio` (`id_servicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cliente_ibfk_3` FOREIGN KEY (`id_corte`) REFERENCES `corte` (`id_corte`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cliente_ibfk_4` FOREIGN KEY (`id_segmento`) REFERENCES `segmento_red` (`id_segmento`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `cliente-servicio`
--
ALTER TABLE `cliente-servicio`
  ADD CONSTRAINT `cliente@002dservicio_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cliente@002dservicio_ibfk_2` FOREIGN KEY (`id_servicio`) REFERENCES `servicio` (`id_servicio`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalle_entrada`
--
ALTER TABLE `detalle_entrada`
  ADD CONSTRAINT `detalle_entrada_ibfk_1` FOREIGN KEY (`id_entrada`) REFERENCES `entrada` (`id_entrada`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_entrada_ibfk_2` FOREIGN KEY (`id_mercancia`) REFERENCES `mercancia` (`id_mercancia`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalle_salida`
--
ALTER TABLE `detalle_salida`
  ADD CONSTRAINT `detalle_salida_ibfk_1` FOREIGN KEY (`id_salida`) REFERENCES `salida` (`id_salida`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_salida_ibfk_2` FOREIGN KEY (`id_mercancia`) REFERENCES `mercancia` (`id_mercancia`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `det_pago`
--
ALTER TABLE `det_pago`
  ADD CONSTRAINT `det_pago_ibfk_1` FOREIGN KEY (`id_pago`) REFERENCES `pago` (`id_pago`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `det_pago_ibfk_2` FOREIGN KEY (`id_servicio`) REFERENCES `servicio` (`id_servicio`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`id_puesto`) REFERENCES `puesto` (`id_puesto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `entrada`
--
ALTER TABLE `entrada`
  ADD CONSTRAINT `entrada_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `mercancia`
--
ALTER TABLE `mercancia`
  ADD CONSTRAINT `mercancia_ibfk_1` FOREIGN KEY (`id_um`) REFERENCES `unid_medida` (`id_um`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pago`
--
ALTER TABLE `pago`
  ADD CONSTRAINT `pago_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pago_ibfk_3` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `reporte`
--
ALTER TABLE `reporte`
  ADD CONSTRAINT `reporte_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reporte_ibfk_2` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reporte_ibfk_3` FOREIGN KEY (`id_status`) REFERENCES `status` (`id_status`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `salida`
--
ALTER TABLE `salida`
  ADD CONSTRAINT `salida_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`) ON DELETE CASCADE ON UPDATE CASCADE;
