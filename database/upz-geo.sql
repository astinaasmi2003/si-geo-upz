-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for si_geo_upz
DROP DATABASE IF EXISTS `si_geo_upz`;
CREATE DATABASE IF NOT EXISTS `si_geo_upz` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `si_geo_upz`;

-- Dumping structure for table si_geo_upz.cache
DROP TABLE IF EXISTS `cache`;
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table si_geo_upz.cache: ~7 rows (approximately)
DELETE FROM `cache`;
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
	('356a192b7913b04c54574d18c28d46e6395428ab', 'i:1;', 1756969778),
	('356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1756969778;', 1756969778),
	('livewire-rate-limiter:056fc329aaaa757d31db450f525da23fde4d1b36', 'i:1;', 1756992381),
	('livewire-rate-limiter:056fc329aaaa757d31db450f525da23fde4d1b36:timer', 'i:1756992381;', 1756992381),
	('livewire-rate-limiter:1c4cbbba50e9a35fa3e367e4405ef6ecca2431d7', 'i:1;', 1756988738),
	('livewire-rate-limiter:1c4cbbba50e9a35fa3e367e4405ef6ecca2431d7:timer', 'i:1756988738;', 1756988738),
	('spatie.permission.cache', 'a:3:{s:5:"alias";a:4:{s:1:"a";s:2:"id";s:1:"b";s:4:"name";s:1:"c";s:10:"guard_name";s:1:"r";s:5:"roles";}s:11:"permissions";a:91:{i:0;a:4:{s:1:"a";i:1;s:1:"b";s:13:"View Any User";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:1;a:4:{s:1:"a";i:2;s:1:"b";s:9:"View User";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:2;a:4:{s:1:"a";i:3;s:1:"b";s:11:"Create User";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:3;a:4:{s:1:"a";i:4;s:1:"b";s:11:"Update User";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:4;a:4:{s:1:"a";i:5;s:1:"b";s:11:"Delete User";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:5;a:4:{s:1:"a";i:6;s:1:"b";s:12:"Restore User";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:6;a:4:{s:1:"a";i:7;s:1:"b";s:17:"Force Delete User";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:7;a:4:{s:1:"a";i:8;s:1:"b";s:13:"View Any Role";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:8;a:4:{s:1:"a";i:9;s:1:"b";s:9:"View Role";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:9;a:4:{s:1:"a";i:10;s:1:"b";s:11:"Create Role";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:10;a:4:{s:1:"a";i:11;s:1:"b";s:11:"Update Role";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:11;a:4:{s:1:"a";i:12;s:1:"b";s:11:"Delete Role";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:12;a:4:{s:1:"a";i:13;s:1:"b";s:12:"Restore Role";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:13;a:4:{s:1:"a";i:14;s:1:"b";s:17:"Force Delete Role";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:14;a:4:{s:1:"a";i:15;s:1:"b";s:19:"View Any Permission";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:15;a:4:{s:1:"a";i:16;s:1:"b";s:15:"View Permission";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:16;a:4:{s:1:"a";i:17;s:1:"b";s:17:"Create Permission";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:17;a:4:{s:1:"a";i:18;s:1:"b";s:17:"Update Permission";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:18;a:4:{s:1:"a";i:19;s:1:"b";s:17:"Delete Permission";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:19;a:4:{s:1:"a";i:20;s:1:"b";s:18:"Restore Permission";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:20;a:4:{s:1:"a";i:21;s:1:"b";s:23:"Force Delete Permission";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:21;a:4:{s:1:"a";i:22;s:1:"b";s:13:"View Any Data";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:22;a:4:{s:1:"a";i:23;s:1:"b";s:9:"View Data";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:23;a:4:{s:1:"a";i:24;s:1:"b";s:11:"Create Data";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:24;a:4:{s:1:"a";i:25;s:1:"b";s:11:"Update Data";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:25;a:4:{s:1:"a";i:26;s:1:"b";s:11:"Delete Data";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:26;a:4:{s:1:"a";i:27;s:1:"b";s:12:"Restore Data";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:27;a:4:{s:1:"a";i:28;s:1:"b";s:17:"Force Delete Data";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:28;a:4:{s:1:"a";i:29;s:1:"b";s:13:"View Any Foto";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:1;i:1;i:2;}}i:29;a:4:{s:1:"a";i:30;s:1:"b";s:9:"View Foto";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:1;i:1;i:2;}}i:30;a:4:{s:1:"a";i:31;s:1:"b";s:11:"Create Foto";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:31;a:4:{s:1:"a";i:32;s:1:"b";s:11:"Update Foto";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:32;a:4:{s:1:"a";i:33;s:1:"b";s:11:"Delete Foto";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:33;a:4:{s:1:"a";i:34;s:1:"b";s:12:"Restore Foto";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:34;a:4:{s:1:"a";i:35;s:1:"b";s:17:"Force Delete Foto";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:35;a:4:{s:1:"a";i:36;s:1:"b";s:25:"View Any Jadwal Pelayanan";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:1;i:1;i:2;}}i:36;a:4:{s:1:"a";i:37;s:1:"b";s:21:"View Jadwal Pelayanan";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:1;i:1;i:2;}}i:37;a:4:{s:1:"a";i:38;s:1:"b";s:23:"Create Jadwal Pelayanan";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:38;a:4:{s:1:"a";i:39;s:1:"b";s:23:"Update Jadwal Pelayanan";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:39;a:4:{s:1:"a";i:40;s:1:"b";s:23:"Delete Jadwal Pelayanan";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:40;a:4:{s:1:"a";i:41;s:1:"b";s:24:"Restore Jadwal Pelayanan";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:41;a:4:{s:1:"a";i:42;s:1:"b";s:29:"Force Delete Jadwal Pelayanan";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:42;a:4:{s:1:"a";i:43;s:1:"b";s:14:"View Any Jenis";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:1;i:1;i:2;}}i:43;a:4:{s:1:"a";i:44;s:1:"b";s:10:"View Jenis";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:44;a:4:{s:1:"a";i:45;s:1:"b";s:12:"Create Jenis";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:45;a:4:{s:1:"a";i:46;s:1:"b";s:12:"Update Jenis";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:46;a:4:{s:1:"a";i:47;s:1:"b";s:12:"Delete Jenis";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:47;a:4:{s:1:"a";i:48;s:1:"b";s:13:"Restore Jenis";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:48;a:4:{s:1:"a";i:49;s:1:"b";s:18:"Force Delete Jenis";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:49;a:4:{s:1:"a";i:50;s:1:"b";s:15:"View Any Kontak";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:1;i:1;i:2;}}i:50;a:4:{s:1:"a";i:51;s:1:"b";s:11:"View Kontak";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:1;i:1;i:2;}}i:51;a:4:{s:1:"a";i:52;s:1:"b";s:13:"Create Kontak";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:52;a:4:{s:1:"a";i:53;s:1:"b";s:13:"Update Kontak";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:53;a:4:{s:1:"a";i:54;s:1:"b";s:13:"Delete Kontak";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:54;a:4:{s:1:"a";i:55;s:1:"b";s:14:"Restore Kontak";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:55;a:4:{s:1:"a";i:56;s:1:"b";s:19:"Force Delete Kontak";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:56;a:4:{s:1:"a";i:57;s:1:"b";s:18:"View Any Koordinat";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:1;i:1;i:2;}}i:57;a:4:{s:1:"a";i:58;s:1:"b";s:14:"View Koordinat";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:1;i:1;i:2;}}i:58;a:4:{s:1:"a";i:59;s:1:"b";s:16:"Create Koordinat";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:59;a:4:{s:1:"a";i:60;s:1:"b";s:16:"Update Koordinat";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:60;a:4:{s:1:"a";i:61;s:1:"b";s:16:"Delete Koordinat";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:61;a:4:{s:1:"a";i:62;s:1:"b";s:17:"Restore Koordinat";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:62;a:4:{s:1:"a";i:63;s:1:"b";s:22:"Force Delete Koordinat";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:63;a:4:{s:1:"a";i:64;s:1:"b";s:16:"View Any Laporan";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:1;i:1;i:2;}}i:64;a:4:{s:1:"a";i:65;s:1:"b";s:12:"View Laporan";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:1;i:1;i:2;}}i:65;a:4:{s:1:"a";i:66;s:1:"b";s:14:"Create Laporan";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:1;i:1;i:2;}}i:66;a:4:{s:1:"a";i:67;s:1:"b";s:14:"Update Laporan";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:67;a:4:{s:1:"a";i:68;s:1:"b";s:14:"Delete Laporan";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:1;i:1;i:2;}}i:68;a:4:{s:1:"a";i:69;s:1:"b";s:15:"Restore Laporan";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:69;a:4:{s:1:"a";i:70;s:1:"b";s:20:"Force Delete Laporan";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:70;a:4:{s:1:"a";i:71;s:1:"b";s:12:"View Any Upz";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:1;i:1;i:2;}}i:71;a:4:{s:1:"a";i:72;s:1:"b";s:8:"View Upz";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:1;i:1;i:2;}}i:72;a:4:{s:1:"a";i:73;s:1:"b";s:10:"Create Upz";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:73;a:4:{s:1:"a";i:74;s:1:"b";s:10:"Update Upz";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:1;i:1;i:2;}}i:74;a:4:{s:1:"a";i:75;s:1:"b";s:10:"Delete Upz";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:75;a:4:{s:1:"a";i:76;s:1:"b";s:11:"Restore Upz";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:76;a:4:{s:1:"a";i:77;s:1:"b";s:16:"Force Delete Upz";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:77;a:4:{s:1:"a";i:78;s:1:"b";s:16:"View Any Wilayah";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:1;i:1;i:2;}}i:78;a:4:{s:1:"a";i:79;s:1:"b";s:12:"View Wilayah";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:1;i:1;i:2;}}i:79;a:4:{s:1:"a";i:80;s:1:"b";s:14:"Create Wilayah";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:80;a:4:{s:1:"a";i:81;s:1:"b";s:14:"Update Wilayah";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:81;a:4:{s:1:"a";i:82;s:1:"b";s:14:"Delete Wilayah";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:82;a:4:{s:1:"a";i:83;s:1:"b";s:15:"Restore Wilayah";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:83;a:4:{s:1:"a";i:84;s:1:"b";s:20:"Force Delete Wilayah";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:84;a:4:{s:1:"a";i:85;s:1:"b";s:13:"View Any Peta";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:1;i:1;i:3;}}i:85;a:4:{s:1:"a";i:86;s:1:"b";s:9:"View Peta";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:1;i:1;i:3;}}i:86;a:4:{s:1:"a";i:87;s:1:"b";s:11:"Create Peta";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:87;a:4:{s:1:"a";i:88;s:1:"b";s:11:"Update Peta";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:88;a:4:{s:1:"a";i:89;s:1:"b";s:11:"Delete Peta";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:89;a:4:{s:1:"a";i:90;s:1:"b";s:12:"Restore Peta";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:90;a:4:{s:1:"a";i:91;s:1:"b";s:17:"Force Delete Peta";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}}s:5:"roles";a:3:{i:0;a:3:{s:1:"a";i:1;s:1:"b";s:13:"Administrator";s:1:"c";s:3:"web";}i:1;a:3:{s:1:"a";i:2;s:1:"b";s:6:"Takmir";s:1:"c";s:3:"web";}i:2;a:3:{s:1:"a";i:3;s:1:"b";s:4:"User";s:1:"c";s:3:"web";}}}', 1757074540);

