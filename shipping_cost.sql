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

 Date: 02/09/2021 09:31:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for shipping_cost
-- ----------------------------
DROP TABLE IF EXISTS `shipping_cost`;
CREATE TABLE `shipping_cost`  (
  `shipping_cost_id` int NOT NULL AUTO_INCREMENT,
  `province_id` int NOT NULL DEFAULT 0,
  `city_id` int NOT NULL DEFAULT 0,
  `subdistrict_id` int NOT NULL DEFAULT 0,
  `weight` float(15, 2) NOT NULL DEFAULT 0.00,
  `cost` float(15, 2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`shipping_cost_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shipping_cost
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
