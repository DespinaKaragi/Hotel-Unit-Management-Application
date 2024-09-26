-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2024 at 08:55 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `first_name`, `last_name`, `email`, `phone`) VALUES
(385, 'First1', 'Last1', 'email1@example.com', '12345678901'),
(386, 'First2', 'Last2', 'email2@example.com', '12345678902'),
(387, 'First3', 'Last3', 'email3@example.com', '12345678903'),
(388, 'First1', 'Last1', 'email1@example.com', '12345678901'),
(389, 'First2', 'Last2', 'email2@example.com', '12345678902'),
(390, 'First3', 'Last3', 'email3@example.com', '12345678903'),
(391, 'First1', 'Last1', 'email1@example.com', '12345678901'),
(392, 'First2', 'Last2', 'email2@example.com', '12345678902'),
(393, 'First3', 'Last3', 'email3@example.com', '12345678903'),
(394, 'First1', 'Last1', 'email1@example.com', '12345678901'),
(395, 'First2', 'Last2', 'email2@example.com', '12345678902'),
(396, 'First3', 'Last3', 'email3@example.com', '12345678903'),
(397, 'First1', 'Last1', 'email1@example.com', '12345678901'),
(398, 'First2', 'Last2', 'email2@example.com', '12345678902'),
(399, 'First3', 'Last3', 'email3@example.com', '12345678903'),
(400, 'First1', 'Last1', 'email1@example.com', '12345678901'),
(401, 'First2', 'Last2', 'email2@example.com', '12345678902'),
(402, 'First3', 'Last3', 'email3@example.com', '12345678903'),
(403, 'First1', 'Last1', 'email1@example.com', '12345678901'),
(404, 'First2', 'Last2', 'email2@example.com', '12345678902'),
(405, 'First3', 'Last3', 'email3@example.com', '12345678903'),
(406, 'First1', 'Last1', 'email1@example.com', '12345678901'),
(407, 'First2', 'Last2', 'email2@example.com', '12345678902'),
(408, 'First3', 'Last3', 'email3@example.com', '12345678903'),
(409, 'First1', 'Last1', 'email1@example.com', '12345678901'),
(410, 'First2', 'Last2', 'email2@example.com', '12345678902'),
(411, 'First3', 'Last3', 'email3@example.com', '12345678903'),
(412, 'First1', 'Last1', 'email1@example.com', '12345678901'),
(413, 'First2', 'Last2', 'email2@example.com', '12345678902'),
(414, 'First3', 'Last3', 'email3@example.com', '12345678903'),
(415, 'First1', 'Last1', 'email1@example.com', '12345678901'),
(416, 'First2', 'Last2', 'email2@example.com', '12345678902'),
(417, 'First3', 'Last3', 'email3@example.com', '12345678903'),
(418, 'First1', 'Last1', 'email1@example.com', '12345678901'),
(419, 'First2', 'Last2', 'email2@example.com', '12345678902'),
(420, 'First3', 'Last3', 'email3@example.com', '12345678903'),
(421, 'First1', 'Last1', 'email1@example.com', '12345678901'),
(422, 'First2', 'Last2', 'email2@example.com', '12345678902'),
(423, 'First3', 'Last3', 'email3@example.com', '12345678903'),
(424, 'First1', 'Last1', 'email1@example.com', '12345678901'),
(425, 'First2', 'Last2', 'email2@example.com', '12345678902'),
(426, 'First3', 'Last3', 'email3@example.com', '12345678903'),
(427, 'First1', 'Last1', 'email1@example.com', '12345678901'),
(428, 'First2', 'Last2', 'email2@example.com', '12345678902'),
(429, 'First3', 'Last3', 'email3@example.com', '12345678903'),
(430, 'First1', 'Last1', 'email1@example.com', '12345678901'),
(431, 'First2', 'Last2', 'email2@example.com', '12345678902'),
(432, 'First3', 'Last3', 'email3@example.com', '12345678903'),
(448, '', '', '', ''),
(449, 'deimf', 'rgege', 'fewfwefwfew', '242452525'),
(450, 'debbs', 'kr', 'fafefqfqfq', '424423232'),
(451, 'Dimitra', 'Papadopoulou', 'ifsjofsjiofs@fsoifjs', '111213232'),
(452, 'Dimitra', 'Papadopoulou', 'ifsjofsjiofs@fsoifjs', '111213232');

