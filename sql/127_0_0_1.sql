-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2021 at 08:02 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `product_deal_india`
--
CREATE DATABASE IF NOT EXISTS `product_deal_india` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `product_deal_india`;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `ID` varchar(20) DEFAULT NULL,
  `USERID` varchar(20) DEFAULT NULL,
  `SELLERID` varchar(20) DEFAULT NULL,
  `DATE` date DEFAULT NULL,
  `PRODUCTID` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ID` varchar(20) DEFAULT NULL,
  `NAME` varchar(20) DEFAULT NULL,
  `PRODUCT_DESCRIPTION` varchar(20) DEFAULT NULL,
  `PRICE` int(11) DEFAULT NULL,
  `IMAGE` longblob NOT NULL,
  `CATEGORY` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `ID` varchar(20) DEFAULT NULL,
  `STORE_NAME` varchar(20) DEFAULT NULL,
  `ADD1` varchar(20) DEFAULT NULL,
  `ADD2` varchar(20) DEFAULT NULL,
  `CITY` varchar(20) DEFAULT NULL,
  `STATE` varchar(20) DEFAULT NULL,
  `COUNTRY` varchar(20) DEFAULT NULL,
  `ZIP` int(11) DEFAULT NULL,
  `PHONE` int(11) DEFAULT NULL,
  `EMAIL` varchar(20) DEFAULT NULL,
  `USERNAME` varchar(20) DEFAULT NULL,
  `PASSWORD` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` varchar(20) DEFAULT NULL,
  `EMAIL` varchar(20) DEFAULT NULL,
  `PASSWORD` varchar(20) DEFAULT NULL,
  `PHONE_NUMBER` int(11) DEFAULT NULL,
  `FIRST_NAME` varchar(20) DEFAULT NULL,
  `LASTNAME` varchar(20) DEFAULT NULL,
  `ADDRESS` varchar(20) DEFAULT NULL,
  `PINCODE` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
