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

 Date: 02/09/2021 09:32:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for warranty_claim
-- ----------------------------
DROP TABLE IF EXISTS `warranty_claim`;
CREATE TABLE `warranty_claim`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sale_type` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sale_id` bigint NOT NULL,
  `product_code` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `product_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `reason` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `claim_description` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `evidence_photo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `warehouse_destination` int NOT NULL,
  `response_note` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `status` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `response_photo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `user_email` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `user_phone` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `user_address` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `create_source` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user_id` int NULL DEFAULT NULL,
  `claim_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `claim_date` datetime NOT NULL,
  `update_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `update_date` datetime NULL DEFAULT NULL,
  `new_product_code` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `transfer_photo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of warranty_claim
-- ----------------------------
INSERT INTO `warranty_claim` VALUES (1, 'Offline', 23, '1234567890', 'DETAILER TRIMMER', 'Mesin Mati/Tidak Nyala', 'test test', '', 3, NULL, 'Klaim Baru', NULL, 'gary.tan@wahlsea.com', '123456789', NULL, 'user', 50, 'Gary Tan', '2021-06-11 10:15:36', NULL, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
