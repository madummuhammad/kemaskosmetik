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

 Date: 02/09/2021 09:32:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for weight_class
-- ----------------------------
DROP TABLE IF EXISTS `weight_class`;
CREATE TABLE `weight_class`  (
  `weight_class_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `unit` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `value` decimal(15, 4) NOT NULL DEFAULT 0.0000,
  PRIMARY KEY (`weight_class_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of weight_class
-- ----------------------------
INSERT INTO `weight_class` VALUES (3, 'Gram', 'g', 1.0000);
INSERT INTO `weight_class` VALUES (4, 'Kilogram', 'kg', 0.0010);

SET FOREIGN_KEY_CHECKS = 1;