-- Dumping structure for table si_geo_upz.cache_locks
DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table si_geo_upz.cache_locks: ~0 rows (approximately)
DELETE FROM `cache_locks`;

-- Dumping structure for table si_geo_upz.exports
DROP TABLE IF EXISTS `exports`;
CREATE TABLE IF NOT EXISTS `exports` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `completed_at` timestamp NULL DEFAULT NULL,
  `file_disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exporter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `processed_rows` int unsigned NOT NULL DEFAULT '0',
  `total_rows` int unsigned NOT NULL,
  `successful_rows` int unsigned NOT NULL DEFAULT '0',
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `exports_user_id_foreign` (`user_id`),
  CONSTRAINT `exports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table si_geo_upz.exports: ~0 rows (approximately)
DELETE FROM `exports`;

-- Dumping structure for table si_geo_upz.failed_import_rows
DROP TABLE IF EXISTS `failed_import_rows`;
CREATE TABLE IF NOT EXISTS `failed_import_rows` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `data` json NOT NULL,
  `import_id` bigint unsigned NOT NULL,
  `validation_error` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `failed_import_rows_import_id_foreign` (`import_id`),
  CONSTRAINT `failed_import_rows_import_id_foreign` FOREIGN KEY (`import_id`) REFERENCES `imports` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table si_geo_upz.failed_import_rows: ~0 rows (approximately)
DELETE FROM `failed_import_rows`;

-- Dumping structure for table si_geo_upz.failed_jobs
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table si_geo_upz.failed_jobs: ~0 rows (approximately)
DELETE FROM `failed_jobs`;

-- Dumping structure for table si_geo_upz.fotos
DROP TABLE IF EXISTS `fotos`;
CREATE TABLE IF NOT EXISTS `fotos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `upz_id` bigint unsigned NOT NULL,
  `url_foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fotos_upz_id_foreign` (`upz_id`),
  CONSTRAINT `fotos_upz_id_foreign` FOREIGN KEY (`upz_id`) REFERENCES `upzs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table si_geo_upz.fotos: ~8 rows (approximately)
DELETE FROM `fotos`;
INSERT INTO `fotos` (`id`, `upz_id`, `url_foto`, `keterangan`, `created_at`, `updated_at`) VALUES
	(2, 3, 'foto-upz/01K42PX8HG4CNATGT1K00C23R7.webp', 'Ini merupakan foto Masjid Nurul Ma\'mun yang terletak di Berbas Tengah\n', '2025-09-01 13:19:20', '2025-09-01 13:19:20'),
	(3, 4, 'foto-upz/01K42RET48PXF7ZSZZ82E7W41Q.jpg', 'Foto Masjid Al-Muttaqin\n', '2025-09-01 13:46:24', '2025-09-01 13:46:24'),
	(4, 5, 'foto-upz/01K46PF700EJVWW192F2GXX3KP.jpg', 'Foto UPZ Masjid Hibatullah\n', '2025-09-01 14:01:24', '2025-09-03 02:28:38'),
	(5, 6, 'foto-upz/01K45DM94XG4VMBGJ6C93BQF1R.jpg', 'Foto ini merupakan Masjid Adz Dzikru', '2025-09-02 14:34:52', '2025-09-02 14:34:52'),
	(6, 7, 'foto-upz/01K46MB7HWH3J11D3TQ88XD38D.png', 'Foto Masjid Tua Al- Wahhab', '2025-09-03 01:51:30', '2025-09-03 01:51:30'),
	(7, 8, 'foto-upz/01K46NPXWSTDZ4ZVAG4C1SM405.jpg', 'Fota Masjid Al- Istiqomah', '2025-09-03 02:15:22', '2025-09-03 02:15:22'),
	(8, 12, 'foto-upz/01K49A0BVJ81B92ZM1SHDYTZJB.jpg', 'Foto ini merupakan Masjid Bahrul Aqobah', '2025-09-04 02:48:31', '2025-09-04 02:48:31'),
	(9, 14, 'foto-upz/01K49CGVN1M3VQTDFED9TM4GZ4.jpg', 'Foto ini merupakan Masjid Besar Al -Amien', '2025-09-04 03:32:29', '2025-09-04 03:32:29'),
	(10, 15, 'foto-upz/01K49ECS2JYDGJE4XVNTMXAQ03.jpg', 'Foto ini merupakan Masjid Raudhotul Jannah', '2025-09-04 04:05:12', '2025-09-04 04:05:12'),
	(11, 16, 'foto-upz/01K49ET7QGWW2WQYEET7BH8SYP.jpg', 'Foto ini merupakan Masjid Al-A\'raaf', '2025-09-04 04:12:33', '2025-09-04 04:12:33'),
	(12, 18, 'foto-upz/01K49RY0T1NSB4YHHYAZ6FPEXT.jpg', 'Foto ini merupakan Masjid Baiturrahim BTN KCY\n\n', '2025-09-04 07:09:23', '2025-09-04 07:09:23');

