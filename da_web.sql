-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: ilyoushoesshop
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `danh_gia`
--

DROP TABLE IF EXISTS `danh_gia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `danh_gia` (
  `id_danh_gia` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ten_danh_gia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `danh_gia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `danh_gia_binh_luan` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_giay` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_danh_gia`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `danh_gia`
--

LOCK TABLES `danh_gia` WRITE;
/*!40000 ALTER TABLE `danh_gia` DISABLE KEYS */;
INSERT INTO `danh_gia` VALUES (3,'2','Phan Văn Bằng','4.5','Giá rẻ lại đẹp, nên mua','2','2022-05-02 11:18:06','2022-05-02 11:18:06'),(4,'2','Phan Văn Bằng','4.5','Giá ok, đẹp','1','2022-05-02 11:18:27','2022-05-02 11:18:27');
/*!40000 ALTER TABLE `danh_gia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `don_hang`
--

DROP TABLE IF EXISTS `don_hang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `don_hang` (
  `id_don_hang` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ten_nguoi_nhan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dia_chi_nhan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ghi_chu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tong_tien` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hinh_thuc_thanh_toan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hoa_don` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_don_hang`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `don_hang`
--

LOCK TABLES `don_hang` WRITE;
/*!40000 ALTER TABLE `don_hang` DISABLE KEYS */;
INSERT INTO `don_hang` VALUES (1,'Admin','0123456789','huế',NULL,'599,400 VNĐ','Sau khi nhận hàng','a:1:{i:2;a:5:{s:10:\"hinh_anh_1\";s:9:\"giay4.jpg\";s:8:\"ten_giay\";s:12:\"Nike Joma IC\";s:7:\"don_gia\";s:6:\"666000\";s:8:\"so_luong\";s:1:\"1\";s:10:\"khuyen_mai\";s:2:\"10\";}}','2022-05-02 08:03:32','2022-05-02 08:03:32'),(2,'Admin','0123456789','Thừa Thiên Huế',NULL,'1,020,000 VNĐ','Sau khi nhận hàng','a:1:{i:1;a:5:{s:10:\"hinh_anh_1\";s:10:\"giay13.jpg\";s:8:\"ten_giay\";s:6:\"NMD R2\";s:7:\"don_gia\";s:7:\"1200000\";s:8:\"so_luong\";s:1:\"1\";s:10:\"khuyen_mai\";s:2:\"15\";}}','2022-05-02 08:03:59','2022-05-02 08:03:59'),(3,'Admin','0123456789','huế',NULL,'599,400 VNĐ','Sau khi nhận hàng','a:1:{i:2;a:5:{s:10:\"hinh_anh_1\";s:9:\"giay4.jpg\";s:8:\"ten_giay\";s:12:\"Nike Joma IC\";s:7:\"don_gia\";s:6:\"666000\";s:8:\"so_luong\";s:1:\"1\";s:10:\"khuyen_mai\";s:2:\"10\";}}','2022-05-02 11:09:03','2022-05-02 11:09:03'),(4,'Phan Văn Bằng','0123456788','Thừa Thiên Huế',NULL,'2,468,550 VNĐ','Sau khi nhận hàng','a:3:{i:2;a:5:{s:10:\"hinh_anh_1\";s:9:\"giay4.jpg\";s:8:\"ten_giay\";s:12:\"Nike Joma IC\";s:7:\"don_gia\";s:6:\"666000\";s:8:\"so_luong\";s:1:\"1\";s:10:\"khuyen_mai\";s:2:\"10\";}i:1;a:5:{s:10:\"hinh_anh_1\";s:10:\"giay13.jpg\";s:8:\"ten_giay\";s:6:\"NMD R2\";s:7:\"don_gia\";s:7:\"1200000\";s:8:\"so_luong\";s:1:\"1\";s:10:\"khuyen_mai\";s:2:\"15\";}i:3;a:5:{s:10:\"hinh_anh_1\";s:9:\"giay3.jpg\";s:8:\"ten_giay\";s:19:\"The Nike Premier II\";s:7:\"don_gia\";s:6:\"999000\";s:8:\"so_luong\";s:1:\"1\";s:10:\"khuyen_mai\";s:2:\"15\";}}','2022-05-02 11:17:11','2022-05-02 11:17:11'),(5,'kienpro214','0395004764','abc','abc','1,798,200 VNĐ','Sau khi nhận hàng','a:1:{i:2;a:5:{s:10:\"hinh_anh_1\";s:9:\"giay4.jpg\";s:8:\"ten_giay\";s:12:\"Nike Joma IC\";s:7:\"don_gia\";s:6:\"666000\";s:8:\"so_luong\";s:1:\"3\";s:10:\"khuyen_mai\";s:2:\"10\";}}','2024-11-26 23:38:04','2024-11-26 23:38:04');
/*!40000 ALTER TABLE `don_hang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `giay`
--

DROP TABLE IF EXISTS `giay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giay` (
  `id_giay` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ten_giay` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ten_loai_giay` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ten_thuong_hieu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mo_ta` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `don_gia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `so_luong` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hinh_anh_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hinh_anh_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hinh_anh_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hinh_anh_4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ten_khuyen_mai` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `so_luong_mua` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `so_luot_xem` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_giay`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `giay`
--

LOCK TABLES `giay` WRITE;
/*!40000 ALTER TABLE `giay` DISABLE KEYS */;
INSERT INTO `giay` VALUES (1,'test','Thể thao','Gucci','<p>✔️ Đế giày được thiết kế chịu ma sát tốt, tăng chiều cao, nhẹ, êm, cân bằng và thoáng khí.&nbsp;</p><p>✔️ Kiểu dáng hottrend của năm nay.&nbsp;</p><p>✔️ Giày đẹp, nhẹ, bền. Có thể làm giày cặp, giày nhóm. Thích hợp đi chơi, chạy bộ, gym, đi học, đi làm...&nbsp;</p><p>✔️ Đế cao su bền chắc, có độ bám cao.</p><p>✔️ Mẫu mới nhất hiện nay mang êm chân thời trang cá tính.&nbsp;</p><p>✔️ Dễ dàng kết hợp với hầu hết các phong cách thời trang như: đi học, đi chơi, đi du lịch. Giày đôi, giày nhóm...</p><p>✔️ Có thể kết hợp với váy, jeans, sooc…. Đều phù hợp!!&nbsp;</p>','120000','100','anh-sieu-nhan-6.jpg','anh-sieu-nhan-6.jpg','anh-sieu-nhan-6.jpg','anh-sieu-nhan-6.jpg','Ngày lễ','2',29,'2021-11-25 07:59:26','2024-11-27 08:43:06'),(2,'Nike Joma IC','Thể thao','Nike','<p>✔️ Đế giày được thiết kế chịu ma sát tốt, tăng chiều cao, nhẹ, êm, cân bằng và thoáng khí.&nbsp;</p><p>✔️ Kiểu dáng hottrend của năm nay.&nbsp;</p><p>✔️ Giày đẹp, nhẹ, bền. Có thể làm giày cặp, giày nhóm. Thích hợp đi chơi, chạy bộ, gym, đi học, đi làm...&nbsp;</p><p>✔️ Đế cao su bền chắc, có độ bám cao.</p><p>✔️ Mẫu mới nhất hiện nay mang êm chân thời trang cá tính.&nbsp;</p><p>✔️ Dễ dàng kết hợp với hầu hết các phong cách thời trang như: đi học, đi chơi, đi du lịch. Giày đôi, giày nhóm...</p><p>✔️ Có thể kết hợp với váy, jeans, sooc…. Đều phù hợp!!&nbsp;</p>','666000','100','giay4.jpg','giay4.jpg','giay4.jpg','giay4.jpg','Mới ra mắt','4',11,'2021-11-29 07:59:26','2024-11-26 23:38:04'),(3,'The Nike Premier II','Sneaker','Nike','<p>✔️ Đế giày được thiết kế chịu ma sát tốt, tăng chiều cao, nhẹ, êm, cân bằng và thoáng khí.&nbsp;</p><p>✔️ Kiểu dáng hottrend của năm nay.&nbsp;</p><p>✔️ Giày đẹp, nhẹ, bền. Có thể làm giày cặp, giày nhóm. Thích hợp đi chơi, chạy bộ, gym, đi học, đi làm...&nbsp;</p><p>✔️ Đế cao su bền chắc, có độ bám cao.</p><p>✔️ Mẫu mới nhất hiện nay mang êm chân thời trang cá tính.&nbsp;</p><p>✔️ Dễ dàng kết hợp với hầu hết các phong cách thời trang như: đi học, đi chơi, đi du lịch. Giày đôi, giày nhóm...</p><p>✔️ Có thể kết hợp với váy, jeans, sooc…. Đều phù hợp!!&nbsp;</p>','999000','100','giay3.jpg','giay3.jpg','giay3.jpg','giay3.jpg','Ngày lễ','1',13,'2021-12-01 10:21:31','2022-05-02 11:17:11'),(4,'Adidas PUREBOOST 21','Thể thao','Adidas','<p>✔️ Đế giày được thiết kế chịu ma sát tốt, tăng chiều cao, nhẹ, êm, cân bằng và thoáng khí.&nbsp;</p><p>✔️ Kiểu dáng hottrend của năm nay.&nbsp;</p><p>✔️ Giày đẹp, nhẹ, bền. Có thể làm giày cặp, giày nhóm. Thích hợp đi chơi, chạy bộ, gym, đi học, đi làm...&nbsp;</p><p>✔️ Đế cao su bền chắc, có độ bám cao.</p><p>✔️ Mẫu mới nhất hiện nay mang êm chân thời trang cá tính.&nbsp;</p><p>✔️ Dễ dàng kết hợp với hầu hết các phong cách thời trang như: đi học, đi chơi, đi du lịch. Giày đôi, giày nhóm...</p><p>✔️ Có thể kết hợp với váy, jeans, sooc…. Đều phù hợp!!&nbsp;</p>','1590000','100','giay20.jpg','giay20.jpg','giay20.jpg','giay20.jpg','Mới ra mắt','0',2,'2021-11-29 07:59:26','2021-11-29 07:59:26'),(5,'Adidas STAN SMITH','Thể thao','Adidas','<p>✔️ Đế giày được thiết kế chịu ma sát tốt, tăng chiều cao, nhẹ, êm, cân bằng và thoáng khí.&nbsp;</p><p>✔️ Kiểu dáng hottrend của năm nay.&nbsp;</p><p>✔️ Giày đẹp, nhẹ, bền. Có thể làm giày cặp, giày nhóm. Thích hợp đi chơi, chạy bộ, gym, đi học, đi làm...&nbsp;</p><p>✔️ Đế cao su bền chắc, có độ bám cao.</p><p>✔️ Mẫu mới nhất hiện nay mang êm chân thời trang cá tính.&nbsp;</p><p>✔️ Dễ dàng kết hợp với hầu hết các phong cách thời trang như: đi học, đi chơi, đi du lịch. Giày đôi, giày nhóm...</p><p>✔️ Có thể kết hợp với váy, jeans, sooc…. Đều phù hợp!!&nbsp;</p>','1290000','100','giay21.jpg','giay21.jpg','giay21.jpg','giay21.jpg','Mới ra mắt','0',2,'2021-12-01 10:21:31','2021-12-01 10:21:31'),(6,'Adidas ALPHAMAGMA','Thể thao','Adidas','<p>✔️ Đế giày được thiết kế chịu ma sát tốt, tăng chiều cao, nhẹ, êm, cân bằng và thoáng khí.&nbsp;</p><p>✔️ Kiểu dáng hottrend của năm nay.&nbsp;</p><p>✔️ Giày đẹp, nhẹ, bền. Có thể làm giày cặp, giày nhóm. Thích hợp đi chơi, chạy bộ, gym, đi học, đi làm...&nbsp;</p><p>✔️ Đế cao su bền chắc, có độ bám cao.</p><p>✔️ Mẫu mới nhất hiện nay mang êm chân thời trang cá tính.&nbsp;</p><p>✔️ Dễ dàng kết hợp với hầu hết các phong cách thời trang như: đi học, đi chơi, đi du lịch. Giày đôi, giày nhóm...</p><p>✔️ Có thể kết hợp với váy, jeans, sooc…. Đều phù hợp!!&nbsp;</p>','799000','100','giay22.jpg','giay22.jpg','giay22.jpg','giay22.jpg','Mới ra mắt','0',1,'2021-12-01 10:21:31','2021-12-01 10:21:31'),(7,'Adidas RUNFALCON 2.0','Thể thao','Adidas','<p>✔️ Đế giày được thiết kế chịu ma sát tốt, tăng chiều cao, nhẹ, êm, cân bằng và thoáng khí.&nbsp;</p><p>✔️ Kiểu dáng hottrend của năm nay.&nbsp;</p><p>✔️ Giày đẹp, nhẹ, bền. Có thể làm giày cặp, giày nhóm. Thích hợp đi chơi, chạy bộ, gym, đi học, đi làm...&nbsp;</p><p>✔️ Đế cao su bền chắc, có độ bám cao.</p><p>✔️ Mẫu mới nhất hiện nay mang êm chân thời trang cá tính.&nbsp;</p><p>✔️ Dễ dàng kết hợp với hầu hết các phong cách thời trang như: đi học, đi chơi, đi du lịch. Giày đôi, giày nhóm...</p><p>✔️ Có thể kết hợp với váy, jeans, sooc…. Đều phù hợp!!&nbsp;</p>','599000','100','giay23.jpg','giay23.jpg','giay23.jpg','giay23.jpg','Mới ra mắt','0',0,'2021-11-29 07:59:26','2021-11-29 07:59:26'),(8,'Adidas Tiempo Legend 9','Thể thao','Adidas','<p>✔️ Đế giày được thiết kế chịu ma sát tốt, tăng chiều cao, nhẹ, êm, cân bằng và thoáng khí.&nbsp;</p><p>✔️ Kiểu dáng hottrend của năm nay.&nbsp;</p><p>✔️ Giày đẹp, nhẹ, bền. Có thể làm giày cặp, giày nhóm. Thích hợp đi chơi, chạy bộ, gym, đi học, đi làm...&nbsp;</p><p>✔️ Đế cao su bền chắc, có độ bám cao.</p><p>✔️ Mẫu mới nhất hiện nay mang êm chân thời trang cá tính.&nbsp;</p><p>✔️ Dễ dàng kết hợp với hầu hết các phong cách thời trang như: đi học, đi chơi, đi du lịch. Giày đôi, giày nhóm...</p><p>✔️ Có thể kết hợp với váy, jeans, sooc…. Đều phù hợp!!&nbsp;</p>','666000','100','giay2.jpg','giay2.jpg','giay2.jpg','giay2.jpg','Ngày lễ','0',3,'2021-11-29 07:59:26','2021-11-29 07:59:26'),(9,'Puma One 5.3 TT','Thể thao','Puma','<p>✔️ Đế giày được thiết kế chịu ma sát tốt, tăng chiều cao, nhẹ, êm, cân bằng và thoáng khí.&nbsp;</p><p>✔️ Kiểu dáng hottrend của năm nay.&nbsp;</p><p>✔️ Giày đẹp, nhẹ, bền. Có thể làm giày cặp, giày nhóm. Thích hợp đi chơi, chạy bộ, gym, đi học, đi làm...&nbsp;</p><p>✔️ Đế cao su bền chắc, có độ bám cao.</p><p>✔️ Mẫu mới nhất hiện nay mang êm chân thời trang cá tính.&nbsp;</p><p>✔️ Dễ dàng kết hợp với hầu hết các phong cách thời trang như: đi học, đi chơi, đi du lịch. Giày đôi, giày nhóm...</p><p>✔️ Có thể kết hợp với váy, jeans, sooc…. Đều phù hợp!!&nbsp;</p>','699000','100','giay7.jpg','giay7.jpg','giay7.jpg','giay7.jpg','Sale cuối năm','0',0,'2021-12-01 10:21:31','2021-12-01 10:21:31'),(11,'Run Star Hike Sneaker','Sneaker','Converse','<p>✔️ Đế giày được thiết kế chịu ma sát tốt, tăng chiều cao, nhẹ, êm, cân bằng và thoáng khí.&nbsp;</p><p>✔️ Kiểu dáng hottrend của năm nay.&nbsp;</p><p>✔️ Giày đẹp, nhẹ, bền. Có thể làm giày cặp, giày nhóm. Thích hợp đi chơi, chạy bộ, gym, đi học, đi làm...&nbsp;</p><p>✔️ Đế cao su bền chắc, có độ bám cao.</p><p>✔️ Mẫu mới nhất hiện nay mang êm chân thời trang cá tính.&nbsp;</p><p>✔️ Dễ dàng kết hợp với hầu hết các phong cách thời trang như: đi học, đi chơi, đi du lịch. Giày đôi, giày nhóm...</p><p>✔️ Có thể kết hợp với váy, jeans, sooc…. Đều phù hợp!!&nbsp;</p>','966000','100','giay17.jpg','giay17.jpg','giay17.jpg','giay17.jpg','Chủ vui nên khuyến mãi','0',0,'2021-11-29 07:59:26','2021-11-29 07:59:26'),(12,'Chuck 70 Sneaker','Sneaker','Converse','<p>✔️ Đế giày được thiết kế chịu ma sát tốt, tăng chiều cao, nhẹ, êm, cân bằng và thoáng khí.&nbsp;</p><p>✔️ Kiểu dáng hottrend của năm nay.&nbsp;</p><p>✔️ Giày đẹp, nhẹ, bền. Có thể làm giày cặp, giày nhóm. Thích hợp đi chơi, chạy bộ, gym, đi học, đi làm...&nbsp;</p><p>✔️ Đế cao su bền chắc, có độ bám cao.</p><p>✔️ Mẫu mới nhất hiện nay mang êm chân thời trang cá tính.&nbsp;</p><p>✔️ Dễ dàng kết hợp với hầu hết các phong cách thời trang như: đi học, đi chơi, đi du lịch. Giày đôi, giày nhóm...</p><p>✔️ Có thể kết hợp với váy, jeans, sooc…. Đều phù hợp!!&nbsp;</p>','1280000','100','giay18.jpg','giay18.jpg','giay18.jpg','giay18.jpg','Sale cuối năm','0',1,'2021-12-01 10:21:31','2021-12-01 10:21:31'),(13,'Archive Paint Splatter','Sneaker','Converse','<p>✔️ Đế giày được thiết kế chịu ma sát tốt, tăng chiều cao, nhẹ, êm, cân bằng và thoáng khí.&nbsp;</p><p>✔️ Kiểu dáng hottrend của năm nay.&nbsp;</p><p>✔️ Giày đẹp, nhẹ, bền. Có thể làm giày cặp, giày nhóm. Thích hợp đi chơi, chạy bộ, gym, đi học, đi làm...&nbsp;</p><p>✔️ Đế cao su bền chắc, có độ bám cao.</p><p>✔️ Mẫu mới nhất hiện nay mang êm chân thời trang cá tính.&nbsp;</p><p>✔️ Dễ dàng kết hợp với hầu hết các phong cách thời trang như: đi học, đi chơi, đi du lịch. Giày đôi, giày nhóm...</p><p>✔️ Có thể kết hợp với váy, jeans, sooc…. Đều phù hợp!!&nbsp;</p>','1880000','100','giay19.jpg','giay19.jpg','giay19.jpg','giay19.jpg','Không khuyễn mãi','0',0,'2021-11-29 07:59:26','2021-11-29 07:59:26'),(14,'Nike Top Sala14','Thể thao','Nike','<p>✔️ Đế giày được thiết kế chịu ma sát tốt, tăng chiều cao, nhẹ, êm, cân bằng và thoáng khí.&nbsp;</p><p>✔️ Kiểu dáng hottrend của năm nay.&nbsp;</p><p>✔️ Giày đẹp, nhẹ, bền. Có thể làm giày cặp, giày nhóm. Thích hợp đi chơi, chạy bộ, gym, đi học, đi làm...&nbsp;</p><p>✔️ Đế cao su bền chắc, có độ bám cao.</p><p>✔️ Mẫu mới nhất hiện nay mang êm chân thời trang cá tính.&nbsp;</p><p>✔️ Dễ dàng kết hợp với hầu hết các phong cách thời trang như: đi học, đi chơi, đi du lịch. Giày đôi, giày nhóm...</p><p>✔️ Có thể kết hợp với váy, jeans, sooc…. Đều phù hợp!!&nbsp;</p>','666000','100','giay9.jpg','giay9.jpg','giay9.jpg','giay9.jpg','Không khuyễn mãi','0',0,'2021-11-25 07:59:26','2021-11-25 07:59:26'),(15,'Nike ACE Tango','Thể thao','Nike','<p>✔️ Đế giày được thiết kế chịu ma sát tốt, tăng chiều cao, nhẹ, êm, cân bằng và thoáng khí.&nbsp;</p><p>✔️ Kiểu dáng hottrend của năm nay.&nbsp;</p><p>✔️ Giày đẹp, nhẹ, bền. Có thể làm giày cặp, giày nhóm. Thích hợp đi chơi, chạy bộ, gym, đi học, đi làm...&nbsp;</p><p>✔️ Đế cao su bền chắc, có độ bám cao.</p><p>✔️ Mẫu mới nhất hiện nay mang êm chân thời trang cá tính.&nbsp;</p><p>✔️ Dễ dàng kết hợp với hầu hết các phong cách thời trang như: đi học, đi chơi, đi du lịch. Giày đôi, giày nhóm...</p><p>✔️ Có thể kết hợp với váy, jeans, sooc…. Đều phù hợp!!&nbsp;</p>','599000','100','giay6.jpg','giay6.jpg','giay6.jpg','giay6.jpg','Mới ra mắt','0',0,'2021-12-01 10:21:31','2021-12-01 10:21:31'),(16,'Adidas Mercurial','Sandanl','Adidas','<p>✔️ Đế giày được thiết kế chịu ma sát tốt, tăng chiều cao, nhẹ, êm, cân bằng và thoáng khí.&nbsp;</p><p>✔️ Kiểu dáng hottrend của năm nay.&nbsp;</p><p>✔️ Giày đẹp, nhẹ, bền. Có thể làm giày cặp, giày nhóm. Thích hợp đi chơi, chạy bộ, gym, đi học, đi làm...&nbsp;</p><p>✔️ Đế cao su bền chắc, có độ bám cao.</p><p>✔️ Mẫu mới nhất hiện nay mang êm chân thời trang cá tính.&nbsp;</p><p>✔️ Dễ dàng kết hợp với hầu hết các phong cách thời trang như: đi học, đi chơi, đi du lịch. Giày đôi, giày nhóm...</p><p>✔️ Có thể kết hợp với váy, jeans, sooc…. Đều phù hợp!!&nbsp;</p>','666000','100','giay15.jpg','giay15.jpg','giay15.jpg','giay15.jpg','Ngày lễ','0',0,'2021-12-01 10:21:31','2021-12-01 10:21:31'),(17,'Nike FC','Thể thao','Nike','<p>✔️ Đế giày được thiết kế chịu ma sát tốt, tăng chiều cao, nhẹ, êm, cân bằng và thoáng khí.&nbsp;</p><p>✔️ Kiểu dáng hottrend của năm nay.&nbsp;</p><p>✔️ Giày đẹp, nhẹ, bền. Có thể làm giày cặp, giày nhóm. Thích hợp đi chơi, chạy bộ, gym, đi học, đi làm...&nbsp;</p><p>✔️ Đế cao su bền chắc, có độ bám cao.</p><p>✔️ Mẫu mới nhất hiện nay mang êm chân thời trang cá tính.&nbsp;</p><p>✔️ Dễ dàng kết hợp với hầu hết các phong cách thời trang như: đi học, đi chơi, đi du lịch. Giày đôi, giày nhóm...</p><p>✔️ Có thể kết hợp với váy, jeans, sooc…. Đều phù hợp!!&nbsp;</p>','1100000','100','giay8.jpg','giay8.jpg','giay8.jpg','giay8.jpg','Ngày lễ','0',0,'2021-12-01 10:21:31','2021-12-01 10:21:31'),(18,'Adidas X Tango 17.1 FG','Sneaker','Adidas','<p>✔️ Đế giày được thiết kế chịu ma sát tốt, tăng chiều cao, nhẹ, êm, cân bằng và thoáng khí.&nbsp;</p><p>✔️ Kiểu dáng hottrend của năm nay.&nbsp;</p><p>✔️ Giày đẹp, nhẹ, bền. Có thể làm giày cặp, giày nhóm. Thích hợp đi chơi, chạy bộ, gym, đi học, đi làm...&nbsp;</p><p>✔️ Đế cao su bền chắc, có độ bám cao.</p><p>✔️ Mẫu mới nhất hiện nay mang êm chân thời trang cá tính.&nbsp;</p><p>✔️ Dễ dàng kết hợp với hầu hết các phong cách thời trang như: đi học, đi chơi, đi du lịch. Giày đôi, giày nhóm...</p><p>✔️ Có thể kết hợp với váy, jeans, sooc…. Đều phù hợp!!&nbsp;</p>','666000','100','giay5.jpg','giay5.jpg','giay5.jpg','giay5.jpg','Không khuyễn mãi','0',0,'2021-12-01 10:21:31','2021-12-01 10:21:31'),(19,'Superstar KB','Thể thao','Vans','<p>✔️ Đế giày được thiết kế chịu ma sát tốt, tăng chiều cao, nhẹ, êm, cân bằng và thoáng khí.&nbsp;</p><p>✔️ Kiểu dáng hottrend của năm nay.&nbsp;</p><p>✔️ Giày đẹp, nhẹ, bền. Có thể làm giày cặp, giày nhóm. Thích hợp đi chơi, chạy bộ, gym, đi học, đi làm...&nbsp;</p><p>✔️ Đế cao su bền chắc, có độ bám cao.</p><p>✔️ Mẫu mới nhất hiện nay mang êm chân thời trang cá tính.&nbsp;</p><p>✔️ Dễ dàng kết hợp với hầu hết các phong cách thời trang như: đi học, đi chơi, đi du lịch. Giày đôi, giày nhóm...</p><p>✔️ Có thể kết hợp với váy, jeans, sooc…. Đều phù hợp!!&nbsp;</p>','1350000','100','giay10.jpg','giay10.jpg','giay10.jpg','giay10.jpg','Sale cuối năm','0',0,'2021-12-01 10:21:31','2021-12-01 10:21:31'),(20,'Superstar J','Sandanl','Vans','<p>✔️ Đế giày được thiết kế chịu ma sát tốt, tăng chiều cao, nhẹ, êm, cân bằng và thoáng khí.&nbsp;</p><p>✔️ Kiểu dáng hottrend của năm nay.&nbsp;</p><p>✔️ Giày đẹp, nhẹ, bền. Có thể làm giày cặp, giày nhóm. Thích hợp đi chơi, chạy bộ, gym, đi học, đi làm...&nbsp;</p><p>✔️ Đế cao su bền chắc, có độ bám cao.</p><p>✔️ Mẫu mới nhất hiện nay mang êm chân thời trang cá tính.&nbsp;</p><p>✔️ Dễ dàng kết hợp với hầu hết các phong cách thời trang như: đi học, đi chơi, đi du lịch. Giày đôi, giày nhóm...</p><p>✔️ Có thể kết hợp với váy, jeans, sooc…. Đều phù hợp!!&nbsp;</p>','1290000','100','giay11.jpg','giay11.jpg','giay11.jpg','giay11.jpg','Ngày lễ','0',0,'2021-11-25 07:59:26','2021-11-25 07:59:26'),(21,'Nike Tiempo Legend','Thể thao','Nike','<p>✔️ Đế giày được thiết kế chịu ma sát tốt, tăng chiều cao, nhẹ, êm, cân bằng và thoáng khí.&nbsp;</p><p>✔️ Kiểu dáng hottrend của năm nay.&nbsp;</p><p>✔️ Giày đẹp, nhẹ, bền. Có thể làm giày cặp, giày nhóm. Thích hợp đi chơi, chạy bộ, gym, đi học, đi làm...&nbsp;</p><p>✔️ Đế cao su bền chắc, có độ bám cao.</p><p>✔️ Mẫu mới nhất hiện nay mang êm chân thời trang cá tính.&nbsp;</p><p>✔️ Dễ dàng kết hợp với hầu hết các phong cách thời trang như: đi học, đi chơi, đi du lịch. Giày đôi, giày nhóm...</p><p>✔️ Có thể kết hợp với váy, jeans, sooc…. Đều phù hợp!!&nbsp;</p>','1990000','100','giay4.jpg','giay4.jpg','giay4.jpg','giay4.jpg','Ngày lễ','0',0,'2021-11-24 07:59:26','2021-11-24 07:59:26'),(22,'ADIDAS X Speedflow','Thể thao','Adidas','<p>✔️ Đế giày được thiết kế chịu ma sát tốt, tăng chiều cao, nhẹ, êm, cân bằng và thoáng khí.&nbsp;</p><p>✔️ Kiểu dáng hottrend của năm nay.&nbsp;</p><p>✔️ Giày đẹp, nhẹ, bền. Có thể làm giày cặp, giày nhóm. Thích hợp đi chơi, chạy bộ, gym, đi học, đi làm...&nbsp;</p><p>✔️ Đế cao su bền chắc, có độ bám cao.</p><p>✔️ Mẫu mới nhất hiện nay mang êm chân thời trang cá tính.&nbsp;</p><p>✔️ Dễ dàng kết hợp với hầu hết các phong cách thời trang như: đi học, đi chơi, đi du lịch. Giày đôi, giày nhóm...</p><p>✔️ Có thể kết hợp với váy, jeans, sooc…. Đều phù hợp!!&nbsp;</p>','666000','100','giay12.jpg','giay12.jpg','giay12.jpg','giay12.jpg','Sale cuối năm','0',0,'2021-12-01 10:21:31','2021-12-01 10:21:31'),(23,'Jung 96','Thể thao','New Balance','<p>✔️ Đế giày được thiết kế chịu ma sát tốt, tăng chiều cao, nhẹ, êm, cân bằng và thoáng khí.&nbsp;</p><p>✔️ Kiểu dáng hottrend của năm nay.&nbsp;</p><p>✔️ Giày đẹp, nhẹ, bền. Có thể làm giày cặp, giày nhóm. Thích hợp đi chơi, chạy bộ, gym, đi học, đi làm...&nbsp;</p><p>✔️ Đế cao su bền chắc, có độ bám cao.</p><p>✔️ Mẫu mới nhất hiện nay mang êm chân thời trang cá tính.&nbsp;</p><p>✔️ Dễ dàng kết hợp với hầu hết các phong cách thời trang như: đi học, đi chơi, đi du lịch. Giày đôi, giày nhóm...</p><p>✔️ Có thể kết hợp với váy, jeans, sooc…. Đều phù hợp!!&nbsp;</p>','899000','100','giay14.jpg','giay14.jpg','giay14.jpg','giay14.jpg','Sale cuối năm','0',0,'2021-12-01 10:21:31','2021-12-01 10:21:31'),(24,'Mercurial Superfly','Sneaker','Balenciaga','<p>✔️ Đế giày được thiết kế chịu ma sát tốt, tăng chiều cao, nhẹ, êm, cân bằng và thoáng khí.&nbsp;</p><p>✔️ Kiểu dáng hottrend của năm nay.&nbsp;</p><p>✔️ Giày đẹp, nhẹ, bền. Có thể làm giày cặp, giày nhóm. Thích hợp đi chơi, chạy bộ, gym, đi học, đi làm...&nbsp;</p><p>✔️ Đế cao su bền chắc, có độ bám cao.</p><p>✔️ Mẫu mới nhất hiện nay mang êm chân thời trang cá tính.&nbsp;</p><p>✔️ Dễ dàng kết hợp với hầu hết các phong cách thời trang như: đi học, đi chơi, đi du lịch. Giày đôi, giày nhóm...</p><p>✔️ Có thể kết hợp với váy, jeans, sooc…. Đều phù hợp!!&nbsp;</p>','666000','100','giay6.jpg','giay6.jpg','giay6.jpg','giay6.jpg','Chủ vui nên khuyến mãi','0',0,'2021-11-24 07:59:26','2021-11-24 07:59:26'),(31,'Nike Black Pice 99','Thể thao','Nike','<p>✔️ Đế giày được thiết kế chịu ma sát tốt, tăng chiều cao, nhẹ, êm, cân bằng và thoáng khí.&nbsp;</p><p>✔️ Kiểu dáng hottrend của năm nay.&nbsp;</p><p>✔️ Giày đẹp, nhẹ, bền. Có thể làm giày cặp, giày nhóm. Thích hợp đi chơi, chạy bộ, gym, đi học, đi làm...&nbsp;</p><p>✔️ Đế cao su bền chắc, có độ bám cao.</p><p>✔️ Mẫu mới nhất hiện nay mang êm chân thời trang cá tính.&nbsp;</p><p>✔️ Dễ dàng kết hợp với hầu hết các phong cách thời trang như: đi học, đi chơi, đi du lịch. Giày đôi, giày nhóm...</p><p>✔️ Có thể kết hợp với váy, jeans, sooc…. Đều phù hợp!!</p>','550000','222','giay1.jpg','giay1.jpg','giay1.jpg','giay1.jpg','Mới ra mắt','0',0,'2022-05-03 10:13:28','2022-05-03 10:13:28'),(33,'tesst','Thể thao','Gucci','abc','120000','20','sieu-nhan-gao-2-8242.jpg','sieu-nhan-gao-2-8242.jpg','sieu-nhan-gao-2-8242.jpg','sieu-nhan-gao-2-8242.jpg','Ngày lễ','0',0,'2024-11-27 09:01:08','2024-11-27 09:01:08');
/*!40000 ALTER TABLE `giay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khuyen_mai`
--

DROP TABLE IF EXISTS `khuyen_mai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `khuyen_mai` (
  `id_khuyen_mai` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ten_khuyen_mai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gia_tri_khuyen_mai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_khuyen_mai`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khuyen_mai`
--

LOCK TABLES `khuyen_mai` WRITE;
/*!40000 ALTER TABLE `khuyen_mai` DISABLE KEYS */;
INSERT INTO `khuyen_mai` VALUES (1,'Không khuyễn mãi','0'),(2,'Ngày lễ','15'),(3,'Mới ra mắt','10'),(4,'Sale cuối năm','5'),(5,'Chủ vui nên khuyến mãi','3');
/*!40000 ALTER TABLE `khuyen_mai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lien_he`
--

DROP TABLE IF EXISTS `lien_he`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lien_he` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ten_cua_hang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dia_chi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `so_dien_thoai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gio_lam_viec` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_mang_xa_hoi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ban_do` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lien_he`
--

LOCK TABLES `lien_he` WRITE;
/*!40000 ALTER TABLE `lien_he` DISABLE KEYS */;
/*!40000 ALTER TABLE `lien_he` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loai_giay`
--

DROP TABLE IF EXISTS `loai_giay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loai_giay` (
  `id_loai_giay` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ten_loai_giay` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_loai_giay`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loai_giay`
--

LOCK TABLES `loai_giay` WRITE;
/*!40000 ALTER TABLE `loai_giay` DISABLE KEYS */;
INSERT INTO `loai_giay` VALUES (1,'Thể thao',NULL,NULL),(2,'Sandanl',NULL,NULL),(3,'Sneaker',NULL,NULL),(4,'Boots',NULL,NULL);
/*!40000 ALTER TABLE `loai_giay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2021_11_02_024954_create_sessions_table',1),(6,'2021_11_15_125359_giay_table',1),(7,'2021_11_15_125523_loai_giay_table',1),(8,'2021_11_15_125541_thuong_hieu_table',1),(9,'2021_11_16_082748_khuyen_mai_table',1),(10,'2021_11_16_101507_phan_quyen_table',1),(11,'2021_11_21_025722_create_don_hang_table',1),(12,'2021_12_02_143926_create_danh_gia_table',1),(13,'2024_11_21_173324_create_contact_info_table',2),(14,'2024_11_21_174351_create_contact_inquiries_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phan_quyen`
--

DROP TABLE IF EXISTS `phan_quyen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phan_quyen` (
  `id_phan_quyen` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ten_phan_quyen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_phan_quyen`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phan_quyen`
--

LOCK TABLES `phan_quyen` WRITE;
/*!40000 ALTER TABLE `phan_quyen` DISABLE KEYS */;
INSERT INTO `phan_quyen` VALUES (1,'Quản trị viên'),(2,'Người dùng'),(3,'Nhân viên');
/*!40000 ALTER TABLE `phan_quyen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('vAe4mTARHoiZ5ySFKXfd64eHrrF8AUphtzBfoKAh',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','YTo1OntzOjY6Il90b2tlbiI7czo0MDoiS2t3Y21vbFlCc1B3eTRmZ2N1Tnh1cTNyRWN2Mk5iU21RUU9UR0hsTSI7czo4OiJnaW9faGFuZyI7YToxOntpOjM7YTo1OntzOjEwOiJoaW5oX2FuaF8xIjtzOjk6ImdpYXkzLmpwZyI7czo4OiJ0ZW5fZ2lheSI7czoxOToiVGhlIE5pa2UgUHJlbWllciBJSSI7czo3OiJkb25fZ2lhIjtzOjY6Ijk5OTAwMCI7czo4OiJzb19sdW9uZyI7czoxOiIxIjtzOjEwOiJraHV5ZW5fbWFpIjtzOjI6IjE1Ijt9fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI5OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvY29udGFjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NToiY2hlY2siO3M6MToiMCI7fQ==',1732726812);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thuong_hieu`
--

DROP TABLE IF EXISTS `thuong_hieu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thuong_hieu` (
  `id_thuong_hieu` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ten_thuong_hieu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_thuong_hieu`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thuong_hieu`
--

LOCK TABLES `thuong_hieu` WRITE;
/*!40000 ALTER TABLE `thuong_hieu` DISABLE KEYS */;
INSERT INTO `thuong_hieu` VALUES (1,'Nike'),(2,'Adidas'),(3,'Converse'),(4,'Gucci'),(5,'Puma'),(6,'Vans'),(7,'New Balance'),(8,'Balenciaga');
/*!40000 ALTER TABLE `thuong_hieu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ten_nguoi_dung` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Ten_dang_nhap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_phan_quyen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_ten_dang_nhap_unique` (`Ten_dang_nhap`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin','admin@gmail.com','0123456789','admin','$2y$10$4WWwQ1JfX/BOMhQsU2G3Nef.ZscUCnEBGpsuRISxDinfqoSLvHeg2','1'),(15,'kienpro214','thanhkien2021008@gmail.com','0395004764','kienpro214','$2y$10$4WWwQ1JfX/BOMhQsU2G3Nef.ZscUCnEBGpsuRISxDinfqoSLvHeg2','2');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yeu_cau_khach_hang`
--

DROP TABLE IF EXISTS `yeu_cau_khach_hang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yeu_cau_khach_hang` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tin_nhan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yeu_cau_khach_hang`
--

LOCK TABLES `yeu_cau_khach_hang` WRITE;
/*!40000 ALTER TABLE `yeu_cau_khach_hang` DISABLE KEYS */;
/*!40000 ALTER TABLE `yeu_cau_khach_hang` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-28  0:57:24
