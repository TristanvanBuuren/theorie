-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2024 at 02:23 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `theorie`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `username`, `admin_password`) VALUES
(1, 'Jesse', 'admin'),
(2, 'Tristan', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(1, 'jesse', '$2y$10$YaVlEXHQZmbL/wslI5v.Oes8V8TZPaRye/6duvZLWX6c.MiwWnh26'),
(2, 'awddaw', '$2y$10$gr3emuCkvKbuIV.4D4R8I.8aWHgM7O6yGFvguqrN85rIGWYStIfZm'),
(3, 'awddaw', '$2y$10$yAjDRXvOcvlMGiXxqjsQjOlcuaysYebR8/o1qP1ea0koauhvPr9oO'),
(4, 'jesse', '$2y$10$RvHTKgLbPmuF4s7liFDdXePlrYIvbrmfcecEupj8lpg7.TmQz6zCi'),
(5, 'd', '$2y$10$/A2Ds82UmTZHhPxlRmfwR.mylaIZTwCFbHnHQg6JZddYSlAXsJ4KC'),
(6, 'd', '$2y$10$kWUF9o9rERx4wAqgcsGU/u7rwepvpvqj8uUihVqsDCO6Y13MwmWEa'),
(7, 'awdddd', '$2y$10$MRZtECroWPOMsBWKJ0d8buw/x9nMXLB/zZ55hqu2CrJzFdbnmFu0S'),
(8, 'IKEBNJESSE', '$2y$10$JjiseSuOddxDu85cJLbvM.UkJS6qH6TRysEba2GgcXQc/I.bI8BLO'),
(9, 'jesse', '$2y$10$ucqITRbHFpeRuOG4vBWirO0KajacbkcdcJFnCmPpMMpXpTAbQO7kq'),
(10, 'jesse', '$2y$10$9E5RiVmhRZXSPSNoo4SwruKqF3IycrYkq7e924Do0YxMDK3VUPHGC'),
(11, 'dddd', '$2y$10$JMzTtoTm8T0.G8V8Xlqd/OOl6BLKeNqp2P4KCBOx6FSrw59IUf2Qu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
