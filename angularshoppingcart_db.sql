-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 14, 2021 at 08:25 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `angularshoppingcart_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_image` varchar(1000) NOT NULL,
  `p_prize` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`p_id`, `p_name`, `p_image`, `p_prize`) VALUES
(1, 'Sumsung Galaxy m31', 'images/1.png', 15999),
(2, 'iPhone 12', 'images/2.png', 150999),
(3, 'Lenovo Yoga', 'images/3.png', 80999),
(4, 'MacBook Pro with M1 chip', 'images/4.png', 160999);

-- --------------------------------------------------------

--
-- Table structure for table `user_cart`
--

CREATE TABLE `user_cart` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_image` varchar(1000) NOT NULL,
  `p_prize` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_cart`
--

INSERT INTO `user_cart` (`p_id`, `p_name`, `p_image`, `p_prize`) VALUES
(3, 'iPhone 12', 'images/2.png', 150999),
(4, 'MacBook Pro with M1 chip', 'images/4.png', 160999),
(5, 'Lenovo Yoga', 'images/3.png', 80999),
(6, 'Sumsung Galaxy m31', 'images/1.png', 15999),
(7, 'iPhone 12', 'images/2.png', 150999),
(8, 'iPhone 12', 'images/2.png', 150999),
(9, 'Lenovo Yoga', 'images/3.png', 80999),
(10, 'Sumsung Galaxy m31', 'images/1.png', 15999),
(11, 'MacBook Pro with M1 chip', 'images/4.png', 160999),
(12, 'MacBook Pro with M1 chip', 'images/4.png', 160999);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `user_cart`
--
ALTER TABLE `user_cart`
  ADD PRIMARY KEY (`p_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_cart`
--
ALTER TABLE `user_cart`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