-- --------------------------------------------------------

--
-- Table structure for table `drinks_menu`
--

CREATE TABLE `drinks_menu` (
  `drink_id` int(11) NOT NULL,
  `item_name` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `description` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `drinks_menu`
--

INSERT INTO `drinks_menu` (`drink_id`, `item_name`, `price`, `description`) VALUES
(131, 'Drink Item 1', 4.12, ''),
(132, 'Drink Item 2', 5.00, ''),
(133, 'Drink Item 3', 1.62, ''),
(134, 'Drink Item 1', 2.10, ''),
(135, 'Drink Item 2', 4.65, ''),
(136, 'Drink Item 3', 5.95, ''),
(137, 'Drink Item 1', 4.80, ''),
(138, 'Drink Item 2', 5.15, ''),
(139, 'Drink Item 3', 10.33, ''),
(140, 'Drink Item 1', 5.22, ''),
(141, 'Drink Item 2', 4.09, ''),
(142, 'Drink Item 3', 3.79, ''),
(143, 'Drink Item 1', 5.71, ''),
(144, 'Drink Item 2', 6.15, ''),
(145, 'Drink Item 3', 2.63, ''),
(146, 'Drink Item 1', 3.71, ''),
(147, 'Drink Item 2', 9.65, ''),
(148, 'Drink Item 3', 6.12, ''),
(149, 'Drink Item 1', 10.65, ''),
(150, 'Drink Item 2', 3.89, ''),
(151, 'Drink Item 3', 6.51, ''),
(152, 'Drink Item 1', 9.86, ''),
(153, 'Drink Item 2', 8.79, ''),
(154, 'Drink Item 3', 3.37, ''),
(155, 'Drink Item 1', 9.48, ''),
(156, 'Drink Item 2', 6.30, ''),
(157, 'Drink Item 3', 2.06, ''),
(158, 'Drink Item 1', 10.38, ''),
(159, 'Drink Item 2', 4.71, ''),
(160, 'Drink Item 3', 1.43, ''),
(161, 'Drink Item 1', 2.01, ''),
(162, 'Drink Item 2', 4.77, ''),
(163, 'Drink Item 3', 6.80, ''),
(164, 'Drink Item 1', 8.70, ''),
(165, 'Drink Item 2', 2.12, ''),
(166, 'Drink Item 3', 3.47, ''),
(167, 'Drink Item 1', 9.99, ''),
(168, 'Drink Item 2', 8.54, ''),
(169, 'Drink Item 3', 1.74, ''),
(170, 'Drink Item 1', 2.09, ''),
(171, 'Drink Item 2', 4.23, ''),
(172, 'Drink Item 3', 3.88, ''),
(173, 'Drink Item 1', 5.72, ''),
(174, 'Drink Item 2', 5.96, ''),
(175, 'Drink Item 3', 1.61, ''),
(176, 'Drink Item 1', 9.20, ''),
(177, 'Drink Item 2', 10.17, ''),
(178, 'Drink Item 3', 2.26, '');

-- --------------------------------------------------------

--
-- Table structure for table `food_menu`
--

CREATE TABLE `food_menu` (
  `food_id` int(11) NOT NULL,
  `item_name` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `description` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food_menu`
--

INSERT INTO `food_menu` (`food_id`, `item_name`, `price`, `description`) VALUES
(131, 'Food Item 1', 8.59, ''),
(132, 'Food Item 2', 23.64, ''),
(133, 'Food Item 3', 7.44, ''),
(134, 'Food Item 1', 21.25, ''),
(135, 'Food Item 2', 18.94, ''),
(136, 'Food Item 3', 5.95, ''),
(137, 'Food Item 1', 7.94, ''),
(138, 'Food Item 2', 16.84, ''),
(139, 'Food Item 3', 15.37, ''),
(140, 'Food Item 1', 21.36, ''),
(141, 'Food Item 2', 15.66, ''),
(142, 'Food Item 3', 9.24, ''),
(143, 'Food Item 1', 14.21, ''),
(144, 'Food Item 2', 18.32, ''),
(145, 'Food Item 3', 23.97, ''),
(146, 'Food Item 1', 19.90, ''),
(147, 'Food Item 2', 22.58, ''),
(148, 'Food Item 3', 8.22, ''),
(149, 'Food Item 1', 8.37, ''),
(150, 'Food Item 2', 12.18, ''),
(151, 'Food Item 3', 10.78, ''),
(152, 'Food Item 1', 12.36, ''),
(153, 'Food Item 2', 24.46, ''),
(154, 'Food Item 3', 20.20, ''),
(155, 'Food Item 1', 22.65, ''),
(156, 'Food Item 2', 7.63, ''),
(157, 'Food Item 3', 5.20, ''),
(158, 'Food Item 1', 18.10, ''),
(159, 'Food Item 2', 9.93, ''),
(160, 'Food Item 3', 10.34, ''),
(161, 'Food Item 1', 16.89, ''),
(162, 'Food Item 2', 8.44, ''),
(163, 'Food Item 3', 6.52, ''),
(164, 'Food Item 1', 22.27, ''),
(165, 'Food Item 2', 6.79, ''),
(166, 'Food Item 3', 22.14, ''),
(167, 'Food Item 1', 5.33, ''),
(168, 'Food Item 2', 15.24, ''),
(169, 'Food Item 3', 15.22, ''),
(170, 'Food Item 1', 5.39, ''),
(171, 'Food Item 2', 16.26, ''),
(172, 'Food Item 3', 20.16, ''),
(173, 'Food Item 1', 7.02, ''),
(174, 'Food Item 2', 9.60, ''),
(175, 'Food Item 3', 21.96, ''),
(176, 'Food Item 1', 16.01, ''),
(177, 'Food Item 2', 9.15, ''),
(178, 'Food Item 3', 12.74, '');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `item_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `item_name` varchar(100) DEFAULT NULL,
  `item_type` varchar(50) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`item_id`, `order_id`, `item_name`, `item_type`, `quantity`, `price`) VALUES
(5, 150, 'Food Item 2', 'drink', 2, 22.14),
(6, 145, 'Food Item 1', 'food', 5, 22.65),
(7, 135, 'Food Item 2', 'food', 5, 5.33),
(8, 177, 'Drink Item 1', 'food', 5, 6.30),
(9, 140, 'Drink Item 1', 'food', 4, 8.37),
(10, 143, 'Drink Item 1', 'food', 2, 6.15),
(11, 176, 'Drink Item 3', 'drink', 5, 7.02),
(12, 149, 'Food Item 3', 'drink', 4, 9.20),
(13, 153, 'Drink Item 1', 'food', 5, 8.59),
(14, 174, 'Drink Item 3', 'food', 4, 9.15),
(15, 170, 'Drink Item 1', 'drink', 5, 12.74),
(16, 156, 'Food Item 2', 'food', 2, 8.37),
(17, 154, 'Drink Item 3', 'drink', 2, 21.25),
(18, 155, 'Drink Item 1', 'food', 3, 5.33),
(19, 173, 'Drink Item 2', 'drink', 3, 3.37),
(20, 139, 'Drink Item 3', 'drink', 1, 9.99),
(21, 160, 'Drink Item 1', 'drink', 1, 22.65),
(22, 166, 'Drink Item 3', 'food', 1, 21.25),
(23, 148, 'Food Item 2', 'drink', 5, 15.66),
(24, 181, 'Food Item 2', 'food', 1, 10.78),
(25, 164, 'Food Item 2', 'food', 4, 10.65),
(26, 167, 'Food Item 3', 'food', 4, 9.60),
(27, 171, 'Food Item 3', 'drink', 4, 5.15),
(28, 169, 'Food Item 2', 'drink', 2, 9.15),
(29, 136, 'Drink Item 1', 'drink', 5, 2.12),
(30, 157, 'Drink Item 3', 'food', 3, 21.25),
(31, 141, 'Food Item 3', 'drink', 1, 22.65),
(32, 168, 'Food Item 1', 'drink', 5, 5.72),
(33, 179, 'Drink Item 1', 'drink', 3, 3.79),
(34, 163, 'Drink Item 2', 'drink', 4, 12.74),
(35, 142, 'Drink Item 3', 'food', 4, 2.10),
(36, 180, 'Food Item 3', 'drink', 1, 2.26),
(37, 147, 'Drink Item 1', 'food', 1, 1.74),
(38, 152, 'Drink Item 2', 'drink', 3, 6.79),
(39, 165, 'Drink Item 1', 'food', 5, 5.33),
(40, 159, 'Food Item 1', 'drink', 3, 1.74),
(41, 138, 'Drink Item 3', 'food', 4, 4.77),
(42, 182, 'Food Item 2', 'food', 5, 9.86),
(43, 178, 'Food Item 3', 'food', 2, 10.38),
(44, 158, 'Food Item 2', 'drink', 3, 5.96),
(45, 151, 'Food Item 3', 'drink', 5, 21.25),
(46, 162, 'Food Item 3', 'drink', 4, 24.46),
(47, 137, 'Drink Item 2', 'food', 4, 12.36),
(48, 144, 'Food Item 2', 'food', 4, 9.93),
(49, 146, 'Food Item 1', 'drink', 4, 7.02),
(50, 172, 'Drink Item 3', 'drink', 4, 6.79),
(51, 161, 'Food Item 1', 'food', 1, 6.12),
(52, 175, 'Food Item 2', 'food', 4, 5.15);

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `reservation_id` int(11) NOT NULL,
  `room_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `check_in_date` date DEFAULT NULL,
  `check_out_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`reservation_id`, `room_id`, `customer_id`, `check_in_date`, `check_out_date`) VALUES
