-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2019 at 01:14 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `sett_country`
--

CREATE TABLE `sett_country` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `p_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `ware` int(11) NOT NULL,
  `module` int(11) NOT NULL,
  `pby` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sett_country`
--

INSERT INTO `sett_country` (`id`, `name`, `p_id`, `type`, `ware`, `module`, `pby`) VALUES
(1, 'BD', 0, 1, 11, 0, 62),
(2, 'USA', 0, 1, 11, 0, 62),
(3, 'KSA', 0, 1, 11, 0, 62),
(4, 'Ctg', 1, 2, 11, 0, 62),
(5, 'Riyad', 3, 2, 11, 0, 62),
(6, 'Muradpur', 4, 3, 11, 0, 62),
(9, 'Makka', 3, 2, 11, 0, 62),
(10, 'Dhaka', 1, 2, 11, 0, 62),
(11, 'Gulshan', 10, 3, 11, 0, 62),
(12, 'Sylhet', 1, 2, 11, 0, 62),
(13, 'Rajshahi', 1, 2, 11, 0, 62),
(14, 'Riyad city', 5, 3, 11, 0, 62),
(22, 'Dubai', 0, 1, 11, 0, 62),
(26, 'Jessore', 1, 2, 11, 0, 62),
(28, 'Makka city', 5, 3, 11, 0, 62),
(31, 'Australia', 0, 1, 11, 0, 62),
(32, 'State of Ausralia', 31, 2, 11, 0, 62);

-- --------------------------------------------------------

--
-- Table structure for table `sett_menu`
--

CREATE TABLE `sett_menu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `p_id` int(11) NOT NULL,
  `module` int(11) NOT NULL,
  `controller` varchar(255) NOT NULL,
  `ware` int(11) NOT NULL,
  `pby` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '0 = Inactive , 1 = Active , 2 = Disable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sett_menu`
--

INSERT INTO `sett_menu` (`id`, `name`, `p_id`, `module`, `controller`, `ware`, `pby`, `status`) VALUES
(1, 'restaurant menu name ', 0, 4, 'restaurant menu name ', 11, 62, 1),
(2, 'uu HRm menu name ', 0, 3, 'uu HRm menu name ', 11, 62, 1),
(3, 'Payroll menu name', 0, 2, 'Payroll controller', 11, 62, 1),
(5, 'HRm menu name 2', 0, 4, 'HRm menu name 2', 11, 62, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sett_modules`
--

CREATE TABLE `sett_modules` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `module` int(11) NOT NULL,
  `ware` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sett_modules`
--

INSERT INTO `sett_modules` (`id`, `name`, `module`, `ware`, `status`) VALUES
(1, 'Restaurant', 0, 0, 1),
(2, 'Parking', 0, 0, 1),
(3, 'Payroll', 0, 0, 1),
(4, 'HRM', 0, 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sett_country`
--
ALTER TABLE `sett_country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sett_menu`
--
ALTER TABLE `sett_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sett_modules`
--
ALTER TABLE `sett_modules`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sett_country`
--
ALTER TABLE `sett_country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `sett_menu`
--
ALTER TABLE `sett_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sett_modules`
--
ALTER TABLE `sett_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
