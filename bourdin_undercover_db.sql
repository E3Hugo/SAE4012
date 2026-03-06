-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: mysql-bourdin.alwaysdata.net
-- Generation Time: Mar 06, 2026 at 08:28 AM
-- Server version: 10.11.15-MariaDB
-- PHP Version: 8.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bourdin_undercover_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `joueurs`
--

CREATE TABLE `joueurs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `score_total` int(11) NOT NULL DEFAULT 0,
  `avatar` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `joueurs`
--

INSERT INTO `joueurs` (`id`, `pseudo`, `email`, `password`, `score_total`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Azurus41', 'azurus41@gmail.com', '$2y$12$8UbCEBMnqwzNLonnWElfs.DFmaBGP/UXOxAxXhTvU53PLQYU68xbK', 0, NULL, NULL, '2026-03-01 08:44:44', '2026-03-01 08:44:44'),
(4, 'Azurus42', 'azurus42@gmail.com', '$2y$12$nhz22HARbNQR1QE43ZenQeJKDf0S1uVqDW2tf5V.PwKvvzebYJOv2', 2975, 'avatars/1772437215_whysosirius.png', NULL, '2026-03-01 10:48:47', '2026-03-02 06:40:15'),
(6, 'Azurus44', 'azurus44@gmail.com', '$2y$12$dpUcB3jIf233jmZWUB/JGuMU6ANgi4VSCwPQc5OSSw/dMrAUQoHzK', 0, NULL, NULL, '2026-03-01 10:49:26', '2026-03-01 10:49:26'),
(9, 'azurus46', 'azurus46@gmail.com', '$2y$12$NIuEYjdLVP9WA251/GTTheZexXBI2kKV/Du6xNq238/tS6LeeDHH.', 850, NULL, NULL, '2026-03-01 15:22:18', '2026-03-01 18:56:41'),
(10, 'Frosilade', 'flora.bourdinpombo@gmail.com', '$2y$12$b.0iLtxauIEYc4iG5GltCuqoqn9l8CMwppipB9jNWf/e3keKMNU1i', 800, NULL, NULL, '2026-03-01 15:28:17', '2026-03-01 19:02:24'),
(11, 'Dally', 'meteorhitgaming2@gmail.com', '$2y$12$UWGA4YGBlCPvIsKboBwClOTdA9O.u7gKYMp0DUTqUT2CJSl3NSUzO', 1125, NULL, NULL, '2026-03-01 19:10:11', '2026-03-01 21:40:18'),
(12, 'Ayou333', 'ayounimation.studio.333@gmail.com', '$2y$12$qTukkpSdbo8S1hn1VqCkZObQHqoEAVrUR0q19.HIkg3FnoGewww5y', 1025, NULL, NULL, '2026-03-01 20:15:43', '2026-03-01 21:28:36'),
(13, 'Azurus47', 'azurus47@gmail.com', '$2y$12$jhFF3p0.EC09ZuDRQFqx/.TJJuy2YeslsufsCC54FQ8h2h/wo/4Yi', 225, 'avatars/1772437258_whysosirius.png', NULL, '2026-03-02 06:25:20', '2026-03-02 14:53:59'),
(14, 'FlashRed', 'ewen.guillon@gmail.com', '$2y$12$0EN/T3tIAXaVV.UJLsRS3.IO8u6X82EPuBK9HemmcXkFH6LbjQz32', 100, NULL, NULL, '2026-03-02 06:26:21', '2026-03-02 06:30:14'),
(15, 'azurus48', 'azurus48@gmail.com', '$2y$12$.p/55b./69jqfAAi5twK4uIQLSJraY/fCvfG7Pwuza1yn4g1si9Y6', 225, NULL, NULL, '2026-03-02 14:43:52', '2026-03-02 15:05:25'),
(16, 'shadow2', 'snowezyou@gmail.com', '$2y$12$FkyqRC8WbHDkDg4.V52rzuav5i7IsW5fuDZD/0NeWAA3dIIme5BtW', 0, NULL, NULL, '2026-03-02 14:44:09', '2026-03-02 14:44:09'),
(17, 'Shadow1', 'lepongiste0@gmail.com', '$2y$12$yz.GeeAjCtNrsX73WZ8Eq.1QlBGJlx9GGVOOIQCuRnLz0YIgHy8Ve', 200, NULL, NULL, '2026-03-02 14:44:47', '2026-03-02 15:11:45'),
(18, 'Admean', 'ewen.guillon2@gmail.com', '$2y$12$vgjZ/hNyPtS0gGrIUsYa0ejZW17X2VEfG5HyB/lmRfEHB7DXvYiZ2', 100, NULL, NULL, '2026-03-02 14:46:48', '2026-03-02 14:50:16'),
(19, 'hola', 'pignoufrl41@gmail.com', '$2y$12$RbRbL7wjqXZaeTG4b0J8suLb/p9yMuq2uHXBKN19OkXWGR3g7kTPm', 0, NULL, NULL, '2026-03-02 15:00:16', '2026-03-02 15:00:16');

-- --------------------------------------------------------

--
-- Table structure for table `joueur_partie`
--

CREATE TABLE `joueur_partie` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `party_id` bigint(20) UNSIGNED NOT NULL,
  `player_id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) NOT NULL,
  `points_gagnes` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `joueur_partie`
--