(24593, 900, 385, '2019-02-24', '2020-02-24'),
(24594, 900, 385, '2019-02-24', '2020-02-24');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_orders`
--

CREATE TABLE `restaurant_orders` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `STATUS` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `restaurant_orders`
--

INSERT INTO `restaurant_orders` (`order_id`, `customer_id`, `order_date`, `total_amount`, `STATUS`) VALUES
(135, 414, '2024-02-24', 25.04, 'Pending'),
(136, 412, '2024-02-28', 71.10, 'Pending'),
(137, 416, '2024-03-03', 34.48, 'Pending'),
(138, 400, '2024-03-06', 86.85, 'Pending'),
(139, 394, '2024-02-19', 109.17, 'Pending'),
(140, 410, '2024-03-02', 92.10, 'Pending'),
(141, 401, '2024-03-04', 16.10, 'Pending'),
(142, 411, '2024-03-15', 89.04, 'Pending'),
(143, 390, '2024-03-09', 91.36, 'Completed'),
(144, 425, '2024-03-17', 109.30, 'Pending'),
(145, 417, '2024-03-16', 83.91, 'Completed'),
(146, 387, '2024-02-27', 90.22, 'Pending'),
(147, 413, '2024-02-26', 64.71, 'Completed'),
(148, 420, '2024-02-24', 37.36, 'Pending'),
(149, 406, '2024-03-10', 80.56, 'Pending'),
(150, 423, '2024-02-24', 33.51, 'Pending'),
(151, 385, '2024-03-01', 27.94, 'Pending'),
(152, 399, '2024-03-11', 78.55, 'Pending'),
(153, 405, '2024-03-06', 83.86, 'Completed'),
(154, 393, '2024-03-09', 20.73, 'Pending'),
(155, 404, '2024-03-15', 12.00, 'Pending'),
(156, 391, '2024-02-28', 46.00, 'Pending'),
(157, 409, '2024-02-21', 33.22, 'Pending'),
(158, 431, '2024-03-03', 65.97, 'Pending'),
(159, 386, '2024-02-27', 68.11, 'Pending'),
(160, 418, '2024-03-05', 79.54, 'Pending'),
(161, 396, '2024-03-10', 53.78, 'Pending'),
(162, 392, '2024-02-28', 67.80, 'Completed'),
(163, 402, '2024-02-29', 76.34, 'Pending'),
(164, 398, '2024-02-27', 27.72, 'Completed'),
(165, 421, '2024-03-12', 62.95, 'Pending'),
(166, 389, '2024-02-18', 81.24, 'Pending'),
(167, 427, '2024-03-12', 53.34, 'Completed'),
(168, 415, '2024-03-17', 38.70, 'Pending'),
(169, 397, '2024-02-20', 106.40, 'Pending'),
(170, 426, '2024-03-10', 22.79, 'Pending'),
(171, 428, '2024-03-12', 39.21, 'Pending'),
(172, 388, '2024-02-21', 18.07, 'Pending'),
(173, 432, '2024-02-29', 46.58, 'Pending'),
(174, 407, '2024-02-22', 30.09, 'Pending'),
(175, 403, '2024-03-14', 69.40, 'Pending'),
(176, 424, '2024-03-14', 68.61, 'Pending'),
(177, 429, '2024-03-17', 19.74, 'Pending'),
(178, 419, '2024-02-19', 74.61, 'Pending'),
(179, 395, '2024-02-25', 57.16, 'Pending'),
(180, 430, '2024-03-10', 83.60, 'Pending'),
(181, 422, '2024-03-15', 56.98, 'Pending'),
(182, 408, '2024-02-28', 85.07, 'Pending'),
(184, 451, '2019-02-24', 1.00, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `room_id` int(11) NOT NULL,
  `room_number` int(11) DEFAULT NULL,
  `room_type` varchar(50) DEFAULT NULL,
  `occupancy` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`room_id`, `room_number`, `room_type`, `occupancy`, `price`) VALUES
(867, 1088, 'Single', 1, 140.67),
(868, 935, 'Double', 3, 132.74),
(869, 452, 'Double', 3, 84.23),
(870, 315, 'Double', 1, 88.09),
(871, 521, 'Double', 2, 142.48),
(872, 170, 'Double', 3, 86.59),
(873, 167, 'Double', 3, 110.35),
(874, 411, 'Double', 2, 184.57),
(875, 486, 'Double', 2, 118.82),
(876, 565, 'Single', 1, 154.84),
(877, 473, 'Single', 2, 234.49),
(878, 624, 'Double', 3, 239.31),
(879, 725, 'Single', 3, 240.37),
(880, 169, 'Single', 2, 211.03),
(881, 354, 'Double', 3, 65.30),
(882, 890, 'Double', 1, 53.88),
(883, 486, 'Double', 1, 142.90),
(884, 767, 'Double', 3, 199.58),
(885, 692, 'Double', 4, 231.94),
(886, 210, 'Double', 4, 139.44),
(887, 986, 'Single', 4, 191.86),
(888, 256, 'Double', 4, 61.83),
(889, 981, 'Single', 3, 217.03),
(890, 760, 'Double', 1, 182.27),
(891, 372, 'Single', 1, 89.69),
(892, 895, 'Single', 3, 148.80),
(893, 983, 'Double', 1, 123.45),
(894, 828, 'Double', 3, 241.19),
(895, 334, 'Single', 4, 78.20),
(896, 376, 'Double', 4, 236.94),
(897, 888, 'Single', 2, 87.26),
(898, 1073, 'Single', 3, 89.00),
(899, 201, 'Double', 2, 208.33),
(900, 120, 'Double', 3, 196.99),
(901, 1020, 'Single', 1, 243.63),
(902, 241, 'Double', 3, 159.14),
(903, 1055, 'Single', 4, 199.33),
(904, 333, 'Double', 4, 229.74),
(905, 785, 'Double', 3, 205.12),
(906, 199, 'Single', 3, 97.16),
(907, 632, 'Double', 1, 61.85),
(908, 838, 'Double', 2, 95.40),
(909, 174, 'Double', 1, 61.85),
(910, 719, 'Double', 3, 238.91),
(911, 600, 'Double', 4, 86.04),
(912, 491, 'Single', 4, 111.65),
(913, 905, 'Single', 1, 77.89),
(914, 532, 'Double', 2, 222.55),
(915, 158, 'Double', 2, 175.31),
(916, 188, 'Double', 3, 54.65),
(917, 592, 'Single', 2, 94.44),
(918, 773, 'Double', 2, 115.11),
(919, 269, 'Double', 4, 182.63),
(920, 845, 'Double', 2, 67.23),
(921, 147, 'Double', 4, 218.58),
(922, 1044, 'Single', 1, 76.26),
(923, 325, 'Double', 4, 201.27),
(924, 907, 'Double', 2, 209.33),
(925, 821, 'Single', 4, 246.13),
(926, 221, 'Double', 4, 218.19),
(927, 400, 'Double', 4, 51.35),
(928, 169, 'Single', 2, 89.41),
(929, 774, 'Double', 4, 60.00),
(930, 715, 'Double', 4, 88.80),
(931, 681, 'Single', 4, 146.94),
(932, 842, 'Single', 1, 159.43),
(933, 642, 'Single', 3, 133.51),
(934, 1010, 'Single', 4, 229.13),
(935, 305, 'Single', 1, 125.74),
(936, 756, 'Single', 4, 119.78),
(937, 573, 'Single', 1, 248.93),
(938, 495, 'Double', 4, 229.88),
(939, 271, 'Single', 2, 236.09),
(940, 907, 'Single', 4, 108.36),
(941, 141, 'Single', 3, 195.58),
(942, 100, 'Double', 1, 56.99),
(943, 977, 'Single', 4, 56.63),
(944, 939, 'Single', 4, 156.32),
(945, 865, 'Single', 4, 180.87),
(946, 758, 'Single', 3, 125.39),
(947, 965, 'Single', 2, 109.65),
(948, 462, 'Double', 3, 203.16),
(949, 416, 'Single', 2, 152.08),
(950, 234, 'Single', 2, 59.14),
(951, 451, 'Double', 1, 116.59),
(952, 652, 'Double', 1, 148.92),
(953, 103, 'Double', 3, 186.10),
(954, 534, 'Single', 2, 119.80),
(955, 801, 'Single', 1, 167.44),
(956, 456, 'Single', 1, 77.70),
(957, 669, 'Single', 2, 239.00),
(958, 481, 'Single', 1, 231.51),
(959, 959, 'Double', 2, 198.88),
(960, 941, 'Double', 2, 214.78),
(961, 170, 'Double', 1, 110.43),
(962, 1045, 'Double', 2, 230.32),
(963, 787, 'Double', 3, 206.10),
(964, 217, 'Single', 4, 184.88),
(965, 822, 'Double', 4, 70.60),
(966, 294, 'Double', 3, 191.10),
(995, 1, 'Single', 1, 100.00),
(996, 1, 'Single', 1, 100.00),
(997, 1, 'Single', 1, 11.00),
(998, 1, 'single', 1, 1.00),
(999, 1111, 'Single', 1, 1.00),
(1000, 1, 'Double', 2, 2.00);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `POSITION` varchar(100) DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `first_name`, `last_name`, `POSITION`, `salary`) VALUES
(4, 'Staff1', 'Position1', 'Position1', 1658.83),
(5, 'Staff2', 'Position2', 'Position2', 582.51),
(6, 'Staff3', 'Position3', 'Position3', 1436.08),
(7, 'Staff1', 'Position1', 'Position1', 932.85),
(8, 'Staff2', 'Position2', 'Position2', 1856.03),
(9, 'Staff3', 'Position3', 'Position3', 1981.58),
(10, 'Staff1', 'Position1', 'Position1', 1839.83),
(11, 'Staff2', 'Position2', 'Position2', 754.40),
(12, 'Staff3', 'Position3', 'Position3', 1752.51),
(13, 'Staff1', 'Position1', 'Position1', 1999.35),
(14, 'Staff2', 'Position2', 'Position2', 2239.22),
(15, 'Staff3', 'Position3', 'Position3', 698.03),
(16, 'Staff1', 'Position1', 'Position1', 2272.51),
(17, 'Staff2', 'Position2', 'Position2', 768.47),
(18, 'Staff3', 'Position3', 'Position3', 524.83),
(19, 'Staff1', 'Position1', 'Position1', 1818.71),
(20, 'Staff2', 'Position2', 'Position2', 1019.05),
(21, 'Staff3', 'Position3', 'Position3', 1139.16),
(22, 'Staff1', 'Position1', 'Position1', 2138.61),
(23, 'Staff2', 'Position2', 'Position2', 775.60),
(24, 'Staff3', 'Position3', 'Position3', 962.14),
(25, 'Staff1', 'Position1', 'Position1', 1983.93),
(26, 'Staff2', 'Position2', 'Position2', 533.23),
(27, 'Staff3', 'Position3', 'Position3', 2214.34),
(28, 'Staff1', 'Position1', 'Position1', 972.01),
(29, 'Staff2', 'Position2', 'Position2', 1717.05),
(30, 'Staff3', 'Position3', 'Position3', 1169.22),
(31, 'Staff1', 'Position1', 'Position1', 2194.94),
(32, 'Staff2', 'Position2', 'Position2', 967.05),
(33, 'Staff3', 'Position3', 'Position3', 1750.41),
(34, 'Staff1', 'Position1', 'Position1', 1350.92),
(35, 'Staff2', 'Position2', 'Position2', 1003.35),
(36, 'Staff3', 'Position3', 'Position3', 2463.98),
(37, 'Staff1', 'Position1', 'Position1', 809.86),
(38, 'Staff2', 'Position2', 'Position2', 2157.38),
(39, 'Staff3', 'Position3', 'Position3', 1857.30),
(40, 'Staff1', 'Position1', 'Position1', 2314.34),
(41, 'Staff2', 'Position2', 'Position2', 1499.84),
(42, 'Staff3', 'Position3', 'Position3', 2056.16),
(43, 'Staff1', 'Position1', 'Position1', 1281.28),
(44, 'Staff2', 'Position2', 'Position2', 1737.91),
(45, 'Staff3', 'Position3', 'Position3', 2345.72),
(46, 'Staff1', 'Position1', 'Position1', 2014.87),
(47, 'Staff2', 'Position2', 'Position2', 537.17),
(48, 'Staff3', 'Position3', 'Position3', 2141.27),
(49, 'Staff1', 'Position1', 'Position1', 594.82),
(50, 'Staff2', 'Position2', 'Position2', 2050.28),
(51, 'Staff3', 'Position3', 'Position3', 1966.97),
(53, 'Debbs', 'Kr', 'Manager', 100000.00),
(54, 'Kostas', 'kr', 'Boss', 10000.00),
(55, 'A', 'A', 'A', 1.00),
(56, 'Debborah', 'K', 'Boss', 10000.00),
(57, 'D', 'K', 'B', 1.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `drinks_menu`
--
ALTER TABLE `drinks_menu`
  ADD PRIMARY KEY (`drink_id`);

--
-- Indexes for table `food_menu`
--
ALTER TABLE `food_menu`
  ADD PRIMARY KEY (`food_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`reservation_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `restaurant_orders`
--
ALTER TABLE `restaurant_orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=453;

--
-- AUTO_INCREMENT for table `drinks_menu`
--
ALTER TABLE `drinks_menu`
  MODIFY `drink_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `food_menu`
--
ALTER TABLE `food_menu`
  MODIFY `food_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `reservation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24595;

--
-- AUTO_INCREMENT for table `restaurant_orders`
--
ALTER TABLE `restaurant_orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `restaurant_orders` (`order_id`) ON DELETE CASCADE;

--
-- Constraints for table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  ADD CONSTRAINT `reservations_ibfk_3` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`room_id`) ON DELETE CASCADE;

--
-- Constraints for table `restaurant_orders`
--
ALTER TABLE `restaurant_orders`
  ADD CONSTRAINT `restaurant_orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
