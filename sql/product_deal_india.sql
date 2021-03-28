-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2021 at 07:51 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `product_deal_india`
--

-- --------------------------------------------------------

--
-- Table structure for table `announce`
--

CREATE TABLE `announce` (
  `Id` int(11) NOT NULL,
  `Message` varchar(100) NOT NULL,
  `Color` varchar(100) NOT NULL,
  `Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `announce`
--

INSERT INTO `announce` (`Id`, `Message`, `Color`, `Date`) VALUES
(6, 'palani bad boy', 'alert alert-danger', '2021-03-28');

-- --------------------------------------------------------

--
-- Table structure for table `billinginfo`
--

CREATE TABLE `billinginfo` (
  `fname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `add1` varchar(100) NOT NULL,
  `add2` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `zip` varchar(100) NOT NULL,
  `payment` varchar(100) NOT NULL,
  `Id` int(11) NOT NULL,
  `Customerid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billinginfo`
--

INSERT INTO `billinginfo` (`fname`, `lastname`, `email`, `add1`, `add2`, `country`, `state`, `zip`, `payment`, `Id`, `Customerid`) VALUES
('Pala', 'aksd', 'asd@g.com', '1234main strt', 'chennai', 'BAHRAIN', 'California', '123456', 'cash', 1, 0),
('KG', 'KG', 'asd@g.com', '12 cen', 'edu', 'BANGLADESH', 'California', '123', 'cash', 2, 0),
('', '', '', '', '', '', '', '', 'credit', 3, 0),
('', '', '', '', '', '', '', '', '', 4, 0),
('', '', '', '', '', '', '', '', '', 5, 0),
('', '', '', '', '', '', '', '', '', 6, 0),
('', '', '', '', '', '', '', '', '', 7, 0),
('', '', '', '', '', '', '', '', '', 8, 3),
('', '', '', '', '', '', '', '', '', 9, 3),
('', '', '', '', '', '', '', '', '', 10, 3),
('', '', '', '', '', '', '', '', '', 11, 3),
('', '', '', '', '', '', '', '', '', 12, 3),
('', '', '', '', '', '', '', '', '', 13, 3),
('', '', '', '', '', '', '', '', '', 14, 3),
('', '', '', '', '', '', '', '', '', 15, 3),
('', '', '', '', '', '', '', '', '', 16, 3),
('', '', '', '', '', '', '', '', '', 17, 3),
('', '', '', '', '', '', '', '', '', 18, 3),
('', '', '', '', '', '', '', '', '', 19, 3),
('', '', '', '', '', '', '', '', '', 20, 3),
('', '', '', '', '', '', '', '', '', 21, 3),
('', '', '', '', '', '', '', '', '', 22, 3),
('', '', '', '', '', '', '', '', '', 23, 3),
('', '', '', '', '', '', '', '', '', 24, 3),
('', '', '', '', '', '', '', '', '', 25, 3),
('', '', '', '', '', '', '', '', '', 26, 3),
('', '', '', '', '', '', '', '', 'credit', 27, 3),
('', '', '', '', '', '', '', '', 'credit', 28, 3),
('', '', '', '', '', '', '', '', 'credit', 29, 0),
('', '', '', '', '', '', '', '', 'credit', 30, 3),
('', '', '', '', '', '', '', '', 'credit', 31, 3),
('', '', '', '', '', '', '', '', 'credit', 32, 3),
('', '', '', '', '', '', '', '', 'credit', 33, 3),
('', '', '', '', '', '', '', '', 'credit', 34, 3),
('', '', '', '', '', '', '', '', 'credit', 35, 3);

-- --------------------------------------------------------

--
-- Table structure for table `message_admin`
--

CREATE TABLE `message_admin` (
  `ID` int(11) NOT NULL,
  `FIRSTNAME` varchar(100) NOT NULL,
  `LASTNAME` varchar(100) NOT NULL,
  `COUNTRY` varchar(100) NOT NULL,
  `SUBJECT` varchar(1000) NOT NULL,
  `TIME` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message_admin`
--

INSERT INTO `message_admin` (`ID`, `FIRSTNAME`, `LASTNAME`, `COUNTRY`, `SUBJECT`, `TIME`) VALUES
(0, 'kaushik', 'palani', 'CHINA', 'message 1', '2021-02-03 06:13:25pm'),
(0, 'kaushik', 'aaa', 'AFGHANISTAN', 'dfs', '2021-03-28 01:00:38pm');

-- --------------------------------------------------------

--
-- Table structure for table `order1`
--

CREATE TABLE `order1` (
  `Id` int(11) NOT NULL,
  `Cid` int(11) NOT NULL,
  `Sid` int(11) NOT NULL,
  `Qty` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order1`
--

INSERT INTO `order1` (`Id`, `Cid`, `Sid`, `Qty`, `Date`, `Price`) VALUES
(8, 3, 93, 0, '2021-03-27', 0),
(9, 3, 93, 3, '2021-03-27', 0),
(10, 0, 94, 9, '2021-03-27', 0),
(11, 3, 112, 1, '2021-03-28', 0),
(12, 3, 112, 1, '2021-03-28', 0),
(13, 3, 112, 1, '2021-03-28', 0),
(14, 3, 112, 1, '2021-03-28', 0),
(15, 3, 112, 1, '2021-03-28', 0),
(16, 3, 112, 1, '2021-03-28', 0);

-- --------------------------------------------------------

--
-- Table structure for table `orderhistory`
--

CREATE TABLE `orderhistory` (
  `Id` int(11) NOT NULL,
  `Accept` int(11) NOT NULL,
  `Decline` int(11) NOT NULL,
  `Orderid` int(11) NOT NULL,
  `Pending` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderhistory`
--

INSERT INTO `orderhistory` (`Id`, `Accept`, `Decline`, `Orderid`, `Pending`) VALUES
(1, 1, 1, 8, NULL),
(2, 0, 1, 8, NULL),
(3, 0, 1, 9, NULL),
(4, 0, 1, 10, NULL),
(5, 1, 0, 8, NULL),
(6, 1, 0, 9, NULL),
(7, 1, 0, 10, NULL),
(8, 1, 0, 8, NULL),
(9, 1, 0, 9, NULL),
(10, 1, 0, 10, NULL),
(11, 1, 0, 8, NULL),
(12, 1, 0, 9, NULL),
(13, 1, 0, 10, NULL),
(14, 0, 1, 8, NULL),
(15, 0, 1, 9, NULL),
(16, 0, 1, 10, NULL),
(17, 0, 1, 8, NULL),
(18, 0, 1, 9, NULL),
(19, 0, 1, 10, NULL),
(20, 0, 1, 8, NULL),
(21, 0, 1, 9, NULL),
(22, 0, 1, 10, NULL),
(23, 0, 1, 8, NULL),
(24, 0, 1, 9, NULL),
(25, 0, 1, 10, NULL);

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
  `ID` int(11) NOT NULL,
  `NAME` char(200) DEFAULT NULL,
  `PRODUCT_DESCRIPTION` char(100) DEFAULT NULL,
  `PRICE` int(11) DEFAULT NULL,
  `IMAGE` longblob NOT NULL,
  `CATEGORY` varchar(20) DEFAULT NULL,
  `BRAND` char(30) DEFAULT NULL,
  `sellerid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ID`, `NAME`, `PRODUCT_DESCRIPTION`, `PRICE`, `IMAGE`, `CATEGORY`, `BRAND`, `sellerid`) VALUES
(92, 'Apple IWatch Series', 'GPS, Always-On Retina display, 30% larger screen\r\nSwimproof, ECG app, Electrical and optical heart s', 40000, 0x456c6563746f6d6963735f332e6a7067, 'Electronics', 'Apple', 3),
(93, 'Samung 42inch OLED TV', 'Resolution: 4K Ultra HD (3840x2160) | Refresh Rate: 60 hertz\r\nConnectivity: 3 HDMI ports to connect', 49999, 0x456c6563746f6d6963735f342e6a7067, 'Electronics', 'Samsung', NULL),
(94, 'Nike Running shoes', '', 4999, 0x53706f7274735f342e6a7067, 'Sports', 'Nike', NULL),
(95, 'Levis Jeans Trousers', '', 3499, 0x436c6f7468696e675f322e6a7067, 'Clothing', 'Levis', NULL),
(96, 'Louis Philippe Regul', '', 7500, 0x436c6f7468696e675f342e6a7067, 'Clothing', 'Louis Philippe', NULL),
(97, 'Nivia Tennnis Racket', '', 12399, 0x53706f7274735f312e6a7067, 'Sports', 'Nivia', NULL),
(98, 'A Brief History of Time', '', 1499, 0x626f6f6b735f332e6a7067, 'Books', 'Stephen Hawking', NULL),
(99, 'Alienware Gaming Lap', '', 350000, 0x456c6563746f6d6963735f312e6a7067, 'Electronics', 'Dell', NULL),
(100, 'Cannon 200D DSLR', '', 60000, 0x456c6563746f6d6963735f352e6a7067, 'Electronics', 'Cannon', NULL),
(101, 'Cannon Colour Printe', '', 15000, 0x456c6563746f6d6963735f322e6a7067, 'Electronics', 'Cannon', NULL),
(102, 'Crocodile T-Shirts', '', 1299, 0x436c6f7468696e675f332e6a7067, 'Clothing', 'Crocodile', NULL),
(103, 'Woollen Sweater', '', 6500, 0x436c6f7468696e675f352e6a7067, 'Clothing', 'Con', NULL),
(104, 'Track Suits(Sports)', '', 4999, 0x436c6f7468696e675f312e6a7067, 'Clothing', 'Adidas', NULL),
(105, 'Yonex Badminton Rack', '', 4999, 0x53706f7274735f322e6a7067, 'Sports', 'Yonex', NULL),
(107, 'English Willow Crick', '', 7800, 0x53706f7274735f332e6a7067, 'Sports', 'CEAT', NULL),
(108, 'Life of Pi', '', 2200, 0x626f6f6b735f322e6a7067, 'Books', 'Yann Martel', NULL),
(109, 'Five Point Someone', '', 500, 0x626f6f6b735f312e6a7067, 'Books', 'Chetan Bhagat', NULL),
(110, 'Dracula', '', 1000, 0x626f6f6b735f342e6a7067, 'Books', 'Bram Stoker', NULL),
(111, 'Black Holes and Baby', '', 999, 0x626f6f6b735f352e6a7067, 'Books', 'Stephen Hawking', NULL),
(112, 'Wakefit Sofa', '', 19999, 0x486f6d655f322e6a7067, 'Home&Furniture', 'Wakefit', NULL),
(113, 'Wakefit Bed', '', 25000, 0x486f6d655f332e6a7067, 'Home&Furniture', 'Wakefit', NULL),
(114, 'Prestige Kitchen Coo', '', 3999, 0x486f6d655f312e6a7067, 'Home&Furniture', 'Prestige', NULL),
(115, 'Kittens Coffee Mug', '', 599, 0x486f6d655f352e6a7067, 'Home&Furniture', 'Kittens', 3),
(116, 'Jen House Lightings', '', 1999, 0x486f6d655f342e6a7067, 'Home&Furniture', 'Jen', NULL),
(118, 'phone', 'd', 40000, 0x626f6f6b735f312e6a7067, 'Electronics', 'a', NULL),
(122, 'new', 'q', 4999, 0x6c6170746f705f504e47353933392e706e67, 'Electronics', 'q', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ratingandreview`
--

CREATE TABLE `ratingandreview` (
  `Id` int(11) NOT NULL,
  `Customerid` int(11) NOT NULL,
  `Productid` int(11) NOT NULL,
  `Star` int(11) NOT NULL,
  `Review` varchar(100) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ratingandreview`
--

INSERT INTO `ratingandreview` (`Id`, `Customerid`, `Productid`, `Star`, `Review`, `date`) VALUES
(1, 1, 92, 3, 'dsafg', '2021-03-27'),
(2, 1, 92, 2, 'sddf', '2021-03-27'),
(4, 1, 98, 5, 'kaushik', '2021-03-27'),
(5, 1, 98, 3, 'sdfgrdgf', '2021-03-27'),
(6, 1, 98, 3, 'sdfgrdgf', '2021-03-27'),
(7, 1, 94, 3, 'shoe', '2021-03-27'),
(8, 1, 94, 3, 'sdf', '2021-03-27'),
(9, 1, 94, 5, 'palaion', '2021-03-27'),
(10, 1, 94, 2, 'kauigdf', '2021-03-27'),
(11, 1, 94, 1, 'palani', '2021-03-27'),
(12, 1, 93, 5, 'sdfh', '2021-03-27'),
(13, 1, 93, 3, 'Kas', '2021-03-27'),
(14, 1, 93, 1, 'asd', '2021-03-27'),
(15, 1, 93, 1, 'asd', '2021-03-27'),
(16, 0, 102, 3, 'Good', '2021-03-28'),
(17, 0, 95, 2, 'Good', '2021-03-28'),
(18, 0, 96, 3, 'Good', '2021-03-28'),
(19, 0, 97, 5, 'Good', '2021-03-28'),
(20, 0, 99, 4, 'Superb', '2021-03-28'),
(21, 0, 100, 1, 'Good', '2021-03-28'),
(22, 0, 101, 4, 'Good', '2021-03-28'),
(23, 0, 103, 5, 'Nice Product', '2021-03-28'),
(24, 0, 104, 4, 'Nice Product', '2021-03-28'),
(25, 0, 105, 3, 'Nice Product', '2021-03-28'),
(26, 0, 107, 4, 'Super', '2021-03-28'),
(27, 0, 108, 4, 'Nice Product', '2021-03-28'),
(28, 0, 109, 1, 'Bad Quality', '2021-03-28'),
(29, 0, 110, 4, 'Good', '2021-03-28'),
(30, 0, 111, 5, 'Nice Product', '2021-03-28'),
(31, 0, 112, 3, 'good', '2021-03-28'),
(32, 0, 105, 4, 'good', '2021-03-28');

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `ID` int(10) NOT NULL,
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
  `PASSWORD` varchar(20) DEFAULT NULL,
  `FNAME` varchar(255) DEFAULT NULL,
  `LNAME` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`ID`, `STORE_NAME`, `ADD1`, `ADD2`, `CITY`, `STATE`, `COUNTRY`, `ZIP`, `PHONE`, `EMAIL`, `USERNAME`, `PASSWORD`, `FNAME`, `LNAME`) VALUES
(1, '', '', '', '', '', '- Select one Option ', 0, 0, '', '', '', '', ''),
(2, 's', 's', 's', 's', 's', 'BRUNEI', 0, 0, 'achintyavatsraj30@gm', 'kaushik', 'a', 'aa', 'a'),
(3, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(4, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(5, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(6, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '6941', 'a', 'a', 'a'),
(7, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(8, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(9, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a) AND 2212=5420 AND', 'a', 'a', 'a'),
(10, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a) AND 4207=4207 AND', 'a', 'a', 'a'),
(11, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a AND 3229=1387', 'a', 'a', 'a'),
(12, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a AND 4207=4207', 'a', 'a', 'a'),
(13, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a AND 3785=6028-- px', 'a', 'a', 'a'),
(14, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a AND 4207=4207-- Uu', 'a', 'a', 'a'),
(15, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(16, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a) AND (SELECT 2590 ', 'a', 'a', 'a'),
(17, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a AND (SELECT 2590 F', 'a', 'a', 'a'),
(18, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a AND (SELECT 2590 F', 'a', 'a', 'a'),
(19, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a) AND 1164=CAST((CH', 'a', 'a', 'a'),
(20, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a AND 1164=CAST((CHR', 'a', 'a', 'a'),
(21, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a AND 1164=CAST((CHR', 'a', 'a', 'a'),
(22, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(23, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a) AND 5272 IN (SELE', 'a', 'a', 'a'),
(24, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a AND 5272 IN (SELEC', 'a', 'a', 'a'),
(25, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a AND 5272 IN (SELEC', 'a', 'a', 'a'),
(26, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a) AND 5863=(SELECT ', 'a', 'a', 'a'),
(27, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a AND 5863=(SELECT U', 'a', 'a', 'a'),
(28, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a AND 5863=(SELECT U', 'a', 'a', 'a'),
(29, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '(SELECT 4750 FROM(SE', 'a', 'a', 'a'),
(30, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a);SELECT PG_SLEEP(5', 'a', 'a', 'a'),
(31, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a;SELECT PG_SLEEP(5)', 'a', 'a', 'a'),
(32, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a);SELECT DBMS_PIPE.', 'a', 'a', 'a'),
(33, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a;SELECT DBMS_PIPE.R', 'a', 'a', 'a'),
(34, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(35, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(36, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(37, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(38, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(39, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(40, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(41, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(42, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(43, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', '6110', 'a'),
(44, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', '0', 'a'),
(45, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', '0', 'a'),
(46, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a) AND 3071=8023 AND (5406=5406', 'a'),
(47, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a) AND 4569=4569 AND (2557=2557', 'a'),
(48, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a AND 9892=3824', 'a'),
(49, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a AND 4569=4569', 'a'),
(50, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a AND 4233=5873-- NvwR', 'a'),
(51, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a AND 4569=4569-- nYBK', 'a'),
(52, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', '(SELECT (CASE WHEN (9277=4318) THEN 0x61 ELSE (SELECT 4318 UNION SELECT 6871) END))', 'a'),
(53, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', '(SELECT (CASE WHEN (4360=4360) THEN 0x61 ELSE (SELECT 8701 UNION SELECT 1640) END))', 'a'),
(54, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', '(SELECT CONCAT(CONCAT(0x7178706271,(CASE WHEN (5764=5764) THEN 0x31 ELSE 0x30 END)),0x7170717671))', 'a'),
(55, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a) ORDER BY 1-- -', 'a'),
(56, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a) ORDER BY 7925-- -', 'a'),
(57, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a ORDER BY 1-- -', 'a'),
(58, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a ORDER BY 2478-- -', 'a'),
(59, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a ORDER BY 1-- -', 'a'),
(60, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a ORDER BY 8137-- -', 'a'),
(61, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', '1115'),
(62, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', '0'),
(63, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', '0'),
(64, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a) AND 3747=9508 AND (7978=7978'),
(65, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a) AND 1320=1320 AND (4062=4062'),
(66, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a AND 2313=8889'),
(67, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a AND 1320=1320'),
(68, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a AND 9585=8332-- NqhU'),
(69, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a AND 1320=1320-- uqpI'),
(70, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', '(SELECT (CASE WHEN (9703=6180) THEN 0x61 ELSE (SELECT 6180 UNION SELECT 6433) END))'),
(71, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', '(SELECT (CASE WHEN (9203=9203) THEN 0x61 ELSE (SELECT 2591 UNION SELECT 9106) END))'),
(72, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', '(SELECT CONCAT(CONCAT(0x7178706271,(CASE WHEN (6246=6246) THEN 0x31 ELSE 0x30 END)),0x7170717671))'),
(73, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(74, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(75, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a) ORDER BY 1-- -'),
(76, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a) ORDER BY 3145-- -'),
(77, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a ORDER BY 1-- -'),
(78, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a ORDER BY 6463-- -'),
(79, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a ORDER BY 1-- -'),
(80, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a ORDER BY 1038-- -'),
(81, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, '6009', 'a', 'a', 'a', 'a'),
(82, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, '0', 'a', 'a', 'a', 'a'),
(83, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, '0', 'a', 'a', 'a', 'a'),
(84, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a) AND 9479=8658 AND', 'a', 'a', 'a', 'a'),
(85, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a) AND 9677=9677 AND', 'a', 'a', 'a', 'a'),
(86, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a AND 5553=8789', 'a', 'a', 'a', 'a'),
(87, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a AND 9677=9677', 'a', 'a', 'a', 'a'),
(88, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a AND 7235=3099-- kH', 'a', 'a', 'a', 'a'),
(89, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a AND 9677=9677-- qA', 'a', 'a', 'a', 'a'),
(90, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, '(SELECT (CASE WHEN (', 'a', 'a', 'a', 'a'),
(91, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, '(SELECT (CASE WHEN (', 'a', 'a', 'a', 'a'),
(92, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, '(SELECT CONCAT(CONCA', 'a', 'a', 'a', 'a'),
(93, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a) ORDER BY 1-- -', 'a', 'a', 'a', 'a'),
(94, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a) ORDER BY 3330-- -', 'a', 'a', 'a', 'a'),
(95, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a ORDER BY 1-- -', 'a', 'a', 'a', 'a'),
(96, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a ORDER BY 9946-- -', 'a', 'a', 'a', 'a'),
(97, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a ORDER BY 1-- -', 'a', 'a', 'a', 'a'),
(98, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a ORDER BY 7782-- -', 'a', 'a', 'a', 'a'),
(99, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', '6782', 'a', 'a'),
(100, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', '0', 'a', 'a'),
(101, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', '0', 'a', 'a'),
(102, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a) AND 1306=3502 AND', 'a', 'a'),
(103, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a) AND 2784=2784 AND', 'a', 'a'),
(104, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a AND 6104=2021', 'a', 'a'),
(105, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a AND 2784=2784', 'a', 'a'),
(106, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a AND 8959=9845-- jO', 'a', 'a'),
(107, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a AND 2784=2784-- wW', 'a', 'a'),
(108, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', '(SELECT (CASE WHEN (', 'a', 'a'),
(109, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', '(SELECT (CASE WHEN (', 'a', 'a'),
(110, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', '(SELECT CONCAT(CONCA', 'a', 'a'),
(111, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a) ORDER BY 1-- -', 'a', 'a'),
(112, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a) ORDER BY 6258-- -', 'a', 'a'),
(113, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a ORDER BY 1-- -', 'a', 'a'),
(114, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a ORDER BY 6910-- -', 'a', 'a'),
(115, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a ORDER BY 1-- -', 'a', 'a'),
(116, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a ORDER BY 7856-- -', 'a', 'a'),
(117, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(118, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(119, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(120, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(121, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(122, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(123, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(124, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(125, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(126, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(127, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(128, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(129, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(130, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(131, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(132, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(133, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(134, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(135, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(136, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(137, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 5266, 'a', 'a', 'a', 'a', 'a'),
(138, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(139, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(140, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(141, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(142, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(143, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(144, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(145, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(146, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(147, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(148, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(149, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(150, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(151, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(152, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(153, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(154, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(155, '5070', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(156, '0', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(157, '0', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(158, 'a) AND 5162=5240 AND', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(159, 'a) AND 5675=5675 AND', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(160, 'a AND 5226=7690', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(161, 'a AND 5675=5675', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(162, 'a AND 3520=5614-- wV', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(163, 'a AND 5675=5675-- RO', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(164, '(SELECT (CASE WHEN (', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(165, '(SELECT (CASE WHEN (', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(166, '(SELECT CONCAT(CONCA', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(167, 'a) ORDER BY 1-- -', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(168, 'a) ORDER BY 3503-- -', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(169, 'a ORDER BY 1-- -', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(170, 'a ORDER BY 3271-- -', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(171, 'a ORDER BY 1-- -', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(172, 'a ORDER BY 6582-- -', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(173, 'a', '7359', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(174, 'a', '0', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(175, 'a', '0', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(176, 'a', 'a) AND 5472=8361 AND', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(177, 'a', 'a) AND 8092=8092 AND', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(178, 'a', 'a AND 9262=1141', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(179, 'a', 'a AND 8092=8092', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(180, 'a', 'a AND 1437=9278-- Sv', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(181, 'a', 'a AND 8092=8092-- TK', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(182, 'a', '(SELECT (CASE WHEN (', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(183, 'a', '(SELECT (CASE WHEN (', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(184, 'a', '(SELECT CONCAT(CONCA', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(185, 'a', 'a) ORDER BY 1-- -', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(186, 'a', 'a) ORDER BY 7460-- -', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(187, 'a', 'a ORDER BY 1-- -', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(188, 'a', 'a ORDER BY 5034-- -', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(189, 'a', 'a ORDER BY 1-- -', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(190, 'a', 'a ORDER BY 3203-- -', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(191, 'a', 'a', '1673', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(192, 'a', 'a', '0', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(193, 'a', 'a', '0', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(194, 'a', 'a', 'a) AND 3236=1874 AND', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(195, 'a', 'a', 'a) AND 1748=1748 AND', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(196, 'a', 'a', 'a AND 7609=8136', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(197, 'a', 'a', 'a AND 1748=1748', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(198, 'a', 'a', 'a AND 8368=2370-- ug', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(199, 'a', 'a', 'a AND 1748=1748-- CV', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(200, 'a', 'a', '(SELECT (CASE WHEN (', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(201, 'a', 'a', '(SELECT (CASE WHEN (', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(202, 'a', 'a', '(SELECT CONCAT(CONCA', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(203, 'a', 'a', 'a) ORDER BY 1-- -', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(204, 'a', 'a', 'a) ORDER BY 7800-- -', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(205, 'a', 'a', 'a ORDER BY 1-- -', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(206, 'a', 'a', 'a ORDER BY 8885-- -', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(207, 'a', 'a', 'a ORDER BY 1-- -', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(208, 'a', 'a', 'a ORDER BY 2715-- -', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(209, 'a', 'a', 'a', '7524', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(210, 'a', 'a', 'a', '0', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(211, 'a', 'a', 'a', '0', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(212, 'a', 'a', 'a', 'a) AND 4617=8050 AND', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(213, 'a', 'a', 'a', 'a) AND 8570=8570 AND', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(214, 'a', 'a', 'a', 'a AND 4696=2754', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(215, 'a', 'a', 'a', 'a AND 8570=8570', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(216, 'a', 'a', 'a', 'a AND 8181=3513-- CZ', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(217, 'a', 'a', 'a', 'a AND 8570=8570-- Nk', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(218, 'a', 'a', 'a', '(SELECT (CASE WHEN (', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(219, 'a', 'a', 'a', '(SELECT (CASE WHEN (', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(220, 'a', 'a', 'a', '(SELECT CONCAT(CONCA', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(221, 'a', 'a', 'a', 'a) ORDER BY 1-- -', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(222, 'a', 'a', 'a', 'a) ORDER BY 6742-- -', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(223, 'a', 'a', 'a', 'a ORDER BY 1-- -', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(224, 'a', 'a', 'a', 'a ORDER BY 3669-- -', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(225, 'a', 'a', 'a', 'a ORDER BY 1-- -', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(226, 'a', 'a', 'a', 'a ORDER BY 2151-- -', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(227, 'a', 'a', 'a', 'a', '1325', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(228, 'a', 'a', 'a', 'a', '0', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(229, 'a', 'a', 'a', 'a', '0', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(230, 'a', 'a', 'a', 'a', 'a) AND 7551=7387 AND', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(231, 'a', 'a', 'a', 'a', 'a) AND 6625=6625 AND', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(232, 'a', 'a', 'a', 'a', 'a AND 6305=7518', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(233, 'a', 'a', 'a', 'a', 'a AND 6625=6625', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(234, 'a', 'a', 'a', 'a', 'a AND 3624=5021-- fv', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(235, 'a', 'a', 'a', 'a', 'a AND 6625=6625-- yb', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(236, 'a', 'a', 'a', 'a', '(SELECT (CASE WHEN (', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(237, 'a', 'a', 'a', 'a', '(SELECT (CASE WHEN (', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(238, 'a', 'a', 'a', 'a', '(SELECT CONCAT(CONCA', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(239, 'a', 'a', 'a', 'a', 'a) ORDER BY 1-- -', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(240, 'a', 'a', 'a', 'a', 'a) ORDER BY 5782-- -', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(241, 'a', 'a', 'a', 'a', 'a ORDER BY 1-- -', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(242, 'a', 'a', 'a', 'a', 'a ORDER BY 9125-- -', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(243, 'a', 'a', 'a', 'a', 'a ORDER BY 1-- -', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(244, 'a', 'a', 'a', 'a', 'a ORDER BY 5244-- -', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(245, 'a', 'a', 'a', 'a', 'a', '7528', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(246, 'a', 'a', 'a', 'a', 'a', '0', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(247, 'a', 'a', 'a', 'a', 'a', '0', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(248, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN) AND 849', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(249, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN) AND 489', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(250, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN AND 5401', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(251, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN AND 4890', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(252, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN AND 2945', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(253, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN AND 4890', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(254, 'a', 'a', 'a', 'a', 'a', '(SELECT (CASE WHEN (', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(255, 'a', 'a', 'a', 'a', 'a', '(SELECT (CASE WHEN (', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(256, 'a', 'a', 'a', 'a', 'a', '(SELECT CONCAT(CONCA', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(257, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN) ORDER B', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(258, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN) ORDER B', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(259, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN ORDER BY', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(260, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN ORDER BY', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(261, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN ORDER BY', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(262, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN ORDER BY', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(263, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 8944, 0, 'a', 'a', 'a', 'a', 'a'),
(264, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(265, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(266, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(267, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(268, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(269, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(270, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(271, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(272, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(273, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(274, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(275, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(276, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(277, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(278, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(279, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(280, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(281, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(282, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(283, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(284, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(285, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(286, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(287, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(288, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(289, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(290, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(291, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(292, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(293, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(294, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(295, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(296, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(297, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(298, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(299, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(300, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(301, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(302, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(303, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(304, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(305, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(306, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(307, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(308, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(309, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(310, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(311, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(312, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(313, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(314, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(315, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(316, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(317, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(318, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(319, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(320, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(321, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(322, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(323, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(324, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(325, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(326, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(327, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(328, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(329, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(330, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(331, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(332, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(333, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(334, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(335, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(336, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(337, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(338, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(339, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(340, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(341, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(342, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(343, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(344, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(345, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(346, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(347, 'a', 'a', 'a', 'a', 'a', 'AFGHANISTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(348, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(349, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(350, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(351, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(352, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(353, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(354, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(355, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(356, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(357, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(358, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(359, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(360, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(361, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(362, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(363, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(364, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(365, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(366, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(367, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(368, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(369, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(370, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(371, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(372, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(373, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(374, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(375, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(376, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(377, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(378, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(379, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(380, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(381, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(382, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(383, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(384, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(385, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(386, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(387, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(388, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(389, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(390, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(391, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(392, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(393, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(394, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(395, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(396, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(397, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(398, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(399, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(400, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(401, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(402, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(403, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(404, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(405, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(406, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(407, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(408, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(409, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(410, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(411, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(412, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(413, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(414, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(415, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(416, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(417, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(418, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(419, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(420, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(421, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(422, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(423, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(424, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(425, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(426, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(427, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(428, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(429, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(430, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(431, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(432, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(433, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(434, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(435, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(436, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(437, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(438, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(439, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(440, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(441, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(442, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(443, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(444, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(445, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(446, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(447, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(448, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(449, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(450, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(451, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(452, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(453, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(454, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(455, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(456, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(457, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(458, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(459, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(460, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(461, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(462, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(463, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(464, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(465, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(466, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(467, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(468, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(469, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(470, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(471, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(472, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(473, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(474, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(475, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(476, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(477, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(478, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(479, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(480, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(481, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(482, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(483, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(484, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(485, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(486, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(487, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(488, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(489, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(490, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(491, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(492, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(493, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(494, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(495, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(496, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(497, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(498, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(499, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(500, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(501, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(502, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(503, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(504, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(505, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(506, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(507, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(508, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(509, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(510, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(511, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(512, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(513, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(514, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(515, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(516, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(517, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(518, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(519, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(520, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(521, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(522, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(523, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(524, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(525, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(526, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(527, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(528, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(529, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(530, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(531, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(532, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(533, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(534, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(535, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(536, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(537, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(538, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(539, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(540, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(541, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(542, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(543, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(544, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(545, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(546, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(547, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(548, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(549, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(550, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(551, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(552, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(553, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(554, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(555, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(556, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(557, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(558, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(559, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(560, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(561, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(562, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(563, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(564, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(565, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(566, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(567, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(568, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(569, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(570, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(571, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(572, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(573, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(574, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(575, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(576, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(577, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(578, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(579, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(580, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(581, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(582, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(583, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(584, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(585, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(586, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(587, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(588, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(589, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(590, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(591, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(592, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(593, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(594, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(595, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(596, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(597, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(598, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(599, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(600, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', 'a', 'a', 'a', 'a'),
(601, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(602, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(603, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(604, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(605, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(606, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(607, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(608, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(609, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(610, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(611, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(612, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(613, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(614, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(615, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(616, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(617, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(618, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(619, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(620, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(621, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(622, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(623, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(624, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(625, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(626, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(627, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(628, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(629, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(630, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(631, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a');
INSERT INTO `seller` (`ID`, `STORE_NAME`, `ADD1`, `ADD2`, `CITY`, `STATE`, `COUNTRY`, `ZIP`, `PHONE`, `EMAIL`, `USERNAME`, `PASSWORD`, `FNAME`, `LNAME`) VALUES
(632, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(633, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(634, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(635, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(636, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(637, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(638, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(639, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(640, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(641, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(642, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(643, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(644, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(645, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(646, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(647, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(648, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(649, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(650, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(651, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(652, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(653, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(654, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(655, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(656, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(657, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(658, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a'),
(659, 'a', 'a', 'a', 'a', 'a', 'BHUTAN', 0, 0, 'a', '0', 'a', 'a', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(10) NOT NULL,
  `EMAIL` varchar(20) DEFAULT NULL,
  `PASSWORD` varchar(20) DEFAULT NULL,
  `PHONE_NUMBER` char(10) DEFAULT NULL,
  `FIRST_NAME` varchar(20) DEFAULT NULL,
  `LASTNAME` varchar(20) DEFAULT NULL,
  `ADDRESS` varchar(20) DEFAULT NULL,
  `PINCODE` int(11) DEFAULT NULL,
  `username` char(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `EMAIL`, `PASSWORD`, `PHONE_NUMBER`, `FIRST_NAME`, `LASTNAME`, `ADDRESS`, `PINCODE`, `username`) VALUES
(1, 'k', 'k', '0', 'k', 'k', 'k', 0, 'kaushik'),
(2, 'a', '+4', '8300003580', 'a', 'a', '4', 4, 'a'),
(3, 'b', 'b', 'b', 'b', 'b', 'b', 0, 'kaushik'),
(4, 'q', 'q', 'q', 'q', 'q', 'q', 0, 'q'),
(5, 'q', 'q', 'q', 'q', 'q', 'q', 0, 'q'),
(6, 'q', 's', 'q', 'q', 'q', 'q', 0, 'q');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announce`
--
ALTER TABLE `announce`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `billinginfo`
--
ALTER TABLE `billinginfo`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `order1`
--
ALTER TABLE `order1`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `orderhistory`
--
ALTER TABLE `orderhistory`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ratingandreview`
--
ALTER TABLE `ratingandreview`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announce`
--
ALTER TABLE `announce`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `billinginfo`
--
ALTER TABLE `billinginfo`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `order1`
--
ALTER TABLE `order1`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `orderhistory`
--
ALTER TABLE `orderhistory`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `ratingandreview`
--
ALTER TABLE `ratingandreview`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `seller`
--
ALTER TABLE `seller`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=660;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
