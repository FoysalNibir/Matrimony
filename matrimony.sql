-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2018 at 03:09 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `matrimony`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 4),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 5),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 6),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 7),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 8),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 9),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 11),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 12),
(12, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 13),
(13, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(14, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(15, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(16, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(17, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(18, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(19, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(20, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(21, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(22, 1, 'role_id', 'text', 'Role', 0, 1, 1, 1, 1, 1, NULL, 10),
(23, 4, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(25, 4, 'height', 'text', 'Height', 0, 1, 1, 1, 1, 1, NULL, 5),
(26, 4, 'weight', 'text', 'Weight (kg)', 0, 1, 1, 1, 1, 1, NULL, 6),
(27, 4, 'religion', 'text', 'Religion', 1, 1, 1, 1, 1, 1, NULL, 7),
(28, 4, 'complexion', 'text', 'Complexion', 0, 1, 1, 1, 1, 1, NULL, 8),
(29, 4, 'matrimonial_condition', 'select_dropdown', 'Matrimonial Condition', 1, 1, 1, 1, 1, 1, '{\"default\":\"Never Married\",\"options\":{\"Never Married\":\"Never Married\",\"Divorced\":\"Divorced\"}}', 9),
(30, 4, 'blood_group', 'select_dropdown', 'Blood Group', 1, 1, 1, 1, 1, 1, '{\"default\":\"A+\",\"options\":{\"A+\":\"A+\",\"A-\":\"A-\",\"B+\":\"B+\",\"B-\":\"B-\",\"O+\":\"O+\",\"O-\":\"O-\",\"AB+\":\"AB+\",\"AB-\":\"AB-\",\"Unknown\":\"Unknown\"}}', 12),
(31, 4, 'obstruction', 'text', 'Obstruction', 0, 1, 1, 1, 1, 1, NULL, 13),
(32, 4, 'current_address', 'text_area', 'Current Address', 1, 1, 1, 1, 1, 1, NULL, 14),
(33, 4, 'raised_in', 'text_area', 'Raised In', 1, 1, 1, 1, 1, 1, NULL, 15),
(34, 4, 'profession', 'text', 'Profession', 0, 1, 1, 1, 1, 1, '{\"description\":\"Engineer/Doctor/Student/Researcher etc\"}', 17),
(35, 4, 'occupation', 'text', 'Occupation', 1, 1, 1, 1, 1, 1, '{\"description\":\"Govt. or private job etc\"}', 19),
(37, 4, 'designation', 'text', 'Designation', 0, 1, 1, 1, 1, 1, NULL, 20),
(38, 4, 'degree', 'text', 'Degree', 1, 1, 1, 1, 1, 1, NULL, 21),
(40, 4, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 23),
(41, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 24),
(43, 4, 'institute', 'text', 'Institute', 1, 1, 1, 1, 1, 1, NULL, 22),
(45, 4, 'detail_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(46, 4, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, NULL, 25),
(47, 4, 'siblings', 'number', 'Siblings', 1, 1, 1, 1, 1, 1, NULL, 10),
(48, 4, 'organization', 'text', 'Organization', 1, 1, 1, 1, 1, 1, NULL, 18),
(78, 1, 'sex', 'select_dropdown', 'Sex', 0, 1, 1, 1, 1, 1, '{\"default\":\"Male\",\"options\":{\"Male\":\"Male\",\"Female\":\"Female\"}}', 3),
(79, 4, 'age', 'number', 'Age', 1, 1, 1, 1, 1, 1, NULL, 4),
(80, 4, 'sex', 'select_dropdown', 'Sex', 1, 1, 1, 1, 1, 1, '{\"default\":\"Male\",\"options\":{\"Male\":\"Male\",\"Female\":\"Female\"}}', 3),
(81, 9, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(82, 9, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 3),
(83, 9, 'relation', 'text', 'Relation', 1, 1, 1, 1, 1, 1, NULL, 4),
(84, 9, 'profession', 'text', 'Profession', 0, 1, 1, 1, 1, 1, '{\"description\":\"Engineer/Doctor/Student/Researcher etc\"}', 5),
(85, 9, 'occupation', 'text', 'Occupation', 1, 1, 1, 1, 1, 1, NULL, 6),
(86, 9, 'designation', 'text', 'Designation', 0, 1, 1, 1, 1, 1, NULL, 7),
(87, 9, 'organization', 'text', 'Organization', 0, 1, 1, 1, 1, 1, NULL, 8),
(88, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 9),
(89, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 10),
(90, 9, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, NULL, 11),
(91, 1, 'user_hasmany_userrelative_relationship', 'relationship', 'userrelatives', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Userrelative\",\"table\":\"userrelatives\",\"type\":\"hasMany\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":null}', 14),
(92, 9, 'userrelative_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(93, 4, 'nationality', 'text', 'Nationality', 1, 1, 1, 1, 1, 1, NULL, 11),
(94, 10, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(95, 10, 'post', 'text_area', 'Post', 1, 1, 1, 1, 1, 1, NULL, 2),
(96, 10, 'self', 'select_dropdown', 'Self', 0, 1, 1, 1, 1, 1, '{\"default\":\"Self\",\"options\":{\"Self\":\"Self\",\"For\":\"For\"}}', 3),
(97, 10, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(98, 10, 'sex', 'text', 'Sex', 1, 1, 1, 1, 1, 1, '{\"default\":\"Male\",\"options\":{\"Male\":\"Male\",\"Female\":\"Female\"}}', 5),
(99, 10, 'age', 'text', 'Age', 0, 1, 1, 1, 1, 1, NULL, 6),
(100, 10, 'height', 'text', 'Height', 0, 1, 1, 1, 1, 1, NULL, 7),
(101, 10, 'weight', 'text', 'Weight', 0, 1, 1, 1, 1, 1, NULL, 8),
(102, 10, 'religion', 'text', 'Religion', 1, 1, 1, 1, 1, 1, NULL, 9),
(103, 10, 'complexion', 'text', 'Complexion', 0, 1, 1, 1, 1, 1, NULL, 10),
(104, 10, 'matrimonial_condition', 'text', 'Matrimonial Condition', 1, 1, 1, 1, 1, 1, '{\"default\":\"Never Married\",\"options\":{\"Never Married\":\"Never Married\",\"Divorced\":\"Divorced\"}}', 11),
(105, 10, 'blood_group', 'select_dropdown', 'Blood Group', 1, 1, 1, 1, 1, 1, '{\"default\":\"A+\",\"options\":{\"A+\":\"A+\",\"A-\":\"A-\",\"B+\":\"B+\",\"B-\":\"B-\",\"O+\":\"O+\",\"O-\":\"O-\",\"AB+\":\"AB+\",\"AB-\":\"AB-\",\"Unknown\":\"Unknown\"}}', 12),
(106, 10, 'obstruction', 'text', 'Obstruction', 0, 1, 1, 1, 1, 1, NULL, 13),
(107, 10, 'current_address', 'text_area', 'Current Address', 1, 1, 1, 1, 1, 1, NULL, 14),
(108, 10, 'raised_in', 'text_area', 'Raised In', 1, 1, 1, 1, 1, 1, NULL, 15),
(109, 10, 'nationality', 'text', 'Nationality', 1, 1, 1, 1, 1, 1, NULL, 17),
(110, 10, 'profession', 'text', 'Profession', 0, 1, 1, 1, 1, 1, '{\"description\":\"Engineer/Doctor/Student/Researcher etc\"}', 18),
(111, 10, 'occupation', 'text', 'Occupation', 1, 1, 1, 1, 1, 1, '{\"description\":\"Govt. or private job etc\"}', 19),
(112, 10, 'designation', 'text', 'Designation', 0, 1, 1, 1, 1, 1, NULL, 20),
(113, 10, 'degree', 'text', 'Degree', 1, 1, 1, 1, 1, 1, NULL, 21),
(114, 10, 'institute', 'text', 'Institute', 1, 1, 1, 1, 1, 1, NULL, 22),
(115, 10, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, NULL, 23),
(116, 10, 'siblings', 'number', 'Siblings', 1, 1, 1, 1, 1, 1, NULL, 24),
(117, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 25),
(118, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 26),
(120, 10, 'post_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 27),
(121, 4, 'pictures', 'multiple_images', 'Pictures', 0, 1, 1, 1, 1, 1, NULL, 16),
(122, 10, 'picture', 'multiple_images', 'Picture', 0, 1, 1, 1, 1, 1, NULL, 16),
(123, 11, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(124, 11, 'post', 'text_area', 'Post', 1, 1, 1, 1, 1, 1, NULL, 2),
(125, 11, 'self', 'select_dropdown', 'Self', 0, 1, 1, 1, 1, 1, '{\"default\":\"1\",\"options\":{\"0\":\"For\",\"1\":\"Self\"}}', 3),
(126, 11, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(127, 11, 'sex', 'select_dropdown', 'Sex', 1, 1, 1, 1, 1, 1, '{\"default\":\"Male\",\"options\":{\"Male\":\"Male\",\"Female\":\"Female\"}}', 5),
(128, 11, 'age', 'number', 'Age', 0, 1, 1, 1, 1, 1, NULL, 6),
(129, 11, 'height', 'text', 'Height', 0, 1, 1, 1, 1, 1, NULL, 7),
(130, 11, 'weight', 'number', 'Weight', 0, 1, 1, 1, 1, 1, NULL, 8),
(131, 11, 'religion', 'text', 'Religion', 1, 1, 1, 1, 1, 1, NULL, 10),
(132, 11, 'complexion', 'text', 'Complexion', 0, 1, 1, 1, 1, 1, NULL, 11),
(133, 11, 'matrimonial_condition', 'select_dropdown', 'Matrimonial Condition', 1, 1, 1, 1, 1, 1, '{\"default\":\"Never Married\",\"options\":{\"Never Married\":\"Never Married\",\"Divorced\":\"Divorced\"}}', 12),
(134, 11, 'blood_group', 'select_dropdown', 'Blood Group', 1, 1, 1, 1, 1, 1, '{\"default\":\"\",\"options\":{\"\":\"Unknown\",\"A+\":\"A+\",\"A-\":\"A-\",\"B+\":\"B+\",\"B-\":\"B-\",\"O+\":\"O+\",\"O-\":\"O-\",\"AB+\":\"AB+\",\"AB-\":\"AB-\"}}', 13),
(135, 11, 'obstruction', 'text', 'Obstruction', 0, 1, 1, 1, 1, 1, NULL, 14),
(136, 11, 'current_address', 'text_area', 'Current Address', 1, 1, 1, 1, 1, 1, NULL, 15),
(137, 11, 'raised_in', 'text_area', 'Raised In', 1, 1, 1, 1, 1, 1, NULL, 16),
(138, 11, 'nationality', 'text', 'Nationality', 1, 1, 1, 1, 1, 1, NULL, 17),
(139, 11, 'profession', 'text', 'Profession', 0, 1, 1, 1, 1, 1, '{\"description\":\"Engineer/Doctor/Student/Researcher etc\"}', 18),
(140, 11, 'occupation', 'text', 'Occupation', 1, 1, 1, 1, 1, 1, '{\"description\":\"Govt. or private job etc\"}', 19),
(141, 11, 'designation', 'text', 'Designation', 0, 1, 1, 1, 1, 1, NULL, 20),
(142, 11, 'degree', 'text', 'Degree', 1, 1, 1, 1, 1, 1, NULL, 22),
(143, 11, 'institute', 'text', 'Institute', 1, 1, 1, 1, 1, 1, NULL, 23),
(144, 11, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, NULL, 24),
(145, 11, 'siblings', 'number', 'Siblings', 1, 1, 1, 1, 1, 1, NULL, 25),
(146, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 26),
(147, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 27),
(148, 11, 'picture', 'multiple_images', 'Picture', 0, 1, 1, 1, 1, 1, NULL, 9),
(149, 11, 'organization', 'text', 'Organization', 0, 1, 1, 1, 1, 1, NULL, 21),
(150, 1, 'user_hasmany_panel_relationship', 'relationship', 'panels', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Panel\",\"table\":\"panels\",\"type\":\"hasMany\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":null}', 15),
(151, 11, 'panel_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 28),
(152, 12, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(153, 12, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 3),
(154, 12, 'relation', 'text', 'Relation', 1, 1, 1, 1, 1, 1, NULL, 4),
(155, 12, 'profession', 'text', 'Profession', 0, 1, 1, 1, 1, 1, '{\"description\":\"Engineer/Doctor/Student/Researcher etc\"}', 5),
(156, 12, 'occupation', 'text', 'Occupation', 1, 1, 1, 1, 1, 1, NULL, 6),
(157, 12, 'designation', 'text', 'Designation', 0, 1, 1, 1, 1, 1, NULL, 7),
(158, 12, 'organization', 'text', 'Organization', 0, 1, 1, 1, 1, 1, NULL, 8),
(159, 12, 'panel_id', 'text', 'Panel Id', 0, 1, 1, 1, 1, 1, NULL, 9),
(160, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 10),
(161, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 11),
(162, 11, 'panel_hasone_panelrelative_relationship', 'relationship', 'panelrelatives', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Panelrelative\",\"table\":\"panelrelatives\",\"type\":\"hasOne\",\"column\":\"panel_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 29),
(163, 12, 'panelrelative_belongsto_panel_relationship', 'relationship', 'Relatives of', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Panel\",\"table\":\"panels\",\"type\":\"belongsTo\",\"column\":\"panel_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(164, 14, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(165, 14, 'headline', 'text', 'Headline', 1, 1, 1, 1, 1, 1, NULL, 2),
(166, 14, 'story', 'text_area', 'Story', 1, 1, 1, 1, 1, 1, NULL, 3),
(167, 14, 'picture', 'image', 'Picture', 0, 1, 1, 1, 1, 1, NULL, 4),
(168, 14, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, NULL, 5),
(169, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 6),
(170, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(171, 14, 'story_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":null}', 8),
(172, 1, 'user_hasmany_story_relationship', 'relationship', 'stories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Story\",\"table\":\"stories\",\"type\":\"hasMany\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"headline\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":null}', 16);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-08-08 03:46:23', '2018-08-08 22:51:26'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2018-08-08 03:46:23', '2018-08-08 03:46:23'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2018-08-08 03:46:23', '2018-08-08 03:46:23'),
(4, 'details', 'details', 'Detail', 'Details', 'voyager-file-text', 'App\\Detail', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-08-08 04:52:52', '2018-08-08 04:52:52'),
(9, 'userrelatives', 'userrelatives', 'Userrelative', 'Userrelatives', 'voyager-people', 'App\\Userrelative', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-08-08 23:38:56', '2018-08-08 23:38:56'),
(10, 'posts', 'posts', 'Post', 'Posts', 'voyager-receipt', 'App\\Post', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-08-09 00:26:56', '2018-08-09 00:26:56'),
(11, 'panels', 'panels', 'Panel', 'Panels', 'voyager-receipt', 'App\\Panel', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-08-09 01:00:07', '2018-08-09 01:00:07'),
(12, 'panelrelatives', 'panelrelatives', 'Panelrelative', 'Panelrelatives', 'voyager-group', 'App\\Panelrelative', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-08-09 01:10:38', '2018-08-09 01:10:38'),
(14, 'stories', 'stories', 'Story', 'Stories', 'voyager-paper-plane', 'App\\Story', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-08-13 02:08:38', '2018-08-13 02:08:38');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(10) UNSIGNED NOT NULL,
  `age` double NOT NULL,
  `height` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `religion` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `complexion` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `matrimonial_condition` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blood_group` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `obstruction` varchar(750) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_address` varchar(750) COLLATE utf8mb4_unicode_ci NOT NULL,
  `raised_in` varchar(750) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profession` varchar(750) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `occupation` varchar(750) COLLATE utf8mb4_unicode_ci NOT NULL,
  `organization` varchar(750) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(750) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `degree` varchar(750) COLLATE utf8mb4_unicode_ci NOT NULL,
  `institute` varchar(750) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `siblings` int(11) NOT NULL,
  `sex` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pictures` varchar(750) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `age`, `height`, `weight`, `religion`, `complexion`, `matrimonial_condition`, `blood_group`, `obstruction`, `current_address`, `raised_in`, `profession`, `occupation`, `organization`, `designation`, `degree`, `institute`, `created_at`, `updated_at`, `user_id`, `siblings`, `sex`, `nationality`, `pictures`) VALUES
(1, 24, '5\' 10\"', 71, 'Muslim', 'Fair', 'Never Married', 'AB+', 'No Obstruction', 'Basila City, Block-B, Road-2, Mohammadpur, Dhaka-1207, Bangladesh\r\nMalatinagar Matir Mosque Len, Bogra-5800, Bangladesh', 'Bogura', 'Engineer', 'Private Service Holder', 'BrandOn', 'SoftwareEngineer', 'BSc', 'KUET', '2018-08-08 05:28:00', '2018-08-09 00:13:36', 1, 2, 'Male', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-08-08 03:46:23', '2018-08-08 03:46:23');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2018-08-08 03:46:23', '2018-08-08 03:46:23', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2018-08-08 03:46:23', '2018-08-08 03:46:23', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2018-08-08 03:46:23', '2018-08-08 03:46:23', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2018-08-08 03:46:23', '2018-08-08 03:46:23', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2018-08-08 03:46:23', '2018-08-08 03:46:23', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2018-08-08 03:46:23', '2018-08-08 03:46:23', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2018-08-08 03:46:23', '2018-08-08 03:46:23', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2018-08-08 03:46:23', '2018-08-08 03:46:23', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2018-08-08 03:46:23', '2018-08-08 03:46:23', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2018-08-08 03:46:23', '2018-08-08 03:46:23', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 13, '2018-08-08 03:46:23', '2018-08-08 03:46:23', 'voyager.hooks', NULL),
(12, 1, 'Details', '', '_self', 'voyager-file-text', NULL, NULL, 15, '2018-08-08 04:52:52', '2018-08-08 04:52:52', 'voyager.details.index', NULL),
(15, 1, 'Userrelatives', '', '_self', 'voyager-people', NULL, NULL, 16, '2018-08-08 23:38:56', '2018-08-08 23:38:56', 'voyager.userrelatives.index', NULL),
(17, 1, 'Panels', '', '_self', 'voyager-receipt', NULL, NULL, 18, '2018-08-09 01:00:07', '2018-08-09 01:00:07', 'voyager.panels.index', NULL),
(18, 1, 'Panelrelatives', '', '_self', 'voyager-group', NULL, NULL, 19, '2018-08-09 01:10:38', '2018-08-09 01:10:38', 'voyager.panelrelatives.index', NULL),
(19, 1, 'Stories', '', '_self', 'voyager-paper-plane', NULL, NULL, 20, '2018-08-13 02:08:38', '2018-08-13 02:08:38', 'voyager.stories.index', NULL);

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
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(24, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(25, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(26, '2016_06_01_000004_create_oauth_clients_table', 2),
(27, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('1961cabcc05fcdde666ea8fcdb9fc0e6720ef59223f5cc755ca5eda6ee044a185bce9ec4f6026607', 1, 1, 'MyApp', '[]', 0, '2018-08-08 04:41:26', '2018-08-08 04:41:26', '2019-08-08 10:41:26');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'SUHKyX0MIdhjmLyzR3kCytGDH9PcabD0GQU53tpA', 'http://localhost', 1, 0, 0, '2018-08-08 04:22:10', '2018-08-08 04:22:10'),
(2, NULL, 'Laravel Password Grant Client', 'qJKw2zFJbEJIyyLFKwRc3LZqknsfrKkjPBbrrk5A', 'http://localhost', 0, 1, 0, '2018-08-08 04:22:10', '2018-08-08 04:22:10');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-08-08 04:22:10', '2018-08-08 04:22:10');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `panelrelatives`
--

CREATE TABLE `panelrelatives` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `relation` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profession` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `occupation` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organization` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `panel_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `panelrelatives`
--

INSERT INTO `panelrelatives` (`id`, `name`, `relation`, `profession`, `occupation`, `designation`, `organization`, `panel_id`, `created_at`, `updated_at`) VALUES
(2, 'matiar rahman', 'father', 'accounts', 'retired', 'dd', 'govt', 2, '2018-08-09 05:23:26', '2018-08-09 05:23:26');

-- --------------------------------------------------------

--
-- Table structure for table `panels`
--

CREATE TABLE `panels` (
  `id` int(10) UNSIGNED NOT NULL,
  `post` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `self` tinyint(4) DEFAULT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) DEFAULT NULL,
  `height` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `religion` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `complexion` varchar(750) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `matrimonial_condition` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blood_group` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `obstruction` varchar(750) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_address` varchar(750) COLLATE utf8mb4_unicode_ci NOT NULL,
  `raised_in` varchar(750) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profession` varchar(750) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `occupation` varchar(750) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(750) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `degree` varchar(750) COLLATE utf8mb4_unicode_ci NOT NULL,
  `institute` varchar(750) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `siblings` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `picture` varchar(750) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organization` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `panels`
--

INSERT INTO `panels` (`id`, `post`, `self`, `name`, `sex`, `age`, `height`, `weight`, `religion`, `complexion`, `matrimonial_condition`, `blood_group`, `obstruction`, `current_address`, `raised_in`, `nationality`, `profession`, `occupation`, `designation`, `degree`, `institute`, `user_id`, `siblings`, `created_at`, `updated_at`, `picture`, `organization`) VALUES
(2, 'murikha', 1, 'foysal', 'male', 24, '5\' 10\"', 70, 'muslim', 'fair', 'never maried', 'AB+', 'none', 'dhaka', 'bogura', 'bd', 'eng', 'pj', 'se', 'bsc', 'kuet', 1, 2, '2018-08-09 04:19:44', '2018-08-09 04:19:44', '[\"panels\\\\August2018\\\\qxypn2GwGdYKu10SJ1EX.jpg\"]', 'cems'),
(3, 'murikha', 1, 'foysal', 'male', 24, '5\' 10\"', 70, 'muslim', 'fair', 'never maried', 'AB+', 'none', 'dhaka', 'bogura', 'bd', 'eng', 'pj', 'se', 'bsc', 'kuet', 1, 2, '2018-08-09 04:30:17', '2018-08-09 04:30:17', '[\"panels\\\\August2018\\\\qxypn2GwGdYKu10SJ1EX.jpg\"]', 'cems');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2018-08-08 03:46:23', '2018-08-08 03:46:23'),
(2, 'browse_bread', NULL, '2018-08-08 03:46:23', '2018-08-08 03:46:23'),
(3, 'browse_database', NULL, '2018-08-08 03:46:23', '2018-08-08 03:46:23'),
(4, 'browse_media', NULL, '2018-08-08 03:46:23', '2018-08-08 03:46:23'),
(5, 'browse_compass', NULL, '2018-08-08 03:46:23', '2018-08-08 03:46:23'),
(6, 'browse_menus', 'menus', '2018-08-08 03:46:23', '2018-08-08 03:46:23'),
(7, 'read_menus', 'menus', '2018-08-08 03:46:23', '2018-08-08 03:46:23'),
(8, 'edit_menus', 'menus', '2018-08-08 03:46:23', '2018-08-08 03:46:23'),
(9, 'add_menus', 'menus', '2018-08-08 03:46:23', '2018-08-08 03:46:23'),
(10, 'delete_menus', 'menus', '2018-08-08 03:46:23', '2018-08-08 03:46:23'),
(11, 'browse_roles', 'roles', '2018-08-08 03:46:23', '2018-08-08 03:46:23'),
(12, 'read_roles', 'roles', '2018-08-08 03:46:23', '2018-08-08 03:46:23'),
(13, 'edit_roles', 'roles', '2018-08-08 03:46:23', '2018-08-08 03:46:23'),
(14, 'add_roles', 'roles', '2018-08-08 03:46:23', '2018-08-08 03:46:23'),
(15, 'delete_roles', 'roles', '2018-08-08 03:46:23', '2018-08-08 03:46:23'),
(16, 'browse_users', 'users', '2018-08-08 03:46:23', '2018-08-08 03:46:23'),
(17, 'read_users', 'users', '2018-08-08 03:46:23', '2018-08-08 03:46:23'),
(18, 'edit_users', 'users', '2018-08-08 03:46:23', '2018-08-08 03:46:23'),
(19, 'add_users', 'users', '2018-08-08 03:46:23', '2018-08-08 03:46:23'),
(20, 'delete_users', 'users', '2018-08-08 03:46:23', '2018-08-08 03:46:23'),
(21, 'browse_settings', 'settings', '2018-08-08 03:46:23', '2018-08-08 03:46:23'),
(22, 'read_settings', 'settings', '2018-08-08 03:46:23', '2018-08-08 03:46:23'),
(23, 'edit_settings', 'settings', '2018-08-08 03:46:23', '2018-08-08 03:46:23'),
(24, 'add_settings', 'settings', '2018-08-08 03:46:23', '2018-08-08 03:46:23'),
(25, 'delete_settings', 'settings', '2018-08-08 03:46:23', '2018-08-08 03:46:23'),
(26, 'browse_hooks', NULL, '2018-08-08 03:46:23', '2018-08-08 03:46:23'),
(27, 'browse_details', 'details', '2018-08-08 04:52:52', '2018-08-08 04:52:52'),
(28, 'read_details', 'details', '2018-08-08 04:52:52', '2018-08-08 04:52:52'),
(29, 'edit_details', 'details', '2018-08-08 04:52:52', '2018-08-08 04:52:52'),
(30, 'add_details', 'details', '2018-08-08 04:52:52', '2018-08-08 04:52:52'),
(31, 'delete_details', 'details', '2018-08-08 04:52:52', '2018-08-08 04:52:52'),
(42, 'browse_userrelatives', 'userrelatives', '2018-08-08 23:38:56', '2018-08-08 23:38:56'),
(43, 'read_userrelatives', 'userrelatives', '2018-08-08 23:38:56', '2018-08-08 23:38:56'),
(44, 'edit_userrelatives', 'userrelatives', '2018-08-08 23:38:56', '2018-08-08 23:38:56'),
(45, 'add_userrelatives', 'userrelatives', '2018-08-08 23:38:56', '2018-08-08 23:38:56'),
(46, 'delete_userrelatives', 'userrelatives', '2018-08-08 23:38:56', '2018-08-08 23:38:56'),
(47, 'browse_posts', 'posts', '2018-08-09 00:26:56', '2018-08-09 00:26:56'),
(48, 'read_posts', 'posts', '2018-08-09 00:26:56', '2018-08-09 00:26:56'),
(49, 'edit_posts', 'posts', '2018-08-09 00:26:56', '2018-08-09 00:26:56'),
(50, 'add_posts', 'posts', '2018-08-09 00:26:56', '2018-08-09 00:26:56'),
(51, 'delete_posts', 'posts', '2018-08-09 00:26:56', '2018-08-09 00:26:56'),
(52, 'browse_panels', 'panels', '2018-08-09 01:00:07', '2018-08-09 01:00:07'),
(53, 'read_panels', 'panels', '2018-08-09 01:00:07', '2018-08-09 01:00:07'),
(54, 'edit_panels', 'panels', '2018-08-09 01:00:07', '2018-08-09 01:00:07'),
(55, 'add_panels', 'panels', '2018-08-09 01:00:07', '2018-08-09 01:00:07'),
(56, 'delete_panels', 'panels', '2018-08-09 01:00:07', '2018-08-09 01:00:07'),
(57, 'browse_panelrelatives', 'panelrelatives', '2018-08-09 01:10:38', '2018-08-09 01:10:38'),
(58, 'read_panelrelatives', 'panelrelatives', '2018-08-09 01:10:38', '2018-08-09 01:10:38'),
(59, 'edit_panelrelatives', 'panelrelatives', '2018-08-09 01:10:38', '2018-08-09 01:10:38'),
(60, 'add_panelrelatives', 'panelrelatives', '2018-08-09 01:10:38', '2018-08-09 01:10:38'),
(61, 'delete_panelrelatives', 'panelrelatives', '2018-08-09 01:10:38', '2018-08-09 01:10:38'),
(62, 'browse_stories', 'stories', '2018-08-13 02:08:38', '2018-08-13 02:08:38'),
(63, 'read_stories', 'stories', '2018-08-13 02:08:38', '2018-08-13 02:08:38'),
(64, 'edit_stories', 'stories', '2018-08-13 02:08:38', '2018-08-13 02:08:38'),
(65, 'add_stories', 'stories', '2018-08-13 02:08:38', '2018-08-13 02:08:38'),
(66, 'delete_stories', 'stories', '2018-08-13 02:08:38', '2018-08-13 02:08:38');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2018-08-08 03:46:23', '2018-08-08 03:46:23'),
(2, 'user', 'Normal User', '2018-08-08 03:46:23', '2018-08-08 03:46:23');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `stories`
--

CREATE TABLE `stories` (
  `id` int(10) UNSIGNED NOT NULL,
  `headline` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `story` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(750) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userrelatives`
--

CREATE TABLE `userrelatives` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `relation` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profession` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `occupation` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organization` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Foysal', 'nibir2k12@live.com', 'users/default.png', '$2y$10$rhRFyO3X.RVO2Rkm5ZwGu.mtc5I9.A8e8pAO0JVhEldXscIoskeyK', NULL, NULL, '2018-08-08 03:48:08', '2018-08-08 03:48:08');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `panelrelatives`
--
ALTER TABLE `panelrelatives`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `panels`
--
ALTER TABLE `panels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `stories`
--
ALTER TABLE `stories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `userrelatives`
--
ALTER TABLE `userrelatives`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `panelrelatives`
--
ALTER TABLE `panelrelatives`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `panels`
--
ALTER TABLE `panels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `stories`
--
ALTER TABLE `stories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userrelatives`
--
ALTER TABLE `userrelatives`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
