-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- දායකයා: 127.0.0.1
-- උත්පාදන වේලාව: අගෝස්තු 06, 2023 දින 09:12 PM ට
-- සේවාදායකයේ අනුවාදය: 10.4.28-MariaDB
-- PHP අනුවාදය: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- දත්තගබඩාව: `testdb`
--

-- --------------------------------------------------------

--
-- වගුවක් සඳහා වගු සැකිල්ල `admins`
--

CREATE TABLE `admins` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `username` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- වගු සඳහා නික්ෂේප දත්ත `admins`
--

INSERT INTO `admins` (`user_id`, `first_name`, `last_name`, `password`, `username`) VALUES
(1, 'testAdmin', 'tests', '12345678', 'admin');

-- --------------------------------------------------------

--
-- වගුවක් සඳහා වගු සැකිල්ල `buy`
--

CREATE TABLE `buy` (
  `product_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `total` int(20) NOT NULL,
  `order_id` int(20) NOT NULL,
  `autoincrement` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- වගුවක් සඳහා වගු සැකිල්ල `cart`
--

CREATE TABLE `cart` (
  `product_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `total` int(20) NOT NULL,
  `autoincrement` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- වගුවක් සඳහා වගු සැකිල්ල `category`
--

CREATE TABLE `category` (
  `category_id` int(10) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- වගු සඳහා නික්ෂේප දත්ත `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'Fashion'),
(2, 'Electrik');

-- --------------------------------------------------------

--
-- වගුවක් සඳහා වගු සැකිල්ල `coupon`
--

CREATE TABLE `coupon` (
  `coupon_code` varchar(50) NOT NULL,
  `money` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- වගු සඳහා නික්ෂේප දත්ත `coupon`
--

INSERT INTO `coupon` (`coupon_code`, `money`) VALUES
('1122', 10000),
('404', 100000);

-- --------------------------------------------------------

--
-- වගුවක් සඳහා වගු සැකිල්ල `orders`
--

CREATE TABLE `orders` (
  `order_id` int(20) NOT NULL,
  `user_id` int(20) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- වගුවක් සඳහා වගු සැකිල්ල `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `category_id` int(10) NOT NULL,
  `date_added` datetime NOT NULL,
  `description` varchar(2000) NOT NULL,
  `price` int(10) NOT NULL,
  `icon_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- වගු සඳහා නික්ෂේප දත්ත `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `category_id`, `date_added`, `description`, `price`, `icon_name`) VALUES
(1, '1', 1, '2023-08-06 20:48:49', '1', 1, '1'),
(2, 'fgh', 1, '2023-08-06 00:00:00', 't', 11, '1gf');

-- --------------------------------------------------------

--
-- වගුවක් සඳහා වගු සැකිල්ල `sellers`
--

CREATE TABLE `sellers` (
  `usr_id` int(10) NOT NULL,
  `usr_name` varchar(10) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- වගු සඳහා නික්ෂේප දත්ත `sellers`
--

INSERT INTO `sellers` (`usr_id`, `usr_name`, `first_name`, `last_name`, `password`) VALUES
(1, 'seller', 'sel', 'ler', '12345678');

-- --------------------------------------------------------

--
-- වගුවක් සඳහා වගු සැකිල්ල `userss`
--

CREATE TABLE `userss` (
  `user_id` int(20) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `password` varchar(34) NOT NULL,
  `wallet` int(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `username` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- වගු සඳහා නික්ෂේප දත්ත `userss`
--

INSERT INTO `userss` (`user_id`, `first_name`, `last_name`, `password`, `wallet`, `address`, `username`) VALUES
(1, 'a', 'a', '12345678', 0, 'a', 'a'),
(2, 'b', 'b', '12345678', 0, 'b', 'a'),
(3, 'c', 'c', '12345678', 0, 'c', 'c');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `buy`
--
ALTER TABLE `buy`
  ADD PRIMARY KEY (`autoincrement`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`autoincrement`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`coupon_code`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`usr_id`);

--
-- Indexes for table `userss`
--
ALTER TABLE `userss`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buy`
--
ALTER TABLE `buy`
  MODIFY `autoincrement` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `autoincrement` int(100) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
