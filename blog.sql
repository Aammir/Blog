-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2019 at 04:11 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`) VALUES
(1, 'Larvel', 'laravel'),
(2, 'VueJs', 'vuejs'),
(3, 'JSON', 'json'),
(4, 'jQuery', 'jquery'),
(5, 'php', 'php'),
(6, 'html', 'html'),
(7, 'css', 'css'),
(8, 'wordpress', 'wordpress');

-- --------------------------------------------------------

--
-- Table structure for table `categories_posts`
--

CREATE TABLE `categories_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories_posts`
--

INSERT INTO `categories_posts` (`id`, `category_id`, `post_id`) VALUES
(1, 1, 2),
(2, 1, 3),
(3, 1, 1),
(4, 2, 2),
(5, 2, 3),
(6, 2, 4),
(7, 3, 4),
(8, 4, 5),
(9, 5, 6),
(10, 8, 7),
(11, 8, 8),
(12, 7, 9);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `email`, `comment`, `post_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Aamir H', 'aamir.2k18@gmail.com', 'Hi, This is my first comment posting on this website!', 1, '2019-10-01 00:22:21', '2019-10-01 00:22:21', NULL),
(2, 'jos', 'joseph.dyson@gmx.com', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam mollis dolor et hendrerit ultrices. Donec eget orci nisl. Nunc et tellus tempor, placerat lacus at, maximus leo. Maecenas id ex at quam laoreet viverra sit amet nec enim. Aenean commodo pulvinar magna, non venenatis dui pharetra eu. Integer rhoncus, risus placerat pretium suscipit, sapien dolor bibendum nisl, porta rhoncus erat sapien at sem.', 1, '2019-10-01 00:27:47', '2019-10-01 00:27:47', NULL),
(3, 'Happy', 'gateful@cmail.com', 'Vestibulum et feugiat nisl. Vivamus luctus, mi at pulvinar commodo, libero nunc commodo lectus, a consectetur ligula leo posuere lorem. Donec et velit non mauris tempus gravida sed nec dui. Nam viverra ligula nec blandit feugiat. Nam egestas tincidunt sodales. Phasellus in est enim. Sed in nisi sagittis, laoreet massa at, facilisis nunc.', 2, '2019-10-01 00:30:33', '2019-10-01 00:30:33', NULL),
(4, 'Nam viverra', 'Nam-viverra@gmail.com', 'Nam viverra ligula nec blandit feugiat. Nam egestas tincidunt sodales. Phasellus in est enim. Sed in nisi sagittis, laoreet massa at, facilisis nunc.', 2, '2019-10-01 00:32:14', '2019-10-01 00:32:14', NULL),
(5, 'aamir', 'aamir.2k15@gmail.com', 'but it isn\'t the standard version, right?', 3, '2019-10-01 00:33:27', '2019-10-01 00:33:27', NULL),
(6, 'joe', 'joe@mail.net', 'almost everything about vuejs is complicated! i think!', 4, '2019-10-01 00:37:00', '2019-10-01 00:37:00', NULL),
(7, 'smarty@goodnet.org', 'smarty@goodnet.org', 'smarty@goodnet.org', 5, '2019-10-01 02:09:32', '2019-10-01 02:09:32', NULL),
(8, 'aamir', 'aamir@mail.com', 'agree', 8, '2019-10-02 12:16:18', '2019-10-02 12:16:18', NULL),
(9, 'person', 'abc@gmail.com', 'Quisque ultrices orci in neque accumsan accumsan. Quisque metus ante, mattis ut nisi vitae, interdum tincidunt orci. Proin sapien turpis, pharetra sed semper in, lobortis ac tellus. Nunc sem risus, consectetur sed dui sit amet, eleifend egestas lacus. Maecenas vitae faucibus augue. Maecenas cursus, nibh vel eleifend vulputate, massa urna lobortis arcu, vitae bibendum velit lacus ut dolor.', 9, '2019-10-02 12:42:37', '2019-10-02 12:42:37', NULL),
(10, 'Munib', 'munib1990@gmail.com', 'a comment by munib', 1, '2019-10-02 14:08:15', '2019-10-02 14:08:15', NULL),
(11, 'Munib', 'munib1990@gmail.com', 'a comment by munib', 1, '2019-10-02 14:09:34', '2019-10-02 14:09:34', NULL),
(12, 'tim', 'tim@mail.com', 'yeah', 1, '2019-10-02 14:14:00', '2019-10-02 14:14:00', NULL),
(13, 'jojo', 'jojo@company.com', 'whatsup', 1, '2019-10-02 14:14:49', '2019-10-02 14:14:49', NULL),
(14, 'bingo', 'bin@go.com', 'whats good?', 1, '2019-10-02 14:17:22', '2019-10-02 14:17:22', NULL),
(15, 'jim', 'dim@jim.net', 'hey yo whas good!?', 2, '2019-10-02 14:20:10', '2019-10-02 14:20:10', NULL),
(16, 'joe', 'joe@mail.net', 'yeah it is!', 3, '2019-10-02 14:39:44', '2019-10-02 14:39:44', NULL),
(17, 'person', 'Suspendisse@gmail.com', 'but how different is it?', 3, '2019-10-02 14:45:18', '2019-10-02 14:45:18', NULL),
(18, 'man', 'facilisis-ligula@mail.com', 'the 4th comment', 3, '2019-10-02 14:57:16', '2019-10-02 14:57:16', NULL),
(19, 'Aamir H', 'aamir@mail.lmn', 'what?', 4, '2019-10-02 14:58:36', '2019-10-02 14:58:36', NULL),
(20, 'new person', 'Suspendisse@gmail.com', 'what?', 4, '2019-10-02 14:58:59', '2019-10-02 14:58:59', NULL),
(21, 'Tim humble', 'tim@mail.com', 'this is tim humble', 4, '2019-10-02 15:01:29', '2019-10-02 15:01:29', NULL),
(22, 'facilisis ligula', 'abc@gmail.com', 'akldfj akl fjlajkdfklajdfkljakldj', 4, '2019-10-02 15:24:22', '2019-10-02 15:24:22', NULL),
(23, 'afdadf af d', 'Suspendisse@gmail.com', 'afd afda', 4, '2019-10-02 15:25:40', '2019-10-02 15:25:40', NULL),
(24, 'adfad', 'aamir@mail.lmn', 'dfad', 4, '2019-10-02 15:26:04', '2019-10-02 15:26:04', NULL),
(25, 'person', 'person@mail.com', 'what\'s up guys?', 4, '2019-10-02 15:48:40', '2019-10-02 15:48:40', NULL),
(26, 'joe', 'joe@mail.net', 'shit happens!', 4, '2019-10-02 15:49:58', '2019-10-02 15:49:58', NULL),
(27, 'new commentor', 'Nam-viverra@gmail.com', 'but there\'s always hope', 4, '2019-10-02 15:55:51', '2019-10-02 15:55:51', NULL),
(28, 'adkljfakld', 'amir@company.com', 'agree', 8, '2019-10-02 16:00:07', '2019-10-02 16:00:07', NULL),
(29, 'bingo', 'bin@go.bingo', 'bingo!', 8, '2019-10-02 16:01:04', '2019-10-02 16:01:04', NULL),
(30, 'person', 'person@mail.com', 'that\'s pretty good!', 11, '2019-10-02 16:02:43', '2019-10-02 16:02:43', NULL),
(31, 'bin', 'bin@go.com', 'what\'s up guys', 11, '2019-10-02 16:03:13', '2019-10-02 16:03:13', NULL),
(32, 'me!', 'me@company.com', 'first comment', 10, '2019-10-02 16:19:01', '2019-10-02 16:19:01', NULL),
(33, 'me!', 'me@company.com', 'second comment', 10, '2019-10-02 16:19:32', '2019-10-02 16:19:32', NULL),
(34, 'me!', 'me@company.com', 'third one!', 10, '2019-10-02 16:20:05', '2019-10-02 16:20:05', NULL),
(35, 'person', 'prsn@mail.net', 'a comment', 1, '2019-10-02 16:23:45', '2019-10-02 16:23:45', NULL),
(36, 'new', 'new@mail.slk', 'gibberish', 1, '2019-10-02 16:24:27', '2019-10-02 16:24:27', NULL),
(37, 'joe', 'joe@mail.net', 'exactly!', 12, '2019-10-02 16:29:38', '2019-10-02 16:29:38', NULL),
(38, 'aamir', 'aamir.2k18@gmail.com', 'that\'s correct', 12, '2019-10-02 16:30:18', '2019-10-02 16:30:18', NULL),
(39, 'Aamir H', 'aamir.2k15@gmail.com', 'first comment', 13, '2019-10-02 16:31:07', '2019-10-02 16:31:07', NULL),
(40, 'Aamir H', 'aamir.2k18@gmail.com', 'that\'s true', 13, '2019-10-02 16:31:42', '2019-10-02 16:31:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contacted_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `contacted_at`, `created_at`, `updated_at`) VALUES
(1, 'Aamir H', 'aamir.2k15@gmail.com', 'Aenean commodo pulvinar magna, non venenatis dui pharetra eu. Integer rhoncus, risus placerat pretium suscipit, sapien dolor bibendum nisl, porta rhoncus erat sapien at sem. Suspendisse potenti. Nullam vulputate pretium dui non dictum. Proin a leo non enim semper porttitor a eget ipsum. Curabitur dapibus massa in aliquam volutpat.', '2019-10-02 16:42:01', '2019-10-02 11:42:01', '2019-10-02 11:42:01'),
(2, 'Aamir H', 'aamir.2k15@gmail.com', 'Aenean commodo pulvinar magna, non venenatis dui pharetra eu. Integer rhoncus, risus placerat pretium suscipit, sapien dolor bibendum nisl, porta rhoncus erat sapien at sem. Suspendisse potenti. Nullam vulputate pretium dui non dictum. Proin a leo non enim semper porttitor a eget ipsum. Curabitur dapibus massa in aliquam volutpat.', '2019-10-02 16:42:37', '2019-10-02 11:42:37', '2019-10-02 11:42:37'),
(3, 'Munib Lahore', 'munib1990@gmail.com', 'Quisque ultrices orci in neque accumsan accumsan. Quisque metus ante, mattis ut nisi vitae, interdum tincidunt orci. Proin sapien turpis, pharetra sed semper in, lobortis ac tellus. Nunc sem risus, consectetur sed dui sit amet, eleifend egestas lacus. Maecenas vitae faucibus augue. Maecenas cursus, nibh vel eleifend vulputate, massa urna lobortis arcu, vitae bibendum velit lacus ut dolor.', '2019-10-02 16:44:27', '2019-10-02 11:44:27', '2019-10-02 11:44:27'),
(4, 'Munib Lahore', 'munib1990@gmail.com', 'Quisque ultrices orci in neque accumsan accumsan. Quisque metus ante, mattis ut nisi vitae, interdum tincidunt orci. Proin sapien turpis, pharetra sed semper in, lobortis ac tellus. Nunc sem risus, consectetur sed dui sit amet, eleifend egestas lacus. Maecenas vitae faucibus augue. Maecenas cursus, nibh vel eleifend vulputate, massa urna lobortis arcu, vitae bibendum velit lacus ut dolor.', '2019-10-02 16:44:55', '2019-10-02 11:44:55', '2019-10-02 11:44:55'),
(5, 'Munib Lahore', 'munib1990@gmail.com', 'Quisque ultrices orci in neque accumsan accumsan. Quisque metus ante, mattis ut nisi vitae, interdum tincidunt orci. Proin sapien turpis, pharetra sed semper in, lobortis ac tellus. Nunc sem risus, consectetur sed dui sit amet, eleifend egestas lacus. Maecenas vitae faucibus augue. Maecenas cursus, nibh vel eleifend vulputate, massa urna lobortis arcu, vitae bibendum velit lacus ut dolor.', '2019-10-02 16:46:30', '2019-10-02 11:46:30', '2019-10-02 11:46:30'),
(6, 'Munib Lahore', 'munib1990@gmail.com', 'Quisque ultrices orci in neque accumsan accumsan. Quisque metus ante, mattis ut nisi vitae, interdum tincidunt orci. Proin sapien turpis, pharetra sed semper in, lobortis ac tellus. Nunc sem risus, consectetur sed dui sit amet, eleifend egestas lacus. Maecenas vitae faucibus augue. Maecenas cursus, nibh vel eleifend vulputate, massa urna lobortis arcu, vitae bibendum velit lacus ut dolor.', '2019-10-02 16:47:10', '2019-10-02 11:47:10', '2019-10-02 11:47:10'),
(7, 'Suspendisse', 'Suspendisse@gmail.com', 'Suspendisse iaculis nunc in metus mattis consectetur. Nulla sodales, est ac lacinia ullamcorper, massa turpis scelerisque tortor, ac dapibus sem odio sit amet mauris. Mauris dapibus tincidunt laoreet.', '2019-10-02 16:47:40', '2019-10-02 11:47:40', '2019-10-02 11:47:40'),
(8, 'Suspendisse', 'Suspendisse@gmail.com', 'Suspendisse iaculis nunc in metus mattis consectetur. Nulla sodales, est ac lacinia ullamcorper, massa turpis scelerisque tortor, ac dapibus sem odio sit amet mauris. Mauris dapibus tincidunt laoreet.', '2019-10-02 16:47:55', '2019-10-02 11:47:55', '2019-10-02 11:47:55'),
(9, 'Suspendisse', 'Suspendisse@gmail.com', 'Suspendisse iaculis nunc in metus mattis consectetur. Nulla sodales, est ac lacinia ullamcorper, massa turpis scelerisque tortor, ac dapibus sem odio sit amet mauris. Mauris dapibus tincidunt laoreet.', '2019-10-02 16:48:17', '2019-10-02 11:48:17', '2019-10-02 11:48:17'),
(10, 'Suspendisse', 'Suspendisse@gmail.com', 'Suspendisse iaculis nunc in metus mattis consectetur. Nulla sodales, est ac lacinia ullamcorper, massa turpis scelerisque tortor, ac dapibus sem odio sit amet mauris. Mauris dapibus tincidunt laoreet.', '2019-10-02 16:48:27', '2019-10-02 11:48:27', '2019-10-02 11:48:27'),
(11, 'semper metus', 'semper-metus@mail.com', 'Pellentesque venenatis elit eu eros gravida finibus. Etiam nec pharetra diam. Pellentesque sed cursus ipsum, eget semper metus. Nunc sed nulla tristique, facilisis ligula sit amet, ullamcorper turpis.', '2019-10-02 16:50:01', '2019-10-02 11:50:01', '2019-10-02 11:50:01'),
(12, 'facilisis ligula', 'facilisis-ligula@mail.com', 'Pellentesque venenatis elit eu eros gravida finibus. Etiam nec pharetra diam. Pellentesque sed cursus ipsum, eget semper metus. Nunc sed nulla tristique, facilisis ligula sit amet, ullamcorper turpis.', '2019-10-02 16:50:06', '2019-10-02 11:50:06', '2019-10-02 11:50:06'),
(13, 'facilisis ligula', 'facilisis-ligula@mail.com', 'Pellentesque venenatis elit eu eros gravida finibus. Etiam nec pharetra diam. Pellentesque sed cursus ipsum, eget semper metus. Nunc sed nulla tristique, facilisis ligula sit amet, ullamcorper turpis.', '2019-10-02 16:51:58', '2019-10-02 11:51:58', '2019-10-02 11:51:58'),
(14, 'facilisis ligula', 'facilisis-ligula@mail.com', 'Pellentesque venenatis elit eu eros gravida finibus. Etiam nec pharetra diam. Pellentesque sed cursus ipsum, eget semper metus. Nunc sed nulla tristique, facilisis ligula sit amet, ullamcorper turpis.', '2019-10-02 16:52:39', '2019-10-02 11:52:39', '2019-10-02 11:52:39'),
(15, 'facilisis ligula', 'facilisis-ligula@mail.com', 'Pellentesque venenatis elit eu eros gravida finibus. Etiam nec pharetra diam. Pellentesque sed cursus ipsum, eget semper metus. Nunc sed nulla tristique, facilisis ligula sit amet, ullamcorper turpis.', '2019-10-02 16:53:59', '2019-10-02 11:53:59', '2019-10-02 11:53:59'),
(16, 'semper metus', 'semper-metus@mail.com', 'Pellentesque venenatis elit eu eros gravida finibus. Etiam nec pharetra diam. Pellentesque sed cursus ipsum, eget semper metus. Nunc sed nulla tristique, facilisis ligula sit amet, ullamcorper turpis.', '2019-10-02 16:54:12', '2019-10-02 11:54:12', '2019-10-02 11:54:12'),
(17, 'semper metus', 'semper-metus@mail.com', 'Pellentesque venenatis elit eu eros gravida finibus. Etiam nec pharetra diam. Pellentesque sed cursus ipsum, eget semper metus. Nunc sed nulla tristique, facilisis ligula sit amet, ullamcorper turpis.', '2019-10-02 16:54:13', '2019-10-02 11:54:13', '2019-10-02 11:54:13'),
(18, 'semper metus', 'semper-metus@mail.com', 'Pellentesque venenatis elit eu eros gravida finibus. Etiam nec pharetra diam. Pellentesque sed cursus ipsum, eget semper metus. Nunc sed nulla tristique, facilisis ligula sit amet, ullamcorper turpis.', '2019-10-02 16:54:14', '2019-10-02 11:54:14', '2019-10-02 11:54:14'),
(19, 'adfaf', 'adfadf@sone', 'Pellentesque venenatis elit eu eros gravida finibus. Etiam nec pharetra diam. Pellentesque sed cursus ipsum, eget semper metus. Nunc sed nulla tristique, facilisis ligula sit amet, ullamcorper turpis.', '2019-10-02 16:54:54', '2019-10-02 11:54:54', '2019-10-02 11:54:54'),
(20, 'bingo', 'bing@gmail.com', 'my message at least 12 char hah?', '2019-10-02 18:37:11', '2019-10-02 13:37:11', '2019-10-02 13:37:11');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_09_26_115233_create_pages_table', 1),
(4, '2019_09_27_130019_create_posts_table', 1),
(5, '2019_09_27_130537_create_comments_table', 1),
(6, '2019_09_28_013254_create_categories_table', 1),
(7, '2019_09_28_013411_create_tags_table', 1),
(8, '2019_09_28_013822_create_posts_tags_table', 1),
(9, '2019_09_28_013944_create_categories_posts_table', 1),
(10, '2019_09_29_012415_create_social_media_table', 1),
(11, '2019_09_30_134805_create_site_table', 1),
(12, '2019_09_30_135133_create_searches_table', 1),
(13, '2019_09_30_222643_create_contacts_table', 1),
(14, '2019_10_01_002523_create_newsletters_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subscriber_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subscribed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletters`
--

INSERT INTO `newsletters` (`id`, `subscriber_email`, `subscribed_at`, `created_at`, `updated_at`) VALUES
(1, 'Aamir@company.com', '2019-10-01 02:00:21', '2019-09-30 21:00:21', '2019-09-30 21:00:21'),
(2, 'aamir.getranked@gmail.com', '2019-10-01 07:59:15', '2019-10-01 02:59:15', '2019-10-01 02:59:15'),
(3, '313@kl.co', '2019-10-02 10:53:17', '2019-10-02 05:53:17', '2019-10-02 05:53:17'),
(4, 'munib1992@gmail.com', '2019-10-02 17:51:03', '2019-10-02 12:51:03', '2019-10-02 12:51:03'),
(5, 'adf@jad.co', '2019-10-02 17:56:49', '2019-10-02 12:56:49', '2019-10-02 12:56:49'),
(6, 'newPerson@cmail.com', '2019-10-02 18:01:14', '2019-10-02 13:01:14', '2019-10-02 13:01:14');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `image`, `body`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'home', '/', '', '', '2019-09-30 23:21:38', '2019-09-30 23:21:38', NULL),
(2, 'about', '/about', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam mollis dolor et hendrerit ultrices. Donec eget orci nisl. Nunc et tellus tempor, placerat lacus at, maximus leo. Maecenas id ex at quam laoreet viverra sit amet nec enim. Aenean commodo pulvinar magna, non venenatis dui pharetra eu.', '2019-09-30 23:21:38', '2019-10-01 06:31:18', NULL),
(3, 'contact', '/contact', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam mollis dolor et hendrerit ultrices. Donec eget orci nisl. Nunc et tellus tempor, placerat lacus at, maximus leo. Maecenas id ex at quam laoreet viverra sit amet nec enim. Aenean commodo pulvinar magna, non venenatis dui pharetra eu.', '2019-09-30 23:21:38', '2019-10-01 06:31:26', NULL),
(4, 'blog', '/blog', '', 'Lor ips dol sit', '2019-10-01 05:41:02', '2019-10-01 06:31:33', NULL);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `image`, `body`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Hello World', 'hello-world', '2.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam mollis dolor et hendrerit ultrices. Donec eget orci nisl. Nunc et tellus tempor, placerat lacus at, maximus leo. Maecenas id ex at quam laoreet viverra sit amet nec enim. Aenean commodo pulvinar magna, non venenatis dui pharetra eu.\r\n Integer rhoncus, risus placerat pretium suscipit, sapien dolor bibendum nisl, porta rhoncus erat sapien at sem. Suspendisse potenti. Nullam vulputate pretium dui non dictum. Proin a leo non enim semper porttitor a eget ipsum. Curabitur dapibus massa in aliquam volutpat.', 'home1', '2019-09-30 06:06:00', '2019-10-13 13:45:35', NULL),
(2, 'Welcome to our blog', 'welcome-to-our-blog', '1.jpg', 'Suspendisse et leo posuere, pulvinar augue eget, sodales nibh. Praesent mi libero, pulvinar eget magna viverra, dictum feugiat est. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam vel mattis erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nullam sit amet varius lacus. \r\nDonec nibh sem, tempor sed mi ut, finibus rutrum orci. Donec ultrices, urna a maximus blandit, mauris ipsum fringilla risus, in venenatis nisi eros in justo.', 'home2', '2019-09-30 06:06:00', '2019-09-30 23:22:29', NULL),
(3, 'Laravel 6 is released', 'Laravel-6-is-released', '3.jpg', 'Suspendisse iaculis nunc in metus mattis consectetur. Nulla sodales, est ac lacinia ullamcorper, massa turpis scelerisque tortor, ac dapibus sem odio sit amet mauris.\r\n Mauris dapibus tincidunt laoreet. Pellentesque venenatis elit eu eros gravida finibus. Etiam nec pharetra diam. Pellentesque sed cursus ipsum, eget semper metus. Nunc sed nulla tristique, facilisis ligula sit amet, ullamcorper turpis. Aenean viverra odio id diam sagittis faucibus.\r\n Duis in porttitor quam. Cras sollicitudin ante in lobortis laoreet. Nullam pharetra nulla massa, non tempus augue egestas eget. Vestibulum vitae finibus sapien. Vestibulum eget nibh nec augue aliquet aliquet.', 'home3', '2019-09-30 06:06:00', '2019-10-13 13:45:40', NULL),
(4, 'Common Mistakes Vuejs', 'Common-Mistakes-Vuejs', '7.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam mollis dolor et hendrerit ultrices. Donec eget orci nisl. Nunc et tellus tempor, placerat lacus at, maximus leo. Maecenas id ex at quam laoreet viverra sit amet nec enim. Aenean commodo pulvinar magna, non venenatis dui pharetra eu.\r\n Integer rhoncus, risus placerat pretium suscipit, sapien dolor bibendum nisl, porta rhoncus erat sapien at sem. Suspendisse potenti. Nullam vulputate pretium dui non dictum. Proin a leo non enim semper porttitor a eget ipsum. Curabitur dapibus massa in aliquam volutpat.', '', '2019-09-30 06:06:00', '2019-09-30 23:22:29', NULL),
(5, 'Sus pend isse', 'Sus-pend-isse', '6.jpg', 'Suspendisse et leo posuere, pulvinar augue eget, sodales nibh. Praesent mi libero, pulvinar eget magna viverra, dictum feugiat est. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam vel mattis erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nullam sit amet varius lacus. \r\nDonec nibh sem, tempor sed mi ut, finibus rutrum orci. Donec ultrices, urna a maximus blandit, mauris ipsum fringilla risus, in venenatis nisi eros in justo.', '', '2019-09-30 06:06:00', '2019-09-30 23:22:29', NULL),
(6, 'lacinia ullamcorper', 'lacinia-ullamcorper', '5.jpg', 'Suspendisse iaculis nunc in metus mattis consectetur. Nulla sodales, est ac lacinia ullamcorper, massa turpis scelerisque tortor, ac dapibus sem odio sit amet mauris.\r\n Mauris dapibus tincidunt laoreet. Pellentesque venenatis elit eu eros gravida finibus. Etiam nec pharetra diam. Pellentesque sed cursus ipsum, eget semper metus. Nunc sed nulla tristique, facilisis ligula sit amet, ullamcorper turpis. Aenean viverra odio id diam sagittis faucibus.\r\n Duis in porttitor quam. Cras sollicitudin ante in lobortis laoreet. Nullam pharetra nulla massa, non tempus augue egestas eget. Vestibulum vitae finibus sapien. Vestibulum eget nibh nec augue aliquet aliquet.', '', '2019-09-30 06:06:00', '2019-09-30 23:22:29', NULL),
(7, 'est ac lacinia', 'est-ac-lacinia', '4.jpg', 'Suspendisse iaculis nunc in metus mattis consectetur. Nulla sodales, est ac lacinia ullamcorper, massa turpis scelerisque tortor, ac dapibus sem odio sit amet mauris.\r\n Mauris dapibus tincidunt laoreet. Pellentesque venenatis elit eu eros gravida finibus. Etiam nec pharetra diam. Pellentesque sed cursus ipsum, eget semper metus. Nunc sed nulla tristique, facilisis ligula sit amet, ullamcorper turpis. Aenean viverra odio id diam sagittis faucibus.\r\n Duis in porttitor quam. Cras sollicitudin ante in lobortis laoreet. Nullam pharetra nulla massa, non tempus augue egestas eget. Vestibulum vitae finibus sapien. Vestibulum eget nibh nec augue aliquet aliquet.', '', '2019-09-30 06:06:00', '2019-09-30 23:22:29', NULL),
(8, 'Donec ultrice', 'Donec-ultrice', '9.jpg', ' Donec ultrices, urna a maximus blandit, mauris ipsum fringilla risus, in venenatis nisi eros in justo. Maecenas eu lacus vel lacus laoreet hendrerit. Quisque ultrices orci in neque accumsan accumsan. Quisque metus ante, mattis ut nisi vitae, interdum tincidunt orci. Proin sapien turpis, pharetra sed semper in, lobortis ac tellus. Nunc sem risus, consectetur sed dui sit amet, eleifend egestas lacus. Maecenas vitae faucibus augue. Maecenas cursus, nibh vel eleifend vulputate, massa urna lobortis arcu, vitae bibendum velit lacus ut dolor.', '', '2019-10-01 16:14:34', '2019-10-01 16:16:30', NULL),
(9, ' Nunc sem risus', ' nunc-sem-risus', '8.jpg', ' Nunc sem risus, consectetur sed dui sit amet, eleifend egestas lacus. Maecenas vitae faucibus augue. Maecenas cursus, nibh vel eleifend vulputate, massa urna lobortis arcu, vitae bibendum velit lacus ut dolor.\r\nDonec ultrices, urna a maximus blandit, mauris ipsum fringilla risus, in venenatis nisi eros in justo. Maecenas eu lacus vel lacus laoreet hendrerit. Quisque ultrices orci in neque accumsan accumsan. Quisque metus ante, mattis ut nisi vitae, interdum tincidunt orci. Proin sapien turpis, pharetra sed semper in, lobortis ac tellus. ', '', '2019-10-01 16:14:34', '2019-10-01 16:16:38', NULL),
(10, 'Mauris ut efficitur tortor', 'Mauris-ut-efficitur-tortor', '', 'Mauris ut efficitur tortor. Proin eu pretium nisl. Pellentesque facilisis sollicitudin dolor, ac varius mauris condimentum a. Vivamus tempus risus at orci molestie, vitae egestas tellus suscipit. Aenean varius condimentum nisi, ac pulvinar leo mattis non. Maecenas aliquet auctor leo, eu dapibus ligula fermentum vel. Nulla accumsan mattis ante, quis elementum urna bibendum at. Pellentesque gravida lorem vitae auctor porta. Ut hendrerit nulla ac ultricies suscipit. Maecenas et diam magna. Cras in condimentum justo, nec laoreet neque. Proin nec auctor dolor, eu bibendum metus. Sed tempor ex in ligula tristique placerat. Fusce in rutrum risus, eu sollicitudin neque. In hac habitasse platea dictumst. Cras ligula ex, malesuada ac interdum eget, tempor in urna.', '', '2019-10-02 20:57:40', '2019-10-02 20:57:40', NULL),
(11, 'Cras in condimentum justo', 'Cras-in-condimentum-justo', '', ' Cras in condimentum justo, nec laoreet neque. Proin nec auctor dolor, eu bibendum metus. Sed tempor ex in ligula tristique placerat. Fusce in rutrum risus, eu sollicitudin neque. In hac habitasse platea dictumst. Cras ligula ex, malesuada ac interdum eget, tempor in urna.', '', '2019-10-02 20:57:40', '2019-10-02 20:57:40', NULL),
(12, 'Vestibulum ', 'Vestibulum ', '', 'Vestibulum in dignissim mauris, quis suscipit ipsum. Proin ac nisl est. Aliquam eget leo non sapien lobortis fringilla. Nam id viverra dui.\r\nEtiam lobortis ultricies nisl in auctor. Cras eu enim bibendum, ultrices tellus sed, feugiat nisi. Cras dictum quam eu mattis elementum. Vestibulum in dignissim mauris, quis suscipit ipsum. Proin ac nisl est.\r\n Aliquam eget leo non sapien lobortis fringilla. Nam id viverra dui.', '', '2019-10-02 21:29:01', '2019-10-02 21:29:01', NULL),
(13, 'Etiam lobortis', 'Etiam-lobortis', '', 'Etiam lobortis ultricies nisl in auctor. Cras eu enim bibendum, ultrices tellus sed, feugiat nisi. Cras dictum quam eu mattis elementum. ', '', '2019-10-02 21:29:01', '2019-10-02 21:29:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts_tags`
--

CREATE TABLE `posts_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts_tags`
--

INSERT INTO `posts_tags` (`id`, `tag_id`, `post_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 3, 7),
(4, 4, 6),
(5, 2, 1),
(6, 2, 2),
(7, 6, 3),
(8, 1, 4),
(9, 4, 4),
(10, 2, 2),
(11, 2, 6),
(12, 1, 7),
(13, 4, 8),
(14, 3, 8),
(15, 2, 9),
(16, 2, 9),
(17, 7, 9);

-- --------------------------------------------------------

--
-- Table structure for table `searches`
--

CREATE TABLE `searches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `site`
--

CREATE TABLE `site` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about_section` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `newsletter` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_footer_bottom` tinyint(1) NOT NULL DEFAULT '0',
  `copyright` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_info` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `map` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inserted_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site`
--

INSERT INTO `site` (`id`, `about_section`, `newsletter`, `show_footer_bottom`, `copyright`, `site_info`, `address`, `map`, `email`, `phone`, `inserted_at`, `updated_at`) VALUES
(1, 'about section sollicitudin molestie malesuada. Nulla quis lorem ut libero malesuada feugiat. Pellentesque in ipsum id orci porta dapibus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Donec sollicitudin molestie malesuada.', 'Sit newsletter \\r\\nvel delectus amet officiis repudiandae est voluptatem. Tempora maxime provident nisi et fuga et enim exercitationem ipsam. Culpa consequatur occaecati.', 1, '© Copyright WebDevBlog 2019', ' Site by <a href=\"#\">Aamir</a>', 'Lorem ipsum dolor,\r\nsit amet, \r\nconsectetur, adipiscing elit.\r\n', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d106378.33112349427!2d73.00500523597411!3d33.570965899980614!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2s!4v1569917087212!5m2!1sen!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 'contact@philosophywebsite.com,\r\ninfo@philosophywebsite.com', '\r\nPhone: (+0) 123 456 789 ', '2019-09-30 23:26:08', '2019-10-01 08:07:15');

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`id`, `name`, `url`, `icon`) VALUES
(1, 'facebook', '#', 'fa-facebook'),
(2, 'twitter', '#twitter', 'fa-twitter'),
(3, 'google plus', '#google plus', 'fa-google-plus'),
(4, 'linkedin', '#linkedin', 'fa-linkedin'),
(5, 'youtube', '#youtube', 'fa-youtube'),
(6, 'pinterest', '#pinterest', 'fa-pinterest'),
(7, 'instagram', '#instagram', 'fa-instagram'),
(8, 'whatsapp', '#whatsapp', 'fa-whatsapp');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`) VALUES
(1, 'Learning', 'Learning'),
(2, 'Applying', 'Applying'),
(3, 'Books', 'books'),
(4, 'obstacles', 'obstacles'),
(6, 'IDEs', 'IDEs'),
(7, 'work environment', 'work-environment');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories_posts`
--
ALTER TABLE `categories_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_posts_category_id_index` (`category_id`),
  ADD KEY `categories_posts_post_id_index` (`post_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_index` (`post_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `newsletters_subscriber_email_unique` (`subscriber_email`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_title_unique` (`title`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_title_unique` (`title`);

--
-- Indexes for table `posts_tags`
--
ALTER TABLE `posts_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_tags_tag_id_index` (`tag_id`),
  ADD KEY `posts_tags_post_id_index` (`post_id`);

--
-- Indexes for table `searches`
--
ALTER TABLE `searches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories_posts`
--
ALTER TABLE `categories_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `posts_tags`
--
ALTER TABLE `posts_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `searches`
--
ALTER TABLE `searches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `site`
--
ALTER TABLE `site`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories_posts`
--
ALTER TABLE `categories_posts`
  ADD CONSTRAINT `categories_posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `categories_posts_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

--
-- Constraints for table `posts_tags`
--
ALTER TABLE `posts_tags`
  ADD CONSTRAINT `posts_tags_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `posts_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
