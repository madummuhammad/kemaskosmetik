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

 Date: 02/09/2021 09:32:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for warranty_claim_history
-- ----------------------------
DROP TABLE IF EXISTS `warranty_claim_history`;
CREATE TABLE `warranty_claim_history`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `warranty_claim_id` bigint NOT NULL,
  `process_date` datetime NOT NULL,
  `process_by` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `response_note` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `response_photo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `user_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `user_phone` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `user_address` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of warranty_claim_history
-- ----------------------------
INSERT INTO `warranty_claim_history` VALUES (1, 1, '2021-06-11 10:15:36', 'Gary Tan', 'Klaim Baru', NULL, NULL, 'Gary Tan', '123456789', NULL);

SET FOREIGN_KEY_CHECKS = 1;