-- Dumping structure for table si_geo_upz.imports
DROP TABLE IF EXISTS `imports`;
CREATE TABLE IF NOT EXISTS `imports` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `completed_at` timestamp NULL DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `importer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `processed_rows` int unsigned NOT NULL DEFAULT '0',
  `total_rows` int unsigned NOT NULL,
  `successful_rows` int unsigned NOT NULL DEFAULT '0',
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `imports_user_id_foreign` (`user_id`),
  CONSTRAINT `imports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table si_geo_upz.imports: ~0 rows (approximately)
DELETE FROM `imports`;

-- Dumping structure for table si_geo_upz.jadwal_pelayanans
DROP TABLE IF EXISTS `jadwal_pelayanans`;
CREATE TABLE IF NOT EXISTS `jadwal_pelayanans` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `upz_id` bigint unsigned NOT NULL,
  `hari` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jadwal_pelayanans_upz_id_foreign` (`upz_id`),
  CONSTRAINT `jadwal_pelayanans_upz_id_foreign` FOREIGN KEY (`upz_id`) REFERENCES `upzs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table si_geo_upz.jadwal_pelayanans: ~17 rows (approximately)
DELETE FROM `jadwal_pelayanans`;
INSERT INTO `jadwal_pelayanans` (`id`, `upz_id`, `hari`, `created_at`, `updated_at`) VALUES
	(2, 3, 'Senin', '2025-09-01 13:20:51', '2025-09-01 13:20:51'),
	(3, 2, 'Senin', '2025-09-01 13:27:11', '2025-09-01 13:27:11'),
	(4, 4, 'Selasa', '2025-09-01 13:47:53', '2025-09-01 13:47:53'),
	(5, 5, 'Senin', '2025-09-01 14:04:00', '2025-09-01 14:04:00'),
	(6, 6, 'Senin', '2025-09-02 14:35:58', '2025-09-02 14:35:58'),
	(7, 6, 'Selasa', '2025-09-02 14:36:48', '2025-09-02 14:36:48'),
	(8, 6, 'Rabu', '2025-09-02 14:37:57', '2025-09-02 14:37:57'),
	(9, 6, 'Jumat', '2025-09-02 14:38:27', '2025-09-02 14:38:27'),
	(10, 7, 'Senin', '2025-09-03 01:52:59', '2025-09-03 01:52:59'),
	(11, 8, 'Senin', '2025-09-03 02:17:51', '2025-09-03 02:17:51'),
	(12, 9, 'Senin', '2025-09-03 02:48:08', '2025-09-03 02:48:08'),
	(13, 10, 'Senin', '2025-09-04 01:34:18', '2025-09-04 01:34:18'),
	(14, 11, 'Senin', '2025-09-04 02:36:52', '2025-09-04 02:36:52'),
	(15, 12, 'Senin', '2025-09-04 02:49:43', '2025-09-04 02:49:43'),
	(16, 13, 'Senin', '2025-09-04 03:06:30', '2025-09-04 03:06:30'),
	(17, 14, 'Senin', '2025-09-04 03:33:30', '2025-09-04 03:33:30'),
	(18, 15, 'Senin', '2025-09-04 04:06:27', '2025-09-04 04:06:27'),
	(19, 16, 'Senin', '2025-09-04 04:13:21', '2025-09-04 04:13:21'),
	(20, 18, 'Senin', '2025-09-04 07:10:30', '2025-09-04 07:10:30'),
	(21, 19, 'Selasa', '2025-09-04 07:26:30', '2025-09-04 07:26:30'),
	(22, 20, 'Senin', '2025-09-04 07:35:42', '2025-09-04 07:35:42');

-- Dumping structure for table si_geo_upz.jenis
DROP TABLE IF EXISTS `jenis`;
CREATE TABLE IF NOT EXISTS `jenis` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table si_geo_upz.jenis: ~5 rows (approximately)
DELETE FROM `jenis`;
INSERT INTO `jenis` (`id`, `nama`, `keterangan`, `created_at`, `updated_at`) VALUES
	(1, 'Masjid Agung', 'Masjid Agung  kini menjadi pusat kegiatan sosial keagamaan pemerintah dan masyarakat di tingkat kabupaten/kota. ', '2025-08-28 13:07:05', '2025-09-01 13:01:58'),
	(2, 'Masjid Jami', 'Masjid Jami\' adalah Masjid yang di pusat pemukiman di wilayah desa/kelurahan dan menjadi pusat kegiatan sosial keagamaan masyarakat di wilayah pemukiman/desa/kelurahan;', '2025-09-01 11:27:40', '2025-09-01 11:27:40'),
	(3, 'Masjid Besar ', 'Masjid Besar adalah  Masjid yang berada di kecamatan, ditetapkan oleh Pemerintah Daerah setingkat Camat atas rekomendasi Kepala Kantor Urusan Agama (KUA) Kecamatan ', '2025-09-01 13:07:48', '2025-09-01 13:07:48'),
	(4, 'Masjid Tempat Publik', 'Masjid Tempat Publik merupakan masjid yang terletak di kawasan publik untuk memfasilitasi masyarakat dalam melaksanakan ibadah.', '2025-09-01 13:09:18', '2025-09-01 13:09:18'),
	(5, 'Masjid Raya', 'Masjid Raya Adalah masjid yang berada di ibu kota provinsi.', '2025-09-01 13:11:07', '2025-09-01 13:11:07');

-- Dumping structure for table si_geo_upz.jobs
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table si_geo_upz.jobs: ~0 rows (approximately)
DELETE FROM `jobs`;

-- Dumping structure for table si_geo_upz.job_batches
DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table si_geo_upz.job_batches: ~0 rows (approximately)
DELETE FROM `job_batches`;

-- Dumping structure for table si_geo_upz.kontaks
DROP TABLE IF EXISTS `kontaks`;
CREATE TABLE IF NOT EXISTS `kontaks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `upz_id` bigint unsigned NOT NULL,
  `jenis_kontak` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isi_kontak` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kontaks_upz_id_foreign` (`upz_id`),
  CONSTRAINT `kontaks_upz_id_foreign` FOREIGN KEY (`upz_id`) REFERENCES `upzs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table si_geo_upz.kontaks: ~17 rows (approximately)
