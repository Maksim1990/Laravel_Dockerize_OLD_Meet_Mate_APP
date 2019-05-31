-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 31, 2019 at 11:01 PM
-- Server version: 5.6.39-cll-lve
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `discover_laravelvue`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

CREATE TABLE `advertisements` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_till` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_to_friends` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `active` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `photo_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advertisements`
--

INSERT INTO `advertisements` (`id`, `user_id`, `title`, `type_id`, `category_id`, `description`, `active_till`, `show_to_friends`, `active`, `photo_id`, `created_at`, `updated_at`) VALUES
(3, 32, 'New travel to Singapore', 1, 1, 'Travel to Singapore!!!!!!!!!!!!!!HJBJBKJB', '03/01/2023', 'Y', 'Y', 96, '2017-09-16 10:42:03', '2017-09-16 10:42:03'),
(4, 32, 'France in beauty!!!', 2, 2, 'france now in our travel list', '03/19/2023', 'Y', 'Y', 100, '2017-09-16 17:38:57', '2017-09-16 17:38:57');

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `article_likes`
--

CREATE TABLE `article_likes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_post_comments`
--

CREATE TABLE `blog_post_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `comment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_id` int(11) NOT NULL,
  `module_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_post_comments`
--

INSERT INTO `blog_post_comments` (`id`, `user_id`, `post_id`, `comment`, `module_id`, `module_name`, `created_at`, `updated_at`) VALUES
(1, 36, 1, 'Interesting article!)', 1, 'Post', '2017-09-28 04:43:57', '2017-09-28 04:43:57'),
(2, 32, 1, 'Thanks for such comment!', 1, 'Post', '2017-09-28 06:20:10', '2017-09-28 06:20:10');

-- --------------------------------------------------------

--
-- Table structure for table `calendars`
--

CREATE TABLE `calendars` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `type_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `type_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Indonesia', '2017-08-21 13:15:25', '2017-08-21 13:15:25'),
(2, 2, 'Football', '2017-08-21 15:17:11', '2017-08-21 15:17:11'),
(3, 1, 'Thailand', '2017-09-28 04:34:49', '2017-09-28 04:34:49'),
(4, 1, 'Singapore', '2017-09-28 06:20:48', '2017-09-28 06:20:48');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `community_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `comment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_id` int(11) NOT NULL,
  `module_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_already` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `community_id`, `post_id`, `comment`, `module_id`, `module_name`, `read_already`, `created_at`, `updated_at`) VALUES
(1, 32, 3, 73, 'Interesting place! And beautiful city!', 2, 'Community', 1, '2017-09-28 06:44:00', '2017-09-28 16:54:24');

-- --------------------------------------------------------

--
-- Table structure for table `communities`
--

CREATE TABLE `communities` (
  `id` int(10) UNSIGNED NOT NULL,
  `type_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `communities`
--

INSERT INTO `communities` (`id`, `type_id`, `category_id`, `name`, `description`, `photo_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 1, 4, 'Travel to Singapore', 'Travel to Singapore ) New group', 25, 32, '2017-08-21 14:24:58', '2017-09-28 06:56:33'),
(3, 1, 3, 'Nakhon Si Thammarat community', 'Community for those who like and passionate this beautiful thai city on the south of Thailand', 115, 36, '2017-09-28 04:37:15', '2017-09-28 04:39:30');

-- --------------------------------------------------------

--
-- Table structure for table `community_images`
--

CREATE TABLE `community_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `community_id` int(10) UNSIGNED NOT NULL,
  `photo_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `community_images`
--

INSERT INTO `community_images` (`id`, `user_id`, `community_id`, `photo_id`, `created_at`, `updated_at`) VALUES
(1, 32, 1, 24, '2017-08-21 14:20:41', '2017-08-21 14:20:41'),
(2, 32, 2, 25, '2017-08-21 14:24:58', '2017-08-21 14:24:58'),
(3, 36, 3, 114, '2017-09-28 04:37:15', '2017-09-28 04:37:15');

-- --------------------------------------------------------

--
-- Table structure for table `community_posts`
--

CREATE TABLE `community_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_id` int(11) NOT NULL,
  `community_id` int(11) NOT NULL,
  `read_already` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `community_posts`
--

INSERT INTO `community_posts` (`id`, `user_id`, `text`, `photo_id`, `community_id`, `read_already`, `created_at`, `updated_at`) VALUES
(49, 33, 'Test 222', 0, 1, 1, '2017-08-22 16:44:36', '2017-09-11 18:10:49'),
(59, 33, 'Maksim 1990', 50, 1, 1, '2017-08-29 18:48:42', '2017-09-11 18:10:49'),
(69, 32, 'FFFFFFFFFFFFFFFFF VVV', 78, 2, 1, '2017-09-10 15:55:46', '2017-09-18 06:35:21'),
(70, 32, 'DDDDDDDDDDDDDDDDD', 79, 2, 1, '2017-09-10 16:05:04', '2017-09-10 16:16:07'),
(73, 36, 'Festival in one of the temples in Nakhon Si Thammarat <img width=\'30\' src=/laravelvue//images/emoji/flag/1f1e8-1f1f7.png  alt=\'\' /><img width=\'30\' src=/laravelvue//images/emoji/classic/1f642.png  alt=\'\' /><img width=\'30\' src=/laravelvue//images/emoji/holidays/1f389.png  alt=\'\' />', 116, 3, 1, '2017-09-28 04:42:30', '2017-09-28 04:43:01');

-- --------------------------------------------------------

--
-- Table structure for table `community_types`
--

CREATE TABLE `community_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `community_types`
--

INSERT INTO `community_types` (`id`, `name`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Travel', 32, '2017-08-21 13:12:29', '2017-08-21 13:12:29'),
(2, 'Sport', 32, '2017-08-21 13:12:41', '2017-08-21 13:12:41');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `user_id`, `name`, `lastname`, `phone`, `phone2`, `email`, `email2`, `country`, `city`, `company`, `job_position`, `birthday`, `photo_id`, `created_at`, `updated_at`) VALUES
(2, 32, 'Aleks', '', '', '', 'aleks@mail.com', NULL, 'BY', '', '', '', '', 2, '2017-08-17 15:31:32', '2017-08-17 15:31:32');

-- --------------------------------------------------------

--
-- Table structure for table `contact_images`
--

CREATE TABLE `contact_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `contact_id` int(10) UNSIGNED NOT NULL,
  `photo_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_images`
--

INSERT INTO `contact_images` (`id`, `user_id`, `contact_id`, `photo_id`, `created_at`, `updated_at`) VALUES
(1, 32, 2, 2, '2017-08-17 15:31:32', '2017-08-17 15:31:32');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `input_currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input_value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `output_currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `output_value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboards`
--

CREATE TABLE `dashboards` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(100) NOT NULL,
  `date_time` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `dash_birthday` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `dash_likes` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `dash_comment` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `dash_messages` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dashboards`
--

INSERT INTO `dashboards` (`id`, `user_id`, `date_time`, `dash_birthday`, `dash_likes`, `dash_comment`, `posts`, `dash_messages`, `created_at`, `updated_at`) VALUES
(1, 32, 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', '2017-08-17 14:42:23', '2017-09-15 18:20:09'),
(2, 33, 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', '2017-08-17 16:53:31', '2017-08-17 16:53:31'),
(3, 34, 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', '2017-08-23 18:04:38', '2017-08-23 18:04:38'),
(4, 35, 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', '2017-09-27 16:39:39', '2017-09-27 16:39:39'),
(5, 36, 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', '2017-09-27 17:08:11', '2017-09-27 17:08:11'),
(6, 37, 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', '2017-09-27 17:11:37', '2017-09-27 17:11:37'),
(7, 38, 'Y', 'Y', '', '', 'Y', 'Y', '2017-09-27 17:25:20', '2018-03-02 20:55:33'),
(8, 39, 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', '2017-09-27 17:28:05', '2017-09-27 17:28:05'),
(9, 40, 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', '2017-09-27 17:30:48', '2017-09-27 17:30:48'),
(10, 41, 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', '2017-09-27 17:35:48', '2017-09-27 17:35:48'),
(11, 42, 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', '2017-09-27 17:39:40', '2017-09-27 17:39:40'),
(12, 43, 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', '2017-09-27 17:41:29', '2017-09-27 17:41:29');

-- --------------------------------------------------------

--
-- Table structure for table `event_models`
--

CREATE TABLE `event_models` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `friendships`
--

CREATE TABLE `friendships` (
  `id` int(10) UNSIGNED NOT NULL,
  `requester` int(11) NOT NULL,
  `user_requested` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `friendships`
--

INSERT INTO `friendships` (`id`, `requester`, `user_requested`, `status`, `created_at`, `updated_at`) VALUES
(20, 32, 34, 1, '2017-09-15 17:30:40', '2017-09-15 17:30:40'),
(21, 38, 33, 0, '2017-09-27 17:26:32', '2017-09-27 17:26:32'),
(22, 38, 32, 1, '2017-09-27 17:26:37', '2017-09-27 17:43:38'),
(23, 39, 38, 0, '2017-09-27 17:29:57', '2017-09-27 17:29:57'),
(24, 43, 36, 1, '2017-09-27 17:43:02', '2017-09-28 03:44:01'),
(25, 43, 40, 0, '2017-09-27 17:43:05', '2017-09-27 17:43:05'),
(26, 43, 32, 1, '2017-09-27 17:43:11', '2017-09-27 17:53:22');

-- --------------------------------------------------------

--
-- Table structure for table `gifts`
--

CREATE TABLE `gifts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_sender_id` int(10) UNSIGNED NOT NULL,
  `user_receiver_id` int(10) UNSIGNED NOT NULL,
  `gift_text` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gift_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_already` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gifts`
--

INSERT INTO `gifts` (`id`, `user_sender_id`, `user_receiver_id`, `gift_text`, `gift_path`, `read_already`, `created_at`, `updated_at`) VALUES
(11, 36, 43, 'Welcome on this site Anna!)))', '/laravelvue/images/gifts/580b585b2edbce24c47b2473.png', 1, '2017-09-28 03:45:38', '2017-09-28 08:52:16'),
(12, 32, 38, 'Welcome to website!', '/laravelvue/images/gifts/584c69926e7d5809d2fa63672.png', 1, '2017-09-28 06:59:48', '2018-03-02 20:55:47');

-- --------------------------------------------------------

--
-- Table structure for table `image_advertisements`
--

CREATE TABLE `image_advertisements` (
  `id` int(10) UNSIGNED NOT NULL,
  `advertisement_id` int(10) UNSIGNED NOT NULL,
  `photo_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image_advertisements`
--

INSERT INTO `image_advertisements` (`id`, `advertisement_id`, `photo_id`, `created_at`, `updated_at`) VALUES
(4, 3, 96, '2017-09-16 10:42:03', '2017-09-16 10:42:03'),
(5, 4, 100, '2017-09-16 17:38:57', '2017-09-16 17:38:57');

-- --------------------------------------------------------

--
-- Table structure for table `image_community_posts`
--

CREATE TABLE `image_community_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `community_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `photo_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image_community_posts`
--

INSERT INTO `image_community_posts` (`id`, `user_id`, `community_id`, `post_id`, `photo_id`, `created_at`, `updated_at`) VALUES
(16, 32, 1, 0, 45, '2017-08-29 18:22:04', '2017-08-29 18:22:04'),
(21, 32, 1, 59, 50, '2017-08-29 18:48:33', '2017-08-29 18:48:42'),
(29, 32, 2, 69, 78, '2017-09-10 15:55:44', '2017-09-10 15:55:46'),
(30, 32, 2, 70, 79, '2017-09-10 16:05:02', '2017-09-10 16:05:04'),
(31, 36, 3, 73, 116, '2017-09-28 04:42:28', '2017-09-28 04:42:30');

-- --------------------------------------------------------

--
-- Table structure for table `image_jobs`
--

CREATE TABLE `image_jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `job_id` int(10) UNSIGNED NOT NULL,
  `photo_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image_jobs`
