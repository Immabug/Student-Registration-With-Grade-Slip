-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2023 at 03:33 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

CREATE DATABASE loginregister;
USE loginregister;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loginregister`
--

-- --------------------------------------------------------

--
-- Table structure for table `login_db`
--

CREATE TABLE `login_db` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `registration_form_db`
--

CREATE TABLE `registration_form_db` (
  `id` int(11) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `course` varchar(30) NOT NULL,
  `section` varchar(20) NOT NULL,
  `no_units` varchar(11) NOT NULL,
  `id_number` varchar(20) NOT NULL,
  `middlename` varchar(20) NOT NULL,
  `major` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `yearlevel` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `contact_no` varchar(11) NOT NULL,
  `confrimpassword` varchar(20) NOT NULL,
  `gradeslip` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration_form_db`
--


--
-- Triggers `registration_form_db`
--
DELIMITER $$
CREATE TRIGGER `duplicate_registration_to_login` AFTER INSERT ON `registration_form_db` FOR EACH ROW BEGIN
    -- Insert the new record into the login table
    INSERT INTO login_db (id, email, password)
    VALUES (NEW.id, NEW.email, NEW.password);
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login_db`
--
ALTER TABLE `login_db`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration_form_db`
--
ALTER TABLE `registration_form_db`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login_db`
--
ALTER TABLE `login_db`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `registration_form_db`
--
ALTER TABLE `registration_form_db`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
