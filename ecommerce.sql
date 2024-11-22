-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 21 nov. 2024 à 20:46
-- Version du serveur : 8.3.0
-- Version de PHP : 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ecommerce`
--

-- --------------------------------------------------------

--
-- Structure de la table `adresses`
--

DROP TABLE IF EXISTS `adresses`;
CREATE TABLE IF NOT EXISTS `adresses` (
  `adress_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `adress_line` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `postal_code` varchar(10) NOT NULL,
  `country` varchar(100) NOT NULL,
  PRIMARY KEY (`adress_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `adresses`
--

INSERT INTO `adresses` (`adress_id`, `user_id`, `adress_line`, `city`, `postal_code`, `country`) VALUES
(1, 49, '607 Torphy Manors', 'Wilkinsonberg', '49891-2459', 'United States Virgin Islands'),
(2, 41, '7701 Bethel View', 'South Marshallland', '33828', 'Samoa'),
(3, 44, '83605 Luettgen Gardens', 'Tillmanchester', '17834', 'Vietnam'),
(4, 47, '3568 Botsford Radial Suite 558', 'Daynachester', '42080', 'Romania'),
(5, 44, '88937 Bogisich Motorway', 'Port Abbieshire', '73469', 'Chad'),
(6, 43, '374 Sabina Throughway Suite 063', 'South Stewart', '81132', 'Puerto Rico'),
(7, 42, '716 Hudson Mills Apt. 698', 'Lake Velma', '32559-3802', 'Micronesia'),
(8, 50, '5973 Jacklyn Keys', 'Jeffreyfort', '34615', 'Madagascar'),
(9, 44, '69350 Jo Road Suite 803', 'Port Nolanfurt', '22983-4077', 'Antigua and Barbuda'),
(10, 46, '4313 Jacobi Brook Apt. 498', 'Katelynville', '74423', 'Bosnia and Herzegovina'),
(11, 47, '3492 Janie Fork Suite 763', 'Port Vladimirland', '71274-7143', 'Cocos (Keeling) Islands'),
(12, 43, '34975 Johnson Loop Apt. 247', 'Ankundingland', '46665', 'United States of America'),
(13, 43, '25162 Angelica Harbor', 'Hamillton', '91740-0685', 'New Zealand'),
(14, 44, '4134 Jacobi Branch Apt. 198', 'East Leilani', '58447', 'Marshall Islands'),
(15, 45, '685 Sipes Bypass', 'South Diana', '13005-4542', 'Solomon Islands'),
(16, 44, '9779 Baby Point', 'Heidenreichland', '49567-5078', 'Senegal'),
(17, 45, '22785 Kobe Fords Suite 797', 'Bradtketon', '01987-7271', 'Central African Republic'),
(18, 41, '3051 Cremin Grove', 'Constantinport', '05442', 'Saint Vincent and the Grenadines'),
(19, 42, '894 Russel Vista', 'Port Haileyville', '10130-0657', 'India'),
(20, 50, '5551 Lockman Causeway Apt. 599', 'Casperberg', '39345-1572', 'British Virgin Islands'),
(21, 48, '39821 Silas Place', 'West Aliviaberg', '19448-3707', 'Gambia'),
(22, 42, '13570 Nicolas Underpass', 'North Erickastad', '75990-9412', 'Sudan'),
(23, 48, '72438 Jacobson Prairie Apt. 100', 'Lake Ora', '73798-2183', 'New Caledonia'),
(24, 45, '92578 Kellen Estates Apt. 650', 'North Eunaview', '45089', 'Luxembourg'),
(25, 44, '357 Raynor Corners Suite 603', 'Lake Kenny', '21949', 'Saint Pierre and Miquelon'),
(26, 46, '71268 Bernier Falls', 'Lake Dovieton', '40068-3438', 'Barbados'),
(27, 49, '86349 Towne Haven', 'Port Eldredfurt', '18818-9822', 'Swaziland'),
(28, 44, '656 Bergnaum Stream', 'Harrisonburgh', '46704-3316', 'United States Minor Outlying Islands'),
(29, 45, '25110 Gleason Shoals', 'East Rachellehaven', '91050', 'Burkina Faso'),
(30, 46, '25644 Collins Hollow', 'Mathewside', '89332-5318', 'Mauritius'),
(31, 46, '91463 Marshall Course Apt. 258', 'North Gwendolynhaven', '65559', 'Fiji'),
(32, 47, '1786 Isac Burgs Suite 782', 'Stiedemannfurt', '76682-4819', 'Vanuatu'),
(33, 41, '5634 Bruen Walk Suite 917', 'Andersonburgh', '40090', 'Kyrgyz Republic'),
(34, 50, '37807 Stark Row', 'Gulgowskimouth', '49029', 'Mongolia'),
(35, 43, '880 Hauck Locks', 'North Estevan', '86658', 'Korea'),
(36, 45, '76576 Keaton Ports Apt. 642', 'West Daniella', '11773-1220', 'Sweden'),
(37, 46, '73712 Jadyn Lodge Suite 471', 'Deehaven', '21205', 'Montenegro'),
(38, 48, '952 Curt Mews Apt. 001', 'Lake Tressieville', '06588', 'Mexico'),
(39, 49, '513 Vandervort Plaza Apt. 342', 'East Benfort', '10107-4812', 'Isle of Man'),
(40, 47, '7882 Trantow Parks Apt. 891', 'Nickolasburgh', '15832', 'Bolivia'),
(41, 45, '11599 Bartoletti Summit Suite 695', 'West Maxie', '52048', 'Kenya'),
(42, 47, '955 Jessy Vista', 'Pearlchester', '04370-3749', 'Russian Federation'),
(43, 50, '358 Batz Gardens Apt. 448', 'New Eryn', '92010-4639', 'Peru'),
(44, 41, '17604 Witting Gateway', 'Norbertborough', '77489-2704', 'Nigeria'),
(45, 47, '5143 Kyle Isle Suite 824', 'South Vaughnport', '40760', 'Pakistan'),
(46, 46, '553 Windler Mission Apt. 079', 'North Brandyn', '25722-5403', 'Honduras'),
(47, 43, '80288 Clementina Wells', 'New Beth', '03068-1702', 'Cayman Islands'),
(48, 41, '95588 Adrain Village Suite 135', 'New Adelaton', '48088', 'Venezuela'),
(49, 49, '614 Blick Center', 'North Selina', '20016', 'Hong Kong'),
(50, 43, '26613 Samson Crest Apt. 886', 'Spencerton', '65943', 'Brazil');

-- --------------------------------------------------------

--
-- Structure de la table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id_cart` int NOT NULL AUTO_INCREMENT,
  `id_user` int NOT NULL,
  PRIMARY KEY (`id_cart`),
  KEY `id_user` (`id_user`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `cart`
--

INSERT INTO `cart` (`id_cart`, `id_user`) VALUES
(1, 47),
(2, 43),
(3, 41),
(4, 47),
(5, 43),
(6, 50),
(7, 50),
(8, 43),
(9, 47),
(10, 47),
(11, 44),
(12, 47),
(13, 50),
(14, 47),
(15, 46),
(16, 49),
(17, 48),
(18, 43),
(19, 42),
(20, 42),
(21, 47),
(22, 50),
(23, 50),
(24, 49),
(25, 48);

-- --------------------------------------------------------

--
-- Structure de la table `cart_product_list`
--

DROP TABLE IF EXISTS `cart_product_list`;
CREATE TABLE IF NOT EXISTS `cart_product_list` (
  `cart_product_list_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `cart_id` int NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`cart_product_list_id`),
  KEY `product_id` (`product_id`),
  KEY `cart_id` (`cart_id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `cart_product_list`
--

INSERT INTO `cart_product_list` (`cart_product_list_id`, `product_id`, `cart_id`, `quantity`) VALUES
(1, 24, 22, 7),
(2, 90, 16, 6),
(3, 40, 19, 4),
(4, 18, 2, 2),
(5, 54, 5, 14),
(6, 47, 6, 1),
(7, 34, 21, 2),
(8, 84, 19, 5),
(9, 15, 21, 13),
(10, 37, 5, 8),
(11, 87, 10, 11),
(12, 54, 15, 9),
(13, 40, 22, 8),
(14, 67, 13, 8),
(15, 8, 8, 1),
(16, 78, 13, 9),
(17, 40, 25, 13),
(18, 30, 22, 3),
(19, 47, 24, 14),
(20, 18, 5, 7),
(21, 17, 25, 12),
(22, 75, 25, 2),
(23, 5, 22, 5),
(24, 18, 9, 11),
(25, 1, 17, 7),
(26, 65, 11, 9),
(27, 90, 4, 3),
(28, 7, 23, 14),
(29, 54, 21, 8),
(30, 37, 11, 14),
(31, 99, 18, 9),
(32, 94, 7, 13),
(33, 1, 12, 13),
(34, 31, 22, 14),
(35, 18, 22, 13),
(36, 37, 6, 8),
(37, 31, 18, 11),
(38, 63, 15, 10),
(39, 60, 6, 5),
(40, 4, 14, 9),
(41, 84, 19, 5),
(42, 18, 4, 11),
(43, 10, 13, 11),
(44, 53, 2, 3),
(45, 53, 1, 4),
(46, 16, 17, 2),
(47, 19, 7, 8),
(48, 41, 15, 4),
(49, 23, 13, 12),
(50, 83, 14, 14);

-- --------------------------------------------------------

--
-- Structure de la table `commands`
--

DROP TABLE IF EXISTS `commands`;
CREATE TABLE IF NOT EXISTS `commands` (
  `command_id` int NOT NULL AUTO_INCREMENT,
  `cart_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `command_status` varchar(15) NOT NULL,
  `id_adress` int NOT NULL,
  PRIMARY KEY (`command_id`),
  KEY `cart_id` (`cart_id`),
  KEY `id_adress` (`id_adress`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `commands`
--

INSERT INTO `commands` (`command_id`, `cart_id`, `created_at`, `command_status`, `id_adress`) VALUES
(1, 3, '2023-04-02 00:32:12', 'Delivered', 2),
(2, 22, '2024-03-30 07:00:14', 'Delivered', 6),
(3, 4, '2022-09-10 13:52:47', 'Delivered', 5),
(4, 13, '2023-06-22 02:00:57', 'Delivered', 5),
(5, 20, '2023-01-17 09:45:54', 'Delivered', 3),
(6, 2, '2023-03-13 13:04:35', 'Delivered', 3),
(7, 16, '2023-11-01 23:54:04', 'Delivered', 2),
(8, 24, '2024-08-14 19:47:21', 'Delivered', 3),
(9, 7, '2022-06-18 04:18:59', 'Delivered', 9),
(10, 25, '2024-05-18 21:13:47', 'Delivered', 1),
(11, 21, '2023-12-31 20:39:58', 'Delivered', 9),
(12, 1, '2023-06-07 08:30:57', 'Delivered', 12),
(13, 12, '2022-03-29 17:36:52', 'Delivered', 1),
(14, 1, '2023-08-24 16:21:23', 'Delivered', 12),
(15, 22, '2023-10-28 06:14:44', 'Delivered', 2),
(16, 17, '2024-05-20 18:28:08', 'Delivered', 12),
(17, 25, '2022-05-17 21:06:41', 'Delivered', 5),
(18, 24, '2022-06-09 06:50:14', 'Delivered', 1),
(19, 23, '2022-08-20 13:37:20', 'Delivered', 11),
(20, 14, '2022-02-13 15:17:11', 'Delivered', 2),
(21, 3, '2022-02-17 23:21:13', 'Delivered', 8),
(22, 19, '2024-04-18 09:00:41', 'Delivered', 13),
(23, 18, '2024-04-14 10:01:49', 'Delivered', 1),
(24, 13, '2024-05-12 22:28:35', 'Delivered', 9);

-- --------------------------------------------------------

--
-- Structure de la table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
CREATE TABLE IF NOT EXISTS `invoice` (
  `invoice_id` int NOT NULL AUTO_INCREMENT,
  `command_id` int NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `payement_status` varchar(15) NOT NULL,
  `id_adress` int NOT NULL,
  PRIMARY KEY (`invoice_id`),
  KEY `command_id` (`command_id`),
  KEY `id_adress` (`id_adress`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `command_id`, `total_amount`, `payement_status`, `id_adress`) VALUES
(1, 8, 0.00, '', 6),
(2, 10, 0.00, '', 5),
(3, 9, 0.00, '', 11),
(4, 1, 0.00, '', 1),
(5, 2, 0.00, '', 2),
(6, 3, 0.00, '', 3),
(7, 4, 0.00, '', 4),
(8, 5, 0.00, '', 5),
(9, 6, 0.00, '', 6),
(10, 7, 0.00, '', 7),
(11, 8, 0.00, '', 8),
(12, 9, 0.00, '', 9),
(13, 10, 0.00, '', 10),
(14, 11, 0.00, '', 11),
(15, 12, 0.00, '', 12);

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`product_id`, `name`, `price`, `stock`) VALUES
(1, 'numquam', 181.47, 442),
(2, 'nihil', 43.85, 1117),
(3, 'vel', 222.26, 637),
(4, 'ut', 154.19, 1483),
(5, 'laudantium', 85.99, 809),
(6, 'architecto', 202.45, 752),
(7, 'error', 69.66, 419),
(8, 'eveniet', 241.62, 66),
(9, 'nesciunt', 86.93, 733),
(10, 'recusandae', 237.62, 328),
(11, 'explicabo', 82.13, 740),
(12, 'quos', 39.48, 462),
(13, 'maxime', 82.88, 935),
(14, 'eum', 218.75, 1469),
(15, 'aut', 46.54, 146),
(16, 'ratione', 244.43, 974),
(17, 'nobis', 63.79, 697),
(18, 'assumenda', 72.44, 847),
(19, 'quia', 13.81, 1389),
(20, 'libero', 35.23, 1279),
(21, 'dicta', 157.90, 1187),
(22, 'adipisci', 165.48, 468),
(23, 'quas', 3.51, 488),
(24, 'et', 113.48, 391),
(25, 'provident', 59.88, 176),
(26, 'pariatur', 94.45, 323),
(27, 'doloremque', 53.44, 477),
(28, 'dolores', 50.51, 871),
(29, 'perspiciatis', 71.47, 473),
(30, 'velit', 89.52, 435),
(31, 'hic', 208.28, 313),
(32, 'blanditiis', 103.21, 963),
(33, 'sed', 139.59, 425),
(34, 'eos', 100.19, 1424),
(35, 'dolor', 106.16, 1184),
(36, 'similique', 213.26, 486),
(37, 'corporis', 123.55, 858),
(38, 'ducimus', 124.15, 416),
(39, 'est', 109.94, 1096),
(40, 'voluptatibus', 189.41, 1420),
(41, 'natus', 201.35, 125),
(42, 'nostrum', 58.31, 916),
(43, 'modi', 209.55, 1462),
(44, 'optio', 15.58, 728),
(45, 'quis', 95.21, 1120),
(46, 'facilis', 188.97, 1099),
(47, 'cum', 172.83, 791),
(48, 'doloribus', 57.59, 1143),
(49, 'qui', 139.16, 1485),
(50, 'minus', 240.93, 972),
(51, 'eaque', 248.05, 1000),
(52, 'consequuntur', 123.18, 24),
(53, 'incidunt', 176.09, 338),
(54, 'dolorum', 184.81, 1017),
(55, 'omnis', 51.38, 629),
(56, 'odio', 157.40, 1073),
(57, 'non', 66.78, 754),
(58, 'exercitationem', 159.50, 1221),
(59, 'consectetur', 179.17, 748),
(60, 'vitae', 185.00, 628),
(61, 'suscipit', 229.12, 1211),
(62, 'minima', 175.32, 1247),
(63, 'repudiandae', 216.15, 779),
(64, 'enim', 129.40, 602),
(65, 'voluptate', 228.34, 1032),
(66, 'voluptatem', 205.02, 651),
(67, 'excepturi', 133.99, 1152),
(68, 'in', 215.91, 757),
(69, 'molestias', 34.11, 1273),
(70, 'saepe', 117.32, 743),
(71, 'repellendus', 78.86, 862),
(72, 'a', 86.63, 1108),
(73, 'necessitatibus', 240.62, 520),
(74, 'ipsam', 120.61, 865),
(75, 'quisquam', 54.18, 1461),
(76, 'sint', 29.46, 338),
(77, 'porro', 166.56, 1370),
(78, 'aliquam', 195.10, 287),
(79, 'placeat', 162.73, 1024),
(80, 'distinctio', 47.33, 244),
(81, 'dignissimos', 177.89, 194),
(82, 'voluptas', 48.99, 470),
(83, 'consequatur', 12.84, 254),
(84, 'illo', 200.35, 1408),
(85, 'amet', 249.47, 1148),
(86, 'praesentium', 20.13, 706),
(87, 'rem', 178.52, 693),
(88, 'nulla', 240.84, 1205),
(89, 'sit', 215.52, 770),
(90, 'ab', 25.97, 432),
(91, 'nemo', 229.66, 1290),
(92, 'tenetur', 46.54, 627),
(93, 'nisi', 248.57, 875),
(94, 'temporibus', 37.85, 1113),
(95, 'illum', 57.28, 1265),
(96, 'accusantium', 215.25, 586),
(97, 'unde', 80.86, 1233),
(98, 'id', 46.12, 543),
(99, 'nam', 215.63, 460),
(100, 'tempora', 174.23, 505);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `phone_number` bigint DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `phone_number` (`phone_number`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `email`, `password_hash`, `created_at`, `phone_number`) VALUES
(41, 'Josephine', 'Rowe', 'parker.lelah@gmail.com', '$2y$10$G0ILmtvANlRz1B3sDNtz6uACmxwwb5rCNlP7/15WwzPxd8lEYHRse', '2024-11-15 14:50:19', 3468346852),
(42, 'Dianna', 'Hermiston', 'sterling.bernhard@gmail.com', '$2y$10$wKKLOmlIcdePe1aT.bwVM.H7XOZBhFg5Bh02IkMCJaSQ2izP7VN6m', '2024-11-15 14:50:20', 8034187851),
(43, 'Gilberto', 'Bode', 'jones.maybelle@yahoo.com', '$2y$10$5sLGV8BuNtcu02MaJx3o8.1g9f1S8WCom4IrrT.ekMnseSQpy5S12', '2024-11-15 14:50:20', 9316020885),
(44, 'Chaim', 'Corkery', 'dmcdermott@kuphal.com', '$2y$10$Bfk1Lvfv33MorICtlDK1auV8AFcQSmJmj9nbTSwVdCPohgFWcSx6.', '2024-11-15 14:50:20', 19856185380),
(45, 'Alfonso', 'Hane', 'flatley.catharine@kozey.com', '$2y$10$yGudWEbnSxlw/YT3JliBIeDNtxGzCovbDaRIzxpJdcYki3jivU4Z6', '2024-11-15 14:50:20', 19413753825),
(46, 'Emilia', 'Stanton', 'ikihn@kovacek.com', '$2y$10$At9UQUkQB3vgNiHeXKbUz.iYCF7ChLAuLWDW536QhrPMkQSatLX/O', '2024-11-15 14:50:20', 19208318980),
(47, 'Sadie', 'Torp', 'phoebe11@schneider.org', '$2y$10$g3pTlNpX45pp1Baqzm6GP.NnXTh4yVew1j/IHtMQQoW5qeogyweiO', '2024-11-15 14:50:20', 15616449267),
(48, 'Leanna', 'Lang', 'polson@yahoo.com', '$2y$10$w7/FMulJqfdDirmx74bOBOrS.BwK2.GHOIdNTk7l4eRRtpvvA2agy', '2024-11-15 14:50:20', 8386184793),
(49, 'Kristian', 'Klein', 'ublanda@yahoo.com', '$2y$10$vdvYijls8Iksi31gYeJ6AOu2KAB07yh.a7rfVgt9rsJcjk2rIJAhi', '2024-11-15 14:50:20', 5343215766),
(50, 'Ernesto', 'Cummings', 'bstark@hotmail.com', '$2y$10$ZFXKWxoAiGbeqx31XPg.Gez2hvETd2hVwf3yzHgpXM.xzrcPc3uMW', '2024-11-15 14:50:20', 7317234307),
(51, 'Holden', 'Harvey', 'muller.toni@hotmail.com', '$2y$10$0Z4/yybH2tPSEu1NqTGR4OfrsmtbTGsCDpg1WHssZnqxPNPEdjvKq', '2024-11-21 20:39:20', 16027972438),
(52, 'Erich', 'Cole', 'edickinson@gmail.com', '$2y$10$sKgmPbCkBdbG.RFodp3E8.adihSMj1Z4lt5S34yfvy3w8wedYGBUq', '2024-11-21 20:39:20', 5416513761),
(53, 'Yoshiko', 'Powlowski', 'magdalen40@yahoo.com', '$2y$10$TjADo0YjDWWjgM266tTA9OTG9yRx1xGujGRa3mxVCfjsNxqBFooUq', '2024-11-21 20:39:20', 18508829971),
(54, 'Thea', 'Goodwin', 'birdie26@ohara.org', '$2y$10$rs7NADL.0MWi/m0561s5i.FdQdRg/3SeJIKF1pWUL93vobANSlEmq', '2024-11-21 20:39:20', 13513237409),
(55, 'Daniela', 'Pfannerstill', 'willms.kailyn@kautzer.com', '$2y$10$2ZjpjcYyEu6a8Koed1zvLOxA8CRBOHLn/HJzeikVWB62t7Vhlyz7.', '2024-11-21 20:39:20', 4123754452),
(56, 'Michaela', 'Champlin', 'orval89@simonis.com', '$2y$10$yPPLPzhymbDd3Cp1qX6LTOTSn8JCQ621PUEbbRMy2oBveZf0bJH6.', '2024-11-21 20:39:20', 12815462255),
(57, 'Kristopher', 'Mayer', 'yost.brooks@yahoo.com', '$2y$10$OQhG/TAFx9jypQw0SisGQeObpMlSmhiWvKR6aH5uo7CtCIoZgFUji', '2024-11-21 20:39:20', 12624282797),
(58, 'Ruben', 'Bogisich', 'wiza.hubert@yahoo.com', '$2y$10$erTrgbTLQn9UIto92F5axuyRxDuoIXR4wOnMx.1klJ1F///xGoc3.', '2024-11-21 20:39:20', 19525434242),
(59, 'Ramon', 'Dickinson', 'cummings.ashley@gmail.com', '$2y$10$TZWjnTr6nGfCj4al4V5gMeDOt5.7RLLlYNUwL748UQtMin0ZhValy', '2024-11-21 20:39:20', 18205375578),
(60, 'Stanton', 'Huel', 'osinski.stanford@hotmail.com', '$2y$10$sRTE4fp7U6oFIl0r0iExb.fKQSvOgLNpyJgkJwpKpAPYUtLe/0YSC', '2024-11-21 20:39:20', 12133840312);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