--

INSERT INTO `image_jobs` (`id`, `job_id`, `photo_id`, `created_at`, `updated_at`) VALUES
(1, 1, 118, '2017-09-16 10:43:22', '2017-09-28 07:31:14'),
(2, 2, 117, '2017-09-16 10:46:10', '2017-09-28 07:26:29');

-- --------------------------------------------------------

--
-- Table structure for table `image_user_walls`
--

CREATE TABLE `image_user_walls` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_wall_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `photo_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image_user_walls`
--

INSERT INTO `image_user_walls` (`id`, `user_id`, `user_wall_id`, `post_id`, `photo_id`, `created_at`, `updated_at`) VALUES
(22, 32, 32, 35, 83, '2017-09-15 14:31:03', '2017-09-15 14:31:07'),
(23, 32, 32, 36, 84, '2017-09-15 14:31:36', '2017-09-15 14:31:37'),
(25, 32, 32, 40, 102, '2017-09-27 11:13:00', '2017-09-27 11:13:21');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(100, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewFriendRequest\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":6:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:34;}}s:12:\\\"notification\\\";O:34:\\\"App\\\\Notifications\\\\NewFriendRequest\\\":5:{s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:32;}s:2:\\\"id\\\";s:36:\\\"faad24ef-c9ec-4dc5-8bb1-d794e3261604\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}\"}}', 0, NULL, 1504360970, 1504360970),
(101, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewFriendRequest\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":6:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:34;}}s:12:\\\"notification\\\";O:34:\\\"App\\\\Notifications\\\\NewFriendRequest\\\":5:{s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:32;}s:2:\\\"id\\\";s:36:\\\"faad24ef-c9ec-4dc5-8bb1-d794e3261604\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}s:8:\\\"channels\\\";a:1:{i:0;s:9:\\\"broadcast\\\";}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}\"}}', 0, NULL, 1504360970, 1504360970),
(102, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewFriendRequest\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":6:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:34;}}s:12:\\\"notification\\\";O:34:\\\"App\\\\Notifications\\\\NewFriendRequest\\\":5:{s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:32;}s:2:\\\"id\\\";s:36:\\\"faad24ef-c9ec-4dc5-8bb1-d794e3261604\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}\"}}', 0, NULL, 1504360970, 1504360970),
(103, 'default', '{\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":4:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":3:{s:7:\\\"message\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:11:\\\"App\\\\Message\\\";s:2:\\\"id\\\";i:16;}s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:32;}s:6:\\\"socket\\\";s:13:\\\"220708.229410\\\";}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}\"}}', 0, NULL, 1504892427, 1504892427),
(104, 'default', '{\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":4:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":3:{s:7:\\\"message\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:11:\\\"App\\\\Message\\\";s:2:\\\"id\\\";i:17;}s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:32;}s:6:\\\"socket\\\";s:13:\\\"220724.249316\\\";}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}\"}}', 0, NULL, 1504895123, 1504895123),
(105, 'default', '{\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":4:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":3:{s:7:\\\"message\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:11:\\\"App\\\\Message\\\";s:2:\\\"id\\\";i:18;}s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:32;}s:6:\\\"socket\\\";s:13:\\\"220680.253032\\\";}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}\"}}', 0, NULL, 1504895351, 1504895351),
(106, 'default', '{\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":4:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":3:{s:7:\\\"message\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:11:\\\"App\\\\Message\\\";s:2:\\\"id\\\";i:19;}s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:32;}s:6:\\\"socket\\\";s:13:\\\"220680.253032\\\";}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}\"}}', 0, NULL, 1504895355, 1504895355),
(107, 'default', '{\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":4:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":3:{s:7:\\\"message\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:11:\\\"App\\\\Message\\\";s:2:\\\"id\\\";i:20;}s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:32;}s:6:\\\"socket\\\";s:13:\\\"220680.253032\\\";}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}\"}}', 0, NULL, 1504895418, 1504895418),
(108, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewFriendRequest\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":6:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:33;}}s:12:\\\"notification\\\";O:34:\\\"App\\\\Notifications\\\\NewFriendRequest\\\":5:{s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:32;}s:2:\\\"id\\\";s:36:\\\"e011c886-5847-4d32-8b3b-124dc8fb9a6c\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}\"}}', 0, NULL, 1504953902, 1504953902),
(109, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewFriendRequest\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":6:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:33;}}s:12:\\\"notification\\\";O:34:\\\"App\\\\Notifications\\\\NewFriendRequest\\\":5:{s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:32;}s:2:\\\"id\\\";s:36:\\\"e011c886-5847-4d32-8b3b-124dc8fb9a6c\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}s:8:\\\"channels\\\";a:1:{i:0;s:9:\\\"broadcast\\\";}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}\"}}', 0, NULL, 1504953902, 1504953902),
(110, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewFriendRequest\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":6:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:33;}}s:12:\\\"notification\\\";O:34:\\\"App\\\\Notifications\\\\NewFriendRequest\\\":5:{s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:32;}s:2:\\\"id\\\";s:36:\\\"e011c886-5847-4d32-8b3b-124dc8fb9a6c\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}\"}}', 0, NULL, 1504953902, 1504953902),
(111, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewFriendRequest\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":6:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:33;}}s:12:\\\"notification\\\";O:34:\\\"App\\\\Notifications\\\\NewFriendRequest\\\":5:{s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:32;}s:2:\\\"id\\\";s:36:\\\"67455b59-c8ee-49f8-a691-6ef146d27495\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}\"}}', 0, NULL, 1504954088, 1504954088),
(112, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewFriendRequest\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":6:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:33;}}s:12:\\\"notification\\\";O:34:\\\"App\\\\Notifications\\\\NewFriendRequest\\\":5:{s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:32;}s:2:\\\"id\\\";s:36:\\\"67455b59-c8ee-49f8-a691-6ef146d27495\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}s:8:\\\"channels\\\";a:1:{i:0;s:9:\\\"broadcast\\\";}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}\"}}', 0, NULL, 1504954088, 1504954088),
(113, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewFriendRequest\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":6:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:33;}}s:12:\\\"notification\\\";O:34:\\\"App\\\\Notifications\\\\NewFriendRequest\\\":5:{s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:32;}s:2:\\\"id\\\";s:36:\\\"67455b59-c8ee-49f8-a691-6ef146d27495\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}\"}}', 0, NULL, 1504954089, 1504954089),
(114, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewFriendRequest\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":6:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:33;}}s:12:\\\"notification\\\";O:34:\\\"App\\\\Notifications\\\\NewFriendRequest\\\":5:{s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:32;}s:2:\\\"id\\\";s:36:\\\"2493d902-72ce-47bd-8cfe-70b1004fdf8d\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}\"}}', 0, NULL, 1504954394, 1504954394),
(115, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewFriendRequest\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":6:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:33;}}s:12:\\\"notification\\\";O:34:\\\"App\\\\Notifications\\\\NewFriendRequest\\\":5:{s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:32;}s:2:\\\"id\\\";s:36:\\\"2493d902-72ce-47bd-8cfe-70b1004fdf8d\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}s:8:\\\"channels\\\";a:1:{i:0;s:9:\\\"broadcast\\\";}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}\"}}', 0, NULL, 1504954394, 1504954394),
(116, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewFriendRequest\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":6:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:33;}}s:12:\\\"notification\\\";O:34:\\\"App\\\\Notifications\\\\NewFriendRequest\\\":5:{s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:32;}s:2:\\\"id\\\";s:36:\\\"2493d902-72ce-47bd-8cfe-70b1004fdf8d\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}\"}}', 0, NULL, 1504954394, 1504954394),
(117, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewFriendRequest\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":6:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:33;}}s:12:\\\"notification\\\";O:34:\\\"App\\\\Notifications\\\\NewFriendRequest\\\":5:{s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:32;}s:2:\\\"id\\\";s:36:\\\"4d6541f2-f57b-4329-b7a1-92ff041017b2\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}\"}}', 0, NULL, 1504954491, 1504954491),
(118, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewFriendRequest\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":6:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:33;}}s:12:\\\"notification\\\";O:34:\\\"App\\\\Notifications\\\\NewFriendRequest\\\":5:{s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:32;}s:2:\\\"id\\\";s:36:\\\"4d6541f2-f57b-4329-b7a1-92ff041017b2\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}s:8:\\\"channels\\\";a:1:{i:0;s:9:\\\"broadcast\\\";}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}\"}}', 0, NULL, 1504954491, 1504954491),
(119, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewFriendRequest\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":6:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:33;}}s:12:\\\"notification\\\";O:34:\\\"App\\\\Notifications\\\\NewFriendRequest\\\":5:{s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:32;}s:2:\\\"id\\\";s:36:\\\"4d6541f2-f57b-4329-b7a1-92ff041017b2\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}\"}}', 0, NULL, 1504954491, 1504954491),
(120, 'default', '{\"displayName\":\"App\\\\Notifications\\\\FriendRequestAccepted\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":6:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:33;}}s:12:\\\"notification\\\";O:39:\\\"App\\\\Notifications\\\\FriendRequestAccepted\\\":5:{s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:32;}s:2:\\\"id\\\";s:36:\\\"a4253f59-7739-4d51-b8ff-c3604a93037f\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}\"}}', 0, NULL, 1504954866, 1504954866),
(121, 'default', '{\"displayName\":\"App\\\\Notifications\\\\FriendRequestAccepted\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":6:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:33;}}s:12:\\\"notification\\\";O:39:\\\"App\\\\Notifications\\\\FriendRequestAccepted\\\":5:{s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:32;}s:2:\\\"id\\\";s:36:\\\"a4253f59-7739-4d51-b8ff-c3604a93037f\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}s:8:\\\"channels\\\";a:1:{i:0;s:9:\\\"broadcast\\\";}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}\"}}', 0, NULL, 1504954866, 1504954866),
(122, 'default', '{\"displayName\":\"App\\\\Notifications\\\\FriendRequestAccepted\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":6:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:33;}}s:12:\\\"notification\\\";O:39:\\\"App\\\\Notifications\\\\FriendRequestAccepted\\\":5:{s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:32;}s:2:\\\"id\\\";s:36:\\\"a4253f59-7739-4d51-b8ff-c3604a93037f\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}\"}}', 0, NULL, 1504954866, 1504954866),
(123, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewFriendRequest\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":6:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:33;}}s:12:\\\"notification\\\";O:34:\\\"App\\\\Notifications\\\\NewFriendRequest\\\":5:{s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:32;}s:2:\\\"id\\\";s:36:\\\"6a86d74f-41eb-4652-9322-f8578f976d4a\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}\"}}', 0, NULL, 1504954897, 1504954897),
(124, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewFriendRequest\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":6:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:33;}}s:12:\\\"notification\\\";O:34:\\\"App\\\\Notifications\\\\NewFriendRequest\\\":5:{s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:32;}s:2:\\\"id\\\";s:36:\\\"6a86d74f-41eb-4652-9322-f8578f976d4a\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}s:8:\\\"channels\\\";a:1:{i:0;s:9:\\\"broadcast\\\";}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}\"}}', 0, NULL, 1504954897, 1504954897),
(125, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewFriendRequest\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":6:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:33;}}s:12:\\\"notification\\\";O:34:\\\"App\\\\Notifications\\\\NewFriendRequest\\\":5:{s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:32;}s:2:\\\"id\\\";s:36:\\\"6a86d74f-41eb-4652-9322-f8578f976d4a\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}\"}}', 0, NULL, 1504954897, 1504954897),
(126, 'default', '{\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":4:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":3:{s:7:\\\"message\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:11:\\\"App\\\\Message\\\";s:2:\\\"id\\\";i:21;}s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:32;}s:6:\\\"socket\\\";s:13:\\\"222698.258918\\\";}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}\"}}', 0, NULL, 1506545688, 1506545688),
(127, 'default', '{\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":4:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":3:{s:7:\\\"message\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:11:\\\"App\\\\Message\\\";s:2:\\\"id\\\";i:22;}s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:36;}s:6:\\\"socket\\\";s:13:\\\"222682.449559\\\";}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}\"}}', 0, NULL, 1506582147, 1506582147),
(128, 'default', '{\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":4:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":3:{s:7:\\\"message\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:11:\\\"App\\\\Message\\\";s:2:\\\"id\\\";i:23;}s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:36;}s:6:\\\"socket\\\";s:13:\\\"222682.449559\\\";}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}\"}}', 0, NULL, 1506582157, 1506582157);

-- --------------------------------------------------------

--
-- Table structure for table `job_offers`
--

CREATE TABLE `job_offers` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `advertisement_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_till` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_to_friends` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `active` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `photo_id` int(11) NOT NULL,
  `country` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_offers`
--

INSERT INTO `job_offers` (`id`, `user_id`, `advertisement_id`, `title`, `company_name`, `type_id`, `category_id`, `description`, `active_till`, `salary`, `show_to_friends`, `active`, `photo_id`, `country`, `city`, `created_at`, `updated_at`) VALUES
(1, 32, 3, 'PHP Developer', 'IB Soft', 1, 1, 'New position available here!!!!!!!!!!!!!', '03/01/2023', '550$', 'Y', 'Y', 118, 'BY', 'Minsk', '2017-09-16 10:43:21', '2017-09-28 07:31:14'),
(2, 32, 3, 'JavaScript Developer', 'HQSoft', 1, 0, 'JavaScript position available!!!!!!!!!!!!', '03/01/2023', '700$', 'Y', 'Y', 117, 'BY', 'Minsk', '2017-09-16 10:46:09', '2017-09-28 07:26:29');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `like` tinyint(1) NOT NULL,
  `module_id` int(10) UNSIGNED NOT NULL,
  `module_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_already` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `item_id`, `like`, `module_id`, `module_name`, `read_already`, `created_at`, `updated_at`) VALUES
(53, 32, 49, 1, 2, 'Community', 1, '2017-09-13 14:36:18', '2017-09-13 14:39:27'),
(61, 32, 59, 1, 2, 'Community', 1, '2017-09-13 14:59:49', '2017-09-13 14:59:56'),
(65, 32, 36, 1, 5, 'UserWall', 1, '2017-09-15 14:32:04', '2017-09-15 14:32:25'),
(66, 32, 35, 1, 5, 'UserWall', 1, '2017-09-15 18:10:32', '2017-09-15 18:12:30'),
(67, 32, 1, 1, 1, 'Post', 1, '2017-09-16 09:38:35', '2017-09-28 06:38:41'),
(68, 32, 40, 1, 5, 'UserWall', 1, '2017-09-27 11:13:48', '2017-09-27 11:13:50'),
(69, 36, 1, 1, 1, 'Post', 1, '2017-09-28 03:58:57', '2017-09-28 04:43:36'),
(70, 32, 73, 1, 2, 'Community', 1, '2017-09-28 06:43:33', '2017-09-28 16:54:24'),
(71, 38, 41, 1, 5, 'UserWall', 0, '2018-03-02 20:56:57', '2018-03-02 20:56:57');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `receiver_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_already` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo_id` int(11) NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `message`, `user_id`, `receiver_id`, `read_already`, `created_at`, `updated_at`, `photo_id`, `path`) VALUES
(1, 'Hello!', 32, '35', 1, '2017-08-18 15:25:30', '2017-09-27 17:55:18', 95, '/images/1505563000my_pic.jpg'),
(2, 'zsasdc', 32, '33', 1, '2017-08-18 15:44:17', '2017-09-16 08:56:40', 95, '/images/1505563000my_pic.jpg'),
(3, 'Hello world!!!', 32, '34', 1, '2017-08-25 16:25:28', '2017-09-16 08:56:40', 95, '/images/1505563000my_pic.jpg'),
(4, 'Privet!!!', 33, '32', 1, '2017-08-25 17:22:36', '2017-09-08 18:23:20', 28, '/images/1503440402tbEY7g39z9I.jpg'),
(5, 'vcwvev', 32, '33', 1, '2017-08-31 15:51:44', '2017-09-16 08:56:40', 95, '/images/1505563000my_pic.jpg'),
(6, 'Test', 33, '32', 1, '2017-08-31 15:52:33', '2017-09-12 17:04:04', 3, '/images/15030005053.jpg'),
(7, 'Test 2', 33, '32', 1, '2017-08-31 16:01:18', '2017-09-08 18:23:20', 3, '/images/15030005053.jpg'),
(8, 'DDD', 32, '33', 1, '2017-08-31 16:04:08', '2017-09-16 08:56:40', 95, '/images/1505563000my_pic.jpg'),
(9, 'LLL', 33, '32', 1, '2017-08-31 16:09:08', '2017-09-08 16:18:10', 3, '/images/15030005053.jpg'),
(10, 'Test HHH', 32, '33', 1, '2017-08-31 16:38:44', '2017-09-16 08:56:40', 95, '/images/1505563000my_pic.jpg'),
(11, 'YYYYYYYYYYYY', 32, '33', 1, '2017-08-31 16:52:38', '2017-09-16 08:56:40', 95, '/images/1505563000my_pic.jpg'),
(12, 'FFFFFFf', 33, '32', 1, '2017-08-31 16:53:13', '2017-09-08 16:18:13', 3, '/images/15030005053.jpg'),
(13, 'BNBN', 32, '33', 1, '2017-08-31 16:54:33', '2017-09-16 08:56:40', 95, '/images/1505563000my_pic.jpg'),
(14, 'Why like this?', 33, '32', 1, '2017-08-31 17:27:44', '2017-09-08 16:17:25', 3, '/images/15030005053.jpg'),
(15, 'Because of this!!!!!!!!!!!', 32, '33', 1, '2017-08-31 17:28:03', '2017-09-16 08:56:40', 95, '/images/1505563000my_pic.jpg'),
(16, 'Test message!!!', 34, '32', 1, '2017-09-08 17:40:26', '2017-09-08 18:24:41', 29, '/images/1503736377my_pic.jpg'),
(17, 'Rtttt', 34, '32', 1, '2017-09-08 18:25:21', '2017-09-08 18:28:41', 29, '/images/1503736377my_pic.jpg'),
(18, 'Test 1', 34, '32', 1, '2017-09-08 18:29:11', '2017-09-08 18:31:04', 29, '/images/1503736377my_pic.jpg'),
(19, 'Test2', 34, '32', 1, '2017-09-08 18:29:15', '2017-09-08 18:31:21', 29, '/images/1503736377my_pic.jpg'),
(20, 'Test 3', 34, '32', 1, '2017-09-08 18:30:17', '2017-09-08 18:31:21', 29, '/images/1503736377my_pic.jpg'),
(21, 'Privet, Anna!', 32, '43', 0, '2017-09-27 17:54:48', '2017-09-27 17:54:48', 95, '/images/1505563000my_pic.jpg'),
(22, 'Hello Richard!', 36, '33', 0, '2017-09-28 04:02:26', '2017-09-28 04:02:26', 106, '/images/150654298016.jpg'),
(23, 'How are you?', 36, '33', 0, '2017-09-28 04:02:37', '2017-09-28 04:02:37', 106, '/images/150654298016.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2017_06_06_204404_create_roles_table', 1),
(6, '2017_06_10_162104_add_photo_id_to_users', 1),
(7, '2017_06_10_173306_create_photos_table', 1),
(8, '2017_06_11_095506_create_posts_table', 1),
(9, '2017_06_12_210212_create_categories_table', 1),
(10, '2017_06_13_225443_add_posts_user_id_to_posts', 1),
(11, '2017_06_16_155219_create_likes_table', 1),
(12, '2017_06_17_152635_create_messages_table', 2),
(13, '2017_06_21_155201_create_friendships_table', 3),
(14, '2017_06_24_084412_create_notifications_table', 4),
(15, '2017_06_24_134447_create_jobs_table', 5),
(16, '2017_06_26_191018_create_articles_table', 6),
(17, '2017_06_28_172955_create_article_likes_table', 7),
(18, '2017_07_07_165720_create_settings_table', 8),
(19, '2017_07_07_173641_create_profiles_table', 8),
(28, '2017_07_08_151954_create_user_images_table', 9),
(29, '2017_07_13_163132_create_communities_table', 9),
(31, '2017_07_13_182012_create_community_types_table', 10),
(32, '2017_07_14_193550_create_calendars_table', 11),
(33, '2017_07_14_204846_create_event_models_table', 11),
(34, '2015_07_22_115516_create_ticketit_tables', 12),
(35, '2015_07_22_123254_alter_users_table', 12),
(36, '2015_09_29_123456_add_completed_at_column_to_ticketit_table', 12),
(37, '2015_10_08_123457_create_settings_table', 12),
(38, '2016_01_15_002617_add_htmlcontent_to_ticketit_and_comments', 12),
(39, '2016_01_15_040207_enlarge_settings_columns', 12),
(40, '2016_01_15_120557_add_indexes', 12),
(41, '2017_07_22_164812_create_dashboards_table', 13),
(43, '2017_07_23_210424_create_advertisements_table', 14),
(44, '2017_07_28_201312_create_job_offers_table', 15),
(45, '2017_07_28_203604_create_notes_table', 16),
(46, '2017_07_30_091855_create_contacts_table', 16),
(47, '2017_07_30_092028_create_translates_table', 16),
(48, '2017_08_04_174303_create_contact_images_table', 17),
(49, '2017_08_20_105609_create_currencies_table', 18),
(50, '2017_08_21_165824_create_community_images_table', 18),
(52, '2017_08_21_174027_create_community_posts_table', 19),
(53, '2017_08_22_211222_create_comments_table', 20),
(54, '2017_08_23_010251_create_user_communities_table', 21),
(55, '2017_08_24_192400_create_notices_table', 22),
(56, '2017_08_26_111324_create_user_walls_table', 23),
(57, '2017_08_26_140317_create_wall_comments_table', 24),
(58, '2017_08_25_190657_create_countries_table', 25),
(60, '2017_08_29_195514_create_image_community_posts_table', 26),
(61, '2017_08_30_190846_create_image_user_walls_table', 27),
(62, '2017_09_01_191653_create_blog_post_comments_table', 28),
(63, '2017_09_03_155512_create_gifts_table', 29),
(64, '2017_09_16_090521_create_image_advertisements_table', 30),
(65, '2017_09_16_131825_create_image_jobs_table', 31);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(19) NOT NULL,
  `name` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `name`) VALUES
(1, 'Posts'),
(2, 'Community'),
(3, 'CommunityUser'),
(4, 'Messages'),
(5, 'UserWall'),
(6, 'Friendship'),
(7, 'Gifts'),
(8, 'UserWallPosts'),
(9, 'CommunityPosts'),
(10, 'UserWallComments'),
(11, 'CommunityPostComments');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remind_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_sender_id` int(10) UNSIGNED NOT NULL,
  `module_id` int(10) UNSIGNED NOT NULL,
  `module_item_id` int(11) NOT NULL,
  `module_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `user_id`, `user_sender_id`, `module_id`, `module_item_id`, `module_name`, `created_at`, `updated_at`) VALUES
(65, 34, 32, 6, 20, 'Friendship', '2017-09-15 17:30:40', '2017-09-15 17:30:40'),
(74, 33, 38, 6, 21, 'Friendship', '2017-09-27 17:26:32', '2017-09-27 17:26:32'),
(76, 38, 39, 6, 23, 'Friendship', '2017-09-27 17:29:57', '2017-09-27 17:29:57'),
(78, 40, 43, 6, 25, 'Friendship', '2017-09-27 17:43:05', '2017-09-27 17:43:05'),
(80, 43, 32, 4, 21, 'Messages', '2017-09-27 17:54:48', '2017-09-27 17:54:48'),
(84, 33, 36, 4, 22, 'Messages', '2017-09-28 04:02:26', '2017-09-28 04:02:26'),
(85, 33, 36, 4, 23, 'Messages', '2017-09-28 04:02:37', '2017-09-28 04:02:37'),
(88, 43, 36, 3, 9, 'CommunityUser', '2017-09-28 04:42:55', '2017-09-28 04:42:55'),
(91, 36, 1, 11, 3, 'CommunityPostComments', '2017-09-28 06:44:00', '2017-09-28 06:44:00'),
(95, 38, 32, 3, 11, 'CommunityUser', '2017-09-28 17:30:01', '2017-09-28 17:30:01'),
(96, 38, 32, 3, 12, 'CommunityUser', '2017-09-28 17:30:02', '2017-09-28 17:30:02'),
(97, 38, 32, 3, 13, 'CommunityUser', '2017-09-28 18:32:30', '2017-09-28 18:32:30'),
(101, 37, 32, 3, 17, 'CommunityUser', '2017-09-28 19:11:20', '2017-09-28 19:11:20'),
(102, 38, 38, 5, 41, 'UserWall', '2018-03-02 20:56:57', '2018-03-02 20:56:57');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` int(10) UNSIGNED NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_id`, `notifiable_type`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('39a6c0bd-d674-49cf-913a-50e28de352d3', 'App\\Notifications\\NewFriendRequest', 33, 'App\\User', '{\"name\":\"Maksim\",\"message\":\" sent you friend request\"}', NULL, '2017-08-31 15:59:21', '2017-08-31 15:59:21'),
('3b52d855-9e0d-4ad0-a437-c2cf33d7861d', 'App\\Notifications\\NewFriendRequest', 33, 'App\\User', '{\"name\":\"Maksim\",\"message\":\" sent you friend request\"}', NULL, '2017-08-31 16:00:01', '2017-08-31 16:00:01'),
('3e102628-5f56-47bd-b0a2-ce734a903bc1', 'App\\Notifications\\NewFriendRequest', 32, 'App\\User', '{\"name\":\"Richard\",\"message\":\" sent you friend request\"}', NULL, '2017-08-31 16:00:06', '2017-08-31 16:00:06'),
('418d0726-6198-4104-a94b-66f7891d08a9', 'App\\Notifications\\NewFriendRequest', 33, 'App\\User', '{\"name\":\"Maksim\",\"message\":\" sent you friend request\"}', NULL, '2017-08-31 15:59:16', '2017-08-31 15:59:16'),
('44d3e0b4-052f-4b6f-a0a4-45fc167913a4', 'App\\Notifications\\FriendRequestAccepted', 33, 'App\\User', '{\"name\":\"Maksim\",\"message\":\" accepted your friend request\"}', NULL, '2017-08-31 16:00:12', '2017-08-31 16:00:12'),
('59048eea-922a-455e-ab3f-2d44cefe4928', 'App\\Notifications\\NewFriendRequest', 33, 'App\\User', '{\"name\":\"Maksim\",\"message\":\" sent you friend request\"}', NULL, '2017-08-31 15:59:38', '2017-08-31 15:59:38'),
('5c50e1a4-a1eb-428c-ae6c-b3ef1fb3bbe0', 'App\\Notifications\\NewFriendRequest', 33, 'App\\User', '{\"name\":\"Maksim\",\"message\":\" sent you friend request\"}', NULL, '2017-08-31 15:59:29', '2017-08-31 15:59:29'),
('6acd19c6-43dd-443f-84b4-ee918d605701', 'App\\Notifications\\NewFriendRequest', 33, 'App\\User', '{\"name\":\"Maksim\",\"message\":\" sent you friend request\"}', NULL, '2017-08-31 15:59:49', '2017-08-31 15:59:49'),
('7800572d-1a0b-4d69-90a3-bce4fa864c65', 'App\\Notifications\\NewFriendRequest', 34, 'App\\User', '{\"name\":\"Maksim\",\"message\":\" sent you friend request\"}', NULL, '2017-08-31 15:59:59', '2017-08-31 15:59:59'),
('8b71b835-edae-4eda-924e-563a27f7bb12', 'App\\Notifications\\NewFriendRequest', 32, 'App\\User', '{\"name\":\"Richard\",\"message\":\" sent you friend request\"}', NULL, '2017-08-31 15:59:53', '2017-08-31 15:59:53'),
('9d381e8a-15d3-45e4-a332-7dea94e9f463', 'App\\Notifications\\NewFriendRequest', 33, 'App\\User', '{\"name\":\"Maksim\",\"message\":\" sent you friend request\"}', NULL, '2017-08-31 15:59:32', '2017-08-31 15:59:32'),
('a3a92948-8c50-483b-8ad8-3abe700e308b', 'App\\Notifications\\NewFriendRequest', 33, 'App\\User', '{\"name\":\"Maksim\",\"message\":\" sent you friend request\"}', NULL, '2017-08-31 15:59:35', '2017-08-31 15:59:35'),
('b65a6700-07c8-43a3-bffb-a611c1025488', 'App\\Notifications\\NewFriendRequest', 33, 'App\\User', '{\"name\":\"Maksim\",\"message\":\" sent you friend request\"}', NULL, '2017-08-31 15:59:19', '2017-08-31 15:59:19'),
('ca20c815-0faa-4ae7-9413-bcdb09f8046e', 'App\\Notifications\\NewFriendRequest', 33, 'App\\User', '{\"name\":\"Maksim\",\"message\":\" sent you friend request\"}', NULL, '2017-08-31 15:59:51', '2017-08-31 15:59:51'),
('d10f21b7-81d4-4b61-b377-6ec0113db2cd', 'App\\Notifications\\NewFriendRequest', 33, 'App\\User', '{\"name\":\"Maksim\",\"message\":\" sent you friend request\"}', NULL, '2017-08-31 15:59:44', '2017-08-31 15:59:44'),
('d927760a-7111-4a75-bd82-081737f6479e', 'App\\Notifications\\NewFriendRequest', 33, 'App\\User', '{\"name\":\"Maksim\",\"message\":\" sent you friend request\"}', NULL, '2017-08-31 15:59:47', '2017-08-31 15:59:47'),
('da0a313b-3472-400a-889a-0159283d6efc', 'App\\Notifications\\NewFriendRequest', 33, 'App\\User', '{\"name\":\"Maksim\",\"message\":\" sent you friend request\"}', NULL, '2017-08-31 15:59:40', '2017-08-31 15:59:40'),
('e1c93721-643d-4b77-9c84-a56b62eb393d', 'App\\Notifications\\FriendRequestAccepted', 33, 'App\\User', '{\"name\":\"Maksim\",\"message\":\" accepted your friend request\"}', NULL, '2017-08-31 15:59:56', '2017-08-31 15:59:56'),
('e2bb00c5-4c2c-4181-9dd0-d1aaeb199336', 'App\\Notifications\\NewFriendRequest', 33, 'App\\User', '{\"name\":\"Maksim\",\"message\":\" sent you friend request\"}', NULL, '2017-08-31 15:59:24', '2017-08-31 15:59:24'),
('f0ad25f5-3063-4b79-b708-624691dbf291', 'App\\Notifications\\NewFriendRequest', 34, 'App\\User', '{\"name\":\"Maksim\",\"message\":\" sent you friend request\"}', NULL, '2017-08-31 16:00:03', '2017-08-31 16:00:03');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `path`, `created_at`, `updated_at`) VALUES
(2, '1502994692[gotowall.com]20111227_061309_4648.jpg', '2017-08-17 15:31:32', '2017-08-17 15:31:32'),
(3, '15030005053.jpg', '2017-08-17 17:08:25', '2017-08-17 17:08:25'),
(23, '15032388771travel.jpg', '2017-08-20 11:21:17', '2017-08-20 11:21:17'),
(25, '1503336298travel_2.jpg', '2017-08-21 14:24:58', '2017-08-21 14:24:58'),
(26, '1503426571travel_2.jpg', '2017-08-22 18:29:31', '2017-08-22 18:29:31'),
(50, '1504032513vk.png', '2017-08-29 18:48:33', '2017-08-29 18:48:33'),
(78, '1505058944logo4.png', '2017-09-10 15:55:44', '2017-09-10 15:55:44'),
(79, '1505059501facebook1.png', '2017-09-10 16:05:01', '2017-09-10 16:05:01'),
(83, '1505496663LINE1.png', '2017-09-15 14:31:03', '2017-09-15 14:31:03'),
(95, '1505563000my_pic.jpg', '2017-09-16 08:56:40', '2017-09-16 08:56:40'),
(96, '15055693231blog1.jpg', '2017-09-16 10:42:03', '2017-09-16 10:42:03'),
(100, '1505594337logo4.png', '2017-09-16 17:38:57', '2017-09-16 17:38:57'),
(101, '1506521271FD_image.jpg', '2017-09-27 11:07:51', '2017-09-27 11:07:51'),
(102, '1506521580FD_image.jpg', '2017-09-27 11:13:00', '2017-09-27 11:13:00'),
(105, '15065428277.jpg', '2017-09-27 17:07:07', '2017-09-27 17:07:07'),
(106, '150654298016.jpg', '2017-09-27 17:09:40', '2017-09-27 17:09:40'),
(107, '15065431371.jpg', '2017-09-27 17:12:17', '2017-09-27 17:12:17'),
(108, '15065439535.jpg', '2017-09-27 17:25:53', '2017-09-27 17:25:53'),
(109, '15065441028.jpg', '2017-09-27 17:28:22', '2017-09-27 17:28:22'),
(110, '150654426910.jpg', '2017-09-27 17:31:09', '2017-09-27 17:31:09'),
(111, '150654459018.jpg', '2017-09-27 17:36:30', '2017-09-27 17:36:30'),
(112, '150654479915.jpg', '2017-09-27 17:39:59', '2017-09-27 17:39:59'),
(113, '150654490614.jpg', '2017-09-27 17:41:46', '2017-09-27 17:41:46'),
(115, '1506584370si_thammarat.jpg', '2017-09-28 04:39:30', '2017-09-28 04:39:30'),
(116, '15065845482si_thammarat.jpg', '2017-09-28 04:42:28', '2017-09-28 04:42:28'),
(117, '1506594389JavaScript.jpg', '2017-09-28 07:26:29', '2017-09-28 07:26:29'),
(118, '15065946741450595020038940.png', '2017-09-28 07:31:14', '2017-09-28 07:31:14');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(110) UNSIGNED NOT NULL,
  `user_id` int(110) UNSIGNED NOT NULL,
  `type_id` int(110) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `photo_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `type_id`, `category_id`, `photo_id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 32, 1, 4, 26, 'New post about Singapore', 'Travel to Singapore the city of the future where everything reminds you that you are like in the fantasy movie <img width=\'30\' src=/laravelvue//images/emoji/classic/1f606.png  alt=\'\' /> . Architecture and landscapes are so amazing . But of course the most interesting place (and probably the most famous) is Marina Bay, where you can see worldwide known Marina Bay Sands hotel. <img width=\'30\' src=/laravelvue//images/emoji/travel/1f3e3.png  alt=\'\' />.\r\nOn the top of this hotel is amazing pull with impressive view on the city. And it definitely worth to visit such place. <img width=\'30\' src=/laravelvue//images/emoji/classic/1f642.png  alt=\'\' />\r\n\r\n <br>In my personal opinion everything in Singapore is made for people and that\'s why streets are so clean and every citizen try to keep Singapore so clean . But of course it happens not only because of will of absolutely all citizen and tourist in the country but of course because of famous and strict  governmental rules <img width=\'30\' src=/laravelvue//images/emoji/classic/1f62f.png  alt=\'\' /> that prohibit a lot of things that are normal in many other countries. In my personal opinion this was really good decision of Singaporean government.\r\n\r\n<br>I highly recommend everyone to visit this unusual & interesting place ! <img width=\'30\' src=/laravelvue//images/emoji/classic/1f60c.png  alt=\'\' />', '2017-08-22 18:29:31', '2017-09-28 06:32:10');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `agent_id` int(11) NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthdate` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `agent_id`, `status`, `country`, `city`, `lastname`, `user_gender`, `birthdate`, `created_at`, `updated_at`) VALUES
(1, 32, 0, 'Hello World!!!', 'AF', '', 'Narushevich', '', '04/05/1990', '2017-08-17 14:49:55', '2017-09-28 06:57:13'),
(3, 34, 0, '', 'CA', '', '', 'M', '09/15/1990', '2017-08-17 17:36:41', '2017-08-17 17:37:03'),
(4, 35, 0, '', 'AR', 'Buenos-Aires', 'Ferens', 'M', '02/17/1989', '2017-09-27 16:46:43', '2017-09-27 16:48:30'),
(5, 36, 0, '', 'ES', 'Madrid', 'Hernandez', 'F', '05/18/1990', '2017-09-27 17:08:19', '2017-09-27 17:09:26'),
(6, 37, 0, '', 'BE', 'Brugge', 'De Frainds', 'M', '09/16/1986', '2017-09-27 17:12:00', '2017-09-27 17:12:54'),
(7, 38, 0, 'Dreamer & traveler!', '', '', '', '', '', '2017-09-27 17:25:39', '2017-09-27 17:26:18'),
(8, 39, 0, 'Follow the dream!', 'CF', 'Johanesbourg', 'Geralds', '', '11/07/1983', '2017-09-27 17:28:13', '2017-09-27 17:29:19'),
(9, 40, 0, 'Broaden the horizons!!!', 'GB', 'Liverpool', 'Mellows', 'M', '07/04/1986', '2017-09-27 17:30:59', '2017-09-27 17:34:56'),
(10, 41, 0, '', 'AT', 'Vien', 'Gedrow', 'M', '11/20/1975', '2017-09-27 17:36:16', '2017-09-27 17:37:08'),
(11, 42, 0, '', 'AS', 'Derns', 'Dicksen', '', '09/20/1985', '2017-09-27 17:39:51', '2017-09-27 17:40:33'),
(12, 43, 0, '', 'MD', 'Kishenev', 'Ledneva', 'F', '05/07/1993', '2017-09-27 17:41:36', '2017-09-27 17:42:40');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'administrator', NULL, NULL),
(2, 'user', NULL, NULL),
(3, 'developer', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `active_left_sidebar` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram_accaunt` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `user_id`, `active_left_sidebar`, `instagram_accaunt`, `created_at`, `updated_at`) VALUES
(1, 33, 'N', '', '2017-08-17 17:26:05', '2017-08-17 17:26:05'),
(2, 32, 'N', 'maksim_kl', '2017-08-19 11:20:22', '2017-10-13 22:47:19'),
(3, 35, 'Y', '', '2017-09-27 17:07:22', '2019-03-10 02:04:31'),
(4, 37, 'Y', '', '2017-09-27 17:11:55', '2017-09-27 17:24:09'),
(5, 36, 'N', '', '2017-09-28 03:29:20', '2017-09-28 06:18:01');

-- --------------------------------------------------------

--
-- Table structure for table `ticketit`
--

CREATE TABLE `ticketit` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `html` longtext COLLATE utf8mb4_unicode_ci,
  `status_id` int(10) UNSIGNED NOT NULL,
  `priority_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `agent_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticketit`
--

INSERT INTO `ticketit` (`id`, `subject`, `content`, `html`, `status_id`, `priority_id`, `user_id`, `agent_id`, `category_id`, `created_at`, `updated_at`, `completed_at`) VALUES
(1, 'New task', 'New task ', '<p>New task </p>', 1, 1, 28, 28, 1, '2017-07-19 16:03:36', '2017-07-19 16:22:26', '2017-07-19 16:22:23'),
(2, 'Handle task', 'rbtbrtbrbrbrbrb', 'rbtbrtbrbrbrbrb', 1, 1, 28, 28, 1, '2017-07-19 16:43:20', '2017-07-19 16:43:20', NULL),
(3, 'New last task', 'rtbrtbrtbrtb', '<p>rtbrtbrtbrtb</p>', 1, 1, 28, 28, 1, '2017-07-19 16:44:35', '2017-07-19 16:44:35', NULL),
(4, 'Solve the task', 'New task !!!!!!!!!!!!!!', '<p><u><i>New task !!!!!!!!!!!!!!</i></u></p>', 1, 1, 28, 28, 1, '2017-07-24 17:59:34', '2017-07-24 17:59:34', NULL),
(5, 'fwwefw', 'wefwefwef', '<p>wefwefwef</p>', 1, 1, 32, 32, 1, '2017-08-18 15:00:17', '2017-08-18 15:00:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ticketit_audits`
--

CREATE TABLE `ticketit_audits` (
  `id` int(10) UNSIGNED NOT NULL,
  `operation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `ticket_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticketit_categories`
--

CREATE TABLE `ticketit_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticketit_categories`
--

INSERT INTO `ticketit_categories` (`id`, `name`, `color`) VALUES
(1, 'Urgent', 'red');

-- --------------------------------------------------------

--
-- Table structure for table `ticketit_categories_users`
--

CREATE TABLE `ticketit_categories_users` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticketit_comments`
--

CREATE TABLE `ticketit_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `html` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` int(10) UNSIGNED NOT NULL,
  `ticket_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticketit_priorities`
--

CREATE TABLE `ticketit_priorities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticketit_priorities`
--

INSERT INTO `ticketit_priorities` (`id`, `name`, `color`) VALUES
(1, 'Now', 'Green');

-- --------------------------------------------------------

--
-- Table structure for table `ticketit_settings`
--

CREATE TABLE `ticketit_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticketit_settings`
--

INSERT INTO `ticketit_settings` (`id`, `lang`, `slug`, `value`, `default`, `created_at`, `updated_at`) VALUES
(1, NULL, 'main_route', 'tickets', 'tickets', '2017-07-19 15:51:12', '2017-07-19 15:51:12'),
(2, NULL, 'main_route_path', 'tickets', 'tickets', '2017-07-19 15:51:12', '2017-07-19 15:51:12'),
(3, NULL, 'admin_route', 'tickets-admin', 'tickets-admin', '2017-07-19 15:51:12', '2017-07-19 15:51:12'),
(4, NULL, 'admin_route_path', 'tickets-admin', 'tickets-admin', '2017-07-19 15:51:12', '2017-07-19 15:51:12'),
(5, NULL, 'master_template', 'chat', 'chat', '2017-07-19 15:51:12', '2017-07-19 15:51:12'),
(6, NULL, 'email.template', 'ticketit::emails.templates.ticketit', 'ticketit::emails.templates.ticketit', '2017-07-19 15:51:12', '2017-07-19 15:51:12'),
(7, NULL, 'email.header', 'Ticket Update', 'Ticket Update', '2017-07-19 15:51:12', '2017-07-19 15:51:12'),
(8, NULL, 'email.signoff', 'Thank you for your patience!', 'Thank you for your patience!', '2017-07-19 15:51:12', '2017-07-19 15:51:12'),
(9, NULL, 'email.signature', 'Your friends', 'Your friends', '2017-07-19 15:51:12', '2017-07-19 15:51:12'),
(10, NULL, 'email.dashboard', 'My Dashboard', 'My Dashboard', '2017-07-19 15:51:12', '2017-07-19 15:51:12'),
(11, NULL, 'email.google_plus_link', '#', '#', '2017-07-19 15:51:12', '2017-07-19 15:51:12'),
(12, NULL, 'email.facebook_link', '#', '#', '2017-07-19 15:51:12', '2017-07-19 15:51:12'),
(13, NULL, 'email.twitter_link', '#', '#', '2017-07-19 15:51:12', '2017-07-19 15:51:12'),
(14, NULL, 'email.footer', 'Powered by Ticketit', 'Powered by Ticketit', '2017-07-19 15:51:12', '2017-07-19 15:51:12'),
(15, NULL, 'email.footer_link', 'https://github.com/thekordy/ticketit', 'https://github.com/thekordy/ticketit', '2017-07-19 15:51:12', '2017-07-19 15:51:12'),
(16, NULL, 'email.color_body_bg', '#FFFFFF', '#FFFFFF', '2017-07-19 15:51:12', '2017-07-19 15:51:12'),
(17, NULL, 'email.color_header_bg', '#44B7B7', '#44B7B7', '2017-07-19 15:51:12', '2017-07-19 15:51:12'),
(18, NULL, 'email.color_content_bg', '#F46B45', '#F46B45', '2017-07-19 15:51:12', '2017-07-19 15:51:12'),
(19, NULL, 'email.color_footer_bg', '#414141', '#414141', '2017-07-19 15:51:12', '2017-07-19 15:51:12'),
(20, NULL, 'email.color_button_bg', '#AC4D2F', '#AC4D2F', '2017-07-19 15:51:12', '2017-07-19 15:51:12'),
(21, NULL, 'default_status_id', '1', '1', '2017-07-19 15:51:12', '2017-07-19 15:51:12'),
(22, NULL, 'default_close_status_id', '0', '0', '2017-07-19 15:51:12', '2017-07-19 15:51:12'),
(23, NULL, 'default_reopen_status_id', '0', '0', '2017-07-19 15:51:12', '2017-07-19 15:51:12'),
(24, NULL, 'paginate_items', '10', '10', '2017-07-19 15:51:12', '2017-07-19 15:51:12'),
(25, NULL, 'length_menu', 'a:2:{i:0;a:3:{i:0;i:10;i:1;i:50;i:2;i:100;}i:1;a:3:{i:0;i:10;i:1;i:50;i:2;i:100;}}', 'a:2:{i:0;a:3:{i:0;i:10;i:1;i:50;i:2;i:100;}i:1;a:3:{i:0;i:10;i:1;i:50;i:2;i:100;}}', '2017-07-19 15:51:12', '2017-07-19 15:51:12'),
(26, NULL, 'status_notification', '1', '1', '2017-07-19 15:51:12', '2017-07-19 15:51:12'),
(27, NULL, 'comment_notification', '1', '1', '2017-07-19 15:51:12', '2017-07-19 15:51:12'),
(28, NULL, 'queue_emails', '0', '0', '2017-07-19 15:51:12', '2017-07-19 15:51:12'),
(29, NULL, 'assigned_notification', '1', '1', '2017-07-19 15:51:12', '2017-07-19 15:51:12'),
(30, NULL, 'agent_restrict', '0', '0', '2017-07-19 15:51:12', '2017-07-19 15:51:12'),
(31, NULL, 'close_ticket_perm', 'a:3:{s:5:\"owner\";b:1;s:5:\"agent\";b:1;s:5:\"admin\";b:1;}', 'a:3:{s:5:\"owner\";b:1;s:5:\"agent\";b:1;s:5:\"admin\";b:1;}', '2017-07-19 15:51:12', '2017-07-19 15:51:12'),
(32, NULL, 'reopen_ticket_perm', 'a:3:{s:5:\"owner\";b:1;s:5:\"agent\";b:1;s:5:\"admin\";b:1;}', 'a:3:{s:5:\"owner\";b:1;s:5:\"agent\";b:1;s:5:\"admin\";b:1;}', '2017-07-19 15:51:12', '2017-07-19 15:51:12'),
(33, NULL, 'delete_modal_type', 'builtin', 'builtin', '2017-07-19 15:51:12', '2017-07-19 15:51:12'),
(34, NULL, 'editor_enabled', '1', '1', '2017-07-19 15:51:12', '2017-07-19 15:51:12'),
(35, NULL, 'include_font_awesome', '1', '1', '2017-07-19 15:51:12', '2017-07-19 15:51:12'),
(36, NULL, 'summernote_locale', 'en', 'en', '2017-07-19 15:51:12', '2017-07-19 15:51:12'),
(37, NULL, 'editor_html_highlighter', '1', '1', '2017-07-19 15:51:12', '2017-07-19 15:51:12'),
(38, NULL, 'codemirror_theme', 'monokai', 'monokai', '2017-07-19 15:51:12', '2017-07-19 15:51:12'),
(39, NULL, 'summernote_options_json_file', 'vendor/kordy/ticketit/src/JSON/summernote_init.json', 'vendor/kordy/ticketit/src/JSON/summernote_init.json', '2017-07-19 15:51:12', '2017-07-19 15:51:12'),
(40, NULL, 'purifier_config', 'a:3:{s:15:\"HTML.SafeIframe\";s:4:\"true\";s:20:\"URI.SafeIframeRegexp\";s:72:\"%^(http://|https://|//)(www.youtube.com/embed/|player.vimeo.com/video/)%\";s:18:\"URI.AllowedSchemes\";a:5:{s:4:\"data\";b:1;s:4:\"http\";b:1;s:5:\"https\";b:1;s:6:\"mailto\";b:1;s:3:\"ftp\";b:1;}}', 'a:3:{s:15:\"HTML.SafeIframe\";s:4:\"true\";s:20:\"URI.SafeIframeRegexp\";s:72:\"%^(http://|https://|//)(www.youtube.com/embed/|player.vimeo.com/video/)%\";s:18:\"URI.AllowedSchemes\";a:5:{s:4:\"data\";b:1;s:4:\"http\";b:1;s:5:\"https\";b:1;s:6:\"mailto\";b:1;s:3:\"ftp\";b:1;}}', '2017-07-19 15:51:12', '2017-07-19 15:51:12'),
(41, NULL, 'routes', 'vendor/kordy/ticketit/src/routes.php', 'vendor/kordy/ticketit/src/routes.php', '2017-07-19 15:51:12', '2017-07-19 15:51:12');

-- --------------------------------------------------------

--
-- Table structure for table `ticketit_statuses`
--

CREATE TABLE `ticketit_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticketit_statuses`
--

INSERT INTO `ticketit_statuses` (`id`, `name`, `color`) VALUES
(1, 'Pending status', 'orange');

-- --------------------------------------------------------

--
-- Table structure for table `translates`
--

CREATE TABLE `translates` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `input_lang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input_word` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `output_lang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `output_word` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translates`
--

INSERT INTO `translates` (`id`, `user_id`, `input_lang`, `input_word`, `output_lang`, `output_word`, `created_at`, `updated_at`) VALUES
(3, 32, 'en', 'Day today', 'th', 'วันต่อวัน', '2017-08-19 14:03:05', '2017-08-19 14:03:05'),
(4, 32, 'en', 'Go away', 'fr', 'Allez-vous en', '2017-08-19 14:11:00', '2017-08-19 14:11:00'),
(5, 32, 'en', 'Go to my office', 'th', 'ไปที่ออฟฟิศของฉัน', '2017-08-19 14:12:33', '2017-08-19 14:12:33'),
(6, 32, 'en', 'morning', 'th', 'ตอนเช้า', '2017-08-19 14:17:09', '2017-08-19 14:17:09'),
(7, 32, 'en', 'hide', 'th', 'ปิดบัง', '2017-09-16 09:42:05', '2017-09-16 09:42:05'),
(8, 36, 'en', 'So interesting story', 'th', 'เรื่องที่น่าสนใจมาก', '2017-09-28 04:00:01', '2017-09-28 04:00:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` enum('1','2','3') CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '2',
  `is_active` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticketit_admin` tinyint(1) NOT NULL DEFAULT '0',
  `ticketit_agent` tinyint(1) NOT NULL DEFAULT '0',
  `online` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `is_active`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `photo_id`, `ticketit_admin`, `ticketit_agent`, `online`) VALUES
(32, '1', '1', 'Maksim', 'narushevich.maksim@gmail.com', '$2y$10$kQIggy.1tautFl9HqCM2ku7HP.CtDNQeQUay4UHjUik2vnA3Dk4SC', '0NlKXyNhXx1dOYJ5satHsAQYIZtG5dX9kT95IV1Ln9ikLv7oY3kfrgb3NDAu', '2017-08-17 14:42:16', '2017-12-08 18:06:30', '95', 1, 0, '2017-12-08 18:06:30'),
(33, '2', '1', 'Richard', 'richard_m@gmail.com', '$2y$10$D/xcbb05MnFLeFM6Sayw0ut14kPnGKZMPM.LPqNTTXuolb/yAH5IC', '3RzPIzXUVBfoPD3LmJIIxEe4x0vbendPmTLrJrNeY5cPNhyC6xMME3ayW2fe', '2017-08-17 16:53:29', '2017-08-17 17:08:25', '3', 0, 0, '2017-09-18 07:39:00'),
(34, '2', '1', 'Andrey', 'andrey_ynn@gmail.com', '$2y$10$l141CDJ.7Ii1MA.4YqrxIOG/CCpLXoYe5fROod2Nm7s5F7L3b7boC', '4LuGwImD6a96bxR44FoFuASA4s74CnTjTKzbChReSFiB0Expfo7f036VE3g7', '2017-08-23 18:04:37', '2017-08-23 18:04:37', '', 0, 0, '0000-00-00 00:00:00'),
(35, '2', '1', 'Bernard', 'bernard@gmail.com', '$2y$10$FJthfvgWmsEtH/keoju7jODv4omWbWQW5iiDyLZc9Ho8DXN.CN1Yu', '8iBkBHbG5nngSo7ImmagfLXmL77QU73xAkQRgbyfwAfHQIwnUUvFNh7Hxq3i', '2017-09-27 16:39:39', '2019-03-10 02:05:07', '105', 0, 0, '2019-03-10 02:05:07'),
(36, '2', '1', 'Helen', 'helen@gmail.com', '$2y$10$3WS0F1xd8n5b1qgq89DOE.xO9.9/YmqLqd358KvHo6uAOuNLSUeRS', 'pUrUWmCI0MHl7WMpMFc9ZpZOmVzwVN5iKOmcZ0vcT2FguXU13PL1eUTXqedd', '2017-09-27 17:08:10', '2017-09-28 08:40:10', '106', 0, 0, '2017-09-28 11:40:11'),
(37, '2', '1', 'Tom', 'tom@gmail.com', '$2y$10$JA9T3M4tYYHazcUEU2KG4eL3JELsHExeLbFPDGaOwzN.xOcYn8NFO', 'pMhr6j1tmVANtT87qQjUSWG6YWGDcpI9hHQtdwNMZnOBCGd4B97pStRtAiio', '2017-09-27 17:11:37', '2017-09-27 17:24:07', '107', 0, 0, '2017-09-27 20:24:47'),
(38, '2', '1', 'Eve', 'eve@gmail.com', '$2y$10$uvDiMk8tZYi.mgBD3.20Be/FiRXAay5bolvyxN4r9Op.nYb7/2ZKK', 'fC1uylmHF73M6vtwl6nzr8HXOLzeSeSXCVcWMHFkesx31zBegDqr0rlgaAOP', '2017-09-27 17:25:19', '2018-03-02 20:56:02', '108', 0, 0, '2018-03-02 20:56:02'),
(39, '2', '1', 'Pall', 'pall@gmail.com', '$2y$10$qTdCzEvuZg0u5CIrOvyQKOAAql.XvK65RYfEezj5sbW8Or7M6K26y', 'gaQV5Q7tt9Pfj4h03L0c17eoKw1jOJd81dmpPAhMYSROVxsk3fD3fiotsack', '2017-09-27 17:28:04', '2017-09-27 17:29:24', '109', 0, 0, '2017-09-27 20:30:07'),
(40, '2', '1', 'Andrews', 'andrews@gmail.com', '$2y$10$L.sHeFXUxDAEs7cFuMJ/C..o5GvEtXMyZ0bfJMv9qlz7I5OWiH6.G', 'Gvl7YyCLvuaQyUkrF5D4wSmNVgEGLOjv2FHC4Qj6ZD6I1nLILDAE0N44DQIj', '2017-09-27 17:30:47', '2017-09-27 17:35:06', '110', 0, 0, '2017-09-27 20:35:20'),
(41, '2', '1', 'Kenny', 'kenny@gmail.com', '$2y$10$vxrmtOOLBHzl8x4964N1yerP6gvs6Xw4JgYoqz3.fxvHZMSU/udZW', 'fjgHXAlh3tJfHwvHDzivzrgfiHGMMJ6s6o6gDPzgX5H2S2RExVZSvwvuO6wm', '2017-09-27 17:35:47', '2017-09-27 17:38:34', '111', 0, 0, '2017-09-27 20:39:08'),
(42, '2', '1', 'Mattew', 'matttew@gmail.com', '$2y$10$4LEoDolLttiBoyIgtj4n2O5gC4eKJTqrreQgZOGZyAevyO8Vivlxy', 'YSfJ7fUWaM4YuJvBM7msKPJ6Z1zcXlgEsnB4nzw7ib4r9oc2BdfqiZ6UjViL', '2017-09-27 17:39:39', '2017-09-27 17:40:38', '112', 0, 0, '2017-09-27 20:40:52'),
(43, '2', '1', 'Anna', 'anna@gmail.com', '$2y$10$CFi21D3Hj8p.zvujveXcoOeso.GwLJXnpu1vmmB6Avrbp20cs.8fy', 'iTf1CCKrUz5c9U7NdDoIzraROr83skT2VAujwUTiwQoTxRw8AXJh0LcibsJZ', '2017-09-27 17:41:28', '2017-09-28 12:37:35', '113', 0, 0, '2017-09-28 12:37:43');

-- --------------------------------------------------------

--
-- Table structure for table `user_communities`
--

CREATE TABLE `user_communities` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_inviter_id` int(10) UNSIGNED NOT NULL,
  `community_id` int(11) NOT NULL,
  `accepted` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_communities`
--

INSERT INTO `user_communities` (`id`, `user_id`, `user_inviter_id`, `community_id`, `accepted`, `created_at`, `updated_at`) VALUES
(8, 32, 36, 3, 1, '2017-09-28 04:39:45', '2017-09-28 06:19:05'),
(9, 43, 36, 3, 0, '2017-09-28 04:42:55', '2017-09-28 04:42:55'),
(17, 37, 32, 2, 0, '2017-09-28 19:11:20', '2017-09-28 19:11:20');

-- --------------------------------------------------------

--
-- Table structure for table `user_images`
--

CREATE TABLE `user_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `photo_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_walls`
--

CREATE TABLE `user_walls` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_post_id` int(10) UNSIGNED NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_id` int(11) NOT NULL,
  `wall_user_id` int(11) NOT NULL,
  `read_already` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_walls`
--

INSERT INTO `user_walls` (`id`, `user_post_id`, `text`, `photo_id`, `wall_user_id`, `read_already`, `created_at`, `updated_at`) VALUES
(40, 32, 'This my new posts here!!!!  <img width=\"30\" src=\"/laravelvue/images/emoji/classic/1f928.png\" alt=\"\"><img width=\"30\" src=\"/laravelvue/images/emoji/flag/1f1e7-1f1fe.png\" alt=\"\"><img width=\"30\" src=\"/laravelvue/images/emoji/travel/1f3de.png\" alt=\"\">', 102, 32, 1, '2017-09-27 11:13:21', '2017-09-27 11:14:12'),
(41, 32, 'Welcome to this website! <img width=\'30\' src=/laravelvue/images/emoji/holidays/1f389.png  alt=\'\' />', 0, 38, 1, '2017-09-28 06:58:10', '2018-03-02 20:55:59');

-- --------------------------------------------------------

--
-- Table structure for table `wall_comments`
--

CREATE TABLE `wall_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `wall_user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `comment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_id` int(11) NOT NULL,
  `module_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_already` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article_likes`
--
ALTER TABLE `article_likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_post_comments`
--
ALTER TABLE `blog_post_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calendars`
--
ALTER TABLE `calendars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `communities`
--
ALTER TABLE `communities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `community_images`
--
ALTER TABLE `community_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `community_posts`
--
ALTER TABLE `community_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `community_types`
--
ALTER TABLE `community_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_images`
--
ALTER TABLE `contact_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboards`
--
ALTER TABLE `dashboards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_models`
--
ALTER TABLE `event_models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friendships`
--
ALTER TABLE `friendships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gifts`
--
ALTER TABLE `gifts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_advertisements`
--
ALTER TABLE `image_advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_community_posts`
--
ALTER TABLE `image_community_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_jobs`
--
ALTER TABLE `image_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_user_walls`
--
ALTER TABLE `image_user_walls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`);

--
-- Indexes for table `job_offers`
--
ALTER TABLE `job_offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `likes_user_id_foreign` (`user_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_id_notifiable_type_index` (`notifiable_id`,`notifiable_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_category_id_index` (`category_id`),
  ADD KEY `posts_photo_id_index` (`photo_id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticketit`
--
ALTER TABLE `ticketit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticketit_subject_index` (`subject`),
  ADD KEY `ticketit_status_id_index` (`status_id`),
  ADD KEY `ticketit_priority_id_index` (`priority_id`),
  ADD KEY `ticketit_user_id_index` (`user_id`),
  ADD KEY `ticketit_agent_id_index` (`agent_id`),
  ADD KEY `ticketit_category_id_index` (`category_id`),
  ADD KEY `ticketit_completed_at_index` (`completed_at`);

--
-- Indexes for table `ticketit_audits`
--
ALTER TABLE `ticketit_audits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticketit_categories`
--
ALTER TABLE `ticketit_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticketit_comments`
--
ALTER TABLE `ticketit_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticketit_comments_user_id_index` (`user_id`),
  ADD KEY `ticketit_comments_ticket_id_index` (`ticket_id`);

--
-- Indexes for table `ticketit_priorities`
--
ALTER TABLE `ticketit_priorities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticketit_settings`
--
ALTER TABLE `ticketit_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ticketit_settings_slug_unique` (`slug`),
  ADD UNIQUE KEY `ticketit_settings_lang_unique` (`lang`),
  ADD KEY `ticketit_settings_lang_index` (`lang`),
  ADD KEY `ticketit_settings_slug_index` (`slug`);

--
-- Indexes for table `ticketit_statuses`
--
ALTER TABLE `ticketit_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translates`
--
ALTER TABLE `translates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_index` (`role_id`);

--
-- Indexes for table `user_communities`
--
ALTER TABLE `user_communities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_images`
--
ALTER TABLE `user_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_walls`
--
ALTER TABLE `user_walls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wall_comments`
--
ALTER TABLE `wall_comments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `article_likes`
--
ALTER TABLE `article_likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_post_comments`
--
ALTER TABLE `blog_post_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `calendars`
--
ALTER TABLE `calendars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `communities`
--
ALTER TABLE `communities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `community_images`
--
ALTER TABLE `community_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `community_posts`
--
ALTER TABLE `community_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `community_types`
--
ALTER TABLE `community_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contact_images`
--
ALTER TABLE `contact_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboards`
--
ALTER TABLE `dashboards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `event_models`
--
ALTER TABLE `event_models`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `friendships`
--
ALTER TABLE `friendships`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `gifts`
--
ALTER TABLE `gifts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `image_advertisements`
--
ALTER TABLE `image_advertisements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `image_community_posts`
--
ALTER TABLE `image_community_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `image_jobs`
--
ALTER TABLE `image_jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `image_user_walls`
--
ALTER TABLE `image_user_walls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `job_offers`
--
ALTER TABLE `job_offers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(110) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ticketit`
--
ALTER TABLE `ticketit`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ticketit_audits`
--
ALTER TABLE `ticketit_audits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticketit_categories`
--
ALTER TABLE `ticketit_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ticketit_comments`
--
ALTER TABLE `ticketit_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticketit_priorities`
--
ALTER TABLE `ticketit_priorities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ticketit_settings`
--
ALTER TABLE `ticketit_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `ticketit_statuses`
--
ALTER TABLE `ticketit_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `translates`
--
ALTER TABLE `translates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `user_communities`
--
ALTER TABLE `user_communities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user_images`
--
ALTER TABLE `user_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_walls`
--
ALTER TABLE `user_walls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `wall_comments`
--
ALTER TABLE `wall_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