INSERT INTO `joueur_partie` (`id`, `party_id`, `player_id`, `role`, `points_gagnes`, `created_at`, `updated_at`) VALUES
(1, 1, 9, 'civil', 100, '2026-03-01 17:57:24', '2026-03-01 17:57:24'),
(2, 1, 10, 'civil', 100, '2026-03-01 17:57:24', '2026-03-01 17:57:24'),
(3, 1, 4, 'undercover', 0, '2026-03-01 17:57:24', '2026-03-01 17:57:24'),
(4, 2, 4, 'civil', 100, '2026-03-01 18:02:03', '2026-03-01 18:02:03'),
(5, 2, 9, 'civil', 100, '2026-03-01 18:02:03', '2026-03-01 18:02:03'),
(6, 2, 10, 'undercover', 0, '2026-03-01 18:02:03', '2026-03-01 18:02:03'),
(7, 3, 10, 'civil', 100, '2026-03-01 18:12:46', '2026-03-01 18:12:46'),
(8, 3, 9, 'undercover', 0, '2026-03-01 18:12:46', '2026-03-01 18:12:46'),
(9, 3, 4, 'civil', 100, '2026-03-01 18:12:46', '2026-03-01 18:12:46'),
(10, 4, 4, 'civil', 0, '2026-03-01 18:15:46', '2026-03-01 18:15:46'),
(11, 4, 10, 'civil', 0, '2026-03-01 18:15:46', '2026-03-01 18:15:46'),
(12, 4, 9, 'undercover', 125, '2026-03-01 18:15:46', '2026-03-01 18:15:46'),
(13, 5, 10, 'undercover', 0, '2026-03-01 18:26:58', '2026-03-01 18:26:58'),
(14, 5, 4, 'civil', 100, '2026-03-01 18:26:58', '2026-03-01 18:26:58'),
(15, 5, 9, 'civil', 100, '2026-03-01 18:26:58', '2026-03-01 18:26:58'),
(16, 6, 10, 'civil', 0, '2026-03-01 18:33:13', '2026-03-01 18:33:13'),
(17, 6, 9, 'undercover', 125, '2026-03-01 18:33:13', '2026-03-01 18:33:13'),
(18, 6, 4, 'civil', 0, '2026-03-01 18:33:13', '2026-03-01 18:33:13'),
(19, 7, 4, 'undercover', 0, '2026-03-01 18:40:28', '2026-03-01 18:40:28'),
(20, 7, 9, 'civil', 100, '2026-03-01 18:40:28', '2026-03-01 18:40:28'),
(21, 7, 10, 'civil', 100, '2026-03-01 18:40:28', '2026-03-01 18:40:28'),
(22, 8, 10, 'civil', 100, '2026-03-01 18:44:57', '2026-03-01 18:44:57'),
(23, 8, 4, 'civil', 100, '2026-03-01 18:44:57', '2026-03-01 18:44:57'),
(24, 8, 9, 'undercover', 0, '2026-03-01 18:44:57', '2026-03-01 18:44:57'),
(25, 9, 10, 'undercover', 0, '2026-03-01 18:48:01', '2026-03-01 18:48:01'),
(26, 9, 4, 'civil', 100, '2026-03-01 18:48:01', '2026-03-01 18:48:01'),
(27, 9, 9, 'civil', 100, '2026-03-01 18:48:01', '2026-03-01 18:48:01'),
(28, 10, 4, 'civil', 100, '2026-03-01 18:51:17', '2026-03-01 18:51:17'),
(29, 10, 9, 'undercover', 0, '2026-03-01 18:51:17', '2026-03-01 18:51:17'),
(30, 10, 10, 'civil', 100, '2026-03-01 18:51:17', '2026-03-01 18:51:17'),
(31, 11, 4, 'civil', 100, '2026-03-01 18:53:47', '2026-03-01 18:53:47'),
(32, 11, 9, 'undercover', 0, '2026-03-01 18:53:47', '2026-03-01 18:53:47'),
(33, 11, 10, 'civil', 100, '2026-03-01 18:53:47', '2026-03-01 18:53:47'),
(34, 12, 10, 'civil', 100, '2026-03-01 18:56:41', '2026-03-01 18:56:41'),
(35, 12, 9, 'civil', 100, '2026-03-01 18:56:41', '2026-03-01 18:56:41'),
(36, 12, 4, 'undercover', 0, '2026-03-01 18:56:41', '2026-03-01 18:56:41'),
(37, 13, 10, 'civil', 100, '2026-03-01 19:02:24', '2026-03-01 19:02:24'),
(38, 13, 4, 'civil', 100, '2026-03-01 19:02:24', '2026-03-01 19:02:24'),
(39, 13, 9, 'undercover', 0, '2026-03-01 19:02:24', '2026-03-01 19:02:24'),
(40, 14, 10, 'civil', 0, '2026-03-01 19:07:51', '2026-03-01 19:07:51'),
(41, 14, 4, 'undercover', 125, '2026-03-01 19:07:51', '2026-03-01 19:07:51'),
(42, 14, 9, 'civil', 0, '2026-03-01 19:07:51', '2026-03-01 19:07:51'),
(43, 15, 12, 'civil', 0, '2026-03-01 20:17:27', '2026-03-01 20:17:27'),
(44, 15, 11, 'civil', 0, '2026-03-01 20:17:27', '2026-03-01 20:17:27'),
(45, 15, 4, 'undercover', 125, '2026-03-01 20:17:27', '2026-03-01 20:17:27'),
(46, 16, 12, 'civil', 0, '2026-03-01 20:20:43', '2026-03-01 20:20:43'),
(47, 16, 11, 'undercover', 125, '2026-03-01 20:20:43', '2026-03-01 20:20:43'),
(48, 16, 4, 'civil', 0, '2026-03-01 20:20:43', '2026-03-01 20:20:43'),
(49, 17, 11, 'civil', 100, '2026-03-01 20:23:46', '2026-03-01 20:23:46'),
(50, 17, 4, 'undercover', 0, '2026-03-01 20:23:46', '2026-03-01 20:23:46'),
(51, 17, 12, 'civil', 100, '2026-03-01 20:23:46', '2026-03-01 20:23:46'),
(52, 18, 12, 'civil', 0, '2026-03-01 20:28:39', '2026-03-01 20:28:39'),
(53, 18, 4, 'undercover', 125, '2026-03-01 20:28:39', '2026-03-01 20:28:39'),
(54, 18, 11, 'civil', 0, '2026-03-01 20:28:39', '2026-03-01 20:28:39'),
(55, 19, 11, 'civil', 100, '2026-03-01 20:31:43', '2026-03-01 20:31:43'),
(56, 19, 4, 'undercover', 0, '2026-03-01 20:31:43', '2026-03-01 20:31:43'),
(57, 19, 12, 'civil', 100, '2026-03-01 20:31:43', '2026-03-01 20:31:43'),
(58, 20, 12, 'civil', 100, '2026-03-01 20:33:40', '2026-03-01 20:33:40'),
(59, 20, 4, 'civil', 100, '2026-03-01 20:33:40', '2026-03-01 20:33:40'),
(60, 20, 11, 'undercover', 0, '2026-03-01 20:33:40', '2026-03-01 20:33:40'),
(61, 21, 12, 'civil', 0, '2026-03-01 20:34:57', '2026-03-01 20:34:57'),
(62, 21, 11, 'civil', 0, '2026-03-01 20:34:57', '2026-03-01 20:34:57'),
(63, 21, 4, 'undercover', 125, '2026-03-01 20:34:57', '2026-03-01 20:34:57'),
(64, 22, 4, 'civil', 100, '2026-03-01 20:41:52', '2026-03-01 20:41:52'),
(65, 22, 12, 'civil', 100, '2026-03-01 20:41:52', '2026-03-01 20:41:52'),
(66, 22, 11, 'undercover', 0, '2026-03-01 20:41:52', '2026-03-01 20:41:52'),
(67, 23, 4, 'undercover', 125, '2026-03-01 20:43:55', '2026-03-01 20:43:55'),
(68, 23, 12, 'civil', 0, '2026-03-01 20:43:55', '2026-03-01 20:43:55'),
(69, 23, 11, 'civil', 0, '2026-03-01 20:43:55', '2026-03-01 20:43:55'),
(70, 24, 12, 'civil', 100, '2026-03-01 20:46:44', '2026-03-01 20:46:44'),
(71, 24, 11, 'undercover', 0, '2026-03-01 20:46:44', '2026-03-01 20:46:44'),
(72, 24, 4, 'civil', 100, '2026-03-01 20:46:44', '2026-03-01 20:46:44'),
(73, 25, 12, 'civil', 100, '2026-03-01 20:48:00', '2026-03-01 20:48:00'),
(74, 25, 11, 'undercover', 0, '2026-03-01 20:48:00', '2026-03-01 20:48:00'),
(75, 25, 4, 'civil', 100, '2026-03-01 20:48:00', '2026-03-01 20:48:00'),
(76, 26, 12, 'civil', 0, '2026-03-01 20:49:53', '2026-03-01 20:49:53'),
(77, 26, 4, 'undercover', 125, '2026-03-01 20:49:53', '2026-03-01 20:49:53'),
(78, 26, 11, 'civil', 0, '2026-03-01 20:49:53', '2026-03-01 20:49:53'),
(79, 27, 4, 'undercover', 0, '2026-03-01 20:52:59', '2026-03-01 20:52:59'),
(80, 27, 12, 'civil', 100, '2026-03-01 20:52:59', '2026-03-01 20:52:59'),
(81, 27, 11, 'civil', 100, '2026-03-01 20:52:59', '2026-03-01 20:52:59'),
(82, 28, 11, 'civil', 100, '2026-03-01 20:59:50', '2026-03-01 20:59:50'),
(83, 28, 12, 'undercover', 0, '2026-03-01 20:59:50', '2026-03-01 20:59:50'),
(84, 28, 4, 'civil', 100, '2026-03-01 20:59:50', '2026-03-01 20:59:50'),
(85, 29, 11, 'civil', 100, '2026-03-01 21:01:30', '2026-03-01 21:01:30'),
(86, 29, 12, 'undercover', 0, '2026-03-01 21:01:30', '2026-03-01 21:01:30'),
(87, 29, 4, 'civil', 100, '2026-03-01 21:01:30', '2026-03-01 21:01:30'),
(88, 30, 12, 'undercover', 0, '2026-03-01 21:06:16', '2026-03-01 21:06:16'),
(89, 30, 4, 'civil', 100, '2026-03-01 21:06:16', '2026-03-01 21:06:16'),
(90, 30, 11, 'civil', 100, '2026-03-01 21:06:16', '2026-03-01 21:06:16'),
(91, 31, 11, 'civil', 0, '2026-03-01 21:12:04', '2026-03-01 21:12:04'),
(92, 31, 4, 'civil', 0, '2026-03-01 21:12:04', '2026-03-01 21:12:04'),
(93, 31, 12, 'undercover', 125, '2026-03-01 21:12:04', '2026-03-01 21:12:04'),
(94, 32, 12, 'undercover', 0, '2026-03-01 21:14:55', '2026-03-01 21:14:55'),
(95, 32, 4, 'civil', 100, '2026-03-01 21:14:55', '2026-03-01 21:14:55'),
(96, 32, 11, 'civil', 100, '2026-03-01 21:14:55', '2026-03-01 21:14:55'),
(97, 33, 12, 'undercover', 0, '2026-03-01 21:18:24', '2026-03-01 21:18:24'),
(98, 33, 4, 'civil', 100, '2026-03-01 21:18:24', '2026-03-01 21:18:24'),
(99, 33, 11, 'civil', 100, '2026-03-01 21:18:24', '2026-03-01 21:18:24'),
(100, 34, 12, 'undercover', 0, '2026-03-01 21:20:27', '2026-03-01 21:20:27'),
(101, 34, 4, 'civil', 100, '2026-03-01 21:20:27', '2026-03-01 21:20:27'),
(102, 34, 11, 'civil', 100, '2026-03-01 21:20:27', '2026-03-01 21:20:27'),
(103, 35, 4, 'civil', 100, '2026-03-01 21:23:25', '2026-03-01 21:23:25'),
(104, 35, 12, 'civil', 100, '2026-03-01 21:23:25', '2026-03-01 21:23:25'),
(105, 35, 11, 'undercover', 0, '2026-03-01 21:23:25', '2026-03-01 21:23:25'),
(106, 36, 4, 'civil', 100, '2026-03-01 21:28:36', '2026-03-01 21:28:36'),
(107, 36, 11, 'undercover', 0, '2026-03-01 21:28:36', '2026-03-01 21:28:36'),
(108, 36, 12, 'civil', 100, '2026-03-01 21:28:36', '2026-03-01 21:28:36'),
(109, 37, 4, 'civil', 100, '2026-03-01 21:40:18', '2026-03-01 21:40:18'),
(110, 37, 11, 'civil', 100, '2026-03-01 21:40:18', '2026-03-01 21:40:18'),
(111, 37, 12, 'undercover', 0, '2026-03-01 21:40:18', '2026-03-01 21:40:18'),
(112, 38, 13, 'undercover', 0, '2026-03-02 06:30:14', '2026-03-02 06:30:14'),
(113, 38, 14, 'civil', 100, '2026-03-02 06:30:14', '2026-03-02 06:30:14'),
(114, 39, 17, 'civil', 100, '2026-03-02 14:50:16', '2026-03-02 14:50:16'),
(115, 39, 14, 'undercover', 0, '2026-03-02 14:50:16', '2026-03-02 14:50:16'),
(116, 39, 16, 'mister_white', 0, '2026-03-02 14:50:16', '2026-03-02 14:50:16'),
(117, 39, 15, 'civil', 100, '2026-03-02 14:50:16', '2026-03-02 14:50:16'),
(118, 39, 13, 'civil', 100, '2026-03-02 14:50:16', '2026-03-02 14:50:16'),
(119, 39, 18, 'civil', 100, '2026-03-02 14:50:16', '2026-03-02 14:50:16'),
(120, 40, 17, 'civil', 0, '2026-03-02 14:53:59', '2026-03-02 14:53:59'),
(121, 40, 18, 'civil', 0, '2026-03-02 14:53:59', '2026-03-02 14:53:59'),
(122, 40, 15, 'civil', 0, '2026-03-02 14:53:59', '2026-03-02 14:53:59'),
(123, 40, 14, 'civil', 0, '2026-03-02 14:53:59', '2026-03-02 14:53:59'),
(124, 40, 13, 'undercover', 125, '2026-03-02 14:53:59', '2026-03-02 14:53:59'),
(125, 41, 14, 'civil', 0, '2026-03-02 15:05:25', '2026-03-02 15:05:25'),
(126, 41, 18, 'civil', 0, '2026-03-02 15:05:25', '2026-03-02 15:05:25'),
(127, 41, 17, 'civil', 0, '2026-03-02 15:05:25', '2026-03-02 15:05:25'),
(128, 41, 15, 'undercover', 125, '2026-03-02 15:05:25', '2026-03-02 15:05:25'),
(129, 41, 19, 'civil', 0, '2026-03-02 15:05:25', '2026-03-02 15:05:25'),
(130, 41, 13, 'mister_white', 0, '2026-03-02 15:05:25', '2026-03-02 15:05:25'),
(131, 42, 19, 'civil', 0, '2026-03-02 15:11:45', '2026-03-02 15:11:45'),
(132, 42, 14, 'undercover', 0, '2026-03-02 15:11:45', '2026-03-02 15:11:45'),
(133, 42, 13, 'civil', 0, '2026-03-02 15:11:45', '2026-03-02 15:11:45'),
(134, 42, 18, 'civil', 0, '2026-03-02 15:11:45', '2026-03-02 15:11:45'),
(135, 42, 17, 'civil', 100, '2026-03-02 15:11:45', '2026-03-02 15:11:45'),
(136, 42, 15, 'mister_white', 0, '2026-03-02 15:11:45', '2026-03-02 15:11:45');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(15, '0001_01_01_000000_create_users_table', 1),
(16, '0001_01_01_000001_create_cache_table', 1),
(17, '0001_01_01_000002_create_jobs_table', 1),
(18, '2026_02_15_114014_create_joueurs_table', 1),
(19, '2026_02_15_114014_create_mots_table', 1),
(20, '2026_02_15_114014_create_parties_table', 1),
(21, '2026_02_15_114015_create_joueur_partie_table', 1),
(23, '2026_03_01_145250_create_online_parties_table', 2),
(24, '2026_03_01_145251_create_online_partie_joueurs_table', 3),
(25, '2026_03_01_145252_create_online_messages_table', 3),
(26, '2026_03_01_145252_create_online_votes_table', 3),
(27, '2026_03_01_165739_add_dernier_mot_to_online_partie_joueurs_table', 4),
(28, '2026_03_01_175525_make_joueur_id_nullable_in_online_messages', 5),
(29, '2026_03_01_175542_make_joueur_id_nullable_in_online_messages', 5);

