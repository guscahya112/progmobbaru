/*
SQLyog Ultimate v12.4.3 (64 bit)
MySQL - 10.4.11-MariaDB : Database - db_pratikum_progmob
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_pratikum_progmob` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `db_pratikum_progmob`;

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_resets_table',1),
(3,'2016_06_01_000001_create_oauth_auth_codes_table',1),
(4,'2016_06_01_000002_create_oauth_access_tokens_table',1),
(5,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),
(6,'2016_06_01_000004_create_oauth_clients_table',1),
(7,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),
(8,'2019_08_19_000000_create_failed_jobs_table',1);

/*Table structure for table `oauth_access_tokens` */

DROP TABLE IF EXISTS `oauth_access_tokens`;

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_access_tokens` */

insert  into `oauth_access_tokens`(`id`,`user_id`,`client_id`,`name`,`scopes`,`revoked`,`created_at`,`updated_at`,`expires_at`) values 
('01b8e0b1bb4fac9fcd77d8c423ba2747b3ff0f143a9205ab38a3cd55d8fc239c4050ed9dba4aa949',17,1,'nApp','[]',0,'2020-11-10 12:35:25','2020-11-10 12:35:25','2021-11-10 12:35:25'),
('3cce0ef0547e535cc97a3b0acfbb3b7d4c4188ea2fd3e2dd05216faf95c2ec4626a064b2f3f5fd67',17,1,'nApp','[]',0,'2020-11-10 12:57:41','2020-11-10 12:57:41','2021-11-10 12:57:41'),
('4e8545c07279146f96ff757dc43b24b013a9c47f613c9a8317f02e97d7056763fd60dba172559cc0',17,1,'nApp','[]',0,'2020-11-10 12:57:02','2020-11-10 12:57:02','2021-11-10 12:57:02'),
('829f82bf4cc7625b1988bcd92f7c7d4cf1f2c79bfa67f4707e072f70bf4fcb3544d068438e9e3e7c',17,1,'nApp','[]',0,'2020-11-10 12:55:46','2020-11-10 12:55:46','2021-11-10 12:55:46'),
('8a8e1eb5488acffa06669ce065d5c53300e1f678240b957fd70dbce6d4464cfef95be10ab9956f1c',17,1,'nApp','[]',0,'2020-11-10 13:06:58','2020-11-10 13:06:58','2021-11-10 13:06:58'),
('8e9e49c51c84dfacac9efebb7e9fc8aa4b8db3a17fb43d04bb4172ea70e940cb89bbbdc075725640',17,1,'nApp','[]',0,'2020-11-10 12:30:46','2020-11-10 12:30:46','2021-11-10 12:30:46'),
('ba24850c39a4a3703e0cf6c6d3f9801556d641a06bbab00412285b5c800ec8dedb02b4493252ac51',17,1,'nApp','[]',0,'2020-11-10 12:37:41','2020-11-10 12:37:41','2021-11-10 12:37:41'),
('ff715ec3236a9e0f3fe0d7dceb3c5176b67b00cdff3d8fff316181244e0a3c56cea368ce49979d39',17,1,'nApp','[]',0,'2020-11-10 12:42:34','2020-11-10 12:42:34','2021-11-10 12:42:34');

/*Table structure for table `oauth_auth_codes` */

DROP TABLE IF EXISTS `oauth_auth_codes`;

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_auth_codes` */

/*Table structure for table `oauth_clients` */

DROP TABLE IF EXISTS `oauth_clients`;

CREATE TABLE `oauth_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_clients` */

insert  into `oauth_clients`(`id`,`user_id`,`name`,`secret`,`provider`,`redirect`,`personal_access_client`,`password_client`,`revoked`,`created_at`,`updated_at`) values 
(1,NULL,'Laravel Personal Access Client','YAK1Lr6EJNM3EwWjBEPyNaXrvah1v8G2KL2Aradq',NULL,'http://localhost',1,0,0,'2020-11-10 12:16:12','2020-11-10 12:16:12'),
(2,NULL,'Laravel Password Grant Client','w0VTFv8BNg78Tt6OeXEYkbICE7FLPXuXkPoDdyAR','users','http://localhost',0,1,0,'2020-11-10 12:16:12','2020-11-10 12:16:12');

/*Table structure for table `oauth_personal_access_clients` */

