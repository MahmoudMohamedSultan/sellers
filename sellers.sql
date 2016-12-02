-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2016 at 01:20 AM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sellers`
--

-- --------------------------------------------------------

--
-- Table structure for table `adslrequests`
--

CREATE TABLE IF NOT EXISTS `adslrequests` (
`id` int(11) NOT NULL,
  `customerid` int(11) NOT NULL,
  `telownername` char(150) COLLATE utf8_bin NOT NULL,
  `telephone` char(13) COLLATE utf8_bin NOT NULL,
  `address` char(150) COLLATE utf8_bin NOT NULL,
  `speed_id` int(11) NOT NULL,
  `telbillimage_id` int(11) NOT NULL,
  `contructimage_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `requeststatuse` char(50) COLLATE utf8_bin NOT NULL DEFAULT 'Pending',
  `requestdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastupdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `userrid` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE IF NOT EXISTS `attachments` (
`id` int(11) NOT NULL,
  `url` char(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
`id` int(11) NOT NULL,
  `name` char(100) COLLATE utf8_bin NOT NULL,
  `mobile` char(13) COLLATE utf8_bin NOT NULL,
  `idcardnumber` char(20) COLLATE utf8_bin NOT NULL,
  `idfrontimage` int(255) NOT NULL,
  `idbackimage` int(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
`id` int(11) NOT NULL,
  `property` char(255) COLLATE utf8_bin NOT NULL,
  `value` char(255) COLLATE utf8_bin NOT NULL,
  `cat` char(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `property`, `value`, `cat`) VALUES
(1, 'app_name', 'Team Work ADSL', 'settings'),
(2, '1 ميجا غير محدودة', '95', 'speed'),
(3, '2 ميجا غير محدودة', '110', 'speed'),
(4, '4 ميجا غير محدودة', '160', 'speed'),
(5, '8 ميجا غير محدودة', '250', 'speed'),
(6, 'تورنيدو 50', '50', 'speed'),
(7, 'تورنيدو 70', '70', 'speed'),
(8, 'تورنيدو 99', '99', 'speed'),
(9, 'تورنيدو 149', '149', 'speed');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `name` char(100) COLLATE utf8_bin NOT NULL,
  `mobile` char(13) COLLATE utf8_bin NOT NULL,
  `email` char(150) COLLATE utf8_bin NOT NULL,
  `username` char(50) COLLATE utf8_bin NOT NULL,
  `password` char(50) COLLATE utf8_bin NOT NULL,
  `type` char(30) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `mobile`, `email`, `username`, `password`, `type`) VALUES
(1, 'محمود سلطان', '01090592962', 'mahmoud.sultan41@hotmail.com', 'admin', '202cb962ac59075b964b07152d234b70', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adslrequests`
--
ALTER TABLE `adslrequests`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adslrequests`
--
ALTER TABLE `adslrequests`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
