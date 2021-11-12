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

 Date: 08/09/2021 12:01:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `address_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL DEFAULT 0,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `address` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `telephone` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `postcode` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `country_id` int NOT NULL DEFAULT 0,
  `province_id` int NOT NULL DEFAULT 0,
  `city_id` int NOT NULL DEFAULT 0,
  `subdistrict_id` int NOT NULL DEFAULT 0,
  `province` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `subdistrict` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`address_id`) USING BTREE,
  INDEX `customer_id`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 138 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Tabel alamat' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (1, 2, 'Setia Komara', 'Toko Kayla Baby Jl. Veteran No. 6 Cisaat-Sukabumi', '', '43152', 0, 9, 430, 5936, NULL, NULL, NULL);
INSERT INTO `address` VALUES (3, 3, 'Test', 'Jakarta', '', '10450', 0, 6, 151, 2087, NULL, NULL, NULL);
INSERT INTO `address` VALUES (5, 7, 'Reyner', 'Perkantoran Plaza Pasifik B2 47', '', '142525', 0, 6, 155, 2124, NULL, NULL, NULL);
INSERT INTO `address` VALUES (6, 8, 'Giovanni Widjaja', 'Jalan Kencana, Rukan Grand Puri Niaga, blok K6 - 5F, kEMBANGAN , WEST JAKARTA', '', '11610', 0, 6, 151, 2091, NULL, NULL, NULL);
INSERT INTO `address` VALUES (8, 10, 'Alamat Utama', 'Yogyakarta', '', '55671', 0, 5, 210, 2935, 'DI Yogyakarta', 'Kabupaten Kulon Progo', 'Nanggulan');
INSERT INTO `address` VALUES (9, 11, 'Alamat Utama', 'Danguran RT1 RW9, Danguran, Klaten Selatan, Klaten', '', '57425', 0, 10, 196, 2736, 'Jawa Tengah', 'Kabupaten Klaten', 'Klaten Selatan');
INSERT INTO `address` VALUES (10, 12, 'Alamat Utama', 'Katamaran Indah 1', '', '14460', 0, 6, 155, 2127, 'DKI Jakarta', 'Kota Jakarta Utara', 'Penjaringan');
INSERT INTO `address` VALUES (11, 13, 'Alamat Utama', 'jl. pedongkelan depan rt 009/013 no.72', '', '11730', 0, 6, 151, 2087, 'DKI Jakarta', 'Kota Jakarta Barat', 'Cengkareng');
INSERT INTO `address` VALUES (12, 14, 'Alamat Utama', 'jl cempaka 9 no 144 tangerang', '', '15131', 0, 3, 456, 6302, 'Banten', 'Kota Tangerang', 'Jatiuwung');
INSERT INTO `address` VALUES (13, 15, 'Alamat Utama', 'gonggangan rt02 rw03 bolon colomadu karanganyar', '', '57178', 0, 10, 169, 2353, 'Jawa Tengah', 'Kabupaten Karanganyar', 'Colomadu');
INSERT INTO `address` VALUES (14, 16, 'Alamat Utama', 'Jl. Raya cigaru kertajaya, simpenan palabuhan ratu, Simpenan', '', '43361', 0, 9, 430, 5957, 'Jawa Barat', 'Kabupaten Sukabumi', 'Simpenan');
INSERT INTO `address` VALUES (15, 17, 'Alamat Utama', 'surabaya', '', '60281', 0, 11, 444, 6154, 'Jawa Timur', 'Kota Surabaya', 'Sukomanunggal');
INSERT INTO `address` VALUES (16, 18, 'Alamat Utama', 'Jl letjend sutoyo 29b burengan pesantren kota kediri', '', '64131', 0, 11, 179, 2523, 'Jawa Timur', 'Kota Kediri', 'Kediri Kota');
INSERT INTO `address` VALUES (17, 19, 'Alamat Utama', 'Jl tanjung raya 2 Gg. Mitra jaya no17', '', '78242', 0, 12, 365, 5105, 'Kalimantan Barat', 'Kota Pontianak', 'Pontianak Timur');
INSERT INTO `address` VALUES (18, 20, 'Alamat Utama', 'Notyourbiznes str.', '', '99999', 0, 1, 17, 259, 'Bali', 'Kabupaten Badung', 'Kuta');
INSERT INTO `address` VALUES (19, 21, 'Alamat Utama', 'Belencong', '', '83125', 0, 22, 238, 3374, 'Nusa Tenggara Barat (NTB)', 'Kabupaten Lombok Barat', 'Gunungsari');
INSERT INTO `address` VALUES (20, 22, 'Alamat Utama', 'Perumahan graha arradea blok b3 no24, ciherang, dramaga, bogor barat', '', '16680', 0, 9, 78, 1038, 'Jawa Barat', 'Kabupaten Bogor', 'Dramaga');
INSERT INTO `address` VALUES (21, 23, 'Alamat Utama', 'Kalibondol rt 42 rw21 sentolo', '', '66554', 0, 5, 210, 2939, 'DI Yogyakarta', 'Kabupaten Kulon Progo', 'Sentolo');
INSERT INTO `address` VALUES (22, 24, 'Alamat Utama', 'Perum Graha Asri, Jl. Cisadane 1D, Blok N1, No. 34, Desa Simpangan, Cikarang Utara, Bekasi', '', '17530', 0, 9, 54, 735, 'Jawa Barat', 'Kabupaten Bekasi', 'Cikarang Utara');
INSERT INTO `address` VALUES (23, 25, 'Alamat Utama', 'Jl Mojopahit Ruko Jati Kepuh blok A13 Larangan Candi Sidoarjo Jawa Timur', '', '61271', 0, 11, 409, 5633, 'Jawa Timur', 'Kabupaten Sidoarjo', 'Candi');
INSERT INTO `address` VALUES (24, 26, 'Alamat Utama', 'Griya Cinunuk Indah Blok B XI No 12', '', '40624', 0, 9, 22, 315, 'Jawa Barat', 'Kabupaten Bandung', 'Cileunyi');
INSERT INTO `address` VALUES (25, 27, 'Alamat Utama', 'Jalan Pejompongan V No 140, Bendungan Hilir, Tanah Abang', '', '10210', 0, 6, 152, 2102, 'DKI Jakarta', 'Kota Jakarta Pusat', 'Tanah Abang');
INSERT INTO `address` VALUES (26, 28, 'Alamat Utama', 'Jl. Merak Gg. Bahagia No. 1', '', '20122', 0, 34, 278, 3923, 'Sumatera Utara', 'Kota Medan', 'Medan Sunggal');
INSERT INTO `address` VALUES (27, 29, 'Alamat Utama', 'JAYA IMPERIAL PARK CLUSTER IMPERIAL GREEN BLOK IGN B17, SEPATAN, KAB TANGERANG', '', '15520', 0, 3, 455, 6289, 'Banten', 'Kabupaten Tangerang', 'Sepatan');
INSERT INTO `address` VALUES (28, 30, 'Alamat Utama', 'Jl. Krisan I Blok F2 No.20, Griya Loka, BSD City Sektor 1-5', '', '15321', 0, 3, 457, 6314, 'Banten', 'Kota Tangerang Selatan', 'Serpong');
INSERT INTO `address` VALUES (29, 31, 'Alamat Utama', 'Perintis kemerdekaan km 12 no 149', '', '90245', 0, 28, 254, 3596, 'Sulawesi Selatan', 'Kota Makassar', 'Tamalanrea');
INSERT INTO `address` VALUES (30, 32, 'Alamat Utama', 'Panduk 34', '', '60299', 0, 11, 444, 6158, 'Jawa Timur', 'Kota Surabaya', 'Tenggilis Mejoyo');
INSERT INTO `address` VALUES (31, 33, 'Alamat Utama', 'Jl. Bendungan Sutami No.188A Malang', '', '65144', 0, 11, 255, 3624, 'Jawa Timur', 'Kabupaten Malang', 'Singosari');
INSERT INTO `address` VALUES (32, 33, 'Yoyok Bekti Prasetyo', 'Dusun Damean RT 02 RW 03 Desa Tamanharjo', '', '65153', 0, 11, 255, 3624, NULL, NULL, NULL);
INSERT INTO `address` VALUES (33, 34, 'Alamat Utama', 'Jl asrama bukit no 36 rt 18 kebun sayur baru ilir balikpapan barat', '', '76131', 0, 15, 19, 272, 'Kalimantan Timur', 'Kota Balikpapan', 'Balikpapan Barat');
INSERT INTO `address` VALUES (34, 35, 'Alamat Utama', 'JLN H M RYACUDU LORONG SADAR NO 61 RT 030 RW 005 KELURAHAN 8 ULU KECAMATAN SEBERANG ULU 1', '', '30252', 0, 33, 327, 4621, 'Sumatera Selatan', 'Kota Palembang', 'Seberang Ulu I');
INSERT INTO `address` VALUES (35, 36, 'Alamat Utama', 'Jl Kaparinyo P24', '', '14240', 0, 6, 155, 2124, 'DKI Jakarta', 'Kota Jakarta Utara', 'Kelapa Gading');
INSERT INTO `address` VALUES (36, 37, 'Alamat Utama', 'kertajaya indah timur VIII/23 , surabaya', '', '60116', 0, 11, 444, 6145, 'Jawa Timur', 'Kota Surabaya', 'Mulyorejo');
INSERT INTO `address` VALUES (37, 38, 'Alamat Utama', 'Jl. pisang no. 51 RT 14 RW 05 Kelurahan Rabangodu Utara', '', '84113', 0, 22, 69, 931, 'Nusa Tenggara Barat (NTB)', 'Kota Bima', 'Raba');
INSERT INTO `address` VALUES (38, 39, 'Alamat Utama', 'Eternity L1 no.11 The Icon BSD City', '', '15345', 0, 3, 455, 6270, 'Banten', 'Kabupaten Tangerang', 'Cisauk');
INSERT INTO `address` VALUES (39, 40, 'Alamat Utama', 'Dusun pahing RT 02/02 Desa Bunder', '', '45595', 0, 9, 211, 2945, 'Jawa Barat', 'Kabupaten Kuningan', 'Cidahu');
INSERT INTO `address` VALUES (40, 41, 'Alamat Utama', 'jl. Ahmad yani km 35,5 no 41', '', '70712', 0, 13, 35, 500, 'Kalimantan Selatan', 'Kota Banjarbaru', 'Banjar Baru Utara');
INSERT INTO `address` VALUES (41, 42, 'Alamat Utama', 'Jl. AHMAD YANI NO.122 RT.02 RW.01 KEL.BANGUNSARI KEC.MEJAYAN KAB.MADIUN', '', '63153', 0, 11, 247, 3502, 'Jawa Timur', 'Kabupaten Madiun', 'Mejayan');
INSERT INTO `address` VALUES (42, 43, 'Alamat Utama', 'Jl.Kerinci no 54 Kadipiro Banjarsari', '', '57136', 0, 10, 445, 6162, 'Jawa Tengah', 'Kota Surakarta (Solo)', 'Banjarsari');
INSERT INTO `address` VALUES (43, 44, 'Alamat Utama', 'Jalan Ciwulan no. 10', '', '40114', 0, 9, 23, 345, 'Jawa Barat', 'Kota Bandung', 'Bandung Wetan');
INSERT INTO `address` VALUES (44, 45, 'Alamat Utama', 'Komplek DKI Joglo', '', '11640', 0, 6, 151, 2091, 'DKI Jakarta', 'Kota Jakarta Barat', 'Kembangan');
INSERT INTO `address` VALUES (45, 46, 'Alamat Utama', 'Mayjen Sutoyo Rt 62 No 2', '', '76113', 0, 15, 19, 273, 'Kalimantan Timur', 'Kota Balikpapan', 'Balikpapan Kota');
INSERT INTO `address` VALUES (46, 47, 'Alamat Utama', 'Jl. Kubu Anyar Gg, Lalang Sari, Gg. Tiying Sari No.41, Tuban, Kuta, Bali', '', '80361', 0, 1, 17, 259, 'Bali', 'Kabupaten Badung', 'Kuta');
INSERT INTO `address` VALUES (47, 48, 'Alamat Utama', 'Jl raya sikasur simpur', '', '52356', 0, 10, 352, 4940, 'Jawa Tengah', 'Kabupaten Pemalang', 'Belik');
INSERT INTO `address` VALUES (48, 49, 'Alamat Utama', 'Kota pariaman', '', '25516', 0, 32, 337, 4736, 'Sumatera Barat', 'Kota Pariaman', 'Pariaman Timur');
INSERT INTO `address` VALUES (49, 50, 'Alamat Utama', '51 Goldhill Plaza', '', '30890', 0, 6, 151, 2089, 'DKI Jakarta', 'Kota Jakarta Barat', 'Kalideres');
INSERT INTO `address` VALUES (50, 51, 'Alamat Utama', 'Perumahan Buana Bukit Permata Blok Jade No.90', '', '22943', 0, 17, 48, 682, 'Kepulauan Riau', 'Kota Batam', 'Sagulung');
INSERT INTO `address` VALUES (51, 52, 'Alamat Utama', 'Jl.Kostrad Raya No.35 Rt.003 Rw.05 Petukangan Utara, Pesanggrahan, Jakarta Selatan', '', '12260', 0, 6, 153, 2110, 'DKI Jakarta', 'Kota Jakarta Selatan', 'Pesanggrahan');
INSERT INTO `address` VALUES (52, 53, 'Alamat Utama', 'Taman wisma asri blok r no 32', '', '17121', 0, 9, 55, 753, 'Jawa Barat', 'Kota Bekasi', 'Bekasi Utara');
INSERT INTO `address` VALUES (53, 54, 'Alamat Utama', 'cimahi', '', '40134', 0, 9, 107, 1469, 'Jawa Barat', 'Kota Cimahi', 'Cimahi Selatan');
INSERT INTO `address` VALUES (54, 55, 'Alamat Utama', 'Jalan Ligar Resik No. 40, Rt. 04 s Rw. 05, Komplek Bukit Ligar', '', '40191', 0, 9, 22, 317, 'Jawa Barat', 'Kabupaten Bandung', 'Cimeunyan');
INSERT INTO `address` VALUES (55, 56, 'Alamat Utama', 'JL. Selat Sunda 1 D2/21 Malang', '', '65138', 0, 11, 256, 3635, 'Jawa Timur', 'Kota Malang', 'Kedungkandang');
INSERT INTO `address` VALUES (56, 57, 'Alamat Utama', 'Kalibokor 5 no.43 Surabaya', '', '60283', 0, 11, 444, 6138, 'Jawa Timur', 'Kota Surabaya', 'Gubeng');
INSERT INTO `address` VALUES (57, 58, 'Alamat Utama', 'KS. Tubun No.42', '', '75123', 0, 15, 387, 5361, 'Kalimantan Timur', 'Kota Samarinda', 'Samarinda Ulu');
INSERT INTO `address` VALUES (58, 59, 'Alamat Utama', 'Jl. Capah dusun makmur kecamatan Simpang Kiri Kota Subulussalam', '', '24781', 0, 21, 429, 5916, 'Nanggroe Aceh Darussalam (NAD)', 'Kota Subulussalam', 'Simpang Kiri');
INSERT INTO `address` VALUES (59, 60, 'Alamat Utama', 'Jl. Dago Pojok No. 6-B', '', '40135', 0, 9, 23, 356, 'Jawa Barat', 'Kota Bandung', 'Coblong');
INSERT INTO `address` VALUES (60, 61, 'Alamat Utama', 'JL. IRIGASI LK. V NO. 39', '', '20141', 0, 34, 278, 3926, 'Sumatera Utara', 'Kota Medan', 'Medan Tuntungan');
INSERT INTO `address` VALUES (61, 62, 'Alamat Utama', 'Apartemen Puri Garden', '', '11610', 0, 6, 151, 2091, 'DKI Jakarta', 'Kota Jakarta Barat', 'Kembangan');
INSERT INTO `address` VALUES (62, 63, 'Alamat Utama', 'Paninggilan permai k4 parung serab', '', '15153', 0, 3, 456, 6300, 'Banten', 'Kota Tangerang', 'Ciledug');
INSERT INTO `address` VALUES (63, 63, 'Retno Wulandari', 'Bank BRI KCP Tebet Jl Tebet Barat Dalam Raya no 42 tebet', '', '12810', 0, 6, 153, 2112, NULL, NULL, NULL);
INSERT INTO `address` VALUES (64, 64, 'Alamat Utama', 'Permata Regensi Bekasi A5 No.2 Wanasari Cibitung', '', '17520', 0, 9, 54, 730, 'Jawa Barat', 'Kabupaten Bekasi', 'Cibitung');
INSERT INTO `address` VALUES (65, 65, 'Alamat Utama', 'IT.DEL, Desa Sitoluama, Kec.Laguboti, Kab.Toba', '', '22381', 0, 34, 481, 6657, 'Sumatera Utara', 'Kabupaten Toba Samosir', 'Laguboti');
INSERT INTO `address` VALUES (66, 66, 'Alamat Utama', 'Bandhar Agung Village 1 Blok A No. 3, Jalan Raya Legok RT05/RW03 Jatiluhur, Jatiasih, Bekasi', '', '17025', 0, 9, 55, 755, 'Jawa Barat', 'Kota Bekasi', 'Jatiasih');
INSERT INTO `address` VALUES (67, 67, 'Alamat Utama', 'Apt. Green Lake Tower NPR Unit 3-CE', '', '14350', 0, 6, 155, 2128, 'DKI Jakarta', 'Kota Jakarta Utara', 'Tanjung Priok');
INSERT INTO `address` VALUES (68, 68, 'Alamat Utama', 'Jalan Bogowonto Nomor 16', '', '38225', 0, 4, 62, 832, 'Bengkulu', 'Kota Bengkulu', 'Gading Cempaka');
INSERT INTO `address` VALUES (69, 69, 'Alamat Utama', 'Dusun Kalapasabrang Rt 03 Rw 07', '', '46324', 0, 9, 34, 496, 'Jawa Barat', 'Kota Banjar', 'Langensari');
INSERT INTO `address` VALUES (70, 70, 'Alamat Utama', 'Jalan durgandini 002/002', '', '63491', 0, 11, 363, 5071, 'Jawa Timur', 'Kabupaten Ponorogo', 'Babadan');
INSERT INTO `address` VALUES (71, 71, 'Alamat Utama', 'Jalan Al markas Al islami No 110', '', '90213', 0, 28, 254, 3595, 'Sulawesi Selatan', 'Kota Makassar', 'Tallo');
INSERT INTO `address` VALUES (72, 72, 'Alamat Utama', 'Jl. Agung Jaya 23 Blok D13/1A', '', '14350', 0, 6, 155, 2128, 'DKI Jakarta', 'Kota Jakarta Utara', 'Tanjung Priok');
INSERT INTO `address` VALUES (73, 73, 'Alamat Utama', 'Puri alam kencana 2 blok r no 6 rt06/08 kelurahan nanggewer mekar kecamatan cibinong bogor', '', '16912', 0, 9, 78, 1028, 'Jawa Barat', 'Kabupaten Bogor', 'Cibinong');
INSERT INTO `address` VALUES (74, 74, 'Alamat Utama', 'Jl.Bendul Merisi gg.1 seltan no.11 Wonocolo Surabaya', '', '60239', 0, 11, 444, 6160, 'Jawa Timur', 'Kota Surabaya', 'Wonocolo');
INSERT INTO `address` VALUES (75, 75, 'Alamat Utama', 'Jl. Nologaten, No. 5, Tempel, Caturtunggal, Kost D\'Royal No. Unit 13', '', '55281', 0, 5, 419, 5781, 'DI Yogyakarta', 'Kabupaten Sleman', 'Depok');
INSERT INTO `address` VALUES (76, 76, 'Alamat Utama', 'Jln. Rajawali', '', '28121', 0, 26, 350, 4923, 'Riau', 'Kota Pekanbaru', 'Sukajadi');
INSERT INTO `address` VALUES (77, 77, 'Alamat Utama', 'Giripurno rt 4 rw 2', '', '54364', 0, 10, 177, 2479, 'Jawa Tengah', 'Kabupaten Kebumen', 'Karanganyar');
INSERT INTO `address` VALUES (78, 78, 'Alamat Utama', 'Jl. Narogong cantik IV blok F69 no. 3', '', '17115', 0, 9, 55, 760, 'Jawa Barat', 'Kota Bekasi', 'Rawalumbu');
INSERT INTO `address` VALUES (79, 79, 'Alamat Utama', 'Jl. Ratu Ayu I Nomor 02, RT.005, RW.001 Desa Wage', '', '61257', 0, 11, 409, 5643, 'Jawa Timur', 'Kabupaten Sidoarjo', 'Taman');
INSERT INTO `address` VALUES (80, 80, 'Alamat Utama', 'Jl. Hasanudin 53, Kel Tanjunganom, Kab Nganjuk, Jatim', '', '64482', 0, 11, 305, 4341, 'Jawa Timur', 'Kabupaten Nganjuk', 'Tanjunganom');
INSERT INTO `address` VALUES (81, 81, 'Alamat Utama', 'Jl. Bontotangnga, Kec. Somba Opu, Kabupaten Gowa, Sulawesi Selatan', '', '92113', 0, 28, 132, 1824, 'Sulawesi Selatan', 'Kabupaten Gowa', 'Somba Opu (Upu)');
INSERT INTO `address` VALUES (82, 82, 'Alamat Utama', 'Cirebon', '', '45155', 0, 9, 108, 1502, 'Jawa Barat', 'Kabupaten Cirebon', 'Plumbon');
INSERT INTO `address` VALUES (83, 83, 'Alamat Utama', 'Kembang agung vi f6 no 1 jakarta barat', '', '11610', 0, 6, 151, 2091, 'DKI Jakarta', 'Kota Jakarta Barat', 'Kembangan');
INSERT INTO `address` VALUES (84, 84, 'Alamat Utama', 'Taman Pinang Indah Blok D5 no 10 Sidoarjo', '', '61213', 0, 11, 409, 5641, 'Jawa Timur', 'Kabupaten Sidoarjo', 'Sidoarjo');
INSERT INTO `address` VALUES (85, 85, 'Alamat Utama', 'Jl. Letjen S.Parman Kav 22-24 Apartemen Slipi Tower 2 Lt 10 Unit F', '', '11480', 0, 6, 151, 2092, 'DKI Jakarta', 'Kota Jakarta Barat', 'Palmerah');
INSERT INTO `address` VALUES (86, 86, 'Alamat Utama', 'Puri Depok Mas Blok QH No. 17 RT. 09 RW. 20', '', '16436', 0, 9, 115, 1584, 'Jawa Barat', 'Kota Depok', 'Pancoran Mas');
INSERT INTO `address` VALUES (87, 87, 'Alamat Utama', 'Jl. Cempaka Raya BM10, Kemang Pratama 5 , Bekasi', '', '17117', 0, 9, 55, 760, 'Jawa Barat', 'Kota Bekasi', 'Rawalumbu');
INSERT INTO `address` VALUES (88, 88, 'Alamat Utama', 'Jln terusan kopo RT04 RW02 Desa Margahayu Selatan Kecamatan Margahayu Kab. Bandung gang bapak USI', '', '40229', 0, 9, 22, 327, 'Jawa Barat', 'Kabupaten Bandung', 'Margahayu');
INSERT INTO `address` VALUES (89, 89, 'Alamat Utama', 'KP. Krajan Selatan RT001/RW001 Desa Balung', '', '68352', 0, 11, 418, 5771, 'Jawa Timur', 'Kabupaten Situbondo', 'Kendit');
INSERT INTO `address` VALUES (90, 90, 'Alamat Utama', 'KP. Krajan Selatan RT001/RW001 Desa Balung', '', '68352', 0, 11, 418, 5771, 'Jawa Timur', 'Kabupaten Situbondo', 'Kendit');
INSERT INTO `address` VALUES (91, 91, 'Alamat Utama', 'Kauripan,  rt /09, Rw/02, Desa. Winongsari.', '', '56364', 0, 10, 498, 6913, 'Jawa Tengah', 'Kabupaten Wonosobo', 'Kaliwiro');
INSERT INTO `address` VALUES (92, 92, 'Alamat Utama', 'Jabalsari sumbergempol tulungagung', '', '66291', 0, 11, 492, 6837, 'Jawa Timur', 'Kabupaten Tulungagung', 'Sumbergempol');
INSERT INTO `address` VALUES (93, 93, 'Alamat Utama', 'Jl. Karya Labersa Perumahan Griya Mahoni Asri No. 5', '', '28284', 0, 26, 350, 4914, 'Riau', 'Kota Pekanbaru', 'Bukit Raya');
INSERT INTO `address` VALUES (94, 94, 'Alamat Utama', 'Gg tengiri dsn sampangan desa kedungrejo kec Muncar kab Banyuwangi', '', '68472', 0, 11, 42, 612, 'Jawa Timur', 'Kabupaten Banyuwangi', 'Muncar');
INSERT INTO `address` VALUES (95, 95, 'Alamat Utama', 'Pendalian', '', '28455', 0, 26, 382, 5325, 'Riau', 'Kabupaten Rokan Hulu', 'Pendalian IV Koto');
INSERT INTO `address` VALUES (96, 96, 'Alamat Utama', 'Jl. Pluit Selatan IV No 15', '', '14450', 0, 6, 155, 2127, 'DKI Jakarta', 'Kota Jakarta Utara', 'Penjaringan');
INSERT INTO `address` VALUES (97, 97, 'Alamat Utama', 'Pondok gede', '', '17432', 0, 9, 55, 754, 'Jawa Barat', 'Kota Bekasi', 'Jati Sampurna');
INSERT INTO `address` VALUES (98, 98, 'Alamat Utama', 'Jorong balai sebuah(diatas kantor wali nagari dekat kolam)', '', '27265', 0, 32, 453, 6243, 'Sumatera Barat', 'Kabupaten Tanah Datar', 'Batipuh');
INSERT INTO `address` VALUES (99, 99, 'Alamat Utama', 'Jl Cagar Alam Selatan No 37 Rt 4 Rw 5 Kec Kel Pancoran Mas', '', '16436', 0, 9, 115, 1584, 'Jawa Barat', 'Kota Depok', 'Pancoran Mas');
INSERT INTO `address` VALUES (100, 100, 'Alamat Utama', 'Derman rt01/03 karangmojo tasikmadu karanganyar', '', '57722', 0, 10, 169, 2368, 'Jawa Tengah', 'Kabupaten Karanganyar', 'Tasikmadu');
INSERT INTO `address` VALUES (101, 101, 'Alamat Utama', 'danau tondano no.12, ahmad dahlan', '', '75100', 0, 15, 387, 5359, 'Kalimantan Timur', 'Kota Samarinda', 'Samarinda Kota');
INSERT INTO `address` VALUES (102, 102, 'Alamat Utama', 'Jl. Puri Mutiara Raya no 6 kav.2', '', '12430', 0, 6, 153, 2103, 'DKI Jakarta', 'Kota Jakarta Selatan', 'Cilandak');
INSERT INTO `address` VALUES (103, 103, 'Alamat Utama', 'Pondok Sukmajaya Permai F6 No.9', '', '16412', 0, 9, 115, 1586, 'Jawa Barat', 'Kota Depok', 'Sukmajaya');
INSERT INTO `address` VALUES (104, 104, 'Alamat Utama', 'Krendang Utara GG:1 no:129a', '', '11260', 0, 6, 151, 2094, 'DKI Jakarta', 'Kota Jakarta Barat', 'Tambora');
INSERT INTO `address` VALUES (105, 105, 'Alamat Utama', 'Dusun gulingbadak Rt 3 Rw 10 Desa jambusari Kecamatan jeruklegi', '', '53252', 0, 10, 105, 1447, 'Jawa Tengah', 'Kabupaten Cilacap', 'Jeruklegi');
INSERT INTO `address` VALUES (106, 106, 'Alamat Utama', 'Kapuk raya rt 006 rw 05', '', '11720', 0, 6, 151, 2087, 'DKI Jakarta', 'Kota Jakarta Barat', 'Cengkareng');
INSERT INTO `address` VALUES (107, 107, 'Alamat Utama', 'Jl poncol indah IV no 110B cirendeu', '', '15419', 0, 3, 457, 6311, 'Banten', 'Kota Tangerang Selatan', 'Ciputat Timur');
INSERT INTO `address` VALUES (108, 108, 'Alamat Utama', 'PANDANREJO RT/018 RW/002 KEL/DESA KENDALREJO', '', '68484', 0, 11, 42, 621, 'Jawa Timur', 'Kabupaten Banyuwangi', 'Tegaldlimo');
INSERT INTO `address` VALUES (109, 109, 'Alamat Utama', 'Kowel', '', '69311', 0, 11, 330, 4649, 'Jawa Timur', 'Kabupaten Pamekasan', 'Pamekasan');
INSERT INTO `address` VALUES (110, 110, 'Alamat Utama', 'Jalan Raya Duri Kosambi No155', '', '11750', 0, 6, 151, 2087, 'DKI Jakarta', 'Kota Jakarta Barat', 'Cengkareng');
INSERT INTO `address` VALUES (111, 111, 'Alamat Utama', 'Jl.Balikpapan-Handil 2 RT.01 GG.Harapan 4 Kel.Sanipah Kec.Samboja Kab.Kukar Kaltim', '', '75278', 0, 15, 215, 3037, 'Kalimantan Timur', 'Kabupaten Kutai Kartanegara', 'Samboja (Semboja)');
INSERT INTO `address` VALUES (112, 112, 'Alamat Utama', 'Perum Batu Ampar Permai Blok B2 no. 22', '', '76126', 0, 15, 19, 277, 'Kalimantan Timur', 'Kota Balikpapan', 'Balikpapan Utara');
INSERT INTO `address` VALUES (113, 113, 'Alamat Utama', 'SRENGSENG', '', '11630', 0, 6, 151, 2091, 'DKI Jakarta', 'Kota Jakarta Barat', 'Kembangan');
INSERT INTO `address` VALUES (114, 114, 'Alamat Utama', 'Jl. Hercules Blok D-15, Komplek Garuda, Skadron Udara 7, Pangkalan TNI AU Suryadarma, Kalijati Suban', '', '41271', 0, 9, 428, 5909, 'Jawa Barat', 'Kabupaten Subang', 'Subang');
INSERT INTO `address` VALUES (115, 115, 'Alamat Utama', 'Jl. Delima Jaya 3 ni.101, rt06 rw03 rempoa', '', '15412', 0, 3, 457, 6311, 'Banten', 'Kota Tangerang Selatan', 'Ciputat Timur');
INSERT INTO `address` VALUES (116, 116, 'Alamat Utama', 'Jl. Delima Jaya 3 ni.101, rt06 rw03 rempoa', '', '15412', 0, 3, 457, 6311, 'Banten', 'Kota Tangerang Selatan', 'Ciputat Timur');
INSERT INTO `address` VALUES (117, 117, 'Alamat Utama', 'Jl. Delima Jaya 3 ni.101, rt06 rw03 rempoa', '', '15412', 0, 3, 457, 6311, 'Banten', 'Kota Tangerang Selatan', 'Ciputat Timur');
INSERT INTO `address` VALUES (118, 118, 'Alamat Utama', 'Jl.mangga besar IV.H, no 30A RT 001 RW 003', '', '11150', 0, 6, 151, 2093, 'DKI Jakarta', 'Kota Jakarta Barat', 'Taman Sari');
INSERT INTO `address` VALUES (119, 119, 'Alamat Utama', 'semarang', '', '50232', 0, 10, 399, 5512, 'Jawa Tengah', 'Kota Semarang', 'Tembalang');
INSERT INTO `address` VALUES (120, 120, 'Alamat Utama', 'Jambi', '', '36552', 0, 8, 460, 6343, 'Jambi', 'Kabupaten Tanjung Jabung Barat', 'Batang Asam');
INSERT INTO `address` VALUES (121, 121, 'Alamat Utama', 'Jl. Rajawali 2 No. 48', '', '90123', 0, 28, 254, 3592, 'Sulawesi Selatan', 'Kota Makassar', 'Mariso');
INSERT INTO `address` VALUES (122, 122, 'Alamat Utama', 'Dsn kedurus rt 1 rw 4 kel Kepatihan kec Tulangan kab Sidoarjo', '', '61273', 0, 11, 409, 5641, 'Jawa Timur', 'Kabupaten Sidoarjo', 'Sidoarjo');
INSERT INTO `address` VALUES (123, 123, 'Alamat Utama', 'Perum pantai teritip mas blok n no 6', '', '76114', 0, 15, 19, 276, 'Kalimantan Timur', 'Kota Balikpapan', 'Balikpapan Timur');
INSERT INTO `address` VALUES (124, 123, 'Deni Satria Yustian', 'Suket boba, jl. Penegak no.34 rt.6 kel.damai balikpapan selatan', '', '76114', 0, 15, 19, 274, NULL, NULL, NULL);
INSERT INTO `address` VALUES (125, 124, 'Alamat Utama', 'Jl.mh.thamrin no.97', '', '22719', 0, 34, 323, 4590, 'Sumatera Utara', 'Kota Padang Sidempuan', 'Padang Sidempuan Utara (Padangsidimpuan)');
INSERT INTO `address` VALUES (126, 125, 'Alamat Utama', 'Jl.mh.thamrin no.97', '', '22719', 0, 34, 323, 4590, 'Sumatera Utara', 'Kota Padang Sidempuan', 'Padang Sidempuan Utara (Padangsidimpuan)');
INSERT INTO `address` VALUES (127, 126, 'Alamat Utama', 'Rs bhayangkara ambon', '', '97128', 0, 19, 14, 212, 'Maluku', 'Kota Ambon', 'Sirimau');
INSERT INTO `address` VALUES (128, 127, 'Alamat Utama', 'Makassar', '', '90243', 0, 30, 198, 2753, 'Sulawesi Tenggara', 'Kabupaten Kolaka', 'Kolaka');
INSERT INTO `address` VALUES (129, 128, 'Alamat Utama', 'Desa watestanjung, dusun tanjung, Rt 022 Rw 006', '', '61176', 0, 11, 133, 1845, 'Jawa Timur', 'Kabupaten Gresik', 'Wringin Anom');
INSERT INTO `address` VALUES (130, 129, 'Alamat Utama', 'Jl. Kepiting Raya 9A', '', '13220', 0, 6, 154, 2122, 'DKI Jakarta', 'Kota Jakarta Timur', 'Pulo Gadung');
INSERT INTO `address` VALUES (132, 131, 'Alamat Utama', 'Gg. Haur I Kp. Selaawi RT.04/01 Ds. Pasir Muncang', '', '16730', 0, 9, 78, 1024, 'Jawa Barat', 'Kabupaten Bogor', 'Caringin');
INSERT INTO `address` VALUES (133, 130, 'Rumah', 'Jl. Pisang No. 24 (Rumah pagar stainles hadap selatan) RT 003 RW 013 Dsn. Jombangan, Ds. Tertek', '', '64215', 0, 11, 178, 2514, NULL, NULL, NULL);
INSERT INTO `address` VALUES (134, 132, 'Alamat Utama', 'Jl. Palbatu 2,menteng dalam, Tebet, Jakarta selatan', '', '12780', 0, 6, 153, 2112, 'DKI Jakarta', 'Kota Jakarta Selatan', 'Tebet');
INSERT INTO `address` VALUES (135, 133, 'Alamat Utama', 'Jalan Sukarela Lorong batujajar Perum Griya duta Mas cluster Cendana Block C8 - 33', '', '30131', 0, 33, 327, 4624, 'Sumatera Selatan', 'Kota Palembang', 'Sukarami');
INSERT INTO `address` VALUES (136, 134, 'Alamat Utama', 'Jalan Sukarela Lorong batujajar Perum Griya duta Mas cluster Cendana Block C8 - 33', '', '30131', 0, 33, 327, 4624, 'Sumatera Selatan', 'Kota Palembang', 'Sukarami');
INSERT INTO `address` VALUES (137, 135, 'Alamat Utama', 'Surabaya', '', '60175', 0, 11, 444, 6143, 'Jawa Timur', 'Kota Surabaya', 'Krembangan');

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `admin_group_id` int NOT NULL DEFAULT 0,
  `image` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `salt` varchar(9) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `code_activation` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `code_forgotten` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ip` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_distributor` enum('0','1') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `warehouse_id` int NOT NULL,
  PRIMARY KEY (`admin_id`) USING BTREE,
  INDEX `email`(`email`, `username`, `active`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (-2, 0, 'admin/image--2.jpeg', 'Administrator Wahl', 'halo@mpmwahl.id', 'superadmin', '21601eba1b08ac96934d8086603a8a1c6a23093f', 'bc10c35c2', '', '', '180.251.223.75', 1, '0000-00-00 00:00:00', '2021-02-19 14:38:11', '2021-09-08 09:50:00', '0', 0);
INSERT INTO `admin` VALUES (-1, 0, 'admin/image--1.jpg', 'Administrator', 'info@mpmwahl.id', 'developer', '48deefa873416a91f7a2ecd933df45360b0ea66d', '3c3192346', '', '', '139.192.78.63', 1, '2016-04-21 12:12:57', '2021-06-10 15:56:03', '2021-09-07 23:59:52', '0', 0);

-- ----------------------------
-- Table structure for admin_group
-- ----------------------------
DROP TABLE IF EXISTS `admin_group`;
CREATE TABLE `admin_group`  (
  `admin_group_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `permission` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`admin_group_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Tabel Grup Pengguna' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_group
-- ----------------------------
INSERT INTO `admin_group` VALUES (9, 'SALES', 'a:3:{s:9:\"inventory\";a:1:{i:0;s:5:\"index\";}s:5:\"order\";a:2:{i:0;s:5:\"index\";i:1;s:4:\"edit\";}s:21:\"payment_confirmations\";a:1:{i:0;s:5:\"index\";}}');

-- ----------------------------
-- Table structure for api_access
-- ----------------------------
DROP TABLE IF EXISTS `api_access`;
CREATE TABLE `api_access`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `controller` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `date_created` datetime NULL DEFAULT NULL,
  `date_modified` timestamp NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of api_access
-- ----------------------------

-- ----------------------------
-- Table structure for api_key
-- ----------------------------
DROP TABLE IF EXISTS `api_key`;
CREATE TABLE `api_key`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `level` int NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT 0,
  `is_private_key` tinyint(1) NOT NULL DEFAULT 0,
  `ip_addresses` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `date_created` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of api_key
-- ----------------------------

-- ----------------------------
-- Table structure for api_limit
-- ----------------------------
DROP TABLE IF EXISTS `api_limit`;
CREATE TABLE `api_limit`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `uri` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `count` int NOT NULL,
  `hour_started` int NOT NULL,
  `api_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of api_limit
-- ----------------------------

-- ----------------------------
-- Table structure for api_log
-- ----------------------------
DROP TABLE IF EXISTS `api_log`;
CREATE TABLE `api_log`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `uri` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `method` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `params` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `api_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` int NOT NULL,
  `rtime` float NULL DEFAULT NULL,
  `authorized` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of api_log
-- ----------------------------

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `product_code` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `warehouse_id` int NOT NULL,
  `order_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article
-- ----------------------------

-- ----------------------------
-- Table structure for article_history
-- ----------------------------
DROP TABLE IF EXISTS `article_history`;
CREATE TABLE `article_history`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `article_id` bigint NOT NULL,
  `inventory_trans_id` int NOT NULL,
  `warehouse_from` int NOT NULL,
  `warehouse_to` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article_history
-- ----------------------------

-- ----------------------------
-- Table structure for bank
-- ----------------------------
DROP TABLE IF EXISTS `bank`;
CREATE TABLE `bank`  (
  `bank_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `code` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `charge` decimal(15, 2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`bank_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bank
-- ----------------------------
INSERT INTO `bank` VALUES (1, 'BANK BCA', '014', 5000.00);
INSERT INTO `bank` VALUES (2, 'BANK MANDIRI', '008', 0.00);
INSERT INTO `bank` VALUES (3, 'BANK BNI', '009', 0.00);
INSERT INTO `bank` VALUES (4, 'BANK BNI SYARIAH', '009', 0.00);
INSERT INTO `bank` VALUES (5, 'BANK BRI', '002', 5000.00);
INSERT INTO `bank` VALUES (6, 'BANK SYARIAH MANDIRI', '451', 0.00);
INSERT INTO `bank` VALUES (7, 'BANK CIMB NIAGA', '022', 0.00);
INSERT INTO `bank` VALUES (8, 'BANK CIMB NIAGA SYARIAH', '022', 0.00);
INSERT INTO `bank` VALUES (9, 'BANK MUAMALAT', '147', 0.00);
INSERT INTO `bank` VALUES (10, 'BANK BRI SYARIAH', '422', 0.00);
INSERT INTO `bank` VALUES (11, 'BANK TABUNGAN NEGARA (BTN)', '200', 0.00);
INSERT INTO `bank` VALUES (12, 'PERMATA BANK', '013', 0.00);
INSERT INTO `bank` VALUES (13, 'BANK DANAMON', '011', 0.00);
INSERT INTO `bank` VALUES (14, 'BANK BII MAYBANK', '016', 0.00);
INSERT INTO `bank` VALUES (15, 'BANK MEGA', '426', 0.00);
INSERT INTO `bank` VALUES (16, 'BANK SINARMAS', '153', 0.00);
INSERT INTO `bank` VALUES (17, 'BANK COMMONWEALTH', '950', 0.00);
INSERT INTO `bank` VALUES (18, 'BANK OCBC NISP', '028', 0.00);
INSERT INTO `bank` VALUES (19, 'BANK BUKOPIN', '441', 0.00);
INSERT INTO `bank` VALUES (20, 'BANK BCA SYARIAH', '536', 0.00);
INSERT INTO `bank` VALUES (21, 'BANK LIPPO', '026', 0.00);
INSERT INTO `bank` VALUES (22, 'CITIBANK', '031', 0.00);

-- ----------------------------
-- Table structure for bank_account
-- ----------------------------
DROP TABLE IF EXISTS `bank_account`;
CREATE TABLE `bank_account`  (
  `bank_account_id` int NOT NULL AUTO_INCREMENT,
  `bank_id` int NOT NULL DEFAULT 0,
  `title` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `account_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `account_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `active` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`bank_account_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bank_account
-- ----------------------------
INSERT INTO `bank_account` VALUES (1, 1, 'BCA Matraman', 'PT. Contoh', '12345678', 1);
INSERT INTO `bank_account` VALUES (2, 2, 'Mandiri Sudirman', 'PT. Maju Terus', '0862416289', 1);

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner`  (
  `banner_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`banner_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES (3, 'Slideshow', 'Slideshow', 0);
INSERT INTO `banner` VALUES (5, 'Metode Pembayaran', 'Metode Pembayaran', 0);
INSERT INTO `banner` VALUES (6, 'Home Ads', 'Home Ads', 0);

-- ----------------------------
-- Table structure for banner_image
-- ----------------------------
DROP TABLE IF EXISTS `banner_image`;
CREATE TABLE `banner_image`  (
  `banner_image_id` int NOT NULL AUTO_INCREMENT,
  `banner_id` int NOT NULL DEFAULT 0,
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `subtitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `link_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `sort_order` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`banner_image_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 127 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of banner_image
-- ----------------------------
INSERT INTO `banner_image` VALUES (35, 4, 'Kartu Kredit', '', '', '', 'data/payments/midtrans_credit_card.png', 1, 0);
INSERT INTO `banner_image` VALUES (36, 4, 'BCA', '', '', '', 'data/payments/midtrans_bca_va.png', 1, 0);
INSERT INTO `banner_image` VALUES (37, 4, 'Indomaret', '', '', '', 'data/payments/midtrans_indomaret.png', 1, 0);
INSERT INTO `banner_image` VALUES (38, 5, 'Gopay', '', '', '', 'data/payments/midtrans_gopay.png', 1, 4);
INSERT INTO `banner_image` VALUES (39, 5, 'Mandiri Clickpay', '', '', '', 'data/payments/midtrans.mandiri_clickpay.png', 0, 0);
INSERT INTO `banner_image` VALUES (40, 5, 'Bank BNI', '', '', '', 'data/payments/midtrans_bni_va.png', 1, 2);
INSERT INTO `banner_image` VALUES (41, 5, 'Bank Permata', '', '', '', 'data/payments/midtrans.permata_va.png', 0, 0);
INSERT INTO `banner_image` VALUES (111, 3, 'Banner 1', '', 'https://dutatunggal.com/category/pipa-tembaga', '', 'data/banner/Brassco.jpg', 1, 1);
INSERT INTO `banner_image` VALUES (112, 3, 'Banner 2', '', '', '', 'data/banner/FITTING_KUNINGAN.jpg', 1, 4);
INSERT INTO `banner_image` VALUES (113, 3, 'Banner 3', '', '', '', 'data/banner/gmt.jpg', 1, 3);
INSERT INTO `banner_image` VALUES (114, 3, 'Banner 4', '', '', '', 'data/banner/FITTING_TEMBAGA.jpg', 1, 2);
INSERT INTO `banner_image` VALUES (115, 3, 'Banner 5', '', 'https://dutatunggal.com/category/alat-ukur/alat-pengukur-suhu/sika-thermometer', '', 'data/banner/Sika_centre.jpg', 1, 5);
INSERT INTO `banner_image` VALUES (122, 6, 'Ads Satu', '', 'https://dutatunggal.com/category/pipa-tembaga', '', 'data/Home Ads/ads_1.jpg', 1, 1);
INSERT INTO `banner_image` VALUES (123, 6, 'Ads Dua', '', 'https://dutatunggal.com/category/kebutuhan-instalasi/instalasi-gas-medis', '', 'data/Home Ads/ads_2.jpg', 1, 2);
INSERT INTO `banner_image` VALUES (124, 6, 'Ads Tiga', '', 'https://dutatunggal.com/category/kebutuhan-instalasi/instalasi-refrigrasi', '', 'data/Home Ads/ads_3.jpg', 1, 3);
INSERT INTO `banner_image` VALUES (125, 5, 'Bank BCA', '', '', '', 'data/payments/midtrans_bca_va.png', 1, 1);
INSERT INTO `banner_image` VALUES (126, 5, 'Bank BRI', '', '', '', 'data/payments/midtrans_bri_va.png', 1, 3);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `inventory_category_id` int NOT NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `meta_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `meta_keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `meta_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `menu_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `parent_id` int NOT NULL DEFAULT 0,
  `top` tinyint(1) NOT NULL DEFAULT 1,
  `column` int NOT NULL DEFAULT 0,
  `sort_order` int NOT NULL DEFAULT 0,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`category_id`) USING BTREE,
  INDEX `inventory_category_id`(`inventory_category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 363 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (357, 0, 'Shop', '', '', '', '', 'shop', '', '', 0, 1, 0, 0, 1, '2020-12-31 14:37:43', '2021-01-25 15:43:19');
INSERT INTO `category` VALUES (358, 0, 'Clipper', '', '', '', '', 'clipper', '', '', 357, 1, 0, 1, 1, '2021-01-26 14:15:34', '2021-01-26 14:15:34');
INSERT INTO `category` VALUES (359, 0, 'Trimmer', '', '', '', '', 'trimmer', '', '', 357, 1, 0, 2, 1, '2021-01-26 14:17:59', '2021-01-26 14:17:59');
INSERT INTO `category` VALUES (360, 0, 'Shaver', '', '', '', '', 'shaver', '', '', 357, 1, 0, 3, 1, '2021-01-26 14:18:11', '2021-01-26 14:18:11');
INSERT INTO `category` VALUES (361, 0, 'Blade', '', '', '', '', 'blade', '', '', 357, 1, 0, 4, 1, '2021-02-11 13:59:02', '2021-02-11 13:59:02');
INSERT INTO `category` VALUES (362, 0, 'Accessories', '', '', '', '', 'accessories', '', '', 357, 1, 0, 5, 1, '2021-02-15 10:27:56', '2021-02-15 10:27:56');

-- ----------------------------
-- Table structure for category_path
-- ----------------------------
DROP TABLE IF EXISTS `category_path`;
CREATE TABLE `category_path`  (
  `category_id` int NOT NULL DEFAULT 0,
  `path_id` int NOT NULL DEFAULT 0,
  `level` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`category_id`, `path_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category_path
-- ----------------------------
INSERT INTO `category_path` VALUES (357, 357, 0);
INSERT INTO `category_path` VALUES (358, 357, 0);
INSERT INTO `category_path` VALUES (358, 358, 1);
INSERT INTO `category_path` VALUES (359, 357, 0);
INSERT INTO `category_path` VALUES (359, 359, 1);
INSERT INTO `category_path` VALUES (360, 357, 0);
INSERT INTO `category_path` VALUES (360, 360, 1);
INSERT INTO `category_path` VALUES (361, 357, 0);
INSERT INTO `category_path` VALUES (361, 361, 1);
INSERT INTO `category_path` VALUES (362, 357, 0);
INSERT INTO `category_path` VALUES (362, 362, 1);

-- ----------------------------
-- Table structure for chat_session
-- ----------------------------
DROP TABLE IF EXISTS `chat_session`;
CREATE TABLE `chat_session`  (
  `chat_session_id` int NOT NULL AUTO_INCREMENT,
  `chat_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `agent_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `agent_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `time_start` datetime NULL DEFAULT NULL,
  `time_end` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`chat_session_id`) USING BTREE,
  INDEX `chat_id`(`chat_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chat_session
-- ----------------------------
INSERT INTO `chat_session` VALUES (1, 'acae1f10-03ad-11eb-817a-f1a7e3cf71ae', '5f0f867967771f3813c11f31', 'Duta Tunggal', '2020-10-01 13:17:36', '2020-10-01 13:19:46');
INSERT INTO `chat_session` VALUES (2, '3c80aca0-0eb4-11eb-b308-09ad56974410', '5f0f867967771f3813c11f31', 'Duta Tunggal', '2020-10-15 14:02:04', '2020-10-15 14:03:57');
INSERT INTO `chat_session` VALUES (3, 'ce94ca30-11c1-11eb-932a-4906d1443612', '5f0f867967771f3813c11f31', 'Duta Tunggal', '2020-10-19 11:21:22', '2020-10-19 11:21:22');
INSERT INTO `chat_session` VALUES (4, '017e3ee0-11d1-11eb-8aa2-e3c65f1592c3', '5f0f867967771f3813c11f31', 'Duta Tunggal', '2020-10-19 13:06:27', '2020-10-19 13:09:33');
INSERT INTO `chat_session` VALUES (5, '20c199e0-16e6-11eb-9eb1-efa83b1e3f6f', '5f0f867967771f3813c11f31', 'Duta Tunggal', '2020-10-26 00:23:28', '2020-10-26 00:23:28');
INSERT INTO `chat_session` VALUES (6, '9386b090-1737-11eb-a916-a51bf32e6206', '5f0f867967771f3813c11f31', 'Duta Tunggal', '2020-10-26 10:03:26', '2020-10-26 10:03:47');

-- ----------------------------
-- Table structure for ci_sessions
-- ----------------------------
DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE `ci_sessions`  (
  `id` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ip_address` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `timestamp` int UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL,
  INDEX `ci_sessions_timestamp`(`timestamp`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ci_sessions
-- ----------------------------
INSERT INTO `ci_sessions` VALUES ('4d0e5e2bc45ec764cda75c61f78f877552d739af', '103.105.107.122', 1601571097, 0x61646D696E5F69647C733A323A222D31223B6B6E725F757365725F69647C693A3130303B6B6E725F6C6576656C5F69647C693A313B6B6E725F757365726E616D657C733A393A22646576656C6F706572223B6B6E725F6D616E6167657C733A313A222D223B);
INSERT INTO `ci_sessions` VALUES ('1cafe7baf37cd4d4c40104a721d037979b41b2c8', '103.105.107.122', 1601571097, 0x5F5F63695F6C6173745F726567656E65726174657C693A313630313537313039373B61646D696E5F72656469726563747C733A363A226F6666696365223B);
INSERT INTO `ci_sessions` VALUES ('d5d3693356c44593086e5327efb25e611506df71', '103.105.107.122', 1601571097, 0x5F5F63695F6C6173745F726567656E65726174657C693A313630313537313039373B);
INSERT INTO `ci_sessions` VALUES ('9e3f66093c51eac0c1a4c92a966e8402bea28a96', '103.105.107.122', 1601571107, 0x5F5F63695F6C6173745F726567656E65726174657C693A313630313537313130363B);
INSERT INTO `ci_sessions` VALUES ('0d20c955ba8c15d352edf301ba815a9144868768', '103.105.107.122', 1601571110, 0x61646D696E5F69647C733A323A222D31223B6B6E725F757365725F69647C693A3130303B6B6E725F6C6576656C5F69647C693A313B6B6E725F757365726E616D657C733A393A22646576656C6F706572223B6B6E725F6D616E6167657C733A313A222D223B);
INSERT INTO `ci_sessions` VALUES ('4b2f9d7e6ab47bb150e08b6e742affbd36c9d71d', '103.105.107.122', 1601571110, 0x5F5F63695F6C6173745F726567656E65726174657C693A313630313537313131303B61646D696E5F72656469726563747C733A363A226F6666696365223B);
INSERT INTO `ci_sessions` VALUES ('eff2660dc36255593af56c6711cb853ae1ed088d', '103.105.107.122', 1601571111, 0x5F5F63695F6C6173745F726567656E65726174657C693A313630313537313131313B);
INSERT INTO `ci_sessions` VALUES ('b8d06bb6b862aa3d337391805cb5c10b1f08bbf0', '192.241.239.10', 1601571311, 0x5F5F63695F6C6173745F726567656E65726174657C693A313630313537313331303B63757272656E63797C733A333A22494452223B);

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `comment_id` int NOT NULL AUTO_INCREMENT,
  `blog_article_id` int NOT NULL DEFAULT 0,
  `product_id` int NOT NULL DEFAULT 0,
  `parent_id` int NOT NULL DEFAULT 0,
  `user_id` int NOT NULL DEFAULT 0,
  `text` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`comment_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for coupon
-- ----------------------------
DROP TABLE IF EXISTS `coupon`;
CREATE TABLE `coupon`  (
  `coupon_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `discount` decimal(15, 2) NOT NULL DEFAULT 0.00,
  `logged` tinyint(1) NOT NULL DEFAULT 1,
  `shipping` tinyint(1) NOT NULL DEFAULT 0,
  `total` decimal(15, 2) NOT NULL DEFAULT 0.00,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int NOT NULL DEFAULT 0,
  `uses_user` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`coupon_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of coupon
-- ----------------------------

-- ----------------------------
-- Table structure for coupon_category
-- ----------------------------
DROP TABLE IF EXISTS `coupon_category`;
CREATE TABLE `coupon_category`  (
  `coupon_id` int NOT NULL DEFAULT 0,
  `category_id` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`coupon_id`, `category_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of coupon_category
-- ----------------------------

-- ----------------------------
-- Table structure for coupon_history
-- ----------------------------
DROP TABLE IF EXISTS `coupon_history`;
CREATE TABLE `coupon_history`  (
  `coupon_history_id` int NOT NULL AUTO_INCREMENT,
  `coupon_id` int NOT NULL DEFAULT 0,
  `order_id` int NOT NULL DEFAULT 0,
  `user_id` int NOT NULL DEFAULT 0,
  `amount` decimal(15, 2) NOT NULL DEFAULT 0.00,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`coupon_history_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of coupon_history
-- ----------------------------

-- ----------------------------
-- Table structure for coupon_product
-- ----------------------------
DROP TABLE IF EXISTS `coupon_product`;
CREATE TABLE `coupon_product`  (
  `coupon_product_id` int NOT NULL AUTO_INCREMENT,
  `coupon_id` int NOT NULL DEFAULT 0,
  `product_id` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`coupon_product_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of coupon_product
-- ----------------------------

-- ----------------------------
-- Table structure for currency
-- ----------------------------
DROP TABLE IF EXISTS `currency`;
CREATE TABLE `currency`  (
  `currency_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `code` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `symbol` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `value` float(15, 8) NOT NULL DEFAULT 0.00000000,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`currency_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of currency
-- ----------------------------
INSERT INTO `currency` VALUES (8, 'Rupiah', 'IDR', 'Rp', 1.00000000, 1, '2017-04-02 00:00:00');

-- ----------------------------
-- Table structure for inventory
-- ----------------------------
DROP TABLE IF EXISTS `inventory`;
CREATE TABLE `inventory`  (
  `inventory_id` int NOT NULL AUTO_INCREMENT,
  `trans_table` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `trans_table_id` int NOT NULL DEFAULT 0,
  `product_id` int NOT NULL DEFAULT 0,
  `warehouse_id` int NOT NULL,
  `quantity` int NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`inventory_id`) USING BTREE,
  INDEX `item_id`(`product_id`) USING BTREE,
  INDEX `warehouse_id`(`warehouse_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 63 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of inventory
-- ----------------------------
INSERT INTO `inventory` VALUES (1, 'inventory_trans', 1, 577, 3, 300, '2021-02-11 12:00:00');
INSERT INTO `inventory` VALUES (2, 'inventory_trans', 1, 578, 3, 30, '2021-02-11 12:00:00');
INSERT INTO `inventory` VALUES (3, 'inventory_trans', 1, 586, 3, 3000, '2021-02-11 12:00:00');
INSERT INTO `inventory` VALUES (4, 'inventory_trans', 2, 571, 3, 30, '2021-02-24 12:00:00');
INSERT INTO `inventory` VALUES (5, 'inventory_trans', 2, 583, 3, 30, '2021-02-24 12:00:00');
INSERT INTO `inventory` VALUES (6, 'inventory_trans', 2, 582, 3, 30, '2021-02-24 12:00:00');
INSERT INTO `inventory` VALUES (7, 'inventory_trans', 2, 576, 3, 30, '2021-02-24 12:00:00');
INSERT INTO `inventory` VALUES (8, 'inventory_trans', 2, 584, 3, 30, '2021-02-24 12:00:00');
INSERT INTO `inventory` VALUES (9, 'inventory_trans', 2, 590, 3, 30, '2021-02-24 12:00:00');
INSERT INTO `inventory` VALUES (10, 'inventory_trans', 3, 580, 3, 30, '2021-03-24 12:00:00');
INSERT INTO `inventory` VALUES (11, 'inventory_trans', 3, 579, 3, 30, '2021-03-24 12:00:00');
INSERT INTO `inventory` VALUES (12, 'order', 4, 579, 3, -1, '2021-04-16 09:45:14');
INSERT INTO `inventory` VALUES (13, 'inventory_trans', 4, 590, 3, -30, '2021-04-28 12:00:00');
INSERT INTO `inventory` VALUES (14, 'order', 8, 582, 3, -1, '2021-05-31 09:41:47');
INSERT INTO `inventory` VALUES (15, 'order', 8, 571, 3, -1, '2021-05-31 09:41:47');
INSERT INTO `inventory` VALUES (16, 'inventory_trans', 5, 590, 3, 12, '2021-06-07 12:00:00');
INSERT INTO `inventory` VALUES (17, 'inventory_trans', 6, 588, 3, 30, '2021-06-08 12:00:00');
INSERT INTO `inventory` VALUES (18, 'inventory_trans', 7, 586, 3, 30, '2021-06-08 12:00:00');
INSERT INTO `inventory` VALUES (19, 'inventory_trans', 7, 589, 3, 30, '2021-06-08 12:00:00');
INSERT INTO `inventory` VALUES (20, 'inventory_trans', 7, 585, 3, 30, '2021-06-08 12:00:00');
INSERT INTO `inventory` VALUES (21, 'inventory_trans', 7, 587, 3, 30, '2021-06-08 12:00:00');
INSERT INTO `inventory` VALUES (22, 'inventory_trans', 7, 0, 3, 0, '2021-06-08 12:00:00');
INSERT INTO `inventory` VALUES (23, 'inventory_trans', 8, 591, 3, 5, '2021-06-09 12:00:00');
INSERT INTO `inventory` VALUES (24, 'inventory_trans', 9, 590, 3, 9, '2021-06-09 12:00:00');
INSERT INTO `inventory` VALUES (25, 'inventory_trans', 10, 590, 3, -18, '2021-06-09 12:00:00');
INSERT INTO `inventory` VALUES (26, 'inventory_trans', 11, 590, 3, -3, '2021-06-16 12:00:00');
INSERT INTO `inventory` VALUES (27, 'order', 15, 591, 3, -1, '2021-06-29 09:51:05');
INSERT INTO `inventory` VALUES (28, 'order', 19, 579, 3, -1, '2021-07-05 14:04:04');
INSERT INTO `inventory` VALUES (29, 'order', 16, 579, 3, -1, '2021-07-05 14:19:30');
INSERT INTO `inventory` VALUES (30, 'order', 18, 583, 3, -1, '2021-07-05 16:21:49');
INSERT INTO `inventory` VALUES (31, 'order', 23, 580, 3, -1, '2021-07-26 13:44:09');
INSERT INTO `inventory` VALUES (32, 'inventory_trans', 12, 591, 3, -1, '2021-08-05 12:00:00');
INSERT INTO `inventory` VALUES (33, 'inventory_trans', 13, 591, 3, -3, '2021-08-05 12:00:00');
INSERT INTO `inventory` VALUES (34, 'order', 28, 579, 3, -1, '2021-08-09 16:40:29');
INSERT INTO `inventory` VALUES (35, 'order', 27, 579, 3, -1, '2021-08-09 16:42:40');
INSERT INTO `inventory` VALUES (36, 'order', 26, 579, 3, -1, '2021-08-09 16:45:29');
INSERT INTO `inventory` VALUES (37, 'inventory_trans', 14, 581, 3, 10, '2021-08-10 12:00:00');
INSERT INTO `inventory` VALUES (38, 'inventory_trans', 15, 592, 3, 10, '2021-08-10 12:00:00');
INSERT INTO `inventory` VALUES (39, 'inventory_trans', 16, 575, 3, 5, '2021-08-10 12:00:00');
INSERT INTO `inventory` VALUES (40, 'inventory_trans', 17, 586, 3, -3000, '2021-08-10 12:00:00');
INSERT INTO `inventory` VALUES (41, 'inventory_trans', 18, 574, 3, 10, '2021-08-10 12:00:00');
INSERT INTO `inventory` VALUES (42, 'order', 29, 571, 3, -1, '2021-08-12 10:33:31');
INSERT INTO `inventory` VALUES (43, 'order', 33, 579, 3, -1, '2021-08-18 13:22:26');
INSERT INTO `inventory` VALUES (44, 'order', 32, 586, 3, -1, '2021-08-18 13:38:49');
INSERT INTO `inventory` VALUES (45, 'order', 36, 581, 3, -1, '2021-08-18 16:48:15');
INSERT INTO `inventory` VALUES (46, 'order', 38, 586, 3, -1, '2021-08-18 16:49:58');
INSERT INTO `inventory` VALUES (47, 'order', 39, 592, 3, -1, '2021-08-20 09:28:51');
INSERT INTO `inventory` VALUES (48, 'inventory_trans', 19, 590, 3, 24, '2021-08-20 12:00:00');
INSERT INTO `inventory` VALUES (49, 'inventory_trans', 20, 591, 3, 5, '2021-08-20 12:00:00');
INSERT INTO `inventory` VALUES (50, 'inventory_trans', 21, 590, 3, -12, '2021-08-23 12:00:00');
INSERT INTO `inventory` VALUES (51, 'inventory_trans', 22, 590, 3, -12, '2021-08-23 12:00:00');
INSERT INTO `inventory` VALUES (52, 'order', 42, 591, 3, -1, '2021-08-31 09:18:47');
INSERT INTO `inventory` VALUES (53, 'order', 42, 587, 3, -1, '2021-08-31 09:18:47');
INSERT INTO `inventory` VALUES (54, 'order', 43, 571, 3, -1, '2021-09-01 09:20:37');
INSERT INTO `inventory` VALUES (55, 'order', 43, 590, 3, -1, '2021-09-01 09:20:37');
INSERT INTO `inventory` VALUES (56, 'order', 44, 579, 3, -1, '2021-09-01 09:23:13');
INSERT INTO `inventory` VALUES (57, 'order', 45, 579, 3, -1, '2021-09-01 09:25:03');
INSERT INTO `inventory` VALUES (58, 'order', 46, 579, 3, -1, '2021-09-01 09:26:35');
INSERT INTO `inventory` VALUES (59, 'order', 47, 579, 3, -1, '2021-09-01 09:27:58');
INSERT INTO `inventory` VALUES (60, 'inventory_trans', 23, 590, 3, 1, '2021-09-02 12:00:00');
INSERT INTO `inventory` VALUES (61, 'order', 49, 590, 3, -2, '2021-09-06 13:00:55');
INSERT INTO `inventory` VALUES (62, 'order', 51, 582, 3, -1, '2021-09-07 12:44:15');

-- ----------------------------
-- Table structure for inventory_trans
-- ----------------------------
DROP TABLE IF EXISTS `inventory_trans`;
CREATE TABLE `inventory_trans`  (
  `inventory_trans_id` int NOT NULL AUTO_INCREMENT,
  `warehouse_from` int NOT NULL DEFAULT 0,
  `warehouse_to` int NOT NULL DEFAULT 0,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`inventory_trans_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of inventory_trans
-- ----------------------------
INSERT INTO `inventory_trans` VALUES (1, 0, 3, 'Update per tanggal 11 Februari 2021', '2021-02-11 12:00:00');
INSERT INTO `inventory_trans` VALUES (2, 0, 3, 'Update per tanggal 24 Februari 2021', '2021-02-24 12:00:00');
INSERT INTO `inventory_trans` VALUES (3, 0, 3, 'Update per tanggal 17 Maret 2021', '2021-03-24 12:00:00');
INSERT INTO `inventory_trans` VALUES (4, 3, 0, 'Barang sedang kosong', '2021-04-28 12:00:00');
INSERT INTO `inventory_trans` VALUES (5, 0, 3, 'Update per tanggal 7 Juni 2021', '2021-06-07 12:00:00');
INSERT INTO `inventory_trans` VALUES (6, 0, 3, 'Update per tanggal 8 Juni 2021', '2021-06-08 12:00:00');
INSERT INTO `inventory_trans` VALUES (7, 0, 3, 'Update per tanggal 8 Juni 2021', '2021-06-08 12:00:00');
INSERT INTO `inventory_trans` VALUES (8, 0, 3, 'Update per tanggal 9 Juni 2021', '2021-06-09 12:00:00');
INSERT INTO `inventory_trans` VALUES (9, 3, 0, 'Barang terbeli di market place lain', '2021-06-09 12:00:00');
INSERT INTO `inventory_trans` VALUES (10, 3, 0, 'Barang terbeli di market place lain', '2021-06-09 12:00:00');
INSERT INTO `inventory_trans` VALUES (11, 3, 0, 'Barang terbeli di market place lain', '2021-06-16 12:00:00');
INSERT INTO `inventory_trans` VALUES (12, 3, 0, 'Barang terbeli di market place lain', '2021-08-05 12:00:00');
INSERT INTO `inventory_trans` VALUES (13, 3, 0, 'Barang terbeli di market place lain', '2021-08-05 12:00:00');
INSERT INTO `inventory_trans` VALUES (14, 0, 3, 'Update per tanggal 10 Agustus 2021', '2021-08-10 12:00:00');
INSERT INTO `inventory_trans` VALUES (15, 0, 3, 'Update per tanggal 10 Agustus 2021', '2021-08-10 12:00:00');
INSERT INTO `inventory_trans` VALUES (16, 0, 3, 'Update per tanggal 10 Agustus 2021', '2021-08-10 12:00:00');
INSERT INTO `inventory_trans` VALUES (17, 3, 0, 'Update per tanggal 10 Agustus 2021', '2021-08-10 12:00:00');
INSERT INTO `inventory_trans` VALUES (18, 0, 3, 'Update per tanggal 10 Agustus 2021', '2021-08-10 12:00:00');
INSERT INTO `inventory_trans` VALUES (19, 0, 3, 'Update WAHL OIL', '2021-08-20 12:00:00');
INSERT INTO `inventory_trans` VALUES (20, 0, 3, 'Update per tanggal 20 Agustus 2021', '2021-08-20 12:00:00');
INSERT INTO `inventory_trans` VALUES (21, 3, 0, 'Barang terbeli di market place lain', '2021-08-23 12:00:00');
INSERT INTO `inventory_trans` VALUES (22, 3, 0, 'Barang terbeli di market place lain', '2021-08-23 12:00:00');
INSERT INTO `inventory_trans` VALUES (23, 0, 3, 'Stock minus 1', '2021-09-02 12:00:00');

-- ----------------------------
-- Table structure for knr_session
-- ----------------------------
DROP TABLE IF EXISTS `knr_session`;
CREATE TABLE `knr_session`  (
  `id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `timestamp` int UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of knr_session
-- ----------------------------
INSERT INTO `knr_session` VALUES ('rp0jcl5apcaj07aev301n820sp1vk9c4', '180.251.223.75', 1631070881, 0x5F5F63695F6C6173745F726567656E65726174657C693A313633313036383036303B61646D696E5F69647C733A323A222D32223B63757272656E63797C733A333A22494452223B);
INSERT INTO `knr_session` VALUES ('kvsbniqofbsjdc76b9lfll0ton5hudb7', '180.251.223.75', 1631077347, 0x5F5F63695F6C6173745F726567656E65726174657C693A313633313036393339383B61646D696E5F72656469726563747C733A363A226F6666696365223B61646D696E5F69647C733A323A222D32223B);
INSERT INTO `knr_session` VALUES ('njcsn5bup69v0ciop1ep73inr2rkkhs4', '125.165.181.170', 1631070063, 0x5F5F63695F6C6173745F726567656E65726174657C693A313633313037303036333B);
INSERT INTO `knr_session` VALUES ('in9cnbbn3ijt7a295o1i6v26egkikcho', '180.251.223.75', 1631071451, 0x5F5F63695F6C6173745F726567656E65726174657C693A313633313037303838383B61646D696E5F69647C733A323A222D32223B63757272656E63797C733A333A22494452223B);
INSERT INTO `knr_session` VALUES ('se0q2iv38ci81o2f4arq6okprdibl77k', '180.251.223.75', 1631077382, 0x5F5F63695F6C6173745F726567656E65726174657C693A313633313037313435383B61646D696E5F69647C733A323A222D32223B63757272656E63797C733A333A22494452223B);
INSERT INTO `knr_session` VALUES ('a7ca9q8anal7ti1tsnn9vhf8brlgc0km', '66.220.149.113', 1631071770, 0x5F5F63695F6C6173745F726567656E65726174657C693A313633313037313737303B);
INSERT INTO `knr_session` VALUES ('opks5rpphgft4l9fclq9jklc7i0pms0v', '66.220.149.25', 1631071770, 0x5F5F63695F6C6173745F726567656E65726174657C693A313633313037313737303B);
INSERT INTO `knr_session` VALUES ('08t6urid664tp3aipqm4g07t7ld6vm77', '66.220.149.19', 1631071770, 0x5F5F63695F6C6173745F726567656E65726174657C693A313633313037313737303B);
INSERT INTO `knr_session` VALUES ('o9nhlnnsln8r4ihjjj5fpdfmkc7hmpjd', '66.220.149.38', 1631071770, 0x5F5F63695F6C6173745F726567656E65726174657C693A313633313037313737303B);
INSERT INTO `knr_session` VALUES ('ku5h2nv2ee16u8jbrb8is94jms9hv9b0', '66.220.149.38', 1631071770, 0x5F5F63695F6C6173745F726567656E65726174657C693A313633313037313737303B);
INSERT INTO `knr_session` VALUES ('91ots1jmje7bjgc183gq5l283h7rrg27', '69.171.251.21', 1631071771, 0x5F5F63695F6C6173745F726567656E65726174657C693A313633313037313737313B);
INSERT INTO `knr_session` VALUES ('v6hm68jti6tk3adf8v1d3mfnsi18hbh7', '69.171.251.8', 1631071771, 0x5F5F63695F6C6173745F726567656E65726174657C693A313633313037313737313B);
INSERT INTO `knr_session` VALUES ('8nnkknrftf45cph637qoopuao4n1nlpf', '69.171.251.5', 1631071771, 0x5F5F63695F6C6173745F726567656E65726174657C693A313633313037313737313B);
INSERT INTO `knr_session` VALUES ('tr3jg9s9s36qaluvhvqklfdclcoqh1vp', '69.171.251.119', 1631071771, 0x5F5F63695F6C6173745F726567656E65726174657C693A313633313037313737313B);
INSERT INTO `knr_session` VALUES ('o0u3r2umprljqvnq8al8rcd3uufi4nun', '103.158.28.117', 1631072658, 0x5F5F63695F6C6173745F726567656E65726174657C693A313633313037323538383B63757272656E63797C733A333A22494452223B);
INSERT INTO `knr_session` VALUES ('3cobirkb5s5ti3e2jitosh9r72q1tuar', '103.3.221.229', 1631073992, 0x5F5F63695F6C6173745F726567656E65726174657C693A313633313037333939313B);
INSERT INTO `knr_session` VALUES ('aanb6uu8idb0q9nln1lnslna933l72jp', '103.3.221.229', 1631074016, 0x5F5F63695F6C6173745F726567656E65726174657C693A313633313037343030373B63757272656E63797C733A333A22494452223B);
INSERT INTO `knr_session` VALUES ('8b2qdfmndf734sqtu3hie265p841j742', '103.119.140.151', 1631074377, 0x5F5F63695F6C6173745F726567656E65726174657C693A313633313037343337373B63757272656E63797C733A333A22494452223B);
INSERT INTO `knr_session` VALUES ('3ssjb2i6kr1mkn3qip89to8rvfkvth43', '103.3.221.229', 1631075303, 0x5F5F63695F6C6173745F726567656E65726174657C693A313633313037353330313B63757272656E63797C733A333A22494452223B);
INSERT INTO `knr_session` VALUES ('rbuu6duflefm1kdgvh3g8chvldnekgj3', '120.188.35.230', 1631075790, 0x5F5F63695F6C6173745F726567656E65726174657C693A313633313037353739303B);
INSERT INTO `knr_session` VALUES ('1ucl4a7huk1mcbi5fj8nqdgq3h8vp7ev', '115.178.196.23', 1631076160, 0x5F5F63695F6C6173745F726567656E65726174657C693A313633313037363039343B);
INSERT INTO `knr_session` VALUES ('g43aaphgm5o9r6ad4oenrpfo7v1quvd2', '115.178.196.23', 1631076195, 0x5F5F63695F6C6173745F726567656E65726174657C693A313633313037363137303B63757272656E63797C733A333A22494452223B7669657765645F636F756E74737C613A313A7B693A303B733A333A22353736223B7D);
INSERT INTO `knr_session` VALUES ('esoo5omuf73ks3f9gp3tgq599rufajhb', '118.99.76.115', 1631076549, 0x5F5F63695F6C6173745F726567656E65726174657C693A313633313037363236313B);
INSERT INTO `knr_session` VALUES ('86pqe3hq28nrqa2g0lhcv789p2k6fk3q', '182.1.111.55', 1631076720, 0x5F5F63695F6C6173745F726567656E65726174657C693A313633313037363731363B);
INSERT INTO `knr_session` VALUES ('9anbdt6dnl2qi1ptbtcdoedsifkbe2je', '114.119.150.133', 1631077194, 0x5F5F63695F6C6173745F726567656E65726174657C693A313633313037373139333B63757272656E63797C733A333A22494452223B);
INSERT INTO `knr_session` VALUES ('bnojf5qko10s7cni0ejkpn47tqag52kn', '::1', 1631077387, 0x5F5F63695F6C6173745F726567656E65726174657C693A313633313037373333323B);

-- ----------------------------
-- Table structure for knr_stores
-- ----------------------------
DROP TABLE IF EXISTS `knr_stores`;
CREATE TABLE `knr_stores`  (
  `id` int NOT NULL,
  `store_name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `store_address` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `store_phone` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `price_increment_percent` decimal(5, 2) NOT NULL,
  `store_code` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `bg_color` varchar(7) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of knr_stores
-- ----------------------------

-- ----------------------------
-- Table structure for length_class
-- ----------------------------
DROP TABLE IF EXISTS `length_class`;
CREATE TABLE `length_class`  (
  `length_class_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `unit` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `value` decimal(15, 4) NOT NULL DEFAULT 0.0000,
  PRIMARY KEY (`length_class_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of length_class
-- ----------------------------

-- ----------------------------
-- Table structure for list_distributor
-- ----------------------------
DROP TABLE IF EXISTS `list_distributor`;
CREATE TABLE `list_distributor`  (
  `list_distributor_id` int NOT NULL AUTO_INCREMENT,
  `country` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `category` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `business` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `haircut` tinyint(1) NULL DEFAULT NULL,
  `sales` tinyint(1) NULL DEFAULT NULL,
  `repair` tinyint(1) NULL DEFAULT NULL,
  `spare_part` tinyint(1) NULL DEFAULT NULL,
  `company_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `shop_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `address_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `address` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `post_code` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `province` int NULL DEFAULT NULL,
  `city` int NULL DEFAULT NULL,
  `sub_district` int NULL DEFAULT NULL,
  `latitude` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `longitude` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `country_code` int NULL DEFAULT NULL,
  `number_phone` varchar(13) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `facebook` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `instagram` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `twiter` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `youtube` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `linkedin` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tiktok` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `website` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`list_distributor_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of list_distributor
-- ----------------------------
INSERT INTO `list_distributor` VALUES (35, 'Indonesia', 'Human Professional', 'Wholesale', 0, 1, 1, NULL, 'Afu Salon Supplier', 'Afu Salon Supplier', 'Ruko Asemka', 'Pintu Besar Selatan 1 no  15/34', '11110', 6, 151, 2093, '', '', 62, '0216909838', '', '', '', '', '', '', '');
INSERT INTO `list_distributor` VALUES (36, 'Indonesia', 'Human Professional', 'Wholesale', 0, 1, 1, NULL, 'Barbersupply Indo', 'Barbersupply Indo', 'Ruko', 'Jl. Kencana Murni 35G, Kembangan Selatan', '11610', 6, 151, 2091, '-6.186157366472586', '106.75464335420402', 62, '0817390770', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for location
-- ----------------------------
DROP TABLE IF EXISTS `location`;
CREATE TABLE `location`  (
  `location_id` int NOT NULL AUTO_INCREMENT,
  `province_id` int NOT NULL DEFAULT 0,
  `city_id` int NOT NULL DEFAULT 0,
  `subdistrict_id` int NOT NULL DEFAULT 0,
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `postcode` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`location_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2002 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of location
-- ----------------------------
INSERT INTO `location` VALUES (1, 1, 0, 0, 'Bali', 'Provinsi', '');
INSERT INTO `location` VALUES (2, 2, 0, 0, 'Bangka Belitung', 'Provinsi', '');
INSERT INTO `location` VALUES (3, 3, 0, 0, 'Banten', 'Provinsi', '');
INSERT INTO `location` VALUES (4, 4, 0, 0, 'Bengkulu', 'Provinsi', '');
INSERT INTO `location` VALUES (5, 5, 0, 0, 'DI Yogyakarta', 'Provinsi', '');
INSERT INTO `location` VALUES (6, 6, 0, 0, 'DKI Jakarta', 'Provinsi', '');
INSERT INTO `location` VALUES (7, 7, 0, 0, 'Gorontalo', 'Provinsi', '');
INSERT INTO `location` VALUES (8, 8, 0, 0, 'Jambi', 'Provinsi', '');
INSERT INTO `location` VALUES (9, 9, 0, 0, 'Jawa Barat', 'Provinsi', '');
INSERT INTO `location` VALUES (10, 10, 0, 0, 'Jawa Tengah', 'Provinsi', '');
INSERT INTO `location` VALUES (11, 11, 0, 0, 'Jawa Timur', 'Provinsi', '');
INSERT INTO `location` VALUES (12, 12, 0, 0, 'Kalimantan Barat', 'Provinsi', '');
INSERT INTO `location` VALUES (13, 13, 0, 0, 'Kalimantan Selatan', 'Provinsi', '');
INSERT INTO `location` VALUES (14, 14, 0, 0, 'Kalimantan Tengah', 'Provinsi', '');
INSERT INTO `location` VALUES (15, 15, 0, 0, 'Kalimantan Timur', 'Provinsi', '');
INSERT INTO `location` VALUES (16, 16, 0, 0, 'Kalimantan Utara', 'Provinsi', '');
INSERT INTO `location` VALUES (17, 17, 0, 0, 'Kepulauan Riau', 'Provinsi', '');
INSERT INTO `location` VALUES (18, 18, 0, 0, 'Lampung', 'Provinsi', '');
INSERT INTO `location` VALUES (19, 19, 0, 0, 'Maluku', 'Provinsi', '');
INSERT INTO `location` VALUES (20, 20, 0, 0, 'Maluku Utara', 'Provinsi', '');
INSERT INTO `location` VALUES (21, 21, 0, 0, 'Nanggroe Aceh Darussalam (NAD)', 'Provinsi', '');
INSERT INTO `location` VALUES (22, 22, 0, 0, 'Nusa Tenggara Barat (NTB)', 'Provinsi', '');
INSERT INTO `location` VALUES (23, 23, 0, 0, 'Nusa Tenggara Timur (NTT)', 'Provinsi', '');
INSERT INTO `location` VALUES (24, 24, 0, 0, 'Papua', 'Provinsi', '');
INSERT INTO `location` VALUES (25, 25, 0, 0, 'Papua Barat', 'Provinsi', '');
INSERT INTO `location` VALUES (26, 26, 0, 0, 'Riau', 'Provinsi', '');
INSERT INTO `location` VALUES (27, 27, 0, 0, 'Sulawesi Barat', 'Provinsi', '');
INSERT INTO `location` VALUES (28, 28, 0, 0, 'Sulawesi Selatan', 'Provinsi', '');
INSERT INTO `location` VALUES (29, 29, 0, 0, 'Sulawesi Tengah', 'Provinsi', '');
INSERT INTO `location` VALUES (30, 30, 0, 0, 'Sulawesi Tenggara', 'Provinsi', '');
INSERT INTO `location` VALUES (31, 31, 0, 0, 'Sulawesi Utara', 'Provinsi', '');
INSERT INTO `location` VALUES (32, 32, 0, 0, 'Sumatera Barat', 'Provinsi', '');
INSERT INTO `location` VALUES (33, 33, 0, 0, 'Sumatera Selatan', 'Provinsi', '');
INSERT INTO `location` VALUES (34, 34, 0, 0, 'Sumatera Utara', 'Provinsi', '');
INSERT INTO `location` VALUES (35, 1, 17, 0, 'Badung', 'Kabupaten', '80351');
INSERT INTO `location` VALUES (36, 1, 32, 0, 'Bangli', 'Kabupaten', '80619');
INSERT INTO `location` VALUES (37, 1, 94, 0, 'Buleleng', 'Kabupaten', '81111');
INSERT INTO `location` VALUES (38, 1, 114, 0, 'Denpasar', 'Kota', '80227');
INSERT INTO `location` VALUES (39, 1, 128, 0, 'Gianyar', 'Kabupaten', '80519');
INSERT INTO `location` VALUES (40, 1, 161, 0, 'Jembrana', 'Kabupaten', '82251');
INSERT INTO `location` VALUES (41, 1, 170, 0, 'Karangasem', 'Kabupaten', '80819');
INSERT INTO `location` VALUES (42, 1, 197, 0, 'Klungkung', 'Kabupaten', '80719');
INSERT INTO `location` VALUES (43, 1, 447, 0, 'Tabanan', 'Kabupaten', '82119');
INSERT INTO `location` VALUES (44, 11, 31, 0, 'Bangkalan', 'Kabupaten', '69118');
INSERT INTO `location` VALUES (45, 11, 42, 0, 'Banyuwangi', 'Kabupaten', '68416');
INSERT INTO `location` VALUES (46, 11, 51, 0, 'Batu', 'Kota', '65311');
INSERT INTO `location` VALUES (47, 11, 74, 0, 'Blitar', 'Kabupaten', '66171');
INSERT INTO `location` VALUES (48, 11, 75, 0, 'Blitar', 'Kota', '66124');
INSERT INTO `location` VALUES (49, 11, 80, 0, 'Bojonegoro', 'Kabupaten', '62119');
INSERT INTO `location` VALUES (50, 11, 86, 0, 'Bondowoso', 'Kabupaten', '68219');
INSERT INTO `location` VALUES (51, 11, 133, 0, 'Gresik', 'Kabupaten', '61115');
INSERT INTO `location` VALUES (52, 11, 160, 0, 'Jember', 'Kabupaten', '68113');
INSERT INTO `location` VALUES (53, 11, 164, 0, 'Jombang', 'Kabupaten', '61415');
INSERT INTO `location` VALUES (54, 11, 178, 0, 'Kediri', 'Kabupaten', '64184');
INSERT INTO `location` VALUES (55, 11, 179, 0, 'Kediri', 'Kota', '64125');
INSERT INTO `location` VALUES (56, 11, 222, 0, 'Lamongan', 'Kabupaten', '64125');
INSERT INTO `location` VALUES (57, 11, 243, 0, 'Lumajang', 'Kabupaten', '67319');
INSERT INTO `location` VALUES (58, 11, 247, 0, 'Madiun', 'Kabupaten', '63153');
INSERT INTO `location` VALUES (59, 11, 248, 0, 'Madiun', 'Kota', '63122');
INSERT INTO `location` VALUES (60, 11, 251, 0, 'Magetan', 'Kabupaten', '63314');
INSERT INTO `location` VALUES (61, 11, 256, 0, 'Malang', 'Kota', '65112');
INSERT INTO `location` VALUES (62, 11, 255, 0, 'Malang', 'Kabupaten', '65163');
INSERT INTO `location` VALUES (63, 11, 289, 0, 'Mojokerto', 'Kabupaten', '61382');
INSERT INTO `location` VALUES (64, 11, 290, 0, 'Mojokerto', 'Kota', '61316');
INSERT INTO `location` VALUES (65, 11, 305, 0, 'Nganjuk', 'Kabupaten', '64414');
INSERT INTO `location` VALUES (66, 11, 306, 0, 'Ngawi', 'Kabupaten', '63219');
INSERT INTO `location` VALUES (67, 11, 317, 0, 'Pacitan', 'Kabupaten', '63512');
INSERT INTO `location` VALUES (68, 11, 330, 0, 'Pamekasan', 'Kabupaten', '69319');
INSERT INTO `location` VALUES (69, 11, 342, 0, 'Pasuruan', 'Kabupaten', '67153');
INSERT INTO `location` VALUES (70, 11, 343, 0, 'Pasuruan', 'Kota', '67118');
INSERT INTO `location` VALUES (71, 11, 363, 0, 'Ponorogo', 'Kabupaten', '63411');
INSERT INTO `location` VALUES (72, 11, 369, 0, 'Probolinggo', 'Kabupaten', '67282');
INSERT INTO `location` VALUES (73, 11, 370, 0, 'Probolinggo', 'Kota', '67215');
INSERT INTO `location` VALUES (74, 11, 390, 0, 'Sampang', 'Kabupaten', '69219');
INSERT INTO `location` VALUES (75, 11, 409, 0, 'Sidoarjo', 'Kabupaten', '61219');
INSERT INTO `location` VALUES (76, 11, 418, 0, 'Situbondo', 'Kabupaten', '68316');
INSERT INTO `location` VALUES (77, 11, 441, 0, 'Sumenep', 'Kabupaten', '69413');
INSERT INTO `location` VALUES (78, 11, 444, 0, 'Surabaya', 'Kota', '60119');
INSERT INTO `location` VALUES (79, 11, 487, 0, 'Trenggalek', 'Kabupaten', '66312');
INSERT INTO `location` VALUES (80, 11, 489, 0, 'Tuban', 'Kabupaten', '62319');
INSERT INTO `location` VALUES (81, 11, 492, 0, 'Tulungagung', 'Kabupaten', '66212');
INSERT INTO `location` VALUES (82, 11, 290, 4088, 'Magersari', 'Kecamatan', '');
INSERT INTO `location` VALUES (83, 11, 290, 4089, 'Prajurit Kulon', 'Kecamatan', '');
INSERT INTO `location` VALUES (84, 15, 19, 0, 'Balikpapan', 'Kota', '76111');
INSERT INTO `location` VALUES (85, 15, 66, 0, 'Berau', 'Kabupaten', '77311');
INSERT INTO `location` VALUES (86, 15, 89, 0, 'Bontang', 'Kota', '75313');
INSERT INTO `location` VALUES (87, 15, 214, 0, 'Kutai Barat', 'Kabupaten', '75711');
INSERT INTO `location` VALUES (88, 15, 215, 0, 'Kutai Kartanegara', 'Kabupaten', '75511');
INSERT INTO `location` VALUES (89, 15, 216, 0, 'Kutai Timur', 'Kabupaten', '75611');
INSERT INTO `location` VALUES (90, 15, 341, 0, 'Paser', 'Kabupaten', '76211');
INSERT INTO `location` VALUES (91, 15, 354, 0, 'Penajam Paser Utara', 'Kabupaten', '76311');
INSERT INTO `location` VALUES (92, 15, 387, 0, 'Samarinda', 'Kota', '75133');
INSERT INTO `location` VALUES (93, 2, 27, 0, 'Bangka', 'Kabupaten', '33212');
INSERT INTO `location` VALUES (94, 2, 28, 0, 'Bangka Barat', 'Kabupaten', '33315');
INSERT INTO `location` VALUES (95, 2, 29, 0, 'Bangka Selatan', 'Kabupaten', '33719');
INSERT INTO `location` VALUES (96, 2, 30, 0, 'Bangka Tengah', 'Kabupaten', '33613');
INSERT INTO `location` VALUES (97, 2, 56, 0, 'Belitung', 'Kabupaten', '33419');
INSERT INTO `location` VALUES (98, 2, 57, 0, 'Belitung Timur', 'Kabupaten', '33519');
INSERT INTO `location` VALUES (99, 2, 334, 0, 'Pangkal Pinang', 'Kota', '33115');
INSERT INTO `location` VALUES (100, 3, 106, 0, 'Cilegon', 'Kota', '42417');
INSERT INTO `location` VALUES (101, 3, 232, 0, 'Lebak', 'Kabupaten', '42319');
INSERT INTO `location` VALUES (102, 3, 331, 0, 'Pandeglang', 'Kabupaten', '42212');
INSERT INTO `location` VALUES (103, 3, 402, 0, 'Serang', 'Kabupaten', '42182');
INSERT INTO `location` VALUES (104, 3, 403, 0, 'Serang', 'Kota', '42111');
INSERT INTO `location` VALUES (105, 3, 455, 0, 'Tangerang', 'Kabupaten', '15914');
INSERT INTO `location` VALUES (106, 3, 456, 0, 'Tangerang', 'Kota', '15111');
INSERT INTO `location` VALUES (107, 3, 457, 0, 'Tangerang Selatan', 'Kota', '15332');
INSERT INTO `location` VALUES (108, 10, 37, 0, 'Banjarnegara', 'Kabupaten', '53419');
INSERT INTO `location` VALUES (109, 10, 41, 0, 'Banyumas', 'Kabupaten', '53114');
INSERT INTO `location` VALUES (110, 10, 49, 0, 'Batang', 'Kabupaten', '51211');
INSERT INTO `location` VALUES (111, 10, 76, 0, 'Blora', 'Kabupaten', '58219');
INSERT INTO `location` VALUES (112, 10, 91, 0, 'Boyolali', 'Kabupaten', '57312');
INSERT INTO `location` VALUES (113, 10, 92, 0, 'Brebes', 'Kabupaten', '52212');
INSERT INTO `location` VALUES (114, 10, 105, 0, 'Cilacap', 'Kabupaten', '53211');
INSERT INTO `location` VALUES (115, 10, 113, 0, 'Demak', 'Kabupaten', '59519');
INSERT INTO `location` VALUES (116, 10, 134, 0, 'Grobogan', 'Kabupaten', '58111');
INSERT INTO `location` VALUES (117, 10, 163, 0, 'Jepara', 'Kabupaten', '59419');
INSERT INTO `location` VALUES (118, 10, 169, 0, 'Karanganyar', 'Kabupaten', '57718');
INSERT INTO `location` VALUES (119, 10, 177, 0, 'Kebumen', 'Kabupaten', '54319');
INSERT INTO `location` VALUES (120, 10, 181, 0, 'Kendal', 'Kabupaten', '51314');
INSERT INTO `location` VALUES (121, 10, 196, 0, 'Klaten', 'Kabupaten', '57411');
INSERT INTO `location` VALUES (122, 10, 209, 0, 'Kudus', 'Kabupaten', '59311');
INSERT INTO `location` VALUES (123, 10, 249, 0, 'Magelang', 'Kabupaten', '56519');
INSERT INTO `location` VALUES (124, 10, 250, 0, 'Magelang', 'Kota', '56133');
INSERT INTO `location` VALUES (125, 10, 344, 0, 'Pati', 'Kabupaten', '59114');
INSERT INTO `location` VALUES (126, 10, 348, 0, 'Pekalongan', 'Kabupaten', '51161');
INSERT INTO `location` VALUES (127, 10, 349, 0, 'Pekalongan', 'Kota', '51122');
INSERT INTO `location` VALUES (128, 10, 352, 0, 'Pemalang', 'Kabupaten', '52319');
INSERT INTO `location` VALUES (129, 10, 375, 0, 'Purbalingga', 'Kabupaten', '53312');
INSERT INTO `location` VALUES (130, 10, 377, 0, 'Purworejo', 'Kabupaten', '54111');
INSERT INTO `location` VALUES (131, 10, 380, 0, 'Rembang', 'Kabupaten', '59219');
INSERT INTO `location` VALUES (132, 10, 386, 0, 'Salatiga', 'Kota', '50711');
INSERT INTO `location` VALUES (133, 10, 398, 0, 'Semarang', 'Kabupaten', '50511');
INSERT INTO `location` VALUES (134, 10, 399, 0, 'Semarang', 'Kota', '50135');
INSERT INTO `location` VALUES (135, 10, 427, 0, 'Sragen', 'Kabupaten', '57211');
INSERT INTO `location` VALUES (136, 10, 433, 0, 'Sukoharjo', 'Kabupaten', '57514');
INSERT INTO `location` VALUES (137, 10, 445, 0, 'Surakarta (Solo)', 'Kota', '57113');
INSERT INTO `location` VALUES (138, 10, 472, 0, 'Tegal', 'Kabupaten', '52419');
INSERT INTO `location` VALUES (139, 10, 473, 0, 'Tegal', 'Kota', '52114');
INSERT INTO `location` VALUES (140, 10, 476, 0, 'Temanggung', 'Kabupaten', '56212');
INSERT INTO `location` VALUES (141, 10, 497, 0, 'Wonogiri', 'Kabupaten', '57619');
INSERT INTO `location` VALUES (142, 10, 498, 0, 'Wonosobo', 'Kabupaten', '56311');
INSERT INTO `location` VALUES (143, 10, 177, 2471, 'Adimulyo', 'Kecamatan', '');
INSERT INTO `location` VALUES (144, 10, 177, 2472, 'Alian/Aliyan', 'Kecamatan', '');
INSERT INTO `location` VALUES (145, 10, 177, 2473, 'Ambal', 'Kecamatan', '');
INSERT INTO `location` VALUES (146, 10, 177, 2474, 'Ayah', 'Kecamatan', '');
INSERT INTO `location` VALUES (147, 10, 177, 2475, 'Bonorowo', 'Kecamatan', '');
INSERT INTO `location` VALUES (148, 10, 177, 2476, 'Buayan', 'Kecamatan', '');
INSERT INTO `location` VALUES (149, 10, 177, 2477, 'Buluspesantren', 'Kecamatan', '');
INSERT INTO `location` VALUES (150, 10, 177, 2478, 'Gombong', 'Kecamatan', '');
INSERT INTO `location` VALUES (151, 10, 177, 2479, 'Karanganyar', 'Kecamatan', '');
INSERT INTO `location` VALUES (152, 10, 177, 2480, 'Karanggayam', 'Kecamatan', '');
INSERT INTO `location` VALUES (153, 10, 177, 2481, 'Karangsambung', 'Kecamatan', '');
INSERT INTO `location` VALUES (154, 10, 177, 2482, 'Kebumen', 'Kecamatan', '');
INSERT INTO `location` VALUES (155, 10, 177, 2483, 'Klirong', 'Kecamatan', '');
INSERT INTO `location` VALUES (156, 10, 177, 2484, 'Kutowinangun', 'Kecamatan', '');
INSERT INTO `location` VALUES (157, 10, 177, 2485, 'Kuwarasan', 'Kecamatan', '');
INSERT INTO `location` VALUES (158, 10, 177, 2486, 'Mirit', 'Kecamatan', '');
INSERT INTO `location` VALUES (159, 10, 177, 2487, 'Padureso', 'Kecamatan', '');
INSERT INTO `location` VALUES (160, 10, 177, 2488, 'Pejagoan', 'Kecamatan', '');
INSERT INTO `location` VALUES (161, 10, 177, 2489, 'Petanahan', 'Kecamatan', '');
INSERT INTO `location` VALUES (162, 10, 177, 2490, 'Poncowarno', 'Kecamatan', '');
INSERT INTO `location` VALUES (163, 10, 177, 2491, 'Prembun', 'Kecamatan', '');
INSERT INTO `location` VALUES (164, 10, 177, 2492, 'Puring', 'Kecamatan', '');
INSERT INTO `location` VALUES (165, 10, 177, 2493, 'Rowokele', 'Kecamatan', '');
INSERT INTO `location` VALUES (166, 10, 177, 2494, 'Sadang', 'Kecamatan', '');
INSERT INTO `location` VALUES (167, 10, 177, 2495, 'Sempor', 'Kecamatan', '');
INSERT INTO `location` VALUES (168, 10, 177, 2496, 'Sruweng', 'Kecamatan', '');
INSERT INTO `location` VALUES (169, 11, 74, 974, 'Bakung', 'Kecamatan', '');
INSERT INTO `location` VALUES (170, 11, 74, 975, 'Binangun', 'Kecamatan', '');
INSERT INTO `location` VALUES (171, 11, 74, 976, 'Doko', 'Kecamatan', '');
INSERT INTO `location` VALUES (172, 11, 74, 977, 'Gandusari', 'Kecamatan', '');
INSERT INTO `location` VALUES (173, 11, 74, 978, 'Garum', 'Kecamatan', '');
INSERT INTO `location` VALUES (174, 11, 74, 979, 'Kademangan', 'Kecamatan', '');
INSERT INTO `location` VALUES (175, 11, 74, 980, 'Kanigoro', 'Kecamatan', '');
INSERT INTO `location` VALUES (176, 11, 74, 981, 'Kesamben', 'Kecamatan', '');
INSERT INTO `location` VALUES (177, 11, 74, 982, 'Nglegok', 'Kecamatan', '');
INSERT INTO `location` VALUES (178, 11, 74, 983, 'Panggungrejo', 'Kecamatan', '');
INSERT INTO `location` VALUES (179, 11, 74, 984, 'Ponggok', 'Kecamatan', '');
INSERT INTO `location` VALUES (180, 11, 74, 985, 'Sanan Kulon', 'Kecamatan', '');
INSERT INTO `location` VALUES (181, 11, 74, 986, 'Selopuro', 'Kecamatan', '');
INSERT INTO `location` VALUES (182, 11, 74, 987, 'Selorejo', 'Kecamatan', '');
INSERT INTO `location` VALUES (183, 11, 74, 988, 'Srengat', 'Kecamatan', '');
INSERT INTO `location` VALUES (184, 11, 74, 989, 'Sutojayan', 'Kecamatan', '');
INSERT INTO `location` VALUES (185, 11, 74, 990, 'Talun', 'Kecamatan', '');
INSERT INTO `location` VALUES (186, 11, 74, 991, 'Udanawu', 'Kecamatan', '');
INSERT INTO `location` VALUES (187, 11, 74, 992, 'Wates', 'Kecamatan', '');
INSERT INTO `location` VALUES (188, 11, 74, 993, 'Wlingi', 'Kecamatan', '');
INSERT INTO `location` VALUES (189, 11, 74, 994, 'Wonodadi', 'Kecamatan', '');
INSERT INTO `location` VALUES (190, 11, 74, 995, 'Wonotirto', 'Kecamatan', '');
INSERT INTO `location` VALUES (191, 11, 255, 3601, 'Ampelgading', 'Kecamatan', '');
INSERT INTO `location` VALUES (192, 11, 255, 3602, 'Bantur', 'Kecamatan', '');
INSERT INTO `location` VALUES (193, 11, 255, 3603, 'Bululawang', 'Kecamatan', '');
INSERT INTO `location` VALUES (194, 11, 255, 3604, 'Dampit', 'Kecamatan', '');
INSERT INTO `location` VALUES (195, 11, 255, 3605, 'Dau', 'Kecamatan', '');
INSERT INTO `location` VALUES (196, 11, 255, 3606, 'Donomulyo', 'Kecamatan', '');
INSERT INTO `location` VALUES (197, 11, 255, 3607, 'Gedangan', 'Kecamatan', '');
INSERT INTO `location` VALUES (198, 11, 255, 3608, 'Gondanglegi', 'Kecamatan', '');
INSERT INTO `location` VALUES (199, 11, 255, 3609, 'Jabung', 'Kecamatan', '');
INSERT INTO `location` VALUES (200, 11, 255, 3610, 'Kalipare', 'Kecamatan', '');
INSERT INTO `location` VALUES (201, 11, 255, 3611, 'Karangploso', 'Kecamatan', '');
INSERT INTO `location` VALUES (202, 11, 255, 3612, 'Kasembon', 'Kecamatan', '');
INSERT INTO `location` VALUES (203, 11, 255, 3613, 'Kepanjen', 'Kecamatan', '');
INSERT INTO `location` VALUES (204, 11, 255, 3614, 'Kromengan', 'Kecamatan', '');
INSERT INTO `location` VALUES (205, 11, 255, 3615, 'Lawang', 'Kecamatan', '');
INSERT INTO `location` VALUES (206, 11, 255, 3616, 'Ngajung (Ngajum)', 'Kecamatan', '');
INSERT INTO `location` VALUES (207, 11, 255, 3617, 'Ngantang', 'Kecamatan', '');
INSERT INTO `location` VALUES (208, 11, 255, 3618, 'Pagak', 'Kecamatan', '');
INSERT INTO `location` VALUES (209, 11, 255, 3619, 'Pagelaran', 'Kecamatan', '');
INSERT INTO `location` VALUES (210, 11, 255, 3620, 'Pakis', 'Kecamatan', '');
INSERT INTO `location` VALUES (211, 11, 255, 3621, 'Pakisaji', 'Kecamatan', '');
INSERT INTO `location` VALUES (212, 11, 255, 3622, 'Poncokusumo', 'Kecamatan', '');
INSERT INTO `location` VALUES (213, 11, 255, 3623, 'Pujon', 'Kecamatan', '');
INSERT INTO `location` VALUES (214, 11, 255, 3624, 'Singosari', 'Kecamatan', '');
INSERT INTO `location` VALUES (215, 11, 255, 3625, 'Sumbermanjing Wetan', 'Kecamatan', '');
INSERT INTO `location` VALUES (216, 11, 255, 3626, 'Sumberpucung', 'Kecamatan', '');
INSERT INTO `location` VALUES (217, 11, 255, 3627, 'Tajinan', 'Kecamatan', '');
INSERT INTO `location` VALUES (218, 11, 255, 3628, 'Tirtoyudo', 'Kecamatan', '');
INSERT INTO `location` VALUES (219, 11, 255, 3629, 'Tumpang', 'Kecamatan', '');
INSERT INTO `location` VALUES (220, 11, 255, 3630, 'Turen', 'Kecamatan', '');
INSERT INTO `location` VALUES (221, 11, 255, 3631, 'Wagir', 'Kecamatan', '');
INSERT INTO `location` VALUES (222, 11, 255, 3632, 'Wajak', 'Kecamatan', '');
INSERT INTO `location` VALUES (223, 11, 255, 3633, 'Wonosari', 'Kecamatan', '');
INSERT INTO `location` VALUES (224, 6, 151, 0, 'Jakarta Barat', 'Kota', '11220');
INSERT INTO `location` VALUES (225, 6, 152, 0, 'Jakarta Pusat', 'Kota', '10540');
INSERT INTO `location` VALUES (226, 6, 153, 0, 'Jakarta Selatan', 'Kota', '12230');
INSERT INTO `location` VALUES (227, 6, 154, 0, 'Jakarta Timur', 'Kota', '13330');
INSERT INTO `location` VALUES (228, 6, 155, 0, 'Jakarta Utara', 'Kota', '14140');
INSERT INTO `location` VALUES (229, 6, 189, 0, 'Kepulauan Seribu', 'Kabupaten', '14550');
INSERT INTO `location` VALUES (230, 6, 151, 2087, 'Cengkareng', 'Kecamatan', '');
INSERT INTO `location` VALUES (231, 6, 151, 2088, 'Grogol Petamburan', 'Kecamatan', '');
INSERT INTO `location` VALUES (232, 6, 151, 2089, 'Kalideres', 'Kecamatan', '');
INSERT INTO `location` VALUES (233, 6, 151, 2090, 'Kebon Jeruk', 'Kecamatan', '');
INSERT INTO `location` VALUES (234, 6, 151, 2091, 'Kembangan', 'Kecamatan', '');
INSERT INTO `location` VALUES (235, 6, 151, 2092, 'Palmerah', 'Kecamatan', '');
INSERT INTO `location` VALUES (236, 6, 151, 2093, 'Taman Sari', 'Kecamatan', '');
INSERT INTO `location` VALUES (237, 6, 151, 2094, 'Tambora', 'Kecamatan', '');
INSERT INTO `location` VALUES (238, 4, 62, 0, 'Bengkulu', 'Kota', '38229');
INSERT INTO `location` VALUES (239, 4, 63, 0, 'Bengkulu Selatan', 'Kabupaten', '38519');
INSERT INTO `location` VALUES (240, 4, 64, 0, 'Bengkulu Tengah', 'Kabupaten', '38319');
INSERT INTO `location` VALUES (241, 4, 65, 0, 'Bengkulu Utara', 'Kabupaten', '38619');
INSERT INTO `location` VALUES (242, 4, 175, 0, 'Kaur', 'Kabupaten', '38911');
INSERT INTO `location` VALUES (243, 4, 183, 0, 'Kepahiang', 'Kabupaten', '39319');
INSERT INTO `location` VALUES (244, 4, 233, 0, 'Lebong', 'Kabupaten', '39264');
INSERT INTO `location` VALUES (245, 4, 294, 0, 'Muko Muko', 'Kabupaten', '38715');
INSERT INTO `location` VALUES (246, 4, 379, 0, 'Rejang Lebong', 'Kabupaten', '39112');
INSERT INTO `location` VALUES (247, 4, 397, 0, 'Seluma', 'Kabupaten', '38811');
INSERT INTO `location` VALUES (248, 4, 65, 862, 'Air Besi', 'Kecamatan', '');
INSERT INTO `location` VALUES (249, 4, 65, 863, 'Air Napal', 'Kecamatan', '');
INSERT INTO `location` VALUES (250, 4, 65, 864, 'Air Padang', 'Kecamatan', '');
INSERT INTO `location` VALUES (251, 4, 65, 865, 'Arga Makmur', 'Kecamatan', '');
INSERT INTO `location` VALUES (252, 4, 65, 866, 'Arma Jaya', 'Kecamatan', '');
INSERT INTO `location` VALUES (253, 4, 65, 867, 'Batik Nau', 'Kecamatan', '');
INSERT INTO `location` VALUES (254, 4, 65, 868, 'Enggano', 'Kecamatan', '');
INSERT INTO `location` VALUES (255, 4, 65, 869, 'Giri Mulia', 'Kecamatan', '');
INSERT INTO `location` VALUES (256, 4, 65, 870, 'Hulu Palik', 'Kecamatan', '');
INSERT INTO `location` VALUES (257, 4, 65, 871, 'Kerkap', 'Kecamatan', '');
INSERT INTO `location` VALUES (258, 4, 65, 872, 'Ketahun', 'Kecamatan', '');
INSERT INTO `location` VALUES (259, 4, 65, 873, 'Lais', 'Kecamatan', '');
INSERT INTO `location` VALUES (260, 4, 65, 874, 'Napal Putih', 'Kecamatan', '');
INSERT INTO `location` VALUES (261, 4, 65, 875, 'Padang Jaya', 'Kecamatan', '');
INSERT INTO `location` VALUES (262, 4, 65, 876, 'Putri Hijau', 'Kecamatan', '');
INSERT INTO `location` VALUES (263, 4, 65, 877, 'Tanjung Agung Palik', 'Kecamatan', '');
INSERT INTO `location` VALUES (264, 4, 65, 878, 'Ulok Kupai', 'Kecamatan', '');
INSERT INTO `location` VALUES (265, 5, 39, 0, 'Bantul', 'Kabupaten', '55715');
INSERT INTO `location` VALUES (266, 5, 135, 0, 'Gunung Kidul', 'Kabupaten', '55812');
INSERT INTO `location` VALUES (267, 5, 210, 0, 'Kulon Progo', 'Kabupaten', '55611');
INSERT INTO `location` VALUES (268, 5, 419, 0, 'Sleman', 'Kabupaten', '55513');
INSERT INTO `location` VALUES (269, 5, 501, 0, 'Yogyakarta', 'Kota', '55111');
INSERT INTO `location` VALUES (270, 5, 39, 537, 'Bambang Lipuro', 'Kecamatan', '');
INSERT INTO `location` VALUES (271, 5, 39, 538, 'Banguntapan', 'Kecamatan', '');
INSERT INTO `location` VALUES (272, 5, 39, 539, 'Bantul', 'Kecamatan', '');
INSERT INTO `location` VALUES (273, 5, 39, 540, 'Dlingo', 'Kecamatan', '');
INSERT INTO `location` VALUES (274, 5, 39, 541, 'Imogiri', 'Kecamatan', '');
INSERT INTO `location` VALUES (275, 5, 39, 542, 'Jetis', 'Kecamatan', '');
INSERT INTO `location` VALUES (276, 5, 39, 543, 'Kasihan', 'Kecamatan', '');
INSERT INTO `location` VALUES (277, 5, 39, 544, 'Kretek', 'Kecamatan', '');
INSERT INTO `location` VALUES (278, 5, 39, 545, 'Pajangan', 'Kecamatan', '');
INSERT INTO `location` VALUES (279, 5, 39, 546, 'Pandak', 'Kecamatan', '');
INSERT INTO `location` VALUES (280, 5, 39, 547, 'Piyungan', 'Kecamatan', '');
INSERT INTO `location` VALUES (281, 5, 39, 548, 'Pleret', 'Kecamatan', '');
INSERT INTO `location` VALUES (282, 5, 39, 549, 'Pundong', 'Kecamatan', '');
INSERT INTO `location` VALUES (283, 5, 39, 550, 'Sanden', 'Kecamatan', '');
INSERT INTO `location` VALUES (284, 5, 39, 551, 'Sedayu', 'Kecamatan', '');
INSERT INTO `location` VALUES (285, 5, 39, 552, 'Sewon', 'Kecamatan', '');
INSERT INTO `location` VALUES (286, 5, 39, 553, 'Srandakan', 'Kecamatan', '');
INSERT INTO `location` VALUES (287, 8, 50, 0, 'Batang Hari', 'Kabupaten', '36613');
INSERT INTO `location` VALUES (288, 8, 97, 0, 'Bungo', 'Kabupaten', '37216');
INSERT INTO `location` VALUES (289, 8, 156, 0, 'Jambi', 'Kota', '36111');
INSERT INTO `location` VALUES (290, 8, 194, 0, 'Kerinci', 'Kabupaten', '37167');
INSERT INTO `location` VALUES (291, 8, 280, 0, 'Merangin', 'Kabupaten', '37319');
INSERT INTO `location` VALUES (292, 8, 293, 0, 'Muaro Jambi', 'Kabupaten', '36311');
INSERT INTO `location` VALUES (293, 8, 393, 0, 'Sarolangun', 'Kabupaten', '37419');
INSERT INTO `location` VALUES (294, 8, 442, 0, 'Sungaipenuh', 'Kota', '37113');
INSERT INTO `location` VALUES (295, 8, 460, 0, 'Tanjung Jabung Barat', 'Kabupaten', '36513');
INSERT INTO `location` VALUES (296, 8, 461, 0, 'Tanjung Jabung Timur', 'Kabupaten', '36719');
INSERT INTO `location` VALUES (297, 8, 471, 0, 'Tebo', 'Kabupaten', '37519');
INSERT INTO `location` VALUES (298, 8, 156, 2129, 'Danau Teluk', 'Kecamatan', '');
INSERT INTO `location` VALUES (299, 8, 156, 2130, 'Jambi Selatan', 'Kecamatan', '');
INSERT INTO `location` VALUES (300, 8, 156, 2131, 'Jambi Timur', 'Kecamatan', '');
INSERT INTO `location` VALUES (301, 8, 156, 2132, 'Jelutung', 'Kecamatan', '');
INSERT INTO `location` VALUES (302, 8, 156, 2133, 'Kota Baru', 'Kecamatan', '');
INSERT INTO `location` VALUES (303, 8, 156, 2134, 'Pasar Jambi', 'Kecamatan', '');
INSERT INTO `location` VALUES (304, 8, 156, 2135, 'Pelayangan', 'Kecamatan', '');
INSERT INTO `location` VALUES (305, 8, 156, 2136, 'Telanaipura', 'Kecamatan', '');
INSERT INTO `location` VALUES (306, 11, 256, 3634, 'Blimbing', 'Kecamatan', '');
INSERT INTO `location` VALUES (307, 11, 256, 3635, 'Kedungkandang', 'Kecamatan', '');
INSERT INTO `location` VALUES (308, 11, 256, 3636, 'Klojen', 'Kecamatan', '');
INSERT INTO `location` VALUES (309, 11, 256, 3637, 'Lowokwaru', 'Kecamatan', '');
INSERT INTO `location` VALUES (310, 11, 256, 3638, 'Sukun', 'Kecamatan', '');
INSERT INTO `location` VALUES (311, 1, 32, 472, 'Bangli', 'Kecamatan', '');
INSERT INTO `location` VALUES (312, 1, 32, 473, 'Kintamani', 'Kecamatan', '');
INSERT INTO `location` VALUES (313, 1, 32, 474, 'Susut', 'Kecamatan', '');
INSERT INTO `location` VALUES (314, 1, 32, 475, 'Tembuku', 'Kecamatan', '');
INSERT INTO `location` VALUES (315, 7, 77, 0, 'Boalemo', 'Kabupaten', '96319');
INSERT INTO `location` VALUES (316, 7, 88, 0, 'Bone Bolango', 'Kabupaten', '96511');
INSERT INTO `location` VALUES (317, 7, 129, 0, 'Gorontalo', 'Kabupaten', '96218');
INSERT INTO `location` VALUES (318, 7, 130, 0, 'Gorontalo', 'Kota', '96115');
INSERT INTO `location` VALUES (319, 7, 131, 0, 'Gorontalo Utara', 'Kabupaten', '96611');
INSERT INTO `location` VALUES (320, 7, 361, 0, 'Pohuwato', 'Kabupaten', '96419');
INSERT INTO `location` VALUES (321, 11, 133, 1828, 'Balong Panggang', 'Kecamatan', '');
INSERT INTO `location` VALUES (322, 11, 133, 1829, 'Benjeng', 'Kecamatan', '');
INSERT INTO `location` VALUES (323, 11, 133, 1830, 'Bungah', 'Kecamatan', '');
INSERT INTO `location` VALUES (324, 11, 133, 1831, 'Cerme', 'Kecamatan', '');
INSERT INTO `location` VALUES (325, 11, 133, 1832, 'Driyorejo', 'Kecamatan', '');
INSERT INTO `location` VALUES (326, 11, 133, 1833, 'Duduk Sampeyan', 'Kecamatan', '');
INSERT INTO `location` VALUES (327, 11, 133, 1834, 'Dukun', 'Kecamatan', '');
INSERT INTO `location` VALUES (328, 11, 133, 1835, 'Gresik', 'Kecamatan', '');
INSERT INTO `location` VALUES (329, 11, 133, 1836, 'Kebomas', 'Kecamatan', '');
INSERT INTO `location` VALUES (330, 11, 133, 1837, 'Kedamean', 'Kecamatan', '');
INSERT INTO `location` VALUES (331, 11, 133, 1838, 'Manyar', 'Kecamatan', '');
INSERT INTO `location` VALUES (332, 11, 133, 1839, 'Menganti', 'Kecamatan', '');
INSERT INTO `location` VALUES (333, 11, 133, 1840, 'Panceng', 'Kecamatan', '');
INSERT INTO `location` VALUES (334, 11, 133, 1841, 'Sangkapura', 'Kecamatan', '');
INSERT INTO `location` VALUES (335, 11, 133, 1842, 'Sidayu', 'Kecamatan', '');
INSERT INTO `location` VALUES (336, 11, 133, 1843, 'Tambak', 'Kecamatan', '');
INSERT INTO `location` VALUES (337, 11, 133, 1844, 'Ujung Pangkah', 'Kecamatan', '');
INSERT INTO `location` VALUES (338, 11, 133, 1845, 'Wringin Anom', 'Kecamatan', '');
INSERT INTO `location` VALUES (339, 11, 222, 3113, 'Babat', 'Kecamatan', '');
INSERT INTO `location` VALUES (340, 11, 222, 3114, 'Bluluk', 'Kecamatan', '');
INSERT INTO `location` VALUES (341, 11, 222, 3115, 'Brondong', 'Kecamatan', '');
INSERT INTO `location` VALUES (342, 11, 222, 3116, 'Deket', 'Kecamatan', '');
INSERT INTO `location` VALUES (343, 11, 222, 3117, 'Glagah', 'Kecamatan', '');
INSERT INTO `location` VALUES (344, 11, 222, 3118, 'Kalitengah', 'Kecamatan', '');
INSERT INTO `location` VALUES (345, 11, 222, 3119, 'Karang Geneng', 'Kecamatan', '');
INSERT INTO `location` VALUES (346, 11, 222, 3120, 'Karangbinangun', 'Kecamatan', '');
INSERT INTO `location` VALUES (347, 11, 222, 3121, 'Kedungpring', 'Kecamatan', '');
INSERT INTO `location` VALUES (348, 11, 222, 3122, 'Kembangbahu', 'Kecamatan', '');
INSERT INTO `location` VALUES (349, 11, 222, 3123, 'Lamongan', 'Kecamatan', '');
INSERT INTO `location` VALUES (350, 11, 222, 3124, 'Laren', 'Kecamatan', '');
INSERT INTO `location` VALUES (351, 11, 222, 3125, 'Maduran', 'Kecamatan', '');
INSERT INTO `location` VALUES (352, 11, 222, 3126, 'Mantup', 'Kecamatan', '');
INSERT INTO `location` VALUES (353, 11, 222, 3127, 'Modo', 'Kecamatan', '');
INSERT INTO `location` VALUES (354, 11, 222, 3128, 'Ngimbang', 'Kecamatan', '');
INSERT INTO `location` VALUES (355, 11, 222, 3129, 'Paciran', 'Kecamatan', '');
INSERT INTO `location` VALUES (356, 11, 222, 3130, 'Pucuk', 'Kecamatan', '');
INSERT INTO `location` VALUES (357, 11, 222, 3131, 'Sambeng', 'Kecamatan', '');
INSERT INTO `location` VALUES (358, 11, 222, 3132, 'Sarirejo', 'Kecamatan', '');
INSERT INTO `location` VALUES (359, 11, 222, 3133, 'Sekaran', 'Kecamatan', '');
INSERT INTO `location` VALUES (360, 11, 222, 3134, 'Solokuro', 'Kecamatan', '');
INSERT INTO `location` VALUES (361, 11, 222, 3135, 'Sugio', 'Kecamatan', '');
INSERT INTO `location` VALUES (362, 11, 222, 3136, 'Sukodadi', 'Kecamatan', '');
INSERT INTO `location` VALUES (363, 11, 222, 3137, 'Sukorame', 'Kecamatan', '');
INSERT INTO `location` VALUES (364, 11, 222, 3138, 'Tikung', 'Kecamatan', '');
INSERT INTO `location` VALUES (365, 11, 222, 3139, 'Turi', 'Kecamatan', '');
INSERT INTO `location` VALUES (366, 11, 51, 708, 'Batu', 'Kecamatan', '');
INSERT INTO `location` VALUES (367, 11, 51, 709, 'Bumiaji', 'Kecamatan', '');
INSERT INTO `location` VALUES (368, 11, 51, 710, 'Junrejo', 'Kecamatan', '');
INSERT INTO `location` VALUES (369, 2, 27, 426, 'Bakam', 'Kecamatan', '');
INSERT INTO `location` VALUES (370, 2, 27, 427, 'Belinyu', 'Kecamatan', '');
INSERT INTO `location` VALUES (371, 2, 27, 428, 'Mendo Barat', 'Kecamatan', '');
INSERT INTO `location` VALUES (372, 2, 27, 429, 'Merawang', 'Kecamatan', '');
INSERT INTO `location` VALUES (373, 2, 27, 430, 'Pemali', 'Kecamatan', '');
INSERT INTO `location` VALUES (374, 2, 27, 431, 'Puding Besar', 'Kecamatan', '');
INSERT INTO `location` VALUES (375, 2, 27, 432, 'Riau Silip', 'Kecamatan', '');
INSERT INTO `location` VALUES (376, 2, 27, 433, 'Sungai Liat', 'Kecamatan', '');
INSERT INTO `location` VALUES (377, 1, 17, 258, 'Abiansemal', 'Kecamatan', '');
INSERT INTO `location` VALUES (378, 1, 17, 259, 'Kuta', 'Kecamatan', '');
INSERT INTO `location` VALUES (379, 1, 17, 260, 'Kuta Selatan', 'Kecamatan', '');
INSERT INTO `location` VALUES (380, 1, 17, 261, 'Kuta Utara', 'Kecamatan', '');
INSERT INTO `location` VALUES (381, 1, 17, 262, 'Mengwi', 'Kecamatan', '');
INSERT INTO `location` VALUES (382, 1, 17, 263, 'Petang', 'Kecamatan', '');
INSERT INTO `location` VALUES (383, 6, 152, 2095, 'Cempaka Putih', 'Kecamatan', '');
INSERT INTO `location` VALUES (384, 6, 152, 2096, 'Gambir', 'Kecamatan', '');
INSERT INTO `location` VALUES (385, 6, 152, 2097, 'Johar Baru', 'Kecamatan', '');
INSERT INTO `location` VALUES (386, 6, 152, 2098, 'Kemayoran', 'Kecamatan', '');
INSERT INTO `location` VALUES (387, 6, 152, 2099, 'Menteng', 'Kecamatan', '');
INSERT INTO `location` VALUES (388, 6, 152, 2100, 'Sawah Besar', 'Kecamatan', '');
INSERT INTO `location` VALUES (389, 6, 152, 2101, 'Senen', 'Kecamatan', '');
INSERT INTO `location` VALUES (390, 6, 152, 2102, 'Tanah Abang', 'Kecamatan', '');
INSERT INTO `location` VALUES (391, 6, 153, 2103, 'Cilandak', 'Kecamatan', '');
INSERT INTO `location` VALUES (392, 6, 153, 2104, 'Jagakarsa', 'Kecamatan', '');
INSERT INTO `location` VALUES (393, 6, 153, 2105, 'Kebayoran Baru', 'Kecamatan', '');
INSERT INTO `location` VALUES (394, 6, 153, 2106, 'Kebayoran Lama', 'Kecamatan', '');
INSERT INTO `location` VALUES (395, 6, 153, 2107, 'Mampang Prapatan', 'Kecamatan', '');
INSERT INTO `location` VALUES (396, 6, 153, 2108, 'Pancoran', 'Kecamatan', '');
INSERT INTO `location` VALUES (397, 6, 153, 2109, 'Pasar Minggu', 'Kecamatan', '');
INSERT INTO `location` VALUES (398, 6, 153, 2110, 'Pesanggrahan', 'Kecamatan', '');
INSERT INTO `location` VALUES (399, 6, 153, 2111, 'Setia Budi', 'Kecamatan', '');
INSERT INTO `location` VALUES (400, 6, 153, 2112, 'Tebet', 'Kecamatan', '');
INSERT INTO `location` VALUES (401, 11, 289, 4070, 'Bangsal', 'Kecamatan', '');
INSERT INTO `location` VALUES (402, 11, 289, 4071, 'Dawar Blandong', 'Kecamatan', '');
INSERT INTO `location` VALUES (403, 11, 289, 4072, 'Dlanggu', 'Kecamatan', '');
INSERT INTO `location` VALUES (404, 11, 289, 4073, 'Gedeg', 'Kecamatan', '');
INSERT INTO `location` VALUES (405, 11, 289, 4074, 'Gondang', 'Kecamatan', '');
INSERT INTO `location` VALUES (406, 11, 289, 4075, 'Jatirejo', 'Kecamatan', '');
INSERT INTO `location` VALUES (407, 11, 289, 4076, 'Jetis', 'Kecamatan', '');
INSERT INTO `location` VALUES (408, 11, 289, 4077, 'Kemlagi', 'Kecamatan', '');
INSERT INTO `location` VALUES (409, 11, 289, 4078, 'Kutorejo', 'Kecamatan', '');
INSERT INTO `location` VALUES (410, 11, 289, 4079, 'Mojoanyar', 'Kecamatan', '');
INSERT INTO `location` VALUES (411, 11, 289, 4080, 'Mojosari', 'Kecamatan', '');
INSERT INTO `location` VALUES (412, 11, 289, 4081, 'Ngoro', 'Kecamatan', '');
INSERT INTO `location` VALUES (413, 11, 289, 4082, 'Pacet', 'Kecamatan', '');
INSERT INTO `location` VALUES (414, 11, 289, 4083, 'Pungging', 'Kecamatan', '');
INSERT INTO `location` VALUES (415, 11, 289, 4084, 'Puri', 'Kecamatan', '');
INSERT INTO `location` VALUES (416, 11, 289, 4085, 'Sooko', 'Kecamatan', '');
INSERT INTO `location` VALUES (417, 11, 289, 4086, 'Trawas', 'Kecamatan', '');
INSERT INTO `location` VALUES (418, 11, 289, 4087, 'Trowulan', 'Kecamatan', '');
INSERT INTO `location` VALUES (419, 6, 189, 2622, 'Kepulauan Seribu Selatan', 'Kecamatan', '');
INSERT INTO `location` VALUES (420, 6, 189, 2623, 'Kepulauan Seribu Utara', 'Kecamatan', '');
INSERT INTO `location` VALUES (421, 6, 154, 2113, 'Cakung', 'Kecamatan', '');
INSERT INTO `location` VALUES (422, 6, 154, 2114, 'Cipayung', 'Kecamatan', '');
INSERT INTO `location` VALUES (423, 6, 154, 2115, 'Ciracas', 'Kecamatan', '');
INSERT INTO `location` VALUES (424, 6, 154, 2116, 'Duren Sawit', 'Kecamatan', '');
INSERT INTO `location` VALUES (425, 6, 154, 2117, 'Jatinegara', 'Kecamatan', '');
INSERT INTO `location` VALUES (426, 6, 154, 2118, 'Kramat Jati', 'Kecamatan', '');
INSERT INTO `location` VALUES (427, 6, 154, 2119, 'Makasar', 'Kecamatan', '');
INSERT INTO `location` VALUES (428, 6, 154, 2120, 'Matraman', 'Kecamatan', '');
INSERT INTO `location` VALUES (429, 6, 154, 2121, 'Pasar Rebo', 'Kecamatan', '');
INSERT INTO `location` VALUES (430, 6, 154, 2122, 'Pulo Gadung', 'Kecamatan', '');
INSERT INTO `location` VALUES (431, 6, 155, 2123, 'Cilincing', 'Kecamatan', '');
INSERT INTO `location` VALUES (432, 6, 155, 2124, 'Kelapa Gading', 'Kecamatan', '');
INSERT INTO `location` VALUES (433, 6, 155, 2125, 'Koja', 'Kecamatan', '');
INSERT INTO `location` VALUES (434, 6, 155, 2126, 'Pademangan', 'Kecamatan', '');
INSERT INTO `location` VALUES (435, 6, 155, 2127, 'Penjaringan', 'Kecamatan', '');
INSERT INTO `location` VALUES (436, 6, 155, 2128, 'Tanjung Priok', 'Kecamatan', '');
INSERT INTO `location` VALUES (437, 9, 22, 0, 'Bandung', 'Kabupaten', '40311');
INSERT INTO `location` VALUES (438, 9, 23, 0, 'Bandung', 'Kota', '40111');
INSERT INTO `location` VALUES (439, 9, 24, 0, 'Bandung Barat', 'Kabupaten', '40721');
INSERT INTO `location` VALUES (440, 9, 34, 0, 'Banjar', 'Kota', '46311');
INSERT INTO `location` VALUES (441, 9, 54, 0, 'Bekasi', 'Kabupaten', '17837');
INSERT INTO `location` VALUES (442, 9, 55, 0, 'Bekasi', 'Kota', '17121');
INSERT INTO `location` VALUES (443, 9, 78, 0, 'Bogor', 'Kabupaten', '16911');
INSERT INTO `location` VALUES (444, 9, 79, 0, 'Bogor', 'Kota', '16119');
INSERT INTO `location` VALUES (445, 9, 103, 0, 'Ciamis', 'Kabupaten', '46211');
INSERT INTO `location` VALUES (446, 9, 104, 0, 'Cianjur', 'Kabupaten', '43217');
INSERT INTO `location` VALUES (447, 9, 107, 0, 'Cimahi', 'Kota', '40512');
INSERT INTO `location` VALUES (448, 9, 108, 0, 'Cirebon', 'Kabupaten', '45611');
INSERT INTO `location` VALUES (449, 9, 109, 0, 'Cirebon', 'Kota', '45116');
INSERT INTO `location` VALUES (450, 9, 115, 0, 'Depok', 'Kota', '16416');
INSERT INTO `location` VALUES (451, 9, 126, 0, 'Garut', 'Kabupaten', '44126');
INSERT INTO `location` VALUES (452, 9, 149, 0, 'Indramayu', 'Kabupaten', '45214');
INSERT INTO `location` VALUES (453, 9, 171, 0, 'Karawang', 'Kabupaten', '41311');
INSERT INTO `location` VALUES (454, 9, 211, 0, 'Kuningan', 'Kabupaten', '45511');
INSERT INTO `location` VALUES (455, 9, 252, 0, 'Majalengka', 'Kabupaten', '45412');
INSERT INTO `location` VALUES (456, 9, 332, 0, 'Pangandaran', 'Kabupaten', '46511');
INSERT INTO `location` VALUES (457, 9, 376, 0, 'Purwakarta', 'Kabupaten', '41119');
INSERT INTO `location` VALUES (458, 9, 428, 0, 'Subang', 'Kabupaten', '41215');
INSERT INTO `location` VALUES (459, 9, 430, 0, 'Sukabumi', 'Kabupaten', '43311');
INSERT INTO `location` VALUES (460, 9, 431, 0, 'Sukabumi', 'Kota', '43114');
INSERT INTO `location` VALUES (461, 9, 440, 0, 'Sumedang', 'Kabupaten', '45326');
INSERT INTO `location` VALUES (462, 9, 468, 0, 'Tasikmalaya', 'Kabupaten', '46411');
INSERT INTO `location` VALUES (463, 9, 469, 0, 'Tasikmalaya', 'Kota', '46116');
INSERT INTO `location` VALUES (464, 9, 431, 5965, 'Baros', 'Kecamatan', '');
INSERT INTO `location` VALUES (465, 9, 431, 5966, 'Cibeureum', 'Kecamatan', '');
INSERT INTO `location` VALUES (466, 9, 431, 5967, 'Cikole', 'Kecamatan', '');
INSERT INTO `location` VALUES (467, 9, 431, 5968, 'Citamiang', 'Kecamatan', '');
INSERT INTO `location` VALUES (468, 9, 431, 5969, 'Gunung Puyuh', 'Kecamatan', '');
INSERT INTO `location` VALUES (469, 9, 431, 5970, 'Lembursitu', 'Kecamatan', '');
INSERT INTO `location` VALUES (470, 9, 431, 5971, 'Warudoyong', 'Kecamatan', '');
INSERT INTO `location` VALUES (471, 9, 430, 5918, 'Bantargadung', 'Kecamatan', '');
INSERT INTO `location` VALUES (472, 9, 430, 5919, 'Bojong Genteng', 'Kecamatan', '');
INSERT INTO `location` VALUES (473, 9, 430, 5920, 'Caringin', 'Kecamatan', '');
INSERT INTO `location` VALUES (474, 9, 430, 5921, 'Ciambar', 'Kecamatan', '');
INSERT INTO `location` VALUES (475, 9, 430, 5922, 'Cibadak', 'Kecamatan', '');
INSERT INTO `location` VALUES (476, 9, 430, 5923, 'Cibitung', 'Kecamatan', '');
INSERT INTO `location` VALUES (477, 9, 430, 5924, 'Cicantayan', 'Kecamatan', '');
INSERT INTO `location` VALUES (478, 9, 430, 5925, 'Cicurug', 'Kecamatan', '');
INSERT INTO `location` VALUES (479, 9, 430, 5926, 'Cidadap', 'Kecamatan', '');
INSERT INTO `location` VALUES (480, 9, 430, 5927, 'Cidahu', 'Kecamatan', '');
INSERT INTO `location` VALUES (481, 9, 430, 5928, 'Cidolog', 'Kecamatan', '');
INSERT INTO `location` VALUES (482, 9, 430, 5929, 'Ciemas', 'Kecamatan', '');
INSERT INTO `location` VALUES (483, 9, 430, 5930, 'Cikakak', 'Kecamatan', '');
INSERT INTO `location` VALUES (484, 9, 430, 5931, 'Cikembar', 'Kecamatan', '');
INSERT INTO `location` VALUES (485, 9, 430, 5932, 'Cikidang', 'Kecamatan', '');
INSERT INTO `location` VALUES (486, 9, 430, 5933, 'Cimanggu', 'Kecamatan', '');
INSERT INTO `location` VALUES (487, 9, 430, 5934, 'Ciracap', 'Kecamatan', '');
INSERT INTO `location` VALUES (488, 9, 430, 5935, 'Cireunghas', 'Kecamatan', '');
INSERT INTO `location` VALUES (489, 9, 430, 5936, 'Cisaat', 'Kecamatan', '');
INSERT INTO `location` VALUES (490, 9, 430, 5937, 'Cisolok', 'Kecamatan', '');
INSERT INTO `location` VALUES (491, 9, 430, 5938, 'Curugkembar', 'Kecamatan', '');
INSERT INTO `location` VALUES (492, 9, 430, 5939, 'Geger Bitung', 'Kecamatan', '');
INSERT INTO `location` VALUES (493, 9, 430, 5940, 'Gunung Guruh', 'Kecamatan', '');
INSERT INTO `location` VALUES (494, 9, 430, 5941, 'Jampang Kulon', 'Kecamatan', '');
INSERT INTO `location` VALUES (495, 9, 430, 5942, 'Jampang Tengah', 'Kecamatan', '');
INSERT INTO `location` VALUES (496, 9, 430, 5943, 'Kabandungan', 'Kecamatan', '');
INSERT INTO `location` VALUES (497, 9, 430, 5944, 'Kadudampit', 'Kecamatan', '');
INSERT INTO `location` VALUES (498, 9, 430, 5945, 'Kalapa Nunggal', 'Kecamatan', '');
INSERT INTO `location` VALUES (499, 9, 430, 5946, 'Kali Bunder', 'Kecamatan', '');
INSERT INTO `location` VALUES (500, 9, 430, 5947, 'Kebonpedes', 'Kecamatan', '');
INSERT INTO `location` VALUES (501, 9, 430, 5948, 'Lengkong', 'Kecamatan', '');
INSERT INTO `location` VALUES (502, 9, 430, 5949, 'Nagrak', 'Kecamatan', '');
INSERT INTO `location` VALUES (503, 9, 430, 5950, 'Nyalindung', 'Kecamatan', '');
INSERT INTO `location` VALUES (504, 9, 430, 5951, 'Pabuaran', 'Kecamatan', '');
INSERT INTO `location` VALUES (505, 9, 430, 5952, 'Parakan Salak', 'Kecamatan', '');
INSERT INTO `location` VALUES (506, 9, 430, 5953, 'Parung Kuda', 'Kecamatan', '');
INSERT INTO `location` VALUES (507, 9, 430, 5954, 'Pelabuhan/Palabuhan Ratu', 'Kecamatan', '');
INSERT INTO `location` VALUES (508, 9, 430, 5955, 'Purabaya', 'Kecamatan', '');
INSERT INTO `location` VALUES (509, 9, 430, 5956, 'Sagaranten', 'Kecamatan', '');
INSERT INTO `location` VALUES (510, 9, 430, 5957, 'Simpenan', 'Kecamatan', '');
INSERT INTO `location` VALUES (511, 9, 430, 5958, 'Sukabumi', 'Kecamatan', '');
INSERT INTO `location` VALUES (512, 9, 430, 5959, 'Sukalarang', 'Kecamatan', '');
INSERT INTO `location` VALUES (513, 9, 430, 5960, 'Sukaraja', 'Kecamatan', '');
INSERT INTO `location` VALUES (514, 9, 430, 5961, 'Surade', 'Kecamatan', '');
INSERT INTO `location` VALUES (515, 9, 430, 5962, 'Tegal Buleud', 'Kecamatan', '');
INSERT INTO `location` VALUES (516, 9, 430, 5963, 'Waluran', 'Kecamatan', '');
INSERT INTO `location` VALUES (517, 9, 430, 5964, 'Warung Kiara', 'Kecamatan', '');
INSERT INTO `location` VALUES (518, 3, 456, 6297, 'Batuceper', 'Kecamatan', '');
INSERT INTO `location` VALUES (519, 3, 456, 6298, 'Benda', 'Kecamatan', '');
INSERT INTO `location` VALUES (520, 3, 456, 6299, 'Cibodas', 'Kecamatan', '');
INSERT INTO `location` VALUES (521, 3, 456, 6300, 'Ciledug', 'Kecamatan', '');
INSERT INTO `location` VALUES (522, 3, 456, 6301, 'Cipondoh', 'Kecamatan', '');
INSERT INTO `location` VALUES (523, 3, 456, 6302, 'Jatiuwung', 'Kecamatan', '');
INSERT INTO `location` VALUES (524, 3, 456, 6303, 'Karang Tengah', 'Kecamatan', '');
INSERT INTO `location` VALUES (525, 3, 456, 6304, 'Karawaci', 'Kecamatan', '');
INSERT INTO `location` VALUES (526, 3, 456, 6305, 'Larangan', 'Kecamatan', '');
INSERT INTO `location` VALUES (527, 3, 456, 6306, 'Neglasari', 'Kecamatan', '');
INSERT INTO `location` VALUES (528, 3, 456, 6307, 'Periuk', 'Kecamatan', '');
INSERT INTO `location` VALUES (529, 3, 456, 6308, 'Pinang (Penang)', 'Kecamatan', '');
INSERT INTO `location` VALUES (530, 3, 456, 6309, 'Tangerang', 'Kecamatan', '');
INSERT INTO `location` VALUES (531, 5, 210, 2930, 'Galur', 'Kecamatan', '');
INSERT INTO `location` VALUES (532, 5, 210, 2931, 'Girimulyo', 'Kecamatan', '');
INSERT INTO `location` VALUES (533, 5, 210, 2932, 'Kalibawang', 'Kecamatan', '');
INSERT INTO `location` VALUES (534, 5, 210, 2933, 'Kokap', 'Kecamatan', '');
INSERT INTO `location` VALUES (535, 5, 210, 2934, 'Lendah', 'Kecamatan', '');
INSERT INTO `location` VALUES (536, 5, 210, 2935, 'Nanggulan', 'Kecamatan', '');
INSERT INTO `location` VALUES (537, 5, 210, 2936, 'Panjatan', 'Kecamatan', '');
INSERT INTO `location` VALUES (538, 5, 210, 2937, 'Pengasih', 'Kecamatan', '');
INSERT INTO `location` VALUES (539, 5, 210, 2938, 'Samigaluh', 'Kecamatan', '');
INSERT INTO `location` VALUES (540, 5, 210, 2939, 'Sentolo', 'Kecamatan', '');
INSERT INTO `location` VALUES (541, 5, 210, 2940, 'Temon', 'Kecamatan', '');
INSERT INTO `location` VALUES (542, 5, 210, 2941, 'Wates', 'Kecamatan', '');
INSERT INTO `location` VALUES (543, 10, 196, 2722, 'Bayat', 'Kecamatan', '');
INSERT INTO `location` VALUES (544, 10, 196, 2723, 'Cawas', 'Kecamatan', '');
INSERT INTO `location` VALUES (545, 10, 196, 2724, 'Ceper', 'Kecamatan', '');
INSERT INTO `location` VALUES (546, 10, 196, 2725, 'Delanggu', 'Kecamatan', '');
INSERT INTO `location` VALUES (547, 10, 196, 2726, 'Gantiwarno', 'Kecamatan', '');
INSERT INTO `location` VALUES (548, 10, 196, 2727, 'Jatinom', 'Kecamatan', '');
INSERT INTO `location` VALUES (549, 10, 196, 2728, 'Jogonalan', 'Kecamatan', '');
INSERT INTO `location` VALUES (550, 10, 196, 2729, 'Juwiring', 'Kecamatan', '');
INSERT INTO `location` VALUES (551, 10, 196, 2730, 'Kalikotes', 'Kecamatan', '');
INSERT INTO `location` VALUES (552, 10, 196, 2731, 'Karanganom', 'Kecamatan', '');
INSERT INTO `location` VALUES (553, 10, 196, 2732, 'Karangdowo', 'Kecamatan', '');
INSERT INTO `location` VALUES (554, 10, 196, 2733, 'Karangnongko', 'Kecamatan', '');
INSERT INTO `location` VALUES (555, 10, 196, 2734, 'Kebonarum', 'Kecamatan', '');
INSERT INTO `location` VALUES (556, 10, 196, 2735, 'Kemalang', 'Kecamatan', '');
INSERT INTO `location` VALUES (557, 10, 196, 2736, 'Klaten Selatan', 'Kecamatan', '');
INSERT INTO `location` VALUES (558, 10, 196, 2737, 'Klaten Tengah', 'Kecamatan', '');
INSERT INTO `location` VALUES (559, 10, 196, 2738, 'Klaten Utara', 'Kecamatan', '');
INSERT INTO `location` VALUES (560, 10, 196, 2739, 'Manisrenggo', 'Kecamatan', '');
INSERT INTO `location` VALUES (561, 10, 196, 2740, 'Ngawen', 'Kecamatan', '');
INSERT INTO `location` VALUES (562, 10, 196, 2741, 'Pedan', 'Kecamatan', '');
INSERT INTO `location` VALUES (563, 10, 196, 2742, 'Polanharjo', 'Kecamatan', '');
INSERT INTO `location` VALUES (564, 10, 196, 2743, 'Prambanan', 'Kecamatan', '');
INSERT INTO `location` VALUES (565, 10, 196, 2744, 'Trucuk', 'Kecamatan', '');
INSERT INTO `location` VALUES (566, 10, 196, 2745, 'Tulung', 'Kecamatan', '');
INSERT INTO `location` VALUES (567, 10, 196, 2746, 'Wedi', 'Kecamatan', '');
INSERT INTO `location` VALUES (568, 10, 196, 2747, 'Wonosari', 'Kecamatan', '');
INSERT INTO `location` VALUES (569, 10, 169, 2353, 'Colomadu', 'Kecamatan', '');
INSERT INTO `location` VALUES (570, 10, 169, 2354, 'Gondangrejo', 'Kecamatan', '');
INSERT INTO `location` VALUES (571, 10, 169, 2355, 'Jaten', 'Kecamatan', '');
INSERT INTO `location` VALUES (572, 10, 169, 2356, 'Jatipuro', 'Kecamatan', '');
INSERT INTO `location` VALUES (573, 10, 169, 2357, 'Jatiyoso', 'Kecamatan', '');
INSERT INTO `location` VALUES (574, 10, 169, 2358, 'Jenawi', 'Kecamatan', '');
INSERT INTO `location` VALUES (575, 10, 169, 2359, 'Jumantono', 'Kecamatan', '');
INSERT INTO `location` VALUES (576, 10, 169, 2360, 'Jumapolo', 'Kecamatan', '');
INSERT INTO `location` VALUES (577, 10, 169, 2361, 'Karanganyar', 'Kecamatan', '');
INSERT INTO `location` VALUES (578, 10, 169, 2362, 'Karangpandan', 'Kecamatan', '');
INSERT INTO `location` VALUES (579, 10, 169, 2363, 'Kebakkramat', 'Kecamatan', '');
INSERT INTO `location` VALUES (580, 10, 169, 2364, 'Kerjo', 'Kecamatan', '');
INSERT INTO `location` VALUES (581, 10, 169, 2365, 'Matesih', 'Kecamatan', '');
INSERT INTO `location` VALUES (582, 10, 169, 2366, 'Mojogedang', 'Kecamatan', '');
INSERT INTO `location` VALUES (583, 10, 169, 2367, 'Ngargoyoso', 'Kecamatan', '');
INSERT INTO `location` VALUES (584, 10, 169, 2368, 'Tasikmadu', 'Kecamatan', '');
INSERT INTO `location` VALUES (585, 10, 169, 2369, 'Tawangmangu', 'Kecamatan', '');
INSERT INTO `location` VALUES (586, 11, 342, 4793, 'Bangil', 'Kecamatan', '');
INSERT INTO `location` VALUES (587, 11, 342, 4794, 'Beji', 'Kecamatan', '');
INSERT INTO `location` VALUES (588, 11, 342, 4795, 'Gempol', 'Kecamatan', '');
INSERT INTO `location` VALUES (589, 11, 342, 4796, 'Gondang Wetan', 'Kecamatan', '');
INSERT INTO `location` VALUES (590, 11, 342, 4797, 'Grati', 'Kecamatan', '');
INSERT INTO `location` VALUES (591, 11, 342, 4798, 'Kejayan', 'Kecamatan', '');
INSERT INTO `location` VALUES (592, 11, 342, 4799, 'Kraton', 'Kecamatan', '');
INSERT INTO `location` VALUES (593, 11, 342, 4800, 'Lekok', 'Kecamatan', '');
INSERT INTO `location` VALUES (594, 11, 342, 4801, 'Lumbang', 'Kecamatan', '');
INSERT INTO `location` VALUES (595, 11, 342, 4802, 'Nguling', 'Kecamatan', '');
INSERT INTO `location` VALUES (596, 11, 342, 4803, 'Pandaan', 'Kecamatan', '');
INSERT INTO `location` VALUES (597, 11, 342, 4804, 'Pasrepan', 'Kecamatan', '');
INSERT INTO `location` VALUES (598, 11, 342, 4805, 'Pohjentrek', 'Kecamatan', '');
INSERT INTO `location` VALUES (599, 11, 342, 4806, 'Prigen', 'Kecamatan', '');
INSERT INTO `location` VALUES (600, 11, 342, 4807, 'Purwodadi', 'Kecamatan', '');
INSERT INTO `location` VALUES (601, 11, 342, 4808, 'Purwosari', 'Kecamatan', '');
INSERT INTO `location` VALUES (602, 11, 342, 4809, 'Puspo', 'Kecamatan', '');
INSERT INTO `location` VALUES (603, 11, 342, 4810, 'Rejoso', 'Kecamatan', '');
INSERT INTO `location` VALUES (604, 11, 342, 4811, 'Rembang', 'Kecamatan', '');
INSERT INTO `location` VALUES (605, 11, 342, 4812, 'Sukorejo', 'Kecamatan', '');
INSERT INTO `location` VALUES (606, 11, 342, 4813, 'Tosari', 'Kecamatan', '');
INSERT INTO `location` VALUES (607, 11, 342, 4814, 'Tutur', 'Kecamatan', '');
INSERT INTO `location` VALUES (608, 11, 342, 4815, 'Winongan', 'Kecamatan', '');
INSERT INTO `location` VALUES (609, 11, 342, 4816, 'Wonorejo', 'Kecamatan', '');
INSERT INTO `location` VALUES (610, 11, 444, 6131, 'Asemrowo', 'Kecamatan', '');
INSERT INTO `location` VALUES (611, 11, 444, 6132, 'Benowo', 'Kecamatan', '');
INSERT INTO `location` VALUES (612, 11, 444, 6133, 'Bubutan', 'Kecamatan', '');
INSERT INTO `location` VALUES (613, 11, 444, 6134, 'Bulak', 'Kecamatan', '');
INSERT INTO `location` VALUES (614, 11, 444, 6135, 'Dukuh Pakis', 'Kecamatan', '');
INSERT INTO `location` VALUES (615, 11, 444, 6136, 'Gayungan', 'Kecamatan', '');
INSERT INTO `location` VALUES (616, 11, 444, 6137, 'Genteng', 'Kecamatan', '');
INSERT INTO `location` VALUES (617, 11, 444, 6138, 'Gubeng', 'Kecamatan', '');
INSERT INTO `location` VALUES (618, 11, 444, 6139, 'Gununganyar', 'Kecamatan', '');
INSERT INTO `location` VALUES (619, 11, 444, 6140, 'Jambangan', 'Kecamatan', '');
INSERT INTO `location` VALUES (620, 11, 444, 6141, 'Karangpilang', 'Kecamatan', '');
INSERT INTO `location` VALUES (621, 11, 444, 6142, 'Kenjeran', 'Kecamatan', '');
INSERT INTO `location` VALUES (622, 11, 444, 6143, 'Krembangan', 'Kecamatan', '');
INSERT INTO `location` VALUES (623, 11, 444, 6144, 'Lakar Santri', 'Kecamatan', '');
INSERT INTO `location` VALUES (624, 11, 444, 6145, 'Mulyorejo', 'Kecamatan', '');
INSERT INTO `location` VALUES (625, 11, 444, 6146, 'Pabean Cantikan', 'Kecamatan', '');
INSERT INTO `location` VALUES (626, 11, 444, 6147, 'Pakal', 'Kecamatan', '');
INSERT INTO `location` VALUES (627, 11, 444, 6148, 'Rungkut', 'Kecamatan', '');
INSERT INTO `location` VALUES (628, 11, 444, 6149, 'Sambikerep', 'Kecamatan', '');
INSERT INTO `location` VALUES (629, 11, 444, 6150, 'Sawahan', 'Kecamatan', '');
INSERT INTO `location` VALUES (630, 11, 444, 6151, 'Semampir', 'Kecamatan', '');
INSERT INTO `location` VALUES (631, 11, 444, 6152, 'Simokerto', 'Kecamatan', '');
INSERT INTO `location` VALUES (632, 11, 444, 6153, 'Sukolilo', 'Kecamatan', '');
INSERT INTO `location` VALUES (633, 11, 444, 6154, 'Sukomanunggal', 'Kecamatan', '');
INSERT INTO `location` VALUES (634, 11, 444, 6155, 'Tambaksari', 'Kecamatan', '');
INSERT INTO `location` VALUES (635, 11, 444, 6156, 'Tandes', 'Kecamatan', '');
INSERT INTO `location` VALUES (636, 11, 444, 6157, 'Tegalsari', 'Kecamatan', '');
INSERT INTO `location` VALUES (637, 11, 444, 6158, 'Tenggilis Mejoyo', 'Kecamatan', '');
INSERT INTO `location` VALUES (638, 11, 444, 6159, 'Wiyung', 'Kecamatan', '');
INSERT INTO `location` VALUES (639, 11, 444, 6160, 'Wonocolo', 'Kecamatan', '');
INSERT INTO `location` VALUES (640, 11, 444, 6161, 'Wonokromo', 'Kecamatan', '');
INSERT INTO `location` VALUES (641, 5, 135, 1865, 'Gedang Sari', 'Kecamatan', '');
INSERT INTO `location` VALUES (642, 5, 135, 1866, 'Girisubo', 'Kecamatan', '');
INSERT INTO `location` VALUES (643, 5, 135, 1867, 'Karangmojo', 'Kecamatan', '');
INSERT INTO `location` VALUES (644, 5, 135, 1868, 'Ngawen', 'Kecamatan', '');
INSERT INTO `location` VALUES (645, 5, 135, 1869, 'Nglipar', 'Kecamatan', '');
INSERT INTO `location` VALUES (646, 5, 135, 1870, 'Paliyan', 'Kecamatan', '');
INSERT INTO `location` VALUES (647, 5, 135, 1871, 'Panggang', 'Kecamatan', '');
INSERT INTO `location` VALUES (648, 5, 135, 1872, 'Patuk', 'Kecamatan', '');
INSERT INTO `location` VALUES (649, 5, 135, 1873, 'Playen', 'Kecamatan', '');
INSERT INTO `location` VALUES (650, 5, 135, 1874, 'Ponjong', 'Kecamatan', '');
INSERT INTO `location` VALUES (651, 5, 135, 1875, 'Purwosari', 'Kecamatan', '');
INSERT INTO `location` VALUES (652, 5, 135, 1876, 'Rongkop', 'Kecamatan', '');
INSERT INTO `location` VALUES (653, 5, 135, 1877, 'Sapto Sari', 'Kecamatan', '');
INSERT INTO `location` VALUES (654, 5, 135, 1878, 'Semanu', 'Kecamatan', '');
INSERT INTO `location` VALUES (655, 5, 135, 1879, 'Semin', 'Kecamatan', '');
INSERT INTO `location` VALUES (656, 5, 135, 1880, 'Tanjungsari', 'Kecamatan', '');
INSERT INTO `location` VALUES (657, 5, 135, 1881, 'Tepus', 'Kecamatan', '');
INSERT INTO `location` VALUES (658, 5, 135, 1882, 'Wonosari', 'Kecamatan', '');
INSERT INTO `location` VALUES (659, 11, 179, 2523, 'Kediri Kota', 'Kecamatan', '');
INSERT INTO `location` VALUES (660, 11, 179, 2524, 'Mojoroto', 'Kecamatan', '');
INSERT INTO `location` VALUES (661, 11, 179, 2525, 'Pesantren', 'Kecamatan', '');
INSERT INTO `location` VALUES (662, 12, 61, 0, 'Bengkayang', 'Kabupaten', '79213');
INSERT INTO `location` VALUES (663, 12, 168, 0, 'Kapuas Hulu', 'Kabupaten', '78719');
INSERT INTO `location` VALUES (664, 12, 176, 0, 'Kayong Utara', 'Kabupaten', '78852');
INSERT INTO `location` VALUES (665, 12, 195, 0, 'Ketapang', 'Kabupaten', '78874');
INSERT INTO `location` VALUES (666, 12, 208, 0, 'Kubu Raya', 'Kabupaten', '78311');
INSERT INTO `location` VALUES (667, 12, 228, 0, 'Landak', 'Kabupaten', '78319');
INSERT INTO `location` VALUES (668, 12, 279, 0, 'Melawi', 'Kabupaten', '78619');
INSERT INTO `location` VALUES (669, 12, 364, 0, 'Pontianak', 'Kabupaten', '78971');
INSERT INTO `location` VALUES (670, 12, 365, 0, 'Pontianak', 'Kota', '78112');
INSERT INTO `location` VALUES (671, 12, 388, 0, 'Sambas', 'Kabupaten', '79453');
INSERT INTO `location` VALUES (672, 12, 391, 0, 'Sanggau', 'Kabupaten', '78557');
INSERT INTO `location` VALUES (673, 12, 395, 0, 'Sekadau', 'Kabupaten', '79583');
INSERT INTO `location` VALUES (674, 12, 415, 0, 'Singkawang', 'Kota', '79117');
INSERT INTO `location` VALUES (675, 12, 417, 0, 'Sintang', 'Kabupaten', '78619');
INSERT INTO `location` VALUES (676, 12, 365, 5101, 'Pontianak Barat', 'Kecamatan', '');
INSERT INTO `location` VALUES (677, 12, 365, 5102, 'Pontianak Kota', 'Kecamatan', '');
INSERT INTO `location` VALUES (678, 12, 365, 5103, 'Pontianak Selatan', 'Kecamatan', '');
INSERT INTO `location` VALUES (679, 12, 365, 5104, 'Pontianak Tenggara', 'Kecamatan', '');
INSERT INTO `location` VALUES (680, 12, 365, 5105, 'Pontianak Timur', 'Kecamatan', '');
INSERT INTO `location` VALUES (681, 12, 365, 5106, 'Pontianak Utara', 'Kecamatan', '');
INSERT INTO `location` VALUES (682, 22, 68, 0, 'Bima', 'Kabupaten', '84171');
INSERT INTO `location` VALUES (683, 22, 69, 0, 'Bima', 'Kota', '84139');
INSERT INTO `location` VALUES (684, 22, 118, 0, 'Dompu', 'Kabupaten', '84217');
INSERT INTO `location` VALUES (685, 22, 238, 0, 'Lombok Barat', 'Kabupaten', '83311');
INSERT INTO `location` VALUES (686, 22, 239, 0, 'Lombok Tengah', 'Kabupaten', '83511');
INSERT INTO `location` VALUES (687, 22, 240, 0, 'Lombok Timur', 'Kabupaten', '83612');
INSERT INTO `location` VALUES (688, 22, 241, 0, 'Lombok Utara', 'Kabupaten', '83711');
INSERT INTO `location` VALUES (689, 22, 276, 0, 'Mataram', 'Kota', '83131');
INSERT INTO `location` VALUES (690, 22, 438, 0, 'Sumbawa', 'Kabupaten', '84315');
INSERT INTO `location` VALUES (691, 22, 439, 0, 'Sumbawa Barat', 'Kabupaten', '84419');
INSERT INTO `location` VALUES (692, 22, 238, 3372, 'Batu Layar', 'Kecamatan', '');
INSERT INTO `location` VALUES (693, 22, 238, 3373, 'Gerung', 'Kecamatan', '');
INSERT INTO `location` VALUES (694, 22, 238, 3374, 'Gunungsari', 'Kecamatan', '');
INSERT INTO `location` VALUES (695, 22, 238, 3375, 'Kediri', 'Kecamatan', '');
INSERT INTO `location` VALUES (696, 22, 238, 3376, 'Kuripan', 'Kecamatan', '');
INSERT INTO `location` VALUES (697, 22, 238, 3377, 'Labuapi', 'Kecamatan', '');
INSERT INTO `location` VALUES (698, 22, 238, 3378, 'Lembar', 'Kecamatan', '');
INSERT INTO `location` VALUES (699, 22, 238, 3379, 'Lingsar', 'Kecamatan', '');
INSERT INTO `location` VALUES (700, 22, 238, 3380, 'Narmada', 'Kecamatan', '');
INSERT INTO `location` VALUES (701, 22, 238, 3381, 'Sekotong', 'Kecamatan', '');
INSERT INTO `location` VALUES (702, 9, 78, 1022, 'Babakan Madang', 'Kecamatan', '');
INSERT INTO `location` VALUES (703, 9, 78, 1023, 'Bojonggede', 'Kecamatan', '');
INSERT INTO `location` VALUES (704, 9, 78, 1024, 'Caringin', 'Kecamatan', '');
INSERT INTO `location` VALUES (705, 9, 78, 1025, 'Cariu', 'Kecamatan', '');
INSERT INTO `location` VALUES (706, 9, 78, 1026, 'Ciampea', 'Kecamatan', '');
INSERT INTO `location` VALUES (707, 9, 78, 1027, 'Ciawi', 'Kecamatan', '');
INSERT INTO `location` VALUES (708, 9, 78, 1028, 'Cibinong', 'Kecamatan', '');
INSERT INTO `location` VALUES (709, 9, 78, 1029, 'Cibungbulang', 'Kecamatan', '');
INSERT INTO `location` VALUES (710, 9, 78, 1030, 'Cigombong', 'Kecamatan', '');
INSERT INTO `location` VALUES (711, 9, 78, 1031, 'Cigudeg', 'Kecamatan', '');
INSERT INTO `location` VALUES (712, 9, 78, 1032, 'Cijeruk', 'Kecamatan', '');
INSERT INTO `location` VALUES (713, 9, 78, 1033, 'Cileungsi', 'Kecamatan', '');
INSERT INTO `location` VALUES (714, 9, 78, 1034, 'Ciomas', 'Kecamatan', '');
INSERT INTO `location` VALUES (715, 9, 78, 1035, 'Cisarua', 'Kecamatan', '');
INSERT INTO `location` VALUES (716, 9, 78, 1036, 'Ciseeng', 'Kecamatan', '');
INSERT INTO `location` VALUES (717, 9, 78, 1037, 'Citeureup', 'Kecamatan', '');
INSERT INTO `location` VALUES (718, 9, 78, 1038, 'Dramaga', 'Kecamatan', '');
INSERT INTO `location` VALUES (719, 9, 78, 1039, 'Gunung Putri', 'Kecamatan', '');
INSERT INTO `location` VALUES (720, 9, 78, 1040, 'Gunung Sindur', 'Kecamatan', '');
INSERT INTO `location` VALUES (721, 9, 78, 1041, 'Jasinga', 'Kecamatan', '');
INSERT INTO `location` VALUES (722, 9, 78, 1042, 'Jonggol', 'Kecamatan', '');
INSERT INTO `location` VALUES (723, 9, 78, 1043, 'Kemang', 'Kecamatan', '');
INSERT INTO `location` VALUES (724, 9, 78, 1044, 'Klapa Nunggal (Kelapa Nunggal)', 'Kecamatan', '');
INSERT INTO `location` VALUES (725, 9, 78, 1045, 'Leuwiliang', 'Kecamatan', '');
INSERT INTO `location` VALUES (726, 9, 78, 1046, 'Leuwisadeng', 'Kecamatan', '');
INSERT INTO `location` VALUES (727, 9, 78, 1047, 'Megamendung', 'Kecamatan', '');
INSERT INTO `location` VALUES (728, 9, 78, 1048, 'Nanggung', 'Kecamatan', '');
INSERT INTO `location` VALUES (729, 9, 78, 1049, 'Pamijahan', 'Kecamatan', '');
INSERT INTO `location` VALUES (730, 9, 78, 1050, 'Parung', 'Kecamatan', '');
INSERT INTO `location` VALUES (731, 9, 78, 1051, 'Parung Panjang', 'Kecamatan', '');
INSERT INTO `location` VALUES (732, 9, 78, 1052, 'Ranca Bungur', 'Kecamatan', '');
INSERT INTO `location` VALUES (733, 9, 78, 1053, 'Rumpin', 'Kecamatan', '');
INSERT INTO `location` VALUES (734, 9, 78, 1054, 'Sukajaya', 'Kecamatan', '');
INSERT INTO `location` VALUES (735, 9, 78, 1055, 'Sukamakmur', 'Kecamatan', '');
INSERT INTO `location` VALUES (736, 9, 78, 1056, 'Sukaraja', 'Kecamatan', '');
INSERT INTO `location` VALUES (737, 9, 78, 1057, 'Tajurhalang', 'Kecamatan', '');
INSERT INTO `location` VALUES (738, 9, 78, 1058, 'Tamansari', 'Kecamatan', '');
INSERT INTO `location` VALUES (739, 9, 78, 1059, 'Tanjungsari', 'Kecamatan', '');
INSERT INTO `location` VALUES (740, 9, 78, 1060, 'Tenjo', 'Kecamatan', '');
INSERT INTO `location` VALUES (741, 9, 78, 1061, 'Tenjolaya', 'Kecamatan', '');
INSERT INTO `location` VALUES (742, 34, 15, 0, 'Asahan', 'Kabupaten', '21214');
INSERT INTO `location` VALUES (743, 34, 52, 0, 'Batu Bara', 'Kabupaten', '21655');
INSERT INTO `location` VALUES (744, 34, 70, 0, 'Binjai', 'Kota', '20712');
INSERT INTO `location` VALUES (745, 34, 110, 0, 'Dairi', 'Kabupaten', '22211');
INSERT INTO `location` VALUES (746, 34, 112, 0, 'Deli Serdang', 'Kabupaten', '20511');
INSERT INTO `location` VALUES (747, 34, 137, 0, 'Gunungsitoli', 'Kota', '22813');
INSERT INTO `location` VALUES (748, 34, 146, 0, 'Humbang Hasundutan', 'Kabupaten', '22457');
INSERT INTO `location` VALUES (749, 34, 173, 0, 'Karo', 'Kabupaten', '22119');
INSERT INTO `location` VALUES (750, 34, 217, 0, 'Labuhan Batu', 'Kabupaten', '21412');
INSERT INTO `location` VALUES (751, 34, 218, 0, 'Labuhan Batu Selatan', 'Kabupaten', '21511');
INSERT INTO `location` VALUES (752, 34, 219, 0, 'Labuhan Batu Utara', 'Kabupaten', '21711');
INSERT INTO `location` VALUES (753, 34, 229, 0, 'Langkat', 'Kabupaten', '20811');
INSERT INTO `location` VALUES (754, 34, 268, 0, 'Mandailing Natal', 'Kabupaten', '22916');
INSERT INTO `location` VALUES (755, 34, 278, 0, 'Medan', 'Kota', '20228');
INSERT INTO `location` VALUES (756, 34, 307, 0, 'Nias', 'Kabupaten', '22876');
INSERT INTO `location` VALUES (757, 34, 308, 0, 'Nias Barat', 'Kabupaten', '22895');
INSERT INTO `location` VALUES (758, 34, 309, 0, 'Nias Selatan', 'Kabupaten', '22865');
INSERT INTO `location` VALUES (759, 34, 310, 0, 'Nias Utara', 'Kabupaten', '22856');
INSERT INTO `location` VALUES (760, 34, 319, 0, 'Padang Lawas', 'Kabupaten', '22763');
INSERT INTO `location` VALUES (761, 34, 320, 0, 'Padang Lawas Utara', 'Kabupaten', '22753');
INSERT INTO `location` VALUES (762, 34, 323, 0, 'Padang Sidempuan', 'Kota', '22727');
INSERT INTO `location` VALUES (763, 34, 325, 0, 'Pakpak Bharat', 'Kabupaten', '22272');
INSERT INTO `location` VALUES (764, 34, 353, 0, 'Pematang Siantar', 'Kota', '21126');
INSERT INTO `location` VALUES (765, 34, 389, 0, 'Samosir', 'Kabupaten', '22392');
INSERT INTO `location` VALUES (766, 34, 404, 0, 'Serdang Bedagai', 'Kabupaten', '20915');
INSERT INTO `location` VALUES (767, 34, 407, 0, 'Sibolga', 'Kota', '22522');
INSERT INTO `location` VALUES (768, 34, 413, 0, 'Simalungun', 'Kabupaten', '21162');
INSERT INTO `location` VALUES (769, 34, 459, 0, 'Tanjung Balai', 'Kota', '21321');
INSERT INTO `location` VALUES (770, 34, 463, 0, 'Tapanuli Selatan', 'Kabupaten', '22742');
INSERT INTO `location` VALUES (771, 34, 464, 0, 'Tapanuli Tengah', 'Kabupaten', '22611');
INSERT INTO `location` VALUES (772, 34, 465, 0, 'Tapanuli Utara', 'Kabupaten', '22414');
INSERT INTO `location` VALUES (773, 34, 470, 0, 'Tebing Tinggi', 'Kota', '20632');
INSERT INTO `location` VALUES (774, 34, 481, 0, 'Toba Samosir', 'Kabupaten', '22316');
INSERT INTO `location` VALUES (775, 34, 353, 4952, 'Siantar Barat', 'Kecamatan', '');
INSERT INTO `location` VALUES (776, 34, 353, 4953, 'Siantar Marihat', 'Kecamatan', '');
INSERT INTO `location` VALUES (777, 34, 353, 4954, 'Siantar Marimbun', 'Kecamatan', '');
INSERT INTO `location` VALUES (778, 34, 353, 4955, 'Siantar Martoba', 'Kecamatan', '');
INSERT INTO `location` VALUES (779, 34, 353, 4956, 'Siantar Selatan', 'Kecamatan', '');
INSERT INTO `location` VALUES (780, 34, 353, 4957, 'Siantar Sitalasari', 'Kecamatan', '');
INSERT INTO `location` VALUES (781, 34, 353, 4958, 'Siantar Timur', 'Kecamatan', '');
INSERT INTO `location` VALUES (782, 34, 353, 4959, 'Siantar Utara', 'Kecamatan', '');
INSERT INTO `location` VALUES (783, 9, 55, 749, 'Bantar Gebang', 'Kecamatan', '');
INSERT INTO `location` VALUES (784, 9, 55, 750, 'Bekasi Barat', 'Kecamatan', '');
INSERT INTO `location` VALUES (785, 9, 55, 751, 'Bekasi Selatan', 'Kecamatan', '');
INSERT INTO `location` VALUES (786, 9, 55, 752, 'Bekasi Timur', 'Kecamatan', '');
INSERT INTO `location` VALUES (787, 9, 55, 753, 'Bekasi Utara', 'Kecamatan', '');
INSERT INTO `location` VALUES (788, 9, 55, 754, 'Jati Sampurna', 'Kecamatan', '');
INSERT INTO `location` VALUES (789, 9, 55, 755, 'Jatiasih', 'Kecamatan', '');
INSERT INTO `location` VALUES (790, 9, 55, 756, 'Medan Satria', 'Kecamatan', '');
INSERT INTO `location` VALUES (791, 9, 55, 757, 'Mustika Jaya', 'Kecamatan', '');
INSERT INTO `location` VALUES (792, 9, 55, 758, 'Pondok Gede', 'Kecamatan', '');
INSERT INTO `location` VALUES (793, 9, 55, 759, 'Pondok Melati', 'Kecamatan', '');
INSERT INTO `location` VALUES (794, 9, 55, 760, 'Rawalumbu', 'Kecamatan', '');
INSERT INTO `location` VALUES (795, 9, 54, 726, 'Babelan', 'Kecamatan', '');
INSERT INTO `location` VALUES (796, 9, 54, 727, 'Bojongmangu', 'Kecamatan', '');
INSERT INTO `location` VALUES (797, 9, 54, 728, 'Cabangbungin', 'Kecamatan', '');
INSERT INTO `location` VALUES (798, 9, 54, 729, 'Cibarusah', 'Kecamatan', '');
INSERT INTO `location` VALUES (799, 9, 54, 730, 'Cibitung', 'Kecamatan', '');
INSERT INTO `location` VALUES (800, 9, 54, 731, 'Cikarang Barat', 'Kecamatan', '');
INSERT INTO `location` VALUES (801, 9, 54, 732, 'Cikarang Pusat', 'Kecamatan', '');
INSERT INTO `location` VALUES (802, 9, 54, 733, 'Cikarang Selatan', 'Kecamatan', '');
INSERT INTO `location` VALUES (803, 9, 54, 734, 'Cikarang Timur', 'Kecamatan', '');
INSERT INTO `location` VALUES (804, 9, 54, 735, 'Cikarang Utara', 'Kecamatan', '');
INSERT INTO `location` VALUES (805, 9, 54, 736, 'Karangbahagia', 'Kecamatan', '');
INSERT INTO `location` VALUES (806, 9, 54, 737, 'Kedung Waringin', 'Kecamatan', '');
INSERT INTO `location` VALUES (807, 9, 54, 738, 'Muara Gembong', 'Kecamatan', '');
INSERT INTO `location` VALUES (808, 9, 54, 739, 'Pebayuran', 'Kecamatan', '');
INSERT INTO `location` VALUES (809, 9, 54, 740, 'Serang Baru', 'Kecamatan', '');
INSERT INTO `location` VALUES (810, 9, 54, 741, 'Setu', 'Kecamatan', '');
INSERT INTO `location` VALUES (811, 9, 54, 742, 'Sukakarya', 'Kecamatan', '');
INSERT INTO `location` VALUES (812, 9, 54, 743, 'Sukatani', 'Kecamatan', '');
INSERT INTO `location` VALUES (813, 9, 54, 744, 'Sukawangi', 'Kecamatan', '');
INSERT INTO `location` VALUES (814, 9, 54, 745, 'Tambelang', 'Kecamatan', '');
INSERT INTO `location` VALUES (815, 9, 54, 746, 'Tambun Selatan', 'Kecamatan', '');
INSERT INTO `location` VALUES (816, 9, 54, 747, 'Tambun Utara', 'Kecamatan', '');
INSERT INTO `location` VALUES (817, 9, 54, 748, 'Tarumajaya', 'Kecamatan', '');
INSERT INTO `location` VALUES (818, 11, 409, 5631, 'Balongbendo', 'Kecamatan', '');
INSERT INTO `location` VALUES (819, 11, 409, 5632, 'Buduran', 'Kecamatan', '');
INSERT INTO `location` VALUES (820, 11, 409, 5633, 'Candi', 'Kecamatan', '');
INSERT INTO `location` VALUES (821, 11, 409, 5634, 'Gedangan', 'Kecamatan', '');
INSERT INTO `location` VALUES (822, 11, 409, 5635, 'Jabon', 'Kecamatan', '');
INSERT INTO `location` VALUES (823, 11, 409, 5636, 'Krembung', 'Kecamatan', '');
INSERT INTO `location` VALUES (824, 11, 409, 5637, 'Krian', 'Kecamatan', '');
INSERT INTO `location` VALUES (825, 11, 409, 5638, 'Porong', 'Kecamatan', '');
INSERT INTO `location` VALUES (826, 11, 409, 5639, 'Prambon', 'Kecamatan', '');
INSERT INTO `location` VALUES (827, 11, 409, 5640, 'Sedati', 'Kecamatan', '');
INSERT INTO `location` VALUES (828, 11, 409, 5641, 'Sidoarjo', 'Kecamatan', '');
INSERT INTO `location` VALUES (829, 11, 409, 5642, 'Sukodono', 'Kecamatan', '');
INSERT INTO `location` VALUES (830, 11, 409, 5643, 'Taman', 'Kecamatan', '');
INSERT INTO `location` VALUES (831, 11, 409, 5644, 'Tanggulangin', 'Kecamatan', '');
INSERT INTO `location` VALUES (832, 11, 409, 5645, 'Tarik', 'Kecamatan', '');
INSERT INTO `location` VALUES (833, 11, 409, 5646, 'Tulangan', 'Kecamatan', '');
INSERT INTO `location` VALUES (834, 11, 409, 5647, 'Waru', 'Kecamatan', '');
INSERT INTO `location` VALUES (835, 11, 409, 5648, 'Wonoayu', 'Kecamatan', '');
INSERT INTO `location` VALUES (836, 9, 22, 307, 'Arjasari', 'Kecamatan', '');
INSERT INTO `location` VALUES (837, 9, 22, 308, 'Baleendah', 'Kecamatan', '');
INSERT INTO `location` VALUES (838, 9, 22, 309, 'Banjaran', 'Kecamatan', '');
INSERT INTO `location` VALUES (839, 9, 22, 310, 'Bojongsoang', 'Kecamatan', '');
INSERT INTO `location` VALUES (840, 9, 22, 311, 'Cangkuang', 'Kecamatan', '');
INSERT INTO `location` VALUES (841, 9, 22, 312, 'Cicalengka', 'Kecamatan', '');
INSERT INTO `location` VALUES (842, 9, 22, 313, 'Cikancung', 'Kecamatan', '');
INSERT INTO `location` VALUES (843, 9, 22, 314, 'Cilengkrang', 'Kecamatan', '');
INSERT INTO `location` VALUES (844, 9, 22, 315, 'Cileunyi', 'Kecamatan', '');
INSERT INTO `location` VALUES (845, 9, 22, 316, 'Cimaung', 'Kecamatan', '');
INSERT INTO `location` VALUES (846, 9, 22, 317, 'Cimeunyan', 'Kecamatan', '');
INSERT INTO `location` VALUES (847, 9, 22, 318, 'Ciparay', 'Kecamatan', '');
INSERT INTO `location` VALUES (848, 9, 22, 319, 'Ciwidey', 'Kecamatan', '');
INSERT INTO `location` VALUES (849, 9, 22, 320, 'Dayeuhkolot', 'Kecamatan', '');
INSERT INTO `location` VALUES (850, 9, 22, 321, 'Ibun', 'Kecamatan', '');
INSERT INTO `location` VALUES (851, 9, 22, 322, 'Katapang', 'Kecamatan', '');
INSERT INTO `location` VALUES (852, 9, 22, 323, 'Kertasari', 'Kecamatan', '');
INSERT INTO `location` VALUES (853, 9, 22, 324, 'Kutawaringin', 'Kecamatan', '');
INSERT INTO `location` VALUES (854, 9, 22, 325, 'Majalaya', 'Kecamatan', '');
INSERT INTO `location` VALUES (855, 9, 22, 326, 'Margaasih', 'Kecamatan', '');
INSERT INTO `location` VALUES (856, 9, 22, 327, 'Margahayu', 'Kecamatan', '');
INSERT INTO `location` VALUES (857, 9, 22, 328, 'Nagreg', 'Kecamatan', '');
INSERT INTO `location` VALUES (858, 9, 22, 329, 'Pacet', 'Kecamatan', '');
INSERT INTO `location` VALUES (859, 9, 22, 330, 'Pameungpeuk', 'Kecamatan', '');
INSERT INTO `location` VALUES (860, 9, 22, 331, 'Pangalengan', 'Kecamatan', '');
INSERT INTO `location` VALUES (861, 9, 22, 332, 'Paseh', 'Kecamatan', '');
INSERT INTO `location` VALUES (862, 9, 22, 333, 'Pasirjambu', 'Kecamatan', '');
INSERT INTO `location` VALUES (863, 9, 22, 334, 'Ranca Bali', 'Kecamatan', '');
INSERT INTO `location` VALUES (864, 9, 22, 335, 'Rancaekek', 'Kecamatan', '');
INSERT INTO `location` VALUES (865, 9, 22, 336, 'Solokan Jeruk', 'Kecamatan', '');
INSERT INTO `location` VALUES (866, 9, 22, 337, 'Soreang', 'Kecamatan', '');
INSERT INTO `location` VALUES (867, 34, 278, 3906, 'Medan Amplas', 'Kecamatan', '');
INSERT INTO `location` VALUES (868, 34, 278, 3907, 'Medan Area', 'Kecamatan', '');
INSERT INTO `location` VALUES (869, 34, 278, 3908, 'Medan Barat', 'Kecamatan', '');
INSERT INTO `location` VALUES (870, 34, 278, 3909, 'Medan Baru', 'Kecamatan', '');
INSERT INTO `location` VALUES (871, 34, 278, 3910, 'Medan Belawan Kota', 'Kecamatan', '');
INSERT INTO `location` VALUES (872, 34, 278, 3911, 'Medan Deli', 'Kecamatan', '');
INSERT INTO `location` VALUES (873, 34, 278, 3912, 'Medan Denai', 'Kecamatan', '');
INSERT INTO `location` VALUES (874, 34, 278, 3913, 'Medan Helvetia', 'Kecamatan', '');
INSERT INTO `location` VALUES (875, 34, 278, 3914, 'Medan Johor', 'Kecamatan', '');
INSERT INTO `location` VALUES (876, 34, 278, 3915, 'Medan Kota', 'Kecamatan', '');
INSERT INTO `location` VALUES (877, 34, 278, 3916, 'Medan Labuhan', 'Kecamatan', '');
INSERT INTO `location` VALUES (878, 34, 278, 3917, 'Medan Maimun', 'Kecamatan', '');
INSERT INTO `location` VALUES (879, 34, 278, 3918, 'Medan Marelan', 'Kecamatan', '');
INSERT INTO `location` VALUES (880, 34, 278, 3919, 'Medan Perjuangan', 'Kecamatan', '');
INSERT INTO `location` VALUES (881, 34, 278, 3920, 'Medan Petisah', 'Kecamatan', '');
INSERT INTO `location` VALUES (882, 34, 278, 3921, 'Medan Polonia', 'Kecamatan', '');
INSERT INTO `location` VALUES (883, 34, 278, 3922, 'Medan Selayang', 'Kecamatan', '');
INSERT INTO `location` VALUES (884, 34, 278, 3923, 'Medan Sunggal', 'Kecamatan', '');
INSERT INTO `location` VALUES (885, 34, 278, 3924, 'Medan Tembung', 'Kecamatan', '');
INSERT INTO `location` VALUES (886, 34, 278, 3925, 'Medan Timur', 'Kecamatan', '');
INSERT INTO `location` VALUES (887, 34, 278, 3926, 'Medan Tuntungan', 'Kecamatan', '');
INSERT INTO `location` VALUES (888, 32, 12, 0, 'Agam', 'Kabupaten', '26411');
INSERT INTO `location` VALUES (889, 32, 93, 0, 'Bukittinggi', 'Kota', '26115');
INSERT INTO `location` VALUES (890, 32, 116, 0, 'Dharmasraya', 'Kabupaten', '27612');
INSERT INTO `location` VALUES (891, 32, 186, 0, 'Kepulauan Mentawai', 'Kabupaten', '25771');
INSERT INTO `location` VALUES (892, 32, 236, 0, 'Lima Puluh Koto/Kota', 'Kabupaten', '26671');
INSERT INTO `location` VALUES (893, 32, 318, 0, 'Padang', 'Kota', '25112');
INSERT INTO `location` VALUES (894, 32, 321, 0, 'Padang Panjang', 'Kota', '27122');
INSERT INTO `location` VALUES (895, 32, 322, 0, 'Padang Pariaman', 'Kabupaten', '25583');
INSERT INTO `location` VALUES (896, 32, 337, 0, 'Pariaman', 'Kota', '25511');
INSERT INTO `location` VALUES (897, 32, 339, 0, 'Pasaman', 'Kabupaten', '26318');
INSERT INTO `location` VALUES (898, 32, 340, 0, 'Pasaman Barat', 'Kabupaten', '26511');
INSERT INTO `location` VALUES (899, 32, 345, 0, 'Payakumbuh', 'Kota', '26213');
INSERT INTO `location` VALUES (900, 32, 357, 0, 'Pesisir Selatan', 'Kabupaten', '25611');
INSERT INTO `location` VALUES (901, 32, 394, 0, 'Sawah Lunto', 'Kota', '27416');
INSERT INTO `location` VALUES (902, 32, 411, 0, 'Sijunjung (Sawah Lunto Sijunjung)', 'Kabupaten', '27511');
INSERT INTO `location` VALUES (903, 32, 420, 0, 'Solok', 'Kabupaten', '27365');
INSERT INTO `location` VALUES (904, 32, 421, 0, 'Solok', 'Kota', '27315');
INSERT INTO `location` VALUES (905, 32, 422, 0, 'Solok Selatan', 'Kabupaten', '27779');
INSERT INTO `location` VALUES (906, 32, 453, 0, 'Tanah Datar', 'Kabupaten', '27211');
INSERT INTO `location` VALUES (907, 32, 339, 4760, 'Bonjol', 'Kecamatan', '');
INSERT INTO `location` VALUES (908, 32, 339, 4761, 'Duo Koto (II Koto)', 'Kecamatan', '');
INSERT INTO `location` VALUES (909, 32, 339, 4762, 'Lubuk Sikaping', 'Kecamatan', '');
INSERT INTO `location` VALUES (910, 32, 339, 4763, 'Mapat Tunggul', 'Kecamatan', '');
INSERT INTO `location` VALUES (911, 32, 339, 4764, 'Mapat Tunggul Selatan', 'Kecamatan', '');
INSERT INTO `location` VALUES (912, 32, 339, 4765, 'Padang Gelugur', 'Kecamatan', '');
INSERT INTO `location` VALUES (913, 32, 339, 4766, 'Panti', 'Kecamatan', '');
INSERT INTO `location` VALUES (914, 32, 339, 4767, 'Rao', 'Kecamatan', '');
INSERT INTO `location` VALUES (915, 32, 339, 4768, 'Rao Selatan', 'Kecamatan', '');
INSERT INTO `location` VALUES (916, 32, 339, 4769, 'Rao Utara', 'Kecamatan', '');
INSERT INTO `location` VALUES (917, 32, 339, 4770, 'Simpang Alahan Mati', 'Kecamatan', '');
INSERT INTO `location` VALUES (918, 32, 339, 4771, 'Tigo Nagari (III Nagari)', 'Kecamatan', '');
INSERT INTO `location` VALUES (919, 3, 455, 6268, 'Balaraja', 'Kecamatan', '');
INSERT INTO `location` VALUES (920, 3, 455, 6269, 'Cikupa', 'Kecamatan', '');
INSERT INTO `location` VALUES (921, 3, 455, 6270, 'Cisauk', 'Kecamatan', '');
INSERT INTO `location` VALUES (922, 3, 455, 6271, 'Cisoka', 'Kecamatan', '');
INSERT INTO `location` VALUES (923, 3, 455, 6272, 'Curug', 'Kecamatan', '');
INSERT INTO `location` VALUES (924, 3, 455, 6273, 'Gunung Kaler', 'Kecamatan', '');
INSERT INTO `location` VALUES (925, 3, 455, 6274, 'Jambe', 'Kecamatan', '');
INSERT INTO `location` VALUES (926, 3, 455, 6275, 'Jayanti', 'Kecamatan', '');
INSERT INTO `location` VALUES (927, 3, 455, 6276, 'Kelapa Dua', 'Kecamatan', '');
INSERT INTO `location` VALUES (928, 3, 455, 6277, 'Kemiri', 'Kecamatan', '');
INSERT INTO `location` VALUES (929, 3, 455, 6278, 'Kosambi', 'Kecamatan', '');
INSERT INTO `location` VALUES (930, 3, 455, 6279, 'Kresek', 'Kecamatan', '');
INSERT INTO `location` VALUES (931, 3, 455, 6280, 'Kronjo', 'Kecamatan', '');
INSERT INTO `location` VALUES (932, 3, 455, 6281, 'Legok', 'Kecamatan', '');
INSERT INTO `location` VALUES (933, 3, 455, 6282, 'Mauk', 'Kecamatan', '');
INSERT INTO `location` VALUES (934, 3, 455, 6283, 'Mekar Baru', 'Kecamatan', '');
INSERT INTO `location` VALUES (935, 3, 455, 6284, 'Pagedangan', 'Kecamatan', '');
INSERT INTO `location` VALUES (936, 3, 455, 6285, 'Pakuhaji', 'Kecamatan', '');
INSERT INTO `location` VALUES (937, 3, 455, 6286, 'Panongan', 'Kecamatan', '');
INSERT INTO `location` VALUES (938, 3, 455, 6287, 'Pasar Kemis', 'Kecamatan', '');
INSERT INTO `location` VALUES (939, 3, 455, 6288, 'Rajeg', 'Kecamatan', '');
INSERT INTO `location` VALUES (940, 3, 455, 6289, 'Sepatan', 'Kecamatan', '');
INSERT INTO `location` VALUES (941, 3, 455, 6290, 'Sepatan Timur', 'Kecamatan', '');
INSERT INTO `location` VALUES (942, 3, 455, 6291, 'Sindang Jaya', 'Kecamatan', '');
INSERT INTO `location` VALUES (943, 3, 455, 6292, 'Solear', 'Kecamatan', '');
INSERT INTO `location` VALUES (944, 3, 455, 6293, 'Sukadiri', 'Kecamatan', '');
INSERT INTO `location` VALUES (945, 3, 455, 6294, 'Sukamulya', 'Kecamatan', '');
INSERT INTO `location` VALUES (946, 3, 455, 6295, 'Teluknaga', 'Kecamatan', '');
INSERT INTO `location` VALUES (947, 3, 455, 6296, 'Tigaraksa', 'Kecamatan', '');
INSERT INTO `location` VALUES (948, 33, 40, 0, 'Banyuasin', 'Kabupaten', '30911');
INSERT INTO `location` VALUES (949, 33, 121, 0, 'Empat Lawang', 'Kabupaten', '31811');
INSERT INTO `location` VALUES (950, 33, 220, 0, 'Lahat', 'Kabupaten', '31419');
INSERT INTO `location` VALUES (951, 33, 242, 0, 'Lubuk Linggau', 'Kota', '31614');
INSERT INTO `location` VALUES (952, 33, 292, 0, 'Muara Enim', 'Kabupaten', '31315');
INSERT INTO `location` VALUES (953, 33, 297, 0, 'Musi Banyuasin', 'Kabupaten', '30719');
INSERT INTO `location` VALUES (954, 33, 298, 0, 'Musi Rawas', 'Kabupaten', '31661');
INSERT INTO `location` VALUES (955, 33, 312, 0, 'Ogan Ilir', 'Kabupaten', '30811');
INSERT INTO `location` VALUES (956, 33, 313, 0, 'Ogan Komering Ilir', 'Kabupaten', '30618');
INSERT INTO `location` VALUES (957, 33, 314, 0, 'Ogan Komering Ulu', 'Kabupaten', '32112');
INSERT INTO `location` VALUES (958, 33, 315, 0, 'Ogan Komering Ulu Selatan', 'Kabupaten', '32211');
INSERT INTO `location` VALUES (959, 33, 316, 0, 'Ogan Komering Ulu Timur', 'Kabupaten', '32312');
INSERT INTO `location` VALUES (960, 33, 324, 0, 'Pagar Alam', 'Kota', '31512');
INSERT INTO `location` VALUES (961, 33, 327, 0, 'Palembang', 'Kota', '30111');
INSERT INTO `location` VALUES (962, 33, 367, 0, 'Prabumulih', 'Kota', '31121');
INSERT INTO `location` VALUES (963, 33, 40, 554, 'Air Kumbang', 'Kecamatan', '');
INSERT INTO `location` VALUES (964, 33, 40, 555, 'Air Salek', 'Kecamatan', '');
INSERT INTO `location` VALUES (965, 33, 40, 556, 'Banyuasin I', 'Kecamatan', '');
INSERT INTO `location` VALUES (966, 33, 40, 557, 'Banyuasin II', 'Kecamatan', '');
INSERT INTO `location` VALUES (967, 33, 40, 558, 'Banyuasin III', 'Kecamatan', '');
INSERT INTO `location` VALUES (968, 33, 40, 559, 'Betung', 'Kecamatan', '');
INSERT INTO `location` VALUES (969, 33, 40, 560, 'Makarti Jaya', 'Kecamatan', '');
INSERT INTO `location` VALUES (970, 33, 40, 561, 'Muara Padang', 'Kecamatan', '');
INSERT INTO `location` VALUES (971, 33, 40, 562, 'Muara Sugihan', 'Kecamatan', '');
INSERT INTO `location` VALUES (972, 33, 40, 563, 'Muara Telang', 'Kecamatan', '');
INSERT INTO `location` VALUES (973, 33, 40, 564, 'Pulau Rimau', 'Kecamatan', '');
INSERT INTO `location` VALUES (974, 33, 40, 565, 'Rambutan', 'Kecamatan', '');
INSERT INTO `location` VALUES (975, 33, 40, 566, 'Rantau Bayur', 'Kecamatan', '');
INSERT INTO `location` VALUES (976, 33, 40, 567, 'Sembawa', 'Kecamatan', '');
INSERT INTO `location` VALUES (977, 33, 40, 568, 'Suak Tapeh', 'Kecamatan', '');
INSERT INTO `location` VALUES (978, 33, 40, 569, 'Sumber Marga Telang', 'Kecamatan', '');
INSERT INTO `location` VALUES (979, 33, 40, 570, 'Talang Kelapa', 'Kecamatan', '');
INSERT INTO `location` VALUES (980, 33, 40, 571, 'Tanjung Lago', 'Kecamatan', '');
INSERT INTO `location` VALUES (981, 33, 40, 572, 'Tungkal Ilir', 'Kecamatan', '');
INSERT INTO `location` VALUES (982, 3, 457, 6310, 'Ciputat', 'Kecamatan', '');
INSERT INTO `location` VALUES (983, 3, 457, 6311, 'Ciputat Timur', 'Kecamatan', '');
INSERT INTO `location` VALUES (984, 3, 457, 6312, 'Pamulang', 'Kecamatan', '');
INSERT INTO `location` VALUES (985, 3, 457, 6313, 'Pondok Aren', 'Kecamatan', '');
INSERT INTO `location` VALUES (986, 3, 457, 6314, 'Serpong', 'Kecamatan', '');
INSERT INTO `location` VALUES (987, 3, 457, 6315, 'Serpong Utara', 'Kecamatan', '');
INSERT INTO `location` VALUES (988, 3, 457, 6316, 'Setu', 'Kecamatan', '');
INSERT INTO `location` VALUES (989, 28, 38, 0, 'Bantaeng', 'Kabupaten', '92411');
INSERT INTO `location` VALUES (990, 28, 47, 0, 'Barru', 'Kabupaten', '90719');
INSERT INTO `location` VALUES (991, 28, 87, 0, 'Bone', 'Kabupaten', '92713');
INSERT INTO `location` VALUES (992, 28, 95, 0, 'Bulukumba', 'Kabupaten', '92511');
INSERT INTO `location` VALUES (993, 28, 123, 0, 'Enrekang', 'Kabupaten', '91719');
INSERT INTO `location` VALUES (994, 28, 132, 0, 'Gowa', 'Kabupaten', '92111');
INSERT INTO `location` VALUES (995, 28, 162, 0, 'Jeneponto', 'Kabupaten', '92319');
INSERT INTO `location` VALUES (996, 28, 244, 0, 'Luwu', 'Kabupaten', '91994');
INSERT INTO `location` VALUES (997, 28, 245, 0, 'Luwu Timur', 'Kabupaten', '92981');
INSERT INTO `location` VALUES (998, 28, 246, 0, 'Luwu Utara', 'Kabupaten', '92911');
INSERT INTO `location` VALUES (999, 28, 254, 0, 'Makassar', 'Kota', '90111');
INSERT INTO `location` VALUES (1000, 28, 275, 0, 'Maros', 'Kabupaten', '90511');
INSERT INTO `location` VALUES (1001, 28, 328, 0, 'Palopo', 'Kota', '91911');
INSERT INTO `location` VALUES (1002, 28, 333, 0, 'Pangkajene Kepulauan', 'Kabupaten', '90611');
INSERT INTO `location` VALUES (1003, 28, 336, 0, 'Parepare', 'Kota', '91123');
INSERT INTO `location` VALUES (1004, 28, 360, 0, 'Pinrang', 'Kabupaten', '91251');
INSERT INTO `location` VALUES (1005, 28, 396, 0, 'Selayar (Kepulauan Selayar)', 'Kabupaten', '92812');
INSERT INTO `location` VALUES (1006, 28, 408, 0, 'Sidenreng Rappang/Rapang', 'Kabupaten', '91613');
INSERT INTO `location` VALUES (1007, 28, 416, 0, 'Sinjai', 'Kabupaten', '92615');
INSERT INTO `location` VALUES (1008, 28, 423, 0, 'Soppeng', 'Kabupaten', '90812');
INSERT INTO `location` VALUES (1009, 28, 448, 0, 'Takalar', 'Kabupaten', '92212');
INSERT INTO `location` VALUES (1010, 28, 451, 0, 'Tana Toraja', 'Kabupaten', '91819');
INSERT INTO `location` VALUES (1011, 28, 486, 0, 'Toraja Utara', 'Kabupaten', '91831');
INSERT INTO `location` VALUES (1012, 28, 493, 0, 'Wajo', 'Kabupaten', '90911');
INSERT INTO `location` VALUES (1013, 28, 254, 3587, 'Biring Kanaya', 'Kecamatan', '');
INSERT INTO `location` VALUES (1014, 28, 254, 3588, 'Bontoala', 'Kecamatan', '');
INSERT INTO `location` VALUES (1015, 28, 254, 3589, 'Makassar', 'Kecamatan', '');
INSERT INTO `location` VALUES (1016, 28, 254, 3590, 'Mamajang', 'Kecamatan', '');
INSERT INTO `location` VALUES (1017, 28, 254, 3591, 'Manggala', 'Kecamatan', '');
INSERT INTO `location` VALUES (1018, 28, 254, 3592, 'Mariso', 'Kecamatan', '');
INSERT INTO `location` VALUES (1019, 28, 254, 3593, 'Panakkukang', 'Kecamatan', '');
INSERT INTO `location` VALUES (1020, 28, 254, 3594, 'Rappocini', 'Kecamatan', '');
INSERT INTO `location` VALUES (1021, 28, 254, 3595, 'Tallo', 'Kecamatan', '');
INSERT INTO `location` VALUES (1022, 28, 254, 3596, 'Tamalanrea', 'Kecamatan', '');
INSERT INTO `location` VALUES (1023, 28, 254, 3597, 'Tamalate', 'Kecamatan', '');
INSERT INTO `location` VALUES (1024, 28, 254, 3598, 'Ujung Pandang', 'Kecamatan', '');
INSERT INTO `location` VALUES (1025, 28, 254, 3599, 'Ujung Tanah', 'Kecamatan', '');
INSERT INTO `location` VALUES (1026, 28, 254, 3600, 'Wajo', 'Kecamatan', '');
INSERT INTO `location` VALUES (1027, 15, 19, 272, 'Balikpapan Barat', 'Kecamatan', '');
INSERT INTO `location` VALUES (1028, 15, 19, 273, 'Balikpapan Kota', 'Kecamatan', '');
INSERT INTO `location` VALUES (1029, 15, 19, 274, 'Balikpapan Selatan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1030, 15, 19, 275, 'Balikpapan Tengah', 'Kecamatan', '');
INSERT INTO `location` VALUES (1031, 15, 19, 276, 'Balikpapan Timur', 'Kecamatan', '');
INSERT INTO `location` VALUES (1032, 15, 19, 277, 'Balikpapan Utara', 'Kecamatan', '');
INSERT INTO `location` VALUES (1033, 1, 161, 2232, 'Jembrana', 'Kecamatan', '');
INSERT INTO `location` VALUES (1034, 1, 161, 2233, 'Melaya', 'Kecamatan', '');
INSERT INTO `location` VALUES (1035, 1, 161, 2234, 'Mendoyo', 'Kecamatan', '');
INSERT INTO `location` VALUES (1036, 1, 161, 2235, 'Negara', 'Kecamatan', '');
INSERT INTO `location` VALUES (1037, 1, 161, 2236, 'Pekutatan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1038, 13, 18, 0, 'Balangan', 'Kabupaten', '71611');
INSERT INTO `location` VALUES (1039, 13, 33, 0, 'Banjar', 'Kabupaten', '70619');
INSERT INTO `location` VALUES (1040, 13, 35, 0, 'Banjarbaru', 'Kota', '70712');
INSERT INTO `location` VALUES (1041, 13, 36, 0, 'Banjarmasin', 'Kota', '70117');
INSERT INTO `location` VALUES (1042, 13, 43, 0, 'Barito Kuala', 'Kabupaten', '70511');
INSERT INTO `location` VALUES (1043, 13, 143, 0, 'Hulu Sungai Selatan', 'Kabupaten', '71212');
INSERT INTO `location` VALUES (1044, 13, 144, 0, 'Hulu Sungai Tengah', 'Kabupaten', '71313');
INSERT INTO `location` VALUES (1045, 13, 145, 0, 'Hulu Sungai Utara', 'Kabupaten', '71419');
INSERT INTO `location` VALUES (1046, 13, 203, 0, 'Kotabaru', 'Kabupaten', '72119');
INSERT INTO `location` VALUES (1047, 13, 446, 0, 'Tabalong', 'Kabupaten', '71513');
INSERT INTO `location` VALUES (1048, 13, 452, 0, 'Tanah Bumbu', 'Kabupaten', '72211');
INSERT INTO `location` VALUES (1049, 13, 454, 0, 'Tanah Laut', 'Kabupaten', '70811');
INSERT INTO `location` VALUES (1050, 13, 466, 0, 'Tapin', 'Kabupaten', '71119');
INSERT INTO `location` VALUES (1051, 33, 327, 4609, 'Alang-Alang Lebar', 'Kecamatan', '');
INSERT INTO `location` VALUES (1052, 33, 327, 4610, 'Bukit Kecil', 'Kecamatan', '');
INSERT INTO `location` VALUES (1053, 33, 327, 4611, 'Gandus', 'Kecamatan', '');
INSERT INTO `location` VALUES (1054, 33, 327, 4612, 'Ilir Barat I', 'Kecamatan', '');
INSERT INTO `location` VALUES (1055, 33, 327, 4613, 'Ilir Barat II', 'Kecamatan', '');
INSERT INTO `location` VALUES (1056, 33, 327, 4614, 'Ilir Timur I', 'Kecamatan', '');
INSERT INTO `location` VALUES (1057, 33, 327, 4615, 'Ilir Timur II', 'Kecamatan', '');
INSERT INTO `location` VALUES (1058, 33, 327, 4616, 'Kalidoni', 'Kecamatan', '');
INSERT INTO `location` VALUES (1059, 33, 327, 4617, 'Kemuning', 'Kecamatan', '');
INSERT INTO `location` VALUES (1060, 33, 327, 4618, 'Kertapati', 'Kecamatan', '');
INSERT INTO `location` VALUES (1061, 33, 327, 4619, 'Plaju', 'Kecamatan', '');
INSERT INTO `location` VALUES (1062, 33, 327, 4620, 'Sako', 'Kecamatan', '');
INSERT INTO `location` VALUES (1063, 33, 327, 4621, 'Seberang Ulu I', 'Kecamatan', '');
INSERT INTO `location` VALUES (1064, 33, 327, 4622, 'Seberang Ulu II', 'Kecamatan', '');
INSERT INTO `location` VALUES (1065, 33, 327, 4623, 'Sematang Borang', 'Kecamatan', '');
INSERT INTO `location` VALUES (1066, 33, 327, 4624, 'Sukarami', 'Kecamatan', '');
INSERT INTO `location` VALUES (1067, 22, 118, 1609, 'Dompu', 'Kecamatan', '');
INSERT INTO `location` VALUES (1068, 22, 118, 1610, 'Hu\'u', 'Kecamatan', '');
INSERT INTO `location` VALUES (1069, 22, 118, 1611, 'Kempo', 'Kecamatan', '');
INSERT INTO `location` VALUES (1070, 22, 118, 1612, 'Kilo', 'Kecamatan', '');
INSERT INTO `location` VALUES (1071, 22, 118, 1613, 'Menggelewa (Manggelewa)', 'Kecamatan', '');
INSERT INTO `location` VALUES (1072, 22, 118, 1614, 'Pajo', 'Kecamatan', '');
INSERT INTO `location` VALUES (1073, 22, 118, 1615, 'Pekat', 'Kecamatan', '');
INSERT INTO `location` VALUES (1074, 22, 118, 1616, 'Woja', 'Kecamatan', '');
INSERT INTO `location` VALUES (1075, 22, 69, 929, 'Asakota', 'Kecamatan', '');
INSERT INTO `location` VALUES (1076, 22, 69, 930, 'Mpunda', 'Kecamatan', '');
INSERT INTO `location` VALUES (1077, 22, 69, 931, 'Raba', 'Kecamatan', '');
INSERT INTO `location` VALUES (1078, 22, 69, 932, 'Rasanae Barat', 'Kecamatan', '');
INSERT INTO `location` VALUES (1079, 22, 69, 933, 'Rasanae Timur', 'Kecamatan', '');
INSERT INTO `location` VALUES (1080, 9, 115, 1577, 'Beji', 'Kecamatan', '');
INSERT INTO `location` VALUES (1081, 9, 115, 1578, 'Bojongsari', 'Kecamatan', '');
INSERT INTO `location` VALUES (1082, 9, 115, 1579, 'Cilodong', 'Kecamatan', '');
INSERT INTO `location` VALUES (1083, 9, 115, 1580, 'Cimanggis', 'Kecamatan', '');
INSERT INTO `location` VALUES (1084, 9, 115, 1581, 'Cinere', 'Kecamatan', '');
INSERT INTO `location` VALUES (1085, 9, 115, 1582, 'Cipayung', 'Kecamatan', '');
INSERT INTO `location` VALUES (1086, 9, 115, 1583, 'Limo', 'Kecamatan', '');
INSERT INTO `location` VALUES (1087, 9, 115, 1584, 'Pancoran Mas', 'Kecamatan', '');
INSERT INTO `location` VALUES (1088, 9, 115, 1585, 'Sawangan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1089, 9, 115, 1586, 'Sukmajaya', 'Kecamatan', '');
INSERT INTO `location` VALUES (1090, 9, 115, 1587, 'Tapos', 'Kecamatan', '');
INSERT INTO `location` VALUES (1091, 9, 211, 2942, 'Ciawigebang', 'Kecamatan', '');
INSERT INTO `location` VALUES (1092, 9, 211, 2943, 'Cibeureum', 'Kecamatan', '');
INSERT INTO `location` VALUES (1093, 9, 211, 2944, 'Cibingbin', 'Kecamatan', '');
INSERT INTO `location` VALUES (1094, 9, 211, 2945, 'Cidahu', 'Kecamatan', '');
INSERT INTO `location` VALUES (1095, 9, 211, 2946, 'Cigandamekar', 'Kecamatan', '');
INSERT INTO `location` VALUES (1096, 9, 211, 2947, 'Cigugur', 'Kecamatan', '');
INSERT INTO `location` VALUES (1097, 9, 211, 2948, 'Cilebak', 'Kecamatan', '');
INSERT INTO `location` VALUES (1098, 9, 211, 2949, 'Cilimus', 'Kecamatan', '');
INSERT INTO `location` VALUES (1099, 9, 211, 2950, 'Cimahi', 'Kecamatan', '');
INSERT INTO `location` VALUES (1100, 9, 211, 2951, 'Ciniru', 'Kecamatan', '');
INSERT INTO `location` VALUES (1101, 9, 211, 2952, 'Cipicung', 'Kecamatan', '');
INSERT INTO `location` VALUES (1102, 9, 211, 2953, 'Ciwaru', 'Kecamatan', '');
INSERT INTO `location` VALUES (1103, 9, 211, 2954, 'Darma', 'Kecamatan', '');
INSERT INTO `location` VALUES (1104, 9, 211, 2955, 'Garawangi', 'Kecamatan', '');
INSERT INTO `location` VALUES (1105, 9, 211, 2956, 'Hantara', 'Kecamatan', '');
INSERT INTO `location` VALUES (1106, 9, 211, 2957, 'Jalaksana', 'Kecamatan', '');
INSERT INTO `location` VALUES (1107, 9, 211, 2958, 'Japara', 'Kecamatan', '');
INSERT INTO `location` VALUES (1108, 9, 211, 2959, 'Kadugede', 'Kecamatan', '');
INSERT INTO `location` VALUES (1109, 9, 211, 2960, 'Kalimanggis', 'Kecamatan', '');
INSERT INTO `location` VALUES (1110, 9, 211, 2961, 'Karangkancana', 'Kecamatan', '');
INSERT INTO `location` VALUES (1111, 9, 211, 2962, 'Kramat Mulya', 'Kecamatan', '');
INSERT INTO `location` VALUES (1112, 9, 211, 2963, 'Kuningan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1113, 9, 211, 2964, 'Lebakwangi', 'Kecamatan', '');
INSERT INTO `location` VALUES (1114, 9, 211, 2965, 'Luragung', 'Kecamatan', '');
INSERT INTO `location` VALUES (1115, 9, 211, 2966, 'Maleber', 'Kecamatan', '');
INSERT INTO `location` VALUES (1116, 9, 211, 2967, 'Mandirancan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1117, 9, 211, 2968, 'Nusaherang', 'Kecamatan', '');
INSERT INTO `location` VALUES (1118, 9, 211, 2969, 'Pancalang', 'Kecamatan', '');
INSERT INTO `location` VALUES (1119, 9, 211, 2970, 'Pasawahan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1120, 9, 211, 2971, 'Selajambe', 'Kecamatan', '');
INSERT INTO `location` VALUES (1121, 9, 211, 2972, 'Sindangagung', 'Kecamatan', '');
INSERT INTO `location` VALUES (1122, 9, 211, 2973, 'Subang', 'Kecamatan', '');
INSERT INTO `location` VALUES (1123, 13, 35, 499, 'Banjar Baru Selatan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1124, 13, 35, 500, 'Banjar Baru Utara', 'Kecamatan', '');
INSERT INTO `location` VALUES (1125, 13, 35, 501, 'Cempaka', 'Kecamatan', '');
INSERT INTO `location` VALUES (1126, 13, 35, 502, 'Landasan Ulin', 'Kecamatan', '');
INSERT INTO `location` VALUES (1127, 13, 35, 503, 'Liang Anggang', 'Kecamatan', '');
INSERT INTO `location` VALUES (1128, 11, 247, 3493, 'Balerejo', 'Kecamatan', '');
INSERT INTO `location` VALUES (1129, 11, 247, 3494, 'Dagangan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1130, 11, 247, 3495, 'Dolopo', 'Kecamatan', '');
INSERT INTO `location` VALUES (1131, 11, 247, 3496, 'Geger', 'Kecamatan', '');
INSERT INTO `location` VALUES (1132, 11, 247, 3497, 'Gemarang', 'Kecamatan', '');
INSERT INTO `location` VALUES (1133, 11, 247, 3498, 'Jiwan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1134, 11, 247, 3499, 'Kare', 'Kecamatan', '');
INSERT INTO `location` VALUES (1135, 11, 247, 3500, 'Kebonsari', 'Kecamatan', '');
INSERT INTO `location` VALUES (1136, 11, 247, 3501, 'Madiun', 'Kecamatan', '');
INSERT INTO `location` VALUES (1137, 11, 247, 3502, 'Mejayan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1138, 11, 247, 3503, 'Pilangkenceng', 'Kecamatan', '');
INSERT INTO `location` VALUES (1139, 11, 247, 3504, 'Saradan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1140, 11, 247, 3505, 'Sawahan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1141, 11, 247, 3506, 'Wonoasri', 'Kecamatan', '');
INSERT INTO `location` VALUES (1142, 11, 247, 3507, 'Wungu', 'Kecamatan', '');
INSERT INTO `location` VALUES (1143, 10, 445, 6162, 'Banjarsari', 'Kecamatan', '');
INSERT INTO `location` VALUES (1144, 10, 445, 6163, 'Jebres', 'Kecamatan', '');
INSERT INTO `location` VALUES (1145, 10, 445, 6164, 'Laweyan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1146, 10, 445, 6165, 'Pasar Kliwon', 'Kecamatan', '');
INSERT INTO `location` VALUES (1147, 10, 445, 6166, 'Serengan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1148, 9, 23, 338, 'Andir', 'Kecamatan', '');
INSERT INTO `location` VALUES (1149, 9, 23, 339, 'Antapani (Cicadas)', 'Kecamatan', '');
INSERT INTO `location` VALUES (1150, 9, 23, 340, 'Arcamanik', 'Kecamatan', '');
INSERT INTO `location` VALUES (1151, 9, 23, 341, 'Astana Anyar', 'Kecamatan', '');
INSERT INTO `location` VALUES (1152, 9, 23, 342, 'Babakan Ciparay', 'Kecamatan', '');
INSERT INTO `location` VALUES (1153, 9, 23, 343, 'Bandung Kidul', 'Kecamatan', '');
INSERT INTO `location` VALUES (1154, 9, 23, 344, 'Bandung Kulon', 'Kecamatan', '');
INSERT INTO `location` VALUES (1155, 9, 23, 345, 'Bandung Wetan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1156, 9, 23, 346, 'Batununggal', 'Kecamatan', '');
INSERT INTO `location` VALUES (1157, 9, 23, 347, 'Bojongloa Kaler', 'Kecamatan', '');
INSERT INTO `location` VALUES (1158, 9, 23, 348, 'Bojongloa Kidul', 'Kecamatan', '');
INSERT INTO `location` VALUES (1159, 9, 23, 349, 'Buahbatu (Margacinta)', 'Kecamatan', '');
INSERT INTO `location` VALUES (1160, 9, 23, 350, 'Cibeunying Kaler', 'Kecamatan', '');
INSERT INTO `location` VALUES (1161, 9, 23, 351, 'Cibeunying Kidul', 'Kecamatan', '');
INSERT INTO `location` VALUES (1162, 9, 23, 352, 'Cibiru', 'Kecamatan', '');
INSERT INTO `location` VALUES (1163, 9, 23, 353, 'Cicendo', 'Kecamatan', '');
INSERT INTO `location` VALUES (1164, 9, 23, 354, 'Cidadap', 'Kecamatan', '');
INSERT INTO `location` VALUES (1165, 9, 23, 355, 'Cinambo', 'Kecamatan', '');
INSERT INTO `location` VALUES (1166, 9, 23, 356, 'Coblong', 'Kecamatan', '');
INSERT INTO `location` VALUES (1167, 9, 23, 357, 'Gedebage', 'Kecamatan', '');
INSERT INTO `location` VALUES (1168, 9, 23, 358, 'Kiaracondong', 'Kecamatan', '');
INSERT INTO `location` VALUES (1169, 9, 23, 359, 'Lengkong', 'Kecamatan', '');
INSERT INTO `location` VALUES (1170, 9, 23, 360, 'Mandalajati', 'Kecamatan', '');
INSERT INTO `location` VALUES (1171, 9, 23, 361, 'Panyileukan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1172, 9, 23, 362, 'Rancasari', 'Kecamatan', '');
INSERT INTO `location` VALUES (1173, 9, 23, 363, 'Regol', 'Kecamatan', '');
INSERT INTO `location` VALUES (1174, 9, 23, 364, 'Sukajadi', 'Kecamatan', '');
INSERT INTO `location` VALUES (1175, 9, 23, 365, 'Sukasari', 'Kecamatan', '');
INSERT INTO `location` VALUES (1176, 9, 23, 366, 'Sumur Bandung', 'Kecamatan', '');
INSERT INTO `location` VALUES (1177, 9, 23, 367, 'Ujung Berung', 'Kecamatan', '');
INSERT INTO `location` VALUES (1178, 10, 37, 509, 'Banjarmangu', 'Kecamatan', '');
INSERT INTO `location` VALUES (1179, 10, 37, 510, 'Banjarnegara', 'Kecamatan', '');
INSERT INTO `location` VALUES (1180, 10, 37, 511, 'Batur', 'Kecamatan', '');
INSERT INTO `location` VALUES (1181, 10, 37, 512, 'Bawang', 'Kecamatan', '');
INSERT INTO `location` VALUES (1182, 10, 37, 513, 'Kalibening', 'Kecamatan', '');
INSERT INTO `location` VALUES (1183, 10, 37, 514, 'Karangkobar', 'Kecamatan', '');
INSERT INTO `location` VALUES (1184, 10, 37, 515, 'Madukara', 'Kecamatan', '');
INSERT INTO `location` VALUES (1185, 10, 37, 516, 'Mandiraja', 'Kecamatan', '');
INSERT INTO `location` VALUES (1186, 10, 37, 517, 'Pagedongan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1187, 10, 37, 518, 'Pagentan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1188, 10, 37, 519, 'Pandanarum', 'Kecamatan', '');
INSERT INTO `location` VALUES (1189, 10, 37, 520, 'Pejawaran', 'Kecamatan', '');
INSERT INTO `location` VALUES (1190, 10, 37, 521, 'Punggelan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1191, 10, 37, 522, 'Purwonegoro', 'Kecamatan', '');
INSERT INTO `location` VALUES (1192, 10, 37, 523, 'Purworejo Klampok', 'Kecamatan', '');
INSERT INTO `location` VALUES (1193, 10, 37, 524, 'Rakit', 'Kecamatan', '');
INSERT INTO `location` VALUES (1194, 10, 37, 525, 'Sigaluh', 'Kecamatan', '');
INSERT INTO `location` VALUES (1195, 10, 37, 526, 'Susukan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1196, 10, 37, 527, 'Wanadadi (Wonodadi)', 'Kecamatan', '');
INSERT INTO `location` VALUES (1197, 10, 37, 528, 'Wanayasa', 'Kecamatan', '');
INSERT INTO `location` VALUES (1198, 10, 352, 4938, 'Ampelgading', 'Kecamatan', '');
INSERT INTO `location` VALUES (1199, 10, 352, 4939, 'Bantarbolang', 'Kecamatan', '');
INSERT INTO `location` VALUES (1200, 10, 352, 4940, 'Belik', 'Kecamatan', '');
INSERT INTO `location` VALUES (1201, 10, 352, 4941, 'Bodeh', 'Kecamatan', '');
INSERT INTO `location` VALUES (1202, 10, 352, 4942, 'Comal', 'Kecamatan', '');
INSERT INTO `location` VALUES (1203, 10, 352, 4943, 'Moga', 'Kecamatan', '');
INSERT INTO `location` VALUES (1204, 10, 352, 4944, 'Pemalang', 'Kecamatan', '');
INSERT INTO `location` VALUES (1205, 10, 352, 4945, 'Petarukan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1206, 10, 352, 4946, 'Pulosari', 'Kecamatan', '');
INSERT INTO `location` VALUES (1207, 10, 352, 4947, 'Randudongkal', 'Kecamatan', '');
INSERT INTO `location` VALUES (1208, 10, 352, 4948, 'Taman', 'Kecamatan', '');
INSERT INTO `location` VALUES (1209, 10, 352, 4949, 'Ulujami', 'Kecamatan', '');
INSERT INTO `location` VALUES (1210, 10, 352, 4950, 'Warungpring', 'Kecamatan', '');
INSERT INTO `location` VALUES (1211, 10, 352, 4951, 'Watukumpul', 'Kecamatan', '');
INSERT INTO `location` VALUES (1212, 32, 337, 4734, 'Pariaman Selatan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1213, 32, 337, 4735, 'Pariaman Tengah', 'Kecamatan', '');
INSERT INTO `location` VALUES (1214, 32, 337, 4736, 'Pariaman Timur', 'Kecamatan', '');
INSERT INTO `location` VALUES (1215, 32, 337, 4737, 'Pariaman Utara', 'Kecamatan', '');
INSERT INTO `location` VALUES (1216, 17, 48, 0, 'Batam', 'Kota', '29413');
INSERT INTO `location` VALUES (1217, 17, 71, 0, 'Bintan', 'Kabupaten', '29135');
INSERT INTO `location` VALUES (1218, 17, 172, 0, 'Karimun', 'Kabupaten', '29611');
INSERT INTO `location` VALUES (1219, 17, 184, 0, 'Kepulauan Anambas', 'Kabupaten', '29991');
INSERT INTO `location` VALUES (1220, 17, 237, 0, 'Lingga', 'Kabupaten', '29811');
INSERT INTO `location` VALUES (1221, 17, 302, 0, 'Natuna', 'Kabupaten', '29711');
INSERT INTO `location` VALUES (1222, 17, 462, 0, 'Tanjung Pinang', 'Kota', '29111');
INSERT INTO `location` VALUES (1223, 17, 48, 673, 'Batam Kota', 'Kecamatan', '');
INSERT INTO `location` VALUES (1224, 17, 48, 674, 'Batu Aji', 'Kecamatan', '');
INSERT INTO `location` VALUES (1225, 17, 48, 675, 'Batu Ampar', 'Kecamatan', '');
INSERT INTO `location` VALUES (1226, 17, 48, 676, 'Belakang Padang', 'Kecamatan', '');
INSERT INTO `location` VALUES (1227, 17, 48, 677, 'Bengkong', 'Kecamatan', '');
INSERT INTO `location` VALUES (1228, 17, 48, 678, 'Bulang', 'Kecamatan', '');
INSERT INTO `location` VALUES (1229, 17, 48, 679, 'Galang', 'Kecamatan', '');
INSERT INTO `location` VALUES (1230, 17, 48, 680, 'Lubuk Baja', 'Kecamatan', '');
INSERT INTO `location` VALUES (1231, 17, 48, 681, 'Nongsa', 'Kecamatan', '');
INSERT INTO `location` VALUES (1232, 17, 48, 682, 'Sagulung', 'Kecamatan', '');
INSERT INTO `location` VALUES (1233, 17, 48, 683, 'Sei/Sungai Beduk', 'Kecamatan', '');
INSERT INTO `location` VALUES (1234, 17, 48, 684, 'Sekupang', 'Kecamatan', '');
INSERT INTO `location` VALUES (1235, 9, 107, 1469, 'Cimahi Selatan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1236, 9, 107, 1470, 'Cimahi Tengah', 'Kecamatan', '');
INSERT INTO `location` VALUES (1237, 9, 107, 1471, 'Cimahi Utara', 'Kecamatan', '');
INSERT INTO `location` VALUES (1238, 15, 66, 879, 'Batu Putih', 'Kecamatan', '');
INSERT INTO `location` VALUES (1239, 15, 66, 880, 'Biatan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1240, 15, 66, 881, 'Biduk-Biduk', 'Kecamatan', '');
INSERT INTO `location` VALUES (1241, 15, 66, 882, 'Derawan (Pulau Derawan)', 'Kecamatan', '');
INSERT INTO `location` VALUES (1242, 15, 66, 883, 'Gunung Tabur', 'Kecamatan', '');
INSERT INTO `location` VALUES (1243, 15, 66, 884, 'Kelay', 'Kecamatan', '');
INSERT INTO `location` VALUES (1244, 15, 66, 885, 'Maratua', 'Kecamatan', '');
INSERT INTO `location` VALUES (1245, 15, 66, 886, 'Sambaliung', 'Kecamatan', '');
INSERT INTO `location` VALUES (1246, 15, 66, 887, 'Segah', 'Kecamatan', '');
INSERT INTO `location` VALUES (1247, 15, 66, 888, 'Tabalar', 'Kecamatan', '');
INSERT INTO `location` VALUES (1248, 15, 66, 889, 'Talisayan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1249, 15, 66, 890, 'Tanjung Redeb', 'Kecamatan', '');
INSERT INTO `location` VALUES (1250, 15, 66, 891, 'Teluk Bayur', 'Kecamatan', '');
INSERT INTO `location` VALUES (1251, 15, 387, 5356, 'Loa Janan Ilir', 'Kecamatan', '');
INSERT INTO `location` VALUES (1252, 15, 387, 5357, 'Palaran', 'Kecamatan', '');
INSERT INTO `location` VALUES (1253, 15, 387, 5358, 'Samarinda Ilir', 'Kecamatan', '');
INSERT INTO `location` VALUES (1254, 15, 387, 5359, 'Samarinda Kota', 'Kecamatan', '');
INSERT INTO `location` VALUES (1255, 15, 387, 5360, 'Samarinda Seberang', 'Kecamatan', '');
INSERT INTO `location` VALUES (1256, 15, 387, 5361, 'Samarinda Ulu', 'Kecamatan', '');
INSERT INTO `location` VALUES (1257, 15, 387, 5362, 'Samarinda Utara', 'Kecamatan', '');
INSERT INTO `location` VALUES (1258, 15, 387, 5363, 'Sambutan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1259, 15, 387, 5364, 'Sungai Kunjang', 'Kecamatan', '');
INSERT INTO `location` VALUES (1260, 15, 387, 5365, 'Sungai Pinang', 'Kecamatan', '');
INSERT INTO `location` VALUES (1261, 21, 1, 0, 'Aceh Barat', 'Kabupaten', '23681');
INSERT INTO `location` VALUES (1262, 21, 2, 0, 'Aceh Barat Daya', 'Kabupaten', '23764');
INSERT INTO `location` VALUES (1263, 21, 3, 0, 'Aceh Besar', 'Kabupaten', '23951');
INSERT INTO `location` VALUES (1264, 21, 4, 0, 'Aceh Jaya', 'Kabupaten', '23654');
INSERT INTO `location` VALUES (1265, 21, 5, 0, 'Aceh Selatan', 'Kabupaten', '23719');
INSERT INTO `location` VALUES (1266, 21, 6, 0, 'Aceh Singkil', 'Kabupaten', '24785');
INSERT INTO `location` VALUES (1267, 21, 7, 0, 'Aceh Tamiang', 'Kabupaten', '24476');
INSERT INTO `location` VALUES (1268, 21, 8, 0, 'Aceh Tengah', 'Kabupaten', '24511');
INSERT INTO `location` VALUES (1269, 21, 9, 0, 'Aceh Tenggara', 'Kabupaten', '24611');
INSERT INTO `location` VALUES (1270, 21, 10, 0, 'Aceh Timur', 'Kabupaten', '24454');
INSERT INTO `location` VALUES (1271, 21, 11, 0, 'Aceh Utara', 'Kabupaten', '24382');
INSERT INTO `location` VALUES (1272, 21, 20, 0, 'Banda Aceh', 'Kota', '23238');
INSERT INTO `location` VALUES (1273, 21, 59, 0, 'Bener Meriah', 'Kabupaten', '24581');
INSERT INTO `location` VALUES (1274, 21, 72, 0, 'Bireuen', 'Kabupaten', '24219');
INSERT INTO `location` VALUES (1275, 21, 127, 0, 'Gayo Lues', 'Kabupaten', '24653');
INSERT INTO `location` VALUES (1276, 21, 230, 0, 'Langsa', 'Kota', '24412');
INSERT INTO `location` VALUES (1277, 21, 235, 0, 'Lhokseumawe', 'Kota', '24352');
INSERT INTO `location` VALUES (1278, 21, 300, 0, 'Nagan Raya', 'Kabupaten', '23674');
INSERT INTO `location` VALUES (1279, 21, 358, 0, 'Pidie', 'Kabupaten', '24116');
INSERT INTO `location` VALUES (1280, 21, 359, 0, 'Pidie Jaya', 'Kabupaten', '24186');
INSERT INTO `location` VALUES (1281, 21, 384, 0, 'Sabang', 'Kota', '23512');
INSERT INTO `location` VALUES (1282, 21, 414, 0, 'Simeulue', 'Kabupaten', '23891');
INSERT INTO `location` VALUES (1283, 21, 429, 0, 'Subulussalam', 'Kota', '24882');
INSERT INTO `location` VALUES (1284, 21, 429, 5913, 'Longkib', 'Kecamatan', '');
INSERT INTO `location` VALUES (1285, 21, 429, 5914, 'Penanggalan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1286, 21, 429, 5915, 'Rundeng', 'Kecamatan', '');
INSERT INTO `location` VALUES (1287, 21, 429, 5916, 'Simpang Kiri', 'Kecamatan', '');
INSERT INTO `location` VALUES (1288, 21, 429, 5917, 'Sultan Daulat', 'Kecamatan', '');
INSERT INTO `location` VALUES (1289, 18, 21, 0, 'Bandar Lampung', 'Kota', '35139');
INSERT INTO `location` VALUES (1290, 18, 223, 0, 'Lampung Barat', 'Kabupaten', '34814');
INSERT INTO `location` VALUES (1291, 18, 224, 0, 'Lampung Selatan', 'Kabupaten', '35511');
INSERT INTO `location` VALUES (1292, 18, 225, 0, 'Lampung Tengah', 'Kabupaten', '34212');
INSERT INTO `location` VALUES (1293, 18, 226, 0, 'Lampung Timur', 'Kabupaten', '34319');
INSERT INTO `location` VALUES (1294, 18, 227, 0, 'Lampung Utara', 'Kabupaten', '34516');
INSERT INTO `location` VALUES (1295, 18, 282, 0, 'Mesuji', 'Kabupaten', '34911');
INSERT INTO `location` VALUES (1296, 18, 283, 0, 'Metro', 'Kota', '34111');
INSERT INTO `location` VALUES (1297, 18, 355, 0, 'Pesawaran', 'Kabupaten', '35312');
INSERT INTO `location` VALUES (1298, 18, 356, 0, 'Pesisir Barat', 'Kabupaten', '35974');
INSERT INTO `location` VALUES (1299, 18, 368, 0, 'Pringsewu', 'Kabupaten', '35719');
INSERT INTO `location` VALUES (1300, 18, 458, 0, 'Tanggamus', 'Kabupaten', '35619');
INSERT INTO `location` VALUES (1301, 18, 490, 0, 'Tulang Bawang', 'Kabupaten', '34613');
INSERT INTO `location` VALUES (1302, 18, 491, 0, 'Tulang Bawang Barat', 'Kabupaten', '34419');
INSERT INTO `location` VALUES (1303, 18, 496, 0, 'Way Kanan', 'Kabupaten', '34711');
INSERT INTO `location` VALUES (1304, 18, 225, 3172, 'Anak Ratu Aji', 'Kecamatan', '');
INSERT INTO `location` VALUES (1305, 18, 225, 3173, 'Anak Tuha', 'Kecamatan', '');
INSERT INTO `location` VALUES (1306, 18, 225, 3174, 'Bandar Mataram', 'Kecamatan', '');
INSERT INTO `location` VALUES (1307, 18, 225, 3175, 'Bandar Surabaya', 'Kecamatan', '');
INSERT INTO `location` VALUES (1308, 18, 225, 3176, 'Bangunrejo', 'Kecamatan', '');
INSERT INTO `location` VALUES (1309, 18, 225, 3177, 'Bekri', 'Kecamatan', '');
INSERT INTO `location` VALUES (1310, 18, 225, 3178, 'Bumi Nabung', 'Kecamatan', '');
INSERT INTO `location` VALUES (1311, 18, 225, 3179, 'Bumi Ratu Nuban', 'Kecamatan', '');
INSERT INTO `location` VALUES (1312, 18, 225, 3180, 'Gunung Sugih', 'Kecamatan', '');
INSERT INTO `location` VALUES (1313, 18, 225, 3181, 'Kalirejo', 'Kecamatan', '');
INSERT INTO `location` VALUES (1314, 18, 225, 3182, 'Kota Gajah', 'Kecamatan', '');
INSERT INTO `location` VALUES (1315, 18, 225, 3183, 'Padang Ratu', 'Kecamatan', '');
INSERT INTO `location` VALUES (1316, 18, 225, 3184, 'Pubian', 'Kecamatan', '');
INSERT INTO `location` VALUES (1317, 18, 225, 3185, 'Punggur', 'Kecamatan', '');
INSERT INTO `location` VALUES (1318, 18, 225, 3186, 'Putra Rumbia', 'Kecamatan', '');
INSERT INTO `location` VALUES (1319, 18, 225, 3187, 'Rumbia', 'Kecamatan', '');
INSERT INTO `location` VALUES (1320, 18, 225, 3188, 'Selagai Lingga', 'Kecamatan', '');
INSERT INTO `location` VALUES (1321, 18, 225, 3189, 'Sendang Agung', 'Kecamatan', '');
INSERT INTO `location` VALUES (1322, 18, 225, 3190, 'Seputih Agung', 'Kecamatan', '');
INSERT INTO `location` VALUES (1323, 18, 225, 3191, 'Seputih Banyak', 'Kecamatan', '');
INSERT INTO `location` VALUES (1324, 18, 225, 3192, 'Seputih Mataram', 'Kecamatan', '');
INSERT INTO `location` VALUES (1325, 18, 225, 3193, 'Seputih Raman', 'Kecamatan', '');
INSERT INTO `location` VALUES (1326, 18, 225, 3194, 'Seputih Surabaya', 'Kecamatan', '');
INSERT INTO `location` VALUES (1327, 18, 225, 3195, 'Terbanggi Besar', 'Kecamatan', '');
INSERT INTO `location` VALUES (1328, 18, 225, 3196, 'Terusan Nunyai', 'Kecamatan', '');
INSERT INTO `location` VALUES (1329, 18, 225, 3197, 'Trimurjo', 'Kecamatan', '');
INSERT INTO `location` VALUES (1330, 18, 225, 3198, 'Way Pangubuan (Pengubuan)', 'Kecamatan', '');
INSERT INTO `location` VALUES (1331, 18, 225, 3199, 'Way Seputih', 'Kecamatan', '');
INSERT INTO `location` VALUES (1332, 34, 481, 6652, 'Ajibata', 'Kecamatan', '');
INSERT INTO `location` VALUES (1333, 34, 481, 6653, 'Balige', 'Kecamatan', '');
INSERT INTO `location` VALUES (1334, 34, 481, 6654, 'Bonatua Lunasi', 'Kecamatan', '');
INSERT INTO `location` VALUES (1335, 34, 481, 6655, 'Bor-Bor', 'Kecamatan', '');
INSERT INTO `location` VALUES (1336, 34, 481, 6656, 'Habinsaran', 'Kecamatan', '');
INSERT INTO `location` VALUES (1337, 34, 481, 6657, 'Laguboti', 'Kecamatan', '');
INSERT INTO `location` VALUES (1338, 34, 481, 6658, 'Lumban Julu', 'Kecamatan', '');
INSERT INTO `location` VALUES (1339, 34, 481, 6659, 'Nassau', 'Kecamatan', '');
INSERT INTO `location` VALUES (1340, 34, 481, 6660, 'Parmaksian', 'Kecamatan', '');
INSERT INTO `location` VALUES (1341, 34, 481, 6661, 'Pintu Pohan Meranti', 'Kecamatan', '');
INSERT INTO `location` VALUES (1342, 34, 481, 6662, 'Porsea', 'Kecamatan', '');
INSERT INTO `location` VALUES (1343, 34, 481, 6663, 'Siantar Narumonda', 'Kecamatan', '');
INSERT INTO `location` VALUES (1344, 34, 481, 6664, 'Sigumpar', 'Kecamatan', '');
INSERT INTO `location` VALUES (1345, 34, 481, 6665, 'Silaen', 'Kecamatan', '');
INSERT INTO `location` VALUES (1346, 34, 481, 6666, 'Tampahan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1347, 34, 481, 6667, 'Uluan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1348, 4, 62, 832, 'Gading Cempaka', 'Kecamatan', '');
INSERT INTO `location` VALUES (1349, 4, 62, 833, 'Kampung Melayu', 'Kecamatan', '');
INSERT INTO `location` VALUES (1350, 4, 62, 834, 'Muara Bangka Hulu', 'Kecamatan', '');
INSERT INTO `location` VALUES (1351, 4, 62, 835, 'Ratu Agung', 'Kecamatan', '');
INSERT INTO `location` VALUES (1352, 4, 62, 836, 'Ratu Samban', 'Kecamatan', '');
INSERT INTO `location` VALUES (1353, 4, 62, 837, 'Selebar', 'Kecamatan', '');
INSERT INTO `location` VALUES (1354, 4, 62, 838, 'Singaran Pati', 'Kecamatan', '');
INSERT INTO `location` VALUES (1355, 4, 62, 839, 'Sungai Serut', 'Kecamatan', '');
INSERT INTO `location` VALUES (1356, 4, 62, 840, 'Teluk Segara', 'Kecamatan', '');
INSERT INTO `location` VALUES (1357, 9, 34, 495, 'Banjar', 'Kecamatan', '');
INSERT INTO `location` VALUES (1358, 9, 34, 496, 'Langensari', 'Kecamatan', '');
INSERT INTO `location` VALUES (1359, 9, 34, 497, 'Pataruman', 'Kecamatan', '');
INSERT INTO `location` VALUES (1360, 9, 34, 498, 'Purwaharja', 'Kecamatan', '');
INSERT INTO `location` VALUES (1361, 10, 181, 2533, 'Boja', 'Kecamatan', '');
INSERT INTO `location` VALUES (1362, 10, 181, 2534, 'Brangsong', 'Kecamatan', '');
INSERT INTO `location` VALUES (1363, 10, 181, 2535, 'Cepiring', 'Kecamatan', '');
INSERT INTO `location` VALUES (1364, 10, 181, 2536, 'Gemuh', 'Kecamatan', '');
INSERT INTO `location` VALUES (1365, 10, 181, 2537, 'Kaliwungu', 'Kecamatan', '');
INSERT INTO `location` VALUES (1366, 10, 181, 2538, 'Kaliwungu Selatan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1367, 10, 181, 2539, 'Kangkung', 'Kecamatan', '');
INSERT INTO `location` VALUES (1368, 10, 181, 2540, 'Kendal', 'Kecamatan', '');
INSERT INTO `location` VALUES (1369, 10, 181, 2541, 'Limbangan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1370, 10, 181, 2542, 'Ngampel', 'Kecamatan', '');
INSERT INTO `location` VALUES (1371, 10, 181, 2543, 'Pagerruyung', 'Kecamatan', '');
INSERT INTO `location` VALUES (1372, 10, 181, 2544, 'Patean', 'Kecamatan', '');
INSERT INTO `location` VALUES (1373, 10, 181, 2545, 'Patebon', 'Kecamatan', '');
INSERT INTO `location` VALUES (1374, 10, 181, 2546, 'Pegandon', 'Kecamatan', '');
INSERT INTO `location` VALUES (1375, 10, 181, 2547, 'Plantungan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1376, 10, 181, 2548, 'Ringinarum', 'Kecamatan', '');
INSERT INTO `location` VALUES (1377, 10, 181, 2549, 'Rowosari', 'Kecamatan', '');
INSERT INTO `location` VALUES (1378, 10, 181, 2550, 'Singorojo', 'Kecamatan', '');
INSERT INTO `location` VALUES (1379, 10, 181, 2551, 'Sukorejo', 'Kecamatan', '');
INSERT INTO `location` VALUES (1380, 10, 181, 2552, 'Weleri', 'Kecamatan', '');
INSERT INTO `location` VALUES (1381, 11, 363, 5071, 'Babadan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1382, 11, 363, 5072, 'Badegan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1383, 11, 363, 5073, 'Balong', 'Kecamatan', '');
INSERT INTO `location` VALUES (1384, 11, 363, 5074, 'Bungkal', 'Kecamatan', '');
INSERT INTO `location` VALUES (1385, 11, 363, 5075, 'Jambon', 'Kecamatan', '');
INSERT INTO `location` VALUES (1386, 11, 363, 5076, 'Jenangan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1387, 11, 363, 5077, 'Jetis', 'Kecamatan', '');
INSERT INTO `location` VALUES (1388, 11, 363, 5078, 'Kauman', 'Kecamatan', '');
INSERT INTO `location` VALUES (1389, 11, 363, 5079, 'Mlarak', 'Kecamatan', '');
INSERT INTO `location` VALUES (1390, 11, 363, 5080, 'Ngebel', 'Kecamatan', '');
INSERT INTO `location` VALUES (1391, 11, 363, 5081, 'Ngrayun', 'Kecamatan', '');
INSERT INTO `location` VALUES (1392, 11, 363, 5082, 'Ponorogo', 'Kecamatan', '');
INSERT INTO `location` VALUES (1393, 11, 363, 5083, 'Pudak', 'Kecamatan', '');
INSERT INTO `location` VALUES (1394, 11, 363, 5084, 'Pulung', 'Kecamatan', '');
INSERT INTO `location` VALUES (1395, 11, 363, 5085, 'Sambit', 'Kecamatan', '');
INSERT INTO `location` VALUES (1396, 11, 363, 5086, 'Sampung', 'Kecamatan', '');
INSERT INTO `location` VALUES (1397, 11, 363, 5087, 'Sawoo', 'Kecamatan', '');
INSERT INTO `location` VALUES (1398, 11, 363, 5088, 'Siman', 'Kecamatan', '');
INSERT INTO `location` VALUES (1399, 11, 363, 5089, 'Slahung', 'Kecamatan', '');
INSERT INTO `location` VALUES (1400, 11, 363, 5090, 'Sooko', 'Kecamatan', '');
INSERT INTO `location` VALUES (1401, 11, 363, 5091, 'Sukorejo', 'Kecamatan', '');
INSERT INTO `location` VALUES (1402, 5, 419, 5779, 'Berbah', 'Kecamatan', '');
INSERT INTO `location` VALUES (1403, 5, 419, 5780, 'Cangkringan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1404, 5, 419, 5781, 'Depok', 'Kecamatan', '');
INSERT INTO `location` VALUES (1405, 5, 419, 5782, 'Gamping', 'Kecamatan', '');
INSERT INTO `location` VALUES (1406, 5, 419, 5783, 'Godean', 'Kecamatan', '');
INSERT INTO `location` VALUES (1407, 5, 419, 5784, 'Kalasan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1408, 5, 419, 5785, 'Minggir', 'Kecamatan', '');
INSERT INTO `location` VALUES (1409, 5, 419, 5786, 'Mlati', 'Kecamatan', '');
INSERT INTO `location` VALUES (1410, 5, 419, 5787, 'Moyudan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1411, 5, 419, 5788, 'Ngaglik', 'Kecamatan', '');
INSERT INTO `location` VALUES (1412, 5, 419, 5789, 'Ngemplak', 'Kecamatan', '');
INSERT INTO `location` VALUES (1413, 5, 419, 5790, 'Pakem', 'Kecamatan', '');
INSERT INTO `location` VALUES (1414, 5, 419, 5791, 'Prambanan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1415, 5, 419, 5792, 'Seyegan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1416, 5, 419, 5793, 'Sleman', 'Kecamatan', '');
INSERT INTO `location` VALUES (1417, 5, 419, 5794, 'Tempel', 'Kecamatan', '');
INSERT INTO `location` VALUES (1418, 5, 419, 5795, 'Turi', 'Kecamatan', '');
INSERT INTO `location` VALUES (1419, 26, 60, 0, 'Bengkalis', 'Kabupaten', '28719');
INSERT INTO `location` VALUES (1420, 26, 120, 0, 'Dumai', 'Kota', '28811');
INSERT INTO `location` VALUES (1421, 26, 147, 0, 'Indragiri Hilir', 'Kabupaten', '29212');
INSERT INTO `location` VALUES (1422, 26, 148, 0, 'Indragiri Hulu', 'Kabupaten', '29319');
INSERT INTO `location` VALUES (1423, 26, 166, 0, 'Kampar', 'Kabupaten', '28411');
INSERT INTO `location` VALUES (1424, 26, 187, 0, 'Kepulauan Meranti', 'Kabupaten', '28791');
INSERT INTO `location` VALUES (1425, 26, 207, 0, 'Kuantan Singingi', 'Kabupaten', '29519');
INSERT INTO `location` VALUES (1426, 26, 350, 0, 'Pekanbaru', 'Kota', '28112');
INSERT INTO `location` VALUES (1427, 26, 351, 0, 'Pelalawan', 'Kabupaten', '28311');
INSERT INTO `location` VALUES (1428, 26, 381, 0, 'Rokan Hilir', 'Kabupaten', '28992');
INSERT INTO `location` VALUES (1429, 26, 382, 0, 'Rokan Hulu', 'Kabupaten', '28511');
INSERT INTO `location` VALUES (1430, 26, 406, 0, 'Siak', 'Kabupaten', '28623');
INSERT INTO `location` VALUES (1431, 26, 350, 4914, 'Bukit Raya', 'Kecamatan', '');
INSERT INTO `location` VALUES (1432, 26, 350, 4915, 'Lima Puluh', 'Kecamatan', '');
INSERT INTO `location` VALUES (1433, 26, 350, 4916, 'Marpoyan Damai', 'Kecamatan', '');
INSERT INTO `location` VALUES (1434, 26, 350, 4917, 'Payung Sekaki', 'Kecamatan', '');
INSERT INTO `location` VALUES (1435, 26, 350, 4918, 'Pekanbaru Kota', 'Kecamatan', '');
INSERT INTO `location` VALUES (1436, 26, 350, 4919, 'Rumbai', 'Kecamatan', '');
INSERT INTO `location` VALUES (1437, 26, 350, 4920, 'Rumbai Pesisir', 'Kecamatan', '');
INSERT INTO `location` VALUES (1438, 26, 350, 4921, 'Sail', 'Kecamatan', '');
INSERT INTO `location` VALUES (1439, 26, 350, 4922, 'Senapelan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1440, 26, 350, 4923, 'Sukajadi', 'Kecamatan', '');
INSERT INTO `location` VALUES (1441, 26, 350, 4924, 'Tampan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1442, 26, 350, 4925, 'Tenayan Raya', 'Kecamatan', '');
INSERT INTO `location` VALUES (1443, 11, 305, 4323, 'Bagor', 'Kecamatan', '');
INSERT INTO `location` VALUES (1444, 11, 305, 4324, 'Baron', 'Kecamatan', '');
INSERT INTO `location` VALUES (1445, 11, 305, 4325, 'Berbek', 'Kecamatan', '');
INSERT INTO `location` VALUES (1446, 11, 305, 4326, 'Gondang', 'Kecamatan', '');
INSERT INTO `location` VALUES (1447, 11, 305, 4327, 'Jatikalen', 'Kecamatan', '');
INSERT INTO `location` VALUES (1448, 11, 305, 4328, 'Kertosono', 'Kecamatan', '');
INSERT INTO `location` VALUES (1449, 11, 305, 4329, 'Lengkong', 'Kecamatan', '');
INSERT INTO `location` VALUES (1450, 11, 305, 4330, 'Loceret', 'Kecamatan', '');
INSERT INTO `location` VALUES (1451, 11, 305, 4331, 'Nganjuk', 'Kecamatan', '');
INSERT INTO `location` VALUES (1452, 11, 305, 4332, 'Ngetos', 'Kecamatan', '');
INSERT INTO `location` VALUES (1453, 11, 305, 4333, 'Ngluyu', 'Kecamatan', '');
INSERT INTO `location` VALUES (1454, 11, 305, 4334, 'Ngronggot', 'Kecamatan', '');
INSERT INTO `location` VALUES (1455, 11, 305, 4335, 'Pace', 'Kecamatan', '');
INSERT INTO `location` VALUES (1456, 11, 305, 4336, 'Patianrowo', 'Kecamatan', '');
INSERT INTO `location` VALUES (1457, 11, 305, 4337, 'Prambon', 'Kecamatan', '');
INSERT INTO `location` VALUES (1458, 11, 305, 4338, 'Rejoso', 'Kecamatan', '');
INSERT INTO `location` VALUES (1459, 11, 305, 4339, 'Sawahan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1460, 11, 305, 4340, 'Sukomoro', 'Kecamatan', '');
INSERT INTO `location` VALUES (1461, 11, 305, 4341, 'Tanjunganom', 'Kecamatan', '');
INSERT INTO `location` VALUES (1462, 11, 305, 4342, 'Wilangan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1463, 28, 132, 1810, 'Bajeng', 'Kecamatan', '');
INSERT INTO `location` VALUES (1464, 28, 132, 1811, 'Bajeng Barat', 'Kecamatan', '');
INSERT INTO `location` VALUES (1465, 28, 132, 1812, 'Barombong', 'Kecamatan', '');
INSERT INTO `location` VALUES (1466, 28, 132, 1813, 'Biringbulu', 'Kecamatan', '');
INSERT INTO `location` VALUES (1467, 28, 132, 1814, 'Bontolempangang', 'Kecamatan', '');
INSERT INTO `location` VALUES (1468, 28, 132, 1815, 'Bontomarannu', 'Kecamatan', '');
INSERT INTO `location` VALUES (1469, 28, 132, 1816, 'Bontonompo', 'Kecamatan', '');
INSERT INTO `location` VALUES (1470, 28, 132, 1817, 'Bontonompo Selatan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1471, 28, 132, 1818, 'Bungaya', 'Kecamatan', '');
INSERT INTO `location` VALUES (1472, 28, 132, 1819, 'Manuju', 'Kecamatan', '');
INSERT INTO `location` VALUES (1473, 28, 132, 1820, 'Pallangga', 'Kecamatan', '');
INSERT INTO `location` VALUES (1474, 28, 132, 1821, 'Parangloe', 'Kecamatan', '');
INSERT INTO `location` VALUES (1475, 28, 132, 1822, 'Parigi', 'Kecamatan', '');
INSERT INTO `location` VALUES (1476, 28, 132, 1823, 'Pattallassang', 'Kecamatan', '');
INSERT INTO `location` VALUES (1477, 28, 132, 1824, 'Somba Opu (Upu)', 'Kecamatan', '');
INSERT INTO `location` VALUES (1478, 28, 132, 1825, 'Tinggimoncong', 'Kecamatan', '');
INSERT INTO `location` VALUES (1479, 28, 132, 1826, 'Tombolo Pao', 'Kecamatan', '');
INSERT INTO `location` VALUES (1480, 28, 132, 1827, 'Tompobulu', 'Kecamatan', '');
INSERT INTO `location` VALUES (1481, 9, 108, 1472, 'Arjawinangun', 'Kecamatan', '');
INSERT INTO `location` VALUES (1482, 9, 108, 1473, 'Astanajapura', 'Kecamatan', '');
INSERT INTO `location` VALUES (1483, 9, 108, 1474, 'Babakan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1484, 9, 108, 1475, 'Beber', 'Kecamatan', '');
INSERT INTO `location` VALUES (1485, 9, 108, 1476, 'Ciledug', 'Kecamatan', '');
INSERT INTO `location` VALUES (1486, 9, 108, 1477, 'Ciwaringin', 'Kecamatan', '');
INSERT INTO `location` VALUES (1487, 9, 108, 1478, 'Depok', 'Kecamatan', '');
INSERT INTO `location` VALUES (1488, 9, 108, 1479, 'Dukupuntang', 'Kecamatan', '');
INSERT INTO `location` VALUES (1489, 9, 108, 1480, 'Gebang', 'Kecamatan', '');
INSERT INTO `location` VALUES (1490, 9, 108, 1481, 'Gegesik', 'Kecamatan', '');
INSERT INTO `location` VALUES (1491, 9, 108, 1482, 'Gempol', 'Kecamatan', '');
INSERT INTO `location` VALUES (1492, 9, 108, 1483, 'Greged (Greget)', 'Kecamatan', '');
INSERT INTO `location` VALUES (1493, 9, 108, 1484, 'Gunung Jati (Cirebon Utara)', 'Kecamatan', '');
INSERT INTO `location` VALUES (1494, 9, 108, 1485, 'Jamblang', 'Kecamatan', '');
INSERT INTO `location` VALUES (1495, 9, 108, 1486, 'Kaliwedi', 'Kecamatan', '');
INSERT INTO `location` VALUES (1496, 9, 108, 1487, 'Kapetakan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1497, 9, 108, 1488, 'Karangsembung', 'Kecamatan', '');
INSERT INTO `location` VALUES (1498, 9, 108, 1489, 'Karangwareng', 'Kecamatan', '');
INSERT INTO `location` VALUES (1499, 9, 108, 1490, 'Kedawung', 'Kecamatan', '');
INSERT INTO `location` VALUES (1500, 9, 108, 1491, 'Klangenan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1501, 9, 108, 1492, 'Lemahabang', 'Kecamatan', '');
INSERT INTO `location` VALUES (1502, 9, 108, 1493, 'Losari', 'Kecamatan', '');
INSERT INTO `location` VALUES (1503, 9, 108, 1494, 'Mundu', 'Kecamatan', '');
INSERT INTO `location` VALUES (1504, 9, 108, 1495, 'Pabedilan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1505, 9, 108, 1496, 'Pabuaran', 'Kecamatan', '');
INSERT INTO `location` VALUES (1506, 9, 108, 1497, 'Palimanan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1507, 9, 108, 1498, 'Pangenan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1508, 9, 108, 1499, 'Panguragan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1509, 9, 108, 1500, 'Pasaleman', 'Kecamatan', '');
INSERT INTO `location` VALUES (1510, 9, 108, 1501, 'Plered', 'Kecamatan', '');
INSERT INTO `location` VALUES (1511, 9, 108, 1502, 'Plumbon', 'Kecamatan', '');
INSERT INTO `location` VALUES (1512, 9, 108, 1503, 'Sedong', 'Kecamatan', '');
INSERT INTO `location` VALUES (1513, 9, 108, 1504, 'Sumber', 'Kecamatan', '');
INSERT INTO `location` VALUES (1514, 9, 108, 1505, 'Suranenggala', 'Kecamatan', '');
INSERT INTO `location` VALUES (1515, 9, 108, 1506, 'Susukan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1516, 9, 108, 1507, 'Susukan Lebak', 'Kecamatan', '');
INSERT INTO `location` VALUES (1517, 9, 108, 1508, 'Talun (Cirebon Selatan)', 'Kecamatan', '');
INSERT INTO `location` VALUES (1518, 9, 108, 1509, 'Tengah Tani', 'Kecamatan', '');
INSERT INTO `location` VALUES (1519, 9, 108, 1510, 'Waled', 'Kecamatan', '');
INSERT INTO `location` VALUES (1520, 9, 108, 1511, 'Weru', 'Kecamatan', '');
INSERT INTO `location` VALUES (1521, 9, 24, 368, 'Batujajar', 'Kecamatan', '');
INSERT INTO `location` VALUES (1522, 9, 24, 369, 'Cihampelas', 'Kecamatan', '');
INSERT INTO `location` VALUES (1523, 9, 24, 370, 'Cikalong Wetan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1524, 9, 24, 371, 'Cililin', 'Kecamatan', '');
INSERT INTO `location` VALUES (1525, 9, 24, 372, 'Cipatat', 'Kecamatan', '');
INSERT INTO `location` VALUES (1526, 9, 24, 373, 'Cipeundeuy', 'Kecamatan', '');
INSERT INTO `location` VALUES (1527, 9, 24, 374, 'Cipongkor', 'Kecamatan', '');
INSERT INTO `location` VALUES (1528, 9, 24, 375, 'Cisarua', 'Kecamatan', '');
INSERT INTO `location` VALUES (1529, 9, 24, 376, 'Gununghalu', 'Kecamatan', '');
INSERT INTO `location` VALUES (1530, 9, 24, 377, 'Lembang', 'Kecamatan', '');
INSERT INTO `location` VALUES (1531, 9, 24, 378, 'Ngamprah', 'Kecamatan', '');
INSERT INTO `location` VALUES (1532, 9, 24, 379, 'Padalarang', 'Kecamatan', '');
INSERT INTO `location` VALUES (1533, 9, 24, 380, 'Parongpong', 'Kecamatan', '');
INSERT INTO `location` VALUES (1534, 9, 24, 381, 'Rongga', 'Kecamatan', '');
INSERT INTO `location` VALUES (1535, 9, 24, 382, 'Saguling', 'Kecamatan', '');
INSERT INTO `location` VALUES (1536, 9, 24, 383, 'Sindangkerta', 'Kecamatan', '');
INSERT INTO `location` VALUES (1537, 22, 239, 3382, 'Batukliang', 'Kecamatan', '');
INSERT INTO `location` VALUES (1538, 22, 239, 3383, 'Batukliang Utara', 'Kecamatan', '');
INSERT INTO `location` VALUES (1539, 22, 239, 3384, 'Janapria', 'Kecamatan', '');
INSERT INTO `location` VALUES (1540, 22, 239, 3385, 'Jonggat', 'Kecamatan', '');
INSERT INTO `location` VALUES (1541, 22, 239, 3386, 'Kopang', 'Kecamatan', '');
INSERT INTO `location` VALUES (1542, 22, 239, 3387, 'Praya', 'Kecamatan', '');
INSERT INTO `location` VALUES (1543, 22, 239, 3388, 'Praya Barat', 'Kecamatan', '');
INSERT INTO `location` VALUES (1544, 22, 239, 3389, 'Praya Barat Daya', 'Kecamatan', '');
INSERT INTO `location` VALUES (1545, 22, 239, 3390, 'Praya Tengah', 'Kecamatan', '');
INSERT INTO `location` VALUES (1546, 22, 239, 3391, 'Praya Timur', 'Kecamatan', '');
INSERT INTO `location` VALUES (1547, 22, 239, 3392, 'Pringgarata', 'Kecamatan', '');
INSERT INTO `location` VALUES (1548, 22, 239, 3393, 'Pujut', 'Kecamatan', '');
INSERT INTO `location` VALUES (1549, 11, 418, 5762, 'Arjasa', 'Kecamatan', '');
INSERT INTO `location` VALUES (1550, 11, 418, 5763, 'Asembagus', 'Kecamatan', '');
INSERT INTO `location` VALUES (1551, 11, 418, 5764, 'Banyuglugur', 'Kecamatan', '');
INSERT INTO `location` VALUES (1552, 11, 418, 5765, 'Banyuputih', 'Kecamatan', '');
INSERT INTO `location` VALUES (1553, 11, 418, 5766, 'Besuki', 'Kecamatan', '');
INSERT INTO `location` VALUES (1554, 11, 418, 5767, 'Bungatan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1555, 11, 418, 5768, 'Jangkar', 'Kecamatan', '');
INSERT INTO `location` VALUES (1556, 11, 418, 5769, 'Jatibanteng', 'Kecamatan', '');
INSERT INTO `location` VALUES (1557, 11, 418, 5770, 'Kapongan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1558, 11, 418, 5771, 'Kendit', 'Kecamatan', '');
INSERT INTO `location` VALUES (1559, 11, 418, 5772, 'Mangaran', 'Kecamatan', '');
INSERT INTO `location` VALUES (1560, 11, 418, 5773, 'Mlandingan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1561, 11, 418, 5774, 'Panarukan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1562, 11, 418, 5775, 'Panji', 'Kecamatan', '');
INSERT INTO `location` VALUES (1563, 11, 418, 5776, 'Situbondo', 'Kecamatan', '');
INSERT INTO `location` VALUES (1564, 11, 418, 5777, 'Suboh', 'Kecamatan', '');
INSERT INTO `location` VALUES (1565, 11, 418, 5778, 'Sumbermalang', 'Kecamatan', '');
INSERT INTO `location` VALUES (1566, 10, 498, 6910, 'Garung', 'Kecamatan', '');
INSERT INTO `location` VALUES (1567, 10, 498, 6911, 'Kalibawang', 'Kecamatan', '');
INSERT INTO `location` VALUES (1568, 10, 498, 6912, 'Kalikajar', 'Kecamatan', '');
INSERT INTO `location` VALUES (1569, 10, 498, 6913, 'Kaliwiro', 'Kecamatan', '');
INSERT INTO `location` VALUES (1570, 10, 498, 6914, 'Kejajar', 'Kecamatan', '');
INSERT INTO `location` VALUES (1571, 10, 498, 6915, 'Kepil', 'Kecamatan', '');
INSERT INTO `location` VALUES (1572, 10, 498, 6916, 'Kertek', 'Kecamatan', '');
INSERT INTO `location` VALUES (1573, 10, 498, 6917, 'Leksono', 'Kecamatan', '');
INSERT INTO `location` VALUES (1574, 10, 498, 6918, 'Mojotengah', 'Kecamatan', '');
INSERT INTO `location` VALUES (1575, 10, 498, 6919, 'Sapuran', 'Kecamatan', '');
INSERT INTO `location` VALUES (1576, 10, 498, 6920, 'Selomerto', 'Kecamatan', '');
INSERT INTO `location` VALUES (1577, 10, 498, 6921, 'Sukoharjo', 'Kecamatan', '');
INSERT INTO `location` VALUES (1578, 10, 498, 6922, 'Wadaslintang', 'Kecamatan', '');
INSERT INTO `location` VALUES (1579, 10, 498, 6923, 'Watumalang', 'Kecamatan', '');
INSERT INTO `location` VALUES (1580, 10, 498, 6924, 'Wonosobo', 'Kecamatan', '');
INSERT INTO `location` VALUES (1581, 11, 492, 6821, 'Bandung', 'Kecamatan', '');
INSERT INTO `location` VALUES (1582, 11, 492, 6822, 'Besuki', 'Kecamatan', '');
INSERT INTO `location` VALUES (1583, 11, 492, 6823, 'Boyolangu', 'Kecamatan', '');
INSERT INTO `location` VALUES (1584, 11, 492, 6824, 'Campur Darat', 'Kecamatan', '');
INSERT INTO `location` VALUES (1585, 11, 492, 6825, 'Gondang', 'Kecamatan', '');
INSERT INTO `location` VALUES (1586, 11, 492, 6826, 'Kalidawir', 'Kecamatan', '');
INSERT INTO `location` VALUES (1587, 11, 492, 6827, 'Karang Rejo', 'Kecamatan', '');
INSERT INTO `location` VALUES (1588, 11, 492, 6828, 'Kauman', 'Kecamatan', '');
INSERT INTO `location` VALUES (1589, 11, 492, 6829, 'Kedungwaru', 'Kecamatan', '');
INSERT INTO `location` VALUES (1590, 11, 492, 6830, 'Ngantru', 'Kecamatan', '');
INSERT INTO `location` VALUES (1591, 11, 492, 6831, 'Ngunut', 'Kecamatan', '');
INSERT INTO `location` VALUES (1592, 11, 492, 6832, 'Pagerwojo', 'Kecamatan', '');
INSERT INTO `location` VALUES (1593, 11, 492, 6833, 'Pakel', 'Kecamatan', '');
INSERT INTO `location` VALUES (1594, 11, 492, 6834, 'Pucanglaban', 'Kecamatan', '');
INSERT INTO `location` VALUES (1595, 11, 492, 6835, 'Rejotangan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1596, 11, 492, 6836, 'Sendang', 'Kecamatan', '');
INSERT INTO `location` VALUES (1597, 11, 492, 6837, 'Sumbergempol', 'Kecamatan', '');
INSERT INTO `location` VALUES (1598, 11, 492, 6838, 'Tanggung Gunung', 'Kecamatan', '');
INSERT INTO `location` VALUES (1599, 11, 492, 6839, 'Tulungagung', 'Kecamatan', '');
INSERT INTO `location` VALUES (1600, 25, 124, 0, 'Fakfak', 'Kabupaten', '98651');
INSERT INTO `location` VALUES (1601, 25, 165, 0, 'Kaimana', 'Kabupaten', '98671');
INSERT INTO `location` VALUES (1602, 25, 272, 0, 'Manokwari', 'Kabupaten', '98311');
INSERT INTO `location` VALUES (1603, 25, 273, 0, 'Manokwari Selatan', 'Kabupaten', '98355');
INSERT INTO `location` VALUES (1604, 25, 277, 0, 'Maybrat', 'Kabupaten', '98051');
INSERT INTO `location` VALUES (1605, 25, 346, 0, 'Pegunungan Arfak', 'Kabupaten', '98354');
INSERT INTO `location` VALUES (1606, 25, 378, 0, 'Raja Ampat', 'Kabupaten', '98489');
INSERT INTO `location` VALUES (1607, 25, 424, 0, 'Sorong', 'Kabupaten', '98431');
INSERT INTO `location` VALUES (1608, 25, 425, 0, 'Sorong', 'Kota', '98411');
INSERT INTO `location` VALUES (1609, 25, 426, 0, 'Sorong Selatan', 'Kabupaten', '98454');
INSERT INTO `location` VALUES (1610, 25, 449, 0, 'Tambrauw', 'Kabupaten', '98475');
INSERT INTO `location` VALUES (1611, 25, 474, 0, 'Teluk Bintuni', 'Kabupaten', '98551');
INSERT INTO `location` VALUES (1612, 25, 475, 0, 'Teluk Wondama', 'Kabupaten', '98591');
INSERT INTO `location` VALUES (1613, 25, 425, 5844, 'Sorong', 'Kecamatan', '');
INSERT INTO `location` VALUES (1614, 25, 425, 5845, 'Sorong Barat', 'Kecamatan', '');
INSERT INTO `location` VALUES (1615, 25, 425, 5846, 'Sorong Kepulauan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1616, 25, 425, 5847, 'Sorong Manoi', 'Kecamatan', '');
INSERT INTO `location` VALUES (1617, 25, 425, 5848, 'Sorong Timur', 'Kecamatan', '');
INSERT INTO `location` VALUES (1618, 25, 425, 5849, 'Sorong Utara', 'Kecamatan', '');
INSERT INTO `location` VALUES (1619, 11, 42, 600, 'Bangorejo', 'Kecamatan', '');
INSERT INTO `location` VALUES (1620, 11, 42, 601, 'Banyuwangi', 'Kecamatan', '');
INSERT INTO `location` VALUES (1621, 11, 42, 602, 'Cluring', 'Kecamatan', '');
INSERT INTO `location` VALUES (1622, 11, 42, 603, 'Gambiran', 'Kecamatan', '');
INSERT INTO `location` VALUES (1623, 11, 42, 604, 'Genteng', 'Kecamatan', '');
INSERT INTO `location` VALUES (1624, 11, 42, 605, 'Giri', 'Kecamatan', '');
INSERT INTO `location` VALUES (1625, 11, 42, 606, 'Glagah', 'Kecamatan', '');
INSERT INTO `location` VALUES (1626, 11, 42, 607, 'Glenmore', 'Kecamatan', '');
INSERT INTO `location` VALUES (1627, 11, 42, 608, 'Kabat', 'Kecamatan', '');
INSERT INTO `location` VALUES (1628, 11, 42, 609, 'Kalibaru', 'Kecamatan', '');
INSERT INTO `location` VALUES (1629, 11, 42, 610, 'Kalipuro', 'Kecamatan', '');
INSERT INTO `location` VALUES (1630, 11, 42, 611, 'Licin', 'Kecamatan', '');
INSERT INTO `location` VALUES (1631, 11, 42, 612, 'Muncar', 'Kecamatan', '');
INSERT INTO `location` VALUES (1632, 11, 42, 613, 'Pesanggaran', 'Kecamatan', '');
INSERT INTO `location` VALUES (1633, 11, 42, 614, 'Purwoharjo', 'Kecamatan', '');
INSERT INTO `location` VALUES (1634, 11, 42, 615, 'Rogojampi', 'Kecamatan', '');
INSERT INTO `location` VALUES (1635, 11, 42, 616, 'Sempu', 'Kecamatan', '');
INSERT INTO `location` VALUES (1636, 11, 42, 617, 'Siliragung', 'Kecamatan', '');
INSERT INTO `location` VALUES (1637, 11, 42, 618, 'Singojuruh', 'Kecamatan', '');
INSERT INTO `location` VALUES (1638, 11, 42, 619, 'Songgon', 'Kecamatan', '');
INSERT INTO `location` VALUES (1639, 11, 42, 620, 'Srono', 'Kecamatan', '');
INSERT INTO `location` VALUES (1640, 11, 42, 621, 'Tegaldlimo', 'Kecamatan', '');
INSERT INTO `location` VALUES (1641, 11, 42, 622, 'Tegalsari', 'Kecamatan', '');
INSERT INTO `location` VALUES (1642, 11, 42, 623, 'Wongsorejo', 'Kecamatan', '');
INSERT INTO `location` VALUES (1643, 1, 128, 1764, 'Belah Batuh (Blahbatuh)', 'Kecamatan', '');
INSERT INTO `location` VALUES (1644, 1, 128, 1765, 'Gianyar', 'Kecamatan', '');
INSERT INTO `location` VALUES (1645, 1, 128, 1766, 'Payangan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1646, 1, 128, 1767, 'Sukawati', 'Kecamatan', '');
INSERT INTO `location` VALUES (1647, 1, 128, 1768, 'Tampak Siring', 'Kecamatan', '');
INSERT INTO `location` VALUES (1648, 1, 128, 1769, 'Tegallalang', 'Kecamatan', '');
INSERT INTO `location` VALUES (1649, 1, 128, 1770, 'Ubud', 'Kecamatan', '');
INSERT INTO `location` VALUES (1650, 26, 382, 5318, 'Bangun Purba', 'Kecamatan', '');
INSERT INTO `location` VALUES (1651, 26, 382, 5319, 'Bonai Darussalam', 'Kecamatan', '');
INSERT INTO `location` VALUES (1652, 26, 382, 5320, 'Kabun', 'Kecamatan', '');
INSERT INTO `location` VALUES (1653, 26, 382, 5321, 'Kepenuhan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1654, 26, 382, 5322, 'Kepenuhan Hulu', 'Kecamatan', '');
INSERT INTO `location` VALUES (1655, 26, 382, 5323, 'Kunto Darussalam', 'Kecamatan', '');
INSERT INTO `location` VALUES (1656, 26, 382, 5324, 'Pagaran Tapah Darussalam', 'Kecamatan', '');
INSERT INTO `location` VALUES (1657, 26, 382, 5325, 'Pendalian IV Koto', 'Kecamatan', '');
INSERT INTO `location` VALUES (1658, 26, 382, 5326, 'Rambah', 'Kecamatan', '');
INSERT INTO `location` VALUES (1659, 26, 382, 5327, 'Rambah Hilir', 'Kecamatan', '');
INSERT INTO `location` VALUES (1660, 26, 382, 5328, 'Rambah Samo', 'Kecamatan', '');
INSERT INTO `location` VALUES (1661, 26, 382, 5329, 'Rokan IV Koto', 'Kecamatan', '');
INSERT INTO `location` VALUES (1662, 26, 382, 5330, 'Tambusai', 'Kecamatan', '');
INSERT INTO `location` VALUES (1663, 26, 382, 5331, 'Tambusai Utara', 'Kecamatan', '');
INSERT INTO `location` VALUES (1664, 26, 382, 5332, 'Tandun', 'Kecamatan', '');
INSERT INTO `location` VALUES (1665, 26, 382, 5333, 'Ujung Batu', 'Kecamatan', '');
INSERT INTO `location` VALUES (1666, 18, 21, 287, 'Bumi Waras', 'Kecamatan', '');
INSERT INTO `location` VALUES (1667, 18, 21, 288, 'Enggal', 'Kecamatan', '');
INSERT INTO `location` VALUES (1668, 18, 21, 289, 'Kedamaian', 'Kecamatan', '');
INSERT INTO `location` VALUES (1669, 18, 21, 290, 'Kedaton', 'Kecamatan', '');
INSERT INTO `location` VALUES (1670, 18, 21, 291, 'Kemiling', 'Kecamatan', '');
INSERT INTO `location` VALUES (1671, 18, 21, 292, 'Labuhan Ratu', 'Kecamatan', '');
INSERT INTO `location` VALUES (1672, 18, 21, 293, 'Langkapura', 'Kecamatan', '');
INSERT INTO `location` VALUES (1673, 18, 21, 294, 'Panjang', 'Kecamatan', '');
INSERT INTO `location` VALUES (1674, 18, 21, 295, 'Rajabasa', 'Kecamatan', '');
INSERT INTO `location` VALUES (1675, 18, 21, 296, 'Sukabumi', 'Kecamatan', '');
INSERT INTO `location` VALUES (1676, 18, 21, 297, 'Sukarame', 'Kecamatan', '');
INSERT INTO `location` VALUES (1677, 18, 21, 298, 'Tanjung Karang Barat', 'Kecamatan', '');
INSERT INTO `location` VALUES (1678, 18, 21, 299, 'Tanjung Karang Pusat', 'Kecamatan', '');
INSERT INTO `location` VALUES (1679, 18, 21, 300, 'Tanjung Karang Timur', 'Kecamatan', '');
INSERT INTO `location` VALUES (1680, 18, 21, 301, 'Tanjung Senang', 'Kecamatan', '');
INSERT INTO `location` VALUES (1681, 18, 21, 302, 'Telukbetung Barat', 'Kecamatan', '');
INSERT INTO `location` VALUES (1682, 18, 21, 303, 'Telukbetung Selatan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1683, 18, 21, 304, 'Telukbetung Timur', 'Kecamatan', '');
INSERT INTO `location` VALUES (1684, 18, 21, 305, 'Telukbetung Utara', 'Kecamatan', '');
INSERT INTO `location` VALUES (1685, 18, 21, 306, 'Way Halim', 'Kecamatan', '');
INSERT INTO `location` VALUES (1686, 32, 453, 6243, 'Batipuh', 'Kecamatan', '');
INSERT INTO `location` VALUES (1687, 32, 453, 6244, 'Batipuh Selatan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1688, 32, 453, 6245, 'Lima Kaum', 'Kecamatan', '');
INSERT INTO `location` VALUES (1689, 32, 453, 6246, 'Lintau Buo', 'Kecamatan', '');
INSERT INTO `location` VALUES (1690, 32, 453, 6247, 'Lintau Buo Utara', 'Kecamatan', '');
INSERT INTO `location` VALUES (1691, 32, 453, 6248, 'Padang Ganting', 'Kecamatan', '');
INSERT INTO `location` VALUES (1692, 32, 453, 6249, 'Pariangan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1693, 32, 453, 6250, 'Rambatan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1694, 32, 453, 6251, 'Salimpaung', 'Kecamatan', '');
INSERT INTO `location` VALUES (1695, 32, 453, 6252, 'Sepuluh Koto (X Koto)', 'Kecamatan', '');
INSERT INTO `location` VALUES (1696, 32, 453, 6253, 'Sungai Tarab', 'Kecamatan', '');
INSERT INTO `location` VALUES (1697, 32, 453, 6254, 'Sungayang', 'Kecamatan', '');
INSERT INTO `location` VALUES (1698, 32, 453, 6255, 'Tanjung Baru', 'Kecamatan', '');
INSERT INTO `location` VALUES (1699, 32, 453, 6256, 'Tanjung Emas', 'Kecamatan', '');
INSERT INTO `location` VALUES (1700, 14, 44, 0, 'Barito Selatan', 'Kabupaten', '73711');
INSERT INTO `location` VALUES (1701, 14, 45, 0, 'Barito Timur', 'Kabupaten', '73671');
INSERT INTO `location` VALUES (1702, 14, 46, 0, 'Barito Utara', 'Kabupaten', '73881');
INSERT INTO `location` VALUES (1703, 14, 136, 0, 'Gunung Mas', 'Kabupaten', '74511');
INSERT INTO `location` VALUES (1704, 14, 167, 0, 'Kapuas', 'Kabupaten', '73583');
INSERT INTO `location` VALUES (1705, 14, 174, 0, 'Katingan', 'Kabupaten', '74411');
INSERT INTO `location` VALUES (1706, 14, 205, 0, 'Kotawaringin Barat', 'Kabupaten', '74119');
INSERT INTO `location` VALUES (1707, 14, 206, 0, 'Kotawaringin Timur', 'Kabupaten', '74364');
INSERT INTO `location` VALUES (1708, 14, 221, 0, 'Lamandau', 'Kabupaten', '74611');
INSERT INTO `location` VALUES (1709, 14, 296, 0, 'Murung Raya', 'Kabupaten', '73911');
INSERT INTO `location` VALUES (1710, 14, 326, 0, 'Palangka Raya', 'Kota', '73112');
INSERT INTO `location` VALUES (1711, 14, 371, 0, 'Pulang Pisau', 'Kabupaten', '74811');
INSERT INTO `location` VALUES (1712, 14, 405, 0, 'Seruyan', 'Kabupaten', '74211');
INSERT INTO `location` VALUES (1713, 14, 432, 0, 'Sukamara', 'Kabupaten', '74712');
INSERT INTO `location` VALUES (1714, 10, 105, 1437, 'Adipala', 'Kecamatan', '');
INSERT INTO `location` VALUES (1715, 10, 105, 1438, 'Bantarsari', 'Kecamatan', '');
INSERT INTO `location` VALUES (1716, 10, 105, 1439, 'Binangun', 'Kecamatan', '');
INSERT INTO `location` VALUES (1717, 10, 105, 1440, 'Cilacap Selatan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1718, 10, 105, 1441, 'Cilacap Tengah', 'Kecamatan', '');
INSERT INTO `location` VALUES (1719, 10, 105, 1442, 'Cilacap Utara', 'Kecamatan', '');
INSERT INTO `location` VALUES (1720, 10, 105, 1443, 'Cimanggu', 'Kecamatan', '');
INSERT INTO `location` VALUES (1721, 10, 105, 1444, 'Cipari', 'Kecamatan', '');
INSERT INTO `location` VALUES (1722, 10, 105, 1445, 'Dayeuhluhur', 'Kecamatan', '');
INSERT INTO `location` VALUES (1723, 10, 105, 1446, 'Gandrungmangu', 'Kecamatan', '');
INSERT INTO `location` VALUES (1724, 10, 105, 1447, 'Jeruklegi', 'Kecamatan', '');
INSERT INTO `location` VALUES (1725, 10, 105, 1448, 'Kampung Laut', 'Kecamatan', '');
INSERT INTO `location` VALUES (1726, 10, 105, 1449, 'Karangpucung', 'Kecamatan', '');
INSERT INTO `location` VALUES (1727, 10, 105, 1450, 'Kawunganten', 'Kecamatan', '');
INSERT INTO `location` VALUES (1728, 10, 105, 1451, 'Kedungreja', 'Kecamatan', '');
INSERT INTO `location` VALUES (1729, 10, 105, 1452, 'Kesugihan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1730, 10, 105, 1453, 'Kroya', 'Kecamatan', '');
INSERT INTO `location` VALUES (1731, 10, 105, 1454, 'Majenang', 'Kecamatan', '');
INSERT INTO `location` VALUES (1732, 10, 105, 1455, 'Maos', 'Kecamatan', '');
INSERT INTO `location` VALUES (1733, 10, 105, 1456, 'Nusawungu', 'Kecamatan', '');
INSERT INTO `location` VALUES (1734, 10, 105, 1457, 'Patimuan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1735, 10, 105, 1458, 'Sampang', 'Kecamatan', '');
INSERT INTO `location` VALUES (1736, 10, 105, 1459, 'Sidareja', 'Kecamatan', '');
INSERT INTO `location` VALUES (1737, 10, 105, 1460, 'Wanareja', 'Kecamatan', '');
INSERT INTO `location` VALUES (1738, 11, 330, 4642, 'Batumarmar', 'Kecamatan', '');
INSERT INTO `location` VALUES (1739, 11, 330, 4643, 'Galis', 'Kecamatan', '');
INSERT INTO `location` VALUES (1740, 11, 330, 4644, 'Kadur', 'Kecamatan', '');
INSERT INTO `location` VALUES (1741, 11, 330, 4645, 'Larangan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1742, 11, 330, 4646, 'Pademawu', 'Kecamatan', '');
INSERT INTO `location` VALUES (1743, 11, 330, 4647, 'Pakong', 'Kecamatan', '');
INSERT INTO `location` VALUES (1744, 11, 330, 4648, 'Palenga\'an', 'Kecamatan', '');
INSERT INTO `location` VALUES (1745, 11, 330, 4649, 'Pamekasan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1746, 11, 330, 4650, 'Pasean', 'Kecamatan', '');
INSERT INTO `location` VALUES (1747, 11, 330, 4651, 'Pegantenan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1748, 11, 330, 4652, 'Proppo', 'Kecamatan', '');
INSERT INTO `location` VALUES (1749, 11, 330, 4653, 'Tlanakan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1750, 11, 330, 4654, 'Waru', 'Kecamatan', '');
INSERT INTO `location` VALUES (1751, 21, 235, 3347, 'Banda Sakti', 'Kecamatan', '');
INSERT INTO `location` VALUES (1752, 21, 235, 3348, 'Blang Mangat', 'Kecamatan', '');
INSERT INTO `location` VALUES (1753, 21, 235, 3349, 'Muara Dua', 'Kecamatan', '');
INSERT INTO `location` VALUES (1754, 21, 235, 3350, 'Muara Satu', 'Kecamatan', '');
INSERT INTO `location` VALUES (1755, 15, 215, 3025, 'Anggana', 'Kecamatan', '');
INSERT INTO `location` VALUES (1756, 15, 215, 3026, 'Kembang Janggut', 'Kecamatan', '');
INSERT INTO `location` VALUES (1757, 15, 215, 3027, 'Kenohan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1758, 15, 215, 3028, 'Kota Bangun', 'Kecamatan', '');
INSERT INTO `location` VALUES (1759, 15, 215, 3029, 'Loa Janan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1760, 15, 215, 3030, 'Loa Kulu', 'Kecamatan', '');
INSERT INTO `location` VALUES (1761, 15, 215, 3031, 'Marang Kayu', 'Kecamatan', '');
INSERT INTO `location` VALUES (1762, 15, 215, 3032, 'Muara Badak', 'Kecamatan', '');
INSERT INTO `location` VALUES (1763, 15, 215, 3033, 'Muara Jawa', 'Kecamatan', '');
INSERT INTO `location` VALUES (1764, 15, 215, 3034, 'Muara Kaman', 'Kecamatan', '');
INSERT INTO `location` VALUES (1765, 15, 215, 3035, 'Muara Muntai', 'Kecamatan', '');
INSERT INTO `location` VALUES (1766, 15, 215, 3036, 'Muara Wis', 'Kecamatan', '');
INSERT INTO `location` VALUES (1767, 15, 215, 3037, 'Samboja (Semboja)', 'Kecamatan', '');
INSERT INTO `location` VALUES (1768, 15, 215, 3038, 'Sanga-Sanga', 'Kecamatan', '');
INSERT INTO `location` VALUES (1769, 15, 215, 3039, 'Sebulu', 'Kecamatan', '');
INSERT INTO `location` VALUES (1770, 15, 215, 3040, 'Tabang', 'Kecamatan', '');
INSERT INTO `location` VALUES (1771, 15, 215, 3041, 'Tenggarong', 'Kecamatan', '');
INSERT INTO `location` VALUES (1772, 15, 215, 3042, 'Tenggarong Seberang', 'Kecamatan', '');
INSERT INTO `location` VALUES (1773, 9, 428, 5883, 'Binong', 'Kecamatan', '');
INSERT INTO `location` VALUES (1774, 9, 428, 5884, 'Blanakan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1775, 9, 428, 5885, 'Ciasem', 'Kecamatan', '');
INSERT INTO `location` VALUES (1776, 9, 428, 5886, 'Ciater', 'Kecamatan', '');
INSERT INTO `location` VALUES (1777, 9, 428, 5887, 'Cibogo', 'Kecamatan', '');
INSERT INTO `location` VALUES (1778, 9, 428, 5888, 'Cijambe', 'Kecamatan', '');
INSERT INTO `location` VALUES (1779, 9, 428, 5889, 'Cikaum', 'Kecamatan', '');
INSERT INTO `location` VALUES (1780, 9, 428, 5890, 'Cipeundeuy', 'Kecamatan', '');
INSERT INTO `location` VALUES (1781, 9, 428, 5891, 'Cipunagara', 'Kecamatan', '');
INSERT INTO `location` VALUES (1782, 9, 428, 5892, 'Cisalak', 'Kecamatan', '');
INSERT INTO `location` VALUES (1783, 9, 428, 5893, 'Compreng', 'Kecamatan', '');
INSERT INTO `location` VALUES (1784, 9, 428, 5894, 'Dawuan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1785, 9, 428, 5895, 'Jalancagak', 'Kecamatan', '');
INSERT INTO `location` VALUES (1786, 9, 428, 5896, 'Kalijati', 'Kecamatan', '');
INSERT INTO `location` VALUES (1787, 9, 428, 5897, 'Kasomalang', 'Kecamatan', '');
INSERT INTO `location` VALUES (1788, 9, 428, 5898, 'Legonkulon', 'Kecamatan', '');
INSERT INTO `location` VALUES (1789, 9, 428, 5899, 'Pabuaran', 'Kecamatan', '');
INSERT INTO `location` VALUES (1790, 9, 428, 5900, 'Pagaden', 'Kecamatan', '');
INSERT INTO `location` VALUES (1791, 9, 428, 5901, 'Pagaden Barat', 'Kecamatan', '');
INSERT INTO `location` VALUES (1792, 9, 428, 5902, 'Pamanukan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1793, 9, 428, 5903, 'Patokbeusi', 'Kecamatan', '');
INSERT INTO `location` VALUES (1794, 9, 428, 5904, 'Purwadadi', 'Kecamatan', '');
INSERT INTO `location` VALUES (1795, 9, 428, 5905, 'Pusakajaya', 'Kecamatan', '');
INSERT INTO `location` VALUES (1796, 9, 428, 5906, 'Pusakanagara', 'Kecamatan', '');
INSERT INTO `location` VALUES (1797, 9, 428, 5907, 'Sagalaherang', 'Kecamatan', '');
INSERT INTO `location` VALUES (1798, 9, 428, 5908, 'Serangpanjang', 'Kecamatan', '');
INSERT INTO `location` VALUES (1799, 9, 428, 5909, 'Subang', 'Kecamatan', '');
INSERT INTO `location` VALUES (1800, 9, 428, 5910, 'Sukasari', 'Kecamatan', '');
INSERT INTO `location` VALUES (1801, 9, 428, 5911, 'Tambakdahan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1802, 9, 428, 5912, 'Tanjungsiang', 'Kecamatan', '');
INSERT INTO `location` VALUES (1803, 10, 398, 5479, 'Ambarawa', 'Kecamatan', '');
INSERT INTO `location` VALUES (1804, 10, 398, 5480, 'Bancak', 'Kecamatan', '');
INSERT INTO `location` VALUES (1805, 10, 398, 5481, 'Bandungan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1806, 10, 398, 5482, 'Banyubiru', 'Kecamatan', '');
INSERT INTO `location` VALUES (1807, 10, 398, 5483, 'Bawen', 'Kecamatan', '');
INSERT INTO `location` VALUES (1808, 10, 398, 5484, 'Bergas', 'Kecamatan', '');
INSERT INTO `location` VALUES (1809, 10, 398, 5485, 'Bringin', 'Kecamatan', '');
INSERT INTO `location` VALUES (1810, 10, 398, 5486, 'Getasan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1811, 10, 398, 5487, 'Jambu', 'Kecamatan', '');
INSERT INTO `location` VALUES (1812, 10, 398, 5488, 'Kaliwungu', 'Kecamatan', '');
INSERT INTO `location` VALUES (1813, 10, 398, 5489, 'Pabelan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1814, 10, 398, 5490, 'Pringapus', 'Kecamatan', '');
INSERT INTO `location` VALUES (1815, 10, 398, 5491, 'Sumowono', 'Kecamatan', '');
INSERT INTO `location` VALUES (1816, 10, 398, 5492, 'Suruh', 'Kecamatan', '');
INSERT INTO `location` VALUES (1817, 10, 398, 5493, 'Susukan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1818, 10, 398, 5494, 'Tengaran', 'Kecamatan', '');
INSERT INTO `location` VALUES (1819, 10, 398, 5495, 'Tuntang', 'Kecamatan', '');
INSERT INTO `location` VALUES (1820, 10, 398, 5496, 'Ungaran Barat', 'Kecamatan', '');
INSERT INTO `location` VALUES (1821, 10, 398, 5497, 'Ungaran Timur', 'Kecamatan', '');
INSERT INTO `location` VALUES (1822, 10, 399, 5498, 'Banyumanik', 'Kecamatan', '');
INSERT INTO `location` VALUES (1823, 10, 399, 5499, 'Candisari', 'Kecamatan', '');
INSERT INTO `location` VALUES (1824, 10, 399, 5500, 'Gajah Mungkur', 'Kecamatan', '');
INSERT INTO `location` VALUES (1825, 10, 399, 5501, 'Gayamsari', 'Kecamatan', '');
INSERT INTO `location` VALUES (1826, 10, 399, 5502, 'Genuk', 'Kecamatan', '');
INSERT INTO `location` VALUES (1827, 10, 399, 5503, 'Gunungpati', 'Kecamatan', '');
INSERT INTO `location` VALUES (1828, 10, 399, 5504, 'Mijen', 'Kecamatan', '');
INSERT INTO `location` VALUES (1829, 10, 399, 5505, 'Ngaliyan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1830, 10, 399, 5506, 'Pedurungan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1831, 10, 399, 5507, 'Semarang Barat', 'Kecamatan', '');
INSERT INTO `location` VALUES (1832, 10, 399, 5508, 'Semarang Selatan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1833, 10, 399, 5509, 'Semarang Tengah', 'Kecamatan', '');
INSERT INTO `location` VALUES (1834, 10, 399, 5510, 'Semarang Timur', 'Kecamatan', '');
INSERT INTO `location` VALUES (1835, 10, 399, 5511, 'Semarang Utara', 'Kecamatan', '');
INSERT INTO `location` VALUES (1836, 10, 399, 5512, 'Tembalang', 'Kecamatan', '');
INSERT INTO `location` VALUES (1837, 10, 399, 5513, 'Tugu', 'Kecamatan', '');
INSERT INTO `location` VALUES (1838, 8, 460, 6343, 'Batang Asam', 'Kecamatan', '');
INSERT INTO `location` VALUES (1839, 8, 460, 6344, 'Betara', 'Kecamatan', '');
INSERT INTO `location` VALUES (1840, 8, 460, 6345, 'Bram Itam', 'Kecamatan', '');
INSERT INTO `location` VALUES (1841, 8, 460, 6346, 'Kuala Betara', 'Kecamatan', '');
INSERT INTO `location` VALUES (1842, 8, 460, 6347, 'Merlung', 'Kecamatan', '');
INSERT INTO `location` VALUES (1843, 8, 460, 6348, 'Muara Papalik', 'Kecamatan', '');
INSERT INTO `location` VALUES (1844, 8, 460, 6349, 'Pengabuan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1845, 8, 460, 6350, 'Renah Mendaluh', 'Kecamatan', '');
INSERT INTO `location` VALUES (1846, 8, 460, 6351, 'Seberang Kota', 'Kecamatan', '');
INSERT INTO `location` VALUES (1847, 8, 460, 6352, 'Senyerang', 'Kecamatan', '');
INSERT INTO `location` VALUES (1848, 8, 460, 6353, 'Tebing Tinggi', 'Kecamatan', '');
INSERT INTO `location` VALUES (1849, 8, 460, 6354, 'Tungkal Ilir', 'Kecamatan', '');
INSERT INTO `location` VALUES (1850, 8, 460, 6355, 'Tungkal Ulu', 'Kecamatan', '');
INSERT INTO `location` VALUES (1851, 11, 306, 4343, 'Bringin', 'Kecamatan', '');
INSERT INTO `location` VALUES (1852, 11, 306, 4344, 'Geneng', 'Kecamatan', '');
INSERT INTO `location` VALUES (1853, 11, 306, 4345, 'Gerih', 'Kecamatan', '');
INSERT INTO `location` VALUES (1854, 11, 306, 4346, 'Jogorogo', 'Kecamatan', '');
INSERT INTO `location` VALUES (1855, 11, 306, 4347, 'Karanganyar', 'Kecamatan', '');
INSERT INTO `location` VALUES (1856, 11, 306, 4348, 'Karangjati', 'Kecamatan', '');
INSERT INTO `location` VALUES (1857, 11, 306, 4349, 'Kasreman', 'Kecamatan', '');
INSERT INTO `location` VALUES (1858, 11, 306, 4350, 'Kedunggalar', 'Kecamatan', '');
INSERT INTO `location` VALUES (1859, 11, 306, 4351, 'Kendal', 'Kecamatan', '');
INSERT INTO `location` VALUES (1860, 11, 306, 4352, 'Kwadungan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1861, 11, 306, 4353, 'Mantingan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1862, 11, 306, 4354, 'Ngawi', 'Kecamatan', '');
INSERT INTO `location` VALUES (1863, 11, 306, 4355, 'Ngrambe', 'Kecamatan', '');
INSERT INTO `location` VALUES (1864, 11, 306, 4356, 'Padas', 'Kecamatan', '');
INSERT INTO `location` VALUES (1865, 11, 306, 4357, 'Pangkur', 'Kecamatan', '');
INSERT INTO `location` VALUES (1866, 11, 306, 4358, 'Paron', 'Kecamatan', '');
INSERT INTO `location` VALUES (1867, 11, 306, 4359, 'Pitu', 'Kecamatan', '');
INSERT INTO `location` VALUES (1868, 11, 306, 4360, 'Sine', 'Kecamatan', '');
INSERT INTO `location` VALUES (1869, 11, 306, 4361, 'Widodaren', 'Kecamatan', '');
INSERT INTO `location` VALUES (1870, 34, 323, 4585, 'Padang Sidempuan Angkola Julu', 'Kecamatan', '');
INSERT INTO `location` VALUES (1871, 34, 323, 4586, 'Padang Sidempuan Batunadua', 'Kecamatan', '');
INSERT INTO `location` VALUES (1872, 34, 323, 4587, 'Padang Sidempuan Hutaimbaru', 'Kecamatan', '');
INSERT INTO `location` VALUES (1873, 34, 323, 4588, 'Padang Sidempuan Selatan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1874, 34, 323, 4589, 'Padang Sidempuan Tenggara', 'Kecamatan', '');
INSERT INTO `location` VALUES (1875, 34, 323, 4590, 'Padang Sidempuan Utara (Padangsidimpuan)', 'Kecamatan', '');
INSERT INTO `location` VALUES (1876, 19, 14, 0, 'Ambon', 'Kota', '97222');
INSERT INTO `location` VALUES (1877, 19, 99, 0, 'Buru', 'Kabupaten', '97371');
INSERT INTO `location` VALUES (1878, 19, 100, 0, 'Buru Selatan', 'Kabupaten', '97351');
INSERT INTO `location` VALUES (1879, 19, 185, 0, 'Kepulauan Aru', 'Kabupaten', '97681');
INSERT INTO `location` VALUES (1880, 19, 258, 0, 'Maluku Barat Daya', 'Kabupaten', '97451');
INSERT INTO `location` VALUES (1881, 19, 259, 0, 'Maluku Tengah', 'Kabupaten', '97513');
INSERT INTO `location` VALUES (1882, 19, 260, 0, 'Maluku Tenggara', 'Kabupaten', '97651');
INSERT INTO `location` VALUES (1883, 19, 261, 0, 'Maluku Tenggara Barat', 'Kabupaten', '97465');
INSERT INTO `location` VALUES (1884, 19, 400, 0, 'Seram Bagian Barat', 'Kabupaten', '97561');
INSERT INTO `location` VALUES (1885, 19, 401, 0, 'Seram Bagian Timur', 'Kabupaten', '97581');
INSERT INTO `location` VALUES (1886, 19, 488, 0, 'Tual', 'Kota', '97612');
INSERT INTO `location` VALUES (1887, 19, 14, 209, 'Baguala', 'Kecamatan', '');
INSERT INTO `location` VALUES (1888, 19, 14, 210, 'Leitimur Selatan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1889, 19, 14, 211, 'Nusaniwe (Nusanive)', 'Kecamatan', '');
INSERT INTO `location` VALUES (1890, 19, 14, 212, 'Sirimau', 'Kecamatan', '');
INSERT INTO `location` VALUES (1891, 19, 14, 213, 'Teluk Ambon', 'Kecamatan', '');
INSERT INTO `location` VALUES (1892, 30, 53, 0, 'Bau-Bau', 'Kota', '93719');
INSERT INTO `location` VALUES (1893, 30, 85, 0, 'Bombana', 'Kabupaten', '93771');
INSERT INTO `location` VALUES (1894, 30, 101, 0, 'Buton', 'Kabupaten', '93754');
INSERT INTO `location` VALUES (1895, 30, 102, 0, 'Buton Utara', 'Kabupaten', '93745');
INSERT INTO `location` VALUES (1896, 30, 182, 0, 'Kendari', 'Kota', '93126');
INSERT INTO `location` VALUES (1897, 30, 198, 0, 'Kolaka', 'Kabupaten', '93511');
INSERT INTO `location` VALUES (1898, 30, 199, 0, 'Kolaka Utara', 'Kabupaten', '93911');
INSERT INTO `location` VALUES (1899, 30, 200, 0, 'Konawe', 'Kabupaten', '93411');
INSERT INTO `location` VALUES (1900, 30, 201, 0, 'Konawe Selatan', 'Kabupaten', '93811');
INSERT INTO `location` VALUES (1901, 30, 202, 0, 'Konawe Utara', 'Kabupaten', '93311');
INSERT INTO `location` VALUES (1902, 30, 295, 0, 'Muna', 'Kabupaten', '93611');
INSERT INTO `location` VALUES (1903, 30, 494, 0, 'Wakatobi', 'Kabupaten', '93791');
INSERT INTO `location` VALUES (1904, 30, 198, 2752, 'Baula', 'Kecamatan', '');
INSERT INTO `location` VALUES (1905, 30, 198, 2753, 'Kolaka', 'Kecamatan', '');
INSERT INTO `location` VALUES (1906, 30, 198, 2754, 'Ladongi', 'Kecamatan', '');
INSERT INTO `location` VALUES (1907, 30, 198, 2755, 'Lalolae', 'Kecamatan', '');
INSERT INTO `location` VALUES (1908, 30, 198, 2756, 'Lambandia (Lambadia)', 'Kecamatan', '');
INSERT INTO `location` VALUES (1909, 30, 198, 2757, 'Latambaga', 'Kecamatan', '');
INSERT INTO `location` VALUES (1910, 30, 198, 2758, 'Loea', 'Kecamatan', '');
INSERT INTO `location` VALUES (1911, 30, 198, 2759, 'Mowewe', 'Kecamatan', '');
INSERT INTO `location` VALUES (1912, 30, 198, 2760, 'Poli Polia', 'Kecamatan', '');
INSERT INTO `location` VALUES (1913, 30, 198, 2761, 'Polinggona', 'Kecamatan', '');
INSERT INTO `location` VALUES (1914, 30, 198, 2762, 'Pomalaa', 'Kecamatan', '');
INSERT INTO `location` VALUES (1915, 30, 198, 2763, 'Samaturu', 'Kecamatan', '');
INSERT INTO `location` VALUES (1916, 30, 198, 2764, 'Tanggetada', 'Kecamatan', '');
INSERT INTO `location` VALUES (1917, 30, 198, 2765, 'Tinondo', 'Kecamatan', '');
INSERT INTO `location` VALUES (1918, 30, 198, 2766, 'Tirawuta', 'Kecamatan', '');
INSERT INTO `location` VALUES (1919, 30, 198, 2767, 'Toari', 'Kecamatan', '');
INSERT INTO `location` VALUES (1920, 30, 198, 2768, 'Uluiwoi', 'Kecamatan', '');
INSERT INTO `location` VALUES (1921, 30, 198, 2769, 'Watumbangga (Watubanggo)', 'Kecamatan', '');
INSERT INTO `location` VALUES (1922, 30, 198, 2770, 'Wolo', 'Kecamatan', '');
INSERT INTO `location` VALUES (1923, 30, 198, 2771, 'Wundulako', 'Kecamatan', '');
INSERT INTO `location` VALUES (1924, 10, 209, 2921, 'Bae', 'Kecamatan', '');
INSERT INTO `location` VALUES (1925, 10, 209, 2922, 'Dawe', 'Kecamatan', '');
INSERT INTO `location` VALUES (1926, 10, 209, 2923, 'Gebog', 'Kecamatan', '');
INSERT INTO `location` VALUES (1927, 10, 209, 2924, 'Jati', 'Kecamatan', '');
INSERT INTO `location` VALUES (1928, 10, 209, 2925, 'Jekulo', 'Kecamatan', '');
INSERT INTO `location` VALUES (1929, 10, 209, 2926, 'Kaliwungu', 'Kecamatan', '');
INSERT INTO `location` VALUES (1930, 10, 209, 2927, 'Kudus Kota', 'Kecamatan', '');
INSERT INTO `location` VALUES (1931, 10, 209, 2928, 'Mejobo', 'Kecamatan', '');
INSERT INTO `location` VALUES (1932, 10, 209, 2929, 'Undaan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1933, 11, 178, 2497, 'Badas', 'Kecamatan', '');
INSERT INTO `location` VALUES (1934, 11, 178, 2498, 'Banyakan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1935, 11, 178, 2499, 'Gampengrejo', 'Kecamatan', '');
INSERT INTO `location` VALUES (1936, 11, 178, 2500, 'Grogol', 'Kecamatan', '');
INSERT INTO `location` VALUES (1937, 11, 178, 2501, 'Gurah', 'Kecamatan', '');
INSERT INTO `location` VALUES (1938, 11, 178, 2502, 'Kandangan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1939, 11, 178, 2503, 'Kandat', 'Kecamatan', '');
INSERT INTO `location` VALUES (1940, 11, 178, 2504, 'Kayen Kidul', 'Kecamatan', '');
INSERT INTO `location` VALUES (1941, 11, 178, 2505, 'Kepung', 'Kecamatan', '');
INSERT INTO `location` VALUES (1942, 11, 178, 2506, 'Kras', 'Kecamatan', '');
INSERT INTO `location` VALUES (1943, 11, 178, 2507, 'Kunjang', 'Kecamatan', '');
INSERT INTO `location` VALUES (1944, 11, 178, 2508, 'Mojo', 'Kecamatan', '');
INSERT INTO `location` VALUES (1945, 11, 178, 2509, 'Ngadiluwih', 'Kecamatan', '');
INSERT INTO `location` VALUES (1946, 11, 178, 2510, 'Ngancar', 'Kecamatan', '');
INSERT INTO `location` VALUES (1947, 11, 178, 2511, 'Ngasem', 'Kecamatan', '');
INSERT INTO `location` VALUES (1948, 11, 178, 2512, 'Pagu', 'Kecamatan', '');
INSERT INTO `location` VALUES (1949, 11, 178, 2513, 'Papar', 'Kecamatan', '');
INSERT INTO `location` VALUES (1950, 11, 178, 2514, 'Pare', 'Kecamatan', '');
INSERT INTO `location` VALUES (1951, 11, 178, 2515, 'Plemahan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1952, 11, 178, 2516, 'Plosoklaten', 'Kecamatan', '');
INSERT INTO `location` VALUES (1953, 11, 178, 2517, 'Puncu', 'Kecamatan', '');
INSERT INTO `location` VALUES (1954, 11, 178, 2518, 'Purwoasri', 'Kecamatan', '');
INSERT INTO `location` VALUES (1955, 11, 178, 2519, 'Ringinrejo', 'Kecamatan', '');
INSERT INTO `location` VALUES (1956, 11, 178, 2520, 'Semen', 'Kecamatan', '');
INSERT INTO `location` VALUES (1957, 11, 178, 2521, 'Tarokan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1958, 11, 178, 2522, 'Wates', 'Kecamatan', '');
INSERT INTO `location` VALUES (1959, 26, 147, 2016, 'Batang Tuaka', 'Kecamatan', '');
INSERT INTO `location` VALUES (1960, 26, 147, 2017, 'Concong', 'Kecamatan', '');
INSERT INTO `location` VALUES (1961, 26, 147, 2018, 'Enok', 'Kecamatan', '');
INSERT INTO `location` VALUES (1962, 26, 147, 2019, 'Gaung', 'Kecamatan', '');
INSERT INTO `location` VALUES (1963, 26, 147, 2020, 'Gaung Anak Serka', 'Kecamatan', '');
INSERT INTO `location` VALUES (1964, 26, 147, 2021, 'Kateman', 'Kecamatan', '');
INSERT INTO `location` VALUES (1965, 26, 147, 2022, 'Kempas', 'Kecamatan', '');
INSERT INTO `location` VALUES (1966, 26, 147, 2023, 'Kemuning', 'Kecamatan', '');
INSERT INTO `location` VALUES (1967, 26, 147, 2024, 'Keritang', 'Kecamatan', '');
INSERT INTO `location` VALUES (1968, 26, 147, 2025, 'Kuala Indragiri', 'Kecamatan', '');
INSERT INTO `location` VALUES (1969, 26, 147, 2026, 'Mandah', 'Kecamatan', '');
INSERT INTO `location` VALUES (1970, 26, 147, 2027, 'Pelangiran', 'Kecamatan', '');
INSERT INTO `location` VALUES (1971, 26, 147, 2028, 'Pulau Burung', 'Kecamatan', '');
INSERT INTO `location` VALUES (1972, 26, 147, 2029, 'Reteh', 'Kecamatan', '');
INSERT INTO `location` VALUES (1973, 26, 147, 2030, 'Sungai Batang', 'Kecamatan', '');
INSERT INTO `location` VALUES (1974, 26, 147, 2031, 'Tanah Merah', 'Kecamatan', '');
INSERT INTO `location` VALUES (1975, 26, 147, 2032, 'Teluk Belengkong', 'Kecamatan', '');
INSERT INTO `location` VALUES (1976, 26, 147, 2033, 'Tembilahan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1977, 26, 147, 2034, 'Tembilahan Hulu', 'Kecamatan', '');
INSERT INTO `location` VALUES (1978, 26, 147, 2035, 'Tempuling', 'Kecamatan', '');
INSERT INTO `location` VALUES (1979, 18, 496, 6871, 'Bahuga', 'Kecamatan', '');
INSERT INTO `location` VALUES (1980, 18, 496, 6872, 'Banjit', 'Kecamatan', '');
INSERT INTO `location` VALUES (1981, 18, 496, 6873, 'Baradatu', 'Kecamatan', '');
INSERT INTO `location` VALUES (1982, 18, 496, 6874, 'Blambangan Umpu', 'Kecamatan', '');
INSERT INTO `location` VALUES (1983, 18, 496, 6875, 'Buay Bahuga', 'Kecamatan', '');
INSERT INTO `location` VALUES (1984, 18, 496, 6876, 'Bumi Agung', 'Kecamatan', '');
INSERT INTO `location` VALUES (1985, 18, 496, 6877, 'Gunung Labuhan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1986, 18, 496, 6878, 'Kasui', 'Kecamatan', '');
INSERT INTO `location` VALUES (1987, 18, 496, 6879, 'Negara Batin', 'Kecamatan', '');
INSERT INTO `location` VALUES (1988, 18, 496, 6880, 'Negeri Agung', 'Kecamatan', '');
INSERT INTO `location` VALUES (1989, 18, 496, 6881, 'Negeri Besar', 'Kecamatan', '');
INSERT INTO `location` VALUES (1990, 18, 496, 6882, 'Pakuan Ratu', 'Kecamatan', '');
INSERT INTO `location` VALUES (1991, 18, 496, 6883, 'Rebang Tangkas', 'Kecamatan', '');
INSERT INTO `location` VALUES (1992, 18, 496, 6884, 'Way Tuba', 'Kecamatan', '');
INSERT INTO `location` VALUES (1993, 1, 94, 1279, 'Banjar', 'Kecamatan', '');
INSERT INTO `location` VALUES (1994, 1, 94, 1280, 'Buleleng', 'Kecamatan', '');
INSERT INTO `location` VALUES (1995, 1, 94, 1281, 'Busungbiu', 'Kecamatan', '');
INSERT INTO `location` VALUES (1996, 1, 94, 1282, 'Gerokgak', 'Kecamatan', '');
INSERT INTO `location` VALUES (1997, 1, 94, 1283, 'Kubutambahan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1998, 1, 94, 1284, 'Sawan', 'Kecamatan', '');
INSERT INTO `location` VALUES (1999, 1, 94, 1285, 'Seririt', 'Kecamatan', '');
INSERT INTO `location` VALUES (2000, 1, 94, 1286, 'Sukasada', 'Kecamatan', '');
INSERT INTO `location` VALUES (2001, 1, 94, 1287, 'Tejakula', 'Kecamatan', '');

-- ----------------------------
-- Table structure for manufacturer
-- ----------------------------
DROP TABLE IF EXISTS `manufacturer`;
CREATE TABLE `manufacturer`  (
  `manufacturer_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sort_order` int NOT NULL,
  PRIMARY KEY (`manufacturer_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of manufacturer
-- ----------------------------

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `message_id` int NOT NULL AUTO_INCREMENT,
  `reply_id` int NOT NULL DEFAULT 0,
  `sender_id` int NOT NULL DEFAULT 0,
  `recipient_id` int NOT NULL DEFAULT 0,
  `message` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `read` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`message_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of message
-- ----------------------------

-- ----------------------------
-- Table structure for midtrans_method
-- ----------------------------
DROP TABLE IF EXISTS `midtrans_method`;
CREATE TABLE `midtrans_method`  (
  `code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `surcharge_fixed` decimal(15, 2) NOT NULL DEFAULT 0.00,
  `surcharge_percentage` decimal(15, 2) NOT NULL DEFAULT 0.00,
  `sort_order` int NOT NULL DEFAULT 0,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of midtrans_method
-- ----------------------------
INSERT INTO `midtrans_method` VALUES ('midtrans.akulaku', 'Akulaku', 'Cicilan tanpa menggunakan kartu dikenakan surcharge 2%', 0.00, 2.00, 14, 0);
INSERT INTO `midtrans_method` VALUES ('midtrans.bca_klikbca', 'Klik BCA', 'Dikenakan surcharge Rp 2.000', 2000.00, 0.00, 7, 0);
INSERT INTO `midtrans_method` VALUES ('midtrans.bca_klikpay', 'BCA KlikPay', 'Dikenakan surcharge Rp 2.000', 2000.00, 0.00, 8, 0);
INSERT INTO `midtrans_method` VALUES ('midtrans.bca_va', 'Transfer Bank BCA', 'ATM / Mobile Banking / Internet Banking BCA dan dikenakan surcharge Rp 4.000', 4000.00, 0.00, 2, 1);
INSERT INTO `midtrans_method` VALUES ('midtrans.bni_va', 'Transfer Bank BNI', 'ATM / Mobile Banking / Internet Banking BNI dan dikenakan surcharge Rp 4.000', 4000.00, 0.00, 3, 1);
INSERT INTO `midtrans_method` VALUES ('midtrans.bri_epay', 'BRI ePay', 'Dikenakan surcharge Rp 5.000', 5000.00, 0.00, 9, 0);
INSERT INTO `midtrans_method` VALUES ('midtrans.bri_va', 'Transfer Bank BRI', 'ATM / Mobile Banking / Internet Banking BRI dan dikenakan surcharge Rp 4.000', 4000.00, 0.00, 4, 1);
INSERT INTO `midtrans_method` VALUES ('midtrans.cimb_clicks', 'CIMB Clicks', 'Dikenakan surcharge Rp 5.000', 5000.00, 0.00, 6, 0);
INSERT INTO `midtrans_method` VALUES ('midtrans.credit_card', 'Kartu Kredit', 'Visa, MasterCard, JCB, dan Amex dikenakan surcharge 2.9% + Rp 2.000', 2000.00, 2.90, 1, 0);
INSERT INTO `midtrans_method` VALUES ('midtrans.danamon_online', 'Danamon Online Banking', 'Dikenakan surcharge Rp 5.000', 5000.00, 0.00, 10, 0);
INSERT INTO `midtrans_method` VALUES ('midtrans.echannel', 'e-Channel', 'Dikenakan surcharge Rp 5.000', 5000.00, 0.00, 12, 0);
INSERT INTO `midtrans_method` VALUES ('midtrans.gopay', 'Gopay', 'Dikenakan surcharge 2%', 0.00, 2.00, 15, 1);
INSERT INTO `midtrans_method` VALUES ('midtrans.indomaret', 'Indomaret', 'Dikenakan surcharge Rp 5.000', 5000.00, 0.00, 13, 0);
INSERT INTO `midtrans_method` VALUES ('midtrans.mandiri_clickpay', 'Mandiri ClickPay', 'Dikenakan surcharge Rp 5.000', 5000.00, 0.00, 11, 1);
INSERT INTO `midtrans_method` VALUES ('midtrans.permata_va', 'Transfer Bank Permata', 'ATM / Mobile Banking / Internet Banking Permata dan dikenakan surcharge Rp 4.000', 4000.00, 0.00, 5, 1);

-- ----------------------------
-- Table structure for notification
-- ----------------------------
DROP TABLE IF EXISTS `notification`;
CREATE TABLE `notification`  (
  `notification_id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL DEFAULT 0,
  `admin_id` int NOT NULL DEFAULT 0,
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `message` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `table` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `table_id` int NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `read` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`notification_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 249 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notification
-- ----------------------------
INSERT INTO `notification` VALUES (1, 0, -2, 'Pemesanan #202102261', 'Ada pesanan baru nomor #202102261', 'order', 1, '2021-02-26 11:54:05', 1);
INSERT INTO `notification` VALUES (2, 0, -1, 'Pemesanan #202102261', 'Ada pesanan baru nomor #202102261', 'order', 1, '2021-02-26 11:54:05', 1);
INSERT INTO `notification` VALUES (5, 0, -2, 'Pemesanan #202103102', 'Ada pesanan baru nomor #202103102', 'order', 2, '2021-03-10 11:30:02', 1);
INSERT INTO `notification` VALUES (6, 0, -1, 'Pemesanan #202103102', 'Ada pesanan baru nomor #202103102', 'order', 2, '2021-03-10 11:30:02', 1);
INSERT INTO `notification` VALUES (7, 0, -2, 'Pemesanan #202103103', 'Ada pesanan baru nomor #202103103', 'order', 3, '2021-03-10 11:45:44', 1);
INSERT INTO `notification` VALUES (8, 0, -1, 'Pemesanan #202103103', 'Ada pesanan baru nomor #202103103', 'order', 3, '2021-03-10 11:45:44', 1);
INSERT INTO `notification` VALUES (9, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Leo Beenhakker, tanggal registrasi: 25-03-2021, nama toko: Dunia Rambut', 'reg_sale_offline', 1, '2021-03-25 16:23:59', 1);
INSERT INTO `notification` VALUES (10, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Leo Beenhakker, tanggal registrasi: 25-03-2021, nama toko: Dunia Rambut', 'reg_sale_offline', 1, '2021-03-25 16:23:59', 0);
INSERT INTO `notification` VALUES (11, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Isna Kusuma Nintyastuti, tanggal registrasi: 26-03-2021, nama toko: Barbersupply_indo', 'reg_sale_offline', 2, '2021-03-26 16:19:27', 1);
INSERT INTO `notification` VALUES (12, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Isna Kusuma Nintyastuti, tanggal registrasi: 26-03-2021, nama toko: Barbersupply_indo', 'reg_sale_offline', 2, '2021-03-26 16:19:27', 0);
INSERT INTO `notification` VALUES (13, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Mario Danala Napitupulu, tanggal registrasi: 27-03-2021, nama toko: Barbersupply_Indo', 'reg_sale_offline', 3, '2021-03-27 08:09:23', 1);
INSERT INTO `notification` VALUES (14, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Mario Danala Napitupulu, tanggal registrasi: 27-03-2021, nama toko: Barbersupply_Indo', 'reg_sale_offline', 3, '2021-03-27 08:09:23', 0);
INSERT INTO `notification` VALUES (15, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Ali Mauludin, tanggal registrasi: 08-04-2021, nama toko: Toko FEN', 'reg_sale_offline', 4, '2021-04-08 07:06:44', 1);
INSERT INTO `notification` VALUES (16, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Ali Mauludin, tanggal registrasi: 08-04-2021, nama toko: Toko FEN', 'reg_sale_offline', 4, '2021-04-08 07:06:44', 0);
INSERT INTO `notification` VALUES (17, 0, -2, 'Pemesanan #202104144', 'Ada pesanan baru nomor #202104144', 'order', 4, '2021-04-14 23:58:07', 1);
INSERT INTO `notification` VALUES (18, 0, -1, 'Pemesanan #202104144', 'Ada pesanan baru nomor #202104144', 'order', 4, '2021-04-14 23:58:07', 1);
INSERT INTO `notification` VALUES (19, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Hendrawan Nasution, tanggal registrasi: 17-04-2021, nama toko: Barbersupply_Indo', 'reg_sale_offline', 5, '2021-04-17 15:28:17', 1);
INSERT INTO `notification` VALUES (20, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Hendrawan Nasution, tanggal registrasi: 17-04-2021, nama toko: Barbersupply_Indo', 'reg_sale_offline', 5, '2021-04-17 15:28:17', 0);
INSERT INTO `notification` VALUES (21, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Alif Rahman Hakim, tanggal registrasi: 20-04-2021, nama toko: Barbersupply_indo', 'reg_sale_offline', 6, '2021-04-20 19:48:37', 0);
INSERT INTO `notification` VALUES (22, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Alif Rahman Hakim, tanggal registrasi: 20-04-2021, nama toko: Barbersupply_indo', 'reg_sale_offline', 6, '2021-04-20 19:48:37', 0);
INSERT INTO `notification` VALUES (23, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Alif Rahman Hakim, tanggal registrasi: 27-04-2021, nama toko: Dunia Rambut', 'reg_sale_offline', 7, '2021-04-27 17:24:50', 0);
INSERT INTO `notification` VALUES (24, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Alif Rahman Hakim, tanggal registrasi: 27-04-2021, nama toko: Dunia Rambut', 'reg_sale_offline', 7, '2021-04-27 17:24:50', 0);
INSERT INTO `notification` VALUES (25, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Alif Rahman Hakim, tanggal registrasi: 27-04-2021, nama toko: Dunia Rambut', 'reg_sale_offline', 8, '2021-04-27 17:28:46', 1);
INSERT INTO `notification` VALUES (26, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Alif Rahman Hakim, tanggal registrasi: 27-04-2021, nama toko: Dunia Rambut', 'reg_sale_offline', 8, '2021-04-27 17:28:46', 0);
INSERT INTO `notification` VALUES (27, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Olivia Adeline, tanggal registrasi: 03-05-2021, nama toko: Gudang Rambut', 'reg_sale_offline', 9, '2021-05-03 22:18:51', 0);
INSERT INTO `notification` VALUES (28, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Olivia Adeline, tanggal registrasi: 03-05-2021, nama toko: Gudang Rambut', 'reg_sale_offline', 9, '2021-05-03 22:18:51', 0);
INSERT INTO `notification` VALUES (29, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: M Natsir, tanggal registrasi: 06-05-2021, nama toko: Nasir', 'reg_sale_offline', 10, '2021-05-06 21:29:52', 0);
INSERT INTO `notification` VALUES (30, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: M Natsir, tanggal registrasi: 06-05-2021, nama toko: Nasir', 'reg_sale_offline', 10, '2021-05-06 21:29:52', 0);
INSERT INTO `notification` VALUES (31, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Febry Eka, tanggal registrasi: 11-05-2021, nama toko: Mangbaray barber', 'reg_sale_offline', 11, '2021-05-11 21:12:41', 0);
INSERT INTO `notification` VALUES (32, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Febry Eka, tanggal registrasi: 11-05-2021, nama toko: Mangbaray barber', 'reg_sale_offline', 11, '2021-05-11 21:12:41', 0);
INSERT INTO `notification` VALUES (33, 0, -2, 'Pemesanan #202105125', 'Ada pesanan baru nomor #202105125', 'order', 5, '2021-05-12 17:06:16', 1);
INSERT INTO `notification` VALUES (34, 0, -1, 'Pemesanan #202105125', 'Ada pesanan baru nomor #202105125', 'order', 5, '2021-05-12 17:06:16', 1);
INSERT INTO `notification` VALUES (35, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Tjiu Sandi Wilianto, tanggal registrasi: 16-05-2021, nama toko: Barbersupply indo', 'reg_sale_offline', 12, '2021-05-16 18:18:53', 0);
INSERT INTO `notification` VALUES (36, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Tjiu Sandi Wilianto, tanggal registrasi: 16-05-2021, nama toko: Barbersupply indo', 'reg_sale_offline', 12, '2021-05-16 18:18:53', 0);
INSERT INTO `notification` VALUES (37, 0, -2, 'Pemesanan #202105176', 'Ada pesanan baru nomor #202105176', 'order', 6, '2021-05-17 01:14:19', 1);
INSERT INTO `notification` VALUES (38, 0, -1, 'Pemesanan #202105176', 'Ada pesanan baru nomor #202105176', 'order', 6, '2021-05-17 01:14:19', 1);
INSERT INTO `notification` VALUES (39, 0, -2, 'Pemesanan #202105197', 'Ada pesanan baru nomor #202105197', 'order', 7, '2021-05-19 13:33:42', 1);
INSERT INTO `notification` VALUES (40, 0, -1, 'Pemesanan #202105197', 'Ada pesanan baru nomor #202105197', 'order', 7, '2021-05-19 13:33:42', 1);
INSERT INTO `notification` VALUES (41, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Suby Anggadibrata, tanggal registrasi: 19-05-2021, nama toko: Barbersupply_indo', 'reg_sale_offline', 13, '2021-05-19 16:11:32', 0);
INSERT INTO `notification` VALUES (42, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Suby Anggadibrata, tanggal registrasi: 19-05-2021, nama toko: Barbersupply_indo', 'reg_sale_offline', 13, '2021-05-19 16:11:32', 0);
INSERT INTO `notification` VALUES (43, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Carsoma, tanggal registrasi: 22-05-2021, nama toko: Cygnus Gadget Store', 'reg_sale_offline', 14, '2021-05-22 20:06:31', 0);
INSERT INTO `notification` VALUES (44, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Carsoma, tanggal registrasi: 22-05-2021, nama toko: Cygnus Gadget Store', 'reg_sale_offline', 14, '2021-05-22 20:06:31', 0);
INSERT INTO `notification` VALUES (45, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Dhifan Fathin Hermawan, tanggal registrasi: 23-05-2021, nama toko: Barbersuply_indo', 'reg_sale_offline', 15, '2021-05-23 17:54:03', 0);
INSERT INTO `notification` VALUES (46, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Dhifan Fathin Hermawan, tanggal registrasi: 23-05-2021, nama toko: Barbersuply_indo', 'reg_sale_offline', 15, '2021-05-23 17:54:03', 0);
INSERT INTO `notification` VALUES (47, 0, -2, 'Pemesanan #202105278', 'Ada pesanan baru nomor #202105278', 'order', 8, '2021-05-27 12:46:57', 1);
INSERT INTO `notification` VALUES (48, 0, -1, 'Pemesanan #202105278', 'Ada pesanan baru nomor #202105278', 'order', 8, '2021-05-27 12:46:57', 1);
INSERT INTO `notification` VALUES (51, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Edward Jahja Saputra, tanggal registrasi: 27-05-2021, nama toko: Westminster Barber & Coffee', 'reg_sale_offline', 16, '2021-05-27 22:17:34', 0);
INSERT INTO `notification` VALUES (52, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Edward Jahja Saputra, tanggal registrasi: 27-05-2021, nama toko: Westminster Barber & Coffee', 'reg_sale_offline', 16, '2021-05-27 22:17:34', 0);
INSERT INTO `notification` VALUES (53, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Waris Nugroho, tanggal registrasi: 01-06-2021, nama toko: Cygnus Gadget Store', 'reg_sale_offline', 17, '2021-06-01 08:55:03', 0);
INSERT INTO `notification` VALUES (54, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Waris Nugroho, tanggal registrasi: 01-06-2021, nama toko: Cygnus Gadget Store', 'reg_sale_offline', 17, '2021-06-01 08:55:03', 0);
INSERT INTO `notification` VALUES (55, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Jessy, tanggal registrasi: 02-06-2021, nama toko: GUDANG RAMBUT TOKOPEDIA', 'reg_sale_offline', 18, '2021-06-02 21:15:17', 0);
INSERT INTO `notification` VALUES (56, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Jessy, tanggal registrasi: 02-06-2021, nama toko: GUDANG RAMBUT TOKOPEDIA', 'reg_sale_offline', 18, '2021-06-02 21:15:17', 0);
INSERT INTO `notification` VALUES (57, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Waris Nugroho, tanggal registrasi: 04-06-2021, nama toko: Alatcukurrambut.com', 'reg_sale_offline', 19, '2021-06-04 09:33:36', 0);
INSERT INTO `notification` VALUES (58, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Waris Nugroho, tanggal registrasi: 04-06-2021, nama toko: Alatcukurrambut.com', 'reg_sale_offline', 19, '2021-06-04 09:33:36', 0);
INSERT INTO `notification` VALUES (65, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Gary Tan, tanggal registrasi: 11-06-2021, nama toko: test', 'reg_sale_offline', 20, '2021-06-11 10:13:03', 0);
INSERT INTO `notification` VALUES (66, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Gary Tan, tanggal registrasi: 11-06-2021, nama toko: test', 'reg_sale_offline', 20, '2021-06-11 10:13:03', 0);
INSERT INTO `notification` VALUES (67, 0, -2, 'Klaim Garansi Baru', 'Ada klaim garansi baru oleh customer: Gary Tan, kode produk: 1234567890, nama produk: DETAILER TRIMMER, alasan: Mesin Mati/Tidak Nyala', 'warranty_claim', 1, '2021-06-11 10:15:36', 0);
INSERT INTO `notification` VALUES (68, 0, -1, 'Klaim Garansi Baru', 'Ada klaim garansi baru oleh customer: Gary Tan, kode produk: 1234567890, nama produk: DETAILER TRIMMER, alasan: Mesin Mati/Tidak Nyala', 'warranty_claim', 1, '2021-06-11 10:15:36', 0);
INSERT INTO `notification` VALUES (69, 0, -2, 'Pemesanan #2021061110', 'Ada pesanan baru nomor #2021061110', 'order', 10, '2021-06-11 15:37:06', 0);
INSERT INTO `notification` VALUES (70, 0, -1, 'Pemesanan #2021061110', 'Ada pesanan baru nomor #2021061110', 'order', 10, '2021-06-11 15:37:06', 1);
INSERT INTO `notification` VALUES (71, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Hadi Prawoto, tanggal registrasi: 14-06-2021, nama toko: Cygnus Gadget Store', 'reg_sale_offline', 21, '2021-06-14 15:40:19', 0);
INSERT INTO `notification` VALUES (72, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Hadi Prawoto, tanggal registrasi: 14-06-2021, nama toko: Cygnus Gadget Store', 'reg_sale_offline', 21, '2021-06-14 15:40:19', 0);
INSERT INTO `notification` VALUES (73, 0, -2, 'Pemesanan #2021061511', 'Ada pesanan baru nomor #2021061511', 'order', 11, '2021-06-15 14:42:14', 1);
INSERT INTO `notification` VALUES (74, 0, -1, 'Pemesanan #2021061511', 'Ada pesanan baru nomor #2021061511', 'order', 11, '2021-06-15 14:42:14', 1);
INSERT INTO `notification` VALUES (75, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Brillian Putra S, tanggal registrasi: 16-06-2021, nama toko: Concordia Barbershop', 'reg_sale_offline', 22, '2021-06-16 21:25:51', 0);
INSERT INTO `notification` VALUES (76, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Brillian Putra S, tanggal registrasi: 16-06-2021, nama toko: Concordia Barbershop', 'reg_sale_offline', 22, '2021-06-16 21:25:51', 0);
INSERT INTO `notification` VALUES (77, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: AA. KURNIAWAN, tanggal registrasi: 21-06-2021, nama toko: dpbarbersupply', 'reg_sale_offline', 23, '2021-06-21 11:19:52', 0);
INSERT INTO `notification` VALUES (78, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: AA. KURNIAWAN, tanggal registrasi: 21-06-2021, nama toko: dpbarbersupply', 'reg_sale_offline', 23, '2021-06-21 11:19:52', 0);
INSERT INTO `notification` VALUES (79, 0, -2, 'Pemesanan #2021062312', 'Ada pesanan baru nomor #2021062312', 'order', 12, '2021-06-23 13:22:02', 1);
INSERT INTO `notification` VALUES (80, 0, -1, 'Pemesanan #2021062312', 'Ada pesanan baru nomor #2021062312', 'order', 12, '2021-06-23 13:22:02', 1);
INSERT INTO `notification` VALUES (81, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Noval Priwa Ginting, tanggal registrasi: 24-06-2021, nama toko: Gudang Rambut', 'reg_sale_offline', 24, '2021-06-24 16:20:37', 0);
INSERT INTO `notification` VALUES (82, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Noval Priwa Ginting, tanggal registrasi: 24-06-2021, nama toko: Gudang Rambut', 'reg_sale_offline', 24, '2021-06-24 16:20:37', 0);
INSERT INTO `notification` VALUES (83, 0, -2, 'Pemesanan #2021062513', 'Ada pesanan baru nomor #2021062513', 'order', 13, '2021-06-25 14:28:20', 0);
INSERT INTO `notification` VALUES (84, 0, -1, 'Pemesanan #2021062513', 'Ada pesanan baru nomor #2021062513', 'order', 13, '2021-06-25 14:28:20', 1);
INSERT INTO `notification` VALUES (85, 0, -2, 'Pemesanan #2021062514', 'Ada pesanan baru nomor #2021062514', 'order', 14, '2021-06-25 14:54:29', 0);
INSERT INTO `notification` VALUES (86, 0, -1, 'Pemesanan #2021062514', 'Ada pesanan baru nomor #2021062514', 'order', 14, '2021-06-25 14:54:29', 1);
INSERT INTO `notification` VALUES (87, 0, -2, 'Pemesanan #2021062515', 'Ada pesanan baru nomor #2021062515', 'order', 15, '2021-06-25 14:58:32', 1);
INSERT INTO `notification` VALUES (88, 0, -1, 'Pemesanan #2021062515', 'Ada pesanan baru nomor #2021062515', 'order', 15, '2021-06-25 14:58:32', 1);
INSERT INTO `notification` VALUES (89, 0, -2, 'Pemesanan #2021062916', 'Ada pesanan baru nomor #2021062916', 'order', 16, '2021-06-29 15:59:04', 1);
INSERT INTO `notification` VALUES (90, 0, -1, 'Pemesanan #2021062916', 'Ada pesanan baru nomor #2021062916', 'order', 16, '2021-06-29 15:59:04', 1);
INSERT INTO `notification` VALUES (91, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Dimas Ramadhan Putra, tanggal registrasi: 30-06-2021, nama toko: Cygnus Gadget Store', 'reg_sale_offline', 25, '2021-06-30 20:01:35', 0);
INSERT INTO `notification` VALUES (92, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Dimas Ramadhan Putra, tanggal registrasi: 30-06-2021, nama toko: Cygnus Gadget Store', 'reg_sale_offline', 25, '2021-06-30 20:01:35', 0);
INSERT INTO `notification` VALUES (93, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Dimas Ramadhan Putra, tanggal registrasi: 01-07-2021, nama toko: Cygnus Gadget Store', 'reg_sale_offline', 26, '2021-07-01 12:29:36', 0);
INSERT INTO `notification` VALUES (94, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Dimas Ramadhan Putra, tanggal registrasi: 01-07-2021, nama toko: Cygnus Gadget Store', 'reg_sale_offline', 26, '2021-07-01 12:29:36', 0);
INSERT INTO `notification` VALUES (95, 0, -2, 'Pemesanan #2021070217', 'Ada pesanan baru nomor #2021070217', 'order', 17, '2021-07-02 13:48:37', 0);
INSERT INTO `notification` VALUES (96, 0, -1, 'Pemesanan #2021070217', 'Ada pesanan baru nomor #2021070217', 'order', 17, '2021-07-02 13:48:37', 1);
INSERT INTO `notification` VALUES (97, 0, -2, 'Pemesanan #2021070218', 'Ada pesanan baru nomor #2021070218', 'order', 18, '2021-07-02 14:15:43', 1);
INSERT INTO `notification` VALUES (98, 0, -1, 'Pemesanan #2021070218', 'Ada pesanan baru nomor #2021070218', 'order', 18, '2021-07-02 14:15:43', 1);
INSERT INTO `notification` VALUES (99, 0, -2, 'Pemesanan #2021070219', 'Ada pesanan baru nomor #2021070219', 'order', 19, '2021-07-02 15:26:19', 1);
INSERT INTO `notification` VALUES (100, 0, -1, 'Pemesanan #2021070219', 'Ada pesanan baru nomor #2021070219', 'order', 19, '2021-07-02 15:26:19', 1);
INSERT INTO `notification` VALUES (101, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Hiu Khi On, tanggal registrasi: 02-07-2021, nama toko: Cleo Hub', 'reg_sale_offline', 27, '2021-07-02 15:26:53', 0);
INSERT INTO `notification` VALUES (102, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Hiu Khi On, tanggal registrasi: 02-07-2021, nama toko: Cleo Hub', 'reg_sale_offline', 27, '2021-07-02 15:26:53', 0);
INSERT INTO `notification` VALUES (103, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Kevin Lee, tanggal registrasi: 04-07-2021, nama toko: BARBERSUPPLY_ID', 'reg_sale_offline', 28, '2021-07-04 15:23:11', 0);
INSERT INTO `notification` VALUES (104, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Kevin Lee, tanggal registrasi: 04-07-2021, nama toko: BARBERSUPPLY_ID', 'reg_sale_offline', 28, '2021-07-04 15:23:11', 0);
INSERT INTO `notification` VALUES (105, 0, -2, 'Pemesanan #2021070520', 'Ada pesanan baru nomor #2021070520', 'order', 20, '2021-07-05 09:17:33', 1);
INSERT INTO `notification` VALUES (106, 0, -1, 'Pemesanan #2021070520', 'Ada pesanan baru nomor #2021070520', 'order', 20, '2021-07-05 09:17:33', 1);
INSERT INTO `notification` VALUES (107, 0, -2, 'Pemesanan #2021070521', 'Ada pesanan baru nomor #2021070521', 'order', 21, '2021-07-05 12:17:35', 1);
INSERT INTO `notification` VALUES (108, 0, -1, 'Pemesanan #2021070521', 'Ada pesanan baru nomor #2021070521', 'order', 21, '2021-07-05 12:17:35', 1);
INSERT INTO `notification` VALUES (109, 0, -2, 'Pemesanan #2021070522', 'Ada pesanan baru nomor #2021070522', 'order', 22, '2021-07-05 12:18:10', 1);
INSERT INTO `notification` VALUES (110, 0, -1, 'Pemesanan #2021070522', 'Ada pesanan baru nomor #2021070522', 'order', 22, '2021-07-05 12:18:10', 1);
INSERT INTO `notification` VALUES (111, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Grady Edbert Timothy, tanggal registrasi: 06-07-2021, nama toko: Barbersupply_ID', 'reg_sale_offline', 29, '2021-07-06 11:08:38', 0);
INSERT INTO `notification` VALUES (112, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Grady Edbert Timothy, tanggal registrasi: 06-07-2021, nama toko: Barbersupply_ID', 'reg_sale_offline', 29, '2021-07-06 11:08:38', 0);
INSERT INTO `notification` VALUES (113, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Dhifan Fathin Hermawan, tanggal registrasi: 11-07-2021, nama toko: Barbersuply_indo', 'reg_sale_offline', 30, '2021-07-11 10:25:06', 0);
INSERT INTO `notification` VALUES (114, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Dhifan Fathin Hermawan, tanggal registrasi: 11-07-2021, nama toko: Barbersuply_indo', 'reg_sale_offline', 30, '2021-07-11 10:25:06', 0);
INSERT INTO `notification` VALUES (115, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Joshua Nathanael Afan, tanggal registrasi: 12-07-2021, nama toko: BARBERSUPPLY_ID', 'reg_sale_offline', 31, '2021-07-12 08:08:03', 0);
INSERT INTO `notification` VALUES (116, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Joshua Nathanael Afan, tanggal registrasi: 12-07-2021, nama toko: BARBERSUPPLY_ID', 'reg_sale_offline', 31, '2021-07-12 08:08:03', 0);
INSERT INTO `notification` VALUES (117, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Ud Beauty, tanggal registrasi: 14-07-2021, nama toko: Ud Beaute', 'reg_sale_offline', 32, '2021-07-14 10:41:41', 0);
INSERT INTO `notification` VALUES (118, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Ud Beauty, tanggal registrasi: 14-07-2021, nama toko: Ud Beaute', 'reg_sale_offline', 32, '2021-07-14 10:41:41', 0);
INSERT INTO `notification` VALUES (119, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Ud Beauty, tanggal registrasi: 14-07-2021, nama toko: Ud Beaute', 'reg_sale_offline', 33, '2021-07-14 11:19:07', 0);
INSERT INTO `notification` VALUES (120, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Ud Beauty, tanggal registrasi: 14-07-2021, nama toko: Ud Beaute', 'reg_sale_offline', 33, '2021-07-14 11:19:07', 0);
INSERT INTO `notification` VALUES (121, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Kuncoro Ambra Zamzani, tanggal registrasi: 14-07-2021, nama toko: KanaKana', 'reg_sale_offline', 34, '2021-07-14 18:24:50', 0);
INSERT INTO `notification` VALUES (122, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Kuncoro Ambra Zamzani, tanggal registrasi: 14-07-2021, nama toko: KanaKana', 'reg_sale_offline', 34, '2021-07-14 18:24:50', 0);
INSERT INTO `notification` VALUES (123, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Ud Beauty, tanggal registrasi: 17-07-2021, nama toko: Ud Beaute', 'reg_sale_offline', 35, '2021-07-17 17:38:50', 0);
INSERT INTO `notification` VALUES (124, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Ud Beauty, tanggal registrasi: 17-07-2021, nama toko: Ud Beaute', 'reg_sale_offline', 35, '2021-07-17 17:38:50', 0);
INSERT INTO `notification` VALUES (125, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Handi Natif Saifudin, tanggal registrasi: 18-07-2021, nama toko: BARBERSUPPLY_ID', 'reg_sale_offline', 36, '2021-07-18 13:06:47', 1);
INSERT INTO `notification` VALUES (126, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Handi Natif Saifudin, tanggal registrasi: 18-07-2021, nama toko: BARBERSUPPLY_ID', 'reg_sale_offline', 36, '2021-07-18 13:06:47', 0);
INSERT INTO `notification` VALUES (127, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Mohamad Rajih Radiansyah, tanggal registrasi: 23-07-2021, nama toko: Cygnus gadget store', 'reg_sale_offline', 37, '2021-07-23 09:32:05', 0);
INSERT INTO `notification` VALUES (128, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Mohamad Rajih Radiansyah, tanggal registrasi: 23-07-2021, nama toko: Cygnus gadget store', 'reg_sale_offline', 37, '2021-07-23 09:32:05', 0);
INSERT INTO `notification` VALUES (129, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Maria Ulfa, tanggal registrasi: 23-07-2021, nama toko: Toko Roes ( Shopee)', 'reg_sale_offline', 38, '2021-07-23 17:17:51', 0);
INSERT INTO `notification` VALUES (130, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Maria Ulfa, tanggal registrasi: 23-07-2021, nama toko: Toko Roes ( Shopee)', 'reg_sale_offline', 38, '2021-07-23 17:17:51', 0);
INSERT INTO `notification` VALUES (131, 0, -2, 'Pemesanan #2021072523', 'Ada pesanan baru nomor #2021072523', 'order', 23, '2021-07-25 14:20:20', 1);
INSERT INTO `notification` VALUES (132, 0, -1, 'Pemesanan #2021072523', 'Ada pesanan baru nomor #2021072523', 'order', 23, '2021-07-25 14:20:20', 1);
INSERT INTO `notification` VALUES (133, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Lim Fui Liong, tanggal registrasi: 25-07-2021, nama toko: Cygnus Gadget store ( Toko Pedia)', 'reg_sale_offline', 39, '2021-07-25 21:30:47', 0);
INSERT INTO `notification` VALUES (134, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Lim Fui Liong, tanggal registrasi: 25-07-2021, nama toko: Cygnus Gadget store ( Toko Pedia)', 'reg_sale_offline', 39, '2021-07-25 21:30:47', 0);
INSERT INTO `notification` VALUES (135, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Ud Beauty, tanggal registrasi: 29-07-2021, nama toko: Ud Beaute', 'reg_sale_offline', 40, '2021-07-29 14:48:55', 0);
INSERT INTO `notification` VALUES (136, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Ud Beauty, tanggal registrasi: 29-07-2021, nama toko: Ud Beaute', 'reg_sale_offline', 40, '2021-07-29 14:48:55', 0);
INSERT INTO `notification` VALUES (137, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Ud Beauty, tanggal registrasi: 29-07-2021, nama toko: Ud Beaute', 'reg_sale_offline', 41, '2021-07-29 14:50:26', 0);
INSERT INTO `notification` VALUES (138, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Ud Beauty, tanggal registrasi: 29-07-2021, nama toko: Ud Beaute', 'reg_sale_offline', 41, '2021-07-29 14:50:26', 0);
INSERT INTO `notification` VALUES (139, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Ud Beauty, tanggal registrasi: 29-07-2021, nama toko: Ud Beaute', 'reg_sale_offline', 42, '2021-07-29 14:51:45', 0);
INSERT INTO `notification` VALUES (140, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Ud Beauty, tanggal registrasi: 29-07-2021, nama toko: Ud Beaute', 'reg_sale_offline', 42, '2021-07-29 14:51:45', 0);
INSERT INTO `notification` VALUES (141, 0, -2, 'Pemesanan #2021073024', 'Ada pesanan baru nomor #2021073024', 'order', 24, '2021-07-30 09:02:27', 1);
INSERT INTO `notification` VALUES (142, 0, -1, 'Pemesanan #2021073024', 'Ada pesanan baru nomor #2021073024', 'order', 24, '2021-07-30 09:02:27', 1);
INSERT INTO `notification` VALUES (143, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Ud Beauty, tanggal registrasi: 02-08-2021, nama toko: Ud Beaute', 'reg_sale_offline', 43, '2021-08-02 10:14:34', 0);
INSERT INTO `notification` VALUES (144, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Ud Beauty, tanggal registrasi: 02-08-2021, nama toko: Ud Beaute', 'reg_sale_offline', 43, '2021-08-02 10:14:34', 0);
INSERT INTO `notification` VALUES (145, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Ud Beauty, tanggal registrasi: 02-08-2021, nama toko: Ud Beaute', 'reg_sale_offline', 44, '2021-08-02 10:16:33', 0);
INSERT INTO `notification` VALUES (146, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Ud Beauty, tanggal registrasi: 02-08-2021, nama toko: Ud Beaute', 'reg_sale_offline', 44, '2021-08-02 10:16:33', 0);
INSERT INTO `notification` VALUES (147, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Ud Beauty, tanggal registrasi: 02-08-2021, nama toko: Ud Beaute', 'reg_sale_offline', 45, '2021-08-02 10:23:01', 0);
INSERT INTO `notification` VALUES (148, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Ud Beauty, tanggal registrasi: 02-08-2021, nama toko: Ud Beaute', 'reg_sale_offline', 45, '2021-08-02 10:23:01', 0);
INSERT INTO `notification` VALUES (149, 0, -2, 'Pemesanan #2021080325', 'Ada pesanan baru nomor #2021080325', 'order', 25, '2021-08-03 14:32:41', 1);
INSERT INTO `notification` VALUES (150, 0, -1, 'Pemesanan #2021080325', 'Ada pesanan baru nomor #2021080325', 'order', 25, '2021-08-03 14:32:41', 1);
INSERT INTO `notification` VALUES (161, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Ud Beauty, tanggal registrasi: 06-08-2021, nama toko: Ud Beaute', 'reg_sale_offline', 46, '2021-08-06 11:53:29', 0);
INSERT INTO `notification` VALUES (162, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Ud Beauty, tanggal registrasi: 06-08-2021, nama toko: Ud Beaute', 'reg_sale_offline', 46, '2021-08-06 11:53:29', 0);
INSERT INTO `notification` VALUES (163, 0, -2, 'Pemesanan #2021080826', 'Ada pesanan baru nomor #2021080826', 'order', 26, '2021-08-08 15:32:10', 1);
INSERT INTO `notification` VALUES (164, 0, -1, 'Pemesanan #2021080826', 'Ada pesanan baru nomor #2021080826', 'order', 26, '2021-08-08 15:32:10', 0);
INSERT INTO `notification` VALUES (165, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Ade Kurniawan Pratama, tanggal registrasi: 08-08-2021, nama toko: Barbermaxxs', 'reg_sale_offline', 47, '2021-08-08 17:55:41', 0);
INSERT INTO `notification` VALUES (166, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Ade Kurniawan Pratama, tanggal registrasi: 08-08-2021, nama toko: Barbermaxxs', 'reg_sale_offline', 47, '2021-08-08 17:55:41', 0);
INSERT INTO `notification` VALUES (167, 0, -2, 'Pemesanan #2021080927', 'Ada pesanan baru nomor #2021080927', 'order', 27, '2021-08-09 03:12:03', 1);
INSERT INTO `notification` VALUES (168, 0, -1, 'Pemesanan #2021080927', 'Ada pesanan baru nomor #2021080927', 'order', 27, '2021-08-09 03:12:03', 1);
INSERT INTO `notification` VALUES (169, 0, -2, 'Pemesanan #2021080928', 'Ada pesanan baru nomor #2021080928', 'order', 28, '2021-08-09 13:36:26', 1);
INSERT INTO `notification` VALUES (170, 0, -1, 'Pemesanan #2021080928', 'Ada pesanan baru nomor #2021080928', 'order', 28, '2021-08-09 13:36:26', 0);
INSERT INTO `notification` VALUES (171, 0, -2, 'Pemesanan #2021081029', 'Ada pesanan baru nomor #2021081029', 'order', 29, '2021-08-10 14:03:54', 1);
INSERT INTO `notification` VALUES (172, 0, -1, 'Pemesanan #2021081029', 'Ada pesanan baru nomor #2021081029', 'order', 29, '2021-08-10 14:03:54', 0);
INSERT INTO `notification` VALUES (173, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Stevens Harlan T, tanggal registrasi: 10-08-2021, nama toko: Stevens Harlan T', 'reg_sale_offline', 48, '2021-08-10 14:16:28', 0);
INSERT INTO `notification` VALUES (174, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Stevens Harlan T, tanggal registrasi: 10-08-2021, nama toko: Stevens Harlan T', 'reg_sale_offline', 48, '2021-08-10 14:16:28', 0);
INSERT INTO `notification` VALUES (175, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Ud Beauty, tanggal registrasi: 10-08-2021, nama toko: Ud Beaute', 'reg_sale_offline', 49, '2021-08-10 14:24:24', 1);
INSERT INTO `notification` VALUES (176, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Ud Beauty, tanggal registrasi: 10-08-2021, nama toko: Ud Beaute', 'reg_sale_offline', 49, '2021-08-10 14:24:24', 0);
INSERT INTO `notification` VALUES (177, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Ud Beauty, tanggal registrasi: 10-08-2021, nama toko: Ud Beaute', 'reg_sale_offline', 50, '2021-08-10 14:29:20', 0);
INSERT INTO `notification` VALUES (178, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Ud Beauty, tanggal registrasi: 10-08-2021, nama toko: Ud Beaute', 'reg_sale_offline', 50, '2021-08-10 14:29:20', 0);
INSERT INTO `notification` VALUES (179, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Ud Beauty, tanggal registrasi: 10-08-2021, nama toko: Ud Beaute', 'reg_sale_offline', 51, '2021-08-10 14:33:13', 0);
INSERT INTO `notification` VALUES (180, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Ud Beauty, tanggal registrasi: 10-08-2021, nama toko: Ud Beaute', 'reg_sale_offline', 51, '2021-08-10 14:33:13', 0);
INSERT INTO `notification` VALUES (181, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Ud Beauty, tanggal registrasi: 10-08-2021, nama toko: Ud Beaute', 'reg_sale_offline', 52, '2021-08-10 14:34:58', 0);
INSERT INTO `notification` VALUES (182, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Ud Beauty, tanggal registrasi: 10-08-2021, nama toko: Ud Beaute', 'reg_sale_offline', 52, '2021-08-10 14:34:58', 0);
INSERT INTO `notification` VALUES (183, 0, -2, 'Pemesanan #2021081130', 'Ada pesanan baru nomor #2021081130', 'order', 30, '2021-08-11 12:08:25', 1);
INSERT INTO `notification` VALUES (184, 0, -1, 'Pemesanan #2021081130', 'Ada pesanan baru nomor #2021081130', 'order', 30, '2021-08-11 12:08:25', 0);
INSERT INTO `notification` VALUES (185, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Ahmed, tanggal registrasi: 11-08-2021, nama toko: Toko Bahagia Harco Plaza Pasar Baru', 'reg_sale_offline', 53, '2021-08-11 22:01:14', 1);
INSERT INTO `notification` VALUES (186, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Ahmed, tanggal registrasi: 11-08-2021, nama toko: Toko Bahagia Harco Plaza Pasar Baru', 'reg_sale_offline', 53, '2021-08-11 22:01:14', 0);
INSERT INTO `notification` VALUES (187, 0, -2, 'Pemesanan #2021081231', 'Ada pesanan baru nomor #2021081231', 'order', 31, '2021-08-12 06:33:33', 0);
INSERT INTO `notification` VALUES (188, 0, -1, 'Pemesanan #2021081231', 'Ada pesanan baru nomor #2021081231', 'order', 31, '2021-08-12 06:33:33', 0);
INSERT INTO `notification` VALUES (189, 0, -2, 'Pemesanan #2021081232', 'Ada pesanan baru nomor #2021081232', 'order', 32, '2021-08-12 06:57:48', 1);
INSERT INTO `notification` VALUES (190, 0, -1, 'Pemesanan #2021081232', 'Ada pesanan baru nomor #2021081232', 'order', 32, '2021-08-12 06:57:48', 0);
INSERT INTO `notification` VALUES (191, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Judy Sinurat, tanggal registrasi: 13-08-2021, nama toko: BarberSupply_indo', 'reg_sale_offline', 54, '2021-08-13 18:23:27', 0);
INSERT INTO `notification` VALUES (192, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Judy Sinurat, tanggal registrasi: 13-08-2021, nama toko: BarberSupply_indo', 'reg_sale_offline', 54, '2021-08-13 18:23:27', 0);
INSERT INTO `notification` VALUES (193, 0, -2, 'Pemesanan #2021081433', 'Ada pesanan baru nomor #2021081433', 'order', 33, '2021-08-14 11:17:10', 1);
INSERT INTO `notification` VALUES (194, 0, -1, 'Pemesanan #2021081433', 'Ada pesanan baru nomor #2021081433', 'order', 33, '2021-08-14 11:17:10', 0);
INSERT INTO `notification` VALUES (195, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Hamid Tan, tanggal registrasi: 14-08-2021, nama toko: Cleo hub', 'reg_sale_offline', 55, '2021-08-14 17:38:10', 0);
INSERT INTO `notification` VALUES (196, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Hamid Tan, tanggal registrasi: 14-08-2021, nama toko: Cleo hub', 'reg_sale_offline', 55, '2021-08-14 17:38:10', 0);
INSERT INTO `notification` VALUES (197, 0, -2, 'Pemesanan #2021081634', 'Ada pesanan baru nomor #2021081634', 'order', 34, '2021-08-16 10:49:41', 1);
INSERT INTO `notification` VALUES (198, 0, -1, 'Pemesanan #2021081634', 'Ada pesanan baru nomor #2021081634', 'order', 34, '2021-08-16 10:49:41', 0);
INSERT INTO `notification` VALUES (199, 0, -2, 'Pemesanan #2021081635', 'Ada pesanan baru nomor #2021081635', 'order', 35, '2021-08-16 11:12:33', 1);
INSERT INTO `notification` VALUES (200, 0, -1, 'Pemesanan #2021081635', 'Ada pesanan baru nomor #2021081635', 'order', 35, '2021-08-16 11:12:33', 0);
INSERT INTO `notification` VALUES (201, 0, -2, 'Pemesanan #2021081636', 'Ada pesanan baru nomor #2021081636', 'order', 36, '2021-08-16 11:58:00', 1);
INSERT INTO `notification` VALUES (202, 0, -1, 'Pemesanan #2021081636', 'Ada pesanan baru nomor #2021081636', 'order', 36, '2021-08-16 11:58:00', 0);
INSERT INTO `notification` VALUES (203, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Suryono, tanggal registrasi: 16-08-2021, nama toko: Cygnus Gadget Store', 'reg_sale_offline', 56, '2021-08-16 22:08:38', 0);
INSERT INTO `notification` VALUES (204, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Suryono, tanggal registrasi: 16-08-2021, nama toko: Cygnus Gadget Store', 'reg_sale_offline', 56, '2021-08-16 22:08:38', 0);
INSERT INTO `notification` VALUES (205, 0, -2, 'Pemesanan #2021081737', 'Ada pesanan baru nomor #2021081737', 'order', 37, '2021-08-17 03:36:44', 1);
INSERT INTO `notification` VALUES (206, 0, -1, 'Pemesanan #2021081737', 'Ada pesanan baru nomor #2021081737', 'order', 37, '2021-08-17 03:36:44', 0);
INSERT INTO `notification` VALUES (207, 0, -2, 'Pemesanan #2021081838', 'Ada pesanan baru nomor #2021081838', 'order', 38, '2021-08-18 09:57:16', 1);
INSERT INTO `notification` VALUES (208, 0, -1, 'Pemesanan #2021081838', 'Ada pesanan baru nomor #2021081838', 'order', 38, '2021-08-18 09:57:16', 0);
INSERT INTO `notification` VALUES (209, 0, -2, 'Pemesanan #2021081839', 'Ada pesanan baru nomor #2021081839', 'order', 39, '2021-08-18 18:17:35', 1);
INSERT INTO `notification` VALUES (210, 0, -1, 'Pemesanan #2021081839', 'Ada pesanan baru nomor #2021081839', 'order', 39, '2021-08-18 18:17:35', 1);
INSERT INTO `notification` VALUES (211, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Muhammad Jusrin, tanggal registrasi: 19-08-2021, nama toko: BarberPro_id', 'reg_sale_offline', 57, '2021-08-19 13:27:59', 1);
INSERT INTO `notification` VALUES (212, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Muhammad Jusrin, tanggal registrasi: 19-08-2021, nama toko: BarberPro_id', 'reg_sale_offline', 57, '2021-08-19 13:27:59', 0);
INSERT INTO `notification` VALUES (213, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Wibowo Jumeno Hariyanto, tanggal registrasi: 21-08-2021, nama toko: Cygnus Gadget Stare', 'reg_sale_offline', 58, '2021-08-21 10:15:18', 1);
INSERT INTO `notification` VALUES (214, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Wibowo Jumeno Hariyanto, tanggal registrasi: 21-08-2021, nama toko: Cygnus Gadget Stare', 'reg_sale_offline', 58, '2021-08-21 10:15:18', 0);
INSERT INTO `notification` VALUES (215, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: M Fadjar N, tanggal registrasi: 21-08-2021, nama toko: Dunia rambut', 'reg_sale_offline', 59, '2021-08-21 12:42:39', 1);
INSERT INTO `notification` VALUES (216, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: M Fadjar N, tanggal registrasi: 21-08-2021, nama toko: Dunia rambut', 'reg_sale_offline', 59, '2021-08-21 12:42:39', 0);
INSERT INTO `notification` VALUES (217, 0, -2, 'Pemesanan #2021082440', 'Ada pesanan baru nomor #2021082440', 'order', 40, '2021-08-24 10:55:56', 1);
INSERT INTO `notification` VALUES (218, 0, -1, 'Pemesanan #2021082440', 'Ada pesanan baru nomor #2021082440', 'order', 40, '2021-08-24 10:55:56', 1);
INSERT INTO `notification` VALUES (219, 0, -2, 'Pemesanan #2021082441', 'Ada pesanan baru nomor #2021082441', 'order', 41, '2021-08-24 12:32:07', 1);
INSERT INTO `notification` VALUES (220, 0, -1, 'Pemesanan #2021082441', 'Ada pesanan baru nomor #2021082441', 'order', 41, '2021-08-24 12:32:07', 1);
INSERT INTO `notification` VALUES (221, 0, -2, 'Pemesanan #2021082542', 'Ada pesanan baru nomor #2021082542', 'order', 42, '2021-08-25 14:03:39', 1);
INSERT INTO `notification` VALUES (222, 0, -1, 'Pemesanan #2021082542', 'Ada pesanan baru nomor #2021082542', 'order', 42, '2021-08-25 14:03:39', 1);
INSERT INTO `notification` VALUES (223, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Ud Beauty, tanggal registrasi: 25-08-2021, nama toko: Ud Beaute', 'reg_sale_offline', 60, '2021-08-25 17:16:03', 0);
INSERT INTO `notification` VALUES (224, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Ud Beauty, tanggal registrasi: 25-08-2021, nama toko: Ud Beaute', 'reg_sale_offline', 60, '2021-08-25 17:16:03', 0);
INSERT INTO `notification` VALUES (225, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Ud Beauty, tanggal registrasi: 28-08-2021, nama toko: Ud Beaute', 'reg_sale_offline', 61, '2021-08-28 17:28:42', 0);
INSERT INTO `notification` VALUES (226, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Ud Beauty, tanggal registrasi: 28-08-2021, nama toko: Ud Beaute', 'reg_sale_offline', 61, '2021-08-28 17:28:42', 0);
INSERT INTO `notification` VALUES (227, 0, -2, 'Pemesanan #2021082943', 'Ada pesanan baru nomor #2021082943', 'order', 43, '2021-08-29 10:26:18', 1);
INSERT INTO `notification` VALUES (228, 0, -1, 'Pemesanan #2021082943', 'Ada pesanan baru nomor #2021082943', 'order', 43, '2021-08-29 10:26:18', 1);
INSERT INTO `notification` VALUES (229, 0, -2, 'Pemesanan #2021083044', 'Ada pesanan baru nomor #2021083044', 'order', 44, '2021-08-30 11:25:19', 1);
INSERT INTO `notification` VALUES (230, 0, -1, 'Pemesanan #2021083044', 'Ada pesanan baru nomor #2021083044', 'order', 44, '2021-08-30 11:25:19', 1);
INSERT INTO `notification` VALUES (231, 0, -2, 'Pemesanan #2021083045', 'Ada pesanan baru nomor #2021083045', 'order', 45, '2021-08-30 15:58:04', 1);
INSERT INTO `notification` VALUES (232, 0, -1, 'Pemesanan #2021083045', 'Ada pesanan baru nomor #2021083045', 'order', 45, '2021-08-30 15:58:04', 1);
INSERT INTO `notification` VALUES (233, 0, -2, 'Pemesanan #2021083046', 'Ada pesanan baru nomor #2021083046', 'order', 46, '2021-08-30 18:36:07', 1);
INSERT INTO `notification` VALUES (234, 0, -1, 'Pemesanan #2021083046', 'Ada pesanan baru nomor #2021083046', 'order', 46, '2021-08-30 18:36:07', 1);
INSERT INTO `notification` VALUES (235, 0, -2, 'Pemesanan #2021083147', 'Ada pesanan baru nomor #2021083147', 'order', 47, '2021-08-31 14:18:40', 1);
INSERT INTO `notification` VALUES (236, 0, -1, 'Pemesanan #2021083147', 'Ada pesanan baru nomor #2021083147', 'order', 47, '2021-08-31 14:18:40', 1);
INSERT INTO `notification` VALUES (237, 0, -2, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Muhamad Ilhamy, tanggal registrasi: 01-09-2021, nama toko: Barbersupply Indo', 'reg_sale_offline', 62, '2021-09-01 00:40:10', 0);
INSERT INTO `notification` VALUES (238, 0, -1, 'Registrasi Produk Baru', 'Ada registrasi produk baru oleh customer: Muhamad Ilhamy, tanggal registrasi: 01-09-2021, nama toko: Barbersupply Indo', 'reg_sale_offline', 62, '2021-09-01 00:40:10', 1);
INSERT INTO `notification` VALUES (239, 0, -2, 'Pemesanan #2021090248', 'Ada pesanan baru nomor #2021090248', 'order', 48, '2021-09-02 12:56:40', 1);
INSERT INTO `notification` VALUES (240, 0, -1, 'Pemesanan #2021090248', 'Ada pesanan baru nomor #2021090248', 'order', 48, '2021-09-02 12:56:40', 1);
INSERT INTO `notification` VALUES (241, 0, -2, 'Pemesanan #2021090249', 'Ada pesanan baru nomor #2021090249', 'order', 49, '2021-09-02 13:21:27', 1);
INSERT INTO `notification` VALUES (242, 0, -1, 'Pemesanan #2021090249', 'Ada pesanan baru nomor #2021090249', 'order', 49, '2021-09-02 13:21:27', 1);
INSERT INTO `notification` VALUES (243, 0, -2, 'Pemesanan #2021090250', 'Ada pesanan baru nomor #2021090250', 'order', 50, '2021-09-02 13:32:55', 1);
INSERT INTO `notification` VALUES (244, 0, -1, 'Pemesanan #2021090250', 'Ada pesanan baru nomor #2021090250', 'order', 50, '2021-09-02 13:32:55', 1);
INSERT INTO `notification` VALUES (245, 0, -2, 'Pemesanan #2021090451', 'Ada pesanan baru nomor #2021090451', 'order', 51, '2021-09-04 18:58:28', 1);
INSERT INTO `notification` VALUES (246, 0, -1, 'Pemesanan #2021090451', 'Ada pesanan baru nomor #2021090451', 'order', 51, '2021-09-04 18:58:28', 1);
INSERT INTO `notification` VALUES (247, 0, -2, 'Pemesanan #2021090752', 'Ada pesanan baru nomor #2021090752', 'order', 52, '2021-09-07 20:25:11', 1);
INSERT INTO `notification` VALUES (248, 0, -1, 'Pemesanan #2021090752', 'Ada pesanan baru nomor #2021090752', 'order', 52, '2021-09-07 20:25:11', 1);

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `invoice_prefix` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `invoice_no` int NOT NULL DEFAULT 0,
  `tax_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'NPWP',
  `tax_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `tax_address` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `user_id` int NOT NULL DEFAULT 0,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `user_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `user_telephone` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `user_address` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `user_postcode` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `user_province_id` int NOT NULL DEFAULT 0,
  `user_province` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `user_city_id` int NOT NULL DEFAULT 0,
  `user_city` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `user_subdistrict_id` int NOT NULL DEFAULT 0,
  `user_subdistrict` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `user_agent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `payment_method` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `payment_code` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `shipping_method` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `shipping_code` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `currency_id` int NOT NULL DEFAULT 0,
  `currency_value` decimal(15, 8) NOT NULL DEFAULT 0.00000000,
  `comment` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `total` decimal(15, 2) NOT NULL DEFAULT 0.00,
  `order_status_id` int NOT NULL DEFAULT 0,
  `ip` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES (1, '', 202102261, '', '', '', 0, 'Ipunk', 'Ipunktripleseven@gmail.com', '087750710919', 'Tripleseven barbershop jl raya jetak no 6 pandaan pasuruan jawa timur', '67156', 11, 'Jawa Timur', 342, 'Kabupaten Pasuruan', 4803, 'Pandaan', 'Mozilla/5.0 (Linux; Android 6.0; Redmi Note 4 Build/MRA58K; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/88.0.4324.181 Mobile Safari/537.36 Instagram 176.0.0.38.116 Android (23/6.0; 480dpi; 1080x1920; Xiaomi; Redmi Note 4; nikel; mt6797; ', 'Indomaret', 'midtrans.indomaret', 'Jalur Nugraha Ekakurir (JNE) - OKE', 'rajaongkir.jne_oke', 8, 1.00000000, '', 1114000.00, 11, '110.137.101.138', '2021-02-26 11:54:05', '2021-02-26 16:22:33');
INSERT INTO `order` VALUES (2, '', 202103102, '', '', NULL, 17, 'Zainstar', 'dev241n@gmail.com', '085707509222', 'surabaya', '60281', 11, 'Jawa Timur', 444, 'Kota Surabaya', 6154, 'Sukomanunggal', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36', 'BCA KlikPay', 'midtrans.bca_klikpay', 'Jalur Nugraha Ekakurir (JNE) - OKE', 'rajaongkir.jne_oke', 8, 1.00000000, '', 2119000.00, 11, '36.82.139.94', '2021-03-10 11:30:02', '2021-03-10 11:30:52');
INSERT INTO `order` VALUES (3, '', 202103103, '', '', '', 0, 'Miftahul Ulum', 'demo@mail.com', '3566', 'fdfdf', '', 5, 'DI Yogyakarta', 135, 'Kabupaten Gunung Kidul', 1865, 'Gedang Sari', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'Transfer Bank BCA', 'midtrans.bca_va', 'Citra Van Titipan Kilat (TIKI) - ECO', 'rajaongkir.tiki_eco', 8, 1.00000000, '', 1274000.00, 11, '36.82.139.94', '2021-03-10 11:45:44', '2021-03-10 11:45:44');
INSERT INTO `order` VALUES (4, '', 202104144, '', '', '', 0, 'michael tando', 'michaeltando@gmail.com', '08119000678', 'jl cipete v no 20B, cipete selatan, cilandak, jakarta selatan', '12410', 6, 'DKI Jakarta', 155, 'Kota Jakarta Utara', 2127, 'Penjaringan', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/87.0.4280.163 Mobile/15E148 Safari/604.1', 'Transfer Bank Permata', 'midtrans.permata_va', 'J&T Express - EZ', 'rajaongkir.J&T_ez', 8, 1.00000000, '', 804000.00, 14, '158.140.187.225', '2021-04-14 23:58:07', '2021-04-19 09:50:10');
INSERT INTO `order` VALUES (5, '', 202105125, '', '', NULL, 35, 'Irwan Kurniawan', 'irwankurniawan210@gmail.com', '081377802143', 'JLN H M RYACUDU LORONG SADAR NO 61 RT 030 RW 005 KELURAHAN 8 ULU KECAMATAN SEBERANG ULU 1', '30252', 33, 'Sumatera Selatan', 327, 'Kota Palembang', 4621, 'Seberang Ulu I', 'Mozilla/5.0 (Android 10; Mobile; rv:88.0) Gecko/88.0 Firefox/88.0', 'Transfer Bank BNI', 'midtrans.bni_va', 'Jalur Nugraha Ekakurir (JNE) - OKE', 'rajaongkir.jne_oke', 8, 1.00000000, '', 814000.00, 11, '114.125.235.243', '2021-05-12 17:06:16', '2021-05-13 17:10:00');
INSERT INTO `order` VALUES (6, '', 202105176, '', '', NULL, 36, 'Nico Hansen', 'nhpardede@gmail.com', '081905040120', 'Jl Kaparinyo P24', '14240', 6, 'DKI Jakarta', 155, 'Kota Jakarta Utara', 2124, 'Kelapa Gading', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 'Gopay', 'midtrans.gopay', 'Citra Van Titipan Kilat (TIKI) - ONS', 'rajaongkir.tiki_ons', 8, 1.00000000, '', 1650360.00, 11, '103.3.222.119', '2021-05-17 01:14:19', '2021-05-18 01:15:01');
INSERT INTO `order` VALUES (7, '', 202105197, '', '', '', 0, 'Nadya Apriliany', 'nadyaapriliany@yahoo.com', '081293543895', 'Jl Kuta 6 no 3 Graha Cinere', '16515', 9, 'Jawa Barat', 115, 'Kota Depok', 1581, 'Cinere', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 'Mandiri ClickPay', 'midtrans.mandiri_clickpay', 'Jalur Nugraha Ekakurir (JNE) - OKE', 'rajaongkir.jne_oke', 8, 1.00000000, '', 2113000.00, 11, '110.137.206.17', '2021-05-19 13:33:42', '2021-05-20 13:35:03');
INSERT INTO `order` VALUES (8, '', 202105278, '', '', NULL, 43, 'Abraham David Hansaputra', 'Abrahamdvd12@gmail.com', '+19709480158', 'Jl.Kerinci no 54 Kadipiro Banjarsari', '57136', 10, 'Jawa Tengah', 445, 'Kota Surakarta (Solo)', 6162, 'Banjarsari', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_4_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Instagram 189.0.0.28.119 (iPhone12,5; iOS 14_4_2; en_US; en-US; scale=3.00; 1242x2688; 293153398)', 'Transfer Bank BNI', 'midtrans.bni_va', 'Jalur Nugraha Ekakurir (JNE) - OKE', 'rajaongkir.jne_oke', 8, 1.00000000, '', 2376000.00, 14, '67.190.134.67', '2021-05-27 12:46:57', '2021-05-31 09:44:32');
INSERT INTO `order` VALUES (9, '', 202106059, '', '', NULL, 3, 'User Test', 'info@mpmwahl.id', '08646435344', 'Jakarta', '10450', 6, 'DKI Jakarta', 151, 'Kota Jakarta Barat', 2087, 'Cengkareng', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36', 'Gopay', 'midtrans.gopay', 'Jalur Nugraha Ekakurir (JNE) - CTC', 'rajaongkir.jne_ctc', 8, 1.00000000, 'Test Pesanan (test dilakukan untuk cek   setelah pergantian domain)', 288000.00, 11, '139.192.222.21', '2021-06-05 16:31:11', '2021-06-05 16:31:11');
INSERT INTO `order` VALUES (10, '', 2021061110, '', '', '', 0, 'Indra Hermawan', 'imdrahermawan.net1@gmail.com', '0887436156202', 'Jalan Kasturi II Gang Sukun Rt 28/06 Kel. Syamsudin Noor', '70724', 13, 'Kalimantan Selatan', 35, 'Kota Banjarbaru', 502, 'Landasan Ulin', 'Mozilla/5.0 (Linux; Android 11; CPH1911 Build/RP1A.200720.011; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/87.0.4280.141 Mobile Safari/537.36 Instagram 190.0.0.36.119 Android (30/11; 480dpi; 1080x2132; OPPO; CPH1911; OP4883; mt6771; in_I', 'Transfer Bank BNI', 'midtrans.bni_va', 'Jalur Nugraha Ekakurir (JNE) - OKE', 'rajaongkir.jne_oke', 8, 1.00000000, '', 2084000.00, 11, '114.5.241.57', '2021-06-11 15:37:06', '2021-06-12 15:39:32');
INSERT INTO `order` VALUES (11, '', 2021061511, '', '', 'Jl Waru 1 no 8, Cengkareng Indah, Jakarta Barat 11720', 0, 'Chriselda Chandra Darundio', 'chriseldaica@yahoo.com', '082111457788', 'Jl Waru 1 no 8, Cengkareng Indah, Jakarta Barat 11720', '11720', 6, 'DKI Jakarta', 151, 'Kota Jakarta Barat', 2087, 'Cengkareng', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Safari/537.36', 'Transfer Bank BNI', 'midtrans.bni_va', 'Jalur Nugraha Ekakurir (JNE) - CTC', 'rajaongkir.jne_ctc', 8, 1.00000000, '', 1303000.00, 11, '180.243.13.253', '2021-06-15 14:42:14', '2021-06-16 14:45:02');
INSERT INTO `order` VALUES (12, '', 2021062312, '', '', '', 0, 'Rosmina Susana', 'bellebella88@ymail.com', '081519323312', 'Apartemen slipi tower 2/10F jl. Letjend s parman\r\nKav 22-24, palmerah', '11480', 6, 'DKI Jakarta', 151, 'Kota Jakarta Barat', 2092, 'Palmerah', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-N970F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/14.0 Chrome/87.0.4280.141 Mobile Safari/537.36', 'Transfer Bank BNI', 'midtrans.bni_va', 'Citra Van Titipan Kilat (TIKI) - REG', 'rajaongkir.tiki_reg', 8, 1.00000000, '', 1302000.00, 11, '123.253.235.122', '2021-06-23 13:22:02', '2021-06-24 13:22:48');
INSERT INTO `order` VALUES (13, '', 2021062513, '', '', NULL, 62, 'Kartika', 'Kartika_993@yahoo.com', '081809010202', 'Apartemen Puri Garden', '11610', 6, 'DKI Jakarta', 151, 'Kota Jakarta Barat', 2091, 'Kembangan', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Instagram 192.0.0.37.119 (iPhone12,5; iOS 14_6; en_ID; en-GB; scale=3.00; 1242x2688; 298025452)', 'Transfer Bank Permata', 'midtrans.permata_va', 'Jalur Nugraha Ekakurir (JNE) - CTC', 'rajaongkir.jne_ctc', 8, 1.00000000, 'Unit 1516 \r\nTitip di Lobby', 1112000.00, 11, '140.213.5.207', '2021-06-25 14:28:20', '2021-06-26 14:29:34');
INSERT INTO `order` VALUES (14, '', 2021062514, '', '', NULL, 62, 'Kartika', 'Kartika_993@yahoo.com', '081809010202', 'Apartemen Puri Garden', '11610', 6, 'DKI Jakarta', 151, 'Kota Jakarta Barat', 2091, 'Kembangan', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Instagram 192.0.0.37.119 (iPhone12,5; iOS 14_6; en_ID; en-GB; scale=3.00; 1242x2688; 298025452)', 'Mandiri ClickPay', 'midtrans.mandiri_clickpay', 'Jalur Nugraha Ekakurir (JNE) - CTC', 'rajaongkir.jne_ctc', 8, 1.00000000, 'Unit 1516 \r\nTitip di Lobby', 1113000.00, 11, '140.213.5.207', '2021-06-25 14:54:29', '2021-06-26 14:55:01');
INSERT INTO `order` VALUES (15, '', 2021062515, '', '', '', 0, 'RENDY Wijaya', 'ndyarts@yahoo.com', '08116238663', 'Komplek multatuli blok f 18 (NDY SALON)', '20151', 34, 'Sumatera Utara', 278, 'Kota Medan', 3917, 'Medan Maimun', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Instagram 193.0.0.29.121 (iPhone13,4; iOS 14_6; en_ID; en-ID; scale=3.00; 1284x2778; 299401192)', 'Transfer Bank BNI', 'midtrans.bni_va', 'J&T Express - ECO', 'rajaongkir.J&T_eco', 8, 1.00000000, '', 2048000.00, 14, '45.126.185.208', '2021-06-25 14:58:32', '2021-07-05 14:10:02');
INSERT INTO `order` VALUES (16, '', 2021062916, '', '', NULL, 63, 'Retno Wulandari', 'retno85wulandari@gmail.com', '085693499060', 'Bank BRI KCP Tebet Jl Tebet Barat Dalam Raya no 42 tebet', '12810', 6, 'DKI Jakarta', 153, 'Kota Jakarta Selatan', 2112, 'Tebet', 'Mozilla/5.0 (Linux; Android 11; SM-N975F Build/RP1A.200720.012; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/91.0.4472.120 Mobile Safari/537.36 Instagram 193.0.0.45.120 Android (30/11; 420dpi; 1080x2069; samsung; SM-N975F; d2s; exynos9825', 'Gopay', 'midtrans.gopay', 'Jalur Nugraha Ekakurir (JNE) - CTC', 'rajaongkir.jne_ctc', 8, 1.00000000, '', 814980.00, 14, '110.137.193.139', '2021-06-29 15:59:04', '2021-07-05 14:19:56');
INSERT INTO `order` VALUES (17, '', 2021070217, '', '', '', 0, 'Siti Ulparia Lubis', 'sitiulparia@gmail.com', '081264152316', 'IT.DEL, Desa Sitoluama, Kec.LAguboti, Kab.Toba, Prov.Sumatera Utara', '22381', 34, 'Sumatera Utara', 481, 'Kabupaten Toba Samosir', 6657, 'Laguboti', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'Transfer Bank BNI', 'midtrans.bni_va', 'Jalur Nugraha Ekakurir (JNE) - OKE', 'rajaongkir.jne_oke', 8, 1.00000000, '', 1700000.00, 11, '36.71.141.191', '2021-07-02 13:48:37', '2021-07-03 13:50:53');
INSERT INTO `order` VALUES (18, '', 2021070218, '', '', NULL, 65, 'Siti Ulparia Lubis', 'sitiulparia@gmail.com', '081264152316', 'IT.DEL, Desa Sitoluama, Kec.Laguboti, Kab.Toba', '22381', 34, 'Sumatera Utara', 481, 'Kabupaten Toba Samosir', 6657, 'Laguboti', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'Transfer Bank BNI', 'midtrans.bni_va', 'Jalur Nugraha Ekakurir (JNE) - OKE', 'rajaongkir.jne_oke', 8, 1.00000000, '', 1700000.00, 14, '36.71.141.191', '2021-07-02 14:15:43', '2021-07-27 10:13:45');
INSERT INTO `order` VALUES (19, '', 2021070219, '', '', NULL, 66, 'Herru Semono', 'hsemono@gmail.com', '+6281317710773', 'Bandhar Agung Village 1 Blok A No. 3, Jalan Raya Legok RT05/RW03 Jatiluhur, Jatiasih, Bekasi', '17025', 9, 'Jawa Barat', 55, 'Kota Bekasi', 755, 'Jatiasih', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.1 Safari/605.1.15', 'Transfer Bank BNI', 'midtrans.bni_va', 'Jalur Nugraha Ekakurir (JNE) - YES', 'rajaongkir.jne_yes', 8, 1.00000000, '', 812000.00, 14, '125.160.238.52', '2021-07-02 15:26:18', '2021-07-05 14:05:00');
INSERT INTO `order` VALUES (20, '', 2021070520, '', '', '', 0, 'frans tenggara', 'franstenggara@gmail.com', '087870323288', 'perumahan citra indah city\r\nklaster bukit menteng, blok a2/26', '16830', 9, 'Jawa Barat', 78, 'Kabupaten Bogor', 1042, 'Jonggol', 'Mozilla/5.0 (Linux; Android 11; SM-A125F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.120 Mobile Safari/537.36', 'Gopay', 'midtrans.gopay', 'Jalur Nugraha Ekakurir (JNE) - OKE', 'rajaongkir.jne_oke', 8, 1.00000000, '', 813960.00, 11, '114.5.212.103', '2021-07-05 09:17:33', '2021-07-06 09:20:03');
INSERT INTO `order` VALUES (21, '', 2021070521, '', '', '', 0, 'Chriselda Chandra Darundio', 'chriseldaica@yahoo.com', '082111457788', 'Jl Waru 1 no 8, Cengkareng Indah, Jakarta Barat 11720', '11720', 6, 'DKI Jakarta', 151, 'Kota Jakarta Barat', 2087, 'Cengkareng', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'Gopay', 'midtrans.gopay', 'Jalur Nugraha Ekakurir (JNE) - CTC', 'rajaongkir.jne_ctc', 8, 1.00000000, '', 279480.00, 11, '110.138.0.169', '2021-07-05 12:17:35', '2021-07-05 12:33:09');
INSERT INTO `order` VALUES (22, '', 2021070522, '', '', '', 0, 'frans tenggara', 'franstenggara@gmail.com', '087870323288', 'citra indah city\r\nklaster bukit menteng,\r\nblok a2/26', '16830', 9, 'Jawa Barat', 78, 'Kabupaten Bogor', 1042, 'Jonggol', 'Mozilla/5.0 (Linux; Android 11; SM-A125F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.120 Mobile Safari/537.36', 'Transfer Bank BNI', 'midtrans.bni_va', 'Jalur Nugraha Ekakurir (JNE) - OKE', 'rajaongkir.jne_oke', 8, 1.00000000, '', 802000.00, 11, '114.5.212.103', '2021-07-05 12:18:10', '2021-07-06 12:19:44');
INSERT INTO `order` VALUES (23, '', 2021072523, '', '', NULL, 85, 'Rosmina Susana', 'bellebella88@ymail.com', '+6281519323312', 'Jl. Letjen S.Parman Kav 22-24 Apartemen Slipi Tower 2 Lt 10 Unit F', '11480', 6, 'DKI Jakarta', 151, 'Kota Jakarta Barat', 2092, 'Palmerah', 'Mozilla/5.0 (Linux; Android 11; SM-N970F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.105 Mobile Safari/537.36', 'Gopay', 'midtrans.gopay', 'Citra Van Titipan Kilat (TIKI) - REG', 'rajaongkir.tiki_reg', 8, 1.00000000, '', 2362320.00, 14, '123.253.235.122', '2021-07-25 14:20:20', '2021-07-27 16:42:42');
INSERT INTO `order` VALUES (24, '', 2021073024, '', '', NULL, 88, 'Adit Saeful Fajri', 'aditsaeful27@gmail.com', '082115438956', 'Jln terusan kopo RT04 RW02 Desa Margahayu Selatan Kecamatan Margahayu Kab. Bandung gang bapak USI', '40229', 9, 'Jawa Barat', 22, 'Kabupaten Bandung', 327, 'Margahayu', 'Mozilla/5.0 (Linux; Android 6.0.1; CPH1701 Build/MMB29M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/55.0.2883.91 Mobile Safari/537.36 Instagram 198.0.0.32.120 Android (23/6.0.1; 320dpi; 720x1280; OPPO; CPH1701; CPH1701; qcom; in_ID; 307', 'Transfer Bank BNI', 'midtrans.bni_va', 'SiCepat Express - BEST', 'rajaongkir.sicepat_best', 8, 1.00000000, 'Samping bengkel setiawan motor dan service per mobil setiawan 082115438956', 810000.00, 11, '114.122.103.204', '2021-07-30 09:02:27', '2021-07-31 09:04:13');
INSERT INTO `order` VALUES (25, '', 2021080325, '', '', NULL, 91, 'Mayang Sundari', 'Mayangsundari2@gmail.com', '083145067539', 'Kauripan,  rt /09, Rw/02, Desa. Winongsari.', '56364', 10, 'Jawa Tengah', 498, 'Kabupaten Wonosobo', 6913, 'Kaliwiro', 'Mozilla/5.0 (Linux; Android 4.4.4; E2115 Build/24.0.B.5.14) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.109 Mobile Safari/537.36', 'Transfer Bank BNI', 'midtrans.bni_va', 'Jalur Nugraha Ekakurir (JNE) - OKE', 'rajaongkir.jne_oke', 8, 1.00000000, '', 819000.00, 11, '140.213.164.33', '2021-08-03 14:32:41', '2021-08-04 14:34:37');
INSERT INTO `order` VALUES (26, '', 2021080826, '', '', NULL, 93, 'Doni Astra Rizki', 'budakmelayu09830@gmail.com', '082161451107', 'Jl. Karya Labersa Perumahan Griya Mahoni Asri No. 5', '28284', 26, 'Riau', 350, 'Kota Pekanbaru', 4914, 'Bukit Raya', 'Mozilla/5.0 (Linux; Android 11; vivo 1915 Build/RP1A.200720.012; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/92.0.4515.115 Mobile Safari/537.36 Instagram 198.0.0.32.120 Android (30/11; 480dpi; 1080x2130; vivo; vivo 1915; 1915; mt6768; in', 'Transfer Bank BNI', 'midtrans.bni_va', 'J&T Express - ECO', 'rajaongkir.J&T_eco', 8, 1.00000000, '', 819500.00, 14, '114.5.144.175', '2021-08-08 15:32:10', '2021-08-12 15:14:53');
INSERT INTO `order` VALUES (27, '', 2021080927, '', '', '', 0, 'Henni', 'hennie.marlini@gmail.com', '081806981289', 'Bali Ubud Villas View\r\nJl. Cocoa II No. 68A Raya Bunutan, Kedewatan - Ubud, Bali', '80571', 1, 'Bali', 128, 'Kabupaten Gianyar', 1770, 'Ubud', 'Mozilla/5.0 (Linux; Android 10; SM-G970F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Mobile Safari/537.36', 'Transfer Bank BCA', 'midtrans.bca_va', 'Jalur Nugraha Ekakurir (JNE) - OKE', 'rajaongkir.jne_oke', 8, 1.00000000, '', 825000.00, 13, '182.253.132.239', '2021-08-09 03:12:03', '2021-08-09 16:42:40');
INSERT INTO `order` VALUES (28, '', 2021080928, '', '', '', 0, 'Stevens', 'stevens.harlan@gmail.com', '081290685750', 'Jl. Pluit Selatan IV no 15', '14450', 6, 'DKI Jakarta', 155, 'Kota Jakarta Utara', 2127, 'Penjaringan', 'Mozilla/5.0 (Linux; Android 11; SM-A507FN) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Mobile Safari/537.36', 'Transfer Bank BCA', 'midtrans.bca_va', 'Jalur Nugraha Ekakurir (JNE) - CTC', 'rajaongkir.jne_ctc', 8, 1.00000000, 'Harap dicek barangnya dalam keadaan baik dan harap pak dengan aman. Harap kurir untuk mengetuk pintu karna bel sedang tdk berfungsi. ', 803000.00, 14, '139.192.138.219', '2021-08-09 13:36:26', '2021-08-12 10:34:49');
INSERT INTO `order` VALUES (29, '', 2021081029, '75.222.769.4-321.000', 'Udung Permana', 'Taman sari satu', 0, 'Udung Permana ( Raisa Salon )', 'udungraisa@gmail.com', '081319768883', 'Jl.mangga besar IV.H, no 30A RT 001 RW 003', '11150', 6, 'DKI Jakarta', 151, 'Kota Jakarta Barat', 2093, 'Taman Sari', 'Mozilla/5.0 (Linux; Android 11; SM-A715F Build/RP1A.200720.012; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/92.0.4515.131 Mobile Safari/537.36 Instagram 200.0.0.29.121 Android (30/11; 420dpi; 1080x2183; samsung; SM-A715F; a71; qcom; in_I', 'Transfer Bank BCA', 'midtrans.bca_va', 'Jalur Nugraha Ekakurir (JNE) - CTC', 'rajaongkir.jne_ctc', 8, 1.00000000, '', 897000.00, 14, '182.0.165.206', '2021-08-10 14:03:54', '2021-08-12 10:33:38');
INSERT INTO `order` VALUES (30, '', 2021081130, '', '', NULL, 98, 'Aldi Putra', 'aldiputra290720@gmail.com', '082285847788', 'Jorong balai sebuah(diatas kantor wali nagari dekat kolam)', '27265', 32, 'Sumatera Barat', 453, 'Kabupaten Tanah Datar', 6243, 'Batipuh', 'Mozilla/5.0 (Linux; Android 10; M2004J19C Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/83.0.4103.101 Mobile Safari/537.36 Instagram 194.0.0.36.172 Android (29/10; 440dpi; 1080x2134; Xiaomi/Redmi; M2004J19C; lancelot', 'Transfer Bank BRI', 'midtrans.bri_va', 'Jalur Nugraha Ekakurir (JNE) - OKE', 'rajaongkir.jne_oke', 8, 1.00000000, 'Balai sebuah (dekat kantor wali nagari dekat kolam) ', 739000.00, 11, '114.5.146.254', '2021-08-11 12:08:25', '2021-08-12 12:10:02');
INSERT INTO `order` VALUES (31, '', 2021081231, '', '', NULL, 100, 'Pipit Sufendi', 'Nindi12nindii@gmail.com', '085728840041', 'Derman rt01/03 karangmojo tasikmadu karanganyar', '57722', 10, 'Jawa Tengah', 169, 'Kabupaten Karanganyar', 2368, 'Tasikmadu', 'Mozilla/5.0 (Linux; Android 5.1.1; SM-J200G) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.105 Mobile Safari/537.36', 'Transfer Bank BRI', 'midtrans.bri_va', 'Jalur Nugraha Ekakurir (JNE) - OKE', 'rajaongkir.jne_oke', 8, 1.00000000, '', 292000.00, 11, '120.188.74.109', '2021-08-12 06:33:33', '2021-08-13 06:35:02');
INSERT INTO `order` VALUES (32, '', 2021081232, '', '', NULL, 100, 'Pipit Sufendi', 'Nindi12nindii@gmail.com', '085728840041', 'Derman rt01/03 karangmojo tasikmadu karanganyar', '57722', 10, 'Jawa Tengah', 169, 'Kabupaten Karanganyar', 2368, 'Tasikmadu', 'Mozilla/5.0 (Linux; Android 5.1.1; SM-J200G) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.105 Mobile Safari/537.36', 'Transfer Bank BRI', 'midtrans.bri_va', 'Jalur Nugraha Ekakurir (JNE) - OKE', 'rajaongkir.jne_oke', 8, 1.00000000, '', 292000.00, 14, '120.188.74.109', '2021-08-12 06:57:48', '2021-08-18 13:38:58');
INSERT INTO `order` VALUES (33, '', 2021081433, '', '', NULL, 103, 'Rafly Muzady', 'rafly.muzady@yahoo.com', '081318103174', 'Pondok Sukmajaya Permai F6 No.9', '16412', 9, 'Jawa Barat', 115, 'Kota Depok', 1586, 'Sukmajaya', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'Transfer Bank BNI', 'midtrans.bni_va', 'Jalur Nugraha Ekakurir (JNE) - OKE', 'rajaongkir.jne_oke', 8, 1.00000000, '', 802000.00, 14, '180.252.86.155', '2021-08-14 11:17:10', '2021-08-18 13:36:42');
INSERT INTO `order` VALUES (34, '', 2021081634, '', '', NULL, 101, 'Ramadhan', 'rammuh04@gmail.com', '0811535800', 'danau tondano no.12, ahmad dahlan', '75100', 15, 'Kalimantan Timur', 387, 'Kota Samarinda', 5359, 'Samarinda Kota', 'Mozilla/5.0 (Linux; Android 9; SM-G960F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Mobile Safari/537.36', 'Transfer Bank BRI', 'midtrans.bri_va', 'Jalur Nugraha Ekakurir (JNE) - REG', 'rajaongkir.jne_reg', 8, 1.00000000, '', 1864000.00, 11, '182.3.134.157', '2021-08-16 10:49:41', '2021-08-17 10:51:18');
INSERT INTO `order` VALUES (35, '', 2021081635, '', '', NULL, 101, 'Ramadhan', 'rammuh04@gmail.com', '0811535800', 'danau tondano no.12, ahmad dahlan', '75100', 15, 'Kalimantan Timur', 387, 'Kota Samarinda', 5359, 'Samarinda Kota', 'Mozilla/5.0 (Linux; Android 9; SM-G960F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Mobile Safari/537.36', 'Gopay', 'midtrans.gopay', 'Jalur Nugraha Ekakurir (JNE) - REG', 'rajaongkir.jne_reg', 8, 1.00000000, 'Packing safety', 1897200.00, 11, '182.3.134.157', '2021-08-16 11:12:33', '2021-08-17 11:15:02');
INSERT INTO `order` VALUES (36, '', 2021081636, '', '', NULL, 101, 'Ramadhan', 'rammuh04@gmail.com', '0811535800', 'danau tondano no.12, ahmad dahlan', '75100', 15, 'Kalimantan Timur', 387, 'Kota Samarinda', 5359, 'Samarinda Kota', 'Mozilla/5.0 (Linux; Android 9; SM-G960F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Mobile Safari/537.36', 'Gopay', 'midtrans.gopay', 'Jalur Nugraha Ekakurir (JNE) - REG', 'rajaongkir.jne_reg', 8, 1.00000000, 'Packing safety', 1897200.00, 14, '182.3.134.157', '2021-08-16 11:58:00', '2021-08-25 18:43:35');
INSERT INTO `order` VALUES (37, '', 2021081737, '', '', '', 0, 'daniel', 'abang_agian@yahoo.com', '081288442206', 'jl. rokan 4 no 212. Rt. 006/05. kec. sukmajaya kel. baktijaya.', '16418', 9, 'Jawa Barat', 115, 'Kota Depok', 1586, 'Sukmajaya', 'Mozilla/5.0 (Linux; Android 10; MI 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Mobile Safari/537.36', 'Transfer Bank BCA', 'midtrans.bca_va', 'J&T Express - EZ', 'rajaongkir.J&T_ez', 8, 1.00000000, 'barang pecah belah. mohon hati hati', 803000.00, 11, '36.88.138.144', '2021-08-17 03:36:44', '2021-08-18 03:38:26');
INSERT INTO `order` VALUES (38, '', 2021081838, '', '', NULL, 105, 'Imam Sahuri', 'imam_sahuri@yahoo.com', '085743752125', 'Dusun gulingbadak Rt 3 Rw 10 Desa jambusari Kecamatan jeruklegi', '53252', 10, 'Jawa Tengah', 105, 'Kabupaten Cilacap', 1447, 'Jeruklegi', 'Mozilla/5.0 (Linux; Android 11; M2012K11AG) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Mobile Safari/537.36', 'Transfer Bank BCA', 'midtrans.bca_va', 'J&T Express - EZ', 'rajaongkir.J&T_ez', 8, 1.00000000, '', 292000.00, 14, '114.5.223.187', '2021-08-18 09:57:16', '2021-08-19 16:30:36');
INSERT INTO `order` VALUES (39, '', 2021081839, '', '', NULL, 110, 'Nur Wiqoyatul Afifah', 'afifahfifi6@gmail.com', '081212824715', 'Jalan Raya Duri Kosambi No155', '11750', 6, 'DKI Jakarta', 151, 'Kota Jakarta Barat', 2087, 'Cengkareng', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', 'Transfer Bank BCA', 'midtrans.bca_va', 'Jalur Nugraha Ekakurir (JNE) - CTC', 'rajaongkir.jne_ctc', 8, 1.00000000, 'patokan alamatnya (Belakang apotik niki sehat) atas nama Janice/Fifi', 1772000.00, 14, '180.243.0.75', '2021-08-18 18:17:35', '2021-08-20 14:06:51');
INSERT INTO `order` VALUES (40, '', 2021082440, '', '', '', 0, 'Egi suprawan yandra', 'egi_engla@yahoo.com', '081270906169', 'Jln. Godang gunung seribu\r\nKoto panjang / Tigo jangko', '', 32, 'Sumatera Barat', 453, 'Kabupaten Tanah Datar', 6246, 'Lintau Buo', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Instagram 201.0.0.23.111 (iPhone12,5; iOS 14_6; id_ID; id-ID; scale=3.00; 1242x2688; 311026220)', 'Transfer Bank BRI', 'midtrans.bri_va', 'Jalur Nugraha Ekakurir (JNE) - OKE', 'rajaongkir.jne_oke', 8, 1.00000000, '', 10314000.00, 11, '182.1.38.252', '2021-08-24 10:55:56', '2021-08-25 10:56:50');
INSERT INTO `order` VALUES (41, '', 2021082441, '', '', '', 0, 'Egi suprawan yandra', 'egi_engla@yahoo.com', '081270906169', 'Jalan Godang , jorong gunung seribu.\r\nTigo Jangko / Koto panjang', '27281', 32, 'Sumatera Barat', 453, 'Kabupaten Tanah Datar', 6246, 'Lintau Buo', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.1 Mobile/15E148 Safari/604.1', 'Transfer Bank BRI', 'midtrans.bri_va', 'Jalur Nugraha Ekakurir (JNE) - OKE', 'rajaongkir.jne_oke', 8, 1.00000000, '', 11474000.00, 11, '182.1.55.228', '2021-08-24 12:32:07', '2021-08-25 12:37:30');
INSERT INTO `order` VALUES (42, '', 2021082542, '', '', NULL, 123, 'Deni Satria Yustian', 'Yustian.deni94@gmail.com', '081255599970', 'Suket boba, jl. Penegak no.34 rt.6 kel.damai balikpapan selatan', '76114', 15, 'Kalimantan Timur', 19, 'Kota Balikpapan', 274, 'Balikpapan Selatan', 'Mozilla/5.0 (Linux; Android 10; V2027) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Mobile Safari/537.36', 'Transfer Bank BNI', 'midtrans.bni_va', 'J&T Express - EZ', 'rajaongkir.J&T_ez', 8, 1.00000000, 'Tolong di packing dengan kuat ', 2367000.00, 14, '114.122.231.62', '2021-08-25 14:03:39', '2021-09-01 09:29:29');
INSERT INTO `order` VALUES (43, '', 2021082943, '', '', '', 0, 'Kompol dr.chandra tanoeisan', 'chandratanoeisan@gmail.com', '08124442855', 'Rumah Sakit Bhayangkara Ambon\r\nJalan Sultan Hasanudin, Pandan Kasturi, Sirimau , KOTA AMBON, SIRIMAU, MALUKU, ID, 97128', '97128', 19, 'Maluku', 14, 'Kota Ambon', 212, 'Sirimau', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_7_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Instagram 202.0.0.23.119 (iPhone13,4; iOS 14_7_1; id_ID; id-ID; scale=3.00; 1284x2778; 312612729)', 'Transfer Bank BRI', 'midtrans.bri_va', 'Jalur Nugraha Ekakurir (JNE) - OKE', 'rajaongkir.jne_oke', 8, 1.00000000, '', 1289000.00, 14, '180.253.185.25', '2021-08-29 10:26:18', '2021-09-06 14:51:58');
INSERT INTO `order` VALUES (44, '', 2021083044, '', '', NULL, 118, 'Udung Permana ( Raisa Salon )', 'udungraisa@gmail.com', '0813-1976-8883', 'Jl.mangga besar IV.H, no 30A RT 001 RW 003', '11150', 6, 'DKI Jakarta', 151, 'Kota Jakarta Barat', 2093, 'Taman Sari', 'Mozilla/5.0 (Linux; Android 11; SM-A715F Build/RP1A.200720.012; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/92.0.4515.159 Mobile Safari/537.36 Instagram 202.0.0.37.123 Android (30/11; 420dpi; 1080x2183; samsung; SM-A715F; a71; qcom; in_I', 'Transfer Bank BCA', 'midtrans.bca_va', 'Jalur Nugraha Ekakurir (JNE) - CTC', 'rajaongkir.jne_ctc', 8, 1.00000000, '', 803000.00, 11, '180.243.12.245', '2021-08-30 11:25:19', '2021-09-01 09:23:13');
INSERT INTO `order` VALUES (45, '', 2021083045, '', '', NULL, 118, 'Udung Permana ( Raisa Salon )', 'udungraisa@gmail.com', '0813-1976-8883', 'Jl.mangga besar IV.H, no 30A RT 001 RW 003', '11150', 6, 'DKI Jakarta', 151, 'Kota Jakarta Barat', 2093, 'Taman Sari', 'Mozilla/5.0 (Linux; Android 11; SM-A715F Build/RP1A.200720.012; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/92.0.4515.159 Mobile Safari/537.36 Instagram 202.0.0.37.123 Android (30/11; 420dpi; 1080x2183; samsung; SM-A715F; a71; qcom; in_I', 'Transfer Bank BCA', 'midtrans.bca_va', 'Jalur Nugraha Ekakurir (JNE) - CTC', 'rajaongkir.jne_ctc', 8, 1.00000000, '', 803000.00, 14, '180.243.12.245', '2021-08-30 15:58:04', '2021-09-06 14:49:12');
INSERT INTO `order` VALUES (46, '', 2021083046, '', '', NULL, 128, 'Zainul', 'Zainulbpd@gmail.com', '089607084288', 'Desa watestanjung, dusun tanjung, Rt 022 Rw 006', '61176', 11, 'Jawa Timur', 133, 'Kabupaten Gresik', 1845, 'Wringin Anom', 'Mozilla/5.0 (Linux; Android 11; SM-A115F Build/RP1A.200720.012; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/92.0.4515.159 Mobile Safari/537.36 Instagram 202.0.0.37.123 Android (30/11; 280dpi; 720x1411; samsung; SM-A115F; a11q; qcom; in_I', 'Transfer Bank BRI', 'midtrans.bri_va', 'SiCepat Express - REG', 'rajaongkir.sicepat_reg', 8, 1.00000000, '', 824000.00, 14, '202.67.40.227', '2021-08-30 18:36:07', '2021-09-06 14:50:53');
INSERT INTO `order` VALUES (47, '', 2021083147, '', '', '', 0, 'Deddy Kushandono', 'choicer75@gmail.com', '081232232321', 'Citra Sentosa L18', '60211', 11, 'Jawa Timur', 444, 'Kota Surabaya', 6144, 'Lakar Santri', 'Mozilla/5.0 (Linux; Android 11; SM-A715F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.166 Mobile Safari/537.36', 'Transfer Bank BCA', 'midtrans.bca_va', 'J&T Express - EZ', 'rajaongkir.J&T_ez', 8, 1.00000000, '', 814000.00, 14, '182.1.73.231', '2021-08-31 14:18:40', '2021-09-06 14:53:12');
INSERT INTO `order` VALUES (48, '', 2021090248, '', '', NULL, 130, 'Shofa Salsabila', 'shofaaasalsa@gmail.com', '085736983728', 'Jl. Pisang No. 24 RT 003 RW 013 Dsn. Jombangan, Ds. Tertek', '64215', 11, 'Jawa Timur', 178, 'Kabupaten Kediri', 2514, 'Pare', 'Mozilla/5.0 (Linux; Android 6.0.1; vivo 1606) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.127 Mobile Safari/537.36', 'Transfer Bank BRI', 'midtrans.bri_va', 'J&T Express - EZ', 'rajaongkir.J&T_ez', 8, 1.00000000, 'Mohon dikemas dengan aman ya, terimakasih.', 117000.00, 11, '36.77.51.129', '2021-09-02 12:56:40', '2021-09-02 20:01:01');
INSERT INTO `order` VALUES (49, '', 2021090249, '', '', NULL, 130, 'Shofa Salsabila', 'shofaaasalsa@gmail.com', '085736983728', 'Jl. Pisang No. 24 (Rumah pagar stainles hadap selatan) RT 003 RW 013 Dsn. Jombangan, Ds. Tertek', '64215', 11, 'Jawa Timur', 178, 'Kabupaten Kediri', 2514, 'Pare', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.127 Safari/537.36', 'Transfer Bank BRI', 'midtrans.bri_va', 'J&T Express - EZ', 'rajaongkir.J&T_ez', 8, 1.00000000, 'Mohon dikemas dengan aman ya, terimakasih. ', 117000.00, 14, '36.77.51.129', '2021-09-02 13:21:26', '2021-09-06 13:02:28');
INSERT INTO `order` VALUES (50, '', 2021090250, '', '', 'Sentra Industri Terpadu I & II blok i1 no. 25', 0, 'olipos', 'olivia.wahlmpm@gmail.com', '08778296448', 'pik', '14460', 6, 'DKI Jakarta', 155, 'Kota Jakarta Utara', 2127, 'Penjaringan', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'Transfer Bank BCA', 'midtrans.bca_va', 'Jalur Nugraha Ekakurir (JNE) - CTC', 'rajaongkir.jne_ctc', 8, 1.00000000, 'mas yang cepat ya, saya mau 10', 58000.00, 11, '182.0.140.203', '2021-09-02 13:32:55', '2021-09-02 16:12:50');
INSERT INTO `order` VALUES (51, '', 2021090451, '', '', '', 0, 'Yulian Salis Patriawan', 'yulianpatriawan@yahoo.com', '08123311198', 'Perumahan Gardenia Blok G-49\r\nJl. S Parman 33 Pakis - Banyuwangi - Jawa Timur', '68419', 11, 'Jawa Timur', 42, 'Kabupaten Banyuwangi', 601, 'Banyuwangi', 'Mozilla/5.0 (Linux; Android 11; CPH2113) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Mobile Safari/537.36', 'Transfer Bank BCA', 'midtrans.bca_va', 'SiCepat Express - GOKIL', 'rajaongkir.sicepat_gokil', 8, 1.00000000, '', 1324000.00, 13, '182.1.66.93', '2021-09-04 18:58:28', '2021-09-07 12:44:15');
INSERT INTO `order` VALUES (52, '', 2021090752, '', '', '', 0, 'Gunado', 'GunadoAlfha@gmail.com', '082113767897', 'Jl swasembada barat V nomor 26B rt14 rw9, kebon bawang, tg priok, jakarta utara', '14320', 6, 'DKI Jakarta', 155, 'Kota Jakarta Utara', 2128, 'Tanjung Priok', 'Mozilla/5.0 (Linux; Android 8.0.0; SAMSUNG SM-N950U) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/14.2 Chrome/87.0.4280.141 Mobile Safari/537.36', 'Transfer Bank BCA', 'midtrans.bca_va', 'Jalur Nugraha Ekakurir (JNE) - CTCYES', 'rajaongkir.jne_ctcyes', 8, 1.00000000, 'Tolong bungkus yang aman, langsung kirim ya', 1702000.00, 12, '182.0.228.36', '2021-09-07 20:25:11', '2021-09-08 09:14:13');

-- ----------------------------
-- Table structure for order_article
-- ----------------------------
DROP TABLE IF EXISTS `order_article`;
CREATE TABLE `order_article`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `article_id` bigint NOT NULL,
  `product_code` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_article
-- ----------------------------

-- ----------------------------
-- Table structure for order_history
-- ----------------------------
DROP TABLE IF EXISTS `order_history`;
CREATE TABLE `order_history`  (
  `order_history_id` int NOT NULL AUTO_INCREMENT,
  `order_status_id` int NOT NULL DEFAULT 0,
  `order_id` int NOT NULL DEFAULT 0,
  `admin_id` int NOT NULL DEFAULT 0,
  `notify` tinyint(1) NOT NULL DEFAULT 0,
  `comment` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `waybill` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `image` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`order_history_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 218 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_history
-- ----------------------------
INSERT INTO `order_history` VALUES (1, 11, 1, -2, 1, 'Mohon maaf atas ketidaknyamanannya, Pak. Saat ini website kami masih ada bug/error. Pak Ipunk dapat mendapatkan harga special legend di toko-toko langganan, ataupun melalui online shop Cleo Hub/ Barbersupply. Terima kasih.', '', NULL, '2021-02-26 16:22:33', '2021-02-26 16:22:33');
INSERT INTO `order_history` VALUES (2, 4, 4, 0, 1, 'Status pembayaran untuk order #4 : PENDING', '', NULL, '2021-04-14 23:58:42', '2021-04-14 23:58:42');
INSERT INTO `order_history` VALUES (3, 10, 4, 0, 1, 'Status pembayaran untuk order #4 : SETTLEMENT', '', NULL, '2021-04-15 00:01:22', '2021-04-15 00:01:22');
INSERT INTO `order_history` VALUES (5, 12, 4, -2, 1, 'Terima kasih telah berbelanja di website PT MPM Wahl. Pesanan Anda sedang kami proses, mohon ditunggu.', '', NULL, '2021-04-15 09:36:03', '2021-04-15 09:36:03');
INSERT INTO `order_history` VALUES (6, 13, 4, -2, 1, '', 'JD0117192492', NULL, '2021-04-16 09:45:14', '2021-04-16 09:45:14');
INSERT INTO `order_history` VALUES (7, 14, 4, -2, 1, 'Halo Kak Michael Tando,\r\n\r\nTerima kasih atas kepercayaan dan pembelian produk WAHL dari website kami (PT Moda Pratama Mandiri).\r\nSilahkan melakukan registrasi produk untuk klaim garansi melalui website atau barcode yang ada di kartu garansi.\r\n\r\nApabila ada keluhan atau pertanyaan, silahkan menghubungi kami kembali.\r\nAtas perhatian Kak Michael, kami ucapkan terima kasih. Sukses selalu Kak!\r\n\r\nKind regards,\r\nAdministrator Wahl', '', NULL, '2021-04-19 09:50:10', '2021-04-19 09:50:10');
INSERT INTO `order_history` VALUES (9, 11, 5, 0, 0, 'Pesanan dibatalkan karena belum ada pembayaran dari customer sampai tanggal 13/05/2021 17:06', '', NULL, '2021-05-13 17:10:00', '2021-05-13 17:10:00');
INSERT INTO `order_history` VALUES (10, 11, 6, 0, 0, 'Pesanan dibatalkan karena belum ada pembayaran dari customer sampai tanggal 18/05/2021 01:14', '', NULL, '2021-05-18 01:15:01', '2021-05-18 01:15:01');
INSERT INTO `order_history` VALUES (11, 11, 7, 0, 0, 'Pesanan dibatalkan karena belum ada pembayaran dari customer sampai tanggal 20/05/2021 13:33', '', NULL, '2021-05-20 13:35:03', '2021-05-20 13:35:03');
INSERT INTO `order_history` VALUES (12, 4, 8, 0, 1, 'Status pembayaran untuk order #8 : PENDING', '', NULL, '2021-05-27 12:48:51', '2021-05-27 12:48:51');
INSERT INTO `order_history` VALUES (13, 10, 8, 0, 1, 'Status pembayaran untuk order #8 : SETTLEMENT', '', NULL, '2021-05-27 12:56:44', '2021-05-27 12:56:44');
INSERT INTO `order_history` VALUES (16, 10, 8, -2, 1, 'Terima kasih Kak Abraham telah berbelanja di Website WAHL - PT MPM.\r\nPesanan akan segera kami proses.', '', NULL, '2021-05-27 13:40:27', '2021-05-27 13:40:27');
INSERT INTO `order_history` VALUES (17, 12, 8, -2, 1, 'Pesanan Diproses', '', NULL, '2021-05-27 13:52:24', '2021-05-27 13:52:24');
INSERT INTO `order_history` VALUES (18, 13, 8, -2, 1, '', '010760126965121', NULL, '2021-05-31 09:41:47', '2021-05-31 09:41:47');
INSERT INTO `order_history` VALUES (19, 14, 8, -2, 1, '', '', NULL, '2021-05-31 09:44:32', '2021-05-31 09:44:32');
INSERT INTO `order_history` VALUES (22, 4, 10, 0, 1, 'Status pembayaran untuk order #10 : PENDING', '', NULL, '2021-06-11 15:39:26', '2021-06-11 15:39:26');
INSERT INTO `order_history` VALUES (23, 4, 10, 0, 1, 'Status pembayaran untuk order #10 : PENDING', '', NULL, '2021-06-11 15:39:31', '2021-06-11 15:39:31');
INSERT INTO `order_history` VALUES (24, 11, 10, 0, 1, 'Status pembayaran untuk order #10 : KADALUARSA', '', NULL, '2021-06-12 15:39:32', '2021-06-12 15:39:32');
INSERT INTO `order_history` VALUES (25, 11, 11, 0, 0, 'Pesanan dibatalkan karena belum ada pembayaran dari customer sampai tanggal 16/06/2021 14:42', '', NULL, '2021-06-16 14:45:02', '2021-06-16 14:45:02');
INSERT INTO `order_history` VALUES (26, 4, 12, 0, 1, 'Status pembayaran untuk order #12 : PENDING', '', NULL, '2021-06-23 13:22:46', '2021-06-23 13:22:46');
INSERT INTO `order_history` VALUES (27, 4, 12, -2, 1, '', '', NULL, '2021-06-23 14:57:53', '2021-06-23 14:57:53');
INSERT INTO `order_history` VALUES (28, 11, 12, 0, 1, 'Status pembayaran untuk order #12 : KADALUARSA', '', NULL, '2021-06-24 13:22:48', '2021-06-24 13:22:48');
INSERT INTO `order_history` VALUES (29, 4, 13, 0, 1, 'Status pembayaran untuk order #13 : PENDING', '', NULL, '2021-06-25 14:29:32', '2021-06-25 14:29:32');
INSERT INTO `order_history` VALUES (30, 4, 13, 0, 1, 'Status pembayaran untuk order #13 : PENDING', '', NULL, '2021-06-25 14:32:00', '2021-06-25 14:32:00');
INSERT INTO `order_history` VALUES (31, 4, 15, 0, 1, 'Status pembayaran untuk order #15 : PENDING', '', NULL, '2021-06-25 14:58:59', '2021-06-25 14:58:59');
INSERT INTO `order_history` VALUES (32, 10, 15, 0, 1, 'Status pembayaran untuk order #15 : SETTLEMENT', '', NULL, '2021-06-25 15:00:25', '2021-06-25 15:00:25');
INSERT INTO `order_history` VALUES (34, 11, 13, 0, 1, 'Status pembayaran untuk order #13 : KADALUARSA', '', NULL, '2021-06-26 14:29:34', '2021-06-26 14:29:34');
INSERT INTO `order_history` VALUES (35, 11, 14, 0, 0, 'Pesanan dibatalkan karena belum ada pembayaran dari customer sampai tanggal 26/06/2021 14:54', '', NULL, '2021-06-26 14:55:01', '2021-06-26 14:55:01');
INSERT INTO `order_history` VALUES (36, 12, 15, -2, 1, 'Pesanan Diproses', '', NULL, '2021-06-27 15:27:18', '2021-06-27 15:27:18');
INSERT INTO `order_history` VALUES (37, 12, 15, -2, 1, 'Selamat siang Kak Rendy Wijaya,\r\nTerima kasih telah berbelanja di website PT Moda Pratama Mandiri - Wahl Professional Distributor.\r\nMohon ditunggu pesanan Anda akan segera kami proses pada hari kerja.\r\n', '', NULL, '2021-06-27 15:29:19', '2021-06-27 15:29:19');
INSERT INTO `order_history` VALUES (38, 13, 15, -2, 1, '', 'JD0128030068', NULL, '2021-06-29 09:51:05', '2021-06-29 09:51:05');
INSERT INTO `order_history` VALUES (39, 4, 16, 0, 1, 'Status pembayaran untuk order #16 : PENDING', '', NULL, '2021-06-29 15:59:58', '2021-06-29 15:59:58');
INSERT INTO `order_history` VALUES (40, 10, 16, 0, 1, 'Status pembayaran untuk order #16 : SETTLEMENT', '', NULL, '2021-06-29 16:00:12', '2021-06-29 16:00:12');
INSERT INTO `order_history` VALUES (41, 10, 16, 0, 1, 'Status pembayaran untuk order #16 : LUNAS', '', NULL, '2021-06-29 16:00:37', '2021-06-29 16:00:37');
INSERT INTO `order_history` VALUES (42, 12, 16, -2, 1, '', '', NULL, '2021-06-30 11:55:20', '2021-06-30 11:55:20');
INSERT INTO `order_history` VALUES (43, 4, 17, 0, 1, 'Status pembayaran untuk order #17 : PENDING', '', NULL, '2021-07-02 13:50:51', '2021-07-02 13:50:51');
INSERT INTO `order_history` VALUES (44, 4, 17, 0, 1, 'Status pembayaran untuk order #17 : PENDING', '', NULL, '2021-07-02 13:55:38', '2021-07-02 13:55:38');
INSERT INTO `order_history` VALUES (45, 4, 18, 0, 1, 'Status pembayaran untuk order #18 : PENDING', '', NULL, '2021-07-02 14:16:53', '2021-07-02 14:16:53');
INSERT INTO `order_history` VALUES (46, 4, 18, 0, 1, 'Status pembayaran untuk order #18 : PENDING', '', NULL, '2021-07-02 14:34:16', '2021-07-02 14:34:16');
INSERT INTO `order_history` VALUES (47, 4, 19, 0, 1, 'Status pembayaran untuk order #19 : PENDING', '', NULL, '2021-07-02 15:30:12', '2021-07-02 15:30:12');
INSERT INTO `order_history` VALUES (48, 4, 19, 0, 1, 'Status pembayaran untuk order #19 : PENDING', '', NULL, '2021-07-02 15:31:36', '2021-07-02 15:31:36');
INSERT INTO `order_history` VALUES (49, 10, 19, 0, 1, 'Status pembayaran untuk order #19 : SETTLEMENT', '', NULL, '2021-07-02 15:46:32', '2021-07-02 15:46:32');
INSERT INTO `order_history` VALUES (50, 12, 19, -2, 1, 'Pesanan Diproses', '', NULL, '2021-07-02 16:03:25', '2021-07-02 16:03:25');
INSERT INTO `order_history` VALUES (51, 10, 18, 0, 1, 'Status pembayaran untuk order #18 : SETTLEMENT', '', NULL, '2021-07-02 16:17:53', '2021-07-02 16:17:53');
INSERT INTO `order_history` VALUES (52, 11, 17, 0, 0, 'Pesanan dibatalkan karena belum ada pembayaran dari customer sampai tanggal 03/07/2021 13:48', '', NULL, '2021-07-03 13:50:02', '2021-07-03 13:50:02');
INSERT INTO `order_history` VALUES (53, 11, 17, 0, 1, 'Status pembayaran untuk order #17 : KADALUARSA', '', NULL, '2021-07-03 13:50:53', '2021-07-03 13:50:53');
INSERT INTO `order_history` VALUES (54, 12, 18, -2, 1, 'Pesanan Diproses', '', NULL, '2021-07-05 09:49:28', '2021-07-05 09:49:28');
INSERT INTO `order_history` VALUES (55, 4, 21, 0, 1, 'Status pembayaran untuk order #21 : PENDING', '', NULL, '2021-07-05 12:18:08', '2021-07-05 12:18:08');
INSERT INTO `order_history` VALUES (56, 4, 22, 0, 1, 'Status pembayaran untuk order #22 : PENDING', '', NULL, '2021-07-05 12:19:43', '2021-07-05 12:19:43');
INSERT INTO `order_history` VALUES (57, 4, 22, 0, 1, 'Status pembayaran untuk order #22 : PENDING', '', NULL, '2021-07-05 12:23:46', '2021-07-05 12:23:46');
INSERT INTO `order_history` VALUES (58, 11, 21, 0, 1, 'Status pembayaran untuk order #21 : KADALUARSA', '', NULL, '2021-07-05 12:33:09', '2021-07-05 12:33:09');
INSERT INTO `order_history` VALUES (59, 13, 19, -2, 1, '', '010760155128421', NULL, '2021-07-05 14:04:04', '2021-07-05 14:04:04');
INSERT INTO `order_history` VALUES (60, 14, 19, -2, 1, '', '', NULL, '2021-07-05 14:05:00', '2021-07-05 14:05:00');
INSERT INTO `order_history` VALUES (61, 14, 15, -2, 1, '', '', NULL, '2021-07-05 14:10:02', '2021-07-05 14:10:02');
INSERT INTO `order_history` VALUES (62, 13, 16, -2, 1, '', '010760151710721', NULL, '2021-07-05 14:19:30', '2021-07-05 14:19:30');
INSERT INTO `order_history` VALUES (63, 14, 16, -2, 0, '', '', NULL, '2021-07-05 14:19:56', '2021-07-05 14:19:56');
INSERT INTO `order_history` VALUES (64, 13, 18, -2, 1, '', '010760157596321', NULL, '2021-07-05 16:21:49', '2021-07-05 16:21:49');
INSERT INTO `order_history` VALUES (65, 11, 20, 0, 0, 'Pesanan dibatalkan karena belum ada pembayaran dari customer sampai tanggal 06/07/2021 09:17', '', NULL, '2021-07-06 09:20:03', '2021-07-06 09:20:03');
INSERT INTO `order_history` VALUES (66, 11, 22, 0, 1, 'Status pembayaran untuk order #22 : KADALUARSA', '', NULL, '2021-07-06 12:19:44', '2021-07-06 12:19:44');
INSERT INTO `order_history` VALUES (67, 4, 23, 0, 1, 'Status pembayaran untuk order #23 : PENDING', '', NULL, '2021-07-25 14:21:31', '2021-07-25 14:21:31');
INSERT INTO `order_history` VALUES (68, 10, 23, 0, 1, 'Status pembayaran untuk order #23 : SETTLEMENT', '', NULL, '2021-07-25 14:22:48', '2021-07-25 14:22:48');
INSERT INTO `order_history` VALUES (69, 10, 23, 0, 1, 'Status pembayaran untuk order #23 : LUNAS', '', NULL, '2021-07-25 14:23:02', '2021-07-25 14:23:02');
INSERT INTO `order_history` VALUES (70, 12, 23, -2, 1, 'Pesanan Diproses', '', NULL, '2021-07-26 09:28:52', '2021-07-26 09:28:52');
INSERT INTO `order_history` VALUES (71, 13, 23, -2, 1, 'Terima kasih telah melakukan pembelian di website www.mpmindo.id. \r\nJangan lupa video unboxing paket Anda yah! Semoga hari Anda menyenangkan! :) \r\n', '660031126023', NULL, '2021-07-26 13:44:09', '2021-07-26 13:44:09');
INSERT INTO `order_history` VALUES (72, 14, 18, -2, 0, '', '', NULL, '2021-07-27 10:13:45', '2021-07-27 10:13:45');
INSERT INTO `order_history` VALUES (73, 14, 23, -2, 1, '', '', NULL, '2021-07-27 16:42:42', '2021-07-27 16:42:42');
INSERT INTO `order_history` VALUES (74, 4, 24, 0, 1, 'Status pembayaran untuk order #24 : PENDING', '', NULL, '2021-07-30 09:04:13', '2021-07-30 09:04:13');
INSERT INTO `order_history` VALUES (75, 4, 24, 0, 1, 'Status pembayaran untuk order #24 : PENDING', '', NULL, '2021-07-30 09:04:39', '2021-07-30 09:04:39');
INSERT INTO `order_history` VALUES (76, 11, 24, 0, 1, 'Status pembayaran untuk order #24 : KADALUARSA', '', NULL, '2021-07-31 09:04:13', '2021-07-31 09:04:13');
INSERT INTO `order_history` VALUES (77, 4, 25, 0, 1, 'Status pembayaran untuk order #25 : PENDING', '', NULL, '2021-08-03 14:34:35', '2021-08-03 14:34:35');
INSERT INTO `order_history` VALUES (78, 4, 25, 0, 1, 'Status pembayaran untuk order #25 : PENDING', '', NULL, '2021-08-03 14:35:26', '2021-08-03 14:35:26');
INSERT INTO `order_history` VALUES (79, 11, 25, 0, 1, 'Status pembayaran untuk order #25 : KADALUARSA', '', NULL, '2021-08-04 14:34:37', '2021-08-04 14:34:37');
INSERT INTO `order_history` VALUES (80, 4, 26, 0, 1, 'Status pembayaran untuk order #26 : PENDING', '', NULL, '2021-08-08 15:32:57', '2021-08-08 15:32:57');
INSERT INTO `order_history` VALUES (81, 10, 26, 0, 1, 'Status pembayaran untuk order #26 : SETTLEMENT', '', NULL, '2021-08-08 15:35:01', '2021-08-08 15:35:01');
INSERT INTO `order_history` VALUES (82, 4, 26, 0, 1, 'Status pembayaran untuk order #26 : PENDING', '', NULL, '2021-08-08 15:35:11', '2021-08-08 15:35:11');
INSERT INTO `order_history` VALUES (83, 10, 26, -2, 1, '', '', NULL, '2021-08-08 16:00:42', '2021-08-08 16:00:42');
INSERT INTO `order_history` VALUES (84, 4, 27, 0, 1, 'Status pembayaran untuk order #27 : PENDING', '', NULL, '2021-08-09 03:13:31', '2021-08-09 03:13:31');
INSERT INTO `order_history` VALUES (85, 4, 27, 0, 1, 'Status pembayaran untuk order #27 : PENDING', '', NULL, '2021-08-09 03:13:44', '2021-08-09 03:13:44');
INSERT INTO `order_history` VALUES (86, 12, 26, -2, 1, 'Pesanan Diproses', '', NULL, '2021-08-09 09:29:36', '2021-08-09 09:29:36');
INSERT INTO `order_history` VALUES (87, 4, 27, -2, 1, '', '', NULL, '2021-08-09 10:32:19', '2021-08-09 10:32:19');
INSERT INTO `order_history` VALUES (88, 10, 27, 0, 1, 'Status pembayaran untuk order #27 : SETTLEMENT', '', NULL, '2021-08-09 12:02:56', '2021-08-09 12:02:56');
INSERT INTO `order_history` VALUES (89, 12, 27, -2, 1, 'Pesanan Diproses', '', NULL, '2021-08-09 12:17:36', '2021-08-09 12:17:36');
INSERT INTO `order_history` VALUES (90, 4, 28, 0, 1, 'Status pembayaran untuk order #28 : PENDING', '', NULL, '2021-08-09 13:36:52', '2021-08-09 13:36:52');
INSERT INTO `order_history` VALUES (91, 10, 28, 0, 1, 'Status pembayaran untuk order #28 : SETTLEMENT', '', NULL, '2021-08-09 13:37:37', '2021-08-09 13:37:37');
INSERT INTO `order_history` VALUES (92, 12, 28, -2, 1, 'Pesanan Diproses', '', NULL, '2021-08-09 13:52:52', '2021-08-09 13:52:52');
INSERT INTO `order_history` VALUES (93, 13, 28, -2, 1, '', '010760178482621', NULL, '2021-08-09 16:40:29', '2021-08-09 16:40:29');
INSERT INTO `order_history` VALUES (94, 13, 27, -2, 1, '', '010760178484421', NULL, '2021-08-09 16:42:40', '2021-08-09 16:42:40');
INSERT INTO `order_history` VALUES (95, 13, 26, -2, 1, '', 'JD0134609274', NULL, '2021-08-09 16:45:29', '2021-08-09 16:45:29');
INSERT INTO `order_history` VALUES (96, 4, 29, 0, 1, 'Status pembayaran untuk order #29 : PENDING', '', NULL, '2021-08-10 14:05:00', '2021-08-10 14:05:00');
INSERT INTO `order_history` VALUES (97, 4, 29, 0, 1, 'Status pembayaran untuk order #29 : PENDING', '', NULL, '2021-08-10 14:05:20', '2021-08-10 14:05:20');
INSERT INTO `order_history` VALUES (98, 10, 29, 0, 1, 'Status pembayaran untuk order #29 : SETTLEMENT', '', NULL, '2021-08-10 14:06:23', '2021-08-10 14:06:23');
INSERT INTO `order_history` VALUES (99, 12, 29, -2, 1, 'Pesanan Diproses', '', NULL, '2021-08-10 14:54:58', '2021-08-10 14:54:58');
INSERT INTO `order_history` VALUES (100, 4, 32, 0, 1, 'Status pembayaran untuk order #32 : PENDING', '', NULL, '2021-08-12 06:59:52', '2021-08-12 06:59:52');
INSERT INTO `order_history` VALUES (101, 4, 32, 0, 1, 'Status pembayaran untuk order #32 : PENDING', '', NULL, '2021-08-12 07:00:52', '2021-08-12 07:00:52');
INSERT INTO `order_history` VALUES (102, 13, 29, -2, 0, '', '010760178832321', NULL, '2021-08-12 10:33:31', '2021-08-12 10:33:31');
INSERT INTO `order_history` VALUES (103, 14, 29, -2, 1, '', '', NULL, '2021-08-12 10:33:38', '2021-08-12 10:33:38');
INSERT INTO `order_history` VALUES (104, 14, 28, -2, 1, '', '', NULL, '2021-08-12 10:34:49', '2021-08-12 10:34:49');
INSERT INTO `order_history` VALUES (105, 11, 30, 0, 0, 'Pesanan dibatalkan karena belum ada pembayaran dari customer sampai tanggal 12/08/2021 12:08', '', NULL, '2021-08-12 12:10:02', '2021-08-12 12:10:02');
INSERT INTO `order_history` VALUES (106, 14, 26, 0, 1, 'Barang telah diterima oleh pembeli', '', NULL, '2021-08-12 15:14:53', '2021-08-12 15:14:53');
INSERT INTO `order_history` VALUES (107, 10, 32, 0, 1, 'Status pembayaran untuk order #32 : SETTLEMENT', '', NULL, '2021-08-12 18:34:17', '2021-08-12 18:34:17');
INSERT INTO `order_history` VALUES (108, 11, 31, 0, 0, 'Pesanan dibatalkan karena belum ada pembayaran dari customer sampai tanggal 13/08/2021 06:33', '', NULL, '2021-08-13 06:35:02', '2021-08-13 06:35:02');
INSERT INTO `order_history` VALUES (109, 12, 32, -2, 1, 'Pesanan Diproses', '', NULL, '2021-08-13 10:06:47', '2021-08-13 10:06:47');
INSERT INTO `order_history` VALUES (110, 4, 33, 0, 1, 'Status pembayaran untuk order #33 : PENDING', '', NULL, '2021-08-14 11:17:29', '2021-08-14 11:17:29');
INSERT INTO `order_history` VALUES (111, 10, 33, 0, 1, 'Status pembayaran untuk order #33 : SETTLEMENT', '', NULL, '2021-08-14 11:18:16', '2021-08-14 11:18:16');
INSERT INTO `order_history` VALUES (112, 4, 33, 0, 1, 'Status pembayaran untuk order #33 : PENDING', '', NULL, '2021-08-14 11:18:27', '2021-08-14 11:18:27');
INSERT INTO `order_history` VALUES (113, 10, 33, -2, 1, '', '', NULL, '2021-08-14 13:31:31', '2021-08-14 13:31:31');
INSERT INTO `order_history` VALUES (114, 12, 33, -2, 1, 'Pesanan Diproses', '', NULL, '2021-08-16 10:09:21', '2021-08-16 10:09:21');
INSERT INTO `order_history` VALUES (115, 4, 34, 0, 1, 'Status pembayaran untuk order #34 : PENDING', '', NULL, '2021-08-16 10:51:16', '2021-08-16 10:51:16');
INSERT INTO `order_history` VALUES (116, 4, 34, 0, 1, 'Status pembayaran untuk order #34 : PENDING', '', NULL, '2021-08-16 10:51:26', '2021-08-16 10:51:26');
INSERT INTO `order_history` VALUES (117, 4, 35, 0, 1, 'Status pembayaran untuk order #35 : PENDING', '', NULL, '2021-08-16 11:13:37', '2021-08-16 11:13:37');
INSERT INTO `order_history` VALUES (118, 11, 35, 0, 1, 'Status pembayaran untuk order #35 : KADALUARSA', '', NULL, '2021-08-16 11:28:37', '2021-08-16 11:28:37');
INSERT INTO `order_history` VALUES (119, 4, 36, 0, 1, 'Status pembayaran untuk order #36 : PENDING', '', NULL, '2021-08-16 15:23:13', '2021-08-16 15:23:13');
INSERT INTO `order_history` VALUES (120, 10, 36, 0, 1, 'Status pembayaran untuk order #36 : SETTLEMENT', '', NULL, '2021-08-16 15:23:31', '2021-08-16 15:23:31');
INSERT INTO `order_history` VALUES (121, 10, 36, 0, 1, 'Status pembayaran untuk order #36 : LUNAS', '', NULL, '2021-08-16 15:23:43', '2021-08-16 15:23:43');
INSERT INTO `order_history` VALUES (122, 4, 37, 0, 1, 'Status pembayaran untuk order #37 : PENDING', '', NULL, '2021-08-17 03:38:26', '2021-08-17 03:38:26');
INSERT INTO `order_history` VALUES (123, 12, 36, -2, 1, 'Pesanan Diproses', '', NULL, '2021-08-17 09:57:47', '2021-08-17 09:57:47');
INSERT INTO `order_history` VALUES (124, 11, 34, 0, 0, 'Pesanan dibatalkan karena belum ada pembayaran dari customer sampai tanggal 17/08/2021 10:49', '', NULL, '2021-08-17 10:50:02', '2021-08-17 10:50:02');
INSERT INTO `order_history` VALUES (125, 11, 34, 0, 1, 'Status pembayaran untuk order #34 : KADALUARSA', '', NULL, '2021-08-17 10:51:18', '2021-08-17 10:51:18');
INSERT INTO `order_history` VALUES (126, 11, 35, 0, 0, 'Pesanan dibatalkan karena belum ada pembayaran dari customer sampai tanggal 17/08/2021 11:12', '', NULL, '2021-08-17 11:15:02', '2021-08-17 11:15:02');
INSERT INTO `order_history` VALUES (127, 11, 37, 0, 1, 'Status pembayaran untuk order #37 : KADALUARSA', '', NULL, '2021-08-18 03:38:26', '2021-08-18 03:38:26');
INSERT INTO `order_history` VALUES (128, 4, 38, 0, 1, 'Status pembayaran untuk order #38 : PENDING', '', NULL, '2021-08-18 09:57:58', '2021-08-18 09:57:58');
INSERT INTO `order_history` VALUES (129, 4, 38, 0, 1, 'Status pembayaran untuk order #38 : PENDING', '', NULL, '2021-08-18 09:58:23', '2021-08-18 09:58:23');
INSERT INTO `order_history` VALUES (130, 10, 38, 0, 1, 'Status pembayaran untuk order #38 : SETTLEMENT', '', NULL, '2021-08-18 09:59:00', '2021-08-18 09:59:00');
INSERT INTO `order_history` VALUES (131, 12, 38, -2, 1, 'Pesanan Diproses', '', NULL, '2021-08-18 11:59:43', '2021-08-18 11:59:43');
INSERT INTO `order_history` VALUES (132, 13, 33, -2, 1, '', '010760180715121', NULL, '2021-08-18 13:22:26', '2021-08-18 13:22:26');
INSERT INTO `order_history` VALUES (133, 13, 33, -2, 1, '', '010760180715121', NULL, '2021-08-18 13:22:53', '2021-08-18 13:22:53');
INSERT INTO `order_history` VALUES (134, 14, 33, -2, 1, '', '', NULL, '2021-08-18 13:36:42', '2021-08-18 13:36:42');
INSERT INTO `order_history` VALUES (135, 13, 32, -2, 1, '', '010760179646721', NULL, '2021-08-18 13:38:49', '2021-08-18 13:38:49');
INSERT INTO `order_history` VALUES (136, 14, 32, -2, 1, '', '', NULL, '2021-08-18 13:38:58', '2021-08-18 13:38:58');
INSERT INTO `order_history` VALUES (137, 13, 36, -2, 1, '', '010760181342021', NULL, '2021-08-18 16:48:15', '2021-08-18 16:48:15');
INSERT INTO `order_history` VALUES (138, 13, 38, -2, 1, '', 'JD0136199244', NULL, '2021-08-18 16:49:58', '2021-08-18 16:49:58');
INSERT INTO `order_history` VALUES (139, 4, 39, 0, 1, 'Status pembayaran untuk order #39 : PENDING', '', NULL, '2021-08-18 18:18:39', '2021-08-18 18:18:39');
INSERT INTO `order_history` VALUES (140, 10, 39, 0, 1, 'Status pembayaran untuk order #39 : SETTLEMENT', '', NULL, '2021-08-18 18:22:22', '2021-08-18 18:22:22');
INSERT INTO `order_history` VALUES (141, 4, 39, 0, 1, 'Status pembayaran untuk order #39 : PENDING', '', NULL, '2021-08-18 18:22:24', '2021-08-18 18:22:24');
INSERT INTO `order_history` VALUES (142, 10, 39, -2, 1, '', '', NULL, '2021-08-19 09:38:59', '2021-08-19 09:38:59');
INSERT INTO `order_history` VALUES (143, 10, 39, -2, 1, '', '', NULL, '2021-08-19 09:39:33', '2021-08-19 09:39:33');
INSERT INTO `order_history` VALUES (144, 12, 39, -2, 1, '', '', NULL, '2021-08-19 09:39:59', '2021-08-19 09:39:59');
INSERT INTO `order_history` VALUES (145, 12, 39, -2, 1, '', '', NULL, '2021-08-19 09:45:19', '2021-08-19 09:45:19');
INSERT INTO `order_history` VALUES (146, 14, 38, 0, 1, 'Barang telah diterima oleh pembeli', '', NULL, '2021-08-19 16:30:36', '2021-08-19 16:30:36');
INSERT INTO `order_history` VALUES (147, 13, 39, -2, 1, '', '010760181702421', NULL, '2021-08-20 09:28:51', '2021-08-20 09:28:51');
INSERT INTO `order_history` VALUES (148, 13, 39, -2, 1, '', '010760181702421', NULL, '2021-08-20 09:30:19', '2021-08-20 09:30:19');
INSERT INTO `order_history` VALUES (149, 13, 39, -2, 1, '', '010760181702421', NULL, '2021-08-20 09:30:32', '2021-08-20 09:30:32');
INSERT INTO `order_history` VALUES (150, 13, 39, -2, 1, '', '010760181702421', NULL, '2021-08-20 09:30:42', '2021-08-20 09:30:42');
INSERT INTO `order_history` VALUES (151, 14, 39, -2, 1, '', '', NULL, '2021-08-20 14:05:08', '2021-08-20 14:05:08');
INSERT INTO `order_history` VALUES (152, 14, 39, -2, 1, '', '', NULL, '2021-08-20 14:06:51', '2021-08-20 14:06:51');
INSERT INTO `order_history` VALUES (153, 4, 40, 0, 1, 'Status pembayaran untuk order #40 : PENDING', '', NULL, '2021-08-24 10:56:49', '2021-08-24 10:56:49');
INSERT INTO `order_history` VALUES (154, 4, 41, 0, 1, 'Status pembayaran untuk order #41 : PENDING', '', NULL, '2021-08-24 12:37:28', '2021-08-24 12:37:28');
INSERT INTO `order_history` VALUES (155, 11, 40, 0, 1, 'Status pembayaran untuk order #40 : KADALUARSA', '', NULL, '2021-08-25 10:56:50', '2021-08-25 10:56:50');
INSERT INTO `order_history` VALUES (156, 11, 41, 0, 0, 'Pesanan dibatalkan karena belum ada pembayaran dari customer sampai tanggal 25/08/2021 12:32', '', NULL, '2021-08-25 12:35:01', '2021-08-25 12:35:01');
INSERT INTO `order_history` VALUES (157, 11, 41, 0, 1, 'Status pembayaran untuk order #41 : KADALUARSA', '', NULL, '2021-08-25 12:37:30', '2021-08-25 12:37:30');
INSERT INTO `order_history` VALUES (158, 4, 42, 0, 1, 'Status pembayaran untuk order #42 : PENDING', '', NULL, '2021-08-25 14:07:02', '2021-08-25 14:07:02');
INSERT INTO `order_history` VALUES (159, 4, 42, 0, 1, 'Status pembayaran untuk order #42 : PENDING', '', NULL, '2021-08-25 14:22:34', '2021-08-25 14:22:34');
INSERT INTO `order_history` VALUES (160, 4, 42, 0, 1, 'Status pembayaran untuk order #42 : PENDING', '', NULL, '2021-08-25 14:22:46', '2021-08-25 14:22:46');
INSERT INTO `order_history` VALUES (161, 4, 42, 0, 1, 'Status pembayaran untuk order #42 : PENDING', '', NULL, '2021-08-25 14:22:49', '2021-08-25 14:22:49');
INSERT INTO `order_history` VALUES (162, 14, 36, 0, 1, 'Barang telah diterima oleh pembeli', '', NULL, '2021-08-25 18:43:35', '2021-08-25 18:43:35');
INSERT INTO `order_history` VALUES (163, 10, 42, 0, 1, 'Status pembayaran untuk order #42 : SETTLEMENT', '', NULL, '2021-08-25 22:24:42', '2021-08-25 22:24:42');
INSERT INTO `order_history` VALUES (164, 12, 42, -2, 1, 'Pesanan Diproses', '', NULL, '2021-08-26 09:21:12', '2021-08-26 09:21:12');
INSERT INTO `order_history` VALUES (165, 4, 43, 0, 1, 'Status pembayaran untuk order #43 : PENDING', '', NULL, '2021-08-29 10:27:46', '2021-08-29 10:27:46');
INSERT INTO `order_history` VALUES (166, 10, 43, 0, 1, 'Status pembayaran untuk order #43 : SETTLEMENT', '', NULL, '2021-08-29 10:29:05', '2021-08-29 10:29:05');
INSERT INTO `order_history` VALUES (167, 4, 43, 0, 1, 'Status pembayaran untuk order #43 : PENDING', '', NULL, '2021-08-29 10:29:25', '2021-08-29 10:29:25');
INSERT INTO `order_history` VALUES (168, 4, 43, 0, 1, 'Status pembayaran untuk order #43 : PENDING', '', NULL, '2021-08-29 10:30:33', '2021-08-29 10:30:33');
INSERT INTO `order_history` VALUES (169, 11, 43, 0, 0, 'Pesanan dibatalkan karena belum ada pembayaran dari customer sampai tanggal 30/08/2021 10:26', '', NULL, '2021-08-30 10:30:02', '2021-08-30 10:30:02');
INSERT INTO `order_history` VALUES (170, 4, 44, 0, 1, 'Status pembayaran untuk order #44 : PENDING', '', NULL, '2021-08-30 11:25:51', '2021-08-30 11:25:51');
INSERT INTO `order_history` VALUES (171, 4, 44, 0, 1, 'Status pembayaran untuk order #44 : PENDING', '', NULL, '2021-08-30 11:26:04', '2021-08-30 11:26:04');
INSERT INTO `order_history` VALUES (172, 4, 45, 0, 1, 'Status pembayaran untuk order #45 : PENDING', '', NULL, '2021-08-30 15:58:28', '2021-08-30 15:58:28');
INSERT INTO `order_history` VALUES (173, 4, 45, 0, 1, 'Status pembayaran untuk order #45 : PENDING', '', NULL, '2021-08-30 15:58:42', '2021-08-30 15:58:42');
INSERT INTO `order_history` VALUES (174, 10, 45, 0, 1, 'Status pembayaran untuk order #45 : SETTLEMENT', '', NULL, '2021-08-30 15:59:15', '2021-08-30 15:59:15');
INSERT INTO `order_history` VALUES (175, 4, 46, 0, 1, 'Status pembayaran untuk order #46 : PENDING', '', NULL, '2021-08-30 18:37:46', '2021-08-30 18:37:46');
INSERT INTO `order_history` VALUES (176, 4, 46, 0, 1, 'Status pembayaran untuk order #46 : PENDING', '', NULL, '2021-08-30 18:38:57', '2021-08-30 18:38:57');
INSERT INTO `order_history` VALUES (177, 10, 46, 0, 1, 'Status pembayaran untuk order #46 : SETTLEMENT', '', NULL, '2021-08-30 19:46:44', '2021-08-30 19:46:44');
INSERT INTO `order_history` VALUES (178, 12, 45, -2, 1, 'Pesanan Diproses', '', NULL, '2021-08-31 09:16:39', '2021-08-31 09:16:39');
INSERT INTO `order_history` VALUES (179, 12, 46, -2, 1, 'Pesanan Diproses', '', NULL, '2021-08-31 09:17:10', '2021-08-31 09:17:10');
INSERT INTO `order_history` VALUES (180, 13, 42, -2, 1, '', 'JD0137447770', NULL, '2021-08-31 09:18:47', '2021-08-31 09:18:47');
INSERT INTO `order_history` VALUES (181, 12, 43, -2, 1, '', '', NULL, '2021-08-31 11:24:26', '2021-08-31 11:24:26');
INSERT INTO `order_history` VALUES (182, 11, 44, 0, 1, 'Status pembayaran untuk order #44 : KADALUARSA', '', NULL, '2021-08-31 11:25:52', '2021-08-31 11:25:52');
INSERT INTO `order_history` VALUES (183, 4, 47, 0, 1, 'Status pembayaran untuk order #47 : PENDING', '', NULL, '2021-08-31 14:19:37', '2021-08-31 14:19:37');
INSERT INTO `order_history` VALUES (184, 10, 47, 0, 1, 'Status pembayaran untuk order #47 : SETTLEMENT', '', NULL, '2021-08-31 14:20:20', '2021-08-31 14:20:20');
INSERT INTO `order_history` VALUES (185, 4, 47, 0, 1, 'Status pembayaran untuk order #47 : PENDING', '', NULL, '2021-08-31 14:20:37', '2021-08-31 14:20:37');
INSERT INTO `order_history` VALUES (186, 10, 47, -2, 1, '', '', NULL, '2021-08-31 15:15:16', '2021-08-31 15:15:16');
INSERT INTO `order_history` VALUES (187, 12, 47, -2, 1, '', '', NULL, '2021-08-31 15:15:26', '2021-08-31 15:15:26');
INSERT INTO `order_history` VALUES (188, 13, 43, -2, 1, '', '010760185601721', NULL, '2021-09-01 09:20:37', '2021-09-01 09:20:37');
INSERT INTO `order_history` VALUES (189, 13, 44, -2, 1, '', '010760185603521', NULL, '2021-09-01 09:23:13', '2021-09-01 09:23:13');
INSERT INTO `order_history` VALUES (190, 13, 45, -2, 1, '', '010760185603521', NULL, '2021-09-01 09:25:03', '2021-09-01 09:25:03');
INSERT INTO `order_history` VALUES (191, 13, 46, -2, 1, '', '001557903024', NULL, '2021-09-01 09:26:35', '2021-09-01 09:26:35');
INSERT INTO `order_history` VALUES (192, 13, 47, -2, 1, '', 'JD0138183404', NULL, '2021-09-01 09:27:58', '2021-09-01 09:27:58');
INSERT INTO `order_history` VALUES (193, 14, 42, -2, 1, '', '', NULL, '2021-09-01 09:29:29', '2021-09-01 09:29:29');
INSERT INTO `order_history` VALUES (194, 11, 44, 0, 0, 'Pesanan dibatalkan oleh system', '', NULL, '2021-09-02 10:17:10', '2021-09-02 10:17:10');
INSERT INTO `order_history` VALUES (195, 4, 49, 0, 1, 'Status pembayaran untuk order #49 : PENDING', '', NULL, '2021-09-02 13:22:45', '2021-09-02 13:22:45');
INSERT INTO `order_history` VALUES (196, 4, 49, 0, 1, 'Status pembayaran untuk order #49 : PENDING', '', NULL, '2021-09-02 13:23:25', '2021-09-02 13:23:25');
INSERT INTO `order_history` VALUES (197, 11, 50, -2, 1, '', '', NULL, '2021-09-02 16:12:50', '2021-09-02 16:12:50');
INSERT INTO `order_history` VALUES (198, 10, 49, 0, 1, 'Status pembayaran untuk order #49 : SETTLEMENT', '', NULL, '2021-09-02 18:11:34', '2021-09-02 18:11:34');
INSERT INTO `order_history` VALUES (199, 11, 48, -2, 1, '', '', NULL, '2021-09-02 20:01:01', '2021-09-02 20:01:01');
INSERT INTO `order_history` VALUES (200, 12, 49, -2, 1, 'Pesanan Diproses', '', NULL, '2021-09-03 09:20:55', '2021-09-03 09:20:55');
INSERT INTO `order_history` VALUES (201, 4, 51, 0, 1, 'Status pembayaran untuk order #51 : PENDING', '', NULL, '2021-09-04 19:02:15', '2021-09-04 19:02:15');
INSERT INTO `order_history` VALUES (202, 10, 51, 0, 1, 'Status pembayaran untuk order #51 : SETTLEMENT', '', NULL, '2021-09-04 19:03:04', '2021-09-04 19:03:04');
INSERT INTO `order_history` VALUES (203, 4, 51, 0, 1, 'Status pembayaran untuk order #51 : PENDING', '', NULL, '2021-09-04 19:03:32', '2021-09-04 19:03:32');
INSERT INTO `order_history` VALUES (204, 10, 51, 0, 0, 'Pembayaran terkonfirmasi lunas, menunggu konfirmasi dari seller', '', NULL, '2021-09-04 19:05:02', '2021-09-04 19:05:02');
INSERT INTO `order_history` VALUES (205, 12, 51, -2, 1, 'Pesanan Diproses', '', NULL, '2021-09-06 09:14:57', '2021-09-06 09:14:57');
INSERT INTO `order_history` VALUES (206, 13, 49, -2, 1, '', 'JD0138694382', NULL, '2021-09-06 13:00:55', '2021-09-06 13:00:55');
INSERT INTO `order_history` VALUES (207, 13, 49, -2, 1, '', 'JD0138694382', NULL, '2021-09-06 13:01:33', '2021-09-06 13:01:33');
INSERT INTO `order_history` VALUES (208, 14, 49, -2, 1, '', '', NULL, '2021-09-06 13:02:28', '2021-09-06 13:02:28');
INSERT INTO `order_history` VALUES (209, 14, 45, -2, 1, '', '', NULL, '2021-09-06 14:49:12', '2021-09-06 14:49:12');
INSERT INTO `order_history` VALUES (210, 14, 46, -2, 1, '', '', NULL, '2021-09-06 14:50:53', '2021-09-06 14:50:53');
INSERT INTO `order_history` VALUES (211, 14, 43, -2, 1, '', '', NULL, '2021-09-06 14:51:58', '2021-09-06 14:51:58');
INSERT INTO `order_history` VALUES (212, 14, 47, -2, 1, '', '', NULL, '2021-09-06 14:53:12', '2021-09-06 14:53:12');
INSERT INTO `order_history` VALUES (213, 13, 51, -2, 1, '', '001557903177', NULL, '2021-09-07 12:44:15', '2021-09-07 12:44:15');
INSERT INTO `order_history` VALUES (214, 4, 52, 0, 1, 'Status pembayaran untuk order #52 : PENDING', '', NULL, '2021-09-07 20:25:48', '2021-09-07 20:25:48');
INSERT INTO `order_history` VALUES (215, 4, 52, 0, 1, 'Status pembayaran untuk order #52 : PENDING', '', NULL, '2021-09-07 20:25:51', '2021-09-07 20:25:51');
INSERT INTO `order_history` VALUES (216, 10, 52, 0, 1, 'Status pembayaran untuk order #52 : SETTLEMENT', '', NULL, '2021-09-07 20:44:37', '2021-09-07 20:44:37');
INSERT INTO `order_history` VALUES (217, 12, 52, -2, 1, 'Pesanan Diproses', '', NULL, '2021-09-08 09:14:13', '2021-09-08 09:14:13');

-- ----------------------------
-- Table structure for order_product
-- ----------------------------
DROP TABLE IF EXISTS `order_product`;
CREATE TABLE `order_product`  (
  `order_product_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL DEFAULT 0,
  `product_id` int NOT NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `sku` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `quantity` int NOT NULL DEFAULT 0,
  `price` decimal(15, 2) NOT NULL DEFAULT 0.00,
  `price_base` decimal(15, 2) NOT NULL DEFAULT 0.00,
  `total` decimal(15, 2) NOT NULL DEFAULT 0.00,
  `total_base` decimal(15, 2) NOT NULL DEFAULT 0.00,
  `tax` decimal(15, 2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`order_product_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 141 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_product
-- ----------------------------
INSERT INTO `order_product` VALUES (1, -1, 585, 'MAGIC CLIP BLADE SET', '', 32, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO `order_product` VALUES (2, -1, 575, 'BALDING CORDED CLIPPER', '', 34, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO `order_product` VALUES (3, -1, 587, 'MAGIC CLIP C/C BLADE SET', '', 37, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO `order_product` VALUES (4, -1, 576, 'FINALE SHAVER', '', 39, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO `order_product` VALUES (5, -1, 586, 'TAPER BLADE SET PLATED', '', 42, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO `order_product` VALUES (6, -1, 582, 'DETAILER CORDED TRIMMER', '', 46, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO `order_product` VALUES (7, -1, 574, 'MAGIC CLIP CORDED CLIPPER', '', 47, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO `order_product` VALUES (8, -1, 579, 'SUPER TAPER CORDED CLIPPER', '', 48, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO `order_product` VALUES (9, -1, 584, 'LEGEND BLADE SET INTL', '', 50, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO `order_product` VALUES (10, -1, 571, 'LEGEND CORDED CLIPPER', '', 55, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO `order_product` VALUES (11, -1, 581, 'MAGIC CLIP CORDLESS CLIPPER', '', 59, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO `order_product` VALUES (12, -1, 577, 'BERET CORDLESS TRIMMER', '', 63, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO `order_product` VALUES (13, -1, 583, 'SUPER TAPER CORDLESS CLIPPER', '', 66, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO `order_product` VALUES (14, -1, 580, 'SENIOR CORDLESS CLIPPER', '', 71, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO `order_product` VALUES (15, -1, 578, 'DETAILER LI CORDLESS TRIMMER', '', 78, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO `order_product` VALUES (16, -1, 588, 'T-WIDE BLADE SET DETAILER', '', 31, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO `order_product` VALUES (17, -1, 589, 'MAG CLIPPER BLADE SET', '', 34, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO `order_product` VALUES (18, -1, 590, 'WAHL CLIPPER OIL', '', 37, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO `order_product` VALUES (49, 1, 571, 'LEGEND CLIPPER', '3-02-8147', 1, 1090000.00, 1090000.00, 1090000.00, 1090000.00, 0.00);
INSERT INTO `order_product` VALUES (52, 2, 578, 'DETAILER LI CORDLESS TRIMMER', '5-03-8171', 1, 2100000.00, 2100000.00, 2100000.00, 2100000.00, 0.00);
INSERT INTO `order_product` VALUES (53, 3, 582, 'DETAILER TRIMMER', '5-01-8081', 1, 1250000.00, 1250000.00, 1250000.00, 1250000.00, 0.00);
INSERT INTO `order_product` VALUES (54, 4, 579, 'SUPER TAPER CLIPPER', '3-01-3466', 1, 790000.00, 790000.00, 790000.00, 790000.00, 0.00);
INSERT INTO `order_product` VALUES (55, 5, 579, 'SUPER TAPER CLIPPER', '3-01-3466', 1, 790000.00, 790000.00, 790000.00, 790000.00, 0.00);
INSERT INTO `order_product` VALUES (56, 6, 583, 'SUPER TAPER CORDLESS CLIPPER', '3-06-8591', 1, 1600000.00, 1600000.00, 1600000.00, 1600000.00, 0.00);
INSERT INTO `order_product` VALUES (59, 7, 578, 'DETAILER LI CORDLESS TRIMMER', '5-03-8171', 1, 2100000.00, 2100000.00, 2100000.00, 2100000.00, 0.00);
INSERT INTO `order_product` VALUES (62, 8, 582, 'DETAILER TRIMMER', '5-01-8081', 1, 1250000.00, 1250000.00, 1250000.00, 1250000.00, 0.00);
INSERT INTO `order_product` VALUES (63, 8, 571, 'LEGEND CLIPPER', '3-02-8147', 1, 1090000.00, 1090000.00, 1090000.00, 1090000.00, 0.00);
INSERT INTO `order_product` VALUES (67, 9, 584, 'LEGEND BLADE SET INTL', '7-06-2228', 1, 275000.00, 275000.00, 275000.00, 275000.00, 0.00);
INSERT INTO `order_product` VALUES (70, -1, 591, 'PACIFIC BLU COMBO (SUPER TAPER + BERET)', '3-02-8592', 5, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO `order_product` VALUES (71, 10, 591, 'PACIFIC BLU COMBO (SUPER TAPER + BERET)', '3-02-8592', 1, 1990000.00, 1990000.00, 1990000.00, 1990000.00, 0.00);
INSERT INTO `order_product` VALUES (74, 11, 577, 'BERET CORDLESS TRIMMER', '5-02-8841', 1, 1290000.00, 1290000.00, 1290000.00, 1290000.00, 0.00);
INSERT INTO `order_product` VALUES (75, 12, 577, 'BERET CORDLESS TRIMMER', '5-02-8841', 1, 1290000.00, 1290000.00, 1290000.00, 1290000.00, 0.00);
INSERT INTO `order_product` VALUES (76, 13, 571, 'LEGEND CLIPPER', '3-02-8147', 1, 1090000.00, 1090000.00, 1090000.00, 1090000.00, 0.00);
INSERT INTO `order_product` VALUES (78, 14, 571, 'LEGEND CLIPPER', '3-02-8147', 1, 1090000.00, 1090000.00, 1090000.00, 1090000.00, 0.00);
INSERT INTO `order_product` VALUES (79, 15, 591, 'PACIFIC BLU COMBO (SUPER TAPER + BERET)', '3-02-8592', 1, 1990000.00, 1990000.00, 1990000.00, 1990000.00, 0.00);
INSERT INTO `order_product` VALUES (80, 16, 579, 'SUPER TAPER CLIPPER', '3-01-3466', 1, 790000.00, 790000.00, 790000.00, 790000.00, 0.00);
INSERT INTO `order_product` VALUES (81, 17, 583, 'SUPER TAPER CORDLESS CLIPPER', '3-06-8591', 1, 1600000.00, 1600000.00, 1600000.00, 1600000.00, 0.00);
INSERT INTO `order_product` VALUES (82, 18, 583, 'SUPER TAPER CORDLESS CLIPPER', '3-06-8591', 1, 1600000.00, 1600000.00, 1600000.00, 1600000.00, 0.00);
INSERT INTO `order_product` VALUES (84, 19, 579, 'SUPER TAPER CLIPPER', '3-01-3466', 1, 790000.00, 790000.00, 790000.00, 790000.00, 0.00);
INSERT INTO `order_product` VALUES (85, 20, 579, 'SUPER TAPER CLIPPER', '3-01-3466', 1, 790000.00, 790000.00, 790000.00, 790000.00, 0.00);
INSERT INTO `order_product` VALUES (86, 21, 586, 'TAPER BLADE SET PLATED', '7-01-1006', 1, 265000.00, 265000.00, 265000.00, 265000.00, 0.00);
INSERT INTO `order_product` VALUES (87, 22, 579, 'SUPER TAPER CLIPPER', '3-01-3466', 1, 790000.00, 790000.00, 790000.00, 790000.00, 0.00);
INSERT INTO `order_product` VALUES (88, 23, 580, 'SENIOR CORDLESS CLIPPER', '3-08-8504', 1, 2300000.00, 2300000.00, 2300000.00, 2300000.00, 0.00);
INSERT INTO `order_product` VALUES (89, 24, 579, 'SUPER TAPER CLIPPER', '3-01-3466', 1, 790000.00, 790000.00, 790000.00, 790000.00, 0.00);
INSERT INTO `order_product` VALUES (90, 25, 579, 'SUPER TAPER CLIPPER', '3-01-3466', 1, 790000.00, 790000.00, 790000.00, 790000.00, 0.00);
INSERT INTO `order_product` VALUES (96, 26, 579, 'SUPER TAPER CLIPPER', '3-01-3466', 1, 790000.00, 790000.00, 790000.00, 790000.00, 0.00);
INSERT INTO `order_product` VALUES (97, 27, 579, 'SUPER TAPER CLIPPER', '3-01-3466', 1, 790000.00, 790000.00, 790000.00, 790000.00, 0.00);
INSERT INTO `order_product` VALUES (98, 28, 579, 'SUPER TAPER CLIPPER', '3-01-3466', 1, 790000.00, 790000.00, 790000.00, 790000.00, 0.00);
INSERT INTO `order_product` VALUES (99, 29, 571, 'LEGEND CLIPPER', '3-02-8147', 1, 875000.00, 875000.00, 875000.00, 875000.00, 0.00);
INSERT INTO `order_product` VALUES (100, 30, 579, 'SUPER TAPER CLIPPER', '3-01-3466', 1, 690000.00, 690000.00, 690000.00, 690000.00, 0.00);
INSERT INTO `order_product` VALUES (102, 31, 586, 'TAPER BLADE SET PLATED', '7-01-1006', 1, 265000.00, 265000.00, 265000.00, 265000.00, 0.00);
INSERT INTO `order_product` VALUES (103, 32, 586, 'TAPER BLADE SET PLATED', '7-01-1006', 1, 265000.00, 265000.00, 265000.00, 265000.00, 0.00);
INSERT INTO `order_product` VALUES (104, 33, 579, 'SUPER TAPER CLIPPER', '3-01-3466', 1, 790000.00, 790000.00, 790000.00, 790000.00, 0.00);
INSERT INTO `order_product` VALUES (105, 34, 581, 'MAGIC CLIP CORDLESS CLIPPER', '3-07-8148', 1, 1750000.00, 1750000.00, 1750000.00, 1750000.00, 0.00);
INSERT INTO `order_product` VALUES (109, 35, 581, 'MAGIC CLIP CORDLESS CLIPPER', '3-07-8148', 1, 1750000.00, 1750000.00, 1750000.00, 1750000.00, 0.00);
INSERT INTO `order_product` VALUES (111, 36, 581, 'MAGIC CLIP CORDLESS CLIPPER', '3-07-8148', 1, 1750000.00, 1750000.00, 1750000.00, 1750000.00, 0.00);
INSERT INTO `order_product` VALUES (112, 37, 579, 'SUPER TAPER CLIPPER', '3-01-3466', 1, 790000.00, 790000.00, 790000.00, 790000.00, 0.00);
INSERT INTO `order_product` VALUES (113, 38, 586, 'TAPER BLADE SET PLATED', '7-01-1006', 1, 265000.00, 265000.00, 265000.00, 265000.00, 0.00);
INSERT INTO `order_product` VALUES (114, 39, 592, 'MAGIC CLIP CORDLESS - BLACK & GOLD', '3-02-8592', 1, 1750000.00, 1750000.00, 1750000.00, 1750000.00, 0.00);
INSERT INTO `order_product` VALUES (119, 40, 578, 'DETAILER LI CORDLESS TRIMMER', '5-03-8171', 2, 1680000.00, 1680000.00, 3360000.00, 3360000.00, 0.00);
INSERT INTO `order_product` VALUES (120, 40, 592, 'MAGIC CLIP CORDLESS - BLACK & GOLD', '3-02-8592', 2, 1750000.00, 1750000.00, 3500000.00, 3500000.00, 0.00);
INSERT INTO `order_product` VALUES (121, 40, 576, 'FINALE SHAVER', '6-01-8164', 2, 1500000.00, 1500000.00, 3000000.00, 3000000.00, 0.00);
INSERT INTO `order_product` VALUES (122, 40, 590, 'WAHL OIL BOTTLE 4 OZ', '', 3, 45000.00, 45000.00, 135000.00, 135000.00, 0.00);
INSERT INTO `order_product` VALUES (123, 41, 578, 'DETAILER LI CORDLESS TRIMMER', '5-03-8171', 2, 1680000.00, 1680000.00, 3360000.00, 3360000.00, 0.00);
INSERT INTO `order_product` VALUES (124, 41, 576, 'FINALE SHAVER', '6-01-8164', 2, 1500000.00, 1500000.00, 3000000.00, 3000000.00, 0.00);
INSERT INTO `order_product` VALUES (125, 41, 587, 'MAGIC CLIP C/C BLADE SET', '7-03-2161', 2, 275000.00, 275000.00, 550000.00, 550000.00, 0.00);
INSERT INTO `order_product` VALUES (126, 41, 588, 'T-WIDE BLADE SET DETAILER', '', 2, 350000.00, 350000.00, 700000.00, 700000.00, 0.00);
INSERT INTO `order_product` VALUES (127, 41, 592, 'MAGIC CLIP CORDLESS - BLACK & GOLD', '3-02-8592', 2, 1750000.00, 1750000.00, 3500000.00, 3500000.00, 0.00);
INSERT INTO `order_product` VALUES (128, 42, 591, 'PACIFIC BLU COMBO (SUPER TAPER + BERET)', '3-02-8592', 1, 1990000.00, 1990000.00, 1990000.00, 1990000.00, 0.00);
INSERT INTO `order_product` VALUES (129, 42, 587, 'MAGIC CLIP C/C BLADE SET', '7-03-2161', 1, 275000.00, 275000.00, 275000.00, 275000.00, 0.00);
INSERT INTO `order_product` VALUES (130, 43, 571, 'LEGEND CLIPPER', '3-02-8147', 1, 1090000.00, 1090000.00, 1090000.00, 1090000.00, 0.00);
INSERT INTO `order_product` VALUES (131, 43, 590, 'WAHL OIL BOTTLE 4 OZ', '', 1, 45000.00, 45000.00, 45000.00, 45000.00, 0.00);
INSERT INTO `order_product` VALUES (132, 44, 579, 'SUPER TAPER CLIPPER', '3-01-3466', 1, 790000.00, 790000.00, 790000.00, 790000.00, 0.00);
INSERT INTO `order_product` VALUES (133, 45, 579, 'SUPER TAPER CLIPPER', '3-01-3466', 1, 790000.00, 790000.00, 790000.00, 790000.00, 0.00);
INSERT INTO `order_product` VALUES (134, 46, 579, 'SUPER TAPER CLIPPER', '3-01-3466', 1, 790000.00, 790000.00, 790000.00, 790000.00, 0.00);
INSERT INTO `order_product` VALUES (135, 47, 579, 'SUPER TAPER CLIPPER', '3-01-3466', 1, 790000.00, 790000.00, 790000.00, 790000.00, 0.00);
INSERT INTO `order_product` VALUES (136, 48, 590, 'WAHL OIL BOTTLE 4 OZ', '', 2, 45000.00, 45000.00, 90000.00, 90000.00, 0.00);
INSERT INTO `order_product` VALUES (137, 49, 590, 'WAHL OIL BOTTLE 4 OZ', '', 2, 45000.00, 45000.00, 90000.00, 90000.00, 0.00);
INSERT INTO `order_product` VALUES (138, 50, 590, 'WAHL OIL BOTTLE 4 OZ', '', 1, 45000.00, 45000.00, 45000.00, 45000.00, 0.00);
INSERT INTO `order_product` VALUES (139, 51, 582, 'DETAILER TRIMMER', '5-01-8081', 1, 1250000.00, 1250000.00, 1250000.00, 1250000.00, 0.00);
INSERT INTO `order_product` VALUES (140, 52, 578, 'DETAILER LI CORDLESS TRIMMER', '5-03-8171', 1, 1680000.00, 1680000.00, 1680000.00, 1680000.00, 0.00);

-- ----------------------------
-- Table structure for order_product_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_product_detail`;
CREATE TABLE `order_product_detail`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `product_code` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 112 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_product_detail
-- ----------------------------
INSERT INTO `order_product_detail` VALUES (4, 1, 571, NULL);
INSERT INTO `order_product_detail` VALUES (7, 2, 578, NULL);
INSERT INTO `order_product_detail` VALUES (8, 3, 582, NULL);
INSERT INTO `order_product_detail` VALUES (9, 4, 579, 'W12210806');
INSERT INTO `order_product_detail` VALUES (10, 5, 579, NULL);
INSERT INTO `order_product_detail` VALUES (11, 6, 583, NULL);
INSERT INTO `order_product_detail` VALUES (14, 7, 578, NULL);
INSERT INTO `order_product_detail` VALUES (17, 8, 582, 'W12204182');
INSERT INTO `order_product_detail` VALUES (18, 8, 571, 'W12204755');
INSERT INTO `order_product_detail` VALUES (22, 9, 584, NULL);
INSERT INTO `order_product_detail` VALUES (25, 10, 591, NULL);
INSERT INTO `order_product_detail` VALUES (28, 11, 577, NULL);
INSERT INTO `order_product_detail` VALUES (29, 12, 577, NULL);
INSERT INTO `order_product_detail` VALUES (30, 13, 571, NULL);
INSERT INTO `order_product_detail` VALUES (32, 14, 571, NULL);
INSERT INTO `order_product_detail` VALUES (33, 15, 591, 'W12214476');
INSERT INTO `order_product_detail` VALUES (34, 16, 579, 'W12207099');
INSERT INTO `order_product_detail` VALUES (35, 17, 583, NULL);
INSERT INTO `order_product_detail` VALUES (36, 18, 583, 'W12205227');
INSERT INTO `order_product_detail` VALUES (38, 19, 579, 'W12219907');
INSERT INTO `order_product_detail` VALUES (39, 20, 579, NULL);
INSERT INTO `order_product_detail` VALUES (40, 21, 586, NULL);
INSERT INTO `order_product_detail` VALUES (41, 22, 579, NULL);
INSERT INTO `order_product_detail` VALUES (42, 23, 580, 'W12207338');
INSERT INTO `order_product_detail` VALUES (43, 24, 579, NULL);
INSERT INTO `order_product_detail` VALUES (44, 25, 579, NULL);
INSERT INTO `order_product_detail` VALUES (50, 26, 579, 'W12219912');
INSERT INTO `order_product_detail` VALUES (51, 27, 579, 'W12219913');
INSERT INTO `order_product_detail` VALUES (52, 28, 579, 'W12219914');
INSERT INTO `order_product_detail` VALUES (53, 29, 571, 'W12223391');
INSERT INTO `order_product_detail` VALUES (54, 30, 579, NULL);
INSERT INTO `order_product_detail` VALUES (56, 31, 586, NULL);
INSERT INTO `order_product_detail` VALUES (57, 32, 586, 'W000000');
INSERT INTO `order_product_detail` VALUES (58, 33, 579, 'W12224414');
INSERT INTO `order_product_detail` VALUES (59, 34, 581, NULL);
INSERT INTO `order_product_detail` VALUES (63, 35, 581, NULL);
INSERT INTO `order_product_detail` VALUES (65, 36, 581, 'W12222127');
INSERT INTO `order_product_detail` VALUES (66, 37, 579, NULL);
INSERT INTO `order_product_detail` VALUES (67, 38, 586, 'W000001');
INSERT INTO `order_product_detail` VALUES (68, 39, 592, 'W12213915');
INSERT INTO `order_product_detail` VALUES (78, 40, 578, NULL);
INSERT INTO `order_product_detail` VALUES (79, 40, 578, NULL);
INSERT INTO `order_product_detail` VALUES (80, 40, 592, NULL);
INSERT INTO `order_product_detail` VALUES (81, 40, 592, NULL);
INSERT INTO `order_product_detail` VALUES (82, 40, 576, NULL);
INSERT INTO `order_product_detail` VALUES (83, 40, 576, NULL);
INSERT INTO `order_product_detail` VALUES (84, 40, 590, NULL);
INSERT INTO `order_product_detail` VALUES (85, 40, 590, NULL);
INSERT INTO `order_product_detail` VALUES (86, 40, 590, NULL);
INSERT INTO `order_product_detail` VALUES (87, 41, 578, NULL);
INSERT INTO `order_product_detail` VALUES (88, 41, 578, NULL);
INSERT INTO `order_product_detail` VALUES (89, 41, 576, NULL);
INSERT INTO `order_product_detail` VALUES (90, 41, 576, NULL);
INSERT INTO `order_product_detail` VALUES (91, 41, 587, NULL);
INSERT INTO `order_product_detail` VALUES (92, 41, 587, NULL);
INSERT INTO `order_product_detail` VALUES (93, 41, 588, NULL);
INSERT INTO `order_product_detail` VALUES (94, 41, 588, NULL);
INSERT INTO `order_product_detail` VALUES (95, 41, 592, NULL);
INSERT INTO `order_product_detail` VALUES (96, 41, 592, NULL);
INSERT INTO `order_product_detail` VALUES (97, 42, 591, 'W12214790');
INSERT INTO `order_product_detail` VALUES (98, 42, 587, 'W00000000');
INSERT INTO `order_product_detail` VALUES (99, 43, 571, 'W12221511');
INSERT INTO `order_product_detail` VALUES (100, 43, 590, 'W0000000');
INSERT INTO `order_product_detail` VALUES (101, 44, 579, 'WW12224352');
INSERT INTO `order_product_detail` VALUES (102, 45, 579, 'W12224352');
INSERT INTO `order_product_detail` VALUES (103, 46, 579, 'W12224351');
INSERT INTO `order_product_detail` VALUES (104, 47, 579, 'W12224346');
INSERT INTO `order_product_detail` VALUES (105, 48, 590, NULL);
INSERT INTO `order_product_detail` VALUES (106, 48, 590, NULL);
INSERT INTO `order_product_detail` VALUES (107, 49, 590, 'W00002');
INSERT INTO `order_product_detail` VALUES (108, 49, 590, 'W00003');
INSERT INTO `order_product_detail` VALUES (109, 50, 590, NULL);
INSERT INTO `order_product_detail` VALUES (110, 51, 582, 'W12204183');
INSERT INTO `order_product_detail` VALUES (111, 52, 578, 'W12200682');

-- ----------------------------
-- Table structure for order_product_rating
-- ----------------------------
DROP TABLE IF EXISTS `order_product_rating`;
CREATE TABLE `order_product_rating`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `rating_date` datetime NULL DEFAULT NULL,
  `value` int NOT NULL,
  `notes` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `photo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `response_date` datetime NULL DEFAULT NULL,
  `response` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `dummy_name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 193 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_product_rating
-- ----------------------------
INSERT INTO `order_product_rating` VALUES (1, -1, 578, '2021-02-08 14:00:00', 5, 'berfungsi dgn baik.....trmksh', NULL, '2021-02-08 14:16:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Herman');
INSERT INTO `order_product_rating` VALUES (2, -1, 578, '2021-01-29 10:43:00', 5, 'sesuai harganya', NULL, '2021-01-29 10:49:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Ahmad');
INSERT INTO `order_product_rating` VALUES (3, -1, 578, '2021-01-12 16:42:00', 4, '', NULL, '2021-01-12 18:32:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Masmur');
INSERT INTO `order_product_rating` VALUES (4, -1, 578, '2020-12-21 10:22:00', 5, '', NULL, '2020-12-21 10:49:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Lia');
INSERT INTO `order_product_rating` VALUES (5, -1, 578, '2020-11-30 19:41:00', 5, 'barang sesui pesanan', NULL, '2020-11-30 19:59:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Chandra');
INSERT INTO `order_product_rating` VALUES (6, -1, 577, '2021-02-04 13:23:00', 5, 'fast respon', NULL, '2021-02-04 16:36:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Ediyanto');
INSERT INTO `order_product_rating` VALUES (7, -1, 577, '2021-01-16 09:22:00', 5, 'berfungsi dengan baik terima kasih', NULL, '2021-01-16 12:37:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Azis');
INSERT INTO `order_product_rating` VALUES (8, -1, 577, '2020-12-29 15:11:00', 5, 'Barang oke, bahannya bagus solid. Mantapp dehh', NULL, '2020-12-29 15:44:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Maulana');
INSERT INTO `order_product_rating` VALUES (9, -1, 577, '2020-11-24 14:12:00', 4, '', NULL, '2020-11-24 14:37:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Sofyan');
INSERT INTO `order_product_rating` VALUES (10, -1, 577, '2020-11-04 17:55:00', 4, '', NULL, '2020-11-04 18:32:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Dara');
INSERT INTO `order_product_rating` VALUES (11, -1, 580, '2021-02-10 17:23:00', 5, '', NULL, '2021-02-10 17:45:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Junianto');
INSERT INTO `order_product_rating` VALUES (12, -1, 580, '2021-01-27 19:42:00', 5, 'mantap', NULL, '2021-01-27 19:56:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Firda');
INSERT INTO `order_product_rating` VALUES (13, -1, 580, '2021-01-08 12:14:00', 5, '', NULL, '2021-01-08 12:44:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Najma');
INSERT INTO `order_product_rating` VALUES (14, -1, 580, '2020-12-21 09:34:00', 4, '', NULL, '2020-12-21 11:34:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Stefany');
INSERT INTO `order_product_rating` VALUES (15, -1, 580, '2020-11-19 11:31:00', 5, 'produk bagus, amannn', NULL, '2020-11-19 14:17:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Dharma');
INSERT INTO `order_product_rating` VALUES (16, -1, 583, '2021-02-09 10:38:00', 5, 'lumayan', NULL, '2021-02-09 10:49:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Nugraha');
INSERT INTO `order_product_rating` VALUES (17, -1, 583, '2021-01-15 11:15:00', 5, '', NULL, '2021-01-15 13:38:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Hasyim');
INSERT INTO `order_product_rating` VALUES (18, -1, 583, '2020-12-28 09:21:00', 5, '', NULL, '2020-12-28 10:33:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Yusuf');
INSERT INTO `order_product_rating` VALUES (19, -1, 583, '2020-12-11 10:41:00', 4, '', NULL, '2020-12-11 10:53:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Raihan');
INSERT INTO `order_product_rating` VALUES (20, -1, 583, '2020-12-02 11:20:00', 5, 'puas banget, barang juga ok', NULL, '2020-12-02 11:45:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Ali');
INSERT INTO `order_product_rating` VALUES (21, -1, 571, '2021-02-02 09:29:00', 5, 'berfungsi dgn baik.....trmksh', NULL, '2021-02-02 10:19:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Angeline');
INSERT INTO `order_product_rating` VALUES (22, -1, 571, '2021-01-12 12:34:00', 4, 'sesuai harganya', NULL, '2021-01-12 14:21:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Leo');
INSERT INTO `order_product_rating` VALUES (23, -1, 571, '2020-12-22 11:34:00', 5, '', NULL, '2020-12-22 14:13:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Andi');
INSERT INTO `order_product_rating` VALUES (24, -1, 571, '2020-12-08 09:37:00', 4, '', NULL, '2020-12-08 10:40:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Amanda');
INSERT INTO `order_product_rating` VALUES (25, -1, 571, '2020-11-17 11:30:00', 5, 'puas banget, barang juga ok', NULL, '2020-11-17 11:51:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Clara');
INSERT INTO `order_product_rating` VALUES (26, -1, 581, '2021-01-26 09:38:00', 5, 'berfungsi dgn baik.....trmksh', NULL, '2021-01-26 09:47:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Tony');
INSERT INTO `order_product_rating` VALUES (27, -1, 581, '2021-01-12 12:45:00', 5, 'sesuai harganya', NULL, '2021-01-12 13:31:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Hanafiah');
INSERT INTO `order_product_rating` VALUES (28, -1, 581, '2020-12-15 11:44:00', 4, '', NULL, '2020-12-15 12:20:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Riko');
INSERT INTO `order_product_rating` VALUES (29, -1, 581, '2020-12-11 14:53:00', 4, '', NULL, '2020-12-11 15:29:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Ilham');
INSERT INTO `order_product_rating` VALUES (30, -1, 579, '2021-01-11 10:34:00', 5, 'Packing rapi pakai bubble wrap dan pengiriman cepat. Semoga berfungsi dengan baik dan awet. Terima kasih seller', NULL, '2021-01-11 11:26:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Bilqis');
INSERT INTO `order_product_rating` VALUES (31, -1, 579, '2020-12-18 19:03:00', 5, 'Oke', NULL, '2020-12-19 09:29:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Norman');
INSERT INTO `order_product_rating` VALUES (32, -1, 579, '2020-12-02 15:47:00', 5, '', NULL, '2020-12-02 16:26:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Denny');
INSERT INTO `order_product_rating` VALUES (33, -1, 579, '2020-11-20 09:31:00', 5, '', NULL, '2020-11-20 12:13:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Elfansyah');
INSERT INTO `order_product_rating` VALUES (34, -1, 584, '2021-01-12 09:36:00', 4, '', NULL, '2021-01-12 11:17:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Restu');
INSERT INTO `order_product_rating` VALUES (35, -1, 584, '2020-12-15 11:37:00', 5, 'Mantaab', NULL, '2020-12-15 11:49:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Arief');
INSERT INTO `order_product_rating` VALUES (36, -1, 584, '2020-12-10 09:34:00', 5, 'Packing Rapi, barangnya datang cepat, rekomended pokoknya', NULL, '2020-12-10 09:53:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Maulana');
INSERT INTO `order_product_rating` VALUES (37, -1, 584, '2020-11-10 14:40:00', 5, 'Bagus', NULL, '2020-11-10 15:17:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Ahmad');
INSERT INTO `order_product_rating` VALUES (38, -1, 574, '2021-01-19 18:38:00', 5, '', NULL, '2021-01-19 19:34:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Hellen');
INSERT INTO `order_product_rating` VALUES (39, -1, 574, '2021-01-12 10:37:00', 4, '', NULL, '2021-01-12 10:48:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Natasya');
INSERT INTO `order_product_rating` VALUES (40, -1, 574, '2020-12-15 14:29:00', 5, 'Barang sudah sampai, langsung di coba berfungsi dgn baik', NULL, '2020-12-15 14:48:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Hilmaa');
INSERT INTO `order_product_rating` VALUES (41, -1, 574, '2020-12-09 16:46:00', 5, 'Barang diterima dalam keadaan baik dan aman. Barang sesuai deskripsi dan foto. Belum dicoba. Respon dan pengiriman baik.', NULL, '2020-12-09 19:28:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Aditya');
INSERT INTO `order_product_rating` VALUES (42, -1, 582, '2021-01-21 14:40:00', 5, 'barang ok.bisa digunakan dg baik', NULL, '2021-01-21 14:47:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Vivi');
INSERT INTO `order_product_rating` VALUES (43, -1, 582, '2020-12-15 12:44:00', 5, '', NULL, '2020-12-15 13:50:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Noviani');
INSERT INTO `order_product_rating` VALUES (44, -1, 582, '2020-11-26 17:43:00', 4, '', NULL, '2020-11-26 17:55:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Putri');
INSERT INTO `order_product_rating` VALUES (45, -1, 582, '2020-11-09 11:25:00', 4, '', NULL, '2020-11-09 11:46:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Raditya');
INSERT INTO `order_product_rating` VALUES (46, -1, 589, '2021-01-19 11:43:00', 5, 'Pengiriman cepat, barang bagus. Trim\'s gan, semoga sukses', NULL, '2021-01-19 11:52:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Stella');
INSERT INTO `order_product_rating` VALUES (47, -1, 589, '2021-01-15 16:34:00', 5, '', NULL, '2021-01-15 16:47:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Manda');
INSERT INTO `order_product_rating` VALUES (48, -1, 589, '2020-12-15 11:11:00', 5, '', NULL, '2020-12-15 12:34:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Zahira');
INSERT INTO `order_product_rating` VALUES (49, -1, 589, '2020-11-24 14:12:00', 4, '', NULL, '2020-11-24 14:46:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Alexander');
INSERT INTO `order_product_rating` VALUES (50, -1, 590, '2021-01-08 14:29:00', 5, 'Brg sesuai,packing bagus', NULL, '2021-01-08 14:48:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Andre');
INSERT INTO `order_product_rating` VALUES (51, -1, 590, '2021-01-20 18:43:00', 5, 'Terimakasih paketnya sudah sampai', NULL, '2021-01-20 18:53:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Ali');
INSERT INTO `order_product_rating` VALUES (52, -1, 590, '2021-01-05 13:22:00', 5, '', NULL, '2021-01-05 13:48:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Yudi');
INSERT INTO `order_product_rating` VALUES (53, -1, 590, '2020-12-08 18:41:00', 5, '', NULL, '2020-12-08 18:54:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Damanhuri');
INSERT INTO `order_product_rating` VALUES (54, -1, 586, '2021-02-03 09:32:00', 4, '', NULL, '2021-02-03 09:52:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Faizan');
INSERT INTO `order_product_rating` VALUES (55, -1, 586, '2020-12-21 11:19:00', 5, 'Recommended', NULL, '2020-12-21 11:37:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Ardiansyah');
INSERT INTO `order_product_rating` VALUES (56, -1, 586, '2020-12-03 16:38:00', 5, 'Pelayanan bagus. Hanya barang belum dicoba', NULL, '2020-12-03 16:48:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Metti');
INSERT INTO `order_product_rating` VALUES (57, -1, 576, '2021-01-16 09:22:00', 5, 'sesuai harganya', NULL, '2021-01-16 09:49:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Melly');
INSERT INTO `order_product_rating` VALUES (58, -1, 576, '2020-12-29 11:46:00', 5, '', NULL, '2020-12-29 12:36:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Regina');
INSERT INTO `order_product_rating` VALUES (59, -1, 576, '2020-11-20 18:44:00', 4, '', NULL, '2020-11-20 18:53:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Nathalia');
INSERT INTO `order_product_rating` VALUES (60, -1, 587, '2021-01-22 11:39:00', 4, 'pengiriman cepat', NULL, '2021-01-22 11:52:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Joko');
INSERT INTO `order_product_rating` VALUES (61, -1, 587, '2021-01-06 09:38:00', 5, 'Barang sesuai harapan', NULL, '2021-01-06 09:52:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Wawan');
INSERT INTO `order_product_rating` VALUES (62, -1, 587, '2020-12-14 16:40:00', 5, 'Barang berfungsi baik', NULL, '2020-12-14 16:56:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Diana');
INSERT INTO `order_product_rating` VALUES (63, -1, 588, '2021-02-01 08:37:00', 5, '', NULL, '2021-02-01 09:45:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Suci');
INSERT INTO `order_product_rating` VALUES (64, -1, 588, '2020-12-23 10:46:00', 4, '', NULL, '2020-12-23 11:34:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Christiano');
INSERT INTO `order_product_rating` VALUES (65, -1, 588, '2020-11-11 10:02:00', 4, 'Ok', NULL, '2020-11-11 12:14:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Arie');
INSERT INTO `order_product_rating` VALUES (66, -1, 575, '2021-02-01 09:29:00', 5, 'Pengiriman cepat, barang sudah si test dan berfungsi dengan baik', NULL, '2021-02-01 11:27:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Ahmad');
INSERT INTO `order_product_rating` VALUES (67, -1, 575, '2021-01-18 15:41:00', 5, 'Barang ok', NULL, '2021-01-18 16:53:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Tommy');
INSERT INTO `order_product_rating` VALUES (68, -1, 575, '2020-12-16 19:32:00', 5, '', NULL, '2020-12-16 19:47:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Nanang');
INSERT INTO `order_product_rating` VALUES (69, -1, 585, '2021-01-20 11:30:00', 4, '', NULL, '2021-01-20 11:50:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Ronald');
INSERT INTO `order_product_rating` VALUES (70, -1, 585, '2020-12-18 12:36:00', 4, 'produknya lumayan', NULL, '2020-12-18 13:42:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Nilla');
INSERT INTO `order_product_rating` VALUES (71, -1, 585, '2020-12-02 09:41:00', 5, 'Trims', NULL, '2020-12-02 11:20:00', 'Terima kasih telah berbelanja di MPM WAHL Indonesia. Bagikan link toko kami <a href=\"http://mpmwahl.id\" target=\"_blank\">mpmwahl.id</a> kepada teman-teman Anda.', 'Danu');
INSERT INTO `order_product_rating` VALUES (102, 1, 571, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (105, 2, 578, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (106, 3, 582, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (107, 4, 579, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (108, 5, 579, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (109, 6, 583, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (112, 7, 578, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (115, 8, 582, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (116, 8, 571, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (120, 9, 584, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (123, 10, 591, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (126, 11, 577, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (127, 12, 577, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (128, 13, 571, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (130, 14, 571, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (131, 15, 591, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (132, 16, 579, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (133, 17, 583, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (134, 18, 583, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (136, 19, 579, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (137, 20, 579, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (138, 21, 586, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (139, 22, 579, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (140, 23, 580, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (141, 24, 579, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (142, 25, 579, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (148, 26, 579, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (149, 27, 579, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (150, 28, 579, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (151, 29, 571, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (152, 30, 579, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (154, 31, 586, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (155, 32, 586, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (156, 33, 579, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (157, 34, 581, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (161, 35, 581, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (163, 36, 581, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (164, 37, 579, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (165, 38, 586, '2021-08-19 16:59:51', 5, 'Belum dicoba tapi pengiriman cepat packing aman, barang juga aman', '', NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (166, 39, 592, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (171, 40, 578, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (172, 40, 592, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (173, 40, 576, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (174, 40, 590, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (175, 41, 578, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (176, 41, 576, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (177, 41, 587, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (178, 41, 588, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (179, 41, 592, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (180, 42, 591, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (181, 42, 587, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (182, 43, 571, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (183, 43, 590, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (184, 44, 579, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (185, 45, 579, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (186, 46, 579, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (187, 47, 579, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (188, 48, 590, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (189, 49, 590, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (190, 50, 590, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (191, 51, 582, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_product_rating` VALUES (192, 52, 578, NULL, 0, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for order_status
-- ----------------------------
DROP TABLE IF EXISTS `order_status`;
CREATE TABLE `order_status`  (
  `order_status_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`order_status_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_status
-- ----------------------------
INSERT INTO `order_status` VALUES (4, 'Menunggu Pembayaran');
INSERT INTO `order_status` VALUES (10, 'Pembayaran Lunas, Menunggu Konfirmasi');
INSERT INTO `order_status` VALUES (11, 'Pesanan Dibatalkan');
INSERT INTO `order_status` VALUES (12, 'Pesanan Diproses');
INSERT INTO `order_status` VALUES (13, 'Pesanan Dikirim');
INSERT INTO `order_status` VALUES (14, 'Pesanan Selesai');

-- ----------------------------
-- Table structure for order_total
-- ----------------------------
DROP TABLE IF EXISTS `order_total`;
CREATE TABLE `order_total`  (
  `order_total_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL DEFAULT 0,
  `code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `text` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `value` decimal(15, 2) NOT NULL DEFAULT 0.00,
  `sort_order` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`order_total_id`) USING BTREE,
  INDEX `idx_orders_total_orders_id`(`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 321 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_total
-- ----------------------------
INSERT INTO `order_total` VALUES (13, 1, 'subtotal', 'Sub Total', 'Rp 1.090.000', 1090000.00, 1);
INSERT INTO `order_total` VALUES (14, 1, 'shipping', 'Biaya Kirim', 'Rp 19.000', 19000.00, 5);
INSERT INTO `order_total` VALUES (15, 1, 'midtrans', 'Biaya Admin', 'Rp 5.000', 5000.00, 7);
INSERT INTO `order_total` VALUES (16, 1, 'total', 'Total', 'Rp 1.114.000', 1114000.00, 8);
INSERT INTO `order_total` VALUES (25, 2, 'subtotal', 'Sub Total', 'Rp 2.100.000', 2100000.00, 1);
INSERT INTO `order_total` VALUES (26, 2, 'shipping', 'Biaya Kirim', 'Rp 17.000', 17000.00, 5);
INSERT INTO `order_total` VALUES (27, 2, 'midtrans', 'Biaya Admin', 'Rp 2.000', 2000.00, 7);
INSERT INTO `order_total` VALUES (28, 2, 'total', 'Total', 'Rp 2.119.000', 2119000.00, 8);
INSERT INTO `order_total` VALUES (29, 3, 'subtotal', 'Sub Total', 'Rp 1.250.000', 1250000.00, 1);
INSERT INTO `order_total` VALUES (30, 3, 'shipping', 'Biaya Kirim', 'Rp 20.000', 20000.00, 5);
INSERT INTO `order_total` VALUES (31, 3, 'midtrans', 'Biaya Admin', 'Rp 4.000', 4000.00, 7);
INSERT INTO `order_total` VALUES (32, 3, 'total', 'Total', 'Rp 1.274.000', 1274000.00, 8);
INSERT INTO `order_total` VALUES (33, 4, 'subtotal', 'Sub Total', 'Rp 790.000', 790000.00, 1);
INSERT INTO `order_total` VALUES (34, 4, 'shipping', 'Biaya Kirim', 'Rp 10.000', 10000.00, 5);
INSERT INTO `order_total` VALUES (35, 4, 'midtrans', 'Biaya Admin', 'Rp 4.000', 4000.00, 7);
INSERT INTO `order_total` VALUES (36, 4, 'total', 'Total', 'Rp 804.000', 804000.00, 8);
INSERT INTO `order_total` VALUES (37, 5, 'subtotal', 'Sub Total', 'Rp 790.000', 790000.00, 1);
INSERT INTO `order_total` VALUES (38, 5, 'shipping', 'Biaya Kirim', 'Rp 20.000', 20000.00, 5);
INSERT INTO `order_total` VALUES (39, 5, 'midtrans', 'Biaya Admin', 'Rp 4.000', 4000.00, 7);
INSERT INTO `order_total` VALUES (40, 5, 'total', 'Total', 'Rp 814.000', 814000.00, 8);
INSERT INTO `order_total` VALUES (41, 6, 'subtotal', 'Sub Total', 'Rp 1.600.000', 1600000.00, 1);
INSERT INTO `order_total` VALUES (42, 6, 'shipping', 'Biaya Kirim', 'Rp 18.000', 18000.00, 5);
INSERT INTO `order_total` VALUES (43, 6, 'midtrans', 'Biaya Admin', 'Rp 32.360', 32360.00, 7);
INSERT INTO `order_total` VALUES (44, 6, 'total', 'Total', 'Rp 1.650.360', 1650360.00, 8);
INSERT INTO `order_total` VALUES (53, 7, 'subtotal', 'Sub Total', 'Rp 2.100.000', 2100000.00, 1);
INSERT INTO `order_total` VALUES (54, 7, 'shipping', 'Biaya Kirim', 'Rp 8.000', 8000.00, 5);
INSERT INTO `order_total` VALUES (55, 7, 'midtrans', 'Biaya Admin', 'Rp 5.000', 5000.00, 7);
INSERT INTO `order_total` VALUES (56, 7, 'total', 'Total', 'Rp 2.113.000', 2113000.00, 8);
INSERT INTO `order_total` VALUES (61, 8, 'subtotal', 'Sub Total', 'Rp 2.340.000', 2340000.00, 1);
INSERT INTO `order_total` VALUES (62, 8, 'shipping', 'Biaya Kirim', 'Rp 32.000', 32000.00, 5);
INSERT INTO `order_total` VALUES (63, 8, 'midtrans', 'Biaya Admin', 'Rp 4.000', 4000.00, 7);
INSERT INTO `order_total` VALUES (64, 8, 'total', 'Total', 'Rp 2.376.000', 2376000.00, 8);
INSERT INTO `order_total` VALUES (77, 9, 'subtotal', 'Sub Total', 'Rp 275.000', 275000.00, 1);
INSERT INTO `order_total` VALUES (78, 9, 'shipping', 'Biaya Kirim', 'Rp 9.000', 9000.00, 5);
INSERT INTO `order_total` VALUES (79, 9, 'midtrans', 'Biaya Admin', 'Rp 4.000', 4000.00, 7);
INSERT INTO `order_total` VALUES (80, 9, 'total', 'Total', 'Rp 288.000', 288000.00, 8);
INSERT INTO `order_total` VALUES (89, 10, 'subtotal', 'Sub Total', 'Rp 1.990.000', 1990000.00, 1);
INSERT INTO `order_total` VALUES (90, 10, 'shipping', 'Biaya Kirim', 'Rp 90.000', 90000.00, 5);
INSERT INTO `order_total` VALUES (91, 10, 'midtrans', 'Biaya Admin', 'Rp 4.000', 4000.00, 7);
INSERT INTO `order_total` VALUES (92, 10, 'total', 'Total', 'Rp 2.084.000', 2084000.00, 8);
INSERT INTO `order_total` VALUES (101, 11, 'subtotal', 'Sub Total', 'Rp 1.290.000', 1290000.00, 1);
INSERT INTO `order_total` VALUES (102, 11, 'shipping', 'Biaya Kirim', 'Rp 9.000', 9000.00, 5);
INSERT INTO `order_total` VALUES (103, 11, 'midtrans', 'Biaya Admin', 'Rp 4.000', 4000.00, 7);
INSERT INTO `order_total` VALUES (104, 11, 'total', 'Total', 'Rp 1.303.000', 1303000.00, 8);
INSERT INTO `order_total` VALUES (105, 12, 'subtotal', 'Sub Total', 'Rp 1.290.000', 1290000.00, 1);
INSERT INTO `order_total` VALUES (106, 12, 'shipping', 'Biaya Kirim', 'Rp 8.000', 8000.00, 5);
INSERT INTO `order_total` VALUES (107, 12, 'midtrans', 'Biaya Admin', 'Rp 4.000', 4000.00, 7);
INSERT INTO `order_total` VALUES (108, 12, 'total', 'Total', 'Rp 1.302.000', 1302000.00, 8);
INSERT INTO `order_total` VALUES (109, 13, 'subtotal', 'Sub Total', 'Rp 1.090.000', 1090000.00, 1);
INSERT INTO `order_total` VALUES (110, 13, 'shipping', 'Biaya Kirim', 'Rp 18.000', 18000.00, 5);
INSERT INTO `order_total` VALUES (111, 13, 'midtrans', 'Biaya Admin', 'Rp 4.000', 4000.00, 7);
INSERT INTO `order_total` VALUES (112, 13, 'total', 'Total', 'Rp 1.112.000', 1112000.00, 8);
INSERT INTO `order_total` VALUES (117, 14, 'subtotal', 'Sub Total', 'Rp 1.090.000', 1090000.00, 1);
INSERT INTO `order_total` VALUES (118, 14, 'shipping', 'Biaya Kirim', 'Rp 18.000', 18000.00, 5);
INSERT INTO `order_total` VALUES (119, 14, 'midtrans', 'Biaya Admin', 'Rp 5.000', 5000.00, 7);
INSERT INTO `order_total` VALUES (120, 14, 'total', 'Total', 'Rp 1.113.000', 1113000.00, 8);
INSERT INTO `order_total` VALUES (121, 15, 'subtotal', 'Sub Total', 'Rp 1.990.000', 1990000.00, 1);
INSERT INTO `order_total` VALUES (122, 15, 'shipping', 'Biaya Kirim', 'Rp 54.000', 54000.00, 5);
INSERT INTO `order_total` VALUES (123, 15, 'midtrans', 'Biaya Admin', 'Rp 4.000', 4000.00, 7);
INSERT INTO `order_total` VALUES (124, 15, 'total', 'Total', 'Rp 2.048.000', 2048000.00, 8);
INSERT INTO `order_total` VALUES (125, 16, 'subtotal', 'Sub Total', 'Rp 790.000', 790000.00, 1);
INSERT INTO `order_total` VALUES (126, 16, 'shipping', 'Biaya Kirim', 'Rp 9.000', 9000.00, 5);
INSERT INTO `order_total` VALUES (127, 16, 'midtrans', 'Biaya Admin', 'Rp 15.980', 15980.00, 7);
INSERT INTO `order_total` VALUES (128, 16, 'total', 'Total', 'Rp 814.980', 814980.00, 8);
INSERT INTO `order_total` VALUES (129, 17, 'subtotal', 'Sub Total', 'Rp 1.600.000', 1600000.00, 1);
INSERT INTO `order_total` VALUES (130, 17, 'shipping', 'Biaya Kirim', 'Rp 96.000', 96000.00, 5);
INSERT INTO `order_total` VALUES (131, 17, 'midtrans', 'Biaya Admin', 'Rp 4.000', 4000.00, 7);
INSERT INTO `order_total` VALUES (132, 17, 'total', 'Total', 'Rp 1.700.000', 1700000.00, 8);
INSERT INTO `order_total` VALUES (133, 18, 'subtotal', 'Sub Total', 'Rp 1.600.000', 1600000.00, 1);
INSERT INTO `order_total` VALUES (134, 18, 'shipping', 'Biaya Kirim', 'Rp 96.000', 96000.00, 5);
INSERT INTO `order_total` VALUES (135, 18, 'midtrans', 'Biaya Admin', 'Rp 4.000', 4000.00, 7);
INSERT INTO `order_total` VALUES (136, 18, 'total', 'Total', 'Rp 1.700.000', 1700000.00, 8);
INSERT INTO `order_total` VALUES (141, 19, 'subtotal', 'Sub Total', 'Rp 790.000', 790000.00, 1);
INSERT INTO `order_total` VALUES (142, 19, 'shipping', 'Biaya Kirim', 'Rp 18.000', 18000.00, 5);
INSERT INTO `order_total` VALUES (143, 19, 'midtrans', 'Biaya Admin', 'Rp 4.000', 4000.00, 7);
INSERT INTO `order_total` VALUES (144, 19, 'total', 'Total', 'Rp 812.000', 812000.00, 8);
INSERT INTO `order_total` VALUES (145, 20, 'subtotal', 'Sub Total', 'Rp 790.000', 790000.00, 1);
INSERT INTO `order_total` VALUES (146, 20, 'shipping', 'Biaya Kirim', 'Rp 8.000', 8000.00, 5);
INSERT INTO `order_total` VALUES (147, 20, 'midtrans', 'Biaya Admin', 'Rp 15.960', 15960.00, 7);
INSERT INTO `order_total` VALUES (148, 20, 'total', 'Total', 'Rp 813.960', 813960.00, 8);
INSERT INTO `order_total` VALUES (149, 21, 'subtotal', 'Sub Total', 'Rp 265.000', 265000.00, 1);
INSERT INTO `order_total` VALUES (150, 21, 'shipping', 'Biaya Kirim', 'Rp 9.000', 9000.00, 5);
INSERT INTO `order_total` VALUES (151, 21, 'midtrans', 'Biaya Admin', 'Rp 5.480', 5480.00, 7);
INSERT INTO `order_total` VALUES (152, 21, 'total', 'Total', 'Rp 279.480', 279480.00, 8);
INSERT INTO `order_total` VALUES (153, 22, 'subtotal', 'Sub Total', 'Rp 790.000', 790000.00, 1);
INSERT INTO `order_total` VALUES (154, 22, 'shipping', 'Biaya Kirim', 'Rp 8.000', 8000.00, 5);
INSERT INTO `order_total` VALUES (155, 22, 'midtrans', 'Biaya Admin', 'Rp 4.000', 4000.00, 7);
INSERT INTO `order_total` VALUES (156, 22, 'total', 'Total', 'Rp 802.000', 802000.00, 8);
INSERT INTO `order_total` VALUES (157, 23, 'subtotal', 'Sub Total', 'Rp 2.300.000', 2300000.00, 1);
INSERT INTO `order_total` VALUES (158, 23, 'shipping', 'Biaya Kirim', 'Rp 16.000', 16000.00, 5);
INSERT INTO `order_total` VALUES (159, 23, 'midtrans', 'Biaya Admin', 'Rp 46.320', 46320.00, 7);
INSERT INTO `order_total` VALUES (160, 23, 'total', 'Total', 'Rp 2.362.320', 2362320.00, 8);
INSERT INTO `order_total` VALUES (161, 24, 'subtotal', 'Sub Total', 'Rp 790.000', 790000.00, 1);
INSERT INTO `order_total` VALUES (162, 24, 'shipping', 'Biaya Kirim', 'Rp 16.000', 16000.00, 5);
INSERT INTO `order_total` VALUES (163, 24, 'midtrans', 'Biaya Admin', 'Rp 4.000', 4000.00, 7);
INSERT INTO `order_total` VALUES (164, 24, 'total', 'Total', 'Rp 810.000', 810000.00, 8);
INSERT INTO `order_total` VALUES (165, 25, 'subtotal', 'Sub Total', 'Rp 790.000', 790000.00, 1);
INSERT INTO `order_total` VALUES (166, 25, 'shipping', 'Biaya Kirim', 'Rp 25.000', 25000.00, 5);
INSERT INTO `order_total` VALUES (167, 25, 'midtrans', 'Biaya Admin', 'Rp 4.000', 4000.00, 7);
INSERT INTO `order_total` VALUES (168, 25, 'total', 'Total', 'Rp 819.000', 819000.00, 8);
INSERT INTO `order_total` VALUES (189, 26, 'subtotal', 'Sub Total', 'Rp 790.000', 790000.00, 1);
INSERT INTO `order_total` VALUES (190, 26, 'shipping', 'Biaya Kirim', 'Rp 25.500', 25500.00, 5);
INSERT INTO `order_total` VALUES (191, 26, 'midtrans', 'Biaya Admin', 'Rp 4.000', 4000.00, 7);
INSERT INTO `order_total` VALUES (192, 26, 'total', 'Total', 'Rp 819.500', 819500.00, 8);
INSERT INTO `order_total` VALUES (193, 27, 'subtotal', 'Sub Total', 'Rp 790.000', 790000.00, 1);
INSERT INTO `order_total` VALUES (194, 27, 'shipping', 'Biaya Kirim', 'Rp 31.000', 31000.00, 5);
INSERT INTO `order_total` VALUES (195, 27, 'midtrans', 'Biaya Admin', 'Rp 4.000', 4000.00, 7);
INSERT INTO `order_total` VALUES (196, 27, 'total', 'Total', 'Rp 825.000', 825000.00, 8);
INSERT INTO `order_total` VALUES (197, 28, 'subtotal', 'Sub Total', 'Rp 790.000', 790000.00, 1);
INSERT INTO `order_total` VALUES (198, 28, 'shipping', 'Biaya Kirim', 'Rp 9.000', 9000.00, 5);
INSERT INTO `order_total` VALUES (199, 28, 'midtrans', 'Biaya Admin', 'Rp 4.000', 4000.00, 7);
INSERT INTO `order_total` VALUES (200, 28, 'total', 'Total', 'Rp 803.000', 803000.00, 8);
INSERT INTO `order_total` VALUES (201, 29, 'subtotal', 'Sub Total', 'Rp 875.000', 875000.00, 1);
INSERT INTO `order_total` VALUES (202, 29, 'shipping', 'Biaya Kirim', 'Rp 18.000', 18000.00, 5);
INSERT INTO `order_total` VALUES (203, 29, 'midtrans', 'Biaya Admin', 'Rp 4.000', 4000.00, 7);
INSERT INTO `order_total` VALUES (204, 29, 'total', 'Total', 'Rp 897.000', 897000.00, 8);
INSERT INTO `order_total` VALUES (205, 30, 'subtotal', 'Sub Total', 'Rp 690.000', 690000.00, 1);
INSERT INTO `order_total` VALUES (206, 30, 'shipping', 'Biaya Kirim', 'Rp 45.000', 45000.00, 5);
INSERT INTO `order_total` VALUES (207, 30, 'midtrans', 'Biaya Admin', 'Rp 4.000', 4000.00, 7);
INSERT INTO `order_total` VALUES (208, 30, 'total', 'Total', 'Rp 739.000', 739000.00, 8);
INSERT INTO `order_total` VALUES (213, 31, 'subtotal', 'Sub Total', 'Rp 265.000', 265000.00, 1);
INSERT INTO `order_total` VALUES (214, 31, 'shipping', 'Biaya Kirim', 'Rp 23.000', 23000.00, 5);
INSERT INTO `order_total` VALUES (215, 31, 'midtrans', 'Biaya Admin', 'Rp 4.000', 4000.00, 7);
INSERT INTO `order_total` VALUES (216, 31, 'total', 'Total', 'Rp 292.000', 292000.00, 8);
INSERT INTO `order_total` VALUES (217, 32, 'subtotal', 'Sub Total', 'Rp 265.000', 265000.00, 1);
INSERT INTO `order_total` VALUES (218, 32, 'shipping', 'Biaya Kirim', 'Rp 23.000', 23000.00, 5);
INSERT INTO `order_total` VALUES (219, 32, 'midtrans', 'Biaya Admin', 'Rp 4.000', 4000.00, 7);
INSERT INTO `order_total` VALUES (220, 32, 'total', 'Total', 'Rp 292.000', 292000.00, 8);
INSERT INTO `order_total` VALUES (221, 33, 'subtotal', 'Sub Total', 'Rp 790.000', 790000.00, 1);
INSERT INTO `order_total` VALUES (222, 33, 'shipping', 'Biaya Kirim', 'Rp 8.000', 8000.00, 5);
INSERT INTO `order_total` VALUES (223, 33, 'midtrans', 'Biaya Admin', 'Rp 4.000', 4000.00, 7);
INSERT INTO `order_total` VALUES (224, 33, 'total', 'Total', 'Rp 802.000', 802000.00, 8);
INSERT INTO `order_total` VALUES (225, 34, 'subtotal', 'Sub Total', 'Rp 1.750.000', 1750000.00, 1);
INSERT INTO `order_total` VALUES (226, 34, 'shipping', 'Biaya Kirim', 'Rp 110.000', 110000.00, 5);
INSERT INTO `order_total` VALUES (227, 34, 'midtrans', 'Biaya Admin', 'Rp 4.000', 4000.00, 7);
INSERT INTO `order_total` VALUES (228, 34, 'total', 'Total', 'Rp 1.864.000', 1864000.00, 8);
INSERT INTO `order_total` VALUES (241, 35, 'subtotal', 'Sub Total', 'Rp 1.750.000', 1750000.00, 1);
INSERT INTO `order_total` VALUES (242, 35, 'shipping', 'Biaya Kirim', 'Rp 110.000', 110000.00, 5);
INSERT INTO `order_total` VALUES (243, 35, 'midtrans', 'Biaya Admin', 'Rp 37.200', 37200.00, 7);
INSERT INTO `order_total` VALUES (244, 35, 'total', 'Total', 'Rp 1.897.200', 1897200.00, 8);
INSERT INTO `order_total` VALUES (249, 36, 'subtotal', 'Sub Total', 'Rp 1.750.000', 1750000.00, 1);
INSERT INTO `order_total` VALUES (250, 36, 'shipping', 'Biaya Kirim', 'Rp 110.000', 110000.00, 5);
INSERT INTO `order_total` VALUES (251, 36, 'midtrans', 'Biaya Admin', 'Rp 37.200', 37200.00, 7);
INSERT INTO `order_total` VALUES (252, 36, 'total', 'Total', 'Rp 1.897.200', 1897200.00, 8);
INSERT INTO `order_total` VALUES (253, 37, 'subtotal', 'Sub Total', 'Rp 790.000', 790000.00, 1);
INSERT INTO `order_total` VALUES (254, 37, 'shipping', 'Biaya Kirim', 'Rp 9.000', 9000.00, 5);
INSERT INTO `order_total` VALUES (255, 37, 'midtrans', 'Biaya Admin', 'Rp 4.000', 4000.00, 7);
INSERT INTO `order_total` VALUES (256, 37, 'total', 'Total', 'Rp 803.000', 803000.00, 8);
INSERT INTO `order_total` VALUES (257, 38, 'subtotal', 'Sub Total', 'Rp 265.000', 265000.00, 1);
INSERT INTO `order_total` VALUES (258, 38, 'shipping', 'Biaya Kirim', 'Rp 23.000', 23000.00, 5);
INSERT INTO `order_total` VALUES (259, 38, 'midtrans', 'Biaya Admin', 'Rp 4.000', 4000.00, 7);
INSERT INTO `order_total` VALUES (260, 38, 'total', 'Total', 'Rp 292.000', 292000.00, 8);
INSERT INTO `order_total` VALUES (261, 39, 'subtotal', 'Sub Total', 'Rp 1.750.000', 1750000.00, 1);
INSERT INTO `order_total` VALUES (262, 39, 'shipping', 'Biaya Kirim', 'Rp 18.000', 18000.00, 5);
INSERT INTO `order_total` VALUES (263, 39, 'midtrans', 'Biaya Admin', 'Rp 4.000', 4000.00, 7);
INSERT INTO `order_total` VALUES (264, 39, 'total', 'Total', 'Rp 1.772.000', 1772000.00, 8);
INSERT INTO `order_total` VALUES (269, 40, 'subtotal', 'Sub Total', 'Rp 9.995.000', 9995000.00, 1);
INSERT INTO `order_total` VALUES (270, 40, 'shipping', 'Biaya Kirim', 'Rp 315.000', 315000.00, 5);
INSERT INTO `order_total` VALUES (271, 40, 'midtrans', 'Biaya Admin', 'Rp 4.000', 4000.00, 7);
INSERT INTO `order_total` VALUES (272, 40, 'total', 'Total', 'Rp 10.314.000', 10314000.00, 8);
INSERT INTO `order_total` VALUES (273, 41, 'subtotal', 'Sub Total', 'Rp 11.110.000', 11110000.00, 1);
INSERT INTO `order_total` VALUES (274, 41, 'shipping', 'Biaya Kirim', 'Rp 360.000', 360000.00, 5);
INSERT INTO `order_total` VALUES (275, 41, 'midtrans', 'Biaya Admin', 'Rp 4.000', 4000.00, 7);
INSERT INTO `order_total` VALUES (276, 41, 'total', 'Total', 'Rp 11.474.000', 11474000.00, 8);
INSERT INTO `order_total` VALUES (277, 42, 'subtotal', 'Sub Total', 'Rp 2.265.000', 2265000.00, 1);
INSERT INTO `order_total` VALUES (278, 42, 'shipping', 'Biaya Kirim', 'Rp 98.000', 98000.00, 5);
INSERT INTO `order_total` VALUES (279, 42, 'midtrans', 'Biaya Admin', 'Rp 4.000', 4000.00, 7);
INSERT INTO `order_total` VALUES (280, 42, 'total', 'Total', 'Rp 2.367.000', 2367000.00, 8);
INSERT INTO `order_total` VALUES (281, 43, 'subtotal', 'Sub Total', 'Rp 1.135.000', 1135000.00, 1);
INSERT INTO `order_total` VALUES (282, 43, 'shipping', 'Biaya Kirim', 'Rp 150.000', 150000.00, 5);
INSERT INTO `order_total` VALUES (283, 43, 'midtrans', 'Biaya Admin', 'Rp 4.000', 4000.00, 7);
INSERT INTO `order_total` VALUES (284, 43, 'total', 'Total', 'Rp 1.289.000', 1289000.00, 8);
INSERT INTO `order_total` VALUES (285, 44, 'subtotal', 'Sub Total', 'Rp 790.000', 790000.00, 1);
INSERT INTO `order_total` VALUES (286, 44, 'shipping', 'Biaya Kirim', 'Rp 9.000', 9000.00, 5);
INSERT INTO `order_total` VALUES (287, 44, 'midtrans', 'Biaya Admin', 'Rp 4.000', 4000.00, 7);
INSERT INTO `order_total` VALUES (288, 44, 'total', 'Total', 'Rp 803.000', 803000.00, 8);
INSERT INTO `order_total` VALUES (289, 45, 'subtotal', 'Sub Total', 'Rp 790.000', 790000.00, 1);
INSERT INTO `order_total` VALUES (290, 45, 'shipping', 'Biaya Kirim', 'Rp 9.000', 9000.00, 5);
INSERT INTO `order_total` VALUES (291, 45, 'midtrans', 'Biaya Admin', 'Rp 4.000', 4000.00, 7);
INSERT INTO `order_total` VALUES (292, 45, 'total', 'Total', 'Rp 803.000', 803000.00, 8);
INSERT INTO `order_total` VALUES (293, 46, 'subtotal', 'Sub Total', 'Rp 790.000', 790000.00, 1);
INSERT INTO `order_total` VALUES (294, 46, 'shipping', 'Biaya Kirim', 'Rp 30.000', 30000.00, 5);
INSERT INTO `order_total` VALUES (295, 46, 'midtrans', 'Biaya Admin', 'Rp 4.000', 4000.00, 7);
INSERT INTO `order_total` VALUES (296, 46, 'total', 'Total', 'Rp 824.000', 824000.00, 8);
INSERT INTO `order_total` VALUES (297, 47, 'subtotal', 'Sub Total', 'Rp 790.000', 790000.00, 1);
INSERT INTO `order_total` VALUES (298, 47, 'shipping', 'Biaya Kirim', 'Rp 20.000', 20000.00, 5);
INSERT INTO `order_total` VALUES (299, 47, 'midtrans', 'Biaya Admin', 'Rp 4.000', 4000.00, 7);
INSERT INTO `order_total` VALUES (300, 47, 'total', 'Total', 'Rp 814.000', 814000.00, 8);
INSERT INTO `order_total` VALUES (301, 48, 'subtotal', 'Sub Total', 'Rp 90.000', 90000.00, 1);
INSERT INTO `order_total` VALUES (302, 48, 'shipping', 'Biaya Kirim', 'Rp 23.000', 23000.00, 5);
INSERT INTO `order_total` VALUES (303, 48, 'midtrans', 'Biaya Admin', 'Rp 4.000', 4000.00, 7);
INSERT INTO `order_total` VALUES (304, 48, 'total', 'Total', 'Rp 117.000', 117000.00, 8);
INSERT INTO `order_total` VALUES (305, 49, 'subtotal', 'Sub Total', 'Rp 90.000', 90000.00, 1);
INSERT INTO `order_total` VALUES (306, 49, 'shipping', 'Biaya Kirim', 'Rp 23.000', 23000.00, 5);
INSERT INTO `order_total` VALUES (307, 49, 'midtrans', 'Biaya Admin', 'Rp 4.000', 4000.00, 7);
INSERT INTO `order_total` VALUES (308, 49, 'total', 'Total', 'Rp 117.000', 117000.00, 8);
INSERT INTO `order_total` VALUES (309, 50, 'subtotal', 'Sub Total', 'Rp 45.000', 45000.00, 1);
INSERT INTO `order_total` VALUES (310, 50, 'shipping', 'Biaya Kirim', 'Rp 9.000', 9000.00, 5);
INSERT INTO `order_total` VALUES (311, 50, 'midtrans', 'Biaya Admin', 'Rp 4.000', 4000.00, 7);
INSERT INTO `order_total` VALUES (312, 50, 'total', 'Total', 'Rp 58.000', 58000.00, 8);
INSERT INTO `order_total` VALUES (313, 51, 'subtotal', 'Sub Total', 'Rp 1.250.000', 1250000.00, 1);
INSERT INTO `order_total` VALUES (314, 51, 'shipping', 'Biaya Kirim', 'Rp 70.000', 70000.00, 5);
INSERT INTO `order_total` VALUES (315, 51, 'midtrans', 'Biaya Admin', 'Rp 4.000', 4000.00, 7);
INSERT INTO `order_total` VALUES (316, 51, 'total', 'Total', 'Rp 1.324.000', 1324000.00, 8);
INSERT INTO `order_total` VALUES (317, 52, 'subtotal', 'Sub Total', 'Rp 1.680.000', 1680000.00, 1);
INSERT INTO `order_total` VALUES (318, 52, 'shipping', 'Biaya Kirim', 'Rp 18.000', 18000.00, 5);
INSERT INTO `order_total` VALUES (319, 52, 'midtrans', 'Biaya Admin', 'Rp 4.000', 4000.00, 7);
INSERT INTO `order_total` VALUES (320, 52, 'total', 'Total', 'Rp 1.702.000', 1702000.00, 8);

-- ----------------------------
-- Table structure for page
-- ----------------------------
DROP TABLE IF EXISTS `page`;
CREATE TABLE `page`  (
  `page_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `meta_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `meta_keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `sort_order` int NOT NULL DEFAULT 0,
  `new_window` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `footer_column` tinyint(1) NOT NULL DEFAULT 0,
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`page_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of page
-- ----------------------------
INSERT INTO `page` VALUES (2, 'Kebijakan Privasi', '<p class=\"MsoNormal\" style=\"text-align:justify\">Website <a href=\"http://www.mpmindo.id/\">www.mpmindo.id</a> sepenuhnya dimiliki oleh PT\r\nModa Pratama Mandiri. Halaman ini mengandung penjelasan syarat dan ketentuan\r\npenggunaan serta privasi di dalam website ini. Mohon untuk dengan seksama\r\nmembaca dan memahami mengenai ketentuan ini. Jika Anda tidak dapat menerima\r\nketentuan yang tertera pada halaman ini, maka mohon untuk tidak mempergunakan\r\nwebsite ini. Kata “Anda” pada ketentuan ini berlaku untuk semua individu\r\ndan/atau institusi yang mengakses website ini dengan tujuan apapun.<o:p></o:p></p><p class=\"MsoNormal\" style=\"text-align:justify\"><b><span style=\"font-size:14.0pt;\r\nline-height:107%\">&nbsp;</span></b></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size: 14pt; line-height: 107%;\"><b>Ketentuan Privasi<o:p></o:p></b></span></p><p class=\"MsoNormal\" style=\"text-align:justify\">PT Moda Pratama Mandiri\r\nberkomitmen untuk melindungi privasi Anda sesuai dengan standar tertinggi\r\nperlindungan konsumen. Kami hanya mengumpulkan informasi pribadi Anda untuk\r\nmenyediakan layanan-layanan dan produk-produk yang lebih baik untuk Anda. Untuk\r\nmemastikan Anda dapat membuat keputusan dan merasa yakin dalam memberikan\r\ninformasi pribadi Anda sewaktu menggunakan website kami, kami menjaga\r\nprinsip-prinsip privasi sebagai berikut:<o:p></o:p></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size: 14pt; line-height: 107%;\"><b>Pengumpulan dan Penggunaan Informasi<o:p></o:p></b></span></p><p class=\"MsoNormal\" style=\"text-align:justify\">PT Moda Pratama Mandiri tidak\r\nakan mengumpulkan atau memantau informasi pribadi apapun tentang Anda tanpa\r\npersetujuan Anda. Informasi pribadi yang kami kumpulkan hanyalah yang Anda\r\nberitahukan kepada kami dan informasi tentang bagaimana Anda menggunakan situs\r\nkami.<o:p></o:p></p><p class=\"MsoNormal\" style=\"text-align:justify\">Jenis-jenis informasi yang kami\r\nkumpulkan adalah sebagai berikut:<o:p></o:p></p><p class=\"MsoListParagraphCxSpFirst\" style=\"text-align:justify;\r\nmso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp; &nbsp; &nbsp; &nbsp; </span></span>Nama<o:p></o:p></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-align:justify;\r\nmso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></span>Jenis Kelamin<o:p></o:p></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-align:justify;\r\nmso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span>Tanggal Lahir<o:p></o:p></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-align:justify;\r\nmso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span>Alamat Email<o:p></o:p></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-align:justify;\r\nmso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span>Nomor Telepon<o:p></o:p></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-align:justify;\r\nmso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span>Nomor HP<o:p></o:p></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-align:justify;\r\nmso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span>Alamat<o:p></o:p></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-align:justify;\r\nmso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span>Tempat Kerja <o:p></o:p></p><p class=\"MsoListParagraphCxSpLast\" style=\"text-align:justify;\r\nmso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span>Profesi<o:p></o:p></p><p class=\"MsoNormal\" style=\"text-align:justify\">Kami menggunakan informasi Anda\r\nuntuk mengirimkan detail-detail tentang layanan kami atau rincian pesanan Anda.\r\nNamun, bila Anda memilih untuk tidak memberikan informasi seperti yang diminta,\r\nkami tidak dapat memberikan layanan online sepenuhnya kepada Anda.<o:p></o:p></p><p class=\"MsoNormal\" style=\"text-align:justify\">Kami juga akan menggunakan\r\ninformasi Anda untuk memproses pembelian Anda atas produk atau jasa kami; untuk\r\nmengkonfirmasi pesanan Anda; untuk memenuhi permintaan Anda saat Anda\r\nmenggunakan layanan online kami; untuk menghubungi Anda atas pernyataan\r\nAnda;&nbsp; dan untuk tujuan pemasaran kami,\r\nseperti mengirim keterangan mengenai penawaran khusus, promo, newsletter,\r\nbrosur dan lain-lain. Jika Anda tidak ingin kami menggunakan informasi Anda\r\nuntuk mengirimkan rincian produk kami, silakan mengirimkan email kepada kami.<o:p></o:p></p><p class=\"MsoNormal\" style=\"text-align:justify\">Kami tidak akan membagikan\r\nrincian informasi pribadi Anda ke pihak ketiga kecuali seperti yang dijelaskan\r\ndi bawah ini:<o:p></o:p></p><p class=\"MsoNormal\" style=\"text-align:justify\">Kami tidak akan memberikan\r\ninformasi kontak Anda ke pihak lain tanpa persetujuan Anda, kecuali ada situasi\r\ndarurat di mana informasi Anda diperlukan, atau atas perintah pengadilan, atau\r\ndiminta oleh pemerintah atau penegak hukum, atau dalam itikad baik bahwa\r\npengungkapan dinyatakan diperlukan atau dianjurkan untuk melindungi hak-hak.\r\nHal ini juga berlaku bila kami memiliki alasan yang dapat dipercaya bahwa\r\npengungkapan informasi diperlukan untuk mengidentifikasi, menghubungi, atau\r\nmelaksanakan tindakan hukum terhadap seseorang yang mungkin bisa menyebabkan\r\ngangguan terhadap hak-hak atau properti kami, baik disengaja atau tidak, atau\r\nbila pihak lain dapat dirugikan oleh kegiatan tertentu.&nbsp; <o:p></o:p></p><p class=\"MsoNormal\" style=\"text-align:justify\"><o:p>&nbsp;</o:p></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size: 14pt; line-height: 107%;\"><b>Cookies<o:p></o:p></b></span></p><p class=\"MsoNormal\" style=\"text-align:justify\">Kami menggunakan “Cookies” namun,\r\nkami tidak menyimpan data. Situs ini mungkin berisi link ke situs lain yang\r\nmemiliki ketentuan privasi mereka sendiri. Perlu diketahui bahwa kami tidak\r\nbertanggung jawab atas kebijakan privasi mereka atau kesesuaian dengan hukum\r\ndan tidak menjamin keamanan dari situs-situs lain tersebut.<o:p></o:p></p><p class=\"MsoNormal\" style=\"text-align:justify\"><o:p>&nbsp;</o:p></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size: 14pt; line-height: 107%;\"><b>Keamanan<o:p></o:p></b></span></p><p class=\"MsoNormal\" style=\"text-align:justify\">PT Moda Pratama Mandiri\r\nberkomitmen untuk melindungi privasi konsumen dan kami juga aktif terlibat\r\ndalam inisiatif industri saat ini untuk menjaga hak-hak privasi individu di\r\nInternet. Kami menganggap masalah keamanan sebagai masalah serius dan\r\nmemperlakukan informasi pribadi yang diperoleh dari pengguna situs kami secara\r\nrahasia, serta mencegah akses yang tidak sah dan memastikan informasi digunakan\r\nsecara tepat.<o:p></o:p></p><p class=\"MsoNormal\" style=\"text-align:justify\">\r\nSelain firewall dan teknologi lainnya yang\r\nditerapkan, kami juga menyediakan langkah-langkah manajerial, fisik dan\r\nelektronik untuk melindungi system kami, dan informasi dan data yang terkandung\r\ndi dalamnya dari gangguan atau kerusakan yang disengaja atau tidak. Ketika Anda\r\nmemasukkan informasi yang sensitif, informasi itu akan secara otomatis\r\ndikonversi ke dalam kode-kode sebelum dikirimkan melalui internet secara aman.\r\nNamun, kerahasiaan dan keamanan yang sempurna di internet belum memungkinkan,\r\ndan privasi tidak dapat terjamin dalam komunikasi Anda kepada kami. Anda\r\nmengakui bahwa informasi pribadi yang diungkapkan adalah risiko Anda sendiri\r\ndan ada kemungkinan terjadinya penggunaan yang tidak sah oleh pihak lain. Bila\r\nini terjadi, Anda mungkin akan menerima pesan/email dari pihak-pihak di luar PT\r\nModa Pratama Mandiri. Kami tidak bertanggung jawab untuk kerusakan yang terjadi\r\nsecara langsung, tidak langsung atau konsekuensial, yang disebabkan oleh\r\nkonfirmasi informasi kepada kami.<br></p><p style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; box-sizing: inherit;\"><span style=\"font-size:10.5pt;font-family:\" open=\"\" sans\",sans-serif\"=\"\"><o:p></o:p></span></p><ol start=\"1\" type=\"A\">\r\n</ol>', 'kebijakan-privasi', '', '', 1, 0, '2020-05-09 12:35:56', 0, '2021-07-27 10:48:07', 1);
INSERT INTO `page` VALUES (3, 'Syarat & Ketentuan', '<br><p class=\"MsoNormal\" style=\"text-align:justify\"><o:p style=\"\">&nbsp;</o:p><span style=\"text-indent: -18pt;\"><span style=\"font-size:16.0pt;line-height:107%;mso-bidi-font-family:Calibri;\r\nmso-bidi-theme-font:minor-latin\"><b>1.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal;\" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp; </span></span></span><span style=\"text-indent: -18pt;\"><span style=\"font-size: 16pt; line-height: 107%;\"><b>PEMESANAN &amp; PEMBELIAN ONLINE</b></span></span></b></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size: 12pt; line-height: 107%;\"><b>Kontrak untuk Produk dan Jasa<o:p></o:p></b></span></p><p class=\"MsoNormal\" style=\"text-align:justify\">PT Moda Pratama Mandiri yang akan\r\ndisebut sebagai Distributor, bertindak sebagai distributor untuk semua produk yang\r\ndibeli oleh Anda dan jasa perbaikan melalui website ini. Kontrak untuk\r\npembelian produk dan jasa dapat dilakukan secara online di website ini dengan\r\npersetujuan Anda, terhadap produk dan jasa yang ditawarkan di situs ini\r\n(“Kontrak”) oleh Distributor, dan Anda dengan ini setuju untuk melepaskan hak\r\nuntuk menentang keabsahan atau berlakunya Kontrak yang dicantumkan di website\r\nini dengan alasan bahwa itu dibuat dalam bentuk elektronik, bukan di kertas\r\ndan/atau ditandatangani atau disegel. Harap dicatat bahwa dengan menyatakan\r\npenerimaan Anda untuk membeli produk dan jasa yang ditawarkan di situs, Anda\r\nberkewajiban untuk menyelesaikan transaksi tersebut. Anda dilarang untuk\r\nmenyatakan penerimaan Anda untuk membeli produk di mana Anda tidak bermaksud\r\nuntuk menyelesaikan transaksi tersebut. <o:p></o:p></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size: 12pt; line-height: 107%;\"><b>Ketersediaan Produk <o:p></o:p></b></span></p><p class=\"MsoNormal\" style=\"text-align:justify\">Produk yang kami tampilkan adalah\r\nsesuai dengan posisi stok, dimana barang tersedia di gudang kami.<o:p></o:p></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size: 12pt; line-height: 107%;\"><b>Keaslian produk<o:p></o:p></b></span></p><p class=\"MsoNormal\" style=\"text-align:justify\">Kami memberikan jaminan bahwa\r\nsemua produk yang dijual di website ini adalah resmi dari WAHL Professional. Jaminan\r\nberupa garansi dari PT Moda Pratama Mandiri, yang disertai dengan sticker\r\nhologram, nomor seri dan nomor registrasi barang K3L (Keamanan, Keselamatan,\r\nKesehatan dan Lingkungan Hidup).<o:p></o:p></p><p class=\"MsoNormal\" style=\"text-align:justify\"><o:p>&nbsp;</o:p></p><p class=\"MsoListParagraph\" style=\"margin-left:18.0pt;mso-add-space:auto;\r\ntext-align:justify;text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size: 16pt; line-height: 107%;\"><b>2.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal;\" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--></b><span style=\"font-size: 16pt; line-height: 107%;\"><b>HARGA<o:p></o:p></b></span></p><p class=\"MsoNormal\" style=\"text-align:justify\">Semua harga di situs ini sudah\r\ntermasuk pajak pertambahan nilai (PPN), Anda wajib membayar penuh jumlah yang\r\ntertera. Semua harga produk yang tertera dapat berubah tergantung dari\r\nkeputusan dan kebijakan Distributor (harga normal atau potongan harga).<o:p></o:p></p><p class=\"MsoNormal\" style=\"text-align:justify\"><o:p>&nbsp;</o:p></p><p class=\"MsoListParagraph\" style=\"margin-left:18.0pt;mso-add-space:auto;\r\ntext-align:justify;text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size: 16pt; line-height: 107%;\"><b>3.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal;\" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--></b><span style=\"font-size: 16pt; line-height: 107%;\"><b>PEMESANAN &amp; PEMBELIAN YANG\r\nDIBATALKAN ATAU DITOLAK<o:p></o:p></b></span></p><p class=\"MsoNormal\" style=\"text-align:justify\">Distributor berhak menolak atau\r\nmembatalkan pesanan yang belum dibayar secara penuh dalam kurun waktu yang\r\nsudah diinformasikan secara otomatis. Apabila Anda tetap mau melakukan\r\npembayaran harap memesan ulang pesanan Anda dan segera membayar sesuai dengan\r\nharga yang tertera.<o:p></o:p></p><p class=\"MsoNormal\" style=\"text-align:justify\">Anda setuju untuk menanggung\r\nbiaya penuh dari setiap pemesanan, ongkos kirim dan biaya administrasi setiap\r\nproduk yang telah dipesan. Untuk info lebih lanjut, Anda dapat menghubungi\r\nCustomer Service kami di 0811-999-0595.<o:p></o:p></p><p class=\"MsoNormal\" style=\"text-align:justify\"><o:p>&nbsp;</o:p></p><p class=\"MsoListParagraph\" style=\"margin-left:18.0pt;mso-add-space:auto;\r\ntext-align:justify;text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size: 16pt; line-height: 107%;\"><b>4.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal;\" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--></b><span style=\"font-size: 16pt; line-height: 107%;\"><b>PERUBAHAN PEMESANAN &amp; PEMBELIAN<o:p></o:p></b></span></p><p class=\"MsoNormal\" style=\"text-align:justify\">Anda tidak dapat mengubah pesanan\r\natau pembelian secara online di website ini, karena sudah masuk ke dalam sistem.&nbsp; Apabila ada masalah dengan pesanan Anda,\r\ndapat&nbsp; menghubungi Customer Service kami\r\ndi 0811-999-0595. <o:p></o:p></p><p class=\"MsoNormal\" style=\"text-align:justify\"><b><span style=\"font-size:16.0pt;\r\nline-height:107%\">&nbsp;</span></b></p><p class=\"MsoListParagraph\" style=\"margin-left:18.0pt;mso-add-space:auto;\r\ntext-align:justify;text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size: 16pt; line-height: 107%;\"><b>5.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal;\" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;</span></b></span><span style=\"font-size: 16pt; line-height: 107%;\"><b>PENDAFTARAN, KLAIM GARANSI &amp;\r\nPERBAIKAN PRODUK<o:p></o:p></b></span></p><p class=\"MsoNormal\" style=\"text-align:justify\">Anda dapat melakukan pendaftaran\r\nproduk untuk klaim garansi yang berlaku selama 1 (satu) tahun dari tanggal\r\npembelian, dengan mengisi informasi data yang dibutuhkan. Kami hanya melayani\r\nklaim garansi dan perbaikan dari produk yang memiliki kartu garansi resmi dari\r\nPT Moda Pratama Mandiri, disertai dengan no seri yang sudah didaftarkan\r\nsebelumnya.<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;line-height:150%\">\r\n<span style=\"font-size:10.0pt;line-height:107%;font-family:\" calibri\",sans-serif;=\"\" mso-ascii-theme-font:minor-latin;mso-fareast-font-family:calibri;mso-fareast-theme-font:=\"\" minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-theme-font:minor-bidi;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-us;mso-bidi-language:ar-sa\"=\"\">Untuk melakukan klaim garansi dan perbaikan\r\nproduk, Anda dapat melakukan laporan melalui website atau menghubungi kami di\r\n0811-999-0595.</span><br></p><p class=\"MsoNormal\" style=\"text-align:justify\"><o:p>&nbsp;</o:p></p>', 'syarat-dan-ketentuan', '', '', 1, 0, '2020-05-09 12:35:56', 0, '2021-07-27 11:07:43', 1);
INSERT INTO `page` VALUES (4, 'Cara Pembelian', '<p class=\"MsoNormal\" style=\"margin: 0cm;text-align:justify;\"><b><span style=\"font-size: 10pt; font-family: \" helvetica=\"\" neue\";\"=\"\">Panduan Berbelanja di Website WAHL MPM Indonesia:</span></b><span style=\"font-size: 10pt; font-family: \" helvetica=\"\" neue\";\"=\"\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0cm; font-size: medium; font-family: Calibri, sans-serif;\"><span style=\"font-size: 10pt; font-family: \" helvetica=\"\" neue\";\"=\"\"><o:p>&nbsp;</o:p></span></p><p class=\"MsoNormal\" style=\"margin-left: 36pt; text-indent: -18pt; background-position: initial initial; background-repeat: initial initial;\"><!--[if !supportLists]--><span style=\"font-size: 10pt; font-family: \" helvetica=\"\" neue\";\"=\"\">1.<span style=\"font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp; &nbsp; &nbsp;</span></span><span style=\"text-indent: -18pt; font-size: 10pt; font-family: \" helvetica=\"\" neue\";\"=\"\">Tentukan produk yang ingin anda beli, lalu cari produk tersebut menggunakan kolom pencarian yang ada diatas halaman website&nbsp;. Anda juga dalam mencari produk dengan memilih kategori yang tersedia di website kami&nbsp;</span></p><p class=\"MsoNormal\" style=\"margin-left: 36pt; text-indent: -18pt; background-position: initial initial; background-repeat: initial initial;\"><span style=\"font-size: 10pt; font-family: \" helvetica=\"\" neue\";\"=\"\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-left: 36pt; text-indent: -18pt; background-position: initial initial; background-repeat: initial initial;\"><!--[if !supportLists]--><span helvetica=\"\" neue\";\"=\"\"><span style=\"font-size: 10pt;\">2.</span><span style=\"font-size: 7pt; font-stretch: normal; line-height: normal;\" times=\"\" new=\"\" roman\";\"=\"\">&nbsp; &nbsp; &nbsp;</span></span><span style=\"text-indent: -18pt; font-size: 10pt; font-family: \" helvetica=\"\" neue\";\"=\"\">Setelah menemukan produk yang anda cari, klik&nbsp;<b><u>Tambah ke Keranjang</u></b>&nbsp;untuk memasukkan produk ke keranjang belanja dan melanjutkan pencarian produk yang lain (<i>jika ada</i>).</span></p><p class=\"MsoNormal\" style=\"margin-left: 36pt; text-indent: -18pt; background-position: initial initial; background-repeat: initial initial;\"><span style=\"font-size: 10pt; font-family: \" helvetica=\"\" neue\";\"=\"\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-left: 36pt; text-indent: -18pt; background-position: initial initial; background-repeat: initial initial;\"><span style=\"font-size: 10pt; font-family: \" helvetica=\"\" neue\";\"=\"\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-left: 36pt; text-indent: -18pt; background-position: initial initial; background-repeat: initial initial;\"><!--[if !supportLists]--><span helvetica=\"\" neue\";\"=\"\"><span style=\"font-size: 10pt;\">3.</span><span style=\"font-size: 7pt; font-stretch: normal; line-height: normal;\" times=\"\" new=\"\" roman\";\"=\"\">&nbsp; &nbsp;&nbsp;</span></span><span style=\"text-indent: -18pt; font-size: 10pt; font-family: \" helvetica=\"\" neue\";\"=\"\">Jika telah selesai menambahkan produk yang ingin anda beli kedalam keranjang belanja. Klik icon<b>&nbsp;</b><u><b>Tas Belanja</b></u><b>&nbsp;</b><b>&nbsp;</b>yang ada di kanan atas halaman website, lalu klik&nbsp;<u><b>Checkout</b></u>&nbsp;untuk melanjutkan ke proses selanjutnya</span><span style=\"font-family: \" helvetica=\"\" neue\";=\"\" font-size:=\"\" 10pt;\"=\"\">.</span><span style=\"font-family: \" helvetica=\"\" neue\";=\"\" font-size:=\"\" 10pt;\"=\"\">&nbsp;</span><span style=\"font-size: 10pt;\">Bagi pelanggan yang sudah memiliki akun di website kami, anda dapat dengan mudah login dengan memasukan username dan password yang terdaftar.&nbsp;</span><span style=\"font-size: 10pt;\">Bagi customer yang belum mempunyai akun, anda dapat mendaftar atau bisa juga berbelanja sebagai tamu dengan klik&nbsp;</span><b style=\"font-family: Calibri, sans-serif; font-size: 10pt;\"><u>Belanja Sebagai Tamu</u></b><span style=\"font-family: Calibri, sans-serif; font-size: 10pt;\">.</span></p><p class=\"MsoNormal\" style=\"margin-left: 36pt; text-indent: -18pt; background-position: initial initial; background-repeat: initial initial;\"><span style=\"font-size: 10pt; font-family: \" helvetica=\"\" neue\";\"=\"\">4.<span style=\"font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp; &nbsp; &nbsp;</span></span><span style=\"text-indent: -18pt; font-size: 10pt; font-family: \" helvetica=\"\" neue\";\"=\"\">Di halaman&nbsp;<span style=\"background-color: rgb(255, 239, 198);\"><b>Alamat</b></span>, masukan dengan lengkap dan benar biodata anda berserta alamat pengiriman. Dimana produk yang anda beli sudah termasuk PPN, harap mengisi Nomor NPWP, Nama WP dan Alamat WP, guna agar kami dapat menerbitkan Faktur Pajak untuk anda. Jika anda tidak memiliki NPWP, silahkan beri centang di kotak “Saya Tidak Memiliki NPWP”. Klik “<u><b>Lanjut</b></u>” untuk ke halaman berikutnya (Pengiriman).</span></p><p class=\"MsoNormal\" style=\"margin-left: 36pt; text-indent: -18pt; background-position: initial initial; background-repeat: initial initial;\"><span style=\"font-size: 10pt; font-family: \" helvetica=\"\" neue\";\"=\"\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-left: 36pt; text-indent: -18pt; background-position: initial initial; background-repeat: initial initial;\"><!--[if !supportLists]--><span style=\"font-size: 10pt; font-family: \" helvetica=\"\" neue\";\"=\"\">5.<span style=\"font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><!--[endif]--><span style=\"font-size: 10pt; font-family: \" helvetica=\"\" neue\";\"=\"\">Di halaman&nbsp;<span style=\"background-color: rgb(255, 239, 198);\"><b>Pengiriman</b></span>, pilih kurir pengeriman yang tersedia. Perlu diketahui bahwa biaya pengiriman akan berbeda-beda tergantung kurir, berat, dimensi dan jarak pengiriman. Anda juga dapat memberi catatan untuk toko kami jika diperlukan&nbsp;di kolom “<b>Catatan</b>” yang tersedia di halaman ini. Klik “<b><u>Lanjut</u></b>” untuk ke halaman berikutnya (Pembayaran).<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-left: 36pt; text-indent: -18pt; background-position: initial initial; background-repeat: initial initial;\"><!--[if !supportLists]--><span style=\"font-size: 10pt; font-family: \" helvetica=\"\" neue\";\"=\"\">6.<span style=\"font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp; &nbsp; &nbsp;</span></span><span style=\"text-indent: -18pt; font-size: 10pt; font-family: \" helvetica=\"\" neue\";\"=\"\">Di halaman&nbsp;<span style=\"background-color: rgb(255, 239, 198);\"><b>Pembayaran</b></span>, pilih metode pembayaran yang anda inginkan, lalu jangan lupa memberi centang di kotak “<b>Dengan ini saya menyetujui syarat dan ketentuan yang berlaku</b>”. Setelah itu klik “<u><b>Lanjut</b></u>” untuk menyelesaikan pembelian.&nbsp;</span></p><p class=\"MsoNormal\" style=\"margin-left: 36pt; text-indent: -18pt; background-position: initial initial; background-repeat: initial initial;\"><span style=\"font-size: 10pt; font-family: \" helvetica=\"\" neue\";\"=\"\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-left: 36pt; text-indent: -18pt; background-position: initial initial; background-repeat: initial initial;\"><!--[if !supportLists]--><span style=\"font-size: 10pt; font-family: \" helvetica=\"\" neue\";\"=\"\">7.<span style=\"font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><!--[endif]--><span style=\"font-size: 10pt; font-family: \" helvetica=\"\" neue\";\"=\"\">Di halaman&nbsp;<span style=\"background-color: rgb(255, 239, 198);\"><b>Selesai</b></span>, cek biodata yang di input (<i>Nama, No. Telp, Email, Alamat dan informasi NPWP</i>&nbsp;(<i>jika ada</i>)). Penting juga untuk mengecek kembali produk-produk yang akan anda beli (<i>jumlah,</i>&nbsp;<i>tipe, dll.</i>), untuk menghindari kesalahan. Lalu, pastikan kurir pengiriman dan metode pembayaran sudah sesuai dengan yang anda inginkan. Setelah sudah mengecek dan semua sudah lengkap dan benar, klik&nbsp;<u><b>Proses Pembayaran</b></u>. Panduan untuk setiap metode pembayaran tersedia untuk membantu anda menyelesaikan pembayaran dengan mudah dan lancar.&nbsp;<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-left: 36pt; text-indent: -18pt; background-position: initial initial; background-repeat: initial initial;\"><!--[if !supportLists]--><span style=\"font-size: 10pt; font-family: \" helvetica=\"\" neue\";\"=\"\">8.<span style=\"font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><!--[endif]--><span style=\"font-size: 10pt; font-family: \" helvetica=\"\" neue\";\"=\"\">Setelah Pembayaran sudah di proses, kami akan mengirimkan invoice ke email anda. E-mail akan menjadi platform dimana anda akan mendapatkan update proses dari pembelian anda dari kami.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0cm; font-size: medium; font-family: Calibri, sans-serif;\"><span style=\"font-size: 10pt; font-family: \" helvetica=\"\" neue\";\"=\"\"><o:p>&nbsp;</o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0cm; font-size: medium; font-family: Calibri, sans-serif;\"><b><span style=\"font-size: 10pt; font-family: \" helvetica=\"\" neue\";\"=\"\">Terima Kasih sudah berbelanja bersama WAHL MPM Indonesia!</span></b><span style=\"font-size: 10pt; font-family: \" helvetica=\"\" neue\";\"=\"\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0cm; font-size: medium; font-family: Calibri, sans-serif;\"><span lang=\"EN-GB\">&nbsp;</span></p>', 'cara-pembelian', '', '', 1, 0, '2020-05-09 12:35:56', 0, '2021-07-27 10:43:48', 1);

-- ----------------------------
-- Table structure for payment_confirmation
-- ----------------------------
DROP TABLE IF EXISTS `payment_confirmation`;
CREATE TABLE `payment_confirmation`  (
  `payment_confirmation_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL DEFAULT 0,
  `invoice_no` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `email` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `telephone` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `amount` decimal(15, 2) NOT NULL DEFAULT 0.00,
  `to_bank` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `from_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `from_bank` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `from_number` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_transfered` date NOT NULL DEFAULT '0000-00-00',
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `receipt_image` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`payment_confirmation_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of payment_confirmation
-- ----------------------------
INSERT INTO `payment_confirmation` VALUES (1, 42, '2021082542', 'yustian.deni94@gmail.com', '08255599970', 2367000.00, 'BCA Matraman', 'Deni satria yustian', 'Bank BNI', '0356584412', '2021-08-26 09:52:57', '2021-08-25', '', 'misc/4c4808c27350c5baa529f07088e29f07.jpg');
INSERT INTO `payment_confirmation` VALUES (2, 42, '2021082542', 'yustian.deni94@gmail.com', '08255599970', 2367000.00, 'BCA Matraman', 'Deni satria yustian', 'Bank BNI', '0356584412', '2021-08-26 09:53:18', '2021-08-25', 'Di cek ya', 'misc/4c4808c27350c5baa529f07088e29f07.jpg');
INSERT INTO `payment_confirmation` VALUES (3, 42, '2021082542', 'yustian.deni94@gmail.com', '08255599970', 2367000.00, 'BCA Matraman', 'Deni satria yustian', 'Bank BNI', '0356584412', '2021-08-26 09:53:23', '2021-08-25', 'Di cek ya', 'misc/4c4808c27350c5baa529f07088e29f07.jpg');
INSERT INTO `payment_confirmation` VALUES (4, 42, '2021082542', 'yustian.deni94@gmail.com', '08255599970', 2367000.00, 'BCA Matraman', 'Deni satria yustian', 'Bank BNI', '0356584412', '2021-08-26 09:53:45', '2021-08-25', 'Di cek ya', 'misc/4c4808c27350c5baa529f07088e29f07.jpg');
INSERT INTO `payment_confirmation` VALUES (5, 42, '2021082542', 'yustian.deni94@gmail.com', '081255599970', 2367000.00, 'BCA Matraman', 'Deni satria yustian', 'Bank BNI', '0356584412', '2021-08-26 09:55:08', '2021-08-25', 'Di cek ya', 'misc/4c4808c27350c5baa529f07088e29f07.jpg');
INSERT INTO `payment_confirmation` VALUES (6, 42, '2021082542', 'yustian.deni94@gmail.com', '081255599970', 2367000.00, 'BCA Matraman', 'Deni satria yustian', 'Bank BNI', '0356584412', '2021-08-26 09:56:38', '2021-08-25', 'Di cek ya', 'misc/4c4808c27350c5baa529f07088e29f07.jpg');

-- ----------------------------
-- Table structure for payment_module
-- ----------------------------
DROP TABLE IF EXISTS `payment_module`;
CREATE TABLE `payment_module`  (
  `code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `version` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `config` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of payment_module
-- ----------------------------
INSERT INTO `payment_module` VALUES ('bank_transfer', 'Bank Transfer', 'Payment module using local bank transfer', '1.1.0', 1, 'a:0:{}');
INSERT INTO `payment_module` VALUES ('gopay', 'GoPay', 'Payment module using GoPay', '1.1.0', 1, 'a:0:{}');
INSERT INTO `payment_module` VALUES ('ovo', 'OVO', 'Payment module using OVO', '1.1.0', 1, 'a:0:{}');

-- ----------------------------
-- Table structure for payment_transaction
-- ----------------------------
DROP TABLE IF EXISTS `payment_transaction`;
CREATE TABLE `payment_transaction`  (
  `payment_transaction_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL DEFAULT 0,
  `customer_id` int NOT NULL DEFAULT 0,
  `amount` decimal(15, 2) NOT NULL DEFAULT 0.00,
  `payment_code` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `comment` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`payment_transaction_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of payment_transaction
-- ----------------------------

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `inventory_product_id` int NOT NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `meta_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `meta_keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `meta_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `tag` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `sku` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` decimal(15, 2) NOT NULL DEFAULT 0.00,
  `base_price` decimal(15, 2) NOT NULL DEFAULT 0.00,
  `category_id` int NOT NULL DEFAULT 0,
  `manufacturer_id` int NOT NULL DEFAULT 0,
  `showcase_id` int NOT NULL DEFAULT 0,
  `points` int NOT NULL DEFAULT 0,
  `weight` decimal(15, 2) NOT NULL DEFAULT 0.00,
  `weight_class_id` int NOT NULL DEFAULT 0,
  `quantity` int NOT NULL DEFAULT 0,
  `unit_class_id` int NOT NULL DEFAULT 0,
  `stock_status_id` int NOT NULL DEFAULT 0,
  `minimum` int NOT NULL DEFAULT 1,
  `minimum_stock` int NOT NULL DEFAULT 0,
  `shipping` tinyint(1) NOT NULL DEFAULT 1,
  `sort_order` int NOT NULL DEFAULT 0,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `cod` tinyint(1) NOT NULL DEFAULT 0,
  `tax_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `tax_value` decimal(15, 2) NOT NULL DEFAULT 0.00,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `viewed` int NOT NULL DEFAULT 0,
  `new` tinyint(1) NOT NULL DEFAULT 1,
  `unique_code` char(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `specification` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `whatisinthebox` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`product_id`) USING BTREE,
  INDEX `inventory_product_id`(`inventory_product_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 593 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (571, 0, 'LEGEND CLIPPER', '<p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:normal\"><span style=\"font-size: 10.5pt; font-family: \" segoe=\"\" ui\",=\"\" sans-serif;\"=\"\">Wahl Legend Clipper\r\ndibuat dengan motor V9000 yang kuat, namun mesin tidak mudah panas selama pemakaian,\r\nsehingga Anda dapat menggunakannya dalam waktu yang lama!<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:normal\"><span style=\"font-size: 10.5pt; font-family: \" segoe=\"\" ui\",=\"\" sans-serif;\"=\"\">Cocok untuk: Potongan Gradasi dengan Pisau yang Lebar<o:p></o:p></span></p><p class=\"MsoNormal\"><br></p><p class=\"MsoNormal\" style=\"margin-bottom:7.5pt;line-height:normal\"><br></p><ul type=\"disc\">\r\n</ul>', '<p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:normal\"><span style=\"font-size: 10.5pt; font-family: \" segoe=\"\" ui\",=\"\" sans-serif;\"=\"\">Wahl Legend Clipper\r\ndibuat dengan motor V9000 yang kuat, namun mesin tida', 'Wahl Legend Corded Clipper, Wahl Pro, Wahl Indonesia', 'Jual LEGEND CLIPPER', 'legend-clipper', NULL, '3-02-8147', NULL, 1150000.00, 1150000.00, 357, 0, 0, 0, 1400.00, 3, 0, 1, 0, 1, 0, 1, 0, 1, 0, '', 0.00, '2021-01-25 15:59:52', '2021-08-12 09:43:41', 566, 1, '302', '<p class=\"MsoNormal\"><span segoe=\"\" ui\",=\"\" sans-serif;\"=\"\" style=\"font-size: 10.5pt; line-height: 14.98px;\"><span style=\"font-weight: 700;\">Garansi:</span><br>1 Tahun<br><span style=\"font-weight: 700;\">Panjang pencukuran:<br></span>0.8 – 3mm<br><span style=\"font-weight: 700;\">Ukuran sisir sepatu:<br></span>0.5,1, 1.5, 2, 3, 4, 6, 8</span><o:p></o:p></p><div><span segoe=\"\" ui\",=\"\" sans-serif;\"=\"\" style=\"font-size: 10.5pt; line-height: 14.98px;\"><br></span></div>', '<ul type=\"disc\"><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Legend Corded Clipper<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">8 Sisir Sepatu Premium </span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Pelindung Pisau<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Minyak untuk Mata Pisau<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Sikat Pembersih<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Buku Instruksi</span></li></ul>');
INSERT INTO `product` VALUES (574, 0, 'MAGIC CLIP CLIPPER', '<p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:normal\"><span style=\"font-size: 10.5pt; font-family: \" segoe=\"\" ui\",=\"\" sans-serif;\"=\"\">Wahl Magic Clip Corded\r\nini didesain khusus untuk rambut afro/tebal. Dibuat secara ergonomik, dengan\r\nmotor V5000 yang bersuara halus dan tidak mudah panas!<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:normal\"><b><span style=\"font-size: 10.5pt; font-family: \" segoe=\"\" ui\",=\"\" sans-serif;\"=\"\">Cocok untuk</span></b><span style=\"font-size: 10.5pt; font-family: \" segoe=\"\" ui\",=\"\" sans-serif;\"=\"\">: Potongan Rambut Tebal, Gradasi<o:p></o:p></span></p><p class=\"MsoNormal\"><br></p><ul type=\"disc\">\r\n</ul>', '<p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:normal\"><span style=\"font-size: 10.5pt; font-family: \" segoe=\"\" ui\",=\"\" sans-serif;\"=\"\">Wahl Magic Clip Corded\r\nini didesain khusus untuk rambut afro/tebal. Dibua', 'Close cutting & fading, Zero (0) Overlap, Wahl Pro, Wahl Indonesia, Wahl Magic Clip Corded Clipper', 'Jual MAGIC CLIP CLIPPER', 'magic-clip-clipper', NULL, '3-04-8451', NULL, 1050000.00, 1050000.00, 358, 0, 0, 0, 1200.00, 3, 0, 1, 0, 1, 0, 1, 0, 1, 0, '', 0.00, '2021-01-26 14:09:18', '2021-08-20 09:38:26', 392, 1, '303', '<p class=\"MsoNormal\"><span segoe=\"\" ui\",=\"\" sans-serif;\"=\"\" style=\"font-size: 10.5pt; line-height: 14.98px;\"><span style=\"font-weight: 700;\">Garansi:</span><br>1 Tahun<br><span style=\"font-weight: 700;\">Panjang pencukuran:<br></span>1 – 3.5mm<br><span style=\"font-weight: 700;\">Ukuran sisir sepatu:<br></span>1, 2, 3, 4, 5, 6, 7, 8</span><o:p></o:p></p><p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; line-height: normal;\"><span segoe=\"\" ui\",=\"\" sans-serif;\"=\"\" style=\"font-size: 10.5pt;\"><br><br></span></p>', '<ul type=\"disc\"><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Magic Clip Corded Clipper<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">8 Sisir Sepatu (1-8)<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Pelindung Pisau<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Sisir Flat Top Kecil<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Minyak untuk Mata Pisau<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Sikat Pembersih<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Buku Instruksi</span></li></ul>');
INSERT INTO `product` VALUES (575, 0, 'BALDING CLIPPER', '<p class=\"MsoNormal\">Wahl Balding Clipper sangat cocok untuk pemotongan rambut yang sangat dekat dengan kulit kepala. Getaran motor yang kuat dari clipper ini dapat memangkas rambut dua kali\r\nlebih cepat dari biasanya!<o:p></o:p></p><p class=\"MsoNormal\"><b>Cocok untuk</b>: Skin\r\nTight Finish</p><ul type=\"disc\">\r\n</ul>', '<p class=\"MsoNormal\">Wahl Balding Clipper sangat cocok untuk pemotongan rambut yang sangat dekat dengan kulit kepala', 'Wahl Balding Corded Clipper, Wahl Pro, Wahl Indonesiawahl pro, wahl Indonesia', 'Jual BALDING CLIPPER', 'balding-clipper', NULL, '3-03-8110', NULL, 995000.00, 995000.00, 358, 0, 0, 0, 1100.00, 3, 0, 1, 0, 1, 0, 1, 0, 1, 0, '', 0.00, '2021-01-26 14:13:47', '2021-06-03 11:19:19', 349, 1, '304', '<p><span segoe=\"\" ui\",=\"\" sans-serif;\"=\"\" style=\"font-size: 10.5pt; line-height: 14.98px;\"><span style=\"font-weight: 700;\">Garansi:</span><br>1 Tahun<br><span style=\"font-weight: 700;\">Panjang pencukuran:<br></span>0.4mm<br><span style=\"font-weight: 700;\">Ukuran sisir sepatu:<br></span>0.5, 1.5</span><br></p>', '<ul type=\"disc\"><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Balding Clipper<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">2 Sisir Sepatu Premium (0.5, 1.5)<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Pelindung Pisau<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Sisir Barber<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Sikat pre-shave<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Minyak untuk Mata Pisau<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Sikat Pembersih<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Buku Instruksi</span></li></ul>');
INSERT INTO `product` VALUES (576, 0, 'FINALE SHAVER', '<p class=\"MsoNormal\" style=\"margin-bottom:0in;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size: 10.5pt; font-family: \" segoe=\"\" ui\",=\"\" sans-serif;\"=\"\">Alat yang Anda butuhkan\r\nuntuk ultra-close finish!<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:0in;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size: 10.5pt; font-family: \" segoe=\"\" ui\",=\"\" sans-serif;\"=\"\">Finale shaver dirancang\r\nuntuk blending, bald fading, merapikan hair & neck lines.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:0in;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size: 10.5pt; font-family: \" segoe=\"\" ui\",=\"\" sans-serif;\"=\"\"> </span></p><p class=\"MsoNormal\" style=\"margin-bottom:7.5pt;line-height:normal\"><b><span style=\"font-size: 10.5pt; font-family: \" segoe=\"\" ui\",=\"\" sans-serif;\"=\"\">Cocok untuk:</span></b><span style=\"font-size: 10.5pt; font-family: \" segoe=\"\" ui\",=\"\" sans-serif;\"=\"\"> Ultra-Close Finisih, </span><span style=\"font-size: 10.5pt; font-family: \" segoe=\"\" ui\",=\"\" sans-serif;\"=\"\">Blending, Bald Fading<b><u><br></u></b></span></p>', '<p><span style=\"color: rgb(17, 17, 17); font-family: Arial, sans-serif;\">5-Star <br>Baterai Lithium Ion</span></p><p><span style=\"color: rgb(17, 17, 17); font-family: Arial, sans-serif;\">P: 11.6 cm.<br>Berat: 164 gr', 'Wahl Finale Shaver, Wahl Pro, Wahl Indonesia', 'Jual FINALE SHAVER', 'finale-shaver', NULL, '6-01-8164', NULL, 1500000.00, 1500000.00, 360, 0, 0, 0, 1100.00, 3, 0, 1, 0, 1, 0, 1, 0, 1, 0, '', 0.00, '2021-01-26 14:22:20', '2021-06-03 11:19:30', 375, 1, '101', '<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; line-height: normal;\"><span segoe=\"\" ui\",=\"\" sans-serif;\"=\"\" style=\"font-size: 10.5pt;\"><span style=\"font-weight: 700;\">Garansi:</span><br>1 Tahun<br><span style=\"font-weight: 700;\">Waktu pemakaian:<br></span>90 menit<br><span style=\"font-weight: 700;\">Waktu pengisian daya:<br></span>120 menit<br><span style=\"font-weight: 700;\">Panjang pencukuran:<br></span>0.08 mm<o:p></o:p></span></p><div><span segoe=\"\" ui\",=\"\" sans-serif;\"=\"\" style=\"font-size: 10.5pt;\"><br></span></div>', '<p><br></p><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Finale Shaver<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Pelindung Foil</span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Charger<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Sikat Pre-shave<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Sikat Pembersih</span></li><li class=\"MsoNormal\" style=\"line-height: normal;\">Buku Instruksi</li>');
INSERT INTO `product` VALUES (577, 0, 'BERET CORDLESS TRIMMER', '<p class=\"MsoNormal\">Wahl Lithium-Ion Beret merupakan trimmer yang kuat namun\r\nramping dan dapat diisi ulang dengan teknologi Lithium-Ion terbaru. Cocok untuk\r\npemotongan close lining dan edging. Dapat digunakan selama 75 menit tanpa\r\nkabel, non-stop!<br>\r\n<br>\r\n<b>Cocok untuk:</b> Edging, Lining</p><ul type=\"disc\">\r\n</ul>', '<p>Baterai Lithium Ion<br>Dapat digunakan 75 menit non-stop. <br>Pengisian daya selama 60 menit.<br>Cocok untuk triming dan outlining.<br>Stan pengisi daya yang cocok untuk tempat kerja manapun', 'Wahl Beret Cordless Trimmer, Wahl Pro, Wahl Indonesia', 'Jual BERET CORDLESS TRIMMER', 'beret-cordless-trimmer', NULL, '5-02-8841', NULL, 1300000.00, 1300000.00, 359, 0, 0, 0, 1100.00, 3, 0, 1, 0, 1, 0, 1, 0, 1, 0, '', 0.00, '2021-01-26 14:25:57', '2021-08-10 15:59:20', 646, 1, '102', '<p><span style=\"font-weight: 700;\">Garansi:</span><br>1 Tahun<br><span style=\"font-weight: 700;\">Waktu pemakaian:<br></span>75 menit<br><span style=\"font-weight: 700;\">Waktu pengisian daya:<br></span>60 menit<br><span style=\"font-weight: 700;\">Panjang pencukuran:<br></span>0.4mm<br></p>', '<li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Beret Trimmer<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">4 Sisir Sepatu (1-4)<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Pelindung Pisau<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Charger Stand<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Minyak untuk Mata Pisau<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Sikat Pembersih<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Buku Instruksi</span></li>');
INSERT INTO `product` VALUES (578, 0, 'DETAILER LI CORDLESS TRIMMER', '<p class=\"MsoNormal\">Wahl Detailer Li terbaru hadir dengan extra-wide T-blade, 6mm\r\nlebih lebar dari T-blade biasanya. Trimmer ini juga dilengkapi dengan baterai\r\nlithium-ion yang dapat bekerja selama 100 menit tanpa kabel, ringan, dan\r\nstylish.<br><br><b>Cocok untuk</b>: Super Close Trimming, Outlines, Hair Tattoo</p><ul type=\"disc\">\r\n</ul>', '<p>Extra T-Wide Blade (38 mm).<br>Baterai: Lithium Ion.<br>100 menit penggunaan non-stop.<br>Salah satu trimmer Wahl paling ringan.<br>Extremely close trimming.<br>Stan pengisi daya yang cocok untuk tempat kerja manapun', 'Wahl Detailer Lithium Ion Cordless Trimmer Wahl, Wahl Pro, Wahl Indonesia', 'Jual DETAILER LI CORDLESS TRIMMER', 'detailer-li-cordless-trimmer', NULL, '5-03-8171', NULL, 2100000.00, 2100000.00, 359, 0, 0, 0, 1100.00, 3, 0, 1, 0, 1, 0, 1, 0, 1, 0, '', 0.00, '2021-01-26 14:34:42', '2021-08-10 15:26:15', 686, 1, '103', '<p><span style=\"font-weight: 700;\">Garansi:</span><br>1 Tahun<br><span style=\"font-weight: 700;\">Waktu pemakaian:<br></span>100 menit<br><span style=\"font-weight: 700;\">Waktu pengisian daya:<br></span>45 menit<br><span style=\"font-weight: 700;\">Panjang pencukuran:<br></span>0.4mm<br></p>', '<li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Cordless Detailer Li Trimmer<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">3 Sisir Sepatu (0.5-1.5)</span></li><li class=\"MsoNormal\" style=\"line-height: normal;\">Sisir Flat Top<span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\"><o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Pelindung Pisau<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Charger Stand<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Minyak untuk Mata Pisau<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Sikat Pembersih<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Buku Instruksi</span></li>');
INSERT INTO `product` VALUES (579, 0, 'SUPER TAPER CLIPPER', '<p class=\"MsoNormal\"><span segoe=\"\" ui\",=\"\" sans-serif;\"=\"\" style=\"font-size: 10.5pt; line-height: 14.98px;\">Jika Anda baru memulai atau sudah memotong rambut selama bertahun-tahun, Wahl Super Taper Corded merupakan mesin utama yang harus Anda miliki!<br> </span><br><span style=\"font-weight: 700;\">Cocok untuk:</span> Potongan Rambut Tebal, Taper</p><ul type=\"disc\">\r\n</ul><ul type=\"disc\">\r\n</ul>', '<p class=\"MsoNormal\">Dengan kekuatan motor V5000, Super Taper Corded ini memberikan\r\nperforma kerja yang tahan lama. Clipper ini merupakan alat yang wajib dimiliki\r\nbarber manapun.<br>\r\n<br>\r\n<b>Cocok untuk</b>: Pemotongan Rambut\r\nTebal, Taper<br>\r\n<br>\r\n', 'Wahl Super Taper Corded Clipper, Wahl Pro, Wahl Indonesia ', 'Jual SUPER TAPER CLIPPER', 'super-taper-clipper', NULL, '3-01-3466', NULL, 790000.00, 790000.00, 358, 0, 0, 0, 1100.00, 3, 0, 1, 0, 1, 0, 1, 0, 1, 0, '', 0.00, '2021-02-11 13:38:41', '2021-08-12 09:46:29', 868, 1, '', '<p class=\"MsoNormal\"><span segoe=\"\" ui\",=\"\" sans-serif;\"=\"\" style=\"font-size: 10.5pt; line-height: 14.98px;\"><span style=\"font-weight: 700;\">Garansi:</span><br>1 Tahun<br><span style=\"font-weight: 700;\">Panjang pencukuran:<br></span>1 – 3.5mm<br><span style=\"font-weight: 700;\">Ukuran sisir sepatu:<br></span>1, 2, 3, 4</span><o:p></o:p></p><div><span segoe=\"\" ui\",=\"\" sans-serif;\"=\"\" style=\"font-size: 10.5pt; line-height: 14.98px;\"><br></span></div>', '<ul type=\"disc\"><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Super Taper Corded Clipper<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">4 Sisir Sepatu (1-4)<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Sisir Flat Top Kecil<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Pelindung pisau</span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Minyak untuk Mata Pisau<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Sikat Pembersih<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Buku Instruksi</span></li></ul>');
INSERT INTO `product` VALUES (580, 0, 'SENIOR CORDLESS CLIPPER', '<p class=\"MsoNormal\">Senior Cordless seri Wahl 5-Star ini adalah versi ringan\r\ndari mesin heavy duty dengan baterai lithium ion yang dapat bekerja selama 70 menit\r\npemakaian, non-stop!<o:p></o:p></p><p>\r\n\r\n<span style=\"font-size:11.0pt;line-height:107%;font-family:\" calibri\",sans-serif;=\"\" mso-ascii-theme-font:minor-latin;mso-fareast-font-family:calibri;mso-fareast-theme-font:=\"\" minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-theme-font:minor-bidi;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-us;mso-bidi-language:ar-sa\"=\"\"><b>Cocok untuk</b>: Closer Cutting, Precision Fading<br></span></p>', '<p class=\"MsoNormal\">Senior Cordless seri Wahl 5-Star ini adalah versi ringan\r\ndari mesin heavy duty dengan baterai lithium ion yang dapat bekerja selama 70 menit\r\npemakaian, non-stop!<o:p></o:p></p><p>\r\n\r\n<span style=\"font-size:11.0pt;line-height:107%;fo', 'Wahl Senior Cordless Clipper, Wahl Pro, Wahl Indonesia', 'Jual SENIOR CORDLESS CLIPPER', 'senior-cordless-clipper', NULL, '3-08-8504', NULL, 2300000.00, 2300000.00, 358, 0, 0, 0, 1400.00, 3, 0, 1, 0, 1, 0, 1, 0, 1, 0, '', 0.00, '2021-02-11 13:42:00', '2021-06-03 11:20:16', 590, 1, '', '<p class=\"MsoNormal\"><span style=\"font-weight: 700;\">Garansi:</span><br>1 Tahun<br><span style=\"font-weight: 700;\">Waktu pemakaian:<br></span>70 menit<br><span style=\"font-weight: 700;\">Waktu pengisian daya:<br></span>70 menit<br><span style=\"font-weight: 700;\">Panjang pencukuran:<br></span>1 – 3.5mm<br><span style=\"font-weight: 700;\">Ukuran sisir sepatu:<br></span>0.5, 1, 1.5</p><div><br></div>', '<ul><li>Senior Cordless Clipper</li><li>3 Sisir Sepatu Premium (0.5, 1, 1,5)</li><li>Sisir Flat Top </li><li>Charger</li><li>Minyak untuk Mata Pisau</li><li>Sikat Pembersih</li><li>Buku Instruksi</li></ul>');
INSERT INTO `product` VALUES (581, 0, 'MAGIC CLIP CORDLESS CLIPPER', '<p class=\"MsoNormal\" style=\"margin-bottom:7.5pt;line-height:normal\"><span style=\"font-size: 10.5pt; font-family: \" segoe=\"\" ui\",=\"\" sans-serif;\"=\"\">Pencukuran yang lebih\r\ncepat dan hasil gradasi yang lebih halus. Magic Clipper Cordless ini dilengkapi\r\ndengan teknologi baterai lithium-ion mempunyai waktu pemakaian hingga 90 menit,\r\nserta teknologi cruch blade untuk potongan yang lebih natural dan hasil akhir\r\nyang sempurna.<br>\r\n<br>\r\n<b>Cocok untuk:</b> Potongan Gradasi yang Lebih Halus</span></p>', '<p class=\"MsoNormal\" style=\"margin-bottom:7.5pt;line-height:normal\"><span style=\"font-size: 10.5pt; font-family: \"Segoe UI\", sans-serif;\">Pencukuran yang lebih\r\ncepat dan hasil blendingan yang lebih halus. Magic Clipper Cordless ini dilengkapi\r\n', 'Wahl Magic Clip Cordless Clipper, Wahl Pro, Wahl Indonesia', 'Jual MAGIC CLIP CORDLESS CLIPPER', 'magic-clip-cordless-clipper', NULL, '3-07-8148', NULL, 1750000.00, 1750000.00, 358, 0, 0, 0, 1200.00, 3, 0, 1, 0, 1, 0, 1, 0, 1, 0, '', 0.00, '2021-02-11 13:53:34', '2021-08-20 09:38:37', 542, 1, '', '<p><span style=\"font-weight: 700;\">Garansi:</span><br>1 Tahun<br><span style=\"font-weight: 700;\">Waktu pemakaian:<br></span>90 menit<br><span style=\"font-weight: 700;\">Waktu pengisian daya:<br></span>120 menit<br><span style=\"font-weight: 700;\">Panjang pencukuran:<br></span>0.8 – 2.5mm<br><span style=\"font-weight: 700;\">Ukuran sisir sepatu:<br></span>0.5, 1.5, 1, 2, 3, 4, 6, 8<br></p>', '<ul type=\"disc\"><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Cordless Magic Clip Clipper<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">8 Sisir Sepatu (0.5, 1.5, 1-4, 6, 8)<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Pelindung pisau<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Charger<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Minyak untuk Mata Pisau<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Sikat Pembersih<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Buku Instruksi</span></li></ul>');
INSERT INTO `product` VALUES (582, 0, 'DETAILER TRIMMER', '<p class=\"MsoNormal\">Wahl Detailer Trimer ini dilengkapi dengan mata pisau T-wide,\r\ndan kabel yang kuat. Rasakan sensasi mencukur dengan cepat dan mudah. Sangat\r\ncocok untuk pencukuran jenggot.</p><p class=\"MsoNormal\"><b>Cocok untuk</b>:\r\nPrecision Detailing<o:p></o:p></p><p class=\"MsoNormal\"><br></p>', '<p class=\"MsoNormal\">Wahl Detailer Trimer ini dilengkapi dengan mata pisau T-wide,\r\ndan kabel yang kuat. Rasakan sensasi mencukur dengan cepat dan mudah. Sangat\r\ncocok untuk <span style=\"color:red\">shape ups dan beard lines.<o:p></o:p></span></p><p class=', 'Wahl Detailer Corded Trimmer, Wahl Pro, Wahl Indonesia', 'Jual DETAILER TRIMMER', 'detailer-trimmer', NULL, '5-01-8081', NULL, 1250000.00, 1250000.00, 359, 0, 0, 0, 1000.00, 3, 0, 1, 0, 1, 0, 1, 0, 1, 0, '', 0.00, '2021-02-11 13:55:40', '2021-09-07 13:35:56', 500, 1, '', '<p class=\"MsoNormal\"><span segoe=\"\" ui\",=\"\" sans-serif;\"=\"\" style=\"font-size: 10.5pt; line-height: 14.98px;\"><span style=\"font-weight: 700;\">Garansi:</span><br>1 Tahun<br><span style=\"font-weight: 700;\">Panjang pencukuran:<br></span>0.4mm</span><o:p></o:p></p><div><span segoe=\"\" ui\",=\"\" sans-serif;\"=\"\" style=\"font-size: 10.5pt; line-height: 14.98px;\"><br></span></div>', '<ul type=\"disc\"><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Detailer Corded Trimmer<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">3 Sisir Sepatu (1-3)<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Pelindung Pisau<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Minyak untuk Mata Pisau<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Sikat Pembersih<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Buku Instruksi</span></li></ul>');
INSERT INTO `product` VALUES (583, 0, 'SUPER TAPER CORDLESS CLIPPER', '<p class=\"MsoNormal\"><span segoe=\"\" ui\",=\"\" sans-serif;\"=\"\" style=\"font-size: 10.5pt; line-height: 14.98px;\">Pencukuran rambut tebal dan taper tanpa kabel. Baterai lithium-ion yang dimiliki oleh Chromstyle Cordless Clipper ini dapat bekerja selama 90 menit non-stop! Anda dapat mengatur tuas dengan mudah untuk potongan taper dan tekstur yang diinginkan.<br> </span><br><span style=\"font-weight: 700;\">Cocok untuk:</span> Potongan Rambut Tebal, Taper</p>', '<p class=\"MsoNormal\"><span segoe=\"\" ui\",=\"\" sans-serif;\"=\"\" style=\"font-size: 10.5pt; line-height: 14.98px;\">Pencukuran rambut tebal dan taper tanpa kabel. Baterai lithium-ion yang dimiliki oleh Chromstyle Cordless Clipper ini dapat bekerja selama 90 meni', 'Wahl Super Taper Cordless Clipper, Wahl Pro, Wahl Indonesia', 'Jual SUPER TAPER CORDLESS CLIPPER', 'super-taper-cordless-clipper', NULL, '3-06-8591', NULL, 1600000.00, 1600000.00, 358, 0, 0, 0, 1400.00, 3, 0, 1, 0, 1, 0, 1, 0, 1, 0, '', 0.00, '2021-02-11 13:57:27', '2021-06-03 11:20:54', 592, 1, '', '<p class=\"MsoNormal\"><span segoe=\"\" ui\",=\"\" sans-serif;\"=\"\" style=\"font-size: 10.5pt; line-height: 14.98px;\"><span style=\"font-weight: 700;\">Garansi:</span><br>1 Tahun<br><span style=\"font-weight: 700;\">Waktu pemakaian:<br></span>90 menit<br><span style=\"font-weight: 700;\">Waktu pengisian daya:<br></span>120 menit<br><span style=\"font-weight: 700;\">Panjang pencukuran:<br></span>1 – 3.5mm<br><span style=\"font-weight: 700;\">Ukuran sisir sepatu:<br></span>1, 2, 3, 4</span><o:p></o:p></p><div><span segoe=\"\" ui\",=\"\" sans-serif;\"=\"\" style=\"font-size: 10.5pt; line-height: 14.98px;\"><br></span></div>', '<ul type=\"disc\"><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Cordless Super Taper Clipper<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">4 Sisir Sepatu (1-4)<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Sisir Flat Top Kecil<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Pelindung pisau<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Charger<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Minyak untuk Mata Pisau<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Sikat Pembersih<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Buku Instruksi</span></li></ul>');
INSERT INTO `product` VALUES (584, 0, 'LEGEND BLADE SET INTL', '<p class=\"MsoNormal\" style=\"margin-bottom:0in;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Pisau Wedge pengganti\r\nuntuk Legend Corded Clipper. <br>\r\nDilengkapi dengan teknologi crunch blade yang memberikan hasil potongan fade dan\r\ngradasi sempurna.<br>\r\n</span><br>\r\nPisau Wahl dibuat dengan menggunakan standar mesin tertinggi. Setiap mata\r\npisau dibuat secara presisi untuk memastikan ketajaman dan daya tahan, serta meningkatkan\r\nkualitas pengalaman pemotongan Anda.<br>\r\n<span style=\"font-family: \" segoe=\"\" ui\",=\"\" sans-serif;\"=\"\"><br>\r\n</span><b><span style=\"font-size: 10.5pt; font-family: \" segoe=\"\" ui\",=\"\" sans-serif;=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\">Cocok untuk:</span></b><span style=\"font-size: 10.5pt; font-family: \" segoe=\"\" ui\",=\"\" sans-serif;=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\"> 5-star Legend\r\nCorded Clipper.</span><span style=\"font-size: 10.5pt; font-family: \" segoe=\"\" ui\",=\"\" sans-serif;\"=\"\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:7.5pt;line-height:normal\"><br></p>', '<p class=\"MsoNormal\" style=\"margin-bottom:0in;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; backgroun', 'Wahl Legend Blade, Wahl Pro, Wahl Indonesia', 'Jual LEGEND BLADE SET INTL', 'legend-blade-set-intl', NULL, '7-06-2228', NULL, 275000.00, 275000.00, 361, 0, 0, 0, 300.00, 3, 0, 1, 0, 1, 0, 1, 0, 1, 0, '', 0.00, '2021-02-11 14:00:11', '2021-02-23 12:13:21', 258, 1, '', '<p><span style=\"font-weight: 700;\">Panjang potongan</span><span segoe=\"\" ui\",=\"\" sans-serif;\"=\"\" style=\"font-size: 10.5pt;\">: 0.8 - 3mm</span><br></p>', '<ul type=\"disc\"><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Pisau<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Minyak untuk Pisau<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Sekrup</span></li></ul>');
INSERT INTO `product` VALUES (585, 0, 'MAGIC CLIP BLADE SET', '<p class=\"MsoNormal\" style=\"margin-bottom:0in;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Pisau pengganti (precision\r\nfade, fixed).<br>\r\n</span><br>\r\nPisau Wahl dibuat dengan menggunakan standar mesin tertinggi. Setiap mata\r\npisau dibuat secara presisi untuk memastikan ketajaman dan daya tahan, serta meningkatkan\r\nkualitas pengalaman pemotongan Anda.<br>\r\n<span style=\"font-family: \" segoe=\"\" ui\",=\"\" sans-serif;\"=\"\"><br>\r\n</span><b><span style=\"font-size: 10.5pt; font-family: \" segoe=\"\" ui\",=\"\" sans-serif;=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\">Cocok untuk:</span></b><span style=\"font-size: 10.5pt; font-family: \" segoe=\"\" ui\",=\"\" sans-serif;=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\"> 5-Star Magic\r\nClip Corded Clipper & Senior Cordless Clipper.</span></p><ul type=\"disc\">\r\n</ul>', '<p class=\"MsoNormal\">Pisau Pengganti (fine).<br>\r\n<br>\r\nPisau wahl dibuat dengan menggunakan standar mesin tertinggi. Setiap mata pisau\r\ndibuat secara presisi untuk memastikan ketajaman dan daya tahan, serta meningkatkan\r\nkualitas pengalaman pemotongan An', 'Wahl Magic Clip Corded Blade, Wahl Senior Blade, Wahl Pro, Wahl Indonesia', 'Jual MAGIC CLIP BLADE SET', 'magic-clip-blade-set', NULL, '7-04-2191', NULL, 275000.00, 275000.00, 361, 0, 0, 0, 300.00, 3, 0, 1, 0, 1, 0, 1, 0, 1, 0, '', 0.00, '2021-02-11 14:03:05', '2021-02-23 12:15:06', 223, 1, '', '<p><span style=\"font-weight: 700;\">Panjang potongan</span><span segoe=\"\" ui\",=\"\" sans-serif;\"=\"\" style=\"font-size: 10.5pt;\">: 1 – 3.5mm<br></span></p>', '<ul type=\"disc\"><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Pisau<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Minyak untuk Pisau<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Sekrup</span></li></ul>');
INSERT INTO `product` VALUES (586, 0, 'TAPER BLADE SET PLATED', '<p class=\"MsoNormal\" style=\"margin-bottom:0in;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Pisau pengganti (standard,\r\nfixed).<br>\r\n</span><br>\r\nPisau Wahl dibuat dengan menggunakan standar mesin tertinggi. Setiap mata\r\npisau dibuat secara presisi untuk memastikan ketajaman dan daya tahan, serta meningkatkan\r\nkualitas pengalaman pemotongan Anda.<br>\r\n<span style=\"font-family: \" segoe=\"\" ui\",=\"\" sans-serif;\"=\"\"><br>\r\n</span><b><span style=\"font-size: 10.5pt; font-family: \" segoe=\"\" ui\",=\"\" sans-serif;=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\">Cocok untuk:</span></b><span style=\"font-size: 10.5pt; font-family: \" segoe=\"\" ui\",=\"\" sans-serif;=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\"> Adjustable Blade\r\nClippers</span></p>', '<p class=\"MsoNormal\" style=\"margin-bottom:0in;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; backgroun', 'Wahl Taper Blade, Wahl Pro, Wahl Indonesia', 'Jual TAPER BLADE SET PLATED', 'taper-blade-set-plated', NULL, '7-01-1006', NULL, 265000.00, 265000.00, 361, 0, 0, 0, 300.00, 3, 0, 1, 0, 1, 0, 1, 0, 1, 0, '', 0.00, '2021-02-11 14:04:15', '2021-02-23 12:14:15', 213, 1, '', '<p><span style=\"font-weight: 700;\">Panjang potongan</span><span segoe=\"\" ui\",=\"\" sans-serif;\"=\"\" style=\"font-size: 10.5pt;\">: 1 – 3.5mm</span><br></p>', '<ul type=\"disc\"><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Pisau</span></li></ul>');
INSERT INTO `product` VALUES (587, 0, 'MAGIC CLIP C/C BLADE SET', '<p class=\"MsoNormal\" style=\"margin-bottom:0in;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Pisau pengganti (stagger-tooth,\r\nfixed).<br>\r\nPisau stagger-tooth cocok untuk potongan taper dan fade.<br>\r\n</span><br>\r\nPisau Wahl dibuat dengan menggunakan standar mesin tertinggi. Setiap mata\r\npisau dibuat secara presisi untuk memastikan ketajaman dan daya tahan, serta meningkatkan\r\nkualitas pengalaman pemotongan Anda.<br>\r\n<span style=\"font-family: \" segoe=\"\" ui\",=\"\" sans-serif;\"=\"\"><br>\r\n</span><b><span style=\"font-size: 10.5pt; font-family: \" segoe=\"\" ui\",=\"\" sans-serif;=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\">Cocok untuk:</span></b><span style=\"font-size: 10.5pt; font-family: \" segoe=\"\" ui\",=\"\" sans-serif;=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\"> 5-star Magic Clip\r\nCordless Clipper</span></p>', '<p class=\"MsoNormal\" style=\"margin-bottom:0in;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; backgroun', 'Wahl Magic Clip Cordless Blade, Wahl Pro, Wahl Indonesia', 'Jual MAGIC CLIP C/C BLADE SET', 'magic-clip-cc-blade-set', NULL, '7-03-2161', NULL, 275000.00, 275000.00, 361, 0, 0, 0, 300.00, 3, 0, 1, 0, 1, 0, 1, 0, 1, 0, '', 0.00, '2021-02-11 14:47:26', '2021-02-23 12:14:50', 211, 1, '', '<p><span style=\"font-weight: 700;\">Panjang potongan</span><span segoe=\"\" ui\",=\"\" sans-serif;\"=\"\" style=\"font-size: 10.5pt;\">: 0.8 – 2.5mm<br></span></p>', '<ul type=\"disc\"><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Pisau<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Minyak untuk Pisau<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Sekrup</span></li></ul>');
INSERT INTO `product` VALUES (588, 0, 'T-WIDE BLADE SET DETAILER', '<p class=\"MsoNormal\" style=\"margin-bottom:0in;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Pisau T-shape\r\npengganti untuk trimmer. <br>\r\n</span><br>\r\nPisau Wahl dibuat dengan menggunakan standar mesin tertinggi. Setiap mata\r\npisau dibuat secara presisi untuk memastikan ketajaman dan daya tahan, serta meningkatkan\r\nkualitas pengalaman pemotongan Anda.<br>\r\n<span style=\"font-family: \" segoe=\"\" ui\",=\"\" sans-serif;\"=\"\"><br>\r\n</span><b><span style=\"font-size: 10.5pt; font-family: \" segoe=\"\" ui\",=\"\" sans-serif;=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\">Cocok untuk:</span></b><span style=\"font-size: 10.5pt; font-family: \" segoe=\"\" ui\",=\"\" sans-serif;=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\"> 5-star Detailer\r\nCorded Trimmer, 5-star Detailer Li Cordless Trimmer.</span></p>', '<p class=\"MsoNormal\" style=\"margin-bottom:0in;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; backgroun', 'Wahl Detailer Corded Blade, Wahl Pro, Wahl Indonesia', 'Jual T-WIDE BLADE SET DETAILER', 't-wide-blade-set-detailer', NULL, '', NULL, 350000.00, 350000.00, 361, 0, 0, 0, 300.00, 3, 0, 1, 0, 1, 0, 1, 0, 1, 0, '', 0.00, '2021-02-13 14:46:04', '2021-02-23 12:15:34', 156, 1, '', '<p><span style=\"font-weight: 700;\">Panjang potongan</span><span segoe=\"\" ui\",=\"\" sans-serif;\"=\"\" style=\"font-size: 10.5pt;\">: 0.4mm</span><br></p>', '<ul type=\"disc\"><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Pisau<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Minyak untuk Pisau<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Sekrup</span></li></ul>');
INSERT INTO `product` VALUES (589, 0, 'MAG CLIPPER BLADE SET (BERET)', '<p class=\"MsoNormal\">Pisau Pengganti (fine).<br>\r\n<br>\r\nPisau Wahl dibuat dengan menggunakan standar mesin tertinggi. Setiap mata pisau\r\ndibuat secara presisi untuk memastikan ketajaman dan daya tahan, serta meningkatkan\r\nkualitas pengalaman pemotongan Anda.<b><o:p></o:p></b></p><p class=\"MsoNormal\"><b>Cocok untuk:</b>\r\nBeret</p>', '<p class=\"MsoNormal\">Pisau Pengganti (fine).<br>\r\n<br>\r\nPisau wahl dibuat dengan menggunakan standar mesin tertinggi. Setiap mata pisau\r\ndibuat secara presisi untuk memastikan ketajaman dan daya tahan, serta meningkatkan\r\nkualitas pengalaman pemotongan An', 'Wahl Beret Trimmer Blade, Wahl Pro, Wahl Indonesia', 'Jual MAG CLIPPER BLADE SET (BERET)', 'mag-clipper-blade-set-beret', NULL, '', NULL, 350000.00, 350000.00, 361, 0, 0, 0, 300.00, 3, 0, 1, 0, 1, 0, 1, 0, 1, 0, '', 0.00, '2021-02-13 14:46:47', '2021-02-23 12:21:39', 179, 1, '', '<p><span style=\"font-weight: 700;\">Panjang Pencukuran:</span>&nbsp;0.4mm<br></p>', '<ul type=\"disc\"><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Pisau<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Minyak untuk Pisau</span></li></ul>');
INSERT INTO `product` VALUES (590, 0, 'WAHL OIL BOTTLE 4 OZ', '<p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:normal\"><span style=\"font-size: 10.5pt; font-family: \" segoe=\"\" ui\",=\"\" sans-serif;\"=\"\">Minyak Clipper Wahl\r\ndiformulasikan secara khusus untuk mendapatkan hasil terbaik dari clipper dan trimmer\r\nWahl. Jika digunakan secara teratur, akan membantu memperpanjang umur pisau\r\nWahl Anda dan tentunya menjaga ketepatan potongannya.</span></p>', '<p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:normal\"><span style=\"font-size: 10.5pt; font-family: \"Segoe UI\", sans-serif;\">Minyak Clipper Wahl\r\ndiformulasikan secara khusus untuk mendapatkan hasil ', 'Wahl Oil, Wahl Pro, Wahl Indonesia', 'Jual WAHL OIL BOTTLE 4 OZ', 'wahl-oil-bottle-4-oz', NULL, '', NULL, 45000.00, 45000.00, 362, 0, 0, 0, 150.00, 3, 0, 1, 0, 1, 0, 1, 0, 1, 0, '', 0.00, '2021-02-13 15:16:23', '2021-03-22 14:05:59', 256, 1, '', '', '<ul type=\"disc\"><li class=\"MsoNormal\" style=\"line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Minyak Clipper Wahl 118.3ml</span></li></ul>');
INSERT INTO `product` VALUES (591, 0, 'PACIFIC BLU COMBO (SUPER TAPER + BERET)', '<p>SUPER TAPER CORDLESS</p><p><span style=\"font-family: \"Work Sans\", sans-serif;\">Pencukuran rambut tebal dan taper tanpa kabel. Baterai lithium-ion yang dimiliki oleh Chromstyle Cordless Clipper ini dapat bekerja selama 90 menit non-stop! Anda dapat mengatur tuas dengan mudah untuk potongan taper dan tekstur yang diinginkan.</span></p><p>BERET</p><p><span style=\"font-family: \"Work Sans\", sans-serif;\">Wahl Lithium-Ion Beret merupakan trimmer yang kuat namun ramping dan dapat diisi ulang dengan teknologi Lithium-Ion terbaru. Cocok untuk pemotongan close lining dan edging. Dapat digunakan selama 75 menit tanpa kabel, non-stop!</span><br style=\"font-family: \"Work Sans\", sans-serif;\"></p><p><br></p>', '<p>SUPER TAPER CORDLESS</p><p><span style=\"font-family: \"Work Sans\", sans-serif;\">Pencukuran rambut tebal dan taper tanpa kabel. Baterai lithium-ion yang dimiliki oleh Chromstyle Cordless Clipper ini dapat bekerja selama 90 menit non-stop! Anda ', '', 'Jual PACIFIC BLU COMBO (SUPER TAPER + BERET)', 'pacific-blu-combo-super-taper-beret', NULL, '3-02-8592', NULL, 1990000.00, 1990000.00, 357, 0, 0, 0, 1300.00, 3, 0, 1, 0, 1, 0, 1, 0, 1, 0, '', 0.00, '2021-06-09 09:24:36', '2021-07-05 10:19:09', 426, 1, '', '<p><span style=\"font-family: \"Work Sans\", sans-serif; font-weight: 700;\">SUPER TAPER & BERET</span></p><p><span style=\"font-family: \"Work Sans\", sans-serif; font-weight: 700;\">Garansi:</span><br style=\"font-family: \"Work Sans\", sans-serif;\"><span style=\"font-family: \"Work Sans\", sans-serif;\">1 Tahun</span><br style=\"font-family: \"Work Sans\", sans-serif;\"><span style=\"font-family: \"Work Sans\", sans-serif; font-weight: 700;\">Waktu pemakaian:<br style=\"font-weight: 400;\"></span><span style=\"font-family: \"Work Sans\", sans-serif;\">90 menit, 75 menit</span><br style=\"font-family: \"Work Sans\", sans-serif;\"><span style=\"font-family: \"Work Sans\", sans-serif; font-weight: 700;\">Waktu pengisian daya:<br style=\"font-weight: 400;\"></span><span style=\"font-family: \"Work Sans\", sans-serif;\">120 menit, 60 menit</span><br style=\"font-family: \"Work Sans\", sans-serif;\"><span style=\"font-family: \"Work Sans\", sans-serif; font-weight: 700;\">Panjang pencukuran:<br style=\"font-weight: 400;\"></span><span style=\"font-family: \"Work Sans\", sans-serif;\">1 - 3.5mm, 0.4mm</span><br></p>', '<ul type=\"disc\" style=\"font-family: \"Work Sans\", sans-serif; margin-bottom: 1rem; list-style-type: circle; color: rgb(33, 37, 41);\"><li class=\"MsoNormal\" style=\"color: rgb(102, 102, 102); line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Cordless Super Taper Clipper</span></li><li class=\"MsoNormal\" style=\"color: rgb(102, 102, 102); line-height: normal;\">Beret Trimmer<span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\"><o:p></o:p></span></li><li class=\"MsoNormal\" style=\"color: rgb(102, 102, 102); line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">3 Sisir Sepatu (1/2, 1, 1/2) - Super Taper</span></li><li class=\"MsoNormal\" style=\"color: rgb(102, 102, 102); line-height: normal;\">4 Sisir Sepatu (1 - 4) - Beret</li><li class=\"MsoNormal\" style=\"color: rgb(102, 102, 102); line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Sisir Flat Top Kecil<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"color: rgb(102, 102, 102); line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Pelindung Pisau<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"color: rgb(102, 102, 102); line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Charger - Super Taper</span></li><li class=\"MsoNormal\" style=\"color: rgb(102, 102, 102); line-height: normal;\">Charger Stand - Beret</li><li class=\"MsoNormal\" style=\"color: rgb(102, 102, 102); line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Minyak untuk Mata Pisau<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"color: rgb(102, 102, 102); line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Sikat Pembersih</span></li><li class=\"MsoNormal\" style=\"color: rgb(102, 102, 102); line-height: normal;\">Pelindung Pisau</li><li class=\"MsoNormal\" style=\"color: rgb(102, 102, 102); line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Buku Instruksi</span></li></ul>');
INSERT INTO `product` VALUES (592, 0, 'MAGIC CLIP CORDLESS - BLACK & GOLD', '<p><span style=\"font-family: \"Work Sans\", sans-serif;\">Pencukuran yang lebih cepat dan hasil gradasi yang lebih halus. Magic Clipper Cordless ini dilengkapi dengan teknologi baterai lithium-ion mempunyai waktu pemakaian hingga 90 menit, serta teknologi cruch blade untuk potongan yang lebih natural dan hasil akhir yang sempurna.</span><br></p>', '<p><span style=\"font-family: \"Work Sans\", sans-serif;\">Pencukuran yang lebih cepat dan hasil gradasi yang lebih halus. Magic Clipper Cordless ini dilengkapi dengan teknologi baterai lithium-ion mempunyai waktu pemakaian hingga 90 menit, serta te', 'Wahl Magic Clip Cordless Clipper, Wahl Pro, Wahl Indonesia', 'Jual MAGIC CLIP CORDLESS - BLACK & GOLD', 'magic-clip-cordless-black-dan-gold', NULL, '3-02-8592', NULL, 1750000.00, 1750000.00, 357, 0, 0, 0, 1200.00, 3, 0, 1, 0, 1, 0, 1, 0, 1, 0, '', 0.00, '2021-08-10 16:31:44', '2021-08-20 09:38:56', 58, 1, '', '<p><span style=\"font-family: \"Work Sans\", sans-serif; font-weight: 700;\">Garansi:</span><br style=\"font-family: \"Work Sans\", sans-serif;\"><span style=\"font-family: \"Work Sans\", sans-serif;\">1 Tahun</span><br style=\"font-family: \"Work Sans\", sans-serif;\"><span style=\"font-family: \"Work Sans\", sans-serif; font-weight: 700;\">Waktu pemakaian:<br style=\"font-weight: 400;\"></span><span style=\"font-family: \"Work Sans\", sans-serif;\">90 menit</span><br style=\"font-family: \"Work Sans\", sans-serif;\"><span style=\"font-family: \"Work Sans\", sans-serif; font-weight: 700;\">Waktu pengisian daya:<br style=\"font-weight: 400;\"></span><span style=\"font-family: \"Work Sans\", sans-serif;\">120 menit</span><br style=\"font-family: \"Work Sans\", sans-serif;\"><span style=\"font-family: \"Work Sans\", sans-serif; font-weight: 700;\">Panjang pencukuran:<br style=\"font-weight: 400;\"></span><span style=\"font-family: \"Work Sans\", sans-serif;\">0.8 – 2.5mm</span><br style=\"font-family: \"Work Sans\", sans-serif;\"><span style=\"font-family: \"Work Sans\", sans-serif; font-weight: 700;\">Ukuran sisir sepatu:<br style=\"font-weight: 400;\"></span><span style=\"font-family: \"Work Sans\", sans-serif;\">0.5, 1.5, 1, 2, 3, 4, 6, 8</span><br></p>', '<ul type=\"disc\" style=\"font-family: \"Work Sans\", sans-serif; margin-bottom: 1rem; list-style-type: circle; color: rgb(33, 37, 41);\"><li class=\"MsoNormal\" style=\"color: rgb(102, 102, 102); line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Cordless Magic Clip Clipper<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"color: rgb(102, 102, 102); line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">8 Sisir Sepatu (0.5, 1.5, 1-4, 6, 8)<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"color: rgb(102, 102, 102); line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Pelindung pisau<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"color: rgb(102, 102, 102); line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Charger<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"color: rgb(102, 102, 102); line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Minyak untuk Mata Pisau<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"color: rgb(102, 102, 102); line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Sikat Pembersih<o:p></o:p></span></li><li class=\"MsoNormal\" style=\"color: rgb(102, 102, 102); line-height: normal;\"><span segoe=\"\" ui\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\" style=\"font-size: 10.5pt;\">Buku Instruksi</span></li></ul>');

-- ----------------------------
-- Table structure for product_category
-- ----------------------------
DROP TABLE IF EXISTS `product_category`;
CREATE TABLE `product_category`  (
  `product_id` int NOT NULL DEFAULT 0,
  `category_id` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`product_id`, `category_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_category
-- ----------------------------

-- ----------------------------
-- Table structure for product_discount
-- ----------------------------
DROP TABLE IF EXISTS `product_discount`;
CREATE TABLE `product_discount`  (
  `product_discount_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL DEFAULT 0,
  `customer_group_id` int NOT NULL DEFAULT 0,
  `quantity` int NOT NULL DEFAULT 0,
  `priority` int NOT NULL DEFAULT 1,
  `price` decimal(15, 2) NOT NULL DEFAULT 0.00,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_discount_id`) USING BTREE,
  INDEX `product_id`(`product_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_discount
-- ----------------------------
INSERT INTO `product_discount` VALUES (29, 578, 0, 1, 1, 1680000.00, '2021-02-24', '2021-03-03');
INSERT INTO `product_discount` VALUES (30, 578, 0, 1, 1, 1680000.00, '2021-08-10', '2021-12-31');
INSERT INTO `product_discount` VALUES (34, 571, 0, 1, 3, 875000.00, '2021-08-10', '2021-10-01');
INSERT INTO `product_discount` VALUES (35, 571, 0, 1, 1, 1090000.00, '2021-08-12', '2021-12-31');
INSERT INTO `product_discount` VALUES (36, 571, 0, 1, 2, 1090000.00, '2021-02-24', '2021-12-31');
INSERT INTO `product_discount` VALUES (37, 579, 0, 1, 1, 690000.00, '2021-08-10', '2021-08-11');
INSERT INTO `product_discount` VALUES (38, 579, 0, 0, 0, 0.00, '0000-00-00', '0000-00-00');

-- ----------------------------
-- Table structure for product_image
-- ----------------------------
DROP TABLE IF EXISTS `product_image`;
CREATE TABLE `product_image`  (
  `product_image_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL DEFAULT 0,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `alt` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `sort_order` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`product_image_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1603 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_image
-- ----------------------------
INSERT INTO `product_image` VALUES (1464, 584, 'products/807648ed54821034e73bb476b1d46f01.JPG', 'legend blade set intl 1', 'LEGEND BLADE SET INTL 1', 1);
INSERT INTO `product_image` VALUES (1465, 584, 'products/0314d296028bd9736f85c591a68144e3.jpg', 'legend blade set intl 2', 'LEGEND BLADE SET INTL 2', 2);
INSERT INTO `product_image` VALUES (1468, 586, 'products/4161e2f9c4d5347fecfc6de372d674e4.JPG', 'taper blade set plated 1', 'TAPER BLADE SET PLATED 1', 1);
INSERT INTO `product_image` VALUES (1469, 586, 'products/25cb0d13956e1c16d9658b8d6409cbbf.jpg', 'taper blade set plated 2', 'TAPER BLADE SET PLATED 2', 2);
INSERT INTO `product_image` VALUES (1470, 587, 'products/1e55b10bd904024e754927a43013bb36.JPG', 'magic clip c/c blade set 1', 'MAGIC CLIP C/C BLADE SET 1', 1);
INSERT INTO `product_image` VALUES (1471, 587, 'products/38d9b3649aca1203fd4aec274ab043a1.jpg', 'magic clip c/c blade set 2', 'MAGIC CLIP C/C BLADE SET 2', 2);
INSERT INTO `product_image` VALUES (1472, 585, 'products/6dec6b7752c8535fee4f6c6cf7bd79f3.JPG', 'magic clip blade set 1', 'MAGIC CLIP BLADE SET 1', 1);
INSERT INTO `product_image` VALUES (1473, 585, 'products/0675aee978403c3d707fa216cf854228.jpg', 'magic clip blade set 2', 'MAGIC CLIP BLADE SET 2', 2);
INSERT INTO `product_image` VALUES (1474, 588, 'products/eb4153654c9a6c531d1be851c1c5e6eb.JPG', 't-wide blade set detailer 1', 'T-WIDE BLADE SET DETAILER 1', 1);
INSERT INTO `product_image` VALUES (1475, 589, 'products/6652142378782eec52ec5b48406901e4.JPG', 'mag clipper blade set (beret) 1', 'MAG CLIPPER BLADE SET (BERET) 1', 1);
INSERT INTO `product_image` VALUES (1527, 590, 'products/bc95523293629a968c8b4f8eceb8966c.jpg', 'wahl oil bottle 4 oz 1', 'WAHL OIL BOTTLE 4 OZ 1', 1);
INSERT INTO `product_image` VALUES (1542, 575, 'products/02de954e1a648a4feb107768b6b941fd.jpg', 'balding clipper 1', 'BALDING CLIPPER 1', 1);
INSERT INTO `product_image` VALUES (1543, 575, 'products/89a1a0e1da331722dac1a24f646d216e.jpg', 'balding clipper 2', 'BALDING CLIPPER 2', 2);
INSERT INTO `product_image` VALUES (1544, 576, 'products/5639d5cc0ec0199733f69734ffe9a231.jpg', 'finale shaver 1', 'FINALE SHAVER 1', 1);
INSERT INTO `product_image` VALUES (1545, 576, 'products/d1fe222373a57d3060656bc4becb63ec.jpg', 'finale shaver 2', 'FINALE SHAVER 2', 2);
INSERT INTO `product_image` VALUES (1551, 580, 'products/cc36fb65369da2e48060113a67874dc5.jpg', 'senior cordless clipper 1', 'SENIOR CORDLESS CLIPPER 1', 1);
INSERT INTO `product_image` VALUES (1552, 580, 'products/2adcbfe5687712a3e5f6017db726c959.jpg', 'senior cordless clipper 2', 'SENIOR CORDLESS CLIPPER 2', 2);
INSERT INTO `product_image` VALUES (1556, 583, 'products/56e54aac8515953a2fd3b151dc3ccdf0.jpg', 'super taper cordless clipper 1', 'SUPER TAPER CORDLESS CLIPPER 1', 1);
INSERT INTO `product_image` VALUES (1557, 583, 'products/24eff2b2ede4de01d50cee8aa818a8b4.jpg', 'super taper cordless clipper 2', 'SUPER TAPER CORDLESS CLIPPER 2', 2);
INSERT INTO `product_image` VALUES (1564, 591, 'products/326f66583f8b9de6b04cf7fd3b34c229.png', 'pacific blu combo (super taper + beret) 1', 'PACIFIC BLU COMBO (SUPER TAPER + BERET) 1', 1);
INSERT INTO `product_image` VALUES (1565, 591, 'products/826efae445bbc33177ad6b9415277d10.png', 'pacific blu combo (super taper + beret) 2', 'PACIFIC BLU COMBO (SUPER TAPER + BERET) 2', 2);
INSERT INTO `product_image` VALUES (1566, 591, 'products/3b431cb9d844a92248ff4b403b9526b5.png', 'pacific blu combo (super taper + beret) 3', 'PACIFIC BLU COMBO (SUPER TAPER + BERET) 3', 3);
INSERT INTO `product_image` VALUES (1573, 578, 'products/b1fc6a8d56c1c9bde6586e33543a49ad.jpg', 'detailer li cordless trimmer 1', 'DETAILER LI CORDLESS TRIMMER 1', 1);
INSERT INTO `product_image` VALUES (1574, 577, 'products/25f6eedbd12bd83f285415194725356e.jpg', 'beret cordless trimmer 1', 'BERET CORDLESS TRIMMER 1', 1);
INSERT INTO `product_image` VALUES (1575, 577, 'products/efa088a52647c6f721ee336b0a840e15.jpg', 'beret cordless trimmer 2', 'BERET CORDLESS TRIMMER 2', 2);
INSERT INTO `product_image` VALUES (1592, 571, 'products/8a067485c0219706b0cff8f70367e054.jpg', 'legend clipper 1', 'LEGEND CLIPPER 1', 1);
INSERT INTO `product_image` VALUES (1593, 571, 'products/2550c50db1e3249a0ea7d80078508d97.jpg', 'legend clipper 2', 'LEGEND CLIPPER 2', 2);
INSERT INTO `product_image` VALUES (1594, 579, 'products/b8574b50c904110882fedef56a0537e1.jpg', 'super taper clipper 1', 'SUPER TAPER CLIPPER 1', 1);
INSERT INTO `product_image` VALUES (1595, 579, 'products/4037fd9b4c30960a5ff729400762b009.jpg', 'super taper clipper 2', 'SUPER TAPER CLIPPER 2', 2);
INSERT INTO `product_image` VALUES (1597, 574, 'products/ca6f823ce2cf65de1d7796776565e4dd.jpg', 'magic clip clipper 1', 'MAGIC CLIP CLIPPER 1', 1);
INSERT INTO `product_image` VALUES (1598, 581, 'products/cd7762df2365c0e893c889024f908659.jpg', 'magic clip cordless clipper 1', 'MAGIC CLIP CORDLESS CLIPPER 1', 1);
INSERT INTO `product_image` VALUES (1599, 581, 'products/52752f574ce1a61c35627fd373b1c21f.jpg', 'magic clip cordless clipper 2', 'MAGIC CLIP CORDLESS CLIPPER 2', 2);
INSERT INTO `product_image` VALUES (1600, 592, 'products/a2fa78b9fc227065212d21ccbed2aa7a.JPG', 'magic clip cordless - black & gold 1', 'MAGIC CLIP CORDLESS - BLACK & GOLD 1', 1);
INSERT INTO `product_image` VALUES (1601, 592, 'products/b94ba7e34398a4b2d0acf45c8b0795ab.jpg', 'magic clip cordless - black & gold 2', 'MAGIC CLIP CORDLESS - BLACK & GOLD 2', 2);
INSERT INTO `product_image` VALUES (1602, 582, 'products/fd9df29b6f40adf0919618cc74555266.jpg', 'detailer trimmer 1', 'DETAILER TRIMMER 1', 1);

-- ----------------------------
-- Table structure for product_related
-- ----------------------------
DROP TABLE IF EXISTS `product_related`;
CREATE TABLE `product_related`  (
  `product_id` int NOT NULL,
  `related_id` int NOT NULL,
  PRIMARY KEY (`product_id`, `related_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_related
-- ----------------------------

-- ----------------------------
-- Table structure for product_reward
-- ----------------------------
DROP TABLE IF EXISTS `product_reward`;
CREATE TABLE `product_reward`  (
  `product_reward_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `customer_group_id` int NOT NULL,
  `points` int NOT NULL,
  PRIMARY KEY (`product_reward_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_reward
-- ----------------------------

-- ----------------------------
-- Table structure for product_view
-- ----------------------------
DROP TABLE IF EXISTS `product_view`;
CREATE TABLE `product_view`  (
  `product_view_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL DEFAULT 0,
  `date` date NULL DEFAULT NULL,
  `viewed` int NOT NULL DEFAULT 0,
  `device` enum('web','mobile') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'web',
  PRIMARY KEY (`product_view_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2536 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_view
-- ----------------------------
INSERT INTO `product_view` VALUES (1, 577, '2021-02-10', 1, 'web');
INSERT INTO `product_view` VALUES (2, 575, '2021-02-11', 2, 'web');
INSERT INTO `product_view` VALUES (3, 571, '2021-02-11', 1, 'web');
INSERT INTO `product_view` VALUES (4, 585, '2021-02-11', 1, 'web');
INSERT INTO `product_view` VALUES (5, 575, '2021-02-11', 1, 'mobile');
INSERT INTO `product_view` VALUES (6, 575, '2021-02-12', 2, 'web');
INSERT INTO `product_view` VALUES (7, 575, '2021-02-12', 1, 'mobile');
INSERT INTO `product_view` VALUES (8, 580, '2021-02-12', 1, 'mobile');
INSERT INTO `product_view` VALUES (9, 575, '2021-02-13', 1, 'web');
INSERT INTO `product_view` VALUES (10, 577, '2021-02-13', 1, 'web');
INSERT INTO `product_view` VALUES (11, 578, '2021-02-13', 1, 'web');
INSERT INTO `product_view` VALUES (12, 577, '2021-02-15', 3, 'web');
INSERT INTO `product_view` VALUES (13, 589, '2021-02-15', 1, 'web');
INSERT INTO `product_view` VALUES (14, 582, '2021-02-15', 1, 'web');
INSERT INTO `product_view` VALUES (15, 578, '2021-02-15', 1, 'web');
INSERT INTO `product_view` VALUES (16, 575, '2021-02-15', 1, 'web');
INSERT INTO `product_view` VALUES (17, 585, '2021-02-15', 1, 'web');
INSERT INTO `product_view` VALUES (18, 584, '2021-02-15', 1, 'web');
INSERT INTO `product_view` VALUES (19, 590, '2021-02-15', 1, 'web');
INSERT INTO `product_view` VALUES (20, 571, '2021-02-15', 1, 'mobile');
INSERT INTO `product_view` VALUES (21, 590, '2021-02-16', 5, 'mobile');
INSERT INTO `product_view` VALUES (22, 589, '2021-02-16', 1, 'mobile');
INSERT INTO `product_view` VALUES (23, 586, '2021-02-16', 4, 'mobile');
INSERT INTO `product_view` VALUES (24, 587, '2021-02-16', 5, 'mobile');
INSERT INTO `product_view` VALUES (25, 588, '2021-02-16', 1, 'mobile');
INSERT INTO `product_view` VALUES (26, 571, '2021-02-16', 2, 'mobile');
INSERT INTO `product_view` VALUES (27, 577, '2021-02-16', 3, 'web');
INSERT INTO `product_view` VALUES (28, 578, '2021-02-16', 5, 'web');
INSERT INTO `product_view` VALUES (29, 575, '2021-02-16', 3, 'web');
INSERT INTO `product_view` VALUES (30, 582, '2021-02-16', 6, 'web');
INSERT INTO `product_view` VALUES (31, 580, '2021-02-16', 5, 'web');
INSERT INTO `product_view` VALUES (32, 576, '2021-02-16', 3, 'web');
INSERT INTO `product_view` VALUES (33, 582, '2021-02-16', 2, 'mobile');
INSERT INTO `product_view` VALUES (34, 577, '2021-02-16', 2, 'mobile');
INSERT INTO `product_view` VALUES (35, 575, '2021-02-16', 3, 'mobile');
INSERT INTO `product_view` VALUES (36, 574, '2021-02-16', 2, 'mobile');
INSERT INTO `product_view` VALUES (37, 581, '2021-02-16', 5, 'mobile');
INSERT INTO `product_view` VALUES (38, 585, '2021-02-16', 3, 'mobile');
INSERT INTO `product_view` VALUES (39, 580, '2021-02-16', 6, 'mobile');
INSERT INTO `product_view` VALUES (40, 578, '2021-02-16', 6, 'mobile');
INSERT INTO `product_view` VALUES (41, 590, '2021-02-16', 1, 'web');
INSERT INTO `product_view` VALUES (42, 571, '2021-02-16', 3, 'web');
INSERT INTO `product_view` VALUES (43, 583, '2021-02-16', 3, 'mobile');
INSERT INTO `product_view` VALUES (44, 576, '2021-02-16', 3, 'mobile');
INSERT INTO `product_view` VALUES (45, 581, '2021-02-16', 1, 'web');
INSERT INTO `product_view` VALUES (46, 579, '2021-02-16', 1, 'mobile');
INSERT INTO `product_view` VALUES (47, 589, '2021-02-16', 1, 'web');
INSERT INTO `product_view` VALUES (48, 583, '2021-02-16', 1, 'web');
INSERT INTO `product_view` VALUES (49, 587, '2021-02-16', 1, 'web');
INSERT INTO `product_view` VALUES (50, 584, '2021-02-16', 1, 'web');
INSERT INTO `product_view` VALUES (51, 584, '2021-02-16', 1, 'mobile');
INSERT INTO `product_view` VALUES (52, 587, '2021-02-17', 1, 'mobile');
INSERT INTO `product_view` VALUES (53, 585, '2021-02-17', 2, 'mobile');
INSERT INTO `product_view` VALUES (54, 578, '2021-02-17', 2, 'mobile');
INSERT INTO `product_view` VALUES (55, 583, '2021-02-17', 5, 'web');
INSERT INTO `product_view` VALUES (56, 579, '2021-02-17', 4, 'web');
INSERT INTO `product_view` VALUES (57, 571, '2021-02-17', 3, 'web');
INSERT INTO `product_view` VALUES (58, 571, '2021-02-17', 3, 'mobile');
INSERT INTO `product_view` VALUES (59, 581, '2021-02-17', 1, 'mobile');
INSERT INTO `product_view` VALUES (60, 579, '2021-02-17', 1, 'mobile');
INSERT INTO `product_view` VALUES (61, 580, '2021-02-17', 1, 'mobile');
INSERT INTO `product_view` VALUES (62, 577, '2021-02-17', 3, 'mobile');
INSERT INTO `product_view` VALUES (63, 580, '2021-02-17', 3, 'web');
INSERT INTO `product_view` VALUES (64, 582, '2021-02-17', 2, 'web');
INSERT INTO `product_view` VALUES (65, 577, '2021-02-17', 3, 'web');
INSERT INTO `product_view` VALUES (66, 588, '2021-02-17', 1, 'web');
INSERT INTO `product_view` VALUES (67, 578, '2021-02-17', 7, 'web');
INSERT INTO `product_view` VALUES (68, 574, '2021-02-17', 3, 'web');
INSERT INTO `product_view` VALUES (69, 581, '2021-02-17', 2, 'web');
INSERT INTO `product_view` VALUES (70, 575, '2021-02-17', 2, 'web');
INSERT INTO `product_view` VALUES (71, 576, '2021-02-17', 3, 'web');
INSERT INTO `product_view` VALUES (72, 584, '2021-02-17', 2, 'web');
INSERT INTO `product_view` VALUES (73, 590, '2021-02-17', 1, 'web');
INSERT INTO `product_view` VALUES (74, 589, '2021-02-17', 1, 'web');
INSERT INTO `product_view` VALUES (75, 587, '2021-02-17', 1, 'web');
INSERT INTO `product_view` VALUES (76, 586, '2021-02-17', 1, 'web');
INSERT INTO `product_view` VALUES (77, 582, '2021-02-18', 2, 'web');
INSERT INTO `product_view` VALUES (78, 577, '2021-02-18', 8, 'mobile');
INSERT INTO `product_view` VALUES (79, 578, '2021-02-18', 5, 'mobile');
INSERT INTO `product_view` VALUES (80, 575, '2021-02-18', 3, 'mobile');
INSERT INTO `product_view` VALUES (81, 576, '2021-02-18', 4, 'mobile');
INSERT INTO `product_view` VALUES (82, 581, '2021-02-18', 3, 'mobile');
INSERT INTO `product_view` VALUES (83, 582, '2021-02-18', 3, 'mobile');
INSERT INTO `product_view` VALUES (84, 580, '2021-02-18', 2, 'mobile');
INSERT INTO `product_view` VALUES (85, 583, '2021-02-18', 3, 'mobile');
INSERT INTO `product_view` VALUES (86, 583, '2021-02-18', 1, 'web');
INSERT INTO `product_view` VALUES (87, 577, '2021-02-18', 2, 'web');
INSERT INTO `product_view` VALUES (88, 578, '2021-02-18', 2, 'web');
INSERT INTO `product_view` VALUES (89, 571, '2021-02-18', 1, 'web');
INSERT INTO `product_view` VALUES (90, 576, '2021-02-18', 1, 'web');
INSERT INTO `product_view` VALUES (91, 574, '2021-02-18', 2, 'mobile');
INSERT INTO `product_view` VALUES (92, 571, '2021-02-18', 1, 'mobile');
INSERT INTO `product_view` VALUES (93, 590, '2021-02-18', 2, 'mobile');
INSERT INTO `product_view` VALUES (94, 584, '2021-02-18', 3, 'mobile');
INSERT INTO `product_view` VALUES (95, 579, '2021-02-18', 2, 'mobile');
INSERT INTO `product_view` VALUES (96, 585, '2021-02-18', 3, 'mobile');
INSERT INTO `product_view` VALUES (97, 586, '2021-02-18', 2, 'mobile');
INSERT INTO `product_view` VALUES (98, 588, '2021-02-18', 2, 'mobile');
INSERT INTO `product_view` VALUES (99, 587, '2021-02-18', 2, 'mobile');
INSERT INTO `product_view` VALUES (100, 589, '2021-02-18', 2, 'mobile');
INSERT INTO `product_view` VALUES (101, 580, '2021-02-18', 1, 'web');
INSERT INTO `product_view` VALUES (102, 583, '2021-02-19', 3, 'web');
INSERT INTO `product_view` VALUES (103, 577, '2021-02-19', 4, 'mobile');
INSERT INTO `product_view` VALUES (104, 578, '2021-02-19', 5, 'web');
INSERT INTO `product_view` VALUES (105, 582, '2021-02-19', 2, 'web');
INSERT INTO `product_view` VALUES (106, 584, '2021-02-19', 1, 'mobile');
INSERT INTO `product_view` VALUES (107, 585, '2021-02-19', 1, 'mobile');
INSERT INTO `product_view` VALUES (108, 586, '2021-02-19', 1, 'mobile');
INSERT INTO `product_view` VALUES (109, 587, '2021-02-19', 1, 'mobile');
INSERT INTO `product_view` VALUES (110, 589, '2021-02-19', 1, 'mobile');
INSERT INTO `product_view` VALUES (111, 582, '2021-02-19', 1, 'mobile');
INSERT INTO `product_view` VALUES (112, 590, '2021-02-19', 1, 'web');
INSERT INTO `product_view` VALUES (113, 580, '2021-02-19', 1, 'web');
INSERT INTO `product_view` VALUES (114, 577, '2021-02-19', 1, 'web');
INSERT INTO `product_view` VALUES (115, 574, '2021-02-19', 1, 'web');
INSERT INTO `product_view` VALUES (116, 575, '2021-02-19', 1, 'web');
INSERT INTO `product_view` VALUES (117, 580, '2021-02-20', 1, 'mobile');
INSERT INTO `product_view` VALUES (118, 583, '2021-02-20', 1, 'web');
INSERT INTO `product_view` VALUES (119, 584, '2021-02-20', 1, 'web');
INSERT INTO `product_view` VALUES (120, 589, '2021-02-20', 1, 'web');
INSERT INTO `product_view` VALUES (121, 585, '2021-02-20', 1, 'web');
INSERT INTO `product_view` VALUES (122, 587, '2021-02-20', 1, 'web');
INSERT INTO `product_view` VALUES (123, 586, '2021-02-20', 1, 'web');
INSERT INTO `product_view` VALUES (124, 578, '2021-02-20', 1, 'web');
INSERT INTO `product_view` VALUES (125, 581, '2021-02-20', 1, 'web');
INSERT INTO `product_view` VALUES (126, 574, '2021-02-20', 1, 'web');
INSERT INTO `product_view` VALUES (127, 578, '2021-02-20', 1, 'mobile');
INSERT INTO `product_view` VALUES (128, 582, '2021-02-20', 1, 'mobile');
INSERT INTO `product_view` VALUES (129, 582, '2021-02-21', 1, 'web');
INSERT INTO `product_view` VALUES (130, 579, '2021-02-21', 1, 'web');
INSERT INTO `product_view` VALUES (131, 590, '2021-02-21', 1, 'web');
INSERT INTO `product_view` VALUES (132, 580, '2021-02-22', 1, 'web');
INSERT INTO `product_view` VALUES (133, 574, '2021-02-22', 3, 'web');
INSERT INTO `product_view` VALUES (134, 575, '2021-02-22', 3, 'web');
INSERT INTO `product_view` VALUES (135, 583, '2021-02-22', 1, 'web');
INSERT INTO `product_view` VALUES (136, 577, '2021-02-22', 3, 'web');
INSERT INTO `product_view` VALUES (137, 582, '2021-02-22', 4, 'web');
INSERT INTO `product_view` VALUES (138, 585, '2021-02-22', 1, 'web');
INSERT INTO `product_view` VALUES (139, 588, '2021-02-22', 1, 'web');
INSERT INTO `product_view` VALUES (140, 586, '2021-02-22', 1, 'web');
INSERT INTO `product_view` VALUES (141, 581, '2021-02-22', 2, 'web');
INSERT INTO `product_view` VALUES (142, 579, '2021-02-22', 1, 'web');
INSERT INTO `product_view` VALUES (143, 571, '2021-02-22', 1, 'web');
INSERT INTO `product_view` VALUES (144, 576, '2021-02-22', 1, 'web');
INSERT INTO `product_view` VALUES (145, 578, '2021-02-22', 8, 'web');
INSERT INTO `product_view` VALUES (146, 584, '2021-02-22', 1, 'web');
INSERT INTO `product_view` VALUES (147, 590, '2021-02-22', 1, 'web');
INSERT INTO `product_view` VALUES (148, 577, '2021-02-22', 4, 'mobile');
INSERT INTO `product_view` VALUES (149, 578, '2021-02-22', 2, 'mobile');
INSERT INTO `product_view` VALUES (150, 584, '2021-02-22', 1, 'mobile');
INSERT INTO `product_view` VALUES (151, 571, '2021-02-22', 3, 'mobile');
INSERT INTO `product_view` VALUES (152, 574, '2021-02-22', 1, 'mobile');
INSERT INTO `product_view` VALUES (153, 579, '2021-02-22', 2, 'mobile');
INSERT INTO `product_view` VALUES (154, 581, '2021-02-22', 1, 'mobile');
INSERT INTO `product_view` VALUES (155, 580, '2021-02-22', 2, 'mobile');
INSERT INTO `product_view` VALUES (156, 583, '2021-02-22', 1, 'mobile');
INSERT INTO `product_view` VALUES (157, 575, '2021-02-22', 1, 'mobile');
INSERT INTO `product_view` VALUES (158, 578, '2021-02-23', 5, 'web');
INSERT INTO `product_view` VALUES (159, 582, '2021-02-23', 3, 'web');
INSERT INTO `product_view` VALUES (160, 577, '2021-02-23', 2, 'mobile');
INSERT INTO `product_view` VALUES (161, 571, '2021-02-23', 1, 'web');
INSERT INTO `product_view` VALUES (162, 578, '2021-02-23', 1, 'mobile');
INSERT INTO `product_view` VALUES (163, 585, '2021-02-23', 1, 'mobile');
INSERT INTO `product_view` VALUES (164, 580, '2021-02-24', 1, 'web');
INSERT INTO `product_view` VALUES (165, 578, '2021-02-24', 3, 'web');
INSERT INTO `product_view` VALUES (166, 571, '2021-02-24', 1, 'web');
INSERT INTO `product_view` VALUES (167, 581, '2021-02-24', 1, 'web');
INSERT INTO `product_view` VALUES (168, 583, '2021-02-24', 1, 'web');
INSERT INTO `product_view` VALUES (169, 582, '2021-02-24', 1, 'web');
INSERT INTO `product_view` VALUES (170, 586, '2021-02-24', 1, 'mobile');
INSERT INTO `product_view` VALUES (171, 590, '2021-02-24', 1, 'mobile');
INSERT INTO `product_view` VALUES (172, 580, '2021-02-24', 1, 'mobile');
INSERT INTO `product_view` VALUES (173, 582, '2021-02-24', 1, 'mobile');
INSERT INTO `product_view` VALUES (174, 578, '2021-02-25', 1, 'web');
INSERT INTO `product_view` VALUES (175, 577, '2021-02-25', 1, 'web');
INSERT INTO `product_view` VALUES (176, 571, '2021-02-25', 1, 'web');
INSERT INTO `product_view` VALUES (177, 579, '2021-02-25', 2, 'mobile');
INSERT INTO `product_view` VALUES (178, 578, '2021-02-25', 1, 'mobile');
INSERT INTO `product_view` VALUES (179, 582, '2021-02-25', 1, 'mobile');
INSERT INTO `product_view` VALUES (180, 583, '2021-02-25', 1, 'mobile');
INSERT INTO `product_view` VALUES (181, 576, '2021-02-25', 1, 'mobile');
INSERT INTO `product_view` VALUES (182, 577, '2021-02-26', 3, 'mobile');
INSERT INTO `product_view` VALUES (183, 576, '2021-02-26', 1, 'mobile');
INSERT INTO `product_view` VALUES (184, 581, '2021-02-26', 1, 'mobile');
INSERT INTO `product_view` VALUES (185, 579, '2021-02-26', 2, 'mobile');
INSERT INTO `product_view` VALUES (186, 580, '2021-02-26', 1, 'mobile');
INSERT INTO `product_view` VALUES (187, 571, '2021-02-26', 1, 'mobile');
INSERT INTO `product_view` VALUES (188, 578, '2021-02-26', 2, 'mobile');
INSERT INTO `product_view` VALUES (189, 578, '2021-02-26', 1, 'web');
INSERT INTO `product_view` VALUES (190, 581, '2021-02-26', 1, 'web');
INSERT INTO `product_view` VALUES (191, 577, '2021-02-26', 1, 'web');
INSERT INTO `product_view` VALUES (192, 574, '2021-02-26', 1, 'mobile');
INSERT INTO `product_view` VALUES (193, 575, '2021-02-26', 1, 'mobile');
INSERT INTO `product_view` VALUES (194, 577, '2021-02-27', 1, 'mobile');
INSERT INTO `product_view` VALUES (195, 582, '2021-02-27', 1, 'web');
INSERT INTO `product_view` VALUES (196, 582, '2021-02-28', 1, 'mobile');
INSERT INTO `product_view` VALUES (197, 584, '2021-02-28', 1, 'web');
INSERT INTO `product_view` VALUES (198, 587, '2021-02-28', 1, 'web');
INSERT INTO `product_view` VALUES (199, 579, '2021-02-28', 1, 'web');
INSERT INTO `product_view` VALUES (200, 580, '2021-02-28', 1, 'web');
INSERT INTO `product_view` VALUES (201, 577, '2021-02-28', 1, 'mobile');
INSERT INTO `product_view` VALUES (202, 584, '2021-03-01', 1, 'web');
INSERT INTO `product_view` VALUES (203, 577, '2021-03-01', 1, 'mobile');
INSERT INTO `product_view` VALUES (204, 584, '2021-03-02', 1, 'mobile');
INSERT INTO `product_view` VALUES (205, 583, '2021-03-03', 1, 'web');
INSERT INTO `product_view` VALUES (206, 579, '2021-03-03', 1, 'web');
INSERT INTO `product_view` VALUES (207, 577, '2021-03-03', 1, 'mobile');
INSERT INTO `product_view` VALUES (208, 575, '2021-03-03', 1, 'mobile');
INSERT INTO `product_view` VALUES (209, 583, '2021-03-03', 1, 'mobile');
INSERT INTO `product_view` VALUES (210, 584, '2021-03-03', 1, 'mobile');
INSERT INTO `product_view` VALUES (211, 586, '2021-03-03', 1, 'mobile');
INSERT INTO `product_view` VALUES (212, 577, '2021-03-04', 2, 'mobile');
INSERT INTO `product_view` VALUES (213, 580, '2021-03-04', 2, 'mobile');
INSERT INTO `product_view` VALUES (214, 571, '2021-03-04', 1, 'mobile');
INSERT INTO `product_view` VALUES (215, 575, '2021-03-04', 1, 'mobile');
INSERT INTO `product_view` VALUES (216, 574, '2021-03-04', 1, 'mobile');
INSERT INTO `product_view` VALUES (217, 581, '2021-03-04', 1, 'mobile');
INSERT INTO `product_view` VALUES (218, 579, '2021-03-04', 1, 'mobile');
INSERT INTO `product_view` VALUES (219, 583, '2021-03-04', 1, 'mobile');
INSERT INTO `product_view` VALUES (220, 578, '2021-03-04', 1, 'mobile');
INSERT INTO `product_view` VALUES (221, 582, '2021-03-04', 1, 'mobile');
INSERT INTO `product_view` VALUES (222, 576, '2021-03-05', 1, 'mobile');
INSERT INTO `product_view` VALUES (223, 580, '2021-03-06', 1, 'mobile');
INSERT INTO `product_view` VALUES (224, 571, '2021-03-06', 1, 'mobile');
INSERT INTO `product_view` VALUES (225, 575, '2021-03-06', 1, 'mobile');
INSERT INTO `product_view` VALUES (226, 574, '2021-03-06', 1, 'mobile');
INSERT INTO `product_view` VALUES (227, 581, '2021-03-06', 1, 'mobile');
INSERT INTO `product_view` VALUES (228, 579, '2021-03-06', 1, 'mobile');
INSERT INTO `product_view` VALUES (229, 583, '2021-03-06', 1, 'mobile');
INSERT INTO `product_view` VALUES (230, 577, '2021-03-06', 1, 'mobile');
INSERT INTO `product_view` VALUES (231, 578, '2021-03-06', 1, 'mobile');
INSERT INTO `product_view` VALUES (232, 577, '2021-03-07', 3, 'mobile');
INSERT INTO `product_view` VALUES (233, 580, '2021-03-07', 1, 'mobile');
INSERT INTO `product_view` VALUES (234, 581, '2021-03-07', 1, 'mobile');
INSERT INTO `product_view` VALUES (235, 571, '2021-03-07', 1, 'mobile');
INSERT INTO `product_view` VALUES (236, 579, '2021-03-07', 1, 'mobile');
INSERT INTO `product_view` VALUES (237, 583, '2021-03-07', 1, 'mobile');
INSERT INTO `product_view` VALUES (238, 580, '2021-03-09', 1, 'mobile');
INSERT INTO `product_view` VALUES (239, 577, '2021-03-09', 1, 'mobile');
INSERT INTO `product_view` VALUES (240, 576, '2021-03-10', 2, 'mobile');
INSERT INTO `product_view` VALUES (241, 578, '2021-03-10', 1, 'web');
INSERT INTO `product_view` VALUES (242, 583, '2021-03-10', 1, 'web');
INSERT INTO `product_view` VALUES (243, 582, '2021-03-10', 2, 'web');
INSERT INTO `product_view` VALUES (244, 574, '2021-03-10', 1, 'web');
INSERT INTO `product_view` VALUES (245, 587, '2021-03-10', 1, 'web');
INSERT INTO `product_view` VALUES (246, 575, '2021-03-10', 1, 'web');
INSERT INTO `product_view` VALUES (247, 577, '2021-03-10', 1, 'web');
INSERT INTO `product_view` VALUES (248, 571, '2021-03-10', 1, 'web');
INSERT INTO `product_view` VALUES (249, 585, '2021-03-10', 1, 'web');
INSERT INTO `product_view` VALUES (250, 571, '2021-03-10', 1, 'mobile');
INSERT INTO `product_view` VALUES (251, 575, '2021-03-10', 1, 'mobile');
INSERT INTO `product_view` VALUES (252, 574, '2021-03-10', 1, 'mobile');
INSERT INTO `product_view` VALUES (253, 581, '2021-03-10', 1, 'mobile');
INSERT INTO `product_view` VALUES (254, 580, '2021-03-10', 1, 'mobile');
INSERT INTO `product_view` VALUES (255, 579, '2021-03-10', 1, 'mobile');
INSERT INTO `product_view` VALUES (256, 583, '2021-03-10', 1, 'mobile');
INSERT INTO `product_view` VALUES (257, 577, '2021-03-10', 1, 'mobile');
INSERT INTO `product_view` VALUES (258, 578, '2021-03-10', 1, 'mobile');
INSERT INTO `product_view` VALUES (259, 582, '2021-03-10', 1, 'mobile');
INSERT INTO `product_view` VALUES (260, 571, '2021-03-12', 1, 'web');
INSERT INTO `product_view` VALUES (261, 571, '2021-03-12', 1, 'mobile');
INSERT INTO `product_view` VALUES (262, 575, '2021-03-12', 1, 'mobile');
INSERT INTO `product_view` VALUES (263, 580, '2021-03-12', 2, 'mobile');
INSERT INTO `product_view` VALUES (264, 590, '2021-03-13', 1, 'web');
INSERT INTO `product_view` VALUES (265, 577, '2021-03-13', 1, 'mobile');
INSERT INTO `product_view` VALUES (266, 576, '2021-03-13', 1, 'mobile');
INSERT INTO `product_view` VALUES (267, 578, '2021-03-13', 1, 'mobile');
INSERT INTO `product_view` VALUES (268, 584, '2021-03-14', 1, 'mobile');
INSERT INTO `product_view` VALUES (269, 576, '2021-03-14', 1, 'mobile');
INSERT INTO `product_view` VALUES (270, 582, '2021-03-15', 2, 'web');
INSERT INTO `product_view` VALUES (271, 576, '2021-03-15', 1, 'web');
INSERT INTO `product_view` VALUES (272, 571, '2021-03-15', 1, 'web');
INSERT INTO `product_view` VALUES (273, 575, '2021-03-15', 1, 'web');
INSERT INTO `product_view` VALUES (274, 571, '2021-03-15', 1, 'mobile');
INSERT INTO `product_view` VALUES (275, 575, '2021-03-15', 1, 'mobile');
INSERT INTO `product_view` VALUES (276, 574, '2021-03-15', 1, 'mobile');
INSERT INTO `product_view` VALUES (277, 581, '2021-03-15', 1, 'mobile');
INSERT INTO `product_view` VALUES (278, 580, '2021-03-15', 1, 'mobile');
INSERT INTO `product_view` VALUES (279, 579, '2021-03-15', 1, 'mobile');
INSERT INTO `product_view` VALUES (280, 583, '2021-03-15', 1, 'mobile');
INSERT INTO `product_view` VALUES (281, 577, '2021-03-15', 1, 'mobile');
INSERT INTO `product_view` VALUES (282, 578, '2021-03-15', 1, 'mobile');
INSERT INTO `product_view` VALUES (283, 582, '2021-03-15', 1, 'mobile');
INSERT INTO `product_view` VALUES (284, 578, '2021-03-16', 2, 'web');
INSERT INTO `product_view` VALUES (285, 577, '2021-03-16', 1, 'web');
INSERT INTO `product_view` VALUES (286, 571, '2021-03-16', 2, 'web');
INSERT INTO `product_view` VALUES (287, 582, '2021-03-16', 1, 'web');
INSERT INTO `product_view` VALUES (288, 576, '2021-03-17', 3, 'mobile');
INSERT INTO `product_view` VALUES (289, 574, '2021-03-17', 1, 'mobile');
INSERT INTO `product_view` VALUES (290, 581, '2021-03-17', 2, 'mobile');
INSERT INTO `product_view` VALUES (291, 571, '2021-03-17', 1, 'mobile');
INSERT INTO `product_view` VALUES (292, 575, '2021-03-17', 2, 'mobile');
INSERT INTO `product_view` VALUES (293, 580, '2021-03-17', 3, 'mobile');
INSERT INTO `product_view` VALUES (294, 579, '2021-03-17', 1, 'mobile');
INSERT INTO `product_view` VALUES (295, 583, '2021-03-17', 1, 'mobile');
INSERT INTO `product_view` VALUES (296, 571, '2021-03-17', 1, 'web');
INSERT INTO `product_view` VALUES (297, 586, '2021-03-17', 1, 'mobile');
INSERT INTO `product_view` VALUES (298, 589, '2021-03-17', 1, 'mobile');
INSERT INTO `product_view` VALUES (299, 585, '2021-03-17', 1, 'mobile');
INSERT INTO `product_view` VALUES (300, 588, '2021-03-17', 1, 'mobile');
INSERT INTO `product_view` VALUES (301, 590, '2021-03-17', 1, 'mobile');
INSERT INTO `product_view` VALUES (302, 584, '2021-03-17', 1, 'mobile');
INSERT INTO `product_view` VALUES (303, 582, '2021-03-17', 1, 'mobile');
INSERT INTO `product_view` VALUES (304, 577, '2021-03-17', 1, 'web');
INSERT INTO `product_view` VALUES (305, 577, '2021-03-17', 2, 'mobile');
INSERT INTO `product_view` VALUES (306, 576, '2021-03-18', 3, 'mobile');
INSERT INTO `product_view` VALUES (307, 580, '2021-03-18', 2, 'mobile');
INSERT INTO `product_view` VALUES (308, 577, '2021-03-18', 2, 'mobile');
INSERT INTO `product_view` VALUES (309, 579, '2021-03-18', 1, 'mobile');
INSERT INTO `product_view` VALUES (310, 575, '2021-03-18', 1, 'mobile');
INSERT INTO `product_view` VALUES (311, 571, '2021-03-18', 1, 'web');
INSERT INTO `product_view` VALUES (312, 583, '2021-03-18', 1, 'web');
INSERT INTO `product_view` VALUES (313, 579, '2021-03-18', 2, 'web');
INSERT INTO `product_view` VALUES (314, 580, '2021-03-19', 1, 'mobile');
INSERT INTO `product_view` VALUES (315, 577, '2021-03-19', 2, 'mobile');
INSERT INTO `product_view` VALUES (316, 579, '2021-03-20', 3, 'mobile');
INSERT INTO `product_view` VALUES (317, 581, '2021-03-20', 1, 'mobile');
INSERT INTO `product_view` VALUES (318, 580, '2021-03-20', 2, 'mobile');
INSERT INTO `product_view` VALUES (319, 590, '2021-03-21', 1, 'mobile');
INSERT INTO `product_view` VALUES (320, 571, '2021-03-22', 2, 'mobile');
INSERT INTO `product_view` VALUES (321, 582, '2021-03-22', 1, 'mobile');
INSERT INTO `product_view` VALUES (322, 575, '2021-03-22', 1, 'mobile');
INSERT INTO `product_view` VALUES (323, 579, '2021-03-22', 2, 'mobile');
INSERT INTO `product_view` VALUES (324, 574, '2021-03-22', 1, 'mobile');
INSERT INTO `product_view` VALUES (325, 571, '2021-03-22', 1, 'web');
INSERT INTO `product_view` VALUES (326, 581, '2021-03-22', 1, 'web');
INSERT INTO `product_view` VALUES (327, 583, '2021-03-22', 2, 'web');
INSERT INTO `product_view` VALUES (328, 577, '2021-03-22', 1, 'mobile');
INSERT INTO `product_view` VALUES (329, 577, '2021-03-22', 3, 'web');
INSERT INTO `product_view` VALUES (330, 590, '2021-03-22', 1, 'web');
INSERT INTO `product_view` VALUES (331, 579, '2021-03-22', 1, 'web');
INSERT INTO `product_view` VALUES (332, 578, '2021-03-22', 1, 'mobile');
INSERT INTO `product_view` VALUES (333, 578, '2021-03-22', 1, 'web');
INSERT INTO `product_view` VALUES (334, 575, '2021-03-22', 1, 'web');
INSERT INTO `product_view` VALUES (335, 580, '2021-03-22', 1, 'web');
INSERT INTO `product_view` VALUES (336, 580, '2021-03-22', 1, 'mobile');
INSERT INTO `product_view` VALUES (337, 590, '2021-03-22', 1, 'mobile');
INSERT INTO `product_view` VALUES (338, 584, '2021-03-22', 1, 'mobile');
INSERT INTO `product_view` VALUES (339, 585, '2021-03-22', 1, 'mobile');
INSERT INTO `product_view` VALUES (340, 587, '2021-03-22', 1, 'mobile');
INSERT INTO `product_view` VALUES (341, 576, '2021-03-23', 1, 'mobile');
INSERT INTO `product_view` VALUES (342, 577, '2021-03-23', 3, 'mobile');
INSERT INTO `product_view` VALUES (343, 575, '2021-03-23', 1, 'web');
INSERT INTO `product_view` VALUES (344, 581, '2021-03-23', 1, 'web');
INSERT INTO `product_view` VALUES (345, 574, '2021-03-23', 1, 'web');
INSERT INTO `product_view` VALUES (346, 571, '2021-03-23', 2, 'web');
INSERT INTO `product_view` VALUES (347, 587, '2021-03-23', 1, 'mobile');
INSERT INTO `product_view` VALUES (348, 580, '2021-03-23', 1, 'mobile');
INSERT INTO `product_view` VALUES (349, 578, '2021-03-23', 1, 'mobile');
INSERT INTO `product_view` VALUES (350, 571, '2021-03-23', 1, 'mobile');
INSERT INTO `product_view` VALUES (351, 580, '2021-03-24', 4, 'mobile');
INSERT INTO `product_view` VALUES (352, 576, '2021-03-24', 2, 'mobile');
INSERT INTO `product_view` VALUES (353, 577, '2021-03-24', 2, 'mobile');
INSERT INTO `product_view` VALUES (354, 571, '2021-03-24', 1, 'web');
INSERT INTO `product_view` VALUES (355, 579, '2021-03-24', 1, 'mobile');
INSERT INTO `product_view` VALUES (356, 581, '2021-03-24', 1, 'mobile');
INSERT INTO `product_view` VALUES (357, 575, '2021-03-24', 1, 'mobile');
INSERT INTO `product_view` VALUES (358, 574, '2021-03-24', 1, 'mobile');
INSERT INTO `product_view` VALUES (359, 575, '2021-03-24', 1, 'web');
INSERT INTO `product_view` VALUES (360, 578, '2021-03-24', 1, 'web');
INSERT INTO `product_view` VALUES (361, 577, '2021-03-24', 1, 'web');
INSERT INTO `product_view` VALUES (362, 587, '2021-03-24', 1, 'web');
INSERT INTO `product_view` VALUES (363, 576, '2021-03-25', 3, 'mobile');
INSERT INTO `product_view` VALUES (364, 580, '2021-03-25', 1, 'mobile');
INSERT INTO `product_view` VALUES (365, 571, '2021-03-25', 3, 'web');
INSERT INTO `product_view` VALUES (366, 582, '2021-03-25', 1, 'web');
INSERT INTO `product_view` VALUES (367, 590, '2021-03-25', 1, 'web');
INSERT INTO `product_view` VALUES (368, 577, '2021-03-25', 1, 'web');
INSERT INTO `product_view` VALUES (369, 582, '2021-03-25', 1, 'mobile');
INSERT INTO `product_view` VALUES (370, 578, '2021-03-25', 1, 'mobile');
INSERT INTO `product_view` VALUES (371, 575, '2021-03-25', 1, 'mobile');
INSERT INTO `product_view` VALUES (372, 583, '2021-03-26', 1, 'web');
INSERT INTO `product_view` VALUES (373, 579, '2021-03-26', 1, 'mobile');
INSERT INTO `product_view` VALUES (374, 576, '2021-03-27', 1, 'mobile');
INSERT INTO `product_view` VALUES (375, 582, '2021-03-27', 1, 'mobile');
INSERT INTO `product_view` VALUES (376, 579, '2021-03-28', 1, 'mobile');
INSERT INTO `product_view` VALUES (377, 577, '2021-03-29', 1, 'mobile');
INSERT INTO `product_view` VALUES (378, 571, '2021-03-30', 1, 'mobile');
INSERT INTO `product_view` VALUES (379, 580, '2021-03-30', 1, 'mobile');
INSERT INTO `product_view` VALUES (380, 581, '2021-03-30', 1, 'mobile');
INSERT INTO `product_view` VALUES (381, 575, '2021-03-30', 1, 'mobile');
INSERT INTO `product_view` VALUES (382, 583, '2021-03-30', 1, 'mobile');
INSERT INTO `product_view` VALUES (383, 577, '2021-03-30', 1, 'mobile');
INSERT INTO `product_view` VALUES (384, 584, '2021-03-31', 1, 'web');
INSERT INTO `product_view` VALUES (385, 590, '2021-03-31', 1, 'web');
INSERT INTO `product_view` VALUES (386, 576, '2021-04-01', 1, 'mobile');
INSERT INTO `product_view` VALUES (387, 575, '2021-04-01', 1, 'mobile');
INSERT INTO `product_view` VALUES (388, 581, '2021-04-01', 1, 'mobile');
INSERT INTO `product_view` VALUES (389, 574, '2021-04-01', 1, 'mobile');
INSERT INTO `product_view` VALUES (390, 580, '2021-04-01', 1, 'mobile');
INSERT INTO `product_view` VALUES (391, 579, '2021-04-01', 1, 'mobile');
INSERT INTO `product_view` VALUES (392, 583, '2021-04-01', 1, 'mobile');
INSERT INTO `product_view` VALUES (393, 577, '2021-04-01', 1, 'mobile');
INSERT INTO `product_view` VALUES (394, 578, '2021-04-01', 1, 'mobile');
INSERT INTO `product_view` VALUES (395, 582, '2021-04-01', 1, 'mobile');
INSERT INTO `product_view` VALUES (396, 576, '2021-04-03', 1, 'mobile');
INSERT INTO `product_view` VALUES (397, 577, '2021-04-03', 1, 'mobile');
INSERT INTO `product_view` VALUES (398, 579, '2021-04-04', 3, 'mobile');
INSERT INTO `product_view` VALUES (399, 581, '2021-04-04', 2, 'mobile');
INSERT INTO `product_view` VALUES (400, 583, '2021-04-04', 2, 'mobile');
INSERT INTO `product_view` VALUES (401, 582, '2021-04-04', 1, 'mobile');
INSERT INTO `product_view` VALUES (402, 590, '2021-04-04', 1, 'mobile');
INSERT INTO `product_view` VALUES (403, 578, '2021-04-04', 1, 'mobile');
INSERT INTO `product_view` VALUES (404, 571, '2021-04-04', 2, 'mobile');
INSERT INTO `product_view` VALUES (405, 575, '2021-04-04', 1, 'mobile');
INSERT INTO `product_view` VALUES (406, 582, '2021-04-05', 1, 'mobile');
INSERT INTO `product_view` VALUES (407, 571, '2021-04-05', 1, 'mobile');
INSERT INTO `product_view` VALUES (408, 581, '2021-04-06', 1, 'web');
INSERT INTO `product_view` VALUES (409, 579, '2021-04-07', 1, 'mobile');
INSERT INTO `product_view` VALUES (410, 585, '2021-04-07', 1, 'mobile');
INSERT INTO `product_view` VALUES (411, 576, '2021-04-07', 1, 'web');
INSERT INTO `product_view` VALUES (412, 578, '2021-04-07', 2, 'mobile');
INSERT INTO `product_view` VALUES (413, 581, '2021-04-07', 1, 'mobile');
INSERT INTO `product_view` VALUES (414, 574, '2021-04-07', 1, 'mobile');
INSERT INTO `product_view` VALUES (415, 580, '2021-04-07', 1, 'mobile');
INSERT INTO `product_view` VALUES (416, 575, '2021-04-07', 1, 'mobile');
INSERT INTO `product_view` VALUES (417, 571, '2021-04-07', 1, 'mobile');
INSERT INTO `product_view` VALUES (418, 582, '2021-04-07', 1, 'mobile');
INSERT INTO `product_view` VALUES (419, 577, '2021-04-07', 1, 'mobile');
INSERT INTO `product_view` VALUES (420, 578, '2021-04-09', 1, 'web');
INSERT INTO `product_view` VALUES (421, 580, '2021-04-09', 1, 'mobile');
INSERT INTO `product_view` VALUES (422, 590, '2021-04-09', 1, 'web');
INSERT INTO `product_view` VALUES (423, 577, '2021-04-10', 2, 'mobile');
INSERT INTO `product_view` VALUES (424, 585, '2021-04-11', 1, 'web');
INSERT INTO `product_view` VALUES (425, 576, '2021-04-12', 1, 'web');
INSERT INTO `product_view` VALUES (426, 571, '2021-04-12', 1, 'web');
INSERT INTO `product_view` VALUES (427, 575, '2021-04-12', 1, 'web');
INSERT INTO `product_view` VALUES (428, 582, '2021-04-12', 1, 'web');
INSERT INTO `product_view` VALUES (429, 574, '2021-04-12', 1, 'web');
INSERT INTO `product_view` VALUES (430, 579, '2021-04-12', 1, 'web');
INSERT INTO `product_view` VALUES (431, 584, '2021-04-12', 1, 'web');
INSERT INTO `product_view` VALUES (432, 577, '2021-04-12', 1, 'web');
INSERT INTO `product_view` VALUES (433, 580, '2021-04-12', 1, 'web');
INSERT INTO `product_view` VALUES (434, 581, '2021-04-12', 1, 'web');
INSERT INTO `product_view` VALUES (435, 583, '2021-04-12', 2, 'web');
INSERT INTO `product_view` VALUES (436, 578, '2021-04-12', 1, 'web');
INSERT INTO `product_view` VALUES (437, 571, '2021-04-12', 2, 'mobile');
INSERT INTO `product_view` VALUES (438, 577, '2021-04-12', 2, 'mobile');
INSERT INTO `product_view` VALUES (439, 590, '2021-04-12', 1, 'mobile');
INSERT INTO `product_view` VALUES (440, 580, '2021-04-12', 1, 'mobile');
INSERT INTO `product_view` VALUES (441, 581, '2021-04-12', 2, 'mobile');
INSERT INTO `product_view` VALUES (442, 580, '2021-04-14', 1, 'web');
INSERT INTO `product_view` VALUES (443, 579, '2021-04-14', 1, 'web');
INSERT INTO `product_view` VALUES (444, 571, '2021-04-14', 1, 'mobile');
INSERT INTO `product_view` VALUES (445, 579, '2021-04-14', 1, 'mobile');
INSERT INTO `product_view` VALUES (446, 584, '2021-04-15', 2, 'mobile');
INSERT INTO `product_view` VALUES (447, 575, '2021-04-15', 1, 'mobile');
INSERT INTO `product_view` VALUES (448, 576, '2021-04-15', 2, 'mobile');
INSERT INTO `product_view` VALUES (449, 577, '2021-04-15', 2, 'mobile');
INSERT INTO `product_view` VALUES (450, 579, '2021-04-15', 1, 'mobile');
INSERT INTO `product_view` VALUES (451, 571, '2021-04-15', 1, 'mobile');
INSERT INTO `product_view` VALUES (452, 576, '2021-04-15', 1, 'web');
INSERT INTO `product_view` VALUES (453, 576, '2021-04-16', 1, 'mobile');
INSERT INTO `product_view` VALUES (454, 578, '2021-04-16', 1, 'mobile');
INSERT INTO `product_view` VALUES (455, 580, '2021-04-16', 2, 'mobile');
INSERT INTO `product_view` VALUES (456, 577, '2021-04-16', 1, 'mobile');
INSERT INTO `product_view` VALUES (457, 579, '2021-04-16', 1, 'mobile');
INSERT INTO `product_view` VALUES (458, 577, '2021-04-17', 1, 'web');
INSERT INTO `product_view` VALUES (459, 576, '2021-04-17', 1, 'web');
INSERT INTO `product_view` VALUES (460, 578, '2021-04-17', 1, 'mobile');
INSERT INTO `product_view` VALUES (461, 579, '2021-04-17', 1, 'mobile');
INSERT INTO `product_view` VALUES (462, 581, '2021-04-18', 1, 'mobile');
INSERT INTO `product_view` VALUES (463, 578, '2021-04-18', 1, 'mobile');
INSERT INTO `product_view` VALUES (464, 583, '2021-04-19', 1, 'mobile');
INSERT INTO `product_view` VALUES (465, 575, '2021-04-20', 1, 'mobile');
INSERT INTO `product_view` VALUES (466, 583, '2021-04-21', 1, 'web');
INSERT INTO `product_view` VALUES (467, 581, '2021-04-23', 3, 'mobile');
INSERT INTO `product_view` VALUES (468, 584, '2021-04-23', 1, 'mobile');
INSERT INTO `product_view` VALUES (469, 585, '2021-04-23', 1, 'mobile');
INSERT INTO `product_view` VALUES (470, 587, '2021-04-23', 1, 'mobile');
INSERT INTO `product_view` VALUES (471, 586, '2021-04-23', 1, 'mobile');
INSERT INTO `product_view` VALUES (472, 582, '2021-04-23', 1, 'mobile');
INSERT INTO `product_view` VALUES (473, 583, '2021-04-23', 1, 'mobile');
INSERT INTO `product_view` VALUES (474, 575, '2021-04-23', 1, 'mobile');
INSERT INTO `product_view` VALUES (475, 574, '2021-04-23', 1, 'mobile');
INSERT INTO `product_view` VALUES (476, 571, '2021-04-23', 1, 'mobile');
INSERT INTO `product_view` VALUES (477, 580, '2021-04-23', 1, 'mobile');
INSERT INTO `product_view` VALUES (478, 579, '2021-04-23', 1, 'mobile');
INSERT INTO `product_view` VALUES (479, 578, '2021-04-23', 1, 'web');
INSERT INTO `product_view` VALUES (480, 577, '2021-04-23', 1, 'web');
INSERT INTO `product_view` VALUES (481, 582, '2021-04-23', 1, 'web');
INSERT INTO `product_view` VALUES (482, 576, '2021-04-23', 1, 'web');
INSERT INTO `product_view` VALUES (483, 580, '2021-04-23', 1, 'web');
INSERT INTO `product_view` VALUES (484, 590, '2021-04-24', 1, 'mobile');
INSERT INTO `product_view` VALUES (485, 580, '2021-04-24', 2, 'mobile');
INSERT INTO `product_view` VALUES (486, 580, '2021-04-24', 2, 'web');
INSERT INTO `product_view` VALUES (487, 584, '2021-04-24', 1, 'mobile');
INSERT INTO `product_view` VALUES (488, 585, '2021-04-24', 1, 'mobile');
INSERT INTO `product_view` VALUES (489, 587, '2021-04-24', 1, 'mobile');
INSERT INTO `product_view` VALUES (490, 586, '2021-04-24', 1, 'mobile');
INSERT INTO `product_view` VALUES (491, 577, '2021-04-24', 1, 'mobile');
INSERT INTO `product_view` VALUES (492, 580, '2021-04-25', 1, 'web');
INSERT INTO `product_view` VALUES (493, 580, '2021-04-25', 1, 'mobile');
INSERT INTO `product_view` VALUES (494, 581, '2021-04-25', 1, 'mobile');
INSERT INTO `product_view` VALUES (495, 583, '2021-04-26', 1, 'mobile');
INSERT INTO `product_view` VALUES (496, 585, '2021-04-26', 1, 'mobile');
INSERT INTO `product_view` VALUES (497, 571, '2021-04-26', 2, 'mobile');
INSERT INTO `product_view` VALUES (498, 580, '2021-04-26', 1, 'mobile');
INSERT INTO `product_view` VALUES (499, 576, '2021-04-26', 2, 'mobile');
INSERT INTO `product_view` VALUES (500, 581, '2021-04-26', 1, 'mobile');
INSERT INTO `product_view` VALUES (501, 579, '2021-04-26', 1, 'mobile');
INSERT INTO `product_view` VALUES (502, 574, '2021-04-26', 1, 'mobile');
INSERT INTO `product_view` VALUES (503, 578, '2021-04-26', 1, 'web');
INSERT INTO `product_view` VALUES (504, 590, '2021-04-27', 1, 'mobile');
INSERT INTO `product_view` VALUES (505, 585, '2021-04-27', 1, 'mobile');
INSERT INTO `product_view` VALUES (506, 587, '2021-04-27', 1, 'mobile');
INSERT INTO `product_view` VALUES (507, 580, '2021-04-27', 2, 'mobile');
INSERT INTO `product_view` VALUES (508, 579, '2021-04-27', 1, 'mobile');
INSERT INTO `product_view` VALUES (509, 571, '2021-04-27', 1, 'mobile');
INSERT INTO `product_view` VALUES (510, 579, '2021-04-28', 1, 'mobile');
INSERT INTO `product_view` VALUES (511, 580, '2021-04-28', 1, 'mobile');
INSERT INTO `product_view` VALUES (512, 581, '2021-04-28', 1, 'mobile');
INSERT INTO `product_view` VALUES (513, 583, '2021-04-28', 1, 'web');
INSERT INTO `product_view` VALUES (514, 579, '2021-04-28', 1, 'web');
INSERT INTO `product_view` VALUES (515, 578, '2021-04-28', 1, 'web');
INSERT INTO `product_view` VALUES (516, 571, '2021-04-28', 1, 'web');
INSERT INTO `product_view` VALUES (517, 571, '2021-04-29', 1, 'web');
INSERT INTO `product_view` VALUES (518, 583, '2021-04-29', 1, 'mobile');
INSERT INTO `product_view` VALUES (519, 576, '2021-04-29', 2, 'mobile');
INSERT INTO `product_view` VALUES (520, 581, '2021-04-29', 1, 'mobile');
INSERT INTO `product_view` VALUES (521, 576, '2021-04-30', 4, 'mobile');
INSERT INTO `product_view` VALUES (522, 582, '2021-04-30', 2, 'mobile');
INSERT INTO `product_view` VALUES (523, 580, '2021-04-30', 1, 'web');
INSERT INTO `product_view` VALUES (524, 577, '2021-04-30', 4, 'mobile');
INSERT INTO `product_view` VALUES (525, 578, '2021-04-30', 3, 'mobile');
INSERT INTO `product_view` VALUES (526, 571, '2021-04-30', 1, 'mobile');
INSERT INTO `product_view` VALUES (527, 582, '2021-05-01', 2, 'mobile');
INSERT INTO `product_view` VALUES (528, 581, '2021-05-01', 1, 'web');
INSERT INTO `product_view` VALUES (529, 577, '2021-05-01', 2, 'mobile');
INSERT INTO `product_view` VALUES (530, 588, '2021-05-01', 1, 'web');
INSERT INTO `product_view` VALUES (531, 585, '2021-05-01', 1, 'web');
INSERT INTO `product_view` VALUES (532, 576, '2021-05-01', 1, 'web');
INSERT INTO `product_view` VALUES (533, 582, '2021-05-02', 1, 'mobile');
INSERT INTO `product_view` VALUES (534, 577, '2021-05-02', 1, 'mobile');
INSERT INTO `product_view` VALUES (535, 577, '2021-05-02', 1, 'web');
INSERT INTO `product_view` VALUES (536, 584, '2021-05-02', 1, 'mobile');
INSERT INTO `product_view` VALUES (537, 579, '2021-05-02', 1, 'mobile');
INSERT INTO `product_view` VALUES (538, 574, '2021-05-02', 1, 'mobile');
INSERT INTO `product_view` VALUES (539, 581, '2021-05-02', 1, 'mobile');
INSERT INTO `product_view` VALUES (540, 580, '2021-05-03', 2, 'mobile');
INSERT INTO `product_view` VALUES (541, 578, '2021-05-03', 2, 'mobile');
INSERT INTO `product_view` VALUES (542, 577, '2021-05-03', 4, 'mobile');
INSERT INTO `product_view` VALUES (543, 577, '2021-05-03', 3, 'web');
INSERT INTO `product_view` VALUES (544, 576, '2021-05-03', 1, 'mobile');
INSERT INTO `product_view` VALUES (545, 574, '2021-05-04', 1, 'mobile');
INSERT INTO `product_view` VALUES (546, 581, '2021-05-04', 1, 'mobile');
INSERT INTO `product_view` VALUES (547, 576, '2021-05-05', 1, 'mobile');
INSERT INTO `product_view` VALUES (548, 582, '2021-05-05', 1, 'mobile');
INSERT INTO `product_view` VALUES (549, 574, '2021-05-05', 1, 'mobile');
INSERT INTO `product_view` VALUES (550, 577, '2021-05-05', 1, 'mobile');
INSERT INTO `product_view` VALUES (551, 583, '2021-05-05', 1, 'mobile');
INSERT INTO `product_view` VALUES (552, 581, '2021-05-05', 1, 'web');
INSERT INTO `product_view` VALUES (553, 577, '2021-05-05', 1, 'web');
INSERT INTO `product_view` VALUES (554, 576, '2021-05-05', 1, 'web');
INSERT INTO `product_view` VALUES (555, 571, '2021-05-05', 1, 'mobile');
INSERT INTO `product_view` VALUES (556, 575, '2021-05-05', 1, 'mobile');
INSERT INTO `product_view` VALUES (557, 582, '2021-05-05', 1, 'web');
INSERT INTO `product_view` VALUES (558, 578, '2021-05-06', 2, 'mobile');
INSERT INTO `product_view` VALUES (559, 582, '2021-05-06', 2, 'mobile');
INSERT INTO `product_view` VALUES (560, 578, '2021-05-06', 1, 'web');
INSERT INTO `product_view` VALUES (561, 577, '2021-05-06', 3, 'mobile');
INSERT INTO `product_view` VALUES (562, 583, '2021-05-06', 1, 'mobile');
INSERT INTO `product_view` VALUES (563, 577, '2021-05-06', 2, 'web');
INSERT INTO `product_view` VALUES (564, 583, '2021-05-06', 1, 'web');
INSERT INTO `product_view` VALUES (565, 579, '2021-05-06', 1, 'web');
INSERT INTO `product_view` VALUES (566, 571, '2021-05-06', 1, 'web');
INSERT INTO `product_view` VALUES (567, 571, '2021-05-06', 1, 'mobile');
INSERT INTO `product_view` VALUES (568, 575, '2021-05-06', 1, 'mobile');
INSERT INTO `product_view` VALUES (569, 581, '2021-05-06', 1, 'mobile');
INSERT INTO `product_view` VALUES (570, 579, '2021-05-06', 2, 'mobile');
INSERT INTO `product_view` VALUES (571, 580, '2021-05-06', 1, 'mobile');
INSERT INTO `product_view` VALUES (572, 577, '2021-05-07', 2, 'mobile');
INSERT INTO `product_view` VALUES (573, 578, '2021-05-07', 2, 'web');
INSERT INTO `product_view` VALUES (574, 583, '2021-05-07', 1, 'web');
INSERT INTO `product_view` VALUES (575, 580, '2021-05-07', 1, 'web');
INSERT INTO `product_view` VALUES (576, 571, '2021-05-07', 1, 'web');
INSERT INTO `product_view` VALUES (577, 577, '2021-05-07', 2, 'web');
INSERT INTO `product_view` VALUES (578, 574, '2021-05-07', 1, 'mobile');
INSERT INTO `product_view` VALUES (579, 571, '2021-05-07', 1, 'mobile');
INSERT INTO `product_view` VALUES (580, 579, '2021-05-08', 1, 'web');
INSERT INTO `product_view` VALUES (581, 581, '2021-05-08', 1, 'mobile');
INSERT INTO `product_view` VALUES (582, 580, '2021-05-08', 1, 'mobile');
INSERT INTO `product_view` VALUES (583, 579, '2021-05-09', 2, 'mobile');
INSERT INTO `product_view` VALUES (584, 581, '2021-05-09', 4, 'web');
INSERT INTO `product_view` VALUES (585, 574, '2021-05-09', 2, 'web');
INSERT INTO `product_view` VALUES (586, 584, '2021-05-09', 3, 'web');
INSERT INTO `product_view` VALUES (587, 588, '2021-05-09', 1, 'web');
INSERT INTO `product_view` VALUES (588, 589, '2021-05-09', 1, 'web');
INSERT INTO `product_view` VALUES (589, 590, '2021-05-09', 1, 'web');
INSERT INTO `product_view` VALUES (590, 585, '2021-05-09', 1, 'web');
INSERT INTO `product_view` VALUES (591, 576, '2021-05-09', 2, 'web');
INSERT INTO `product_view` VALUES (592, 579, '2021-05-09', 2, 'web');
INSERT INTO `product_view` VALUES (593, 586, '2021-05-09', 1, 'web');
INSERT INTO `product_view` VALUES (594, 577, '2021-05-09', 2, 'web');
INSERT INTO `product_view` VALUES (595, 582, '2021-05-09', 2, 'web');
INSERT INTO `product_view` VALUES (596, 583, '2021-05-09', 2, 'web');
INSERT INTO `product_view` VALUES (597, 578, '2021-05-09', 2, 'web');
INSERT INTO `product_view` VALUES (598, 580, '2021-05-09', 2, 'web');
INSERT INTO `product_view` VALUES (599, 571, '2021-05-09', 1, 'web');
INSERT INTO `product_view` VALUES (600, 575, '2021-05-09', 2, 'web');
INSERT INTO `product_view` VALUES (601, 587, '2021-05-09', 1, 'web');
INSERT INTO `product_view` VALUES (602, 577, '2021-05-09', 1, 'mobile');
INSERT INTO `product_view` VALUES (603, 583, '2021-05-10', 1, 'web');
INSERT INTO `product_view` VALUES (604, 579, '2021-05-10', 1, 'web');
INSERT INTO `product_view` VALUES (605, 590, '2021-05-10', 1, 'web');
INSERT INTO `product_view` VALUES (606, 584, '2021-05-10', 2, 'web');
INSERT INTO `product_view` VALUES (607, 588, '2021-05-10', 1, 'web');
INSERT INTO `product_view` VALUES (608, 578, '2021-05-10', 1, 'web');
INSERT INTO `product_view` VALUES (609, 575, '2021-05-10', 2, 'web');
INSERT INTO `product_view` VALUES (610, 582, '2021-05-10', 1, 'web');
INSERT INTO `product_view` VALUES (611, 574, '2021-05-10', 1, 'web');
INSERT INTO `product_view` VALUES (612, 581, '2021-05-10', 1, 'web');
INSERT INTO `product_view` VALUES (613, 589, '2021-05-10', 1, 'web');
INSERT INTO `product_view` VALUES (614, 585, '2021-05-10', 1, 'web');
INSERT INTO `product_view` VALUES (615, 587, '2021-05-10', 1, 'web');
INSERT INTO `product_view` VALUES (616, 586, '2021-05-10', 1, 'web');
INSERT INTO `product_view` VALUES (617, 577, '2021-05-10', 1, 'mobile');
INSERT INTO `product_view` VALUES (618, 577, '2021-05-10', 1, 'web');
INSERT INTO `product_view` VALUES (619, 583, '2021-05-10', 1, 'mobile');
INSERT INTO `product_view` VALUES (620, 579, '2021-05-10', 1, 'mobile');
INSERT INTO `product_view` VALUES (621, 575, '2021-05-10', 1, 'mobile');
INSERT INTO `product_view` VALUES (622, 580, '2021-05-11', 1, 'web');
INSERT INTO `product_view` VALUES (623, 579, '2021-05-11', 1, 'mobile');
INSERT INTO `product_view` VALUES (624, 576, '2021-05-12', 1, 'web');
INSERT INTO `product_view` VALUES (625, 571, '2021-05-12', 2, 'mobile');
INSERT INTO `product_view` VALUES (626, 579, '2021-05-12', 4, 'mobile');
INSERT INTO `product_view` VALUES (627, 581, '2021-05-12', 2, 'mobile');
INSERT INTO `product_view` VALUES (628, 575, '2021-05-12', 1, 'mobile');
INSERT INTO `product_view` VALUES (629, 574, '2021-05-12', 1, 'mobile');
INSERT INTO `product_view` VALUES (630, 580, '2021-05-12', 3, 'mobile');
INSERT INTO `product_view` VALUES (631, 577, '2021-05-12', 1, 'mobile');
INSERT INTO `product_view` VALUES (632, 578, '2021-05-12', 1, 'mobile');
INSERT INTO `product_view` VALUES (633, 582, '2021-05-12', 1, 'mobile');
INSERT INTO `product_view` VALUES (634, 576, '2021-05-12', 1, 'mobile');
INSERT INTO `product_view` VALUES (635, 582, '2021-05-12', 1, 'web');
INSERT INTO `product_view` VALUES (636, 577, '2021-05-13', 2, 'mobile');
INSERT INTO `product_view` VALUES (637, 578, '2021-05-13', 1, 'mobile');
INSERT INTO `product_view` VALUES (638, 578, '2021-05-13', 1, 'web');
INSERT INTO `product_view` VALUES (639, 577, '2021-05-14', 5, 'mobile');
INSERT INTO `product_view` VALUES (640, 590, '2021-05-14', 2, 'mobile');
INSERT INTO `product_view` VALUES (641, 578, '2021-05-14', 2, 'mobile');
INSERT INTO `product_view` VALUES (642, 583, '2021-05-14', 1, 'mobile');
INSERT INTO `product_view` VALUES (643, 579, '2021-05-14', 1, 'mobile');
INSERT INTO `product_view` VALUES (644, 574, '2021-05-14', 1, 'mobile');
INSERT INTO `product_view` VALUES (645, 575, '2021-05-14', 1, 'mobile');
INSERT INTO `product_view` VALUES (646, 581, '2021-05-14', 1, 'mobile');
INSERT INTO `product_view` VALUES (647, 580, '2021-05-14', 2, 'mobile');
INSERT INTO `product_view` VALUES (648, 582, '2021-05-14', 1, 'mobile');
INSERT INTO `product_view` VALUES (649, 576, '2021-05-14', 1, 'mobile');
INSERT INTO `product_view` VALUES (650, 582, '2021-05-14', 1, 'web');
INSERT INTO `product_view` VALUES (651, 577, '2021-05-15', 2, 'web');
INSERT INTO `product_view` VALUES (652, 579, '2021-05-15', 5, 'mobile');
INSERT INTO `product_view` VALUES (653, 577, '2021-05-15', 4, 'mobile');
INSERT INTO `product_view` VALUES (654, 581, '2021-05-15', 3, 'mobile');
INSERT INTO `product_view` VALUES (655, 580, '2021-05-15', 2, 'mobile');
INSERT INTO `product_view` VALUES (656, 583, '2021-05-15', 2, 'web');
INSERT INTO `product_view` VALUES (657, 571, '2021-05-15', 2, 'mobile');
INSERT INTO `product_view` VALUES (658, 588, '2021-05-15', 2, 'mobile');
INSERT INTO `product_view` VALUES (659, 587, '2021-05-15', 2, 'mobile');
INSERT INTO `product_view` VALUES (660, 589, '2021-05-15', 2, 'mobile');
INSERT INTO `product_view` VALUES (661, 575, '2021-05-15', 2, 'mobile');
INSERT INTO `product_view` VALUES (662, 582, '2021-05-15', 1, 'mobile');
INSERT INTO `product_view` VALUES (663, 580, '2021-05-15', 1, 'web');
INSERT INTO `product_view` VALUES (664, 574, '2021-05-15', 1, 'mobile');
INSERT INTO `product_view` VALUES (665, 590, '2021-05-15', 1, 'mobile');
INSERT INTO `product_view` VALUES (666, 586, '2021-05-15', 1, 'mobile');
INSERT INTO `product_view` VALUES (667, 585, '2021-05-15', 1, 'mobile');
INSERT INTO `product_view` VALUES (668, 583, '2021-05-15', 2, 'mobile');
INSERT INTO `product_view` VALUES (669, 571, '2021-05-16', 2, 'mobile');
INSERT INTO `product_view` VALUES (670, 574, '2021-05-16', 1, 'mobile');
INSERT INTO `product_view` VALUES (671, 588, '2021-05-16', 1, 'mobile');
INSERT INTO `product_view` VALUES (672, 589, '2021-05-16', 1, 'mobile');
INSERT INTO `product_view` VALUES (673, 578, '2021-05-16', 1, 'mobile');
INSERT INTO `product_view` VALUES (674, 579, '2021-05-16', 1, 'mobile');
INSERT INTO `product_view` VALUES (675, 571, '2021-05-16', 2, 'web');
INSERT INTO `product_view` VALUES (676, 577, '2021-05-17', 1, 'web');
INSERT INTO `product_view` VALUES (677, 571, '2021-05-17', 2, 'mobile');
INSERT INTO `product_view` VALUES (678, 583, '2021-05-17', 1, 'web');
INSERT INTO `product_view` VALUES (679, 579, '2021-05-17', 1, 'web');
INSERT INTO `product_view` VALUES (680, 579, '2021-05-17', 2, 'mobile');
INSERT INTO `product_view` VALUES (681, 581, '2021-05-17', 1, 'mobile');
INSERT INTO `product_view` VALUES (682, 583, '2021-05-17', 1, 'mobile');
INSERT INTO `product_view` VALUES (683, 575, '2021-05-17', 1, 'mobile');
INSERT INTO `product_view` VALUES (684, 581, '2021-05-18', 1, 'mobile');
INSERT INTO `product_view` VALUES (685, 576, '2021-05-18', 1, 'web');
INSERT INTO `product_view` VALUES (686, 580, '2021-05-18', 1, 'web');
INSERT INTO `product_view` VALUES (687, 583, '2021-05-18', 1, 'web');
INSERT INTO `product_view` VALUES (688, 575, '2021-05-18', 2, 'mobile');
INSERT INTO `product_view` VALUES (689, 571, '2021-05-18', 2, 'mobile');
INSERT INTO `product_view` VALUES (690, 574, '2021-05-18', 2, 'mobile');
INSERT INTO `product_view` VALUES (691, 577, '2021-05-18', 3, 'mobile');
INSERT INTO `product_view` VALUES (692, 582, '2021-05-18', 2, 'mobile');
INSERT INTO `product_view` VALUES (693, 578, '2021-05-18', 1, 'mobile');
INSERT INTO `product_view` VALUES (694, 576, '2021-05-19', 1, 'web');
INSERT INTO `product_view` VALUES (695, 579, '2021-05-19', 3, 'mobile');
INSERT INTO `product_view` VALUES (696, 575, '2021-05-19', 1, 'mobile');
INSERT INTO `product_view` VALUES (697, 571, '2021-05-19', 2, 'mobile');
INSERT INTO `product_view` VALUES (698, 583, '2021-05-19', 1, 'mobile');
INSERT INTO `product_view` VALUES (699, 576, '2021-05-19', 1, 'mobile');
INSERT INTO `product_view` VALUES (700, 584, '2021-05-19', 1, 'web');
INSERT INTO `product_view` VALUES (701, 584, '2021-05-19', 1, 'mobile');
INSERT INTO `product_view` VALUES (702, 590, '2021-05-19', 2, 'mobile');
INSERT INTO `product_view` VALUES (703, 578, '2021-05-19', 3, 'web');
INSERT INTO `product_view` VALUES (704, 578, '2021-05-19', 1, 'mobile');
INSERT INTO `product_view` VALUES (705, 574, '2021-05-19', 1, 'mobile');
INSERT INTO `product_view` VALUES (706, 576, '2021-05-20', 1, 'mobile');
INSERT INTO `product_view` VALUES (707, 571, '2021-05-20', 1, 'mobile');
INSERT INTO `product_view` VALUES (708, 577, '2021-05-20', 2, 'mobile');
INSERT INTO `product_view` VALUES (709, 578, '2021-05-20', 1, 'mobile');
INSERT INTO `product_view` VALUES (710, 579, '2021-05-20', 2, 'web');
INSERT INTO `product_view` VALUES (711, 571, '2021-05-20', 1, 'web');
INSERT INTO `product_view` VALUES (712, 580, '2021-05-20', 1, 'web');
INSERT INTO `product_view` VALUES (713, 583, '2021-05-20', 1, 'web');
INSERT INTO `product_view` VALUES (714, 577, '2021-05-20', 1, 'web');
INSERT INTO `product_view` VALUES (715, 578, '2021-05-20', 1, 'web');
INSERT INTO `product_view` VALUES (716, 582, '2021-05-20', 1, 'web');
INSERT INTO `product_view` VALUES (717, 576, '2021-05-20', 1, 'web');
INSERT INTO `product_view` VALUES (718, 577, '2021-05-21', 2, 'web');
INSERT INTO `product_view` VALUES (719, 580, '2021-05-21', 1, 'mobile');
INSERT INTO `product_view` VALUES (720, 583, '2021-05-21', 2, 'web');
INSERT INTO `product_view` VALUES (721, 571, '2021-05-21', 1, 'web');
INSERT INTO `product_view` VALUES (722, 583, '2021-05-21', 2, 'mobile');
INSERT INTO `product_view` VALUES (723, 578, '2021-05-21', 1, 'mobile');
INSERT INTO `product_view` VALUES (724, 577, '2021-05-21', 1, 'mobile');
INSERT INTO `product_view` VALUES (725, 582, '2021-05-21', 1, 'mobile');
INSERT INTO `product_view` VALUES (726, 575, '2021-05-21', 1, 'mobile');
INSERT INTO `product_view` VALUES (727, 574, '2021-05-21', 1, 'mobile');
INSERT INTO `product_view` VALUES (728, 581, '2021-05-21', 1, 'mobile');
INSERT INTO `product_view` VALUES (729, 579, '2021-05-21', 1, 'mobile');
INSERT INTO `product_view` VALUES (730, 577, '2021-05-22', 2, 'mobile');
INSERT INTO `product_view` VALUES (731, 579, '2021-05-22', 1, 'web');
INSERT INTO `product_view` VALUES (732, 578, '2021-05-22', 2, 'web');
INSERT INTO `product_view` VALUES (733, 580, '2021-05-22', 1, 'mobile');
INSERT INTO `product_view` VALUES (734, 582, '2021-05-22', 1, 'mobile');
INSERT INTO `product_view` VALUES (735, 578, '2021-05-22', 1, 'mobile');
INSERT INTO `product_view` VALUES (736, 583, '2021-05-22', 1, 'mobile');
INSERT INTO `product_view` VALUES (737, 579, '2021-05-22', 2, 'mobile');
INSERT INTO `product_view` VALUES (738, 571, '2021-05-22', 2, 'mobile');
INSERT INTO `product_view` VALUES (739, 575, '2021-05-22', 1, 'mobile');
INSERT INTO `product_view` VALUES (740, 574, '2021-05-22', 1, 'mobile');
INSERT INTO `product_view` VALUES (741, 576, '2021-05-22', 1, 'mobile');
INSERT INTO `product_view` VALUES (742, 576, '2021-05-23', 1, 'web');
INSERT INTO `product_view` VALUES (743, 579, '2021-05-23', 2, 'mobile');
INSERT INTO `product_view` VALUES (744, 576, '2021-05-23', 1, 'mobile');
INSERT INTO `product_view` VALUES (745, 585, '2021-05-23', 2, 'mobile');
INSERT INTO `product_view` VALUES (746, 589, '2021-05-23', 1, 'mobile');
INSERT INTO `product_view` VALUES (747, 590, '2021-05-23', 2, 'mobile');
INSERT INTO `product_view` VALUES (748, 577, '2021-05-23', 3, 'mobile');
INSERT INTO `product_view` VALUES (749, 582, '2021-05-23', 2, 'mobile');
INSERT INTO `product_view` VALUES (750, 578, '2021-05-23', 1, 'mobile');
INSERT INTO `product_view` VALUES (751, 586, '2021-05-23', 1, 'mobile');
INSERT INTO `product_view` VALUES (752, 575, '2021-05-23', 1, 'mobile');
INSERT INTO `product_view` VALUES (753, 581, '2021-05-23', 1, 'mobile');
INSERT INTO `product_view` VALUES (754, 580, '2021-05-23', 1, 'mobile');
INSERT INTO `product_view` VALUES (755, 583, '2021-05-23', 1, 'mobile');
INSERT INTO `product_view` VALUES (756, 584, '2021-05-23', 1, 'mobile');
INSERT INTO `product_view` VALUES (757, 581, '2021-05-24', 3, 'mobile');
INSERT INTO `product_view` VALUES (758, 579, '2021-05-24', 5, 'mobile');
INSERT INTO `product_view` VALUES (759, 580, '2021-05-24', 3, 'mobile');
INSERT INTO `product_view` VALUES (760, 583, '2021-05-24', 4, 'mobile');
INSERT INTO `product_view` VALUES (761, 577, '2021-05-24', 2, 'mobile');
INSERT INTO `product_view` VALUES (762, 584, '2021-05-24', 2, 'mobile');
INSERT INTO `product_view` VALUES (763, 587, '2021-05-24', 1, 'mobile');
INSERT INTO `product_view` VALUES (764, 586, '2021-05-24', 1, 'mobile');
INSERT INTO `product_view` VALUES (765, 590, '2021-05-24', 2, 'mobile');
INSERT INTO `product_view` VALUES (766, 578, '2021-05-24', 3, 'mobile');
INSERT INTO `product_view` VALUES (767, 582, '2021-05-24', 1, 'mobile');
INSERT INTO `product_view` VALUES (768, 571, '2021-05-24', 3, 'mobile');
INSERT INTO `product_view` VALUES (769, 575, '2021-05-24', 1, 'mobile');
INSERT INTO `product_view` VALUES (770, 574, '2021-05-24', 2, 'mobile');
INSERT INTO `product_view` VALUES (771, 580, '2021-05-25', 1, 'web');
INSERT INTO `product_view` VALUES (772, 578, '2021-05-25', 1, 'web');
INSERT INTO `product_view` VALUES (773, 575, '2021-05-25', 3, 'mobile');
INSERT INTO `product_view` VALUES (774, 580, '2021-05-25', 3, 'mobile');
INSERT INTO `product_view` VALUES (775, 577, '2021-05-25', 1, 'web');
INSERT INTO `product_view` VALUES (776, 578, '2021-05-25', 1, 'mobile');
INSERT INTO `product_view` VALUES (777, 582, '2021-05-25', 1, 'mobile');
INSERT INTO `product_view` VALUES (778, 582, '2021-05-25', 2, 'web');
INSERT INTO `product_view` VALUES (779, 579, '2021-05-25', 1, 'web');
INSERT INTO `product_view` VALUES (780, 576, '2021-05-25', 1, 'web');
INSERT INTO `product_view` VALUES (781, 581, '2021-05-25', 1, 'mobile');
INSERT INTO `product_view` VALUES (782, 579, '2021-05-25', 2, 'mobile');
INSERT INTO `product_view` VALUES (783, 583, '2021-05-25', 2, 'mobile');
INSERT INTO `product_view` VALUES (784, 574, '2021-05-25', 2, 'mobile');
INSERT INTO `product_view` VALUES (785, 576, '2021-05-25', 1, 'mobile');
INSERT INTO `product_view` VALUES (786, 571, '2021-05-25', 1, 'mobile');
INSERT INTO `product_view` VALUES (787, 571, '2021-05-26', 2, 'mobile');
INSERT INTO `product_view` VALUES (788, 581, '2021-05-26', 2, 'mobile');
INSERT INTO `product_view` VALUES (789, 582, '2021-05-26', 4, 'mobile');
INSERT INTO `product_view` VALUES (790, 578, '2021-05-26', 2, 'mobile');
INSERT INTO `product_view` VALUES (791, 577, '2021-05-26', 2, 'mobile');
INSERT INTO `product_view` VALUES (792, 580, '2021-05-26', 1, 'mobile');
INSERT INTO `product_view` VALUES (793, 574, '2021-05-26', 2, 'mobile');
INSERT INTO `product_view` VALUES (794, 575, '2021-05-26', 1, 'mobile');
INSERT INTO `product_view` VALUES (795, 579, '2021-05-26', 1, 'mobile');
INSERT INTO `product_view` VALUES (796, 576, '2021-05-26', 1, 'mobile');
INSERT INTO `product_view` VALUES (797, 580, '2021-05-27', 1, 'mobile');
INSERT INTO `product_view` VALUES (798, 571, '2021-05-27', 2, 'mobile');
INSERT INTO `product_view` VALUES (799, 574, '2021-05-27', 1, 'web');
INSERT INTO `product_view` VALUES (800, 583, '2021-05-27', 2, 'web');
INSERT INTO `product_view` VALUES (801, 581, '2021-05-27', 1, 'web');
INSERT INTO `product_view` VALUES (802, 577, '2021-05-27', 1, 'web');
INSERT INTO `product_view` VALUES (803, 574, '2021-05-27', 3, 'mobile');
INSERT INTO `product_view` VALUES (804, 575, '2021-05-27', 1, 'mobile');
INSERT INTO `product_view` VALUES (805, 582, '2021-05-27', 2, 'mobile');
INSERT INTO `product_view` VALUES (806, 579, '2021-05-27', 2, 'mobile');
INSERT INTO `product_view` VALUES (807, 578, '2021-05-27', 1, 'web');
INSERT INTO `product_view` VALUES (808, 584, '2021-05-27', 1, 'mobile');
INSERT INTO `product_view` VALUES (809, 585, '2021-05-27', 1, 'mobile');
INSERT INTO `product_view` VALUES (810, 576, '2021-05-27', 2, 'mobile');
INSERT INTO `product_view` VALUES (811, 581, '2021-05-27', 2, 'mobile');
INSERT INTO `product_view` VALUES (812, 578, '2021-05-27', 1, 'mobile');
INSERT INTO `product_view` VALUES (813, 576, '2021-05-28', 2, 'mobile');
INSERT INTO `product_view` VALUES (814, 583, '2021-05-28', 1, 'mobile');
INSERT INTO `product_view` VALUES (815, 574, '2021-05-28', 1, 'web');
INSERT INTO `product_view` VALUES (816, 579, '2021-05-28', 2, 'web');
INSERT INTO `product_view` VALUES (817, 571, '2021-05-28', 2, 'mobile');
INSERT INTO `product_view` VALUES (818, 581, '2021-05-28', 1, 'mobile');
INSERT INTO `product_view` VALUES (819, 574, '2021-05-28', 1, 'mobile');
INSERT INTO `product_view` VALUES (820, 580, '2021-05-28', 1, 'mobile');
INSERT INTO `product_view` VALUES (821, 578, '2021-05-28', 1, 'mobile');
INSERT INTO `product_view` VALUES (822, 579, '2021-05-28', 1, 'mobile');
INSERT INTO `product_view` VALUES (823, 587, '2021-05-28', 1, 'mobile');
INSERT INTO `product_view` VALUES (824, 590, '2021-05-28', 1, 'mobile');
INSERT INTO `product_view` VALUES (825, 577, '2021-05-28', 1, 'web');
INSERT INTO `product_view` VALUES (826, 571, '2021-05-29', 1, 'mobile');
INSERT INTO `product_view` VALUES (827, 579, '2021-05-29', 6, 'mobile');
INSERT INTO `product_view` VALUES (828, 583, '2021-05-29', 4, 'mobile');
INSERT INTO `product_view` VALUES (829, 574, '2021-05-29', 2, 'mobile');
INSERT INTO `product_view` VALUES (830, 575, '2021-05-29', 1, 'mobile');
INSERT INTO `product_view` VALUES (831, 580, '2021-05-29', 3, 'mobile');
INSERT INTO `product_view` VALUES (832, 581, '2021-05-29', 1, 'web');
INSERT INTO `product_view` VALUES (833, 582, '2021-05-29', 1, 'web');
INSERT INTO `product_view` VALUES (834, 582, '2021-05-29', 1, 'web');
INSERT INTO `product_view` VALUES (835, 579, '2021-05-29', 1, 'web');
INSERT INTO `product_view` VALUES (836, 590, '2021-05-29', 1, 'mobile');
INSERT INTO `product_view` VALUES (837, 581, '2021-05-29', 1, 'mobile');
INSERT INTO `product_view` VALUES (838, 577, '2021-05-29', 1, 'mobile');
INSERT INTO `product_view` VALUES (839, 582, '2021-05-30', 1, 'web');
INSERT INTO `product_view` VALUES (840, 582, '2021-05-30', 2, 'mobile');
INSERT INTO `product_view` VALUES (841, 577, '2021-05-30', 2, 'mobile');
INSERT INTO `product_view` VALUES (842, 579, '2021-05-30', 1, 'mobile');
INSERT INTO `product_view` VALUES (843, 571, '2021-05-30', 1, 'mobile');
INSERT INTO `product_view` VALUES (844, 575, '2021-05-30', 1, 'mobile');
INSERT INTO `product_view` VALUES (845, 588, '2021-05-30', 1, 'mobile');
INSERT INTO `product_view` VALUES (846, 577, '2021-05-31', 3, 'mobile');
INSERT INTO `product_view` VALUES (847, 582, '2021-05-31', 2, 'mobile');
INSERT INTO `product_view` VALUES (848, 579, '2021-05-31', 1, 'mobile');
INSERT INTO `product_view` VALUES (849, 585, '2021-05-31', 1, 'mobile');
INSERT INTO `product_view` VALUES (850, 578, '2021-05-31', 1, 'mobile');
INSERT INTO `product_view` VALUES (851, 577, '2021-05-31', 1, 'web');
INSERT INTO `product_view` VALUES (852, 590, '2021-05-31', 1, 'mobile');
INSERT INTO `product_view` VALUES (853, 578, '2021-05-31', 1, 'web');
INSERT INTO `product_view` VALUES (854, 581, '2021-05-31', 1, 'web');
INSERT INTO `product_view` VALUES (855, 576, '2021-05-31', 1, 'web');
INSERT INTO `product_view` VALUES (856, 571, '2021-05-31', 1, 'web');
INSERT INTO `product_view` VALUES (857, 571, '2021-05-31', 1, 'mobile');
INSERT INTO `product_view` VALUES (858, 582, '2021-06-01', 4, 'mobile');
INSERT INTO `product_view` VALUES (859, 581, '2021-06-01', 3, 'mobile');
INSERT INTO `product_view` VALUES (860, 580, '2021-06-01', 3, 'mobile');
INSERT INTO `product_view` VALUES (861, 583, '2021-06-01', 6, 'mobile');
INSERT INTO `product_view` VALUES (862, 579, '2021-06-01', 3, 'mobile');
INSERT INTO `product_view` VALUES (863, 577, '2021-06-01', 3, 'mobile');
INSERT INTO `product_view` VALUES (864, 586, '2021-06-01', 1, 'mobile');
INSERT INTO `product_view` VALUES (865, 571, '2021-06-01', 2, 'mobile');
INSERT INTO `product_view` VALUES (866, 584, '2021-06-01', 1, 'mobile');
INSERT INTO `product_view` VALUES (867, 578, '2021-06-01', 2, 'mobile');
INSERT INTO `product_view` VALUES (868, 579, '2021-06-01', 1, 'web');
INSERT INTO `product_view` VALUES (869, 580, '2021-06-01', 1, 'web');
INSERT INTO `product_view` VALUES (870, 576, '2021-06-01', 1, 'mobile');
INSERT INTO `product_view` VALUES (871, 575, '2021-06-01', 1, 'mobile');
INSERT INTO `product_view` VALUES (872, 574, '2021-06-01', 1, 'mobile');
INSERT INTO `product_view` VALUES (873, 578, '2021-06-01', 1, 'web');
INSERT INTO `product_view` VALUES (874, 571, '2021-06-01', 1, 'web');
INSERT INTO `product_view` VALUES (875, 575, '2021-06-01', 1, 'web');
INSERT INTO `product_view` VALUES (876, 582, '2021-06-02', 4, 'mobile');
INSERT INTO `product_view` VALUES (877, 580, '2021-06-02', 1, 'mobile');
INSERT INTO `product_view` VALUES (878, 577, '2021-06-02', 4, 'mobile');
INSERT INTO `product_view` VALUES (879, 584, '2021-06-02', 1, 'mobile');
INSERT INTO `product_view` VALUES (880, 577, '2021-06-02', 1, 'web');
INSERT INTO `product_view` VALUES (881, 581, '2021-06-02', 1, 'mobile');
INSERT INTO `product_view` VALUES (882, 571, '2021-06-02', 1, 'mobile');
INSERT INTO `product_view` VALUES (883, 583, '2021-06-02', 2, 'mobile');
INSERT INTO `product_view` VALUES (884, 583, '2021-06-02', 1, 'web');
INSERT INTO `product_view` VALUES (885, 579, '2021-06-02', 1, 'web');
INSERT INTO `product_view` VALUES (886, 579, '2021-06-03', 2, 'mobile');
INSERT INTO `product_view` VALUES (887, 571, '2021-06-03', 2, 'mobile');
INSERT INTO `product_view` VALUES (888, 575, '2021-06-03', 3, 'mobile');
INSERT INTO `product_view` VALUES (889, 576, '2021-06-03', 1, 'mobile');
INSERT INTO `product_view` VALUES (890, 586, '2021-06-03', 1, 'mobile');
INSERT INTO `product_view` VALUES (891, 577, '2021-06-03', 3, 'mobile');
INSERT INTO `product_view` VALUES (892, 580, '2021-06-03', 1, 'mobile');
INSERT INTO `product_view` VALUES (893, 574, '2021-06-03', 3, 'mobile');
INSERT INTO `product_view` VALUES (894, 581, '2021-06-03', 2, 'mobile');
INSERT INTO `product_view` VALUES (895, 582, '2021-06-03', 1, 'mobile');
INSERT INTO `product_view` VALUES (896, 583, '2021-06-03', 2, 'mobile');
INSERT INTO `product_view` VALUES (897, 585, '2021-06-03', 1, 'mobile');
INSERT INTO `product_view` VALUES (898, 577, '2021-06-03', 3, 'web');
INSERT INTO `product_view` VALUES (899, 583, '2021-06-03', 1, 'web');
INSERT INTO `product_view` VALUES (900, 578, '2021-06-03', 1, 'web');
INSERT INTO `product_view` VALUES (901, 579, '2021-06-03', 2, 'web');
INSERT INTO `product_view` VALUES (902, 575, '2021-06-03', 1, 'web');
INSERT INTO `product_view` VALUES (903, 571, '2021-06-03', 1, 'web');
INSERT INTO `product_view` VALUES (904, 574, '2021-06-03', 1, 'web');
INSERT INTO `product_view` VALUES (905, 582, '2021-06-03', 1, 'web');
INSERT INTO `product_view` VALUES (906, 584, '2021-06-03', 1, 'mobile');
INSERT INTO `product_view` VALUES (907, 584, '2021-06-03', 1, 'web');
INSERT INTO `product_view` VALUES (908, 578, '2021-06-03', 1, 'mobile');
INSERT INTO `product_view` VALUES (909, 590, '2021-06-04', 1, 'web');
INSERT INTO `product_view` VALUES (910, 579, '2021-06-04', 2, 'web');
INSERT INTO `product_view` VALUES (911, 582, '2021-06-04', 3, 'mobile');
INSERT INTO `product_view` VALUES (912, 583, '2021-06-04', 2, 'mobile');
INSERT INTO `product_view` VALUES (913, 579, '2021-06-04', 3, 'mobile');
INSERT INTO `product_view` VALUES (914, 571, '2021-06-04', 1, 'mobile');
INSERT INTO `product_view` VALUES (915, 584, '2021-06-04', 1, 'mobile');
INSERT INTO `product_view` VALUES (916, 576, '2021-06-04', 1, 'mobile');
INSERT INTO `product_view` VALUES (917, 585, '2021-06-04', 3, 'mobile');
INSERT INTO `product_view` VALUES (918, 577, '2021-06-04', 3, 'mobile');
INSERT INTO `product_view` VALUES (919, 590, '2021-06-04', 1, 'mobile');
INSERT INTO `product_view` VALUES (920, 581, '2021-06-04', 1, 'mobile');
INSERT INTO `product_view` VALUES (921, 580, '2021-06-04', 1, 'mobile');
INSERT INTO `product_view` VALUES (922, 586, '2021-06-04', 1, 'mobile');
INSERT INTO `product_view` VALUES (923, 587, '2021-06-04', 1, 'mobile');
INSERT INTO `product_view` VALUES (924, 574, '2021-06-04', 1, 'web');
INSERT INTO `product_view` VALUES (925, 584, '2021-06-05', 2, 'web');
INSERT INTO `product_view` VALUES (926, 587, '2021-06-05', 1, 'web');
INSERT INTO `product_view` VALUES (927, 577, '2021-06-05', 3, 'mobile');
INSERT INTO `product_view` VALUES (928, 582, '2021-06-05', 2, 'mobile');
INSERT INTO `product_view` VALUES (929, 582, '2021-06-05', 1, 'web');
INSERT INTO `product_view` VALUES (930, 578, '2021-06-05', 2, 'mobile');
INSERT INTO `product_view` VALUES (931, 579, '2021-06-05', 1, 'mobile');
INSERT INTO `product_view` VALUES (932, 581, '2021-06-05', 1, 'mobile');
INSERT INTO `product_view` VALUES (933, 580, '2021-06-05', 4, 'mobile');
INSERT INTO `product_view` VALUES (934, 574, '2021-06-05', 1, 'mobile');
INSERT INTO `product_view` VALUES (935, 575, '2021-06-05', 1, 'mobile');
INSERT INTO `product_view` VALUES (936, 578, '2021-06-05', 1, 'web');
INSERT INTO `product_view` VALUES (937, 574, '2021-06-05', 1, 'web');
INSERT INTO `product_view` VALUES (938, 583, '2021-06-06', 1, 'mobile');
INSERT INTO `product_view` VALUES (939, 580, '2021-06-06', 1, 'mobile');
INSERT INTO `product_view` VALUES (940, 574, '2021-06-07', 3, 'mobile');
INSERT INTO `product_view` VALUES (941, 576, '2021-06-07', 2, 'mobile');
INSERT INTO `product_view` VALUES (942, 580, '2021-06-07', 2, 'mobile');
INSERT INTO `product_view` VALUES (943, 577, '2021-06-07', 2, 'mobile');
INSERT INTO `product_view` VALUES (944, 582, '2021-06-07', 2, 'mobile');
INSERT INTO `product_view` VALUES (945, 575, '2021-06-07', 2, 'mobile');
INSERT INTO `product_view` VALUES (946, 579, '2021-06-07', 2, 'mobile');
INSERT INTO `product_view` VALUES (947, 584, '2021-06-07', 2, 'mobile');
INSERT INTO `product_view` VALUES (948, 585, '2021-06-07', 1, 'mobile');
INSERT INTO `product_view` VALUES (949, 589, '2021-06-07', 1, 'mobile');
INSERT INTO `product_view` VALUES (950, 586, '2021-06-07', 1, 'mobile');
INSERT INTO `product_view` VALUES (951, 587, '2021-06-07', 1, 'mobile');
INSERT INTO `product_view` VALUES (952, 588, '2021-06-07', 1, 'mobile');
INSERT INTO `product_view` VALUES (953, 583, '2021-06-07', 1, 'mobile');
INSERT INTO `product_view` VALUES (954, 581, '2021-06-07', 1, 'mobile');
INSERT INTO `product_view` VALUES (955, 578, '2021-06-07', 1, 'mobile');
INSERT INTO `product_view` VALUES (956, 571, '2021-06-07', 1, 'mobile');
INSERT INTO `product_view` VALUES (957, 577, '2021-06-07', 1, 'web');
INSERT INTO `product_view` VALUES (958, 583, '2021-06-07', 1, 'web');
INSERT INTO `product_view` VALUES (959, 578, '2021-06-07', 1, 'web');
INSERT INTO `product_view` VALUES (960, 580, '2021-06-08', 2, 'web');
INSERT INTO `product_view` VALUES (961, 581, '2021-06-08', 2, 'web');
INSERT INTO `product_view` VALUES (962, 577, '2021-06-08', 2, 'web');
INSERT INTO `product_view` VALUES (963, 579, '2021-06-08', 1, 'mobile');
INSERT INTO `product_view` VALUES (964, 571, '2021-06-08', 1, 'mobile');
INSERT INTO `product_view` VALUES (965, 575, '2021-06-08', 1, 'mobile');
INSERT INTO `product_view` VALUES (966, 574, '2021-06-08', 1, 'mobile');
INSERT INTO `product_view` VALUES (967, 581, '2021-06-08', 1, 'mobile');
INSERT INTO `product_view` VALUES (968, 580, '2021-06-08', 1, 'mobile');
INSERT INTO `product_view` VALUES (969, 583, '2021-06-08', 3, 'mobile');
INSERT INTO `product_view` VALUES (970, 582, '2021-06-08', 2, 'mobile');
INSERT INTO `product_view` VALUES (971, 578, '2021-06-08', 2, 'mobile');
INSERT INTO `product_view` VALUES (972, 575, '2021-06-08', 1, 'web');
INSERT INTO `product_view` VALUES (973, 574, '2021-06-08', 1, 'web');
INSERT INTO `product_view` VALUES (974, 579, '2021-06-08', 1, 'web');
INSERT INTO `product_view` VALUES (975, 578, '2021-06-08', 3, 'web');
INSERT INTO `product_view` VALUES (976, 582, '2021-06-08', 3, 'web');
INSERT INTO `product_view` VALUES (977, 576, '2021-06-08', 1, 'web');
INSERT INTO `product_view` VALUES (978, 571, '2021-06-08', 1, 'web');
INSERT INTO `product_view` VALUES (979, 577, '2021-06-08', 2, 'mobile');
INSERT INTO `product_view` VALUES (980, 579, '2021-06-09', 3, 'mobile');
INSERT INTO `product_view` VALUES (981, 583, '2021-06-09', 2, 'mobile');
INSERT INTO `product_view` VALUES (982, 588, '2021-06-09', 1, 'mobile');
INSERT INTO `product_view` VALUES (983, 583, '2021-06-09', 2, 'web');
INSERT INTO `product_view` VALUES (984, 577, '2021-06-09', 2, 'web');
INSERT INTO `product_view` VALUES (985, 578, '2021-06-09', 2, 'mobile');
INSERT INTO `product_view` VALUES (986, 582, '2021-06-09', 2, 'web');
INSERT INTO `product_view` VALUES (987, 576, '2021-06-09', 1, 'web');
INSERT INTO `product_view` VALUES (988, 591, '2021-06-09', 4, 'web');
INSERT INTO `product_view` VALUES (989, 578, '2021-06-09', 1, 'web');
INSERT INTO `product_view` VALUES (990, 577, '2021-06-09', 2, 'mobile');
INSERT INTO `product_view` VALUES (991, 571, '2021-06-09', 1, 'web');
INSERT INTO `product_view` VALUES (992, 571, '2021-06-09', 1, 'mobile');
INSERT INTO `product_view` VALUES (993, 575, '2021-06-09', 1, 'mobile');
INSERT INTO `product_view` VALUES (994, 580, '2021-06-09', 2, 'mobile');
INSERT INTO `product_view` VALUES (995, 576, '2021-06-09', 2, 'mobile');
INSERT INTO `product_view` VALUES (996, 578, '2021-06-10', 2, 'mobile');
INSERT INTO `product_view` VALUES (997, 571, '2021-06-10', 1, 'mobile');
INSERT INTO `product_view` VALUES (998, 583, '2021-06-10', 3, 'mobile');
INSERT INTO `product_view` VALUES (999, 591, '2021-06-10', 1, 'web');
INSERT INTO `product_view` VALUES (1000, 581, '2021-06-10', 2, 'mobile');
INSERT INTO `product_view` VALUES (1001, 591, '2021-06-10', 1, 'mobile');
INSERT INTO `product_view` VALUES (1002, 590, '2021-06-10', 1, 'mobile');
INSERT INTO `product_view` VALUES (1003, 585, '2021-06-10', 1, 'mobile');
INSERT INTO `product_view` VALUES (1004, 586, '2021-06-10', 1, 'mobile');
INSERT INTO `product_view` VALUES (1005, 588, '2021-06-10', 1, 'mobile');
INSERT INTO `product_view` VALUES (1006, 589, '2021-06-10', 1, 'mobile');
INSERT INTO `product_view` VALUES (1007, 587, '2021-06-10', 1, 'mobile');
INSERT INTO `product_view` VALUES (1008, 582, '2021-06-10', 3, 'web');
INSERT INTO `product_view` VALUES (1009, 571, '2021-06-10', 1, 'web');
INSERT INTO `product_view` VALUES (1010, 578, '2021-06-10', 1, 'web');
INSERT INTO `product_view` VALUES (1011, 576, '2021-06-10', 1, 'mobile');
INSERT INTO `product_view` VALUES (1012, 580, '2021-06-10', 2, 'mobile');
INSERT INTO `product_view` VALUES (1013, 579, '2021-06-10', 3, 'mobile');
INSERT INTO `product_view` VALUES (1014, 574, '2021-06-10', 1, 'mobile');
INSERT INTO `product_view` VALUES (1015, 575, '2021-06-10', 1, 'mobile');
INSERT INTO `product_view` VALUES (1016, 580, '2021-06-11', 3, 'mobile');
INSERT INTO `product_view` VALUES (1017, 583, '2021-06-11', 4, 'mobile');
INSERT INTO `product_view` VALUES (1018, 591, '2021-06-11', 5, 'mobile');
INSERT INTO `product_view` VALUES (1019, 574, '2021-06-11', 1, 'mobile');
INSERT INTO `product_view` VALUES (1020, 578, '2021-06-11', 3, 'web');
INSERT INTO `product_view` VALUES (1021, 591, '2021-06-11', 1, 'web');
INSERT INTO `product_view` VALUES (1022, 582, '2021-06-11', 1, 'web');
INSERT INTO `product_view` VALUES (1023, 577, '2021-06-11', 1, 'mobile');
INSERT INTO `product_view` VALUES (1024, 577, '2021-06-11', 1, 'web');
INSERT INTO `product_view` VALUES (1025, 582, '2021-06-11', 1, 'mobile');
INSERT INTO `product_view` VALUES (1026, 580, '2021-06-11', 2, 'web');
INSERT INTO `product_view` VALUES (1027, 578, '2021-06-11', 2, 'mobile');
INSERT INTO `product_view` VALUES (1028, 576, '2021-06-11', 1, 'mobile');
INSERT INTO `product_view` VALUES (1029, 581, '2021-06-11', 1, 'mobile');
INSERT INTO `product_view` VALUES (1030, 571, '2021-06-11', 2, 'mobile');
INSERT INTO `product_view` VALUES (1031, 579, '2021-06-11', 1, 'mobile');
INSERT INTO `product_view` VALUES (1032, 583, '2021-06-12', 3, 'mobile');
INSERT INTO `product_view` VALUES (1033, 581, '2021-06-12', 1, 'mobile');
INSERT INTO `product_view` VALUES (1034, 580, '2021-06-12', 1, 'mobile');
INSERT INTO `product_view` VALUES (1035, 591, '2021-06-12', 1, 'mobile');
INSERT INTO `product_view` VALUES (1036, 578, '2021-06-12', 2, 'mobile');
INSERT INTO `product_view` VALUES (1037, 579, '2021-06-12', 1, 'mobile');
INSERT INTO `product_view` VALUES (1038, 571, '2021-06-12', 1, 'mobile');
INSERT INTO `product_view` VALUES (1039, 583, '2021-06-12', 1, 'web');
INSERT INTO `product_view` VALUES (1040, 582, '2021-06-12', 1, 'web');
INSERT INTO `product_view` VALUES (1041, 579, '2021-06-12', 1, 'web');
INSERT INTO `product_view` VALUES (1042, 579, '2021-06-13', 4, 'mobile');
INSERT INTO `product_view` VALUES (1043, 583, '2021-06-13', 2, 'mobile');
INSERT INTO `product_view` VALUES (1044, 578, '2021-06-13', 1, 'mobile');
INSERT INTO `product_view` VALUES (1045, 576, '2021-06-13', 4, 'mobile');
INSERT INTO `product_view` VALUES (1046, 582, '2021-06-13', 2, 'mobile');
INSERT INTO `product_view` VALUES (1047, 574, '2021-06-13', 3, 'mobile');
INSERT INTO `product_view` VALUES (1048, 577, '2021-06-13', 1, 'mobile');
INSERT INTO `product_view` VALUES (1049, 571, '2021-06-13', 1, 'mobile');
INSERT INTO `product_view` VALUES (1050, 575, '2021-06-13', 1, 'mobile');
INSERT INTO `product_view` VALUES (1051, 581, '2021-06-13', 1, 'mobile');
INSERT INTO `product_view` VALUES (1052, 580, '2021-06-13', 1, 'mobile');
INSERT INTO `product_view` VALUES (1053, 575, '2021-06-14', 4, 'mobile');
INSERT INTO `product_view` VALUES (1054, 583, '2021-06-14', 2, 'web');
INSERT INTO `product_view` VALUES (1055, 577, '2021-06-14', 1, 'web');
INSERT INTO `product_view` VALUES (1056, 571, '2021-06-14', 1, 'web');
INSERT INTO `product_view` VALUES (1057, 575, '2021-06-14', 1, 'web');
INSERT INTO `product_view` VALUES (1058, 574, '2021-06-14', 1, 'web');
INSERT INTO `product_view` VALUES (1059, 581, '2021-06-14', 1, 'web');
INSERT INTO `product_view` VALUES (1060, 580, '2021-06-14', 1, 'web');
INSERT INTO `product_view` VALUES (1061, 579, '2021-06-14', 1, 'web');
INSERT INTO `product_view` VALUES (1062, 582, '2021-06-14', 2, 'web');
INSERT INTO `product_view` VALUES (1063, 578, '2021-06-14', 1, 'web');
INSERT INTO `product_view` VALUES (1064, 571, '2021-06-14', 2, 'mobile');
INSERT INTO `product_view` VALUES (1065, 574, '2021-06-14', 2, 'mobile');
INSERT INTO `product_view` VALUES (1066, 576, '2021-06-14', 2, 'mobile');
INSERT INTO `product_view` VALUES (1067, 579, '2021-06-14', 3, 'mobile');
INSERT INTO `product_view` VALUES (1068, 580, '2021-06-14', 2, 'mobile');
INSERT INTO `product_view` VALUES (1069, 578, '2021-06-14', 2, 'mobile');
INSERT INTO `product_view` VALUES (1070, 582, '2021-06-14', 2, 'mobile');
INSERT INTO `product_view` VALUES (1071, 591, '2021-06-14', 2, 'mobile');
INSERT INTO `product_view` VALUES (1072, 577, '2021-06-14', 1, 'mobile');
INSERT INTO `product_view` VALUES (1073, 581, '2021-06-14', 2, 'mobile');
INSERT INTO `product_view` VALUES (1074, 583, '2021-06-14', 1, 'mobile');
INSERT INTO `product_view` VALUES (1075, 586, '2021-06-14', 1, 'mobile');
INSERT INTO `product_view` VALUES (1076, 585, '2021-06-14', 1, 'mobile');
INSERT INTO `product_view` VALUES (1077, 587, '2021-06-14', 1, 'mobile');
INSERT INTO `product_view` VALUES (1078, 589, '2021-06-14', 2, 'mobile');
INSERT INTO `product_view` VALUES (1079, 590, '2021-06-14', 1, 'mobile');
INSERT INTO `product_view` VALUES (1080, 584, '2021-06-14', 1, 'mobile');
INSERT INTO `product_view` VALUES (1081, 588, '2021-06-14', 1, 'mobile');
INSERT INTO `product_view` VALUES (1082, 582, '2021-06-15', 3, 'mobile');
INSERT INTO `product_view` VALUES (1083, 571, '2021-06-15', 1, 'mobile');
INSERT INTO `product_view` VALUES (1084, 575, '2021-06-15', 2, 'mobile');
INSERT INTO `product_view` VALUES (1085, 574, '2021-06-15', 3, 'mobile');
INSERT INTO `product_view` VALUES (1086, 579, '2021-06-15', 6, 'mobile');
INSERT INTO `product_view` VALUES (1087, 577, '2021-06-15', 5, 'mobile');
INSERT INTO `product_view` VALUES (1088, 583, '2021-06-15', 4, 'mobile');
INSERT INTO `product_view` VALUES (1089, 578, '2021-06-15', 3, 'mobile');
INSERT INTO `product_view` VALUES (1090, 576, '2021-06-15', 2, 'mobile');
INSERT INTO `product_view` VALUES (1091, 581, '2021-06-15', 7, 'web');
INSERT INTO `product_view` VALUES (1092, 577, '2021-06-15', 2, 'web');
INSERT INTO `product_view` VALUES (1093, 578, '2021-06-15', 1, 'web');
INSERT INTO `product_view` VALUES (1094, 580, '2021-06-15', 1, 'mobile');
INSERT INTO `product_view` VALUES (1095, 591, '2021-06-15', 1, 'mobile');
INSERT INTO `product_view` VALUES (1096, 579, '2021-06-15', 2, 'web');
INSERT INTO `product_view` VALUES (1097, 586, '2021-06-15', 2, 'mobile');
INSERT INTO `product_view` VALUES (1098, 582, '2021-06-15', 2, 'web');
INSERT INTO `product_view` VALUES (1099, 584, '2021-06-15', 1, 'mobile');
INSERT INTO `product_view` VALUES (1100, 589, '2021-06-15', 2, 'mobile');
INSERT INTO `product_view` VALUES (1101, 587, '2021-06-15', 1, 'mobile');
INSERT INTO `product_view` VALUES (1102, 571, '2021-06-15', 1, 'web');
INSERT INTO `product_view` VALUES (1103, 581, '2021-06-15', 1, 'mobile');
INSERT INTO `product_view` VALUES (1104, 584, '2021-06-16', 1, 'web');
INSERT INTO `product_view` VALUES (1105, 577, '2021-06-16', 2, 'web');
INSERT INTO `product_view` VALUES (1106, 581, '2021-06-16', 3, 'mobile');
INSERT INTO `product_view` VALUES (1107, 590, '2021-06-16', 1, 'mobile');
INSERT INTO `product_view` VALUES (1108, 579, '2021-06-16', 5, 'mobile');
INSERT INTO `product_view` VALUES (1109, 579, '2021-06-16', 1, 'web');
INSERT INTO `product_view` VALUES (1110, 578, '2021-06-16', 1, 'web');
INSERT INTO `product_view` VALUES (1111, 578, '2021-06-16', 3, 'mobile');
INSERT INTO `product_view` VALUES (1112, 580, '2021-06-16', 1, 'mobile');
INSERT INTO `product_view` VALUES (1113, 580, '2021-06-16', 1, 'web');
INSERT INTO `product_view` VALUES (1114, 580, '2021-06-17', 3, 'mobile');
INSERT INTO `product_view` VALUES (1115, 574, '2021-06-17', 3, 'mobile');
INSERT INTO `product_view` VALUES (1116, 585, '2021-06-17', 3, 'mobile');
INSERT INTO `product_view` VALUES (1117, 584, '2021-06-17', 1, 'mobile');
INSERT INTO `product_view` VALUES (1118, 578, '2021-06-17', 3, 'mobile');
INSERT INTO `product_view` VALUES (1119, 577, '2021-06-17', 4, 'mobile');
INSERT INTO `product_view` VALUES (1120, 582, '2021-06-17', 1, 'mobile');
INSERT INTO `product_view` VALUES (1121, 581, '2021-06-17', 6, 'mobile');
INSERT INTO `product_view` VALUES (1122, 591, '2021-06-17', 4, 'mobile');
INSERT INTO `product_view` VALUES (1123, 579, '2021-06-17', 2, 'mobile');
INSERT INTO `product_view` VALUES (1124, 586, '2021-06-17', 1, 'mobile');
INSERT INTO `product_view` VALUES (1125, 583, '2021-06-17', 3, 'mobile');
INSERT INTO `product_view` VALUES (1126, 576, '2021-06-17', 2, 'mobile');
INSERT INTO `product_view` VALUES (1127, 575, '2021-06-17', 3, 'mobile');
INSERT INTO `product_view` VALUES (1128, 571, '2021-06-17', 1, 'web');
INSERT INTO `product_view` VALUES (1129, 574, '2021-06-17', 1, 'web');
INSERT INTO `product_view` VALUES (1130, 579, '2021-06-17', 1, 'web');
INSERT INTO `product_view` VALUES (1131, 575, '2021-06-17', 1, 'web');
INSERT INTO `product_view` VALUES (1132, 591, '2021-06-17', 1, 'web');
INSERT INTO `product_view` VALUES (1133, 590, '2021-06-17', 1, 'mobile');
INSERT INTO `product_view` VALUES (1134, 571, '2021-06-17', 1, 'mobile');
INSERT INTO `product_view` VALUES (1135, 582, '2021-06-18', 5, 'mobile');
INSERT INTO `product_view` VALUES (1136, 576, '2021-06-18', 2, 'mobile');
INSERT INTO `product_view` VALUES (1137, 574, '2021-06-18', 2, 'mobile');
INSERT INTO `product_view` VALUES (1138, 577, '2021-06-18', 3, 'mobile');
INSERT INTO `product_view` VALUES (1139, 580, '2021-06-18', 3, 'mobile');
INSERT INTO `product_view` VALUES (1140, 581, '2021-06-18', 3, 'mobile');
INSERT INTO `product_view` VALUES (1141, 578, '2021-06-18', 3, 'mobile');
INSERT INTO `product_view` VALUES (1142, 583, '2021-06-18', 4, 'mobile');
INSERT INTO `product_view` VALUES (1143, 577, '2021-06-18', 1, 'web');
INSERT INTO `product_view` VALUES (1144, 580, '2021-06-18', 1, 'web');
INSERT INTO `product_view` VALUES (1145, 583, '2021-06-18', 1, 'web');
INSERT INTO `product_view` VALUES (1146, 581, '2021-06-18', 1, 'web');
INSERT INTO `product_view` VALUES (1147, 571, '2021-06-18', 2, 'web');
INSERT INTO `product_view` VALUES (1148, 591, '2021-06-18', 2, 'web');
INSERT INTO `product_view` VALUES (1149, 590, '2021-06-18', 1, 'web');
INSERT INTO `product_view` VALUES (1150, 574, '2021-06-18', 1, 'web');
INSERT INTO `product_view` VALUES (1151, 575, '2021-06-18', 1, 'web');
INSERT INTO `product_view` VALUES (1152, 582, '2021-06-18', 1, 'web');
INSERT INTO `product_view` VALUES (1153, 579, '2021-06-18', 1, 'mobile');
INSERT INTO `product_view` VALUES (1154, 575, '2021-06-18', 1, 'mobile');
INSERT INTO `product_view` VALUES (1155, 586, '2021-06-18', 1, 'mobile');
INSERT INTO `product_view` VALUES (1156, 583, '2021-06-19', 2, 'mobile');
INSERT INTO `product_view` VALUES (1157, 580, '2021-06-19', 1, 'mobile');
INSERT INTO `product_view` VALUES (1158, 578, '2021-06-19', 1, 'web');
INSERT INTO `product_view` VALUES (1159, 571, '2021-06-19', 1, 'web');
INSERT INTO `product_view` VALUES (1160, 574, '2021-06-19', 1, 'web');
INSERT INTO `product_view` VALUES (1161, 576, '2021-06-19', 1, 'web');
INSERT INTO `product_view` VALUES (1162, 575, '2021-06-19', 1, 'web');
INSERT INTO `product_view` VALUES (1163, 582, '2021-06-19', 1, 'web');
INSERT INTO `product_view` VALUES (1164, 579, '2021-06-19', 1, 'web');
INSERT INTO `product_view` VALUES (1165, 580, '2021-06-19', 1, 'web');
INSERT INTO `product_view` VALUES (1166, 577, '2021-06-19', 1, 'web');
INSERT INTO `product_view` VALUES (1167, 591, '2021-06-19', 1, 'web');
INSERT INTO `product_view` VALUES (1168, 577, '2021-06-19', 3, 'mobile');
INSERT INTO `product_view` VALUES (1169, 578, '2021-06-19', 2, 'mobile');
INSERT INTO `product_view` VALUES (1170, 576, '2021-06-19', 1, 'mobile');
INSERT INTO `product_view` VALUES (1171, 575, '2021-06-19', 1, 'mobile');
INSERT INTO `product_view` VALUES (1172, 580, '2021-06-20', 5, 'mobile');
INSERT INTO `product_view` VALUES (1173, 581, '2021-06-20', 2, 'mobile');
INSERT INTO `product_view` VALUES (1174, 583, '2021-06-20', 4, 'mobile');
INSERT INTO `product_view` VALUES (1175, 578, '2021-06-20', 2, 'mobile');
INSERT INTO `product_view` VALUES (1176, 590, '2021-06-20', 1, 'mobile');
INSERT INTO `product_view` VALUES (1177, 586, '2021-06-20', 1, 'mobile');
INSERT INTO `product_view` VALUES (1178, 579, '2021-06-20', 1, 'mobile');
INSERT INTO `product_view` VALUES (1179, 577, '2021-06-20', 2, 'web');
INSERT INTO `product_view` VALUES (1180, 580, '2021-06-20', 1, 'web');
INSERT INTO `product_view` VALUES (1181, 578, '2021-06-20', 2, 'web');
INSERT INTO `product_view` VALUES (1182, 589, '2021-06-20', 1, 'web');
INSERT INTO `product_view` VALUES (1183, 591, '2021-06-20', 4, 'mobile');
INSERT INTO `product_view` VALUES (1184, 577, '2021-06-20', 1, 'mobile');
INSERT INTO `product_view` VALUES (1185, 580, '2021-06-21', 2, 'mobile');
INSERT INTO `product_view` VALUES (1186, 583, '2021-06-21', 1, 'mobile');
INSERT INTO `product_view` VALUES (1187, 577, '2021-06-21', 1, 'mobile');
INSERT INTO `product_view` VALUES (1188, 578, '2021-06-21', 4, 'mobile');
INSERT INTO `product_view` VALUES (1189, 571, '2021-06-21', 2, 'mobile');
INSERT INTO `product_view` VALUES (1190, 576, '2021-06-21', 1, 'mobile');
INSERT INTO `product_view` VALUES (1191, 584, '2021-06-21', 2, 'mobile');
INSERT INTO `product_view` VALUES (1192, 582, '2021-06-21', 2, 'mobile');
INSERT INTO `product_view` VALUES (1193, 591, '2021-06-21', 2, 'mobile');
INSERT INTO `product_view` VALUES (1194, 584, '2021-06-21', 1, 'web');
INSERT INTO `product_view` VALUES (1195, 587, '2021-06-21', 1, 'web');
INSERT INTO `product_view` VALUES (1196, 585, '2021-06-21', 1, 'web');
INSERT INTO `product_view` VALUES (1197, 588, '2021-06-21', 1, 'web');
INSERT INTO `product_view` VALUES (1198, 589, '2021-06-21', 1, 'web');
INSERT INTO `product_view` VALUES (1199, 585, '2021-06-21', 2, 'mobile');
INSERT INTO `product_view` VALUES (1200, 587, '2021-06-21', 2, 'mobile');
INSERT INTO `product_view` VALUES (1201, 588, '2021-06-21', 1, 'mobile');
INSERT INTO `product_view` VALUES (1202, 589, '2021-06-21', 1, 'mobile');
INSERT INTO `product_view` VALUES (1203, 591, '2021-06-21', 1, 'web');
INSERT INTO `product_view` VALUES (1204, 583, '2021-06-21', 1, 'web');
INSERT INTO `product_view` VALUES (1205, 575, '2021-06-21', 1, 'mobile');
INSERT INTO `product_view` VALUES (1206, 586, '2021-06-21', 1, 'mobile');
INSERT INTO `product_view` VALUES (1207, 581, '2021-06-21', 1, 'mobile');
INSERT INTO `product_view` VALUES (1208, 579, '2021-06-21', 1, 'mobile');
INSERT INTO `product_view` VALUES (1209, 591, '2021-06-22', 2, 'mobile');
INSERT INTO `product_view` VALUES (1210, 584, '2021-06-22', 1, 'mobile');
INSERT INTO `product_view` VALUES (1211, 581, '2021-06-22', 2, 'mobile');
INSERT INTO `product_view` VALUES (1212, 577, '2021-06-22', 1, 'mobile');
INSERT INTO `product_view` VALUES (1213, 579, '2021-06-22', 1, 'mobile');
INSERT INTO `product_view` VALUES (1214, 574, '2021-06-22', 1, 'mobile');
INSERT INTO `product_view` VALUES (1215, 580, '2021-06-22', 2, 'mobile');
INSERT INTO `product_view` VALUES (1216, 571, '2021-06-22', 1, 'mobile');
INSERT INTO `product_view` VALUES (1217, 575, '2021-06-22', 1, 'mobile');
INSERT INTO `product_view` VALUES (1218, 591, '2021-06-22', 1, 'web');
INSERT INTO `product_view` VALUES (1219, 580, '2021-06-22', 1, 'web');
INSERT INTO `product_view` VALUES (1220, 583, '2021-06-22', 1, 'web');
INSERT INTO `product_view` VALUES (1221, 585, '2021-06-22', 1, 'mobile');
INSERT INTO `product_view` VALUES (1222, 587, '2021-06-22', 1, 'mobile');
INSERT INTO `product_view` VALUES (1223, 584, '2021-06-23', 1, 'mobile');
INSERT INTO `product_view` VALUES (1224, 574, '2021-06-23', 1, 'web');
INSERT INTO `product_view` VALUES (1225, 591, '2021-06-23', 4, 'web');
INSERT INTO `product_view` VALUES (1226, 590, '2021-06-23', 1, 'web');
INSERT INTO `product_view` VALUES (1227, 579, '2021-06-23', 2, 'mobile');
INSERT INTO `product_view` VALUES (1228, 578, '2021-06-23', 2, 'web');
INSERT INTO `product_view` VALUES (1229, 578, '2021-06-23', 1, 'mobile');
INSERT INTO `product_view` VALUES (1230, 577, '2021-06-23', 1, 'mobile');
INSERT INTO `product_view` VALUES (1231, 581, '2021-06-23', 1, 'mobile');
INSERT INTO `product_view` VALUES (1232, 590, '2021-06-23', 1, 'mobile');
INSERT INTO `product_view` VALUES (1233, 571, '2021-06-23', 1, 'mobile');
INSERT INTO `product_view` VALUES (1234, 583, '2021-06-23', 1, 'mobile');
INSERT INTO `product_view` VALUES (1235, 577, '2021-06-24', 1, 'mobile');
INSERT INTO `product_view` VALUES (1236, 590, '2021-06-24', 1, 'mobile');
INSERT INTO `product_view` VALUES (1237, 583, '2021-06-24', 1, 'mobile');
INSERT INTO `product_view` VALUES (1238, 583, '2021-06-24', 1, 'web');
INSERT INTO `product_view` VALUES (1239, 579, '2021-06-24', 1, 'web');
INSERT INTO `product_view` VALUES (1240, 590, '2021-06-25', 1, 'mobile');
INSERT INTO `product_view` VALUES (1241, 591, '2021-06-25', 1, 'web');
INSERT INTO `product_view` VALUES (1242, 571, '2021-06-25', 1, 'mobile');
INSERT INTO `product_view` VALUES (1243, 591, '2021-06-25', 2, 'mobile');
INSERT INTO `product_view` VALUES (1244, 574, '2021-06-25', 1, 'mobile');
INSERT INTO `product_view` VALUES (1245, 577, '2021-06-25', 3, 'mobile');
INSERT INTO `product_view` VALUES (1246, 580, '2021-06-25', 1, 'mobile');
INSERT INTO `product_view` VALUES (1247, 577, '2021-06-26', 1, 'mobile');
INSERT INTO `product_view` VALUES (1248, 580, '2021-06-26', 2, 'mobile');
INSERT INTO `product_view` VALUES (1249, 579, '2021-06-26', 4, 'mobile');
INSERT INTO `product_view` VALUES (1250, 580, '2021-06-26', 1, 'web');
INSERT INTO `product_view` VALUES (1251, 591, '2021-06-26', 2, 'mobile');
INSERT INTO `product_view` VALUES (1252, 581, '2021-06-26', 2, 'mobile');
INSERT INTO `product_view` VALUES (1253, 578, '2021-06-26', 1, 'mobile');
INSERT INTO `product_view` VALUES (1254, 579, '2021-06-27', 3, 'mobile');
INSERT INTO `product_view` VALUES (1255, 577, '2021-06-27', 1, 'mobile');
INSERT INTO `product_view` VALUES (1256, 591, '2021-06-27', 1, 'web');
INSERT INTO `product_view` VALUES (1257, 583, '2021-06-27', 1, 'mobile');
INSERT INTO `product_view` VALUES (1258, 571, '2021-06-27', 1, 'mobile');
INSERT INTO `product_view` VALUES (1259, 577, '2021-06-28', 3, 'mobile');
INSERT INTO `product_view` VALUES (1260, 578, '2021-06-28', 1, 'mobile');
INSERT INTO `product_view` VALUES (1261, 586, '2021-06-28', 1, 'mobile');
INSERT INTO `product_view` VALUES (1262, 589, '2021-06-28', 1, 'mobile');
INSERT INTO `product_view` VALUES (1263, 581, '2021-06-28', 2, 'mobile');
INSERT INTO `product_view` VALUES (1264, 580, '2021-06-28', 3, 'mobile');
INSERT INTO `product_view` VALUES (1265, 579, '2021-06-28', 1, 'mobile');
INSERT INTO `product_view` VALUES (1266, 571, '2021-06-28', 1, 'mobile');
INSERT INTO `product_view` VALUES (1267, 582, '2021-06-29', 1, 'mobile');
INSERT INTO `product_view` VALUES (1268, 589, '2021-06-29', 1, 'mobile');
INSERT INTO `product_view` VALUES (1269, 580, '2021-06-29', 1, 'web');
INSERT INTO `product_view` VALUES (1270, 581, '2021-06-29', 1, 'web');
INSERT INTO `product_view` VALUES (1271, 577, '2021-06-29', 2, 'web');
INSERT INTO `product_view` VALUES (1272, 578, '2021-06-29', 1, 'web');
INSERT INTO `product_view` VALUES (1273, 583, '2021-06-29', 2, 'mobile');
INSERT INTO `product_view` VALUES (1274, 579, '2021-06-29', 1, 'web');
INSERT INTO `product_view` VALUES (1275, 583, '2021-06-29', 1, 'web');
INSERT INTO `product_view` VALUES (1276, 579, '2021-06-29', 1, 'mobile');
INSERT INTO `product_view` VALUES (1277, 591, '2021-06-29', 1, 'mobile');
INSERT INTO `product_view` VALUES (1278, 577, '2021-06-29', 1, 'mobile');
INSERT INTO `product_view` VALUES (1279, 579, '2021-06-30', 1, 'mobile');
INSERT INTO `product_view` VALUES (1280, 583, '2021-06-30', 2, 'web');
INSERT INTO `product_view` VALUES (1281, 579, '2021-06-30', 2, 'web');
INSERT INTO `product_view` VALUES (1282, 574, '2021-06-30', 1, 'mobile');
INSERT INTO `product_view` VALUES (1283, 576, '2021-06-30', 1, 'mobile');
INSERT INTO `product_view` VALUES (1284, 578, '2021-06-30', 2, 'mobile');
INSERT INTO `product_view` VALUES (1285, 583, '2021-06-30', 1, 'mobile');
INSERT INTO `product_view` VALUES (1286, 591, '2021-06-30', 1, 'mobile');
INSERT INTO `product_view` VALUES (1287, 577, '2021-06-30', 1, 'mobile');
INSERT INTO `product_view` VALUES (1288, 582, '2021-06-30', 1, 'web');
INSERT INTO `product_view` VALUES (1289, 574, '2021-06-30', 1, 'web');
INSERT INTO `product_view` VALUES (1290, 575, '2021-06-30', 1, 'web');
INSERT INTO `product_view` VALUES (1291, 581, '2021-06-30', 1, 'web');
INSERT INTO `product_view` VALUES (1292, 580, '2021-06-30', 1, 'web');
INSERT INTO `product_view` VALUES (1293, 571, '2021-06-30', 1, 'web');
INSERT INTO `product_view` VALUES (1294, 581, '2021-07-01', 1, 'mobile');
INSERT INTO `product_view` VALUES (1295, 583, '2021-07-01', 1, 'mobile');
INSERT INTO `product_view` VALUES (1296, 582, '2021-07-01', 1, 'mobile');
INSERT INTO `product_view` VALUES (1297, 576, '2021-07-01', 3, 'mobile');
INSERT INTO `product_view` VALUES (1298, 577, '2021-07-01', 2, 'mobile');
INSERT INTO `product_view` VALUES (1299, 583, '2021-07-01', 1, 'web');
INSERT INTO `product_view` VALUES (1300, 590, '2021-07-01', 1, 'mobile');
INSERT INTO `product_view` VALUES (1301, 577, '2021-07-01', 2, 'web');
INSERT INTO `product_view` VALUES (1302, 579, '2021-07-01', 1, 'web');
INSERT INTO `product_view` VALUES (1303, 580, '2021-07-01', 1, 'mobile');
INSERT INTO `product_view` VALUES (1304, 585, '2021-07-01', 1, 'web');
INSERT INTO `product_view` VALUES (1305, 580, '2021-07-01', 1, 'web');
INSERT INTO `product_view` VALUES (1306, 579, '2021-07-01', 1, 'mobile');
INSERT INTO `product_view` VALUES (1307, 591, '2021-07-02', 3, 'mobile');
INSERT INTO `product_view` VALUES (1308, 575, '2021-07-02', 2, 'mobile');
INSERT INTO `product_view` VALUES (1309, 579, '2021-07-02', 2, 'mobile');
INSERT INTO `product_view` VALUES (1310, 571, '2021-07-02', 2, 'mobile');
INSERT INTO `product_view` VALUES (1311, 581, '2021-07-02', 2, 'mobile');
INSERT INTO `product_view` VALUES (1312, 574, '2021-07-02', 2, 'mobile');
INSERT INTO `product_view` VALUES (1313, 580, '2021-07-02', 1, 'mobile');
INSERT INTO `product_view` VALUES (1314, 578, '2021-07-02', 2, 'mobile');
INSERT INTO `product_view` VALUES (1315, 582, '2021-07-02', 1, 'mobile');
INSERT INTO `product_view` VALUES (1316, 576, '2021-07-02', 1, 'mobile');
INSERT INTO `product_view` VALUES (1317, 581, '2021-07-02', 1, 'web');
INSERT INTO `product_view` VALUES (1318, 583, '2021-07-02', 1, 'web');
INSERT INTO `product_view` VALUES (1319, 579, '2021-07-02', 3, 'web');
INSERT INTO `product_view` VALUES (1320, 590, '2021-07-02', 1, 'web');
INSERT INTO `product_view` VALUES (1321, 591, '2021-07-02', 1, 'web');
INSERT INTO `product_view` VALUES (1322, 578, '2021-07-02', 1, 'web');
INSERT INTO `product_view` VALUES (1323, 571, '2021-07-02', 1, 'web');
INSERT INTO `product_view` VALUES (1324, 582, '2021-07-02', 1, 'web');
INSERT INTO `product_view` VALUES (1325, 582, '2021-07-03', 2, 'mobile');
INSERT INTO `product_view` VALUES (1326, 578, '2021-07-03', 1, 'web');
INSERT INTO `product_view` VALUES (1327, 578, '2021-07-03', 2, 'mobile');
INSERT INTO `product_view` VALUES (1328, 580, '2021-07-03', 1, 'web');
INSERT INTO `product_view` VALUES (1329, 580, '2021-07-03', 1, 'mobile');
INSERT INTO `product_view` VALUES (1330, 577, '2021-07-03', 1, 'web');
INSERT INTO `product_view` VALUES (1331, 577, '2021-07-03', 4, 'mobile');
INSERT INTO `product_view` VALUES (1332, 575, '2021-07-03', 1, 'web');
INSERT INTO `product_view` VALUES (1333, 579, '2021-07-03', 2, 'mobile');
INSERT INTO `product_view` VALUES (1334, 571, '2021-07-03', 1, 'mobile');
INSERT INTO `product_view` VALUES (1335, 575, '2021-07-03', 2, 'mobile');
INSERT INTO `product_view` VALUES (1336, 591, '2021-07-03', 1, 'web');
INSERT INTO `product_view` VALUES (1337, 591, '2021-07-03', 1, 'mobile');
INSERT INTO `product_view` VALUES (1338, 574, '2021-07-03', 1, 'web');
INSERT INTO `product_view` VALUES (1339, 574, '2021-07-03', 1, 'mobile');
INSERT INTO `product_view` VALUES (1340, 583, '2021-07-03', 2, 'web');
INSERT INTO `product_view` VALUES (1341, 583, '2021-07-03', 5, 'mobile');
INSERT INTO `product_view` VALUES (1342, 581, '2021-07-03', 1, 'web');
INSERT INTO `product_view` VALUES (1343, 581, '2021-07-03', 2, 'mobile');
INSERT INTO `product_view` VALUES (1344, 582, '2021-07-03', 1, 'web');
INSERT INTO `product_view` VALUES (1345, 580, '2021-07-04', 1, 'mobile');
INSERT INTO `product_view` VALUES (1346, 590, '2021-07-04', 1, 'mobile');
INSERT INTO `product_view` VALUES (1347, 582, '2021-07-04', 1, 'mobile');
INSERT INTO `product_view` VALUES (1348, 576, '2021-07-04', 5, 'mobile');
INSERT INTO `product_view` VALUES (1349, 583, '2021-07-04', 2, 'mobile');
INSERT INTO `product_view` VALUES (1350, 587, '2021-07-04', 1, 'mobile');
INSERT INTO `product_view` VALUES (1351, 578, '2021-07-04', 1, 'mobile');
INSERT INTO `product_view` VALUES (1352, 579, '2021-07-04', 2, 'mobile');
INSERT INTO `product_view` VALUES (1353, 591, '2021-07-04', 2, 'mobile');
INSERT INTO `product_view` VALUES (1354, 577, '2021-07-04', 2, 'mobile');
INSERT INTO `product_view` VALUES (1355, 579, '2021-07-05', 6, 'mobile');
INSERT INTO `product_view` VALUES (1356, 574, '2021-07-05', 2, 'mobile');
INSERT INTO `product_view` VALUES (1357, 584, '2021-07-05', 1, 'mobile');
INSERT INTO `product_view` VALUES (1358, 586, '2021-07-05', 1, 'mobile');
INSERT INTO `product_view` VALUES (1359, 577, '2021-07-05', 3, 'mobile');
INSERT INTO `product_view` VALUES (1360, 590, '2021-07-05', 1, 'mobile');
INSERT INTO `product_view` VALUES (1361, 576, '2021-07-05', 1, 'mobile');
INSERT INTO `product_view` VALUES (1362, 578, '2021-07-05', 2, 'web');
INSERT INTO `product_view` VALUES (1363, 583, '2021-07-05', 1, 'web');
INSERT INTO `product_view` VALUES (1364, 579, '2021-07-05', 1, 'web');
INSERT INTO `product_view` VALUES (1365, 591, '2021-07-05', 3, 'mobile');
INSERT INTO `product_view` VALUES (1366, 590, '2021-07-05', 1, 'web');
INSERT INTO `product_view` VALUES (1367, 586, '2021-07-05', 1, 'web');
INSERT INTO `product_view` VALUES (1368, 588, '2021-07-05', 1, 'web');
INSERT INTO `product_view` VALUES (1369, 585, '2021-07-05', 1, 'web');
INSERT INTO `product_view` VALUES (1370, 580, '2021-07-05', 1, 'mobile');
INSERT INTO `product_view` VALUES (1371, 574, '2021-07-05', 1, 'web');
INSERT INTO `product_view` VALUES (1372, 577, '2021-07-06', 2, 'mobile');
INSERT INTO `product_view` VALUES (1373, 585, '2021-07-06', 1, 'web');
INSERT INTO `product_view` VALUES (1374, 579, '2021-07-06', 1, 'mobile');
INSERT INTO `product_view` VALUES (1375, 591, '2021-07-06', 1, 'mobile');
INSERT INTO `product_view` VALUES (1376, 578, '2021-07-06', 4, 'web');
INSERT INTO `product_view` VALUES (1377, 575, '2021-07-06', 1, 'web');
INSERT INTO `product_view` VALUES (1378, 583, '2021-07-06', 1, 'mobile');
INSERT INTO `product_view` VALUES (1379, 576, '2021-07-06', 1, 'web');
INSERT INTO `product_view` VALUES (1380, 591, '2021-07-06', 2, 'web');
INSERT INTO `product_view` VALUES (1381, 577, '2021-07-06', 1, 'web');
INSERT INTO `product_view` VALUES (1382, 580, '2021-07-06', 1, 'mobile');
INSERT INTO `product_view` VALUES (1383, 580, '2021-07-07', 1, 'mobile');
INSERT INTO `product_view` VALUES (1384, 585, '2021-07-07', 1, 'web');
INSERT INTO `product_view` VALUES (1385, 584, '2021-07-07', 1, 'web');
INSERT INTO `product_view` VALUES (1386, 579, '2021-07-07', 4, 'mobile');
INSERT INTO `product_view` VALUES (1387, 578, '2021-07-07', 1, 'web');
INSERT INTO `product_view` VALUES (1388, 577, '2021-07-07', 1, 'web');
INSERT INTO `product_view` VALUES (1389, 583, '2021-07-07', 2, 'web');
INSERT INTO `product_view` VALUES (1390, 582, '2021-07-07', 1, 'web');
INSERT INTO `product_view` VALUES (1391, 591, '2021-07-08', 1, 'web');
INSERT INTO `product_view` VALUES (1392, 591, '2021-07-08', 1, 'mobile');
INSERT INTO `product_view` VALUES (1393, 574, '2021-07-08', 2, 'mobile');
INSERT INTO `product_view` VALUES (1394, 590, '2021-07-08', 2, 'mobile');
INSERT INTO `product_view` VALUES (1395, 578, '2021-07-08', 1, 'mobile');
INSERT INTO `product_view` VALUES (1396, 585, '2021-07-08', 1, 'mobile');
INSERT INTO `product_view` VALUES (1397, 583, '2021-07-08', 1, 'web');
INSERT INTO `product_view` VALUES (1398, 579, '2021-07-08', 1, 'web');
INSERT INTO `product_view` VALUES (1399, 579, '2021-07-08', 1, 'mobile');
INSERT INTO `product_view` VALUES (1400, 577, '2021-07-08', 1, 'mobile');
INSERT INTO `product_view` VALUES (1401, 571, '2021-07-08', 1, 'mobile');
INSERT INTO `product_view` VALUES (1402, 583, '2021-07-09', 1, 'web');
INSERT INTO `product_view` VALUES (1403, 590, '2021-07-09', 1, 'web');
INSERT INTO `product_view` VALUES (1404, 582, '2021-07-09', 1, 'web');
INSERT INTO `product_view` VALUES (1405, 578, '2021-07-09', 1, 'mobile');
INSERT INTO `product_view` VALUES (1406, 577, '2021-07-09', 1, 'mobile');
INSERT INTO `product_view` VALUES (1407, 575, '2021-07-10', 1, 'web');
INSERT INTO `product_view` VALUES (1408, 581, '2021-07-10', 1, 'web');
INSERT INTO `product_view` VALUES (1409, 577, '2021-07-10', 2, 'mobile');
INSERT INTO `product_view` VALUES (1410, 582, '2021-07-10', 1, 'mobile');
INSERT INTO `product_view` VALUES (1411, 579, '2021-07-10', 2, 'mobile');
INSERT INTO `product_view` VALUES (1412, 583, '2021-07-10', 1, 'mobile');
INSERT INTO `product_view` VALUES (1413, 579, '2021-07-10', 1, 'web');
INSERT INTO `product_view` VALUES (1414, 591, '2021-07-10', 1, 'mobile');
INSERT INTO `product_view` VALUES (1415, 582, '2021-07-10', 1, 'web');
INSERT INTO `product_view` VALUES (1416, 576, '2021-07-10', 1, 'mobile');
INSERT INTO `product_view` VALUES (1417, 578, '2021-07-10', 1, 'web');
INSERT INTO `product_view` VALUES (1418, 591, '2021-07-10', 1, 'web');
INSERT INTO `product_view` VALUES (1419, 581, '2021-07-11', 1, 'mobile');
INSERT INTO `product_view` VALUES (1420, 580, '2021-07-11', 1, 'mobile');
INSERT INTO `product_view` VALUES (1421, 571, '2021-07-11', 1, 'mobile');
INSERT INTO `product_view` VALUES (1422, 583, '2021-07-11', 2, 'web');
INSERT INTO `product_view` VALUES (1423, 579, '2021-07-11', 1, 'web');
INSERT INTO `product_view` VALUES (1424, 580, '2021-07-11', 1, 'web');
INSERT INTO `product_view` VALUES (1425, 578, '2021-07-11', 1, 'mobile');
INSERT INTO `product_view` VALUES (1426, 578, '2021-07-11', 1, 'web');
INSERT INTO `product_view` VALUES (1427, 577, '2021-07-11', 1, 'mobile');
INSERT INTO `product_view` VALUES (1428, 587, '2021-07-11', 1, 'mobile');
INSERT INTO `product_view` VALUES (1429, 585, '2021-07-11', 1, 'mobile');
INSERT INTO `product_view` VALUES (1430, 583, '2021-07-11', 1, 'mobile');
INSERT INTO `product_view` VALUES (1431, 579, '2021-07-12', 2, 'mobile');
INSERT INTO `product_view` VALUES (1432, 591, '2021-07-12', 1, 'mobile');
INSERT INTO `product_view` VALUES (1433, 583, '2021-07-12', 1, 'mobile');
INSERT INTO `product_view` VALUES (1434, 578, '2021-07-12', 2, 'web');
INSERT INTO `product_view` VALUES (1435, 577, '2021-07-13', 1, 'mobile');
INSERT INTO `product_view` VALUES (1436, 586, '2021-07-13', 1, 'mobile');
INSERT INTO `product_view` VALUES (1437, 579, '2021-07-13', 1, 'mobile');
INSERT INTO `product_view` VALUES (1438, 583, '2021-07-13', 1, 'web');
INSERT INTO `product_view` VALUES (1439, 582, '2021-07-13', 1, 'web');
INSERT INTO `product_view` VALUES (1440, 574, '2021-07-13', 1, 'mobile');
INSERT INTO `product_view` VALUES (1441, 580, '2021-07-13', 1, 'mobile');
INSERT INTO `product_view` VALUES (1442, 591, '2021-07-14', 1, 'mobile');
INSERT INTO `product_view` VALUES (1443, 583, '2021-07-14', 1, 'mobile');
INSERT INTO `product_view` VALUES (1444, 585, '2021-07-14', 1, 'web');
INSERT INTO `product_view` VALUES (1445, 579, '2021-07-14', 1, 'mobile');
INSERT INTO `product_view` VALUES (1446, 581, '2021-07-14', 1, 'mobile');
INSERT INTO `product_view` VALUES (1447, 574, '2021-07-14', 1, 'mobile');
INSERT INTO `product_view` VALUES (1448, 577, '2021-07-14', 1, 'web');
INSERT INTO `product_view` VALUES (1449, 582, '2021-07-15', 3, 'mobile');
INSERT INTO `product_view` VALUES (1450, 577, '2021-07-15', 2, 'mobile');
INSERT INTO `product_view` VALUES (1451, 580, '2021-07-15', 4, 'mobile');
INSERT INTO `product_view` VALUES (1452, 578, '2021-07-15', 1, 'web');
INSERT INTO `product_view` VALUES (1453, 578, '2021-07-15', 3, 'mobile');
INSERT INTO `product_view` VALUES (1454, 591, '2021-07-15', 4, 'mobile');
INSERT INTO `product_view` VALUES (1455, 588, '2021-07-15', 1, 'mobile');
INSERT INTO `product_view` VALUES (1456, 583, '2021-07-15', 2, 'mobile');
INSERT INTO `product_view` VALUES (1457, 575, '2021-07-15', 1, 'mobile');
INSERT INTO `product_view` VALUES (1458, 581, '2021-07-15', 3, 'mobile');
INSERT INTO `product_view` VALUES (1459, 579, '2021-07-15', 4, 'mobile');
INSERT INTO `product_view` VALUES (1460, 576, '2021-07-15', 1, 'mobile');
INSERT INTO `product_view` VALUES (1461, 588, '2021-07-16', 1, 'mobile');
INSERT INTO `product_view` VALUES (1462, 578, '2021-07-16', 6, 'mobile');
INSERT INTO `product_view` VALUES (1463, 581, '2021-07-16', 1, 'mobile');
INSERT INTO `product_view` VALUES (1464, 580, '2021-07-16', 5, 'mobile');
INSERT INTO `product_view` VALUES (1465, 579, '2021-07-16', 6, 'mobile');
INSERT INTO `product_view` VALUES (1466, 582, '2021-07-16', 4, 'mobile');
INSERT INTO `product_view` VALUES (1467, 579, '2021-07-16', 2, 'web');
INSERT INTO `product_view` VALUES (1468, 577, '2021-07-16', 2, 'mobile');
INSERT INTO `product_view` VALUES (1469, 586, '2021-07-16', 1, 'mobile');
INSERT INTO `product_view` VALUES (1470, 575, '2021-07-16', 1, 'mobile');
INSERT INTO `product_view` VALUES (1471, 583, '2021-07-16', 1, 'mobile');
INSERT INTO `product_view` VALUES (1472, 574, '2021-07-16', 1, 'mobile');
INSERT INTO `product_view` VALUES (1473, 576, '2021-07-16', 1, 'mobile');
INSERT INTO `product_view` VALUES (1474, 582, '2021-07-16', 1, 'web');
INSERT INTO `product_view` VALUES (1475, 591, '2021-07-17', 3, 'mobile');
INSERT INTO `product_view` VALUES (1476, 571, '2021-07-17', 4, 'mobile');
INSERT INTO `product_view` VALUES (1477, 579, '2021-07-17', 2, 'web');
INSERT INTO `product_view` VALUES (1478, 591, '2021-07-17', 1, 'web');
INSERT INTO `product_view` VALUES (1479, 578, '2021-07-17', 3, 'mobile');
INSERT INTO `product_view` VALUES (1480, 574, '2021-07-17', 1, 'mobile');
INSERT INTO `product_view` VALUES (1481, 576, '2021-07-17', 3, 'web');
INSERT INTO `product_view` VALUES (1482, 579, '2021-07-17', 1, 'mobile');
INSERT INTO `product_view` VALUES (1483, 582, '2021-07-17', 2, 'web');
INSERT INTO `product_view` VALUES (1484, 578, '2021-07-17', 2, 'web');
INSERT INTO `product_view` VALUES (1485, 580, '2021-07-17', 1, 'web');
INSERT INTO `product_view` VALUES (1486, 583, '2021-07-17', 1, 'web');
INSERT INTO `product_view` VALUES (1487, 581, '2021-07-17', 2, 'mobile');
INSERT INTO `product_view` VALUES (1488, 583, '2021-07-17', 2, 'mobile');
INSERT INTO `product_view` VALUES (1489, 576, '2021-07-17', 1, 'mobile');
INSERT INTO `product_view` VALUES (1490, 590, '2021-07-17', 1, 'mobile');
INSERT INTO `product_view` VALUES (1491, 580, '2021-07-17', 1, 'mobile');
INSERT INTO `product_view` VALUES (1492, 582, '2021-07-17', 1, 'mobile');
INSERT INTO `product_view` VALUES (1493, 576, '2021-07-18', 1, 'web');
INSERT INTO `product_view` VALUES (1494, 578, '2021-07-18', 1, 'web');
INSERT INTO `product_view` VALUES (1495, 591, '2021-07-18', 1, 'mobile');
INSERT INTO `product_view` VALUES (1496, 571, '2021-07-18', 1, 'web');
INSERT INTO `product_view` VALUES (1497, 590, '2021-07-18', 2, 'web');
INSERT INTO `product_view` VALUES (1498, 577, '2021-07-18', 1, 'mobile');
INSERT INTO `product_view` VALUES (1499, 579, '2021-07-18', 2, 'mobile');
INSERT INTO `product_view` VALUES (1500, 590, '2021-07-18', 1, 'mobile');
INSERT INTO `product_view` VALUES (1501, 582, '2021-07-18', 1, 'web');
INSERT INTO `product_view` VALUES (1502, 586, '2021-07-19', 1, 'mobile');
INSERT INTO `product_view` VALUES (1503, 578, '2021-07-19', 1, 'mobile');
INSERT INTO `product_view` VALUES (1504, 583, '2021-07-19', 1, 'mobile');
INSERT INTO `product_view` VALUES (1505, 577, '2021-07-19', 1, 'mobile');
INSERT INTO `product_view` VALUES (1506, 577, '2021-07-19', 2, 'web');
INSERT INTO `product_view` VALUES (1507, 580, '2021-07-19', 2, 'mobile');
INSERT INTO `product_view` VALUES (1508, 576, '2021-07-19', 1, 'mobile');
INSERT INTO `product_view` VALUES (1509, 590, '2021-07-19', 1, 'web');
INSERT INTO `product_view` VALUES (1510, 582, '2021-07-19', 1, 'mobile');
INSERT INTO `product_view` VALUES (1511, 578, '2021-07-19', 2, 'web');
INSERT INTO `product_view` VALUES (1512, 576, '2021-07-19', 1, 'web');
INSERT INTO `product_view` VALUES (1513, 591, '2021-07-19', 1, 'web');
INSERT INTO `product_view` VALUES (1514, 582, '2021-07-19', 1, 'web');
INSERT INTO `product_view` VALUES (1515, 591, '2021-07-20', 4, 'mobile');
INSERT INTO `product_view` VALUES (1516, 580, '2021-07-20', 3, 'mobile');
INSERT INTO `product_view` VALUES (1517, 577, '2021-07-20', 2, 'mobile');
INSERT INTO `product_view` VALUES (1518, 579, '2021-07-20', 9, 'mobile');
INSERT INTO `product_view` VALUES (1519, 574, '2021-07-20', 2, 'mobile');
INSERT INTO `product_view` VALUES (1520, 576, '2021-07-20', 2, 'mobile');
INSERT INTO `product_view` VALUES (1521, 575, '2021-07-20', 3, 'mobile');
INSERT INTO `product_view` VALUES (1522, 571, '2021-07-20', 3, 'mobile');
INSERT INTO `product_view` VALUES (1523, 582, '2021-07-20', 4, 'mobile');
INSERT INTO `product_view` VALUES (1524, 591, '2021-07-20', 1, 'web');
INSERT INTO `product_view` VALUES (1525, 580, '2021-07-20', 1, 'web');
INSERT INTO `product_view` VALUES (1526, 578, '2021-07-20', 1, 'mobile');
INSERT INTO `product_view` VALUES (1527, 576, '2021-07-20', 2, 'web');
INSERT INTO `product_view` VALUES (1528, 582, '2021-07-20', 1, 'web');
INSERT INTO `product_view` VALUES (1529, 578, '2021-07-20', 1, 'web');
INSERT INTO `product_view` VALUES (1530, 590, '2021-07-20', 1, 'web');
INSERT INTO `product_view` VALUES (1531, 588, '2021-07-20', 1, 'web');
INSERT INTO `product_view` VALUES (1532, 587, '2021-07-20', 1, 'web');
INSERT INTO `product_view` VALUES (1533, 589, '2021-07-20', 1, 'web');
INSERT INTO `product_view` VALUES (1534, 571, '2021-07-20', 1, 'web');
INSERT INTO `product_view` VALUES (1535, 583, '2021-07-20', 1, 'mobile');
INSERT INTO `product_view` VALUES (1536, 581, '2021-07-20', 1, 'mobile');
INSERT INTO `product_view` VALUES (1537, 586, '2021-07-21', 1, 'web');
INSERT INTO `product_view` VALUES (1538, 571, '2021-07-21', 2, 'mobile');
INSERT INTO `product_view` VALUES (1539, 583, '2021-07-21', 2, 'web');
INSERT INTO `product_view` VALUES (1540, 581, '2021-07-21', 2, 'mobile');
INSERT INTO `product_view` VALUES (1541, 583, '2021-07-21', 2, 'mobile');
INSERT INTO `product_view` VALUES (1542, 577, '2021-07-21', 4, 'mobile');
INSERT INTO `product_view` VALUES (1543, 578, '2021-07-21', 4, 'mobile');
INSERT INTO `product_view` VALUES (1544, 588, '2021-07-21', 1, 'mobile');
INSERT INTO `product_view` VALUES (1545, 586, '2021-07-21', 1, 'mobile');
INSERT INTO `product_view` VALUES (1546, 587, '2021-07-21', 1, 'mobile');
INSERT INTO `product_view` VALUES (1547, 579, '2021-07-21', 1, 'mobile');
INSERT INTO `product_view` VALUES (1548, 577, '2021-07-21', 1, 'web');
INSERT INTO `product_view` VALUES (1549, 579, '2021-07-21', 3, 'web');
INSERT INTO `product_view` VALUES (1550, 582, '2021-07-21', 1, 'mobile');
INSERT INTO `product_view` VALUES (1551, 582, '2021-07-21', 1, 'web');
INSERT INTO `product_view` VALUES (1552, 576, '2021-07-21', 1, 'mobile');
INSERT INTO `product_view` VALUES (1553, 580, '2021-07-21', 1, 'mobile');
INSERT INTO `product_view` VALUES (1554, 591, '2021-07-21', 1, 'mobile');
INSERT INTO `product_view` VALUES (1555, 591, '2021-07-22', 1, 'mobile');
INSERT INTO `product_view` VALUES (1556, 580, '2021-07-22', 3, 'mobile');
INSERT INTO `product_view` VALUES (1557, 579, '2021-07-22', 1, 'mobile');
INSERT INTO `product_view` VALUES (1558, 577, '2021-07-22', 2, 'mobile');
INSERT INTO `product_view` VALUES (1559, 583, '2021-07-22', 1, 'mobile');
INSERT INTO `product_view` VALUES (1560, 576, '2021-07-22', 3, 'web');
INSERT INTO `product_view` VALUES (1561, 582, '2021-07-22', 1, 'mobile');
INSERT INTO `product_view` VALUES (1562, 580, '2021-07-22', 1, 'web');
INSERT INTO `product_view` VALUES (1563, 576, '2021-07-22', 1, 'mobile');
INSERT INTO `product_view` VALUES (1564, 581, '2021-07-22', 1, 'mobile');
INSERT INTO `product_view` VALUES (1565, 574, '2021-07-22', 2, 'mobile');
INSERT INTO `product_view` VALUES (1566, 591, '2021-07-22', 1, 'web');
INSERT INTO `product_view` VALUES (1567, 583, '2021-07-22', 1, 'web');
INSERT INTO `product_view` VALUES (1568, 578, '2021-07-22', 1, 'mobile');
INSERT INTO `product_view` VALUES (1569, 579, '2021-07-22', 1, 'web');
INSERT INTO `product_view` VALUES (1570, 580, '2021-07-23', 1, 'web');
INSERT INTO `product_view` VALUES (1571, 577, '2021-07-23', 1, 'web');
INSERT INTO `product_view` VALUES (1572, 576, '2021-07-23', 1, 'mobile');
INSERT INTO `product_view` VALUES (1573, 571, '2021-07-23', 2, 'web');
INSERT INTO `product_view` VALUES (1574, 584, '2021-07-23', 1, 'web');
INSERT INTO `product_view` VALUES (1575, 578, '2021-07-23', 2, 'web');
INSERT INTO `product_view` VALUES (1576, 579, '2021-07-23', 2, 'mobile');
INSERT INTO `product_view` VALUES (1577, 579, '2021-07-23', 1, 'web');
INSERT INTO `product_view` VALUES (1578, 581, '2021-07-23', 2, 'mobile');
INSERT INTO `product_view` VALUES (1579, 580, '2021-07-23', 2, 'mobile');
INSERT INTO `product_view` VALUES (1580, 582, '2021-07-23', 3, 'mobile');
INSERT INTO `product_view` VALUES (1581, 577, '2021-07-23', 2, 'mobile');
INSERT INTO `product_view` VALUES (1582, 591, '2021-07-23', 4, 'mobile');
INSERT INTO `product_view` VALUES (1583, 590, '2021-07-23', 1, 'mobile');
INSERT INTO `product_view` VALUES (1584, 578, '2021-07-23', 3, 'mobile');
INSERT INTO `product_view` VALUES (1585, 575, '2021-07-23', 2, 'mobile');
INSERT INTO `product_view` VALUES (1586, 583, '2021-07-23', 1, 'mobile');
INSERT INTO `product_view` VALUES (1587, 574, '2021-07-23', 2, 'mobile');
INSERT INTO `product_view` VALUES (1588, 571, '2021-07-23', 1, 'mobile');
INSERT INTO `product_view` VALUES (1589, 591, '2021-07-23', 2, 'web');
INSERT INTO `product_view` VALUES (1590, 575, '2021-07-23', 1, 'web');
INSERT INTO `product_view` VALUES (1591, 581, '2021-07-23', 1, 'web');
INSERT INTO `product_view` VALUES (1592, 574, '2021-07-23', 1, 'web');
INSERT INTO `product_view` VALUES (1593, 582, '2021-07-23', 1, 'web');
INSERT INTO `product_view` VALUES (1594, 580, '2021-07-24', 1, 'web');
INSERT INTO `product_view` VALUES (1595, 580, '2021-07-24', 4, 'mobile');
INSERT INTO `product_view` VALUES (1596, 582, '2021-07-24', 3, 'mobile');
INSERT INTO `product_view` VALUES (1597, 590, '2021-07-24', 1, 'web');
INSERT INTO `product_view` VALUES (1598, 571, '2021-07-24', 2, 'mobile');
INSERT INTO `product_view` VALUES (1599, 591, '2021-07-24', 3, 'mobile');
INSERT INTO `product_view` VALUES (1600, 574, '2021-07-24', 4, 'mobile');
INSERT INTO `product_view` VALUES (1601, 575, '2021-07-24', 3, 'mobile');
INSERT INTO `product_view` VALUES (1602, 579, '2021-07-24', 4, 'mobile');
INSERT INTO `product_view` VALUES (1603, 583, '2021-07-24', 3, 'mobile');
INSERT INTO `product_view` VALUES (1604, 579, '2021-07-24', 1, 'web');
INSERT INTO `product_view` VALUES (1605, 581, '2021-07-24', 2, 'mobile');
INSERT INTO `product_view` VALUES (1606, 576, '2021-07-24', 2, 'mobile');
INSERT INTO `product_view` VALUES (1607, 588, '2021-07-24', 3, 'mobile');
INSERT INTO `product_view` VALUES (1608, 577, '2021-07-24', 2, 'mobile');
INSERT INTO `product_view` VALUES (1609, 574, '2021-07-24', 2, 'web');
INSERT INTO `product_view` VALUES (1610, 585, '2021-07-25', 1, 'web');
INSERT INTO `product_view` VALUES (1611, 587, '2021-07-25', 2, 'mobile');
INSERT INTO `product_view` VALUES (1612, 585, '2021-07-25', 2, 'mobile');
INSERT INTO `product_view` VALUES (1613, 578, '2021-07-25', 4, 'mobile');
INSERT INTO `product_view` VALUES (1614, 583, '2021-07-25', 5, 'mobile');
INSERT INTO `product_view` VALUES (1615, 581, '2021-07-25', 5, 'mobile');
INSERT INTO `product_view` VALUES (1616, 591, '2021-07-25', 4, 'mobile');
INSERT INTO `product_view` VALUES (1617, 591, '2021-07-25', 2, 'web');
INSERT INTO `product_view` VALUES (1618, 577, '2021-07-25', 4, 'mobile');
INSERT INTO `product_view` VALUES (1619, 576, '2021-07-25', 4, 'mobile');
INSERT INTO `product_view` VALUES (1620, 582, '2021-07-25', 2, 'mobile');
INSERT INTO `product_view` VALUES (1621, 579, '2021-07-25', 4, 'mobile');
INSERT INTO `product_view` VALUES (1622, 578, '2021-07-25', 2, 'web');
INSERT INTO `product_view` VALUES (1623, 571, '2021-07-25', 2, 'mobile');
INSERT INTO `product_view` VALUES (1624, 580, '2021-07-25', 3, 'mobile');
INSERT INTO `product_view` VALUES (1625, 575, '2021-07-25', 1, 'mobile');
INSERT INTO `product_view` VALUES (1626, 574, '2021-07-25', 2, 'mobile');
INSERT INTO `product_view` VALUES (1627, 583, '2021-07-25', 1, 'web');
INSERT INTO `product_view` VALUES (1628, 586, '2021-07-25', 1, 'mobile');
INSERT INTO `product_view` VALUES (1629, 590, '2021-07-25', 1, 'mobile');
INSERT INTO `product_view` VALUES (1630, 591, '2021-07-26', 5, 'mobile');
INSERT INTO `product_view` VALUES (1631, 591, '2021-07-26', 3, 'web');
INSERT INTO `product_view` VALUES (1632, 579, '2021-07-26', 4, 'mobile');
INSERT INTO `product_view` VALUES (1633, 580, '2021-07-26', 4, 'mobile');
INSERT INTO `product_view` VALUES (1634, 589, '2021-07-26', 3, 'mobile');
INSERT INTO `product_view` VALUES (1635, 583, '2021-07-26', 2, 'mobile');
INSERT INTO `product_view` VALUES (1636, 582, '2021-07-26', 1, 'mobile');
INSERT INTO `product_view` VALUES (1637, 575, '2021-07-26', 2, 'mobile');
INSERT INTO `product_view` VALUES (1638, 581, '2021-07-26', 3, 'mobile');
INSERT INTO `product_view` VALUES (1639, 584, '2021-07-26', 3, 'mobile');
INSERT INTO `product_view` VALUES (1640, 578, '2021-07-26', 3, 'mobile');
INSERT INTO `product_view` VALUES (1641, 583, '2021-07-26', 1, 'web');
INSERT INTO `product_view` VALUES (1642, 580, '2021-07-26', 2, 'web');
INSERT INTO `product_view` VALUES (1643, 581, '2021-07-26', 2, 'web');
INSERT INTO `product_view` VALUES (1644, 574, '2021-07-26', 1, 'web');
INSERT INTO `product_view` VALUES (1645, 579, '2021-07-26', 1, 'web');
INSERT INTO `product_view` VALUES (1646, 571, '2021-07-26', 1, 'web');
INSERT INTO `product_view` VALUES (1647, 574, '2021-07-26', 1, 'mobile');
INSERT INTO `product_view` VALUES (1648, 571, '2021-07-26', 1, 'mobile');
INSERT INTO `product_view` VALUES (1649, 585, '2021-07-26', 1, 'mobile');
INSERT INTO `product_view` VALUES (1650, 587, '2021-07-26', 1, 'mobile');
INSERT INTO `product_view` VALUES (1651, 586, '2021-07-26', 1, 'mobile');
INSERT INTO `product_view` VALUES (1652, 579, '2021-07-27', 3, 'mobile');
INSERT INTO `product_view` VALUES (1653, 575, '2021-07-27', 1, 'mobile');
INSERT INTO `product_view` VALUES (1654, 577, '2021-07-27', 1, 'web');
INSERT INTO `product_view` VALUES (1655, 578, '2021-07-27', 2, 'web');
INSERT INTO `product_view` VALUES (1656, 582, '2021-07-27', 2, 'web');
INSERT INTO `product_view` VALUES (1657, 576, '2021-07-27', 1, 'web');
INSERT INTO `product_view` VALUES (1658, 580, '2021-07-27', 2, 'web');
INSERT INTO `product_view` VALUES (1659, 583, '2021-07-27', 2, 'web');
INSERT INTO `product_view` VALUES (1660, 581, '2021-07-27', 2, 'web');
INSERT INTO `product_view` VALUES (1661, 574, '2021-07-27', 3, 'web');
INSERT INTO `product_view` VALUES (1662, 580, '2021-07-27', 1, 'mobile');
INSERT INTO `product_view` VALUES (1663, 589, '2021-07-27', 1, 'web');
INSERT INTO `product_view` VALUES (1664, 591, '2021-07-27', 2, 'web');
INSERT INTO `product_view` VALUES (1665, 578, '2021-07-27', 4, 'mobile');
INSERT INTO `product_view` VALUES (1666, 576, '2021-07-27', 2, 'mobile');
INSERT INTO `product_view` VALUES (1667, 591, '2021-07-27', 2, 'mobile');
INSERT INTO `product_view` VALUES (1668, 579, '2021-07-27', 1, 'web');
INSERT INTO `product_view` VALUES (1669, 571, '2021-07-27', 1, 'web');
INSERT INTO `product_view` VALUES (1670, 582, '2021-07-27', 2, 'mobile');
INSERT INTO `product_view` VALUES (1671, 577, '2021-07-28', 2, 'mobile');
INSERT INTO `product_view` VALUES (1672, 582, '2021-07-28', 3, 'mobile');
INSERT INTO `product_view` VALUES (1673, 580, '2021-07-28', 5, 'mobile');
INSERT INTO `product_view` VALUES (1674, 580, '2021-07-28', 1, 'web');
INSERT INTO `product_view` VALUES (1675, 571, '2021-07-28', 1, 'web');
INSERT INTO `product_view` VALUES (1676, 576, '2021-07-28', 2, 'mobile');
INSERT INTO `product_view` VALUES (1677, 579, '2021-07-28', 2, 'mobile');
INSERT INTO `product_view` VALUES (1678, 576, '2021-07-28', 1, 'web');
INSERT INTO `product_view` VALUES (1679, 583, '2021-07-28', 1, 'mobile');
INSERT INTO `product_view` VALUES (1680, 591, '2021-07-28', 4, 'mobile');
INSERT INTO `product_view` VALUES (1681, 579, '2021-07-28', 1, 'web');
INSERT INTO `product_view` VALUES (1682, 578, '2021-07-28', 5, 'mobile');
INSERT INTO `product_view` VALUES (1683, 591, '2021-07-28', 2, 'web');
INSERT INTO `product_view` VALUES (1684, 589, '2021-07-28', 2, 'mobile');
INSERT INTO `product_view` VALUES (1685, 582, '2021-07-28', 4, 'web');
INSERT INTO `product_view` VALUES (1686, 578, '2021-07-28', 2, 'web');
INSERT INTO `product_view` VALUES (1687, 581, '2021-07-28', 1, 'web');
INSERT INTO `product_view` VALUES (1688, 574, '2021-07-28', 1, 'mobile');
INSERT INTO `product_view` VALUES (1689, 581, '2021-07-28', 2, 'mobile');
INSERT INTO `product_view` VALUES (1690, 571, '2021-07-28', 1, 'mobile');
INSERT INTO `product_view` VALUES (1691, 585, '2021-07-28', 1, 'mobile');
INSERT INTO `product_view` VALUES (1692, 584, '2021-07-28', 1, 'mobile');
INSERT INTO `product_view` VALUES (1693, 587, '2021-07-28', 1, 'mobile');
INSERT INTO `product_view` VALUES (1694, 586, '2021-07-28', 1, 'mobile');
INSERT INTO `product_view` VALUES (1695, 575, '2021-07-28', 1, 'mobile');
INSERT INTO `product_view` VALUES (1696, 591, '2021-07-29', 1, 'web');
INSERT INTO `product_view` VALUES (1697, 580, '2021-07-29', 3, 'mobile');
INSERT INTO `product_view` VALUES (1698, 575, '2021-07-29', 1, 'mobile');
INSERT INTO `product_view` VALUES (1699, 579, '2021-07-29', 3, 'mobile');
INSERT INTO `product_view` VALUES (1700, 574, '2021-07-29', 2, 'mobile');
INSERT INTO `product_view` VALUES (1701, 571, '2021-07-29', 2, 'mobile');
INSERT INTO `product_view` VALUES (1702, 585, '2021-07-29', 2, 'mobile');
INSERT INTO `product_view` VALUES (1703, 591, '2021-07-29', 2, 'mobile');
INSERT INTO `product_view` VALUES (1704, 581, '2021-07-29', 2, 'mobile');
INSERT INTO `product_view` VALUES (1705, 586, '2021-07-29', 1, 'web');
INSERT INTO `product_view` VALUES (1706, 583, '2021-07-29', 1, 'mobile');
INSERT INTO `product_view` VALUES (1707, 578, '2021-07-29', 1, 'mobile');
INSERT INTO `product_view` VALUES (1708, 578, '2021-07-30', 2, 'web');
INSERT INTO `product_view` VALUES (1709, 577, '2021-07-30', 3, 'mobile');
INSERT INTO `product_view` VALUES (1710, 591, '2021-07-30', 3, 'web');
INSERT INTO `product_view` VALUES (1711, 591, '2021-07-30', 3, 'mobile');
INSERT INTO `product_view` VALUES (1712, 589, '2021-07-30', 1, 'mobile');
INSERT INTO `product_view` VALUES (1713, 579, '2021-07-30', 7, 'mobile');
INSERT INTO `product_view` VALUES (1714, 583, '2021-07-30', 3, 'web');
INSERT INTO `product_view` VALUES (1715, 575, '2021-07-30', 3, 'mobile');
INSERT INTO `product_view` VALUES (1716, 583, '2021-07-30', 1, 'mobile');
INSERT INTO `product_view` VALUES (1717, 590, '2021-07-30', 1, 'mobile');
INSERT INTO `product_view` VALUES (1718, 571, '2021-07-30', 1, 'mobile');
INSERT INTO `product_view` VALUES (1719, 580, '2021-07-30', 1, 'mobile');
INSERT INTO `product_view` VALUES (1720, 582, '2021-07-30', 2, 'mobile');
INSERT INTO `product_view` VALUES (1721, 581, '2021-07-30', 1, 'mobile');
INSERT INTO `product_view` VALUES (1722, 574, '2021-07-30', 1, 'mobile');
INSERT INTO `product_view` VALUES (1723, 578, '2021-07-30', 1, 'mobile');
INSERT INTO `product_view` VALUES (1724, 582, '2021-07-30', 1, 'web');
INSERT INTO `product_view` VALUES (1725, 574, '2021-07-30', 1, 'web');
INSERT INTO `product_view` VALUES (1726, 589, '2021-07-31', 3, 'mobile');
INSERT INTO `product_view` VALUES (1727, 574, '2021-07-31', 2, 'web');
INSERT INTO `product_view` VALUES (1728, 580, '2021-07-31', 2, 'web');
INSERT INTO `product_view` VALUES (1729, 583, '2021-07-31', 3, 'web');
INSERT INTO `product_view` VALUES (1730, 581, '2021-07-31', 2, 'web');
INSERT INTO `product_view` VALUES (1731, 578, '2021-07-31', 3, 'web');
INSERT INTO `product_view` VALUES (1732, 586, '2021-07-31', 2, 'web');
INSERT INTO `product_view` VALUES (1733, 587, '2021-07-31', 2, 'web');
INSERT INTO `product_view` VALUES (1734, 582, '2021-07-31', 2, 'web');
INSERT INTO `product_view` VALUES (1735, 577, '2021-07-31', 1, 'web');
INSERT INTO `product_view` VALUES (1736, 576, '2021-07-31', 3, 'web');
INSERT INTO `product_view` VALUES (1737, 591, '2021-07-31', 5, 'mobile');
INSERT INTO `product_view` VALUES (1738, 575, '2021-07-31', 2, 'web');
INSERT INTO `product_view` VALUES (1739, 574, '2021-07-31', 4, 'mobile');
INSERT INTO `product_view` VALUES (1740, 582, '2021-07-31', 3, 'mobile');
INSERT INTO `product_view` VALUES (1741, 591, '2021-07-31', 2, 'web');
INSERT INTO `product_view` VALUES (1742, 579, '2021-07-31', 6, 'mobile');
INSERT INTO `product_view` VALUES (1743, 583, '2021-07-31', 3, 'mobile');
INSERT INTO `product_view` VALUES (1744, 575, '2021-07-31', 1, 'mobile');
INSERT INTO `product_view` VALUES (1745, 571, '2021-07-31', 4, 'mobile');
INSERT INTO `product_view` VALUES (1746, 577, '2021-07-31', 2, 'mobile');
INSERT INTO `product_view` VALUES (1747, 580, '2021-07-31', 3, 'mobile');
INSERT INTO `product_view` VALUES (1748, 581, '2021-07-31', 2, 'mobile');
INSERT INTO `product_view` VALUES (1749, 578, '2021-07-31', 2, 'mobile');
INSERT INTO `product_view` VALUES (1750, 589, '2021-07-31', 1, 'web');
INSERT INTO `product_view` VALUES (1751, 575, '2021-08-01', 1, 'mobile');
INSERT INTO `product_view` VALUES (1752, 579, '2021-08-01', 5, 'mobile');
INSERT INTO `product_view` VALUES (1753, 576, '2021-08-01', 1, 'mobile');
INSERT INTO `product_view` VALUES (1754, 579, '2021-08-01', 1, 'web');
INSERT INTO `product_view` VALUES (1755, 580, '2021-08-01', 3, 'mobile');
INSERT INTO `product_view` VALUES (1756, 576, '2021-08-01', 2, 'web');
INSERT INTO `product_view` VALUES (1757, 591, '2021-08-01', 3, 'web');
INSERT INTO `product_view` VALUES (1758, 583, '2021-08-01', 3, 'mobile');
INSERT INTO `product_view` VALUES (1759, 571, '2021-08-01', 1, 'mobile');
INSERT INTO `product_view` VALUES (1760, 590, '2021-08-01', 1, 'mobile');
INSERT INTO `product_view` VALUES (1761, 591, '2021-08-01', 1, 'mobile');
INSERT INTO `product_view` VALUES (1762, 582, '2021-08-01', 1, 'mobile');
INSERT INTO `product_view` VALUES (1763, 581, '2021-08-01', 1, 'web');
INSERT INTO `product_view` VALUES (1764, 574, '2021-08-01', 1, 'web');
INSERT INTO `product_view` VALUES (1765, 582, '2021-08-01', 1, 'web');
INSERT INTO `product_view` VALUES (1766, 583, '2021-08-01', 1, 'web');
INSERT INTO `product_view` VALUES (1767, 578, '2021-08-01', 1, 'web');
INSERT INTO `product_view` VALUES (1768, 577, '2021-08-01', 1, 'web');
INSERT INTO `product_view` VALUES (1769, 580, '2021-08-01', 2, 'web');
INSERT INTO `product_view` VALUES (1770, 589, '2021-08-01', 1, 'mobile');
INSERT INTO `product_view` VALUES (1771, 581, '2021-08-01', 1, 'mobile');
INSERT INTO `product_view` VALUES (1772, 577, '2021-08-01', 1, 'mobile');
INSERT INTO `product_view` VALUES (1773, 591, '2021-08-02', 4, 'mobile');
INSERT INTO `product_view` VALUES (1774, 589, '2021-08-02', 1, 'web');
INSERT INTO `product_view` VALUES (1775, 580, '2021-08-02', 3, 'mobile');
INSERT INTO `product_view` VALUES (1776, 582, '2021-08-02', 1, 'mobile');
INSERT INTO `product_view` VALUES (1777, 582, '2021-08-02', 3, 'web');
INSERT INTO `product_view` VALUES (1778, 589, '2021-08-02', 1, 'mobile');
INSERT INTO `product_view` VALUES (1779, 579, '2021-08-02', 2, 'mobile');
INSERT INTO `product_view` VALUES (1780, 579, '2021-08-02', 1, 'web');
INSERT INTO `product_view` VALUES (1781, 577, '2021-08-02', 2, 'mobile');
INSERT INTO `product_view` VALUES (1782, 578, '2021-08-02', 1, 'mobile');
INSERT INTO `product_view` VALUES (1783, 571, '2021-08-02', 2, 'web');
INSERT INTO `product_view` VALUES (1784, 584, '2021-08-02', 1, 'web');
INSERT INTO `product_view` VALUES (1785, 588, '2021-08-02', 1, 'web');
INSERT INTO `product_view` VALUES (1786, 581, '2021-08-02', 1, 'mobile');
INSERT INTO `product_view` VALUES (1787, 576, '2021-08-02', 1, 'mobile');
INSERT INTO `product_view` VALUES (1788, 571, '2021-08-02', 1, 'mobile');
INSERT INTO `product_view` VALUES (1789, 584, '2021-08-02', 1, 'mobile');
INSERT INTO `product_view` VALUES (1790, 589, '2021-08-03', 3, 'mobile');
INSERT INTO `product_view` VALUES (1791, 579, '2021-08-03', 6, 'mobile');
INSERT INTO `product_view` VALUES (1792, 591, '2021-08-03', 3, 'mobile');
INSERT INTO `product_view` VALUES (1793, 583, '2021-08-03', 4, 'mobile');
INSERT INTO `product_view` VALUES (1794, 577, '2021-08-03', 2, 'mobile');
INSERT INTO `product_view` VALUES (1795, 576, '2021-08-03', 2, 'mobile');
INSERT INTO `product_view` VALUES (1796, 581, '2021-08-03', 3, 'mobile');
INSERT INTO `product_view` VALUES (1797, 584, '2021-08-03', 3, 'web');
INSERT INTO `product_view` VALUES (1798, 588, '2021-08-03', 2, 'web');
INSERT INTO `product_view` VALUES (1799, 585, '2021-08-03', 2, 'mobile');
INSERT INTO `product_view` VALUES (1800, 574, '2021-08-03', 2, 'mobile');
INSERT INTO `product_view` VALUES (1801, 575, '2021-08-03', 3, 'mobile');
INSERT INTO `product_view` VALUES (1802, 571, '2021-08-03', 2, 'mobile');
INSERT INTO `product_view` VALUES (1803, 586, '2021-08-03', 2, 'web');
INSERT INTO `product_view` VALUES (1804, 580, '2021-08-03', 1, 'mobile');
INSERT INTO `product_view` VALUES (1805, 578, '2021-08-03', 1, 'web');
INSERT INTO `product_view` VALUES (1806, 591, '2021-08-03', 1, 'web');
INSERT INTO `product_view` VALUES (1807, 582, '2021-08-03', 2, 'web');
INSERT INTO `product_view` VALUES (1808, 589, '2021-08-03', 1, 'web');
INSERT INTO `product_view` VALUES (1809, 571, '2021-08-03', 1, 'web');
INSERT INTO `product_view` VALUES (1810, 581, '2021-08-03', 1, 'web');
INSERT INTO `product_view` VALUES (1811, 590, '2021-08-03', 1, 'web');
INSERT INTO `product_view` VALUES (1812, 585, '2021-08-03', 1, 'web');
INSERT INTO `product_view` VALUES (1813, 576, '2021-08-03', 1, 'web');
INSERT INTO `product_view` VALUES (1814, 591, '2021-08-04', 3, 'web');
INSERT INTO `product_view` VALUES (1815, 591, '2021-08-04', 2, 'mobile');
INSERT INTO `product_view` VALUES (1816, 575, '2021-08-04', 1, 'web');
INSERT INTO `product_view` VALUES (1817, 574, '2021-08-04', 1, 'web');
INSERT INTO `product_view` VALUES (1818, 571, '2021-08-04', 2, 'web');
INSERT INTO `product_view` VALUES (1819, 582, '2021-08-04', 2, 'web');
INSERT INTO `product_view` VALUES (1820, 584, '2021-08-04', 1, 'web');
INSERT INTO `product_view` VALUES (1821, 579, '2021-08-04', 3, 'mobile');
INSERT INTO `product_view` VALUES (1822, 580, '2021-08-04', 1, 'web');
INSERT INTO `product_view` VALUES (1823, 586, '2021-08-04', 1, 'web');
INSERT INTO `product_view` VALUES (1824, 580, '2021-08-04', 1, 'mobile');
INSERT INTO `product_view` VALUES (1825, 576, '2021-08-04', 1, 'web');
INSERT INTO `product_view` VALUES (1826, 574, '2021-08-04', 1, 'mobile');
INSERT INTO `product_view` VALUES (1827, 571, '2021-08-04', 1, 'mobile');
INSERT INTO `product_view` VALUES (1828, 575, '2021-08-04', 1, 'mobile');
INSERT INTO `product_view` VALUES (1829, 583, '2021-08-04', 1, 'mobile');
INSERT INTO `product_view` VALUES (1830, 584, '2021-08-04', 2, 'mobile');
INSERT INTO `product_view` VALUES (1831, 577, '2021-08-04', 1, 'mobile');
INSERT INTO `product_view` VALUES (1832, 581, '2021-08-04', 1, 'mobile');
INSERT INTO `product_view` VALUES (1833, 587, '2021-08-04', 1, 'mobile');
INSERT INTO `product_view` VALUES (1834, 585, '2021-08-04', 1, 'mobile');
INSERT INTO `product_view` VALUES (1835, 587, '2021-08-05', 2, 'mobile');
INSERT INTO `product_view` VALUES (1836, 585, '2021-08-05', 3, 'mobile');
INSERT INTO `product_view` VALUES (1837, 584, '2021-08-05', 2, 'mobile');
INSERT INTO `product_view` VALUES (1838, 586, '2021-08-05', 1, 'mobile');
INSERT INTO `product_view` VALUES (1839, 590, '2021-08-05', 1, 'mobile');
INSERT INTO `product_view` VALUES (1840, 577, '2021-08-05', 2, 'mobile');
INSERT INTO `product_view` VALUES (1841, 574, '2021-08-05', 1, 'mobile');
INSERT INTO `product_view` VALUES (1842, 579, '2021-08-05', 3, 'mobile');
INSERT INTO `product_view` VALUES (1843, 583, '2021-08-05', 2, 'mobile');
INSERT INTO `product_view` VALUES (1844, 583, '2021-08-05', 2, 'web');
INSERT INTO `product_view` VALUES (1845, 591, '2021-08-05', 2, 'web');
INSERT INTO `product_view` VALUES (1846, 580, '2021-08-05', 1, 'mobile');
INSERT INTO `product_view` VALUES (1847, 581, '2021-08-05', 2, 'mobile');
INSERT INTO `product_view` VALUES (1848, 578, '2021-08-05', 1, 'mobile');
INSERT INTO `product_view` VALUES (1849, 576, '2021-08-05', 1, 'mobile');
INSERT INTO `product_view` VALUES (1850, 591, '2021-08-05', 1, 'mobile');
INSERT INTO `product_view` VALUES (1851, 582, '2021-08-05', 2, 'web');
INSERT INTO `product_view` VALUES (1852, 578, '2021-08-06', 1, 'mobile');
INSERT INTO `product_view` VALUES (1853, 583, '2021-08-06', 2, 'web');
INSERT INTO `product_view` VALUES (1854, 579, '2021-08-06', 2, 'web');
INSERT INTO `product_view` VALUES (1855, 571, '2021-08-06', 1, 'mobile');
INSERT INTO `product_view` VALUES (1856, 575, '2021-08-06', 1, 'web');
INSERT INTO `product_view` VALUES (1857, 571, '2021-08-06', 1, 'web');
INSERT INTO `product_view` VALUES (1858, 574, '2021-08-06', 1, 'web');
INSERT INTO `product_view` VALUES (1859, 579, '2021-08-06', 4, 'mobile');
INSERT INTO `product_view` VALUES (1860, 586, '2021-08-06', 1, 'mobile');
INSERT INTO `product_view` VALUES (1861, 582, '2021-08-06', 1, 'web');
INSERT INTO `product_view` VALUES (1862, 577, '2021-08-06', 1, 'mobile');
INSERT INTO `product_view` VALUES (1863, 583, '2021-08-06', 1, 'mobile');
INSERT INTO `product_view` VALUES (1864, 583, '2021-08-07', 2, 'mobile');
INSERT INTO `product_view` VALUES (1865, 580, '2021-08-07', 1, 'web');
INSERT INTO `product_view` VALUES (1866, 571, '2021-08-07', 4, 'mobile');
INSERT INTO `product_view` VALUES (1867, 584, '2021-08-07', 2, 'mobile');
INSERT INTO `product_view` VALUES (1868, 582, '2021-08-07', 2, 'mobile');
INSERT INTO `product_view` VALUES (1869, 582, '2021-08-07', 1, 'web');
INSERT INTO `product_view` VALUES (1870, 579, '2021-08-07', 5, 'mobile');
INSERT INTO `product_view` VALUES (1871, 575, '2021-08-07', 2, 'mobile');
INSERT INTO `product_view` VALUES (1872, 574, '2021-08-07', 1, 'mobile');
INSERT INTO `product_view` VALUES (1873, 581, '2021-08-07', 1, 'mobile');
INSERT INTO `product_view` VALUES (1874, 585, '2021-08-07', 1, 'mobile');
INSERT INTO `product_view` VALUES (1875, 587, '2021-08-07', 1, 'mobile');
INSERT INTO `product_view` VALUES (1876, 580, '2021-08-07', 2, 'mobile');
INSERT INTO `product_view` VALUES (1877, 577, '2021-08-08', 1, 'mobile');
INSERT INTO `product_view` VALUES (1878, 576, '2021-08-08', 3, 'mobile');
INSERT INTO `product_view` VALUES (1879, 580, '2021-08-08', 1, 'mobile');
INSERT INTO `product_view` VALUES (1880, 571, '2021-08-08', 2, 'mobile');
INSERT INTO `product_view` VALUES (1881, 591, '2021-08-08', 3, 'web');
INSERT INTO `product_view` VALUES (1882, 579, '2021-08-08', 1, 'web');
INSERT INTO `product_view` VALUES (1883, 575, '2021-08-08', 1, 'mobile');
INSERT INTO `product_view` VALUES (1884, 583, '2021-08-08', 2, 'web');
INSERT INTO `product_view` VALUES (1885, 579, '2021-08-08', 5, 'mobile');
INSERT INTO `product_view` VALUES (1886, 583, '2021-08-08', 2, 'mobile');
INSERT INTO `product_view` VALUES (1887, 581, '2021-08-08', 1, 'mobile');
INSERT INTO `product_view` VALUES (1888, 591, '2021-08-08', 2, 'mobile');
INSERT INTO `product_view` VALUES (1889, 582, '2021-08-08', 1, 'mobile');
INSERT INTO `product_view` VALUES (1890, 578, '2021-08-08', 2, 'mobile');
INSERT INTO `product_view` VALUES (1891, 579, '2021-08-09', 5, 'mobile');
INSERT INTO `product_view` VALUES (1892, 576, '2021-08-09', 2, 'mobile');
INSERT INTO `product_view` VALUES (1893, 587, '2021-08-09', 2, 'mobile');
INSERT INTO `product_view` VALUES (1894, 571, '2021-08-09', 2, 'mobile');
INSERT INTO `product_view` VALUES (1895, 591, '2021-08-09', 3, 'mobile');
INSERT INTO `product_view` VALUES (1896, 583, '2021-08-09', 4, 'mobile');
INSERT INTO `product_view` VALUES (1897, 580, '2021-08-09', 4, 'mobile');
INSERT INTO `product_view` VALUES (1898, 591, '2021-08-09', 4, 'web');
INSERT INTO `product_view` VALUES (1899, 578, '2021-08-09', 2, 'web');
INSERT INTO `product_view` VALUES (1900, 574, '2021-08-09', 1, 'mobile');
INSERT INTO `product_view` VALUES (1901, 576, '2021-08-09', 2, 'web');
INSERT INTO `product_view` VALUES (1902, 581, '2021-08-09', 2, 'web');
INSERT INTO `product_view` VALUES (1903, 579, '2021-08-09', 1, 'web');
INSERT INTO `product_view` VALUES (1904, 581, '2021-08-09', 4, 'mobile');
INSERT INTO `product_view` VALUES (1905, 584, '2021-08-09', 1, 'mobile');
INSERT INTO `product_view` VALUES (1906, 586, '2021-08-09', 1, 'mobile');
INSERT INTO `product_view` VALUES (1907, 578, '2021-08-09', 1, 'mobile');
INSERT INTO `product_view` VALUES (1908, 584, '2021-08-09', 1, 'web');
INSERT INTO `product_view` VALUES (1909, 587, '2021-08-09', 1, 'web');
INSERT INTO `product_view` VALUES (1910, 586, '2021-08-09', 1, 'web');
INSERT INTO `product_view` VALUES (1911, 577, '2021-08-09', 2, 'web');
INSERT INTO `product_view` VALUES (1912, 582, '2021-08-09', 1, 'web');
INSERT INTO `product_view` VALUES (1913, 571, '2021-08-09', 1, 'web');
INSERT INTO `product_view` VALUES (1914, 580, '2021-08-09', 1, 'web');
INSERT INTO `product_view` VALUES (1915, 583, '2021-08-09', 1, 'web');
INSERT INTO `product_view` VALUES (1916, 571, '2021-08-10', 11, 'mobile');
INSERT INTO `product_view` VALUES (1917, 577, '2021-08-10', 4, 'mobile');
INSERT INTO `product_view` VALUES (1918, 579, '2021-08-10', 10, 'mobile');
INSERT INTO `product_view` VALUES (1919, 574, '2021-08-10', 5, 'mobile');
INSERT INTO `product_view` VALUES (1920, 583, '2021-08-10', 6, 'mobile');
INSERT INTO `product_view` VALUES (1921, 581, '2021-08-10', 2, 'web');
INSERT INTO `product_view` VALUES (1922, 580, '2021-08-10', 1, 'web');
INSERT INTO `product_view` VALUES (1923, 583, '2021-08-10', 1, 'web');
INSERT INTO `product_view` VALUES (1924, 580, '2021-08-10', 6, 'mobile');
INSERT INTO `product_view` VALUES (1925, 581, '2021-08-10', 5, 'mobile');
INSERT INTO `product_view` VALUES (1926, 590, '2021-08-10', 2, 'mobile');
INSERT INTO `product_view` VALUES (1927, 575, '2021-08-10', 2, 'mobile');
INSERT INTO `product_view` VALUES (1928, 591, '2021-08-10', 2, 'mobile');
INSERT INTO `product_view` VALUES (1929, 578, '2021-08-10', 8, 'mobile');
INSERT INTO `product_view` VALUES (1930, 582, '2021-08-10', 3, 'mobile');
INSERT INTO `product_view` VALUES (1931, 576, '2021-08-10', 1, 'mobile');
INSERT INTO `product_view` VALUES (1932, 591, '2021-08-10', 1, 'web');
INSERT INTO `product_view` VALUES (1933, 592, '2021-08-10', 1, 'web');
INSERT INTO `product_view` VALUES (1934, 592, '2021-08-10', 3, 'mobile');
INSERT INTO `product_view` VALUES (1935, 574, '2021-08-10', 1, 'web');
INSERT INTO `product_view` VALUES (1936, 579, '2021-08-10', 1, 'web');
INSERT INTO `product_view` VALUES (1937, 582, '2021-08-10', 1, 'web');
INSERT INTO `product_view` VALUES (1938, 578, '2021-08-10', 1, 'web');
INSERT INTO `product_view` VALUES (1939, 577, '2021-08-11', 3, 'web');
INSERT INTO `product_view` VALUES (1940, 577, '2021-08-11', 5, 'mobile');
INSERT INTO `product_view` VALUES (1941, 583, '2021-08-11', 1, 'web');
INSERT INTO `product_view` VALUES (1942, 578, '2021-08-11', 2, 'mobile');
INSERT INTO `product_view` VALUES (1943, 591, '2021-08-11', 4, 'mobile');
INSERT INTO `product_view` VALUES (1944, 579, '2021-08-11', 8, 'mobile');
INSERT INTO `product_view` VALUES (1945, 591, '2021-08-11', 2, 'web');
INSERT INTO `product_view` VALUES (1946, 578, '2021-08-11', 2, 'web');
INSERT INTO `product_view` VALUES (1947, 590, '2021-08-11', 1, 'mobile');
INSERT INTO `product_view` VALUES (1948, 571, '2021-08-11', 3, 'mobile');
INSERT INTO `product_view` VALUES (1949, 583, '2021-08-11', 4, 'mobile');
INSERT INTO `product_view` VALUES (1950, 575, '2021-08-11', 1, 'mobile');
INSERT INTO `product_view` VALUES (1951, 586, '2021-08-11', 3, 'mobile');
INSERT INTO `product_view` VALUES (1952, 579, '2021-08-11', 1, 'web');
INSERT INTO `product_view` VALUES (1953, 590, '2021-08-11', 1, 'web');
INSERT INTO `product_view` VALUES (1954, 586, '2021-08-11', 1, 'web');
INSERT INTO `product_view` VALUES (1955, 592, '2021-08-11', 2, 'mobile');
INSERT INTO `product_view` VALUES (1956, 580, '2021-08-11', 2, 'mobile');
INSERT INTO `product_view` VALUES (1957, 581, '2021-08-11', 3, 'mobile');
INSERT INTO `product_view` VALUES (1958, 576, '2021-08-11', 1, 'mobile');
INSERT INTO `product_view` VALUES (1959, 582, '2021-08-11', 1, 'web');
INSERT INTO `product_view` VALUES (1960, 576, '2021-08-11', 1, 'web');
INSERT INTO `product_view` VALUES (1961, 586, '2021-08-12', 2, 'mobile');
INSERT INTO `product_view` VALUES (1962, 577, '2021-08-12', 5, 'mobile');
INSERT INTO `product_view` VALUES (1963, 578, '2021-08-12', 6, 'mobile');
INSERT INTO `product_view` VALUES (1964, 584, '2021-08-12', 1, 'mobile');
INSERT INTO `product_view` VALUES (1965, 591, '2021-08-12', 2, 'mobile');
INSERT INTO `product_view` VALUES (1966, 574, '2021-08-12', 2, 'mobile');
INSERT INTO `product_view` VALUES (1967, 571, '2021-08-12', 3, 'mobile');
INSERT INTO `product_view` VALUES (1968, 591, '2021-08-12', 2, 'web');
INSERT INTO `product_view` VALUES (1969, 583, '2021-08-12', 1, 'web');
INSERT INTO `product_view` VALUES (1970, 580, '2021-08-12', 2, 'mobile');
INSERT INTO `product_view` VALUES (1971, 581, '2021-08-12', 2, 'mobile');
INSERT INTO `product_view` VALUES (1972, 582, '2021-08-12', 1, 'mobile');
INSERT INTO `product_view` VALUES (1973, 579, '2021-08-12', 3, 'mobile');
INSERT INTO `product_view` VALUES (1974, 583, '2021-08-12', 2, 'mobile');
INSERT INTO `product_view` VALUES (1975, 592, '2021-08-12', 2, 'mobile');
INSERT INTO `product_view` VALUES (1976, 576, '2021-08-12', 1, 'mobile');
INSERT INTO `product_view` VALUES (1977, 590, '2021-08-12', 1, 'mobile');
INSERT INTO `product_view` VALUES (1978, 576, '2021-08-12', 1, 'web');
INSERT INTO `product_view` VALUES (1979, 586, '2021-08-12', 1, 'web');
INSERT INTO `product_view` VALUES (1980, 578, '2021-08-13', 3, 'mobile');
INSERT INTO `product_view` VALUES (1981, 577, '2021-08-13', 1, 'web');
INSERT INTO `product_view` VALUES (1982, 583, '2021-08-13', 4, 'mobile');
INSERT INTO `product_view` VALUES (1983, 575, '2021-08-13', 4, 'mobile');
INSERT INTO `product_view` VALUES (1984, 581, '2021-08-13', 4, 'mobile');
INSERT INTO `product_view` VALUES (1985, 591, '2021-08-13', 6, 'mobile');
INSERT INTO `product_view` VALUES (1986, 590, '2021-08-13', 2, 'mobile');
INSERT INTO `product_view` VALUES (1987, 576, '2021-08-13', 1, 'web');
INSERT INTO `product_view` VALUES (1988, 580, '2021-08-13', 5, 'mobile');
INSERT INTO `product_view` VALUES (1989, 578, '2021-08-13', 2, 'web');
INSERT INTO `product_view` VALUES (1990, 577, '2021-08-13', 1, 'mobile');
INSERT INTO `product_view` VALUES (1991, 581, '2021-08-13', 1, 'web');
INSERT INTO `product_view` VALUES (1992, 571, '2021-08-13', 7, 'mobile');
INSERT INTO `product_view` VALUES (1993, 585, '2021-08-13', 1, 'mobile');
INSERT INTO `product_view` VALUES (1994, 587, '2021-08-13', 1, 'mobile');
INSERT INTO `product_view` VALUES (1995, 591, '2021-08-13', 1, 'web');
INSERT INTO `product_view` VALUES (1996, 582, '2021-08-13', 5, 'mobile');
INSERT INTO `product_view` VALUES (1997, 579, '2021-08-13', 7, 'mobile');
INSERT INTO `product_view` VALUES (1998, 586, '2021-08-13', 2, 'mobile');
INSERT INTO `product_view` VALUES (1999, 576, '2021-08-13', 2, 'mobile');
INSERT INTO `product_view` VALUES (2000, 592, '2021-08-13', 3, 'mobile');
INSERT INTO `product_view` VALUES (2001, 574, '2021-08-13', 2, 'mobile');
INSERT INTO `product_view` VALUES (2002, 584, '2021-08-13', 1, 'mobile');
INSERT INTO `product_view` VALUES (2003, 583, '2021-08-13', 1, 'web');
INSERT INTO `product_view` VALUES (2004, 571, '2021-08-13', 1, 'web');
INSERT INTO `product_view` VALUES (2005, 591, '2021-08-14', 2, 'web');
INSERT INTO `product_view` VALUES (2006, 580, '2021-08-14', 4, 'mobile');
INSERT INTO `product_view` VALUES (2007, 576, '2021-08-14', 1, 'web');
INSERT INTO `product_view` VALUES (2008, 581, '2021-08-14', 6, 'mobile');
INSERT INTO `product_view` VALUES (2009, 586, '2021-08-14', 1, 'mobile');
INSERT INTO `product_view` VALUES (2010, 578, '2021-08-14', 6, 'mobile');
INSERT INTO `product_view` VALUES (2011, 587, '2021-08-14', 1, 'mobile');
INSERT INTO `product_view` VALUES (2012, 577, '2021-08-14', 4, 'mobile');
INSERT INTO `product_view` VALUES (2013, 584, '2021-08-14', 1, 'mobile');
INSERT INTO `product_view` VALUES (2014, 576, '2021-08-14', 3, 'mobile');
INSERT INTO `product_view` VALUES (2015, 578, '2021-08-14', 1, 'web');
INSERT INTO `product_view` VALUES (2016, 579, '2021-08-14', 1, 'web');
INSERT INTO `product_view` VALUES (2017, 571, '2021-08-14', 3, 'mobile');
INSERT INTO `product_view` VALUES (2018, 582, '2021-08-14', 1, 'mobile');
INSERT INTO `product_view` VALUES (2019, 583, '2021-08-14', 2, 'web');
INSERT INTO `product_view` VALUES (2020, 590, '2021-08-14', 1, 'mobile');
INSERT INTO `product_view` VALUES (2021, 583, '2021-08-14', 5, 'mobile');
INSERT INTO `product_view` VALUES (2022, 591, '2021-08-14', 2, 'mobile');
INSERT INTO `product_view` VALUES (2023, 579, '2021-08-14', 3, 'mobile');
INSERT INTO `product_view` VALUES (2024, 574, '2021-08-14', 1, 'mobile');
INSERT INTO `product_view` VALUES (2025, 575, '2021-08-14', 1, 'mobile');
INSERT INTO `product_view` VALUES (2026, 590, '2021-08-14', 1, 'web');
INSERT INTO `product_view` VALUES (2027, 574, '2021-08-14', 1, 'web');
INSERT INTO `product_view` VALUES (2028, 571, '2021-08-14', 1, 'web');
INSERT INTO `product_view` VALUES (2029, 583, '2021-08-15', 2, 'web');
INSERT INTO `product_view` VALUES (2030, 581, '2021-08-15', 2, 'mobile');
INSERT INTO `product_view` VALUES (2031, 585, '2021-08-15', 3, 'mobile');
INSERT INTO `product_view` VALUES (2032, 586, '2021-08-15', 1, 'mobile');
INSERT INTO `product_view` VALUES (2033, 591, '2021-08-15', 1, 'mobile');
INSERT INTO `product_view` VALUES (2034, 592, '2021-08-15', 1, 'mobile');
INSERT INTO `product_view` VALUES (2035, 579, '2021-08-15', 8, 'mobile');
INSERT INTO `product_view` VALUES (2036, 578, '2021-08-15', 5, 'mobile');
INSERT INTO `product_view` VALUES (2037, 577, '2021-08-15', 2, 'mobile');
INSERT INTO `product_view` VALUES (2038, 582, '2021-08-15', 1, 'mobile');
INSERT INTO `product_view` VALUES (2039, 580, '2021-08-15', 4, 'mobile');
INSERT INTO `product_view` VALUES (2040, 584, '2021-08-15', 1, 'mobile');
INSERT INTO `product_view` VALUES (2041, 591, '2021-08-15', 2, 'web');
INSERT INTO `product_view` VALUES (2042, 571, '2021-08-15', 1, 'mobile');
INSERT INTO `product_view` VALUES (2043, 575, '2021-08-15', 1, 'mobile');
INSERT INTO `product_view` VALUES (2044, 583, '2021-08-15', 2, 'mobile');
INSERT INTO `product_view` VALUES (2045, 581, '2021-08-15', 2, 'web');
INSERT INTO `product_view` VALUES (2046, 592, '2021-08-15', 2, 'web');
INSERT INTO `product_view` VALUES (2047, 580, '2021-08-15', 1, 'web');
INSERT INTO `product_view` VALUES (2048, 590, '2021-08-15', 1, 'mobile');
INSERT INTO `product_view` VALUES (2049, 576, '2021-08-15', 2, 'mobile');
INSERT INTO `product_view` VALUES (2050, 571, '2021-08-16', 2, 'mobile');
INSERT INTO `product_view` VALUES (2051, 579, '2021-08-16', 5, 'mobile');
INSERT INTO `product_view` VALUES (2052, 583, '2021-08-16', 1, 'web');
INSERT INTO `product_view` VALUES (2053, 580, '2021-08-16', 2, 'mobile');
INSERT INTO `product_view` VALUES (2054, 585, '2021-08-16', 1, 'mobile');
INSERT INTO `product_view` VALUES (2055, 575, '2021-08-16', 2, 'mobile');
INSERT INTO `product_view` VALUES (2056, 578, '2021-08-16', 3, 'mobile');
INSERT INTO `product_view` VALUES (2057, 581, '2021-08-16', 1, 'mobile');
INSERT INTO `product_view` VALUES (2058, 583, '2021-08-16', 2, 'mobile');
INSERT INTO `product_view` VALUES (2059, 577, '2021-08-16', 1, 'web');
INSERT INTO `product_view` VALUES (2060, 577, '2021-08-16', 4, 'mobile');
INSERT INTO `product_view` VALUES (2061, 582, '2021-08-16', 2, 'mobile');
INSERT INTO `product_view` VALUES (2062, 587, '2021-08-16', 1, 'web');
INSERT INTO `product_view` VALUES (2063, 584, '2021-08-16', 3, 'mobile');
INSERT INTO `product_view` VALUES (2064, 574, '2021-08-16', 1, 'web');
INSERT INTO `product_view` VALUES (2065, 586, '2021-08-16', 1, 'mobile');
INSERT INTO `product_view` VALUES (2066, 588, '2021-08-16', 1, 'mobile');
INSERT INTO `product_view` VALUES (2067, 587, '2021-08-16', 1, 'mobile');
INSERT INTO `product_view` VALUES (2068, 576, '2021-08-16', 1, 'mobile');
INSERT INTO `product_view` VALUES (2069, 592, '2021-08-16', 1, 'mobile');
INSERT INTO `product_view` VALUES (2070, 574, '2021-08-16', 2, 'mobile');
INSERT INTO `product_view` VALUES (2071, 591, '2021-08-16', 1, 'mobile');
INSERT INTO `product_view` VALUES (2072, 579, '2021-08-17', 2, 'mobile');
INSERT INTO `product_view` VALUES (2073, 586, '2021-08-17', 1, 'web');
INSERT INTO `product_view` VALUES (2074, 578, '2021-08-17', 6, 'mobile');
INSERT INTO `product_view` VALUES (2075, 571, '2021-08-17', 1, 'mobile');
INSERT INTO `product_view` VALUES (2076, 585, '2021-08-17', 1, 'mobile');
INSERT INTO `product_view` VALUES (2077, 589, '2021-08-17', 1, 'mobile');
INSERT INTO `product_view` VALUES (2078, 590, '2021-08-17', 2, 'mobile');
INSERT INTO `product_view` VALUES (2079, 576, '2021-08-17', 4, 'mobile');
INSERT INTO `product_view` VALUES (2080, 582, '2021-08-17', 2, 'mobile');
INSERT INTO `product_view` VALUES (2081, 575, '2021-08-17', 3, 'mobile');
INSERT INTO `product_view` VALUES (2082, 574, '2021-08-17', 1, 'web');
INSERT INTO `product_view` VALUES (2083, 591, '2021-08-17', 2, 'mobile');
INSERT INTO `product_view` VALUES (2084, 588, '2021-08-17', 1, 'mobile');
INSERT INTO `product_view` VALUES (2085, 577, '2021-08-17', 3, 'mobile');
INSERT INTO `product_view` VALUES (2086, 579, '2021-08-17', 2, 'web');
INSERT INTO `product_view` VALUES (2087, 583, '2021-08-17', 2, 'web');
INSERT INTO `product_view` VALUES (2088, 576, '2021-08-17', 1, 'web');
INSERT INTO `product_view` VALUES (2089, 591, '2021-08-17', 1, 'web');
INSERT INTO `product_view` VALUES (2090, 580, '2021-08-17', 1, 'web');
INSERT INTO `product_view` VALUES (2091, 581, '2021-08-17', 1, 'mobile');
INSERT INTO `product_view` VALUES (2092, 571, '2021-08-17', 1, 'web');
INSERT INTO `product_view` VALUES (2093, 591, '2021-08-18', 4, 'mobile');
INSERT INTO `product_view` VALUES (2094, 576, '2021-08-18', 1, 'mobile');
INSERT INTO `product_view` VALUES (2095, 581, '2021-08-18', 1, 'mobile');
INSERT INTO `product_view` VALUES (2096, 577, '2021-08-18', 1, 'web');
INSERT INTO `product_view` VALUES (2097, 579, '2021-08-18', 8, 'mobile');
INSERT INTO `product_view` VALUES (2098, 583, '2021-08-18', 1, 'mobile');
INSERT INTO `product_view` VALUES (2099, 582, '2021-08-18', 1, 'mobile');
INSERT INTO `product_view` VALUES (2100, 578, '2021-08-18', 3, 'mobile');
INSERT INTO `product_view` VALUES (2101, 583, '2021-08-18', 1, 'web');
INSERT INTO `product_view` VALUES (2102, 584, '2021-08-18', 1, 'mobile');
INSERT INTO `product_view` VALUES (2103, 585, '2021-08-18', 1, 'mobile');
INSERT INTO `product_view` VALUES (2104, 587, '2021-08-18', 1, 'mobile');
INSERT INTO `product_view` VALUES (2105, 586, '2021-08-18', 1, 'mobile');
INSERT INTO `product_view` VALUES (2106, 571, '2021-08-18', 1, 'web');
INSERT INTO `product_view` VALUES (2107, 590, '2021-08-18', 3, 'mobile');
INSERT INTO `product_view` VALUES (2108, 592, '2021-08-18', 3, 'mobile');
INSERT INTO `product_view` VALUES (2109, 575, '2021-08-18', 3, 'mobile');
INSERT INTO `product_view` VALUES (2110, 571, '2021-08-18', 2, 'mobile');
INSERT INTO `product_view` VALUES (2111, 577, '2021-08-18', 1, 'mobile');
INSERT INTO `product_view` VALUES (2112, 580, '2021-08-18', 1, 'mobile');
INSERT INTO `product_view` VALUES (2113, 591, '2021-08-18', 2, 'web');
INSERT INTO `product_view` VALUES (2114, 582, '2021-08-19', 1, 'mobile');
INSERT INTO `product_view` VALUES (2115, 579, '2021-08-19', 3, 'mobile');
INSERT INTO `product_view` VALUES (2116, 582, '2021-08-19', 1, 'web');
INSERT INTO `product_view` VALUES (2117, 584, '2021-08-19', 1, 'mobile');
INSERT INTO `product_view` VALUES (2118, 577, '2021-08-19', 5, 'mobile');
INSERT INTO `product_view` VALUES (2119, 591, '2021-08-19', 2, 'web');
INSERT INTO `product_view` VALUES (2120, 590, '2021-08-19', 1, 'web');
INSERT INTO `product_view` VALUES (2121, 591, '2021-08-19', 4, 'mobile');
INSERT INTO `product_view` VALUES (2122, 581, '2021-08-19', 2, 'mobile');
INSERT INTO `product_view` VALUES (2123, 592, '2021-08-19', 2, 'mobile');
INSERT INTO `product_view` VALUES (2124, 576, '2021-08-19', 5, 'mobile');
INSERT INTO `product_view` VALUES (2125, 581, '2021-08-19', 1, 'web');
INSERT INTO `product_view` VALUES (2126, 592, '2021-08-19', 1, 'web');
INSERT INTO `product_view` VALUES (2127, 571, '2021-08-19', 2, 'mobile');
INSERT INTO `product_view` VALUES (2128, 578, '2021-08-19', 1, 'mobile');
INSERT INTO `product_view` VALUES (2129, 574, '2021-08-19', 1, 'mobile');
INSERT INTO `product_view` VALUES (2130, 590, '2021-08-19', 1, 'mobile');
INSERT INTO `product_view` VALUES (2131, 580, '2021-08-19', 1, 'mobile');
INSERT INTO `product_view` VALUES (2132, 577, '2021-08-20', 4, 'mobile');
INSERT INTO `product_view` VALUES (2133, 583, '2021-08-20', 1, 'web');
INSERT INTO `product_view` VALUES (2134, 579, '2021-08-20', 2, 'web');
INSERT INTO `product_view` VALUES (2135, 590, '2021-08-20', 2, 'web');
INSERT INTO `product_view` VALUES (2136, 582, '2021-08-20', 5, 'mobile');
INSERT INTO `product_view` VALUES (2137, 579, '2021-08-20', 3, 'mobile');
INSERT INTO `product_view` VALUES (2138, 578, '2021-08-20', 1, 'mobile');
INSERT INTO `product_view` VALUES (2139, 591, '2021-08-20', 1, 'mobile');
INSERT INTO `product_view` VALUES (2140, 576, '2021-08-20', 2, 'mobile');
INSERT INTO `product_view` VALUES (2141, 578, '2021-08-20', 3, 'web');
INSERT INTO `product_view` VALUES (2142, 581, '2021-08-20', 2, 'web');
INSERT INTO `product_view` VALUES (2143, 580, '2021-08-20', 1, 'web');
INSERT INTO `product_view` VALUES (2144, 592, '2021-08-20', 1, 'web');
INSERT INTO `product_view` VALUES (2145, 581, '2021-08-20', 2, 'mobile');
INSERT INTO `product_view` VALUES (2146, 591, '2021-08-20', 1, 'web');
INSERT INTO `product_view` VALUES (2147, 580, '2021-08-20', 1, 'mobile');
INSERT INTO `product_view` VALUES (2148, 583, '2021-08-20', 1, 'mobile');
INSERT INTO `product_view` VALUES (2149, 590, '2021-08-20', 1, 'mobile');
INSERT INTO `product_view` VALUES (2150, 574, '2021-08-20', 1, 'mobile');
INSERT INTO `product_view` VALUES (2151, 571, '2021-08-20', 1, 'mobile');
INSERT INTO `product_view` VALUES (2152, 592, '2021-08-21', 3, 'mobile');
INSERT INTO `product_view` VALUES (2153, 580, '2021-08-21', 4, 'mobile');
INSERT INTO `product_view` VALUES (2154, 582, '2021-08-21', 3, 'mobile');
INSERT INTO `product_view` VALUES (2155, 584, '2021-08-21', 2, 'mobile');
INSERT INTO `product_view` VALUES (2156, 582, '2021-08-21', 1, 'web');
INSERT INTO `product_view` VALUES (2157, 577, '2021-08-21', 5, 'mobile');
INSERT INTO `product_view` VALUES (2158, 583, '2021-08-21', 1, 'web');
INSERT INTO `product_view` VALUES (2159, 591, '2021-08-21', 2, 'mobile');
INSERT INTO `product_view` VALUES (2160, 591, '2021-08-21', 1, 'web');
INSERT INTO `product_view` VALUES (2161, 581, '2021-08-21', 1, 'web');
INSERT INTO `product_view` VALUES (2162, 579, '2021-08-21', 4, 'mobile');
INSERT INTO `product_view` VALUES (2163, 577, '2021-08-21', 1, 'web');
INSERT INTO `product_view` VALUES (2164, 575, '2021-08-21', 2, 'mobile');
INSERT INTO `product_view` VALUES (2165, 574, '2021-08-21', 2, 'mobile');
INSERT INTO `product_view` VALUES (2166, 571, '2021-08-21', 4, 'mobile');
INSERT INTO `product_view` VALUES (2167, 583, '2021-08-21', 2, 'mobile');
INSERT INTO `product_view` VALUES (2168, 578, '2021-08-21', 6, 'mobile');
INSERT INTO `product_view` VALUES (2169, 581, '2021-08-21', 2, 'mobile');
INSERT INTO `product_view` VALUES (2170, 580, '2021-08-21', 1, 'web');
INSERT INTO `product_view` VALUES (2171, 586, '2021-08-21', 2, 'mobile');
INSERT INTO `product_view` VALUES (2172, 576, '2021-08-21', 2, 'mobile');
INSERT INTO `product_view` VALUES (2173, 590, '2021-08-21', 1, 'mobile');
INSERT INTO `product_view` VALUES (2174, 587, '2021-08-21', 3, 'mobile');
INSERT INTO `product_view` VALUES (2175, 585, '2021-08-21', 3, 'mobile');
INSERT INTO `product_view` VALUES (2176, 588, '2021-08-21', 2, 'mobile');
INSERT INTO `product_view` VALUES (2177, 589, '2021-08-21', 1, 'mobile');
INSERT INTO `product_view` VALUES (2178, 577, '2021-08-22', 7, 'mobile');
INSERT INTO `product_view` VALUES (2179, 571, '2021-08-22', 3, 'mobile');
INSERT INTO `product_view` VALUES (2180, 579, '2021-08-22', 2, 'mobile');
INSERT INTO `product_view` VALUES (2181, 587, '2021-08-22', 2, 'mobile');
INSERT INTO `product_view` VALUES (2182, 576, '2021-08-22', 3, 'mobile');
INSERT INTO `product_view` VALUES (2183, 578, '2021-08-22', 3, 'mobile');
INSERT INTO `product_view` VALUES (2184, 580, '2021-08-22', 2, 'mobile');
INSERT INTO `product_view` VALUES (2185, 591, '2021-08-22', 3, 'mobile');
INSERT INTO `product_view` VALUES (2186, 574, '2021-08-22', 2, 'mobile');
INSERT INTO `product_view` VALUES (2187, 581, '2021-08-22', 2, 'mobile');
INSERT INTO `product_view` VALUES (2188, 583, '2021-08-22', 1, 'mobile');
INSERT INTO `product_view` VALUES (2189, 585, '2021-08-22', 2, 'mobile');
INSERT INTO `product_view` VALUES (2190, 586, '2021-08-22', 1, 'mobile');
INSERT INTO `product_view` VALUES (2191, 582, '2021-08-22', 1, 'web');
INSERT INTO `product_view` VALUES (2192, 575, '2021-08-22', 1, 'mobile');
INSERT INTO `product_view` VALUES (2193, 583, '2021-08-22', 1, 'web');
INSERT INTO `product_view` VALUES (2194, 589, '2021-08-23', 2, 'mobile');
INSERT INTO `product_view` VALUES (2195, 578, '2021-08-23', 6, 'mobile');
INSERT INTO `product_view` VALUES (2196, 581, '2021-08-23', 6, 'mobile');
INSERT INTO `product_view` VALUES (2197, 592, '2021-08-23', 5, 'mobile');
INSERT INTO `product_view` VALUES (2198, 591, '2021-08-23', 3, 'mobile');
INSERT INTO `product_view` VALUES (2199, 574, '2021-08-23', 1, 'web');
INSERT INTO `product_view` VALUES (2200, 575, '2021-08-23', 4, 'mobile');
INSERT INTO `product_view` VALUES (2201, 579, '2021-08-23', 4, 'mobile');
INSERT INTO `product_view` VALUES (2202, 577, '2021-08-23', 7, 'mobile');
INSERT INTO `product_view` VALUES (2203, 580, '2021-08-23', 1, 'web');
INSERT INTO `product_view` VALUES (2204, 582, '2021-08-23', 4, 'mobile');
INSERT INTO `product_view` VALUES (2205, 571, '2021-08-23', 3, 'mobile');
INSERT INTO `product_view` VALUES (2206, 583, '2021-08-23', 3, 'mobile');
INSERT INTO `product_view` VALUES (2207, 584, '2021-08-23', 2, 'mobile');
INSERT INTO `product_view` VALUES (2208, 576, '2021-08-23', 4, 'mobile');
INSERT INTO `product_view` VALUES (2209, 587, '2021-08-23', 1, 'mobile');
INSERT INTO `product_view` VALUES (2210, 585, '2021-08-23', 1, 'mobile');
INSERT INTO `product_view` VALUES (2211, 588, '2021-08-23', 1, 'mobile');
INSERT INTO `product_view` VALUES (2212, 574, '2021-08-23', 2, 'mobile');
INSERT INTO `product_view` VALUES (2213, 580, '2021-08-23', 2, 'mobile');
INSERT INTO `product_view` VALUES (2214, 586, '2021-08-23', 1, 'mobile');
INSERT INTO `product_view` VALUES (2215, 590, '2021-08-23', 1, 'mobile');
INSERT INTO `product_view` VALUES (2216, 577, '2021-08-24', 2, 'mobile');
INSERT INTO `product_view` VALUES (2217, 579, '2021-08-24', 8, 'mobile');
INSERT INTO `product_view` VALUES (2218, 582, '2021-08-24', 2, 'mobile');
INSERT INTO `product_view` VALUES (2219, 586, '2021-08-24', 2, 'mobile');
INSERT INTO `product_view` VALUES (2220, 583, '2021-08-24', 4, 'mobile');
INSERT INTO `product_view` VALUES (2221, 585, '2021-08-24', 2, 'mobile');
INSERT INTO `product_view` VALUES (2222, 581, '2021-08-24', 4, 'mobile');
INSERT INTO `product_view` VALUES (2223, 578, '2021-08-24', 4, 'mobile');
INSERT INTO `product_view` VALUES (2224, 583, '2021-08-24', 1, 'web');
INSERT INTO `product_view` VALUES (2225, 579, '2021-08-24', 1, 'web');
INSERT INTO `product_view` VALUES (2226, 590, '2021-08-24', 1, 'web');
INSERT INTO `product_view` VALUES (2227, 580, '2021-08-24', 2, 'mobile');
INSERT INTO `product_view` VALUES (2228, 587, '2021-08-24', 1, 'web');
INSERT INTO `product_view` VALUES (2229, 587, '2021-08-24', 1, 'mobile');
INSERT INTO `product_view` VALUES (2230, 576, '2021-08-24', 1, 'mobile');
INSERT INTO `product_view` VALUES (2231, 591, '2021-08-24', 1, 'web');
INSERT INTO `product_view` VALUES (2232, 591, '2021-08-24', 1, 'mobile');
INSERT INTO `product_view` VALUES (2233, 571, '2021-08-24', 1, 'mobile');
INSERT INTO `product_view` VALUES (2234, 574, '2021-08-24', 1, 'mobile');
INSERT INTO `product_view` VALUES (2235, 591, '2021-08-25', 10, 'mobile');
INSERT INTO `product_view` VALUES (2236, 584, '2021-08-25', 2, 'mobile');
INSERT INTO `product_view` VALUES (2237, 578, '2021-08-25', 6, 'mobile');
INSERT INTO `product_view` VALUES (2238, 571, '2021-08-25', 7, 'mobile');
INSERT INTO `product_view` VALUES (2239, 590, '2021-08-25', 1, 'mobile');
INSERT INTO `product_view` VALUES (2240, 575, '2021-08-25', 3, 'mobile');
INSERT INTO `product_view` VALUES (2241, 581, '2021-08-25', 4, 'mobile');
INSERT INTO `product_view` VALUES (2242, 580, '2021-08-25', 6, 'mobile');
INSERT INTO `product_view` VALUES (2243, 577, '2021-08-25', 4, 'mobile');
INSERT INTO `product_view` VALUES (2244, 582, '2021-08-25', 3, 'mobile');
INSERT INTO `product_view` VALUES (2245, 576, '2021-08-25', 1, 'web');
INSERT INTO `product_view` VALUES (2246, 577, '2021-08-25', 3, 'web');
INSERT INTO `product_view` VALUES (2247, 576, '2021-08-25', 3, 'mobile');
INSERT INTO `product_view` VALUES (2248, 583, '2021-08-25', 3, 'mobile');
INSERT INTO `product_view` VALUES (2249, 579, '2021-08-25', 3, 'mobile');
INSERT INTO `product_view` VALUES (2250, 581, '2021-08-25', 1, 'web');
INSERT INTO `product_view` VALUES (2251, 574, '2021-08-25', 1, 'web');
INSERT INTO `product_view` VALUES (2252, 587, '2021-08-25', 3, 'mobile');
INSERT INTO `product_view` VALUES (2253, 571, '2021-08-25', 1, 'web');
INSERT INTO `product_view` VALUES (2254, 580, '2021-08-25', 1, 'web');
INSERT INTO `product_view` VALUES (2255, 590, '2021-08-25', 1, 'web');
INSERT INTO `product_view` VALUES (2256, 574, '2021-08-25', 2, 'mobile');
INSERT INTO `product_view` VALUES (2257, 592, '2021-08-25', 2, 'mobile');
INSERT INTO `product_view` VALUES (2258, 585, '2021-08-25', 2, 'mobile');
INSERT INTO `product_view` VALUES (2259, 589, '2021-08-25', 1, 'web');
INSERT INTO `product_view` VALUES (2260, 583, '2021-08-26', 1, 'web');
INSERT INTO `product_view` VALUES (2261, 579, '2021-08-26', 6, 'mobile');
INSERT INTO `product_view` VALUES (2262, 571, '2021-08-26', 2, 'mobile');
INSERT INTO `product_view` VALUES (2263, 580, '2021-08-26', 4, 'mobile');
INSERT INTO `product_view` VALUES (2264, 582, '2021-08-26', 2, 'mobile');
INSERT INTO `product_view` VALUES (2265, 575, '2021-08-26', 1, 'mobile');
INSERT INTO `product_view` VALUES (2266, 587, '2021-08-26', 2, 'mobile');
INSERT INTO `product_view` VALUES (2267, 588, '2021-08-26', 1, 'mobile');
INSERT INTO `product_view` VALUES (2268, 589, '2021-08-26', 2, 'mobile');
INSERT INTO `product_view` VALUES (2269, 576, '2021-08-26', 2, 'mobile');
INSERT INTO `product_view` VALUES (2270, 577, '2021-08-26', 2, 'mobile');
INSERT INTO `product_view` VALUES (2271, 581, '2021-08-26', 1, 'mobile');
INSERT INTO `product_view` VALUES (2272, 582, '2021-08-26', 1, 'web');
INSERT INTO `product_view` VALUES (2273, 590, '2021-08-26', 1, 'web');
INSERT INTO `product_view` VALUES (2274, 581, '2021-08-26', 1, 'web');
INSERT INTO `product_view` VALUES (2275, 578, '2021-08-26', 1, 'web');
INSERT INTO `product_view` VALUES (2276, 574, '2021-08-26', 1, 'mobile');
INSERT INTO `product_view` VALUES (2277, 578, '2021-08-26', 2, 'mobile');
INSERT INTO `product_view` VALUES (2278, 584, '2021-08-26', 1, 'mobile');
INSERT INTO `product_view` VALUES (2279, 585, '2021-08-26', 1, 'mobile');
INSERT INTO `product_view` VALUES (2280, 591, '2021-08-26', 4, 'mobile');
INSERT INTO `product_view` VALUES (2281, 583, '2021-08-26', 4, 'mobile');
INSERT INTO `product_view` VALUES (2282, 591, '2021-08-26', 1, 'web');
INSERT INTO `product_view` VALUES (2283, 586, '2021-08-26', 1, 'mobile');
INSERT INTO `product_view` VALUES (2284, 579, '2021-08-27', 3, 'mobile');
INSERT INTO `product_view` VALUES (2285, 580, '2021-08-27', 2, 'web');
INSERT INTO `product_view` VALUES (2286, 574, '2021-08-27', 1, 'web');
INSERT INTO `product_view` VALUES (2287, 581, '2021-08-27', 1, 'mobile');
INSERT INTO `product_view` VALUES (2288, 583, '2021-08-27', 2, 'mobile');
INSERT INTO `product_view` VALUES (2289, 575, '2021-08-27', 2, 'mobile');
INSERT INTO `product_view` VALUES (2290, 577, '2021-08-27', 2, 'mobile');
INSERT INTO `product_view` VALUES (2291, 592, '2021-08-27', 4, 'mobile');
INSERT INTO `product_view` VALUES (2292, 580, '2021-08-27', 2, 'mobile');
INSERT INTO `product_view` VALUES (2293, 591, '2021-08-27', 3, 'mobile');
INSERT INTO `product_view` VALUES (2294, 571, '2021-08-27', 2, 'mobile');
INSERT INTO `product_view` VALUES (2295, 574, '2021-08-27', 2, 'mobile');
INSERT INTO `product_view` VALUES (2296, 590, '2021-08-27', 1, 'web');
INSERT INTO `product_view` VALUES (2297, 584, '2021-08-27', 1, 'mobile');
INSERT INTO `product_view` VALUES (2298, 591, '2021-08-27', 1, 'web');
INSERT INTO `product_view` VALUES (2299, 587, '2021-08-27', 1, 'mobile');
INSERT INTO `product_view` VALUES (2300, 580, '2021-08-28', 4, 'mobile');
INSERT INTO `product_view` VALUES (2301, 591, '2021-08-28', 5, 'mobile');
INSERT INTO `product_view` VALUES (2302, 583, '2021-08-28', 4, 'mobile');
INSERT INTO `product_view` VALUES (2303, 576, '2021-08-28', 2, 'mobile');
INSERT INTO `product_view` VALUES (2304, 578, '2021-08-28', 4, 'mobile');
INSERT INTO `product_view` VALUES (2305, 575, '2021-08-28', 2, 'mobile');
INSERT INTO `product_view` VALUES (2306, 579, '2021-08-28', 4, 'mobile');
INSERT INTO `product_view` VALUES (2307, 579, '2021-08-28', 1, 'web');
INSERT INTO `product_view` VALUES (2308, 583, '2021-08-28', 2, 'web');
INSERT INTO `product_view` VALUES (2309, 574, '2021-08-28', 2, 'web');
INSERT INTO `product_view` VALUES (2310, 581, '2021-08-28', 1, 'web');
INSERT INTO `product_view` VALUES (2311, 582, '2021-08-28', 1, 'web');
INSERT INTO `product_view` VALUES (2312, 588, '2021-08-28', 2, 'mobile');
INSERT INTO `product_view` VALUES (2313, 578, '2021-08-28', 1, 'web');
INSERT INTO `product_view` VALUES (2314, 571, '2021-08-28', 2, 'mobile');
INSERT INTO `product_view` VALUES (2315, 582, '2021-08-28', 4, 'mobile');
INSERT INTO `product_view` VALUES (2316, 592, '2021-08-28', 1, 'mobile');
INSERT INTO `product_view` VALUES (2317, 581, '2021-08-28', 2, 'mobile');
INSERT INTO `product_view` VALUES (2318, 574, '2021-08-28', 1, 'mobile');
INSERT INTO `product_view` VALUES (2319, 577, '2021-08-28', 1, 'mobile');
INSERT INTO `product_view` VALUES (2320, 571, '2021-08-29', 2, 'mobile');
INSERT INTO `product_view` VALUES (2321, 592, '2021-08-29', 1, 'mobile');
INSERT INTO `product_view` VALUES (2322, 578, '2021-08-29', 4, 'mobile');
INSERT INTO `product_view` VALUES (2323, 577, '2021-08-29', 2, 'mobile');
INSERT INTO `product_view` VALUES (2324, 579, '2021-08-29', 1, 'mobile');
INSERT INTO `product_view` VALUES (2325, 592, '2021-08-29', 1, 'web');
INSERT INTO `product_view` VALUES (2326, 571, '2021-08-29', 1, 'web');
INSERT INTO `product_view` VALUES (2327, 581, '2021-08-29', 1, 'web');
INSERT INTO `product_view` VALUES (2328, 583, '2021-08-29', 1, 'web');
INSERT INTO `product_view` VALUES (2329, 584, '2021-08-29', 1, 'web');
INSERT INTO `product_view` VALUES (2330, 589, '2021-08-29', 1, 'web');
INSERT INTO `product_view` VALUES (2331, 586, '2021-08-29', 1, 'web');
INSERT INTO `product_view` VALUES (2332, 585, '2021-08-29', 1, 'web');
INSERT INTO `product_view` VALUES (2333, 583, '2021-08-29', 1, 'mobile');
INSERT INTO `product_view` VALUES (2334, 579, '2021-08-29', 1, 'web');
INSERT INTO `product_view` VALUES (2335, 581, '2021-08-29', 2, 'mobile');
INSERT INTO `product_view` VALUES (2336, 587, '2021-08-29', 1, 'mobile');
INSERT INTO `product_view` VALUES (2337, 580, '2021-08-29', 1, 'mobile');
INSERT INTO `product_view` VALUES (2338, 576, '2021-08-29', 1, 'mobile');
INSERT INTO `product_view` VALUES (2339, 590, '2021-08-29', 1, 'mobile');
INSERT INTO `product_view` VALUES (2340, 577, '2021-08-29', 1, 'web');
INSERT INTO `product_view` VALUES (2341, 580, '2021-08-30', 3, 'mobile');
INSERT INTO `product_view` VALUES (2342, 583, '2021-08-30', 2, 'web');
INSERT INTO `product_view` VALUES (2343, 582, '2021-08-30', 1, 'web');
INSERT INTO `product_view` VALUES (2344, 578, '2021-08-30', 4, 'mobile');
INSERT INTO `product_view` VALUES (2345, 579, '2021-08-30', 5, 'mobile');
INSERT INTO `product_view` VALUES (2346, 584, '2021-08-30', 1, 'mobile');
INSERT INTO `product_view` VALUES (2347, 577, '2021-08-30', 3, 'mobile');
INSERT INTO `product_view` VALUES (2348, 584, '2021-08-30', 1, 'web');
INSERT INTO `product_view` VALUES (2349, 579, '2021-08-30', 1, 'web');
INSERT INTO `product_view` VALUES (2350, 582, '2021-08-30', 2, 'mobile');
INSERT INTO `product_view` VALUES (2351, 581, '2021-08-30', 1, 'web');
INSERT INTO `product_view` VALUES (2352, 591, '2021-08-30', 1, 'web');
INSERT INTO `product_view` VALUES (2353, 591, '2021-08-30', 4, 'mobile');
INSERT INTO `product_view` VALUES (2354, 575, '2021-08-30', 1, 'mobile');
INSERT INTO `product_view` VALUES (2355, 571, '2021-08-30', 2, 'mobile');
INSERT INTO `product_view` VALUES (2356, 592, '2021-08-30', 2, 'mobile');
INSERT INTO `product_view` VALUES (2357, 576, '2021-08-30', 1, 'mobile');
INSERT INTO `product_view` VALUES (2358, 583, '2021-08-30', 1, 'mobile');
INSERT INTO `product_view` VALUES (2359, 571, '2021-08-31', 1, 'mobile');
INSERT INTO `product_view` VALUES (2360, 579, '2021-08-31', 3, 'mobile');
INSERT INTO `product_view` VALUES (2361, 578, '2021-08-31', 1, 'mobile');
INSERT INTO `product_view` VALUES (2362, 577, '2021-08-31', 1, 'web');
INSERT INTO `product_view` VALUES (2363, 583, '2021-08-31', 1, 'mobile');
INSERT INTO `product_view` VALUES (2364, 577, '2021-08-31', 1, 'mobile');
INSERT INTO `product_view` VALUES (2365, 583, '2021-08-31', 1, 'web');
INSERT INTO `product_view` VALUES (2366, 580, '2021-08-31', 1, 'web');
INSERT INTO `product_view` VALUES (2367, 576, '2021-08-31', 1, 'mobile');
INSERT INTO `product_view` VALUES (2368, 576, '2021-08-31', 1, 'web');
INSERT INTO `product_view` VALUES (2369, 579, '2021-08-31', 1, 'web');
INSERT INTO `product_view` VALUES (2370, 591, '2021-09-01', 1, 'web');
INSERT INTO `product_view` VALUES (2371, 576, '2021-09-01', 2, 'mobile');
INSERT INTO `product_view` VALUES (2372, 583, '2021-09-01', 1, 'web');
INSERT INTO `product_view` VALUES (2373, 582, '2021-09-01', 2, 'web');
INSERT INTO `product_view` VALUES (2374, 577, '2021-09-01', 1, 'mobile');
INSERT INTO `product_view` VALUES (2375, 578, '2021-09-01', 3, 'web');
INSERT INTO `product_view` VALUES (2376, 592, '2021-09-01', 1, 'mobile');
INSERT INTO `product_view` VALUES (2377, 571, '2021-09-01', 2, 'web');
INSERT INTO `product_view` VALUES (2378, 579, '2021-09-01', 3, 'mobile');
INSERT INTO `product_view` VALUES (2379, 578, '2021-09-01', 2, 'mobile');
INSERT INTO `product_view` VALUES (2380, 582, '2021-09-01', 1, 'mobile');
INSERT INTO `product_view` VALUES (2381, 583, '2021-09-01', 2, 'mobile');
INSERT INTO `product_view` VALUES (2382, 571, '2021-09-01', 2, 'mobile');
INSERT INTO `product_view` VALUES (2383, 590, '2021-09-01', 1, 'mobile');
INSERT INTO `product_view` VALUES (2384, 577, '2021-09-01', 1, 'web');
INSERT INTO `product_view` VALUES (2385, 587, '2021-09-01', 1, 'web');
INSERT INTO `product_view` VALUES (2386, 585, '2021-09-01', 1, 'web');
INSERT INTO `product_view` VALUES (2387, 588, '2021-09-01', 1, 'web');
INSERT INTO `product_view` VALUES (2388, 581, '2021-09-01', 1, 'mobile');
INSERT INTO `product_view` VALUES (2389, 586, '2021-09-01', 1, 'mobile');
INSERT INTO `product_view` VALUES (2390, 587, '2021-09-01', 1, 'mobile');
INSERT INTO `product_view` VALUES (2391, 585, '2021-09-01', 1, 'mobile');
INSERT INTO `product_view` VALUES (2392, 580, '2021-09-01', 1, 'mobile');
INSERT INTO `product_view` VALUES (2393, 591, '2021-09-01', 1, 'mobile');
INSERT INTO `product_view` VALUES (2394, 581, '2021-09-01', 1, 'web');
INSERT INTO `product_view` VALUES (2395, 574, '2021-09-01', 1, 'web');
INSERT INTO `product_view` VALUES (2396, 584, '2021-09-01', 1, 'mobile');
INSERT INTO `product_view` VALUES (2397, 591, '2021-09-02', 2, 'mobile');
INSERT INTO `product_view` VALUES (2398, 581, '2021-09-02', 2, 'mobile');
INSERT INTO `product_view` VALUES (2399, 571, '2021-09-02', 2, 'mobile');
INSERT INTO `product_view` VALUES (2400, 583, '2021-09-02', 1, 'web');
INSERT INTO `product_view` VALUES (2401, 578, '2021-09-02', 3, 'web');
INSERT INTO `product_view` VALUES (2402, 582, '2021-09-02', 4, 'web');
INSERT INTO `product_view` VALUES (2403, 574, '2021-09-02', 2, 'web');
INSERT INTO `product_view` VALUES (2404, 571, '2021-09-02', 4, 'web');
INSERT INTO `product_view` VALUES (2405, 575, '2021-09-02', 1, 'web');
INSERT INTO `product_view` VALUES (2406, 580, '2021-09-02', 4, 'web');
INSERT INTO `product_view` VALUES (2407, 586, '2021-09-02', 2, 'web');
INSERT INTO `product_view` VALUES (2408, 574, '2021-09-02', 2, 'mobile');
INSERT INTO `product_view` VALUES (2409, 576, '2021-09-02', 3, 'web');
INSERT INTO `product_view` VALUES (2410, 590, '2021-09-02', 3, 'mobile');
INSERT INTO `product_view` VALUES (2411, 576, '2021-09-02', 2, 'mobile');
INSERT INTO `product_view` VALUES (2412, 577, '2021-09-02', 2, 'mobile');
INSERT INTO `product_view` VALUES (2413, 583, '2021-09-02', 2, 'mobile');
INSERT INTO `product_view` VALUES (2414, 590, '2021-09-02', 4, 'web');
INSERT INTO `product_view` VALUES (2415, 579, '2021-09-02', 1, 'web');
INSERT INTO `product_view` VALUES (2416, 577, '2021-09-02', 1, 'web');
INSERT INTO `product_view` VALUES (2417, 580, '2021-09-02', 1, 'mobile');
INSERT INTO `product_view` VALUES (2418, 578, '2021-09-02', 2, 'mobile');
INSERT INTO `product_view` VALUES (2419, 592, '2021-09-02', 1, 'web');
INSERT INTO `product_view` VALUES (2420, 591, '2021-09-02', 1, 'web');
INSERT INTO `product_view` VALUES (2421, 584, '2021-09-02', 1, 'web');
INSERT INTO `product_view` VALUES (2422, 589, '2021-09-02', 1, 'web');
INSERT INTO `product_view` VALUES (2423, 585, '2021-09-02', 1, 'web');
INSERT INTO `product_view` VALUES (2424, 579, '2021-09-02', 1, 'mobile');
INSERT INTO `product_view` VALUES (2425, 592, '2021-09-02', 1, 'mobile');
INSERT INTO `product_view` VALUES (2426, 591, '2021-09-03', 1, 'web');
INSERT INTO `product_view` VALUES (2427, 590, '2021-09-03', 2, 'web');
INSERT INTO `product_view` VALUES (2428, 580, '2021-09-03', 3, 'mobile');
INSERT INTO `product_view` VALUES (2429, 578, '2021-09-03', 4, 'mobile');
INSERT INTO `product_view` VALUES (2430, 576, '2021-09-03', 1, 'web');
INSERT INTO `product_view` VALUES (2431, 576, '2021-09-03', 2, 'mobile');
INSERT INTO `product_view` VALUES (2432, 578, '2021-09-03', 2, 'web');
INSERT INTO `product_view` VALUES (2433, 580, '2021-09-03', 2, 'web');
INSERT INTO `product_view` VALUES (2434, 577, '2021-09-03', 2, 'mobile');
INSERT INTO `product_view` VALUES (2435, 591, '2021-09-03', 2, 'mobile');
INSERT INTO `product_view` VALUES (2436, 579, '2021-09-03', 7, 'mobile');
INSERT INTO `product_view` VALUES (2437, 579, '2021-09-03', 2, 'web');
INSERT INTO `product_view` VALUES (2438, 583, '2021-09-03', 4, 'mobile');
INSERT INTO `product_view` VALUES (2439, 571, '2021-09-03', 2, 'mobile');
INSERT INTO `product_view` VALUES (2440, 583, '2021-09-03', 2, 'web');
INSERT INTO `product_view` VALUES (2441, 574, '2021-09-03', 3, 'mobile');
INSERT INTO `product_view` VALUES (2442, 584, '2021-09-03', 1, 'mobile');
INSERT INTO `product_view` VALUES (2443, 589, '2021-09-03', 1, 'mobile');
INSERT INTO `product_view` VALUES (2444, 575, '2021-09-03', 1, 'mobile');
INSERT INTO `product_view` VALUES (2445, 582, '2021-09-03', 1, 'mobile');
INSERT INTO `product_view` VALUES (2446, 582, '2021-09-03', 1, 'web');
INSERT INTO `product_view` VALUES (2447, 582, '2021-09-04', 4, 'mobile');
INSERT INTO `product_view` VALUES (2448, 591, '2021-09-04', 2, 'web');
INSERT INTO `product_view` VALUES (2449, 580, '2021-09-04', 3, 'web');
INSERT INTO `product_view` VALUES (2450, 580, '2021-09-04', 3, 'mobile');
INSERT INTO `product_view` VALUES (2451, 579, '2021-09-04', 4, 'mobile');
INSERT INTO `product_view` VALUES (2452, 581, '2021-09-04', 2, 'mobile');
INSERT INTO `product_view` VALUES (2453, 584, '2021-09-04', 1, 'mobile');
INSERT INTO `product_view` VALUES (2454, 578, '2021-09-04', 2, 'web');
INSERT INTO `product_view` VALUES (2455, 577, '2021-09-04', 1, 'web');
INSERT INTO `product_view` VALUES (2456, 576, '2021-09-04', 1, 'web');
INSERT INTO `product_view` VALUES (2457, 583, '2021-09-04', 2, 'web');
INSERT INTO `product_view` VALUES (2458, 591, '2021-09-04', 2, 'mobile');
INSERT INTO `product_view` VALUES (2459, 581, '2021-09-04', 3, 'web');
INSERT INTO `product_view` VALUES (2460, 571, '2021-09-04', 2, 'mobile');
INSERT INTO `product_view` VALUES (2461, 590, '2021-09-04', 1, 'mobile');
INSERT INTO `product_view` VALUES (2462, 577, '2021-09-04', 2, 'mobile');
INSERT INTO `product_view` VALUES (2463, 583, '2021-09-04', 4, 'mobile');
INSERT INTO `product_view` VALUES (2464, 578, '2021-09-04', 1, 'mobile');
INSERT INTO `product_view` VALUES (2465, 576, '2021-09-04', 1, 'mobile');
INSERT INTO `product_view` VALUES (2466, 585, '2021-09-04', 1, 'mobile');
INSERT INTO `product_view` VALUES (2467, 574, '2021-09-04', 3, 'mobile');
INSERT INTO `product_view` VALUES (2468, 585, '2021-09-04', 1, 'web');
INSERT INTO `product_view` VALUES (2469, 590, '2021-09-04', 1, 'web');
INSERT INTO `product_view` VALUES (2470, 579, '2021-09-05', 3, 'mobile');
INSERT INTO `product_view` VALUES (2471, 571, '2021-09-05', 3, 'mobile');
INSERT INTO `product_view` VALUES (2472, 581, '2021-09-05', 7, 'mobile');
INSERT INTO `product_view` VALUES (2473, 584, '2021-09-05', 3, 'mobile');
INSERT INTO `product_view` VALUES (2474, 587, '2021-09-05', 2, 'mobile');
INSERT INTO `product_view` VALUES (2475, 577, '2021-09-05', 1, 'web');
INSERT INTO `product_view` VALUES (2476, 583, '2021-09-05', 2, 'mobile');
INSERT INTO `product_view` VALUES (2477, 588, '2021-09-05', 2, 'mobile');
INSERT INTO `product_view` VALUES (2478, 578, '2021-09-05', 2, 'mobile');
INSERT INTO `product_view` VALUES (2479, 585, '2021-09-05', 1, 'mobile');
INSERT INTO `product_view` VALUES (2480, 592, '2021-09-05', 2, 'mobile');
INSERT INTO `product_view` VALUES (2481, 575, '2021-09-05', 3, 'mobile');
INSERT INTO `product_view` VALUES (2482, 574, '2021-09-05', 2, 'mobile');
INSERT INTO `product_view` VALUES (2483, 582, '2021-09-05', 2, 'mobile');
INSERT INTO `product_view` VALUES (2484, 577, '2021-09-05', 3, 'mobile');
INSERT INTO `product_view` VALUES (2485, 579, '2021-09-05', 2, 'web');
INSERT INTO `product_view` VALUES (2486, 590, '2021-09-05', 2, 'mobile');
INSERT INTO `product_view` VALUES (2487, 591, '2021-09-05', 3, 'mobile');
INSERT INTO `product_view` VALUES (2488, 583, '2021-09-05', 1, 'web');
INSERT INTO `product_view` VALUES (2489, 581, '2021-09-05', 1, 'web');
INSERT INTO `product_view` VALUES (2490, 574, '2021-09-05', 1, 'web');
INSERT INTO `product_view` VALUES (2491, 580, '2021-09-05', 1, 'mobile');
INSERT INTO `product_view` VALUES (2492, 582, '2021-09-05', 1, 'web');
INSERT INTO `product_view` VALUES (2493, 578, '2021-09-05', 1, 'web');
INSERT INTO `product_view` VALUES (2494, 590, '2021-09-05', 1, 'web');
INSERT INTO `product_view` VALUES (2495, 583, '2021-09-06', 1, 'web');
INSERT INTO `product_view` VALUES (2496, 579, '2021-09-06', 1, 'web');
INSERT INTO `product_view` VALUES (2497, 591, '2021-09-06', 1, 'mobile');
INSERT INTO `product_view` VALUES (2498, 578, '2021-09-06', 3, 'mobile');
INSERT INTO `product_view` VALUES (2499, 578, '2021-09-06', 1, 'web');
INSERT INTO `product_view` VALUES (2500, 575, '2021-09-06', 2, 'mobile');
INSERT INTO `product_view` VALUES (2501, 571, '2021-09-06', 1, 'mobile');
INSERT INTO `product_view` VALUES (2502, 581, '2021-09-06', 2, 'mobile');
INSERT INTO `product_view` VALUES (2503, 577, '2021-09-06', 1, 'web');
INSERT INTO `product_view` VALUES (2504, 576, '2021-09-07', 1, 'web');
INSERT INTO `product_view` VALUES (2505, 584, '2021-09-07', 3, 'mobile');
INSERT INTO `product_view` VALUES (2506, 571, '2021-09-07', 5, 'mobile');
INSERT INTO `product_view` VALUES (2507, 579, '2021-09-07', 3, 'mobile');
INSERT INTO `product_view` VALUES (2508, 582, '2021-09-07', 1, 'mobile');
INSERT INTO `product_view` VALUES (2509, 582, '2021-09-07', 1, 'web');
INSERT INTO `product_view` VALUES (2510, 582, '2021-09-07', 1, 'web');
INSERT INTO `product_view` VALUES (2511, 578, '2021-09-07', 2, 'mobile');
INSERT INTO `product_view` VALUES (2512, 581, '2021-09-07', 7, 'mobile');
INSERT INTO `product_view` VALUES (2513, 588, '2021-09-07', 1, 'web');
INSERT INTO `product_view` VALUES (2514, 580, '2021-09-07', 1, 'web');
INSERT INTO `product_view` VALUES (2515, 591, '2021-09-07', 2, 'mobile');
INSERT INTO `product_view` VALUES (2516, 575, '2021-09-07', 3, 'mobile');
INSERT INTO `product_view` VALUES (2517, 576, '2021-09-07', 2, 'mobile');
INSERT INTO `product_view` VALUES (2518, 574, '2021-09-07', 2, 'mobile');
INSERT INTO `product_view` VALUES (2519, 585, '2021-09-07', 1, 'mobile');
INSERT INTO `product_view` VALUES (2520, 592, '2021-09-07', 3, 'mobile');
INSERT INTO `product_view` VALUES (2521, 583, '2021-09-07', 1, 'web');
INSERT INTO `product_view` VALUES (2522, 583, '2021-09-07', 1, 'mobile');
INSERT INTO `product_view` VALUES (2523, 590, '2021-09-07', 1, 'mobile');
INSERT INTO `product_view` VALUES (2524, 586, '2021-09-07', 1, 'mobile');
INSERT INTO `product_view` VALUES (2525, 587, '2021-09-07', 1, 'mobile');
INSERT INTO `product_view` VALUES (2526, 577, '2021-09-08', 1, 'mobile');
INSERT INTO `product_view` VALUES (2527, 581, '2021-09-08', 1, 'mobile');
INSERT INTO `product_view` VALUES (2528, 578, '2021-09-08', 1, 'mobile');
INSERT INTO `product_view` VALUES (2529, 579, '2021-09-08', 1, 'mobile');
INSERT INTO `product_view` VALUES (2530, 575, '2021-09-08', 1, 'mobile');
INSERT INTO `product_view` VALUES (2531, 576, '2021-09-08', 1, 'mobile');
INSERT INTO `product_view` VALUES (2532, 582, '2021-09-08', 1, 'web');
INSERT INTO `product_view` VALUES (2533, 578, '2021-09-08', 1, 'web');
INSERT INTO `product_view` VALUES (2534, 577, '2021-09-08', 1, 'web');
INSERT INTO `product_view` VALUES (2535, 576, '2021-09-08', 1, 'web');

-- ----------------------------
-- Table structure for product_view_user
-- ----------------------------
DROP TABLE IF EXISTS `product_view_user`;
CREATE TABLE `product_view_user`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `user_id` int NOT NULL,
  `view_date` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 504 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_view_user
-- ----------------------------
INSERT INTO `product_view_user` VALUES (1, 577, 5, '2021-02-10 14:14:04');
INSERT INTO `product_view_user` VALUES (2, 580, 11, '2021-02-16 20:30:14');
INSERT INTO `product_view_user` VALUES (3, 581, 11, '2021-02-16 20:31:37');
INSERT INTO `product_view_user` VALUES (4, 581, 11, '2021-02-16 20:32:01');
INSERT INTO `product_view_user` VALUES (5, 583, 11, '2021-02-16 20:32:32');
INSERT INTO `product_view_user` VALUES (6, 580, 11, '2021-02-16 20:32:43');
INSERT INTO `product_view_user` VALUES (7, 580, 11, '2021-02-16 20:33:33');
INSERT INTO `product_view_user` VALUES (8, 581, 11, '2021-02-16 20:33:52');
INSERT INTO `product_view_user` VALUES (9, 580, 11, '2021-02-16 20:34:25');
INSERT INTO `product_view_user` VALUES (10, 581, 11, '2021-02-16 20:34:30');
INSERT INTO `product_view_user` VALUES (11, 581, 11, '2021-02-16 20:34:40');
INSERT INTO `product_view_user` VALUES (12, 578, 11, '2021-02-16 20:35:22');
INSERT INTO `product_view_user` VALUES (13, 576, 11, '2021-02-16 20:36:02');
INSERT INTO `product_view_user` VALUES (14, 586, 11, '2021-02-16 20:37:00');
INSERT INTO `product_view_user` VALUES (15, 587, 11, '2021-02-16 20:37:13');
INSERT INTO `product_view_user` VALUES (16, 590, 11, '2021-02-16 20:37:39');
INSERT INTO `product_view_user` VALUES (17, 571, 6, '2021-02-17 12:05:23');
INSERT INTO `product_view_user` VALUES (18, 577, 12, '2021-02-17 16:28:33');
INSERT INTO `product_view_user` VALUES (19, 577, 12, '2021-02-18 11:16:12');
INSERT INTO `product_view_user` VALUES (20, 577, 12, '2021-02-18 11:49:52');
INSERT INTO `product_view_user` VALUES (21, 578, 12, '2021-02-19 12:13:51');
INSERT INTO `product_view_user` VALUES (22, 577, 12, '2021-02-19 12:44:21');
INSERT INTO `product_view_user` VALUES (23, 584, 12, '2021-02-19 12:44:31');
INSERT INTO `product_view_user` VALUES (24, 584, 12, '2021-02-19 12:53:18');
INSERT INTO `product_view_user` VALUES (25, 585, 12, '2021-02-19 12:57:42');
INSERT INTO `product_view_user` VALUES (26, 586, 12, '2021-02-19 12:58:17');
INSERT INTO `product_view_user` VALUES (27, 587, 12, '2021-02-19 12:58:50');
INSERT INTO `product_view_user` VALUES (28, 589, 12, '2021-02-19 12:59:53');
INSERT INTO `product_view_user` VALUES (29, 582, 12, '2021-02-19 13:04:47');
INSERT INTO `product_view_user` VALUES (30, 577, 12, '2021-02-19 13:04:59');
INSERT INTO `product_view_user` VALUES (31, 584, 12, '2021-02-19 13:05:20');
INSERT INTO `product_view_user` VALUES (32, 584, 12, '2021-02-19 13:05:36');
INSERT INTO `product_view_user` VALUES (33, 578, 12, '2021-02-19 13:19:34');
INSERT INTO `product_view_user` VALUES (34, 590, 12, '2021-02-19 14:39:03');
INSERT INTO `product_view_user` VALUES (35, 580, 12, '2021-02-22 09:37:32');
INSERT INTO `product_view_user` VALUES (36, 574, 12, '2021-02-22 09:37:40');
INSERT INTO `product_view_user` VALUES (37, 575, 12, '2021-02-22 09:37:54');
INSERT INTO `product_view_user` VALUES (38, 583, 12, '2021-02-22 09:37:58');
INSERT INTO `product_view_user` VALUES (39, 575, 12, '2021-02-22 09:47:11');
INSERT INTO `product_view_user` VALUES (40, 574, 12, '2021-02-22 09:47:17');
INSERT INTO `product_view_user` VALUES (41, 581, 12, '2021-02-22 09:47:22');
INSERT INTO `product_view_user` VALUES (42, 583, 12, '2021-02-22 09:47:26');
INSERT INTO `product_view_user` VALUES (43, 579, 12, '2021-02-22 09:47:30');
INSERT INTO `product_view_user` VALUES (44, 580, 12, '2021-02-22 09:47:51');
INSERT INTO `product_view_user` VALUES (45, 581, 12, '2021-02-22 09:58:40');
INSERT INTO `product_view_user` VALUES (46, 571, 12, '2021-02-22 09:58:56');
INSERT INTO `product_view_user` VALUES (47, 575, 12, '2021-02-22 09:59:14');
INSERT INTO `product_view_user` VALUES (48, 574, 12, '2021-02-22 09:59:21');
INSERT INTO `product_view_user` VALUES (49, 579, 12, '2021-02-22 09:59:24');
INSERT INTO `product_view_user` VALUES (50, 580, 12, '2021-02-22 09:59:31');
INSERT INTO `product_view_user` VALUES (51, 581, 12, '2021-02-22 09:59:36');
INSERT INTO `product_view_user` VALUES (52, 582, 12, '2021-02-22 09:59:42');
INSERT INTO `product_view_user` VALUES (53, 577, 12, '2021-02-22 09:59:46');
INSERT INTO `product_view_user` VALUES (54, 583, 12, '2021-02-22 09:59:48');
INSERT INTO `product_view_user` VALUES (55, 576, 12, '2021-02-22 09:59:51');
INSERT INTO `product_view_user` VALUES (56, 578, 12, '2021-02-22 09:59:57');
INSERT INTO `product_view_user` VALUES (57, 584, 12, '2021-02-22 10:00:00');
INSERT INTO `product_view_user` VALUES (58, 590, 12, '2021-02-22 10:01:18');
INSERT INTO `product_view_user` VALUES (59, 575, 13, '2021-02-22 10:02:06');
INSERT INTO `product_view_user` VALUES (60, 577, 13, '2021-02-22 10:02:14');
INSERT INTO `product_view_user` VALUES (61, 578, 13, '2021-02-22 10:02:21');
INSERT INTO `product_view_user` VALUES (62, 577, 13, '2021-02-22 10:03:30');
INSERT INTO `product_view_user` VALUES (63, 577, 13, '2021-02-22 10:05:39');
INSERT INTO `product_view_user` VALUES (64, 574, 14, '2021-02-22 10:27:37');
INSERT INTO `product_view_user` VALUES (65, 577, 14, '2021-02-22 10:30:57');
INSERT INTO `product_view_user` VALUES (66, 578, 14, '2021-02-22 10:33:10');
INSERT INTO `product_view_user` VALUES (67, 584, 14, '2021-02-22 10:42:49');
INSERT INTO `product_view_user` VALUES (68, 578, 14, '2021-02-22 10:43:05');
INSERT INTO `product_view_user` VALUES (69, 578, 14, '2021-02-22 10:44:44');
INSERT INTO `product_view_user` VALUES (70, 578, 12, '2021-02-22 11:09:55');
INSERT INTO `product_view_user` VALUES (71, 578, 12, '2021-02-22 14:07:23');
INSERT INTO `product_view_user` VALUES (72, 578, 12, '2021-02-22 14:11:44');
INSERT INTO `product_view_user` VALUES (73, 578, 3, '2021-02-22 16:05:13');
INSERT INTO `product_view_user` VALUES (74, 581, 3, '2021-02-22 20:25:12');
INSERT INTO `product_view_user` VALUES (75, 578, 3, '2021-02-22 20:25:21');
INSERT INTO `product_view_user` VALUES (76, 578, 3, '2021-02-22 20:30:35');
INSERT INTO `product_view_user` VALUES (77, 578, 3, '2021-02-22 20:40:04');
INSERT INTO `product_view_user` VALUES (78, 571, 15, '2021-02-22 20:40:48');
INSERT INTO `product_view_user` VALUES (79, 578, 3, '2021-02-23 00:40:40');
INSERT INTO `product_view_user` VALUES (80, 582, 12, '2021-02-23 11:18:32');
INSERT INTO `product_view_user` VALUES (81, 571, 12, '2021-02-23 11:51:24');
INSERT INTO `product_view_user` VALUES (82, 571, 12, '2021-02-23 11:52:03');
INSERT INTO `product_view_user` VALUES (83, 578, 12, '2021-02-23 12:33:51');
INSERT INTO `product_view_user` VALUES (84, 578, 12, '2021-02-23 15:38:00');
INSERT INTO `product_view_user` VALUES (85, 578, 12, '2021-02-23 17:03:21');
INSERT INTO `product_view_user` VALUES (86, 585, 12, '2021-02-23 17:33:25');
INSERT INTO `product_view_user` VALUES (87, 571, 12, '2021-02-24 13:32:52');
INSERT INTO `product_view_user` VALUES (88, 578, 12, '2021-02-24 13:33:04');
INSERT INTO `product_view_user` VALUES (89, 581, 12, '2021-02-24 14:32:46');
INSERT INTO `product_view_user` VALUES (90, 583, 12, '2021-02-24 14:32:55');
INSERT INTO `product_view_user` VALUES (91, 578, 12, '2021-02-24 14:43:22');
INSERT INTO `product_view_user` VALUES (92, 578, 12, '2021-02-24 14:48:54');
INSERT INTO `product_view_user` VALUES (93, 590, 16, '2021-02-24 15:12:46');
INSERT INTO `product_view_user` VALUES (94, 580, 16, '2021-02-24 15:17:33');
INSERT INTO `product_view_user` VALUES (95, 582, 12, '2021-02-24 20:23:31');
INSERT INTO `product_view_user` VALUES (96, 578, 12, '2021-02-25 16:42:56');
INSERT INTO `product_view_user` VALUES (97, 578, 12, '2021-02-25 16:43:14');
INSERT INTO `product_view_user` VALUES (98, 577, 12, '2021-02-25 16:43:24');
INSERT INTO `product_view_user` VALUES (99, 571, 12, '2021-02-25 16:43:57');
INSERT INTO `product_view_user` VALUES (100, 583, 17, '2021-03-10 11:19:33');
INSERT INTO `product_view_user` VALUES (101, 583, 17, '2021-03-10 11:20:40');
INSERT INTO `product_view_user` VALUES (102, 582, 17, '2021-03-10 11:23:07');
INSERT INTO `product_view_user` VALUES (103, 583, 17, '2021-03-10 11:23:58');
INSERT INTO `product_view_user` VALUES (104, 574, 17, '2021-03-10 11:25:35');
INSERT INTO `product_view_user` VALUES (105, 587, 17, '2021-03-10 11:31:27');
INSERT INTO `product_view_user` VALUES (106, 575, 17, '2021-03-10 11:34:18');
INSERT INTO `product_view_user` VALUES (107, 585, 17, '2021-03-10 13:11:46');
INSERT INTO `product_view_user` VALUES (108, 578, 17, '2021-03-16 09:00:28');
INSERT INTO `product_view_user` VALUES (109, 577, 17, '2021-03-16 15:46:52');
INSERT INTO `product_view_user` VALUES (110, 571, 13, '2021-03-16 17:34:21');
INSERT INTO `product_view_user` VALUES (111, 582, 13, '2021-03-16 17:34:51');
INSERT INTO `product_view_user` VALUES (112, 571, 13, '2021-03-16 17:40:01');
INSERT INTO `product_view_user` VALUES (113, 577, 17, '2021-03-17 10:03:22');
INSERT INTO `product_view_user` VALUES (114, 583, 13, '2021-03-18 13:59:35');
INSERT INTO `product_view_user` VALUES (115, 579, 13, '2021-03-18 14:00:01');
INSERT INTO `product_view_user` VALUES (116, 583, 13, '2021-03-18 14:00:44');
INSERT INTO `product_view_user` VALUES (117, 579, 13, '2021-03-18 14:01:05');
INSERT INTO `product_view_user` VALUES (118, 583, 13, '2021-03-18 14:01:15');
INSERT INTO `product_view_user` VALUES (119, 579, 13, '2021-03-18 14:02:21');
INSERT INTO `product_view_user` VALUES (120, 579, 13, '2021-03-18 16:41:39');
INSERT INTO `product_view_user` VALUES (121, 590, 12, '2021-03-22 14:06:41');
INSERT INTO `product_view_user` VALUES (122, 575, 3, '2021-03-22 16:04:31');
INSERT INTO `product_view_user` VALUES (123, 578, 3, '2021-03-22 16:04:38');
INSERT INTO `product_view_user` VALUES (124, 580, 18, '2021-03-22 18:25:49');
INSERT INTO `product_view_user` VALUES (125, 587, 18, '2021-03-22 19:08:17');
INSERT INTO `product_view_user` VALUES (126, 587, 18, '2021-03-22 19:08:23');
INSERT INTO `product_view_user` VALUES (127, 590, 18, '2021-03-22 19:08:44');
INSERT INTO `product_view_user` VALUES (128, 587, 18, '2021-03-22 19:09:05');
INSERT INTO `product_view_user` VALUES (129, 585, 18, '2021-03-22 19:09:18');
INSERT INTO `product_view_user` VALUES (130, 571, 18, '2021-03-22 19:09:30');
INSERT INTO `product_view_user` VALUES (131, 580, 18, '2021-03-22 19:10:06');
INSERT INTO `product_view_user` VALUES (132, 579, 18, '2021-03-22 19:10:10');
INSERT INTO `product_view_user` VALUES (133, 578, 17, '2021-03-24 15:29:39');
INSERT INTO `product_view_user` VALUES (134, 571, 6, '2021-03-25 10:16:30');
INSERT INTO `product_view_user` VALUES (135, 590, 12, '2021-03-25 11:54:32');
INSERT INTO `product_view_user` VALUES (136, 578, 20, '2021-03-25 16:26:16');
INSERT INTO `product_view_user` VALUES (137, 575, 12, '2021-03-25 18:48:38');
INSERT INTO `product_view_user` VALUES (138, 582, 24, '2021-04-05 14:33:35');
INSERT INTO `product_view_user` VALUES (139, 571, 24, '2021-04-05 14:34:41');
INSERT INTO `product_view_user` VALUES (140, 577, 12, '2021-04-12 14:56:34');
INSERT INTO `product_view_user` VALUES (141, 580, 12, '2021-04-12 14:57:19');
INSERT INTO `product_view_user` VALUES (142, 581, 12, '2021-04-12 14:58:51');
INSERT INTO `product_view_user` VALUES (143, 579, 28, '2021-04-17 15:30:38');
INSERT INTO `product_view_user` VALUES (144, 571, 31, '2021-04-26 14:42:41');
INSERT INTO `product_view_user` VALUES (145, 571, 31, '2021-04-26 14:42:41');
INSERT INTO `product_view_user` VALUES (146, 571, 31, '2021-04-26 14:43:02');
INSERT INTO `product_view_user` VALUES (147, 590, 29, '2021-04-27 17:29:27');
INSERT INTO `product_view_user` VALUES (148, 585, 29, '2021-04-27 17:29:38');
INSERT INTO `product_view_user` VALUES (149, 587, 29, '2021-04-27 17:29:46');
INSERT INTO `product_view_user` VALUES (150, 585, 29, '2021-04-27 17:30:05');
INSERT INTO `product_view_user` VALUES (151, 580, 29, '2021-04-27 17:30:34');
INSERT INTO `product_view_user` VALUES (152, 571, 24, '2021-04-27 22:30:17');
INSERT INTO `product_view_user` VALUES (153, 580, 24, '2021-04-27 22:32:05');
INSERT INTO `product_view_user` VALUES (154, 580, 24, '2021-04-27 22:33:17');
INSERT INTO `product_view_user` VALUES (155, 571, 24, '2021-04-27 22:34:22');
INSERT INTO `product_view_user` VALUES (156, 580, 24, '2021-04-27 22:37:23');
INSERT INTO `product_view_user` VALUES (157, 580, 24, '2021-04-28 01:54:16');
INSERT INTO `product_view_user` VALUES (158, 580, 24, '2021-05-03 12:37:39');
INSERT INTO `product_view_user` VALUES (159, 577, 12, '2021-05-03 14:54:03');
INSERT INTO `product_view_user` VALUES (160, 581, 3, '2021-05-05 10:28:20');
INSERT INTO `product_view_user` VALUES (161, 577, 3, '2021-05-05 10:30:56');
INSERT INTO `product_view_user` VALUES (162, 582, 3, '2021-05-05 22:18:17');
INSERT INTO `product_view_user` VALUES (163, 571, 12, '2021-05-06 14:42:35');
INSERT INTO `product_view_user` VALUES (164, 579, 35, '2021-05-12 21:51:47');
INSERT INTO `product_view_user` VALUES (165, 583, 36, '2021-05-15 16:18:16');
INSERT INTO `product_view_user` VALUES (166, 577, 13, '2021-05-17 10:03:02');
INSERT INTO `product_view_user` VALUES (167, 590, 38, '2021-05-19 13:20:03');
INSERT INTO `product_view_user` VALUES (168, 590, 38, '2021-05-19 13:20:03');
INSERT INTO `product_view_user` VALUES (169, 590, 38, '2021-05-19 13:20:04');
INSERT INTO `product_view_user` VALUES (170, 586, 41, '2021-05-23 18:43:40');
INSERT INTO `product_view_user` VALUES (171, 575, 41, '2021-05-23 18:44:13');
INSERT INTO `product_view_user` VALUES (172, 581, 41, '2021-05-23 18:44:28');
INSERT INTO `product_view_user` VALUES (173, 580, 41, '2021-05-23 18:44:45');
INSERT INTO `product_view_user` VALUES (174, 583, 41, '2021-05-23 18:45:05');
INSERT INTO `product_view_user` VALUES (175, 579, 41, '2021-05-23 18:45:24');
INSERT INTO `product_view_user` VALUES (176, 583, 41, '2021-05-23 18:45:46');
INSERT INTO `product_view_user` VALUES (177, 575, 41, '2021-05-23 18:46:02');
INSERT INTO `product_view_user` VALUES (178, 583, 41, '2021-05-23 18:46:06');
INSERT INTO `product_view_user` VALUES (179, 574, 42, '2021-05-24 21:44:12');
INSERT INTO `product_view_user` VALUES (180, 579, 42, '2021-05-24 21:44:50');
INSERT INTO `product_view_user` VALUES (181, 580, 13, '2021-05-25 10:03:36');
INSERT INTO `product_view_user` VALUES (182, 578, 13, '2021-05-25 10:03:48');
INSERT INTO `product_view_user` VALUES (183, 577, 13, '2021-05-25 10:05:19');
INSERT INTO `product_view_user` VALUES (184, 582, 13, '2021-05-25 10:17:31');
INSERT INTO `product_view_user` VALUES (185, 582, 13, '2021-05-25 10:17:32');
INSERT INTO `product_view_user` VALUES (186, 577, 13, '2021-05-27 10:49:15');
INSERT INTO `product_view_user` VALUES (187, 578, 3, '2021-05-27 15:06:53');
INSERT INTO `product_view_user` VALUES (188, 579, 13, '2021-05-28 14:40:40');
INSERT INTO `product_view_user` VALUES (189, 581, 41, '2021-06-01 04:41:10');
INSERT INTO `product_view_user` VALUES (190, 580, 41, '2021-06-01 04:41:29');
INSERT INTO `product_view_user` VALUES (191, 583, 41, '2021-06-01 04:41:39');
INSERT INTO `product_view_user` VALUES (192, 583, 41, '2021-06-01 04:42:17');
INSERT INTO `product_view_user` VALUES (193, 579, 41, '2021-06-01 04:42:36');
INSERT INTO `product_view_user` VALUES (194, 579, 41, '2021-06-01 04:43:03');
INSERT INTO `product_view_user` VALUES (195, 581, 41, '2021-06-01 04:44:43');
INSERT INTO `product_view_user` VALUES (196, 583, 41, '2021-06-01 04:44:50');
INSERT INTO `product_view_user` VALUES (197, 584, 47, '2021-06-05 00:04:55');
INSERT INTO `product_view_user` VALUES (198, 574, 47, '2021-06-05 00:08:07');
INSERT INTO `product_view_user` VALUES (199, 587, 47, '2021-06-05 00:13:16');
INSERT INTO `product_view_user` VALUES (200, 587, 47, '2021-06-05 00:27:28');
INSERT INTO `product_view_user` VALUES (201, 584, 47, '2021-06-05 00:37:05');
INSERT INTO `product_view_user` VALUES (202, 582, 48, '2021-06-05 01:02:58');
INSERT INTO `product_view_user` VALUES (203, 574, 47, '2021-06-05 01:10:35');
INSERT INTO `product_view_user` VALUES (204, 582, 47, '2021-06-05 01:24:32');
INSERT INTO `product_view_user` VALUES (205, 584, 47, '2021-06-05 01:40:05');
INSERT INTO `product_view_user` VALUES (206, 584, 3, '2021-06-05 16:30:57');
INSERT INTO `product_view_user` VALUES (207, 583, 49, '2021-06-06 20:59:59');
INSERT INTO `product_view_user` VALUES (208, 580, 49, '2021-06-06 21:14:54');
INSERT INTO `product_view_user` VALUES (209, 583, 51, '2021-06-13 00:15:13');
INSERT INTO `product_view_user` VALUES (210, 579, 51, '2021-06-13 00:15:25');
INSERT INTO `product_view_user` VALUES (211, 579, 51, '2021-06-13 00:16:10');
INSERT INTO `product_view_user` VALUES (212, 579, 51, '2021-06-13 00:17:22');
INSERT INTO `product_view_user` VALUES (213, 579, 38, '2021-06-16 08:03:09');
INSERT INTO `product_view_user` VALUES (214, 579, 38, '2021-06-16 08:03:58');
INSERT INTO `product_view_user` VALUES (215, 579, 38, '2021-06-16 08:03:58');
INSERT INTO `product_view_user` VALUES (216, 579, 55, '2021-06-16 13:50:58');
INSERT INTO `product_view_user` VALUES (217, 579, 55, '2021-06-16 21:36:40');
INSERT INTO `product_view_user` VALUES (218, 587, 59, '2021-06-21 18:30:33');
INSERT INTO `product_view_user` VALUES (219, 585, 59, '2021-06-21 18:31:08');
INSERT INTO `product_view_user` VALUES (220, 571, 62, '2021-06-25 14:32:40');
INSERT INTO `product_view_user` VALUES (221, 571, 62, '2021-06-25 14:33:22');
INSERT INTO `product_view_user` VALUES (222, 571, 62, '2021-06-25 14:54:06');
INSERT INTO `product_view_user` VALUES (223, 571, 62, '2021-06-25 15:06:28');
INSERT INTO `product_view_user` VALUES (224, 581, 49, '2021-06-28 09:37:06');
INSERT INTO `product_view_user` VALUES (225, 580, 49, '2021-06-28 09:37:52');
INSERT INTO `product_view_user` VALUES (226, 581, 49, '2021-06-28 09:39:09');
INSERT INTO `product_view_user` VALUES (227, 583, 63, '2021-06-29 15:33:07');
INSERT INTO `product_view_user` VALUES (228, 583, 63, '2021-06-29 15:39:32');
INSERT INTO `product_view_user` VALUES (229, 583, 63, '2021-06-29 15:40:37');
INSERT INTO `product_view_user` VALUES (230, 579, 63, '2021-06-29 15:41:13');
INSERT INTO `product_view_user` VALUES (231, 579, 66, '2021-07-02 14:37:58');
INSERT INTO `product_view_user` VALUES (232, 583, 65, '2021-07-02 14:38:05');
INSERT INTO `product_view_user` VALUES (233, 590, 66, '2021-07-02 14:39:24');
INSERT INTO `product_view_user` VALUES (234, 579, 66, '2021-07-02 14:40:25');
INSERT INTO `product_view_user` VALUES (235, 590, 66, '2021-07-02 14:42:22');
INSERT INTO `product_view_user` VALUES (236, 579, 66, '2021-07-02 14:56:43');
INSERT INTO `product_view_user` VALUES (237, 579, 66, '2021-07-02 14:57:45');
INSERT INTO `product_view_user` VALUES (238, 579, 66, '2021-07-02 14:58:24');
INSERT INTO `product_view_user` VALUES (239, 587, 68, '2021-07-04 15:26:19');
INSERT INTO `product_view_user` VALUES (240, 581, 74, '2021-07-11 09:25:57');
INSERT INTO `product_view_user` VALUES (241, 575, 79, '2021-07-16 15:49:38');
INSERT INTO `product_view_user` VALUES (242, 579, 79, '2021-07-16 15:51:16');
INSERT INTO `product_view_user` VALUES (243, 579, 79, '2021-07-17 15:18:12');
INSERT INTO `product_view_user` VALUES (244, 581, 85, '2021-07-25 12:52:44');
INSERT INTO `product_view_user` VALUES (245, 583, 85, '2021-07-25 12:52:55');
INSERT INTO `product_view_user` VALUES (246, 583, 85, '2021-07-25 12:56:51');
INSERT INTO `product_view_user` VALUES (247, 577, 85, '2021-07-25 12:57:16');
INSERT INTO `product_view_user` VALUES (248, 571, 85, '2021-07-25 14:00:31');
INSERT INTO `product_view_user` VALUES (249, 591, 85, '2021-07-25 14:00:39');
INSERT INTO `product_view_user` VALUES (250, 580, 85, '2021-07-25 14:00:56');
INSERT INTO `product_view_user` VALUES (251, 580, 85, '2021-07-25 14:01:59');
INSERT INTO `product_view_user` VALUES (252, 581, 85, '2021-07-25 14:02:19');
INSERT INTO `product_view_user` VALUES (253, 591, 85, '2021-07-25 14:02:44');
INSERT INTO `product_view_user` VALUES (254, 591, 85, '2021-07-25 14:03:15');
INSERT INTO `product_view_user` VALUES (255, 591, 85, '2021-07-25 14:03:56');
INSERT INTO `product_view_user` VALUES (256, 591, 85, '2021-07-25 14:04:55');
INSERT INTO `product_view_user` VALUES (257, 575, 85, '2021-07-25 14:05:02');
INSERT INTO `product_view_user` VALUES (258, 581, 85, '2021-07-25 14:05:09');
INSERT INTO `product_view_user` VALUES (259, 580, 85, '2021-07-25 14:07:38');
INSERT INTO `product_view_user` VALUES (260, 580, 85, '2021-07-25 14:07:52');
INSERT INTO `product_view_user` VALUES (261, 583, 85, '2021-07-25 14:08:04');
INSERT INTO `product_view_user` VALUES (262, 591, 85, '2021-07-25 14:08:29');
INSERT INTO `product_view_user` VALUES (263, 580, 85, '2021-07-25 14:10:26');
INSERT INTO `product_view_user` VALUES (264, 580, 85, '2021-07-25 14:10:26');
INSERT INTO `product_view_user` VALUES (265, 591, 85, '2021-07-25 14:10:45');
INSERT INTO `product_view_user` VALUES (266, 580, 85, '2021-07-25 14:15:46');
INSERT INTO `product_view_user` VALUES (267, 580, 85, '2021-07-25 14:15:57');
INSERT INTO `product_view_user` VALUES (268, 581, 85, '2021-07-25 22:14:11');
INSERT INTO `product_view_user` VALUES (269, 579, 90, '2021-07-30 22:09:56');
INSERT INTO `product_view_user` VALUES (270, 579, 90, '2021-07-30 22:10:44');
INSERT INTO `product_view_user` VALUES (271, 579, 90, '2021-07-30 22:11:55');
INSERT INTO `product_view_user` VALUES (272, 575, 90, '2021-07-30 22:12:04');
INSERT INTO `product_view_user` VALUES (273, 590, 90, '2021-07-30 22:12:54');
INSERT INTO `product_view_user` VALUES (274, 590, 90, '2021-07-30 22:13:22');
INSERT INTO `product_view_user` VALUES (275, 571, 90, '2021-07-30 22:34:15');
INSERT INTO `product_view_user` VALUES (276, 571, 90, '2021-07-30 22:48:27');
INSERT INTO `product_view_user` VALUES (277, 582, 90, '2021-07-30 22:50:19');
INSERT INTO `product_view_user` VALUES (278, 571, 90, '2021-08-01 11:14:40');
INSERT INTO `product_view_user` VALUES (279, 590, 90, '2021-08-01 11:15:51');
INSERT INTO `product_view_user` VALUES (280, 579, 90, '2021-08-01 11:16:04');
INSERT INTO `product_view_user` VALUES (281, 579, 90, '2021-08-01 11:16:05');
INSERT INTO `product_view_user` VALUES (282, 579, 90, '2021-08-01 20:11:34');
INSERT INTO `product_view_user` VALUES (283, 579, 91, '2021-08-03 14:27:03');
INSERT INTO `product_view_user` VALUES (284, 584, 92, '2021-08-04 17:51:44');
INSERT INTO `product_view_user` VALUES (285, 579, 90, '2021-08-04 20:50:48');
INSERT INTO `product_view_user` VALUES (286, 579, 93, '2021-08-08 15:36:01');
INSERT INTO `product_view_user` VALUES (287, 579, 93, '2021-08-08 15:36:25');
INSERT INTO `product_view_user` VALUES (288, 579, 93, '2021-08-08 15:58:56');
INSERT INTO `product_view_user` VALUES (289, 578, 93, '2021-08-09 10:51:45');
INSERT INTO `product_view_user` VALUES (290, 574, 47, '2021-08-10 16:28:42');
INSERT INTO `product_view_user` VALUES (291, 571, 47, '2021-08-10 16:28:52');
INSERT INTO `product_view_user` VALUES (292, 574, 47, '2021-08-10 16:53:08');
INSERT INTO `product_view_user` VALUES (293, 571, 47, '2021-08-10 16:58:15');
INSERT INTO `product_view_user` VALUES (294, 574, 47, '2021-08-10 23:12:46');
INSERT INTO `product_view_user` VALUES (295, 579, 47, '2021-08-10 23:16:14');
INSERT INTO `product_view_user` VALUES (296, 579, 47, '2021-08-10 23:25:20');
INSERT INTO `product_view_user` VALUES (297, 590, 47, '2021-08-11 11:54:12');
INSERT INTO `product_view_user` VALUES (298, 586, 47, '2021-08-11 11:54:36');
INSERT INTO `product_view_user` VALUES (299, 583, 41, '2021-08-11 19:21:38');
INSERT INTO `product_view_user` VALUES (300, 580, 41, '2021-08-11 19:22:04');
INSERT INTO `product_view_user` VALUES (301, 583, 41, '2021-08-11 19:22:18');
INSERT INTO `product_view_user` VALUES (302, 586, 100, '2021-08-12 06:51:53');
INSERT INTO `product_view_user` VALUES (303, 586, 100, '2021-08-12 06:53:35');
INSERT INTO `product_view_user` VALUES (304, 586, 100, '2021-08-12 06:54:22');
INSERT INTO `product_view_user` VALUES (305, 586, 100, '2021-08-12 06:55:35');
INSERT INTO `product_view_user` VALUES (306, 586, 100, '2021-08-12 06:56:22');
INSERT INTO `product_view_user` VALUES (307, 579, 98, '2021-08-12 12:40:19');
INSERT INTO `product_view_user` VALUES (308, 579, 98, '2021-08-12 12:40:38');
INSERT INTO `product_view_user` VALUES (309, 580, 101, '2021-08-12 16:03:33');
INSERT INTO `product_view_user` VALUES (310, 581, 101, '2021-08-12 16:03:33');
INSERT INTO `product_view_user` VALUES (311, 579, 98, '2021-08-12 16:32:19');
INSERT INTO `product_view_user` VALUES (312, 581, 101, '2021-08-12 17:06:03');
INSERT INTO `product_view_user` VALUES (313, 581, 101, '2021-08-12 17:21:38');
INSERT INTO `product_view_user` VALUES (314, 583, 101, '2021-08-12 17:22:37');
INSERT INTO `product_view_user` VALUES (315, 577, 100, '2021-08-12 21:30:06');
INSERT INTO `product_view_user` VALUES (316, 578, 100, '2021-08-12 21:30:48');
INSERT INTO `product_view_user` VALUES (317, 575, 101, '2021-08-13 08:01:38');
INSERT INTO `product_view_user` VALUES (318, 578, 101, '2021-08-13 08:02:08');
INSERT INTO `product_view_user` VALUES (319, 581, 101, '2021-08-13 08:56:05');
INSERT INTO `product_view_user` VALUES (320, 578, 101, '2021-08-13 08:57:04');
INSERT INTO `product_view_user` VALUES (321, 581, 101, '2021-08-13 08:57:08');
INSERT INTO `product_view_user` VALUES (322, 591, 101, '2021-08-13 08:57:22');
INSERT INTO `product_view_user` VALUES (323, 590, 101, '2021-08-13 08:58:01');
INSERT INTO `product_view_user` VALUES (324, 581, 101, '2021-08-14 02:11:57');
INSERT INTO `product_view_user` VALUES (325, 580, 101, '2021-08-14 02:12:14');
INSERT INTO `product_view_user` VALUES (326, 580, 101, '2021-08-14 02:13:46');
INSERT INTO `product_view_user` VALUES (327, 581, 101, '2021-08-14 09:22:11');
INSERT INTO `product_view_user` VALUES (328, 583, 103, '2021-08-14 11:19:21');
INSERT INTO `product_view_user` VALUES (329, 590, 101, '2021-08-14 11:27:33');
INSERT INTO `product_view_user` VALUES (330, 581, 101, '2021-08-14 18:23:40');
INSERT INTO `product_view_user` VALUES (331, 591, 101, '2021-08-14 18:24:38');
INSERT INTO `product_view_user` VALUES (332, 581, 101, '2021-08-14 18:24:47');
INSERT INTO `product_view_user` VALUES (333, 581, 101, '2021-08-14 18:26:51');
INSERT INTO `product_view_user` VALUES (334, 581, 101, '2021-08-14 18:31:03');
INSERT INTO `product_view_user` VALUES (335, 581, 101, '2021-08-15 01:36:05');
INSERT INTO `product_view_user` VALUES (336, 585, 101, '2021-08-15 01:36:53');
INSERT INTO `product_view_user` VALUES (337, 586, 101, '2021-08-15 01:37:47');
INSERT INTO `product_view_user` VALUES (338, 585, 101, '2021-08-15 17:19:44');
INSERT INTO `product_view_user` VALUES (339, 585, 101, '2021-08-15 17:21:03');
INSERT INTO `product_view_user` VALUES (340, 590, 101, '2021-08-15 17:21:28');
INSERT INTO `product_view_user` VALUES (341, 581, 101, '2021-08-15 17:21:50');
INSERT INTO `product_view_user` VALUES (342, 581, 101, '2021-08-16 09:38:18');
INSERT INTO `product_view_user` VALUES (343, 581, 101, '2021-08-16 09:58:03');
INSERT INTO `product_view_user` VALUES (344, 581, 101, '2021-08-16 10:01:40');
INSERT INTO `product_view_user` VALUES (345, 581, 101, '2021-08-16 10:04:32');
INSERT INTO `product_view_user` VALUES (346, 583, 101, '2021-08-16 10:04:40');
INSERT INTO `product_view_user` VALUES (347, 581, 101, '2021-08-16 10:04:55');
INSERT INTO `product_view_user` VALUES (348, 581, 101, '2021-08-16 10:06:59');
INSERT INTO `product_view_user` VALUES (349, 581, 101, '2021-08-16 10:07:04');
INSERT INTO `product_view_user` VALUES (350, 581, 101, '2021-08-16 10:07:26');
INSERT INTO `product_view_user` VALUES (351, 583, 101, '2021-08-16 10:24:03');
INSERT INTO `product_view_user` VALUES (352, 581, 101, '2021-08-16 10:24:04');
INSERT INTO `product_view_user` VALUES (353, 581, 101, '2021-08-16 10:35:54');
INSERT INTO `product_view_user` VALUES (354, 581, 101, '2021-08-16 10:58:50');
INSERT INTO `product_view_user` VALUES (355, 581, 101, '2021-08-16 11:00:08');
INSERT INTO `product_view_user` VALUES (356, 581, 101, '2021-08-16 11:00:20');
INSERT INTO `product_view_user` VALUES (357, 581, 101, '2021-08-16 11:11:25');
INSERT INTO `product_view_user` VALUES (358, 581, 101, '2021-08-16 11:15:13');
INSERT INTO `product_view_user` VALUES (359, 581, 101, '2021-08-16 11:23:18');
INSERT INTO `product_view_user` VALUES (360, 581, 101, '2021-08-16 11:45:41');
INSERT INTO `product_view_user` VALUES (361, 581, 101, '2021-08-16 11:57:08');
INSERT INTO `product_view_user` VALUES (362, 571, 101, '2021-08-17 04:57:04');
INSERT INTO `product_view_user` VALUES (363, 585, 101, '2021-08-17 04:58:01');
INSERT INTO `product_view_user` VALUES (364, 585, 101, '2021-08-17 04:58:01');
INSERT INTO `product_view_user` VALUES (365, 589, 101, '2021-08-17 04:59:17');
INSERT INTO `product_view_user` VALUES (366, 590, 101, '2021-08-17 04:59:51');
INSERT INTO `product_view_user` VALUES (367, 578, 101, '2021-08-17 16:04:56');
INSERT INTO `product_view_user` VALUES (368, 584, 105, '2021-08-18 09:42:00');
INSERT INTO `product_view_user` VALUES (369, 579, 105, '2021-08-18 09:43:04');
INSERT INTO `product_view_user` VALUES (370, 579, 105, '2021-08-18 09:43:51');
INSERT INTO `product_view_user` VALUES (371, 579, 105, '2021-08-18 09:45:06');
INSERT INTO `product_view_user` VALUES (372, 584, 105, '2021-08-18 09:45:39');
INSERT INTO `product_view_user` VALUES (373, 585, 105, '2021-08-18 09:45:49');
INSERT INTO `product_view_user` VALUES (374, 587, 105, '2021-08-18 09:46:03');
INSERT INTO `product_view_user` VALUES (375, 586, 105, '2021-08-18 09:46:10');
INSERT INTO `product_view_user` VALUES (376, 590, 105, '2021-08-18 09:47:18');
INSERT INTO `product_view_user` VALUES (377, 579, 105, '2021-08-18 09:47:52');
INSERT INTO `product_view_user` VALUES (378, 592, 101, '2021-08-18 09:51:27');
INSERT INTO `product_view_user` VALUES (379, 579, 108, '2021-08-18 10:00:02');
INSERT INTO `product_view_user` VALUES (380, 579, 108, '2021-08-18 10:04:53');
INSERT INTO `product_view_user` VALUES (381, 590, 108, '2021-08-18 10:05:57');
INSERT INTO `product_view_user` VALUES (382, 575, 108, '2021-08-18 10:07:16');
INSERT INTO `product_view_user` VALUES (383, 571, 108, '2021-08-18 10:12:17');
INSERT INTO `product_view_user` VALUES (384, 579, 108, '2021-08-18 10:21:37');
INSERT INTO `product_view_user` VALUES (385, 590, 101, '2021-08-18 16:36:27');
INSERT INTO `product_view_user` VALUES (386, 591, 110, '2021-08-18 17:24:35');
INSERT INTO `product_view_user` VALUES (387, 578, 101, '2021-08-19 19:27:58');
INSERT INTO `product_view_user` VALUES (388, 580, 47, '2021-08-19 22:38:07');
INSERT INTO `product_view_user` VALUES (389, 580, 47, '2021-08-20 18:53:54');
INSERT INTO `product_view_user` VALUES (390, 591, 117, '2021-08-21 14:53:52');
INSERT INTO `product_view_user` VALUES (391, 591, 117, '2021-08-21 14:55:02');
INSERT INTO `product_view_user` VALUES (392, 571, 118, '2021-08-21 18:35:35');
INSERT INTO `product_view_user` VALUES (393, 592, 118, '2021-08-21 18:35:39');
INSERT INTO `product_view_user` VALUES (394, 592, 118, '2021-08-21 18:37:59');
INSERT INTO `product_view_user` VALUES (395, 578, 118, '2021-08-21 18:38:12');
INSERT INTO `product_view_user` VALUES (396, 578, 118, '2021-08-21 18:39:49');
INSERT INTO `product_view_user` VALUES (397, 576, 118, '2021-08-21 18:40:11');
INSERT INTO `product_view_user` VALUES (398, 576, 118, '2021-08-21 18:41:12');
INSERT INTO `product_view_user` VALUES (399, 577, 118, '2021-08-21 18:44:57');
INSERT INTO `product_view_user` VALUES (400, 583, 118, '2021-08-21 18:46:07');
INSERT INTO `product_view_user` VALUES (401, 585, 119, '2021-08-21 21:04:00');
INSERT INTO `product_view_user` VALUES (402, 587, 119, '2021-08-21 21:04:13');
INSERT INTO `product_view_user` VALUES (403, 591, 47, '2021-08-22 18:27:14');
INSERT INTO `product_view_user` VALUES (404, 591, 47, '2021-08-22 18:49:35');
INSERT INTO `product_view_user` VALUES (405, 575, 47, '2021-08-22 18:52:43');
INSERT INTO `product_view_user` VALUES (406, 575, 47, '2021-08-22 19:04:47');
INSERT INTO `product_view_user` VALUES (407, 575, 47, '2021-08-23 08:56:37');
INSERT INTO `product_view_user` VALUES (408, 581, 47, '2021-08-23 08:58:23');
INSERT INTO `product_view_user` VALUES (409, 576, 47, '2021-08-23 16:53:49');
INSERT INTO `product_view_user` VALUES (410, 578, 47, '2021-08-23 17:05:42');
INSERT INTO `product_view_user` VALUES (411, 582, 47, '2021-08-23 17:12:04');
INSERT INTO `product_view_user` VALUES (412, 582, 47, '2021-08-23 20:28:43');
INSERT INTO `product_view_user` VALUES (413, 582, 47, '2021-08-24 07:15:22');
INSERT INTO `product_view_user` VALUES (414, 585, 120, '2021-08-24 08:55:33');
INSERT INTO `product_view_user` VALUES (415, 585, 120, '2021-08-24 08:57:56');
INSERT INTO `product_view_user` VALUES (416, 585, 120, '2021-08-24 09:03:20');
INSERT INTO `product_view_user` VALUES (417, 585, 120, '2021-08-24 09:56:45');
INSERT INTO `product_view_user` VALUES (418, 587, 120, '2021-08-24 14:45:07');
INSERT INTO `product_view_user` VALUES (419, 586, 120, '2021-08-24 14:45:35');
INSERT INTO `product_view_user` VALUES (420, 585, 120, '2021-08-24 14:45:55');
INSERT INTO `product_view_user` VALUES (421, 587, 120, '2021-08-24 14:46:20');
INSERT INTO `product_view_user` VALUES (422, 578, 122, '2021-08-25 02:49:01');
INSERT INTO `product_view_user` VALUES (423, 571, 122, '2021-08-25 02:49:58');
INSERT INTO `product_view_user` VALUES (424, 578, 122, '2021-08-25 02:50:40');
INSERT INTO `product_view_user` VALUES (425, 590, 122, '2021-08-25 02:59:04');
INSERT INTO `product_view_user` VALUES (426, 578, 122, '2021-08-25 02:59:28');
INSERT INTO `product_view_user` VALUES (427, 587, 123, '2021-08-25 13:53:19');
INSERT INTO `product_view_user` VALUES (428, 591, 123, '2021-08-25 14:28:03');
INSERT INTO `product_view_user` VALUES (429, 591, 123, '2021-08-25 15:23:41');
INSERT INTO `product_view_user` VALUES (430, 591, 123, '2021-08-25 15:40:17');
INSERT INTO `product_view_user` VALUES (431, 577, 123, '2021-08-25 15:48:41');
INSERT INTO `product_view_user` VALUES (432, 578, 123, '2021-08-25 15:49:33');
INSERT INTO `product_view_user` VALUES (433, 591, 123, '2021-08-25 15:50:48');
INSERT INTO `product_view_user` VALUES (434, 581, 123, '2021-08-25 15:51:56');
INSERT INTO `product_view_user` VALUES (435, 580, 123, '2021-08-25 15:54:03');
INSERT INTO `product_view_user` VALUES (436, 576, 101, '2021-08-25 18:42:40');
INSERT INTO `product_view_user` VALUES (437, 591, 101, '2021-08-25 18:44:29');
INSERT INTO `product_view_user` VALUES (438, 578, 101, '2021-08-25 18:45:04');
INSERT INTO `product_view_user` VALUES (439, 587, 101, '2021-08-25 18:48:49');
INSERT INTO `product_view_user` VALUES (440, 585, 101, '2021-08-25 18:49:19');
INSERT INTO `product_view_user` VALUES (441, 587, 101, '2021-08-25 18:49:47');
INSERT INTO `product_view_user` VALUES (442, 587, 101, '2021-08-25 18:49:56');
INSERT INTO `product_view_user` VALUES (443, 591, 123, '2021-08-25 23:36:17');
INSERT INTO `product_view_user` VALUES (444, 591, 123, '2021-08-25 23:37:16');
INSERT INTO `product_view_user` VALUES (445, 580, 123, '2021-08-25 23:38:25');
INSERT INTO `product_view_user` VALUES (446, 575, 123, '2021-08-26 02:39:29');
INSERT INTO `product_view_user` VALUES (447, 587, 123, '2021-08-26 02:41:01');
INSERT INTO `product_view_user` VALUES (448, 588, 123, '2021-08-26 02:42:29');
INSERT INTO `product_view_user` VALUES (449, 589, 123, '2021-08-26 02:43:51');
INSERT INTO `product_view_user` VALUES (450, 576, 123, '2021-08-26 02:44:17');
INSERT INTO `product_view_user` VALUES (451, 577, 123, '2021-08-26 02:44:54');
INSERT INTO `product_view_user` VALUES (452, 576, 123, '2021-08-26 02:46:05');
INSERT INTO `product_view_user` VALUES (453, 581, 123, '2021-08-26 02:46:33');
INSERT INTO `product_view_user` VALUES (454, 577, 123, '2021-08-26 02:47:23');
INSERT INTO `product_view_user` VALUES (455, 577, 123, '2021-08-26 02:47:35');
INSERT INTO `product_view_user` VALUES (456, 591, 123, '2021-08-26 10:05:28');
INSERT INTO `product_view_user` VALUES (457, 579, 122, '2021-08-26 11:36:11');
INSERT INTO `product_view_user` VALUES (458, 591, 123, '2021-08-26 16:33:33');
INSERT INTO `product_view_user` VALUES (459, 591, 123, '2021-08-26 18:29:54');
INSERT INTO `product_view_user` VALUES (460, 580, 123, '2021-08-26 18:42:57');
INSERT INTO `product_view_user` VALUES (461, 591, 123, '2021-08-26 18:43:53');
INSERT INTO `product_view_user` VALUES (462, 591, 123, '2021-08-26 20:34:17');
INSERT INTO `product_view_user` VALUES (463, 591, 123, '2021-08-26 20:35:39');
INSERT INTO `product_view_user` VALUES (464, 583, 122, '2021-08-26 22:05:01');
INSERT INTO `product_view_user` VALUES (465, 577, 123, '2021-08-27 10:44:21');
INSERT INTO `product_view_user` VALUES (466, 592, 118, '2021-08-27 18:21:42');
INSERT INTO `product_view_user` VALUES (467, 591, 118, '2021-08-27 18:22:08');
INSERT INTO `product_view_user` VALUES (468, 591, 123, '2021-08-27 23:50:17');
INSERT INTO `product_view_user` VALUES (469, 571, 123, '2021-08-27 23:53:16');
INSERT INTO `product_view_user` VALUES (470, 592, 123, '2021-08-27 23:54:16');
INSERT INTO `product_view_user` VALUES (471, 587, 123, '2021-08-27 23:54:30');
INSERT INTO `product_view_user` VALUES (472, 580, 122, '2021-08-28 00:48:29');
INSERT INTO `product_view_user` VALUES (473, 591, 122, '2021-08-28 00:49:42');
INSERT INTO `product_view_user` VALUES (474, 583, 122, '2021-08-28 00:50:27');
INSERT INTO `product_view_user` VALUES (475, 580, 122, '2021-08-28 00:51:36');
INSERT INTO `product_view_user` VALUES (476, 587, 123, '2021-08-28 00:53:03');
INSERT INTO `product_view_user` VALUES (477, 591, 118, '2021-08-28 09:58:56');
INSERT INTO `product_view_user` VALUES (478, 591, 118, '2021-08-28 09:59:02');
INSERT INTO `product_view_user` VALUES (479, 591, 118, '2021-08-28 09:59:14');
INSERT INTO `product_view_user` VALUES (480, 582, 118, '2021-08-28 19:34:04');
INSERT INTO `product_view_user` VALUES (481, 591, 118, '2021-08-28 19:34:59');
INSERT INTO `product_view_user` VALUES (482, 579, 47, '2021-08-28 20:56:06');
INSERT INTO `product_view_user` VALUES (483, 580, 122, '2021-08-30 02:47:34');
INSERT INTO `product_view_user` VALUES (484, 578, 101, '2021-08-30 08:43:31');
INSERT INTO `product_view_user` VALUES (485, 578, 101, '2021-08-30 08:51:16');
INSERT INTO `product_view_user` VALUES (486, 579, 118, '2021-08-30 11:22:06');
INSERT INTO `product_view_user` VALUES (487, 579, 118, '2021-08-30 11:22:23');
INSERT INTO `product_view_user` VALUES (488, 579, 118, '2021-08-30 11:23:56');
INSERT INTO `product_view_user` VALUES (489, 579, 118, '2021-08-30 11:24:01');
INSERT INTO `product_view_user` VALUES (490, 579, 118, '2021-08-30 11:26:31');
INSERT INTO `product_view_user` VALUES (491, 579, 118, '2021-08-30 15:57:00');
INSERT INTO `product_view_user` VALUES (492, 579, 118, '2021-08-30 15:59:58');
INSERT INTO `product_view_user` VALUES (493, 582, 118, '2021-08-30 16:00:40');
INSERT INTO `product_view_user` VALUES (494, 576, 101, '2021-09-01 04:36:41');
INSERT INTO `product_view_user` VALUES (495, 576, 101, '2021-09-01 06:55:39');
INSERT INTO `product_view_user` VALUES (496, 576, 101, '2021-09-01 07:43:02');
INSERT INTO `product_view_user` VALUES (497, 581, 130, '2021-09-01 18:33:30');
INSERT INTO `product_view_user` VALUES (498, 581, 130, '2021-09-01 18:33:32');
INSERT INTO `product_view_user` VALUES (499, 590, 130, '2021-09-01 18:34:19');
INSERT INTO `product_view_user` VALUES (500, 590, 130, '2021-09-01 19:06:59');
INSERT INTO `product_view_user` VALUES (501, 590, 130, '2021-09-02 12:53:08');
INSERT INTO `product_view_user` VALUES (502, 590, 130, '2021-09-02 13:20:04');
INSERT INTO `product_view_user` VALUES (503, 582, 118, '2021-09-04 14:07:37');

-- ----------------------------
-- Table structure for reg_sale_offline
-- ----------------------------
DROP TABLE IF EXISTS `reg_sale_offline`;
CREATE TABLE `reg_sale_offline`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `invoice_image` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `registrant` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `registrant_email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `start_warranty` date NOT NULL,
  `register_date` datetime NOT NULL,
  `updated_date` datetime NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `warehouse_id` int NOT NULL,
  `shop_name` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `notes` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 63 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reg_sale_offline
-- ----------------------------
INSERT INTO `reg_sale_offline` VALUES (1, '', 'Leo Beenhakker', 'leon.photo.net@gmail.com', '2021-03-25', '2021-03-25 16:23:59', NULL, NULL, 0, 'Dunia Rambut', '');
INSERT INTO `reg_sale_offline` VALUES (2, 'regofflines/52d8e12eeda7d4c06cb65c8bb5989c19.jpg', 'Isna Kusuma Nintyastuti', 'isnasuninto@gmail.com', '2021-03-26', '2021-03-26 16:19:27', NULL, NULL, 0, 'Barbersupply_indo', '');
INSERT INTO `reg_sale_offline` VALUES (3, '', 'Mario Danala Napitupulu', 'mario.corleone244@gmail.com', '2021-03-27', '2021-03-27 08:09:23', NULL, NULL, 0, 'Barbersupply_Indo', 'Tokopedia');
INSERT INTO `reg_sale_offline` VALUES (4, 'regofflines/fae610a5620e8a96204dd464d7d8a8c3.jpg', 'Ali Mauludin', 'malimauludin@gmail.com', '2021-04-08', '2021-04-08 07:06:44', NULL, NULL, 0, 'Toko FEN', 'Jalan ABC no 1 Bandung');
INSERT INTO `reg_sale_offline` VALUES (5, 'regofflines/97a667123221eb1fdd402dc3b0ee52ef.jpg', 'Hendrawan Nasution', 'hendra1st@gmail.com', '2021-04-17', '2021-04-17 15:28:17', NULL, NULL, 0, 'Barbersupply_Indo', 'Luar biasa nih clipper satu untuk semua bersih cukuran dan pangkasnya gak ada yang bersisa, mantaplah pokoknya');
INSERT INTO `reg_sale_offline` VALUES (6, 'regofflines/4b924f46da75e6002b6859c403c3eed8.png', 'Alif Rahman Hakim', 'hakimalifrahman@gmail.com', '2021-04-20', '2021-04-20 19:48:37', NULL, NULL, 0, 'Barbersupply_indo', 'Tokopedia');
INSERT INTO `reg_sale_offline` VALUES (7, '', 'Alif Rahman Hakim', 'hakimalifrahman@gmail.com', '2021-04-27', '2021-04-27 17:24:50', NULL, NULL, 0, 'Dunia Rambut', '');
INSERT INTO `reg_sale_offline` VALUES (8, 'regofflines/35a37495c2f78249abb3eb73b75feaed.jpg', 'Alif Rahman Hakim', 'hakimalifrahman@gmail.com', '2021-04-27', '2021-04-27 17:28:46', NULL, NULL, 0, 'Dunia Rambut', '');
INSERT INTO `reg_sale_offline` VALUES (9, 'regofflines/f9ec2470fe761aae1137567f0d602271.png', 'Olivia Adeline', 'olivia.wahlmpm@gmail.com', '2021-05-03', '2021-05-03 22:18:51', NULL, NULL, 0, 'Gudang Rambut', '');
INSERT INTO `reg_sale_offline` VALUES (10, 'regofflines/60a6373379b98815080d4d03929d3802.jpg', 'M Natsir', 'wong_geek@yahoo.com', '2021-05-06', '2021-05-06 21:29:52', NULL, NULL, 0, 'Nasir', '');
INSERT INTO `reg_sale_offline` VALUES (11, 'regofflines/5dd002ee631352b8e57f99f87768a63e.jpg', 'Febry Eka', 'mangbaray@gmail.com', '2021-05-11', '2021-05-11 21:12:41', NULL, NULL, 0, 'Mangbaray barber', '');
INSERT INTO `reg_sale_offline` VALUES (12, 'regofflines/914a51caac2cc64517b120183e6f76ca.jpg', 'Tjiu Sandi Wilianto', 'Tjusandi@gmail.com', '2021-05-16', '2021-05-16 18:18:53', NULL, NULL, 0, 'Barbersupply indo', '');
INSERT INTO `reg_sale_offline` VALUES (13, 'regofflines/a084fc67e3e24208a7414134358bd860.jpg', 'Suby Anggadibrata', 'Subyanggadibrata@gmail.com', '2021-05-19', '2021-05-19 16:11:32', NULL, NULL, 0, 'Barbersupply_indo', 'Via tokopedia');
INSERT INTO `reg_sale_offline` VALUES (14, 'regofflines/abc4df9f1132d8d332cd770c53979e18.jpg', 'Carsoma', 'Sq.carsoma@gmail.com', '2021-05-22', '2021-05-22 20:06:31', NULL, NULL, 0, 'Cygnus Gadget Store', 'Mesin Cukur');
INSERT INTO `reg_sale_offline` VALUES (15, 'regofflines/fbeb02babc2f016d8be63bd3fb2138e0.jpg', 'Dhifan Fathin Hermawan', 'dhifanfhermawan@gmail.com', '2021-05-23', '2021-05-23 17:54:03', NULL, NULL, 0, 'Barbersuply_indo', '');
INSERT INTO `reg_sale_offline` VALUES (16, '', 'Edward Jahja Saputra', 'edward.jahja.saputra@gmail.com', '2021-05-27', '2021-05-27 22:17:34', NULL, NULL, 0, 'Westminster Barber & Coffee', 'Bonus');
INSERT INTO `reg_sale_offline` VALUES (17, 'regofflines/cb6b817b3b391d60b8f733b20c4d4792.jpg', 'Waris Nugroho', 'agungwaris@gmail.com', '2021-06-01', '2021-06-01 08:55:03', NULL, NULL, 0, 'Cygnus Gadget Store', '');
INSERT INTO `reg_sale_offline` VALUES (18, 'regofflines/5b44000b55b0848901a5cd0012d13485.jpeg', 'Jessy', 'julianaekaputri@yahoo.com', '2021-06-02', '2021-06-02 21:15:17', NULL, NULL, 0, 'GUDANG RAMBUT TOKOPEDIA', 'TOKOPEDIA');
INSERT INTO `reg_sale_offline` VALUES (19, 'regofflines/d2f8c9d2abcd0378399f657e53403a3f.jpg', 'Waris Nugroho', 'agungwaris@gmail.com', '2021-06-04', '2021-06-04 09:33:36', NULL, NULL, 0, 'Alatcukurrambut.com', '');
INSERT INTO `reg_sale_offline` VALUES (20, '', 'Gary Tan', 'gary.tan@wahlsea.com', '2021-06-11', '2021-06-11 10:13:03', NULL, NULL, 0, 'test', '');
INSERT INTO `reg_sale_offline` VALUES (21, 'regofflines/df26667c7fbd48b8f67a2de0915db969.jpeg', 'Hadi Prawoto', 'adhyphe@yahoo.com', '2021-06-14', '2021-06-14 15:40:19', NULL, NULL, 0, 'Cygnus Gadget Store', 'Wahl Legend 5 Star Series ');
INSERT INTO `reg_sale_offline` VALUES (22, 'regofflines/06dcb66a2fa231d1d734f08aeb0f2cf2.jpg', 'Brillian Putra S', 'brillianputras1@gmail.com', '2021-06-16', '2021-06-16 21:25:51', NULL, NULL, 0, 'Concordia Barbershop', 'WAHL SUPERTAPER');
INSERT INTO `reg_sale_offline` VALUES (23, 'regofflines/8e51d85317c4196f5b5b637c4ea6e767.jpg', 'AA. KURNIAWAN', 'aakurniawan01@gmail.com', '2021-06-21', '2021-06-21 11:19:52', NULL, NULL, 0, 'dpbarbersupply', 'Pembelian dilakukan secara online via shopee\r\nNama toko penjual dpbarbersupply');
INSERT INTO `reg_sale_offline` VALUES (24, '', 'Noval Priwa Ginting', 'novalg71@gmail.com', '2021-06-24', '2021-06-24 16:20:37', NULL, NULL, 0, 'Gudang Rambut', '');
INSERT INTO `reg_sale_offline` VALUES (25, 'regofflines/90a646041c74aa52ef2c1afe2d7bca38.jpeg', 'Dimas Ramadhan Putra', 'dimasramadhanp@yahoo.co.id', '2021-06-30', '2021-06-30 20:01:35', NULL, NULL, 0, 'Cygnus Gadget Store', '');
INSERT INTO `reg_sale_offline` VALUES (26, 'regofflines/3ae2f397a7211494a4887d82d7d7e150.jpeg', 'Dimas Ramadhan Putra', 'dimasramadhanp@yahoo.co.id', '2021-07-01', '2021-07-01 12:29:36', NULL, NULL, 0, 'Cygnus Gadget Store', '');
INSERT INTO `reg_sale_offline` VALUES (27, 'regofflines/d7f56e914bcc3a4835dfe9abae5f922d.jpeg', 'Hiu Khi On', 'Hiukhion@gmail.com', '2021-07-02', '2021-07-02 15:26:53', NULL, NULL, 0, 'Cleo Hub', '');
INSERT INTO `reg_sale_offline` VALUES (28, 'regofflines/d595e117f621be62b5c0045441523f61.jpg', 'Kevin Lee', 'holy_vinlee@yahoo.com', '2021-07-04', '2021-07-04 15:23:11', NULL, NULL, 0, 'BARBERSUPPLY_ID', '');
INSERT INTO `reg_sale_offline` VALUES (29, '', 'Grady Edbert Timothy', 'gradyedbert@yahoo.com', '2021-07-06', '2021-07-06 11:08:38', NULL, NULL, 0, 'Barbersupply_ID', '');
INSERT INTO `reg_sale_offline` VALUES (30, '', 'Dhifan Fathin Hermawan', 'dhifanfhermawan@gmail.com', '2021-07-11', '2021-07-11 10:25:06', NULL, NULL, 0, 'Barbersuply_indo', '');
INSERT INTO `reg_sale_offline` VALUES (31, 'regofflines/13ef9c30042f2db1d90f30b96065018b.jpeg', 'Joshua Nathanael Afan', 'Joshua.afan@outlook.com', '2021-07-12', '2021-07-12 08:08:03', NULL, NULL, 0, 'BARBERSUPPLY_ID', '');
INSERT INTO `reg_sale_offline` VALUES (32, '', 'Ud Beauty', 'Udbeautepekanbaru@gmail.com', '2021-07-14', '2021-07-14 10:41:41', NULL, NULL, 0, 'Ud Beaute', 'Registrasi kartu garansi');
INSERT INTO `reg_sale_offline` VALUES (33, 'regofflines/8bcf2b935d9bdd437a698d6a13ef14ff.jpg', 'Ud Beauty', 'Udbeautepekanbaru@gmail.com', '2021-07-14', '2021-07-14 11:19:07', NULL, NULL, 0, 'Ud Beaute', 'Registrasi kartu garansi');
INSERT INTO `reg_sale_offline` VALUES (34, '', 'Kuncoro Ambra Zamzani', 'kukun.zamzani@gmail.com', '2021-07-14', '2021-07-14 18:24:50', NULL, NULL, 0, 'KanaKana', 'Narogong Cantik IV');
INSERT INTO `reg_sale_offline` VALUES (35, '', 'Ud Beauty', 'Udbeautepekanbaru@gmail.com', '2021-07-17', '2021-07-17 17:38:50', NULL, NULL, 0, 'Ud Beaute', 'Registrasi kartu garansi');
INSERT INTO `reg_sale_offline` VALUES (36, 'regofflines/3ee04f3cdc58edcc4450452f3d14ff28.jpg', 'Handi Natif Saifudin', 'handinatif@gmail.com', '2021-07-18', '2021-07-18 13:06:47', NULL, NULL, 0, 'BARBERSUPPLY_ID', '');
INSERT INTO `reg_sale_offline` VALUES (37, 'regofflines/49f8520deae2b17ab1ef3a9cc98241b7.jpg', 'Mohamad Rajih Radiansyah', 'mohamadrajihradiansyah@gmail.com', '2021-07-23', '2021-07-23 09:32:05', NULL, NULL, 0, 'Cygnus gadget store', 'Melalui tokopedia');
INSERT INTO `reg_sale_offline` VALUES (38, 'regofflines/2a1d90bd0383c28b8cbcea1523708e65.jpeg', 'Maria Ulfa', 'mariab4b4@gmail.com', '2021-07-23', '2021-07-23 17:17:51', NULL, NULL, 0, 'Toko Roes ( Shopee)', '');
INSERT INTO `reg_sale_offline` VALUES (39, 'regofflines/91ec1523b59de265a146ab6f0e10914e.jpg', 'Lim Fui Liong', 'limfl.kmi@gmail.com', '2021-07-25', '2021-07-25 21:30:47', NULL, NULL, 0, 'Cygnus Gadget store ( Toko Pedia)', '');
INSERT INTO `reg_sale_offline` VALUES (40, '', 'Ud Beauty', 'Udbeautepekanbaru@gmail.com', '2021-07-29', '2021-07-29 14:48:55', NULL, NULL, 0, 'Ud Beaute', '');
INSERT INTO `reg_sale_offline` VALUES (41, '', 'Ud Beauty', 'Udbeautepekanbaru@gmail.com', '2021-07-29', '2021-07-29 14:50:26', NULL, NULL, 0, 'Ud Beaute', 'Registrasi garansi');
INSERT INTO `reg_sale_offline` VALUES (42, '', 'Ud Beauty', 'Udbeautepekanbaru@gmail.com', '2021-07-29', '2021-07-29 14:51:45', NULL, NULL, 0, 'Ud Beaute', 'Registrasi garansi');
INSERT INTO `reg_sale_offline` VALUES (43, '', 'Ud Beauty', 'Udbeautepekanbaru@gmail.com', '2021-08-02', '2021-08-02 10:14:34', NULL, NULL, 0, 'Ud Beaute', 'Registrasi kartu garansi');
INSERT INTO `reg_sale_offline` VALUES (44, '', 'Ud Beauty', 'Udbeautepekanbaru@gmail.com', '2021-08-02', '2021-08-02 10:16:33', NULL, NULL, 0, 'Ud Beaute', 'Registrasi kartu garansi');
INSERT INTO `reg_sale_offline` VALUES (45, '', 'Ud Beauty', 'Udbeautepekanbaru@gmail.com', '2021-08-02', '2021-08-02 10:23:01', NULL, NULL, 0, 'Ud Beaute', 'Registrasi kartu garansi');
INSERT INTO `reg_sale_offline` VALUES (46, '', 'Ud Beauty', 'Udbeautepekanbaru@gmail.com', '2021-08-06', '2021-08-06 11:53:29', NULL, NULL, 0, 'Ud Beaute', 'Registrasi garansi');
INSERT INTO `reg_sale_offline` VALUES (47, 'regofflines/ba7b26a819a1a72c5a41afa7310df05c.jpg', 'Ade Kurniawan Pratama', 'kurniawanpratama26@gmail.com', '2021-08-08', '2021-08-08 17:55:41', NULL, NULL, 0, 'Barbermaxxs', 'Wahl legend pembeliaan tgl 06 08 2021 sampai di terima 08 08 2021');
INSERT INTO `reg_sale_offline` VALUES (48, '', 'Stevens Harlan T', 'stevens.harlan@gmail.com', '2021-08-10', '2021-08-10 14:16:28', NULL, NULL, 0, 'Stevens Harlan T', 'Bukan toko tapi untuk pemakaian pribadi');
INSERT INTO `reg_sale_offline` VALUES (49, '', 'Ud Beauty', 'Udbeautepekanbaru@gmail.com', '2021-08-10', '2021-08-10 14:24:24', NULL, NULL, 0, 'Ud Beaute', 'Registrasi kartu Garansi');
INSERT INTO `reg_sale_offline` VALUES (50, '', 'Ud Beauty', 'Udbeautepekanbaru@gmail.com', '2021-08-10', '2021-08-10 14:29:20', NULL, NULL, 0, 'Ud Beaute', 'Registrasi kartu garansi');
INSERT INTO `reg_sale_offline` VALUES (51, '', 'Ud Beauty', 'Udbeautepekanbaru@gmail.com', '2021-08-10', '2021-08-10 14:33:13', NULL, NULL, 0, 'Ud Beaute', 'Registrasi kartu garansi');
INSERT INTO `reg_sale_offline` VALUES (52, '', 'Ud Beauty', 'Udbeautepekanbaru@gmail.com', '2021-08-10', '2021-08-10 14:34:58', NULL, NULL, 0, 'Ud Beaute', 'Registrasi kartu garansi');
INSERT INTO `reg_sale_offline` VALUES (53, 'regofflines/b2049c8588a674e8ad3e22ecc279997f.jpg', 'Ahmed', 'rizza_numerouno@yahoo.com', '2021-08-11', '2021-08-11 22:01:14', NULL, NULL, 0, 'Toko Bahagia Harco Plaza Pasar Baru', '');
INSERT INTO `reg_sale_offline` VALUES (54, 'regofflines/bd0d8d8371e7c940afde8eb3496cf653.jpg', 'Judy Sinurat', 'judysinurat@yahoo.com', '2021-08-13', '2021-08-13 18:23:27', NULL, NULL, 0, 'BarberSupply_indo', 'Via Tokopedia ');
INSERT INTO `reg_sale_offline` VALUES (55, '', 'Hamid Tan', 'Tan_hamid@yahoo.com', '2021-08-14', '2021-08-14 17:38:10', NULL, NULL, 0, 'Cleo hub', '');
INSERT INTO `reg_sale_offline` VALUES (56, 'regofflines/eef230e5550f50943ddaa23ae1f156c4.jpg', 'Suryono', 'suryono88@gmail.com', '2021-08-16', '2021-08-16 22:08:38', NULL, NULL, 0, 'Cygnus Gadget Store', 'Online shop');
INSERT INTO `reg_sale_offline` VALUES (57, '', 'Muhammad Jusrin', 'jusrin23@gmail.com', '2021-08-19', '2021-08-19 13:27:59', NULL, NULL, 0, 'BarberPro_id', '');
INSERT INTO `reg_sale_offline` VALUES (58, 'regofflines/c2dec1b6cc30a5c280bb2bd13b6c7b96.jpg', 'Wibowo Jumeno Hariyanto', 'Wibowo.jumeno@gmail.com', '2021-08-21', '2021-08-21 10:15:18', NULL, NULL, 0, 'Cygnus Gadget Stare', '');
INSERT INTO `reg_sale_offline` VALUES (59, '', 'M Fadjar N', 'elemental_cosmic@yahoo.com', '2021-08-21', '2021-08-21 12:42:39', NULL, NULL, 0, 'Dunia rambut', '');
INSERT INTO `reg_sale_offline` VALUES (60, '', 'Ud Beauty', 'Udbeautepekanbaru@gmail.com', '2021-08-25', '2021-08-25 17:16:03', NULL, NULL, 0, 'Ud Beaute', 'Registrasi kartu garansi');
INSERT INTO `reg_sale_offline` VALUES (61, '', 'Ud Beauty', 'Udbeautepekanbaru@gmail.com', '2021-08-28', '2021-08-28 17:28:42', NULL, NULL, 0, 'Ud Beaute', 'Registrasi kartu garansi');
INSERT INTO `reg_sale_offline` VALUES (62, 'regofflines/c5038e3eb0e5f7dd5282f1b9fed5367b.png', 'Muhamad Ilhamy', 'ilhamy@doctor.com', '2021-09-01', '2021-09-01 00:40:10', NULL, NULL, 0, 'Barbersupply Indo', 'via Tokopedia 29-08-2021');

-- ----------------------------
-- Table structure for reg_sale_offline_detail
-- ----------------------------
DROP TABLE IF EXISTS `reg_sale_offline_detail`;
CREATE TABLE `reg_sale_offline_detail`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `reg_sale_offline_id` bigint NOT NULL,
  `product_code` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `product_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 67 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reg_sale_offline_detail
-- ----------------------------
INSERT INTO `reg_sale_offline_detail` VALUES (1, 1, 'W12200607', 'DETAILER TRIMMER');
INSERT INTO `reg_sale_offline_detail` VALUES (2, 2, 'W12203325', 'LEGEND CLIPPER');
INSERT INTO `reg_sale_offline_detail` VALUES (3, 3, 'W12203415', 'LEGEND CLIPPER');
INSERT INTO `reg_sale_offline_detail` VALUES (4, 4, 'W12203192', 'LEGEND CLIPPER');
INSERT INTO `reg_sale_offline_detail` VALUES (5, 5, 'W12208449', 'SENIOR CORDLESS CLIPPER');
INSERT INTO `reg_sale_offline_detail` VALUES (6, 6, 'W12207280', 'SENIOR CORDLESS CLIPPER');
INSERT INTO `reg_sale_offline_detail` VALUES (7, 7, '08164-425', 'FINALE SHAVER');
INSERT INTO `reg_sale_offline_detail` VALUES (8, 8, '81919-015', 'SUPER TAPER CORDLESS CLIPPER');
INSERT INTO `reg_sale_offline_detail` VALUES (9, 9, 'W12206288', 'LEGEND CLIPPER');
INSERT INTO `reg_sale_offline_detail` VALUES (10, 10, 'W12201668', 'SUPER TAPER CLIPPER');
INSERT INTO `reg_sale_offline_detail` VALUES (11, 11, 'W12208498', 'SENIOR CORDLESS CLIPPER');
INSERT INTO `reg_sale_offline_detail` VALUES (12, 12, 'W12203811', 'SUPER TAPER CORDLESS CLIPPER');
INSERT INTO `reg_sale_offline_detail` VALUES (13, 13, 'W12204777', 'LEGEND CLIPPER');
INSERT INTO `reg_sale_offline_detail` VALUES (14, 14, 'W12201551', 'SUPER TAPER CLIPPER');
INSERT INTO `reg_sale_offline_detail` VALUES (15, 15, 'W12208452', 'SENIOR CORDLESS CLIPPER');
INSERT INTO `reg_sale_offline_detail` VALUES (16, 16, 'W12200581', 'BERET CORDLESS TRIMMER');
INSERT INTO `reg_sale_offline_detail` VALUES (17, 17, 'W12211627', 'SENIOR CORDLESS CLIPPER');
INSERT INTO `reg_sale_offline_detail` VALUES (18, 18, 'W12204748', 'LEGEND CLIPPER');
INSERT INTO `reg_sale_offline_detail` VALUES (19, 19, '08841-616', 'BERET CORDLESS TRIMMER');
INSERT INTO `reg_sale_offline_detail` VALUES (20, 19, '80619-025', 'BALDING CLIPPER');
INSERT INTO `reg_sale_offline_detail` VALUES (21, 20, '1234567890', 'DETAILER TRIMMER');
INSERT INTO `reg_sale_offline_detail` VALUES (22, 21, 'Wahl ', 'LEGEND CLIPPER');
INSERT INTO `reg_sale_offline_detail` VALUES (23, 22, 'W12209395', 'SUPER TAPER CLIPPER');
INSERT INTO `reg_sale_offline_detail` VALUES (24, 23, 'W12210117', 'SUPER TAPER CLIPPER');
INSERT INTO `reg_sale_offline_detail` VALUES (25, 24, 'W12214021', 'LEGEND CLIPPER');
INSERT INTO `reg_sale_offline_detail` VALUES (26, 25, 'W', 'LEGEND CLIPPER');
INSERT INTO `reg_sale_offline_detail` VALUES (27, 26, 'W12214012', 'LEGEND CLIPPER');
INSERT INTO `reg_sale_offline_detail` VALUES (28, 27, 'W12218772', 'SUPER TAPER CLIPPER');
INSERT INTO `reg_sale_offline_detail` VALUES (29, 28, 'W12215507', 'MAGIC CLIP CORDLESS CLIPPER');
INSERT INTO `reg_sale_offline_detail` VALUES (30, 29, 'WHL-CLPR-028', 'MAGIC CLIP CORDLESS CLIPPER');
INSERT INTO `reg_sale_offline_detail` VALUES (31, 29, 'DR-VG-000', 'DETAILER TRIMMER');
INSERT INTO `reg_sale_offline_detail` VALUES (32, 30, 'W12215671', 'MAGIC CLIP CORDLESS CLIPPER');
INSERT INTO `reg_sale_offline_detail` VALUES (33, 31, 'W12203663', 'FINALE SHAVER');
INSERT INTO `reg_sale_offline_detail` VALUES (34, 32, 'W12210250', 'SUPER TAPER CLIPPER');
INSERT INTO `reg_sale_offline_detail` VALUES (35, 33, 'W12210219', 'BALDING CLIPPER');
INSERT INTO `reg_sale_offline_detail` VALUES (36, 34, 'W12205499', 'LEGEND CLIPPER');
INSERT INTO `reg_sale_offline_detail` VALUES (37, 35, 'W12209964', 'SUPER TAPER CLIPPER');
INSERT INTO `reg_sale_offline_detail` VALUES (38, 36, 'W12215614', 'MAGIC CLIP CORDLESS CLIPPER');
INSERT INTO `reg_sale_offline_detail` VALUES (39, 37, 'W12217738', 'SUPER TAPER CLIPPER');
INSERT INTO `reg_sale_offline_detail` VALUES (40, 38, 'W 12213058', 'SUPER TAPER CLIPPER');
INSERT INTO `reg_sale_offline_detail` VALUES (41, 39, 'W12211141', 'SENIOR CORDLESS CLIPPER');
INSERT INTO `reg_sale_offline_detail` VALUES (42, 40, 'W12207285', 'SENIOR CORDLESS CLIPPER');
INSERT INTO `reg_sale_offline_detail` VALUES (43, 41, 'W12207312', 'SENIOR CORDLESS CLIPPER');
INSERT INTO `reg_sale_offline_detail` VALUES (44, 42, 'W12207288', 'SENIOR CORDLESS CLIPPER');
INSERT INTO `reg_sale_offline_detail` VALUES (45, 43, 'W12215523', 'MAGIC CLIP CORDLESS CLIPPER');
INSERT INTO `reg_sale_offline_detail` VALUES (46, 44, 'W12205491', 'LEGEND CLIPPER');
INSERT INTO `reg_sale_offline_detail` VALUES (47, 45, 'W12210179', 'SUPER TAPER CLIPPER');
INSERT INTO `reg_sale_offline_detail` VALUES (48, 46, 'W12210133', 'SUPER TAPER CLIPPER');
INSERT INTO `reg_sale_offline_detail` VALUES (49, 47, 'K3l 20-l-005096', 'LEGEND CLIPPER');
INSERT INTO `reg_sale_offline_detail` VALUES (50, 48, 'W12219914', 'SUPER TAPER CLIPPER');
INSERT INTO `reg_sale_offline_detail` VALUES (51, 49, 'W12214590', 'PACIFIC BLU COMBO (SUPER TAPER + BERET)');
INSERT INTO `reg_sale_offline_detail` VALUES (52, 50, 'W12214589', 'SUPER TAPER CLIPPER');
INSERT INTO `reg_sale_offline_detail` VALUES (53, 51, 'W12210205', 'SUPER TAPER CLIPPER');
INSERT INTO `reg_sale_offline_detail` VALUES (54, 52, 'W12210146', 'SUPER TAPER CLIPPER');
INSERT INTO `reg_sale_offline_detail` VALUES (55, 53, 'W12213919', 'MAGIC CLIP CORDLESS - BLACK & GOLD');
INSERT INTO `reg_sale_offline_detail` VALUES (56, 54, 'W12222755', 'SUPER TAPER CLIPPER');
INSERT INTO `reg_sale_offline_detail` VALUES (57, 55, 'W12223766', 'SUPER TAPER CLIPPER');
INSERT INTO `reg_sale_offline_detail` VALUES (58, 56, 'W12221801', 'LEGEND CLIPPER');
INSERT INTO `reg_sale_offline_detail` VALUES (59, 57, 'W12217511', 'SUPER TAPER CORDLESS CLIPPER');
INSERT INTO `reg_sale_offline_detail` VALUES (60, 58, 'W12221802', 'LEGEND BLADE SET INTL');
INSERT INTO `reg_sale_offline_detail` VALUES (61, 59, 'W12215077', 'BALDING CLIPPER');
INSERT INTO `reg_sale_offline_detail` VALUES (62, 59, 'W12215078', 'BERET CORDLESS TRIMMER');
INSERT INTO `reg_sale_offline_detail` VALUES (63, 60, 'W12216504', 'SUPER TAPER CLIPPER');
INSERT INTO `reg_sale_offline_detail` VALUES (64, 61, 'W12205506', 'LEGEND CLIPPER');
INSERT INTO `reg_sale_offline_detail` VALUES (65, 62, 'W12215085', 'SUPER TAPER CORDLESS CLIPPER');
INSERT INTO `reg_sale_offline_detail` VALUES (66, 62, 'W12215086', 'BALDING CLIPPER');

-- ----------------------------
-- Table structure for registration_product
-- ----------------------------
DROP TABLE IF EXISTS `registration_product`;
CREATE TABLE `registration_product`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `register_date` datetime NOT NULL,
  `shop_name` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `product_code` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `product_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user_id` int NOT NULL,
  `user_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `user_email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `user_telephone` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `start_warranty` date NOT NULL,
  `register_type` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `register_id` bigint NOT NULL,
  `notes` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `warehouse_id` int NOT NULL,
  `invoice_image` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `updated_date` datetime NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 83 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of registration_product
-- ----------------------------
INSERT INTO `registration_product` VALUES (1, '2021-03-25 16:23:59', 'Dunia Rambut', 'W12200607', 'DETAILER TRIMMER', 0, 'Leo Beenhakker', 'leon.photo.net@gmail.com', NULL, '2021-03-25', 'reg_by_customer', 1, '', 0, '', NULL, NULL);
INSERT INTO `registration_product` VALUES (2, '2021-03-26 16:19:27', 'Barbersupply_indo', 'W12203325', 'LEGEND CLIPPER', 0, 'Isna Kusuma Nintyastuti', 'isnasuninto@gmail.com', NULL, '2021-03-26', 'reg_by_customer', 2, '', 0, 'regofflines/52d8e12eeda7d4c06cb65c8bb5989c19.jpg', NULL, NULL);
INSERT INTO `registration_product` VALUES (3, '2021-03-27 08:09:23', 'Barbersupply_Indo', 'W12203415', 'LEGEND CLIPPER', 0, 'Mario Danala Napitupulu', 'mario.corleone244@gmail.com', NULL, '2021-03-27', 'reg_by_customer', 3, 'Tokopedia', 0, '', NULL, NULL);
INSERT INTO `registration_product` VALUES (4, '2021-04-08 07:06:44', 'Toko FEN', 'W12203192', 'LEGEND CLIPPER', 0, 'Ali Mauludin', 'malimauludin@gmail.com', NULL, '2021-04-08', 'reg_by_customer', 4, 'Jalan ABC no 1 Bandung', 0, 'regofflines/fae610a5620e8a96204dd464d7d8a8c3.jpg', NULL, NULL);
INSERT INTO `registration_product` VALUES (5, '2021-04-17 15:28:17', 'Barbersupply_Indo', 'W12208449', 'SENIOR CORDLESS CLIPPER', 0, 'Hendrawan Nasution', 'hendra1st@gmail.com', NULL, '2021-04-17', 'reg_by_customer', 5, 'Luar biasa nih clipper satu untuk semua bersih cukuran dan pangkasnya gak ada yang bersisa, mantaplah pokoknya', 0, 'regofflines/97a667123221eb1fdd402dc3b0ee52ef.jpg', NULL, NULL);
INSERT INTO `registration_product` VALUES (6, '2021-04-20 19:48:37', 'Barbersupply_indo', 'W12207280', 'SENIOR CORDLESS CLIPPER', 0, 'Alif Rahman Hakim', 'hakimalifrahman@gmail.com', NULL, '2021-04-20', 'reg_by_customer', 6, 'Tokopedia', 0, 'regofflines/4b924f46da75e6002b6859c403c3eed8.png', NULL, NULL);
INSERT INTO `registration_product` VALUES (7, '2021-04-27 17:24:50', 'Dunia Rambut', '08164-425', 'FINALE SHAVER', 0, 'Alif Rahman Hakim', 'hakimalifrahman@gmail.com', NULL, '2021-04-27', 'reg_by_customer', 7, '', 0, '', NULL, NULL);
INSERT INTO `registration_product` VALUES (8, '2021-04-27 17:28:46', 'Dunia Rambut', '81919-015', 'SUPER TAPER CORDLESS CLIPPER', 0, 'Alif Rahman Hakim', 'hakimalifrahman@gmail.com', NULL, '2021-04-27', 'reg_by_customer', 8, '', 0, 'regofflines/35a37495c2f78249abb3eb73b75feaed.jpg', NULL, NULL);
INSERT INTO `registration_product` VALUES (9, '2021-05-03 22:18:51', 'Gudang Rambut', 'W12206288', 'LEGEND CLIPPER', 0, 'Olivia Adeline', 'olivia.wahlmpm@gmail.com', NULL, '2021-05-03', 'reg_by_customer', 9, '', 0, 'regofflines/f9ec2470fe761aae1137567f0d602271.png', NULL, NULL);
INSERT INTO `registration_product` VALUES (10, '2021-05-06 21:29:52', 'Nasir', 'W12201668', 'SUPER TAPER CLIPPER', 0, 'M Natsir', 'wong_geek@yahoo.com', NULL, '2021-05-06', 'reg_by_customer', 10, '', 0, 'regofflines/60a6373379b98815080d4d03929d3802.jpg', NULL, NULL);
INSERT INTO `registration_product` VALUES (11, '2021-05-11 21:12:41', 'Mangbaray barber', 'W12208498', 'SENIOR CORDLESS CLIPPER', 0, 'Febry Eka', 'mangbaray@gmail.com', NULL, '2021-05-11', 'reg_by_customer', 11, '', 0, 'regofflines/5dd002ee631352b8e57f99f87768a63e.jpg', NULL, NULL);
INSERT INTO `registration_product` VALUES (12, '2021-05-16 18:18:53', 'Barbersupply indo', 'W12203811', 'SUPER TAPER CORDLESS CLIPPER', 0, 'Tjiu Sandi Wilianto', 'Tjusandi@gmail.com', NULL, '2021-05-16', 'reg_by_customer', 12, '', 0, 'regofflines/914a51caac2cc64517b120183e6f76ca.jpg', NULL, NULL);
INSERT INTO `registration_product` VALUES (13, '2021-05-19 16:11:32', 'Barbersupply_indo', 'W12204777', 'LEGEND CLIPPER', 0, 'Suby Anggadibrata', 'Subyanggadibrata@gmail.com', NULL, '2021-05-19', 'reg_by_customer', 13, 'Via tokopedia', 0, 'regofflines/a084fc67e3e24208a7414134358bd860.jpg', NULL, NULL);
INSERT INTO `registration_product` VALUES (14, '2021-05-22 20:06:31', 'Cygnus Gadget Store', 'W12201551', 'SUPER TAPER CLIPPER', 0, 'Carsoma', 'Sq.carsoma@gmail.com', NULL, '2021-05-22', 'reg_by_customer', 14, 'Mesin Cukur', 0, 'regofflines/abc4df9f1132d8d332cd770c53979e18.jpg', NULL, NULL);
INSERT INTO `registration_product` VALUES (15, '2021-05-23 17:54:03', 'Barbersuply_indo', 'W12208452', 'SENIOR CORDLESS CLIPPER', 0, 'Dhifan Fathin Hermawan', 'dhifanfhermawan@gmail.com', NULL, '2021-05-23', 'reg_by_customer', 15, '', 0, 'regofflines/fbeb02babc2f016d8be63bd3fb2138e0.jpg', NULL, NULL);
INSERT INTO `registration_product` VALUES (16, '2021-05-27 22:17:34', 'Westminster Barber & Coffee', 'W12200581', 'BERET CORDLESS TRIMMER', 0, 'Edward Jahja Saputra', 'edward.jahja.saputra@gmail.com', NULL, '2021-05-27', 'reg_by_customer', 16, 'Bonus', 0, '', NULL, NULL);
INSERT INTO `registration_product` VALUES (17, '2021-05-27 12:46:57', 'Ecommerce', 'W12204182', 'DETAILER TRIMMER', 43, 'Abraham David Hansaputra', 'Abrahamdvd12@gmail.com', '+19709480158', '2021-05-27', 'reg_by_online', 17, NULL, 0, NULL, NULL, NULL);
INSERT INTO `registration_product` VALUES (18, '2021-05-27 12:46:57', 'Ecommerce', 'W12204755', 'LEGEND CLIPPER', 43, 'Abraham David Hansaputra', 'Abrahamdvd12@gmail.com', '+19709480158', '2021-05-27', 'reg_by_online', 18, NULL, 0, NULL, NULL, NULL);
INSERT INTO `registration_product` VALUES (19, '2021-06-01 08:55:03', 'Cygnus Gadget Store', 'W12211627', 'SENIOR CORDLESS CLIPPER', 0, 'Waris Nugroho', 'agungwaris@gmail.com', NULL, '2021-06-01', 'reg_by_customer', 17, '', 0, 'regofflines/cb6b817b3b391d60b8f733b20c4d4792.jpg', NULL, NULL);
INSERT INTO `registration_product` VALUES (20, '2021-06-02 21:15:17', 'GUDANG RAMBUT TOKOPEDIA', 'W12204748', 'LEGEND CLIPPER', 0, 'Jessy', 'julianaekaputri@yahoo.com', NULL, '2021-06-02', 'reg_by_customer', 18, 'TOKOPEDIA', 0, 'regofflines/5b44000b55b0848901a5cd0012d13485.jpeg', NULL, NULL);
INSERT INTO `registration_product` VALUES (21, '2021-06-04 09:33:36', 'Alatcukurrambut.com', '08841-616', 'BERET CORDLESS TRIMMER', 0, 'Waris Nugroho', 'agungwaris@gmail.com', NULL, '2021-06-04', 'reg_by_customer', 19, '', 0, 'regofflines/d2f8c9d2abcd0378399f657e53403a3f.jpg', NULL, NULL);
INSERT INTO `registration_product` VALUES (22, '2021-06-04 09:33:36', 'Alatcukurrambut.com', '80619-025', 'BALDING CLIPPER', 0, 'Waris Nugroho', 'agungwaris@gmail.com', NULL, '2021-06-04', 'reg_by_customer', 20, '', 0, 'regofflines/d2f8c9d2abcd0378399f657e53403a3f.jpg', NULL, NULL);
INSERT INTO `registration_product` VALUES (23, '2021-06-11 10:13:03', 'test', '1234567890', 'DETAILER TRIMMER', 0, 'Gary Tan', 'gary.tan@wahlsea.com', NULL, '2021-06-11', 'reg_by_customer', 21, '', 0, '', NULL, NULL);
INSERT INTO `registration_product` VALUES (24, '2021-06-14 15:40:19', 'Cygnus Gadget Store', 'Wahl ', 'LEGEND CLIPPER', 0, 'Hadi Prawoto', 'adhyphe@yahoo.com', NULL, '2021-06-14', 'reg_by_customer', 22, 'Wahl Legend 5 Star Series ', 0, 'regofflines/df26667c7fbd48b8f67a2de0915db969.jpeg', NULL, NULL);
INSERT INTO `registration_product` VALUES (25, '2021-06-16 21:25:51', 'Concordia Barbershop', 'W12209395', 'SUPER TAPER CLIPPER', 0, 'Brillian Putra S', 'brillianputras1@gmail.com', NULL, '2021-06-16', 'reg_by_customer', 23, 'WAHL SUPERTAPER', 0, 'regofflines/06dcb66a2fa231d1d734f08aeb0f2cf2.jpg', NULL, NULL);
INSERT INTO `registration_product` VALUES (26, '2021-06-21 11:19:52', 'dpbarbersupply', 'W12210117', 'SUPER TAPER CLIPPER', 0, 'AA. KURNIAWAN', 'aakurniawan01@gmail.com', NULL, '2021-06-21', 'reg_by_customer', 24, 'Pembelian dilakukan secara online via shopee\r\nNama toko penjual dpbarbersupply', 0, 'regofflines/8e51d85317c4196f5b5b637c4ea6e767.jpg', NULL, NULL);
INSERT INTO `registration_product` VALUES (27, '2021-06-24 16:20:37', 'Gudang Rambut', 'W12214021', 'LEGEND CLIPPER', 0, 'Noval Priwa Ginting', 'novalg71@gmail.com', NULL, '2021-06-24', 'reg_by_customer', 25, '', 0, '', NULL, NULL);
INSERT INTO `registration_product` VALUES (28, '2021-06-30 20:01:35', 'Cygnus Gadget Store', 'W', 'LEGEND CLIPPER', 0, 'Dimas Ramadhan Putra', 'dimasramadhanp@yahoo.co.id', NULL, '2021-06-30', 'reg_by_customer', 26, '', 0, 'regofflines/90a646041c74aa52ef2c1afe2d7bca38.jpeg', NULL, NULL);
INSERT INTO `registration_product` VALUES (29, '2021-07-01 12:29:36', 'Cygnus Gadget Store', 'W12214012', 'LEGEND CLIPPER', 0, 'Dimas Ramadhan Putra', 'dimasramadhanp@yahoo.co.id', NULL, '2021-07-01', 'reg_by_customer', 27, '', 0, 'regofflines/3ae2f397a7211494a4887d82d7d7e150.jpeg', NULL, NULL);
INSERT INTO `registration_product` VALUES (30, '2021-07-02 15:26:53', 'Cleo Hub', 'W12218772', 'SUPER TAPER CLIPPER', 0, 'Hiu Khi On', 'Hiukhion@gmail.com', NULL, '2021-07-02', 'reg_by_customer', 28, '', 0, 'regofflines/d7f56e914bcc3a4835dfe9abae5f922d.jpeg', NULL, NULL);
INSERT INTO `registration_product` VALUES (31, '2021-07-04 15:23:11', 'BARBERSUPPLY_ID', 'W12215507', 'MAGIC CLIP CORDLESS CLIPPER', 0, 'Kevin Lee', 'holy_vinlee@yahoo.com', NULL, '2021-07-04', 'reg_by_customer', 29, '', 0, 'regofflines/d595e117f621be62b5c0045441523f61.jpg', NULL, NULL);
INSERT INTO `registration_product` VALUES (32, '2021-07-02 15:26:18', 'Ecommerce', 'W12219907', 'SUPER TAPER CLIPPER', 66, 'Herru Semono', 'hsemono@gmail.com', '+6281317710773', '2021-07-02', 'reg_by_online', 38, NULL, 0, NULL, NULL, NULL);
INSERT INTO `registration_product` VALUES (33, '2021-06-29 15:59:04', 'Ecommerce', 'W12207099', 'SUPER TAPER CLIPPER', 63, 'Retno Wulandari', 'retno85wulandari@gmail.com', '085693499060', '2021-06-29', 'reg_by_online', 34, NULL, 0, NULL, NULL, NULL);
INSERT INTO `registration_product` VALUES (34, '2021-07-06 11:08:38', 'Barbersupply_ID', 'WHL-CLPR-028', 'MAGIC CLIP CORDLESS CLIPPER', 0, 'Grady Edbert Timothy', 'gradyedbert@yahoo.com', NULL, '2021-07-06', 'reg_by_customer', 30, '', 0, '', NULL, NULL);
INSERT INTO `registration_product` VALUES (35, '2021-07-06 11:08:38', 'Barbersupply_ID', 'DR-VG-000', 'DETAILER TRIMMER', 0, 'Grady Edbert Timothy', 'gradyedbert@yahoo.com', NULL, '2021-07-06', 'reg_by_customer', 31, '', 0, '', NULL, NULL);
INSERT INTO `registration_product` VALUES (36, '2021-07-11 10:25:06', 'Barbersuply_indo', 'W12215671', 'MAGIC CLIP CORDLESS CLIPPER', 0, 'Dhifan Fathin Hermawan', 'dhifanfhermawan@gmail.com', NULL, '2021-07-11', 'reg_by_customer', 32, '', 0, '', NULL, NULL);
INSERT INTO `registration_product` VALUES (37, '2021-07-12 08:08:03', 'BARBERSUPPLY_ID', 'W12203663', 'FINALE SHAVER', 0, 'Joshua Nathanael Afan', 'Joshua.afan@outlook.com', NULL, '2021-07-12', 'reg_by_customer', 33, '', 0, 'regofflines/13ef9c30042f2db1d90f30b96065018b.jpeg', NULL, NULL);
INSERT INTO `registration_product` VALUES (38, '2021-07-14 10:41:41', 'Ud Beaute', 'W12210250', 'SUPER TAPER CLIPPER', 0, 'Ud Beauty', 'Udbeautepekanbaru@gmail.com', NULL, '2021-07-14', 'reg_by_customer', 34, 'Registrasi kartu garansi', 0, '', NULL, NULL);
INSERT INTO `registration_product` VALUES (39, '2021-07-14 11:19:07', 'Ud Beaute', 'W12210219', 'SUPER TAPER CLIPPER', 0, 'Ud Beauty', 'Udbeautepekanbaru@gmail.com', NULL, '2021-07-14', 'reg_by_customer', 35, 'Registrasi kartu garansi', 0, 'regofflines/8bcf2b935d9bdd437a698d6a13ef14ff.jpg', NULL, NULL);
INSERT INTO `registration_product` VALUES (40, '2021-07-14 18:24:50', 'KanaKana', 'W12205499', 'LEGEND CLIPPER', 0, 'Kuncoro Ambra Zamzani', 'kukun.zamzani@gmail.com', NULL, '2021-07-14', 'reg_by_customer', 36, 'Narogong Cantik IV', 0, '', NULL, NULL);
INSERT INTO `registration_product` VALUES (41, '2021-07-17 17:38:50', 'Ud Beaute', 'W12209964', 'SUPER TAPER CLIPPER', 0, 'Ud Beauty', 'Udbeautepekanbaru@gmail.com', NULL, '2021-07-17', 'reg_by_customer', 37, 'Registrasi kartu garansi', 0, '', NULL, NULL);
INSERT INTO `registration_product` VALUES (42, '2021-07-18 13:06:47', 'BARBERSUPPLY_ID', 'W12215614', 'MAGIC CLIP CORDLESS CLIPPER', 0, 'Handi Natif Saifudin', 'handinatif@gmail.com', NULL, '2021-07-18', 'reg_by_customer', 38, '', 0, 'regofflines/3ee04f3cdc58edcc4450452f3d14ff28.jpg', NULL, NULL);
INSERT INTO `registration_product` VALUES (43, '2021-07-23 09:32:05', 'Cygnus gadget store', 'W12217738', 'SUPER TAPER CLIPPER', 0, 'Mohamad Rajih Radiansyah', 'mohamadrajihradiansyah@gmail.com', NULL, '2021-07-23', 'reg_by_customer', 39, 'Melalui tokopedia', 0, 'regofflines/49f8520deae2b17ab1ef3a9cc98241b7.jpg', NULL, NULL);
INSERT INTO `registration_product` VALUES (44, '2021-07-23 17:17:51', 'Toko Roes ( Shopee)', 'W 12213058', 'SUPER TAPER CLIPPER', 0, 'Maria Ulfa', 'mariab4b4@gmail.com', NULL, '2021-07-23', 'reg_by_customer', 40, '', 0, 'regofflines/2a1d90bd0383c28b8cbcea1523708e65.jpeg', NULL, NULL);
INSERT INTO `registration_product` VALUES (45, '2021-07-25 21:30:47', 'Cygnus Gadget store ( Toko Pedia)', 'W12211141', 'SENIOR CORDLESS CLIPPER', 0, 'Lim Fui Liong', 'limfl.kmi@gmail.com', NULL, '2021-07-25', 'reg_by_customer', 41, '', 0, 'regofflines/91ec1523b59de265a146ab6f0e10914e.jpg', NULL, NULL);
INSERT INTO `registration_product` VALUES (46, '2021-07-02 14:15:43', 'Ecommerce', 'W12205227', 'SUPER TAPER CORDLESS CLIPPER', 65, 'Siti Ulparia Lubis', 'sitiulparia@gmail.com', '081264152316', '2021-07-02', 'reg_by_online', 36, NULL, 0, NULL, NULL, NULL);
INSERT INTO `registration_product` VALUES (47, '2021-07-25 14:20:20', 'Ecommerce', 'W12207338', 'SENIOR CORDLESS CLIPPER', 85, 'Rosmina Susana', 'bellebella88@ymail.com', '+6281519323312', '2021-07-25', 'reg_by_online', 42, NULL, 0, NULL, NULL, NULL);
INSERT INTO `registration_product` VALUES (48, '2021-07-29 14:48:55', 'Ud Beaute', 'W12207285', 'SENIOR CORDLESS CLIPPER', 0, 'Ud Beauty', 'Udbeautepekanbaru@gmail.com', NULL, '2021-07-29', 'reg_by_customer', 42, '', 0, '', NULL, NULL);
INSERT INTO `registration_product` VALUES (49, '2021-07-29 14:50:26', 'Ud Beaute', 'W12207312', 'SENIOR CORDLESS CLIPPER', 0, 'Ud Beauty', 'Udbeautepekanbaru@gmail.com', NULL, '2021-07-29', 'reg_by_customer', 43, 'Registrasi garansi', 0, '', NULL, NULL);
INSERT INTO `registration_product` VALUES (50, '2021-07-29 14:51:45', 'Ud Beaute', 'W12207288', 'SENIOR CORDLESS CLIPPER', 0, 'Ud Beauty', 'Udbeautepekanbaru@gmail.com', NULL, '2021-07-29', 'reg_by_customer', 44, 'Registrasi garansi', 0, '', NULL, NULL);
INSERT INTO `registration_product` VALUES (51, '2021-08-02 10:14:34', 'Ud Beaute', 'W12215523', 'MAGIC CLIP CORDLESS CLIPPER', 0, 'Ud Beauty', 'Udbeautepekanbaru@gmail.com', NULL, '2021-08-02', 'reg_by_customer', 45, 'Registrasi kartu garansi', 0, '', NULL, NULL);
INSERT INTO `registration_product` VALUES (52, '2021-08-02 10:16:33', 'Ud Beaute', 'W12205491', 'LEGEND CLIPPER', 0, 'Ud Beauty', 'Udbeautepekanbaru@gmail.com', NULL, '2021-08-02', 'reg_by_customer', 46, 'Registrasi kartu garansi', 0, '', NULL, NULL);
INSERT INTO `registration_product` VALUES (53, '2021-08-02 10:23:01', 'Ud Beaute', 'W12210179', 'SUPER TAPER CLIPPER', 0, 'Ud Beauty', 'Udbeautepekanbaru@gmail.com', NULL, '2021-08-02', 'reg_by_customer', 47, 'Registrasi kartu garansi', 0, '', NULL, NULL);
INSERT INTO `registration_product` VALUES (54, '2021-08-06 11:53:29', 'Ud Beaute', 'W12210133', 'SUPER TAPER CLIPPER', 0, 'Ud Beauty', 'Udbeautepekanbaru@gmail.com', NULL, '2021-08-06', 'reg_by_customer', 48, 'Registrasi garansi', 0, '', NULL, NULL);
INSERT INTO `registration_product` VALUES (55, '2021-08-08 17:55:41', 'Barbermaxxs', 'K3l 20-l-005096', 'LEGEND CLIPPER', 0, 'Ade Kurniawan Pratama', 'kurniawanpratama26@gmail.com', NULL, '2021-08-08', 'reg_by_customer', 49, 'Wahl legend pembeliaan tgl 06 08 2021 sampai di terima 08 08 2021', 0, 'regofflines/ba7b26a819a1a72c5a41afa7310df05c.jpg', NULL, NULL);
INSERT INTO `registration_product` VALUES (56, '2021-08-10 14:16:28', 'Stevens Harlan T', 'W12219914', 'SUPER TAPER CLIPPER', 0, 'Stevens Harlan T', 'stevens.harlan@gmail.com', NULL, '2021-08-10', 'reg_by_customer', 50, 'Bukan toko tapi untuk pemakaian pribadi', 0, '', NULL, NULL);
INSERT INTO `registration_product` VALUES (57, '2021-08-10 14:24:24', 'Ud Beaute', 'W12214590', 'PACIFIC BLU COMBO (SUPER TAPER + BERET)', 0, 'Ud Beauty', 'Udbeautepekanbaru@gmail.com', NULL, '2021-08-10', 'reg_by_customer', 51, 'Registrasi kartu Garansi', 0, '', NULL, NULL);
INSERT INTO `registration_product` VALUES (58, '2021-08-10 14:29:20', 'Ud Beaute', 'W12214589', 'SUPER TAPER CLIPPER', 0, 'Ud Beauty', 'Udbeautepekanbaru@gmail.com', NULL, '2021-08-10', 'reg_by_customer', 52, 'Registrasi kartu garansi', 0, '', NULL, NULL);
INSERT INTO `registration_product` VALUES (59, '2021-08-10 14:33:13', 'Ud Beaute', 'W12210205', 'SUPER TAPER CLIPPER', 0, 'Ud Beauty', 'Udbeautepekanbaru@gmail.com', NULL, '2021-08-10', 'reg_by_customer', 53, 'Registrasi kartu garansi', 0, '', NULL, NULL);
INSERT INTO `registration_product` VALUES (60, '2021-08-10 14:34:58', 'Ud Beaute', 'W12210146', 'SUPER TAPER CLIPPER', 0, 'Ud Beauty', 'Udbeautepekanbaru@gmail.com', NULL, '2021-08-10', 'reg_by_customer', 54, 'Registrasi kartu garansi', 0, '', NULL, NULL);
INSERT INTO `registration_product` VALUES (61, '2021-08-11 22:01:14', 'Toko Bahagia Harco Plaza Pasar Baru', 'W12213919', 'MAGIC CLIP CORDLESS - BLACK & GOLD', 0, 'Ahmed', 'rizza_numerouno@yahoo.com', NULL, '2021-08-11', 'reg_by_customer', 55, '', 0, 'regofflines/b2049c8588a674e8ad3e22ecc279997f.jpg', NULL, NULL);
INSERT INTO `registration_product` VALUES (62, '2021-08-13 18:23:27', 'BarberSupply_indo', 'W12222755', 'SUPER TAPER CLIPPER', 0, 'Judy Sinurat', 'judysinurat@yahoo.com', NULL, '2021-08-13', 'reg_by_customer', 56, 'Via Tokopedia ', 0, 'regofflines/bd0d8d8371e7c940afde8eb3496cf653.jpg', NULL, NULL);
INSERT INTO `registration_product` VALUES (63, '2021-08-14 17:38:10', 'Cleo hub', 'W12223766', 'SUPER TAPER CLIPPER', 0, 'Hamid Tan', 'Tan_hamid@yahoo.com', NULL, '2021-08-14', 'reg_by_customer', 57, '', 0, '', NULL, NULL);
INSERT INTO `registration_product` VALUES (64, '2021-08-16 22:08:38', 'Cygnus Gadget Store', 'W12221801', 'LEGEND CLIPPER', 0, 'Suryono', 'suryono88@gmail.com', NULL, '2021-08-16', 'reg_by_customer', 58, 'Online shop', 0, 'regofflines/eef230e5550f50943ddaa23ae1f156c4.jpg', NULL, NULL);
INSERT INTO `registration_product` VALUES (65, '2021-08-14 11:17:10', 'Ecommerce', 'W12224414', 'SUPER TAPER CLIPPER', 103, 'Rafly Muzady', 'rafly.muzady@yahoo.com', '081318103174', '2021-08-14', 'reg_by_online', 58, NULL, 0, NULL, NULL, NULL);
INSERT INTO `registration_product` VALUES (66, '2021-08-12 06:57:48', 'Ecommerce', 'W000000', 'TAPER BLADE SET PLATED', 100, 'Pipit Sufendi', 'Nindi12nindii@gmail.com', '085728840041', '2021-08-12', 'reg_by_online', 57, NULL, 0, NULL, NULL, NULL);
INSERT INTO `registration_product` VALUES (67, '2021-08-19 13:27:59', 'BarberPro_id', 'W12217511', 'SUPER TAPER CORDLESS CLIPPER', 0, 'Muhammad Jusrin', 'jusrin23@gmail.com', NULL, '2021-08-19', 'reg_by_customer', 59, '', 0, '', NULL, NULL);
INSERT INTO `registration_product` VALUES (68, '2021-08-18 18:17:35', 'Ecommerce', 'W12213915', 'MAGIC CLIP CORDLESS - BLACK & GOLD', 110, 'Nur Wiqoyatul Afifah', 'afifahfifi6@gmail.com', '081212824715', '2021-08-18', 'reg_by_online', 68, NULL, 0, NULL, NULL, NULL);
INSERT INTO `registration_product` VALUES (69, '2021-08-18 18:17:35', 'Ecommerce', 'W12213915', 'MAGIC CLIP CORDLESS - BLACK & GOLD', 110, 'Nur Wiqoyatul Afifah', 'afifahfifi6@gmail.com', '081212824715', '2021-08-18', 'reg_by_online', 68, NULL, 0, NULL, NULL, NULL);
INSERT INTO `registration_product` VALUES (70, '2021-08-21 10:15:18', 'Cygnus Gadget Stare', 'W12221802', 'LEGEND BLADE SET INTL', 0, 'Wibowo Jumeno Hariyanto', 'Wibowo.jumeno@gmail.com', NULL, '2021-08-21', 'reg_by_customer', 60, '', 0, 'regofflines/c2dec1b6cc30a5c280bb2bd13b6c7b96.jpg', NULL, NULL);
INSERT INTO `registration_product` VALUES (71, '2021-08-21 12:42:39', 'Dunia rambut', 'W12215077', 'BALDING CLIPPER', 0, 'M Fadjar N', 'elemental_cosmic@yahoo.com', NULL, '2021-08-21', 'reg_by_customer', 61, '', 0, '', NULL, NULL);
INSERT INTO `registration_product` VALUES (72, '2021-08-21 12:42:39', 'Dunia rambut', 'W12215078', 'BERET CORDLESS TRIMMER', 0, 'M Fadjar N', 'elemental_cosmic@yahoo.com', NULL, '2021-08-21', 'reg_by_customer', 62, '', 0, '', NULL, NULL);
INSERT INTO `registration_product` VALUES (73, '2021-08-25 17:16:03', 'Ud Beaute', 'W12216504', 'SUPER TAPER CLIPPER', 0, 'Ud Beauty', 'Udbeautepekanbaru@gmail.com', NULL, '2021-08-25', 'reg_by_customer', 63, 'Registrasi kartu garansi', 0, '', NULL, NULL);
INSERT INTO `registration_product` VALUES (74, '2021-08-28 17:28:42', 'Ud Beaute', 'W12205506', 'LEGEND CLIPPER', 0, 'Ud Beauty', 'Udbeautepekanbaru@gmail.com', NULL, '2021-08-28', 'reg_by_customer', 64, 'Registrasi kartu garansi', 0, '', NULL, NULL);
INSERT INTO `registration_product` VALUES (75, '2021-09-01 00:40:10', 'Barbersupply Indo', 'W12215085', 'SUPER TAPER CORDLESS CLIPPER', 0, 'Muhamad Ilhamy', 'ilhamy@doctor.com', NULL, '2021-09-01', 'reg_by_customer', 65, 'via Tokopedia 29-08-2021', 0, 'regofflines/c5038e3eb0e5f7dd5282f1b9fed5367b.png', NULL, NULL);
INSERT INTO `registration_product` VALUES (76, '2021-09-01 00:40:10', 'Barbersupply Indo', 'W12215086', 'BALDING CLIPPER', 0, 'Muhamad Ilhamy', 'ilhamy@doctor.com', NULL, '2021-09-01', 'reg_by_customer', 66, 'via Tokopedia 29-08-2021', 0, 'regofflines/c5038e3eb0e5f7dd5282f1b9fed5367b.png', NULL, NULL);
INSERT INTO `registration_product` VALUES (77, '2021-08-25 14:03:39', 'Ecommerce', 'W12214790', 'PACIFIC BLU COMBO (SUPER TAPER + BERET)', 123, 'Deni Satria Yustian', 'Yustian.deni94@gmail.com', '081255599970', '2021-08-25', 'reg_by_online', 97, NULL, 0, NULL, NULL, NULL);
INSERT INTO `registration_product` VALUES (78, '2021-08-25 14:03:39', 'Ecommerce', 'W00000000', 'MAGIC CLIP C/C BLADE SET', 123, 'Deni Satria Yustian', 'Yustian.deni94@gmail.com', '081255599970', '2021-08-25', 'reg_by_online', 98, NULL, 0, NULL, NULL, NULL);
INSERT INTO `registration_product` VALUES (79, '2021-09-02 13:21:26', 'Ecommerce', 'W00002', 'WAHL OIL BOTTLE 4 OZ', 130, 'Shofa Salsabila', 'shofaaasalsa@gmail.com', '085736983728', '2021-09-02', 'reg_by_online', 107, NULL, 0, NULL, NULL, NULL);
INSERT INTO `registration_product` VALUES (80, '2021-09-02 13:21:26', 'Ecommerce', 'W00003', 'WAHL OIL BOTTLE 4 OZ', 130, 'Shofa Salsabila', 'shofaaasalsa@gmail.com', '085736983728', '2021-09-02', 'reg_by_online', 108, NULL, 0, NULL, NULL, NULL);
INSERT INTO `registration_product` VALUES (81, '2021-08-30 15:58:04', 'Ecommerce', 'W12224352', 'SUPER TAPER CLIPPER', 118, 'Udung Permana ( Raisa Salon )', 'udungraisa@gmail.com', '0813-1976-8883', '2021-08-30', 'reg_by_online', 102, NULL, 0, NULL, NULL, NULL);
INSERT INTO `registration_product` VALUES (82, '2021-08-30 18:36:07', 'Ecommerce', 'W12224351', 'SUPER TAPER CLIPPER', 128, 'Zainul', 'Zainulbpd@gmail.com', '089607084288', '2021-08-30', 'reg_by_online', 103, NULL, 0, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for registration_product_history
-- ----------------------------
DROP TABLE IF EXISTS `registration_product_history`;
CREATE TABLE `registration_product_history`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `registration_id` bigint NOT NULL,
  `history_date` datetime NOT NULL,
  `type` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `old_product_code` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `new_product_code` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of registration_product_history
-- ----------------------------

-- ----------------------------
-- Table structure for review
-- ----------------------------
DROP TABLE IF EXISTS `review`;
CREATE TABLE `review`  (
  `review_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL DEFAULT 0,
  `user_id` int NOT NULL DEFAULT 0,
  `text` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `rating` int NOT NULL DEFAULT 0,
  `quality` int NOT NULL DEFAULT 0,
  `accuracy` int NOT NULL DEFAULT 0,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`review_id`) USING BTREE,
  INDEX `product_id`(`product_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of review
-- ----------------------------

-- ----------------------------
-- Table structure for route
-- ----------------------------
DROP TABLE IF EXISTS `route`;
CREATE TABLE `route`  (
  `route_id` int NOT NULL AUTO_INCREMENT,
  `item_id` int NOT NULL DEFAULT 0,
  `path` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`route_id`) USING BTREE,
  INDEX `route_id`(`route_id`, `item_id`, `path`, `slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of route
-- ----------------------------

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

-- ----------------------------
-- Table structure for stock_status
-- ----------------------------
DROP TABLE IF EXISTS `stock_status`;
CREATE TABLE `stock_status`  (
  `stock_status_id` int NOT NULL AUTO_INCREMENT,
  `language_id` int NOT NULL DEFAULT 0,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`stock_status_id`, `language_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stock_status
-- ----------------------------

-- ----------------------------
-- Table structure for unit_class
-- ----------------------------
DROP TABLE IF EXISTS `unit_class`;
CREATE TABLE `unit_class`  (
  `unit_class_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `unit` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `value` decimal(15, 2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`unit_class_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of unit_class
-- ----------------------------
INSERT INTO `unit_class` VALUES (1, 'Pieces', 'pcs', 1.00);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `tax_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'NPWP',
  `bank_code` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `bank_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `bank_account_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `bank_account_number` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `address_id` int NOT NULL DEFAULT 0,
  `type` enum('b','s') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'b',
  `image` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `gender` enum('m','f') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'm',
  `telephone` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `dob` date NOT NULL DEFAULT '0000-00-00',
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `salt` varchar(9) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `code_activation` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `code_forgotten` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ip` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `verified` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_address` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `job` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job_status` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE,
  INDEX `email`(`email`, `username`, `active`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 136 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (3, '', '', '', '', '', 0, 'b', 'user/5c03781f307ed860c1d2f35e3b57b617.jpg', 'User Test', 'info@mpmwahl.id', 'm', '08646435344', '1992-10-12', 'usert8315', '4e9e3035199ccf73913bfa1af6bd1450c1dce4d1', 'c2b75042e', '', '', '111.94.47.134', 1, 0, '2021-01-07 20:33:19', '2021-02-22 15:49:04', '2021-06-16 00:13:07', 'Jakarta Indonesia 10270', 'Staff', 'Lainnya');
INSERT INTO `user` VALUES (6, '', '', '', '', '', 0, 'b', 'user.png', 'Edwin Mursin', 'edwin.mursin@gmail.com', 'm', '0816607377', '1990-01-01', 'edwin0985', '371798cf2beea44ce8170ae7346d4a81a2166a21', '3e2c73651', '', '', '203.206.118.98', 1, 0, '2021-01-25 16:15:08', '2021-01-25 16:15:08', '2021-03-25 10:16:02', NULL, 'wiraswasta', 'Lainnya');
INSERT INTO `user` VALUES (7, '', '', '', '', '', 0, 'b', 'user.png', 'Reyner', 'reyner@lrmcorporation.com', 'm', '0895365052956', '2004-01-01', 'reyne7126', '298ced6c9e71c417319dd89bb903a170bfb2ee00', '883f3800b', '', '', '112.215.238.223', 1, 0, '2021-01-26 09:09:30', '2021-01-26 09:09:30', '2021-02-04 09:11:01', NULL, 'Wiraswasta', 'Lainnya');
INSERT INTO `user` VALUES (8, '', '', '', '', '', 0, 'b', 'user.png', 'Giovanni Widjaja', 'giovanni.widjaja91@gmail.com', 'm', '0817390770', '1991-11-05', 'giova1986', '6aa7cb567ce6c82deee87595b8c51e7435772ea3', '05d0188fe', '', '', '182.253.124.111', 1, 0, '2021-01-26 15:05:03', '2021-01-26 15:05:03', '2021-02-03 22:39:15', NULL, 'BARBER OWNER', 'Lainnya');
INSERT INTO `user` VALUES (10, '', '', '', '', '', 8, 'b', 'user.png', 'Dhimas', 'dhimasherdi5@gmail.com', 'm', '088216460331', '1994-03-26', 'dhima8376', '6d272e6eecc1d448783969f61d0821f7a1aa4540', '92e625dac', '', '', '114.124.130.34', 1, 0, '2021-02-16 17:45:01', '2021-02-16 17:45:01', '2021-02-18 13:47:54', NULL, 'Barber', 'Barber');
INSERT INTO `user` VALUES (11, '', '', '', '', '', 9, 'b', 'user.png', 'Eko BMA', 'ekobma@gmail.com', 'm', '081229929185', '1987-10-07', 'ekobm2468', 'cb0938f65315eeba74fe5fb965fef58e5a1b1ce9', 'e64a98cf1', '', '', '182.2.36.102', 1, 0, '2021-02-16 20:26:27', '2021-02-16 20:26:27', '2021-04-03 00:35:10', NULL, 'Klaten', 'Lainnya');
INSERT INTO `user` VALUES (12, '', '', '', '', '', 10, 'b', 'user/70f53485ba683eb18dcd0130631f6ce2.jpg', 'Olivia Adeline', 'olivia.wahlmpm@gmail.com', 'f', '+6287782964488', '1996-03-09', 'olivi9218', '23ee4fe179e7c33fd222ff1388b79bd3233f3e19', '3349a95f8', '', '', '175.158.46.73', 1, 0, '2021-02-17 16:25:22', '2021-05-03 22:48:39', '2021-05-26 09:40:46', NULL, 'Karyawan Swasta', 'Lainnya');
INSERT INTO `user` VALUES (13, '', '', '', '', '', 11, 'b', 'user.png', 'Ayuni Chusnul Chotimah', 'ayunichusnul4@gmail.com', 'f', '089619155331', '1998-06-16', 'ayuni1697', '4c2a263a7189014537c4faa3f99e2f29dae76c76', '594a5c336', '', '', '36.88.53.46', 1, 0, '2021-02-22 10:01:44', '2021-02-22 10:01:44', '2021-05-28 13:43:09', NULL, 'Gudang', 'Lainnya');
INSERT INTO `user` VALUES (14, '', '', '', '', '', 12, 'b', 'user.png', 'Uci Irya', 'giyauci@gmail.com', 'f', '085692792526', '1990-04-14', 'uciir9184', '6587cc54ba39cde33028e812aa8f39bb352f31a7', '26c4dd0b9', '', '', '36.70.75.94', 1, 0, '2021-02-22 10:27:09', '2021-02-22 10:27:09', '2021-02-22 10:29:52', NULL, 'PT. KSM', 'Lainnya');
INSERT INTO `user` VALUES (15, '', '', '', '', '', 13, 'b', 'user.png', 'Catur Pamungkas', 'sinetronsuck@gmail.com', 'm', '089667202178', '1996-05-15', 'catur6897', '99439b6a1efd08b3cd59911cdfb01af10c83efd2', '474c50eb8', '', '', '114.142.170.15', 1, 0, '2021-02-22 20:39:42', '2021-02-22 20:39:42', '2021-02-22 20:39:42', NULL, 'classy barbershop', 'Barber');
INSERT INTO `user` VALUES (16, '', '', '', '', '', 14, 'b', 'user.png', 'Barbershop', 'Barbershoppachinko@gmail.com', 'm', '085722606111', '1987-09-02', 'barbe8729', '87ff0ab587e3fa58427c711bccb254aace461fc0', '454203dbf', '', '', '114.4.212.147', 1, 0, '2021-02-24 15:10:07', '2021-02-24 15:10:07', '2021-02-24 15:10:08', NULL, 'Barbershop', 'Barber Owner');
INSERT INTO `user` VALUES (17, '', '', '', '', '', 15, 'b', 'user.png', 'Zainstar', 'dev241n@gmail.com', 'm', '085707509222', '2004-01-01', 'zains4806', '6bf388e54b264259ec851ff8d6682eac2539a78f', '49b3e8ed6', '', '', '110.139.24.184', 1, 0, '2021-03-10 11:10:18', '2021-03-10 11:10:18', '2021-03-24 15:29:39', NULL, 'web', 'Lainnya');
INSERT INTO `user` VALUES (18, '', '', '', '', '', 16, 'b', 'user.png', 'Dian Crist Nurcahyo', 'cristdian2@gmail.com', 'm', '082142024855', '1981-12-31', 'dianc0465', '3a0ddca5f0da3dfaad01ad5e95da3ca762b01554', '567334c3c', '', '', '182.1.112.192', 1, 0, '2021-03-22 18:24:30', '2021-03-22 18:24:30', '2021-03-22 18:24:31', NULL, 'BARBERBOSS', 'Barber Owner');
INSERT INTO `user` VALUES (19, '', '', '', '', '', 17, 'b', 'user.png', 'Hafidz Ardin', 'Hafidzardin12@gmail.com', 'm', '089691869371', '1999-03-13', 'hafid1823', '184ccac4c750cc3f4af08d51288c341c66df8824', '4b0531b01', '', '', '202.67.35.22', 1, 0, '2021-03-23 16:07:13', '2021-03-23 16:07:13', '2021-03-23 16:07:13', NULL, 'Barber', 'Barber Owner');
INSERT INTO `user` VALUES (20, '', '', '', '', '', 18, 'b', 'user/75d37418b4c893bd4696dd61eddd905e.jpeg', 'Leo Beenhakker', 'leon.photo.net@gmail.com', 'm', '082144457311', '1984-02-06', 'leobe4638', 'a891ab5d4613b0907daea43b8a2e2f2c7b08751e', '457999f1e', '', '', '101.128.64.26', 1, 0, '2021-03-25 16:16:51', '2021-03-25 16:21:16', '2021-03-25 16:16:52', NULL, 'Imatouristnotabarber', 'Lainnya');
INSERT INTO `user` VALUES (21, '', '', '', '', '', 19, 'b', 'user.png', 'Isna Kusuma Nintyastuti', 'isnasuninto@gmail.com', 'f', '0811251319', '1978-10-09', 'isnak3145', '0ba1ec6f7aac1a93fa7a66b689635f72dcddbf2d', '108514fd4', '', '', '180.249.167.129', 1, 0, '2021-03-26 16:16:14', '2021-03-26 16:16:14', '2021-03-28 18:28:30', NULL, 'Unram', 'Lainnya');
INSERT INTO `user` VALUES (22, '', '', '', '', '', 20, 'b', 'user.png', 'Mario Danala Napitupulu', 'mario.corleone244@gmail.com', 'm', '085697047342', '1984-07-24', 'mario9207', '6fcf5c0de48abb72033df44942256469f7a8e3cf', '859597b00', '', '', '140.213.188.231', 1, 0, '2021-03-27 08:03:45', '2021-03-27 08:03:45', '2021-03-29 06:20:40', NULL, 'Bogor', 'Barber Owner');
INSERT INTO `user` VALUES (23, '', '', '', '', '', 21, 'b', 'user.png', 'Aditya Jayamurti', 'Ajayamurti@gamil.com', 'm', '081515299921', '1988-11-01', 'adity1248', '0d2306c0bfd01009d21234897028283093ba8ddb', 'f3650ce00', '', '', '120.188.95.18', 1, 0, '2021-03-29 19:18:51', '2021-03-29 19:18:51', '2021-03-29 19:18:51', NULL, 'Bandara Sultan Mahmud Badaruddin II Palembang', 'Lainnya');
INSERT INTO `user` VALUES (24, '', '', '', '', '', 22, 'b', 'user.png', 'Arif Wahyudi', 'mr.hito212@gmail.com', 'm', '087879494863', '1980-01-01', 'arifw2754', '2acd12404e259e7bb368aed2fd1ea6a929b59409', '980965bc2', '', '', '112.215.171.39', 1, 0, '2021-04-05 14:28:23', '2021-04-05 14:28:23', '2021-05-03 12:37:38', NULL, 'Cikarang', 'Barber Owner');
INSERT INTO `user` VALUES (25, '', '', '', '', '', 23, 'b', 'user.png', 'GO PRISKA PRAYOGO', 'Mahkotaindah19@gmail.com', 'f', '081327455303', '1971-11-23', 'gopri0165', '30083ef6ba56d7d78b5475bd9942d68f70c8dd5b', 'd91bc4f5a', '', '', '182.1.73.71', 1, 0, '2021-04-06 14:18:45', '2021-04-06 14:18:45', '2021-04-06 14:18:46', NULL, 'MAHKOTA INDAH SIDOARJO', 'Lainnya');
INSERT INTO `user` VALUES (26, '', '', '', '', '', 24, 'b', 'user.png', 'Ali Mauludin', 'malimauludin@gmail.com', 'm', '08122052221', '1981-01-29', 'alima4391', '9e276b8d7f11b57c7802354ba6699ce9e4fe06cd', '3fa599539', '', '', '114.122.100.90', 1, 0, '2021-04-08 07:02:28', '2021-04-08 07:02:28', '2021-04-08 07:02:28', NULL, 'Unpad', 'Lainnya');
INSERT INTO `user` VALUES (27, '', '', '', '', '', 25, 'b', 'user.png', 'Darren Setiawan', 'chriseldaica@yahoo.com', 'm', '082111457788', '1991-07-19', 'darre5293', 'd5d031f2f2ca8214ee242bf389800753c5b51baf', 'c2e621f02', '', '', '180.242.129.238', 1, 0, '2021-04-16 11:20:27', '2021-04-16 11:20:27', '2021-04-23 14:31:33', NULL, 'Rumah', 'Lainnya');
INSERT INTO `user` VALUES (28, '', '', '', '', '', 26, 'b', 'user.png', 'Hendrawan Nasution', 'hendra1st@gmail.com', 'm', '+628116555535', '1987-03-04', 'hendr6832', '605533eb5639454d44e4813bc8540aacc09b021f', 'b555c0702', '', '', '114.122.40.175', 1, 0, '2021-04-17 15:24:26', '2021-04-17 15:24:26', '2021-04-18 21:22:49', NULL, 'BRI Unit Kotapinang', 'Lainnya');
INSERT INTO `user` VALUES (29, '', '', '', '', '', 27, 'b', 'user.png', 'Alif Rahman Hakim', 'hakimalifrahman@gmail.com', 'm', '08111588123', '1995-09-01', 'alifr0756', '7e64ecec92c1fc0a1bc684eaadc84e4a4d58a0d2', '9c39d58f7', '', '', '222.124.40.31', 1, 0, '2021-04-20 19:45:47', '2021-04-20 19:45:47', '2021-04-27 17:23:33', NULL, 'DIREKTORAT KELAIKUDARAAN DAN PENGOPERASIAN PESAWAT UDARA', 'Lainnya');
INSERT INTO `user` VALUES (30, '', '', '', '', '', 28, 'b', 'user.png', 'Crusli.shop@gmail.com', 'crusli.shop@gmail.com', 'm', '081219650500', '1980-11-13', 'crusl2305', 'fc8538164ef0d8af8e668e22e6c91292fd90b0c7', 'e7e987229', '', '', '158.140.187.250', 1, 0, '2021-04-23 08:12:55', '2021-04-23 08:12:55', '2021-04-23 08:12:55', NULL, 'Barbershop', 'Lainnya');
INSERT INTO `user` VALUES (31, '', '', '', '', '', 29, 'b', 'user.png', 'Julia Wongso', 'Juliawongso@gmail.com', 'f', '08124231510', '1985-12-20', 'julia5124', '378361f8ed0dd5d711187b98cbb1d2742655203b', 'c452f3684', '', '', '180.244.35.7', 1, 0, '2021-04-26 14:41:10', '2021-04-26 14:41:10', '2021-05-21 18:57:26', NULL, 'Mitzuko', 'Lainnya');
INSERT INTO `user` VALUES (32, '', '', '', '', '', 30, 'b', 'user.png', 'M Natsir', 'wong_geek@yahoo.com', 'm', '085649401425', '1984-11-30', 'mnats8346', '5e1271eb6e45e6eccf29ba583e5197e890bcb110', 'dabe59a10', '', '', '114.4.221.53', 1, 0, '2021-05-06 21:23:32', '2021-05-06 21:23:32', '2021-05-07 18:32:56', NULL, 'Toko', 'Lainnya');
INSERT INTO `user` VALUES (33, '', '', '', '', '', 31, 'b', 'user.png', 'Yoyok Bekti  Prasetyo', 'yoyok@umm.ac.id', 'm', '08125208825', '1975-09-14', 'yoyok9521', '356cb3f150ae6972f421892e0bbacf2edf625ac9', '19038f975', '', '', '36.70.255.218', 1, 0, '2021-05-08 07:52:17', '2021-05-08 07:52:17', '2021-05-08 07:52:18', NULL, 'Universitas Muhammadiyah Malang', 'Lainnya');
INSERT INTO `user` VALUES (34, '', '', '', '', '', 33, 'b', 'user.png', 'Febry Eka', 'mangbaray@gmail.com', 'm', '082153702403', '1992-02-18', 'febry8092', '49b066c5d968bb6b0f9b3db527cdad1bf8a4a724', '0d9c6e490', '', '', '140.213.201.155', 1, 0, '2021-05-11 21:10:41', '2021-05-11 21:10:41', '2021-05-11 21:10:42', NULL, 'Mangbaray barber', 'Barber Owner');
INSERT INTO `user` VALUES (35, '', '', '', '', '', 34, 'b', 'user.png', 'Irwan Kurniawan', 'irwankurniawan210@gmail.com', 'm', '081377802143', '1995-03-30', 'irwan4051', '988bafff1727c4dd60dc186c6559637f93e96905', '11fe26d23', '', '', '114.125.235.243', 1, 0, '2021-05-12 17:04:59', '2021-05-12 17:04:59', '2021-05-12 21:51:26', NULL, 'Palembang', 'Barber Owner');
INSERT INTO `user` VALUES (36, '', '', '', '', '', 35, 'b', 'user.png', 'Nico Hansen', 'nhpardede@gmail.com', 'm', '081905040120', '1979-10-14', 'nicoh2709', '1919136271cb59ae4e6e023ce2da1eca629f0cdc', '269760402', '', '', '103.3.222.119', 1, 0, '2021-05-15 15:47:24', '2021-05-15 15:47:24', '2021-05-17 01:12:33', NULL, 'Thamrin', 'Lainnya');
INSERT INTO `user` VALUES (37, '', '', '', '', '', 36, 'b', 'user.png', 'Tjiu Sandi Wilianto', 'Tjusandi@gmail.com', 'm', '08113409808', '1980-03-19', 'tjius1563', '7e25ce3422ec6f9117ea339e2af835dfcd94439d', '2ad4a8865', '', '', '182.1.77.180', 1, 0, '2021-05-16 18:10:55', '2021-05-16 18:10:55', '2021-05-25 20:20:45', NULL, 'Wiraswasta', 'Lainnya');
INSERT INTO `user` VALUES (38, '', '', '', '', '', 37, 'b', 'user.png', 'Muhammad Al-Ikhsan', 'ikoikhsan44@gmail.com', 'm', '085205372909', '2003-04-04', 'muham2549', '29ca9f1831157c415d0895af033e0ebdbcc3b5b4', '01662ca3c', '', '', '125.166.125.89', 1, 0, '2021-05-17 22:09:11', '2021-05-17 22:09:11', '2021-06-16 08:01:53', NULL, 'PADO RADE BARBER SHOP', 'Barber');
INSERT INTO `user` VALUES (39, '', '', '', '', '', 38, 'b', 'user.png', 'Suby Anggadibrata', 'Subyanggadibrata@gmail.com', 'm', '081806514103', '1962-06-10', 'subya0259', '437fc1d341a7f07deda22d45a6e4290d59e3de58', '360cd69bc', '', '', '66.96.225.66', 1, 0, '2021-05-19 16:05:44', '2021-05-19 16:05:44', '2021-05-19 16:05:44', NULL, 'Rumah', 'Lainnya');
INSERT INTO `user` VALUES (40, '', '', '', '', '', 39, 'b', 'user.png', 'Carsoma', 'Sq.carsoma@gmail.com', 'm', '083890164474', '1992-02-26', 'carso0296', '791dea3bac48e3df732433f08f34c5d17b02ff6f', 'b79897f85', '', '', '114.122.106.114', 1, 0, '2021-05-22 19:55:42', '2021-05-22 19:55:42', '2021-05-23 11:24:42', NULL, 'Bekasi', 'Lainnya');
INSERT INTO `user` VALUES (41, '', '', '', '', '', 40, 'b', 'user.png', 'Dhifan Fathin Hermawan', 'dhifanfhermawan@gmail.com', 'm', '081255560126', '1994-01-05', 'dhifa6140', '2b9b048f5616bb93703af532ca59900ac8ba51c3', 'e485f308d', '', '', '182.1.180.106', 1, 0, '2021-05-23 17:50:58', '2021-05-23 17:50:58', '2021-08-11 19:21:03', NULL, 'Freelance', 'Barber');
INSERT INTO `user` VALUES (42, '', '', '', '', '', 41, 'b', 'user/19eb3079f890f720a8ac4d72ac6b628b.jpg', 'RAFAQUA AZZAHRAFIQ FAIA', 'azzahrafiqrafaqua@gmail.com', 'm', '085710902298', '2002-06-14', 'rafaq6490', '379f89ef73a29c4f5132d5018ce34baafe7e99d6', '179576b19', '', '', '36.74.222.207', 1, 0, '2021-05-24 21:41:53', '2021-05-24 21:43:22', '2021-05-30 11:55:23', NULL, '-', 'Lainnya');
INSERT INTO `user` VALUES (43, '', '', '', '', '', 42, 'b', 'user.png', 'Abraham David Hansaputra', 'Abrahamdvd12@gmail.com', 'm', '+19709480158', '1995-06-12', 'abrah3610', '09e95814e166dab701368a71d30678e7aa71836f', '31b4fbd58', '', '', '67.190.134.67', 1, 0, '2021-05-27 12:45:40', '2021-05-27 12:45:40', '2021-05-27 12:45:40', NULL, 'Dr water air isi ulang', 'Barber Owner');
INSERT INTO `user` VALUES (44, '', '', '', '', '', 43, 'b', 'user.png', 'Edward Jahja Saputra', 'edward.jahja.saputra@gmail.com', 'm', '087821171688', '1987-06-10', 'edwar8263', '8de8794fbbbd5bf1c2f3438a0b34388fa435e17f', '1ca52313b', '', '', '180.251.129.195', 1, 0, '2021-05-27 22:14:32', '2021-05-27 22:14:32', '2021-05-27 22:14:33', NULL, 'Westminster Barber Paskal Hyper Square', 'Barber Owner');
INSERT INTO `user` VALUES (45, '', '', '', '', '', 44, 'b', 'user.png', 'Jessy', 'julianaekaputri@yahoo.com', 'f', '081586263718', '1993-07-12', 'jessy9847', 'fe09febd28ec88e03326633efc245f73921b73ff', '49cb331f0', '', '', '114.124.198.68', 1, 0, '2021-05-28 13:46:15', '2021-05-28 13:46:15', '2021-06-02 21:11:21', NULL, '-', 'Barber Owner');
INSERT INTO `user` VALUES (46, '', '', '', '', '', 45, 'b', 'user.png', 'Waris Nugroho', 'agungwaris@gmail.com', 'm', '081258223093', '1975-05-10', 'waris7931', '0960a6255a1839deec0f212a11aa5f56122c0587', 'e3048a59b', '', '', '180.248.122.179', 1, 0, '2021-06-01 08:43:20', '2021-06-01 08:43:20', '2021-06-04 09:20:18', NULL, 'Rishobar', 'Barber Owner');
INSERT INTO `user` VALUES (47, '', '', '', '', '', 46, 'b', 'user.png', 'Alpius Wau', 'alpiuswau2@gmail.com', 'm', '081370414167', '1988-04-14', 'alpiu8759', 'c2554056b286b4a5f8e708668abeddd6100e8bc9', '054861577', '', '', '114.122.132.49', 1, 0, '2021-06-05 00:02:22', '2021-06-05 00:02:23', '2021-09-07 11:55:28', NULL, 'Brams Barber', 'Lainnya');
INSERT INTO `user` VALUES (48, '', '', '', '', '', 47, 'b', 'user.png', 'Johni Widianto', 'officialweka@gmail.com', 'm', '083878883332', '1990-07-16', 'johni3274', '970c3ba2ec1dd54467510a50a91c577e526f97c3', '594d083fc', '', '', '36.68.54.69', 1, 0, '2021-06-05 00:59:42', '2021-06-05 00:59:42', '2021-06-05 01:01:11', NULL, 'Sikasur', 'Barber Owner');
INSERT INTO `user` VALUES (49, '', '', '', '', '', 48, 'b', 'user.png', 'Rispaldi', 'Rispaldi@gmail.com', 'm', '6282284193939', '1992-12-05', 'rispa8340', 'c87c3cbb537a74e59422829bc1e957379e1bfdd3', '3dfe191d8', '', '', '182.1.16.61', 1, 0, '2021-06-05 02:39:11', '2021-06-05 02:39:11', '2021-06-28 09:34:10', NULL, 'Pariaman', 'Lainnya');
INSERT INTO `user` VALUES (50, '', '', '', '', '', 49, 'b', 'user.png', 'Gary Tan', 'gary.tan@wahlsea.com', 'm', '123456789', '1987-02-05', 'garyt4681', 'ef25d3bcbf09a9a5121c84fc1a383713a6eb230a', '54f814837', '', '', '138.75.7.234', 1, 0, '2021-06-11 10:12:18', '2021-06-11 10:14:15', '2021-06-16 13:21:43', NULL, 'test', 'Barber');
INSERT INTO `user` VALUES (51, '', '', '', '', '', 50, 'b', 'user.png', 'Dapid', 'Dapidms@gmail.com', 'm', '081397111208', '1985-08-21', 'dapid6894', 'e4cc685c6fd6cafd38769801ce290bd7799000da', 'ea034354e', '', '', '36.69.0.165', 1, 0, '2021-06-13 00:14:29', '2021-06-13 00:14:29', '2021-06-13 00:14:30', NULL, 'Penggunaan pribadi', 'Lainnya');
INSERT INTO `user` VALUES (52, '', '', '', '', '', 51, 'b', 'user.png', 'Hadi Prawoto', 'adhyphe@yahoo.com', 'm', '08111098744', '1981-04-26', 'hadip3719', 'e25a32516bfab6438f746faa0f0497a21c7beb41', '4c6431d85', '', '', '114.124.211.211', 1, 0, '2021-06-14 15:36:09', '2021-06-14 15:36:10', '2021-06-15 10:42:47', NULL, 'Tanah Abang', 'Lainnya');
INSERT INTO `user` VALUES (53, '', '', '', '', '', 52, 'b', 'user.png', 'Abdul Latif', 'Alatief300@gmail.com', 'm', '089636185558', '1991-12-20', 'abdul2748', '6460df18946493e10a81b5b2d187ff2b4e1e6c2f', '9859c7994', '', '', '120.188.94.42', 1, 0, '2021-06-15 08:54:52', '2021-06-15 08:54:52', '2021-06-15 08:54:54', NULL, 'Barber', 'Barber');
INSERT INTO `user` VALUES (54, '', '', '', '', '', 53, 'b', 'user.png', 'Hedy Herawan', 'hedy.herawan@gmail.com', 'm', '0812203321', '1974-10-19', 'hedyh9076', 'ad3f85993b921222863fd52b830f3ff293eca684', '12bca037d', '', '', '114.124.141.69', 1, 0, '2021-06-15 10:27:21', '2021-06-15 10:27:21', '2021-06-15 10:27:23', NULL, 'bandung', 'Lainnya');
INSERT INTO `user` VALUES (55, '', '', '', '', '', 54, 'b', 'user.png', 'Intan Heryadi', 'intanpratami@gmail.com', 'f', '0818642822', '1985-02-27', 'intan2810', '7113925ee21da7d84ed85812c60f0d6eb4104fa7', 'a659da285', '', '', '180.244.130.99', 1, 0, '2021-06-15 20:56:35', '2021-06-15 20:56:35', '2021-06-16 21:36:39', NULL, '-', 'Lainnya');
INSERT INTO `user` VALUES (56, '', '', '', '', '', 55, 'b', 'user.png', 'Brillian Putra S', 'brillianputras1@gmail.com', 'm', '082244001722', '2001-08-01', 'brill8237', 'c4c4a80ad9fe0f22d1d050548f7c63115006f496', '3a261e1df', '', '', '182.1.123.152', 1, 0, '2021-06-16 21:23:19', '2021-06-16 21:23:19', '2021-06-17 00:23:03', NULL, 'Wiraswasta', 'Barber Owner');
INSERT INTO `user` VALUES (57, '', '', '', '', '', 56, 'b', 'user.png', 'AA. KURNIAWAN', 'aakurniawan01@gmail.com', 'm', '081259690605', '1983-04-01', 'aa.ku4139', '534760b7815d62c1b5108b28d773afbd930be85c', '29b0a7e1d', '', '', '120.188.85.96', 1, 0, '2021-06-21 11:11:19', '2021-06-21 11:11:19', '2021-06-21 11:11:21', NULL, 'Wiraswasta', 'Lainnya');
INSERT INTO `user` VALUES (58, '', '', '', '', '', 57, 'b', 'user.png', 'Feiliana Anthony', 'feiliana.a@gmail.com', 'f', '089681660845', '1981-06-22', 'feili9015', 'fb4c6dbf572ec9830a18b288a674891f461559a6', '2d97bca5e', '', '', '61.5.107.221', 1, 0, '2021-06-21 14:38:45', '2021-06-21 14:38:45', '2021-06-21 17:43:07', NULL, 'Barber', 'Barber Owner');
INSERT INTO `user` VALUES (59, '', '', '', '', '', 58, 'b', 'user.png', 'Abdul Rasyid Tumangger', 'abdulrasyid281@gmail.com', 'm', '+62 822 8644 6132', '1995-03-25', 'abdul1729', 'bee95f1b81fcc2df94ec4b780d8e7525fb869076', '561df8e8f', '', '', '36.71.137.231', 1, 0, '2021-06-21 18:25:45', '2021-06-21 18:25:45', '2021-06-21 18:25:47', NULL, 'Next Premium Barbershop', 'Barber');
INSERT INTO `user` VALUES (60, '', '', '', '', '', 59, 'b', 'user.png', 'Syaiful Zamaludin', 'syaifulzamaludinn@gmail.com', 'm', '+62 81313293806', '1993-04-15', 'syaif7836', '435d077ac36e05a162a694ae999d3306b43cb6b0', '8977ffaf0', '', '', '180.244.139.72', 1, 0, '2021-06-22 13:52:49', '2021-06-22 13:52:49', '2021-06-22 13:52:51', NULL, 'Dapo 10 Gent\'s Haircut', 'Barber Owner');
INSERT INTO `user` VALUES (61, '', '', '', '', '', 60, 'b', 'user.png', 'Noval Priwa Ginting', 'novalg71@gmail.com', 'm', '081260221935', '2001-11-12', 'noval2483', '94d66f838b8e69e9c8536988040c88633b569bef', '65045f132', '', '', '112.215.229.125', 1, 0, '2021-06-24 16:12:00', '2021-06-24 16:12:00', '2021-08-23 09:05:28', NULL, 'Spartan Barbershop', 'Barber');
INSERT INTO `user` VALUES (62, '', '', '', '', '', 61, 'b', 'user.png', 'Kartika', 'Kartika_993@yahoo.com', 'f', '081809010202', '1993-03-05', 'karti5710', '0e7264dd42b993b0128383163e6eeb83118b19fa', 'b9c983b79', '', '', '140.213.5.207', 1, 0, '2021-06-25 14:26:03', '2021-06-25 14:26:03', '2021-06-25 14:26:05', NULL, 'Rumah', 'Lainnya');
INSERT INTO `user` VALUES (63, '', '', '', '', '', 62, 'b', 'user.png', 'Retno Wulandari', 'retno85wulandari@gmail.com', 'f', '085693499060', '1985-03-24', 'retno7418', '928a10907c5bd89b94b2c4cc9c7c2b0a34bdaf2f', '6b5b44b2b', '', '', '182.2.132.40', 1, 0, '2021-06-29 15:32:21', '2021-06-29 15:32:21', '2021-06-30 14:08:30', NULL, 'Karyawan', 'Lainnya');
INSERT INTO `user` VALUES (64, '', '', '', '', '', 64, 'b', 'user.png', 'Dimas Ramadhan Putra', 'dimasramadhanp@yahoo.co.id', 'm', '6282297129826', '1996-02-06', 'dimas9453', 'ff82c7047e4dc0f85abe699d8f16f91446f4e9f7', '08f5d4cf2', '', '', '180.252.117.175', 1, 0, '2021-06-30 19:53:51', '2021-06-30 19:53:51', '2021-07-01 12:26:52', NULL, 'PT Sharp Electronics Indonesia', 'Lainnya');
INSERT INTO `user` VALUES (65, '', '', '', '', '', 65, 'b', 'user.png', 'Siti Ulparia Lubis', 'sitiulparia@gmail.com', 'f', '081264152316', '1991-03-23', 'sitiu8106', '4ee36783aef4865c19eb6da214fa36a3511dac71', '1bb6dab95', '', '', '36.71.141.191', 1, 0, '2021-07-02 14:14:01', '2021-07-02 14:14:01', '2021-07-05 13:14:22', NULL, 'IT.DEL', 'Lainnya');
INSERT INTO `user` VALUES (66, '', '', '', '', '', 66, 'b', 'user.png', 'Herru Semono', 'hsemono@gmail.com', 'm', '+6281317710773', '1980-06-03', 'herru1580', '8141704eb633eebe07d5c546305668db10cc11f6', 'c98e04cfa', '', '', '118.96.108.244', 1, 0, '2021-07-02 14:36:19', '2021-07-02 14:36:19', '2021-07-28 01:26:41', NULL, 'Mahkamah Agung RI', 'Lainnya');
INSERT INTO `user` VALUES (67, '', '', '', '', '', 67, 'b', 'user.png', 'Hiu Khi On', 'Hiukhion@gmail.com', 'm', '0811233750', '1978-03-29', 'hiukh8103', '7a6fb905e3858cce193f54072d46819a4be83317', '82e8d2cec', '', '', '175.158.53.248', 1, 0, '2021-07-02 15:02:04', '2021-07-02 15:02:04', '2021-07-03 09:48:52', NULL, 'Karawang', 'Lainnya');
INSERT INTO `user` VALUES (68, '', '', '', '', '', 68, 'b', 'user.png', 'Kevin Lee', 'holy_vinlee@yahoo.com', 'm', '081223456270', '1992-11-22', 'kevin3219', '195e23807a81ed2833cc51be45dda7dcfba2c752', 'd99c9e06d', '', '', '110.137.74.93', 1, 0, '2021-07-04 15:14:13', '2021-07-04 15:14:13', '2021-07-04 15:14:14', NULL, 'Kantor swasta', 'Lainnya');
INSERT INTO `user` VALUES (69, '', '', '', '', '', 69, 'b', 'user.png', 'Lisna', 'Liznajunoth@gmail.com', 'm', '081313490304', '1997-03-03', 'lisna7065', '3e60457a48474af87560da30ef9ddcb61287ca1f', '352873cd3', '', '', '36.71.236.161', 1, 0, '2021-07-05 16:32:59', '2021-07-05 16:32:59', '2021-07-05 16:33:01', NULL, 'The Classic Haircuts', 'Barber Owner');
INSERT INTO `user` VALUES (70, '', '', '', '', '', 70, 'b', 'user.png', 'Achmad Fauzi Noor Hanani', 'Fauzhyhore2424@gmail.com', 'm', '081332678696', '2000-04-02', 'achma0324', '23352c80f334802edca7f0a44b97b55efc258a0f', '2ee921a71', '', '', '182.1.104.243', 1, 0, '2021-07-05 18:42:35', '2021-07-05 18:42:35', '2021-07-08 00:10:01', NULL, 'Jalan letjend suprapto sukowati no.12', 'Barber Owner');
INSERT INTO `user` VALUES (71, '', '', '', '', '', 71, 'b', 'user.png', 'Adam Wahyudi Hs', 'Gobankumis@gmail.com', 'm', '081248464474', '1993-11-20', 'adamw6304', '20fad4305daaa35908fcaaf88e09dfc8d7954287', 'c7c1266a0', '', '', '125.167.117.138', 1, 0, '2021-07-06 06:59:00', '2021-07-06 06:59:00', '2021-07-06 06:59:02', NULL, 'Hairstylis', 'Barber');
INSERT INTO `user` VALUES (72, '', '', '', '', '', 72, 'b', 'user.png', 'Grady Edbert Timothy', 'gradyedbert@yahoo.com', 'm', '087888506263', '1998-06-02', 'grady0492', 'eb3fbe7b0809b469c507f3663df7a0f75c4cc054', '40b38194f', '', '', '118.99.114.202', 1, 0, '2021-07-06 11:06:17', '2021-07-06 11:06:17', '2021-07-06 11:06:28', NULL, 'Vibe United', 'Lainnya');
INSERT INTO `user` VALUES (73, '', '', '', '', '', 73, 'b', 'user.png', 'Rafid Ali Rabbani', 'rafidalirabbani@gmail.com', 'm', '089675392601', '2001-09-16', 'rafid5802', 'b436dfd7c0be0fd265a07190fea309c7b617436a', '7480fe03a', '', '', '116.206.8.30', 1, 0, '2021-07-06 15:39:12', '2021-07-06 15:39:12', '2021-07-06 15:39:13', NULL, '-', 'Lainnya');
INSERT INTO `user` VALUES (74, '', '', '', '', '', 74, 'b', 'user.png', '-Hadi -Cahyono', 'hadicahyono774@gmail.com', 'm', '085231482211', '1979-11-20', '-hadi4021', 'c15231f32980c1ed8474e4405e2cc96512a5df48', '9de5e013f', '', '', '114.125.79.191', 1, 0, '2021-07-11 09:25:16', '2021-07-11 09:25:16', '2021-07-11 09:25:17', NULL, 'Rumah', 'Lainnya');
INSERT INTO `user` VALUES (75, '', '', '', '', '', 75, 'b', 'user.png', 'Joshua Nathanael Afan', 'Joshua.afan@outlook.com', 'm', '081297840842', '1998-06-21', 'joshu6201', 'c1f94403160babc095a0bb8878c594dc9d49694c', 'f9f66953a', '', '', '182.1.76.217', 1, 0, '2021-07-12 08:02:49', '2021-07-12 08:02:49', '2021-07-12 08:02:50', NULL, 'Royal Ambarrukmo', 'Lainnya');
INSERT INTO `user` VALUES (76, '', '', '', '', '', 76, 'b', 'user.png', 'Ud Beauty', 'Udbeautepekanbaru@gmail.com', 'm', '082125385078', '1987-01-01', 'udbea6013', '4dbed668b2f836d3aefdf8eb1d2e03472356a235', '451297ca6', '', '', '125.165.111.216', 1, 0, '2021-07-13 17:36:16', '2021-07-13 17:36:16', '2021-09-01 15:37:48', NULL, 'Ud  Beaute', 'Lainnya');
INSERT INTO `user` VALUES (77, '', '', '', '', '', 77, 'b', 'user.png', 'Sukirno', 'sukirno2244@gmail.com', 'm', '085779696589', '1986-05-12', 'sukir2508', 'ae99c9640c1c3f6d062baec47fcd0c1c27717564', 'd0539b5d7', '', '', '180.246.97.215', 1, 0, '2021-07-14 15:08:33', '2021-07-14 15:08:33', '2021-07-14 15:08:34', NULL, 'Tidak bekerja', 'Lainnya');
INSERT INTO `user` VALUES (78, '', '', '', '', '', 78, 'b', 'user.png', 'Kuncoro Ambra Zamzani', 'kukun.zamzani@gmail.com', 'm', '082256565604', '1985-04-04', 'kunco7462', '44fc2c4fda49fd34e90e2726ecdee4b6caf5dac9', 'c8822254f', '', '', '120.188.39.24', 1, 0, '2021-07-14 18:16:40', '2021-07-14 18:16:40', '2021-07-14 18:16:41', NULL, 'Kemayoran', 'Lainnya');
INSERT INTO `user` VALUES (79, '', '', '', '', '', 79, 'b', 'user.png', 'Andri Kriswanto', 'andrikriswanto77@gmail.com', 'm', '085707199036', '1983-09-12', 'andri7391', '018b0d7aa58cbb4e0d147aa7c498d95bb6265fb5', '5240f5552', '', '', '180.251.97.190', 1, 0, '2021-07-16 15:25:59', '2021-07-16 15:25:59', '2021-07-17 15:18:11', NULL, 'Jl. Ratu Ayu No. 37 Desa Wage', 'Lainnya');
INSERT INTO `user` VALUES (80, '', '', '', '', '', 80, 'b', 'user.png', 'Handi Natif Saifudin', 'handinatif@gmail.com', 'm', '089601899937', '1998-05-19', 'handi5013', '0dcf55d635f0a4ff095cd8b4d95dd859e8aa2118', '3c7ff7dcb', '', '', '103.108.21.93', 1, 0, '2021-07-18 12:52:52', '2021-07-18 12:52:52', '2021-07-18 12:52:53', NULL, 'Barbershop', 'Barber');
INSERT INTO `user` VALUES (81, '', '', '', '', '', 81, 'b', 'user.png', 'Muh Fiqhi Al Azhar', 'Akubarbershop@gmail.com', 'm', '082393463435', '1995-11-19', 'muhfi4370', 'fe0e0a4eb0fead911968ba74c7a21688c732fda4', 'aa8a66f97', '', '', '125.162.214.46', 1, 0, '2021-07-18 20:10:50', '2021-07-18 20:10:50', '2021-08-27 10:19:56', NULL, 'Jl. Bontotangnga, Kec. Somba Opu, Kabupaten Gowa, Sulawesi', 'Barber Owner');
INSERT INTO `user` VALUES (82, '', '', '', '', '', 82, 'b', 'user.png', 'Wildan Bakhtiar', 'bakhtiarwildan14@gmail.com', 'm', '081324188910', '1999-01-16', 'wilda3874', '6ceec766fa4473cde55e1e45b451ce65f2da8fca', 'ca21a99d9', '', '', '114.122.68.145', 1, 0, '2021-07-20 16:28:16', '2021-07-20 16:28:16', '2021-07-20 16:28:17', NULL, 'Belum bekerja', 'Lainnya');
INSERT INTO `user` VALUES (83, '', '', '', '', '', 83, 'b', 'user.png', 'Mohamad Rajih Radiansyah', 'mohamadrajihradiansyah@gmail.com', 'm', '08118019906', '1990-11-12', 'moham4935', '7219e97b2f509a0ee595368d2f0b4541d96b31e2', '7dbe3c079', '', '', '36.70.193.214', 1, 0, '2021-07-23 09:29:18', '2021-07-23 09:29:18', '2021-07-23 11:40:23', NULL, 'Pns', 'Lainnya');
INSERT INTO `user` VALUES (84, '', '', '', '', '', 84, 'b', 'user.png', 'Maria Ulfa', 'mariab4b4@gmail.com', 'f', '081311512037', '1987-08-09', 'maria1638', '25561857b6efaacc17919f4798e2674070a376b2', '7fa90f3ab', '', '', '180.244.166.56', 1, 0, '2021-07-23 17:06:22', '2021-07-23 17:06:22', '2021-07-23 17:21:27', NULL, 'Rumah', 'Lainnya');
INSERT INTO `user` VALUES (85, '', '', '', '', '', 85, 'b', 'user.png', 'Rosmina Susana', 'bellebella88@ymail.com', 'f', '+6281519323312', '1967-07-10', 'rosmi1504', '1797ffbf572add48843796c187c826b2e4623731', '03ce5c331', '', '', '123.253.235.122', 1, 0, '2021-07-25 12:51:43', '2021-07-25 12:51:43', '2021-07-25 21:01:34', NULL, 'Rumah', 'Lainnya');
INSERT INTO `user` VALUES (86, '', '', '', '', '', 86, 'b', 'user.png', 'Ghalih Lhegawa', 'ghalih.lhegawa@yahoo.co.id', 'm', '081998914111', '1987-10-25', 'ghali6312', '0dc59005a4957718f39a2570464f100644987eff', '58739b504', '', '', '66.96.225.79', 1, 0, '2021-07-25 21:16:06', '2021-07-25 21:16:06', '2021-07-25 21:16:07', NULL, 'Jakarta', 'Lainnya');
INSERT INTO `user` VALUES (87, '', '', '', '', '', 87, 'b', 'user.png', 'Lim Fui Liong', 'limfl.kmi@gmail.com', 'm', '08121077967', '1964-01-15', 'limfu6204', '2b5c0f7efa59119aefb968ff44eed63c6829f4b2', 'a999525e8', '', '', '103.3.222.14', 1, 0, '2021-07-25 21:25:03', '2021-07-25 21:25:03', '2021-07-26 23:31:16', NULL, 'Jl Raya Bekasi', 'Lainnya');
INSERT INTO `user` VALUES (88, '', '', '', '', '', 88, 'b', 'user.png', 'Adit Saeful Fajri', 'aditsaeful27@gmail.com', 'm', '082115438956', '1997-01-29', 'adits9150', '579301cad8ec98122a70a071f8423589f9e00330', 'f81253185', '', '', '114.122.103.204', 1, 0, '2021-07-30 09:00:06', '2021-07-30 09:00:06', '2021-07-30 09:12:20', NULL, 'Pasar sayati', 'Lainnya');
INSERT INTO `user` VALUES (89, '', '', '', '', '', 89, 'b', 'user.png', 'Virda Amylia Agustin', 'virdaamylua26@gmail.com', 'f', '082144940034', '1998-08-26', 'virda3604', 'fc1e5aed38c28693747d40a822861b76908231cf', 'dcbeb4e49', '', '', '36.85.191.12', 1, 0, '2021-07-30 22:00:17', '2021-07-30 22:00:17', '2021-07-30 22:00:18', NULL, '-', 'Lainnya');
INSERT INTO `user` VALUES (90, '', '', '', '', '', 90, 'b', 'user.png', 'Virda Amylia Agustin', 'virdaamylia26@gmail.com', 'f', '087840404535', '1998-08-26', 'virda1832', '34fade27d4f92291e67a597f3deae63a4023ef6b', '56c2c7f41', '', '', '128.1.195.175', 1, 0, '2021-07-30 22:01:50', '2021-07-30 22:01:50', '2021-08-04 20:50:48', NULL, '-', 'Lainnya');
INSERT INTO `user` VALUES (91, '', '', '', '', '', 91, 'b', 'user.png', 'Mayang Sundari', 'Mayangsundari2@gmail.com', 'f', '083145067539', '1998-07-15', 'mayan2107', 'f1cd39371adf977d3de52d7e0d001af35f0b81c3', 'f3fbd994b', '', '', '140.213.164.237', 1, 0, '2021-08-03 14:22:37', '2021-08-03 14:22:37', '2021-08-11 18:07:32', NULL, 'Kaliwiro', 'Barber Owner');
INSERT INTO `user` VALUES (92, '', '', '', '', '', 92, 'b', 'user.png', 'Muhammad Najib', 'Najebreareo@gmail.com', 'm', '085755262517', '1995-12-20', 'muham2351', 'f89ba5b92fcc0c7b4cbce339e67c1ad9a1f85ec2', '02a007691', '', '', '36.90.173.90', 1, 0, '2021-08-04 17:50:49', '2021-08-04 17:50:49', '2021-08-04 17:50:50', NULL, 'Pejuang rapi', 'Barber Owner');
INSERT INTO `user` VALUES (93, '', '', '', '', '', 93, 'b', 'user/27738fa61b2d4c35bfe6d52f7a5baf5e.jpg', 'Doni Astra Rizki', 'budakmelayu09830@gmail.com', 'm', '082161451107', '1990-03-18', 'donia9103', '715dd05424dd14d4ace16bd2c5fc7716cd255f9f', '918480e09', '', '', '125.165.106.61', 1, 0, '2021-08-08 15:29:39', '2021-08-08 15:42:29', '2021-08-12 15:14:19', NULL, 'Jl. Cemara No. 57', 'Lainnya');
INSERT INTO `user` VALUES (94, '', '', '', '', '', 94, 'b', 'user.png', 'Ade Kurniawan Pratama', 'kurniawanpratama26@gmail.com', 'm', '081236148645', '1999-03-01', 'adeku6379', 'd2971e67e6455a8eb7a5c860a7264ac75e0a7813', '7ecaf1bf2', '', '', '182.1.72.0', 1, 0, '2021-08-08 17:43:01', '2021-08-08 17:43:01', '2021-08-08 17:43:02', NULL, 'Barbermaxxs', 'Barber Owner');
INSERT INTO `user` VALUES (95, '', '', '', '', '', 95, 'b', 'user.png', 'Arpendi', 'arpendywkc69@gmail.com', 'm', '082282007995', '1993-02-06', 'arpen5689', 'df279560cb93859fdb91a06306ff751b5624a5df', 'ef6cc933b', '', '', '114.125.62.218', 1, 0, '2021-08-10 13:27:29', '2021-08-10 13:27:29', '2021-08-10 13:27:30', NULL, 'Barbershop', 'Barber');
INSERT INTO `user` VALUES (96, '', '', '', '', '', 96, 'b', 'user.png', 'Stevens Harlan T', 'stevens.harlan@gmail.com', 'm', '081290685750', '1980-07-26', 'steve6379', '197a1d5a84a03ffa1bd68fb0a51bc1c83e37508f', 'e2c768b06', '', '', '182.30.80.203', 1, 0, '2021-08-10 14:08:19', '2021-08-10 14:08:19', '2021-09-03 21:22:12', NULL, 'Pluit', 'Lainnya');
INSERT INTO `user` VALUES (97, '', '', '', '', '', 97, 'b', 'user.png', 'Syamsul Rahman', 'syambenison@gmail.com', 'm', '089630001803', '1981-07-23', 'syams4582', 'b0b97c07d79a96eece2fd6d9a04d475f0eb71b20', '464379949', '', '', '111.94.149.134', 1, 0, '2021-08-11 09:58:55', '2021-08-11 09:58:55', '2021-08-13 15:49:45', NULL, 'Pondok gede', 'Lainnya');
INSERT INTO `user` VALUES (98, '', '', '', '', '', 98, 'b', 'user.png', 'Aldi Putra', 'aldiputra290720@gmail.com', 'm', '082285847788', '2000-07-29', 'aldip5094', '3489c1c4b65fdbe9fad8bb6077fa428229b54dc5', '96df63534', '', '', '114.5.145.168', 1, 0, '2021-08-11 12:05:46', '2021-08-11 12:05:46', '2021-08-14 01:20:31', NULL, 'Batipuah ateh', 'Barber');
INSERT INTO `user` VALUES (99, '', '', '', '', '', 99, 'b', 'user.png', 'Ahmed', 'rizza_numerouno@yahoo.com', 'm', '085156046092', '1992-07-11', 'ahmed7905', '9134bad99a39fdcdc11ad06c258053d3931e23df', 'c8fce15ab', '', '', '180.252.82.103', 1, 0, '2021-08-11 21:56:45', '2021-08-11 21:56:45', '2021-08-11 21:56:46', NULL, 'Captain', 'Barber');
INSERT INTO `user` VALUES (100, '', '', '', '', '', 100, 'b', 'user.png', 'Pipit Sufendi', 'Nindi12nindii@gmail.com', 'm', '085728840041', '1982-10-25', 'pipit1946', '3c1a14308977c983c6281e51a99a6a40db4f0aa5', 'aa02384d1', '', '', '120.188.80.16', 1, 0, '2021-08-12 06:28:42', '2021-08-12 06:28:42', '2021-08-16 11:39:29', NULL, 'Derman', 'Barber');
INSERT INTO `user` VALUES (101, '', '', '', '', '', 101, 'b', 'user.png', 'Ramadhan', 'rammuh04@gmail.com', 'm', '0811535800', '1984-05-31', 'ramad6485', 'e22a88d1582dc052e7cb4588e5e5ff831adcd218', 'f64853137', '', '', '103.88.170.66', 1, 0, '2021-08-12 16:01:36', '2021-08-12 16:01:36', '2021-09-08 05:40:12', NULL, 'Barbershop', 'Barber');
INSERT INTO `user` VALUES (102, '', '', '', '', '', 102, 'b', 'user.png', 'Judy Sinurat', 'judysinurat@yahoo.com', 'm', '08151661904', '1976-12-09', 'judys0613', '6d6533f7a0d9254f0b74c2c5ebcbaa454c130812', '804e93667', '', '', '111.94.33.159', 1, 0, '2021-08-13 18:17:43', '2021-08-13 18:17:43', '2021-08-14 09:22:40', NULL, 'Jakarta', 'Lainnya');
INSERT INTO `user` VALUES (103, '', '', '', '', '', 103, 'b', 'user.png', 'Rafly Muzady', 'rafly.muzady@yahoo.com', 'm', '081318103174', '1999-05-22', 'rafly0247', '62271cc45a671c0a83f0dace71367532aecac3e5', 'ba2e92864', '', '', '180.252.86.155', 1, 0, '2021-08-14 11:14:55', '2021-08-14 11:14:55', '2021-08-14 11:14:56', NULL, 'Rumah', 'Lainnya');
INSERT INTO `user` VALUES (104, '', '', '', '', '', 104, 'b', 'user.png', 'Hamid Tan', 'Tan_hamid@yahoo.com', 'm', '081513092116', '1978-11-26', 'hamid2648', '19af6dfdf8adca7b180dc6236e497befd393f1ca', 'f1f032403', '', '', '114.4.213.16', 1, 0, '2021-08-14 17:30:28', '2021-08-14 17:30:28', '2021-08-14 17:30:29', NULL, 'Jembatan lima', 'Lainnya');
INSERT INTO `user` VALUES (105, '', '', '', '', '', 105, 'b', 'user.png', 'Imam Sahuri', 'imam_sahuri@yahoo.com', 'm', '085743752125', '1990-04-01', 'imams2816', '1e3c25b51d54ffc36ba461560260e0671593f75d', '3a246c1a0', '', '', '120.188.74.66', 1, 0, '2021-08-16 19:48:01', '2021-08-16 19:48:01', '2021-08-19 16:29:05', NULL, 'Rumah', 'Lainnya');
INSERT INTO `user` VALUES (106, '', '', '', '', '', 106, 'b', 'user.png', 'Suryono', 'suryono88@gmail.com', 'm', '087869762830', '1988-06-08', 'suryo1039', '984f2328b69c2ef119c1890948ac0e2ccf949a04', 'b35606170', '', '', '180.243.6.91', 1, 0, '2021-08-16 22:04:15', '2021-08-16 22:04:15', '2021-08-16 22:04:17', NULL, 'Ono', 'Lainnya');
INSERT INTO `user` VALUES (107, '', '', '', '', '', 107, 'b', 'user.png', 'Robie Taswin', 'Robie.taswin@gmail.com', 'm', '0816735395', '1977-11-02', 'robie1267', 'b95bee2b237e2a2c6044cb597202353ebfd1dd0b', 'ce01e9916', '', '', '180.252.87.18', 1, 0, '2021-08-17 13:01:03', '2021-08-17 13:01:03', '2021-08-17 13:22:16', NULL, 'Ph', 'Lainnya');
INSERT INTO `user` VALUES (108, '', '', '', '', '', 108, 'b', 'user/cc77d3af1af8f299873f6dee1eda8c09.jpg', 'RUDIYANSAH', 'yansahr606@gmail.com', 'm', '082278552642', '1995-01-13', 'rudiy6395', 'db437fce75e99a1e79c4cb4e3a881660470efd4a', 'f9a01707b', '', '', '103.146.196.48', 1, 0, '2021-08-18 09:45:12', '2021-08-18 09:53:44', '2021-08-18 21:48:37', NULL, 'DIRUMAH', 'Lainnya');
INSERT INTO `user` VALUES (109, '', '', '', '', '', 109, 'b', 'user.png', 'Yuliatus Solihah', 'yuliazzahwa@gmail.com', 'f', '081916903690', '1998-07-01', 'yulia6175', 'ae544a4773b3b66c7b8a09b8d8211992f9780812', '9833a0ebc', '', '', '112.215.244.176', 1, 0, '2021-08-18 14:30:04', '2021-08-18 14:30:04', '2021-08-18 17:29:07', NULL, 'Pamekasan', 'Lainnya');
INSERT INTO `user` VALUES (110, '', '', '', '', '', 110, 'b', 'user.png', 'Nur Wiqoyatul Afifah', 'afifahfifi6@gmail.com', 'f', '081212824715', '1997-08-17', 'nurwi0356', '4354b155cee1a29467a8d9ea30bc153e98e989c6', '9c1ae400d', '', '', '110.136.58.176', 1, 0, '2021-08-18 17:23:30', '2021-08-18 17:23:30', '2021-08-20 10:41:21', NULL, 'PT Crescendo Multi Texindo', 'Lainnya');
INSERT INTO `user` VALUES (111, '', '', '', '', '', 111, 'b', 'user.png', 'Muhammad Jusrin', 'jusrin23@gmail.com', 'm', '081346240101', '1981-10-16', 'muham5912', '57491d51e2643e29e159d03bb3efbbb533a391ba', 'c4aa4593b', '', '', '180.248.105.153', 1, 0, '2021-08-19 13:11:03', '2021-08-19 13:11:03', '2021-08-19 13:19:02', NULL, 'Sanipah', 'Lainnya');
INSERT INTO `user` VALUES (112, '', '', '', '', '', 112, 'b', 'user.png', 'Muhammad Andri Dermawan', 'andridermawan05@gmail.com', 'm', '081352081080', '1993-05-30', 'muham4750', '8c0b8fb136fca37e92cbe784a2461884ee5c349b', '2448ea16c', '', '', '125.160.65.239', 1, 0, '2021-08-19 13:20:43', '2021-08-19 13:20:43', '2021-08-19 13:20:44', NULL, 'Graha Indah', 'Lainnya');
INSERT INTO `user` VALUES (113, '', '', '', '', '', 113, 'b', 'user.png', 'RANDY ARTHUR IVAN GIAN', 'tohangsbarber@gmail.com', 'm', '081287374922', '1989-10-30', 'randy5839', '7969de81033ad61be14199783eeb1d0ff682251c', 'd1d7e1de3', '', '', '182.253.155.53', 1, 0, '2021-08-19 13:25:14', '2021-08-19 13:25:14', '2021-08-19 13:25:14', NULL, 'Tohang\'s Barber', 'Barber Owner');
INSERT INTO `user` VALUES (114, '', '', '', '', '', 114, 'b', 'user.png', 'Wibowo Jumeno Hariyanto', 'Wibowo.jumeno@gmail.com', 'm', '081902000006', '1985-04-12', 'wibow6392', 'e7ac1fa5f15b869688a1049302bb5b0917ee4ab0', '05f7d2b32', '', '', '180.253.163.69', 1, 0, '2021-08-21 10:08:03', '2021-08-21 10:08:03', '2021-08-21 22:11:26', NULL, 'TNI AU', 'Barber Owner');
INSERT INTO `user` VALUES (115, '', '', '', '', '', 115, 'b', 'user.png', 'M Fadjar N', 'mochfadjarnasrin@gmail.com', 'm', '087776662343', '1980-11-03', 'mfadj0462', 'faef4c58b28acf58700c0e2c5339150ce2c9df85', '68e161be8', '', '', '112.215.151.189', 1, 0, '2021-08-21 12:34:42', '2021-08-21 12:34:42', '2021-08-21 12:34:44', NULL, 'Dawn', 'Barber Owner');
INSERT INTO `user` VALUES (116, '', '', '', '', '', 116, 'b', 'user.png', 'M Fadjar N', 'Dawnshoot03@gmail.com', 'm', '08159141675', '1980-11-03', 'mfadj5173', 'c69f2942160ece5b3142e0a98da379e07dc08dfc', '6dfa18980', '', '', '112.215.151.189', 1, 0, '2021-08-21 12:36:01', '2021-08-21 12:36:01', '2021-08-21 12:36:01', NULL, 'Dawn', 'Barber Owner');
INSERT INTO `user` VALUES (117, '', '', '', '', '', 117, 'b', 'user.png', 'M Fadjar N', 'elemental_cosmic@yahoo.com', 'm', '08159141576', '1980-11-03', 'mfadj1076', 'bfc04a99cf165ca6cd29e44ea48361bb19eee88d', 'b438705c6', '', '', '112.215.171.177', 1, 0, '2021-08-21 12:37:07', '2021-08-21 12:37:07', '2021-08-21 14:50:03', NULL, 'Dawn', 'Barber Owner');
INSERT INTO `user` VALUES (118, '', '', '', '', '', 118, 'b', 'user.png', 'Udung Permana ( Raisa Salon )', 'udungraisa@gmail.com', 'm', '0813-1976-8883', '2004-01-21', 'udung0297', 'f98fd8187d8300a646333cd775687079c7e18fcd', '1e96e2b10', '', '', '180.243.8.235', 1, 0, '2021-08-21 18:35:04', '2021-08-21 18:35:04', '2021-09-04 14:07:37', NULL, 'Raisa Salon', 'Lainnya');
INSERT INTO `user` VALUES (119, '', '', '', '', '', 119, 'b', 'user.png', 'Muhammad Abdillah', 'orabgs@gmail.com', 'm', '085718308555', '1988-10-11', 'muham2067', '7254583fd2377734d9ac9495b98f0f95f431f3f5', '1f75c756f', '', '', '112.215.172.40', 1, 0, '2021-08-21 21:01:28', '2021-08-21 21:01:28', '2021-08-21 21:01:30', NULL, 'wizz barberahop', 'Barber');
INSERT INTO `user` VALUES (120, '', '', '', '', '', 120, 'b', 'user.png', 'Rizky Erlangga', 'rizky.erlanggaa@gmail.com', 'm', '081379559466', '1996-12-20', 'rizky3790', '75932df526cb7971d2225a96efb62e62ae2849f4', '30c515ced', '', '', '114.125.22.82', 1, 0, '2021-08-24 08:53:03', '2021-08-24 08:53:03', '2021-08-24 14:44:50', NULL, 'Pangkas rambut 96\'s', 'Barber Owner');
INSERT INTO `user` VALUES (121, '', '', '', '', '', 121, 'b', 'user.png', 'Surasman', 'ammanksurasman@gmail.com', 'm', '085824710787', '1993-10-03', 'suras0324', '96ab3ffac9d614d1f29ff57b174011eda9aafd70', '65c689e5f', '', '', '114.5.221.237', 1, 0, '2021-08-25 00:34:17', '2021-08-25 00:34:17', '2021-08-25 00:34:18', NULL, 'Bartos', 'Barber Owner');
INSERT INTO `user` VALUES (122, '', '', '', '', '', 122, 'b', 'user/f35aa98df8783a32be0de1cc28a18285.jpg', 'Al Misbah', 'misbahal86@gmail.com', 'm', '085648000013', '1986-06-17', 'almis5680', '3e30b4b96cf89df281efd8990fc443c79068b605', '81226e613', '', '', '114.5.245.158', 1, 0, '2021-08-25 02:45:45', '2021-08-25 02:48:29', '2021-08-30 02:46:32', NULL, 'Tien barbershop', 'Barber Owner');
INSERT INTO `user` VALUES (123, '', '', '', '', '', 123, 'b', 'user.png', 'Deni Satria Yustian', 'Yustian.deni94@gmail.com', 'm', '081255599970', '1994-01-17', 'denis6317', '1199c3c8be923bf7b42a1f3b04b998d0f66dd63e', '6953d5b90', '', '', '114.122.234.86', 1, 0, '2021-08-25 13:37:30', '2021-08-25 13:37:30', '2021-08-28 15:14:41', NULL, 'Yjr barbershop', 'Barber Owner');
INSERT INTO `user` VALUES (124, '', '', '', '', '', 125, 'b', 'user.png', 'Habibie Pane', 'habibie.pane@gmail.com', 'm', '081260010006', '1988-07-03', 'habib5047', '069c08097b3b1b811a5fe449bb8cd79d420dc60c', 'ac6067a84', '', '', '36.76.89.131', 1, 0, '2021-08-27 20:36:43', '2021-08-27 20:36:43', '2021-08-27 20:36:44', NULL, 'Jl.mh.thamrin no.97 kota padangsidempuan', 'Lainnya');
INSERT INTO `user` VALUES (125, '', '', '', '', '', 126, 'b', 'user.png', 'Habibie Pane', 'habibie.pane@yahoo.co.id', 'm', '081375911456', '1988-07-03', 'habib0473', '22b3a80cf1191236a623bdbcbbdbf48f4eb0bb28', '99983b1dd', '', '', '114.122.40.89', 1, 0, '2021-08-27 20:38:32', '2021-08-27 20:38:32', '2021-08-28 11:44:26', NULL, 'Jl.mh.thamrin no.97 kota padangsidempuan', 'Lainnya');
INSERT INTO `user` VALUES (126, '', '', '', '', '', 127, 'b', 'user.png', 'Chandra Tanoeisan', 'chandratanoeisan@gmail.com', 'm', '08124442855', '1984-04-30', 'chand1392', 'f1dbff910971aade14c0fb7b45e0ffb006736b46', '57393e9dc', '', '', '180.253.185.25', 1, 0, '2021-08-29 00:26:26', '2021-08-29 00:26:26', '2021-08-29 00:26:27', NULL, 'Jl. Sultan Hasanudin, pandan kasturi, ambon', 'Lainnya');
INSERT INTO `user` VALUES (127, '', '', '', '', '', 128, 'b', 'user.png', 'Soso Sithombing', 'beddudani@gmail.com', 'm', '082396148686', '1994-01-10', 'sosos5249', 'c693f551beefed7bd03bb09865587d9e3379c7ee', 'd83d061f2', '', '', '125.162.209.27', 1, 0, '2021-08-30 18:22:40', '2021-08-30 18:22:40', '2021-08-31 08:46:37', NULL, 'Barber milenium', 'Barber');
INSERT INTO `user` VALUES (128, '', '', '', '', '', 129, 'b', 'user.png', 'Zainul', 'Zainulbpd@gmail.com', 'm', '089607084288', '1994-04-05', 'zainu3416', 'b59e8e06822ac1d408038d6fd6ad4894e7af5d53', 'ef0e23267', '', '', '116.206.40.4', 1, 0, '2021-08-30 18:32:14', '2021-08-30 18:32:14', '2021-08-30 21:45:33', NULL, 'Swasta', 'Lainnya');
INSERT INTO `user` VALUES (129, '', '', '', '', '', 130, 'b', 'user.png', 'Muhamad Ilhamy', 'ilhamy@doctor.com', 'm', '0811126926', '1964-06-20', 'muham5720', 'd0971b15eb00cffbc612fd9a632349518389b6d0', 'c78b8219e', '', '', '114.124.141.32', 1, 0, '2021-09-01 00:26:18', '2021-09-01 00:26:18', '2021-09-03 19:30:21', NULL, 'Rumah Sakit', 'Lainnya');
INSERT INTO `user` VALUES (130, '', '', '', '', '', 133, 'b', 'user.png', 'Shofa Salsabila', 'shofaaasalsa@gmail.com', 'f', '085736983728', '1999-03-12', 'shofa5683', 'ac65f2c23094ea794f9ad485b852cb21f2729fc3', '5062067a2', '', '', '36.77.63.206', 1, 0, '2021-09-01 16:27:43', '2021-09-01 16:27:43', '2021-09-06 11:25:32', NULL, 'Pangkas Alzam Kediri', 'Lainnya');
INSERT INTO `user` VALUES (131, '', '', '', '', '', 132, 'b', 'user.png', 'Mulia Budi Sampurna', 'muliabds@gmail.com', 'm', '087874989285', '1999-04-23', 'mulia9287', 'b99ebf96cc48790836b7364ce4f95eeab101f0bc', '9575b3c13', '', '', '180.243.138.68', 1, 0, '2021-09-02 06:25:45', '2021-09-02 06:25:45', '2021-09-02 06:25:46', NULL, 'Stuffed Branded', 'Lainnya');
INSERT INTO `user` VALUES (132, '', '', '', '', '', 134, 'b', 'user.png', 'Dendis Maulana', 'Ibrahimadendis@gmail.com', 'm', '081317007684', '1996-02-23', 'dendi2695', '6a5191fee4eb4ed6d745967574a49ec0ab2fde5a', '6507670a6', '', '', '180.252.172.155', 1, 0, '2021-09-06 20:48:35', '2021-09-06 20:48:35', '2021-09-06 20:48:36', NULL, 'Harper barber', 'Barber');
INSERT INTO `user` VALUES (133, '', '', '', '', '', 135, 'b', 'user.png', 'Liaukuansen', 'liaukuansen123456@gmail.com', 'm', '0895344494348', '1986-11-29', 'liauk0432', 'fb4b3babb3dccaf510065f511b639c76a7595b52', '5092002f1', '', '', '116.206.35.11', 1, 0, '2021-09-07 09:57:36', '2021-09-07 09:57:36', '2021-09-07 10:02:51', NULL, 'AML HOLLYWOOD', 'Lainnya');
INSERT INTO `user` VALUES (134, '', '', '', '', '', 136, 'b', 'user.png', 'Liaukuansen', 'liaukuansen@yahoo.co.id', 'm', '081218398355', '1986-11-29', 'liauk5347', '21dc0716036ae898c5a7eef86dcd44657a14c6fc', '1f5375f73', '', '', '116.206.35.11', 1, 0, '2021-09-07 09:59:39', '2021-09-07 09:59:39', '2021-09-07 09:59:39', NULL, 'AML HOLLYWOOD', 'Lainnya');
INSERT INTO `user` VALUES (135, '', '', '', '', '', 137, 'b', 'user.png', 'Dwirahayuanita@gmail.com', 'dwirahayuanita0391@gmail.com', 'f', '085738692640', '1990-03-03', 'dwira1948', '0073d25fd94e1ef0034b01c725b0ede2f0723db3', 'ec4daacda', '', '', '182.1.64.109', 1, 0, '2021-09-07 21:02:48', '2021-09-07 21:02:48', '2021-09-07 21:02:49', NULL, 'Surabaya', 'Barber Owner');

-- ----------------------------
-- Table structure for user_history
-- ----------------------------
DROP TABLE IF EXISTS `user_history`;
CREATE TABLE `user_history`  (
  `user_history_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL DEFAULT 0,
  `comment` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`user_history_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_history
-- ----------------------------

-- ----------------------------
-- Table structure for user_ip
-- ----------------------------
DROP TABLE IF EXISTS `user_ip`;
CREATE TABLE `user_ip`  (
  `user_ip_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL DEFAULT 0,
  `ip` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`user_ip_id`) USING BTREE,
  INDEX `ip`(`ip`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_ip
-- ----------------------------

-- ----------------------------
-- Table structure for user_transaction
-- ----------------------------
DROP TABLE IF EXISTS `user_transaction`;
CREATE TABLE `user_transaction`  (
  `user_transaction_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL DEFAULT 0,
  `reference` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `order_id` int NOT NULL DEFAULT 0,
  `store_order_id` int NOT NULL DEFAULT 0,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `amount` decimal(15, 2) NOT NULL DEFAULT 0.00,
  `code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_paid` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `payment_method` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `payment_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `approved` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`user_transaction_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_transaction
-- ----------------------------

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
