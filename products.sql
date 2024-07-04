-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2024 at 06:57 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dep_task1`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `category` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `category`) VALUES
(6, 'Eggs', 'Humans and their hominid relatives have consumed eggs for millions of years.The most widely consumed eggs are those of fowl,', '250', 'Food'),
(7, 'HP ZBook Firefly 14 inch G11 Mobile Workstation PC', 'The HP ZBook Firefly 14 Inch G11 Mobile Workstation PC is a powerful and portable laptop designed for professionals who require high performance on the go.', '100000', 'Electronics'),
(8, 'Kingston DataTraveler Exodia M USB Flash Drive 64GB USB 3.2 ', 'The Kingston DataTraveler Exodia M USB Flash Drive offers 64GB of storage capacity and utilizes USB 3.2 technology for fast data transfer speeds. This drive is designed for quick and convenient data transfer between devices, making it an ideal choice for ', '2500', 'Storage Devices '),
(9, 'Cheeseburger', 'The Classic Cheeseburger features a juicy beef patty topped with melted American cheese, fresh lettuce, ripe tomato slices, crisp pickles, and a special burger sauce. All of these ingredients are nestled in a toasted sesame seed bun, making for a deliciou', '500', 'Fast Food');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
