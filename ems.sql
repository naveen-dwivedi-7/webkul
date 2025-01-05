-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 05, 2025 at 11:54 AM
-- Server version: 8.0.40-0ubuntu0.24.04.1
-- PHP Version: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ems`
--

-- --------------------------------------------------------

--
-- Table structure for table `experiences`
--

CREATE TABLE `experiences` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `experience` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `experiences`
--

INSERT INTO `experiences` (`id`, `user_id`, `experience`) VALUES
(1, 1, '2'),
(2, 2, '3'),
(3, 2, '4'),
(6, 6, 'ie'),
(7, 6, 'toi'),
(8, 8, '2'),
(9, 8, '5rsh'),
(154, 9, '52j'),
(155, 9, '52k'),
(156, 9, 'book'),
(157, 9, 'vvook'),
(158, 9, 'jppp'),
(159, 9, 'yhyy');

-- --------------------------------------------------------

--
-- Table structure for table `qualifications`
--

CREATE TABLE `qualifications` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `qualification` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `qualifications`
--

INSERT INTO `qualifications` (`id`, `user_id`, `qualification`) VALUES
(1, 1, 'add'),
(2, 2, '1'),
(3, 2, '2'),
(8, 6, 'BA'),
(9, 6, 'Mhh'),
(10, 8, 'BA'),
(11, 8, 'BSc'),
(159, 9, 'Moood'),
(160, 9, 'ook'),
(161, 9, 'ff');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `age` int NOT NULL,
  `permanent_address` json NOT NULL,
  `current_address` json NOT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `age`, `permanent_address`, `current_address`, `profile_picture`, `created_at`) VALUES
(1, 'Naveen Dwivedi', 'dwivedinaveen251@gmail.com', '$2y$10$qbH05mmSxLAT0o5s2yVXe.VTxLV5/Da9UkRQIDip7Wba8dldl.mnq', 22, '{\"city\": \"Agartala, Tripura\", \"line1\": \"150, Akrampur Unnao\", \"line2\": \"\", \"state\": \"State1\"}', '{\"city\": \"Unnao\", \"line1\": \"150, Akrampur Unnao\", \"line2\": \"\", \"state\": \"State1\"}', 'uploads/Screenshot from 2024-08-12 17-13-41.png', '2024-12-24 06:38:30'),
(2, 'Naveen Dwivedi', 'dwivedinaveen2511@gmail.com', '$2y$10$Y5NaLJNwfOSFetPJRLseHexJ0HY5Nr7/fbXc67kgrzmYG.zDV7FS2', 20, '{\"city\": \"Greater Noida\", \"line1\": \"150, Akrampur Unnao\", \"line2\": \"\", \"state\": \"State1\"}', '{\"city\": \"Gautam Budh Nagar\", \"line1\": \"Sector 34\", \"line2\": \"\", \"state\": \"State1\"}', 'uploads/Screenshot from 2024-08-14 14-53-19.png', '2024-12-24 07:26:19'),
(5, 'Naveen Dwivedi', 'dwivedinaveen21@gmail.com', '$2y$10$7UOokoqwqYTIO/5nohHTEeiTF3.UeDAiL4Pmelq2P9WsuZ0soQS6m', 20, 'null', 'null', 'uploads/Screenshot from 2024-08-14 14-35-44.png', '2024-12-24 09:08:09'),
(6, 'Naveen Dwivedi', 'dwivedinavjheen251@gmail.com', '$2y$10$XeUWtW3VP1b.1suDeGto9O4W2hVm0GFpotTidNRwjpmkPJXw2/QKy', 22, '{\"city\": \"Agartala, Tripura\", \"line1\": \"150, Akrampur Unnao\", \"line2\": \"\", \"state\": \"State2\"}', '{\"city\": \"Agartala, Tripura\", \"line1\": \"150, Akrampur Unnao\", \"line2\": \"\", \"state\": \"State1\"}', 'uploads/Screenshot from 2024-08-12 17-19-57.png', '2024-12-25 11:10:46'),
(8, 'Naveen Dwivedi', 'dwivedinaveen2571@gmail.com', '$2y$10$Lm08J0ECrZu4iny8RKgBWO6e1PyXIRvvCbNyM7NK4ZD1IJTLApSNe', 19, '{\"city\": \"Agartala, Tripura\", \"line1\": \"150, Akrampur Unnao\", \"line2\": \"\", \"state\": \"State2\"}', '{\"city\": \"Gautam Budh Nagar\", \"line1\": \"Sector 34\", \"line2\": \"\", \"state\": \"State1\"}', 'uploads/Screenshot from 2024-08-14 14-35-44.png', '2024-12-25 11:16:52'),
(9, 'anujh', 'dwivedinaveen25721@gmail.com', '$2y$10$xSLxqVRVHjoWjU8UTTs9cOmND3dbIbm0rFqsphaP4ZSvryxaesflO', 21, '{\"city\": \"hh\", \"line1\": \"oo\", \"line2\": \"kk\", \"state\": \"pp\"}', '{\"city\": \"mm\", \"line1\": \"jj\", \"line2\": \"jj\", \"state\": \"nn\"}', 'uploads/Screenshot from 2024-08-14 14-35-44.png', '2024-12-25 16:02:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `experiences`
--
ALTER TABLE `experiences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `qualifications`
--
ALTER TABLE `qualifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `experiences`
--
ALTER TABLE `experiences`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `qualifications`
--
ALTER TABLE `qualifications`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `experiences`
--
ALTER TABLE `experiences`
  ADD CONSTRAINT `experiences_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `qualifications`
--
ALTER TABLE `qualifications`
  ADD CONSTRAINT `qualifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
