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

 Date: 02/09/2021 09:30:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for setting
-- ----------------------------
DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting`  (
  `setting_id` int NOT NULL AUTO_INCREMENT,
  `group` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `key` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`) USING BTREE,
  INDEX `group`(`group`) USING BTREE,
  INDEX `key`(`key`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5243 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of setting
-- ----------------------------
INSERT INTO `setting` VALUES (798, 'payment_bank_transfer', 'title', 'Transfer Bank', 0);
INSERT INTO `setting` VALUES (799, 'payment_bank_transfer', 'instruction', 'Silakan transfer melalui salah satu dari rekening bank kami. Jika sudah melakukan pembayaran, harap konfirmasi kan pembayaran anda.', 0);
INSERT INTO `setting` VALUES (800, 'payment_bank_transfer', 'unique_code', '1', 0);
INSERT INTO `setting` VALUES (801, 'payment_bank_transfer', 'confirmation', '1', 0);
INSERT INTO `setting` VALUES (802, 'payment_bank_transfer', 'bank_accounts', 'a:2:{i:0;s:1:\"1\";i:1;s:1:\"2\";}', 1);
INSERT INTO `setting` VALUES (813, 'payment_gopay', 'title', 'GoPay', 0);
INSERT INTO `setting` VALUES (814, 'payment_gopay', 'instruction', 'Silakan buka aplikasi GoPay anda dan scan QRCode kemudian masukkan nominalnya. Jika sudah melakukan pembayaran, harap konfirmasi kan pembayaran anda.', 0);
INSERT INTO `setting` VALUES (815, 'payment_gopay', 'unique_code', '1', 0);
INSERT INTO `setting` VALUES (816, 'payment_gopay', 'qrcode', 'payments/QRCodeGoPay.jpg', 0);
INSERT INTO `setting` VALUES (817, 'payment_gopay', 'confirmation', '1', 0);
INSERT INTO `setting` VALUES (818, 'payment_ovo', 'title', 'OVO', 0);
INSERT INTO `setting` VALUES (819, 'payment_ovo', 'instruction', 'Silakan buka aplikasi OVO anda dan scan QRCode kemudian masukkan nominalnya. Jika sudah melakukan pembayaran, harap konfirmasi kan pembayaran anda.', 0);
INSERT INTO `setting` VALUES (820, 'payment_ovo', 'unique_code', '1', 0);
INSERT INTO `setting` VALUES (821, 'payment_ovo', 'qrcode', 'payments/QRCodeOvo.jpg', 0);
INSERT INTO `setting` VALUES (822, 'payment_ovo', 'confirmation', '1', 0);
INSERT INTO `setting` VALUES (5201, 'config', 'company', 'Wahl Professional Authorized Distributor for Indonesia', 0);
INSERT INTO `setting` VALUES (5202, 'config', 'address', 'PT Moda Pratama Mandiri<br>\r\nKompleks Pergudangan Sentra Industri Terpadu Tahap I & II blok i1/25<br>\r\nElang Laut - Pantai Indah Kapuk<br>\r\nJalan Kamal Muara VIII<br>\r\nJakarta Utara 14470', 0);
INSERT INTO `setting` VALUES (5203, 'config', 'telephone', '+62-811-999-0595', 0);
INSERT INTO `setting` VALUES (5204, 'config', 'whatsapp', '+628119990595', 0);
INSERT INTO `setting` VALUES (5205, 'config', 'fax', '', 0);
INSERT INTO `setting` VALUES (5206, 'config', 'email', 'halo@mpmindo.id', 0);
INSERT INTO `setting` VALUES (5207, 'config', 'logo', 'data/logo/distributor15050.png', 0);
INSERT INTO `setting` VALUES (5208, 'config', 'icon', 'data/logo/img_486935.png', 0);
INSERT INTO `setting` VALUES (5209, 'config', 'site_name', 'Wahl Professional Authorized Distributor for Indonesia, PT Moda Pratama Mandiri.', 0);
INSERT INTO `setting` VALUES (5210, 'config', 'seo_title', 'Wahl Professional Authorized Distributor for Indonesia, PT Moda Pratama Mandiri.', 0);
INSERT INTO `setting` VALUES (5211, 'config', 'meta_keywords', 'Wahl Professional Authorized Distributor for Indonesia, PT Moda Pratama Mandiri.\r\n', 0);
INSERT INTO `setting` VALUES (5212, 'config', 'meta_description', 'Wahl Professional Authorized Distributor for Indonesia, PT Moda Pratama Mandiri.\r\n', 0);
INSERT INTO `setting` VALUES (5213, 'config', 'rajaongkir_weight_class_id', '3', 0);
INSERT INTO `setting` VALUES (5214, 'config', 'rajaongkir_province_id', '6', 0);
INSERT INTO `setting` VALUES (5215, 'config', 'rajaongkir_city_id', '152', 0);
INSERT INTO `setting` VALUES (5216, 'config', 'rajaongkir_subdistrict_id', '2101', 0);
INSERT INTO `setting` VALUES (5217, 'config', 'rajaongkir_courier', 'a:4:{i:0;s:3:\"jne\";i:1;s:4:\"tiki\";i:2;s:7:\"sicepat\";i:3;s:3:\"jnt\";}', 1);
INSERT INTO `setting` VALUES (5218, 'config', 'order_status_id', '4', 0);
INSERT INTO `setting` VALUES (5219, 'config', 'order_cancel_status_id', '11', 0);
INSERT INTO `setting` VALUES (5220, 'config', 'order_paid_status_id', '10', 0);
INSERT INTO `setting` VALUES (5221, 'config', 'order_process_status_id', '12', 0);
INSERT INTO `setting` VALUES (5222, 'config', 'order_delivered_status_id', '13', 0);
INSERT INTO `setting` VALUES (5223, 'config', 'order_complete_status_id', '14', 0);
INSERT INTO `setting` VALUES (5224, 'config', 'registration', '1', 0);
INSERT INTO `setting` VALUES (5225, 'config', 'weight_class_id', '3', 0);
INSERT INTO `setting` VALUES (5226, 'config', 'warehouse_id', '3', 0);
INSERT INTO `setting` VALUES (5227, 'config', 'comment_approve', '1', 0);
INSERT INTO `setting` VALUES (5228, 'config', 'slideshow_banner_id', '3', 0);
INSERT INTO `setting` VALUES (5229, 'config', 'carousel_categories', 'a:7:{i:0;s:3:\"344\";i:1;s:3:\"348\";i:2;s:3:\"352\";i:3;s:3:\"335\";i:4;s:3:\"317\";i:5;s:3:\"323\";i:6;s:3:\"336\";}', 1);
INSERT INTO `setting` VALUES (5230, 'config', 'maintenance', '0', 0);
INSERT INTO `setting` VALUES (5231, 'config', 'footer_cards', 'a:4:{i:0;a:4:{s:7:\"heading\";s:18:\"Produk Berkualitas\";s:7:\"caption\";s:24:\"Kualitas produk terjamin\";s:4:\"icon\";s:6:\"ti-cup\";s:10:\"sort_order\";s:1:\"1\";}i:1;a:4:{s:7:\"heading\";s:13:\"Customer Care\";s:7:\"caption\";s:25:\"Layanan cepat dan terbaik\";s:4:\"icon\";s:16:\"ti-headphone-alt\";s:10:\"sort_order\";s:1:\"4\";}i:2;a:4:{s:7:\"heading\";s:15:\"Pembayaran Aman\";s:7:\"caption\";s:20:\"100% pembayaran aman\";s:4:\"icon\";s:9:\"icon-lock\";s:10:\"sort_order\";s:1:\"3\";}i:3;a:4:{s:7:\"heading\";s:13:\"Harga Terbaik\";s:7:\"caption\";s:22:\"Jaminan harga termurah\";s:4:\"icon\";s:9:\"ti-medall\";s:10:\"sort_order\";s:1:\"2\";}}', 1);
INSERT INTO `setting` VALUES (5232, 'config', 'facebook_link', '', 0);
INSERT INTO `setting` VALUES (5233, 'config', 'instagram_link', '', 0);
INSERT INTO `setting` VALUES (5234, 'config', 'youtube_link', '', 0);
INSERT INTO `setting` VALUES (5235, 'config', 'twitter_link', '', 0);
INSERT INTO `setting` VALUES (5236, 'config', 'slideshow_mobile_banner_id', '3', 0);
INSERT INTO `setting` VALUES (5237, 'config', 'logo_dark', 'data/logo/logo.png', 0);
INSERT INTO `setting` VALUES (5238, 'config', 'store_id', '2', 0);
INSERT INTO `setting` VALUES (5239, 'config', 'ads_banner_id', '6', 0);
INSERT INTO `setting` VALUES (5240, 'config', 'tax_id', '12.3456.7890.123', 0);
INSERT INTO `setting` VALUES (5241, 'config', 'warranty_period', '12', 0);
INSERT INTO `setting` VALUES (5242, 'config', 'warranty_transfer', 'BCA 123456789 a/n MPM Wahl', 0);

SET FOREIGN_KEY_CHECKS = 1;
