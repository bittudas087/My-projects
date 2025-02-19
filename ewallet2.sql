-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2023 at 08:32 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ewallet2`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `phone` varchar(14) NOT NULL,
  `amount` int(11) NOT NULL,
  `details` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL,
  `wallet` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `phone`, `amount`, `details`, `type`, `wallet`, `created_at`) VALUES
(1, '1234567890', 50, 'new account create', 'CR', 50, '2023-02-08 07:28:29'),
(2, '1234567891', 50, 'new account create', 'CR', 50, '2023-02-08 07:29:12'),
(3, '1234567891', 20, 'test', 'CR', 70, '2023-02-08 07:42:16'),
(4, '1234567891', 30, 'Test2', 'DR', 40, '2023-02-08 07:42:59'),
(5, '1234567891', 120, 'money added by 12345678', 'CR', 160, '2023-02-10 07:53:07'),
(6, '1234567891', 20, 'money added by 12345678', 'CR', 180, '2023-02-10 07:53:38'),
(7, '1234567891', 10, 'money added by 12345678', 'CR', 190, '2023-02-10 07:55:23'),
(8, '1234567891', 10, 'money added by 1234567890', 'CR', 200, '2023-02-10 07:56:00'),
(9, '1234567891', 30, 'money debited amount 30 to 1234567890', 'DR', 170, '2023-02-10 08:10:44'),
(10, '1234567890', 30, 'money created amount 30 from 1234567891', 'CR', 80, '2023-02-10 08:10:49'),
(14, '1234567890', 9, 'money debited amount 9 to 1234567891', 'DR', 71, '2023-02-10 08:28:40'),
(15, '1234567891', 9, 'money created amount 9 from 1234567890', 'CR', 179, '2023-02-10 08:28:40'),
(16, '1234567891', 30, 'money added by 12345678921323', 'CR', 209, '2023-02-15 06:59:46'),
(17, '1234567891', 30, 'money debited amount 30 to 7001765962', 'DR', 179, '2023-02-15 07:31:04'),
(18, '1234567891', 100, 'money debited amount 100 to 2222222222', 'DR', 79, '2023-02-15 07:41:45'),
(19, '1234567891', 50, 'money debited amount 50 to 1234567', 'DR', 29, '2023-02-15 07:41:58'),
(20, '1234567891', 20, 'money debited amount 20 to 123456', 'DR', 9, '2023-02-15 07:43:10'),
(21, '1234567891', 10000, 'money added by 12345678', 'CR', 10009, '2023-02-15 07:54:02'),
(22, '1234567891', 270, 'movie name Dhoom1 theater DC no of ticket 9', 'DR', 9739, '2023-02-15 07:54:17'),
(23, '1234567890', 1000, 'money added by 762817823862', 'CR', 1071, '2023-06-02 06:27:26'),
(24, '1234567890', 20, 'money debited amount 20 to 1234567891', 'DR', 1051, '2023-06-02 06:28:01'),
(25, '1234567891', 20, 'money created amount 20 from 1234567890', 'CR', 9759, '2023-06-02 06:28:01'),
(26, '1234567890', 90, 'money debited amount 90 to 7001765962', 'DR', 961, '2023-06-02 06:28:27'),
(27, '1234567890', 200, 'money debited amount 200 to 8676238767238', 'DR', 761, '2023-06-02 06:28:45'),
(28, '1234567890', 320, 'money debited amount 320 to 876827136287', 'DR', 441, '2023-06-02 06:29:05'),
(29, '1234567890', 210, 'movie name Dhoom2 theater Carnival no of ticket 3', 'DR', 231, '2023-06-02 06:29:36');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `phone`, `password`, `created_at`) VALUES
(1, 'Krishna', '1234567890', '123456', '2023-02-08 07:28:29'),
(2, 'ramesh', '1234567891', '1234', '2023-02-08 07:29:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