DELETE FROM `kontaks`;
INSERT INTO `kontaks` (`id`, `upz_id`, `jenis_kontak`, `isi_kontak`, `created_at`, `updated_at`) VALUES
	(2, 2, 'telepon', '+628115924848', '2025-09-01 11:38:59', '2025-09-01 11:38:59'),
	(3, 3, 'telepon', '+6281346478661', '2025-09-01 13:17:32', '2025-09-01 13:17:32'),
	(4, 4, 'telepon', '+6285247679536', '2025-09-01 13:44:29', '2025-09-01 13:44:29'),
	(5, 5, 'telepon', '+6281346425289', '2025-09-01 14:00:03', '2025-09-01 14:00:03'),
	(6, 6, 'telepon', '+6282352688887', '2025-09-02 14:26:45', '2025-09-02 14:26:45'),
	(7, 7, 'telepon', '+6285350197670', '2025-09-03 01:49:39', '2025-09-03 01:49:39'),
	(8, 8, 'telepon', '+6282158099887', '2025-09-03 02:09:51', '2025-09-03 02:09:51'),
	(9, 10, 'telepon', '+6285246773951', '2025-09-04 01:27:51', '2025-09-04 01:27:51'),
	(10, 11, 'whatsapp', '+6282359550379', '2025-09-04 02:34:30', '2025-09-04 02:34:30'),
	(11, 12, 'whatsapp', '+6285350005695', '2025-09-04 02:46:13', '2025-09-04 02:46:13'),
	(12, 13, 'whatsapp', '+6285246642497', '2025-09-04 03:04:57', '2025-09-04 03:04:57'),
	(13, 14, 'whatsapp', '+6285228550031', '2025-09-04 03:31:20', '2025-09-04 03:31:20'),
	(14, 15, 'telepon', '+6285246858818', '2025-09-04 04:03:08', '2025-09-04 04:03:08'),
	(15, 16, 'telepon', '+6281350152674', '2025-09-04 04:11:13', '2025-09-04 04:11:13'),
	(16, 18, 'whatsapp', '+6281255198830', '2025-09-04 07:07:34', '2025-09-04 07:07:34'),
	(17, 19, 'telepon', '+6282334923818', '2025-09-04 07:17:41', '2025-09-04 07:17:41'),
	(18, 20, 'telepon', '+6285386856757', '2025-09-04 07:33:53', '2025-09-04 07:33:53'),
	(19, 21, 'telepon', '+6281350945664', '2025-09-04 07:41:44', '2025-09-04 07:41:44');

-- Dumping structure for table si_geo_upz.koordinats
DROP TABLE IF EXISTS `koordinats`;
CREATE TABLE IF NOT EXISTS `koordinats` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `upz_id` bigint unsigned NOT NULL,
  `latitude` decimal(10,7) NOT NULL,
  `longitude` decimal(10,7) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `koordinats_upz_id_foreign` (`upz_id`),
  CONSTRAINT `koordinats_upz_id_foreign` FOREIGN KEY (`upz_id`) REFERENCES `upzs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table si_geo_upz.koordinats: ~18 rows (approximately)
DELETE FROM `koordinats`;
INSERT INTO `koordinats` (`id`, `upz_id`, `latitude`, `longitude`, `created_at`, `updated_at`) VALUES
	(2, 2, 0.1193150, 117.4911530, '2025-09-01 11:34:51', '2025-09-01 11:34:51'),
	(3, 3, 0.1139690, 117.4826130, '2025-09-01 13:15:12', '2025-09-01 13:15:12'),
	(4, 4, 0.1112600, 117.4792910, '2025-09-01 13:36:46', '2025-09-01 13:36:46'),
	(5, 5, 0.1269670, 117.4988890, '2025-09-01 13:57:58', '2025-09-01 13:57:58'),
	(6, 6, 0.1372790, 117.4799120, '2025-09-02 14:25:27', '2025-09-02 14:25:27'),
	(7, 7, 0.1343300, 117.5028700, '2025-09-03 01:34:10', '2025-09-03 01:34:10'),
	(8, 8, 0.1335400, 117.4935100, '2025-09-03 01:59:00', '2025-09-03 01:59:00'),
	(9, 9, 0.1190920, 117.4861620, '2025-09-03 02:39:00', '2025-09-03 02:39:00'),
	(10, 10, 0.1197000, 117.4941640, '2025-09-04 01:23:35', '2025-09-04 01:23:35'),
	(11, 11, 0.1203500, 117.4973400, '2025-09-04 02:30:06', '2025-09-04 02:30:06'),
	(12, 12, 0.1616900, 117.4825800, '2025-09-04 02:44:12', '2025-09-04 02:44:12'),
	(13, 13, 0.1368000, 117.4828700, '2025-09-04 02:54:59', '2025-09-04 02:54:59'),
	(14, 14, 0.1388130, 117.4592310, '2025-09-04 03:28:09', '2025-09-04 03:28:09'),
	(15, 15, 0.1307390, 117.4784070, '2025-09-04 04:01:42', '2025-09-04 04:01:42'),
	(16, 16, 0.1737300, 117.4729500, '2025-09-04 04:09:48', '2025-09-04 04:09:48'),
	(17, 18, 0.1274500, 117.4899100, '2025-09-04 07:02:57', '2025-09-04 07:02:57'),
	(18, 19, 0.1391500, 117.5160600, '2025-09-04 07:15:20', '2025-09-04 07:15:20'),
	(19, 20, 0.1210600, 117.4825000, '2025-09-04 07:32:27', '2025-09-04 07:32:27'),
	(20, 21, 0.1141600, 117.4935200, '2025-09-04 07:39:25', '2025-09-04 07:39:25');

-- Dumping structure for table si_geo_upz.laporans
DROP TABLE IF EXISTS `laporans`;
CREATE TABLE IF NOT EXISTS `laporans` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tanggal` date NOT NULL,
  `judul_laporan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi_laporan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `upz_id` bigint unsigned NOT NULL,
  `penghipunan_infaq` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pendistribusian_infaq` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `penghimpunan_zakat` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pendistribusian_zakat` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `penghimpunan_zakat_fitrah` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pendistribusian_zakat_fitrah` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kegiatan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `laporans_upz_id_foreign` (`upz_id`),
  CONSTRAINT `laporans_upz_id_foreign` FOREIGN KEY (`upz_id`) REFERENCES `upzs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table si_geo_upz.laporans: ~1 rows (approximately)
DELETE FROM `laporans`;
INSERT INTO `laporans` (`id`, `tanggal`, `judul_laporan`, `isi_laporan`, `upz_id`, `penghipunan_infaq`, `pendistribusian_infaq`, `penghimpunan_zakat`, `pendistribusian_zakat`, `penghimpunan_zakat_fitrah`, `pendistribusian_zakat_fitrah`, `kegiatan`, `created_at`, `updated_at`) VALUES
	(3, '2025-09-03', 'Laporan Bulan Januari', 'hjdjshdjsd', 20, '60000', '20000', '250000', '10000', '65000', '65000', 'dghsgdhsdjs', '2025-09-04 12:35:06', '2025-09-04 12:35:06');

-- Dumping structure for table si_geo_upz.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table si_geo_upz.migrations: ~0 rows (approximately)
DELETE FROM `migrations`;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '0001_01_01_000000_create_users_table', 1),
	(2, '0001_01_01_000001_create_cache_table', 1),
	(3, '0001_01_01_000002_create_jobs_table', 1),
	(4, '2024_12_11_003633_create_permission_tables', 1),
	(5, '2024_12_27_215542_create_notifications_table', 1),
	(6, '2024_12_27_215557_create_imports_table', 1),
	(7, '2024_12_27_215558_create_exports_table', 1),
	(8, '2024_12_27_215559_create_failed_import_rows_table', 1),
	(9, '2025_08_28_201215_create_jenis_table', 1),
	(10, '2025_08_28_201217_create_upzs_table', 1),
	(11, '2025_08_28_201218_create_wilayahs_table', 1),
	(12, '2025_08_28_201219_create_kontaks_table', 1),
	(13, '2025_08_28_201220_create_fotos_table', 1),
	(14, '2025_08_28_201221_create_jadwal_pelayanans_table', 1),
	(15, '2025_08_28_201223_create_koordinats_table', 1),
	(16, '2025_08_28_201224_create_laporans_table', 1);

-- Dumping structure for table si_geo_upz.model_has_permissions
DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` tinyint unsigned NOT NULL,
  `model_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` tinyint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table si_geo_upz.model_has_permissions: ~0 rows (approximately)
