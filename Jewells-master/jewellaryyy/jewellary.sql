-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 02, 2018 at 12:37 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_details`
--

INSERT INTO `item_details` (`item_id`, `item_name`, `item_type`, `material`, `weight`, `price`) VALUES
(1, 'Indian Diamond Jewellery', 'Necklace', 'gold', 30000, 20);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `no_of_items` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `no_of_orders` int(11) DEFAULT NULL,
  `picture` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `item_id` (`item_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `item_id`, `no_of_items`, `user_id`, `no_of_orders`, `picture`) VALUES
(1, 1, 2, 1, NULL, NULL),
(2, 2, 3, 2, NULL, NULL);

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
  `password` varchar(10) DEFAULT NULL,
  `gender` char(10) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `firstName`, `lastName`, `Email`, `address`, `user_name`, `password`, `gender`) VALUES
(1, 'Kopika', 'Baskaran', 'kopika@gmail.com', NULL, NULL, NULL, NULL),
(2, 'Archchana', 'Sivarajah', 'archchu95@gmail.com', NULL, NULL, NULL, NULL),
(3, ' hasini ', ' Disanayaka ', ' hasini@gmail.com ', '     Kurunegla                         ', ' hashini ', ' null ', ' female'),
(4, ' null ', ' null ', ' null ', ' null ', ' null ', ' null ', ' null'),
(5, ' djsbck ', ' bhycdbushy ', ' svcycy@gmail.com ', '           chisuhs                   ', ' hasini ', ' null ', ' female'),
(6, ' null ', ' null ', ' null ', ' null ', ' null ', ' null ', ' null'),
(7, ' null ', ' null ', ' null ', ' null ', ' null ', ' null ', ' null'),
(8, ' null ', ' null ', ' null ', ' null ', ' null ', ' null ', ' null'),
(9, ' fhiofhioeh ', ' budviev ', ' archchu95@gmail.com ', '              dfvndvi                ', ' hasini ', ' null ', ' female'),
(10, ' fhiofhioeh ', ' budviev ', ' archchu95@gmail.com ', '              dfvndvi                ', ' hasini ', ' null ', ' female');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
