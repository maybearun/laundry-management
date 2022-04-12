-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2022 at 10:13 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laundry`
--

-- --------------------------------------------------------

--
-- Table structure for table `laundry`
--

CREATE TABLE `laundry` (
  `laun_id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `laun_priority` int(11) NOT NULL,
  `laun_weight` int(11) NOT NULL,
  `adv_pay` float DEFAULT NULL,
  `laun_date_received` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `laun_claimed` tinyint(4) NOT NULL DEFAULT 0,
  `laun_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laundry`
--

INSERT INTO `laundry` (`laun_id`, `customer_name`, `laun_priority`, `laun_weight`, `adv_pay`, `laun_date_received`, `laun_claimed`, `laun_type_id`) VALUES
(7, 'Reyvelyn Ybanez Viovicente', 7, 3, 0, '2017-03-19 22:38:02', 1, 1),
(9, 'Winnie Alterado Damayo', 3, 2, 0, '2017-03-19 22:43:23', 1, 1),
(10, 'Jane Dougah Hah', 1, 2, 0, '2017-03-19 22:43:23', 1, 2),
(11, 'Johnny Deep', 7, 3, 0, '2017-03-19 23:53:36', 1, 1),
(12, 'Winnie Alterado Damayo', 2, 2, 0, '2017-03-22 16:14:48', 1, 2),
(13, 'Winnie Alterado Damayo', 4, 10, 0, '2017-03-22 16:15:33', 1, 1),
(14, 'Winnie Damayo', 2, 2, 0, '2022-04-10 07:56:10', 1, 1),
(15, 'Haha', 1, 1, 0, '2022-04-10 05:52:06', 1, 1),
(16, 'Hahs', 1, 8, 0, '2022-04-10 07:22:27', 1, 1),
(17, 'Hahs', 1, 8, 0, '2022-04-10 07:23:11', 1, 1),
(18, 'Winnie Damayo', 2, 2, 0, '2022-04-10 07:56:10', 1, 1),
(19, 'Winnie Damayo', 2, 2, 0, '2022-04-10 07:56:10', 1, 1),
(24, 'Hahah', 2, 2, 0, '2022-04-10 08:00:33', 1, 1),
(25, 'Vishnu', 1, 1, NULL, '2022-04-10 08:10:47', 1, 1),
(26, 'Vishnu', 1, 1, NULL, '2022-04-10 08:10:47', 1, 1),
(27, 'Vishnu', 1, 1, 1, '2022-04-10 08:10:47', 1, 1),
(28, 'Vishnu', 1, 1, 10, '2022-04-10 08:10:56', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `laundry_type`
--

CREATE TABLE `laundry_type` (
  `laun_type_id` int(11) NOT NULL,
  `laun_type_desc` varchar(50) NOT NULL,
  `laun_type_price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laundry_type`
--

INSERT INTO `laundry_type` (`laun_type_id`, `laun_type_desc`, `laun_type_price`) VALUES
(1, 'Blanket', 20),
(2, 'Clothes', 30);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sale_id` int(11) NOT NULL,
  `sale_customer_name` varchar(100) NOT NULL,
  `sale_type_desc` varchar(50) NOT NULL,
  `sale_date_paid` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `sale_laundry_received` datetime NOT NULL,
  `sale_amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`sale_id`, `sale_customer_name`, `sale_type_desc`, `sale_date_paid`, `sale_laundry_received`, `sale_amount`) VALUES
(1, 'Reyvelyn Ybanez Viovicente', 'Blanket', '2017-03-18 22:38:02', '2017-03-20 00:00:00', 60),
(2, 'Jane Dougah Hah', 'Clothes', '2017-03-19 22:43:23', '2017-03-20 06:43:16', 60),
(3, 'Winnie Alterado Damayo', 'Blanket', '2017-03-19 22:43:23', '2017-03-20 06:42:58', 40),
(4, 'Johnny Deep', 'Blanket', '2017-03-19 23:53:36', '2017-03-20 07:53:27', 60),
(5, 'Winnie Alterado Damayo', 'Clothes', '2017-03-22 16:14:47', '2017-03-23 00:14:40', 60),
(6, 'Winnie Alterado Damayo', 'Blanket', '2017-03-22 16:15:33', '2017-03-23 00:15:28', 200),
(7, 'Haha', 'Blanket', '2022-04-10 05:52:06', '2022-04-10 11:21:49', 20),
(8, 'Hahs', 'Blanket', '2022-04-10 07:22:27', '2022-04-10 12:52:20', 160),
(9, 'Hahs', 'Blanket', '2022-04-10 07:23:11', '2022-04-10 12:53:00', 160),
(10, 'Winnie Damayo', 'Blanket', '2022-04-10 07:56:10', '2022-04-10 13:12:20', 40),
(11, 'Winnie Damayo', 'Blanket', '2022-04-10 07:56:10', '2017-04-18 09:29:57', 40),
(12, 'Winnie Damayo', 'Blanket', '2022-04-10 07:56:10', '2022-04-10 13:14:45', 40),
(13, 'Hahah', 'Blanket', '2022-04-10 08:00:33', '2022-04-10 13:26:32', 40),
(14, 'Vishnu', 'Blanket', '2022-04-10 08:10:47', '2022-04-10 13:34:00', 20),
(15, 'Vishnu', 'Blanket', '2022-04-10 08:10:47', '2022-04-10 13:37:39', 20),
(16, 'Vishnu', 'Blanket', '2022-04-10 08:10:47', '2022-04-10 13:40:39', 20);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_account` varchar(50) NOT NULL,
  `user_password` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_account`, `user_password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `laundry`
--
ALTER TABLE `laundry`
  ADD PRIMARY KEY (`laun_id`),
  ADD KEY `laun_type_id` (`laun_type_id`);

--
-- Indexes for table `laundry_type`
--
ALTER TABLE `laundry_type`
  ADD PRIMARY KEY (`laun_type_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sale_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `laundry`
--
ALTER TABLE `laundry`
  MODIFY `laun_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `laundry_type`
--
ALTER TABLE `laundry_type`
  MODIFY `laun_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `laundry`
--
ALTER TABLE `laundry`
  ADD CONSTRAINT `laundry_ibfk_1` FOREIGN KEY (`laun_type_id`) REFERENCES `laundry_type` (`laun_type_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
