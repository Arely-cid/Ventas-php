/*
 Navicat Premium Data Transfer

 Source Server         : conexion
 Source Server Type    : MySQL
 Source Server Version : 50733
 Source Host           : localhost:3306
 Source Schema         : ventas_php

 Target Server Type    : MySQL
 Target Server Version : 50733
 File Encoding         : 65001

 Date: 22/06/2023 13:24:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for clientes
-- ----------------------------
DROP TABLE IF EXISTS `clientes`;
CREATE TABLE `clientes`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `telefono` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `direccion` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of clientes
-- ----------------------------
INSERT INTO `clientes` VALUES (1, 'Alejandra', '5546734256', 'Jilotepec de Molina');
INSERT INTO `clientes` VALUES (2, 'Alexis', '5678945678', 'Jilotepec');
INSERT INTO `clientes` VALUES (6, 'Santiago', '5546352415', 'Canalejas');
INSERT INTO `clientes` VALUES (7, 'Esmeralda', '5578902314', 'Chapa de Mota');
INSERT INTO `clientes` VALUES (8, 'Catalina', '5563478123', 'Villa del Carbon');
INSERT INTO `clientes` VALUES (9, 'Lizeth', '5612345624', 'Chapa de Mota');
INSERT INTO `clientes` VALUES (10, 'Emma', '5612131435', 'Nicolas Romero');
INSERT INTO `clientes` VALUES (11, 'Andrea', '7212346587', 'Toluca ');
INSERT INTO `clientes` VALUES (12, 'Roberta', '6656431213', 'Jilotepec');
INSERT INTO `clientes` VALUES (13, 'Rocio', '5546789876', 'Chapa de Mota');
INSERT INTO `clientes` VALUES (14, 'Leslie', '5612331212', 'Villa del Carbon');
INSERT INTO `clientes` VALUES (15, 'Alicia', '5555121322', 'Jilotepec');
INSERT INTO `clientes` VALUES (16, 'Martina', '5566112210', 'San Bartolo');
INSERT INTO `clientes` VALUES (17, 'Sonia', '5678981213', 'Villa del Carbon');
INSERT INTO `clientes` VALUES (18, 'Anna', '5612133435', 'Jilotepec');
INSERT INTO `clientes` VALUES (19, 'Margarita', '7213121312', 'Toluca');
INSERT INTO `clientes` VALUES (20, 'Pamela', '5544332121', 'Chapa de Mota');
INSERT INTO `clientes` VALUES (21, 'Daniela', '5567891213', 'Chapa de Mota');
INSERT INTO `clientes` VALUES (22, 'Abril', '5612345670', 'Villa del Carbon');
INSERT INTO `clientes` VALUES (23, 'Deniss', '6656431790', 'Jilotepec');

-- ----------------------------
-- Table structure for inventario
-- ----------------------------
DROP TABLE IF EXISTS `inventario`;
CREATE TABLE `inventario`  (
  `idProducto` int(11) NOT NULL AUTO_INCREMENT,
  `cantidad` int(11) NOT NULL,
  `cve_marca` int(2) NOT NULL,
  `id_talla` int(11) NOT NULL,
  `id_Pro` int(2) NOT NULL,
  PRIMARY KEY (`idProducto`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 55 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of inventario
-- ----------------------------
INSERT INTO `inventario` VALUES (23, 25, 5101, 2, 1);
INSERT INTO `inventario` VALUES (24, 25, 5202, 1, 2);
INSERT INTO `inventario` VALUES (25, 29, 5303, 3, 3);
INSERT INTO `inventario` VALUES (26, 20, 5404, 3, 1);
INSERT INTO `inventario` VALUES (27, 29, 5202, 1, 2);
INSERT INTO `inventario` VALUES (28, 30, 5505, 2, 4);
INSERT INTO `inventario` VALUES (29, 19, 5707, 2, 4);
INSERT INTO `inventario` VALUES (30, 15, 5303, 4, 2);
INSERT INTO `inventario` VALUES (31, 29, 5202, 4, 2);
INSERT INTO `inventario` VALUES (32, 20, 5606, 3, 3);
INSERT INTO `inventario` VALUES (33, 24, 5808, 2, 3);
INSERT INTO `inventario` VALUES (34, 20, 5202, 1, 1);
INSERT INTO `inventario` VALUES (35, 25, 6001, 1, 1);
INSERT INTO `inventario` VALUES (36, 15, 5202, 2, 2);
INSERT INTO `inventario` VALUES (37, 25, 5202, 2, 3);
INSERT INTO `inventario` VALUES (38, 15, 5909, 3, 4);
INSERT INTO `inventario` VALUES (39, 30, 6001, 4, 4);
INSERT INTO `inventario` VALUES (40, 15, 5303, 4, 4);
INSERT INTO `inventario` VALUES (41, 15, 6002, 3, 2);
INSERT INTO `inventario` VALUES (42, 19, 5202, 4, 1);
INSERT INTO `inventario` VALUES (43, 20, 5909, 1, 3);
INSERT INTO `inventario` VALUES (44, 15, 5303, 1, 1);
INSERT INTO `inventario` VALUES (54, 20, 6002, 1, 3);

-- ----------------------------
-- Table structure for marca
-- ----------------------------
DROP TABLE IF EXISTS `marca`;
CREATE TABLE `marca`  (
  `cve_marca` int(2) NOT NULL AUTO_INCREMENT,
  `nom_marca` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`cve_marca`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6003 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of marca
-- ----------------------------
INSERT INTO `marca` VALUES (5101, 'Burrerry');
INSERT INTO `marca` VALUES (5202, 'Valentino');
INSERT INTO `marca` VALUES (5303, 'Givenchy');
INSERT INTO `marca` VALUES (5404, 'Balenciaga');
INSERT INTO `marca` VALUES (5505, 'Louis Vuitton');
INSERT INTO `marca` VALUES (5606, 'Gucci');
INSERT INTO `marca` VALUES (5707, 'Chanel');
INSERT INTO `marca` VALUES (5808, 'Hermes');
INSERT INTO `marca` VALUES (5909, 'Shein VCAY');
INSERT INTO `marca` VALUES (6001, 'Nine West');
INSERT INTO `marca` VALUES (6002, 'Belinda');

-- ----------------------------
-- Table structure for productos
-- ----------------------------
DROP TABLE IF EXISTS `productos`;
CREATE TABLE `productos`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `codigo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nombre` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `compra` decimal(8, 2) NOT NULL,
  `venta` decimal(8, 2) NOT NULL,
  `existencia` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 63 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of productos
-- ----------------------------
INSERT INTO `productos` VALUES (23, '1001', 'Top corto', 250.00, 280.00, 25);
INSERT INTO `productos` VALUES (24, '1002', 'Top de manga corta', 120.00, 140.00, 22);
INSERT INTO `productos` VALUES (25, '1003', 'Sudadera corta', 230.00, 250.00, 27);
INSERT INTO `productos` VALUES (26, '1004', 'Shorts viker con top halter', 300.00, 350.00, 20);
INSERT INTO `productos` VALUES (27, '1005', 'SHEIN VCAY Vestido con estampado con abertura fruncido delantero', 450.00, 500.00, 29);
INSERT INTO `productos` VALUES (28, '1006', ' Camisa & con estampado de lunares Cazadora chaleco con pantalones', 230.00, 250.00, 30);
INSERT INTO `productos` VALUES (29, '1007', 'Vestido de fiesta de hombros descubiertos con encaje floral', 432.00, 450.00, 18);
INSERT INTO `productos` VALUES (30, '1008', 'Vestido dama color rosa', 600.00, 620.00, 14);
INSERT INTO `productos` VALUES (31, '1009', 'Pantalones ajustados', 280.00, 300.00, 29);
INSERT INTO `productos` VALUES (32, '1010', 'Vestido Brillante', 797.00, 820.00, 20);
INSERT INTO `productos` VALUES (33, '1011', 'Top crop con estampado', 289.00, 300.00, 23);
INSERT INTO `productos` VALUES (34, '1012', 'Camisa sin mangas unicolor', 150.00, 170.00, 20);
INSERT INTO `productos` VALUES (35, '1013', 'Blusa con estampado de rayas', 240.00, 260.00, 24);
INSERT INTO `productos` VALUES (36, '1014', 'Camiseta de hombros caidos', 287.00, 300.00, 15);
INSERT INTO `productos` VALUES (37, '1015', 'Top de tirantes', 160.00, 170.00, 24);
INSERT INTO `productos` VALUES (38, '1016', 'Conbinado con abrigo', 550.00, 620.00, 15);
INSERT INTO `productos` VALUES (39, '1017', 'top con vestido de tirantes', 220.00, 240.00, 30);
INSERT INTO `productos` VALUES (40, '1018', 'combinado con estampado', 380.00, 390.00, 15);
INSERT INTO `productos` VALUES (41, '1019', 'Conjunto joggers', 550.00, 570.00, 15);
INSERT INTO `productos` VALUES (42, '2020', 'Camiseta cuello mao', 500.00, 530.00, 17);
INSERT INTO `productos` VALUES (43, '1022', 'Top color lila', 145.00, 169.00, 20);
INSERT INTO `productos` VALUES (44, '2045', 'Blusa corta', 250.00, 300.00, 15);
INSERT INTO `productos` VALUES (54, '2024', 'Vestido con lunares', 145.00, 168.00, 19);
INSERT INTO `productos` VALUES (56, '2025', 'Vestido cruzado de cuello cruzado con cinturon color verde', 517.00, 540.00, 10);
INSERT INTO `productos` VALUES (57, '2026', 'Camiseta con estampado de slogan y dibujos animados, color rosa', 233.00, 270.00, 14);
INSERT INTO `productos` VALUES (58, '2027', 'Top de tirantes de color conbinado', 186.00, 200.00, 14);
INSERT INTO `productos` VALUES (59, '2028', 'Top escote drapeado con lentejuelas', 396.00, 450.00, 14);
INSERT INTO `productos` VALUES (60, '2029', 'Blusa con cordon trasero con abertura trasera', 323.00, 350.00, 14);
INSERT INTO `productos` VALUES (61, '3031', 'Top de cuello con apertura de ojo, color vino', 201.00, 240.00, 14);
INSERT INTO `productos` VALUES (62, '3032', 'Blusa con estampado floral, color lila', 182.00, 200.00, 0);

-- ----------------------------
-- Table structure for productos_ventas
-- ----------------------------
DROP TABLE IF EXISTS `productos_ventas`;
CREATE TABLE `productos_ventas`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cantidad` int(11) NOT NULL,
  `precio` decimal(8, 2) NOT NULL,
  `idProducto` bigint(20) NOT NULL,
  `idVenta` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of productos_ventas
-- ----------------------------
INSERT INTO `productos_ventas` VALUES (1, 1, 320.00, 1002, 1);
INSERT INTO `productos_ventas` VALUES (2, 1, 350.00, 4, 2);
INSERT INTO `productos_ventas` VALUES (3, 1, 250.00, 12, 3);
INSERT INTO `productos_ventas` VALUES (4, 1, 470.00, 20, 3);
INSERT INTO `productos_ventas` VALUES (5, 1, 590.00, 7, 4);
INSERT INTO `productos_ventas` VALUES (6, 1, 150.00, 11, 5);
INSERT INTO `productos_ventas` VALUES (7, 1, 400.00, 1, 6);
INSERT INTO `productos_ventas` VALUES (8, 1, 590.00, 7, 7);
INSERT INTO `productos_ventas` VALUES (9, 1, 300.00, 5, 8);
INSERT INTO `productos_ventas` VALUES (10, 1, 150.00, 11, 9);
INSERT INTO `productos_ventas` VALUES (11, 1, 450.00, 29, 10);
INSERT INTO `productos_ventas` VALUES (12, 1, 500.00, 27, 11);
INSERT INTO `productos_ventas` VALUES (13, 1, 300.00, 31, 12);
INSERT INTO `productos_ventas` VALUES (14, 1, 300.00, 33, 12);
INSERT INTO `productos_ventas` VALUES (15, 1, 530.00, 42, 13);
INSERT INTO `productos_ventas` VALUES (16, 1, 250.00, 25, 14);
INSERT INTO `productos_ventas` VALUES (17, 5, 200.00, 62, 15);
INSERT INTO `productos_ventas` VALUES (18, 1, 530.00, 42, 16);
INSERT INTO `productos_ventas` VALUES (19, 1, 240.00, 61, 17);
INSERT INTO `productos_ventas` VALUES (20, 1, 450.00, 29, 18);
INSERT INTO `productos_ventas` VALUES (21, 1, 620.00, 30, 18);
INSERT INTO `productos_ventas` VALUES (22, 1, 540.00, 56, 19);
INSERT INTO `productos_ventas` VALUES (23, 1, 270.00, 57, 19);
INSERT INTO `productos_ventas` VALUES (24, 1, 200.00, 58, 19);
INSERT INTO `productos_ventas` VALUES (25, 1, 530.00, 42, 20);
INSERT INTO `productos_ventas` VALUES (26, 1, 168.00, 54, 21);
INSERT INTO `productos_ventas` VALUES (27, 1, 140.00, 24, 22);
INSERT INTO `productos_ventas` VALUES (28, 1, 450.00, 59, 23);
INSERT INTO `productos_ventas` VALUES (29, 1, 350.00, 60, 24);
INSERT INTO `productos_ventas` VALUES (30, 2, 250.00, 25, 25);
INSERT INTO `productos_ventas` VALUES (31, 1, 540.00, 56, 26);
INSERT INTO `productos_ventas` VALUES (32, 1, 260.00, 35, 27);
INSERT INTO `productos_ventas` VALUES (33, 1, 170.00, 37, 27);
INSERT INTO `productos_ventas` VALUES (34, 2, 140.00, 24, 28);
INSERT INTO `productos_ventas` VALUES (35, 1, 300.00, 33, 29);

-- ----------------------------
-- Table structure for proveedor
-- ----------------------------
DROP TABLE IF EXISTS `proveedor`;
CREATE TABLE `proveedor`  (
  `id_Pro` int(2) NOT NULL AUTO_INCREMENT,
  `Nom_proveedor` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Tel` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Direccion` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_Pro`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of proveedor
-- ----------------------------
INSERT INTO `proveedor` VALUES (1, 'SHEIN', '7231156234', 'Paqueteria');
INSERT INTO `proveedor` VALUES (2, 'Price Shoes', '5546432178', 'Toluca');
INSERT INTO `proveedor` VALUES (3, 'Mundo Terra', '5678123456', 'Ciudad de Mexico');
INSERT INTO `proveedor` VALUES (4, 'Andrea', '5567895318', 'Ciudad de Mexico');

-- ----------------------------
-- Table structure for talla
-- ----------------------------
DROP TABLE IF EXISTS `talla`;
CREATE TABLE `talla`  (
  `id_talla` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_talla` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_talla`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of talla
-- ----------------------------
INSERT INTO `talla` VALUES (1, 'XS');
INSERT INTO `talla` VALUES (2, 'S');
INSERT INTO `talla` VALUES (3, 'M');
INSERT INTO `talla` VALUES (4, 'L');

-- ----------------------------
-- Table structure for usuarios
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nombre` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `telefono` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `direccion` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES (3, 'susi', 'Susana', '56548487999', 'Jilotepec', '$2y$10$KA10M6qzotyvjoiLqbxO2efGhlqOQXq36khY9y3CNMTJDVNM5wx0y');
INSERT INTO `usuarios` VALUES (4, 'Dylan', 'Dylan Torres', '7234356789', 'Villa del Carbon', '$2y$10$k1gP9KUCM7YSBAF/7AgZJua1EzvwTEqjXPpvXpoYn0VTLxMEmCyyC');
INSERT INTO `usuarios` VALUES (5, 'Are', 'Arely Cid Clemente', '5644839588', 'Chapa de Mota', '$2y$10$LYCf.t5Xf2rgf9Ps/3eWHOKNaIPX9u4If/Nw7D3I3Tlr.e0KAwF7W');
INSERT INTO `usuarios` VALUES (6, 'Leo', 'Leo Rodea Palacios', '5567891211', 'Chapa de Mota', '$2y$10$KskCCxV1htV3PPIEBb.lWuLMh6A0uf.1JS/ntTSOXpAPIdLG32sUK');

-- ----------------------------
-- Table structure for ventas
-- ----------------------------
DROP TABLE IF EXISTS `ventas`;
CREATE TABLE `ventas`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `fecha` datetime NOT NULL,
  `total` decimal(9, 2) NOT NULL,
  `idUsuario` bigint(20) NOT NULL,
  `idCliente` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ventas
-- ----------------------------
INSERT INTO `ventas` VALUES (1, '2023-06-03 19:00:51', 320.00, 2, 1);
INSERT INTO `ventas` VALUES (2, '2023-06-04 01:26:34', 350.00, 4, 2);
INSERT INTO `ventas` VALUES (3, '2023-06-04 01:28:57', 720.00, 4, 4);
INSERT INTO `ventas` VALUES (4, '2023-06-04 01:31:35', 590.00, 4, 3);
INSERT INTO `ventas` VALUES (5, '2023-06-04 01:34:26', 150.00, 4, 7);
INSERT INTO `ventas` VALUES (6, '2022-04-01 02:20:21', 400.00, 4, 4);
INSERT INTO `ventas` VALUES (7, '2022-06-06 02:48:49', 590.00, 4, 6);
INSERT INTO `ventas` VALUES (8, '2021-06-06 02:53:39', 300.00, 4, 2);
INSERT INTO `ventas` VALUES (9, '2021-06-06 21:24:14', 150.00, 4, 2);
INSERT INTO `ventas` VALUES (10, '2021-06-08 02:44:50', 450.00, 4, 3);
INSERT INTO `ventas` VALUES (11, '2022-06-08 03:18:45', 500.00, 3, 2);
INSERT INTO `ventas` VALUES (12, '2021-06-08 03:20:49', 600.00, 3, 4);
INSERT INTO `ventas` VALUES (13, '2020-06-08 03:22:17', 530.00, 3, 10);
INSERT INTO `ventas` VALUES (14, '2020-06-11 13:51:58', 250.00, 3, 17);
INSERT INTO `ventas` VALUES (15, '2020-06-20 01:20:25', 1000.00, 4, 23);
INSERT INTO `ventas` VALUES (16, '2020-06-20 01:23:53', 530.00, 4, 18);
INSERT INTO `ventas` VALUES (17, '2021-06-20 01:29:21', 240.00, 4, 7);
INSERT INTO `ventas` VALUES (18, '2023-06-20 01:31:53', 1070.00, 5, 16);
INSERT INTO `ventas` VALUES (19, '2022-06-20 01:32:59', 1010.00, 5, 20);
INSERT INTO `ventas` VALUES (20, '2022-06-20 01:34:08', 530.00, 5, 17);
INSERT INTO `ventas` VALUES (21, '2020-06-20 01:34:15', 168.00, 5, 19);
INSERT INTO `ventas` VALUES (22, '2021-06-20 01:34:27', 140.00, 5, 20);
INSERT INTO `ventas` VALUES (23, '2023-06-20 01:34:39', 450.00, 5, 21);
INSERT INTO `ventas` VALUES (24, '2023-06-20 01:34:52', 350.00, 5, 22);
INSERT INTO `ventas` VALUES (25, '2023-06-20 01:37:41', 500.00, 5, 16);
INSERT INTO `ventas` VALUES (26, '2023-06-22 01:49:33', 540.00, 4, 17);
INSERT INTO `ventas` VALUES (27, '2023-06-22 05:57:09', 430.00, 6, 14);
INSERT INTO `ventas` VALUES (28, '2023-06-22 06:16:07', 280.00, 4, 1);
INSERT INTO `ventas` VALUES (29, '2023-06-22 19:06:37', 300.00, 6, 1);

-- ----------------------------
-- Procedure structure for sp_actualizar_cliente
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_actualizar_cliente`;
delimiter ;;
CREATE PROCEDURE `sp_actualizar_cliente`(IN clave VARCHAR(21),
IN nom VARCHAR(21),
IN tel VARCHAR(21),
IN dire VARCHAR(21))
BEGIN
UPDATE clientes SET
clientes.nombre=nom,
clientes.telefono=tel,
clientes.direccion=dire


WHERE
 clientes.id=clave;
	
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_actualizar_producto
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_actualizar_producto`;
delimiter ;;
CREATE PROCEDURE `sp_actualizar_producto`(IN clave VARCHAR(21),
IN cod VARCHAR(21),
IN nom VARCHAR(21),
IN id_tall int,
IN com decimal,
IN ven decimal,
IN exis int,
IN col VARCHAR(21))
BEGIN
UPDATE productos SET
productos.codigo=cod,
productos.nombre=nom,
productos.id_talla=id_tall,
productos.compra=com,
productos.venta=ven,
productos.existencia=exis,
productos.color=col


WHERE
 productos.id=clave;
	

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_eliminar_cliente
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_eliminar_cliente`;
delimiter ;;
CREATE PROCEDURE `sp_eliminar_cliente`(IN `eliminar` varchar(21))
BEGIN
	DELETE FROM clientes WHERE id=eliminar;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_eliminar_producto
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_eliminar_producto`;
delimiter ;;
CREATE PROCEDURE `sp_eliminar_producto`(IN `eliminar` varchar(21))
BEGIN
	DELETE FROM productos WHERE id=eliminar;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_insertar_cliente
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_insertar_cliente`;
delimiter ;;
CREATE PROCEDURE `sp_insertar_cliente`(IN `ID_Cliente` int,IN `Nombre` varchar(100),IN `telefono` varchar(200),IN `direccion` varchar(20))
BEGIN
insert into clientes values(id,nombre,telefono,direccion);

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_insertar_producto
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_insertar_producto`;
delimiter ;;
CREATE PROCEDURE `sp_insertar_producto`(IN `id` BIGINT,IN `codigo` varchar(30),IN `nombre` varchar(100),IN `id_talla` INT,IN `compra` DECIMAL,IN `venta` decimal,IN `existencia` int, IN  `color` VARCHAR(21))
BEGIN
	insert into productos values(id, codigo,nombre,id_talla,compra,venta,existencia,color);

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_mostrarUsuarioPorClave
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_mostrarUsuarioPorClave`;
delimiter ;;
CREATE PROCEDURE `sp_mostrarUsuarioPorClave`(IN CLAVE varchar(21))
BEGIN
	SELECT * from usuarios where usuarios.id=CLAVE;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_mostrar_clientes
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_mostrar_clientes`;
delimiter ;;
CREATE PROCEDURE `sp_mostrar_clientes`(IN `cliente` varchar(21))
BEGIN
	SELECT * FROM clientes
	WHERE id=cliente;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_mostrar_producto
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_mostrar_producto`;
delimiter ;;
CREATE PROCEDURE `sp_mostrar_producto`(IN `producto` varchar(30))
BEGIN
		SELECT * FROM productos
	WHERE id=producto;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_ventas_usuarios
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_ventas_usuarios`;
delimiter ;;
CREATE PROCEDURE `sp_ventas_usuarios`()
BEGIN
	SELECT SUM(ventas.total) as total,usuarios.usuario, COUNT(*) As numeroVentas FROM ventas 
	 INNER JOIN usuarios ON usuarios.id = ventas.idUsuario
    GROUP BY ventas.idUsuario
    ORDER BY usuarios.nombre ASC;	


END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