DELETE FROM `model_has_permissions`;

-- Dumping structure for table si_geo_upz.model_has_roles
DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` tinyint unsigned NOT NULL,
  `model_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` tinyint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table si_geo_upz.model_has_roles: ~3 rows (approximately)
DELETE FROM `model_has_roles`;
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
	(1, 'App\\Models\\User', 1),
	(2, 'App\\Models\\User', 2),
	(3, 'App\\Models\\User', 3);

-- Dumping structure for table si_geo_upz.notifications
DROP TABLE IF EXISTS `notifications`;
CREATE TABLE IF NOT EXISTS `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint unsigned NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table si_geo_upz.notifications: ~0 rows (approximately)
DELETE FROM `notifications`;

-- Dumping structure for table si_geo_upz.password_reset_tokens
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table si_geo_upz.password_reset_tokens: ~0 rows (approximately)
DELETE FROM `password_reset_tokens`;

-- Dumping structure for table si_geo_upz.permissions
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'web',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table si_geo_upz.permissions: ~91 rows (approximately)
DELETE FROM `permissions`;
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(1, 'View Any User', 'web', '2025-08-28 13:01:54', '2025-08-28 13:01:54'),
	(2, 'View User', 'web', '2025-08-28 13:01:54', '2025-08-28 13:01:54'),
	(3, 'Create User', 'web', '2025-08-28 13:01:54', '2025-08-28 13:01:54'),
	(4, 'Update User', 'web', '2025-08-28 13:01:54', '2025-08-28 13:01:54'),
	(5, 'Delete User', 'web', '2025-08-28 13:01:54', '2025-08-28 13:01:54'),
	(6, 'Restore User', 'web', '2025-08-28 13:01:54', '2025-08-28 13:01:54'),
	(7, 'Force Delete User', 'web', '2025-08-28 13:01:54', '2025-08-28 13:01:54'),
	(8, 'View Any Role', 'web', '2025-08-28 13:01:54', '2025-08-28 13:01:54'),
	(9, 'View Role', 'web', '2025-08-28 13:01:54', '2025-08-28 13:01:54'),
	(10, 'Create Role', 'web', '2025-08-28 13:01:54', '2025-08-28 13:01:54'),
	(11, 'Update Role', 'web', '2025-08-28 13:01:54', '2025-08-28 13:01:54'),
	(12, 'Delete Role', 'web', '2025-08-28 13:01:54', '2025-08-28 13:01:54'),
	(13, 'Restore Role', 'web', '2025-08-28 13:01:54', '2025-08-28 13:01:54'),
	(14, 'Force Delete Role', 'web', '2025-08-28 13:01:54', '2025-08-28 13:01:54'),
	(15, 'View Any Permission', 'web', '2025-08-28 13:01:54', '2025-08-28 13:01:54'),
	(16, 'View Permission', 'web', '2025-08-28 13:01:54', '2025-08-28 13:01:54'),
	(17, 'Create Permission', 'web', '2025-08-28 13:01:54', '2025-08-28 13:01:54'),
	(18, 'Update Permission', 'web', '2025-08-28 13:01:54', '2025-08-28 13:01:54'),
	(19, 'Delete Permission', 'web', '2025-08-28 13:01:54', '2025-08-28 13:01:54'),
	(20, 'Restore Permission', 'web', '2025-08-28 13:01:54', '2025-08-28 13:01:54'),
	(21, 'Force Delete Permission', 'web', '2025-08-28 13:01:54', '2025-08-28 13:01:54'),
	(22, 'View Any Data', 'web', '2025-08-28 13:01:54', '2025-08-28 13:01:54'),
	(23, 'View Data', 'web', '2025-08-28 13:01:54', '2025-08-28 13:01:54'),
	(24, 'Create Data', 'web', '2025-08-28 13:01:54', '2025-08-28 13:01:54'),
	(25, 'Update Data', 'web', '2025-08-28 13:01:54', '2025-08-28 13:01:54'),
	(26, 'Delete Data', 'web', '2025-08-28 13:01:54', '2025-08-28 13:01:54'),
	(27, 'Restore Data', 'web', '2025-08-28 13:01:54', '2025-08-28 13:01:54'),
	(28, 'Force Delete Data', 'web', '2025-08-28 13:01:54', '2025-08-28 13:01:54'),
	(29, 'View Any Foto', 'web', '2025-09-04 12:09:08', '2025-09-04 12:09:08'),
	(30, 'View Foto', 'web', '2025-09-04 12:09:08', '2025-09-04 12:09:08'),
	(31, 'Create Foto', 'web', '2025-09-04 12:09:08', '2025-09-04 12:09:08'),
	(32, 'Update Foto', 'web', '2025-09-04 12:09:08', '2025-09-04 12:09:08'),
	(33, 'Delete Foto', 'web', '2025-09-04 12:09:08', '2025-09-04 12:09:08'),
	(34, 'Restore Foto', 'web', '2025-09-04 12:09:08', '2025-09-04 12:09:08'),
	(35, 'Force Delete Foto', 'web', '2025-09-04 12:09:08', '2025-09-04 12:09:08'),
	(36, 'View Any Jadwal Pelayanan', 'web', '2025-09-04 12:09:19', '2025-09-04 12:09:19'),
	(37, 'View Jadwal Pelayanan', 'web', '2025-09-04 12:09:19', '2025-09-04 12:09:19'),
	(38, 'Create Jadwal Pelayanan', 'web', '2025-09-04 12:09:20', '2025-09-04 12:09:20'),
	(39, 'Update Jadwal Pelayanan', 'web', '2025-09-04 12:09:20', '2025-09-04 12:09:20'),
	(40, 'Delete Jadwal Pelayanan', 'web', '2025-09-04 12:09:20', '2025-09-04 12:09:20'),
	(41, 'Restore Jadwal Pelayanan', 'web', '2025-09-04 12:09:20', '2025-09-04 12:09:20'),
	(42, 'Force Delete Jadwal Pelayanan', 'web', '2025-09-04 12:09:20', '2025-09-04 12:09:20'),
	(43, 'View Any Jenis', 'web', '2025-09-04 12:09:35', '2025-09-04 12:09:35'),
	(44, 'View Jenis', 'web', '2025-09-04 12:09:35', '2025-09-04 12:09:35'),
	(45, 'Create Jenis', 'web', '2025-09-04 12:09:35', '2025-09-04 12:09:35'),
	(46, 'Update Jenis', 'web', '2025-09-04 12:09:35', '2025-09-04 12:09:35'),
	(47, 'Delete Jenis', 'web', '2025-09-04 12:09:35', '2025-09-04 12:09:35'),
	(48, 'Restore Jenis', 'web', '2025-09-04 12:09:35', '2025-09-04 12:09:35'),
	(49, 'Force Delete Jenis', 'web', '2025-09-04 12:09:35', '2025-09-04 12:09:35'),
	(50, 'View Any Kontak', 'web', '2025-09-04 12:09:48', '2025-09-04 12:09:48'),
	(51, 'View Kontak', 'web', '2025-09-04 12:09:48', '2025-09-04 12:09:48'),
	(52, 'Create Kontak', 'web', '2025-09-04 12:09:48', '2025-09-04 12:09:48'),
	(53, 'Update Kontak', 'web', '2025-09-04 12:09:48', '2025-09-04 12:09:48'),
	(54, 'Delete Kontak', 'web', '2025-09-04 12:09:48', '2025-09-04 12:09:48'),
	(55, 'Restore Kontak', 'web', '2025-09-04 12:09:48', '2025-09-04 12:09:48'),
	(56, 'Force Delete Kontak', 'web', '2025-09-04 12:09:48', '2025-09-04 12:09:48'),
	(57, 'View Any Koordinat', 'web', '2025-09-04 12:09:54', '2025-09-04 12:09:54'),
	(58, 'View Koordinat', 'web', '2025-09-04 12:09:54', '2025-09-04 12:09:54'),
	(59, 'Create Koordinat', 'web', '2025-09-04 12:09:54', '2025-09-04 12:09:54'),
	(60, 'Update Koordinat', 'web', '2025-09-04 12:09:54', '2025-09-04 12:09:54'),
	(61, 'Delete Koordinat', 'web', '2025-09-04 12:09:54', '2025-09-04 12:09:54'),
	(62, 'Restore Koordinat', 'web', '2025-09-04 12:09:54', '2025-09-04 12:09:54'),
	(63, 'Force Delete Koordinat', 'web', '2025-09-04 12:09:54', '2025-09-04 12:09:54'),
	(64, 'View Any Laporan', 'web', '2025-09-04 12:10:00', '2025-09-04 12:10:00'),
	(65, 'View Laporan', 'web', '2025-09-04 12:10:00', '2025-09-04 12:10:00'),
	(66, 'Create Laporan', 'web', '2025-09-04 12:10:00', '2025-09-04 12:10:00'),
	(67, 'Update Laporan', 'web', '2025-09-04 12:10:00', '2025-09-04 12:10:00'),
	(68, 'Delete Laporan', 'web', '2025-09-04 12:10:00', '2025-09-04 12:10:00'),
	(69, 'Restore Laporan', 'web', '2025-09-04 12:10:00', '2025-09-04 12:10:00'),
	(70, 'Force Delete Laporan', 'web', '2025-09-04 12:10:00', '2025-09-04 12:10:00'),
	(71, 'View Any Upz', 'web', '2025-09-04 12:10:06', '2025-09-04 12:10:06'),
	(72, 'View Upz', 'web', '2025-09-04 12:10:06', '2025-09-04 12:10:06'),
	(73, 'Create Upz', 'web', '2025-09-04 12:10:06', '2025-09-04 12:10:06'),
	(74, 'Update Upz', 'web', '2025-09-04 12:10:06', '2025-09-04 12:10:06'),
	(75, 'Delete Upz', 'web', '2025-09-04 12:10:06', '2025-09-04 12:10:06'),
	(76, 'Restore Upz', 'web', '2025-09-04 12:10:06', '2025-09-04 12:10:06'),
	(77, 'Force Delete Upz', 'web', '2025-09-04 12:10:06', '2025-09-04 12:10:06'),
	(78, 'View Any Wilayah', 'web', '2025-09-04 12:10:13', '2025-09-04 12:10:13'),
	(79, 'View Wilayah', 'web', '2025-09-04 12:10:13', '2025-09-04 12:10:13'),
	(80, 'Create Wilayah', 'web', '2025-09-04 12:10:13', '2025-09-04 12:10:13'),
	(81, 'Update Wilayah', 'web', '2025-09-04 12:10:13', '2025-09-04 12:10:13'),
	(82, 'Delete Wilayah', 'web', '2025-09-04 12:10:13', '2025-09-04 12:10:13'),
	(83, 'Restore Wilayah', 'web', '2025-09-04 12:10:13', '2025-09-04 12:10:13'),
	(84, 'Force Delete Wilayah', 'web', '2025-09-04 12:10:13', '2025-09-04 12:10:13'),
	(85, 'View Any Peta', 'web', '2025-09-04 12:14:39', '2025-09-04 12:14:39'),
	(86, 'View Peta', 'web', '2025-09-04 12:14:39', '2025-09-04 12:14:39'),
	(87, 'Create Peta', 'web', '2025-09-04 12:14:39', '2025-09-04 12:14:39'),
	(88, 'Update Peta', 'web', '2025-09-04 12:14:39', '2025-09-04 12:14:39'),
	(89, 'Delete Peta', 'web', '2025-09-04 12:14:39', '2025-09-04 12:14:39'),
	(90, 'Restore Peta', 'web', '2025-09-04 12:14:39', '2025-09-04 12:14:39'),
	(91, 'Force Delete Peta', 'web', '2025-09-04 12:14:39', '2025-09-04 12:14:39');

