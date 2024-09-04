-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2024 at 07:05 AM
-- Server version: 8.2.0
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `supermarket_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` int NOT NULL,
  `brand` varchar(500) NOT NULL,
  `status` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `brand`, `status`) VALUES
(1, 'Pran', 'Active'),
(4, 'Akij Food & Beverage', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int NOT NULL,
  `category` varchar(500) NOT NULL,
  `status` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category`, `status`) VALUES
(1, 'Soft Drinks', 'Active'),
(2, 'Breads', 'Active'),
(3, 'Chocolates', 'Active'),
(5, 'Noodles', 'Active'),
(6, 'Chips', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int NOT NULL,
  `product` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `category_id` int NOT NULL,
  `brand_id` int NOT NULL,
  `cost_price` int NOT NULL,
  `retail_price` int NOT NULL,
  `quantity` int NOT NULL,
  `barcode` int NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product`, `description`, `category_id`, `brand_id`, `cost_price`, `retail_price`, `quantity`, `barcode`, `status`) VALUES
(1, 'Pran Up 250ml', 'Pran Up is a source of carbohydrates and provides instant energy to the body', 1, 1, 17, 20, 50, 111, 'Active'),
(2, 'Mr. Noodles Cup', ' It\'s the portable, hot meal that\'s ideal for camping, a quick lunch at your desk, or serving up as an easy after-school snack.', 5, 1, 25, 30, 6, 112, 'Active'),
(4, 'Pran Up 500ml', 'Pran Up is a source of carbohydrates and provides instant energy to the body', 1, 1, 30, 35, 18, 113, 'Active'),
(5, 'Mojo 250ml', 'Mojo Soft drinks are popular beverage among the people of Bangladesh.', 1, 4, 18, 20, 265, 211, 'Active'),
(7, 'Mojo 500ml', 'mojo 500ml', 1, 4, 25, 30, 500, 311, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int NOT NULL,
  `date` varchar(255) NOT NULL,
  `cashier` varchar(255) NOT NULL,
  `subtotal` int NOT NULL,
  `pay` int NOT NULL,
  `balance` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `date`, `cashier`, `subtotal`, `pay`, `balance`) VALUES
(3, '2024/08/01', '', 850, 900, 50),
(4, '2024/08/01', '', 355, 360, 5),
(5, '2024/08/01', '', 205, 210, 5),
(6, '2024/08/01', '', 205, 210, 5),
(7, '2024/08/01', '', 135, 140, 5),
(8, '2024/08/01', '', 305, 310, 5),
(9, '2024/08/01', '', 190, 200, 10),
(10, '2024/08/01', '', 60, 70, 10),
(11, '2024/08/01', '', 165, 170, 5),
(12, '2024/08/01', '', 180, 200, 20),
(13, '2024/08/01', '', 210, 220, 10),
(14, '2024/08/01', '', 190, 200, 10),
(15, '2024/08/01', '', 30, 50, 20),
(16, '2024/08/01', '', 220, 250, 30),
(17, '2024/08/01', '', 480, 500, 20),
(18, '2024/08/01', '', 235, 240, 5),
(19, '2024/08/01', '', 185, 200, 15),
(20, '2024/08/01', 'hasib', 140, 150, 10),
(21, '2024/08/01', 'Cashier', 90, 100, 10),
(22, '2024/08/02', 'Cashier', 390, 400, 10),
(23, '2024/08/02', 'Cashier', 100, 100, 0),
(24, '2024/08/02', 'Cashier', 170, 180, 10),
(25, '2024/08/02', 'Cashier', 190, 200, 10),
(26, '2024/08/05', 'Cashier', 100, 120, 20),
(27, '2024/08/31', 'cashier', 230, 250, 20),
(28, '2024/09/03', 'cashier', 130, 150, 20),
(29, '2024/09/03', 'cashier', 100, 100, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales_product`
--

CREATE TABLE `sales_product` (
  `id` int NOT NULL,
  `sales_id` int NOT NULL,
  `product_id` int NOT NULL,
  `sell_price` int NOT NULL,
  `quantity` int NOT NULL,
  `total` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sales_product`
--

INSERT INTO `sales_product` (`id`, `sales_id`, `product_id`, `sell_price`, `quantity`, `total`) VALUES
(3, 3, 113, 35, 20, 700),
(4, 3, 112, 30, 5, 150),
(5, 4, 111, 20, 5, 100),
(6, 4, 112, 30, 5, 150),
(7, 4, 113, 35, 3, 105),
(8, 5, 111, 20, 5, 100),
(9, 5, 113, 35, 3, 105),
(10, 6, 111, 20, 5, 100),
(11, 6, 113, 35, 3, 105),
(12, 7, 113, 35, 1, 35),
(13, 7, 111, 20, 5, 100),
(14, 8, 111, 20, 5, 100),
(15, 8, 112, 30, 2, 60),
(16, 8, 211, 20, 2, 40),
(17, 8, 113, 35, 3, 105),
(18, 9, 111, 20, 5, 100),
(19, 9, 112, 30, 3, 90),
(20, 10, 211, 20, 3, 60),
(21, 11, 111, 20, 3, 60),
(22, 11, 113, 35, 3, 105),
(23, 12, 111, 20, 2, 40),
(24, 12, 113, 35, 4, 140),
(25, 13, 111, 20, 3, 60),
(26, 13, 112, 30, 5, 150),
(27, 14, 111, 20, 2, 40),
(28, 14, 112, 30, 5, 150),
(29, 15, 112, 30, 1, 30),
(30, 16, 211, 20, 5, 100),
(31, 16, 112, 30, 4, 120),
(32, 17, 111, 20, 5, 100),
(33, 17, 112, 30, 6, 180),
(34, 17, 211, 20, 10, 200),
(35, 18, 111, 20, 5, 100),
(36, 18, 112, 30, 2, 60),
(37, 18, 211, 20, 2, 40),
(38, 18, 113, 35, 1, 35),
(39, 19, 111, 20, 3, 60),
(40, 19, 112, 30, 1, 30),
(41, 19, 113, 35, 1, 35),
(42, 19, 211, 20, 3, 60),
(43, 20, 111, 20, 7, 140),
(44, 21, 111, 20, 1, 20),
(45, 21, 113, 35, 2, 70),
(46, 22, 111, 20, 9, 180),
(47, 22, 113, 35, 6, 210),
(48, 23, 211, 20, 5, 100),
(49, 24, 111, 20, 5, 100),
(50, 24, 113, 35, 2, 70),
(51, 25, 111, 20, 5, 100),
(52, 25, 112, 30, 3, 90),
(53, 26, 111, 20, 5, 100),
(54, 27, 111, 20, 5, 100),
(55, 27, 112, 30, 1, 30),
(56, 27, 211, 20, 5, 100),
(57, 28, 111, 20, 5, 100),
(58, 28, 112, 30, 1, 30),
(59, 29, 111, 20, 5, 100);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `status`) VALUES
(2, 'hasib', '1234', 'Admin', 'Active'),
(3, 'Cashier', '1234', 'Cashier', 'Active'),
(4, 'Manager', '1234', 'Manager', 'Active'),
(8, 'alex', '1234', 'Admin', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_product`
--
ALTER TABLE `sales_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_productID_idx` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `sales_product`
--
ALTER TABLE `sales_product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
