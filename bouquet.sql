-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 26, 2021 at 12:55 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bouquet`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `id` int(50) NOT NULL,
  `name` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`id`, `name`, `username`, `password`, `status`) VALUES
(1, '', 'admin', 'admin123', ''),
(2, 'emelisa', 'emelisa', 'emelisa', ''),
(3, 'rafols', 'rafols', 'rafols', ''),
(4, 'jessa', 'jessa', 'jessa', ''),
(5, '', 'nelson', 'nelson', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `bouquet`
--

CREATE TABLE `bouquet` (
  `id` int(13) NOT NULL,
  `type` varchar(200) NOT NULL,
  `pieces` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bouquet`
--

INSERT INTO `bouquet` (`id`, `type`, `pieces`) VALUES
(37, 'singlestem', 100),
(38, 'cascade', 100),
(39, 'nosegay', 100),
(40, 'posey', 100),
(41, 'round', 100),
(42, 'beidermeir', 100),
(43, 'handtied', 100),
(44, 'contemporary', 100),
(45, 'composite', 100);

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `fullname` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phonenumber` varchar(11) NOT NULL,
  `flowertype` varchar(50) NOT NULL,
  `pieces` int(100) NOT NULL,
  `price` int(100) NOT NULL,
  `id` int(100) NOT NULL,
  `payment` int(100) NOT NULL,
  `total` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`fullname`, `address`, `phonenumber`, `flowertype`, `pieces`, `price`, `id`, `payment`, `total`) VALUES
('emelisa', 'negros', '09878765434', 'cascade', 12, 1, 33, 15, 12);

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `total` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`total`) VALUES
(2703),
(2703),
(2703),
(2703),
(2703),
(2703),
(2703),
(2703),
(2703),
(2703),
(2703),
(2703),
(2703),
(2703),
(2703);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogin`
--
ALTER TABLE `adminlogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bouquet`
--
ALTER TABLE `bouquet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminlogin`
--
ALTER TABLE `adminlogin`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bouquet`
--
ALTER TABLE `bouquet`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