-- Dumping structure for table si_geo_upz.roles
DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'web',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table si_geo_upz.roles: ~3 rows (approximately)
DELETE FROM `roles`;
INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(1, 'Administrator', 'web', '2025-08-28 13:01:54', '2025-08-28 13:01:54'),
	(2, 'Takmir', 'web', '2025-08-28 13:01:54', '2025-09-04 12:12:39'),
	(3, 'User', 'web', '2025-09-04 12:15:39', '2025-09-04 12:15:39');

-- Dumping structure for table si_geo_upz.role_has_permissions
DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` tinyint unsigned NOT NULL,
  `role_id` tinyint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table si_geo_upz.role_has_permissions: ~111 rows (approximately)
DELETE FROM `role_has_permissions`;
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(1, 1),
	(2, 1),
	(3, 1),
	(4, 1),
	(5, 1),
	(6, 1),
	(7, 1),
	(8, 1),
	(9, 1),
	(10, 1),
	(11, 1),
	(12, 1),
	(13, 1),
	(14, 1),
	(15, 1),
	(16, 1),
	(17, 1),
	(18, 1),
	(19, 1),
	(20, 1),
	(21, 1),
	(22, 1),
	(23, 1),
	(24, 1),
	(25, 1),
	(26, 1),
	(27, 1),
	(28, 1),
	(29, 1),
	(30, 1),
	(31, 1),
	(32, 1),
	(33, 1),
	(34, 1),
	(35, 1),
	(36, 1),
	(37, 1),
	(38, 1),
	(39, 1),
	(40, 1),
	(41, 1),
	(42, 1),
	(43, 1),
	(44, 1),
	(45, 1),
	(46, 1),
	(47, 1),
	(48, 1),
	(49, 1),
	(50, 1),
	(51, 1),
	(52, 1),
	(53, 1),
	(54, 1),
	(55, 1),
	(56, 1),
	(57, 1),
	(58, 1),
	(59, 1),
	(60, 1),
	(61, 1),
	(62, 1),
	(63, 1),
	(64, 1),
	(65, 1),
	(66, 1),
	(67, 1),
	(68, 1),
	(69, 1),
	(70, 1),
	(71, 1),
	(72, 1),
	(73, 1),
	(74, 1),
	(75, 1),
	(76, 1),
	(77, 1),
	(78, 1),
	(79, 1),
	(80, 1),
	(81, 1),
	(82, 1),
	(83, 1),
	(84, 1),
	(85, 1),
	(86, 1),
	(87, 1),
	(88, 1),
	(89, 1),
	(90, 1),
	(91, 1),
	(29, 2),
	(30, 2),
	(36, 2),
	(37, 2),
	(43, 2),
	(50, 2),
	(51, 2),
	(57, 2),
	(58, 2),
	(64, 2),
	(65, 2),
	(66, 2),
	(68, 2),
	(71, 2),
	(72, 2),
	(74, 2),
	(78, 2),
	(79, 2),
	(85, 3),
	(86, 3);

-- Dumping structure for table si_geo_upz.sessions
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table si_geo_upz.sessions: ~9 rows (approximately)
DELETE FROM `sessions`;
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('1BjMDziaUGhBrPbvRq3sSdHGKHeS4P7xadFmb29r', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiMjdRd2NiOTBYODdSeVFQOVk4WVc5VnFUSlFSeXoxTjFJSEpKNWdFTCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91cHpzLzIxL2VkaXQ/YWN0aXZlUmVsYXRpb25NYW5hZ2VyPTQiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkYkhRTHpFN3JkdG9hby9QYlRaWVRSdU1sTG5WeEwucVVzYlpwM0EucjV6R3NBdWp1d0M1VmUiO30=', 1756992559),
	('4VnDBvz9CB8fEdWgnGlbH5tjbntNFihIaqokz25c', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQWszQkFUSDdWVUhacGg1Y3g1VlZ1QTlsNTJXSXpsWUVCUElJZUp6ZiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMToiaHR0cDovLzEyNy4wLjAuMTo4MDAwIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756986710),
	('9WTr4xjWJcb0o84Hca6Ah34oC2X7CuK2N3cRX4ME', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM2pRb0pKUmN0RkgzTUFyV0w0bEp3NkpaWkE1enFOdng0aUxLTnUxaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756991141),
	('Ab8axSVN9vIzZYstpRyfMEtEvVtdpiJS1QLOzAC5', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicTF2Y1lwOFhLREpWQUxBUkkyZnBmaWVRYzdCSEI4VnQ3Vm40S3NsQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756991077),
	('dbAMHiVwUkNLQ5Ii9djohG7axRuONwOX3NBKRQyn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTmVraG1XdkxRWjZSaklHWGRXNnFKcFJGWFpSR1lJa0Ywakx4TlN1aSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756991032),
	('elJwK7zJtUVLHMGKLmBEiFWwRhHxq69CbQmgd0Zk', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUGVYVDNnNmdiWE9Pd0U3a2NJQzJ1anZ0YlRuZUtoaElXZUlZdFZKWSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1756989664),
	('FnWSNeMb6wh0tVEMRuqVnU3o7kJd2t9peYN3qO0h', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTHNrR0VKZERjalBmN21QemJrM1lRZVJ4c3g0NGFOaUxlTHF5YWFaciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756990906),
	('iYAcho0EZJ9o0Z357wHsavC31wc2sB6Fau2Z41YY', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVHdacHNPamZvQkNuc2d0WXJQYXk5ejVYeGM1REwwaG5zR2lXdmpwYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756991033),
	('pP1yjwzlu4pI2xiqGj5BAavyJBmPdRGm1IRdl5xA', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMXFOckM3eGpjZDNYU0MyUllYWG9HU203MDB0N2JaNlZZTjZZS0V2ZyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fX0=', 1756990801);

-- Dumping structure for table si_geo_upz.upzs
DROP TABLE IF EXISTS `upzs`;
CREATE TABLE IF NOT EXISTS `upzs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama_upz` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_ketua` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_id` bigint unsigned NOT NULL,
  `tanggal_berlaku` date NOT NULL,
  `dibuat_oleh` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `upzs_jenis_id_foreign` (`jenis_id`),
  KEY `upzs_dibuat_oleh_foreign` (`dibuat_oleh`),
  CONSTRAINT `upzs_dibuat_oleh_foreign` FOREIGN KEY (`dibuat_oleh`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `upzs_jenis_id_foreign` FOREIGN KEY (`jenis_id`) REFERENCES `jenis` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table si_geo_upz.upzs: ~19 rows (approximately)
DELETE FROM `upzs`;
INSERT INTO `upzs` (`id`, `nama_upz`, `nama_ketua`, `jenis_id`, `tanggal_berlaku`, `dibuat_oleh`, `created_at`, `updated_at`) VALUES
	(2, 'UPZ Masjid Jami\' Al-Huda', 'Ahmad , S. Ag', 2, '2019-04-30', 1, '2025-09-01 11:30:03', '2025-09-01 11:30:03'),
	(3, 'UPZ Masjid Nurul Ma\'mun', 'Mukadi', 4, '2022-11-28', 1, '2025-09-01 13:12:58', '2025-09-04 02:38:18'),
	(4, 'UPZ Masjid Al-Muttaqin', 'H. Muh.Saleh', 4, '2024-03-07', 1, '2025-09-01 13:34:37', '2025-09-01 13:34:37'),
	(5, 'UPZ Masjid Hibatullah', 'Khozin Hasan', 4, '2024-03-08', 1, '2025-09-01 13:54:27', '2025-09-04 02:38:40'),
	(6, 'UPZ Masjid Adz Dzikru', 'H. Bagyo Priyono, M.Pd', 4, '2021-04-23', 1, '2025-09-02 14:24:15', '2025-09-02 14:24:15'),
	(7, 'UPZ Masjid Tua Al - Wahhab', 'Tamim', 4, '2024-03-15', 1, '2025-09-03 01:25:12', '2025-09-03 01:25:12'),
	(8, 'UPZ Masjid Al - Istiqomah', 'H. Satriansyah Matnur', 3, '2024-03-15', 1, '2025-09-03 01:54:21', '2025-09-03 02:15:58'),
	(9, 'UPZ Masjid Agung Al-Hijrah', 'Mustamin Syah, SH', 1, '2017-12-21', 1, '2025-09-03 02:36:18', '2025-09-03 02:36:18'),
	(10, 'UPZ Masjid Nurul Ittihad', 'Muhammad Rizal, S.H.I', 4, '2024-03-26', 1, '2025-09-04 01:13:30', '2025-09-04 01:13:30'),
	(11, 'UPZ Masjid Baiturrahim', 'H. Syamsuddin', 4, '2024-03-27', 1, '2025-09-04 01:40:41', '2025-09-04 01:40:41'),
	(12, 'UPZ Masjid Bahrul Aqabah ', 'Nasiruddin', 4, '2024-04-02', 1, '2025-09-04 02:41:47', '2025-09-04 02:41:47'),
	(13, 'UPZ Masjid Al - Ittihad', 'Ust. Heri Pristiono', 4, '2024-03-15', 1, '2025-09-04 02:51:49', '2025-09-04 02:51:49'),
	(14, 'UPZ Masjid Besar Al - Amin', 'H. Muh.Harsuni', 3, '2024-04-04', 1, '2025-09-04 03:20:49', '2025-09-04 03:20:49'),
	(15, 'UPZ Masjid Raudhotul Jannah', 'Imran Baharuddin', 4, '2018-04-13', 1, '2025-09-04 03:34:51', '2025-09-04 03:34:51'),
	(16, 'UPZ Masjid Al-A\'raaf', 'Mustafa', 4, '2018-05-16', 1, '2025-09-04 04:07:40', '2025-09-04 04:07:40'),
	(18, 'UPZ Masjid Baiturrahim BTN KCY', 'Muhammad Mushajir', 4, '2025-03-05', 1, '2025-09-04 07:01:17', '2025-09-04 07:01:17'),
	(19, 'UPZ Masjid Jami\' Al-Misbah', 'Sanusi. HK.SH', 2, '2017-12-04', 1, '2025-09-04 07:12:57', '2025-09-04 07:12:57'),
	(20, 'UPZ Masjid Al-Mubarak', 'Imam Mahmud', 4, '2018-01-29', 2, '2025-09-04 07:28:09', '2025-09-04 12:31:02'),
	(21, 'UPZ Masjid Nurul Bahri', 'Muh. Junaid', 4, '2019-04-30', 1, '2025-09-04 07:37:33', '2025-09-04 07:37:33');

-- Dumping structure for table si_geo_upz.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table si_geo_upz.users: ~3 rows (approximately)
DELETE FROM `users`;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `avatar_url`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Administrator', 'admin@upz.com', NULL, '$2y$12$bHQLzE7rdtoao/PbTZYTRuMlLnVxL.qUsbZp3A.r5zGsAujuwC5Ve', NULL, NULL, '2025-08-28 13:01:54', '2025-09-04 12:02:04'),
	(2, 'Imam Mahmud', 'imam@upz.com', NULL, '$2y$12$116M1qOFMeMCTeJVpolcTe94LA4eivp8f0NG0RmrAsVNUFkPttDsG', NULL, NULL, '2025-08-28 13:01:54', '2025-09-04 13:19:15'),
	(3, 'Astina', 'astina@gmail.com', NULL, '$2y$12$mCLY4OK8nuFF57fTHUf1uOhH4Xhr7nqurb25DmXeTS6zeOwNqMHgW', NULL, NULL, '2025-09-04 12:24:39', '2025-09-04 12:24:39');

-- Dumping structure for table si_geo_upz.wilayahs
DROP TABLE IF EXISTS `wilayahs`;
CREATE TABLE IF NOT EXISTS `wilayahs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `upz_id` bigint unsigned NOT NULL,
  `nama` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kode` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wilayahs_upz_id_foreign` (`upz_id`),
  CONSTRAINT `wilayahs_upz_id_foreign` FOREIGN KEY (`upz_id`) REFERENCES `upzs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table si_geo_upz.wilayahs: ~18 rows (approximately)
DELETE FROM `wilayahs`;
INSERT INTO `wilayahs` (`id`, `upz_id`, `nama`, `jenis`, `kode`, `alamat`, `created_at`, `updated_at`) VALUES
	(2, 2, 'Kecamatan Bontang Selatan', 'Kecamatan', '75321', 'JL. Sultan Syahrir, gang mas RT. 06, Tanjung Laut indah, Bontang Selatan, Tj. Laut Indah, Kec. Bontang Selatan', '2025-09-01 11:36:46', '2025-09-01 11:37:54'),
	(3, 3, 'Kecamatan Bontang Selatan', 'Kecamatan', '75325', ' Jln. Sultan Hasanuddin Jl. Tipalayo, RT.35/RW.No 01, Berbas Tengah, Bontang Selatan', '2025-09-01 13:16:39', '2025-09-01 13:16:39'),
	(4, 4, 'Kecamatan Bontang Selatan', 'Kecamatan', '75325', ' Berbas Tengah, Kec. Bontang Selatan', '2025-09-01 13:43:38', '2025-09-01 13:43:38'),
	(5, 5, 'Kecamatan Bontang Utara', 'Kecamatan', '75313', ' Jl. Aip II KS Tubun Gg. Bersama, Api-Api, Kec. Bontang Utara', '2025-09-01 13:59:20', '2025-09-01 13:59:20'),
	(6, 6, 'Kecamatan Bontang Utara', 'Kecamatan', '75325', 'Jl. MT. Haryono No.14, Api-Api, Kec. Bontang Utara', '2025-09-02 14:26:09', '2025-09-02 14:26:09'),
	(7, 7, 'Kecamatan Bontang Utara', 'Kecamatan', '75325', 'Kel. Bontang Kuala, Kec. Bontang Utara, Kota Bontang', '2025-09-03 01:37:21', '2025-09-03 01:37:21'),
	(8, 8, 'Kecamatan Bontang Utara', 'Kecamatan', '75325', ' Jl. Mayor Jenderal DI Panjaitan, Api-Api, Kec. Bontang Utara', '2025-09-03 02:03:36', '2025-09-03 02:03:36'),
	(9, 9, 'Kecamatan Bontang Selatan', 'Kecamatan', '75325', 'kel. Tj. Laut, Kec. Bontang Selatan', '2025-09-03 02:43:52', '2025-09-03 02:43:52'),
	(10, 10, 'Kecamatan Bontang Selatan', 'Kecamatan', '75325', 'Jl Belanak No.72, Kel. Tanjung Laut Indah, Kec. Bontang Selatan,', '2025-09-04 01:24:58', '2025-09-04 01:24:58'),
	(11, 11, 'Kecamatan Bontang Selatan', 'Kecamatan', '75325', 'GG. Arwana 1 Rawa Indah RT.17 Kel.Tanjung Laut Indah, Kec. Bontang Selatan  \n', '2025-09-04 02:32:44', '2025-09-04 02:32:44'),
	(12, 12, 'Kecamatan Bontang Utara', 'Kecamatan', '75321', 'Jl.RE.Martadinata RT.01 Kel.Loktuan ,Kec.Bontang Utara\n', '2025-09-04 02:45:36', '2025-09-04 02:45:36'),
	(13, 13, 'Kecamatan Bontang Utara', 'Kecamatan', '75313', ' Kel. Api-Api, Kec. Bontang Utara', '2025-09-04 03:03:49', '2025-09-04 03:03:49'),
	(14, 14, 'Kecamatan Bontang Barat', 'Kecamatan', '75321', 'Jl. Balikpapan No.KM. 6, RT.11, Kel. Kanaan, Kec. Bontang Barat', '2025-09-04 03:30:36', '2025-09-04 03:30:36'),
	(15, 15, 'Kecamatan Bontang Utara', 'Kecamatan', '75325', 'Kel. Gn. Elai, Kec. Bontang Utara', '2025-09-04 04:02:31', '2025-09-04 04:02:31'),
	(16, 16, 'Kecamatan Bontang Utara', 'Kecamatan', '75321', ' Jl. Kapal Pinisi 1, Kel. LokTuan, Kec. Bontang Utara', '2025-09-04 04:10:43', '2025-09-04 04:10:43'),
	(17, 18, 'Kecamatan Bontang Utara', 'Kecamatan', '75325', ' Jl. Kalimantan, Api-Api, Kec. Bontang Utara', '2025-09-04 07:06:51', '2025-09-04 07:06:51'),
	(18, 19, 'Kecamatan Bontang Utara', 'Kecamatan', '75325', 'Kel. Bontang Kuala, Kec. Bontang Utara', '2025-09-04 07:16:34', '2025-09-04 07:16:34'),
	(19, 20, 'Kecamatan Bontang Selatan', 'Kecamatan', '75325', 'Kel. Tj. Laut, Kec. Bontang Selatan', '2025-09-04 07:33:20', '2025-09-04 07:33:20'),
	(20, 21, 'Kecamatan Bontang Utara', 'Kecamatan', '75325', 'Kel. Tj. Laut Indah, Kec. Bontang Selatan', '2025-09-04 07:40:50', '2025-09-04 07:40:50');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
