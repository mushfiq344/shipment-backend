-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2020 at 03:11 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shipment`
--

-- --------------------------------------------------------

--
-- Table structure for table `cargos`
--

CREATE TABLE `cargos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `volume` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `shipment_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cargos`
--

INSERT INTO `cargos` (`id`, `created_at`, `updated_at`, `type`, `description`, `volume`, `shipment_id`) VALUES
(1, '2020-06-10 17:43:19', '2020-06-10 17:43:19', 'Fabric', '1000 Blue T-shirts', 2, 'S1000'),
(2, '2020-06-10 17:43:19', '2020-06-10 17:43:19', 'Fabric', '2000 Green T-shirts', 3, 'S1000'),
(3, '2020-06-10 17:43:19', '2020-06-10 17:43:19', 'Furniture', '300 Tables', 20, 'S1001'),
(4, '2020-06-10 17:43:19', '2020-06-10 17:43:19', 'Furniture', '1500 Chairs', 15, 'S1001'),
(5, '2020-06-10 17:43:19', '2020-06-10 17:43:19', 'Bikes model 27X', '100 Bikes model 27X', 100, 'S1002'),
(6, '2020-06-10 17:43:19', '2020-06-10 17:43:19', 'Couch22 White', '103 Couch model Couch22', 103, 'S1003'),
(7, '2020-06-10 17:43:19', '2020-06-10 17:43:19', 'Couch22 White', '103 Couch model Couch22', 103, 'S1004'),
(8, '2020-06-10 17:43:19', '2020-06-10 17:43:19', 'Couch22 White', '103 Couch model Couch22', 103, 'S1005'),
(9, '2020-06-10 17:43:19', '2020-06-10 17:43:19', 'Couch22 Black', '103 Couch model Couch22', 103, 'S1005'),
(10, '2020-06-10 17:43:19', '2020-06-10 17:43:19', 'TVAC515', '555 TVAC515 120V', 555, 'S1006'),
(11, '2020-06-10 17:43:19', '2020-06-10 17:43:19', 'Couch22 Black', '555 TVAC515 240V', 555, 'S1006'),
(12, '2020-06-10 17:43:19', '2020-06-10 17:43:19', 'MAT128', 'MAT12ftx82ft', 666, 'S1007'),
(13, '2020-06-10 17:43:19', '2020-06-10 17:43:19', 'Gororo', 'Gororo Type B', 150, 'S1008'),
(14, '2020-06-10 17:43:19', '2020-06-10 17:43:19', 'HelmGoro', 'HelmGoro Red', 150, 'S1009'),
(15, '2020-06-10 17:43:19', '2020-06-10 17:43:19', 'Neukrit5a', 'Cable with phantom support', 80, 'S1010'),
(16, '2020-06-10 17:43:19', '2020-06-10 17:43:19', 'NeukritPh3', 'Phantom Plug Gold Plated', 100, 'S1011'),
(17, '2020-06-10 17:43:19', '2020-06-10 17:43:19', 'Fabric', '1000 Blue T-shirts', 2, 'S1012'),
(18, '2020-06-10 17:43:19', '2020-06-10 17:43:19', 'Fabric', '2000 Green T-shirts', 3, 'S1012'),
(19, '2020-06-10 17:43:19', '2020-06-10 17:43:19', 'Furniture', '300 Tables', 20, 'S1013'),
(20, '2020-06-10 17:43:19', '2020-06-10 17:43:19', 'Furniture', '1500 Chairs', 15, 'S1013'),
(21, '2020-06-10 17:43:19', '2020-06-10 17:43:19', 'Couch22 White', '103 Couch model Couch22', 103, 'S1014'),
(22, '2020-06-10 17:43:19', '2020-06-10 17:43:19', 'Couch22 White', '103 Couch model Couch22', 103, 'S1015'),
(23, '2020-06-10 17:43:19', '2020-06-10 17:43:19', 'Couch22 Black', '103 Couch model Couch22', 103, 'S1015'),
(24, '2020-06-10 17:43:19', '2020-06-10 17:43:19', 'TVAC515', '555 TVAC515 120V', 555, 'S1016'),
(25, '2020-06-10 17:43:19', '2020-06-10 17:43:19', 'Couch22 Black', '555 TVAC515 240V', 555, 'S1016'),
(26, '2020-06-10 17:43:19', '2020-06-10 17:43:19', 'MAT128', 'MAT12ftx82ft', 666, 'S1017'),
(27, '2020-06-10 17:43:19', '2020-06-10 17:43:19', 'Gororo', 'Gororo Type B', 150, 'S1018'),
(28, '2020-06-10 17:43:19', '2020-06-10 17:43:19', 'HelmGoro', 'HelmGoro Red', 150, 'S1019'),
(29, '2020-06-10 17:43:19', '2020-06-10 17:43:19', 'Neukrit5a', 'Cable with phantom support', 80, 'S1020'),
(30, '2020-06-10 17:43:19', '2020-06-10 17:43:19', 'NeukritPh3', 'Phantom Plug Gold Plated', 100, 'S1021'),
(31, '2020-06-10 17:43:19', '2020-06-10 17:43:19', 'Fabric', '1000 Blue T-shirts', 2, 'S1022'),
(32, '2020-06-10 17:43:19', '2020-06-10 17:43:19', 'Fabric', '2000 Green T-shirts', 3, 'S1022'),
(33, '2020-06-10 17:43:19', '2020-06-10 17:43:19', 'Furniture', '300 Tables', 20, 'S1023'),
(34, '2020-06-10 17:43:19', '2020-06-10 17:43:19', 'Furniture', '1500 Chairs', 15, 'S1023');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000004_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_06_08_085727_create_movies_table', 1),
(4, '2020_06_08_092915_create_comments_table', 1),
(5, '2020_06_09_140252_genres', 1),
(6, '2020_06_10_215715_create_shipments_table', 1),
(7, '2020_06_10_215716_create_shipments_table', 2),
(8, '2020_06_10_224551_create_cargos_table', 3),
(9, '2020_06_10_225154_create_services_table', 4),
(10, '2020_06_10_215719_create_shipments_table', 5),
(11, '2020_06_10_224552_create_cargos_table', 5),
(12, '2020_06_10_225155_create_services_table', 5),
(13, '2020_06_10_215720_create_shipments_table', 6),
(14, '2020_06_10_215721_create_shipments_table', 7),
(15, '2020_06_10_224555_create_cargos_table', 8),
(16, '2020_06_10_225158_create_services_table', 9),
(17, '2020_06_10_225159_create_services_table', 10),
(18, '2020_06_10_215722_create_shipments_table', 11),
(19, '2020_06_10_215723_create_shipments_table', 12),
(20, '2020_06_10_225163_create_services_table', 13);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N/A',
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N/A',
  `shipment_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `type`, `value`, `shipment_id`, `created_at`, `updated_at`) VALUES
(1, 'N/A', 'N/A', 'S1000', '2020-06-10 17:43:19', '2020-06-10 17:43:19'),
(2, 'N/A', 'N/A', 'S1001', '2020-06-10 17:43:19', '2020-06-10 17:43:19'),
(3, 'N/A', 'N/A', 'S1001', '2020-06-10 17:43:19', '2020-06-10 17:43:19'),
(4, 'N/A', 'N/A', 'S1002', '2020-06-10 17:43:19', '2020-06-10 17:43:19'),
(5, 'N/A', 'N/A', 'S1003', '2020-06-10 17:43:19', '2020-06-10 17:43:19'),
(6, 'N/A', 'N/A', 'S1004', '2020-06-10 17:43:19', '2020-06-10 17:43:19'),
(7, 'N/A', 'N/A', 'S1005', '2020-06-10 17:43:19', '2020-06-10 17:43:19'),
(8, 'N/A', 'N/A', 'S1006', '2020-06-10 17:43:19', '2020-06-10 17:43:19'),
(9, 'N/A', 'N/A', 'S1006', '2020-06-10 17:43:19', '2020-06-10 17:43:19'),
(10, 'N/A', 'N/A', 'S1007', '2020-06-10 17:43:19', '2020-06-10 17:43:19'),
(11, 'N/A', 'N/A', 'S1008', '2020-06-10 17:43:19', '2020-06-10 17:43:19'),
(12, 'N/A', 'N/A', 'S1009', '2020-06-10 17:43:19', '2020-06-10 17:43:19'),
(13, 'N/A', 'N/A', 'S1010', '2020-06-10 17:43:19', '2020-06-10 17:43:19'),
(14, 'N/A', 'N/A', 'S1011', '2020-06-10 17:43:19', '2020-06-10 17:43:19'),
(15, 'N/A', 'N/A', 'S1012', '2020-06-10 17:43:19', '2020-06-10 17:43:19'),
(16, 'N/A', 'N/A', 'S1013', '2020-06-10 17:43:19', '2020-06-10 17:43:19'),
(17, 'N/A', 'N/A', 'S1013', '2020-06-10 17:43:19', '2020-06-10 17:43:19'),
(18, 'N/A', 'N/A', 'S1014', '2020-06-10 17:43:19', '2020-06-10 17:43:19'),
(19, 'N/A', 'N/A', 'S1015', '2020-06-10 17:43:19', '2020-06-10 17:43:19'),
(20, 'N/A', 'N/A', 'S1016', '2020-06-10 17:43:19', '2020-06-10 17:43:19'),
(21, 'N/A', 'N/A', 'S1016', '2020-06-10 17:43:19', '2020-06-10 17:43:19'),
(22, 'N/A', 'N/A', 'S1017', '2020-06-10 17:43:19', '2020-06-10 17:43:19'),
(23, 'N/A', 'N/A', 'S1018', '2020-06-10 17:43:19', '2020-06-10 17:43:19'),
(24, 'N/A', 'N/A', 'S1019', '2020-06-10 17:43:19', '2020-06-10 17:43:19'),
(25, 'N/A', 'N/A', 'S1020', '2020-06-10 17:43:19', '2020-06-10 17:43:19'),
(26, 'N/A', 'N/A', 'S1021', '2020-06-10 17:43:19', '2020-06-10 17:43:19'),
(27, 'N/A', 'N/A', 'S1022', '2020-06-10 17:43:19', '2020-06-10 17:43:19'),
(28, 'N/A', 'N/A', 'S1023', '2020-06-10 17:43:19', '2020-06-10 17:43:19'),
(29, 'N/A', 'N/A', 'S1023', '2020-06-10 17:43:19', '2020-06-10 17:43:19');

-- --------------------------------------------------------

--
-- Table structure for table `shipments`
--

CREATE TABLE `shipments` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mode` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `destination` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `origin` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(11) NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `userId` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipments`
--

INSERT INTO `shipments` (`id`, `created_at`, `updated_at`, `name`, `mode`, `type`, `destination`, `origin`, `total`, `status`, `userId`) VALUES
('S1000', '2020-06-10 17:43:19', '2020-06-11 06:59:56', 'Chatleads IO', 'sea', 'FCL', 'Dhaka', 'chittagong', 500, 'not active', 'abir'),
('S1001', '2020-06-10 17:43:19', '2020-06-10 17:43:19', 'New spring collection(2018)', 'sea', 'FCL', 'Saarbrücker Str. 38, 10405 Berlin', 'Ningbo port', 3000, 'ACTIVE', 'U1002'),
('S1002', '2020-06-10 17:43:19', '2020-06-10 17:43:19', 'PO89634, PO27X', 'air', 'LCL', 'Saarbrücker Str. 38, 10405 Berlin', 'Shanghai Port', 10000, 'COMPLETED', 'U1001'),
('S1003', '2020-06-10 17:43:19', '2020-06-10 17:43:19', 'New Furnitures from Shengen(2018)', 'sea', 'LCL', 'Mullerstr 6, 13353 Berlin', 'Shengen Port', 10000, 'COMPLETED', 'U5312'),
('S1004', '2020-06-10 17:43:19', '2020-06-10 17:43:19', 'New Furnitures from Shengen', 'air', 'LCL', 'Mullerstr 6, 13353 Berlin', 'Shengen Port', 10000, 'NEW', 'U5312'),
('S1005', '2020-06-10 17:43:19', '2020-06-10 17:43:19', 'New Furnitures From Chittagong', 'air', 'FCL', 'Mullerstr 6, 13353 Berlin', 'Chittagong Port', 1000, 'NEW', 'U5312'),
('S1006', '2020-06-10 17:43:19', '2020-06-10 17:43:19', 'Vacuum Cleaners', 'air', 'FCL', 'Tughlakabad Port', 'Hamburg Port', 100000, 'ACTIVE', 'U531221'),
('S1007', '2020-06-10 17:43:19', '2020-06-10 17:43:19', 'Mattress', 'sea', 'FCL', 'Shengen Port', 'Bremerhaven Port', 101010, 'ACTIVE', 'U531222'),
('S1008', '2020-06-10 17:43:19', '2020-06-10 17:43:19', 'Scooters', 'air', 'FCL', 'Rotterdam Port', 'Xianbou Port', 60120120, 'COMPLETED', 'U1337'),
('S1009', '2020-06-10 17:43:19', '2020-06-10 17:43:19', 'Helmets', 'air', 'LCL', 'Rotterdam Port', 'Xianbou Port', 60120120, 'COMPLETED', 'U1337'),
('S1010', '2020-06-10 17:43:19', '2020-06-10 17:43:19', 'Neukrit 5a Cable', 'air', 'LCL', 'Rotterdam Port', 'Xianbou Port', 420420, 'ACTIVE', 'U0002'),
('S1011', '2020-06-10 17:43:19', '2020-06-10 17:43:19', 'Neukrit Phantom3', 'sea', 'LCL', 'Rotterdam Port', 'Xianbou Port', 420420, 'ACTIVE', 'U0002'),
('S1012', '2020-06-10 17:43:19', '2020-06-10 17:43:19', 'T-shirts(Spring 2018) from Shanghai to Hamburg', 'sea', 'FCL', 'Saarbrücker Str. 38, 10405 Berlin', 'Shanghai Port', 1000, 'COMPLETED', 'U1000'),
('S1013', '2020-06-10 17:43:19', '2020-06-10 17:43:19', 'New spring furniture collection(2018)', 'sea', 'FCL', 'Saarbrücker Str. 38, 10405 Berlin', 'Ningbo port', 3000, 'COMPLETED', 'U1002'),
('S1014', '2020-06-10 17:43:19', '2020-06-10 17:43:19', 'New Furnitures from Shengen(Rosewood)', 'air', 'LCL', 'Mullerstr 6, 13353 Berlin', 'Shengen Port', 10000, 'COMPLETED', 'U5312'),
('S1015', '2020-06-10 17:43:19', '2020-06-10 17:43:19', 'New Furnitures From Chittagong(Sisou)', 'air', 'FCL', 'Mullerstr 6, 13353 Berlin', 'Chittagong Port', 1000, 'NEW', 'U5312'),
('S1016', '2020-06-10 17:43:19', '2020-06-10 17:43:19', 'Vacuum Cleaners', 'sea', 'FCL', 'Tughlakabad Port', 'Hamburg Port', 100000, 'COMPLETED', 'U531221'),
('S1017', '2020-06-10 17:43:19', '2020-06-10 17:43:19', 'Mattress(Medium)', 'sea', 'FCL', 'Shengen Port', 'Bremerhaven Port', 101010, 'ACTIVE', 'U531222'),
('S1018', '2020-06-10 17:43:19', '2020-06-10 17:43:19', 'Scooters Blue/Green', 'air', 'FCL', 'Rotterdam Port', 'Xianbou Port', 60120120, 'COMPLETED', 'U1337'),
('S1019', '2020-06-10 17:43:19', '2020-06-10 17:43:19', 'Helmets(Round)', 'air', 'LCL', 'Rotterdam Port', 'Xianbou Port', 60120120, 'COMPLETED', 'U1337'),
('S1020', '2020-06-10 17:43:19', '2020-06-10 17:43:19', 'Neukrit 5a Cable', 'air', 'LCL', 'Rotterdam Port', 'Xianbou Port', 420420, 'ACTIVE', 'U0002'),
('S1021', '2020-06-10 17:43:19', '2020-06-10 17:43:19', 'Neukrit Phantom3', 'sea', 'LCL', 'Rotterdam Port', 'Xianbou Port', 420420, 'ACTIVE', 'U0002'),
('S1022', '2020-06-10 17:43:19', '2020-06-10 17:43:19', 'T-shirts(Spring 2019) from Shanghai to Hamburg', 'sea', 'FCL', 'Saarbrücker Str. 38, 10405 Berlin', 'Shanghai Port', 1000, 'ACTIVE', 'U1000'),
('S1023', '2020-06-10 17:43:19', '2020-06-10 17:43:19', 'New spring collection(2019)', 'sea', 'FCL', 'Saarbrücker Str. 38, 10405 Berlin', 'Ningbo port', 3000, 'ACTIVE', 'U1002');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_shipment_id_foreign` (`shipment_id`);

--
-- Indexes for table `shipments`
--
ALTER TABLE `shipments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cargos`
--
ALTER TABLE `cargos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_shipment_id_foreign` FOREIGN KEY (`shipment_id`) REFERENCES `shipments` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
