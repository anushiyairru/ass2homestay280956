-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2022 at 10:05 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `homestay_raya`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `user_id` int(10) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `user_fname` varchar(50) NOT NULL,
  `user_phone` varchar(10) NOT NULL,
  `user_password` varchar(40) NOT NULL,
  `user_adress` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`user_id`, `user_email`, `user_fname`, `user_phone`, `user_password`, `user_adress`) VALUES
(1, 'deb.naz97@gmail.com', 'Debbie', '0116175180', 'bec75d2e4e2acf4f4ab038144c0d862505e52d07', 'na'),
(2, 'anu@gmail.com', 'anushiya', '1234567890', '8d6597f6098890ce963d6cd1fc50417dc38aa22d', 'na'),
(3, 'shiya@gmail.com', 'shiya', '1234567890', 'dca0a5afd0b457ee36f8862369c7fda58c162b25', 'na'),
(4, 'anushiya@yahoo.com', 'anushiya', '0123456789', 'dca0a5afd0b457ee36f8862369c7fda58c162b25', 'na'),
(5, 'beshiya@yahoo.com', 'aaaanu', '0123456545', '9f1768929c8a85e7385dd1a6294ed7745620d124', 'na');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
