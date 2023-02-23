/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 100422
 Source Host           : localhost:3306
 Source Schema         : sim_card

 Target Server Type    : MySQL
 Target Server Version : 100422
 File Encoding         : 65001

 Date: 23/02/2023 10:01:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for almacenes
-- ----------------------------
DROP TABLE IF EXISTS `almacenes`;
CREATE TABLE `almacenes`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of almacenes
-- ----------------------------

-- ----------------------------
-- Table structure for historicos_sim
-- ----------------------------
DROP TABLE IF EXISTS `historicos_sim`;
CREATE TABLE `historicos_sim`  (
  `id` int NOT NULL,
  `fecha_historico` datetime NOT NULL,
  `sim_cards_id` int NOT NULL,
  `status_id` int NOT NULL,
  `almacenes_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sim_cards_id`(`sim_cards_id` ASC) USING BTREE,
  INDEX `status_id`(`status_id` ASC) USING BTREE,
  INDEX `almacenes_id`(`almacenes_id` ASC) USING BTREE,
  CONSTRAINT `historicos_sim_ibfk_1` FOREIGN KEY (`sim_cards_id`) REFERENCES `sim_cards` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `historicos_sim_ibfk_2` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `historicos_sim_ibfk_3` FOREIGN KEY (`almacenes_id`) REFERENCES `almacenes` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of historicos_sim
-- ----------------------------

-- ----------------------------
-- Table structure for lotes
-- ----------------------------
DROP TABLE IF EXISTS `lotes`;
CREATE TABLE `lotes`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha_lote` datetime NULL DEFAULT NULL,
  `descripcion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `sucursales_id` int NULL DEFAULT NULL,
  `operadoras_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sucursales_id`(`sucursales_id` ASC) USING BTREE,
  INDEX `operadoras_id`(`operadoras_id` ASC) USING BTREE,
  CONSTRAINT `lotes_ibfk_1` FOREIGN KEY (`sucursales_id`) REFERENCES `sucursales` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `lotes_ibfk_2` FOREIGN KEY (`operadoras_id`) REFERENCES `operadoras` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lotes
-- ----------------------------

-- ----------------------------
-- Table structure for operadoras
-- ----------------------------
DROP TABLE IF EXISTS `operadoras`;
CREATE TABLE `operadoras`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `prefijos` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `paises_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `paises_id`(`paises_id` ASC) USING BTREE,
  CONSTRAINT `operadoras_ibfk_1` FOREIGN KEY (`paises_id`) REFERENCES `paises` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of operadoras
-- ----------------------------

-- ----------------------------
-- Table structure for paises
-- ----------------------------
DROP TABLE IF EXISTS `paises`;
CREATE TABLE `paises`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of paises
-- ----------------------------

-- ----------------------------
-- Table structure for personas
-- ----------------------------
DROP TABLE IF EXISTS `personas`;
CREATE TABLE `personas`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `ci` int NOT NULL,
  `nombres` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `apellidos` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personas
-- ----------------------------

-- ----------------------------
-- Table structure for planes
-- ----------------------------
DROP TABLE IF EXISTS `planes`;
CREATE TABLE `planes`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `Plan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `descripcion` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of planes
-- ----------------------------

-- ----------------------------
-- Table structure for recargas
-- ----------------------------
DROP TABLE IF EXISTS `recargas`;
CREATE TABLE `recargas`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha_recarga` datetime NOT NULL,
  `monto_bs` double NOT NULL,
  `equivalencia_usd` double NOT NULL,
  `sim_cards_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sim_cards_id`(`sim_cards_id` ASC) USING BTREE,
  CONSTRAINT `recargas_ibfk_1` FOREIGN KEY (`sim_cards_id`) REFERENCES `sim_cards` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of recargas
-- ----------------------------

-- ----------------------------
-- Table structure for sim_cards
-- ----------------------------
DROP TABLE IF EXISTS `sim_cards`;
CREATE TABLE `sim_cards`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `serial` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `pin` int NOT NULL,
  `puk` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `numero` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `fecha_act` datetime NOT NULL,
  `fecha_plan` datetime NOT NULL,
  `planes_id` int NOT NULL,
  `personas_id` int NOT NULL,
  `lotes_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `planes_id`(`planes_id` ASC) USING BTREE,
  INDEX `personas_id`(`personas_id` ASC) USING BTREE,
  INDEX `lotes_id`(`lotes_id` ASC) USING BTREE,
  CONSTRAINT `sim_cards_ibfk_1` FOREIGN KEY (`planes_id`) REFERENCES `planes` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `sim_cards_ibfk_2` FOREIGN KEY (`personas_id`) REFERENCES `personas` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `sim_cards_ibfk_3` FOREIGN KEY (`lotes_id`) REFERENCES `lotes` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sim_cards
-- ----------------------------

-- ----------------------------
-- Table structure for status
-- ----------------------------
DROP TABLE IF EXISTS `status`;
CREATE TABLE `status`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of status
-- ----------------------------
INSERT INTO `status` VALUES (1, 'Activo');
INSERT INTO `status` VALUES (2, 'En espera');
INSERT INTO `status` VALUES (3, 'En Simbank');
INSERT INTO `status` VALUES (4, 'Fallido');
INSERT INTO `status` VALUES (5, 'Sin saldo');

-- ----------------------------
-- Table structure for sucursales
-- ----------------------------
DROP TABLE IF EXISTS `sucursales`;
CREATE TABLE `sucursales`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `direccion` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sucursales
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
