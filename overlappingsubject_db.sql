-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2022 at 02:50 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `overlappingsubject_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `code`, `title`, `semester`, `type`, `credit`, `created_at`, `updated_at`) VALUES
(1, 'ACC 101', 'Basic Accounting', '1', 'Theory', 3, '2022-09-20 08:24:17', '2022-09-20 08:26:16'),
(2, 'CSE 110', 'Introduction to Computer System', '1', 'Lab', 2, '2022-09-20 12:19:34', '2022-09-20 12:19:34'),
(3, 'ENG 101', 'General English', '1', 'Theory', 3, '2022-09-20 12:20:48', '2022-09-20 12:20:48'),
(4, 'EEE 101', 'Electrical Circuits I', '1', 'Theory', 3, '2022-09-21 11:28:47', '2022-09-21 11:28:47'),
(6, 'MAT 105', 'Engineering Mathematics I', '1', 'Theory', 3, '2022-09-21 11:29:56', '2022-09-21 11:29:56'),
(7, 'ME 102', 'Mechanical Engineering Drawing & CAD', '1', 'Lab', 1.5, '2022-09-21 11:30:19', '2022-09-21 11:30:19'),
(8, 'PHY 101', 'Engineering Physics I', '1', 'Lab', 3, '2022-09-21 11:31:01', '2022-09-21 11:31:01'),
(9, 'CSE 103', 'Discrete Mathematics', '2', 'Theory', 3, '2022-09-21 11:33:12', '2022-09-21 11:33:12'),
(10, 'CSE 111', 'Structured Programming', '2', 'Theory', 3, '2022-09-21 11:33:34', '2022-09-21 11:33:34'),
(11, 'CSE 112', 'Structured Programming Laboratory', '2', 'Lab', 1.5, '2022-09-21 11:34:19', '2022-09-21 11:34:19'),
(12, 'EEE 211', 'Electronics I', '2', 'Theory', 3, '2022-09-21 11:34:45', '2022-09-21 11:34:45'),
(13, 'EEE 212', 'Electronics I Laboratory', '2', 'Lab', 1.5, '2022-09-21 22:36:11', '2022-09-21 22:36:11'),
(14, 'EEE 311', 'Digital Electronics', '3', 'Theory', 3, '2022-09-21 22:37:18', '2022-09-21 22:37:18'),
(15, 'CSE 221', 'Data Structure', '3', 'Theory', 3, '2022-09-24 11:13:40', '2022-09-24 11:13:40'),
(16, 'CSE 211', 'Object Oriented Programming', '3', 'Theory', 3, '2022-09-24 11:14:23', '2022-09-24 11:14:23'),
(17, 'CSE 225', 'Algorithm Design and Analysis', '4', 'Theory', 3, '2022-09-24 11:16:00', '2022-09-24 11:16:00'),
(18, 'CSE 237', 'Database Management System', '4', 'Theory', 3, '2022-09-24 11:17:01', '2022-09-24 11:17:01'),
(19, 'EEE 371', 'Microprocessor & Microcontroller', '5', 'Theory', 3, '2022-09-24 11:18:51', '2022-09-24 11:18:51'),
(20, 'MGT 251', 'Organization Behavior', '5', 'Theory', 3, '2022-09-24 11:20:46', '2022-09-24 11:20:46'),
(21, 'CSE 317', 'Artificial Intelligence Laboratory', '6', 'Lab', 3, '2022-09-24 11:22:27', '2022-09-24 11:22:27'),
(22, 'CSE 367', 'Computer Network', '6', 'Theory', 3, '2022-09-24 11:22:59', '2022-09-24 11:22:59'),
(23, 'CSE 453', 'Compiler Instruction', '7', 'Theory', 3, '2022-09-24 11:23:57', '2022-09-24 11:23:57'),
(24, 'ENG 401', 'Technical Writing & Presentation', '7', 'Theory', 2, '2022-09-24 11:24:45', '2022-09-24 11:24:45'),
(25, 'CSE 451', 'Neural Network & Fuzzy Logic', '8', 'Theory', 3, '2022-09-24 11:26:03', '2022-09-24 11:26:03'),
(26, 'CSE 437', 'Network and Computer Security', '8', 'Theory', 3, '2022-09-24 11:26:58', '2022-09-24 11:26:58');

-- --------------------------------------------------------

--
-- Table structure for table `course_limitations`
--

CREATE TABLE `course_limitations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `max_student` int(11) NOT NULL,
  `max_credit` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_limitations`
--

INSERT INTO `course_limitations` (`id`, `max_student`, `max_credit`, `created_at`, `updated_at`) VALUES
(1, 30, 20, '2022-09-20 15:25:25', '2022-11-13 06:40:39');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2022_09_17_153604_create_students_table', 2),
(3, '2022_09_19_150913_create_courses_table', 3),
(4, '2022_09_19_163933_create_sessions_table', 4),
(5, '2022_09_19_165926_create_sessions_table', 5),
(6, '2022_09_20_141234_create_courses_table', 6),
(7, '2022_09_20_145923_create_course_limitations_table', 7),
(8, '2022_09_20_152904_create_enrollments_table', 8),
(9, '2022_09_22_044812_create_pre_enrollments_table', 9),
(10, '2022_11_13_073626_create_pre_enrollments_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pre_enrollments`
--