DROP TABLE IF EXISTS `oauth_personal_access_clients`;

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_personal_access_clients` */

insert  into `oauth_personal_access_clients`(`id`,`client_id`,`created_at`,`updated_at`) values 
(1,1,'2020-11-10 12:16:12','2020-11-10 12:16:12');

/*Table structure for table `oauth_refresh_tokens` */

DROP TABLE IF EXISTS `oauth_refresh_tokens`;

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_refresh_tokens` */

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `jenis_kelamin` enum('laki-laki','perempuan') DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`email_verified_at`,`alamat`,`jenis_kelamin`,`tanggal_lahir`,`password`,`remember_token`,`created_at`,`updated_at`) values 
(1,'anjaya','alingotama1323a@gmail.com',NULL,'alamat','laki-laki','2020-01-01','$2y$10$shOkb6oIMxBG29eMxmEUT.X3j.0B0hqsl3jF1kTE4UFvfaR0FdBK.',NULL,'2020-11-01 06:25:21','2020-11-01 06:25:21'),
(2,'alingotama23','alingotama1323a@gmail.com',NULL,'alamat','laki-laki','2020-01-01','$2y$10$/OlpfrZsfkTNqoTlt8DUVeEEHaVvfTBXIunst0K2fYvnVSci1Priy',NULL,'2020-11-01 06:25:50','2020-11-01 06:25:50'),
(3,'alingotama23','alingotama14@gmail.com',NULL,'banjar','laki-laki','2020-01-01','$2y$10$Sytyw64NzK4cYYi10kyTq.iQpKH71I5Unno8VB7kZN1166VoTDmTe',NULL,'2020-11-01 06:26:28','2020-11-01 06:26:28'),
(4,'ajik','ajik14@gmail.com',NULL,'jalan merpati','laki-laki','2020-01-01','$2y$10$mIAKgFBVm7NeUOeWlcWFW.J8i9kluSKLiskagdUUk.0mBYQDk2ScC',NULL,'2020-11-02 00:47:11','2020-11-02 00:47:11'),
(5,'ajik','ajik14@gmail.com',NULL,'jalan merpati','laki-laki','2020-01-01','$2y$10$jH4aO.Qn.y4dFVqBY61EjO9Uw6i6/w88FhU64gVI1TbjFV.8Ef6ui',NULL,'2020-11-02 00:47:11','2020-11-02 00:47:11'),
(6,'ajik','ajik@gmail.com',NULL,'jalan melati',NULL,NULL,'$2y$10$vO82Pt20a9dNKi4twX6Bg.5yQA1ds8zUp2/bBuA5MP22P.v.1AKlm',NULL,'2020-11-02 01:15:33','2020-11-02 01:15:33'),
(7,'i putu alin','alingotama14@gmail.com',NULL,'jenah','laki-laki','2020-01-01','$2y$10$3eZopmTUtOoBkJonDkml/Ojo80OpZNfEXNR3dM2r1BVlZ4ATDiLUa',NULL,'2020-11-06 07:53:46','2020-11-06 07:53:46'),
(8,'i putu alin','alingotama14@gmail.com',NULL,'jenah','laki-laki','2020-01-01','$2y$10$enGrW/MFI/8Z7ZkgyxBFpuJawH3rqj/QDmk.Rh7MoDGexiqmD25sC',NULL,'2020-11-06 07:53:46','2020-11-06 07:53:46'),
(10,'alin','alingotama@gmail.com',NULL,'alsan','laki-laki','2020-01-01','$2y$10$nceDdjySF..e00P07f4aVeKdG3GLCi/C/Kh1ngmZl6gPM.hLPqK9e',NULL,'2020-11-06 07:58:03','2020-11-06 07:58:03'),
(11,'jamal','jamal@gmail.com',NULL,'alsan','laki-laki','2020-01-01','$2y$10$pbZqhntQuJJDyorC3lLenOqu.ZeIb5VZUL2NZGP2g7pTwcynLVHpm',NULL,'2020-11-06 07:59:23','2020-11-06 07:59:23'),
(12,'oka','oka@gmail.com',NULL,'oka','laki-laki','2020-11-02','$2y$10$wZMTep6zoLruTz0BO2alx.tEyFjJ.8n.ciSVuz42fEeVJmiW.mFCm',NULL,'2020-11-06 08:02:41','2020-11-06 08:02:41'),
(13,'gus cahya','guscahya@gmail.com',NULL,'alsan','laki-laki','2020-01-01','$2y$10$78uP2zpjpz.FoFNDnCCC.OEAwZrD8PtbT9rO/SgUelWUkj7662fOm',NULL,'2020-11-06 08:04:35','2020-11-06 08:04:35'),
(14,'gus cahya','guscahya@gmail.com',NULL,'alsan','laki-laki','2020-01-01','$2y$10$5EeqIEpgm8eN6.MspD2pyuLQWKygp0qaeSz.r8LstaL191b2F1Or6',NULL,'2020-11-06 08:04:41','2020-11-06 08:04:41'),
(17,'alin4','alingotam4@gmail.com',NULL,'baananan2','laki-laki','2020-01-01','$2y$10$f4823u4w52D.RIjGRff/T.OPSg3.Ed5cOvTaJX9MMASHI1nnnskiy',NULL,'2020-11-06 08:25:06','2020-11-06 08:25:06'),
(18,'alin4','alingotam4@gmail.com',NULL,'baananan2','laki-laki','2020-01-01','$2y$10$dnaYKs2uRyrpupPpev3L7eMjUFlgm.jOD9sbukfkGzqKfkl1/fTIa',NULL,'2020-11-06 08:25:17','2020-11-06 08:25:17');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
