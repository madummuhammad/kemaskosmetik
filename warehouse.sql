/*
 Navicat MySQL Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100330
 Source Host           : myhassee.com:3306
 Source Schema         : gethasse_mpmwahl

 Target Server Type    : MySQL
 Target Server Version : 100330
 File Encoding         : 65001

 Date: 02/09/2021 09:32:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for warehouse
-- ----------------------------
DROP TABLE IF EXISTS `warehouse`;
CREATE TABLE `warehouse`  (
  `warehouse_id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `region` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `telephone` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`warehouse_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of warehouse
-- ----------------------------
INSERT INTO `warehouse` VALUES (1, 'GD01', 'Gudang Pusat', 'DKI Jakarta', 'Sentra Industri Terpadu I & II blok I1 no. 25, Elang Laut', '081222339800', 'halo@mpmwahl.id');
INSERT INTO `warehouse` VALUES (2, 'TK01', 'Toko E-Commerce', 'DKI Jakarta', 'Sentra Industri Terpadu I & II blok I1 no. 25, Elang Laut', '081222339800', 'halo@mpmwahl.id');
INSERT INTO `warehouse` VALUES (3, '001', 'MPM', 'DKI Jakarta', 'Sentra Industri Terpadu I & II blok I1 no. 25, Elang Laut', '08119990595', 'modapm.indo@gmail.com');

SET FOREIGN_KEY_CHECKS = 1;
