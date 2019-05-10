-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.25a


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema demo_db
--

CREATE DATABASE IF NOT EXISTS demo_db;
USE demo_db;

--
-- Definition of table `brands`
--

DROP TABLE IF EXISTS `brands`;
CREATE TABLE `brands` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `brand` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` (`id`,`product_id`,`brand`) VALUES 
 (1,383741444,'Fujifilm'),
 (2,383741454,'Fujifilm'),
 (3,383741464,'Fujifilm'),
 (4,383741474,'Fujifilm'),
 (5,383741484,'Olympus'),
 (6,383741494,'Olympus'),
 (7,383750454,'Fujifilm'),
 (8,383751734,'Panasonic'),
 (9,383751744,'Panasonic'),
 (10,383751754,'Panasonic'),
 (11,383751824,'Panasonic'),
 (12,383751834,'Panasonic'),
 (13,383751844,'Panasonic');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;


--
-- Definition of table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
CREATE TABLE `invoices` (
  `region_id` varchar(100) NOT NULL,
  `value` float(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoices`
--

/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
INSERT INTO `invoices` (`region_id`,`value`) VALUES 
 ('region1',573.44),
 ('region1',145.54),
 ('region1',417.84),
 ('region1',203.89),
 ('region1',301.14),
 ('region1',340.04),
 ('region1',495.64),
 ('region1',515.09),
 ('region1',398.39),
 ('region2',262.24),
 ('region2',437.29),
 ('region2',320.59),
 ('region2',242.79),
 ('region2',184.44),
 ('region2',164.99),
 ('region2',612.34),
 ('region2',476.19),
 ('region2',281.69),
 ('region3',359.49),
 ('region3',378.94),
 ('region3',592.89),
 ('region3',534.54),
 ('region3',223.34),
 ('region3',456.74),
 ('region3',553.99);
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;


--
-- Definition of table `order_lines`
--

DROP TABLE IF EXISTS `order_lines`;
CREATE TABLE `order_lines` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `quantity` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_lines`
--

/*!40000 ALTER TABLE `order_lines` DISABLE KEYS */;
INSERT INTO `order_lines` (`id`,`order_id`,`product_id`,`quantity`) VALUES 
 (1,1,383741444,1),
 (2,1,383741484,1),
 (3,2,383751754,1),
 (4,2,383741494,2),
 (5,2,383741464,1),
 (6,3,383751754,1),
 (7,4,383741444,2),
 (8,4,383741464,3),
 (9,5,383751844,1),
 (10,5,383741494,1),
 (11,6,383751754,1),
 (12,6,383741444,2),
 (13,6,383751744,1),
 (14,7,383741494,1),
 (15,7,383751844,1),
 (16,7,383741464,1),
 (17,7,383751754,1);
/*!40000 ALTER TABLE `order_lines` ENABLE KEYS */;


--
-- Definition of table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_date` datetime NOT NULL,
  `order_value` float(10,2) NOT NULL,
  `order_status` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`id`,`order_date`,`order_value`,`order_status`) VALUES 
 (1,'2012-02-09 20:26:31',240.00,'ORDERED'),
 (2,'2012-02-09 20:28:00',475.00,'ORDERED'),
 (3,'2012-02-09 20:34:05',115.00,'ORDERED'),
 (4,'2012-02-09 20:39:35',600.00,'ORDERED'),
 (5,'2012-02-09 20:52:30',280.00,'ORDERED'),
 (6,'2012-02-09 20:53:18',470.00,'ORDERED'),
 (7,'2012-02-09 20:55:47',515.00,'ORDERED');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;


--
-- Definition of table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `product_id` int(20) NOT NULL DEFAULT '0',
  `product_name` varchar(200) DEFAULT NULL,
  `price` float(10,2) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`product_id`,`product_name`,`price`) VALUES 
 (383741444,'Fuji 16MP Digital Camera - Black',120.00),
 (383741454,'Fuji 16MP Digital Camera - Silver',120.00),
 (383741464,'Fuji 16MP Digital Camera - Pink',120.00),
 (383741474,'Fuji 16MP Digital Camera - Red',120.00),
 (383741484,'Olympus 14MP Digital Camera Black',120.00),
 (383741494,'Olympus 14MP Digital Camera Silver',120.00),
 (383750454,'Fuji 14MP 30x Optical Zoom Camera',120.00),
 (383751734,'Panasonic 14MP Digital Camera Blue',115.00),
 (383751744,'Panasonic 14MP Digital Camera Red',115.00),
 (383751754,'Panasonic 14MP Digital Camera Pink',115.00),
 (383751824,'Panasonic 16MP Digital Camera Black',160.00),
 (383751834,'Panasonic 16MP Digital Camera Silver',160.00),
 (383751844,'Panasonic 16MP Digital Camera Red',160.00);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
