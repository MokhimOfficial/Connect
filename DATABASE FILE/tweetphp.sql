-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 11, 2025 at 08:08 PM
-- Server version: 8.0.40
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tweetphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `comment` varchar(140) CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `post_id` int NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `user_id`, `post_id`, `time`) VALUES
(45, 'This is great!', 59, 730, '2022-01-13 12:21:18'),
(46, 'here\'s a comment', 59, 735, '2022-01-13 12:28:10');

-- --------------------------------------------------------

--
-- Table structure for table `follow`
--

DROP TABLE IF EXISTS `follow`;
CREATE TABLE IF NOT EXISTS `follow` (
  `id` int NOT NULL AUTO_INCREMENT,
  `follower_id` int NOT NULL,
  `following_id` int NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `follower_id` (`follower_id`),
  KEY `following_id` (`following_id`)
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data for table `follow`
--

INSERT INTO `follow` (`id`, `follower_id`, `following_id`, `time`) VALUES
(94, 25, 27, '2021-04-27 07:07:27'),
(137, 59, 58, '2022-01-11 17:09:51'),
(138, 58, 59, '2022-01-11 17:56:06'),
(139, 40, 55, '2022-01-12 16:50:18'),
(140, 40, 57, '2022-01-12 16:50:20'),
(141, 40, 58, '2022-01-12 16:50:23'),
(142, 40, 25, '2022-01-12 16:51:12'),
(148, 5, 59, '2022-01-12 17:04:27'),
(149, 25, 59, '2022-01-12 17:04:41'),
(150, 27, 59, '2022-01-12 17:05:25'),
(151, 33, 59, '2022-01-12 17:05:49'),
(152, 34, 59, '2022-01-12 17:06:04'),
(153, 37, 59, '2022-01-12 17:06:20'),
(154, 40, 59, '2022-01-12 17:06:35'),
(155, 41, 59, '2022-01-12 17:06:50'),
(156, 42, 59, '2022-01-12 17:07:08'),
(157, 43, 59, '2022-01-12 17:07:23'),
(158, 44, 59, '2022-01-12 17:07:38'),
(159, 58, 25, '2022-01-12 17:49:11'),
(160, 59, 25, '2022-01-12 17:52:22'),
(161, 33, 25, '2022-01-12 17:55:36'),
(162, 59, 55, '2022-01-12 17:58:45'),
(164, 42, 55, '2022-01-12 18:02:22'),
(165, 54, 59, '2022-01-12 18:02:43'),
(166, 54, 55, '2022-01-12 18:02:57'),
(167, 54, 25, '2022-01-12 18:02:58'),
(168, 54, 58, '2022-01-12 18:02:59'),
(169, 57, 58, '2022-01-12 18:03:33'),
(170, 57, 55, '2022-01-12 18:03:37'),
(171, 59, 40, '2022-01-12 18:06:25'),
(172, 5, 40, '2022-01-13 09:05:05'),
(173, 25, 40, '2022-01-13 09:05:46'),
(174, 27, 40, '2022-01-13 09:06:00'),
(175, 33, 40, '2022-01-13 09:06:32'),
(176, 34, 40, '2022-01-13 09:06:56'),
(177, 37, 40, '2022-01-13 09:07:10'),
(178, 42, 40, '2022-01-13 09:08:27'),
(179, 43, 40, '2022-01-13 09:08:38'),
(182, 60, 58, '2022-01-13 09:20:32'),
(183, 60, 56, '2022-01-13 09:20:34'),
(184, 60, 25, '2022-01-13 09:20:38'),
(185, 60, 41, '2022-01-13 09:20:43'),
(186, 60, 5, '2022-01-13 09:20:47'),
(187, 59, 60, '2022-01-13 12:23:12'),
(188, 60, 59, '2022-01-13 12:26:08'),
(190, 109, 101, '2025-01-16 01:30:27'),
(192, 117, 101, '2025-01-16 01:44:09'),
(195, 105, 102, '2025-01-16 02:18:33'),
(196, 105, 101, '2025-01-16 02:18:53'),
(197, 101, 104, '2025-01-16 02:21:37'),
(199, 101, 2, '2025-01-16 02:56:39'),
(201, 122, 2, '2025-01-16 03:00:15'),
(203, 124, 2, '2025-01-16 06:02:00'),
(204, 105, 124, '2025-01-16 06:03:46'),
(205, 125, 2, '2025-01-16 06:12:15'),
(206, 116, 101, '2025-01-16 09:12:44'),
(207, 126, 2, '2025-01-16 09:27:31'),
(208, 127, 2, '2025-01-26 11:27:04'),
(209, 128, 2, '2025-01-26 11:40:27');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
CREATE TABLE IF NOT EXISTS `likes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `post_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `likes_ibfk_2` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=317 DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `post_id`) VALUES
(231, 58, 726),
(233, 27, 726),
(234, 33, 726),
(235, 34, 726),
(236, 37, 726),
(237, 40, 726),
(238, 41, 726),
(239, 42, 726),
(240, 43, 726),
(241, 44, 726),
(243, 25, 726),
(252, 58, 727),
(253, 58, 711),
(255, 59, 727),
(256, 59, 711),
(261, 33, 727),
(262, 33, 711),
(263, 34, 727),
(264, 34, 711),
(265, 37, 727),
(266, 40, 727),
(267, 40, 728),
(270, 41, 727),
(271, 41, 728),
(272, 42, 727),
(273, 42, 728),
(277, 43, 727),
(278, 59, 729),
(280, 40, 729),
(281, 42, 729),
(284, 54, 726),
(285, 54, 728),
(287, 54, 729),
(289, 57, 728),
(290, 57, 729),
(292, 5, 730),
(295, 5, 726),
(296, 25, 730),
(297, 27, 730),
(298, 33, 730),
(299, 34, 730),
(300, 37, 730),
(301, 42, 730),
(302, 43, 730),
(303, 5, 731),
(304, 25, 731),
(305, 27, 731),
(306, 40, 731),
(307, 41, 731),
(308, 34, 731),
(309, 42, 731),
(310, 59, 730),
(311, 60, 728),
(312, 60, 711),
(314, 60, 733),
(315, 59, 735),
(316, 59, 734);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
CREATE TABLE IF NOT EXISTS `notifications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `notify_for` int NOT NULL,
  `notify_from` int NOT NULL,
  `target` int NOT NULL,
  `type` enum('follow','like','retweet','qoute','comment','reply','mention') CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `time` datetime NOT NULL,
  `count` int NOT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_ibfk_1` (`notify_for`),
  KEY `notifications_ibfk_2` (`notify_from`)
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `notify_for`, `notify_from`, `target`, `type`, `time`, `count`, `status`) VALUES
(86, 58, 59, 0, 'follow', '2022-01-11 17:09:51', 1, 0),
(88, 59, 58, 0, 'follow', '2022-01-11 17:56:05', 1, 0),
(89, 59, 58, 726, 'like', '2022-01-11 17:56:38', 1, 0),
(90, 55, 40, 0, 'follow', '2022-01-12 16:50:18', 0, 0),
(91, 57, 40, 0, 'follow', '2022-01-12 16:50:20', 1, 0),
(92, 58, 40, 0, 'follow', '2022-01-12 16:50:23', 0, 0),
(94, 25, 40, 0, 'follow', '2022-01-12 16:51:12', 1, 0),
(100, 59, 5, 0, 'follow', '2022-01-12 17:04:27', 1, 0),
(101, 59, 25, 0, 'follow', '2022-01-12 17:04:41', 1, 0),
(102, 59, 27, 0, 'follow', '2022-01-12 17:05:25', 1, 0),
(103, 59, 27, 726, 'like', '2022-01-12 17:05:33', 1, 0),
(104, 59, 33, 0, 'follow', '2022-01-12 17:05:49', 1, 0),
(105, 59, 33, 726, 'like', '2022-01-12 17:05:50', 1, 0),
(106, 59, 34, 0, 'follow', '2022-01-12 17:06:04', 1, 0),
(107, 59, 34, 726, 'like', '2022-01-12 17:06:06', 1, 0),
(108, 59, 37, 0, 'follow', '2022-01-12 17:06:20', 1, 0),
(109, 59, 37, 726, 'like', '2022-01-12 17:06:22', 1, 0),
(110, 59, 40, 0, 'follow', '2022-01-12 17:06:35', 1, 0),
(111, 59, 40, 726, 'like', '2022-01-12 17:06:36', 1, 0),
(112, 59, 41, 0, 'follow', '2022-01-12 17:06:50', 1, 0),
(113, 59, 41, 726, 'like', '2022-01-12 17:06:51', 1, 0),
(114, 59, 42, 0, 'follow', '2022-01-12 17:07:08', 1, 0),
(115, 59, 42, 726, 'like', '2022-01-12 17:07:10', 1, 0),
(116, 59, 43, 0, 'follow', '2022-01-12 17:07:23', 1, 0),
(117, 59, 43, 726, 'like', '2022-01-12 17:07:25', 1, 0),
(118, 59, 44, 0, 'follow', '2022-01-12 17:07:38', 1, 0),
(119, 59, 44, 726, 'like', '2022-01-12 17:07:46', 1, 0),
(121, 59, 25, 726, 'like', '2022-01-12 17:46:39', 1, 0),
(129, 25, 58, 0, 'follow', '2022-01-12 17:49:11', 0, 0),
(130, 25, 58, 727, 'like', '2022-01-12 17:49:13', 0, 0),
(131, 25, 58, 711, 'like', '2022-01-12 17:49:14', 0, 0),
(133, 25, 59, 0, 'follow', '2022-01-12 17:52:22', 0, 0),
(134, 25, 59, 727, 'like', '2022-01-12 17:52:30', 0, 0),
(135, 25, 59, 711, 'like', '2022-01-12 17:55:09', 0, 0),
(140, 25, 33, 0, 'follow', '2022-01-12 17:55:36', 0, 0),
(141, 25, 33, 727, 'like', '2022-01-12 17:55:39', 0, 0),
(142, 25, 33, 711, 'like', '2022-01-12 17:55:41', 0, 0),
(143, 25, 34, 727, 'like', '2022-01-12 17:55:55', 0, 0),
(144, 25, 34, 711, 'like', '2022-01-12 17:55:58', 0, 0),
(145, 25, 37, 727, 'like', '2022-01-12 17:56:18', 0, 0),
(146, 25, 40, 727, 'like', '2022-01-12 17:56:31', 0, 0),
(147, 58, 40, 728, 'like', '2022-01-12 17:56:33', 0, 0),
(150, 25, 41, 727, 'like', '2022-01-12 17:57:00', 0, 0),
(151, 58, 41, 728, 'like', '2022-01-12 17:57:04', 0, 0),
(152, 25, 42, 727, 'like', '2022-01-12 17:57:16', 0, 0),
(153, 58, 42, 728, 'like', '2022-01-12 17:57:21', 0, 0),
(157, 25, 43, 727, 'like', '2022-01-12 17:57:52', 0, 0),
(158, 55, 59, 0, 'follow', '2022-01-12 17:58:45', 0, 0),
(159, 55, 59, 729, 'like', '2022-01-12 18:01:05', 0, 0),
(162, 55, 40, 729, 'like', '2022-01-12 18:02:09', 0, 0),
(163, 55, 42, 0, 'follow', '2022-01-12 18:02:22', 0, 0),
(164, 55, 42, 729, 'like', '2022-01-12 18:02:24', 0, 0),
(167, 59, 54, 0, 'follow', '2022-01-12 18:02:43', 1, 0),
(168, 59, 54, 726, 'like', '2022-01-12 18:02:51', 1, 0),
(169, 55, 54, 0, 'follow', '2022-01-12 18:02:57', 0, 0),
(170, 25, 54, 0, 'follow', '2022-01-12 18:02:58', 0, 0),
(171, 58, 54, 0, 'follow', '2022-01-12 18:02:59', 0, 0),
(172, 58, 54, 728, 'like', '2022-01-12 18:03:04', 0, 0),
(174, 55, 54, 729, 'like', '2022-01-12 18:03:10', 0, 0),
(176, 58, 57, 0, 'follow', '2022-01-12 18:03:33', 0, 0),
(177, 58, 57, 728, 'like', '2022-01-12 18:03:35', 0, 0),
(178, 55, 57, 0, 'follow', '2022-01-12 18:03:37', 0, 0),
(179, 55, 57, 729, 'like', '2022-01-12 18:03:39', 0, 0),
(180, 40, 59, 0, 'follow', '2022-01-12 18:06:25', 0, 0),
(182, 40, 5, 0, 'follow', '2022-01-13 09:05:05', 0, 0),
(183, 40, 5, 730, 'like', '2022-01-13 09:05:07', 0, 0),
(186, 59, 5, 726, 'like', '2022-01-13 09:05:28', 1, 0),
(187, 40, 25, 0, 'follow', '2022-01-13 09:05:46', 0, 0),
(188, 40, 25, 730, 'like', '2022-01-13 09:05:48', 0, 0),
(189, 40, 27, 0, 'follow', '2022-01-13 09:06:00', 0, 0),
(190, 40, 27, 730, 'like', '2022-01-13 09:06:02', 0, 0),
(191, 40, 33, 0, 'follow', '2022-01-13 09:06:32', 0, 0),
(192, 40, 33, 730, 'like', '2022-01-13 09:06:33', 0, 0),
(193, 40, 34, 0, 'follow', '2022-01-13 09:06:56', 0, 0),
(194, 40, 34, 730, 'like', '2022-01-13 09:06:57', 0, 0),
(195, 40, 37, 0, 'follow', '2022-01-13 09:07:10', 0, 0),
(196, 40, 37, 730, 'like', '2022-01-13 09:07:12', 0, 0),
(197, 40, 42, 0, 'follow', '2022-01-13 09:08:27', 0, 0),
(198, 40, 42, 730, 'like', '2022-01-13 09:08:28', 0, 0),
(199, 40, 43, 0, 'follow', '2022-01-13 09:08:38', 0, 0),
(200, 40, 43, 730, 'like', '2022-01-13 09:08:39', 0, 0),
(203, 58, 60, 0, 'follow', '2022-01-13 09:20:32', 0, 0),
(204, 56, 60, 0, 'follow', '2022-01-13 09:20:34', 0, 0),
(205, 25, 60, 0, 'follow', '2022-01-13 09:20:38', 0, 0),
(206, 41, 60, 0, 'follow', '2022-01-13 09:20:43', 0, 0),
(207, 5, 60, 0, 'follow', '2022-01-13 09:20:46', 0, 0),
(208, 59, 5, 731, 'like', '2022-01-13 09:27:56', 1, 0),
(209, 59, 25, 731, 'like', '2022-01-13 09:28:07', 1, 0),
(210, 59, 27, 731, 'like', '2022-01-13 09:28:16', 1, 0),
(211, 59, 40, 731, 'like', '2022-01-13 09:28:29', 1, 0),
(212, 59, 41, 731, 'like', '2022-01-13 09:28:42', 1, 0),
(213, 59, 34, 731, 'like', '2022-01-13 09:29:05', 1, 0),
(214, 59, 42, 731, 'like', '2022-01-13 09:29:24', 1, 0),
(215, 40, 59, 730, 'like', '2022-01-13 12:20:47', 0, 0),
(216, 40, 59, 730, 'comment', '2022-01-13 12:21:18', 0, 0),
(217, 58, 59, 732, 'mention', '2022-01-13 12:22:25', 0, 0),
(218, 40, 59, 732, 'mention', '2022-01-13 12:22:25', 0, 0),
(220, 60, 59, 0, 'follow', '2022-01-13 12:23:12', 1, 0),
(221, 58, 60, 728, 'like', '2022-01-13 12:25:07', 0, 0),
(222, 25, 60, 711, 'like', '2022-01-13 12:25:09', 0, 0),
(224, 59, 60, 0, 'follow', '2022-01-13 12:26:08', 1, 0),
(225, 59, 60, 733, 'like', '2022-01-13 12:26:14', 1, 0),
(226, 59, 60, 735, 'qoute', '2022-01-13 12:26:35', 1, 0),
(227, 60, 59, 735, 'like', '2022-01-13 12:27:20', 0, 0),
(228, 60, 59, 734, 'like', '2022-01-13 12:27:26', 0, 0),
(229, 60, 59, 735, 'comment', '2022-01-13 12:28:10', 0, 0),
(231, 101, 109, 0, 'follow', '2025-01-16 01:30:27', 1, 0),
(233, 101, 117, 0, 'follow', '2025-01-16 01:44:09', 1, 0),
(236, 102, 105, 0, 'follow', '2025-01-16 02:18:33', 0, 0),
(237, 101, 105, 0, 'follow', '2025-01-16 02:18:53', 1, 0),
(238, 104, 101, 0, 'follow', '2025-01-16 02:21:37', 0, 0),
(239, 2, 101, 0, 'follow', '2025-01-16 02:56:39', 1, 0),
(240, 2, 122, 0, 'follow', '2025-01-16 03:00:15', 1, 0),
(242, 2, 124, 0, 'follow', '2025-01-16 06:02:00', 1, 0),
(243, 124, 105, 0, 'follow', '2025-01-16 06:03:46', 0, 0),
(244, 2, 125, 0, 'follow', '2025-01-16 06:12:15', 1, 0),
(245, 101, 116, 0, 'follow', '2025-01-16 09:12:44', 1, 0),
(246, 2, 126, 0, 'follow', '2025-01-16 09:27:31', 1, 0),
(247, 2, 127, 0, 'follow', '2025-01-26 11:27:04', 1, 0),
(248, 2, 128, 0, 'follow', '2025-01-26 11:40:27', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `post_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=759 DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `post_on`) VALUES
(711, 25, '2021-10-12 18:29:24'),
(726, 59, '2022-01-11 16:45:42'),
(727, 25, '2022-01-12 17:48:33'),
(728, 58, '2022-01-12 17:51:22'),
(729, 55, '2021-09-29 18:00:04'),
(730, 40, '2022-01-13 09:04:13'),
(731, 59, '2022-01-08 09:25:34'),
(732, 59, '2022-01-13 12:22:25'),
(733, 59, '2022-01-13 12:24:26'),
(734, 60, '2022-01-13 12:25:53'),
(735, 60, '2022-01-13 12:26:35'),
(737, 101, '2025-01-16 01:34:22'),
(738, 102, '2025-01-16 01:57:00'),
(739, 102, '2025-01-16 02:00:45'),
(740, 102, '2025-01-16 02:01:10'),
(741, 101, '2025-01-16 02:02:52'),
(744, 102, '2025-01-16 02:07:27'),
(745, 106, '2025-01-16 02:10:46'),
(746, 104, '2025-01-16 02:12:27'),
(747, 104, '2025-01-16 02:13:07'),
(750, 105, '2025-01-16 02:17:46'),
(751, 105, '2025-01-16 02:20:53'),
(752, 101, '2025-01-16 02:22:40'),
(753, 117, '2025-01-16 02:29:30'),
(754, 117, '2025-01-16 02:32:56'),
(756, 2, '2025-01-16 02:51:25'),
(757, 124, '2025-01-16 06:02:53'),
(758, 116, '2025-01-16 09:16:15');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

DROP TABLE IF EXISTS `replies`;
CREATE TABLE IF NOT EXISTS `replies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `comment_id` int NOT NULL,
  `user_id` int NOT NULL,
  `reply` varchar(140) CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `comment_id` (`comment_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `retweets`
--

DROP TABLE IF EXISTS `retweets`;
CREATE TABLE IF NOT EXISTS `retweets` (
  `post_id` int NOT NULL,
  `retweet_msg` varchar(140) CHARACTER SET utf16 COLLATE utf16_unicode_ci DEFAULT NULL,
  `tweet_id` int DEFAULT NULL,
  `retweet_id` int DEFAULT NULL,
  PRIMARY KEY (`post_id`) USING BTREE,
  KEY `retweet_id` (`retweet_id`),
  KEY `retweets_ibfk_2` (`tweet_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data for table `retweets`
--

INSERT INTO `retweets` (`post_id`, `retweet_msg`, `tweet_id`, `retweet_id`) VALUES
(735, 'I quoted this tweet!', 732, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `trends`
--

DROP TABLE IF EXISTS `trends`;
CREATE TABLE IF NOT EXISTS `trends` (
  `id` int NOT NULL AUTO_INCREMENT,
  `hashtag` varchar(140) CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `created_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hashtag` (`hashtag`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data for table `trends`
--

INSERT INTO `trends` (`id`, `hashtag`, `created_on`) VALUES
(1, 'php', '2021-01-06 05:57:43'),
(4, 'hi', '2021-01-25 21:42:35'),
(5, 'alex', '2021-01-25 21:42:36'),
(6, '7oda', '2021-03-20 23:40:12'),
(9, 'js', '2021-04-02 03:24:28'),
(12, 'bro', '2021-04-02 03:31:38'),
(13, 'mysql', '2022-01-13 16:10:54'),
(14, 'explore', '2022-01-13 16:10:54'),
(15, 'fun', '2022-01-13 16:10:54'),
(16, 'jeff', '2025-01-16 04:59:55'),
(17, 'Amazon', '2025-01-16 05:04:22'),
(18, 'Executive', '2025-01-16 05:04:22'),
(19, 'Naukri', '2025-01-16 05:27:00'),
(20, 'Jobs', '2025-01-16 05:27:00'),
(21, 'Lion', '2025-01-16 05:30:45'),
(22, 'Red', '2025-01-16 05:30:45'),
(23, 'One', '2025-01-16 05:30:45'),
(24, 'Asiatic', '2025-01-16 05:30:45'),
(25, 'Bengal', '2025-01-16 05:30:45'),
(26, 'Dubai', '2025-01-16 05:31:10'),
(27, 'tour', '2025-01-16 05:31:10'),
(28, 'enjoyed', '2025-01-16 05:31:10'),
(29, 'good', '2025-01-16 05:31:10'),
(30, 'india', '2025-01-16 05:32:52'),
(31, 'population', '2025-01-16 05:32:52'),
(32, 'growth', '2025-01-16 05:32:52'),
(33, '039', '2025-01-16 05:32:52'),
(34, 'Home', '2025-01-16 05:35:43'),
(35, 'the', '2025-01-16 05:35:43'),
(36, 'Fires', '2025-01-16 05:35:43'),
(37, 'An', '2025-01-16 05:35:43'),
(38, 'fitness', '2025-01-16 05:40:46'),
(39, 'gym', '2025-01-16 05:40:46'),
(40, 'workout', '2025-01-16 05:40:46'),
(41, 'gymmotivation', '2025-01-16 05:40:46'),
(42, 'fitnessmotivation', '2025-01-16 05:40:46'),
(43, 'fitfam', '2025-01-16 05:40:46'),
(44, 'lifestyle', '2025-01-16 05:40:46'),
(45, 'sport', '2025-01-16 05:40:46'),
(46, 'fitnesstips', '2025-01-16 05:40:46'),
(47, 'gymlife', '2025-01-16 05:40:46'),
(48, 'YogaLife', '2025-01-16 05:42:27'),
(49, 'YogaEveryday', '2025-01-16 05:42:27'),
(50, 'GlowingSkin', '2025-01-16 05:43:07'),
(51, 'SkincareRoutine', '2025-01-16 05:43:07'),
(52, 'Coldplay', '2025-01-16 05:45:25'),
(53, 'Musicband', '2025-01-16 05:45:25'),
(54, 'Mumbai', '2025-01-16 05:45:25'),
(55, 'MumbaiConcert', '2025-01-16 05:45:25'),
(56, 'Chill', '2025-01-16 05:50:53'),
(57, 'memes', '2025-01-16 05:50:53'),
(58, 'squid', '2025-01-16 05:52:40'),
(59, 'drama', '2025-01-16 05:52:40'),
(60, 'series', '2025-01-16 05:52:40'),
(61, 'Travel', '2025-01-16 05:59:30'),
(62, 'Adventure', '2025-01-16 05:59:30'),
(63, 'Vacation', '2025-01-16 05:59:31'),
(64, 'Travelgram', '2025-01-16 05:59:31'),
(65, 'TravelTheWorld', '2025-01-16 05:59:31'),
(66, 'connect', '2025-01-16 06:12:41');

-- --------------------------------------------------------

--
-- Table structure for table `tweets`
--

DROP TABLE IF EXISTS `tweets`;
CREATE TABLE IF NOT EXISTS `tweets` (
  `post_id` int NOT NULL,
  `status` varchar(140) CHARACTER SET utf16 COLLATE utf16_unicode_ci DEFAULT NULL,
  `img` text CHARACTER SET utf16 COLLATE utf16_unicode_ci,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data for table `tweets`
--

INSERT INTO `tweets` (`post_id`, `status`, `img`) VALUES
(726, 'OK, this is my first Tweet for Testing Purpose!', NULL),
(727, 'Unfortunately I feel like I have to master every skill I begin to enjoy!!!', NULL),
(728, 'You canâ€™t climb uphill by thinking downhill thoughts', NULL),
(729, 'I just wanna be nice, but some people are so ANNOYING.', NULL),
(730, 'The need for forgiveness is an illusion. There is nothing to forgive.', NULL),
(731, '', 'tweet-61dfd3ee910a8.png'),
(732, 'This is a second demo tweet with mention too! @ralph @wilburpotter @codeastro', NULL),
(733, 'A post with Sample Image.', 'tweet-61dffddac3a4c.jpg'),
(734, 'Here\'s a tweet with hashtags. #php #mysql #js #explore #fun', NULL),
(737, '#Amazon #Executive chairman of Amazon #Jeff Bezos\r\nJeff Bezos Says the 1-Hour Rule Makes Him Smarter. New Neuroscience Says He’s Right!', 'tweet-678845fe3b13d.jpeg'),
(738, '#Naukri #Jobs                                                                  Accenture in India Hiring for  6000 Entry-Level Jobs', 'tweet-67884b4c7f829.jpeg'),
(739, '#Lion-tailed-macaque #Red panda #One-horned rhinoceros #Asiatic lion #Bengal tiger save endangered species in India our animals are crying!', 'tweet-67884c2dc34cf.jpeg'),
(740, 'Visiting Dubai for the first time had a great experience #Dubai #tour to Dubai #enjoyed in Dubai #good times in Dubai', 'tweet-67884c462697b.jpeg'),
(741, '#india #population #growth in country                  Yes, India&#039;s population is expected to decrease in the future.', 'tweet-67884cacd1675.jpg'),
(742, '#Home Losses From #the LA #Fires Hasten \r\n#An Uninsurable Future\r\nThat bad fire season is now here in across Los Angeles County.', NULL),
(743, '', 'tweet-67884d682ba50.jpeg'),
(744, '#Home Losses From #the LA #Fires Hasten \r\n#An Uninsurable Future\r\nThat bad fire season is now here in  across Los Angeles Country.', 'tweet-67884dbf411be.jpeg'),
(745, '#fitness, #gym, #workout, #gymmotivation, #fitnessmotivation, #fitfam, #lifestyle, #sport, #fitnesstips, and #gymlife', 'tweet-67884e86c1cd4.jpg'),
(746, '#YogaLife – For sharing your yoga journey and lifestyle.\r\n#YogaEveryday – Showcasing daily yoga practices.', 'tweet-67884eeb1a3d4.jpeg'),
(747, '#GlowingSkin #SkincareRoutine Skincare is not just a routine; it’s an essential act of self-care that nurtures both your body and mind.', 'tweet-67884f135c9e7.jpeg'),
(748, '#Coldplay#Musicband#India#Mumbai#MumbaiConcert \r\n Coldplay has announced additional tickets for their upcoming Mumbai concertsced', NULL),
(749, '#Coldplay#Musicband#India#Mumbai#MumbaiConcert \r\nColdplay has announced additional tickets for their upcoming Mumbai concerts', NULL),
(750, '#Coldplay#Musicband#India#Mumbai#MumbaiConcert    Coldplay announces additional tickets for Mumbai shows.', 'tweet-6788502aae64c.jpg'),
(751, '#Chill Guy\r\n#memes\r\nA meme showcasing a relaxed individual in various chaotic scenarios, symbolizing calmness amidst turmoil.', 'tweet-678850e562a31.jpg'),
(752, 'is squid game real?\r\n#squid-game #squid-game-2 #drama #series', 'tweet-678851501ad8b.jpg'),
(753, 'Explore with us. Discover hidden gems, experience local culture. #Travel #Adventure #Explore #Vacation #Travelgram #TravelTheWorld', NULL),
(754, '', 'tweet-678853b8db1a2.jpg'),
(756, '', 'tweet-6788580ded7a8.jpg'),
(757, 'I am Good Teacher', NULL),
(758, 'post', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(40) CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `name` varchar(40) CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `imgCover` varchar(255) CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL DEFAULT 'cover.png',
  `bio` varchar(140) CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL DEFAULT '',
  `location` varchar(255) CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL DEFAULT '',
  `website` varchar(255) CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `name`, `img`, `imgCover`, `bio`, `location`, `website`) VALUES
(2, 'ConnectOfficial', 'Connect@gmail.com', 'f91e15dbec69fc40f81f0876e7009648', 'Connect', 'default.jpg', 'cover.png', '', '', ''),
(101, 'mokhimofficial', 'mullamokhim25@gmail.com', 'f91e15dbec69fc40f81f0876e7009648', 'Mokhim Mulla', 'default.jpg', 'cover.png', '', '', ''),
(102, 'pratik', 'pratik@gmail.com', 'f91e15dbec69fc40f81f0876e7009648', 'Pratik Pillay', 'default.jpg', 'cover.png', '', '', ''),
(103, 'brandgamermm', 'brand@gmail.com', 'f91e15dbec69fc40f81f0876e7009648', 'BrandGamerMM', 'default.jpg', 'cover.png', '', '', ''),
(104, 'shradha', 'shradha@gmail.com', 'f91e15dbec69fc40f81f0876e7009648', 'Shradha', 'default.jpg', 'cover.png', '', '', ''),
(105, 'nikita', 'nikita@gmail.com', 'f91e15dbec69fc40f81f0876e7009648', 'Nikita', 'default.jpg', 'cover.png', '', '', ''),
(106, 'ajitesh', 'ajitesh@gmail.com', 'f91e15dbec69fc40f81f0876e7009648', 'Ajitesh Kudale', 'default.jpg', 'cover.png', '', '', ''),
(107, 'raj', 'raj@gmail.com', 'f91e15dbec69fc40f81f0876e7009648', 'Raj More', 'default.jpg', 'cover.png', '', '', ''),
(108, 'razin', 'razin@gmail.com', 'f91e15dbec69fc40f81f0876e7009648', 'Razin Shaikh', 'default.jpg', 'cover.png', '', '', ''),
(109, 'zaid', 'zaid@gmail.com', 'f91e15dbec69fc40f81f0876e7009648', 'Zaid Marjani', 'default.jpg', 'cover.png', '', '', ''),
(110, 'shreyas', 'shreyas@gmail.com', 'f91e15dbec69fc40f81f0876e7009648', 'Shreyas Kharat', 'default.jpg', 'cover.png', '', '', ''),
(111, 'miyalal', 'miyalal@gmail.com', 'f91e15dbec69fc40f81f0876e7009648', 'Miyalal Mulla', 'default.jpg', 'cover.png', '', '', ''),
(112, 'arjun', 'arjun@gmail.com', 'f91e15dbec69fc40f81f0876e7009648', 'Arjun Saksena', 'default.jpg', 'cover.png', '', '', ''),
(113, 'tausif', 'tausif@gmail.com', 'f91e15dbec69fc40f81f0876e7009648', 'Tausif Mulla', 'default.jpg', 'cover.png', '', '', ''),
(114, 'salman', 'salman@gmail.com', 'f91e15dbec69fc40f81f0876e7009648', 'Salman Khan', 'default.jpg', 'cover.png', '', '', ''),
(115, 'naman', 'naman@gmail.com', 'f91e15dbec69fc40f81f0876e7009648', 'Naman Singh', 'default.jpg', 'cover.png', '', '', ''),
(116, 'ashwini', 'ashwini@gmail.com', 'f91e15dbec69fc40f81f0876e7009648', 'Ashwini Gambhire', 'default.jpg', 'cover.png', 'Display', '', ''),
(117, 'apeksha', 'apeksha@gmail.com', 'f91e15dbec69fc40f81f0876e7009648', 'Apeksha Patil', 'default.jpg', 'cover.png', '', '', ''),
(118, 'samir', 'samir@gmail.com', 'f91e15dbec69fc40f81f0876e7009648', 'Samir Marathe', 'default.jpg', 'cover.png', '', '', ''),
(119, 'bhumit', 'bhumit@gmail.com', 'f91e15dbec69fc40f81f0876e7009648', 'Bhumit Nehete', 'default.jpg', 'cover.png', '', '', ''),
(122, 'connecter', 'connecter@gmail.com', 'f91e15dbec69fc40f81f0876e7009648', 'Connecter', 'default.jpg', 'cover.png', '', '', ''),
(124, 'ashu27', 'ashusaraf27@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'ashwini', 'default.jpg', 'cover.png', '', '', ''),
(125, 'sahil', 'sahil@gmail.com', 'f91e15dbec69fc40f81f0876e7009648', 'Sahil', 'default.jpg', 'cover.png', '', '', ''),
(126, 'patil', 'ACS@gmail.com', 'f91e15dbec69fc40f81f0876e7009648', 'DY', 'default.jpg', 'cover.png', '', '', ''),
(127, 'prathmesh', 'prathmesh@gmail.com', 'f91e15dbec69fc40f81f0876e7009648', 'Patil Prathmesh', 'default.jpg', 'cover.png', '', '', ''),
(128, 'jayan', 'jayan@gmail.com', 'f91e15dbec69fc40f81f0876e7009648', 'Jayan Shaikh', 'default.jpg', 'cover.png', '', '', '');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `follow`
--
ALTER TABLE `follow`
  ADD CONSTRAINT `follow_ibfk_1` FOREIGN KEY (`follower_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `follow_ibfk_2` FOREIGN KEY (`following_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`notify_for`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `notifications_ibfk_2` FOREIGN KEY (`notify_from`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `replies`
--
ALTER TABLE `replies`
  ADD CONSTRAINT `replies_ibfk_1` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `replies_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `retweets`
--
ALTER TABLE `retweets`
  ADD CONSTRAINT `retweets_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `retweets_ibfk_2` FOREIGN KEY (`tweet_id`) REFERENCES `tweets` (`post_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `retweets_ibfk_3` FOREIGN KEY (`retweet_id`) REFERENCES `retweets` (`post_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tweets`
--
ALTER TABLE `tweets`
  ADD CONSTRAINT `tweets_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
