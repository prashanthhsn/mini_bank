-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2020 at 10:40 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add all_ customer', 7, 'add_all_customer'),
(26, 'Can change all_ customer', 7, 'change_all_customer'),
(27, 'Can delete all_ customer', 7, 'delete_all_customer'),
(28, 'Can view all_ customer', 7, 'view_all_customer'),
(29, 'Can add chit_ batches', 8, 'add_chit_batches'),
(30, 'Can change chit_ batches', 8, 'change_chit_batches'),
(31, 'Can delete chit_ batches', 8, 'delete_chit_batches'),
(32, 'Can view chit_ batches', 8, 'view_chit_batches'),
(33, 'Can add savings_ customer', 9, 'add_savings_customer'),
(34, 'Can change savings_ customer', 9, 'change_savings_customer'),
(35, 'Can delete savings_ customer', 9, 'delete_savings_customer'),
(36, 'Can view savings_ customer', 9, 'view_savings_customer'),
(37, 'Can add credit_ customer', 10, 'add_credit_customer'),
(38, 'Can change credit_ customer', 10, 'change_credit_customer'),
(39, 'Can delete credit_ customer', 10, 'delete_credit_customer'),
(40, 'Can view credit_ customer', 10, 'view_credit_customer'),
(41, 'Can add chit_ fund_ customer', 11, 'add_chit_fund_customer'),
(42, 'Can change chit_ fund_ customer', 11, 'change_chit_fund_customer'),
(43, 'Can delete chit_ fund_ customer', 11, 'delete_chit_fund_customer'),
(44, 'Can view chit_ fund_ customer', 11, 'view_chit_fund_customer'),
(45, 'Can add savings_ customer_ savings', 12, 'add_savings_customer_savings'),
(46, 'Can change savings_ customer_ savings', 12, 'change_savings_customer_savings'),
(47, 'Can delete savings_ customer_ savings', 12, 'delete_savings_customer_savings'),
(48, 'Can view savings_ customer_ savings', 12, 'view_savings_customer_savings'),
(49, 'Can add credit_ customer_ credit', 13, 'add_credit_customer_credit'),
(50, 'Can change credit_ customer_ credit', 13, 'change_credit_customer_credit'),
(51, 'Can delete credit_ customer_ credit', 13, 'delete_credit_customer_credit'),
(52, 'Can view credit_ customer_ credit', 13, 'view_credit_customer_credit'),
(53, 'Can add saving_ customer', 14, 'add_saving_customer'),
(54, 'Can change saving_ customer', 14, 'change_saving_customer'),
(55, 'Can delete saving_ customer', 14, 'delete_saving_customer'),
(56, 'Can view saving_ customer', 14, 'view_saving_customer');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$UXL0tdghicvp$SvRV/CZsi1jdZFBAUCdlTePI05FB/imVk0anWRrN2LA=', '2020-10-24 18:20:49.432842', 1, 'admin', '', '', '', 1, 1, '2020-10-24 18:20:19.263990'),
(3, 'pbkdf2_sha256$216000$4MlHtFVTwuzV$R7Pg18jEQ+yRveZXYwNx2gIBramxbWoaEtHzQ9NY4es=', '2020-11-03 08:47:02.518358', 1, 'root', '', '', '', 1, 1, '2020-11-02 08:50:42.815431');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bank_all_customer`
--

CREATE TABLE `bank_all_customer` (
  `Date` date NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Account_No` varchar(13) NOT NULL,
  `Photo` varchar(100) NOT NULL,
  `Aadhar_No` varchar(14) NOT NULL,
  `Phone_No` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bank_chit_batches`
--

CREATE TABLE `bank_chit_batches` (
  `Batch_No` int(11) NOT NULL,
  `Total_Fund` int(11) NOT NULL,
  `Start_Date` date NOT NULL,
  `End_Date` date NOT NULL,
  `Number_of_Customers` int(11) NOT NULL,
  `Status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bank_chit_fund_customer`
--

CREATE TABLE `bank_chit_fund_customer` (
  `id` int(11) NOT NULL,
  `Date_Credited` date NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Account_No_id` varchar(13) NOT NULL,
  `Batch_No_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bank_credit_customer`
--