CREATE TABLE `pre_enrollments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `semester` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pre_enrollments`
--

INSERT INTO `pre_enrollments` (`id`, `semester`, `student_id`, `course_id`, `session_id`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, '6', 18, 20, 6, 'Recourse', 'Pending', '2022-11-13 02:09:19', '2022-11-13 02:09:19'),
(2, '6', 18, 21, 6, 'Regular', 'Pending', '2022-11-13 02:09:19', '2022-11-13 02:09:19'),
(3, '6', 18, 22, 6, 'Regular', 'Pending', '2022-11-13 02:09:20', '2022-11-13 02:09:20'),
(4, '7', 1, 21, 6, 'Recourse', 'Pending', '2022-11-13 02:37:00', '2022-11-13 02:37:00'),
(5, '7', 1, 23, 6, 'Regular', 'Pending', '2022-11-13 02:37:00', '2022-11-13 02:37:00'),
(6, '7', 1, 24, 6, 'Regular', 'Pending', '2022-11-13 02:37:00', '2022-11-13 02:37:00'),
(7, '2', 6, 1, 6, 'Recourse', 'Pending', '2022-11-13 06:47:10', '2022-11-13 06:47:10'),
(8, '2', 6, 3, 6, 'Recourse', 'Pending', '2022-11-13 06:47:10', '2022-11-13 06:47:10'),
(9, '2', 6, 9, 6, 'Regular', 'Pending', '2022-11-13 06:47:10', '2022-11-13 06:47:10'),
(10, '2', 6, 10, 6, 'Regular', 'Pending', '2022-11-13 06:47:11', '2022-11-13 06:47:11'),
(11, '2', 6, 11, 6, 'Regular', 'Pending', '2022-11-13 06:47:11', '2022-11-13 06:47:11'),
(12, '2', 6, 12, 6, 'Regular', 'Pending', '2022-11-13 06:47:11', '2022-11-13 06:47:11'),
(13, '2', 6, 13, 6, 'Regular', 'Pending', '2022-11-13 06:47:11', '2022-11-13 06:47:11'),
(14, '7', 2, 20, 6, 'Regular', 'Pending', '2022-11-13 06:50:59', '2022-11-13 06:50:59'),
(15, '7', 2, 21, 6, 'Recourse', 'Pending', '2022-11-13 06:50:59', '2022-11-13 06:50:59'),
(16, '7', 2, 22, 6, 'Recourse', 'Pending', '2022-11-13 06:50:59', '2022-11-13 06:50:59'),
(17, '7', 2, 23, 6, 'Regular', 'Pending', '2022-11-13 06:50:59', '2022-11-13 06:50:59'),
(18, '7', 2, 24, 6, 'Regular', 'Pending', '2022-11-13 06:51:00', '2022-11-13 06:51:00'),
(19, '7', 10, 20, 6, 'Regular', 'Pending', '2022-11-13 06:52:36', '2022-11-13 06:52:36'),
(20, '7', 10, 21, 6, 'Recourse', 'Pending', '2022-11-13 06:52:37', '2022-11-13 06:52:37'),
(21, '7', 10, 22, 6, 'Recourse', 'Pending', '2022-11-13 06:52:37', '2022-11-13 06:52:37'),
(22, '7', 10, 23, 6, 'Regular', 'Pending', '2022-11-13 06:52:37', '2022-11-13 06:52:37'),
(23, '7', 10, 24, 6, 'Regular', 'Pending', '2022-11-13 06:52:37', '2022-11-13 06:52:37'),
(24, '7', 15, 18, 6, 'Recourse', 'Pending', '2022-11-13 06:55:18', '2022-11-13 06:55:18'),
(25, '7', 15, 21, 6, 'Regular', 'Pending', '2022-11-13 06:55:18', '2022-11-13 06:55:18'),
(26, '7', 15, 23, 6, 'Regular', 'Pending', '2022-11-13 06:55:18', '2022-11-13 06:55:18'),
(27, '7', 15, 24, 6, 'Regular', 'Pending', '2022-11-13 06:55:18', '2022-11-13 06:55:18'),
(28, '5', 14, 14, 6, 'Regular', 'Pending', '2022-11-13 06:57:09', '2022-11-13 06:57:09'),
(29, '5', 14, 15, 6, 'Regular', 'Pending', '2022-11-13 06:57:09', '2022-11-13 06:57:09'),
(30, '5', 14, 16, 6, 'Regular', 'Pending', '2022-11-13 06:57:09', '2022-11-13 06:57:09'),
(31, '5', 14, 18, 6, 'Recourse', 'Pending', '2022-11-13 06:57:09', '2022-11-13 06:57:09'),
(32, '5', 14, 19, 6, 'Regular', 'Pending', '2022-11-13 06:57:10', '2022-11-13 06:57:10'),
(33, '2', 11, 1, 6, 'Recourse', 'Pending', '2022-11-13 06:59:52', '2022-11-13 06:59:52'),
(34, '2', 11, 3, 6, 'Regular', 'Pending', '2022-11-13 06:59:52', '2022-11-13 06:59:52'),
(35, '2', 11, 9, 6, 'Regular', 'Pending', '2022-11-13 06:59:52', '2022-11-13 06:59:52'),
(36, '2', 11, 10, 6, 'Regular', 'Pending', '2022-11-13 06:59:52', '2022-11-13 06:59:52'),
(37, '2', 11, 11, 6, 'Regular', 'Pending', '2022-11-13 06:59:52', '2022-11-13 06:59:52'),
(38, '2', 11, 12, 6, 'Regular', 'Pending', '2022-11-13 06:59:53', '2022-11-13 06:59:53'),
(39, '2', 11, 13, 6, 'Regular', 'Pending', '2022-11-13 06:59:53', '2022-11-13 06:59:53'),
(40, '2', 13, 1, 6, 'Regular', 'Pending', '2022-11-13 07:01:06', '2022-11-13 07:01:06'),
(41, '2', 13, 3, 6, 'Recourse', 'Pending', '2022-11-13 07:01:06', '2022-11-13 07:01:06'),
(42, '2', 13, 9, 6, 'Regular', 'Pending', '2022-11-13 07:01:06', '2022-11-13 07:01:06'),
(43, '2', 13, 10, 6, 'Regular', 'Pending', '2022-11-13 07:01:06', '2022-11-13 07:01:06'),
(44, '2', 13, 11, 6, 'Regular', 'Pending', '2022-11-13 07:01:07', '2022-11-13 07:01:07'),
(45, '2', 13, 12, 6, 'Regular', 'Pending', '2022-11-13 07:01:07', '2022-11-13 07:01:07');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Spring 2021', 'Completed', '2022-09-19 11:08:45', '2022-09-20 08:48:34'),
(5, 'Spring 2022', 'Completed', '2022-09-20 12:14:52', '2022-09-24 10:29:44'),
(6, 'Fall 2022', 'Running', '2022-09-24 10:31:34', '2022-11-13 06:44:48'),
(7, 'Fall 2023', 'Completed', '2022-11-09 13:16:40', '2022-11-10 09:38:55');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `department`, `batch`, `password`, `gender`, `image`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Imam Hasan Sajib', 'imamhasansajib@gmail.com', 'CSE', 35, '$2y$10$C0FNB78OGuXh4DU6dAFmDu1KbJg9Vl3RhoeDPGTLsrTnPEUbuf796', 'Male', '16681727293144989.jpg', 'Technical, Chattogram', '2022-09-17 10:26:44', '2022-11-11 07:18:49'),
(2, 'K.M.Naimuddin', 'Kmnaimuddin@gmail.com', 'CSE', 35, '$2y$10$C0FNB78OGuXh4DU6dAFmDu1KbJg9Vl3RhoeDPGTLsrTnPEUbuf796', 'Male', '1668343787Light_YagamiHD.jpg', 'Bahaddarhat Chattogram', '2022-09-17 10:30:31', '2022-11-13 06:49:47'),
(3, 'Umme Nabila', 'nabila@gmail.com', 'CSE', 36, '$2y$10$C0FNB78OGuXh4DU6dAFmDu1KbJg9Vl3RhoeDPGTLsrTnPEUbuf796', 'Female', '1663508583Light_YagamiHD.jpg', 'Chattogram, Bangladesh', '2022-09-18 07:43:04', '2022-09-24 13:37:17'),
(5, 'Joy Barua', 'joybarua@gmail.com', 'CSE', 35, '$2y$10$C0FNB78OGuXh4DU6dAFmDu1KbJg9Vl3RhoeDPGTLsrTnPEUbuf796', 'Male', '1663516991169096.jpg', 'Bahaddarhat, Chattogram', '2022-09-18 10:03:11', '2022-09-18 10:03:28'),
(6, 'Bijoy Barua', 'bijoy.barua999@gmail.com', 'EEE', 34, '$2y$10$C0FNB78OGuXh4DU6dAFmDu1KbJg9Vl3RhoeDPGTLsrTnPEUbuf796', 'Male', '1663517224169139.jpg', 'Chawkbazar, Chattogram', '2022-09-18 10:07:04', '2022-09-18 10:07:04'),
(7, 'Animesh Dutta', 'Animesh.dutta4321@gmail.com', 'LLB', 40, '$2y$10$C0FNB78OGuXh4DU6dAFmDu1KbJg9Vl3RhoeDPGTLsrTnPEUbuf796', 'Male', '1663517314Light_YagamiHD.jpg', 'Muradpur, Chattogram', '2022-09-18 10:08:34', '2022-09-18 10:08:34'),
(8, 'Saiful Islam', 'saifulislam199@gmail.com', 'CSE', 37, '$2y$10$C0FNB78OGuXh4DU6dAFmDu1KbJg9Vl3RhoeDPGTLsrTnPEUbuf796', 'Male', '166360474956236.jpg', 'Muradpur, Chattogram', '2022-09-19 10:25:49', '2022-09-19 10:25:49'),
(9, 'Admin', 'admin@gmail.com', 'CSE', 1, '$2y$10$C0FNB78OGuXh4DU6dAFmDu1KbJg9Vl3RhoeDPGTLsrTnPEUbuf796', 'Male', '1663610728169104.png', 'Premier University', '2022-09-19 12:05:29', '2022-09-19 12:05:29'),
(10, 'Rakib Hasan', 'Rakib@gmail.com', 'CSE', 35, '$2y$10$C0FNB78OGuXh4DU6dAFmDu1KbJg9Vl3RhoeDPGTLsrTnPEUbuf796', 'Male', '1664048337rio slum street cool and light,Parkour.png', 'Patiya.Chittagong', '2022-09-24 13:38:57', '2022-09-24 13:38:57'),
(11, 'Jahid Shezaan', 'sheezan@gmail.com', 'CSE', 35, '$2y$10$C0FNB78OGuXh4DU6dAFmDu1KbJg9Vl3RhoeDPGTLsrTnPEUbuf796', 'Male', '16640484021.jpg', 'Noakhali, Chattogram', '2022-09-24 13:40:02', '2022-09-24 13:40:02'),
(12, 'Punam Das', 'punam@gmail.com', 'CSE', 36, '$2y$10$C0FNB78OGuXh4DU6dAFmDu1KbJg9Vl3RhoeDPGTLsrTnPEUbuf796', 'Female', '1664048518download.jpg', 'Chittagong, Bangladesh', '2022-09-24 13:41:59', '2022-09-24 13:41:59'),
(13, 'Kaji Jaima', 'jaima@gmail.com', 'CSE', 35, '$2y$10$C0FNB78OGuXh4DU6dAFmDu1KbJg9Vl3RhoeDPGTLsrTnPEUbuf796', 'Female', '1664048604fbba8a4292faeddd.jpg', 'Chittagong', '2022-09-24 13:43:24', '2022-09-24 13:43:24'),
(14, 'NC Jisan', 'jisan@gmail.com', 'CSE', 35, '$2y$10$C0FNB78OGuXh4DU6dAFmDu1KbJg9Vl3RhoeDPGTLsrTnPEUbuf796', 'Male', '1664048957download (1).jpg', 'Dhaka', '2022-09-24 13:49:17', '2022-09-24 13:49:17'),
(15, 'Tanvir Ahmed', 'tanvir@gmail.com', 'CSE', 35, '$2y$10$C0FNB78OGuXh4DU6dAFmDu1KbJg9Vl3RhoeDPGTLsrTnPEUbuf796', 'Male', '1664049036images.jpg', 'Dinajpur', '2022-09-24 13:50:36', '2022-09-24 13:50:36'),
(18, 'Aariya Tanjum', 'Aariya.tanjum@gmail.com', 'CSE', 38, '$2y$10$C0FNB78OGuXh4DU6dAFmDu1KbJg9Vl3RhoeDPGTLsrTnPEUbuf796', 'Female', '16681860461083297.jpg', 'New Market, Chattogram', '2022-11-11 11:00:46', '2022-11-11 11:01:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `courses_code_unique` (`code`);

--
-- Indexes for table `course_limitations`
--
ALTER TABLE `course_limitations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pre_enrollments`
--
ALTER TABLE `pre_enrollments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pre_enrollments_student_id_course_id_session_id_unique` (`student_id`,`course_id`,`session_id`),
  ADD KEY `pre_enrollments_session_id_foreign` (`session_id`),
  ADD KEY `pre_enrollments_course_id_index` (`course_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sessions_name_unique` (`name`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `course_limitations`
--
ALTER TABLE `course_limitations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pre_enrollments`
--
ALTER TABLE `pre_enrollments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pre_enrollments`
--
ALTER TABLE `pre_enrollments`
  ADD CONSTRAINT `pre_enrollments_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pre_enrollments_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pre_enrollments_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
