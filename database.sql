-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2025 at 07:36 PM
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
-- Database: `webexam`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 'post 1 by Matineh Mousavi', 'This is a sample body for post 1 by Matineh Mousavi', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(2, 1, 'post 2 by Matineh Mousavi', 'This is a sample body for post 2 by Matineh Mousavi', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(3, 1, 'post 3 by Matineh Mousavi', 'This is a sample body for post 3 by Matineh Mousavi', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(4, 1, 'post 4 by Matineh Mousavi', 'This is a sample body for post 4 by Matineh Mousavi', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(5, 1, 'post 5 by Matineh Mousavi', 'This is a sample body for post 5 by Matineh Mousavi', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(6, 2, 'post 1 by Mobina mahdavi', 'This is a sample body for post 1 by Mobina mahdavi', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(7, 2, 'post 2 by Mobina mahdavi', 'This is a sample body for post 2 by Mobina mahdavi', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(8, 2, 'post 3 by Mobina mahdavi', 'This is a sample body for post 3 by Mobina mahdavi', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(9, 2, 'post 4 by Mobina mahdavi', 'This is a sample body for post 4 by Mobina mahdavi', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(10, 2, 'post 5 by Mobina mahdavi', 'This is a sample body for post 5 by Mobina mahdavi', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(11, 3, 'post 1 by Parmida Mehrnikoo', 'This is a sample body for post 1 by Parmida Mehrnikoo', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(12, 3, 'post 2 by Parmida Mehrnikoo', 'This is a sample body for post 2 by Parmida Mehrnikoo', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(13, 3, 'post 3 by Parmida Mehrnikoo', 'This is a sample body for post 3 by Parmida Mehrnikoo', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(14, 3, 'post 4 by Parmida Mehrnikoo', 'This is a sample body for post 4 by Parmida Mehrnikoo', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(15, 3, 'post 5 by Parmida Mehrnikoo', 'This is a sample body for post 5 by Parmida Mehrnikoo', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(16, 4, 'post 1 by Sara Sarfi', 'This is a sample body for post 1 by Sara Sarfi', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(17, 4, 'post 2 by Sara Sarfi', 'This is a sample body for post 2 by Sara Sarfi', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(18, 4, 'post 3 by Sara Sarfi', 'This is a sample body for post 3 by Sara Sarfi', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(19, 4, 'post 4 by Sara Sarfi', 'This is a sample body for post 4 by Sara Sarfi', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(20, 4, 'post 5 by Sara Sarfi', 'This is a sample body for post 5 by Sara Sarfi', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(21, 5, 'post 1 by Fatemeh Binesh', 'This is a sample body for post 1 by Fatemeh Binesh', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(22, 5, 'post 2 by Fatemeh Binesh', 'This is a sample body for post 2 by Fatemeh Binesh', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(23, 5, 'post 3 by Fatemeh Binesh', 'This is a sample body for post 3 by Fatemeh Binesh', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(24, 5, 'post 4 by Fatemeh Binesh', 'This is a sample body for post 4 by Fatemeh Binesh', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(25, 5, 'post 5 by Fatemeh Binesh', 'This is a sample body for post 5 by Fatemeh Binesh', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(26, 6, 'post 1 by Danial Isaabadi', 'This is a sample body for post 1 by Danial Isaabadi', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(27, 6, 'post 2 by Danial Isaabadi', 'This is a sample body for post 2 by Danial Isaabadi', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(28, 6, 'post 3 by Danial Isaabadi', 'This is a sample body for post 3 by Danial Isaabadi', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(29, 6, 'post 4 by Danial Isaabadi', 'This is a sample body for post 4 by Danial Isaabadi', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(30, 6, 'post 5 by Danial Isaabadi', 'This is a sample body for post 5 by Danial Isaabadi', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(31, 7, 'post 1 by Aida Sadeghi', 'This is a sample body for post 1 by Aida Sadeghi', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(32, 7, 'post 2 by Aida Sadeghi', 'This is a sample body for post 2 by Aida Sadeghi', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(33, 7, 'post 3 by Aida Sadeghi', 'This is a sample body for post 3 by Aida Sadeghi', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(34, 7, 'post 4 by Aida Sadeghi', 'This is a sample body for post 4 by Aida Sadeghi', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(35, 7, 'post 5 by Aida Sadeghi', 'This is a sample body for post 5 by Aida Sadeghi', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(36, 8, 'post 1 by Amirhosein Tasharrofi', 'This is a sample body for post 1 by Amirhosein Tasharrofi', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(37, 8, 'post 2 by Amirhosein Tasharrofi', 'This is a sample body for post 2 by Amirhosein Tasharrofi', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(38, 8, 'post 3 by Amirhosein Tasharrofi', 'This is a sample body for post 3 by Amirhosein Tasharrofi', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(39, 8, 'post 4 by Amirhosein Tasharrofi', 'This is a sample body for post 4 by Amirhosein Tasharrofi', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(40, 8, 'post 5 by Amirhosein Tasharrofi', 'This is a sample body for post 5 by Amirhosein Tasharrofi', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(41, 9, 'post 1 by Masoud Taghipour', 'This is a sample body for post 1 by Masoud Taghipour', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(42, 9, 'post 2 by Masoud Taghipour', 'This is a sample body for post 2 by Masoud Taghipour', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(43, 9, 'post 3 by Masoud Taghipour', 'This is a sample body for post 3 by Masoud Taghipour', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(44, 9, 'post 4 by Masoud Taghipour', 'This is a sample body for post 4 by Masoud Taghipour', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(45, 9, 'post 5 by Masoud Taghipour', 'This is a sample body for post 5 by Masoud Taghipour', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(46, 10, 'post 1 by Ali Daneshmand', 'This is a sample body for post 1 by Ali Daneshmand', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(47, 10, 'post 2 by Ali Daneshmand', 'This is a sample body for post 2 by Ali Daneshmand', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(48, 10, 'post 3 by Ali Daneshmand', 'This is a sample body for post 3 by Ali Daneshmand', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(49, 10, 'post 4 by Ali Daneshmand', 'This is a sample body for post 4 by Ali Daneshmand', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(50, 10, 'post 5 by Ali Daneshmand', 'This is a sample body for post 5 by Ali Daneshmand', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(51, 11, 'post 1 by Omid Haghgoo', 'This is a sample body for post 1 by Omid Haghgoo', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(52, 11, 'post 2 by Omid Haghgoo', 'This is a sample body for post 2 by Omid Haghgoo', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(53, 11, 'post 3 by Omid Haghgoo', 'This is a sample body for post 3 by Omid Haghgoo', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(54, 11, 'post 4 by Omid Haghgoo', 'This is a sample body for post 4 by Omid Haghgoo', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(55, 11, 'post 5 by Omid Haghgoo', 'This is a sample body for post 5 by Omid Haghgoo', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(56, 12, 'post 1 by Mostafa Montazery', 'This is a sample body for post 1 by Mostafa Montazery', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(57, 12, 'post 2 by Mostafa Montazery', 'This is a sample body for post 2 by Mostafa Montazery', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(58, 12, 'post 3 by Mostafa Montazery', 'This is a sample body for post 3 by Mostafa Montazery', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(59, 12, 'post 4 by Mostafa Montazery', 'This is a sample body for post 4 by Mostafa Montazery', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(60, 12, 'post 5 by Mostafa Montazery', 'This is a sample body for post 5 by Mostafa Montazery', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(61, 13, 'post 1 by Shakila Shaker', 'This is a sample body for post 1 by Shakila Shaker', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(62, 13, 'post 2 by Shakila Shaker', 'This is a sample body for post 2 by Shakila Shaker', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(63, 13, 'post 3 by Shakila Shaker', 'This is a sample body for post 3 by Shakila Shaker', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(64, 13, 'post 4 by Shakila Shaker', 'This is a sample body for post 4 by Shakila Shaker', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(65, 13, 'post 5 by Shakila Shaker', 'This is a sample body for post 5 by Shakila Shaker', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(66, 14, 'post 1 by fatemeh khajeh', 'This is a sample body for post 1 by fatemeh khajeh', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(67, 14, 'post 2 by fatemeh khajeh', 'This is a sample body for post 2 by fatemeh khajeh', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(68, 14, 'post 3 by fatemeh khajeh', 'This is a sample body for post 3 by fatemeh khajeh', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(69, 14, 'post 4 by fatemeh khajeh', 'This is a sample body for post 4 by fatemeh khajeh', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(70, 14, 'post 5 by fatemeh khajeh', 'This is a sample body for post 5 by fatemeh khajeh', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(71, 15, 'post 1 by Mobina Amini', 'This is a sample body for post 1 by Mobina Amini', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(72, 15, 'post 2 by Mobina Amini', 'This is a sample body for post 2 by Mobina Amini', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(73, 15, 'post 3 by Mobina Amini', 'This is a sample body for post 3 by Mobina Amini', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(74, 15, 'post 4 by Mobina Amini', 'This is a sample body for post 4 by Mobina Amini', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(75, 15, 'post 5 by Mobina Amini', 'This is a sample body for post 5 by Mobina Amini', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(76, 16, 'post 1 by Shahed Shirazi', 'This is a sample body for post 1 by Shahed Shirazi', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(77, 16, 'post 2 by Shahed Shirazi', 'This is a sample body for post 2 by Shahed Shirazi', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(78, 16, 'post 3 by Shahed Shirazi', 'This is a sample body for post 3 by Shahed Shirazi', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(79, 16, 'post 4 by Shahed Shirazi', 'This is a sample body for post 4 by Shahed Shirazi', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(80, 16, 'post 5 by Shahed Shirazi', 'This is a sample body for post 5 by Shahed Shirazi', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(81, 17, 'post 1 by amirhosseinasadi', 'This is a sample body for post 1 by amirhosseinasadi', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(82, 17, 'post 2 by amirhosseinasadi', 'This is a sample body for post 2 by amirhosseinasadi', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(83, 17, 'post 3 by amirhosseinasadi', 'This is a sample body for post 3 by amirhosseinasadi', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(84, 17, 'post 4 by amirhosseinasadi', 'This is a sample body for post 4 by amirhosseinasadi', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(85, 17, 'post 5 by amirhosseinasadi', 'This is a sample body for post 5 by amirhosseinasadi', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(86, 18, 'post 1 by Ghazal Rezaei', 'This is a sample body for post 1 by Ghazal Rezaei', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(87, 18, 'post 2 by Ghazal Rezaei', 'This is a sample body for post 2 by Ghazal Rezaei', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(88, 18, 'post 3 by Ghazal Rezaei', 'This is a sample body for post 3 by Ghazal Rezaei', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(89, 18, 'post 4 by Ghazal Rezaei', 'This is a sample body for post 4 by Ghazal Rezaei', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(90, 18, 'post 5 by Ghazal Rezaei', 'This is a sample body for post 5 by Ghazal Rezaei', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(91, 19, 'post 1 by Mobina Fallah', 'This is a sample body for post 1 by Mobina Fallah', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(92, 19, 'post 2 by Mobina Fallah', 'This is a sample body for post 2 by Mobina Fallah', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(93, 19, 'post 3 by Mobina Fallah', 'This is a sample body for post 3 by Mobina Fallah', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(94, 19, 'post 4 by Mobina Fallah', 'This is a sample body for post 4 by Mobina Fallah', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(95, 19, 'post 5 by Mobina Fallah', 'This is a sample body for post 5 by Mobina Fallah', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(96, 20, 'post 1 by Mahdieh panjei', 'This is a sample body for post 1 by Mahdieh panjei', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(97, 20, 'post 2 by Mahdieh panjei', 'This is a sample body for post 2 by Mahdieh panjei', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(98, 20, 'post 3 by Mahdieh panjei', 'This is a sample body for post 3 by Mahdieh panjei', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(99, 20, 'post 4 by Mahdieh panjei', 'This is a sample body for post 4 by Mahdieh panjei', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(100, 20, 'post 5 by Mahdieh panjei', 'This is a sample body for post 5 by Mahdieh panjei', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(101, 21, 'post 1 by taha sadeghi', 'This is a sample body for post 1 by taha sadeghi', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(102, 21, 'post 2 by taha sadeghi', 'This is a sample body for post 2 by taha sadeghi', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(103, 21, 'post 3 by taha sadeghi', 'This is a sample body for post 3 by taha sadeghi', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(104, 21, 'post 4 by taha sadeghi', 'This is a sample body for post 4 by taha sadeghi', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(105, 21, 'post 5 by taha sadeghi', 'This is a sample body for post 5 by taha sadeghi', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(106, 22, 'post 1 by Sadjad Rezagholizadeh', 'This is a sample body for post 1 by Sadjad Rezagholizadeh', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(107, 22, 'post 2 by Sadjad Rezagholizadeh', 'This is a sample body for post 2 by Sadjad Rezagholizadeh', '2025-05-30 12:32:23', '2025-05-30 12:32:23'),
(108, 22, 'post 3 by Sadjad Rezagholizadeh', 'This is a sample body for post 3 by Sadjad Rezagholizadeh', '2025-05-30 12:32:24', '2025-05-30 12:32:24'),
(109, 22, 'post 4 by Sadjad Rezagholizadeh', 'This is a sample body for post 4 by Sadjad Rezagholizadeh', '2025-05-30 12:32:24', '2025-05-30 12:32:24'),
(110, 22, 'post 5 by Sadjad Rezagholizadeh', 'This is a sample body for post 5 by Sadjad Rezagholizadeh', '2025-05-30 12:32:24', '2025-05-30 12:32:24'),
(111, 23, 'post 1 by ali babakordi', 'This is a sample body for post 1 by ali babakordi', '2025-05-30 12:32:24', '2025-05-30 12:32:24'),
(112, 23, 'post 2 by ali babakordi', 'This is a sample body for post 2 by ali babakordi', '2025-05-30 12:32:24', '2025-05-30 12:32:24'),
(113, 23, 'post 3 by ali babakordi', 'This is a sample body for post 3 by ali babakordi', '2025-05-30 12:32:24', '2025-05-30 12:32:24'),
(114, 23, 'post 4 by ali babakordi', 'This is a sample body for post 4 by ali babakordi', '2025-05-30 12:32:24', '2025-05-30 12:32:24'),
(115, 23, 'post 5 by ali babakordi', 'This is a sample body for post 5 by ali babakordi', '2025-05-30 12:32:24', '2025-05-30 12:32:24'),
(116, 24, 'post 1 by AbbasEsmaili', 'This is a sample body for post 1 by AbbasEsmaili', '2025-05-30 12:32:24', '2025-05-30 12:32:24'),
(117, 24, 'post 2 by AbbasEsmaili', 'This is a sample body for post 2 by AbbasEsmaili', '2025-05-30 12:32:24', '2025-05-30 12:32:24'),
(118, 24, 'post 3 by AbbasEsmaili', 'This is a sample body for post 3 by AbbasEsmaili', '2025-05-30 12:32:24', '2025-05-30 12:32:24'),
(119, 24, 'post 4 by AbbasEsmaili', 'This is a sample body for post 4 by AbbasEsmaili', '2025-05-30 12:32:24', '2025-05-30 12:32:24'),
(120, 24, 'post 5 by AbbasEsmaili', 'This is a sample body for post 5 by AbbasEsmaili', '2025-05-30 12:32:24', '2025-05-30 12:32:24');

-- --------------------------------------------------------

--
-- Table structure for table `post_views`
--

CREATE TABLE `post_views` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post_views`
--

INSERT INTO `post_views` (`id`, `post_id`, `views`) VALUES
(1, 1, 341),
(2, 2, 867),
(3, 3, 752),
(4, 4, 727),
(5, 5, 656),
(6, 6, 281),
(7, 7, 446),
(8, 8, 674),
(9, 9, 620),
(10, 10, 729),
(11, 11, 412),
(12, 12, 357),
(13, 13, 467),
(14, 14, 739),
(15, 15, 677),
(16, 16, 650),
(17, 17, 377),
(18, 18, 914),
(19, 19, 151),
(20, 20, 308),
(21, 21, 498),
(22, 22, 786),
(23, 23, 505),
(24, 24, 362),
(25, 25, 438),
(26, 26, 964),
(27, 27, 558),
(28, 28, 353),
(29, 29, 318),
(30, 30, 204),
(31, 31, 720),
(32, 32, 641),
(33, 33, 875),
(34, 34, 894),
(35, 35, 370),
(36, 36, 759),
(37, 37, 278),
(38, 38, 607),
(39, 39, 645),
(40, 40, 584),
(41, 41, 819),
(42, 42, 719),
(43, 43, 868),
(44, 44, 266),
(45, 45, 272),
(46, 46, 535),
(47, 47, 459),
(48, 48, 262),
(49, 49, 122),
(50, 50, 248),
(51, 51, 547),
(52, 52, 765),
(53, 53, 313),
(54, 54, 950),
(55, 55, 286),
(56, 56, 887),
(57, 57, 901),
(58, 58, 449),
(59, 59, 485),
(60, 60, 308),
(61, 61, 706),
(62, 62, 703),
(63, 63, 278),
(64, 64, 680),
(65, 65, 319),
(66, 66, 888),
(67, 67, 750),
(68, 68, 906),
(69, 69, 839),
(70, 70, 303),
(71, 71, 619),
(72, 72, 731),
(73, 73, 491),
(74, 74, 783),
(75, 75, 734),
(76, 76, 471),
(77, 77, 381),
(78, 78, 633),
(79, 79, 342),
(80, 80, 416),
(81, 81, 427),
(82, 82, 274),
(83, 83, 837),
(84, 84, 252),
(85, 85, 654),
(86, 86, 532),
(87, 87, 674),
(88, 88, 995),
(89, 89, 338),
(90, 90, 527),
(91, 91, 443),
(92, 92, 523),
(93, 93, 456),
(94, 94, 951),
(95, 95, 571),
(96, 96, 797),
(97, 97, 379),
(98, 98, 529),
(99, 99, 687),
(100, 100, 114),
(101, 101, 664),
(102, 102, 869),
(103, 103, 684),
(104, 104, 985),
(105, 105, 583),
(106, 106, 436),
(107, 107, 558),
(108, 108, 593),
(109, 109, 865),
(110, 110, 620),
(111, 111, 937),
(112, 112, 133),
(113, 113, 816),
(114, 114, 190),
(115, 115, 219),
(116, 116, 755),
(117, 117, 863),
(118, 118, 522),
(119, 119, 841),
(120, 120, 756);

-- --------------------------------------------------------

--
-- Table structure for table `related_posts`
--

CREATE TABLE `related_posts` (
  `id` int(11) NOT NULL,
  `post_1_id` int(11) NOT NULL,
  `post_2_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `related_posts`
--

INSERT INTO `related_posts` (`id`, `post_1_id`, `post_2_id`) VALUES
(1, 1, 102),
(2, 1, 6),
(3, 1, 97),
(4, 2, 108),
(5, 2, 23),
(6, 2, 58),
(7, 3, 68),
(8, 3, 34),
(9, 3, 44),
(10, 4, 63),
(11, 4, 53),
(12, 4, 65),
(13, 5, 89),
(14, 5, 83),
(15, 5, 57),
(16, 6, 40),
(17, 6, 47),
(18, 6, 62),
(19, 7, 12),
(20, 7, 98),
(21, 7, 100),
(22, 8, 80),
(23, 8, 62),
(24, 8, 99),
(25, 9, 90),
(26, 9, 6),
(27, 9, 14),
(28, 10, 31),
(29, 10, 70),
(30, 10, 115),
(31, 11, 45),
(32, 11, 57),
(33, 11, 98),
(34, 12, 84),
(35, 12, 13),
(36, 12, 6),
(37, 13, 58),
(38, 13, 36),
(39, 13, 79),
(40, 14, 58),
(41, 14, 1),
(42, 14, 99),
(43, 15, 5),
(44, 15, 82),
(45, 15, 10),
(46, 16, 50),
(47, 16, 67),
(48, 16, 88),
(49, 17, 43),
(50, 17, 5),
(51, 17, 104),
(52, 18, 113),
(53, 18, 104),
(54, 18, 87),
(55, 19, 47),
(56, 19, 112),
(57, 19, 70),
(58, 20, 3),
(59, 20, 51),
(60, 20, 62),
(61, 21, 119),
(62, 21, 89),
(63, 21, 7),
(64, 22, 120),
(65, 22, 6),
(66, 22, 118),
(67, 23, 116),
(68, 23, 7),
(69, 23, 2),
(70, 24, 94),
(71, 24, 102),
(72, 24, 51),
(73, 25, 98),
(74, 25, 13),
(75, 25, 30),
(76, 26, 98),
(77, 26, 72),
(78, 26, 114),
(79, 27, 49),
(80, 27, 26),
(81, 27, 88),
(82, 28, 80),
(83, 28, 87),
(84, 28, 13),
(85, 29, 22),
(86, 29, 48),
(87, 29, 78),
(88, 30, 34),
(89, 30, 115),
(90, 30, 120),
(91, 31, 39),
(92, 31, 50),
(93, 31, 100),
(94, 32, 60),
(95, 32, 53),
(96, 32, 19),
(97, 33, 4),
(98, 33, 96),
(99, 33, 34),
(100, 34, 110),
(101, 34, 63),
(102, 34, 39),
(103, 35, 112),
(104, 35, 98),
(105, 35, 114),
(106, 36, 92),
(107, 36, 1),
(108, 36, 49),
(109, 37, 116),
(110, 37, 119),
(111, 37, 50),
(112, 38, 61),
(113, 38, 16),
(114, 38, 80),
(115, 39, 14),
(116, 39, 86),
(117, 39, 6),
(118, 40, 73),
(119, 40, 8),
(120, 40, 30),
(121, 41, 4),
(122, 41, 68),
(123, 41, 43),
(124, 42, 112),
(125, 42, 27),
(126, 42, 76),
(127, 43, 24),
(128, 43, 15),
(129, 43, 106),
(130, 44, 94),
(131, 44, 15),
(132, 44, 40),
(133, 45, 90),
(134, 45, 108),
(135, 45, 14),
(136, 46, 59),
(137, 46, 108),
(138, 46, 23),
(139, 47, 29),
(140, 47, 26),
(141, 47, 21),
(142, 48, 77),
(143, 48, 117),
(144, 48, 61),
(145, 49, 100),
(146, 49, 75),
(147, 49, 88),
(148, 50, 43),
(149, 50, 24),
(150, 50, 76),
(151, 51, 15),
(152, 51, 16),
(153, 51, 58),
(154, 52, 75),
(155, 52, 10),
(156, 52, 8),
(157, 53, 45),
(158, 53, 27),
(159, 53, 40),
(160, 54, 64),
(161, 54, 87),
(162, 54, 52),
(163, 55, 105),
(164, 55, 63),
(165, 55, 78),
(166, 56, 25),
(167, 56, 47),
(168, 56, 72),
(169, 57, 118),
(170, 57, 8),
(171, 57, 99),
(172, 58, 116),
(173, 58, 24),
(174, 58, 36),
(175, 59, 41),
(176, 59, 34),
(177, 59, 38),
(178, 60, 79),
(179, 60, 99),
(180, 60, 29),
(181, 61, 77),
(182, 61, 9),
(183, 61, 12),
(184, 62, 48),
(185, 62, 97),
(186, 62, 117),
(187, 63, 38),
(188, 63, 85),
(189, 63, 25),
(190, 64, 111),
(191, 64, 26),
(192, 64, 82),
(193, 65, 10),
(194, 65, 109),
(195, 65, 5),
(196, 66, 64),
(197, 66, 48),
(198, 66, 13),
(199, 67, 49),
(200, 67, 77),
(201, 67, 36),
(202, 68, 74),
(203, 68, 39),
(204, 68, 35),
(205, 69, 29),
(206, 69, 91),
(207, 69, 85),
(208, 70, 116),
(209, 70, 89),
(210, 70, 101),
(211, 71, 77),
(212, 71, 69),
(213, 71, 7),
(214, 72, 55),
(215, 72, 2),
(216, 72, 90),
(217, 73, 58),
(218, 73, 79),
(219, 73, 85),
(220, 74, 115),
(221, 74, 106),
(222, 74, 24),
(223, 75, 47),
(224, 75, 79),
(225, 75, 12),
(226, 76, 83),
(227, 76, 80),
(228, 76, 49),
(229, 77, 17),
(230, 77, 68),
(231, 77, 39),
(232, 78, 48),
(233, 78, 8),
(234, 78, 93),
(235, 79, 16),
(236, 79, 99),
(237, 79, 6),
(238, 80, 81),
(239, 80, 87),
(240, 80, 55),
(241, 81, 28),
(242, 81, 43),
(243, 81, 31),
(244, 82, 13),
(245, 82, 23),
(246, 82, 65),
(247, 83, 73),
(248, 83, 120),
(249, 83, 68),
(250, 84, 40),
(251, 84, 10),
(252, 84, 91),
(253, 85, 11),
(254, 85, 112),
(255, 85, 7),
(256, 86, 60),
(257, 86, 119),
(258, 86, 9),
(259, 87, 117),
(260, 87, 88),
(261, 87, 11),
(262, 88, 4),
(263, 88, 92),
(264, 88, 22),
(265, 89, 18),
(266, 89, 97),
(267, 89, 92),
(268, 90, 50),
(269, 90, 24),
(270, 90, 74),
(271, 91, 109),
(272, 91, 21),
(273, 91, 92),
(274, 92, 100),
(275, 92, 85),
(276, 92, 9),
(277, 93, 73),
(278, 93, 52),
(279, 93, 72),
(280, 94, 26),
(281, 94, 88),
(282, 94, 108),
(283, 95, 7),
(284, 95, 86),
(285, 95, 105),
(286, 96, 109),
(287, 96, 38),
(288, 96, 7),
(289, 97, 43),
(290, 97, 79),
(291, 97, 18),
(292, 98, 32),
(293, 98, 42),
(294, 98, 113),
(295, 99, 117),
(296, 99, 17),
(297, 99, 7),
(298, 100, 79),
(299, 100, 66),
(300, 100, 69),
(301, 101, 59),
(302, 101, 41),
(303, 101, 44),
(304, 102, 20),
(305, 102, 106),
(306, 102, 74),
(307, 103, 78),
(308, 103, 22),
(309, 103, 39),
(310, 104, 111),
(311, 104, 88),
(312, 104, 77),
(313, 105, 101),
(314, 105, 12),
(315, 105, 34),
(316, 106, 81),
(317, 106, 48),
(318, 106, 22),
(319, 107, 59),
(320, 107, 120),
(321, 107, 66),
(322, 108, 102),
(323, 108, 96),
(324, 108, 95),
(325, 109, 97),
(326, 109, 44),
(327, 109, 98),
(328, 110, 16),
(329, 110, 9),
(330, 110, 55),
(331, 111, 99),
(332, 111, 30),
(333, 111, 84),
(334, 112, 76),
(335, 112, 120),
(336, 112, 50),
(337, 113, 117),
(338, 113, 8),
(339, 113, 120),
(340, 114, 93),
(341, 114, 110),
(342, 114, 105),
(343, 115, 92),
(344, 115, 25),
(345, 115, 110),
(346, 116, 10),
(347, 116, 21),
(348, 116, 23),
(349, 117, 36),
(350, 117, 38),
(351, 117, 48),
(352, 118, 108),
(353, 118, 41),
(354, 118, 94),
(355, 119, 67),
(356, 119, 105),
(357, 119, 42),
(358, 120, 106),
(359, 120, 35),
(360, 120, 101);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Matineh Mousavi', 'matineh.mousavi8200@gmail.com', '$2b$12$PaTfSkbDykkRAvfH67cOUex4NaHjKoSXdYXvk6v8eqId9lc9bK9ve', '2025-05-30 07:57:32', '2025-05-30 07:57:32'),
(2, 'Mobina mahdavi', 'mobina.mahdavi.web@gmail.com', '$2b$12$QW9MH5yEOC1cWAwWUlh.E.s55oswstIxkbSpEdGE2/oT7C38XGhMO', '2025-05-30 07:57:32', '2025-05-30 07:57:32'),
(3, 'Parmida Mehrnikoo', 'Mehrnikoo.net@gmail.com', '$2b$12$w7hR314hP1BfDyfZMYZoMuh5zpHX0mv/HtvHARIclz9ACiFMcuv4u', '2025-05-30 07:57:32', '2025-05-30 07:57:32'),
(4, 'Sara Sarfi', 'sarasarfi79@gmail.com', '$2b$12$SM.s.cWP6zGd1Gm5DCm8q.a39Htcy//JgrP3Om7ltbz8dz0ErYS8q', '2025-05-30 07:57:32', '2025-05-30 07:57:32'),
(5, 'Fatemeh Binesh', 'fatemehbinesh17@gmail.com', '$2b$12$kdne8C1CK/ogmyEAoTfiKuEUXeSfN0ivfHSmRpMxlkDiv1w3vKO5y', '2025-05-30 07:57:32', '2025-05-30 07:57:32'),
(6, 'Danial Isaabadi', 'danial.isaabadi81@gmail.com', '$2b$12$23okEjQmD8FE.XZ1YYMT9eeb8L0vnAF.6FrDr./xiWRrhlN1m4WyS', '2025-05-30 07:57:32', '2025-05-30 07:57:32'),
(7, 'Aida Sadeghi', 'asv94974@gmail.com', '$2b$12$0Ba7xhVdG1Z6qREL1WJ0qOgDA6eas84Oi3EBB7Gsytwbk6F.NMkf2', '2025-05-30 07:57:32', '2025-05-30 07:57:32'),
(8, 'Amirhosein Tasharrofi', 'amirhosein.tasharrofi@gmail.com', '$2b$12$p6gpRecQ0qyW6.G7NcEQ2uQoPBv.xzukm8UqUl3SJzD4WnijKQAAu', '2025-05-30 07:57:32', '2025-05-30 07:57:32'),
(9, 'Masoud Taghipour', 'mtaghipourj@gmail.com', '$2b$12$S6Cx6Q/VjF74g7/IMufHjOOHFipj4PxvIWwk1C6I27QOiLB0susQm', '2025-05-30 07:57:32', '2025-05-30 07:57:32'),
(10, 'Ali Daneshmand', 'daneshmanda8@gmail.com', '$2b$12$GtoWpcUigrlP.wX5e2nC5umuPWt97TdUXWQCZy.fnD6KtXsh482/e', '2025-05-30 07:57:32', '2025-05-30 07:57:32'),
(11, 'Omid Haghgoo', 'O.Haghgoo@gmail.com', '$2b$12$Lgzi4VuuGcuRooAHAMNPGe6TAD2/FCVf6dMS8C007kQ/6vAk3IFPS', '2025-05-30 07:57:32', '2025-05-30 07:57:32'),
(12, 'Mostafa Montazery', 'Mostafamtz@gmail.com', '$2b$12$oJiOh51KBv1562FIBv1jSuWXMezx6Mx8NLTPZwA7CIU5TObahEnuy', '2025-05-30 07:57:32', '2025-05-30 07:57:32'),
(13, 'Shakila Shaker', 'shakilashaker80@gmail.com', '$2b$12$fD.TwYSS0uzZB9muJlzQ2esdVvokM0fP6bA59csxxvnZppRU1xbI6', '2025-05-30 07:57:32', '2025-05-30 07:57:32'),
(14, 'fatemeh khajeh', 'fatemeh.khajeh1404@gmail.com', '$2b$12$prr/Xm/kkhsUvahx.27u0OnlPBnMn96wfQViiwytf6kUOE0koUHxe', '2025-05-30 07:57:32', '2025-05-30 07:57:32'),
(15, 'Mobina Amini', 'mobina.amini.web@gmail.com', '$2b$12$3yXg1k3AfapEc5sLuoksiun6exmz.p2YU7MYaHq8AvWYdMmlPIF8K', '2025-05-30 07:57:32', '2025-05-30 07:57:32'),
(16, 'Shahed Shirazi', 'shirazishaheds926@gmail.com', '$2b$12$BEz1o63iqh6w0fEjejLAi.xpFi4fL0bnHpYOp44q.PYCdZxBBgdCa', '2025-05-30 07:57:32', '2025-05-30 07:57:32'),
(17, 'amirhosseinasadi', 'amirhosseinasadi162@gmail.com', '$2b$12$WvXjH7WkvpbTdQ5mJqCLBu6qD5ByYtfbWOwMuG8CZIhFjZz4s.Nb.', '2025-05-30 07:57:32', '2025-05-30 07:57:32'),
(18, 'Ghazal Rezaei', 'rezaeighazal432@gmail.com', '$2b$12$p1IFb5ksHWQ2CFPc2fHLLOElkr0yzS8pE3Vbeb14nNCAEL7C2fs.a', '2025-05-30 07:57:32', '2025-05-30 07:57:32'),
(19, 'Mobina Fallah', 'flhmobinaa@gmail.com', '$2b$12$9.v0xOPtwplN/Iz533TLcuwA84WtvgYDU6FkBjTIuMf5os1X8GeHK', '2025-05-30 07:57:32', '2025-05-30 07:57:32'),
(20, 'Mahdieh panjei', 'mahdiehpanjei@gmail.com', '$2b$12$PHjrtmrLkdaMVnb1sTyhuuedvRS3huLTcepASYU3E1XmqIotNnrhm', '2025-05-30 07:57:32', '2025-05-30 07:57:32'),
(21, 'taha sadeghi', 'taha18319113@gmail.com', '$2b$12$AtK7OwRGusXZcU9.yk8oqu.gYQRMpsT3V.j1aLK2FJMLas3lhV/hm', '2025-05-30 07:57:32', '2025-05-30 07:57:32'),
(22, 'Sadjad Rezagholizadeh', 'sajjad.rz@gmail.com', '$2b$12$z7AedqyLdKFVOJyfoGSKU.1WF/tdpnceVY9QGlY0WXV5nfRlG/KYa', '2025-05-30 07:57:32', '2025-05-30 07:57:32'),
(23, 'ali babakordi', 'alibabakordi82@gmail.com', '$2b$12$ui27HuIl4m1QgaFrB2x.SekkeFpTmmDiufLNwaqcPD3BZsFI0HP/K', '2025-05-30 07:57:32', '2025-05-30 07:57:32'),
(24, 'AbbasEsmaili', 'abbas@gmail.com', '$2b$12$yA/Ta3itqTA7DCt/FBWMCO.GgUsUT6xIBdqQySBiOiCMpfr21AOpG', '2025-05-30 07:57:32', '2025-05-30 07:57:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_views`
--
ALTER TABLE `post_views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `related_posts`
--
ALTER TABLE `related_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_1_id` (`post_1_id`),
  ADD KEY `post_2_id` (`post_2_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `post_views`
--
ALTER TABLE `post_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `related_posts`
--
ALTER TABLE `related_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=361;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `post_views`
--
ALTER TABLE `post_views`
  ADD CONSTRAINT `post_views_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

--
-- Constraints for table `related_posts`
--
ALTER TABLE `related_posts`
  ADD CONSTRAINT `related_posts_ibfk_1` FOREIGN KEY (`post_1_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `related_posts_ibfk_2` FOREIGN KEY (`post_2_id`) REFERENCES `posts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