CREATE TABLE `bank_credit_customer` (
  `id` int(11) NOT NULL,
  `Date_Credited` date NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Account_No` int(11) NOT NULL,
  `Total_Credit` int(11) NOT NULL,
  `Select_Account_No_id` varchar(13) NOT NULL,
  `Interest_Rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bank_credit_customer_credit`
--

CREATE TABLE `bank_credit_customer_credit` (
  `id` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Amount_Credited` int(11) NOT NULL,
  `Account_No` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bank_savings_customer_savings`
--

CREATE TABLE `bank_savings_customer_savings` (
  `id` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Amount_Deposited` int(11) NOT NULL,
  `Account_No` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bank_saving_customer`
--

CREATE TABLE `bank_saving_customer` (
  `id` int(11) NOT NULL,
  `Date_Credited` date NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Account_No` int(11) NOT NULL,
  `Total_Savings` int(11) NOT NULL,
  `Select_Account_No_id` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-10-24 18:21:59.614633', '2', 'test1', 1, '[{\"added\": {}}]', 4, 1),
(2, '2020-10-24 18:22:09.298280', '2', 'test1', 2, '[]', 4, 1),
(3, '2020-10-24 18:50:25.813343', '1', 'All_Customer object (1)', 1, '[{\"added\": {}}]', 7, 1),
(4, '2020-10-24 18:56:29.707678', '2', 'All_Customer object (2)', 1, '[{\"added\": {}}]', 7, 1),
(5, '2020-10-24 19:02:49.844374', '3', 'All_Customer object (3)', 1, '[{\"added\": {}}]', 7, 1),
(6, '2020-10-24 19:03:33.985512', '3', 'All_Customer object (3)', 2, '[]', 7, 1),
(7, '2020-10-24 19:04:50.790677', '3', 'All_Customer object (3)', 2, '[]', 7, 1),
(8, '2020-10-24 19:06:09.088388', '3', 'All_Customer object (3)', 2, '[]', 7, 1),
(9, '2020-10-24 19:07:03.348707', '3', 'All_Customer object (3)', 2, '[]', 7, 1),
(10, '2020-10-24 19:07:26.259566', '3', 'All_Customer object (3)', 3, '', 7, 1),
(11, '2020-10-24 19:07:26.365249', '2', 'All_Customer object (2)', 3, '', 7, 1),
(12, '2020-10-24 19:07:26.400204', '1', 'All_Customer object (1)', 3, '', 7, 1),
(13, '2020-10-24 19:17:08.477917', '4', 'test', 1, '[{\"added\": {}}]', 7, 1),
(14, '2020-10-24 19:18:06.326341', '4', 'test', 2, '[]', 7, 1),
(15, '2020-10-24 19:18:27.672819', '5', 'test1', 1, '[{\"added\": {}}]', 7, 1),
(16, '2020-10-24 19:20:05.182238', '5', 'test1', 2, '[]', 7, 1),
(17, '2020-10-24 19:20:08.479736', '5', 'test1', 2, '[]', 7, 1),
(18, '2020-10-24 19:20:12.070073', '4', 'test', 2, '[]', 7, 1),
(19, '2020-10-24 19:20:32.259897', '6', 'twst', 1, '[{\"added\": {}}]', 7, 1),
(20, '2020-10-24 19:23:33.992887', '6', 'twst', 2, '[]', 7, 1),
(21, '2020-10-24 19:24:48.304276', '6', 'twst', 2, '[]', 7, 1),
(22, '2020-10-24 19:25:27.876069', '6', 'twst', 2, '[]', 7, 1),
(23, '2020-10-24 19:25:57.198990', '7', 'hell', 1, '[{\"added\": {}}]', 7, 1),
(24, '2020-10-24 19:29:31.066664', '7', 'hell', 2, '[]', 7, 1),
(25, '2020-10-24 19:30:11.550169', '8', 'hell1', 1, '[{\"added\": {}}]', 7, 1),
(26, '2020-10-26 05:19:15.988388', '1', 'Chit_Batches object (1)', 1, '[{\"added\": {}}]', 8, 1),
(27, '2020-10-26 05:22:06.149946', '1', '1', 2, '[]', 8, 1),
(28, '2020-10-26 09:52:45.730633', '9', 'prash', 1, '[{\"added\": {}}]', 7, 1),
(29, '2020-10-26 09:53:04.290849', '9', 'prash', 3, '', 7, 1),
(30, '2020-10-26 09:53:04.343710', '8', 'hell1', 3, '', 7, 1),
(31, '2020-10-26 09:53:04.423932', '7', 'hell', 3, '', 7, 1),
(32, '2020-10-26 09:53:04.553522', '6', 'twst', 3, '', 7, 1),
(33, '2020-10-26 09:53:04.588997', '5', 'test1', 3, '', 7, 1),
(34, '2020-10-26 09:53:04.638904', '4', 'test', 3, '', 7, 1),
(35, '2020-10-26 09:53:12.975258', '1', '1', 3, '', 8, 1),
(36, '2020-10-26 09:59:27.477658', '10', 'Prashanth', 1, '[{\"added\": {}}]', 7, 1),
(37, '2020-10-26 10:01:28.799983', '10', 'Prashanth', 2, '[]', 7, 1),
(38, '2020-10-26 10:06:08.601040', '11', 'prash', 1, '[{\"added\": {}}]', 7, 1),
(39, '2020-10-26 10:06:31.169139', '11', 'prash', 2, '[]', 7, 1),
(40, '2020-10-26 10:19:49.838806', '12', 'pr', 1, '[{\"added\": {}}]', 7, 1),
(41, '2020-10-26 10:20:17.710421', '12', 'pr', 2, '[]', 7, 1),
(42, '2020-10-26 16:34:44.542110', '12', 'pr', 3, '', 7, 1),
(43, '2020-10-26 16:34:44.602035', '11', 'prash', 3, '', 7, 1),
(44, '2020-10-26 16:34:44.637027', '10', 'Prashanth', 3, '', 7, 1),
(45, '2020-10-28 03:24:26.042552', '13', 'Prashanth', 1, '[{\"added\": {}}]', 7, 1),
(46, '2020-10-28 03:32:18.412840', '13', 'Prashanth', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 7, 1),
(47, '2020-10-30 05:48:06.818764', '1', 'Prashanth', 1, '[{\"added\": {}}]', 9, 1),
(48, '2020-10-30 12:08:57.946918', '7', 'Savings_Customer_Savings object (7)', 1, '[{\"added\": {}}]', 12, 1),
(49, '2020-10-30 12:09:12.831576', '7', 'Savings_Customer_Savings object (7)', 2, '[]', 12, 1),
(50, '2020-10-30 12:39:12.406751', '7', 'Savings_Customer_Savings object (7)', 2, '[]', 12, 1),
(51, '2020-10-30 12:39:24.692225', '7', 'Savings_Customer_Savings object (7)', 2, '[]', 12, 1),
(52, '2020-10-30 19:34:35.493316', '11', 'Savings_Customer_Savings object (11)', 1, '[{\"added\": {}}]', 12, 1),
(53, '2020-10-30 19:48:18.130436', '11', 'Savings_Customer_Savings object (11)', 2, '[]', 12, 1),
(54, '2020-10-30 20:20:38.108825', '11', 'Savings_Customer_Savings object (11)', 2, '[]', 12, 1),
(55, '2020-10-30 20:55:57.725513', '11', 'Savings_Customer_Savings object (11)', 2, '[]', 12, 1),
(56, '2020-10-31 15:51:04.921693', 'None', 'Prashanth', 1, '[{\"added\": {}}]', 14, 1),
(57, '2020-10-31 15:51:26.314137', 'None', 'Prashanth', 1, '[{\"added\": {}}]', 14, 1),
(58, '2020-10-31 15:51:53.752795', 'None', 'Prashanth', 1, '[{\"added\": {}}]', 14, 1),
(59, '2020-10-31 16:13:59.958231', '2020103156', 'Prashanth', 1, '[{\"added\": {}}]', 7, 1),
(60, '2020-10-31 16:14:36.245624', 'None', 'Prashanth', 1, '[{\"added\": {}}]', 14, 1),
(61, '2020-10-31 16:16:21.777158', '1', 'Prashanth', 1, '[{\"added\": {}}]', 14, 1),
(62, '2020-10-31 16:22:55.471074', '1', '2020103156 Prashanth', 2, '[]', 14, 1),
(63, '2020-10-31 16:29:22.873944', '2020103146', '2020103146', 1, '[{\"added\": {}}]', 7, 1),
(64, '2020-10-31 16:29:42.529797', 'None', '2020103146', 1, '[{\"added\": {}}]', 14, 1),
(65, '2020-10-31 16:34:20.671984', '2020103189', '2020103189 Sushanth', 1, '[{\"added\": {}}]', 7, 1),
(66, '2020-10-31 16:39:03.741917', '1', '2020103156 Prashanth', 3, '', 14, 1),
(67, '2020-10-31 16:40:24.797971', '2', '2020103156 Prashanth', 1, '[{\"added\": {}}]', 14, 1),
(68, '2020-10-31 16:41:39.206800', '2', '2020103156 Prashanth', 3, '', 14, 1),
(69, '2020-10-31 16:50:31.100731', '1', '2020103156', 1, '[{\"added\": {}}]', 14, 1),
(70, '2020-10-31 16:54:23.499345', '2', '2020103146', 1, '[{\"added\": {}}]', 14, 1),
(71, '2020-10-31 17:03:30.145924', '1', 'Savings_Customer_Savings object (1)', 1, '[{\"added\": {}}]', 12, 1),
(72, '2020-10-31 17:06:24.962111', '1', 'Savings_Customer_Savings object (1)', 3, '', 12, 1),
(73, '2020-10-31 17:06:50.322123', '2', 'Savings_Customer_Savings object (2)', 1, '[{\"added\": {}}]', 12, 1),
(74, '2020-10-31 17:18:19.802541', '1', '2020103156', 1, '[{\"added\": {}}]', 10, 1),
(75, '2020-10-31 17:22:30.832076', '1', 'Credit_Customer_Credit object (1)', 1, '[{\"added\": {}}]', 13, 1),
(76, '2020-10-31 17:25:02.826174', '1', '2020103156', 3, '', 10, 1),
(77, '2020-10-31 17:25:12.688027', '1', 'Credit_Customer_Credit object (1)', 3, '', 13, 1),
(78, '2020-10-31 17:25:21.227244', '2', '2020103156', 1, '[{\"added\": {}}]', 10, 1),
(79, '2020-10-31 17:26:04.806235', '3', 'Credit_Customer_Credit object (3)', 1, '[{\"added\": {}}]', 13, 1),
(80, '2020-11-01 11:48:27.574323', '4', 'Savings_Customer_Savings object (4)', 1, '[{\"added\": {}}]', 12, 1),
(81, '2020-11-01 11:49:10.523910', '4', 'Savings_Customer_Savings object (4)', 3, '', 12, 1),
(82, '2020-11-01 11:49:10.663014', '2', 'Savings_Customer_Savings object (2)', 3, '', 12, 1),
(83, '2020-11-01 11:49:18.985107', '2', '2020103146', 3, '', 14, 1),
(84, '2020-11-01 11:49:19.027306', '1', '2020103156', 3, '', 14, 1),
(85, '2020-11-01 11:49:29.408321', '3', '2020103156', 1, '[{\"added\": {}}]', 14, 1),
(86, '2020-11-01 11:49:42.844552', '5', 'Savings_Customer_Savings object (5)', 1, '[{\"added\": {}}]', 12, 1),
(87, '2020-11-01 11:50:04.464892', '6', 'Savings_Customer_Savings object (6)', 1, '[{\"added\": {}}]', 12, 1),
(88, '2020-11-01 11:51:15.530153', '6', 'Savings_Customer_Savings object (6)', 3, '', 12, 1),
(89, '2020-11-01 11:51:15.587359', '5', 'Savings_Customer_Savings object (5)', 3, '', 12, 1),
(90, '2020-11-01 11:51:22.829638', '7', 'Savings_Customer_Savings object (7)', 1, '[{\"added\": {}}]', 12, 1),
(91, '2020-11-01 11:52:38.623261', '8', 'Savings_Customer_Savings object (8)', 1, '[{\"added\": {}}]', 12, 1),
(92, '2020-11-01 11:53:53.204991', '9', 'Savings_Customer_Savings object (9)', 1, '[{\"added\": {}}]', 12, 1),
(93, '2020-11-01 11:55:11.994896', '10', 'Savings_Customer_Savings object (10)', 1, '[{\"added\": {}}]', 12, 1),
(94, '2020-11-01 11:56:27.545669', '4', 'Credit_Customer_Credit object (4)', 1, '[{\"added\": {}}]', 13, 1),
(95, '2020-11-01 11:59:06.858556', '10', 'Savings_Customer_Savings object (10)', 3, '', 12, 1),
(96, '2020-11-01 11:59:06.910554', '9', 'Savings_Customer_Savings object (9)', 3, '', 12, 1),
(97, '2020-11-01 11:59:06.947220', '8', 'Savings_Customer_Savings object (8)', 3, '', 12, 1),
(98, '2020-11-01 11:59:06.992885', '7', 'Savings_Customer_Savings object (7)', 3, '', 12, 1),
(99, '2020-11-01 11:59:14.967440', '3', '2020103156', 3, '', 14, 1),
(100, '2020-11-01 12:00:14.843394', '2', '2020103156', 3, '', 10, 1),
(101, '2020-11-01 12:00:27.971258', '4', '2020103156', 1, '[{\"added\": {}}]', 14, 1),
(102, '2020-11-01 12:00:51.603301', '11', 'Savings_Customer_Savings object (11)', 1, '[{\"added\": {}}]', 12, 1),
(103, '2020-11-01 12:18:00.705360', '3', '2020103156', 1, '[{\"added\": {}}]', 10, 1),
(104, '2020-11-01 12:18:12.076978', '4', 'Credit_Customer_Credit object (4)', 3, '', 13, 1),
(105, '2020-11-01 12:18:12.203685', '3', 'Credit_Customer_Credit object (3)', 3, '', 13, 1),
(106, '2020-11-01 12:18:20.939884', '5', 'Credit_Customer_Credit object (5)', 1, '[{\"added\": {}}]', 13, 1),
(107, '2020-11-01 12:19:43.271859', '3', '2020103156', 3, '', 10, 1),
(108, '2020-11-01 12:20:14.292975', '4', '2020103156', 1, '[{\"added\": {}}]', 10, 1),
(109, '2020-11-01 12:20:26.094320', '5', 'Credit_Customer_Credit object (5)', 3, '', 13, 1),
(110, '2020-11-01 12:20:33.555275', '7', 'Credit_Customer_Credit object (7)', 1, '[{\"added\": {}}]', 13, 1),
(111, '2020-11-01 12:21:11.384550', '8', 'Credit_Customer_Credit object (8)', 1, '[{\"added\": {}}]', 13, 1),
(112, '2020-11-01 12:21:48.327444', '4', '2020103156', 3, '', 10, 1),
(113, '2020-11-01 12:21:55.672708', '8', 'Credit_Customer_Credit object (8)', 3, '', 13, 1),
(114, '2020-11-01 12:21:55.835444', '7', 'Credit_Customer_Credit object (7)', 3, '', 13, 1),
(115, '2020-11-01 12:22:02.307781', '5', '2020103156', 1, '[{\"added\": {}}]', 10, 1),
(116, '2020-11-01 12:22:12.127588', '9', 'Credit_Customer_Credit object (9)', 1, '[{\"added\": {}}]', 13, 1),
(117, '2020-11-01 12:23:15.224226', '10', 'Credit_Customer_Credit object (10)', 1, '[{\"added\": {}}]', 13, 1),
(118, '2020-11-01 12:24:53.045105', '11', 'Credit_Customer_Credit object (11)', 1, '[{\"added\": {}}]', 13, 1),
(119, '2020-11-01 12:28:06.689137', '11', 'Savings_Customer_Savings object (11)', 3, '', 12, 1),
(120, '2020-11-01 12:28:26.283827', '12', 'Savings_Customer_Savings object (12)', 1, '[{\"added\": {}}]', 12, 1),
(121, '2020-11-01 12:31:50.312204', '5', '2020103146', 1, '[{\"added\": {}}]', 14, 1),
(122, '2020-11-01 12:32:05.611653', '13', 'Savings_Customer_Savings object (13)', 1, '[{\"added\": {}}]', 12, 1),
(123, '2020-11-01 12:34:44.779438', '14', 'Savings_Customer_Savings object (14)', 1, '[{\"added\": {}}]', 12, 1),
(124, '2020-11-01 12:36:09.272283', '15', 'Savings_Customer_Savings object (15)', 1, '[{\"added\": {}}]', 12, 1),
(125, '2020-11-01 12:36:21.201214', '16', 'Savings_Customer_Savings object (16)', 1, '[{\"added\": {}}]', 12, 1),
(126, '2020-11-01 15:34:55.094383', '17', 'Savings_Customer_Savings object (17)', 1, '[{\"added\": {}}]', 12, 1),
(127, '2020-11-02 08:09:29.209255', 'None14', 'None14 Prashanth H N', 3, '', 7, 1),
(128, '2020-11-02 08:09:29.292033', '2020110214', '2020110214 Prashanth H N', 3, '', 7, 1),
(129, '2020-11-02 08:09:29.338908', '2020103189', '2020103189 Sushanth', 3, '', 7, 1),
(130, '2020-11-02 08:09:29.387777', '2020103156', '2020103156 Prashanth', 3, '', 7, 1),
(131, '2020-11-02 08:09:29.443628', '2020103146', '2020103146 Rajath', 3, '', 7, 1),
(132, '2020-11-02 08:09:45.563504', '17', 'Savings_Customer_Savings object (17)', 3, '', 12, 1),
(133, '2020-11-02 08:09:45.670205', '16', 'Savings_Customer_Savings object (16)', 3, '', 12, 1),
(134, '2020-11-02 08:09:45.706108', '15', 'Savings_Customer_Savings object (15)', 3, '', 12, 1),
(135, '2020-11-02 08:09:45.743020', '14', 'Savings_Customer_Savings object (14)', 3, '', 12, 1),
(136, '2020-11-02 08:09:45.777916', '13', 'Savings_Customer_Savings object (13)', 3, '', 12, 1),
(137, '2020-11-02 08:09:45.813819', '12', 'Savings_Customer_Savings object (12)', 3, '', 12, 1),
(138, '2020-11-02 08:09:53.055444', '11', 'Credit_Customer_Credit object (11)', 3, '', 13, 1),
(139, '2020-11-02 08:09:53.197064', '10', 'Credit_Customer_Credit object (10)', 3, '', 13, 1),
(140, '2020-11-02 08:09:53.243941', '9', 'Credit_Customer_Credit object (9)', 3, '', 13, 1),
(141, '2020-11-02 08:12:17.819451', 'None56', 'None56 Prashanth', 3, '', 7, 1),
(142, '2020-11-02 08:12:17.915195', '2020110256', '2020110256 Prashanth', 3, '', 7, 1),
(143, '2020-11-02 08:18:10.692649', 'None56', 'None56 Prashanth', 3, '', 7, 1),
(144, '2020-11-02 08:21:49.079073', 'None82', 'None82 abc', 3, '', 7, 1),
(145, '2020-11-02 08:21:49.163843', 'None56', 'None56 Prashanth', 3, '', 7, 1),
(146, '2020-11-02 08:28:18.723607', 'None56', 'None56 Prashanth', 3, '', 7, 1),
(147, '2020-11-02 08:28:18.846262', '2020110247', '2020110247 Amith', 3, '', 7, 1),
(148, '2020-11-02 08:37:24.116653', '20201102', '20201102 ', 3, '', 7, 1),
(149, '2020-11-02 09:14:29.589478', '2020110277', '2020110277 Prashanth h m ', 3, '', 7, 3),
(150, '2020-11-02 09:14:29.785058', '2020110257', '2020110257 Abhi', 3, '', 7, 3),
(151, '2020-11-02 09:14:29.864862', '2020110256', '2020110256 Prashanth', 3, '', 7, 3),
(152, '2020-11-02 09:14:30.010474', '2020110241', '2020110241 Naga', 3, '', 7, 3),
(153, '2020-11-02 09:14:30.103581', '2020110214', '2020110214 Amith', 3, '', 7, 3),
(154, '2020-11-02 20:34:14.726956', '20201103', '20201103 ', 3, '', 7, 3),
(155, '2020-11-03 08:21:31.443514', '20201103', '20201103 ', 3, '', 7, 3),
(156, '2020-11-03 09:05:42.346576', '2020110357', '2020110357 Amith', 3, '', 7, 3),
(157, '2020-11-03 09:05:42.379488', '2020110356', '2020110356 Prashanth', 3, '', 7, 3),
(158, '2020-11-03 09:05:42.432346', '20201103', '20201103 ', 3, '', 7, 3),
(159, '2020-11-03 09:31:16.210561', '2020110356', '2020110356 Prashanth', 3, '', 7, 3),
(160, '2020-11-03 09:31:16.255442', '2020110347', '2020110347 Madhu', 3, '', 7, 3),
(161, '2020-11-03 09:31:16.352183', '2020110314', '2020110314 Prahanth', 3, '', 7, 3);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'bank', 'all_customer'),
(8, 'bank', 'chit_batches'),
(11, 'bank', 'chit_fund_customer'),
(10, 'bank', 'credit_customer'),
(13, 'bank', 'credit_customer_credit'),
(9, 'bank', 'savings_customer'),
(12, 'bank', 'savings_customer_savings'),
(14, 'bank', 'saving_customer'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-10-24 18:19:03.386394'),
(2, 'auth', '0001_initial', '2020-10-24 18:19:05.253886'),
(3, 'admin', '0001_initial', '2020-10-24 18:19:16.035303'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-10-24 18:19:18.624106'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-10-24 18:19:18.709278'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-10-24 18:19:19.692581'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-10-24 18:19:21.235918'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-10-24 18:19:21.563060'),
(9, 'auth', '0004_alter_user_username_opts', '2020-10-24 18:19:21.627291'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-10-24 18:19:23.061844'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-10-24 18:19:23.109292'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-10-24 18:19:23.164705'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-10-24 18:19:23.287941'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-10-24 18:19:23.438967'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-10-24 18:19:23.606963'),
(16, 'auth', '0011_update_proxy_permissions', '2020-10-24 18:19:23.663789'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2020-10-24 18:19:23.813257'),
(18, 'sessions', '0001_initial', '2020-10-24 18:19:24.283179'),
(19, 'bank', '0001_initial', '2020-10-24 18:40:39.103704'),
(20, 'bank', '0002_auto_20201025_0019', '2020-10-24 18:50:01.126299'),
(21, 'bank', '0002_auto_20201025_0044', '2020-10-24 19:14:41.939065'),
(22, 'bank', '0003_auto_20201025_0046', '2020-10-24 19:16:48.034280'),
(23, 'bank', '0004_auto_20201025_0049', '2020-10-24 19:19:50.831169'),
(24, 'bank', '0005_chit_batches', '2020-10-26 05:12:39.507918'),
(25, 'bank', '0006_auto_20201028_1025', '2020-10-28 04:55:18.441941'),
(26, 'bank', '0007_auto_20201028_1054', '2020-10-28 05:24:54.168458'),
(27, 'bank', '0008_auto_20201030_1738', '2020-10-30 12:08:16.825332'),
(28, 'bank', '0009_delete_savings_customer', '2020-10-31 03:31:14.955367'),
(29, 'bank', '0010_saving_customer', '2020-10-31 03:35:35.925979'),
(30, 'bank', '0011_auto_20201031_2136', '2020-10-31 16:06:29.002789'),
(31, 'bank', '0012_all_customer_chit_batches_chit_fund_customer_credit_customer_credit_customer_credit_saving_customer_', '2020-10-31 16:11:48.459193'),
(32, 'bank', '0013_auto_20201031_2209', '2020-10-31 16:39:52.334569'),
(33, 'bank', '0014_delete_saving_customer', '2020-10-31 16:45:47.382544'),
(34, 'bank', '0015_saving_customer', '2020-10-31 16:48:22.108289'),
(35, 'bank', '0016_auto_20201031_2221', '2020-10-31 16:51:29.560409'),
(36, 'bank', '0017_auto_20201031_2222', '2020-10-31 16:52:52.525203'),
(37, 'bank', '0018_auto_20201031_2223', '2020-10-31 16:53:33.332178'),
(38, 'bank', '0019_auto_20201031_2224', '2020-10-31 16:54:16.585148'),
(39, 'bank', '0020_auto_20201031_2228', '2020-10-31 16:59:00.590422'),
(40, 'bank', '0021_remove_savings_customer_savings_name', '2020-10-31 17:00:41.054788'),
(41, 'bank', '0022_auto_20201031_2237', '2020-10-31 17:08:03.004198'),
(42, 'bank', '0023_delete_credit_customer', '2020-10-31 17:12:41.160574'),
(43, 'bank', '0024_credit_customer', '2020-10-31 17:13:20.840207'),
(44, 'bank', '0025_auto_20201031_2246', '2020-10-31 17:16:30.043615'),
(45, 'bank', '0026_auto_20201031_2249', '2020-10-31 17:19:21.540273'),
(46, 'bank', '0027_auto_20201102_1337', '2020-11-02 08:07:51.282132');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('24qc6wjdt9p7541reb5z3mtibl84qpwj', '.eJxVjMEOwiAQRP-FsyEBliXr0bvfQGABqRpISntq_HfbpAc9zrw3swkf1qX6deTZT0lchRGX3y4GfuV2gPQM7dEl97bMU5SHIk865L2n_L6d7t9BDaPua1akwHBCcgxOsUWDyKz3QMxUXEYbwagMVLSmqALmCIDFWTKsovh8AdLgN4o:1kZrKF:yEX23ltsds_HxDesaHec0MZAcy4PznvFSoO3N43cdsk', '2020-11-17 08:05:55.545253'),
('41x4bxwiobyi4r2m78x6zqvu7y3alloh', '.eJxVjMEOwiAQRP-FsyEBliXr0bvfQGABqRpISntq_HfbpAc9zrw3swkf1qX6deTZT0lchRGX3y4GfuV2gPQM7dEl97bMU5SHIk865L2n_L6d7t9BDaPua1akwHBCcgxOsUWDyKz3QMxUXEYbwagMVLSmqALmCIDFWTKsovh8AdLgN4o:1kZry2:QbnniiXA2idC-YboaqtqmN9Gy1FgcQKdXT9nTZ6_vGk', '2020-11-17 08:47:02.718821'),
('tillz4z4gxs38fpf4fwdkoev1qdj232m', '.eJxVjMEOwiAQRP-FsyEBliXr0bvfQGABqRpISntq_HfbpAc9zrw3swkf1qX6deTZT0lchRGX3y4GfuV2gPQM7dEl97bMU5SHIk865L2n_L6d7t9BDaPua1akwHBCcgxOsUWDyKz3QMxUXEYbwagMVLSmqALmCIDFWTKsovh8AdLgN4o:1kZrpt:nfyJrOnH9G0x267wsePUyAXtzr-_Q7LobIUxP_pALdQ', '2020-11-17 08:38:37.947694');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `bank_all_customer`
--
ALTER TABLE `bank_all_customer`
  ADD PRIMARY KEY (`Account_No`);

--
-- Indexes for table `bank_chit_batches`
--
ALTER TABLE `bank_chit_batches`
  ADD PRIMARY KEY (`Batch_No`);

--
-- Indexes for table `bank_chit_fund_customer`
--
ALTER TABLE `bank_chit_fund_customer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bank_chit_fund_custo_Account_No_id_45c3f863_fk_bank_all_` (`Account_No_id`),
  ADD KEY `bank_chit_fund_custo_Batch_No_id_59b9cd29_fk_bank_chit` (`Batch_No_id`);

--
-- Indexes for table `bank_credit_customer`
--
ALTER TABLE `bank_credit_customer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bank_credit_customer_Select_Account_No_id_fd76d559_fk_bank_all_` (`Select_Account_No_id`);

--
-- Indexes for table `bank_credit_customer_credit`
--
ALTER TABLE `bank_credit_customer_credit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_savings_customer_savings`
--
ALTER TABLE `bank_savings_customer_savings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_saving_customer`
--
ALTER TABLE `bank_saving_customer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bank_saving_customer_Select_Account_No_id_66f89a52_fk_bank_all_` (`Select_Account_No_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bank_chit_fund_customer`
--
ALTER TABLE `bank_chit_fund_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bank_credit_customer`
--
ALTER TABLE `bank_credit_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bank_credit_customer_credit`
--
ALTER TABLE `bank_credit_customer_credit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `bank_savings_customer_savings`
--
ALTER TABLE `bank_savings_customer_savings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `bank_saving_customer`
--
ALTER TABLE `bank_saving_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `bank_chit_fund_customer`
--
ALTER TABLE `bank_chit_fund_customer`
  ADD CONSTRAINT `bank_chit_fund_custo_Account_No_id_45c3f863_fk_bank_all_` FOREIGN KEY (`Account_No_id`) REFERENCES `bank_all_customer` (`Account_No`),
  ADD CONSTRAINT `bank_chit_fund_custo_Batch_No_id_59b9cd29_fk_bank_chit` FOREIGN KEY (`Batch_No_id`) REFERENCES `bank_chit_batches` (`Batch_No`);

--
-- Constraints for table `bank_credit_customer`
--
ALTER TABLE `bank_credit_customer`
  ADD CONSTRAINT `bank_credit_customer_Select_Account_No_id_fd76d559_fk_bank_all_` FOREIGN KEY (`Select_Account_No_id`) REFERENCES `bank_all_customer` (`Account_No`);

--
-- Constraints for table `bank_saving_customer`
--
ALTER TABLE `bank_saving_customer`
  ADD CONSTRAINT `bank_saving_customer_Select_Account_No_id_66f89a52_fk_bank_all_` FOREIGN KEY (`Select_Account_No_id`) REFERENCES `bank_all_customer` (`Account_No`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
