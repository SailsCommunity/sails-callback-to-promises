-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 26, 2017 at 08:52 PM
-- Server version: 5.7.19-0ubuntu0.16.04.1
-- PHP Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sailsit`
--

-- --------------------------------------------------------

--
-- Table structure for table `class_one`
--

CREATE TABLE `class_one` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `marks_scored` int(5) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_one`
--

INSERT INTO `class_one` (`id`, `name`, `marks_scored`, `createdAt`, `updatedAt`) VALUES
(1, 'arshad', 10, NULL, NULL),
(2, 'mak', 40, NULL, NULL),
(3, 'sana', 45, NULL, NULL),
(4, 'rrr', 27, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `class_two`
--

CREATE TABLE `class_two` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `marks_scored` int(5) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_two`
--

INSERT INTO `class_two` (`id`, `name`, `marks_scored`, `createdAt`, `updatedAt`) VALUES
(1, 'mmm', 99, NULL, NULL),
(2, 'm2m22', 100, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `toppers`
--

CREATE TABLE `toppers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `marks_scored` int(5) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `rank` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class_one`
--
ALTER TABLE `class_one`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_two`
--
ALTER TABLE `class_two`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toppers`
--
ALTER TABLE `toppers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class_one`
--
ALTER TABLE `class_one`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `class_two`
--
ALTER TABLE `class_two`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `toppers`
--
ALTER TABLE `toppers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