-- --------------------------------------------------------

--
-- Table structure for table `mots`
--

CREATE TABLE `mots` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mot_principal` varchar(255) NOT NULL,
  `mot_undercover` varchar(255) NOT NULL,
  `categorie` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mots`
--

INSERT INTO `mots` (`id`, `mot_principal`, `mot_undercover`, `categorie`, `image`, `created_at`, `updated_at`) VALUES
(101, 'Lion', 'Tigre', 'Animaux', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(102, 'Loup', 'Renard', 'Animaux', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(103, 'Abeille', 'Guêpe', 'Animaux', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(104, 'Pingouin', 'Manchot', 'Animaux', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(105, 'Crapaud', 'Grenouille', 'Animaux', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(106, 'Chien', 'Chat', 'Animaux', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(107, 'Forêt', 'Jungle', 'Nature', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(108, 'Océan', 'Mer', 'Nature', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(109, 'Montagne', 'Campagne', 'Nature', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(110, 'Pluie', 'Neige', 'Nature', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(111, 'Désert', 'Plage', 'Nature', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(112, 'Rivière', 'Cascade', 'Nature', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(113, 'Lac', 'Mer', 'Nature', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(114, 'Arbre', 'Fleur', 'Nature', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(115, 'Herbe', 'Terre', 'Nature', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(116, 'Pizza', 'Quiche', 'Nourriture', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(117, 'Burger', 'Sandwich', 'Nourriture', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(118, 'Pomme', 'Poire', 'Nourriture', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(119, 'Fraise', 'Framboise', 'Nourriture', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(120, 'Chocolat', 'Caramel', 'Nourriture', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(121, 'Café', 'Thé', 'Boissons', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(122, 'Vin', 'Bière', 'Boissons', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(123, 'Coca', 'Pepsi', 'Boissons', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(124, 'Lait', 'Jus d\'orange', 'Boissons', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(125, 'Pain', 'Baguette', 'Nourriture', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(126, 'Miel', 'Confiture', 'Nourriture', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(127, 'Beurre', 'Fromage', 'Nourriture', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(128, 'Sel', 'Sucre', 'Nourriture', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(129, 'Ketchup', 'Mayonnaise', 'Nourriture', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(130, 'Riz', 'Frites', 'Nourriture', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(131, 'Ordinateur', 'Tablette', 'Objets', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(132, 'Téléphone', 'Ordinateur', 'Objets', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(133, 'Chaise', 'Tabouret', 'Objets', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(134, 'Lit', 'Canapé', 'Objets', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(135, 'Couteau', 'Fourchette', 'Objets', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(136, 'Stylo', 'Crayon', 'Objets', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(137, 'Livre', 'BD', 'Loisirs', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(138, 'Miroir', 'Tableau', 'Objets', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(139, 'Lampe', 'Bougie', 'Objets', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(140, 'Savon', 'Shampoing', 'Hygiène', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(141, 'Brosse à dents', 'Peigne', 'Hygiène', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(142, 'Dentifrice', 'Savon', 'Hygiène', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(143, 'Couverture', 'Drap', 'Objets', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(144, 'Oreiller', 'Matelas', 'Objets', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(145, 'Casquette', 'Chapeau', 'Vêtements', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(146, 'Chemise', 'Pull', 'Vêtements', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(147, 'Pantalon', 'Jean', 'Vêtements', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(148, 'Chaussure', 'Pantoufle', 'Vêtements', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(149, 'Montre', 'Réveil', 'Objets', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(150, 'Lunettes', 'Masque', 'Objets', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(151, 'Football', 'Basketball', 'Sport', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(152, 'Tennis', 'Ping-pong', 'Sport', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(153, 'Guitare', 'Piano', 'Musique', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(154, 'Flûte', 'Trompette', 'Musique', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(155, 'Cinéma', 'Télévision', 'Loisirs', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(156, 'Vélo', 'Trottinette', 'Transport', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(157, 'Avion', 'Hélicoptère', 'Transport', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(158, 'Voiture', 'Bus', 'Transport', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(159, 'Plage', 'Piscine', 'Loisirs', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(160, 'Échecs', 'Cartes', 'Jeux', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(161, 'Hiver', 'Été', 'Saisons', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(162, 'Matin', 'Après-midi', 'Temps', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(163, 'Docteur', 'Dentiste', 'Métiers', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(164, 'Maître', 'Élève', 'Métiers', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(165, 'Police', 'Pompier', 'Métiers', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(166, 'Ciel', 'Nuage', 'Espace', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(167, 'Lune', 'Étoile', 'Espace', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(168, 'Or', 'Argent', 'Richesse', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(169, 'France', 'Espagne', 'Géographie', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(170, 'Paris', 'Marseille', 'Géographie', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(171, 'Village', 'Ville', 'Géographie', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(172, 'Taxi', 'VTC', 'Transport', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(173, 'Aéroport', 'Gare', 'Voyage', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(174, 'Hôtel', 'Camping', 'Voyage', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(175, 'Marteau', 'Tournevis', 'Outils', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(176, 'Perceuse', 'Scie', 'Outils', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(177, 'Clou', 'Vis', 'Outils', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(178, 'Peinture', 'Feutre', 'Loisirs', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(179, 'Corde', 'Fil', 'Outils', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(180, 'Douche', 'Bain', 'Maison', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(181, 'Frigo', 'Placard', 'Maison', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(182, 'Four', 'Plaque de cuisson', 'Maison', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(183, 'Assiette', 'Plat', 'Maison', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(184, 'Verre', 'Bouteille', 'Maison', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(185, 'Éponge', 'Balai', 'Maison', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(186, 'Poubelle', 'Sac plastique', 'Maison', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(187, 'Farine', 'Pâte', 'Nourriture', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(188, 'Journal', 'Livre', 'Loisirs', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(189, 'Sac à dos', 'Sac à main', 'Accessoires', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(190, 'Portefeuille', 'Sacoche', 'Accessoires', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(191, 'Clé', 'Télécommande', 'Objets', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(192, 'Batterie', 'Chargeur', 'Technologie', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(193, 'Train', 'Tramway', 'Transport', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46'),
(194, 'Serviette', 'Peignoir', 'Hygiène', NULL, '2026-03-01 09:53:46', '2026-03-01 09:53:46');

-- --------------------------------------------------------

--
-- Table structure for table `online_messages`
--

CREATE TABLE `online_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `online_partie_id` bigint(20) UNSIGNED NOT NULL,
  `joueur_id` bigint(20) UNSIGNED DEFAULT NULL,
  `contenu` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `online_messages`
--

INSERT INTO `online_messages` (`id`, `online_partie_id`, `joueur_id`, `contenu`, `created_at`, `updated_at`) VALUES
(543, 74, NULL, 'La partie commence ! Tour 1.', '2026-03-02 15:03:55', '2026-03-02 15:03:55'),
(544, 74, NULL, 'Les UNDERCOVERS ont gagné ! Le mot des civils était : \"Oreiller\"', '2026-03-02 15:05:25', '2026-03-02 15:05:25'),
(545, 75, NULL, 'La partie commence ! Tour 1.', '2026-03-02 15:08:40', '2026-03-02 15:08:40'),
(546, 75, NULL, 'hola a écrit le mot : \"dff\"', '2026-03-02 15:08:56', '2026-03-02 15:08:56'),
(547, 75, NULL, 'FlashRed a écrit le mot : \"zgeg\"', '2026-03-02 15:09:01', '2026-03-02 15:09:01'),
(548, 75, NULL, 'Azurus47 a écrit le mot : \"tuotèo\"', '2026-03-02 15:09:04', '2026-03-02 15:09:04'),
(549, 75, NULL, 'Admean a écrit le mot : \"fes\"', '2026-03-02 15:09:10', '2026-03-02 15:09:10'),
(550, 75, NULL, 'Shadow1 a écrit le mot : \"qfqf\"', '2026-03-02 15:09:13', '2026-03-02 15:09:13'),
(551, 75, NULL, 'azurus48 a écrit le mot : \"azert\"', '2026-03-02 15:09:16', '2026-03-02 15:09:16'),
(552, 75, NULL, 'Tout le monde a parlé. La phase de débat et vote commence !', '2026-03-02 15:09:16', '2026-03-02 15:09:16'),
(553, 75, NULL, 'FlashRed a été éliminé avec 5 votes. C\'était un UNDERCOVER.', '2026-03-02 15:09:32', '2026-03-02 15:09:32'),
(554, 75, NULL, 'FlashRed a été éliminé avec 5 votes. C\'était un UNDERCOVER.', '2026-03-02 15:09:32', '2026-03-02 15:09:32'),
(555, 75, NULL, 'Nouveau tour ! Tour 2', '2026-03-02 15:09:32', '2026-03-02 15:09:32'),
(556, 75, NULL, 'Nouveau tour ! Tour 2', '2026-03-02 15:09:32', '2026-03-02 15:09:32'),
(557, 75, NULL, 'hola a écrit le mot : \"qfq\"', '2026-03-02 15:09:37', '2026-03-02 15:09:37'),
(558, 75, NULL, 'Azurus47 a écrit le mot : \"jtwe\"', '2026-03-02 15:09:40', '2026-03-02 15:09:40'),
(559, 75, NULL, 'Admean a écrit le mot : \"Gims\"', '2026-03-02 15:09:44', '2026-03-02 15:09:44'),
(560, 75, NULL, 'Shadow1 a écrit le mot : \"bière\"', '2026-03-02 15:09:49', '2026-03-02 15:09:49'),
(561, 75, NULL, 'azurus48 a écrit le mot : \",gtjxk\"', '2026-03-02 15:09:51', '2026-03-02 15:09:51'),
(562, 75, NULL, 'Tout le monde a parlé. La phase de débat et vote commence !', '2026-03-02 15:09:51', '2026-03-02 15:09:51'),
(563, 75, NULL, 'hola a été éliminé avec 4 votes. C\'était un CIVIL.', '2026-03-02 15:10:14', '2026-03-02 15:10:14'),
(564, 75, NULL, 'Nouveau tour ! Tour 3', '2026-03-02 15:10:14', '2026-03-02 15:10:14'),
(565, 75, NULL, 'Azurus47 a écrit le mot : \"qeu(\"', '2026-03-02 15:10:17', '2026-03-02 15:10:17'),
(566, 75, NULL, 'Admean a écrit le mot : \"j\'entre\"', '2026-03-02 15:10:21', '2026-03-02 15:10:21'),
(567, 75, NULL, 'Shadow1 a écrit le mot : \"f\"', '2026-03-02 15:10:25', '2026-03-02 15:10:25'),
(568, 75, NULL, 'azurus48 a écrit le mot : \"d<j\"', '2026-03-02 15:10:29', '2026-03-02 15:10:29'),
(569, 75, NULL, 'Tout le monde a parlé. La phase de débat et vote commence !', '2026-03-02 15:10:29', '2026-03-02 15:10:29'),
(570, 75, NULL, 'Azurus47 a été éliminé avec 3 votes. C\'était un CIVIL.', '2026-03-02 15:10:34', '2026-03-02 15:10:34'),
(571, 75, NULL, 'Nouveau tour ! Tour 4', '2026-03-02 15:10:34', '2026-03-02 15:10:34'),
(572, 75, NULL, 'Admean a écrit le mot : \"fes\"', '2026-03-02 15:10:40', '2026-03-02 15:10:40'),
(573, 75, NULL, 'Shadow1 a écrit le mot : \"rat\"', '2026-03-02 15:10:43', '2026-03-02 15:10:43'),
(574, 75, NULL, 'azurus48 a écrit le mot : \"qsdf\"', '2026-03-02 15:10:45', '2026-03-02 15:10:45'),
(575, 75, NULL, 'Tout le monde a parlé. La phase de débat et vote commence !', '2026-03-02 15:10:46', '2026-03-02 15:10:46'),
(576, 75, NULL, 'Admean a été éliminé avec 2 votes. C\'était un CIVIL.', '2026-03-02 15:10:57', '2026-03-02 15:10:57'),
(577, 75, NULL, 'Nouveau tour ! Tour 5', '2026-03-02 15:10:57', '2026-03-02 15:10:57'),
(578, 75, NULL, 'Shadow1 a écrit le mot : \"fff\"', '2026-03-02 15:10:59', '2026-03-02 15:10:59'),
(579, 75, NULL, 'azurus48 a écrit le mot : \"zrg\"', '2026-03-02 15:11:02', '2026-03-02 15:11:02'),
(580, 75, NULL, 'Tout le monde a parlé. La phase de débat et vote commence !', '2026-03-02 15:11:02', '2026-03-02 15:11:02'),
(581, 75, NULL, 'Égalité ! Personne n\'est éliminé ce tour-ci.', '2026-03-02 15:11:12', '2026-03-02 15:11:12'),
(582, 75, NULL, 'Nouveau tour ! Tour 6', '2026-03-02 15:11:12', '2026-03-02 15:11:12'),
(583, 75, NULL, 'Shadow1 a écrit le mot : \"fff\"', '2026-03-02 15:11:15', '2026-03-02 15:11:15'),
(584, 75, NULL, 'Les CIVILS ont gagné ! Le mot des civils était : \"Paris\"', '2026-03-02 15:11:45', '2026-03-02 15:11:45');

-- --------------------------------------------------------

--
-- Table structure for table `online_parties`
--

CREATE TABLE `online_parties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(12) NOT NULL,
  `statut` enum('waiting','playing','voting','mister_white_guess','finished') NOT NULL DEFAULT 'waiting',
  `mot_id` bigint(20) UNSIGNED DEFAULT NULL,
  `mot_civil` varchar(255) DEFAULT NULL,
  `mot_undercover` varchar(255) DEFAULT NULL,
  `joueur_actuel_index` int(11) NOT NULL DEFAULT 0,
  `phase_vote_id` int(11) DEFAULT NULL,
  `timer_expiry` timestamp NULL DEFAULT NULL,
  `tour_numero` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `online_parties`
--

INSERT INTO `online_parties` (`id`, `code`, `statut`, `mot_id`, `mot_civil`, `mot_undercover`, `joueur_actuel_index`, `phase_vote_id`, `timer_expiry`, `tour_numero`, `created_at`, `updated_at`) VALUES
(73, 'ND0VDV', 'waiting', NULL, NULL, NULL, 0, NULL, NULL, 1, '2026-03-02 14:52:17', '2026-03-02 14:52:17'),
(74, 'XKNEMW', 'finished', 144, 'Oreiller', 'Matelas', 0, NULL, NULL, 1, '2026-03-02 15:03:50', '2026-03-02 15:05:25'),
(75, 'AM9D73', 'finished', 170, 'Paris', 'Marseille', 1, NULL, NULL, 6, '2026-03-02 15:08:26', '2026-03-02 15:11:45');

-- --------------------------------------------------------

--
-- Table structure for table `online_partie_joueurs`
--

CREATE TABLE `online_partie_joueurs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `online_partie_id` bigint(20) UNSIGNED NOT NULL,
  `joueur_id` bigint(20) UNSIGNED NOT NULL,
  `role` enum('civil','undercover','mister_white') DEFAULT NULL,
  `mot` varchar(255) DEFAULT NULL,
  `dernier_mot` varchar(255) DEFAULT NULL,
  `est_elimine` tinyint(1) NOT NULL DEFAULT 0,
  `a_parle` tinyint(1) NOT NULL DEFAULT 0,
  `ordre` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `online_partie_joueurs`
--

INSERT INTO `online_partie_joueurs` (`id`, `online_partie_id`, `joueur_id`, `role`, `mot`, `dernier_mot`, `est_elimine`, `a_parle`, `ordre`, `created_at`, `updated_at`) VALUES
(182, 73, 16, NULL, NULL, NULL, 0, 0, 0, '2026-03-02 14:52:17', '2026-03-02 14:52:17'),
(183, 74, 19, 'civil', 'Oreiller', NULL, 0, 0, 4, '2026-03-02 15:03:50', '2026-03-02 15:03:55'),
(184, 74, 18, 'civil', 'Oreiller', NULL, 1, 0, 1, '2026-03-02 15:03:50', '2026-03-02 15:04:55'),
(185, 74, 15, 'undercover', 'Matelas', NULL, 0, 0, 3, '2026-03-02 15:03:50', '2026-03-02 15:03:55'),
(186, 74, 14, 'civil', 'Oreiller', NULL, 1, 0, 0, '2026-03-02 15:03:51', '2026-03-02 15:04:25'),
(187, 74, 13, 'mister_white', NULL, NULL, 0, 0, 5, '2026-03-02 15:03:51', '2026-03-02 15:03:55'),
(188, 74, 17, 'civil', 'Oreiller', NULL, 1, 0, 2, '2026-03-02 15:03:52', '2026-03-02 15:05:25'),
(189, 75, 13, 'civil', 'Paris', NULL, 1, 1, 2, '2026-03-02 15:08:26', '2026-03-02 15:10:34'),
(190, 75, 15, 'mister_white', NULL, NULL, 1, 0, 5, '2026-03-02 15:08:27', '2026-03-02 15:11:45'),
(191, 75, 18, 'civil', 'Paris', NULL, 1, 1, 3, '2026-03-02 15:08:34', '2026-03-02 15:10:57'),
(192, 75, 19, 'civil', 'Paris', NULL, 1, 1, 0, '2026-03-02 15:08:35', '2026-03-02 15:10:14'),
(193, 75, 17, 'civil', 'Paris', NULL, 0, 1, 4, '2026-03-02 15:08:36', '2026-03-02 15:11:15'),
(194, 75, 14, 'undercover', 'Marseille', NULL, 1, 1, 1, '2026-03-02 15:08:39', '2026-03-02 15:09:32');

-- --------------------------------------------------------

--
-- Table structure for table `online_votes`
--

CREATE TABLE `online_votes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `online_partie_id` bigint(20) UNSIGNED NOT NULL,
  `votant_id` bigint(20) UNSIGNED NOT NULL,
  `cible_id` bigint(20) UNSIGNED NOT NULL,
  `tour_numero` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `online_votes`
--

INSERT INTO `online_votes` (`id`, `online_partie_id`, `votant_id`, `cible_id`, `tour_numero`, `created_at`, `updated_at`) VALUES
(158, 75, 13, 14, 1, '2026-03-02 15:09:26', '2026-03-02 15:09:26'),
(159, 75, 17, 14, 1, '2026-03-02 15:09:27', '2026-03-02 15:09:27'),
(160, 75, 19, 14, 1, '2026-03-02 15:09:29', '2026-03-02 15:09:29'),
(161, 75, 14, 19, 1, '2026-03-02 15:09:31', '2026-03-02 15:09:31'),
(162, 75, 18, 14, 1, '2026-03-02 15:09:32', '2026-03-02 15:09:32'),
(163, 75, 15, 14, 1, '2026-03-02 15:09:32', '2026-03-02 15:09:32'),
(164, 75, 15, 19, 2, '2026-03-02 15:09:54', '2026-03-02 15:09:54'),
(165, 75, 18, 19, 2, '2026-03-02 15:09:58', '2026-03-02 15:09:58'),
(166, 75, 17, 19, 2, '2026-03-02 15:10:00', '2026-03-02 15:10:00'),
(167, 75, 19, 17, 2, '2026-03-02 15:10:06', '2026-03-02 15:10:06'),
(168, 75, 13, 19, 2, '2026-03-02 15:10:14', '2026-03-02 15:10:14'),
(169, 75, 15, 13, 3, '2026-03-02 15:10:32', '2026-03-02 15:10:32'),
(170, 75, 17, 13, 3, '2026-03-02 15:10:32', '2026-03-02 15:10:32'),
(171, 75, 18, 13, 3, '2026-03-02 15:10:33', '2026-03-02 15:10:33'),
(172, 75, 13, 18, 3, '2026-03-02 15:10:34', '2026-03-02 15:10:34'),
(173, 75, 17, 18, 4, '2026-03-02 15:10:53', '2026-03-02 15:10:53'),
(174, 75, 18, 17, 4, '2026-03-02 15:10:55', '2026-03-02 15:10:55'),
(175, 75, 15, 18, 4, '2026-03-02 15:10:57', '2026-03-02 15:10:57'),
(176, 75, 17, 15, 5, '2026-03-02 15:11:09', '2026-03-02 15:11:09'),
(177, 75, 15, 17, 5, '2026-03-02 15:11:12', '2026-03-02 15:11:12');

-- --------------------------------------------------------

--
-- Table structure for table `parties`
--

CREATE TABLE `parties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` datetime NOT NULL,
  `statut` varchar(255) NOT NULL DEFAULT 'en_attente',
  `mot_id` bigint(20) UNSIGNED NOT NULL,
  `gagnant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parties`
--

INSERT INTO `parties` (`id`, `date`, `statut`, `mot_id`, `gagnant_id`, `created_at`, `updated_at`) VALUES
(1, '2026-03-01 18:57:24', 'finished', 133, NULL, '2026-03-01 17:57:24', '2026-03-01 17:57:24'),
(2, '2026-03-01 19:02:03', 'finished', 146, NULL, '2026-03-01 18:02:03', '2026-03-01 18:02:03'),
(3, '2026-03-01 19:12:46', 'finished', 140, NULL, '2026-03-01 18:12:46', '2026-03-01 18:12:46'),
(4, '2026-03-01 19:15:46', 'finished', 131, 9, '2026-03-01 18:15:46', '2026-03-01 18:15:46'),
(5, '2026-03-01 19:26:58', 'finished', 126, NULL, '2026-03-01 18:26:58', '2026-03-01 18:26:58'),
(6, '2026-03-01 19:33:13', 'finished', 182, 9, '2026-03-01 18:33:13', '2026-03-01 18:33:13'),
(7, '2026-03-01 19:40:28', 'finished', 128, NULL, '2026-03-01 18:40:28', '2026-03-01 18:40:28'),
(8, '2026-03-01 19:44:57', 'finished', 173, NULL, '2026-03-01 18:44:57', '2026-03-01 18:44:57'),
(9, '2026-03-01 19:48:01', 'finished', 148, NULL, '2026-03-01 18:48:01', '2026-03-01 18:48:01'),
(10, '2026-03-01 19:51:17', 'finished', 174, NULL, '2026-03-01 18:51:17', '2026-03-01 18:51:17'),
(11, '2026-03-01 19:53:47', 'finished', 127, NULL, '2026-03-01 18:53:47', '2026-03-01 18:53:47'),
(12, '2026-03-01 19:56:41', 'finished', 139, NULL, '2026-03-01 18:56:41', '2026-03-01 18:56:41'),
(13, '2026-03-01 20:02:24', 'finished', 154, NULL, '2026-03-01 19:02:24', '2026-03-01 19:02:24'),
(14, '2026-03-01 20:07:51', 'finished', 146, 4, '2026-03-01 19:07:51', '2026-03-01 19:07:51'),
(15, '2026-03-01 21:17:27', 'finished', 193, 4, '2026-03-01 20:17:27', '2026-03-01 20:17:27'),
(16, '2026-03-01 21:20:43', 'finished', 128, 11, '2026-03-01 20:20:43', '2026-03-01 20:20:43'),
(17, '2026-03-01 21:23:46', 'finished', 118, NULL, '2026-03-01 20:23:46', '2026-03-01 20:23:46'),
(18, '2026-03-01 21:28:39', 'finished', 139, 4, '2026-03-01 20:28:39', '2026-03-01 20:28:39'),
(19, '2026-03-01 21:31:43', 'finished', 188, NULL, '2026-03-01 20:31:43', '2026-03-01 20:31:43'),
(20, '2026-03-01 21:33:40', 'finished', 116, NULL, '2026-03-01 20:33:40', '2026-03-01 20:33:40'),
(21, '2026-03-01 21:34:57', 'finished', 179, 4, '2026-03-01 20:34:57', '2026-03-01 20:34:57'),
(22, '2026-03-01 21:41:52', 'finished', 124, NULL, '2026-03-01 20:41:52', '2026-03-01 20:41:52'),
(23, '2026-03-01 21:43:55', 'finished', 139, 4, '2026-03-01 20:43:55', '2026-03-01 20:43:55'),
(24, '2026-03-01 21:46:44', 'finished', 127, NULL, '2026-03-01 20:46:44', '2026-03-01 20:46:44'),
(25, '2026-03-01 21:48:00', 'finished', 146, NULL, '2026-03-01 20:48:00', '2026-03-01 20:48:00'),
(26, '2026-03-01 21:49:53', 'finished', 154, 4, '2026-03-01 20:49:53', '2026-03-01 20:49:53'),
(27, '2026-03-01 21:52:59', 'finished', 126, NULL, '2026-03-01 20:52:59', '2026-03-01 20:52:59'),
(28, '2026-03-01 21:59:50', 'finished', 131, NULL, '2026-03-01 20:59:50', '2026-03-01 20:59:50'),
(29, '2026-03-01 22:01:30', 'finished', 174, NULL, '2026-03-01 21:01:30', '2026-03-01 21:01:30'),
(30, '2026-03-01 22:06:16', 'finished', 192, NULL, '2026-03-01 21:06:16', '2026-03-01 21:06:16'),
(31, '2026-03-01 22:12:04', 'finished', 143, 12, '2026-03-01 21:12:04', '2026-03-01 21:12:04'),
(32, '2026-03-01 22:14:55', 'finished', 150, NULL, '2026-03-01 21:14:55', '2026-03-01 21:14:55'),
(33, '2026-03-01 22:18:24', 'finished', 160, NULL, '2026-03-01 21:18:24', '2026-03-01 21:18:24'),
(34, '2026-03-01 22:20:27', 'finished', 133, NULL, '2026-03-01 21:20:27', '2026-03-01 21:20:27'),
(35, '2026-03-01 22:23:25', 'finished', 149, NULL, '2026-03-01 21:23:25', '2026-03-01 21:23:25'),
(36, '2026-03-01 22:28:36', 'finished', 136, NULL, '2026-03-01 21:28:36', '2026-03-01 21:28:36'),
(37, '2026-03-01 22:40:18', 'finished', 120, NULL, '2026-03-01 21:40:18', '2026-03-01 21:40:18'),
(38, '2026-03-02 07:30:14', 'finished', 116, 14, '2026-03-02 06:30:14', '2026-03-02 06:30:14'),
(39, '2026-03-02 15:50:16', 'finished', 166, NULL, '2026-03-02 14:50:16', '2026-03-02 14:50:16'),
(40, '2026-03-02 15:53:59', 'finished', 126, 13, '2026-03-02 14:53:59', '2026-03-02 14:53:59'),
(41, '2026-03-02 16:05:25', 'finished', 144, 15, '2026-03-02 15:05:25', '2026-03-02 15:05:25'),
(42, '2026-03-02 16:11:45', 'finished', 170, 17, '2026-03-02 15:11:45', '2026-03-02 15:11:45');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('C7ZaqX478TehCrfLvQPUuQ9PAUhbEMQT6kLmumcG', 17, '2a01:cb09:e055:ab65:c4fe:847b:e50d:6dd', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.6 Safari/605.1.15', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiREtTbXlubzlSSldmZmhnUWd4V251eG45enNxdjVBZ3lJSjF6ZUJJcCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NjA6Imh0dHBzOi8vYm91cmRpbi5hbHdheXNkYXRhLm5ldC91bmRlcmNvdmVyL2pvdWV1ci9sZWFkZXJib2FyZCI7czo1OiJyb3V0ZSI7czoxODoiam91ZXVyLmxlYWRlcmJvYXJkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MzoibG9naW5fam91ZXVyXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTc7fQ==', 1772619903),
('IG8yckE04ZVpBJyEQRtVPdzeVdZxufbOXAvnJDwH', NULL, '52.2.214.255', 'Iframely/1.3.1 (+https://iframely.com/docs/about) Canva', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQWFoRzBWWDlpeVVKOExWNktJMkpsVXltbWNaU0FSdjRjQ0JoT1JMMCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDE6Imh0dHBzOi8vYm91cmRpbi5hbHdheXNkYXRhLm5ldC91bmRlcmNvdmVyIjtzOjU6InJvdXRlIjtzOjc6IndlbGNvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1772615793),
('n8dN8ySA0cEavSj6dDxNeNBoRYAK8WupZ1ydEaQ2', 1, '193.52.208.245', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:147.0) Gecko/20100101 Firefox/147.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYUIxNlZDakZ0RlVrbVdXd1NiQmN4bDYxWnFLenFGZVozV28yQ1lreiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Njc6Imh0dHBzOi8vYm91cmRpbi5hbHdheXNkYXRhLm5ldC91bmRlcmNvdmVyL2pvdWV1cnMvc2VhcmNoP3E9QXp1cnVzNDciO3M6NToicm91dGUiO3M6MTQ6ImpvdWV1cnMuc2VhcmNoIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1772781798),
('SGsHA40ynnqGsapsuTjCWtsd7gEQDK0adg25OLaO', NULL, '172.213.21.153', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko); compatible; ChatGPT-User/1.0; +https://openai.com/bot', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiblQ0dlVpOXpvWGwzZDFIWVFMbUJ2aHo3NzlDeW5kSzZOSHhZQThNaiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDE6Imh0dHBzOi8vYm91cmRpbi5hbHdheXNkYXRhLm5ldC91bmRlcmNvdmVyIjtzOjU6InJvdXRlIjtzOjc6IndlbGNvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1772615479);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin Test', 'admin@example.com', '2026-03-01 08:20:15', '$2y$12$rAY5j5cF96g17znYkfJCveVXphGkK.YGn8z5uNS2sfsxHqOcPL9Jy', 'DmGsNc6A32HdnF19Ci3fEg8biimlFM2EHVoIsOeAguXwDQ7aldOw3Z5qk5UY', '2026-03-01 08:20:16', '2026-03-01 08:20:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `joueurs`
--
ALTER TABLE `joueurs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `joueurs_email_unique` (`email`);

--
-- Indexes for table `joueur_partie`
--
ALTER TABLE `joueur_partie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `joueur_partie_party_id_foreign` (`party_id`),
  ADD KEY `joueur_partie_player_id_foreign` (`player_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mots`
--
ALTER TABLE `mots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `online_messages`
--
ALTER TABLE `online_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `online_messages_online_partie_id_foreign` (`online_partie_id`),
  ADD KEY `online_messages_joueur_id_foreign` (`joueur_id`);

--
-- Indexes for table `online_parties`
--
ALTER TABLE `online_parties`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `online_parties_code_unique` (`code`),
  ADD KEY `online_parties_mot_id_foreign` (`mot_id`);

--
-- Indexes for table `online_partie_joueurs`
--
ALTER TABLE `online_partie_joueurs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `online_partie_joueurs_online_partie_id_joueur_id_unique` (`online_partie_id`,`joueur_id`),
  ADD KEY `online_partie_joueurs_joueur_id_foreign` (`joueur_id`);

--
-- Indexes for table `online_votes`
--
ALTER TABLE `online_votes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `online_votes_online_partie_id_votant_id_tour_numero_unique` (`online_partie_id`,`votant_id`,`tour_numero`),
  ADD KEY `online_votes_votant_id_foreign` (`votant_id`),
  ADD KEY `online_votes_cible_id_foreign` (`cible_id`);

--
-- Indexes for table `parties`
--
ALTER TABLE `parties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parties_mot_id_foreign` (`mot_id`),
  ADD KEY `parties_gagnant_id_foreign` (`gagnant_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `joueurs`
--
ALTER TABLE `joueurs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `joueur_partie`
--
ALTER TABLE `joueur_partie`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `mots`
--
ALTER TABLE `mots`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT for table `online_messages`
--
ALTER TABLE `online_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=585;

--
-- AUTO_INCREMENT for table `online_parties`
--
ALTER TABLE `online_parties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `online_partie_joueurs`
--
ALTER TABLE `online_partie_joueurs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT for table `online_votes`
--
ALTER TABLE `online_votes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `parties`
--
ALTER TABLE `parties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `joueur_partie`
--
ALTER TABLE `joueur_partie`
  ADD CONSTRAINT `joueur_partie_party_id_foreign` FOREIGN KEY (`party_id`) REFERENCES `parties` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `joueur_partie_player_id_foreign` FOREIGN KEY (`player_id`) REFERENCES `joueurs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `online_messages`
--
ALTER TABLE `online_messages`
  ADD CONSTRAINT `online_messages_joueur_id_foreign` FOREIGN KEY (`joueur_id`) REFERENCES `joueurs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `online_messages_online_partie_id_foreign` FOREIGN KEY (`online_partie_id`) REFERENCES `online_parties` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `online_parties`
--
ALTER TABLE `online_parties`
  ADD CONSTRAINT `online_parties_mot_id_foreign` FOREIGN KEY (`mot_id`) REFERENCES `mots` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `online_partie_joueurs`
--
ALTER TABLE `online_partie_joueurs`
  ADD CONSTRAINT `online_partie_joueurs_joueur_id_foreign` FOREIGN KEY (`joueur_id`) REFERENCES `joueurs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `online_partie_joueurs_online_partie_id_foreign` FOREIGN KEY (`online_partie_id`) REFERENCES `online_parties` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `online_votes`
--
ALTER TABLE `online_votes`
  ADD CONSTRAINT `online_votes_cible_id_foreign` FOREIGN KEY (`cible_id`) REFERENCES `joueurs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `online_votes_online_partie_id_foreign` FOREIGN KEY (`online_partie_id`) REFERENCES `online_parties` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `online_votes_votant_id_foreign` FOREIGN KEY (`votant_id`) REFERENCES `joueurs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `parties`
--
ALTER TABLE `parties`
  ADD CONSTRAINT `parties_gagnant_id_foreign` FOREIGN KEY (`gagnant_id`) REFERENCES `joueurs` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `parties_mot_id_foreign` FOREIGN KEY (`mot_id`) REFERENCES `mots` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
