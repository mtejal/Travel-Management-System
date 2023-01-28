-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2022 at 11:15 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `easygo`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `o_id` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `p_id` int(11) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `p_id` int(11) NOT NULL,
  `v_id` int(11) NOT NULL,
  `Type` enum('sedan','suv','hetchback') DEFAULT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `Reg_number` varchar(30) DEFAULT NULL,
  `status` enum('available','booked') DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`p_id`, `v_id`, `Type`, `Name`, `Reg_number`, `status`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 'sedan', 'inova', 'slkdne', 'available', 4111, '2022-11-05 16:13:44', '2022-11-05 21:43:44'),
(2, 1, 'suv', 'range rover', '24516fygsvuv', 'available', 500, '2022-11-05 16:27:33', '2022-11-05 21:57:33'),
(3, 1, 'sedan', 'sd', 'fs', 'available', 5, '2022-11-05 16:47:32', '2022-11-05 22:17:32'),
(4, 1, 'sedan', 'sd', 'fs', 'available', 5, '2022-11-05 16:49:13', '2022-11-05 22:19:13'),
(5, 2, 'sedan', 'gg', 'hh', 'available', 55, '2022-11-05 16:50:16', '2022-11-06 19:06:29'),
(6, 2, 'sedan', 'as', 'as', 'available', 55, '2022-11-05 17:26:13', '2022-11-06 19:06:33'),
(7, 1, 'sedan', 's', 's', 'available', 6, '2022-11-05 17:57:33', '2022-11-05 23:27:33'),
(8, 1, 'sedan', 'dd', 'd', 'available', 55, '2022-11-05 17:59:33', '2022-11-05 23:29:33'),
(9, 1, 'sedan', 'dd', 'd', 'available', 55, '2022-11-05 18:22:00', '2022-11-05 23:52:00'),
(10, 1, 'sedan', 'dd', 'd', 'available', 45, '2022-11-05 18:24:11', '2022-11-05 23:54:11'),
(11, 1, 'sedan', 'hih', 'iji', 'available', 646, '2022-11-05 18:29:14', '2022-11-05 23:59:14'),
(12, 1, 'sedan', 'cs', 'ss', 'available', 4, '2022-11-05 18:45:02', '2022-11-06 00:15:02');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Password` varchar(30) DEFAULT NULL,
  `Type` enum('admin','user','vendor') DEFAULT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `phone_no` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `Email`, `Password`, `Type`, `Name`, `phone_no`, `created_at`, `updated_at`) VALUES
(1, 'dd', NULL, 'user', 'dd', 78515612, '2022-11-05 12:35:15', '2022-11-05 18:05:15'),
(2, 'dd', NULL, 'user', 'dd', 78515612, '2022-11-05 12:35:20', '2022-11-05 18:05:20'),
(3, 'dd', NULL, 'user', 'dd', 78515612, '2022-11-05 12:35:23', '2022-11-05 18:05:23'),
(4, 'dd', NULL, 'user', 'dd', 78515612, '2022-11-05 12:35:23', '2022-11-05 18:05:23'),
(5, 'dd', NULL, 'user', 'dd', 78515612, '2022-11-05 12:35:24', '2022-11-05 18:05:24'),
(6, 'dd', NULL, 'user', 'dd', 78515612, '2022-11-05 12:35:24', '2022-11-05 18:05:24'),
(7, 'dd', NULL, 'user', 'dd', 78515612, '2022-11-05 12:35:24', '2022-11-05 18:05:24'),
(8, 'dd', NULL, 'user', 'dd', 78515612, '2022-11-05 12:35:24', '2022-11-05 18:05:24'),
(10, 'raju@gmail.com', NULL, 'vendor', 'raju', 789456, '2022-11-05 12:36:55', '2022-11-05 18:06:55'),
(11, 'raju@gmail.com', NULL, 'vendor', 'raju', 789456, '2022-11-05 12:38:40', '2022-11-05 18:08:40'),
(12, 'raju@gmail.com', NULL, 'vendor', 'raju', 789456, '2022-11-05 12:40:02', '2022-11-05 18:10:02'),
(13, 'raju@gmail.com', NULL, 'vendor', 'raju', 789456, '2022-11-05 12:47:31', '2022-11-05 18:17:31'),
(14, 'dd', 'ddd', 'user', 'dd', 985, '2022-11-05 12:49:23', '2022-11-05 18:19:23'),
(15, 'd', 'dfs', 'user', 'fd', 59, '2022-11-05 16:54:16', '2022-11-05 22:24:16'),
(16, 'gg', 'kihdoi', 'user', 'ijd', 55, '2022-11-05 16:58:19', '2022-11-05 22:28:19'),
(17, 'dknk', 'kdnl', 'vendor', 'lkd', 44, '2022-11-05 16:58:38', '2022-11-05 22:28:38'),
(18, 'jf', 'dk', 'vendor', 'dk', 49, '2022-11-05 16:58:59', '2022-11-05 22:28:59'),
(19, 'dkjn', 'knd', 'user', 'jd', 45, '2022-11-05 16:59:16', '2022-11-05 22:29:16'),
(20, 'deepak', '123', 'user', 'dd', 123456, '2022-11-05 17:02:00', '2022-11-05 22:32:00'),
(21, 'chirangeelal@gmai.com', '12345678', 'admin', 'chirangee lal verma', 96644211, '2022-11-06 14:23:58', '2022-11-06 19:54:37');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`o_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `o_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
