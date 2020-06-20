-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 04, 2018 at 03:42 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jewellary`
--

-- --------------------------------------------------------

--
-- Table structure for table `item_details`
--

DROP TABLE IF EXISTS `item_details`;
CREATE TABLE IF NOT EXISTS `item_details` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(50) DEFAULT NULL,
  `item_type` varchar(50) DEFAULT NULL,
  `material` varchar(50) DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `price` float DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_details`
--

INSERT INTO `item_details` (`item_id`, `item_name`, `item_type`, `material`, `weight`, `price`) VALUES
(1, ' 18 kt. White Gold', 'Necklace', 'gold', 360000, 72),
(2, 'Necklace with Ceylon stone', 'necklace', '22 kt. Yellow Gold ', 42, 294000),
(3, 'Necklace with Sapphires and Diamonds', 'necklace', '18 kt. White Gold', 34.38, 206280),
(4, '22 kt. Yellow Gold', 'Necklaces', '22 kt. Yellow Gold', 26, 182000),
(5, '22 kt Gold Necklace', 'Necklaces', '22 kt. Yellow Gold ', 22, 294000),
(6, '22Kt Gold Necklace', 'Necklaces', 'gold', 24, 360000),
(7, 'Wedding Ring', 'Ring', 'gold', 9.38, 55800),
(8, '22Kt Gold Ring', 'Rings', '22 kt. Yellow Gold', 8, 60000),
(9, '18Kt White Gold & Gold Ring', 'Rings', 'gold', 9.38, 80000),
(10, 'Wedding Ring', 'Rings', 'gold', 8.14, 62000),
(11, 'Wedding Ring', 'Rings', '22 kt. Yellow Gold ', 9.34, 71000),
(12, '22Kt Gold & 18Kt White Gold Ring', 'Rings', '22 kt. Yellow Gold ', 9.78, 102000),
(13, '22 kt. Yellow Gold', 'Rings', '22 kt. Yellow Gold ', 4.52, 57000),
(14, 'Gold Ring', 'Rings', 'gold', 5.62, 63000),
(15, 'Ring with Nawarathne', 'Rings', 'gold', 9.38, 250000),
(16, 'Couple Rings', 'Rings', 'gold', 7.28, 80000);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `qty` int(11) DEFAULT NULL,
  `total_price` float DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `item_id` (`item_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `item_id`, `user_id`, `qty`, `total_price`) VALUES
(1, 1, 1, 2, 720000),
(2, 2, 2, 1, 294000),
(3, 1, 1, 1, 72),
(4, 8, 1, 1, 60000),
(5, 3, 1, 1, 206280),
(6, 8, 1, 2, 120000),
(7, 2, 1, 2, 588000),
(8, 8, 1, 2, 120000),
(9, 2, 17, 1, 294000);

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
CREATE TABLE IF NOT EXISTS `store` (
  `item_id` varchar(20) NOT NULL,
  `item_type` varchar(20) NOT NULL,
  `item_no` int(20) NOT NULL,
  `price` double NOT NULL,
  `weight` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`item_id`, `item_type`, `item_no`, `price`, `weight`) VALUES
('E002', 'earrings', 1, 3000, 2),
('E001', 'earrings', 1, 2000, 2),
('E003', 'earrings', 1, 4000, 2),
('E004', 'earrings', 1, 5000, 2),
('E005', 'earrings', 1, 6000, 2),
('E006', 'earrings', 1, 6500, 3),
('N001', 'necklaces', 2, 3000, 2),
('N002', 'necklaces', 2, 5000, 2),
('N003', 'necklaces', 2, 5500, 2),
('N004', 'necklaces', 2, 6000, 3),
('N005', 'necklaces', 2, 6500, 3),
('N006', 'necklaces', 2, 7000, 3),
('B001', 'bracelets', 3, 3000, 2),
('B002', 'bracelets', 3, 3500, 2),
('B003', 'bracelets', 3, 5000, 3),
('B004', 'bracelets', 3, 6000, 3),
('B005', 'bracelets', 3, 5500, 3),
('B006', 'bracelets', 3, 6500, 3),
('R001', 'ring', 4, 1000, 1),
('R002', 'ring', 4, 2000, 2),
('R003', 'ring', 4, 2500, 2),
('R004', 'ring', 4, 3000, 2),
('R005', 'ring', 4, 5000, 4),
('R006', 'ring', 4, 6000, 4),
('P001', 'pendant', 5, 500, 1),
('P002', 'pendant', 5, 1000, 2),
('P003', 'pendant', 5, 1500, 2),
('P004', 'pendant', 5, 2500, 2),
('P005', 'pendant', 5, 4000, 2),
('P006', 'pendant', 5, 5000, 3);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(100) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `user_name` varchar(30) DEFAULT NULL,
  `gender` char(10) DEFAULT NULL,
  `passowrd` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `firstName`, `lastName`, `Email`, `address`, `user_name`, `gender`, `passowrd`) VALUES
(1, 'Hashini', 'Disanayaka', 'hasini@gmail.com', 'Badulla', 'admin', 'Female', 'admin'),
(17, 'shiyani', 'kirupa', 'shiyani@gmail.com', 'jaffna', 'shiya', 'female', '1234');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
