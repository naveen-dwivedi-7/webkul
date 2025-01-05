-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 05, 2025 at 11:53 AM
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
-- Database: `social-network`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `content` text,
  `image` varchar(255) DEFAULT NULL,
  `likes` int DEFAULT '0',
  `dislikes` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `content`, `image`, `likes`, `dislikes`, `created_at`) VALUES
(1, 1, 'First post', 'uploads/Screenshot from 2024-12-25 17-13-08.png', 0, 0, '2025-01-05 08:30:30'),
(2, 1, 'second post', 'uploads/Screenshot from 2024-12-25 17-13-08.png', 0, 0, '2025-01-05 08:30:40'),
(3, 1, 'third post', 'uploads/Screenshot from 2024-12-01 21-55-54.png', 0, 0, '2025-01-05 08:38:55'),
(4, 1, 'abc', 'uploads/Screenshot from 2024-12-15 15-23-15.png', 0, 0, '2025-01-05 08:57:14'),
(5, 16, '5th post', 'uploads/Screenshot from 2024-12-25 18-03-51.png', 0, 0, '2025-01-05 10:26:05'),
(6, 1, '6th post', 'uploads/Screenshot from 2024-12-23 19-08-08.png', 0, 0, '2025-01-05 10:26:53'),
(7, 34, '7th post', 'uploads/Screenshot from 2024-11-29 19-27-23.png', 0, 0, '2025-01-05 10:28:28'),
(8, 5, '8th post', 'uploads/Screenshot from 2024-12-23 19-08-41.png', 0, 0, '2025-01-05 10:29:10'),
(11, 36, '10th post', 'uploads/Screenshot from 2024-12-25 17-05-09.png', 1, 1, '2025-01-05 10:33:34'),
(13, 36, 'this ', 'uploads/Screenshot from 2024-11-16 18-22-56.png', 3, 0, '2025-01-05 11:15:45'),
(14, 36, 'that s it', 'uploads/Screenshot from 2024-11-16 17-48-57.png', 0, 0, '2025-01-05 11:17:20'),
(15, 36, 'hjkkhj', 'uploads/Screenshot from 2024-12-25 17-12-52.png', 0, 0, '2025-01-05 11:18:05'),
(16, 36, 'yuvi', 'uploads/Screenshot from 2024-10-09 12-15-39.png', 0, 0, '2025-01-05 11:34:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `age` int DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT 'default.jpg',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `age`, `profile_picture`, `created_at`) VALUES
(1, 'Naveen Dwivedi', 'dwivedinaveen251@gmail.com', '$2y$10$StUwJzne7GyrCYLlZSnFBe2eSqYDey.VY2BqAz3rZOIyyqcGrevO2', 23, 'uploads/profile_photos/6779327c10b32_Screenshot from 2024-12-25 18-03-51.png', '2024-12-19 18:06:33'),
(3, 'anjali', 'anjali@gmail.com', '$2y$10$yQhFgk/fWrd1VF0ex8XRIef5CdHFUgc7n5g37gagOevoRW4It8BDq', 24, '0', '2024-12-19 18:07:30'),
(4, 'Naveen Dwivedi', '1dwivedinaveen251@gmail.com', '$2y$10$9YGiZ4uSpBCnDZ5EudwAXOEShjk6IJbMf0nkiZ3KgnQ2sZ2rWw8oC', 22, '0', '2024-12-19 18:09:50'),
(5, 'alex', 'alex@gmail.com', '$2y$10$XJsjJnLPe1Vz6qpOda3Po.IJQHl.5ZxIRaP3Y2Z2ksH2JYx8TUF.u', 20, '0', '2024-12-19 18:13:19'),
(8, 'avi', 'avi@gmail.com', '$2y$10$6ja6qnIFvQKJfrF852TgFOWmIEjul0w4GTobOdbmLwfQqUUlmEb/W', 22, '0', '2024-12-19 18:17:41'),
(9, 'Naveen Dwivedi', 'dwivedinaveen25111@gmail.com', '$2y$10$.teQrf3sZwyMCvV9Rl525.50hdHXzMqvUYNTnQC4aB7n6XKQXi24O', 22, '0', '2024-12-19 18:19:04'),
(11, 'Naveen Dwivedi', 'alex2@gmail.com', '$2y$10$iK5c8KbST1x/.0aWEh.mzehcw4WelHoK4qTx3djlTJludLj94SOHu', 22, '0', '2024-12-19 18:24:12'),
(12, 'Naveen Dwivedi', 'ale@gmail.com', '$2y$10$RI.V9dC39/pn8nhoF.RQqOjhCTdlegwJADQLacuUWcRGHrk6qNyWK', 22, '0', '2024-12-20 06:01:02'),
(13, 'Naveen Dwivedi', 'palex@gmail.com', '$2y$10$yp/aLEhleypcwjeXmvAn9Oh5weMCIHM/CK8xuhIRWhyH2nQXHcRI6', 23, '0', '2024-12-20 06:16:08'),
(14, 'test ', 'test@gmail.com', '$2y$10$F2FSJVTK3stuDjdhSDj92Os4/pP/Y9U1WaGfq6MOXdOelHTNq2bBi', 23, '0', '2024-12-20 06:40:16'),
(15, 'Naveen ', 'dwivedinaveen25221@gmail.com', '$2y$10$gy.SKHpIwpcePWxaLjufm.2FmCskeiV8EZgdBkKKV3UsBmMD7MlGW', 23, '0', '2024-12-20 07:01:24'),
(16, 'anjali', 'alexa2@gmail.com', '$2y$10$F40iDvQ/xVCinrsp8ctnNeYRl0362.EzHjlhmzNx1fmw0VHFoXtgO', 23, 'uploads/676527d523233-Screenshot from 2024-08-14 14-35-44.png', '2024-12-20 08:16:21'),
(18, 'Naveen Dwivedi', 'alexa23@gmail.com', '$2y$10$BenkguoMShDB8ojnUv.O3eAdASMkxcRqhrPXYNX3VFZJFG53Q7uou', 22, 'uploads/676529a43fb69-Screenshot from 2024-08-27 14-57-40.png', '2024-12-20 08:24:04'),
(19, 'Naveen Dwivedi', 'naveen251@gmail.com', '$2y$10$Rr6yXaolMIfWuT/.EbxNtOfH/f6OMlcfVt6IyCeJGc7OkTgc65UDO', 22, 'uploads/67652c1c96807-Screenshot from 2024-08-12 17-19-57.png', '2024-12-20 08:34:36'),
(21, 'Naveen Dwivedi', 'dwivedinaveen251gd@gmail.com', '$2y$10$.eGIszMz99FNI0bAfoarfeEhHUa2QDYbYn/uwmRSuzCmHK1Yc2owq', 22, 'uploads/67652d5728df0-Screenshot from 2024-08-14 14-35-44.png', '2024-12-20 08:39:51'),
(22, 'Naveen Dwivedi', 'dwivedinaveen251gjd@gmail.com', '$2y$10$I6dm8H12HICngxUnS.B5/unAP31ylvRnPY0M3AUymsLFzuZLCSCXG', 22, 'uploads/67652dffb196b-Screenshot from 2024-08-14 14-35-44.png', '2024-12-20 08:42:39'),
(23, 'Naveen Dwivedi', 'dwivedinaveenx251@gmail.com', '$2y$10$4cFtoETwKZr/GPwLDhyiCeoYWStbvB.1HpmQx4cMUOwHk2Z.3sucm', 22, 'uploads/67652ef69dc62-Screenshot from 2024-08-14 14-35-44.png', '2024-12-20 08:46:46'),
(26, 'avi', 'alexan2@gmail.com', '$2y$10$FiB6P6asZlpkohwerqZWMeCDrdADNmk/ZCQsPh1Iydx2X4f/gL8IK', 22, 'uploads/676534911fc65-Screenshot from 2024-08-14 14-35-44.png', '2024-12-20 09:10:41'),
(27, 'Nav', 'alexiia@gmail.com', '$2y$10$WTWEhmdYzy.3fUPgNmgGReIYDHywj2aD8bXOpLJp.OU9mldhBggE6', 22, 'uploads/676536731e5e1-Screenshot from 2024-08-14 14-35-44.png', '2024-12-20 09:18:43'),
(28, 'avi', 'alexhhh@gmail.com', '$2y$10$EGcF5ZYPOGYA7Vkg8FX3d.KPWEC5wziGqa5s/LitxTSLIkxadbXbO', 0, 'uploads/67653ea8cda88-Screenshot from 2024-08-12 17-19-57.png', '2024-12-20 09:53:44'),
(29, 'Naveen Dwivedi', 'sssqdwivedinaveen251@gmail.com', '$2y$10$cA7HKSgRh9Wbxcq0gR7HpuZ7EpIh/st9QFVr3tq7TLiatYSBShmn2', 22, 'uploads/676540c78d272-Screenshot from 2024-08-14 14-35-44.png', '2024-12-20 10:02:47'),
(30, 'Naveen Dwivedi', 'dwivedinavennhen251@gmail.com', '$2y$10$VOD9swkJlz7o8WJRhPUEguV7qhaPEUBEaFxNdWJAMbW/St0/cs.Aa', 22, 'uploads/6765416d46ad9-Screenshot from 2024-08-14 14-35-44.png', '2024-12-20 10:05:33'),
(31, 'Naveen Dwivedi', 'dwivedinaveennn251@gmail.com', '$2y$10$SJLicCQIZZv1lkcDUkwG/uzw9khG3a.ljTWapo3roaBSDSVFqIg5W', 22, 'uploads/6765524a11e04-Screenshot from 2024-08-12 17-13-41.png', '2024-12-20 11:17:30'),
(32, 'av', 'dwivedinaveejkn251@gmail.com', '$2y$10$FOaPeDsVCTusMdHYcZRTS.p19lEIjsfUUJ0b56TnnMX5b4h95VwFK', 23, 'uploads/676554697ff76-Screenshot from 2024-08-12 17-19-57.png', '2024-12-20 11:26:33'),
(33, 'Naveen Dwivedi', 'test2@gmail.com', '$2y$10$j9oWV4N8ym2d/2lpqBFhIubmFc5aBFFnfNJFrLaNHF/OlR7WTyrPO', 22, 'uploads/676556cbb14b8-Screenshot from 2024-09-11 17-16-26.png', '2024-12-20 11:36:43'),
(34, 'ana', 'ana@gmail.com', '$2y$10$JcTnLI44pikuW0Cx6ZWDKuN3klsm1D3WajKu9k9zSVvqnyLP9yD2W', 22, 'uploads/67655bc0c4198-Screenshot from 2024-11-04 15-28-40.png', '2024-12-20 11:57:52'),
(35, 'Naveen Dwivedi', 'dwivedinaveennn25123@gmail.com', '$2y$10$FLdz8Ra5voow132tmYWqnOFrUPzOAAiw7H.cY9PPMGuR.8Ut2D2x.', 22, 'uploads/67659d64a1170-Screenshot from 2024-08-14 14-35-44.png', '2024-12-20 16:37:56'),
(36, 'john doe', 'johndoe@gmail.com', '$2y$10$lI5XwTFDiwbVGUIv3vA.D..JdPvQt3kvOaMXK0FsHbYorAXr2r.z2', 19, 'uploads/profile_photos/677a70a96803e_Screenshot from 2024-11-26 14-30-11.png', '2024-12-20 17:02:34'),
(38, 'alexaa', 'alexa231@gmail.com', '$2y$10$ElUr2R6PG3kQ2n.v3xiID./N0ehWWDqakshKq1t4qEOSUBV9kDnHK', 22, 'uploads/6767bbaf5ae3e-Screenshot from 2024-08-27 12-03-12.png', '2024-12-22 07:11:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
