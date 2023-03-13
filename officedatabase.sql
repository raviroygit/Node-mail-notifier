-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2023 at 02:43 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `officedatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` bigint(20) NOT NULL,
  `job` bigint(20) NOT NULL,
  `candidate` bigint(20) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `referredByEmail` varchar(200) DEFAULT NULL,
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `archivedemployees`
--

CREATE TABLE `archivedemployees` (
  `id` bigint(20) NOT NULL,
  `ref_id` bigint(20) NOT NULL,
  `employee_id` varchar(50) DEFAULT NULL,
  `first_name` varchar(100) NOT NULL DEFAULT '',
  `last_name` varchar(100) NOT NULL DEFAULT '',
  `gender` varchar(15) DEFAULT NULL,
  `ssn_num` varchar(100) DEFAULT '',
  `nic_num` varchar(100) DEFAULT '',
  `other_id` varchar(100) DEFAULT '',
  `work_email` varchar(100) DEFAULT NULL,
  `joined_date` datetime DEFAULT NULL,
  `confirmation_date` datetime DEFAULT NULL,
  `supervisor` bigint(20) DEFAULT NULL,
  `department` bigint(20) DEFAULT NULL,
  `termination_date` datetime DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `data` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assetlogs`
--

CREATE TABLE `assetlogs` (
  `id` bigint(20) NOT NULL,
  `asset_id` bigint(20) NOT NULL,
  `employee` bigint(20) NOT NULL,
  `assigned_date` datetime NOT NULL,
  `unassigned_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `assetlogs`
--

INSERT INTO `assetlogs` (`id`, `asset_id`, `employee`, `assigned_date`, `unassigned_date`) VALUES
(1, 1, 1, '2022-12-13 17:23:48', '0000-00-00 00:00:00'),
(2, 2, 1, '2022-12-13 19:34:56', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `assettypes`
--

CREATE TABLE `assettypes` (
  `id` bigint(20) NOT NULL,
  `name` varchar(35) NOT NULL,
  `description` text DEFAULT NULL,
  `attachment` varchar(100) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `assettypes`
--

INSERT INTO `assettypes` (`id`, `name`, `description`, `attachment`, `created`, `updated`) VALUES
(1, 'Monitor', '', NULL, '2022-12-13 17:23:18', '2022-12-13 17:23:18'),
(2, 'One Plus', 'One Plus description will come here', NULL, '2022-12-13 19:34:36', '2022-12-13 19:34:36'),
(3, 'Headphones', NULL, NULL, '2022-12-22 16:27:44', '2022-12-22 16:27:44'),
(4, 'WER', NULL, NULL, '2023-02-01 19:46:53', '2023-02-01 19:46:53'),
(16, 'CHD', NULL, NULL, '2023-02-02 15:35:51', '2023-02-02 15:35:51');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` bigint(20) NOT NULL,
  `employee` bigint(20) NOT NULL,
  `in_time` datetime DEFAULT NULL,
  `out_time` datetime DEFAULT NULL,
  `note` varchar(500) DEFAULT NULL,
  `image_in` longtext DEFAULT NULL,
  `image_out` longtext DEFAULT NULL,
  `map_lat` decimal(10,8) DEFAULT NULL,
  `map_lng` decimal(10,8) DEFAULT NULL,
  `map_snapshot` longtext DEFAULT NULL,
  `map_out_lat` decimal(10,8) DEFAULT NULL,
  `map_out_lng` decimal(10,8) DEFAULT NULL,
  `map_out_snapshot` longtext DEFAULT NULL,
  `in_ip` varchar(25) DEFAULT NULL,
  `out_ip` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `employee`, `in_time`, `out_time`, `note`, `image_in`, `image_out`, `map_lat`, `map_lng`, `map_snapshot`, `map_out_lat`, `map_out_lng`, `map_out_snapshot`, `in_ip`, `out_ip`) VALUES
(46, 71, '2023-01-10 10:10:31', NULL, NULL, '', NULL, '40.43223200', '71.32423330', NULL, NULL, NULL, NULL, '66.77.11.22', NULL),
(47, 72, '2022-11-01 10:00:00', '2022-11-01 18:00:00', NULL, NULL, NULL, '0.00000000', '0.00000000', NULL, '0.00000000', '0.00000000', NULL, NULL, NULL),
(48, 72, '2022-11-02 10:00:00', '2022-11-02 18:00:00', NULL, NULL, NULL, '0.00000000', '0.00000000', NULL, '0.00000000', '0.00000000', NULL, NULL, NULL),
(49, 72, '2022-11-03 10:00:00', '2022-11-03 18:00:00', NULL, NULL, NULL, '0.00000000', '0.00000000', NULL, '0.00000000', '0.00000000', NULL, NULL, NULL),
(50, 72, '2022-11-04 10:00:00', '2022-11-04 18:00:00', NULL, NULL, NULL, '0.00000000', '0.00000000', NULL, '0.00000000', '0.00000000', NULL, NULL, NULL),
(53, 72, '2022-11-07 10:00:00', '2022-11-07 18:00:00', NULL, NULL, NULL, '0.00000000', '0.00000000', NULL, '0.00000000', '0.00000000', NULL, NULL, NULL),
(54, 72, '2022-11-08 10:00:00', '2022-11-08 18:00:00', NULL, NULL, NULL, '0.00000000', '0.00000000', NULL, '0.00000000', '0.00000000', NULL, NULL, NULL),
(55, 72, '2022-11-09 10:00:00', '2022-11-09 18:00:00', NULL, NULL, NULL, '0.00000000', '0.00000000', NULL, '0.00000000', '0.00000000', NULL, NULL, NULL),
(56, 72, '2022-11-10 10:00:00', '2022-11-10 18:00:00', NULL, NULL, NULL, '0.00000000', '0.00000000', NULL, '0.00000000', '0.00000000', NULL, NULL, NULL),
(57, 72, '2022-11-11 10:00:00', '2022-11-11 18:00:00', NULL, NULL, NULL, '0.00000000', '0.00000000', NULL, '0.00000000', '0.00000000', NULL, NULL, NULL),
(60, 72, '2022-11-14 10:00:00', '2022-11-14 18:00:00', NULL, NULL, NULL, '0.00000000', '0.00000000', NULL, '0.00000000', '0.00000000', NULL, NULL, NULL),
(61, 72, '2022-11-15 10:00:00', '2022-11-15 18:00:00', NULL, NULL, NULL, '0.00000000', '0.00000000', NULL, '0.00000000', '0.00000000', NULL, NULL, NULL),
(62, 72, '2022-11-16 10:00:00', '2022-11-16 18:00:00', NULL, NULL, NULL, '0.00000000', '0.00000000', NULL, '0.00000000', '0.00000000', NULL, NULL, NULL),
(64, 72, '2022-11-18 10:00:00', '2022-11-18 18:00:00', NULL, NULL, NULL, '0.00000000', '0.00000000', NULL, '0.00000000', '0.00000000', NULL, NULL, NULL),
(67, 72, '2022-11-21 10:00:00', '2022-11-21 18:00:00', NULL, NULL, NULL, '0.00000000', '0.00000000', NULL, '0.00000000', '0.00000000', NULL, NULL, NULL),
(68, 72, '2022-11-22 10:00:00', '2022-11-22 18:00:00', NULL, NULL, NULL, '0.00000000', '0.00000000', NULL, '0.00000000', '0.00000000', NULL, NULL, NULL),
(69, 72, '2022-11-23 10:00:00', '2022-11-23 18:00:00', NULL, NULL, NULL, '0.00000000', '0.00000000', NULL, '0.00000000', '0.00000000', NULL, NULL, NULL),
(70, 72, '2022-11-24 10:00:00', '2022-11-24 18:00:00', NULL, NULL, NULL, '0.00000000', '0.00000000', NULL, '0.00000000', '0.00000000', NULL, NULL, NULL),
(74, 72, '2022-11-28 10:00:00', '2022-11-28 18:00:00', NULL, NULL, NULL, '0.00000000', '0.00000000', NULL, '0.00000000', '0.00000000', NULL, NULL, NULL),
(75, 72, '2022-11-29 10:00:00', '2022-11-29 22:00:00', '', NULL, NULL, '0.00000000', '0.00000000', NULL, '0.00000000', '0.00000000', NULL, NULL, NULL),
(76, 72, '2022-11-30 10:00:00', '2022-11-30 19:00:00', '', NULL, NULL, '0.00000000', '0.00000000', NULL, '0.00000000', '0.00000000', NULL, NULL, NULL),
(77, 68, '2023-01-24 10:25:57', '2023-01-24 10:41:00', NULL, '1674555957.png', '', '30.73330000', '76.77940000', NULL, '30.73330000', '76.77940000', NULL, '122.176.106.160', '122.176.106.160'),
(78, 73, '2023-01-30 08:19:22', '2023-01-30 10:38:28', NULL, '1675066762.jpg', '1675075108239.png', '31.63400000', '74.87230000', NULL, '31.63400000', '74.87230000', NULL, '12.24.36.48', '44.33.22.11'),
(79, 73, '2023-01-30 10:38:56', '2023-01-30 11:23:58', NULL, '1675075136741.webp', '1675077838744.png', '31.63400000', '74.87230000', NULL, '31.63400000', '74.87230000', NULL, '44.33.22.11', '44.33.22.11'),
(80, 72, '2023-01-30 10:41:20', '2023-01-30 10:41:34', NULL, '1675075280351.png', '1675075294815.jpg', '31.63400000', '74.87230000', NULL, '31.63400000', '74.87230000', NULL, '44.33.22.11', '44.33.22.11'),
(81, 73, '2023-01-30 11:24:21', '2023-01-30 11:24:34', NULL, '1675077861196.png', '1675077874733.png', '31.63400000', '74.87230000', NULL, '31.63400000', '74.87230000', NULL, '44.33.22.11', '44.33.22.11'),
(82, 73, '2023-01-30 11:24:41', '2023-01-30 12:35:28', NULL, '1675077881576.png', '63d7b990a94f81675082128693.webp', '31.63400000', '74.87230000', NULL, '31.63400000', '74.87230000', NULL, '44.33.22.11', '44.33.22.11'),
(83, 73, '2023-01-30 12:37:25', '2023-01-30 13:36:56', NULL, '63d7ba053dbac1675082245252.jpeg', '63d7c7f838ab51675085816232.jpeg', '31.63400000', '74.87230000', NULL, '31.63400000', '74.87230000', NULL, '44.33.22.11', '44.33.22.11'),
(84, 73, '2023-01-30 13:57:43', '2023-01-30 14:01:31', NULL, '63d7ccd7c81cf1675087063819.jpeg', '63d7cdbb431a11675087291274.jpeg', '31.63400000', '74.87230000', NULL, '31.63400000', '74.87230000', NULL, '44.33.22.11', '44.33.22.11'),
(85, 73, '2023-01-30 14:01:43', '2023-01-31 07:38:15', NULL, '63d7cdc7277321675087303161.png', '63d8c567d6c631675150695879.jpeg', '31.63400000', '74.87230000', NULL, '34.08365600', '74.79737100', NULL, '44.33.22.11', '11.55.77.99'),
(86, 73, '2023-01-31 07:40:47', '2023-01-31 07:41:26', NULL, '63d8c5ff7cbef1675150847510.jpeg', '63d8c6260f8b1167515088663.png', '34.08365600', '74.79737100', NULL, '32.72660000', '74.85700000', NULL, '11.55.77.99', '122.176.106.160');

-- --------------------------------------------------------

--
-- Table structure for table `auditlog`
--

CREATE TABLE `auditlog` (
  `id` bigint(20) NOT NULL,
  `time` datetime DEFAULT NULL,
  `user` bigint(20) NOT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `type` varchar(100) NOT NULL,
  `employee` varchar(300) DEFAULT NULL,
  `details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `benifits`
--

CREATE TABLE `benifits` (
  `id` bigint(20) NOT NULL,
  `name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `benifits`
--

INSERT INTO `benifits` (`id`, `name`) VALUES
(1, 'Retirement plan'),
(2, 'Health plan'),
(3, 'Life insurance'),
(4, 'Paid vacations');

-- --------------------------------------------------------

--
-- Table structure for table `calls`
--

CREATE TABLE `calls` (
  `id` bigint(20) NOT NULL,
  `job` bigint(20) NOT NULL,
  `candidate` bigint(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` bigint(20) NOT NULL,
  `first_name` varchar(100) NOT NULL DEFAULT '',
  `last_name` varchar(100) NOT NULL DEFAULT '',
  `nationality` bigint(20) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `gender` varchar(15) DEFAULT NULL,
  `marital_status` enum('Married','Single','Divorced','Widowed','Other') DEFAULT NULL,
  `address1` varchar(100) DEFAULT '',
  `address2` varchar(100) DEFAULT '',
  `city` varchar(150) DEFAULT '',
  `country` char(2) DEFAULT NULL,
  `province` bigint(20) DEFAULT NULL,
  `postal_code` varchar(20) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `home_phone` varchar(50) DEFAULT NULL,
  `mobile_phone` varchar(50) DEFAULT NULL,
  `cv_title` varchar(200) NOT NULL DEFAULT '',
  `cv` varchar(150) DEFAULT NULL,
  `cvtext` text DEFAULT NULL,
  `industry` text DEFAULT NULL,
  `profileImage` varchar(150) DEFAULT NULL,
  `head_line` text DEFAULT NULL,
  `objective` text DEFAULT NULL,
  `work_history` text DEFAULT NULL,
  `education` text DEFAULT NULL,
  `skills` text DEFAULT NULL,
  `referees` text DEFAULT NULL,
  `linkedInUrl` varchar(500) DEFAULT NULL,
  `linkedInData` text DEFAULT NULL,
  `totalYearsOfExperience` int(11) DEFAULT NULL,
  `totalMonthsOfExperience` int(11) DEFAULT NULL,
  `htmlCVData` longtext DEFAULT NULL,
  `generatedCVFile` varchar(150) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `expectedSalary` int(11) DEFAULT NULL,
  `preferedPositions` text DEFAULT NULL,
  `preferedJobtype` varchar(60) DEFAULT NULL,
  `preferedCountries` text DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `calls` text DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `hash` varchar(100) DEFAULT NULL,
  `linkedInProfileLink` varchar(250) DEFAULT NULL,
  `linkedInProfileId` varchar(50) DEFAULT NULL,
  `facebookProfileLink` varchar(250) DEFAULT NULL,
  `facebookProfileId` varchar(50) DEFAULT NULL,
  `twitterProfileLink` varchar(250) DEFAULT NULL,
  `twitterProfileId` varchar(50) DEFAULT NULL,
  `googleProfileLink` varchar(250) DEFAULT NULL,
  `googleProfileId` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `certifications`
--

CREATE TABLE `certifications` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `certifications`
--

INSERT INTO `certifications` (`id`, `name`, `description`) VALUES
(1, 'Red Hat Certified Architect (RHCA)', 'Red Hat Certified Architect (RHCA)'),
(2, 'GIAC Secure Software Programmer -Java', 'GIAC Secure Software Programmer -Java'),
(3, 'Risk Management Professional (PMI)', 'Risk Management Professional (PMI)'),
(4, 'IT Infrastructure Library (ITIL) Expert Certification', 'IT Infrastructure Library (ITIL) Expert Certification'),
(5, 'Microsoft Certified Architect', 'Microsoft Certified Architect'),
(6, 'Oracle Exadata 11g Certified Implementation Specialist', 'Oracle Exadata 11g Certified Implementation Specialist'),
(7, 'Cisco Certified Design Professional (CCDP)', 'Cisco Certified Design Professional (CCDP)'),
(8, 'Cisco Certified Internetwork Expert (CCIE)', 'Cisco Certified Internetwork Expert (CCIE)'),
(9, 'Cisco Certified Network Associate', 'Cisco Certified Network Associate'),
(10, 'HP/Master Accredited Solutions Expert (MASE)', 'HP/Master Accredited Solutions Expert (MASE)'),
(11, 'HP/Master Accredited Systems Engineer (Master ASE)', 'HP/Master Accredited Systems Engineer (Master ASE)'),
(12, 'Certified Information Security Manager (CISM)', 'Certified Information Security Manager (CISM)'),
(13, 'Certified Information Systems Auditor (CISA)', 'Certified Information Systems Auditor (CISA)'),
(14, 'CyberSecurity Forensic Analyst (CSFA)', 'CyberSecurity Forensic Analyst (CSFA)'),
(15, 'Open Group Certified Architect (OpenCA)', 'Open Group Certified Architect (OpenCA)'),
(16, 'Oracle DBA Administrator Certified Master OCM', 'Oracle DBA Administrator Certified Master OCM'),
(17, 'Project Management Professional', 'Project Management Professional'),
(18, 'Apple Certified Support Professional', 'Apple Certified Support Professional'),
(19, 'Certified Public Accountant (CPA)', 'Certified Public Accountant (CPA)'),
(20, 'Chartered Financial Analyst', 'Chartered Financial Analyst'),
(21, 'Professional in Human Resources (PHR)', 'Professional in Human Resources (PHR)');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` text DEFAULT NULL,
  `first_contact_date` date DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `address` text DEFAULT NULL,
  `contact_number` varchar(25) DEFAULT NULL,
  `contact_email` varchar(100) DEFAULT NULL,
  `company_url` varchar(500) DEFAULT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `details`, `first_contact_date`, `created`, `address`, `contact_number`, `contact_email`, `company_url`, `status`) VALUES
(1, 'Sample Client 1', NULL, '2012-01-04', '2013-01-03 05:47:33', '001, Sample Road,\nSample City, USA', '678-894-1047', 'sample+client1@hihellohr.com', 'https://hihellohr.com/', 'Active'),
(2, 'Sample Client 2', '', '2012-01-04', '2013-01-03 05:47:33', '001, Sample Road,\nSample City, USA', '678-894-1047', 'sample+client1@hihellohr.com', 'https://hihellohr.com/', 'Active'),
(3, 'Sample Client 3', NULL, '2012-01-04', '2013-01-03 05:47:33', '001, Sample Road,\nSample City, USA', '678-894-1047', 'sample+client1@hihellohr.com', 'https://hihellohr.com/', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `clientusers`
--

CREATE TABLE `clientusers` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `clientId` bigint(20) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `clientusers`
--

INSERT INTO `clientusers` (`id`, `name`, `clientId`, `username`, `email`, `password`, `created`) VALUES
(1, 'Client 1', 1, 'client-1', 'client-1@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-02-08 17:05:21'),
(4, 'Client 2', 2, 'client-2', 'client-2@gmail.com', '202cb962ac59075b964b07152d234b70', '2023-02-08 17:06:42'),
(21, 'ds', 2, 'dsd', 'sd@fd.ds', NULL, '2023-02-09 20:05:26');

-- --------------------------------------------------------

--
-- Table structure for table `companyassets`
--

CREATE TABLE `companyassets` (
  `id` bigint(20) NOT NULL,
  `code` varchar(30) NOT NULL,
  `type` bigint(20) DEFAULT NULL,
  `attachment` varchar(100) DEFAULT NULL,
  `employee` bigint(20) DEFAULT NULL,
  `department` bigint(20) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `companyassets`
--

INSERT INTO `companyassets` (`id`, `code`, `type`, `attachment`, `employee`, `department`, `description`, `created`, `updated`) VALUES
(1, 'Code-1', 1, NULL, 1, 1, NULL, '2022-12-13 17:23:48', '2022-12-13 17:23:48'),
(2, 'ONEPLUS01', 2, NULL, 1, 1, NULL, '2022-12-13 19:34:56', '2022-12-13 19:34:56');

-- --------------------------------------------------------

--
-- Table structure for table `companydocuments`
--

CREATE TABLE `companydocuments` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` text DEFAULT NULL,
  `valid_until` date DEFAULT NULL,
  `status` enum('Active','Inactive','Draft') DEFAULT 'Active',
  `notify_employees` enum('Yes','No') DEFAULT 'Yes',
  `attachment` varchar(100) DEFAULT NULL,
  `share_departments` varchar(100) DEFAULT NULL,
  `share_employees` varchar(100) DEFAULT NULL,
  `share_userlevel` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `companyloans`
--

CREATE TABLE `companyloans` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `companyloans`
--

INSERT INTO `companyloans` (`id`, `name`, `details`) VALUES
(1, 'Personal loan', 'Personal loans'),
(2, 'Educational loan', 'Educational loan');

-- --------------------------------------------------------

--
-- Table structure for table `companystructures`
--

CREATE TABLE `companystructures` (
  `id` bigint(20) NOT NULL,
  `title` tinytext NOT NULL,
  `description` text NOT NULL,
  `address` text DEFAULT NULL,
  `type` enum('Company','Head Office','Regional Office','Department','Unit','Sub Unit','Other') DEFAULT NULL,
  `country` varchar(2) NOT NULL DEFAULT '0',
  `parent` bigint(20) DEFAULT NULL,
  `timezone` varchar(100) NOT NULL DEFAULT 'Europe/London',
  `heads` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `companystructures`
--

INSERT INTO `companystructures` (`id`, `title`, `description`, `address`, `type`, `country`, `parent`, `timezone`, `heads`) VALUES
(1, 'Your Company', 'Please update your company name here. You can update, delete or add units according to your needs', '', 'Company', 'US', NULL, 'Europe/London', NULL),
(2, 'Head Office', 'US Head office', 'PO Box 001002\nSample Road, Sample Town', 'Head Office', 'US', 1, 'Europe/London', NULL),
(3, 'Marketing Department', 'Marketing Department', 'PO Box 001002\nSample Road, Sample Town', 'Department', 'US', 2, 'Europe/London', NULL),
(4, 'Designers', 'Designers', '', 'Company', 'IN', NULL, 'Asia/Dubai', ''),
(5, 'Developers', 'Developers', '', 'Company', 'GB', NULL, 'Europe/London', ''),
(6, 'Testers', 'Testers', NULL, 'Company', 'IN', NULL, 'Australia/Hobart', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` bigint(20) NOT NULL,
  `message` longtext NOT NULL,
  `type` varchar(35) NOT NULL,
  `attachment` varchar(100) DEFAULT NULL,
  `employee` bigint(20) NOT NULL,
  `target` bigint(20) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `timeint` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `conversationuserstatus`
--

CREATE TABLE `conversationuserstatus` (
  `id` bigint(20) NOT NULL,
  `employee` bigint(20) NOT NULL,
  `status` varchar(15) DEFAULT NULL,
  `seen_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` bigint(20) NOT NULL,
  `code` char(2) NOT NULL DEFAULT '',
  `namecap` varchar(80) DEFAULT '',
  `name` varchar(80) NOT NULL DEFAULT '',
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `code`, `namecap`, `name`, `iso3`, `numcode`) VALUES
(1, 'AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', 4),
(2, 'AL', 'ALBANIA', 'Albania', 'ALB', 8),
(3, 'DZ', 'ALGERIA', 'Algeria', 'DZA', 12),
(4, 'AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', 16),
(5, 'AD', 'ANDORRA', 'Andorra', 'AND', 20),
(6, 'AO', 'ANGOLA', 'Angola', 'AGO', 24),
(7, 'AI', 'ANGUILLA', 'Anguilla', 'AIA', 660),
(8, 'AQ', 'ANTARCTICA', 'Antarctica', NULL, NULL),
(9, 'AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', 28),
(10, 'AR', 'ARGENTINA', 'Argentina', 'ARG', 32),
(11, 'AM', 'ARMENIA', 'Armenia', 'ARM', 51),
(12, 'AW', 'ARUBA', 'Aruba', 'ABW', 533),
(13, 'AU', 'AUSTRALIA', 'Australia', 'AUS', 36),
(14, 'AT', 'AUSTRIA', 'Austria', 'AUT', 40),
(15, 'AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', 31),
(16, 'BS', 'BAHAMAS', 'Bahamas', 'BHS', 44),
(17, 'BH', 'BAHRAIN', 'Bahrain', 'BHR', 48),
(18, 'BD', 'BANGLADESH', 'Bangladesh', 'BGD', 50),
(19, 'BB', 'BARBADOS', 'Barbados', 'BRB', 52),
(20, 'BY', 'BELARUS', 'Belarus', 'BLR', 112),
(21, 'BE', 'BELGIUM', 'Belgium', 'BEL', 56),
(22, 'BZ', 'BELIZE', 'Belize', 'BLZ', 84),
(23, 'BJ', 'BENIN', 'Benin', 'BEN', 204),
(24, 'BM', 'BERMUDA', 'Bermuda', 'BMU', 60),
(25, 'BT', 'BHUTAN', 'Bhutan', 'BTN', 64),
(26, 'BO', 'BOLIVIA', 'Bolivia', 'BOL', 68),
(27, 'BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', 70),
(28, 'BW', 'BOTSWANA', 'Botswana', 'BWA', 72),
(29, 'BV', 'BOUVET ISLAND', 'Bouvet Island', NULL, NULL),
(30, 'BR', 'BRAZIL', 'Brazil', 'BRA', 76),
(31, 'IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', NULL, NULL),
(32, 'BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', 96),
(33, 'BG', 'BULGARIA', 'Bulgaria', 'BGR', 100),
(34, 'BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', 854),
(35, 'BI', 'BURUNDI', 'Burundi', 'BDI', 108),
(36, 'KH', 'CAMBODIA', 'Cambodia', 'KHM', 116),
(37, 'CM', 'CAMEROON', 'Cameroon', 'CMR', 120),
(38, 'CA', 'CANADA', 'Canada', 'CAN', 124),
(39, 'CV', 'CAPE VERDE', 'Cape Verde', 'CPV', 132),
(40, 'KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', 136),
(41, 'CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', 140),
(42, 'TD', 'CHAD', 'Chad', 'TCD', 148),
(43, 'CL', 'CHILE', 'Chile', 'CHL', 152),
(44, 'CN', 'CHINA', 'China', 'CHN', 156),
(45, 'CX', 'CHRISTMAS ISLAND', 'Christmas Island', NULL, NULL),
(46, 'CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', NULL, NULL),
(47, 'CO', 'COLOMBIA', 'Colombia', 'COL', 170),
(48, 'KM', 'COMOROS', 'Comoros', 'COM', 174),
(49, 'CG', 'CONGO', 'Congo', 'COG', 178),
(50, 'CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', 180),
(51, 'CK', 'COOK ISLANDS', 'Cook Islands', 'COK', 184),
(52, 'CR', 'COSTA RICA', 'Costa Rica', 'CRI', 188),
(53, 'CI', 'COTE D\'IVOIRE', 'Cote D\'Ivoire', 'CIV', 384),
(54, 'HR', 'CROATIA', 'Croatia', 'HRV', 191),
(55, 'CU', 'CUBA', 'Cuba', 'CUB', 192),
(56, 'CY', 'CYPRUS', 'Cyprus', 'CYP', 196),
(57, 'CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', 203),
(58, 'DK', 'DENMARK', 'Denmark', 'DNK', 208),
(59, 'DJ', 'DJIBOUTI', 'Djibouti', 'DJI', 262),
(60, 'DM', 'DOMINICA', 'Dominica', 'DMA', 212),
(61, 'DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', 214),
(62, 'EC', 'ECUADOR', 'Ecuador', 'ECU', 218),
(63, 'EG', 'EGYPT', 'Egypt', 'EGY', 818),
(64, 'SV', 'EL SALVADOR', 'El Salvador', 'SLV', 222),
(65, 'GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', 226),
(66, 'ER', 'ERITREA', 'Eritrea', 'ERI', 232),
(67, 'EE', 'ESTONIA', 'Estonia', 'EST', 233),
(68, 'ET', 'ETHIOPIA', 'Ethiopia', 'ETH', 231),
(69, 'FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', 238),
(70, 'FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', 234),
(71, 'FJ', 'FIJI', 'Fiji', 'FJI', 242),
(72, 'FI', 'FINLAND', 'Finland', 'FIN', 246),
(73, 'FR', 'FRANCE', 'France', 'FRA', 250),
(74, 'GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', 254),
(75, 'PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', 258),
(76, 'TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', NULL, NULL),
(77, 'GA', 'GABON', 'Gabon', 'GAB', 266),
(78, 'GM', 'GAMBIA', 'Gambia', 'GMB', 270),
(79, 'GE', 'GEORGIA', 'Georgia', 'GEO', 268),
(80, 'DE', 'GERMANY', 'Germany', 'DEU', 276),
(81, 'GH', 'GHANA', 'Ghana', 'GHA', 288),
(82, 'GI', 'GIBRALTAR', 'Gibraltar', 'GIB', 292),
(83, 'GR', 'GREECE', 'Greece', 'GRC', 300),
(84, 'GL', 'GREENLAND', 'Greenland', 'GRL', 304),
(85, 'GD', 'GRENADA', 'Grenada', 'GRD', 308),
(86, 'GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', 312),
(87, 'GU', 'GUAM', 'Guam', 'GUM', 316),
(88, 'GT', 'GUATEMALA', 'Guatemala', 'GTM', 320),
(89, 'GN', 'GUINEA', 'Guinea', 'GIN', 324),
(90, 'GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', 624),
(91, 'GY', 'GUYANA', 'Guyana', 'GUY', 328),
(92, 'HT', 'HAITI', 'Haiti', 'HTI', 332),
(93, 'HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', NULL, NULL),
(94, 'VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', 336),
(95, 'HN', 'HONDURAS', 'Honduras', 'HND', 340),
(96, 'HK', 'HONG KONG', 'Hong Kong', 'HKG', 344),
(97, 'HU', 'HUNGARY', 'Hungary', 'HUN', 348),
(98, 'IS', 'ICELAND', 'Iceland', 'ISL', 352),
(99, 'IN', 'INDIA', 'India', 'IND', 356),
(100, 'ID', 'INDONESIA', 'Indonesia', 'IDN', 360),
(101, 'IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', 364),
(102, 'IQ', 'IRAQ', 'Iraq', 'IRQ', 368),
(103, 'IE', 'IRELAND', 'Ireland', 'IRL', 372),
(104, 'IL', 'ISRAEL', 'Israel', 'ISR', 376),
(105, 'IT', 'ITALY', 'Italy', 'ITA', 380),
(106, 'JM', 'JAMAICA', 'Jamaica', 'JAM', 388),
(107, 'JP', 'JAPAN', 'Japan', 'JPN', 392),
(108, 'JO', 'JORDAN', 'Jordan', 'JOR', 400),
(109, 'KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', 398),
(110, 'KE', 'KENYA', 'Kenya', 'KEN', 404),
(111, 'KI', 'KIRIBATI', 'Kiribati', 'KIR', 296),
(112, 'KP', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'Korea, Democratic People\'s Republic of', 'PRK', 408),
(113, 'KR', 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KOR', 410),
(114, 'KW', 'KUWAIT', 'Kuwait', 'KWT', 414),
(115, 'KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', 417),
(116, 'LA', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'Lao People\'s Democratic Republic', 'LAO', 418),
(117, 'LV', 'LATVIA', 'Latvia', 'LVA', 428),
(118, 'LB', 'LEBANON', 'Lebanon', 'LBN', 422),
(119, 'LS', 'LESOTHO', 'Lesotho', 'LSO', 426),
(120, 'LR', 'LIBERIA', 'Liberia', 'LBR', 430),
(121, 'LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', 434),
(122, 'LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', 438),
(123, 'LT', 'LITHUANIA', 'Lithuania', 'LTU', 440),
(124, 'LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', 442),
(125, 'MO', 'MACAO', 'Macao', 'MAC', 446),
(126, 'MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 807),
(127, 'MG', 'MADAGASCAR', 'Madagascar', 'MDG', 450),
(128, 'MW', 'MALAWI', 'Malawi', 'MWI', 454),
(129, 'MY', 'MALAYSIA', 'Malaysia', 'MYS', 458),
(130, 'MV', 'MALDIVES', 'Maldives', 'MDV', 462),
(131, 'ML', 'MALI', 'Mali', 'MLI', 466),
(132, 'MT', 'MALTA', 'Malta', 'MLT', 470),
(133, 'MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', 584),
(134, 'MQ', 'MARTINIQUE', 'Martinique', 'MTQ', 474),
(135, 'MR', 'MAURITANIA', 'Mauritania', 'MRT', 478),
(136, 'MU', 'MAURITIUS', 'Mauritius', 'MUS', 480),
(137, 'YT', 'MAYOTTE', 'Mayotte', NULL, NULL),
(138, 'MX', 'MEXICO', 'Mexico', 'MEX', 484),
(139, 'FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', 583),
(140, 'MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', 498),
(141, 'MC', 'MONACO', 'Monaco', 'MCO', 492),
(142, 'MN', 'MONGOLIA', 'Mongolia', 'MNG', 496),
(143, 'MS', 'MONTSERRAT', 'Montserrat', 'MSR', 500),
(144, 'MA', 'MOROCCO', 'Morocco', 'MAR', 504),
(145, 'MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', 508),
(146, 'MM', 'MYANMAR', 'Myanmar', 'MMR', 104),
(147, 'NA', 'NAMIBIA', 'Namibia', 'NAM', 516),
(148, 'NR', 'NAURU', 'Nauru', 'NRU', 520),
(149, 'NP', 'NEPAL', 'Nepal', 'NPL', 524),
(150, 'NL', 'NETHERLANDS', 'Netherlands', 'NLD', 528),
(151, 'AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', 530),
(152, 'NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', 540),
(153, 'NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', 554),
(154, 'NI', 'NICARAGUA', 'Nicaragua', 'NIC', 558),
(155, 'NE', 'NIGER', 'Niger', 'NER', 562),
(156, 'NG', 'NIGERIA', 'Nigeria', 'NGA', 566),
(157, 'NU', 'NIUE', 'Niue', 'NIU', 570),
(158, 'NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', 574),
(159, 'MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', 580),
(160, 'NO', 'NORWAY', 'Norway', 'NOR', 578),
(161, 'OM', 'OMAN', 'Oman', 'OMN', 512),
(162, 'PK', 'PAKISTAN', 'Pakistan', 'PAK', 586),
(163, 'PW', 'PALAU', 'Palau', 'PLW', 585),
(164, 'PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', NULL, NULL),
(165, 'PA', 'PANAMA', 'Panama', 'PAN', 591),
(166, 'PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', 598),
(167, 'PY', 'PARAGUAY', 'Paraguay', 'PRY', 600),
(168, 'PE', 'PERU', 'Peru', 'PER', 604),
(169, 'PH', 'PHILIPPINES', 'Philippines', 'PHL', 608),
(170, 'PN', 'PITCAIRN', 'Pitcairn', 'PCN', 612),
(171, 'PL', 'POLAND', 'Poland', 'POL', 616),
(172, 'PT', 'PORTUGAL', 'Portugal', 'PRT', 620),
(173, 'PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', 630),
(174, 'QA', 'QATAR', 'Qatar', 'QAT', 634),
(175, 'RE', 'REUNION', 'Reunion', 'REU', 638),
(176, 'RO', 'ROMANIA', 'Romania', 'ROM', 642),
(177, 'RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', 643),
(178, 'RW', 'RWANDA', 'Rwanda', 'RWA', 646),
(179, 'SH', 'SAINT HELENA', 'Saint Helena', 'SHN', 654),
(180, 'KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', 659),
(181, 'LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', 662),
(182, 'PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', 666),
(183, 'VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', 670),
(184, 'WS', 'SAMOA', 'Samoa', 'WSM', 882),
(185, 'SM', 'SAN MARINO', 'San Marino', 'SMR', 674),
(186, 'ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', 678),
(187, 'SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', 682),
(188, 'SN', 'SENEGAL', 'Senegal', 'SEN', 686),
(189, 'CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', NULL, NULL),
(190, 'SC', 'SEYCHELLES', 'Seychelles', 'SYC', 690),
(191, 'SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', 694),
(192, 'SG', 'SINGAPORE', 'Singapore', 'SGP', 702),
(193, 'SK', 'SLOVAKIA', 'Slovakia', 'SVK', 703),
(194, 'SI', 'SLOVENIA', 'Slovenia', 'SVN', 705),
(195, 'SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', 90),
(196, 'SO', 'SOMALIA', 'Somalia', 'SOM', 706),
(197, 'ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', 710),
(198, 'GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', NULL, NULL),
(199, 'ES', 'SPAIN', 'Spain', 'ESP', 724),
(200, 'LK', 'SRI LANKA', 'Sri Lanka', 'LKA', 144),
(201, 'SD', 'SUDAN', 'Sudan', 'SDN', 736),
(202, 'SR', 'SURINAME', 'Suriname', 'SUR', 740),
(203, 'SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', 744),
(204, 'SZ', 'SWAZILAND', 'Swaziland', 'SWZ', 748),
(205, 'SE', 'SWEDEN', 'Sweden', 'SWE', 752),
(206, 'CH', 'SWITZERLAND', 'Switzerland', 'CHE', 756),
(207, 'SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', 760),
(208, 'TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan', 'TWN', 158),
(209, 'TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', 762),
(210, 'TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', 834),
(211, 'TH', 'THAILAND', 'Thailand', 'THA', 764),
(212, 'TL', 'TIMOR-LESTE', 'Timor-Leste', NULL, NULL),
(213, 'TG', 'TOGO', 'Togo', 'TGO', 768),
(214, 'TK', 'TOKELAU', 'Tokelau', 'TKL', 772),
(215, 'TO', 'TONGA', 'Tonga', 'TON', 776),
(216, 'TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', 780),
(217, 'TN', 'TUNISIA', 'Tunisia', 'TUN', 788),
(218, 'TR', 'TURKEY', 'Turkey', 'TUR', 792),
(219, 'TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', 795),
(220, 'TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', 796),
(221, 'TV', 'TUVALU', 'Tuvalu', 'TUV', 798),
(222, 'UG', 'UGANDA', 'Uganda', 'UGA', 800),
(223, 'UA', 'UKRAINE', 'Ukraine', 'UKR', 804),
(224, 'AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', 784),
(225, 'GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', 826),
(226, 'US', 'UNITED STATES', 'United States', 'USA', 840),
(227, 'UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', NULL, NULL),
(228, 'UY', 'URUGUAY', 'Uruguay', 'URY', 858),
(229, 'UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', 860),
(230, 'VU', 'VANUATU', 'Vanuatu', 'VUT', 548),
(231, 'VE', 'VENEZUELA', 'Venezuela', 'VEN', 862),
(232, 'VN', 'VIET NAM', 'Viet Nam', 'VNM', 704),
(233, 'VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', 92),
(234, 'VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', 850),
(235, 'WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', 876),
(236, 'EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', 732),
(237, 'YE', 'YEMEN', 'Yemen', 'YEM', 887),
(238, 'ZM', 'ZAMBIA', 'Zambia', 'ZMB', 894),
(239, 'ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', 716);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) NOT NULL,
  `code` varchar(300) NOT NULL,
  `name` varchar(300) NOT NULL,
  `description` text DEFAULT NULL,
  `coordinator` bigint(20) DEFAULT NULL,
  `trainer` varchar(300) DEFAULT NULL,
  `trainer_info` text DEFAULT NULL,
  `paymentType` enum('Company Sponsored','Paid by Employee') DEFAULT 'Company Sponsored',
  `currency` varchar(3) DEFAULT NULL,
  `cost` decimal(12,2) DEFAULT 0.00,
  `status` enum('Active','Inactive') DEFAULT 'Active',
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `code`, `name`, `description`, `coordinator`, `trainer`, `trainer_info`, `paymentType`, `currency`, `cost`, `status`, `created`, `updated`) VALUES
(1, 'C0001', 'Info Marketing', 'Learn how to Create and Outsource Info Marketing Products', 1, 'Tim Jhon', 'Tim Jhon has a background in business management and has been working with small business to establish their online presence', 'Company Sponsored', 'USD', '55.00', 'Active', '2022-12-12 19:55:20', '2022-12-12 19:55:20'),
(2, 'C0002', 'People Management', 'Learn how to Manage People', 1, 'Tim Jhon', 'Tim Jhon has a background in business management and has been working with small business to establish their online presence', 'Company Sponsored', 'USD', '59.00', 'Active', '2022-12-12 19:55:20', '2022-12-12 19:55:20');

-- --------------------------------------------------------

--
-- Table structure for table `crons`
--

CREATE TABLE `crons` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `class` varchar(100) NOT NULL,
  `lastrun` datetime DEFAULT NULL,
  `frequency` int(4) NOT NULL,
  `time` varchar(50) NOT NULL,
  `type` enum('Minutely','Hourly','Daily','Weekly','Monthly','Yearly') DEFAULT 'Hourly',
  `status` enum('Enabled','Disabled') DEFAULT 'Enabled'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `crons`
--

INSERT INTO `crons` (`id`, `name`, `class`, `lastrun`, `frequency`, `time`, `type`, `status`) VALUES
(1, 'Email Sender Task', 'EmailSenderTask', NULL, 1, '1', 'Minutely', 'Enabled'),
(2, 'Document Expire Alert', 'DocumentExpiryNotificationTask', NULL, 1, '26', 'Hourly', 'Enabled');

-- --------------------------------------------------------

--
-- Table structure for table `currencytypes`
--

CREATE TABLE `currencytypes` (
  `id` bigint(20) NOT NULL,
  `code` varchar(3) NOT NULL DEFAULT '',
  `name` varchar(70) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `currencytypes`
--

INSERT INTO `currencytypes` (`id`, `code`, `name`) VALUES
(3, 'AED', 'Utd. Arab Emir. Dirham'),
(4, 'AFN', 'Afghanistan Afghani'),
(5, 'ALL', 'Albanian Lek'),
(6, 'ANG', 'NL Antillian Guilder'),
(7, 'AOR', 'Angolan New Kwanza'),
(8, 'ARS', 'Argentine Peso'),
(10, 'AUD', 'Australian Dollar'),
(11, 'AWG', 'Aruban Florin'),
(12, 'BBD', 'Barbados Dollar'),
(13, 'BDT', 'Bangladeshi Taka'),
(15, 'BGL', 'Bulgarian Lev'),
(16, 'BHD', 'Bahraini Dinar'),
(17, 'BIF', 'Burundi Franc'),
(18, 'BMD', 'Bermudian Dollar'),
(19, 'BND', 'Brunei Dollar'),
(20, 'BOB', 'Bolivian Boliviano'),
(21, 'BRL', 'Brazilian Real'),
(22, 'BSD', 'Bahamian Dollar'),
(23, 'BTN', 'Bhutan Ngultrum'),
(24, 'BWP', 'Botswana Pula'),
(25, 'BZD', 'Belize Dollar'),
(26, 'CAD', 'Canadian Dollar'),
(27, 'CHF', 'Swiss Franc'),
(28, 'CLP', 'Chilean Peso'),
(29, 'CNY', 'Chinese Yuan Renminbi'),
(30, 'COP', 'Colombian Peso'),
(31, 'CRC', 'Costa Rican Colon'),
(32, 'CUP', 'Cuban Peso'),
(33, 'CVE', 'Cape Verde Escudo'),
(34, 'CYP', 'Cyprus Pound'),
(37, 'DJF', 'Djibouti Franc'),
(38, 'DKK', 'Danish Krona'),
(39, 'DOP', 'Dominican Peso'),
(40, 'DZD', 'Algerian Dinar'),
(41, 'ECS', 'Ecuador Sucre'),
(42, 'EUR', 'Euro'),
(43, 'EEK', 'Estonian Krona'),
(44, 'EGP', 'Egyptian Pound'),
(46, 'ETB', 'Ethiopian Birr'),
(48, 'FJD', 'Fiji Dollar'),
(49, 'FKP', 'Falkland Islands Pound'),
(51, 'GBP', 'Pound Sterling'),
(52, 'GHC', 'Ghanaian Cedi'),
(53, 'GIP', 'Gibraltar Pound'),
(54, 'GMD', 'Gambian Dalasi'),
(55, 'GNF', 'Guinea Franc'),
(57, 'GTQ', 'Guatemalan Quetzal'),
(58, 'GYD', 'Guyanan Dollar'),
(59, 'HKD', 'Hong Kong Dollar'),
(60, 'HNL', 'Honduran Lempira'),
(61, 'HRK', 'Croatian Kuna'),
(62, 'HTG', 'Haitian Gourde'),
(63, 'HUF', 'Hungarian Forint'),
(64, 'IDR', 'Indonesian Rupiah'),
(66, 'ILS', 'Israeli New Shekel'),
(67, 'INR', 'Indian Rupee'),
(68, 'IQD', 'Iraqi Dinar'),
(69, 'IRR', 'Iranian Rial'),
(70, 'ISK', 'Iceland Krona'),
(72, 'JMD', 'Jamaican Dollar'),
(73, 'JOD', 'Jordanian Dinar'),
(74, 'JPY', 'Japanese Yen'),
(75, 'KES', 'Kenyan Shilling'),
(76, 'KHR', 'Kampuchean Riel'),
(77, 'KMF', 'Comoros Franc'),
(78, 'KPW', 'North Korean Won'),
(79, 'KRW', 'Korean Won'),
(80, 'KWD', 'Kuwaiti Dinar'),
(81, 'KYD', 'Cayman Islands Dollar'),
(82, 'KZT', 'Kazakhstan Tenge'),
(83, 'LAK', 'Lao Kip'),
(84, 'LBP', 'Lebanese Pound'),
(85, 'LKR', 'Sri Lanka Rupee'),
(86, 'LRD', 'Liberian Dollar'),
(87, 'LSL', 'Lesotho Loti'),
(88, 'LTL', 'Lithuanian Litas'),
(90, 'LVL', 'Latvian Lats'),
(91, 'LYD', 'Libyan Dinar'),
(92, 'MAD', 'Moroccan Dirham'),
(93, 'MGF', 'Malagasy Franc'),
(94, 'MMK', 'Myanmar Kyat'),
(95, 'MNT', 'Mongolian Tugrik'),
(96, 'MOP', 'Macau Pataca'),
(97, 'MRO', 'Mauritanian Ouguiya'),
(98, 'MTL', 'Maltese Lira'),
(99, 'MUR', 'Mauritius Rupee'),
(100, 'MVR', 'Maldive Rufiyaa'),
(101, 'MWK', 'Malawi Kwacha'),
(102, 'MXN', 'Mexican New Peso'),
(103, 'MYR', 'Malaysian Ringgit'),
(104, 'MZM', 'Mozambique Metical'),
(105, 'NAD', 'Namibia Dollar'),
(106, 'NGN', 'Nigerian Naira'),
(107, 'NIO', 'Nicaraguan Cordoba Oro'),
(109, 'NOK', 'Norwegian Krona'),
(110, 'NPR', 'Nepalese Rupee'),
(111, 'NZD', 'New Zealand Dollar'),
(112, 'OMR', 'Omani Rial'),
(113, 'PAB', 'Panamanian Balboa'),
(114, 'PEN', 'Peruvian Nuevo Sol'),
(115, 'PGK', 'Papua New Guinea Kina'),
(116, 'PHP', 'Philippine Peso'),
(117, 'PKR', 'Pakistan Rupee'),
(118, 'PLN', 'Polish Zloty'),
(120, 'PYG', 'Paraguay Guarani'),
(121, 'QAR', 'Qatari Rial'),
(122, 'ROL', 'Romanian Leu'),
(123, 'RUB', 'Russian Rouble'),
(125, 'SBD', 'Solomon Islands Dollar'),
(126, 'SCR', 'Seychelles Rupee'),
(127, 'SDD', 'Sudanese Dinar'),
(128, 'SDP', 'Sudanese Pound'),
(129, 'SEK', 'Swedish Krona'),
(130, 'SKK', 'Slovak Koruna'),
(131, 'SGD', 'Singapore Dollar'),
(132, 'SHP', 'St. Helena Pound'),
(135, 'SLL', 'Sierra Leone Leone'),
(136, 'SOS', 'Somali Shilling'),
(137, 'SRD', 'Surinamese Dollar'),
(138, 'STD', 'Sao Tome/Principe Dobra'),
(139, 'SVC', 'El Salvador Colon'),
(140, 'SYP', 'Syrian Pound'),
(141, 'SZL', 'Swaziland Lilangeni'),
(142, 'THB', 'Thai Baht'),
(143, 'TND', 'Tunisian Dinar'),
(144, 'TOP', 'Tongan Pa\'anga'),
(145, 'TRL', 'Turkish Lira'),
(146, 'TTD', 'Trinidad/Tobago Dollar'),
(147, 'TWD', 'Taiwan Dollar'),
(148, 'TZS', 'Tanzanian Shilling'),
(149, 'UAH', 'Ukraine Hryvnia'),
(150, 'UGX', 'Uganda Shilling'),
(151, 'USD', 'United States Dollar'),
(152, 'UYP', 'Uruguayan Peso'),
(153, 'VEB', 'Venezuelan Bolivar'),
(154, 'VND', 'Vietnamese Dong'),
(155, 'VUV', 'Vanuatu Vatu'),
(156, 'WST', 'Samoan Tala'),
(158, 'XAF', 'CFA Franc BEAC'),
(159, 'XAG', 'Silver (oz.)'),
(160, 'XAU', 'Gold (oz.)'),
(161, 'XCD', 'Eastern Caribbean Dollars'),
(162, 'XOF', 'CFA Franc BCEAO'),
(163, 'XPD', 'Palladium (oz.)'),
(164, 'XPF', 'CFP Franc'),
(165, 'XPT', 'Platinum (oz.)'),
(166, 'YER', 'Yemeni Riyal'),
(167, 'YUM', 'Yugoslavian Dinar'),
(168, 'ZAR', 'South African Rand'),
(169, 'ZRN', 'New Zaire'),
(170, 'ZWD', 'Zimbabwe Dollar'),
(171, 'CZK', 'Czech Koruna'),
(172, 'MXP', 'Mexican Peso'),
(173, 'SAR', 'Saudi Arabia Riyal'),
(175, 'YUN', 'Yugoslav Dinar'),
(176, 'ZMK', 'Zambian Kwacha'),
(177, 'ARP', 'Argentina Pesos'),
(179, 'XDR', 'IMF Special Drawing Right'),
(180, 'RUR', 'Russia Rubles');

-- --------------------------------------------------------

--
-- Table structure for table `customfields`
--

CREATE TABLE `customfields` (
  `id` bigint(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `data` text DEFAULT NULL,
  `display` enum('Form','Table and Form','Hidden') DEFAULT 'Form',
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `field_type` varchar(20) DEFAULT NULL,
  `field_label` varchar(50) DEFAULT NULL,
  `field_validation` varchar(50) DEFAULT NULL,
  `field_options` varchar(500) DEFAULT NULL,
  `display_order` int(11) DEFAULT 0,
  `display_section` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customfieldvalues`
--

CREATE TABLE `customfieldvalues` (
  `id` bigint(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `name` varchar(60) NOT NULL,
  `object_id` varchar(60) NOT NULL,
  `value` text DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `customfieldvalues`
--

INSERT INTO `customfieldvalues` (`id`, `type`, `name`, `object_id`, `value`, `updated`, `created`) VALUES
(1, 'User', 'csrf', '52', 'a09c2706331925645b59a968810a4997f33dea04', '2022-12-29 13:25:15', '2022-12-27 16:13:01'),
(2, 'User', 'csrf', '55', 'a09c2706331925645b59a968810a4997f33dea04', '2022-12-29 13:24:53', '2022-12-27 20:03:26'),
(3, 'User', 'csrf', '53', '98d0a47b21fff1b5520070cda605d6705f5f22fa', '2022-12-29 16:17:29', '2022-12-29 16:03:42'),
(4, 'User', 'csrf', '1', '0019de63fa50e7e7255d1d27c4e8ecd2ba90bf90', '2023-01-05 17:30:23', '2023-01-05 17:30:23'),
(7, 'User', 'csrf', '69', '3e1a698bdc832607735740f52b95fe4c447a844e', '2023-01-25 11:11:14', '2023-01-10 15:22:45'),
(8, 'User', 'csrf', '68', '001f1dfb7a233b71806dde3df6fc9784a2f207d7', '2023-02-14 19:34:04', '2023-01-10 15:31:10'),
(9, 'User', 'csrf', '66', '3e1a698bdc832607735740f52b95fe4c447a844e', '2023-01-25 11:20:35', '2023-01-11 12:37:27');

-- --------------------------------------------------------

--
-- Table structure for table `dataentrybackups`
--

CREATE TABLE `dataentrybackups` (
  `id` bigint(20) NOT NULL,
  `tableType` varchar(200) DEFAULT NULL,
  `data` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dataimport`
--

CREATE TABLE `dataimport` (
  `id` bigint(20) NOT NULL,
  `name` varchar(60) NOT NULL,
  `dataType` varchar(60) NOT NULL,
  `details` text DEFAULT NULL,
  `columns` text DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `objectType` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `dataimport`
--

INSERT INTO `dataimport` (`id`, `name`, `dataType`, `details`, `columns`, `updated`, `created`, `objectType`) VALUES
(1, 'Employee Data Import', 'EmployeeDataImporter', '', '[{\"name\":\"employee_id\",\"title\":\"Employee ID\",\"type\":\"Normal\",\"dependOn\":\"NULL\",\"dependOnField\":\"NULL\",\"idField\":\"No\",\"sampleValue\":\"EMP05011\",\"help\":\"Employee ID\",\"id\":\"columns_7\"},{\"name\":\"first_name\",\"title\":\"First name\",\"type\":\"Normal\",\"dependOn\":\"NULL\",\"dependOnField\":\"NULL\",\"idField\":\"No\",\"sampleValue\":\"Chris\",\"help\":\"First name\",\"id\":\"columns_3\"},{\"name\":\"last_name\",\"title\":\"Last name\",\"type\":\"Normal\",\"dependOn\":\"NULL\",\"dependOnField\":\"NULL\",\"idField\":\"No\",\"sampleValue\":\"Doe\",\"help\":\"Last name\",\"id\":\"columns_6\"},{\"name\":\"address1\",\"title\":\"Address line 1\",\"type\":\"Normal\",\"dependOn\":\"NULL\",\"dependOnField\":\"NULL\",\"idField\":\"No\",\"sampleValue\":\"Abc Street\",\"help\":\"Address line 1\",\"id\":\"columns_8\"},{\"name\":\"address2\",\"title\":\"Address line 2\",\"type\":\"Normal\",\"dependOn\":\"NULL\",\"dependOnField\":\"NULL\",\"idField\":\"No\",\"sampleValue\":\"10\",\"help\":\"Address line 2\",\"id\":\"columns_9\"},{\"name\":\"home_phone\",\"title\":\"Home phone\",\"type\":\"Normal\",\"dependOn\":\"NULL\",\"dependOnField\":\"NULL\",\"idField\":\"No\",\"sampleValue\":\"+409 782324434\",\"help\":\"Home phone\",\"id\":\"columns_14\"},{\"name\":\"mobile_phone\",\"title\":\"Mobile phone\",\"type\":\"Normal\",\"dependOn\":\"NULL\",\"dependOnField\":\"NULL\",\"idField\":\"No\",\"sampleValue\":\"+49 176 4545454545\",\"help\":\"Mobile phone\",\"id\":\"columns_15\"},{\"name\":\"work_email\",\"title\":\"Work email\",\"type\":\"Normal\",\"dependOn\":\"NULL\",\"dependOnField\":\"NULL\",\"idField\":\"No\",\"sampleValue\":\"user@hihellohr.com\",\"help\":\"Work email\",\"id\":\"columns_16\"},{\"name\":\"gender\",\"title\":\"Gender\",\"type\":\"Normal\",\"dependOn\":\"NULL\",\"dependOnField\":\"NULL\",\"idField\":\"No\",\"sampleValue\":\"Male\",\"help\":\"Allowed values (Male, Female)\",\"id\":\"columns_17\"},{\"name\":\"marital_status\",\"title\":\"Marital status\",\"type\":\"Normal\",\"dependOn\":\"NULL\",\"dependOnField\":\"NULL\",\"idField\":\"No\",\"sampleValue\":\"Single\",\"help\":\"Marital status\",\"id\":\"columns_18\"},{\"name\":\"birthday\",\"title\":\"Birthday\",\"type\":\"Normal\",\"dependOn\":\"NULL\",\"dependOnField\":\"NULL\",\"idField\":\"No\",\"sampleValue\":\"2003-12-15\",\"help\":\"Birthday\",\"id\":\"columns_20\"},{\"name\":\"nationality\",\"title\":\"Nationality\",\"type\":\"Reference\",\"dependOn\":\"Nationality\",\"dependOnField\":\"name\",\"idField\":\"No\",\"sampleValue\":\"Austrian\",\"help\":\"Name of a Nationality defined under System->Metadata\",\"id\":\"columns_22\"},{\"name\":\"ethnicity\",\"title\":\"Ethnicity\",\"type\":\"Reference\",\"dependOn\":\"Ethnicity\",\"dependOnField\":\"name\",\"idField\":\"No\",\"sampleValue\":\"Asian American\",\"help\":\"Name of an Ethnicity defined under System -> Metadata\",\"id\":\"columns_23\"},{\"name\":\"ssn_num\",\"title\":\"Social security number\",\"type\":\"Normal\",\"dependOn\":\"NULL\",\"dependOnField\":\"NULL\",\"idField\":\"No\",\"sampleValue\":\"34324903955WS\",\"help\":\"Social security number\",\"id\":\"columns_31\"},{\"name\":\"job_title\",\"title\":\"Job title\",\"type\":\"Reference\",\"dependOn\":\"JobTitle\",\"dependOnField\":\"name\",\"idField\":\"No\",\"sampleValue\":\"Software Engineer\",\"help\":\"A Job title defined under Admin -> Job Details Setup\",\"id\":\"columns_32\"},{\"name\":\"employment_status\",\"title\":\"Employment status\",\"type\":\"Reference\",\"dependOn\":\"EmploymentStatus\",\"dependOnField\":\"name\",\"idField\":\"No\",\"sampleValue\":\"Full Time\",\"help\":\"Employment status defined under Admin -> Job Details\",\"id\":\"columns_33\"},{\"name\":\"joined_date\",\"title\":\"Joined date\",\"type\":\"Normal\",\"dependOn\":\"NULL\",\"dependOnField\":\"NULL\",\"idField\":\"No\",\"sampleValue\":\"2015-04-17\",\"help\":\"Joined date (YYYY-MM-DD format)\",\"id\":\"columns_36\"},{\"name\":\"department\",\"title\":\"Department\",\"type\":\"Reference\",\"dependOn\":\"CompanyStructure\",\"dependOnField\":\"title\",\"idField\":\"No\",\"sampleValue\":\"Head Office\",\"help\":\"Name of a Department\",\"id\":\"columns_38\"}]', '2022-12-13 11:49:00', '2016-06-02 18:56:32', NULL),
(2, 'Attendance Data Import', 'AttendanceDataImporter', '', '[{\"name\":\"employee\",\"title\":\"Employee\",\"type\":\"Reference\",\"dependOn\":\"Employee\",\"dependOnField\":\"employee_id\",\"idField\":\"Yes\",\"sampleValue\":\"EMP050\",\"help\":\"Employee id of the employee of the attendance record\",\"id\":\"columns_1\"},{\"name\":\"in_time\",\"title\":\"In time\",\"type\":\"Normal\",\"dependOn\":\"NULL\",\"dependOnField\":\"NULL\",\"idField\":\"No\",\"sampleValue\":\"2019-11-06 08:15:00\",\"help\":\"Time in format YYYY-MM-DD hh:mm:ss (use 24 hour time)\",\"id\":\"columns_2\"},{\"name\":\"out_time\",\"title\":\"Out time\",\"type\":\"Normal\",\"dependOn\":\"NULL\",\"dependOnField\":\"NULL\",\"idField\":\"No\",\"sampleValue\":\"2019-11-06 15:18:00\",\"help\":\"Time in format YYYY-MM-DD hh:mm:ss (use 24 hour time)\",\"id\":\"columns_3\"},{\"name\":\"note\",\"title\":\"Note\",\"type\":\"Normal\",\"dependOn\":\"NULL\",\"dependOnField\":\"NULL\",\"idField\":\"No\",\"sampleValue\":\"Leaving a bit early today\",\"help\":\"Free text (optional)\",\"id\":\"columns_4\"}]', '2022-12-13 11:49:00', '2016-08-14 02:51:56', NULL),
(3, 'Payroll Data Import', 'PayrollDataImporter', '', '[]', '2016-08-14 02:51:56', '2016-08-14 02:51:56', NULL),
(4, 'Supervisor and Approver Import', 'EmployeeDataImporter', '', '[{\"name\":\"employee_id\",\"title\":\"Employee\",\"type\":\"Reference\",\"dependOn\":\"Employee\",\"dependOnField\":\"employee_id\",\"idField\":\"Yes\",\"sampleValue\":\"EMP050\",\"help\":\"Id of the employee to update approver details\",\"id\":\"columns_1\"},{\"name\":\"supervisor\",\"title\":\"Supervisor\",\"type\":\"Reference\",\"dependOn\":\"Employee\",\"dependOnField\":\"employee_id\",\"idField\":\"No\",\"sampleValue\":\"EMP004\",\"help\":\"Employee id of the supervisor\",\"id\":\"columns_6\"},{\"name\":\"approver1\",\"title\":\"Approver 1\",\"type\":\"Reference\",\"dependOn\":\"Employee\",\"dependOnField\":\"employee_id\",\"idField\":\"No\",\"sampleValue\":\"EMP001\",\"help\":\"Employee id of the first approver (can be empty)\",\"id\":\"columns_4\"},{\"name\":\"approver2\",\"title\":\"Approver 2\",\"type\":\"Reference\",\"dependOn\":\"Employee\",\"dependOnField\":\"employee_id\",\"idField\":\"No\",\"sampleValue\":\"EMP002\",\"help\":\"Employee id of the second approver (can be empty)\",\"id\":\"columns_3\"},{\"name\":\"approver3\",\"title\":\"Approver 3\",\"type\":\"Reference\",\"dependOn\":\"Employee\",\"dependOnField\":\"employee_id\",\"idField\":\"No\",\"sampleValue\":\"EMP003\",\"help\":\"Employee id of the third approver (can be empty)\",\"id\":\"columns_5\"}]', '2022-12-13 11:49:00', '2022-12-13 11:49:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dataimportfiles`
--

CREATE TABLE `dataimportfiles` (
  `id` bigint(20) NOT NULL,
  `name` varchar(60) NOT NULL,
  `data_import_definition` varchar(200) NOT NULL,
  `status` varchar(15) DEFAULT NULL,
  `file` varchar(100) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deductiongroup`
--

CREATE TABLE `deductiongroup` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `deductiongroup`
--

INSERT INTO `deductiongroup` (`id`, `name`, `description`) VALUES
(1, 'DipoleTechi Payroll Calculation', '');

-- --------------------------------------------------------

--
-- Table structure for table `deductions`
--

CREATE TABLE `deductions` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `componentType` varchar(250) DEFAULT NULL,
  `component` varchar(250) DEFAULT NULL,
  `payrollColumn` int(11) DEFAULT NULL,
  `rangeAmounts` text DEFAULT NULL,
  `deduction_group` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `deductions`
--

INSERT INTO `deductions` (`id`, `name`, `componentType`, `component`, `payrollColumn`, `rangeAmounts`, `deduction_group`) VALUES
(1, 'India - Tax', '[]', '[\"1\",\"2\"]', 1, '[{\"lowerCondition\":\"No Lower Limit\",\"lowerLimit\":0,\"upperCondition\":\"No Upper Limit\",\"upperLimit\":0,\"amount\":\"B * 0.10\",\"id\":\"rangeAmounts_1\"}]', 1),
(2, 'Hourly Calculation', '[\"3\"]', '[]', NULL, '[{\"lowerCondition\":\"No Lower Limit\",\"lowerLimit\":0,\"upperCondition\":\"No Upper Limit\",\"upperLimit\":0,\"amount\":\"X / 8\",\"id\":\"rangeAmounts_1\"}]', 1);

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` text DEFAULT NULL,
  `expire_notification` enum('Yes','No') DEFAULT 'Yes',
  `expire_notification_month` enum('Yes','No') DEFAULT 'Yes',
  `expire_notification_week` enum('Yes','No') DEFAULT 'Yes',
  `expire_notification_day` enum('Yes','No') DEFAULT 'Yes',
  `sign` enum('Yes','No') DEFAULT 'Yes',
  `sign_label` varchar(500) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `share_with_employee` enum('Yes','No') DEFAULT 'Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `name`, `details`, `expire_notification`, `expire_notification_month`, `expire_notification_week`, `expire_notification_day`, `sign`, `sign_label`, `created`, `updated`, `share_with_employee`) VALUES
(1, 'ID Copy', 'Your ID copy', 'Yes', 'Yes', 'Yes', 'Yes', 'No', NULL, '2022-12-12 19:55:20', '2022-12-12 19:55:20', 'Yes'),
(2, 'Degree Certificate', 'Degree Certificate', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', NULL, '2022-12-12 19:55:20', '2022-12-12 19:55:20', 'Yes'),
(3, 'Driving License', 'Driving License', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', NULL, '2022-12-12 19:55:20', '2022-12-12 19:55:20', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `educationlevel`
--

CREATE TABLE `educationlevel` (
  `id` bigint(20) NOT NULL,
  `name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `educationlevel`
--

INSERT INTO `educationlevel` (`id`, `name`) VALUES
(1, 'Unspecified'),
(2, 'High School or equivalent'),
(3, 'Certification'),
(4, 'Vocational'),
(5, 'Associate Degree'),
(6, 'Bachelor\'s Degree'),
(7, 'Master\'s Degree'),
(8, 'Doctorate'),
(9, 'Professional'),
(10, 'Some College Coursework Completed'),
(11, 'Vocational - HS Diploma'),
(12, 'Vocational - Degree'),
(13, 'Some High School Coursework');

-- --------------------------------------------------------

--
-- Table structure for table `educations`
--

CREATE TABLE `educations` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `educations`
--

INSERT INTO `educations` (`id`, `name`, `description`) VALUES
(1, 'Bachelors Degree', 'Bachelors Degree'),
(2, 'Diploma', 'Diploma'),
(3, 'Masters Degree', 'Masters Degree'),
(4, 'Doctorate', 'Doctorate');

-- --------------------------------------------------------

--
-- Table structure for table `emaillog`
--

CREATE TABLE `emaillog` (
  `id` bigint(20) NOT NULL,
  `subject` varchar(300) NOT NULL,
  `toEmail` varchar(300) NOT NULL,
  `body` text DEFAULT NULL,
  `cclist` varchar(500) DEFAULT NULL,
  `bcclist` varchar(500) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `status` enum('Pending','Sent','Failed') DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `emaillog`
--

INSERT INTO `emaillog` (`id`, `subject`, `toEmail`, `body`, `cclist`, `bcclist`, `created`, `updated`, `status`) VALUES
(1, 'Your HiHelloHR account is ready', 'robin001@gmail.com', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n    <style type=\"text/css\" rel=\"stylesheet\" media=\"all\">\n        @media only screen and (max-width: 600px) {\n            .email-body_inner,\n            .email-footer {\n                width: 100% !important;\n            }\n        }\n        @media only screen and (max-width: 500px) {\n            .button {\n                width: 100% !important;\n            }\n        }\n        table {\n            border-collapse: collapse;\n            width: 100%;\n        }\n        th, td {\n            padding: 8px;\n            text-align: left;\n            border-bottom: 1px solid #ddd;\n        }\n        tr:nth-child(even) {\n            background-color: #F2F2F2;\n        }\n    </style>\n</head>\n<body dir=\"ltr\" style=\"height: 100%; margin: 0; line-height: 1.4; background-color: #F2F4F6; color: #74787E; -webkit-text-size-adjust: none; font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; width: 100%;\">\n<!-- Visually Hidden Preheader Text : BEGIN -->\n<div style=\"display: none; font-size: 1px; line-height: 1px; max-height: 0px; max-width: 0px; opacity: 0; overflow: hidden; mso-hide: all; font-family: sans-serif;\">\n    Notification from HiHelloHR.com\n</div>\n<!-- Visually Hidden Preheader Text : END -->\n<table class=\"email-wrapper\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; width: 100%; margin: 0; padding: 0; background-color: #F2F4F6;\" bgcolor=\"#F2F4F6\">\n    <tr>\n        <td align=\"center\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box;\">\n            <table class=\"email-content\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; width: 100%; margin: 0; padding: 0;\">\n                <!-- Logo -->\n                <tr>\n                    <td class=\"email-masthead\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; padding: 25px 0; text-align: center;\" align=\"center\">\n                        <a class=\"email-masthead_name\" href=\"https://hihellohr.com\" target=\"_blank\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; font-size: 16px; font-weight: bold; color: #2F3133; text-decoration: none; text-shadow: 0 1px 0 white;\">\n\n                            <img src=\"http://localhost/hrm/hihellohrm/web/images/logo.png\" class=\"email-logo\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; max-height: 50px;\">\n\n                        </a>\n                    </td>\n                </tr>\n                <!-- Email Body -->\n                <tr>\n                    <td class=\"email-body\" width=\"100%\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; width: 100%; margin: 0; padding: 0; border-top: 1px solid #EDEFF2; border-bottom: 1px solid #EDEFF2; background-color: #FFF;\" bgcolor=\"#FFF\">\n                        <table class=\"email-body_inner\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; width: 570px; margin: 0 auto; padding: 0;\">\n                            <!-- Body content -->\n                            <tr>\n                                <td class=\"content-cell\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; padding: 35px;\">\n                                    <p style=\"margin-top: 0; color: #74787E; font-size: 16px; line-height: 1.5em; font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box;\">\n                                        Dear Robin Wart,<br/><br/>\nYour account in <b>HiHelloHR</b> has been created on <a href=\"http://localhost/hrm/hihellohrm/app/\">http://localhost/hrm/hihellohrm/app/</a><br/><br/>\n \n<b>Please find your account information below:</b><br/><br/>\nUsername: <b>Robin001</b><br/>\nEmail:    <b>robin001@gmail.com</b> (You can use, username or email to login)<br/>\nTemporary Password: <b>kPqSSi</b> (Strongly advised to change this password once logged in)<br/>\n<br/>\n\n\nLogin to HiHelloHR here: (<b><a href=\"http://localhost/hrm/hihellohrm/app/\">http://localhost/hrm/hihellohrm/app/</a></b>)<br/>\n<table class=\"body-action\" align=\"center\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; width: 100%; margin: 30px auto; padding: 0; text-align: center;\">\n    <tr>\n        <td align=\"center\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box;\">\n            <div style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box;\">\n                <a href=\"http://localhost/hrm/hihellohrm/app/\" class=\"button\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; display: inline-block; width: 200px; border-radius: 3px; color: #ffffff; font-size: 15px; line-height: 45px; text-align: center; text-decoration: none; -webkit-text-size-adjust: none; mso-hide: all; background-color: #22BC66;\" target=\"_blank\">Get Started</a>\n            </div>\n        </td>\n    </tr>\n</table>\n\n<font face=\"Arial, sans-serif\" size=\"1\" color=\"#4a4a4a\">\nTHIS IS AN AUTOMATED EMAIL - REPLIES WILL BE SENT TO shubham@hihellohr.com\n</font>\n<br/>\n<br/>\n\n                                    </p>\n                                </td>\n                            </tr>\n                        </table>\n                    </td>\n                </tr>\n                <tr>\n                    <td style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box;\">\n                        <table class=\"email-footer\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; width: 570px; margin: 0 auto; padding: 0; text-align: center;\">\n                            <tr>\n                                <td class=\"content-cell\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; padding: 35px;\">\n                                    <p class=\"sub center\" style=\"margin-top: 0; line-height: 1.5em; font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; color: #AEAEAE; font-size: 12px; text-align: center;\">\n                                        You are receiving this email because your organization has added you as an employee <a href=\"http://localhost/hrm/hihellohrm/app/\"><strong><font color=\"405A6A\">http://localhost/hrm/hihellohrm/app/</font></strong></a>. If you are not the intended recipient please inform application admin shubham@hihellohr.com.\n                                    </p>\n                                    <p class=\"sub center\" style=\"margin-top: 0; line-height: 1.5em; font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; color: #AEAEAE; font-size: 12px; text-align: center;\">\n                                        HiHelloHR.com</span>\n                                    </p>\n                                    <p class=\"sub center\" style=\"margin-top: 0; line-height: 1.5em; font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; color: #AEAEAE; font-size: 12px; text-align: center;\">\n                                        &copy; 2018 <a href=\"https://hihellohr.com\" target=\"_blank\" style=\"color: #3869D4; font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box;\">HiHelloHR</a>\n                                    </p>\n                                </td>\n                            </tr>\n                        </table>\n                    </td>\n                </tr>\n            </table>\n        </td>\n    </tr>\n</table>\n</body>\n</html>\n', '', '', '2023-01-02 17:45:08', '2023-01-02 17:45:08', 'Sent'),
(2, 'Your HiHelloHR account is ready', 'paul990@gmail.com', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n    <style type=\"text/css\" rel=\"stylesheet\" media=\"all\">\r\n        @media only screen and (max-width: 600px) {\r\n            .email-body_inner,\r\n            .email-footer {\r\n                width: 100% !important;\r\n            }\r\n        }\r\n        @media only screen and (max-width: 500px) {\r\n            .button {\r\n                width: 100% !important;\r\n            }\r\n        }\r\n        table {\r\n            border-collapse: collapse;\r\n            width: 100%;\r\n        }\r\n        th, td {\r\n            padding: 8px;\r\n            text-align: left;\r\n            border-bottom: 1px solid #ddd;\r\n        }\r\n        tr:nth-child(even) {\r\n            background-color: #F2F2F2;\r\n        }\r\n    </style>\r\n</head>\r\n<body dir=\"ltr\" style=\"height: 100%; margin: 0; line-height: 1.4; background-color: #F2F4F6; color: #74787E; -webkit-text-size-adjust: none; font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; width: 100%;\">\r\n<!-- Visually Hidden Preheader Text : BEGIN -->\r\n<div style=\"display: none; font-size: 1px; line-height: 1px; max-height: 0px; max-width: 0px; opacity: 0; overflow: hidden; mso-hide: all; font-family: sans-serif;\">\r\n    Notification from HiHelloHR.com\r\n</div>\r\n<!-- Visually Hidden Preheader Text : END -->\r\n<table class=\"email-wrapper\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; width: 100%; margin: 0; padding: 0; background-color: #F2F4F6;\" bgcolor=\"#F2F4F6\">\r\n    <tr>\r\n        <td align=\"center\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box;\">\r\n            <table class=\"email-content\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; width: 100%; margin: 0; padding: 0;\">\r\n                <!-- Logo -->\r\n                <tr>\r\n                    <td class=\"email-masthead\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; padding: 25px 0; text-align: center;\" align=\"center\">\r\n                        <a class=\"email-masthead_name\" href=\"https://hihellohr.com\" target=\"_blank\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; font-size: 16px; font-weight: bold; color: #2F3133; text-decoration: none; text-shadow: 0 1px 0 white;\">\r\n\r\n                            <img src=\"http://localhost/hrm/hihellohrm/web/images/logo.png\" class=\"email-logo\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; max-height: 50px;\">\r\n\r\n                        </a>\r\n                    </td>\r\n                </tr>\r\n                <!-- Email Body -->\r\n                <tr>\r\n                    <td class=\"email-body\" width=\"100%\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; width: 100%; margin: 0; padding: 0; border-top: 1px solid #EDEFF2; border-bottom: 1px solid #EDEFF2; background-color: #FFF;\" bgcolor=\"#FFF\">\r\n                        <table class=\"email-body_inner\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; width: 570px; margin: 0 auto; padding: 0;\">\r\n                            <!-- Body content -->\r\n                            <tr>\r\n                                <td class=\"content-cell\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; padding: 35px;\">\r\n                                    <p style=\"margin-top: 0; color: #74787E; font-size: 16px; line-height: 1.5em; font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box;\">\r\n                                        \r\n                                    </p>\r\n                                </td>\r\n                            </tr>\r\n                        </table>\r\n                    </td>\r\n                </tr>\r\n                <tr>\r\n                    <td style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box;\">\r\n                        <table class=\"email-footer\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; width: 570px; margin: 0 auto; padding: 0; text-align: center;\">\r\n                            <tr>\r\n                                <td class=\"content-cell\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; padding: 35px;\">\r\n                                    <p class=\"sub center\" style=\"margin-top: 0; line-height: 1.5em; font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; color: #AEAEAE; font-size: 12px; text-align: center;\">\r\n                                        You are receiving this email because your organization has added you as an employee <a href=\"http://localhost/hrm/hihellohrm/app/\"><strong><font color=\"405A6A\">http://localhost/hrm/hihellohrm/app/</font></strong></a>. If you are not the intended recipient please inform application admin shubham@hihellohr.com.\r\n                                    </p>\r\n                                    <p class=\"sub center\" style=\"margin-top: 0; line-height: 1.5em; font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; color: #AEAEAE; font-size: 12px; text-align: center;\">\r\n                                        HiHelloHR.com</span>\r\n                                    </p>\r\n                                    <p class=\"sub center\" style=\"margin-top: 0; line-height: 1.5em; font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; color: #AEAEAE; font-size: 12px; text-align: center;\">\r\n                                        &copy; 2018 <a href=\"https://hihellohr.com\" target=\"_blank\" style=\"color: #3869D4; font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box;\">HiHelloHR</a>\r\n                                    </p>\r\n                                </td>\r\n                            </tr>\r\n                        </table>\r\n                    </td>\r\n                </tr>\r\n            </table>\r\n        </td>\r\n    </tr>\r\n</table>\r\n</body>\r\n</html>\r\n', '', '', '2023-01-05 19:00:51', '2023-01-05 19:00:51', 'Sent'),
(3, 'Your HiHelloHR account is ready', 'Vipin010@gmail.com', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n    <style type=\"text/css\" rel=\"stylesheet\" media=\"all\">\r\n        @media only screen and (max-width: 600px) {\r\n            .email-body_inner,\r\n            .email-footer {\r\n                width: 100% !important;\r\n            }\r\n        }\r\n        @media only screen and (max-width: 500px) {\r\n            .button {\r\n                width: 100% !important;\r\n            }\r\n        }\r\n        table {\r\n            border-collapse: collapse;\r\n            width: 100%;\r\n        }\r\n        th, td {\r\n            padding: 8px;\r\n            text-align: left;\r\n            border-bottom: 1px solid #ddd;\r\n        }\r\n        tr:nth-child(even) {\r\n            background-color: #F2F2F2;\r\n        }\r\n    </style>\r\n</head>\r\n<body dir=\"ltr\" style=\"height: 100%; margin: 0; line-height: 1.4; background-color: #F2F4F6; color: #74787E; -webkit-text-size-adjust: none; font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; width: 100%;\">\r\n<!-- Visually Hidden Preheader Text : BEGIN -->\r\n<div style=\"display: none; font-size: 1px; line-height: 1px; max-height: 0px; max-width: 0px; opacity: 0; overflow: hidden; mso-hide: all; font-family: sans-serif;\">\r\n    Notification from HiHelloHR.com\r\n</div>\r\n<!-- Visually Hidden Preheader Text : END -->\r\n<table class=\"email-wrapper\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; width: 100%; margin: 0; padding: 0; background-color: #F2F4F6;\" bgcolor=\"#F2F4F6\">\r\n    <tr>\r\n        <td align=\"center\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box;\">\r\n            <table class=\"email-content\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; width: 100%; margin: 0; padding: 0;\">\r\n                <!-- Logo -->\r\n                <tr>\r\n                    <td class=\"email-masthead\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; padding: 25px 0; text-align: center;\" align=\"center\">\r\n                        <a class=\"email-masthead_name\" href=\"https://hihellohr.com\" target=\"_blank\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; font-size: 16px; font-weight: bold; color: #2F3133; text-decoration: none; text-shadow: 0 1px 0 white;\">\r\n\r\n                            <img src=\"http://localhost/hrm/hihellohrm/web/images/logo.png\" class=\"email-logo\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; max-height: 50px;\">\r\n\r\n                        </a>\r\n                    </td>\r\n                </tr>\r\n                <!-- Email Body -->\r\n                <tr>\r\n                    <td class=\"email-body\" width=\"100%\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; width: 100%; margin: 0; padding: 0; border-top: 1px solid #EDEFF2; border-bottom: 1px solid #EDEFF2; background-color: #FFF;\" bgcolor=\"#FFF\">\r\n                        <table class=\"email-body_inner\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; width: 570px; margin: 0 auto; padding: 0;\">\r\n                            <!-- Body content -->\r\n                            <tr>\r\n                                <td class=\"content-cell\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; padding: 35px;\">\r\n                                    <p style=\"margin-top: 0; color: #74787E; font-size: 16px; line-height: 1.5em; font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box;\">\r\n                                        \r\n                                    </p>\r\n                                </td>\r\n                            </tr>\r\n                        </table>\r\n                    </td>\r\n                </tr>\r\n                <tr>\r\n                    <td style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box;\">\r\n                        <table class=\"email-footer\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; width: 570px; margin: 0 auto; padding: 0; text-align: center;\">\r\n                            <tr>\r\n                                <td class=\"content-cell\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; padding: 35px;\">\r\n                                    <p class=\"sub center\" style=\"margin-top: 0; line-height: 1.5em; font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; color: #AEAEAE; font-size: 12px; text-align: center;\">\r\n                                        You are receiving this email because your organization has added you as an employee <a href=\"http://localhost/hrm/hihellohrm/app/\"><strong><font color=\"405A6A\">http://localhost/hrm/hihellohrm/app/</font></strong></a>. If you are not the intended recipient please inform application admin shubham@hihellohr.com.\r\n                                    </p>\r\n                                    <p class=\"sub center\" style=\"margin-top: 0; line-height: 1.5em; font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; color: #AEAEAE; font-size: 12px; text-align: center;\">\r\n                                        HiHelloHR.com</span>\r\n                                    </p>\r\n                                    <p class=\"sub center\" style=\"margin-top: 0; line-height: 1.5em; font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; color: #AEAEAE; font-size: 12px; text-align: center;\">\r\n                                        &copy; 2018 <a href=\"https://hihellohr.com\" target=\"_blank\" style=\"color: #3869D4; font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box;\">HiHelloHR</a>\r\n                                    </p>\r\n                                </td>\r\n                            </tr>\r\n                        </table>\r\n                    </td>\r\n                </tr>\r\n            </table>\r\n        </td>\r\n    </tr>\r\n</table>\r\n</body>\r\n</html>\r\n', '', '', '2023-01-05 19:01:41', '2023-01-05 19:01:41', 'Sent'),
(4, 'Your HiHelloHR account is ready', 'Vipin010@gmail.com', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n    <style type=\"text/css\" rel=\"stylesheet\" media=\"all\">\r\n        @media only screen and (max-width: 600px) {\r\n            .email-body_inner,\r\n            .email-footer {\r\n                width: 100% !important;\r\n            }\r\n        }\r\n        @media only screen and (max-width: 500px) {\r\n            .button {\r\n                width: 100% !important;\r\n            }\r\n        }\r\n        table {\r\n            border-collapse: collapse;\r\n            width: 100%;\r\n        }\r\n        th, td {\r\n            padding: 8px;\r\n            text-align: left;\r\n            border-bottom: 1px solid #ddd;\r\n        }\r\n        tr:nth-child(even) {\r\n            background-color: #F2F2F2;\r\n        }\r\n    </style>\r\n</head>\r\n<body dir=\"ltr\" style=\"height: 100%; margin: 0; line-height: 1.4; background-color: #F2F4F6; color: #74787E; -webkit-text-size-adjust: none; font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; width: 100%;\">\r\n<!-- Visually Hidden Preheader Text : BEGIN -->\r\n<div style=\"display: none; font-size: 1px; line-height: 1px; max-height: 0px; max-width: 0px; opacity: 0; overflow: hidden; mso-hide: all; font-family: sans-serif;\">\r\n    Notification from HiHelloHR.com\r\n</div>\r\n<!-- Visually Hidden Preheader Text : END -->\r\n<table class=\"email-wrapper\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; width: 100%; margin: 0; padding: 0; background-color: #F2F4F6;\" bgcolor=\"#F2F4F6\">\r\n    <tr>\r\n        <td align=\"center\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box;\">\r\n            <table class=\"email-content\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; width: 100%; margin: 0; padding: 0;\">\r\n                <!-- Logo -->\r\n                <tr>\r\n                    <td class=\"email-masthead\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; padding: 25px 0; text-align: center;\" align=\"center\">\r\n                        <a class=\"email-masthead_name\" href=\"https://hihellohr.com\" target=\"_blank\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; font-size: 16px; font-weight: bold; color: #2F3133; text-decoration: none; text-shadow: 0 1px 0 white;\">\r\n\r\n                            <img src=\"http://localhost/hrm/hihellohrm/web/images/logo.png\" class=\"email-logo\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; max-height: 50px;\">\r\n\r\n                        </a>\r\n                    </td>\r\n                </tr>\r\n                <!-- Email Body -->\r\n                <tr>\r\n                    <td class=\"email-body\" width=\"100%\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; width: 100%; margin: 0; padding: 0; border-top: 1px solid #EDEFF2; border-bottom: 1px solid #EDEFF2; background-color: #FFF;\" bgcolor=\"#FFF\">\r\n                        <table class=\"email-body_inner\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; width: 570px; margin: 0 auto; padding: 0;\">\r\n                            <!-- Body content -->\r\n                            <tr>\r\n                                <td class=\"content-cell\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; padding: 35px;\">\r\n                                    <p style=\"margin-top: 0; color: #74787E; font-size: 16px; line-height: 1.5em; font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box;\">\r\n                                        Dear Vipin Sood,<br/><br/>\r\nYour account in <b>HiHelloHR</b> has been created on <a href=\"http://localhost/hrm/hihellohrm/app/\">http://localhost/hrm/hihellohrm/app/</a><br/><br/>\r\n \r\n<b>Please find your account information below:</b><br/><br/>\r\nUsername: <b>Vipin010</b><br/>\r\nEmail:    <b>Vipin010@gmail.com</b> (You can use, username or email to login)<br/>\r\nTemporary Password: <b>vJZXed</b> (Strongly advised to change this password once logged in)<br/>\r\n<br/>\r\n\r\n\r\nLogin to HiHelloHR here: (<b><a href=\"http://localhost/hrm/hihellohrm/app/\">http://localhost/hrm/hihellohrm/app/</a></b>)<br/>\r\n<table class=\"body-action\" align=\"center\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; width: 100%; margin: 30px auto; padding: 0; text-align: center;\">\r\n    <tr>\r\n        <td align=\"center\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box;\">\r\n            <div style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box;\">\r\n                <a href=\"http://localhost/hrm/hihellohrm/app/\" class=\"button\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; display: inline-block; width: 200px; border-radius: 3px; color: #ffffff; font-size: 15px; line-height: 45px; text-align: center; text-decoration: none; -webkit-text-size-adjust: none; mso-hide: all; background-color: #22BC66;\" target=\"_blank\">Get Started</a>\r\n            </div>\r\n        </td>\r\n    </tr>\r\n</table>\r\n\r\n<font face=\"Arial, sans-serif\" size=\"1\" color=\"#4a4a4a\">\r\nTHIS IS AN AUTOMATED EMAIL - REPLIES WILL BE SENT TO shubham@hihellohr.com\r\n</font>\r\n<br/>\r\n<br/>\r\n\r\n                                    </p>\r\n                                </td>\r\n                            </tr>\r\n                        </table>\r\n                    </td>\r\n                </tr>\r\n                <tr>\r\n                    <td style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box;\">\r\n                        <table class=\"email-footer\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; width: 570px; margin: 0 auto; padding: 0; text-align: center;\">\r\n                            <tr>\r\n                                <td class=\"content-cell\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; padding: 35px;\">\r\n                                    <p class=\"sub center\" style=\"margin-top: 0; line-height: 1.5em; font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; color: #AEAEAE; font-size: 12px; text-align: center;\">\r\n                                        You are receiving this email because your organization has added you as an employee <a href=\"http://localhost/hrm/hihellohrm/app/\"><strong><font color=\"405A6A\">http://localhost/hrm/hihellohrm/app/</font></strong></a>. If you are not the intended recipient please inform application admin shubham@hihellohr.com.\r\n                                    </p>\r\n                                    <p class=\"sub center\" style=\"margin-top: 0; line-height: 1.5em; font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; color: #AEAEAE; font-size: 12px; text-align: center;\">\r\n                                        HiHelloHR.com</span>\r\n                                    </p>\r\n                                    <p class=\"sub center\" style=\"margin-top: 0; line-height: 1.5em; font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; color: #AEAEAE; font-size: 12px; text-align: center;\">\r\n                                        &copy; 2018 <a href=\"https://hihellohr.com\" target=\"_blank\" style=\"color: #3869D4; font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box;\">HiHelloHR</a>\r\n                                    </p>\r\n                                </td>\r\n                            </tr>\r\n                        </table>\r\n                    </td>\r\n                </tr>\r\n            </table>\r\n        </td>\r\n    </tr>\r\n</table>\r\n</body>\r\n</html>\r\n', '', '', '2023-01-20 17:24:22', '2023-01-20 17:24:22', 'Sent'),
(5, 'Your HiHelloHR account is ready', 'vipin1@gmail.com', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n    <style type=\"text/css\" rel=\"stylesheet\" media=\"all\">\r\n        @media only screen and (max-width: 600px) {\r\n            .email-body_inner,\r\n            .email-footer {\r\n                width: 100% !important;\r\n            }\r\n        }\r\n        @media only screen and (max-width: 500px) {\r\n            .button {\r\n                width: 100% !important;\r\n            }\r\n        }\r\n        table {\r\n            border-collapse: collapse;\r\n            width: 100%;\r\n        }\r\n        th, td {\r\n            padding: 8px;\r\n            text-align: left;\r\n            border-bottom: 1px solid #ddd;\r\n        }\r\n        tr:nth-child(even) {\r\n            background-color: #F2F2F2;\r\n        }\r\n    </style>\r\n</head>\r\n<body dir=\"ltr\" style=\"height: 100%; margin: 0; line-height: 1.4; background-color: #F2F4F6; color: #74787E; -webkit-text-size-adjust: none; font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; width: 100%;\">\r\n<!-- Visually Hidden Preheader Text : BEGIN -->\r\n<div style=\"display: none; font-size: 1px; line-height: 1px; max-height: 0px; max-width: 0px; opacity: 0; overflow: hidden; mso-hide: all; font-family: sans-serif;\">\r\n    Notification from HiHelloHR.com\r\n</div>\r\n<!-- Visually Hidden Preheader Text : END -->\r\n<table class=\"email-wrapper\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; width: 100%; margin: 0; padding: 0; background-color: #F2F4F6;\" bgcolor=\"#F2F4F6\">\r\n    <tr>\r\n        <td align=\"center\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box;\">\r\n            <table class=\"email-content\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; width: 100%; margin: 0; padding: 0;\">\r\n                <!-- Logo -->\r\n                <tr>\r\n                    <td class=\"email-masthead\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; padding: 25px 0; text-align: center;\" align=\"center\">\r\n                        <a class=\"email-masthead_name\" href=\"https://hihellohr.com\" target=\"_blank\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; font-size: 16px; font-weight: bold; color: #2F3133; text-decoration: none; text-shadow: 0 1px 0 white;\">\r\n\r\n                            <img src=\"http://localhost/hrm/hihellohrm/web/images/logo.png\" class=\"email-logo\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; max-height: 50px;\">\r\n\r\n                        </a>\r\n                    </td>\r\n                </tr>\r\n                <!-- Email Body -->\r\n                <tr>\r\n                    <td class=\"email-body\" width=\"100%\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; width: 100%; margin: 0; padding: 0; border-top: 1px solid #EDEFF2; border-bottom: 1px solid #EDEFF2; background-color: #FFF;\" bgcolor=\"#FFF\">\r\n                        <table class=\"email-body_inner\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; width: 570px; margin: 0 auto; padding: 0;\">\r\n                            <!-- Body content -->\r\n                            <tr>\r\n                                <td class=\"content-cell\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; padding: 35px;\">\r\n                                    <p style=\"margin-top: 0; color: #74787E; font-size: 16px; line-height: 1.5em; font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box;\">\r\n                                        Dear Vipin Sood,<br/><br/>\r\nYour account in <b>HiHelloHR</b> has been created on <a href=\"http://localhost/hrm/hihellohrm/app/\">http://localhost/hrm/hihellohrm/app/</a><br/><br/>\r\n \r\n<b>Please find your account information below:</b><br/><br/>\r\nUsername: <b>vipin1</b><br/>\r\nEmail:    <b>vipin1@gmail.com</b> (You can use, username or email to login)<br/>\r\nTemporary Password: <b>yt5ElB</b> (Strongly advised to change this password once logged in)<br/>\r\n<br/>\r\n\r\n\r\nLogin to HiHelloHR here: (<b><a href=\"http://localhost/hrm/hihellohrm/app/\">http://localhost/hrm/hihellohrm/app/</a></b>)<br/>\r\n<table class=\"body-action\" align=\"center\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; width: 100%; margin: 30px auto; padding: 0; text-align: center;\">\r\n    <tr>\r\n        <td align=\"center\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box;\">\r\n            <div style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box;\">\r\n                <a href=\"http://localhost/hrm/hihellohrm/app/\" class=\"button\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; display: inline-block; width: 200px; border-radius: 3px; color: #ffffff; font-size: 15px; line-height: 45px; text-align: center; text-decoration: none; -webkit-text-size-adjust: none; mso-hide: all; background-color: #22BC66;\" target=\"_blank\">Get Started</a>\r\n            </div>\r\n        </td>\r\n    </tr>\r\n</table>\r\n\r\n<font face=\"Arial, sans-serif\" size=\"1\" color=\"#4a4a4a\">\r\nTHIS IS AN AUTOMATED EMAIL - REPLIES WILL BE SENT TO shubham@hihellohr.com\r\n</font>\r\n<br/>\r\n<br/>\r\n\r\n                                    </p>\r\n                                </td>\r\n                            </tr>\r\n                        </table>\r\n                    </td>\r\n                </tr>\r\n                <tr>\r\n                    <td style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box;\">\r\n                        <table class=\"email-footer\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; width: 570px; margin: 0 auto; padding: 0; text-align: center;\">\r\n                            <tr>\r\n                                <td class=\"content-cell\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; padding: 35px;\">\r\n                                    <p class=\"sub center\" style=\"margin-top: 0; line-height: 1.5em; font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; color: #AEAEAE; font-size: 12px; text-align: center;\">\r\n                                        You are receiving this email because your organization has added you as an employee <a href=\"http://localhost/hrm/hihellohrm/app/\"><strong><font color=\"405A6A\">http://localhost/hrm/hihellohrm/app/</font></strong></a>. If you are not the intended recipient please inform application admin shubham@hihellohr.com.\r\n                                    </p>\r\n                                    <p class=\"sub center\" style=\"margin-top: 0; line-height: 1.5em; font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; color: #AEAEAE; font-size: 12px; text-align: center;\">\r\n                                        HiHelloHR.com</span>\r\n                                    </p>\r\n                                    <p class=\"sub center\" style=\"margin-top: 0; line-height: 1.5em; font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box; color: #AEAEAE; font-size: 12px; text-align: center;\">\r\n                                        &copy; 2018 <a href=\"https://hihellohr.com\" target=\"_blank\" style=\"color: #3869D4; font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; -webkit-box-sizing: border-box; box-sizing: border-box;\">HiHelloHR</a>\r\n                                    </p>\r\n                                </td>\r\n                            </tr>\r\n                        </table>\r\n                    </td>\r\n                </tr>\r\n            </table>\r\n        </td>\r\n    </tr>\r\n</table>\r\n</body>\r\n</html>\r\n', '', '', '2023-02-08 15:28:52', '2023-02-08 15:28:52', 'Sent');

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `id` bigint(20) NOT NULL,
  `subject` varchar(300) NOT NULL,
  `toEmail` varchar(300) NOT NULL,
  `template` text DEFAULT NULL,
  `params` text DEFAULT NULL,
  `cclist` varchar(500) DEFAULT NULL,
  `bcclist` varchar(500) DEFAULT NULL,
  `error` varchar(500) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `status` enum('Pending','Sent','Error') DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emergencycontacts`
--

CREATE TABLE `emergencycontacts` (
  `id` bigint(20) NOT NULL,
  `employee` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `relationship` varchar(100) DEFAULT NULL,
  `home_phone` varchar(15) DEFAULT NULL,
  `work_phone` varchar(15) DEFAULT NULL,
  `mobile_phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employeeapprovals`
--

CREATE TABLE `employeeapprovals` (
  `id` bigint(20) NOT NULL,
  `type` varchar(100) NOT NULL,
  `element` bigint(20) NOT NULL,
  `approver` bigint(20) DEFAULT NULL,
  `level` int(11) DEFAULT 0,
  `status` int(11) DEFAULT 0,
  `active` int(11) DEFAULT 0,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employeeattendancesheets`
--

CREATE TABLE `employeeattendancesheets` (
  `id` bigint(20) NOT NULL,
  `employee` bigint(20) NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `status` enum('Approved','Pending','Rejected','Submitted') DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employeecareer`
--

CREATE TABLE `employeecareer` (
  `id` bigint(20) NOT NULL,
  `employee` bigint(20) NOT NULL,
  `job_title` bigint(20) DEFAULT NULL,
  `employment_status` bigint(20) DEFAULT NULL,
  `department` bigint(20) DEFAULT NULL,
  `supervisor` bigint(20) DEFAULT NULL,
  `date_start` date NOT NULL,
  `date_end` date DEFAULT NULL,
  `details` text DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employeecertifications`
--

CREATE TABLE `employeecertifications` (
  `id` bigint(20) NOT NULL,
  `certification_id` bigint(20) DEFAULT NULL,
  `employee` bigint(20) NOT NULL,
  `institute` varchar(400) DEFAULT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employeecompanyloans`
--

CREATE TABLE `employeecompanyloans` (
  `id` bigint(20) NOT NULL,
  `employee` bigint(20) NOT NULL,
  `loan` bigint(20) DEFAULT NULL,
  `start_date` date NOT NULL,
  `last_installment_date` date NOT NULL,
  `period_months` bigint(20) DEFAULT NULL,
  `currency` bigint(20) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `monthly_installment` decimal(10,2) NOT NULL,
  `status` enum('Approved','Repayment','Paid','Suspended') DEFAULT 'Approved',
  `details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employeedatahistory`
--

CREATE TABLE `employeedatahistory` (
  `id` bigint(20) NOT NULL,
  `type` varchar(100) NOT NULL,
  `employee` bigint(20) NOT NULL,
  `field` varchar(100) NOT NULL,
  `old_value` varchar(500) DEFAULT NULL,
  `new_value` varchar(500) DEFAULT NULL,
  `description` varchar(800) DEFAULT NULL,
  `user` bigint(20) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employeedependents`
--

CREATE TABLE `employeedependents` (
  `id` bigint(20) NOT NULL,
  `employee` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `relationship` enum('Child','Spouse','Parent','Other') DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `id_number` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employeedocuments`
--

CREATE TABLE `employeedocuments` (
  `id` bigint(20) NOT NULL,
  `employee` bigint(20) NOT NULL,
  `document` bigint(20) DEFAULT NULL,
  `date_added` date NOT NULL,
  `valid_until` date DEFAULT NULL,
  `status` enum('Active','Inactive','Draft') DEFAULT 'Active',
  `details` text DEFAULT NULL,
  `attachment` varchar(100) DEFAULT NULL,
  `signature` text DEFAULT NULL,
  `expire_notification_last` int(4) DEFAULT NULL,
  `visible_to` enum('Owner','Manager','Admin','Owner Only') DEFAULT 'Owner'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employeeeducations`
--

CREATE TABLE `employeeeducations` (
  `id` bigint(20) NOT NULL,
  `education_id` bigint(20) DEFAULT NULL,
  `employee` bigint(20) NOT NULL,
  `institute` varchar(400) DEFAULT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employeeethnicity`
--

CREATE TABLE `employeeethnicity` (
  `id` bigint(20) NOT NULL,
  `employee` bigint(20) NOT NULL,
  `ethnicity` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employeeexpenses`
--

CREATE TABLE `employeeexpenses` (
  `id` bigint(20) NOT NULL,
  `employee` bigint(20) NOT NULL,
  `expense_date` date DEFAULT NULL,
  `payment_method` bigint(20) NOT NULL,
  `transaction_no` varchar(300) NOT NULL,
  `payee` varchar(500) NOT NULL,
  `category` bigint(20) NOT NULL,
  `notes` text DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `currency` bigint(20) DEFAULT NULL,
  `attachment1` varchar(100) DEFAULT NULL,
  `attachment2` varchar(100) DEFAULT NULL,
  `attachment3` varchar(100) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `status` enum('Approved','Pending','Rejected','Cancellation Requested','Cancelled','Processing') DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employeeforms`
--

CREATE TABLE `employeeforms` (
  `id` bigint(20) NOT NULL,
  `employee` bigint(20) NOT NULL,
  `form` bigint(20) NOT NULL,
  `status` enum('Pending','Completed') DEFAULT 'Pending',
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employeegoals`
--

CREATE TABLE `employeegoals` (
  `id` bigint(20) NOT NULL,
  `employee` bigint(20) NOT NULL,
  `review` bigint(11) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `manager_rating` int(11) DEFAULT NULL,
  `manager_feedback` text DEFAULT NULL,
  `employee_rating` int(11) DEFAULT NULL,
  `employee_feedback` text DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employeeimmigrations`
--

CREATE TABLE `employeeimmigrations` (
  `id` bigint(20) NOT NULL,
  `employee` bigint(20) NOT NULL,
  `document` bigint(20) DEFAULT NULL,
  `documentname` varchar(150) NOT NULL,
  `valid_until` date NOT NULL,
  `status` enum('Active','Inactive','Draft') DEFAULT 'Active',
  `details` text DEFAULT NULL,
  `attachment1` varchar(100) DEFAULT NULL,
  `attachment2` varchar(100) DEFAULT NULL,
  `attachment3` varchar(100) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employeeimmigrationstatus`
--

CREATE TABLE `employeeimmigrationstatus` (
  `id` bigint(20) NOT NULL,
  `employee` bigint(20) NOT NULL,
  `status` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employeelanguages`
--

CREATE TABLE `employeelanguages` (
  `id` bigint(20) NOT NULL,
  `language_id` bigint(20) DEFAULT NULL,
  `employee` bigint(20) NOT NULL,
  `reading` enum('Elementary Proficiency','Limited Working Proficiency','Professional Working Proficiency','Full Professional Proficiency','Native or Bilingual Proficiency') DEFAULT NULL,
  `speaking` enum('Elementary Proficiency','Limited Working Proficiency','Professional Working Proficiency','Full Professional Proficiency','Native or Bilingual Proficiency') DEFAULT NULL,
  `writing` enum('Elementary Proficiency','Limited Working Proficiency','Professional Working Proficiency','Full Professional Proficiency','Native or Bilingual Proficiency') DEFAULT NULL,
  `understanding` enum('Elementary Proficiency','Limited Working Proficiency','Professional Working Proficiency','Full Professional Proficiency','Native or Bilingual Proficiency') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employeeleavedays`
--

CREATE TABLE `employeeleavedays` (
  `id` bigint(20) NOT NULL,
  `employee_leave` bigint(20) NOT NULL,
  `leave_date` date DEFAULT NULL,
  `leave_type` enum('Full Day','Half Day - Morning','Half Day - Afternoon','1 Hour - Morning','2 Hours - Morning','3 Hours - Morning','1 Hour - Afternoon','2 Hours - Afternoon','3 Hours - Afternoon') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `employeeleavedays`
--

INSERT INTO `employeeleavedays` (`id`, `employee_leave`, `leave_date`, `leave_type`) VALUES
(7, 4, '2023-02-24', 'Half Day - Morning'),
(8, 4, '2023-02-27', '2 Hours - Afternoon'),
(9, 5, '2022-11-25', 'Full Day'),
(10, 6, '2022-11-17', 'Full Day');

-- --------------------------------------------------------

--
-- Table structure for table `employeeleavelog`
--

CREATE TABLE `employeeleavelog` (
  `id` bigint(20) NOT NULL,
  `employee_leave` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `data` varchar(500) NOT NULL,
  `status_from` enum('Approved','Pending','Rejected','Cancellation Requested','Cancelled','Processing') DEFAULT 'Pending',
  `status_to` enum('Approved','Pending','Rejected','Cancellation Requested','Cancelled','Processing') DEFAULT 'Pending',
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `employeeleavelog`
--

INSERT INTO `employeeleavelog` (`id`, `employee_leave`, `user_id`, `data`, `status_from`, `status_to`, `created`) VALUES
(1, 5, 1, '', 'Pending', 'Approved', '2023-01-19 15:55:57'),
(2, 6, 1, '', 'Pending', 'Approved', '2023-01-19 16:02:21');

-- --------------------------------------------------------

--
-- Table structure for table `employeeleaves`
--

CREATE TABLE `employeeleaves` (
  `id` bigint(20) NOT NULL,
  `employee` bigint(20) NOT NULL,
  `leave_type` bigint(20) NOT NULL,
  `leave_period` bigint(20) NOT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `details` text DEFAULT NULL,
  `status` enum('Approved','Pending','Rejected','Cancellation Requested','Cancelled','Processing') DEFAULT 'Pending',
  `attachment` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `employeeleaves`
--

INSERT INTO `employeeleaves` (`id`, `employee`, `leave_type`, `leave_period`, `date_start`, `date_end`, `details`, `status`, `attachment`) VALUES
(4, 1, 1, 6, '2023-02-22', '2023-02-28', '', 'Pending', ''),
(5, 72, 2, 5, '2023-02-23', '2023-02-25', '', 'Approved', ''),
(6, 72, 1, 5, '2023-03-01', '2023-03-05', '', 'Approved', '');

-- --------------------------------------------------------

--
-- Table structure for table `employeeovertime`
--

CREATE TABLE `employeeovertime` (
  `id` bigint(20) NOT NULL,
  `employee` bigint(20) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `category` bigint(20) NOT NULL,
  `project` bigint(20) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `status` enum('Approved','Pending','Rejected','Cancellation Requested','Cancelled','Processing') DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employeeprojects`
--

CREATE TABLE `employeeprojects` (
  `id` bigint(20) NOT NULL,
  `employee` bigint(20) NOT NULL,
  `project` bigint(20) DEFAULT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `status` enum('Current','Inactive','Completed') DEFAULT 'Current',
  `details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `employeeprojects`
--

INSERT INTO `employeeprojects` (`id`, `employee`, `project`, `date_start`, `date_end`, `status`, `details`) VALUES
(1, 72, 1, NULL, NULL, 'Current', NULL),
(2, 73, 2, NULL, NULL, 'Current', ''),
(5, 73, 3, NULL, NULL, 'Current', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) NOT NULL,
  `employee_id` varchar(50) DEFAULT NULL,
  `first_name` varchar(100) NOT NULL DEFAULT '',
  `middle_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `father_name` varchar(255) NOT NULL,
  `nationality` bigint(20) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(15) DEFAULT NULL,
  `marital_status` enum('Married','Single','Divorced','Widowed','Other') DEFAULT NULL,
  `ssn_num` varchar(100) DEFAULT NULL,
  `nic_num` varchar(100) DEFAULT NULL,
  `other_id` varchar(100) DEFAULT NULL,
  `driving_license` varchar(100) DEFAULT NULL,
  `driving_license_exp_date` date DEFAULT NULL,
  `employment_status` bigint(20) DEFAULT NULL,
  `job_title` bigint(20) DEFAULT NULL,
  `pay_grade` bigint(20) DEFAULT NULL,
  `work_station_id` varchar(100) DEFAULT NULL,
  `address1` varchar(100) DEFAULT NULL,
  `address2` varchar(100) DEFAULT NULL,
  `city` varchar(150) DEFAULT NULL,
  `country` char(2) DEFAULT NULL,
  `province` bigint(20) DEFAULT NULL,
  `postal_code` varchar(20) DEFAULT NULL,
  `home_phone` varchar(50) DEFAULT NULL,
  `mobile_phone` varchar(50) DEFAULT NULL,
  `work_phone` varchar(50) DEFAULT NULL,
  `work_email` varchar(100) DEFAULT NULL,
  `private_email` varchar(100) DEFAULT NULL,
  `joined_date` date DEFAULT NULL,
  `confirmation_date` date DEFAULT NULL,
  `supervisor` bigint(20) DEFAULT NULL,
  `indirect_supervisors` varchar(250) DEFAULT NULL,
  `department` bigint(20) DEFAULT NULL,
  `account_holder_name` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `ifsc_code` varchar(255) DEFAULT NULL,
  `custom1` varchar(250) DEFAULT NULL,
  `custom2` varchar(250) DEFAULT NULL,
  `custom3` varchar(250) DEFAULT NULL,
  `custom4` varchar(250) DEFAULT NULL,
  `custom5` varchar(250) DEFAULT NULL,
  `custom6` varchar(250) DEFAULT NULL,
  `custom7` varchar(250) DEFAULT NULL,
  `custom8` varchar(250) DEFAULT NULL,
  `custom9` varchar(250) DEFAULT NULL,
  `custom10` varchar(250) DEFAULT NULL,
  `termination_date` date DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `status` enum('Active','Terminated') DEFAULT 'Active',
  `ethnicity` bigint(20) DEFAULT NULL,
  `immigration_status` bigint(20) DEFAULT NULL,
  `approver1` bigint(20) DEFAULT NULL,
  `approver2` bigint(20) DEFAULT NULL,
  `approver3` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `employee_id`, `first_name`, `middle_name`, `last_name`, `father_name`, `nationality`, `birthday`, `gender`, `marital_status`, `ssn_num`, `nic_num`, `other_id`, `driving_license`, `driving_license_exp_date`, `employment_status`, `job_title`, `pay_grade`, `work_station_id`, `address1`, `address2`, `city`, `country`, `province`, `postal_code`, `home_phone`, `mobile_phone`, `work_phone`, `work_email`, `private_email`, `joined_date`, `confirmation_date`, `supervisor`, `indirect_supervisors`, `department`, `account_holder_name`, `account_number`, `ifsc_code`, `custom1`, `custom2`, `custom3`, `custom4`, `custom5`, `custom6`, `custom7`, `custom8`, `custom9`, `custom10`, `termination_date`, `notes`, `status`, `ethnicity`, `immigration_status`, `approver1`, `approver2`, `approver3`) VALUES
(1, 'EMP001', 'admin', 'admin', 'admin', '', 35, '1984-02-21', 'Male', 'Married', '', '294-38-3535', '294-38-3535', '', NULL, 3, 11, 2, '', '2772 Flynn Street', 'Willoughby', 'Willoughby', 'US', 41, '44094', '440-953-4578', '440-953-4578', '440-953-4578', 'pankaj.sharma@dipoletechi.com', 'shubham@hihellohr.com', '2005-08-03', NULL, 1, '', 1, 'Jatinder Singh', '911010052502411', 'AXIS00033', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'Active', NULL, NULL, 72, 68, 69),
(68, 'Robin001', 'Robin', NULL, 'Wart', 'Wart', 10, '1988-02-28', 'Female', 'Married', NULL, NULL, NULL, NULL, NULL, 3, 4, NULL, NULL, NULL, NULL, NULL, 'AU', NULL, NULL, NULL, NULL, NULL, 'robin001@gmail.com', 'robin.wart@gmail.com', '2021-12-26', NULL, 1, NULL, 4, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 1, 72, 69),
(69, 'John781', 'John', NULL, 'Sena', 'Sena', 82, '1976-02-27', 'Male', 'Single', NULL, NULL, NULL, NULL, NULL, 2, 9, NULL, NULL, NULL, NULL, NULL, 'IN', NULL, NULL, NULL, NULL, NULL, 'john781@gmail.com', 'john.sena@gmail.com', '2022-11-17', NULL, 1, NULL, 6, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 68, 69, 1),
(70, 'Robert1985', 'Robert', NULL, 'Yu', 'Yu', 35, '1986-03-01', 'Male', 'Divorced', NULL, NULL, NULL, NULL, NULL, 6, 1, NULL, NULL, NULL, NULL, NULL, 'CA', NULL, NULL, NULL, NULL, NULL, 'robert1985@gmail.com', 'robert.yu@gmail.com', '2020-03-21', NULL, 72, NULL, 5, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL),
(71, 'James777', 'James', NULL, 'Lui', 'Lui', 4, '1978-01-02', 'Female', 'Married', NULL, NULL, NULL, NULL, NULL, 4, 3, NULL, NULL, NULL, NULL, NULL, 'US', NULL, NULL, NULL, NULL, NULL, 'james777@gmail.com', 'james.lui@gmail.com', '2022-02-24', NULL, NULL, NULL, 4, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL),
(72, 'Paul990', 'Paul', '', 'Walker', 'ABC', 10, '1991-04-04', 'Non-binary', 'Other', '', '', '', '', NULL, 2, 2, NULL, '', '', '', '', 'AU', NULL, '', '', '', '', 'saurabh.tyagi@dipoletechi.com', 'paul.walker@gmail.com', '2019-04-01', NULL, 1, '', 6, 'Paul Walker', '90080070011', 'UIDF4324', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'Active', NULL, NULL, NULL, NULL, NULL),
(73, 'Vipin010', 'Vipin', '', 'Sood', 'Sood', 4, '1999-05-25', 'Other', 'Widowed', '', '', '', '', NULL, 1, 1, NULL, '', '', '', '', 'GB', NULL, '', '', '', '', 'vipin010@gmail.com', 'vipin.sood@gmail.com', '2022-10-23', NULL, NULL, '', 6, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'Active', NULL, NULL, NULL, NULL, NULL),
(74, 'EMP04324', 'Jatinder', 'Singh', 'Singh', 'Jatiner', 1, '2023-02-05', 'Male', 'Married', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, 'IN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-14', '2023-01-31', NULL, NULL, 1, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-30', NULL, 'Active', NULL, NULL, NULL, NULL, NULL),
(75, 'Dds', 'fd', 'fds', 'fdsf', 'fds', 2, '2023-02-05', 'Male', 'Married', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, 'AL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-05', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 3, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employeesalary`
--

CREATE TABLE `employeesalary` (
  `id` bigint(20) NOT NULL,
  `employee` bigint(20) NOT NULL,
  `component` bigint(20) NOT NULL,
  `pay_frequency` enum('Hourly','Daily','Bi Weekly','Weekly','Semi Monthly','Monthly') DEFAULT NULL,
  `currency` bigint(20) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `employeesalary`
--

INSERT INTO `employeesalary` (`id`, `employee`, `component`, `pay_frequency`, `currency`, `amount`, `details`) VALUES
(9, 72, 1, NULL, NULL, '40000.00', ''),
(10, 72, 8, NULL, NULL, '5000.00', ''),
(14, 73, 29, NULL, NULL, '123.00', ''),
(15, 1, 30, NULL, NULL, '4.00', ''),
(26, 1, 1, NULL, NULL, '100.00', 'Salary of EMP001'),
(27, 1, 8, NULL, NULL, '10.00', 'HRA of EMP001'),
(28, 69, 1, NULL, NULL, '50000.00', 'Salary of John781'),
(29, 69, 8, NULL, NULL, '5000.00', 'HRA of John781'),
(30, 69, 4, NULL, NULL, '500.00', 'Telephone Allowance of John781'),
(31, 70, 1, NULL, NULL, '1500.00', 'Salary of Robert1985'),
(32, 71, 1, NULL, NULL, '37000.00', 'Salary of James777'),
(33, 71, 3, NULL, NULL, '4000.00', 'Car Allowance of James777');

-- --------------------------------------------------------

--
-- Table structure for table `employeeskills`
--

CREATE TABLE `employeeskills` (
  `id` bigint(20) NOT NULL,
  `skill_id` bigint(20) DEFAULT NULL,
  `employee` bigint(20) NOT NULL,
  `details` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employeestatus`
--

CREATE TABLE `employeestatus` (
  `id` bigint(20) NOT NULL,
  `employee` bigint(20) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `feeling` int(11) DEFAULT NULL,
  `message` varchar(300) DEFAULT NULL,
  `status_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employeeteammembers`
--

CREATE TABLE `employeeteammembers` (
  `id` bigint(20) NOT NULL,
  `team` bigint(20) DEFAULT NULL,
  `member` bigint(20) DEFAULT NULL,
  `role` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employeeteams`
--

CREATE TABLE `employeeteams` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `lead` bigint(20) DEFAULT NULL,
  `department` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employeetimeentry`
--

CREATE TABLE `employeetimeentry` (
  `id` bigint(20) NOT NULL,
  `project` bigint(20) DEFAULT NULL,
  `employee` bigint(20) NOT NULL,
  `timesheet` bigint(20) NOT NULL,
  `details` text DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `time_start` varchar(10) NOT NULL,
  `date_end` datetime DEFAULT NULL,
  `time_end` varchar(10) NOT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employeetimesheets`
--

CREATE TABLE `employeetimesheets` (
  `id` bigint(20) NOT NULL,
  `employee` bigint(20) NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `status` enum('Approved','Pending','Rejected','Submitted') DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `employeetimesheets`
--

INSERT INTO `employeetimesheets` (`id`, `employee`, `date_start`, `date_end`, `status`) VALUES
(1, 1, '2022-12-11', '2022-12-17', 'Pending'),
(2, 1, '2022-12-18', '2022-12-24', 'Pending'),
(4, 1, '2022-12-25', '2022-12-31', 'Pending'),
(7, 1, '2023-01-01', '2023-01-07', 'Pending'),
(10, 1, '2023-01-08', '2023-01-14', 'Pending'),
(11, 72, '2023-01-08', '2023-01-14', 'Pending'),
(12, 69, '2023-01-08', '2023-01-14', 'Pending'),
(13, 1, '2023-01-15', '2023-01-21', 'Pending'),
(14, 72, '2023-01-15', '2023-01-21', 'Pending'),
(15, 1, '2023-01-22', '2023-01-28', 'Pending'),
(16, 72, '2023-01-22', '2023-01-28', 'Pending'),
(17, 69, '2023-01-22', '2023-01-28', 'Pending'),
(18, 1, '2023-01-29', '2023-02-04', 'Pending'),
(19, 1, '2023-02-05', '2023-02-11', 'Pending'),
(20, 1, '2023-02-12', '2023-02-18', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `employeetrainingsessions`
--

CREATE TABLE `employeetrainingsessions` (
  `id` bigint(20) NOT NULL,
  `employee` bigint(20) NOT NULL,
  `trainingSession` bigint(20) DEFAULT NULL,
  `feedBack` varchar(1500) DEFAULT NULL,
  `status` enum('Scheduled','Attended','Not-Attended','Completed') DEFAULT 'Scheduled',
  `proof` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employeetravelrecords`
--

CREATE TABLE `employeetravelrecords` (
  `id` bigint(20) NOT NULL,
  `employee` bigint(20) NOT NULL,
  `type` varchar(200) DEFAULT '',
  `purpose` varchar(200) NOT NULL,
  `travel_from` varchar(200) NOT NULL,
  `travel_to` varchar(200) NOT NULL,
  `travel_date` datetime DEFAULT NULL,
  `return_date` datetime DEFAULT NULL,
  `details` varchar(500) DEFAULT NULL,
  `funding` decimal(10,2) DEFAULT NULL,
  `currency` bigint(20) DEFAULT NULL,
  `attachment1` varchar(100) DEFAULT NULL,
  `attachment2` varchar(100) DEFAULT NULL,
  `attachment3` varchar(100) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `status` enum('Approved','Pending','Rejected','Cancellation Requested','Cancelled','Processing') DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employementtype`
--

CREATE TABLE `employementtype` (
  `id` bigint(20) NOT NULL,
  `name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `employementtype`
--

INSERT INTO `employementtype` (`id`, `name`) VALUES
(1, 'Full-time'),
(2, 'Part-time'),
(3, 'Contract'),
(4, 'Temporary'),
(5, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `employmentstatus`
--

CREATE TABLE `employmentstatus` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `employmentstatus`
--

INSERT INTO `employmentstatus` (`id`, `name`, `description`) VALUES
(1, 'Full Time Contract', 'Full Time Contract'),
(2, 'Full Time Internship', 'Full Time Internship'),
(3, 'Full Time Permanent', 'Full Time Permanent'),
(4, 'Part Time Contract', 'Part Time Contract'),
(5, 'Part Time Internship', 'Part Time Internship'),
(6, 'Part Time Permanent', 'Part Time Permanent');

-- --------------------------------------------------------

--
-- Table structure for table `ethnicity`
--

CREATE TABLE `ethnicity` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ethnicity`
--

INSERT INTO `ethnicity` (`id`, `name`) VALUES
(1, 'White American'),
(2, 'Black or African American'),
(3, 'Native American'),
(4, 'Alaska Native'),
(5, 'Asian American'),
(6, 'Native Hawaiian'),
(7, 'Pacific Islander');

-- --------------------------------------------------------

--
-- Table structure for table `expensescategories`
--

CREATE TABLE `expensescategories` (
  `id` bigint(20) NOT NULL,
  `name` varchar(500) NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `pre_approve` enum('Yes','No') DEFAULT 'Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `expensescategories`
--

INSERT INTO `expensescategories` (`id`, `name`, `created`, `updated`, `pre_approve`) VALUES
(1, 'Auto - Gas', NULL, NULL, 'Yes'),
(2, 'Auto - Insurance', NULL, NULL, 'Yes'),
(3, 'Auto - Maintenance', NULL, NULL, 'Yes'),
(4, 'Auto - Payment', NULL, NULL, 'Yes'),
(5, 'Transportation', NULL, NULL, 'Yes'),
(6, 'Bank Fees', NULL, NULL, 'Yes'),
(7, 'Dining Out', NULL, NULL, 'Yes'),
(8, 'Entertainment', NULL, NULL, 'Yes'),
(9, 'Hotel / Motel', NULL, NULL, 'Yes'),
(10, 'Insurance', NULL, NULL, 'Yes'),
(11, 'Interest Charges', NULL, NULL, 'Yes'),
(12, 'Loan Payment', NULL, NULL, 'Yes'),
(13, 'Medical', NULL, NULL, 'Yes'),
(14, 'Mileage', NULL, NULL, 'Yes'),
(15, 'Rent', NULL, NULL, 'Yes'),
(16, 'Rental Car', NULL, NULL, 'Yes'),
(17, 'Utility', NULL, NULL, 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `expensespaymentmethods`
--

CREATE TABLE `expensespaymentmethods` (
  `id` bigint(20) NOT NULL,
  `name` varchar(500) NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `expensespaymentmethods`
--

INSERT INTO `expensespaymentmethods` (`id`, `name`, `created`, `updated`) VALUES
(1, 'Cash', NULL, NULL),
(2, 'Check', NULL, NULL),
(3, 'Credit Card', NULL, NULL),
(4, 'Debit Card', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `experiencelevel`
--

CREATE TABLE `experiencelevel` (
  `id` bigint(20) NOT NULL,
  `name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `experiencelevel`
--

INSERT INTO `experiencelevel` (`id`, `name`) VALUES
(1, 'Not Applicable'),
(2, 'Internship'),
(3, 'Entry level'),
(4, 'Associate'),
(5, 'Mid-Senior level'),
(6, 'Director'),
(7, 'Executive');

-- --------------------------------------------------------

--
-- Table structure for table `fieldnamemappings`
--

CREATE TABLE `fieldnamemappings` (
  `id` bigint(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `textOrig` varchar(200) DEFAULT NULL,
  `textMapped` varchar(200) DEFAULT NULL,
  `display` enum('Form','Table and Form','Hidden') DEFAULT 'Form',
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `fieldnamemappings`
--

INSERT INTO `fieldnamemappings` (`id`, `type`, `name`, `textOrig`, `textMapped`, `display`, `created`, `updated`) VALUES
(1, 'Employee', 'employee_id', 'Employee Number', 'Employee Number', 'Table and Form', NULL, NULL),
(2, 'Employee', 'first_name', 'First Name', 'First Name', 'Table and Form', NULL, NULL),
(3, 'Employee', 'middle_name', 'Middle Name', 'Middle Name', 'Form', NULL, NULL),
(4, 'Employee', 'last_name', 'Last Name', 'Last Name', 'Table and Form', NULL, NULL),
(5, 'Employee', 'nationality', 'Nationality', 'Nationality', 'Form', NULL, NULL),
(6, 'Employee', 'ethnicity', 'Ethnicity', 'Ethnicity', 'Form', NULL, NULL),
(7, 'Employee', 'immigration_status', 'Immigration Status', 'Immigration Status', 'Form', NULL, NULL),
(8, 'Employee', 'birthday', 'Date of Birth', 'Date of Birth', 'Form', NULL, NULL),
(9, 'Employee', 'gender', 'Gender', 'Gender', 'Form', NULL, NULL),
(10, 'Employee', 'marital_status', 'Marital Status', 'Marital Status', 'Form', NULL, NULL),
(11, 'Employee', 'ssn_num', 'SSN/NRIC', 'SSN/NRIC', 'Form', NULL, NULL),
(12, 'Employee', 'nic_num', 'NIC', 'NIC', 'Form', NULL, NULL),
(13, 'Employee', 'other_id', 'Other ID', 'Other ID', 'Form', NULL, NULL),
(14, 'Employee', 'driving_license', 'Driving License No', 'Driving License No', 'Form', NULL, NULL),
(15, 'Employee', 'employment_status', 'Employment Status', 'Employment Status', 'Form', NULL, NULL),
(16, 'Employee', 'job_title', 'Job Title', 'Job Title', 'Form', NULL, NULL),
(17, 'Employee', 'pay_grade', 'Pay Grade', 'Pay Grade', 'Form', NULL, NULL),
(18, 'Employee', 'work_station_id', 'Work Station Id', 'Work Station Id', 'Form', NULL, NULL),
(19, 'Employee', 'address1', 'Address Line 1', 'Address Line 1', 'Form', NULL, NULL),
(20, 'Employee', 'address2', 'Address Line 2', 'Address Line 2', 'Form', NULL, NULL),
(21, 'Employee', 'city', 'City', 'City', 'Form', NULL, NULL),
(22, 'Employee', 'country', 'Country', 'Country', 'Form', NULL, NULL),
(23, 'Employee', 'province', 'Province', 'Province', 'Form', NULL, NULL),
(24, 'Employee', 'postal_code', 'Postal/Zip Code', 'Postal/Zip Code', 'Form', NULL, NULL),
(25, 'Employee', 'home_phone', 'Home Phone', 'Home Phone', 'Form', NULL, NULL),
(26, 'Employee', 'mobile_phone', 'Mobile Phone', 'Mobile Phone', 'Table and Form', NULL, NULL),
(27, 'Employee', 'work_phone', 'Work Phone', 'Work Phone', 'Form', NULL, NULL),
(28, 'Employee', 'work_email', 'Work Email', 'Work Email', 'Form', NULL, NULL),
(29, 'Employee', 'private_email', 'Private Email', 'Private Email', 'Form', NULL, NULL),
(30, 'Employee', 'joined_date', 'Joined Date', 'Joined Date', 'Form', NULL, NULL),
(31, 'Employee', 'confirmation_date', 'Confirmation Date', 'Confirmation Date', 'Form', NULL, NULL),
(32, 'Employee', 'termination_date', 'Termination Date', 'Termination Date', 'Form', NULL, NULL),
(33, 'Employee', 'supervisor', 'Supervisor', 'Supervisor', 'Table and Form', NULL, NULL),
(34, 'Employee', 'department', 'Department', 'Department', 'Table and Form', NULL, NULL),
(35, 'Employee', 'indirect_supervisors', 'Indirect Supervisors', 'Indirect Supervisors', 'Form', NULL, NULL),
(36, 'Employee', 'notes', 'Notes', 'Notes', 'Form', NULL, NULL),
(39, 'Employee', 'father_name', 'Father Name', 'Father Name', 'Form', NULL, NULL),
(43, 'Employee', 'account_holder_name', 'Account Holder Name', 'Account Holder Name', 'Form', NULL, NULL),
(44, 'Employee', 'account_number', 'Account Number', 'Account Number', 'Form', NULL, NULL),
(45, 'Employee', 'ifsc_code', 'IFSC Code', 'IFSC Code', 'Form', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fieldreport`
--

CREATE TABLE `fieldreport` (
  `id` bigint(20) NOT NULL,
  `employeeId` bigint(20) NOT NULL,
  `projectId` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `status` enum('Completed','Pending') NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `fieldreport`
--

INSERT INTO `fieldreport` (`id`, `employeeId`, `projectId`, `title`, `status`, `created`, `modified`) VALUES
(4, 73, 0, 'Lohri Ho Gyi', 'Completed', '2023-01-13 09:44:30', '2023-02-01 10:22:00'),
(5, 73, 0, 'Kharar Colleges Report New', 'Pending', '2023-01-25 10:23:07', '2023-02-01 07:35:18'),
(8, 68, 0, 'Recent Bunkers', 'Completed', '2023-01-25 15:11:23', '2023-02-01 13:52:39'),
(12, 73, 2, 'Chakde India', 'Pending', '2023-02-01 06:49:51', '2023-02-01 07:43:02'),
(13, 73, 3, 'New Lohri 2024', 'Completed', '2023-02-01 07:42:09', '2023-02-01 13:13:53'),
(14, 73, 3, 'Project ID wala', 'Pending', '2023-02-06 14:10:25', '2023-02-06 14:10:25');

-- --------------------------------------------------------

--
-- Table structure for table `fieldreportdemo`
--

CREATE TABLE `fieldreportdemo` (
  `id` bigint(20) NOT NULL,
  `employeeId` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `status` enum('Completed','Pending') NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fieldreportinfo`
--

CREATE TABLE `fieldreportinfo` (
  `id` bigint(20) NOT NULL,
  `fieldreportId` bigint(20) NOT NULL,
  `image` varchar(50) NOT NULL,
  `lat` varchar(30) NOT NULL,
  `lng` varchar(30) NOT NULL,
  `notes` text NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `fieldreportinfo`
--

INSERT INTO `fieldreportinfo` (`id`, `fieldreportId`, `image`, `lat`, `lng`, `notes`, `created`) VALUES
(4, 4, '1673605280.jpg', '32.2733', '75.6522', 'All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator', '2023-01-13 11:21:20'),
(5, 5, '1673605627.webp', '30.7505', '76.6401', 'Aningful content. Lorem ipsum may be used as a placeholder', '2023-01-13 10:27:07'),
(6, 5, '1673605678.jpg', '30.975254', '76.52732', 'Raphic design, Lorem ipsum is a placeholder text commo', '2023-01-13 10:27:58'),
(7, 5, '1673605720.jpg', '31.2781', '75.6765', 'Used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2023-01-13 10:28:40'),
(8, 4, '1673605789.png', '31.9502', '75.6175', 'Ded do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamc', '2023-01-13 10:29:49'),
(21, 4, '1674485785.jpg', '30.7411', '76.7790', 'ent hub centered on Sector 17 Market, a tree-lined pedestrian plaza with fountains and stores offering global fashion, gifts, and sportswear. Surrounding streets are dotted with international restauran', '2023-01-03 14:56:25'),
(22, 4, '63d7d8ded97461675090142890.png', '30.3752', '76.7821', 'Ambala is a city and a municipal corporation in Ambala district in the state of Haryana, India, located on the border with the Indian state of Punjab and in proximity to both states capital', '2023-01-30 14:49:02'),
(27, 4, '63d8c90d880b51675151629557.png', '32.7266', '74.8570', 'Arr is the largest city and the summer capital of Jammu and Kashmir, India. It lies in the Kashmir Valley on the banks of the Jhelum River,', '2023-01-31 07:53:49');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `filename` varchar(100) NOT NULL,
  `employee` bigint(20) DEFAULT NULL,
  `file_group` varchar(100) NOT NULL,
  `size` bigint(20) DEFAULT NULL,
  `size_text` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `name`, `filename`, `employee`, `file_group`, `size`, `size_text`) VALUES
(1, 'attachment_HSCkODQdeG2fzx1671519695896', 'attachment_HSCkODQdeG2fzx1671519695896.csv', 1, 'DataImportFileAll', 1483, '1.45 K'),
(2, 'attachment_DdcrwrYkFiuDeF1671520126806', 'attachment_DdcrwrYkFiuDeF1671520126806.csv', 1, 'DataImportFileAll', 1483, '1.45 K'),
(3, 'attachment_1aQXf3vHmMokab1671522496122', 'attachment_1aQXf3vHmMokab1671522496122.csv', 1, 'DataImportFileAll', 1483, '1.45 K'),
(4, 'attachment_mScJVqiXaZbn2D1671522855257', 'attachment_mScJVqiXaZbn2D1671522855257.csv', 1, 'DataImportFileAll', 1483, '1.45 K'),
(5, 'attachment_bycxvnqzbZKN3z1671522958558', 'attachment_bycxvnqzbZKN3z1671522958558.csv', 1, 'DataImportFileAll', 1483, '1.45 K'),
(6, 'attachment_YSX3BLUj6lFYhY1671532588040', 'attachment_YSX3BLUj6lFYhY1671532588040.csv', 1, 'DataImportFileAll', 1483, '1.45 K'),
(7, 'attachment_qweTM5x6pAdw7J1671532838108', 'attachment_qweTM5x6pAdw7J1671532838108.csv', 1, 'DataImportFileAll', 1477, '1.44 K'),
(8, 'attachment_9HFhilhQKmuwF71671534410069', 'attachment_9HFhilhQKmuwF71671534410069.csv', 1, 'DataImportFileAll', 1486, '1.45 K'),
(9, 'attachment_Wg9KaFIFcrA99e1671536409423', 'attachment_Wg9KaFIFcrA99e1671536409423.csv', 1, 'DataImportFileAll', 1486, '1.45 K'),
(10, 'attachment_C8M11UX9mBzJMJ1671540797886', 'attachment_C8M11UX9mBzJMJ1671540797886.csv', 1, 'DataImportFileAll', 1487, '1.45 K'),
(11, 'attachment_VrMvzoDh4MKp1Q1671541420684', 'attachment_VrMvzoDh4MKp1Q1671541420684.csv', 1, 'DataImportFileAll', 1478, '1.44 K'),
(12, 'attachment_WgtRVK6GEY79fo1671549973743', 'attachment_WgtRVK6GEY79fo1671549973743.csv', 1, 'DataImportFileAll', 1487, '1.45 K'),
(13, 'attachment_tl8jcsoN4jQ1NZ1671603398453', 'attachment_tl8jcsoN4jQ1NZ1671603398453.csv', 1, 'DataImportFileAll', 1495, '1.46 K'),
(14, 'attachment_2xkf5f3psd9BHH1671604653104', 'attachment_2xkf5f3psd9BHH1671604653104.csv', 1, 'DataImportFileAll', 1487, '1.45 K'),
(15, 'attachment_KYGbBcEaDUIsl51671604968701', 'attachment_KYGbBcEaDUIsl51671604968701.csv', 1, 'DataImportFileAll', 1487, '1.45 K'),
(16, 'attachment_ex7Xnd8y5N684d1671605775390', 'attachment_ex7Xnd8y5N684d1671605775390.csv', 1, 'DataImportFileAll', 1487, '1.45 K'),
(17, 'attachment_ckqSM3zVHMfUtZ1671617662960', 'attachment_ckqSM3zVHMfUtZ1671617662960.csv', 1, 'DataImportFileAll', 1487, '1.45 K'),
(18, 'rmAd6qfqMbfaGf1671706957968', 'rmAd6qfqMbfaGf1671706957968.png', 1, 'CompanyAsset', 216216, '211.15 K'),
(19, 'attachment_wdaxaN2GxlVRbs1672315923841', 'attachment_wdaxaN2GxlVRbs1672315923841.csv', 1, 'DataImportFileAll', 1539, '1.5 K'),
(20, 'attachment_8zuWGcIe39xl5d1672316130674', 'attachment_8zuWGcIe39xl5d1672316130674.csv', 1, 'DataImportFileAll', 1539, '1.5 K'),
(21, 'attachment_vbjKTI91iGPBBZ1672316256995', 'attachment_vbjKTI91iGPBBZ1672316256995.csv', 1, 'DataImportFileAll', 1539, '1.5 K'),
(22, 'attachment_i2LGNoFBQGlOiZ1672320440824', 'attachment_i2LGNoFBQGlOiZ1672320440824.csv', 1, 'DataImportFileAll', 1539, '1.5 K'),
(23, 'attachment_1672322698683', 'attachment_1672322698683.csv', 1, 'DataImportFileAll', 1539, '1.5 K'),
(24, 'attachment_1672322826987', 'attachment_1672322826987.csv', 1, 'DataImportFileAll', 1539, '1.5 K'),
(25, 'attachment_1672322847156', 'attachment_1672322847156.csv', 1, 'DataImportFileAll', 1539, '1.5 K'),
(26, 'attachment_1672322916804', 'attachment_1672322916804.csv', 1, 'DataImportFileAll', 1539, '1.5 K'),
(27, 'attachment_Vp7o7uSK5RMmtu1672323018844', 'attachment_Vp7o7uSK5RMmtu1672323018844.csv', 1, 'DataImportFileAll', 1539, '1.5 K'),
(28, 'DataImportFileAll_submit__rand_', 'DataImportFileAll_submit__rand_.csv', 1, '_group_', 1539, '1.5 K'),
(29, 'attachment_1672323599604', 'attachment_1672323599604.csv', 1, 'DataImportFileAll', 1539, '1.5 K'),
(30, 'attachment_1672323705405', 'attachment_1672323705405.csv', 1, 'DataImportFileAll', 1539, '1.5 K'),
(31, 'attachment__rand_', 'attachment__rand_.csv', 1, 'DataImportFileAll', 1541, '1.5 K'),
(32, 'attachment_1672324651342', 'attachment_1672324651342.csv', 1, 'DataImportFileAll', 1539, '1.5 K'),
(33, 'csv-attachment', 'csv-attachment.csv', 1, 'DataImportFileAll', 494, '494 ');

-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

CREATE TABLE `forms` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `items` text DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `dateh` date DEFAULT NULL,
  `status` enum('Full Day','Half Day') DEFAULT 'Full Day',
  `country` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `holidays`
--

INSERT INTO `holidays` (`id`, `name`, `dateh`, `status`, `country`) VALUES
(1, 'New Year\'s Day', '2015-01-01', 'Full Day', NULL),
(2, 'Christmas Day', '2015-12-25', 'Full Day', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `immigrationdocuments`
--

CREATE TABLE `immigrationdocuments` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` text DEFAULT NULL,
  `required` enum('Yes','No') DEFAULT 'Yes',
  `alert_on_missing` enum('Yes','No') DEFAULT 'Yes',
  `alert_before_expiry` enum('Yes','No') DEFAULT 'Yes',
  `alert_before_day_number` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `immigrationstatus`
--

CREATE TABLE `immigrationstatus` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `immigrationstatus`
--

INSERT INTO `immigrationstatus` (`id`, `name`) VALUES
(1, 'Citizen'),
(2, 'Permanent Resident'),
(3, 'Work Permit Holder'),
(4, 'Dependant Pass Holder');

-- --------------------------------------------------------

--
-- Table structure for table `industry`
--

CREATE TABLE `industry` (
  `id` bigint(20) NOT NULL,
  `name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `interviews`
--

CREATE TABLE `interviews` (
  `id` bigint(20) NOT NULL,
  `job` bigint(20) NOT NULL,
  `candidate` bigint(20) DEFAULT NULL,
  `level` varchar(100) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `scheduled` datetime DEFAULT NULL,
  `location` varchar(500) DEFAULT NULL,
  `mapId` bigint(20) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `shortDescription` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `requirements` text DEFAULT NULL,
  `benefits` text DEFAULT NULL,
  `country` bigint(20) DEFAULT NULL,
  `company` bigint(20) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `employementType` bigint(20) DEFAULT NULL,
  `industry` bigint(20) DEFAULT NULL,
  `experienceLevel` bigint(20) DEFAULT NULL,
  `jobFunction` bigint(20) DEFAULT NULL,
  `educationLevel` bigint(20) DEFAULT NULL,
  `currency` bigint(20) DEFAULT NULL,
  `showSalary` enum('Yes','No') DEFAULT NULL,
  `salaryMin` bigint(20) DEFAULT NULL,
  `salaryMax` bigint(20) DEFAULT NULL,
  `keywords` text DEFAULT NULL,
  `status` enum('Active','On hold','Closed') DEFAULT NULL,
  `closingDate` datetime DEFAULT NULL,
  `attachment` varchar(100) DEFAULT NULL,
  `display` varchar(200) NOT NULL,
  `postedBy` bigint(20) DEFAULT NULL,
  `location` varchar(500) DEFAULT NULL,
  `postalCode` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobfunction`
--

CREATE TABLE `jobfunction` (
  `id` bigint(20) NOT NULL,
  `name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `jobfunction`
--

INSERT INTO `jobfunction` (`id`, `name`) VALUES
(1, 'Accounting/Auditing'),
(2, 'Administrative'),
(3, 'Advertising'),
(4, 'Business Analyst'),
(5, 'Financial Analyst'),
(6, 'Data Analyst'),
(7, 'Art/Creative'),
(8, 'Business Development'),
(9, 'Consulting'),
(10, 'Customer Service'),
(11, 'Distribution'),
(12, 'Design'),
(13, 'Education'),
(14, 'Engineering'),
(15, 'Finance'),
(16, 'General Business'),
(17, 'Health Care Provider'),
(18, 'Human Resources'),
(19, 'Information Technology'),
(20, 'Legal'),
(21, 'Management'),
(22, 'Manufacturing'),
(23, 'Marketing'),
(24, 'Other'),
(25, 'Public Relations'),
(26, 'Purchasing'),
(27, 'Product Management'),
(28, 'Project Management'),
(29, 'Production'),
(30, 'Quality Assurance'),
(31, 'Research'),
(32, 'Sales'),
(33, 'Science'),
(34, 'Strategy/Planning'),
(35, 'Supply Chain'),
(36, 'Training'),
(37, 'Writing/Editing');

-- --------------------------------------------------------

--
-- Table structure for table `jobtitles`
--

CREATE TABLE `jobtitles` (
  `id` bigint(20) NOT NULL,
  `code` varchar(10) NOT NULL DEFAULT '',
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `specification` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `jobtitles`
--

INSERT INTO `jobtitles` (`id`, `code`, `name`, `description`, `specification`) VALUES
(1, 'SE', 'Software Engineer', 'The work of a software engineer typically includes designing and programming system-level software: operating systems, database systems, embedded systems and so on. They understand how both software a', 'Software Engineer'),
(2, 'ASE', 'Assistant Software Engineer', 'Assistant Software Engineer', 'Assistant Software Engineer'),
(3, 'PM', 'Project Manager', 'Project Manager', 'Project Manager'),
(4, 'QAE', 'QA Engineer', 'Quality Assurance Engineer ', 'Quality Assurance Engineer '),
(5, 'PRM', 'Product Manager', 'Product Manager', 'Product Manager'),
(6, 'AQAE', 'Assistant QA Engineer ', 'Assistant QA Engineer ', 'Assistant QA Engineer '),
(7, 'TPM', 'Technical Project Manager', 'Technical Project Manager', 'Technical Project Manager'),
(8, 'PRS', 'Pre-Sales Executive', 'Pre-Sales Executive', 'Pre-Sales Executive'),
(9, 'ME', 'Marketing Executive', 'Marketing Executive', 'Marketing Executive'),
(10, 'DH', 'Department Head', 'Department Head', 'Department Head'),
(11, 'CEO', 'Chief Executive Officer', 'Chief Executive Officer', 'Chief Executive Officer'),
(12, 'DBE', 'Database Engineer', 'Database Engineer', 'Database Engineer'),
(13, 'SA', 'Server Admin', 'Server Admin', 'Server Admin'),
(15, 'ABHI', 'Abhi he', 'Abhi he', 'Abhi he');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `description`) VALUES
(1, 'en', 'English'),
(2, 'fr', 'French'),
(3, 'de', 'German'),
(4, 'zh', 'Chinese'),
(5, 'aa', 'Afar'),
(6, 'ab', 'Abkhaz'),
(7, 'ae', 'Avestan'),
(8, 'af', 'Afrikaans'),
(9, 'ak', 'Akan'),
(10, 'am', 'Amharic'),
(11, 'an', 'Aragonese'),
(12, 'ar', 'Arabic'),
(13, 'as', 'Assamese'),
(14, 'av', 'Avaric'),
(15, 'ay', 'Aymara'),
(16, 'az', 'Azerbaijani'),
(17, 'ba', 'Bashkir'),
(18, 'be', 'Belarusian'),
(19, 'bg', 'Bulgarian'),
(20, 'bh', 'Bihari'),
(21, 'bi', 'Bislama'),
(22, 'bm', 'Bambara'),
(23, 'bn', 'Bengali'),
(24, 'bo', 'Tibetan Standard, Tibetan, Central'),
(25, 'br', 'Breton'),
(26, 'bs', 'Bosnian'),
(27, 'ca', 'Catalan; Valencian'),
(28, 'ce', 'Chechen'),
(29, 'ch', 'Chamorro'),
(30, 'co', 'Corsican'),
(31, 'cr', 'Cree'),
(32, 'cs', 'Czech'),
(33, 'cu', 'Old Church Slavonic, Church Slavic, Church Slavonic, Old Bulgarian, Old Slavonic'),
(34, 'cv', 'Chuvash'),
(35, 'cy', 'Welsh'),
(36, 'da', 'Danish'),
(37, 'dv', 'Divehi; Dhivehi; Maldivian;'),
(38, 'dz', 'Dzongkha'),
(39, 'ee', 'Ewe'),
(40, 'el', 'Greek, Modern'),
(41, 'eo', 'Esperanto'),
(42, 'es', 'Spanish; Castilian'),
(43, 'et', 'Estonian'),
(44, 'eu', 'Basque'),
(45, 'fa', 'Persian'),
(46, 'ff', 'Fula; Fulah; Pulaar; Pular'),
(47, 'fi', 'Finnish'),
(48, 'fj', 'Fijian'),
(49, 'fo', 'Faroese'),
(50, 'fy', 'Western Frisian'),
(51, 'ga', 'Irish'),
(52, 'gd', 'Scottish Gaelic; Gaelic'),
(53, 'gl', 'Galician'),
(54, 'gn', 'GuaranÃ­'),
(55, 'gu', 'Gujarati'),
(56, 'gv', 'Manx'),
(57, 'ha', 'Hausa'),
(58, 'he', 'Hebrew (modern)'),
(59, 'hi', 'Hindi'),
(60, 'ho', 'Hiri Motu'),
(61, 'hr', 'Croatian'),
(62, 'ht', 'Haitian; Haitian Creole'),
(63, 'hu', 'Hungarian'),
(64, 'hy', 'Armenian'),
(65, 'hz', 'Herero'),
(66, 'ia', 'Interlingua'),
(67, 'id', 'Indonesian'),
(68, 'ie', 'Interlingue'),
(69, 'ig', 'Igbo'),
(70, 'ii', 'Nuosu'),
(71, 'ik', 'Inupiaq'),
(72, 'io', 'Ido'),
(73, 'is', 'Icelandic'),
(74, 'it', 'Italian'),
(75, 'iu', 'Inuktitut'),
(76, 'ja', 'Japanese (ja)'),
(77, 'jv', 'Javanese (jv)'),
(78, 'ka', 'Georgian'),
(79, 'kg', 'Kongo'),
(80, 'ki', 'Kikuyu, Gikuyu'),
(81, 'kj', 'Kwanyama, Kuanyama'),
(82, 'kk', 'Kazakh'),
(83, 'kl', 'Kalaallisut, Greenlandic'),
(84, 'km', 'Khmer'),
(85, 'kn', 'Kannada'),
(86, 'ko', 'Korean'),
(87, 'kr', 'Kanuri'),
(88, 'ks', 'Kashmiri'),
(89, 'ku', 'Kurdish'),
(90, 'kv', 'Komi'),
(91, 'kw', 'Cornish'),
(92, 'ky', 'Kirghiz, Kyrgyz'),
(93, 'la', 'Latin'),
(94, 'lb', 'Luxembourgish, Letzeburgesch'),
(95, 'lg', 'Luganda'),
(96, 'li', 'Limburgish, Limburgan, Limburger'),
(97, 'ln', 'Lingala'),
(98, 'lo', 'Lao'),
(99, 'lt', 'Lithuanian'),
(100, 'lu', 'Luba-Katanga'),
(101, 'lv', 'Latvian'),
(102, 'mg', 'Malagasy'),
(103, 'mh', 'Marshallese'),
(104, 'mi', 'Maori'),
(105, 'mk', 'Macedonian'),
(106, 'ml', 'Malayalam'),
(107, 'mn', 'Mongolian'),
(108, 'mr', 'Marathi (Mara?hi)'),
(109, 'ms', 'Malay'),
(110, 'mt', 'Maltese'),
(111, 'my', 'Burmese'),
(112, 'na', 'Nauru'),
(113, 'nb', 'Norwegian BokmÃ¥l'),
(114, 'nd', 'North Ndebele'),
(115, 'ne', 'Nepali'),
(116, 'ng', 'Ndonga'),
(117, 'nl', 'Dutch'),
(118, 'nn', 'Norwegian Nynorsk'),
(119, 'no', 'Norwegian'),
(120, 'nr', 'South Ndebele'),
(121, 'nv', 'Navajo, Navaho'),
(122, 'ny', 'Chichewa; Chewa; Nyanja'),
(123, 'oc', 'Occitan'),
(124, 'oj', 'Ojibwe, Ojibwa'),
(125, 'om', 'Oromo'),
(126, 'or', 'Oriya'),
(127, 'os', 'Ossetian, Ossetic'),
(128, 'pa', 'Panjabi, Punjabi'),
(129, 'pi', 'Pali'),
(130, 'pl', 'Polish'),
(131, 'ps', 'Pashto, Pushto'),
(132, 'pt', 'Portuguese'),
(133, 'qu', 'Quechua'),
(134, 'rm', 'Romansh'),
(135, 'rn', 'Kirundi'),
(136, 'ro', 'Romanian, Moldavian, Moldovan'),
(137, 'ru', 'Russian'),
(138, 'rw', 'Kinyarwanda'),
(139, 'sa', 'Sanskrit (Sa?sk?ta)'),
(140, 'sc', 'Sardinian'),
(141, 'sd', 'Sindhi'),
(142, 'se', 'Northern Sami'),
(143, 'sg', 'Sango'),
(144, 'si', 'Sinhala, Sinhalese'),
(145, 'sk', 'Slovak'),
(146, 'sl', 'Slovene'),
(147, 'sm', 'Samoan'),
(148, 'sn', 'Shona'),
(149, 'so', 'Somali'),
(150, 'sq', 'Albanian'),
(151, 'sr', 'Serbian'),
(152, 'ss', 'Swati'),
(153, 'st', 'Southern Sotho'),
(154, 'su', 'Sundanese'),
(155, 'sv', 'Swedish'),
(156, 'sw', 'Swahili'),
(157, 'ta', 'Tamil'),
(158, 'te', 'Telugu'),
(159, 'tg', 'Tajik'),
(160, 'th', 'Thai'),
(161, 'ti', 'Tigrinya'),
(162, 'tk', 'Turkmen'),
(163, 'tl', 'Tagalog'),
(164, 'tn', 'Tswana'),
(165, 'to', 'Tonga (Tonga Islands)'),
(166, 'tr', 'Turkish'),
(167, 'ts', 'Tsonga'),
(168, 'tt', 'Tatar'),
(169, 'tw', 'Twi'),
(170, 'ty', 'Tahitian'),
(171, 'ug', 'Uighur, Uyghur'),
(172, 'uk', 'Ukrainian'),
(173, 'ur', 'Urdu'),
(174, 'uz', 'Uzbek'),
(175, 've', 'Venda'),
(176, 'vi', 'Vietnamese'),
(177, 'vo', 'VolapÃ¼k'),
(178, 'wa', 'Walloon'),
(179, 'wo', 'Wolof'),
(180, 'xh', 'Xhosa'),
(181, 'yi', 'Yiddish'),
(182, 'yo', 'Yoruba'),
(183, 'za', 'Zhuang, Chuang'),
(184, 'zu', 'Zulu');

-- --------------------------------------------------------

--
-- Table structure for table `leavegroupemployees`
--

CREATE TABLE `leavegroupemployees` (
  `id` bigint(20) NOT NULL,
  `employee` bigint(20) NOT NULL,
  `leave_group` bigint(20) NOT NULL,
  `group_joined_date` date DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leavegroups`
--

CREATE TABLE `leavegroups` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` text DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `leavegroups`
--

INSERT INTO `leavegroups` (`id`, `name`, `details`, `created`, `updated`) VALUES
(5, '2nd Feb', '2nd Feb', '2023-02-02 15:11:16', '2023-02-02 15:11:16');

-- --------------------------------------------------------

--
-- Table structure for table `leaveperiods`
--

CREATE TABLE `leaveperiods` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Inactive',
  `country` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `leaveperiods`
--

INSERT INTO `leaveperiods` (`id`, `name`, `date_start`, `date_end`, `status`, `country`) VALUES
(3, 'Year 2015', '2015-01-01', '2015-12-31', 'Active', NULL),
(4, 'Year 2016', '2016-01-01', '2016-12-31', 'Active', NULL),
(5, 'Year 2022', '2022-01-01', '2022-12-31', 'Active', NULL),
(6, 'Year 2023', '2023-01-01', '2023-12-31', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `leaverules`
--

CREATE TABLE `leaverules` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `leave_type` bigint(20) NOT NULL,
  `job_title` bigint(20) DEFAULT NULL,
  `employment_status` bigint(20) DEFAULT NULL,
  `employee` bigint(20) DEFAULT NULL,
  `supervisor_leave_assign` enum('Yes','No') DEFAULT 'Yes',
  `employee_can_apply` enum('Yes','No') DEFAULT 'Yes',
  `apply_beyond_current` enum('Yes','No') DEFAULT 'Yes',
  `leave_accrue` enum('No','Yes') DEFAULT 'No',
  `carried_forward` enum('No','Yes') DEFAULT 'No',
  `default_per_year` decimal(10,3) NOT NULL,
  `carried_forward_percentage` int(11) DEFAULT 0,
  `carried_forward_leave_availability` int(11) DEFAULT 365,
  `propotionate_on_joined_date` enum('No','Yes') DEFAULT 'No',
  `leave_group` bigint(20) DEFAULT NULL,
  `max_carried_forward_amount` int(11) DEFAULT 0,
  `exp_days` int(11) DEFAULT NULL,
  `leave_period` bigint(20) DEFAULT NULL,
  `department` bigint(20) DEFAULT NULL,
  `employee_leave_period` enum('Yes','No') DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leavestartingbalance`
--

CREATE TABLE `leavestartingbalance` (
  `id` bigint(20) NOT NULL,
  `leave_type` bigint(20) NOT NULL,
  `employee` bigint(20) DEFAULT NULL,
  `leave_period` bigint(20) NOT NULL,
  `amount` decimal(10,3) NOT NULL,
  `note` text DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leavetypes`
--

CREATE TABLE `leavetypes` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `supervisor_leave_assign` enum('Yes','No') DEFAULT 'Yes',
  `employee_can_apply` enum('Yes','No') DEFAULT 'Yes',
  `apply_beyond_current` enum('Yes','No') DEFAULT 'Yes',
  `leave_accrue` enum('No','Yes') DEFAULT 'No',
  `carried_forward` enum('No','Yes') DEFAULT 'No',
  `default_per_year` decimal(10,3) NOT NULL,
  `carried_forward_percentage` int(11) DEFAULT 0,
  `carried_forward_leave_availability` int(11) DEFAULT 365,
  `propotionate_on_joined_date` enum('No','Yes') DEFAULT 'No',
  `send_notification_emails` enum('Yes','No') DEFAULT 'Yes',
  `leave_group` bigint(20) DEFAULT NULL,
  `leave_color` varchar(10) DEFAULT NULL,
  `max_carried_forward_amount` int(11) DEFAULT 0,
  `employee_leave_period` enum('Yes','No') DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `leavetypes`
--

INSERT INTO `leavetypes` (`id`, `name`, `supervisor_leave_assign`, `employee_can_apply`, `apply_beyond_current`, `leave_accrue`, `carried_forward`, `default_per_year`, `carried_forward_percentage`, `carried_forward_leave_availability`, `propotionate_on_joined_date`, `send_notification_emails`, `leave_group`, `leave_color`, `max_carried_forward_amount`, `employee_leave_period`) VALUES
(1, 'Annual leave', 'No', 'Yes', 'No', 'No', 'No', '14.000', 0, 365, 'No', 'Yes', NULL, NULL, 0, 'No'),
(2, 'Casual leave', 'Yes', 'Yes', 'No', 'No', 'No', '7.000', 0, 365, 'No', 'Yes', NULL, NULL, 0, 'No'),
(3, 'Medical leave', 'Yes', 'Yes', 'Yes', 'No', 'No', '7.000', 0, 365, 'No', 'Yes', NULL, NULL, 0, 'No');

-- --------------------------------------------------------

--
-- Table structure for table `meetingrooms`
--

CREATE TABLE `meetingrooms` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `meeting_link` varchar(500) DEFAULT NULL,
  `departments` varchar(250) DEFAULT NULL,
  `teams` varchar(250) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) NOT NULL,
  `file` varchar(50) NOT NULL,
  `version` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `status` enum('Pending','Up','Down','UpError','DownError') DEFAULT 'Pending',
  `last_error` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `file`, `version`, `created`, `updated`, `status`, `last_error`) VALUES
(1, 'v20161116_190001_unique_index_cron_name.php', 190001, '2022-12-13 11:48:58', '2022-12-13 11:48:58', 'Up', NULL),
(2, 'v20170310_190401_add_timesheet_changes.php', 190401, '2022-12-13 11:48:58', '2022-12-13 11:48:58', 'Up', NULL),
(3, 'v20170621_190401_report_modifications.php', 190401, '2022-12-13 11:48:58', '2022-12-13 11:48:58', 'Up', NULL),
(4, 'v20170702_190500_add_attendance_image.php', 190500, '2022-12-13 11:48:58', '2022-12-13 11:48:59', 'Up', NULL),
(5, 'v20170908_200000_payroll_group.php', 200000, '2022-12-13 11:48:58', '2022-12-13 11:48:59', 'Up', NULL),
(6, 'v20170918_200000_add_attendance_image_out.php', 200000, '2022-12-13 11:48:58', '2022-12-13 11:48:59', 'Up', NULL),
(7, 'v20171001_200201_update_attendance_out.php', 200201, '2022-12-13 11:48:58', '2022-12-13 11:48:59', 'Up', NULL),
(8, 'v20171003_200301_add_deduction_group_payroll.php', 200301, '2022-12-13 11:48:58', '2022-12-13 11:48:59', 'Up', NULL),
(9, 'v20171003_200302_payroll_meta_export.php', 200302, '2022-12-13 11:48:58', '2022-12-13 11:48:59', 'Up', NULL),
(10, 'v20171126_200303_swift_mail.php', 200303, '2022-12-13 11:48:58', '2022-12-13 11:48:59', 'Up', NULL),
(11, 'v20180305_210100_drop_si_hi_languages.php', 210100, '2022-12-13 11:48:58', '2022-12-13 11:48:59', 'Up', NULL),
(12, 'v20180317_210200_leave_rule_experience.php', 210200, '2022-12-13 11:48:58', '2022-12-13 11:48:59', 'Up', NULL),
(13, 'v20180325_210101_delete_leave_group_employee.php', 210101, '2022-12-13 11:48:58', '2022-12-13 11:48:59', 'Up', NULL),
(14, 'v20180417_210501_update_menu_names.php', 210501, '2022-12-13 11:48:58', '2022-12-13 11:48:59', 'Up', NULL),
(15, 'v20180507_230001_update_travel_record_type.php', 230001, '2022-12-13 11:48:58', '2022-12-13 11:48:59', 'Up', NULL),
(16, 'v20180514_230002_add_conversation_tables.php', 230002, '2022-12-13 11:48:58', '2022-12-13 11:48:59', 'Up', NULL),
(17, 'v20180527_230003_update_menu_names.php', 230003, '2022-12-13 11:48:58', '2022-12-13 11:48:59', 'Up', NULL),
(18, 'v20180602_230004_add_gsuite_fields.php', 230004, '2022-12-13 11:48:58', '2022-12-13 11:48:59', 'Up', NULL),
(19, 'v20180615_230402_remove_eh_manager.php', 230402, '2022-12-13 11:48:58', '2022-12-13 11:48:59', 'Up', NULL),
(20, 'v20180622_240001_set_valid_until_null.php', 240001, '2022-12-13 11:48:58', '2022-12-13 11:48:59', 'Up', NULL),
(21, 'v20180623_240002_update_employee_report.php', 240002, '2022-12-13 11:48:58', '2022-12-13 11:48:59', 'Up', NULL),
(22, 'v20180801_240003_asset_management.php', 240003, '2022-12-13 11:48:58', '2022-12-13 11:48:59', 'Up', NULL),
(23, 'v20180808_250004_add_languages.php', 250004, '2022-12-13 11:48:58', '2022-12-13 11:48:59', 'Up', NULL),
(24, 'v20180810_250005_performance_review.php', 250005, '2022-12-13 11:48:58', '2022-12-13 11:48:59', 'Up', NULL),
(25, 'v20180912_250006_remove_null_users.php', 250006, '2022-12-13 11:48:58', '2022-12-13 11:48:59', 'Up', NULL),
(26, 'v20181025_260001_dept_based_leave_periods.php', 260001, '2022-12-13 11:48:58', '2022-12-13 11:48:59', 'Up', NULL),
(27, 'v20181106_260002_add_arabic_lang.php', 260002, '2022-12-13 11:48:58', '2022-12-13 11:48:59', 'Up', NULL),
(28, 'v20190125_260003_attendance_with_map.php', 260003, '2022-12-13 11:48:58', '2022-12-13 11:48:59', 'Up', NULL),
(29, 'v20190508_260004_update_time_zones.php', 260004, '2022-12-13 11:48:58', '2022-12-13 11:48:59', 'Up', NULL),
(30, 'v20190509_260004_add_location_filed_to_job.php', 260004, '2022-12-13 11:48:58', '2022-12-13 11:48:59', 'Up', NULL),
(31, 'v20190630_260601_update_module_names.php', 260601, '2022-12-13 11:48:58', '2022-12-13 11:48:59', 'Up', NULL),
(32, 'v20190630_260602_add_leave_period_to_rule.php', 260602, '2022-12-13 11:48:58', '2022-12-13 11:48:59', 'Up', NULL),
(33, 'v20190630_260603_add_dept_leave_to_rule.php', 260603, '2022-12-13 11:48:58', '2022-12-13 11:49:00', 'Up', NULL),
(34, 'v20190707_260004_attendance_out_map.php', 260004, '2022-12-13 11:48:58', '2022-12-13 11:49:00', 'Up', NULL),
(35, 'v20190707_260005_attendance_location.php', 260005, '2022-12-13 11:48:58', '2022-12-13 11:49:00', 'Up', NULL),
(36, 'v20190707_260006_google_map_api.php', 260006, '2022-12-13 11:48:58', '2022-12-13 11:49:00', 'Up', NULL),
(37, 'v20190805_260007_fix_expense_table.php', 260007, '2022-12-13 11:48:58', '2022-12-13 11:49:00', 'Up', NULL),
(38, 'v20190919_260008_employee_leave_periods.php', 260008, '2022-12-13 11:48:58', '2022-12-13 11:49:00', 'Up', NULL),
(39, 'v20191022_270001_joined_date_settings.php', 270001, '2022-12-13 11:48:58', '2022-12-13 11:49:00', 'Up', NULL),
(40, 'v20191024_270002_report_migrations.php', 270002, '2022-12-13 11:48:58', '2022-12-13 11:49:00', 'Up', NULL),
(41, 'v20191024_270003_payroll_column_function.php', 270003, '2022-12-13 11:48:58', '2022-12-13 11:49:00', 'Up', NULL),
(42, 'v20191024_270004_add_object_type_import.php', 270004, '2022-12-13 11:48:58', '2022-12-13 11:49:00', 'Up', NULL),
(43, 'v20191024_270005_update_data_importers.php', 270005, '2022-12-13 11:48:58', '2022-12-13 11:49:00', 'Up', NULL),
(44, 'v20191118_270006_update_data_importers.php', 270006, '2022-12-13 11:48:58', '2022-12-13 11:49:00', 'Up', NULL),
(45, 'v20191121_270007_team_management.php', 270007, '2022-12-13 11:48:58', '2022-12-13 11:49:00', 'Up', NULL),
(46, 'v20191121_270008_custom_user_roles.php', 270008, '2022-12-13 11:48:58', '2022-12-13 11:49:00', 'Up', NULL),
(47, 'v20200224_270004_update_module_names.php', 270004, '2022-12-13 11:48:58', '2022-12-13 11:49:00', 'Up', NULL),
(48, 'v20200311_270005_update_gender.php', 270005, '2022-12-13 11:48:58', '2022-12-13 11:49:00', 'Up', NULL),
(49, 'v20200316_270006_add_provinces.php', 270006, '2022-12-13 11:48:58', '2022-12-13 11:49:00', 'Up', NULL),
(50, 'v20200331_270009_add_meeting_rooms_table.php', 270009, '2022-12-13 11:48:58', '2022-12-13 11:49:00', 'Up', NULL),
(51, 'v20200404_270006_password_rate_limit.php', 270006, '2022-12-13 11:48:58', '2022-12-13 11:49:00', 'Up', NULL),
(52, 'v20200411_270009_email_log.php', 270009, '2022-12-13 11:48:58', '2022-12-13 11:49:00', 'Up', NULL),
(53, 'v20200429_270010_setting_groups.php', 270010, '2022-12-13 11:48:58', '2022-12-13 11:49:00', 'Up', NULL),
(54, 'v20200430_270008_partial_leave_setting.php', 270008, '2022-12-13 11:48:58', '2022-12-13 11:49:00', 'Up', NULL),
(55, 'v20200518_270011_add_al_language.php', 270011, '2022-12-13 11:48:58', '2022-12-13 11:49:00', 'Up', NULL),
(56, 'v20200530_270009_update_module_names.php', 270009, '2022-12-13 11:48:58', '2022-12-13 11:49:00', 'Up', NULL),
(57, 'v20200620_270014_update_module_names.php', 270014, '2022-12-13 11:48:58', '2022-12-13 11:49:00', 'Up', NULL),
(58, 'v20200828_270101_user_role_additional.php', 270101, '2022-12-13 11:48:58', '2022-12-13 11:49:01', 'Up', NULL),
(59, 'v20200828_270102_module_user_role_blacklist.php', 270102, '2022-12-13 11:48:58', '2022-12-13 11:49:01', 'Up', NULL),
(60, 'v20201017_271101_switch_off_photo_att.php', 271101, '2022-12-13 11:48:58', '2022-12-13 11:49:01', 'Up', NULL),
(61, 'v20201028_280001_update_module_names.php', 280001, '2022-12-13 11:48:58', '2022-12-13 11:49:01', 'Up', NULL),
(62, 'v20201028_280002_update_gender.php', 280002, '2022-12-13 11:48:58', '2022-12-13 11:49:01', 'Up', NULL),
(63, 'v20210228_280003_add_share_with_employee.php', 280003, '2022-12-13 11:48:58', '2022-12-13 11:49:01', 'Up', 'Duplicate column name \'share_with_employee\''),
(64, 'v20210228_280004_add_visible_to_document.php', 280004, '2022-12-13 11:48:58', '2022-12-13 11:49:01', 'Up', NULL),
(65, 'v20210327_280005_saml_settings.php', 280005, '2022-12-13 11:48:58', '2022-12-13 11:49:01', 'Up', NULL),
(66, 'v20210402_280006_modify_attendance_rep.php', 280006, '2022-12-13 11:48:58', '2022-12-13 11:49:01', 'Up', NULL),
(67, 'v20210606_290001_update_s3_config.php', 290001, '2022-12-13 11:48:58', '2022-12-13 11:49:01', 'Up', NULL),
(68, 'v20210606_290002_add_aws_region.php', 290002, '2022-12-13 11:48:58', '2022-12-13 11:49:01', 'Up', NULL),
(69, 'v20210606_290003_system_meta_data.php', 290003, '2022-12-13 11:48:58', '2022-12-13 11:49:01', 'Up', NULL),
(70, 'v20210626_290004_add_s3_settings.php', 290004, '2022-12-13 11:48:58', '2022-12-13 11:49:01', 'Up', NULL),
(71, 'v20210718_300001_add_data_dir_setting.php', 300001, '2022-12-13 11:48:58', '2022-12-13 11:49:01', 'Up', NULL),
(72, 'v20210925_301001_deprecate_logo.php', 301001, '2022-12-13 11:48:58', '2022-12-13 11:49:01', 'Up', NULL),
(73, 'v20211001_310000_employee_status.php', 310000, '2022-12-13 11:48:58', '2022-12-13 11:49:01', 'Up', NULL),
(74, 'v20211203_310001_performance_update.php', 310001, '2022-12-13 11:48:58', '2022-12-13 11:49:01', 'Up', NULL),
(75, 'v20211203_310002_performance_goals.php', 310002, '2022-12-13 11:48:58', '2022-12-13 11:49:01', 'Up', NULL),
(76, 'v20211223_310004_document_visibility.php', 310004, '2022-12-13 11:48:58', '2022-12-13 11:49:01', 'Up', NULL),
(77, 'v20220114_310005_performance_templates.php', 310005, '2022-12-13 11:48:58', '2022-12-13 11:49:01', 'Up', NULL),
(78, 'v20220122_310006_update_menu.php', 310006, '2022-12-13 11:48:58', '2022-12-13 11:49:01', 'Up', NULL),
(79, 'v20220122_310007_career_progression.php', 310007, '2022-12-13 11:48:58', '2022-12-13 11:49:01', 'Up', NULL),
(80, 'v20220123_310008_remove_photo_att.php', 310008, '2022-12-13 11:48:58', '2022-12-13 11:49:01', 'Up', NULL),
(81, 'v20220529_330001_google_map_api_key.php', 330001, '2022-12-13 11:48:58', '2022-12-13 11:49:01', 'Up', NULL),
(82, 'v20220929_191001_assetlogs.php', 191001, '2022-12-13 11:48:58', '2022-12-13 11:49:01', 'Up', NULL),
(83, 'v20221201_120001_leavegroupemployees.php', 120001, '2022-12-13 11:48:58', '2022-12-13 11:49:01', 'Up', NULL),
(84, 'v20221209_185901_leaverule.php', 185901, '2022-12-13 11:48:58', '2022-12-13 11:49:01', 'Up', NULL),
(85, 'v20221226_324901_employee.php', 324901, '2022-12-27 11:41:33', '2022-12-27 11:41:33', 'Up', NULL),
(88, 'v20221228_431111_restaccesstoken.php', 431111, '2022-12-28 19:39:51', '2022-12-28 19:39:51', 'Up', NULL),
(90, 'v20221229_125909_user.php', 125909, '2022-12-29 13:00:33', '2022-12-29 13:00:33', 'Up', NULL),
(91, 'v20230109_071643_user.php', 71643, '2023-01-09 19:21:47', '2023-01-09 19:21:47', 'Up', NULL),
(99, 'v20230110_040414_fieldreport.php', 40414, '2023-01-10 18:27:53', '2023-01-10 18:27:53', 'Up', NULL),
(100, 'v20230120_055744_modules.php', 55744, '2023-01-20 18:07:18', '2023-01-20 18:07:18', 'Up', NULL),
(101, 'v20230131_055241_fieldnamemapping.php', 55241, '2023-01-31 18:00:04', '2023-01-31 18:00:04', 'Up', NULL),
(104, 'v20230131_062738_employee.php', 62738, '2023-01-31 18:57:26', '2023-01-31 18:57:26', 'Up', NULL),
(106, 'v20230206_012256_fieldreport.php', 12256, '2023-02-06 13:29:52', '2023-02-06 13:29:53', 'Up', NULL),
(108, 'v20230206_043212_employee.php', 43212, '2023-02-06 16:37:11', '2023-02-06 16:37:11', 'Up', NULL),
(115, 'v20230208_010714_client.php', 10714, '2023-02-08 17:04:29', '2023-02-08 17:04:29', 'Up', NULL),
(120, 'v20230209_040458_modules.php', 40458, '2023-02-09 16:31:48', '2023-02-09 16:31:48', 'Up', NULL),
(121, 'v20230210_121454_visitor.php', 121454, '2023-02-10 12:16:34', '2023-02-10 12:16:34', 'Up', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` bigint(20) NOT NULL,
  `menu` varchar(30) NOT NULL,
  `name` varchar(100) NOT NULL,
  `label` varchar(100) NOT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `mod_group` varchar(30) NOT NULL,
  `mod_order` int(11) DEFAULT NULL,
  `status` enum('Enabled','Disabled') DEFAULT 'Enabled',
  `version` varchar(10) DEFAULT '',
  `update_path` varchar(500) DEFAULT '',
  `user_levels` varchar(500) NOT NULL,
  `user_roles` text DEFAULT NULL,
  `user_roles_blacklist` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `menu`, `name`, `label`, `icon`, `mod_group`, `mod_order`, `status`, `version`, `update_path`, `user_levels`, `user_roles`, `user_roles_blacklist`) VALUES
(1, 'Manage', 'asset_type', 'Company Assets', 'fa-tasks', 'admin', 152, 'Enabled', '', 'admin>asset_type', '[\"Admin\",\"Manager\",\"User\"]', '', NULL),
(2, 'Manage', 'attendance', 'Attendance', 'fa-clock', 'admin', 2, 'Enabled', '', 'admin>attendance', '[\"Admin\",\"Manager\"]', '', NULL),
(3, 'Insights', 'charts', 'Time and Attendance', 'fa-user-clock', 'admin', 1, 'Enabled', '', 'admin>charts', '[\"Admin\",\"Manager\"]', '', NULL),
(4, 'Admin', 'clients', 'Clients', 'fa-user-circle', 'admin', 52, 'Enabled', '', 'admin>clients', '[\"Admin\",\"Manager\"]', '', NULL),
(5, 'Admin', 'company_structure', 'Company Structure', 'fa-building', 'admin', 2, 'Enabled', '', 'admin>company_structure', '[\"Admin\",\"Manager\"]', '', NULL),
(6, 'Admin', 'custom_fields', 'Custom Fields', 'fa-code', 'admin', 892, 'Enabled', '', 'admin>custom_fields', '[\"Admin\"]', '', NULL),
(7, 'Admin', 'dashboard', 'Dashboard', 'fa-desktop', 'admin', 1, 'Enabled', '', 'admin>dashboard', '[\"Admin\",\"Other\"]', '', NULL),
(8, 'System', 'data', 'Data', 'fa-database', 'admin', 8, 'Enabled', '', 'admin>data', '[\"Admin\"]', '', NULL),
(9, 'Manage', 'documents', 'Documents', 'fa-file-alt', 'admin', 1, 'Enabled', '', 'admin>documents', '[\"Admin\",\"Manager\"]', '', NULL),
(10, 'Employees', 'employees', 'Employees', 'fa-users', 'admin', 1, 'Enabled', '', 'admin>employees', '[\"Admin\",\"Manager\"]', '', NULL),
(11, 'System', 'fieldnames', 'Field Names', 'fa-ruler-horizontal', 'admin', 81, 'Enabled', '', 'admin>fieldnames', '[\"Admin\"]', '', NULL),
(12, 'Admin', 'jobs', 'Job Details Setup', 'fa-columns', 'admin', 3, 'Enabled', '', 'admin>jobs', '[\"Admin\"]', '', NULL),
(13, 'Manage', 'leave_type', 'Leave', 'fa-pause', 'admin', 83, 'Enabled', '', 'admin>leave_type', '[\"Admin\",\"Manager\"]', '', NULL),
(14, 'Manage', 'loans', 'Loans', 'fa-money-check', 'admin', 92, 'Enabled', '', 'admin>loans', '[\"Admin\"]', '', NULL),
(15, 'System', 'metadata', 'Manage Metadata', 'fa-microchip', 'admin', 6, 'Enabled', '', 'admin>metadata', '[\"Admin\"]', '', NULL),
(16, 'System', 'modules', 'Manage Modules', 'fa-folder-open', 'admin', 3, 'Enabled', '', 'admin>modules', '[\"Admin\"]', '', NULL),
(17, 'Manage', 'overtime', 'Overtime', 'fa-align-center', 'admin', 91, 'Enabled', '', 'admin>overtime', '[\"Admin\",\"Manager\"]', '', NULL),
(18, 'Payroll', 'payroll', 'Payroll Reports', 'fa-cogs', 'admin', 6, 'Enabled', '', 'admin>payroll', '[\"Admin\"]', '', NULL),
(19, 'System', 'permissions', 'Manage Permissions', 'fa-unlock', 'admin', 4, 'Enabled', '', 'admin>permissions', '[\"Admin\"]', '', NULL),
(20, 'Admin', 'projects', 'Projects', 'fa-list-alt', 'admin', 51, 'Enabled', '', 'admin>projects', '[\"Admin\",\"Manager\"]', '', NULL),
(21, 'Admin', 'qualifications', 'Qualifications Setup', 'fa-check-square', 'admin', 4, 'Enabled', '', 'admin>qualifications', '[\"Admin\",\"Manager\"]', '', NULL),
(22, 'Admin Reports', 'reports', 'Reports', 'fa-window-maximize', 'admin', 1, 'Enabled', '', 'admin>reports', '[\"Admin\",\"Manager\"]', '', NULL),
(23, 'Payroll', 'salary', 'Salary', 'fa-money-check-alt', 'admin', 1, 'Enabled', '', 'admin>salary', '[\"Admin\"]', '', NULL),
(24, 'System', 'settings', 'Settings', 'fa-cogs', 'admin', 1, 'Enabled', '', 'admin>settings', '[\"Admin\"]', '', NULL),
(25, 'Manage', 'travel', 'Travel', 'fa-plane', 'admin', 9, 'Enabled', '', 'admin>travel', '[\"Admin\",\"Manager\"]', '', NULL),
(26, 'System', 'users', 'Users', 'fa-user', 'admin', 2, 'Enabled', '', 'admin>users', '[\"Admin\"]', '', NULL),
(27, 'My Time Management', 'attendance', 'My Attendance', 'fa-clock', 'user', 2, 'Enabled', '', 'modules>attendance', '[\"Admin\",\"Manager\",\"Employee\"]', '', NULL),
(28, 'Personal Information', 'dashboard', 'Dashboard', 'fa-desktop', 'user', 1, 'Enabled', '', 'modules>dashboard', '[\"Admin\",\"Manager\",\"Employee\"]', '', NULL),
(29, 'Personal Information', 'dependents', 'Dependents', 'fa-expand', 'user', 5, 'Enabled', '', 'modules>dependents', '[\"Admin\",\"Manager\",\"Employee\"]', '', NULL),
(30, 'My Documents', 'documents', 'My Documents', 'fa-file', 'user', 1, 'Enabled', '', 'modules>documents', '[\"Admin\",\"Manager\",\"Employee\"]', '', NULL),
(31, 'Personal Information', 'emergency_contact', 'Emergency Contacts', 'fa-phone-square', 'user', 6, 'Enabled', '', 'modules>emergency_contact', '[\"Admin\",\"Manager\",\"Employee\"]', '', NULL),
(32, 'My Leave', 'employee_leave', 'My Leave Management', 'fa-calendar-alt', 'user', 8, 'Enabled', '', 'modules>employee_leave', '[\"Admin\",\"Manager\",\"Employee\"]', '', NULL),
(33, 'Personal Information', 'employees', 'Basic Information', 'fa-user', 'user', 2, 'Enabled', '', 'modules>employees', '[\"Admin\",\"Manager\",\"Employee\"]', '', NULL),
(34, 'My Finance', 'loans', 'My Loans', 'fa-money-check', 'user', 3, 'Enabled', '', 'modules>loans', '[\"Admin\",\"Manager\",\"Employee\"]', '', NULL),
(35, 'My Time Management', 'overtime', 'My Overtime Requests', 'fa-calendar-plus', 'user', 5, 'Enabled', '', 'modules>overtime', '[\"Admin\",\"Manager\",\"Employee\"]', '', NULL),
(36, 'My Time Management', 'projects', 'My Projects', 'fa-project-diagram', 'user', 1, 'Enabled', '', 'modules>projects', '[\"Admin\",\"Manager\",\"Employee\"]', '', NULL),
(37, 'Personal Information', 'qualifications', 'Qualifications', 'fa-graduation-cap', 'user', 3, 'Enabled', '', 'modules>qualifications', '[\"Admin\",\"Manager\",\"Employee\"]', '', NULL),
(38, 'My User Reports', 'reports', 'My Reports', 'fa-window-maximize', 'user', 1, 'Enabled', '', 'modules>reports', '[\"Admin\",\"Manager\",\"Employee\"]', '', NULL),
(39, 'My Finance', 'salary', 'My Salary', 'fa-calculator', 'user', 2, 'Enabled', '', 'modules>salary', '[\"Admin\",\"Manager\",\"Employee\"]', '', NULL),
(40, 'Company', 'staffdirectory', 'Staff Directory', 'fa-user', 'user', 1, 'Enabled', '', 'modules>staffdirectory', '[\"Admin\",\"Manager\",\"Employee\"]', '', NULL),
(41, 'My Time Management', 'time_sheets', 'My Time Sheets', 'fa-stopwatch', 'user', 3, 'Enabled', '', 'modules>time_sheets', '[\"Admin\",\"Manager\",\"Employee\"]', '', NULL),
(42, 'My Travel Management', 'travel', 'My Travel', 'fa-plane', 'user', 1, 'Enabled', '', 'modules>travel', '[\"Admin\",\"Manager\",\"Employee\"]', '', NULL),
(45, 'Reports', 'fieldreport', 'Field Reports', 'fa-tasks', 'admin', 155, 'Enabled', '', 'admin>fieldreport', '[\"Admin\",\"Manager\",\"User\"]', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `nationality`
--

CREATE TABLE `nationality` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `nationality`
--

INSERT INTO `nationality` (`id`, `name`) VALUES
(1, 'Afghan'),
(2, 'Albanian'),
(3, 'Algerian'),
(4, 'American'),
(5, 'Andorran'),
(6, 'Angolan'),
(7, 'Antiguans'),
(8, 'Argentinean'),
(9, 'Armenian'),
(10, 'Australian'),
(11, 'Austrian'),
(12, 'Azerbaijani'),
(13, 'Bahamian'),
(14, 'Bahraini'),
(15, 'Bangladeshi'),
(16, 'Barbadian'),
(17, 'Barbudans'),
(18, 'Batswana'),
(19, 'Belarusian'),
(20, 'Belgian'),
(21, 'Belizean'),
(22, 'Beninese'),
(23, 'Bhutanese'),
(24, 'Bolivian'),
(25, 'Bosnian'),
(26, 'Brazilian'),
(27, 'British'),
(28, 'Bruneian'),
(29, 'Bulgarian'),
(30, 'Burkinabe'),
(31, 'Burmese'),
(32, 'Burundian'),
(33, 'Cambodian'),
(34, 'Cameroonian'),
(35, 'Canadian'),
(36, 'Cape Verdean'),
(37, 'Central African'),
(38, 'Chadian'),
(39, 'Chilean'),
(40, 'Chinese'),
(41, 'Colombian'),
(42, 'Comoran'),
(43, 'Congolese'),
(44, 'Costa Rican'),
(45, 'Croatian'),
(46, 'Cuban'),
(47, 'Cypriot'),
(48, 'Czech'),
(49, 'Danish'),
(50, 'Djibouti'),
(51, 'Dominican'),
(52, 'Dutch'),
(53, 'East Timorese'),
(54, 'Ecuadorean'),
(55, 'Egyptian'),
(56, 'Emirian'),
(57, 'Equatorial Guinean'),
(58, 'Eritrean'),
(59, 'Estonian'),
(60, 'Ethiopian'),
(61, 'Fijian'),
(62, 'Filipino'),
(63, 'Finnish'),
(64, 'French'),
(65, 'Gabonese'),
(66, 'Gambian'),
(67, 'Georgian'),
(68, 'German'),
(69, 'Ghanaian'),
(70, 'Greek'),
(71, 'Grenadian'),
(72, 'Guatemalan'),
(73, 'Guinea-Bissauan'),
(74, 'Guinean'),
(75, 'Guyanese'),
(76, 'Haitian'),
(77, 'Herzegovinian'),
(78, 'Honduran'),
(79, 'Hungarian'),
(80, 'I-Kiribati'),
(81, 'Icelander'),
(82, 'Indian'),
(83, 'Indonesian'),
(84, 'Iranian'),
(85, 'Iraqi'),
(86, 'Irish'),
(87, 'Israeli'),
(88, 'Italian'),
(89, 'Ivorian'),
(90, 'Jamaican'),
(91, 'Japanese'),
(92, 'Jordanian'),
(93, 'Kazakhstani'),
(94, 'Kenyan'),
(95, 'Kittian and Nevisian'),
(96, 'Kuwaiti'),
(97, 'Kyrgyz'),
(98, 'Laotian'),
(99, 'Latvian'),
(100, 'Lebanese'),
(101, 'Liberian'),
(102, 'Libyan'),
(103, 'Liechtensteiner'),
(104, 'Lithuanian'),
(105, 'Luxembourger'),
(106, 'Macedonian'),
(107, 'Malagasy'),
(108, 'Malawian'),
(109, 'Malaysian'),
(110, 'Maldivan'),
(111, 'Malian'),
(112, 'Maltese'),
(113, 'Marshallese'),
(114, 'Mauritanian'),
(115, 'Mauritian'),
(116, 'Mexican'),
(117, 'Micronesian'),
(118, 'Moldovan'),
(119, 'Monacan'),
(120, 'Mongolian'),
(121, 'Moroccan'),
(122, 'Mosotho'),
(123, 'Motswana'),
(124, 'Mozambican'),
(125, 'Namibian'),
(126, 'Nauruan'),
(127, 'Nepalese'),
(128, 'New Zealander'),
(129, 'Nicaraguan'),
(130, 'Nigerian'),
(131, 'Nigerien'),
(132, 'North Korean'),
(133, 'Northern Irish'),
(134, 'Norwegian'),
(135, 'Omani'),
(136, 'Pakistani'),
(137, 'Palauan'),
(138, 'Panamanian'),
(139, 'Papua New Guinean'),
(140, 'Paraguayan'),
(141, 'Peruvian'),
(142, 'Polish'),
(143, 'Portuguese'),
(144, 'Qatari'),
(145, 'Romanian'),
(146, 'Russian'),
(147, 'Rwandan'),
(148, 'Saint Lucian'),
(149, 'Salvadoran'),
(150, 'Samoan'),
(151, 'San Marinese'),
(152, 'Sao Tomean'),
(153, 'Saudi'),
(154, 'Scottish'),
(155, 'Senegalese'),
(156, 'Serbian'),
(157, 'Seychellois'),
(158, 'Sierra Leonean'),
(159, 'Singaporean'),
(160, 'Slovakian'),
(161, 'Slovenian'),
(162, 'Solomon Islander'),
(163, 'Somali'),
(164, 'South African'),
(165, 'South Korean'),
(166, 'Spanish'),
(167, 'Sri Lankan'),
(168, 'Sudanese'),
(169, 'Surinamer'),
(170, 'Swazi'),
(171, 'Swedish'),
(172, 'Swiss'),
(173, 'Syrian'),
(174, 'Taiwanese'),
(175, 'Tajik'),
(176, 'Tanzanian'),
(177, 'Thai'),
(178, 'Togolese'),
(179, 'Tongan'),
(180, 'Trinidadian or Tobagonian'),
(181, 'Tunisian'),
(182, 'Turkish'),
(183, 'Tuvaluan'),
(184, 'Ugandan'),
(185, 'Ukrainian'),
(186, 'Uruguayan'),
(187, 'Uzbekistani'),
(188, 'Venezuelan'),
(189, 'Vietnamese'),
(190, 'Welsh'),
(191, 'Yemenite'),
(192, 'Zambian'),
(193, 'Zimbabwean');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) NOT NULL,
  `time` datetime DEFAULT NULL,
  `fromUser` bigint(20) DEFAULT NULL,
  `fromEmployee` bigint(20) DEFAULT NULL,
  `toUser` bigint(20) NOT NULL,
  `image` varchar(500) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `action` text DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `status` enum('Unread','Read') DEFAULT 'Unread',
  `employee` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `overtimecategories`
--

CREATE TABLE `overtimecategories` (
  `id` bigint(20) NOT NULL,
  `name` varchar(500) NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payfrequency`
--

CREATE TABLE `payfrequency` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `payfrequency`
--

INSERT INTO `payfrequency` (`id`, `name`) VALUES
(1, 'Bi Weekly'),
(2, 'Weekly'),
(3, 'Semi Monthly'),
(4, 'Monthly'),
(5, 'Yearly');

-- --------------------------------------------------------

--
-- Table structure for table `paygrades`
--

CREATE TABLE `paygrades` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `currency` varchar(3) NOT NULL,
  `min_salary` decimal(12,2) DEFAULT 0.00,
  `max_salary` decimal(12,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `paygrades`
--

INSERT INTO `paygrades` (`id`, `name`, `currency`, `min_salary`, `max_salary`) VALUES
(1, 'Manager', 'SGD', '5000.00', '15000.00'),
(2, 'Executive', 'SGD', '3500.00', '7000.00'),
(3, 'Assistant ', 'SGD', '2000.00', '4000.00'),
(4, 'Administrator', 'SGD', '2000.00', '6000.00');

-- --------------------------------------------------------

--
-- Table structure for table `payroll`
--

CREATE TABLE `payroll` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `pay_period` bigint(20) NOT NULL,
  `department` bigint(20) NOT NULL,
  `column_template` bigint(20) DEFAULT NULL,
  `columns` varchar(500) DEFAULT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `status` enum('Draft','Completed','Processing') DEFAULT 'Draft',
  `payslipTemplate` bigint(20) DEFAULT NULL,
  `deduction_group` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `payroll`
--

INSERT INTO `payroll` (`id`, `name`, `pay_period`, `department`, `column_template`, `columns`, `date_start`, `date_end`, `status`, `payslipTemplate`, `deduction_group`) VALUES
(3, 'Indian Payroll Calculation 2', 4, 6, NULL, '[\"1\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"21\"]', '2022-12-01', '2022-12-30', 'Draft', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `payrollcolumns`
--

CREATE TABLE `payrollcolumns` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `calculation_hook` varchar(200) DEFAULT NULL,
  `salary_components` varchar(500) DEFAULT NULL,
  `deductions` varchar(500) DEFAULT NULL,
  `add_columns` varchar(500) DEFAULT NULL,
  `sub_columns` varchar(500) DEFAULT NULL,
  `colorder` int(11) DEFAULT NULL,
  `editable` enum('Yes','No') DEFAULT 'Yes',
  `enabled` enum('Yes','No') DEFAULT 'Yes',
  `default_value` varchar(25) DEFAULT NULL,
  `calculation_columns` varchar(500) DEFAULT NULL,
  `calculation_function` text DEFAULT NULL,
  `deduction_group` bigint(20) DEFAULT NULL,
  `function_type` enum('Simple','Advanced') DEFAULT 'Simple'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `payrollcolumns`
--

INSERT INTO `payrollcolumns` (`id`, `name`, `calculation_hook`, `salary_components`, `deductions`, `add_columns`, `sub_columns`, `colorder`, `editable`, `enabled`, `default_value`, `calculation_columns`, `calculation_function`, `deduction_group`, `function_type`) VALUES
(1, 'India - Basic Salary', NULL, '[\"1\"]', '[]', '[]', '[]', 1, 'No', 'Yes', '0.00', '[]', '', NULL, 'Advanced'),
(10, 'India - Car Allowance', NULL, '[\"3\"]', '[]', '[]', '[]', 2, 'No', 'Yes', '0.00', '', '', NULL, 'Advanced'),
(11, 'India - Hours worked per month', 'AttendanceUtil_getRegularWorkedHours', '[]', '[]', '[]', '[]', 3, 'No', 'Yes', '0', '', '', NULL, 'Advanced'),
(12, 'India - Hourly Pay', NULL, '[]', '[]', '[]', '[]', 4, 'No', 'Yes', '0.00', '', '', 1, 'Advanced'),
(13, 'India - Payment for hours worked', NULL, '[]', '[]', '[]', '[]', 5, 'No', 'Yes', '0.00', '[{\"name\":\"R\",\"column\":\"11\",\"id\":\"calculation_columns_1\"},{\"name\":\"S\",\"column\":\"12\",\"id\":\"calculation_columns_2\"}]', 'R * S', NULL, 'Simple'),
(14, 'India - Gross Salary', NULL, '[]', '[]', '[\"1\",\"10\",\"13\"]', '[]', 6, 'Yes', 'Yes', '0.00', '[]', '', NULL, 'Advanced'),
(15, 'India - Tax', NULL, '[]', '[\"1\"]', '[]', '[]', 7, 'Yes', 'Yes', '0.00', '[]', '', NULL, 'Simple'),
(16, 'India - Net Salary', NULL, '[]', '[]', '[\"14\"]', '[\"15\"]', 8, 'No', 'Yes', '0.00', '', '', NULL, 'Simple'),
(17, 'Father Name', 'EmployeeData_getFieldValue', '[]', '[]', '[]', '[]', 9, 'Yes', 'Yes', '0', '', 'lather_name', NULL, 'Simple'),
(21, 'Sis2', NULL, '[]', '[]', '[]', '[]', 10, 'Yes', 'Yes', '0', '', '', NULL, 'Advanced');

-- --------------------------------------------------------

--
-- Table structure for table `payrollcolumntemplates`
--

CREATE TABLE `payrollcolumntemplates` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `columns` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payrolldata`
--

CREATE TABLE `payrolldata` (
  `id` int(11) NOT NULL,
  `payroll` bigint(20) NOT NULL,
  `employee` bigint(20) NOT NULL,
  `payroll_item` int(11) NOT NULL,
  `amount` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `payrolldata`
--

INSERT INTO `payrolldata` (`id`, `payroll`, `employee`, `payroll_item`, `amount`) VALUES
(1, 3, 72, 17, '12'),
(2, 3, 72, 15, '40'),
(3, 3, 73, 15, '40'),
(5, 3, 72, 14, '10000.00'),
(6, 3, 73, 14, '20000');

-- --------------------------------------------------------

--
-- Table structure for table `payrollemployees`
--

CREATE TABLE `payrollemployees` (
  `id` bigint(20) NOT NULL,
  `employee` bigint(20) NOT NULL,
  `pay_frequency` int(11) DEFAULT NULL,
  `currency` bigint(20) DEFAULT NULL,
  `deduction_exemptions` varchar(250) DEFAULT NULL,
  `deduction_allowed` varchar(250) DEFAULT NULL,
  `deduction_group` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `payrollemployees`
--

INSERT INTO `payrollemployees` (`id`, `employee`, `pay_frequency`, `currency`, `deduction_exemptions`, `deduction_allowed`, `deduction_group`) VALUES
(3, 72, 4, 67, '[]', '[]', 1),
(4, 73, 4, 67, '[]', '[]', 1);

-- --------------------------------------------------------

--
-- Table structure for table `paysliptemplates`
--

CREATE TABLE `paysliptemplates` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `data` longtext DEFAULT NULL,
  `status` enum('Show','Hide') DEFAULT 'Show',
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `paysliptemplates`
--

INSERT INTO `paysliptemplates` (`id`, `name`, `data`, `status`, `created`, `updated`) VALUES
(2, 'Indian Payslip Template', '[{\"type\":\"Company Logo\",\"payrollColumn\":\"NULL\",\"label\":\"\",\"text\":\"\",\"status\":\"Show\",\"id\":\"data_1\"},{\"type\":\"Company Name\",\"payrollColumn\":\"NULL\",\"label\":\"\",\"text\":\"\",\"status\":\"Show\",\"id\":\"data_2\"},{\"type\":\"Separators\",\"payrollColumn\":\"NULL\",\"label\":\"\",\"text\":\"\",\"status\":\"Show\",\"id\":\"data_3\"},{\"type\":\"Payroll Column\",\"payrollColumn\":\"1\",\"label\":\"Basic Salary\",\"text\":\"\",\"status\":\"Show\",\"id\":\"data_4\"},{\"type\":\"Payroll Column\",\"payrollColumn\":\"2\",\"label\":\"Car Allowance\",\"text\":\"\",\"status\":\"Show\",\"id\":\"data_5\"},{\"type\":\"Payroll Column\",\"payrollColumn\":\"5\",\"label\":\"Payment for Hours Worked\",\"text\":\"\",\"status\":\"Show\",\"id\":\"data_6\"},{\"type\":\"Separators\",\"payrollColumn\":\"NULL\",\"label\":\"\",\"text\":\"\",\"status\":\"Show\",\"id\":\"data_7\"},{\"type\":\"Payroll Column\",\"payrollColumn\":\"6\",\"label\":\"Gross Pay\",\"text\":\"\",\"status\":\"Show\",\"id\":\"data_8\"},{\"type\":\"Payroll Column\",\"payrollColumn\":\"8\",\"label\":\"Tax 19%\",\"text\":\"\",\"status\":\"Show\",\"id\":\"data_9\"},{\"type\":\"Separators\",\"payrollColumn\":\"NULL\",\"label\":\"\",\"text\":\"\",\"status\":\"Show\",\"id\":\"data_10\"},{\"type\":\"Payroll Column\",\"payrollColumn\":\"9\",\"label\":\"Net Pay\",\"text\":\"\",\"status\":\"Show\",\"id\":\"data_11\"}]', NULL, '2023-01-04 12:32:49', '2023-01-04 12:32:49');

-- --------------------------------------------------------

--
-- Table structure for table `performancereviews`
--

CREATE TABLE `performancereviews` (
  `id` bigint(20) NOT NULL,
  `name` varchar(150) NOT NULL,
  `employee` bigint(20) DEFAULT NULL,
  `coordinator` bigint(20) DEFAULT NULL,
  `attendees` varchar(50) NOT NULL,
  `form` bigint(20) DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `review_date` datetime DEFAULT NULL,
  `review_period_start` datetime DEFAULT NULL,
  `review_period_end` datetime DEFAULT NULL,
  `self_assessment_due` datetime DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) NOT NULL,
  `user_level` enum('Admin','Employee','Manager') DEFAULT NULL,
  `module_id` bigint(20) NOT NULL,
  `permission` varchar(200) DEFAULT NULL,
  `meta` varchar(500) DEFAULT NULL,
  `value` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `user_level`, `module_id`, `permission`, `meta`, `value`) VALUES
(1, 'Manager', 1, 'Add Assets', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(2, 'Manager', 1, 'Edit Assets', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(3, 'Manager', 1, 'Delete Assets', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'No'),
(4, 'Manager', 4, 'Add Clients', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(5, 'Manager', 4, 'Edit Clients', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(6, 'Manager', 4, 'Delete Clients', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'No'),
(7, 'Manager', 5, 'Add Company Structure', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'No'),
(8, 'Manager', 5, 'Edit Company Structure', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'No'),
(9, 'Manager', 5, 'Delete Company Structure', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'No'),
(10, 'Manager', 13, 'Add Leaves', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(11, 'Manager', 13, 'Edit Leaves', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(12, 'Manager', 13, 'Delete Leaves', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(13, 'Manager', 20, 'Add Projects', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(14, 'Manager', 20, 'Edit Projects', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(15, 'Manager', 20, 'Delete Projects', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'No'),
(16, 'Manager', 21, 'Add Skills', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(17, 'Manager', 21, 'Edit Skills', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(18, 'Manager', 21, 'Delete Skills', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'No'),
(19, 'Manager', 21, 'Add Education', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(20, 'Manager', 21, 'Edit Education', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(21, 'Manager', 21, 'Delete Education', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'No'),
(22, 'Manager', 21, 'Add Certifications', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(23, 'Manager', 21, 'Edit Certifications', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(24, 'Manager', 21, 'Delete Certifications', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'No'),
(25, 'Manager', 21, 'Add Languages', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(26, 'Manager', 21, 'Edit Languages', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(27, 'Manager', 21, 'Delete Languages', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'No'),
(28, 'Manager', 29, 'Add Dependents', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(29, 'Manager', 29, 'Edit Dependents', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(30, 'Manager', 29, 'Delete Dependents', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(31, 'Employee', 29, 'Add Dependents', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(32, 'Employee', 29, 'Edit Dependents', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(33, 'Employee', 29, 'Delete Dependents', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(34, 'Manager', 30, 'Add Documents', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(35, 'Manager', 30, 'Edit Documents', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(36, 'Manager', 30, 'Delete Documents', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(37, 'Employee', 30, 'Add Documents', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(38, 'Employee', 30, 'Edit Documents', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(39, 'Employee', 30, 'Delete Documents', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(40, 'Manager', 31, 'Add Emergency Contacts', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(41, 'Manager', 31, 'Edit Emergency Contacts', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(42, 'Manager', 31, 'Delete Emergency Contacts', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(43, 'Employee', 31, 'Add Emergency Contacts', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(44, 'Employee', 31, 'Edit Emergency Contacts', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(45, 'Employee', 31, 'Delete Emergency Contacts', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(46, 'Manager', 32, 'Add Leaves', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(47, 'Manager', 32, 'Edit Leaves', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(48, 'Manager', 32, 'Delete Leaves', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(49, 'Employee', 32, 'Add Leaves', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(50, 'Employee', 32, 'Edit Leaves', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(51, 'Employee', 32, 'Delete Leaves', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(52, 'Manager', 33, 'Edit Employee Number', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'No'),
(53, 'Manager', 33, 'Edit EPF/CPF Number', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(54, 'Manager', 33, 'Edit Employment Status', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'No'),
(55, 'Manager', 33, 'Edit Job Title', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(56, 'Manager', 33, 'Edit Pay Grade', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(57, 'Manager', 33, 'Edit Joined Date', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(58, 'Manager', 33, 'Edit Department', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(59, 'Manager', 33, 'Edit Work Email', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(60, 'Manager', 33, 'Edit Country', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(61, 'Manager', 33, 'Upload/Delete Profile Image', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(62, 'Manager', 33, 'Edit Employee Details', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(63, 'Employee', 33, 'Edit Employee Number', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'No'),
(64, 'Employee', 33, 'Edit EPF/CPF Number', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(65, 'Employee', 33, 'Edit Employment Status', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'No'),
(66, 'Employee', 33, 'Edit Job Title', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'No'),
(67, 'Employee', 33, 'Edit Pay Grade', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'No'),
(68, 'Employee', 33, 'Edit Joined Date', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'No'),
(69, 'Employee', 33, 'Edit Department', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'No'),
(70, 'Employee', 33, 'Edit Work Email', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'No'),
(71, 'Employee', 33, 'Edit Country', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'No'),
(72, 'Employee', 33, 'Upload/Delete Profile Image', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(73, 'Employee', 33, 'Edit Employee Details', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(74, 'Manager', 36, 'Add Projects', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(75, 'Manager', 36, 'Edit Projects', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(76, 'Manager', 36, 'Delete Projects', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(77, 'Employee', 36, 'Add Projects', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'No'),
(78, 'Employee', 36, 'Edit Projects', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'No'),
(79, 'Employee', 36, 'Delete Projects', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'No'),
(80, 'Manager', 39, 'Add Salary', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'No'),
(81, 'Manager', 39, 'Edit Salary', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'No'),
(82, 'Manager', 39, 'Delete Salary', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'No'),
(83, 'Employee', 39, 'Add Salary', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'No'),
(84, 'Employee', 39, 'Edit Salary', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'No'),
(85, 'Employee', 39, 'Delete Salary', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'No'),
(86, 'Manager', 42, 'Add Travel Request', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(87, 'Manager', 42, 'Edit Travel Request', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(88, 'Manager', 42, 'Delete Travel Request', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(89, 'Employee', 42, 'Add Travel Request', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(90, 'Employee', 42, 'Edit Travel Request', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(91, 'Employee', 42, 'Delete Travel Request', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `client` bigint(20) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `status` enum('Active','On Hold','Completed','Dropped') DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `client`, `details`, `created`, `status`) VALUES
(1, 'Project 1', 3, NULL, '2013-01-03 05:53:38', 'Active'),
(2, 'Project 2', 3, NULL, '2013-01-03 05:54:22', 'Active'),
(3, 'Project 3', 1, NULL, '2013-01-03 05:55:02', 'Active'),
(4, 'Project 4', 2, NULL, '2013-01-03 05:56:16', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE `province` (
  `id` bigint(20) NOT NULL,
  `name` varchar(40) NOT NULL DEFAULT '',
  `code` char(2) NOT NULL DEFAULT '',
  `country` char(2) NOT NULL DEFAULT 'US'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`id`, `name`, `code`, `country`) VALUES
(1, 'Alaska', 'AK', 'US'),
(2, 'Alabama', 'AL', 'US'),
(3, 'American Samoa', 'AS', 'US'),
(4, 'Arizona', 'AZ', 'US'),
(5, 'Arkansas', 'AR', 'US'),
(6, 'California', 'CA', 'US'),
(7, 'Colorado', 'CO', 'US'),
(8, 'Connecticut', 'CT', 'US'),
(9, 'Delaware', 'DE', 'US'),
(10, 'District of Columbia', 'DC', 'US'),
(11, 'Federated States of Micronesia', 'FM', 'US'),
(12, 'Florida', 'FL', 'US'),
(13, 'Georgia', 'GA', 'US'),
(14, 'Guam', 'GU', 'US'),
(15, 'Hawaii', 'HI', 'US'),
(16, 'Idaho', 'ID', 'US'),
(17, 'Illinois', 'IL', 'US'),
(18, 'Indiana', 'IN', 'US'),
(19, 'Iowa', 'IA', 'US'),
(20, 'Kansas', 'KS', 'US'),
(21, 'Kentucky', 'KY', 'US'),
(22, 'Louisiana', 'LA', 'US'),
(23, 'Maine', 'ME', 'US'),
(24, 'Marshall Islands', 'MH', 'US'),
(25, 'Maryland', 'MD', 'US'),
(26, 'Massachusetts', 'MA', 'US'),
(27, 'Michigan', 'MI', 'US'),
(28, 'Minnesota', 'MN', 'US'),
(29, 'Mississippi', 'MS', 'US'),
(30, 'Missouri', 'MO', 'US'),
(31, 'Montana', 'MT', 'US'),
(32, 'Nebraska', 'NE', 'US'),
(33, 'Nevada', 'NV', 'US'),
(34, 'New Hampshire', 'NH', 'US'),
(35, 'New Jersey', 'NJ', 'US'),
(36, 'New Mexico', 'NM', 'US'),
(37, 'New York', 'NY', 'US'),
(38, 'North Carolina', 'NC', 'US'),
(39, 'North Dakota', 'ND', 'US'),
(40, 'Northern Mariana Islands', 'MP', 'US'),
(41, 'Ohio', 'OH', 'US'),
(42, 'Oklahoma', 'OK', 'US'),
(43, 'Oregon', 'OR', 'US'),
(44, 'Palau', 'PW', 'US'),
(45, 'Pennsylvania', 'PA', 'US'),
(46, 'Puerto Rico', 'PR', 'US'),
(47, 'Rhode Island', 'RI', 'US'),
(48, 'South Carolina', 'SC', 'US'),
(49, 'South Dakota', 'SD', 'US'),
(50, 'Tennessee', 'TN', 'US'),
(51, 'Texas', 'TX', 'US'),
(52, 'Utah', 'UT', 'US'),
(53, 'Vermont', 'VT', 'US'),
(54, 'Virgin Islands', 'VI', 'US'),
(55, 'Virginia', 'VA', 'US'),
(56, 'Washington', 'WA', 'US'),
(57, 'West Virginia', 'WV', 'US'),
(58, 'Wisconsin', 'WI', 'US'),
(59, 'Wyoming', 'WY', 'US'),
(60, 'Armed Forces Africa', 'AE', 'US'),
(61, 'Armed Forces Americas (except Canada)', 'AA', 'US'),
(62, 'Armed Forces Canada', 'AE', 'US'),
(63, 'Armed Forces Europe', 'AE', 'US'),
(64, 'Armed Forces Middle East', 'AE', 'US'),
(65, 'Armed Forces Pacific', 'AP', 'US'),
(66, 'Andaman and Nicobar Islands', 'AN', 'IN'),
(67, 'Andhra Pradesh', 'AP', 'IN'),
(68, 'Arunachal Pradesh', 'AR', 'IN'),
(69, 'Assam', 'AS', 'IN'),
(70, 'Bihar', 'BR', 'IN'),
(71, 'Chandigarh', 'CH', 'IN'),
(72, 'Chhattisgarh', 'CG', 'IN'),
(73, 'Dadra and Nagar Haveli', 'DN', 'IN'),
(74, 'Daman and Diu', 'DD', 'IN'),
(75, 'Delhi', 'DL', 'IN'),
(76, 'Goa', 'GA', 'IN'),
(77, 'Gujarat', 'GJ', 'IN'),
(78, 'Haryana', 'HR', 'IN'),
(79, 'Himachal Pradesh', 'HP', 'IN'),
(80, 'Jammu and Kashmir', 'JK', 'IN'),
(81, 'Karnataka', 'KA', 'IN'),
(82, 'Kerala', 'KL', 'IN'),
(83, 'Lakshadweep Islands', 'LD', 'IN'),
(84, 'Madhya Pradesh', 'MP', 'IN'),
(85, 'Maharashtra', 'MH', 'IN'),
(86, 'Manipur', 'MN', 'IN'),
(87, 'Meghalaya', 'ML', 'IN'),
(88, 'Mizoram', 'MZ', 'IN'),
(89, 'Nagaland', 'NL', 'IN'),
(90, 'Nagaland', 'NL', 'IN'),
(91, 'Odisha', 'OR', 'IN'),
(92, 'Puducherry', 'PY', 'IN'),
(93, 'Punjab', 'PB', 'IN'),
(94, 'Rajasthan', 'RJ', 'IN'),
(95, 'Sikkim', 'SK', 'IN'),
(96, 'Tamil Nadu', 'TN', 'IN'),
(97, 'Telangana', 'TS', 'IN'),
(98, 'Tripura', 'TR', 'IN'),
(99, 'Uttar Pradesh', 'UP', 'IN'),
(100, 'Uttarakhand', 'UK', 'IN'),
(101, 'West Bengal', 'WB', 'IN');

-- --------------------------------------------------------

--
-- Table structure for table `reportfiles`
--

CREATE TABLE `reportfiles` (
  `id` bigint(20) NOT NULL,
  `employee` bigint(20) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `attachment` varchar(100) NOT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` text DEFAULT NULL,
  `parameters` text DEFAULT NULL,
  `query` text DEFAULT NULL,
  `paramOrder` varchar(500) NOT NULL,
  `type` enum('Query','Class') DEFAULT 'Query',
  `report_group` varchar(500) DEFAULT NULL,
  `output` varchar(15) NOT NULL DEFAULT 'CSV'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `name`, `details`, `parameters`, `query`, `paramOrder`, `type`, `report_group`, `output`) VALUES
(1, 'Employee Details Report', 'This report list all employee details and you can filter employees by department, employment status or job title', '[[\"department\", {\"label\":\"Department\",\"type\":\"select2\",\"remote-source\":[\"CompanyStructure\",\"id\",\"title\"],\"allow-null\":true}],[\"employment_status\", {\"label\":\"Employment Status\",\"type\":\"select2\",\"remote-source\":[\"EmploymentStatus\",\"id\",\"name\"],\"allow-null\":true}],[\"job_title\", {\"label\":\"Job Title\",\"type\":\"select2\",\"remote-source\":[\"JobTitle\",\"id\",\"name\"],\"allow-null\":true}]]', 'EmployeeDetailsReport', '[\"department\",\"employment_status\",\"job_title\"]', 'Class', 'Employee Information', 'CSV'),
(2, 'Employee Attendance Report', 'This report list all employee attendance entries by employee and date range', '[\r\n[ \"employee\", {\"label\":\"Employee\",\"type\":\"select2multi\",\"allow-null\":true,\"null-label\":\"All Employees\",\"remote-source\":[\"Employee\",\"id\",\"first_name+last_name\"]}],\r\n[ \"date_start\", {\"label\":\"Start Date\",\"type\":\"date\"}],\r\n[ \"date_end\", {\"label\":\"End Date\",\"type\":\"date\"}]\r\n]', 'EmployeeAttendanceReport', '[\"employee\",\"date_start\",\"date_end\"]', 'Class', 'Time Management', 'CSV'),
(3, 'Employee Time Tracking Report', 'This report list employee working hours and attendance details for each day for a given period ', '[\r\n[ \"employee\", {\"label\":\"Employee\",\"type\":\"select2\",\"allow-null\":false,\"remote-source\":[\"Employee\",\"id\",\"first_name+last_name\"]}],\r\n[ \"date_start\", {\"label\":\"Start Date\",\"type\":\"date\", \"validation\":\"none\"}],\r\n[ \"date_end\", {\"label\":\"End Date\",\"type\":\"date\",\"validation\":\"none\"}],\r\n[\"period\", { \"label\": \"Period\", \"type\": \"select\", \"source\": [[\"Current Month\", \"Current Month\"], [\"Last Month\", \"Last Month\"], [\"Last Week\", \"Last Week\"], [\"Last 2 Weeks\", \"Last 2 Weeks\"]], \"validation\":\"none\" }]\r\n]', 'EmployeeTimeTrackReport', '[\"employee\",\"date_start\",\"date_end\",\"period\"]', 'Class', 'Time Management', 'CSV'),
(4, 'Employee Time Entry Report', 'View employee time entries by date range and project', '[\r\n[ \"employee\", {\"label\":\"Employee\",\"type\":\"select2multi\",\"allow-null\":true,\"null-label\":\"All Employees\",\"remote-source\":[\"Employee\",\"id\",\"first_name+last_name\"]}],\r\n[ \"client\", {\"label\":\"Select Client\",\"type\":\"select\",\"allow-null\":true,\"null-label\":\"Not Selected\",\"remote-source\":[\"Client\",\"id\",\"name\"]}],\r\n[ \"project\", {\"label\":\"Or Project\",\"type\":\"select\",\"allow-null\":true,\"null-label\":\"All Projects\",\"remote-source\":[\"Project\",\"id\",\"name\",\"getAllProjects\"]}],\r\n[ \"date_start\", {\"label\":\"Start Date\",\"type\":\"date\"}],\r\n[ \"date_end\", {\"label\":\"End Date\",\"type\":\"date\"}]\r\n]', 'EmployeeTimesheetReport', '[\"employee\",\"client\",\"project\",\"date_start\",\"date_end\",\"status\"]', 'Class', 'Time Management', 'CSV'),
(5, 'Active Employee Report', 'This report list employees who are currently active based on joined date and termination date ', '[\r\n[ \"department\", {\"label\":\"Department\",\"type\":\"select2\",\"remote-source\":[\"CompanyStructure\",\"id\",\"title\"],\"allow-null\":true}]\r\n]', 'ActiveEmployeeReport', '[\"department\"]', 'Class', 'Employee Information', 'CSV'),
(6, 'New Hires Employee Report', 'This report list employees who are joined between given two dates ', '[[ \"department\", {\"label\":\"Department\",\"type\":\"select2\",\"remote-source\":[\"CompanyStructure\",\"id\",\"title\"],\"allow-null\":true}],\r\n[ \"date_start\", {\"label\":\"Start Date\",\"type\":\"date\"}],\r\n[ \"date_end\", {\"label\":\"End Date\",\"type\":\"date\"}]\r\n]', 'NewHiresEmployeeReport', '[\"department\",\"date_start\",\"date_end\"]', 'Class', 'Employee Information', 'CSV'),
(7, 'Terminated Employee Report', 'This report list employees who are terminated between given two dates ', '[[ \"department\", {\"label\":\"Department\",\"type\":\"select2\",\"remote-source\":[\"CompanyStructure\",\"id\",\"title\"],\"allow-null\":true}],\r\n[ \"date_start\", {\"label\":\"Start Date\",\"type\":\"date\"}],\r\n[ \"date_end\", {\"label\":\"End Date\",\"type\":\"date\"}]\r\n]', 'TerminatedEmployeeReport', '[\"department\",\"date_start\",\"date_end\"]', 'Class', 'Employee Information', 'CSV'),
(8, 'Travel Request Report', 'This report list employees travel requests for a specified period', '[\r\n[ \"employee\", {\"label\":\"Employee\",\"type\":\"select2multi\",\"allow-null\":true,\"null-label\":\"All Employees\",\"remote-source\":[\"Employee\",\"id\",\"first_name+last_name\"]}],\r\n[ \"date_start\", {\"label\":\"Start Date\",\"type\":\"date\"}],\r\n[ \"date_end\", {\"label\":\"End Date\",\"type\":\"date\"}],\r\n[ \"status\", {\"label\":\"Status\",\"type\":\"select\",\"source\":[[\"NULL\",\"All Statuses\"],[\"Approved\",\"Approved\"],[\"Pending\",\"Pending\"],[\"Rejected\",\"Rejected\"],[\"Cancellation Requested\",\"Cancellation Requested\"],[\"Cancelled\",\"Cancelled\"]]}]\r\n]', 'TravelRequestReport', '[\"employee\",\"date_start\",\"date_end\",\"status\"]', 'Class', 'Travel and Expense Management', 'CSV'),
(9, 'Employee Time Sheet Report', 'This report list all employee time sheets by employee and date range', '[\r\n[ \"employee\", {\"label\":\"Employee\",\"type\":\"select2multi\",\"allow-null\":true,\"null-label\":\"All Employees\",\"remote-source\":[\"Employee\",\"id\",\"first_name+last_name\"]}],\r\n[ \"date_start\", {\"label\":\"Start Date\",\"type\":\"date\"}],\r\n[ \"date_end\", {\"label\":\"End Date\",\"type\":\"date\"}],\r\n[ \"status\", {\"label\":\"Status\",\"allow-null\":true,\"null-label\":\"All Status\",\"type\":\"select\",\"source\":[[\"Approved\",\"Approved\"],[\"Pending\",\"Pending\"],[\"Rejected\",\"Rejected\"]]}]\r\n]', 'EmployeeTimeSheetData', '[\"employee\",\"date_start\",\"date_end\",\"status\"]', 'Class', 'Time Management', 'CSV'),
(11, 'Payroll Meta Data Export', 'Export payroll module configurations', '[\r\n[ \"deduction_group\", {\"label\":\"Calculation Group\",\"type\":\"select2\",\"allow-null\":false,\"remote-source\":[\"DeductionGroup\",\"id\",\"name\"]}],\r\n[ \"payroll\", {\"label\":\"Sample Payroll\",\"type\":\"select2\",\"allow-null\":false,\"remote-source\":[\"Payroll\",\"id\",\"name\"]}]]', 'PayrollDataExport', '[\"deduction_group\",\"payroll\"]', 'Class', 'Payroll', 'JSON'),
(12, 'Company Asset Report', 'List company assets assigned to employees and departments', '[[\"department\", {\"label\":\"Department\",\"type\":\"select2\",\"remote-source\":[\"CompanyStructure\",\"id\",\"title\"],\"allow-null\":true}],[\"type\", {\"label\":\"Asset Type\",\"type\":\"select2\",\"remote-source\":[\"AssetType\",\"id\",\"name\"],\"allow-null\":true}]]', 'AssetUsageReport', '[\"department\",\"type\"]', 'Class', 'Resources', 'CSV'),
(13, 'Employee Leaves Report', 'This report list all employee leaves by employee, date range and leave status', '[\r\n[ \"employee\", {\"label\":\"Employee\",\"type\":\"select2multi\",\"allow-null\":true,\"null-label\":\"All Employees\",\"remote-source\":[\"Employee\",\"id\",\"first_name+last_name\"]}],\r\n[ \"date_start\", {\"label\":\"Start Date\",\"type\":\"date\"}],\r\n[ \"date_end\", {\"label\":\"End Date\",\"type\":\"date\"}],\r\n[ \"status\", {\"label\":\"Leave Status\",\"type\":\"select\",\"source\":[[\"NULL\",\"All Statuses\"],[\"Approved\",\"Approved\"],[\"Pending\",\"Pending\"],[\"Rejected\",\"Rejected\"],[\"Cancellation Requested\",\"Cancellation Requested\"],[\"Cancelled\",\"Cancelled\"]]}]\r\n]', 'EmployeeLeavesReport', '[\"employee\",\"date_start\",\"date_end\",\"status\"]', 'Class', 'Leave Management', 'CSV'),
(14, 'Employee Leave Entitlement', 'This report list employees leave entitlement for current leave period by department or by employee ', '[[ \"department\", {\"label\":\"Department\",\"type\":\"select2\",\"remote-source\":[\"CompanyStructure\",\"id\",\"title\"],\"allow-null\":true,\"validation\":\"none\"}],\r\n[ \"employee\", {\"label\":\"Employee\",\"type\":\"select2\",\"allow-null\":true,\"validation\":\"none\",\"remote-source\":[\"Employee\",\"id\",\"first_name+last_name\"]}]]', 'EmployeeLeaveEntitlementReport', '[\"department\",\"employee\"]', 'Class', 'Leave Management', 'CSV'),
(15, 'Expense Report', 'This report list employees expenses for a specified period', '[\r\n[ \"employee\", {\"label\":\"Employee\",\"type\":\"select2multi\",\"allow-null\":true,\"null-label\":\"All Employees\",\"remote-source\":[\"Employee\",\"id\",\"first_name+last_name\"]}],\r\n[ \"date_start\", {\"label\":\"Start Date\",\"type\":\"date\"}],\r\n[ \"date_end\", {\"label\":\"End Date\",\"type\":\"date\"}],\r\n[ \"status\", {\"label\":\"Status\",\"type\":\"select\",\"source\":[[\"NULL\",\"All Statuses\"],[\"Approved\",\"Approved\"],[\"Pending\",\"Pending\"],[\"Rejected\",\"Rejected\"],[\"Cancellation Requested\",\"Cancellation Requested\"],[\"Cancelled\",\"Cancelled\"]]}]\r\n]', 'ExpenseReport', '[\"employee\",\"date_start\",\"date_end\",\"status\"]', 'Class', 'Travel and Expense Management', 'CSV');

-- --------------------------------------------------------

--
-- Table structure for table `restaccesstokens`
--

CREATE TABLE `restaccesstokens` (
  `id` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `hash` varchar(32) DEFAULT NULL,
  `token` varchar(500) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `restaccesstokens`
--

INSERT INTO `restaccesstokens` (`id`, `userId`, `hash`, `token`, `created`, `updated`) VALUES
(14, 53, NULL, '167230995902b0b45648db6a895242e4f7c2572481', '2022-12-29 11:32:39', '2022-12-29 11:32:39'),
(15, 1, '4e2273aa1b5658eeccf536447118921c', 'DwJNZ+fuyGMT/fkjDNFz0oLAGfnShDoYrABxsGm1MRMzexvQMNmxMM73RLzzZENFBJeVMDtvLSHdKhBgm3BliOuY', '2022-12-29 16:03:38', '2023-01-19 12:49:03'),
(17, 62, NULL, '1672662426e84e3ec9cc183748116db669d0817629', '2023-01-02 13:27:06', '2023-01-02 13:27:06'),
(18, 1, NULL, '1672920054d47fd6779a350d128dd7c0788b67073e', '2023-01-05 13:00:54', '2023-01-05 13:00:54'),
(19, 63, 'e6a349f992fef2477ce8df044833b6ed', 'QAGKZFzRtmMi4m8lZuN1lDogkozH/g3TeYBGvRSEAyQTg+Vcp77x00pRujIzVv/C9wWQfqfPi9m7Nn6l2kLYbtyMmg==', '2023-01-05 19:02:12', '2023-01-05 19:02:12'),
(20, 64, '5cb87d806bd3d59ba63caf2082c41a4e', 'pQD60k3StmPzihgmtpYTUdQp38abeFd6b7C376nZP6mUK4KmbWAEjTJAxri+IrpuxeyZgzxvWg8R5mUJZxx5GlPyaA==', '2023-01-05 19:06:13', '2023-01-05 19:06:13'),
(23, 63, NULL, '167326479143ed09551d059ac36cfdae2a184d9523', '2023-01-09 12:46:31', '2023-01-09 12:46:31'),
(24, 63, NULL, '1673271227f8e5789b537325c6ce359d8d6e91bc22', '2023-01-09 14:33:47', '2023-01-09 14:33:47'),
(26, 68, NULL, '1673344873a790440e3d29f81bd2448420e66e4c10', '2023-01-10 11:01:13', '2023-01-10 11:01:13'),
(28, 66, '903ab7f93654a53e91baa496d79102be', 'KwMBRzDD0GNS2n3/MF2dIaU78fKCCczbA2gPv/sEaR2Y3ygasYdlCgn5gfEs+HNAT4sNeprfH7SOJWxYHyOW9jL+jQ==', '2023-01-11 08:09:56', '2023-01-25 11:20:40'),
(29, 69, 'e1113b89df8688f5ebfabc4c74731f20', 'JAHriEcayWMVWaFP5xh47+9xUoJktfijAo4z948GemcJtCzAf471ki0ZA3RJ+G3h49dq9jzyG/RUAxEw6uTj7itMFw==', '2023-01-12 17:34:44', '2023-01-19 15:54:07'),
(33, 65, NULL, '167360228260ebccda453a8a4242ef867b90f67b95', '2023-01-13 10:31:22', '2023-01-13 10:31:22'),
(34, 69, NULL, '16736023059d0338d3ab8eacc5182b759fa6eb3a74', '2023-01-13 10:31:45', '2023-01-13 10:31:45'),
(35, 66, NULL, '1673609202c3980c3b6188e8fb4e81711df6e153b7', '2023-01-13 12:26:42', '2023-01-13 12:26:42'),
(36, 69, NULL, '167395524656a58210258021946289dd45737ec202', '2023-01-17 12:34:06', '2023-01-17 12:34:06'),
(37, 69, NULL, '1673956768169a8653060c78affaa85ea7e32a6efa', '2023-01-17 12:59:28', '2023-01-17 12:59:28'),
(39, 68, NULL, '16763834497d3935312fd61cc259210a63c3f345a8', '2023-02-14 15:04:09', '2023-02-14 15:04:09');

-- --------------------------------------------------------

--
-- Table structure for table `reviewfeedbacks`
--

CREATE TABLE `reviewfeedbacks` (
  `id` bigint(20) NOT NULL,
  `employee` bigint(20) DEFAULT NULL,
  `review` bigint(20) DEFAULT NULL,
  `subject` bigint(20) DEFAULT NULL,
  `form` bigint(20) DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `dueon` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `rating` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviewtemplates`
--

CREATE TABLE `reviewtemplates` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `items` text DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `reviewtemplates`
--

INSERT INTO `reviewtemplates` (`id`, `name`, `description`, `items`, `created`, `updated`) VALUES
(1, 'Employee Self Feedback', 'This is a sample employee self-feedback. Based on your organization you can update this template or create a new template.', '[{\"id\":\"items_1\",\"field_label\":\"What accomplishments are you most proud of?\",\"field_type\":\"textarea\",\"field_validation\":\"\",\"field_help\":\"Please mention the accomplishments relevant to the performance review period.\",\"name\":\"whataccomplishmentsareyoumostproudof\",\"data\":\"[\\\"whataccomplishmentsareyoumostproudof\\\",{\\\"label\\\":\\\"What accomplishments are you most proud of?\\\",\\\"type\\\":\\\"textarea\\\",\\\"validation\\\":\\\"\\\",\\\"help\\\":\\\"Please mention the accomplishments relevant to the performance review period.\\\"}]\"},{\"id\":\"items_2\",\"field_label\":\"Which goals did you meet?\",\"field_type\":\"textarea\",\"field_validation\":\"\",\"name\":\"whichgoalsdidyoumeet\",\"data\":\"[\\\"whichgoalsdidyoumeet\\\",{\\\"label\\\":\\\"Which goals did you meet?\\\",\\\"type\\\":\\\"textarea\\\",\\\"validation\\\":\\\"\\\"}]\"},{\"id\":\"items_3\",\"field_label\":\"Which goals fell short?\",\"field_type\":\"textarea\",\"field_validation\":\"\",\"name\":\"whichgoalsfellshort\",\"data\":\"[\\\"whichgoalsfellshort\\\",{\\\"label\\\":\\\"Which goals fell short?\\\",\\\"type\\\":\\\"textarea\\\",\\\"validation\\\":\\\"\\\"}]\"},{\"id\":\"items_4\",\"field_label\":\"What motivates you to get your job done?\",\"field_type\":\"textarea\",\"field_validation\":\"\",\"name\":\"whatmotivatesyoutogetyourjobdone\",\"data\":\"[\\\"whatmotivatesyoutogetyourjobdone\\\",{\\\"label\\\":\\\"What motivates you to get your job done?\\\",\\\"type\\\":\\\"textarea\\\",\\\"validation\\\":\\\"\\\"}]\"},{\"id\":\"items_5\",\"field_label\":\"What can your manager do to make your job more enjoyable?\",\"field_type\":\"textarea\",\"field_validation\":\"\",\"name\":\"whatcanyourmanagerdotomakeyourjobmoreenjoyable\",\"data\":\"[\\\"whatcanyourmanagerdotomakeyourjobmoreenjoyable\\\",{\\\"label\\\":\\\"What can your manager do to make your job more enjoyable?\\\",\\\"type\\\":\\\"textarea\\\",\\\"validation\\\":\\\"\\\"}]\"},{\"id\":\"items_6\",\"field_label\":\"What are your ideal working conditions to be the most productive?\",\"field_type\":\"textarea\",\"field_validation\":\"\",\"name\":\"whatareyouridealworkingconditionstobethemostproductive\",\"data\":\"[\\\"whatareyouridealworkingconditionstobethemostproductive\\\",{\\\"label\\\":\\\"What are your ideal working conditions to be the most productive?\\\",\\\"type\\\":\\\"textarea\\\",\\\"validation\\\":\\\"\\\"}]\"}]', '2020-11-15 00:20:20', '2020-11-15 00:20:20'),
(2, 'Peer feedback', 'This is a sample peer feedback. Based on your organization you can update this template or create a new template.', '[{\"id\":\"items_1\",\"field_label\":\"How collaborative is your colleague? Please provide an example.\",\"field_type\":\"textarea\",\"field_validation\":\"\",\"name\":\"howcollaborativeisyourcolleaguepleaseprovideanexample\",\"data\":\"[\\\"howcollaborativeisyourcolleaguepleaseprovideanexample\\\",{\\\"label\\\":\\\"How collaborative is your colleague? Please provide an example.\\\",\\\"type\\\":\\\"textarea\\\",\\\"validation\\\":\\\"\\\"}]\"},{\"id\":\"items_2\",\"field_label\":\"Do you consider your colleague as a good team player?\",\"field_type\":\"select2\",\"field_validation\":\"\",\"field_options\":\"Yes\\nMost of the time\\nSometimes\\nNo\",\"name\":\"doyouconsideryourcolleagueasagoodteamplayer\",\"data\":\"[\\\"doyouconsideryourcolleagueasagoodteamplayer\\\",{\\\"label\\\":\\\"Do you consider your colleague as a good team player?\\\",\\\"type\\\":\\\"select2\\\",\\\"validation\\\":\\\"\\\",\\\"source\\\":[[\\\"Yes\\\",\\\"Yes\\\"],[\\\"Most of the time\\\",\\\"Most of the time\\\"],[\\\"Sometimes\\\",\\\"Sometimes\\\"],[\\\"No\\\",\\\"No\\\"]]}]\"},{\"id\":\"items_3\",\"field_label\":\"How proactive and supportive is your colleague? Please provide an example.\",\"field_type\":\"textarea\",\"field_validation\":\"\",\"name\":\"howproactiveandsupportiveisyourcolleaguepleaseprovideanexample\",\"data\":\"[\\\"howproactiveandsupportiveisyourcolleaguepleaseprovideanexample\\\",{\\\"label\\\":\\\"How proactive and supportive is your colleague? Please provide an example.\\\",\\\"type\\\":\\\"textarea\\\",\\\"validation\\\":\\\"\\\"}]\"},{\"id\":\"items_4\",\"field_label\":\"How do you rate your colleagueâ€™s communication skills when it comes to delivering critical messages in verbal and written communication?\",\"field_type\":\"textarea\",\"field_validation\":\"\",\"name\":\"howdoyourateyourcolleaguescommunicationskillswhenitcomestodeliveringcriticalmessagesinverbalandwrittencommunication\",\"data\":\"[\\\"howdoyourateyourcolleaguescommunicationskillswhenitcomestodeliveringcriticalmessagesinverbalandwrittencommunication\\\",{\\\"label\\\":\\\"How do you rate your colleagueâ€™s communication skills when it comes to delivering critical messages in verbal and written communication?\\\",\\\"type\\\":\\\"textarea\\\",\\\"validation\\\":\\\"\\\"}]\"},{\"id\":\"items_5\",\"field_label\":\"Does your colleague demonstrate high standards of integrity and ethics?\",\"field_type\":\"textarea\",\"field_validation\":\"\",\"name\":\"doesyourcolleaguedemonstratehighstandardsofintegrityandethics\",\"data\":\"[\\\"doesyourcolleaguedemonstratehighstandardsofintegrityandethics\\\",{\\\"label\\\":\\\"Does your colleague demonstrate high standards of integrity and ethics?\\\",\\\"type\\\":\\\"textarea\\\",\\\"validation\\\":\\\"\\\"}]\"},{\"id\":\"items_6\",\"field_label\":\"Is your colleague a good fit for the company culture?\",\"field_type\":\"textarea\",\"field_validation\":\"\",\"name\":\"isyourcolleagueagoodfitforthecompanyculture\",\"data\":\"[\\\"isyourcolleagueagoodfitforthecompanyculture\\\",{\\\"label\\\":\\\"Is your colleague a good fit for the company culture?\\\",\\\"type\\\":\\\"textarea\\\",\\\"validation\\\":\\\"\\\"}]\"}]', '2020-11-15 00:52:51', '2020-11-15 00:52:51');

-- --------------------------------------------------------

--
-- Table structure for table `salarycomponent`
--

CREATE TABLE `salarycomponent` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `componentType` bigint(20) DEFAULT NULL,
  `details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `salarycomponent`
--

INSERT INTO `salarycomponent` (`id`, `name`, `componentType`, `details`) VALUES
(1, 'Basic Salary', 1, NULL),
(2, 'Fixed Allowance', 1, NULL),
(3, 'Car Allowance', 2, NULL),
(4, 'Telephone Allowance', 2, NULL),
(5, 'Regular Hourly Pay', 3, ''),
(6, 'Overtime Hourly Pay', 3, NULL),
(7, 'Double Time Hourly Pay', 3, NULL),
(8, 'HRA', 1, ''),
(30, 'ACC2', 1, ''),
(32, 'ABC', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `salarycomponenttype`
--

CREATE TABLE `salarycomponenttype` (
  `id` bigint(20) NOT NULL,
  `code` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `salarycomponenttype`
--

INSERT INTO `salarycomponenttype` (`id`, `code`, `name`) VALUES
(1, 'B001', 'Basic'),
(2, 'B002', 'Allowance'),
(3, 'B003', 'Hourly');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `value` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `meta` text DEFAULT NULL,
  `category` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `description`, `meta`, `category`) VALUES
(2, 'Company: Name', 'Hi Hello HR Local', 'Update your company name here. For updating company logo copy a file named logo.png to hihellohr_root/app/ folder', '', 'Company'),
(3, 'Company: Description', 'This is a company using hihellohr.com', '', '', 'Company'),
(4, 'System: Do not pass JSON in request', '0', 'Select Yes if you are having trouble loading data for some tables', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"1\",\"Yes\"],[\"0\",\"No\"]]}]', 'System'),
(5, 'System: Reset Modules and Permissions', '0', 'Select this to reset module and permission information in Database (If you have done any changes to meta files)', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"1\",\"Yes\"],[\"0\",\"No\"]]}]', 'System'),
(6, 'System: Reset Module Names', '0', 'Select this to reset module names in Database', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"1\",\"Yes\"],[\"0\",\"No\"]]}]', 'System'),
(7, 'System: Add New Permissions', '0', 'Select this to add new permission changes done to meta.json file of any module', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"1\",\"Yes\"],[\"0\",\"No\"]]}]', 'System'),
(8, 'System: Debug Mode', '0', '', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"1\",\"Yes\"],[\"0\",\"No\"]]}]', 'System'),
(9, 'Projects: Make All Projects Available to Employees', '1', '', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"1\",\"Yes\"],[\"0\",\"No\"]]}]', 'Projects'),
(10, 'Leave: Share Calendar to Whole Company', '1', '', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"1\",\"Yes\"],[\"0\",\"No\"]]}]', 'Leave'),
(11, 'Leave: CC Emails', '', 'Every email sent though leave module will be CC to these comma seperated list of emails addresses', '', 'Leave'),
(12, 'Leave: BCC Emails', '', 'Every email sent though leave module will be BCC to these comma seperated list of emails addresses', '', 'Leave'),
(13, 'Attendance: Time-sheet Cross Check', '0', 'Only allow users to add an entry to a timesheet only if they have marked atteandance for the selected period', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"1\",\"Yes\"],[\"0\",\"No\"]]}]', 'Attendance'),
(14, 'Api: REST Api Enabled', '1', '', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"0\",\"No\"],[\"1\",\"Yes\"]]}]', 'Api'),
(15, 'Api: REST Api Token', 'Click on edit icon', '', '[\"value\", {\"label\":\"Value\",\"type\":\"placeholder\"}]', 'Api'),
(16, 'LDAP: Enabled', '0', '', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"0\",\"No\"],[\"1\",\"Yes\"]]}]', 'LDAP'),
(17, 'LDAP: Server', '', 'LDAP Server IP or DNS', '', 'LDAP'),
(18, 'LDAP: Port', '389', 'LDAP Server Port', '', 'LDAP'),
(19, 'LDAP: Root DN', '', 'e.g: dc=mycompany,dc=net', '', 'LDAP'),
(20, 'LDAP: Manager DN', '', 'e.g: cn=admin,dc=mycompany,dc=net', '', 'LDAP'),
(21, 'LDAP: Manager Password', '', 'Password of the manager user', '', 'LDAP'),
(22, 'LDAP: Version 3', '1', 'Are you using LDAP v3', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"1\",\"Yes\"],[\"0\",\"No\"]]}]', 'LDAP'),
(23, 'LDAP: User Filter', '', 'e.g: uid={}, we will replace {} with actual username provided by the user at the time of login', '', 'LDAP'),
(24, 'Recruitment: Show Quick Apply', '1', 'Show quick apply button when candidates are applying for jobs. Quick apply allow candidates to apply with minimum amount of information', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"1\",\"Yes\"],[\"0\",\"No\"]]}]', 'Recruitment'),
(25, 'Recruitment: Show Apply', '1', 'Show apply button when candidates are applying for jobs', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"1\",\"Yes\"],[\"0\",\"No\"]]}]', 'Recruitment'),
(26, 'Notifications: Send Document Expiry Emails', '1', '', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"1\",\"Yes\"],[\"0\",\"No\"]]}]', 'Notifications'),
(27, 'Notifications: Copy Document Expiry Emails to Manager', '1', '', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"1\",\"Yes\"],[\"0\",\"No\"]]}]', 'Notifications'),
(28, 'Expense: Pre-Approve Expenses', '0', '', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"1\",\"Yes\"],[\"0\",\"No\"]]}]', 'Expense'),
(29, 'Travel: Pre-Approve Travel Request', '0', '', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"1\",\"Yes\"],[\"0\",\"No\"]]}]', 'Travel'),
(30, 'Attendance: Use Department Time Zone', '1', '', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"1\",\"Yes\"],[\"0\",\"No\"]]}]', 'Attendance'),
(31, 'Travel: Allow Indirect Admins to Approve', '0', 'Allow indirect admins to approve travel requests', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"1\",\"Yes\"],[\"0\",\"No\"]]}]', 'Travel'),
(32, 'Attendance: Overtime Calculation Class', 'BasicOvertimeCalculator', 'Set the method used to calculate overtime', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"BasicOvertimeCalculator\",\"BasicOvertimeCalculator\"],[\"CaliforniaOvertimeCalculator\",\"CaliforniaOvertimeCalculator\"]]}]', 'Attendance'),
(33, 'Attendance: Overtime Calculation Period', 'Daily', 'Set the period for overtime calculation. (Affects attendance sheets)', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Daily\",\"Daily\"],[\"Weekly\",\"Weekly\"]]}]', 'Attendance'),
(34, 'Attendance: Overtime Start Hour', '8', 'Overtime calculation will start after an employee work this number of hours per day, 0 to indicate no overtime', '', 'Attendance'),
(35, 'Attendance: Double time Start Hour', '12', 'Double time calculation will start after an employee work this number of hours per day, 0 to indicate no double time', '', 'Attendance'),
(36, 'Attendance: Work Week Start Day', '0', 'Set the starting day of the work week', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"0\",\"Sunday\"],[\"1\",\"Monday\"],[\"2\",\"Tuesday\"],[\"3\",\"Wednesday\"],[\"4\",\"Thursday\"],[\"5\",\"Friday\"],[\"6\",\"Saturday\"]]}]', 'Attendance'),
(37, 'System: Allowed Countries', '', 'Only these countries will be allowed in select boxes', '[\"value\", {\"label\":\"Value\",\"type\":\"select2multi\",\"remote-source\":[\"Country\",\"id\",\"name\"]}]', 'System'),
(38, 'System: Allowed Currencies', '', 'Only these currencies will be allowed in select boxes', '[\"value\", {\"label\":\"Value\",\"type\":\"select2multi\",\"remote-source\":[\"CurrencyType\",\"id\",\"code+name\"]}]', 'System'),
(39, 'System: Allowed Nationality', '', 'Only these nationalities will be allowed in select boxes', '[\"value\", {\"label\":\"Value\",\"type\":\"select2multi\",\"remote-source\":[\"Nationality\",\"id\",\"name\"]}]', 'System'),
(40, 'System: Language', 'en', 'Current Language', '[\"value\", {\"label\":\"Value\",\"type\":\"select2\",\"allow-null\":false,\"remote-source\":[\"SupportedLanguage\",\"name\",\"description\"]}]', 'System'),
(41, 'System: Time-sheet Entry Start and End time Required', '1', 'Select 0 if you only need to store the time spend in time sheets', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"1\",\"Yes\"],[\"0\",\"No\"]]}]', 'System'),
(43, 'System: G Suite Enabled', '0', 'If you want to allow users to login via G Suite accounts', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"1\",\"Yes\"],[\"0\",\"No\"]]}]', 'System'),
(44, 'System: G Suite Disable Password Login', '0', 'If you want to allow users to login only via G Suite accounts', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"1\",\"Yes\"],[\"0\",\"No\"]]}]', 'System'),
(45, 'Leave: Select Leave Period from Employee Department Country', '0', 'The leave period for the employee should be decided based on the country of the department which the employee is attached to', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"1\",\"Yes\"],[\"0\",\"No\"]]}]', 'Leave'),
(47, 'Leave: Use Confirmation Date Instead of Joined Date', '0', 'Use confirmation date instead of joined date for leave calculations', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"0\",\"No\"], [\"1\",\"Yes\"]]}]', 'Leave'),
(48, 'Leave: Limit Allowed Partial Leave Days', '', 'Allow only a selected set of partial leave days (if empty we allow all partial leave day types)', '[\"value\", {\"label\":\"Value\",\"type\":\"select2multi\",\"source\": [[\"Full Day\",\"Full Day\"], [\"Half Day - Morning\",\"Half Day - Morning\"], [\"Half Day - Afternoon\",\"Half Day - Afternoon\"], [\"1 Hour - Morning\",\"1 Hour - Morning\"], [\"2 Hours - Morning\",\"2 Hours - Morning\"],[ \"3 Hours - Morning\",\"3 Hours - Morning\"],[ \"1 Hour - Afternoon\",\"1 Hour - Afternoon\"],[ \"2 Hours - Afternoon\",\"2 Hours - Afternoon\"],[ \"3 Hours - Afternoon\",\"3 Hours - Afternoon\"]]}]', ''),
(49, 'SAML: Enabled', '0', 'Enable SAML Login', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"1\",\"Yes\"],[\"0\",\"No\"]]}]', 'SAML'),
(50, 'SAML: Auto Login', '0', 'Try to login via SAML by redirecting the user to SSO Url', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"1\",\"Yes\"],[\"0\",\"No\"]]}]', 'SAML'),
(51, 'SAML: IDP SSO Url', '', 'Identity Provider Single Sign-On URL. Users will be redirected to this URL for authentication', '', 'SAML'),
(52, 'SAML: IDP Issuer', '', 'Identity Provider Issuer', '', 'SAML'),
(53, 'SAML: X.509 Certificate', '', 'X.509 Certificate provided by the Identity Provider. This certificate will be encrypted', '[\"value\", {\"label\":\"Value\",\"type\":\"textarea\"}]', 'SAML'),
(54, 'SAML: Name ID Mapping', 'email', 'SAML Name id mapped to can be mapped to hihellohr user email or the username', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"email\",\"Email\"],[\"username\",\"Username\"]]}]', 'SAML'),
(55, 'System: AWS Region', 'us-east-1', 'Amazon SWS Region used for file storage', '', 'System'),
(56, 'System: Data Directory', '', 'Path to store data files on your server. e.g /user/local/data/', '', 'System'),
(57, 'Attendance: Request Attendance Location on Mobile', '1', 'Push attendance location when marking attendance via mobile app', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"1\",\"Yes\"],[\"0\",\"No\"]]}]', 'System'),
(58, 'System: Google Maps Api Key', '', 'Google Map Api Key', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"1\",\"Yes\"],[\"0\",\"No\"]]}]', 'System'),
(59, 'Instance : ID', '1ba42bff79210f8fb83f1ac2fb792798', NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `name`, `description`) VALUES
(1, 'Programming and Application Development', 'Programming and Application Development'),
(2, 'Project Management', 'Project Management'),
(3, 'Help Desk/Technical Support', 'Help Desk/Technical Support'),
(4, 'Networking', 'Networking'),
(5, 'Databases', 'Databases'),
(6, 'Business Intelligence', 'Business Intelligence'),
(7, 'Cloud Computing', 'Cloud Computing'),
(8, 'Information Security', 'Information Security'),
(9, 'HTML Skills', 'HTML Skills'),
(10, 'Graphic Designing', 'Graphic Designing');

-- --------------------------------------------------------

--
-- Table structure for table `statuschangelogs`
--

CREATE TABLE `statuschangelogs` (
  `id` bigint(20) NOT NULL,
  `type` varchar(100) NOT NULL,
  `element` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `data` varchar(500) NOT NULL,
  `status_from` enum('Approved','Pending','Rejected','Cancellation Requested','Cancelled','Processing') DEFAULT 'Pending',
  `status_to` enum('Approved','Pending','Rejected','Cancellation Requested','Cancelled','Processing') DEFAULT 'Pending',
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supportedlanguages`
--

CREATE TABLE `supportedlanguages` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `supportedlanguages`
--

INSERT INTO `supportedlanguages` (`id`, `name`, `description`) VALUES
(1, 'en', 'English'),
(2, 'de', 'German'),
(3, 'fr', 'French'),
(4, 'pl', 'Polish'),
(5, 'it', 'Italian'),
(7, 'zh', 'Chinese'),
(8, 'ja', 'Japanese'),
(10, 'es', 'Spanish'),
(11, 'fi', 'Finnish'),
(12, 'sr', 'Serbian'),
(13, 'sv', 'Swedish'),
(14, 'no', 'Norwegian'),
(15, 'pt', 'Portuguese'),
(16, 'nl', 'Dutch'),
(17, 'ar', 'Arabic'),
(18, 'al', 'Albanian');

-- --------------------------------------------------------

--
-- Table structure for table `systemdata`
--

CREATE TABLE `systemdata` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) NOT NULL,
  `name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `timezones`
--

CREATE TABLE `timezones` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `details` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `timezones`
--

INSERT INTO `timezones` (`id`, `name`, `details`) VALUES
(2, 'US/Samoa', '(GMT-11:00) Samoa'),
(3, 'US/Hawaii', '(GMT-10:00) Hawaii'),
(4, 'US/Alaska', '(GMT-09:00) Alaska'),
(5, 'US/Pacific', '(GMT-08:00) Pacific Time (US, Canada)'),
(7, 'US/Arizona', '(GMT-07:00) Arizona'),
(8, 'US/Mountain', '(GMT-07:00) Mountain Time (US, Canada)'),
(13, 'Canada/Saskatchewan', '(GMT-06:00) Saskatchewan'),
(14, 'US/Central', '(GMT-06:00) Central Time (US , Canada)'),
(15, 'US/Eastern', '(GMT-05:00) Eastern Time (US , Canada)'),
(16, 'US/East-Indiana', '(GMT-05:00) Indiana (East)'),
(20, 'Canada/Atlantic', '(GMT-04:00) Atlantic Time (Canada)'),
(23, 'Canada/Newfoundland', '(GMT-03:30) Newfoundland'),
(24, 'America/Buenos_Aires', '(GMT-03:00) Buenos Aires'),
(88, 'Asia/Chongqing', '(GMT+08:00) Chongqing'),
(103, 'Australia/Canberra', '(GMT+10:00) Canberra'),
(113, 'Africa/Abidjan', 'Africa/Abidjan'),
(114, 'Africa/Accra', 'Africa/Accra'),
(115, 'Africa/Addis_Ababa', 'Africa/Addis_Ababa'),
(116, 'Africa/Algiers', 'Africa/Algiers'),
(117, 'Africa/Asmara', 'Africa/Asmara'),
(118, 'Africa/Bamako', 'Africa/Bamako'),
(119, 'Africa/Bangui', 'Africa/Bangui'),
(120, 'Africa/Banjul', 'Africa/Banjul'),
(121, 'Africa/Bissau', 'Africa/Bissau'),
(122, 'Africa/Blantyre', 'Africa/Blantyre'),
(123, 'Africa/Brazzaville', 'Africa/Brazzaville'),
(124, 'Africa/Bujumbura', 'Africa/Bujumbura'),
(125, 'Africa/Cairo', 'Africa/Cairo'),
(126, 'Africa/Casablanca', 'Africa/Casablanca'),
(127, 'Africa/Ceuta', 'Africa/Ceuta'),
(128, 'Africa/Conakry', 'Africa/Conakry'),
(129, 'Africa/Dakar', 'Africa/Dakar'),
(130, 'Africa/Dar_es_Salaam', 'Africa/Dar_es_Salaam'),
(131, 'Africa/Djibouti', 'Africa/Djibouti'),
(132, 'Africa/Douala', 'Africa/Douala'),
(133, 'Africa/El_Aaiun', 'Africa/El_Aaiun'),
(134, 'Africa/Freetown', 'Africa/Freetown'),
(135, 'Africa/Gaborone', 'Africa/Gaborone'),
(136, 'Africa/Harare', 'Africa/Harare'),
(137, 'Africa/Johannesburg', 'Africa/Johannesburg'),
(138, 'Africa/Juba', 'Africa/Juba'),
(139, 'Africa/Kampala', 'Africa/Kampala'),
(140, 'Africa/Khartoum', 'Africa/Khartoum'),
(141, 'Africa/Kigali', 'Africa/Kigali'),
(142, 'Africa/Kinshasa', 'Africa/Kinshasa'),
(143, 'Africa/Lagos', 'Africa/Lagos'),
(144, 'Africa/Libreville', 'Africa/Libreville'),
(145, 'Africa/Lome', 'Africa/Lome'),
(146, 'Africa/Luanda', 'Africa/Luanda'),
(147, 'Africa/Lubumbashi', 'Africa/Lubumbashi'),
(148, 'Africa/Lusaka', 'Africa/Lusaka'),
(149, 'Africa/Malabo', 'Africa/Malabo'),
(150, 'Africa/Maputo', 'Africa/Maputo'),
(151, 'Africa/Maseru', 'Africa/Maseru'),
(152, 'Africa/Mbabane', 'Africa/Mbabane'),
(153, 'Africa/Mogadishu', 'Africa/Mogadishu'),
(154, 'Africa/Monrovia', 'Africa/Monrovia'),
(155, 'Africa/Nairobi', 'Africa/Nairobi'),
(156, 'Africa/Ndjamena', 'Africa/Ndjamena'),
(157, 'Africa/Niamey', 'Africa/Niamey'),
(158, 'Africa/Nouakchott', 'Africa/Nouakchott'),
(159, 'Africa/Ouagadougou', 'Africa/Ouagadougou'),
(160, 'Africa/Porto-Novo', 'Africa/Porto-Novo'),
(161, 'Africa/Sao_Tome', 'Africa/Sao_Tome'),
(162, 'Africa/Tripoli', 'Africa/Tripoli'),
(163, 'Africa/Tunis', 'Africa/Tunis'),
(164, 'Africa/Windhoek', 'Africa/Windhoek'),
(165, 'America/Adak', 'America/Adak'),
(166, 'America/Anchorage', 'America/Anchorage'),
(167, 'America/Anguilla', 'America/Anguilla'),
(168, 'America/Antigua', 'America/Antigua'),
(169, 'America/Araguaina', 'America/Araguaina'),
(170, 'America/Argentina/Buenos_Aires', 'America/Argentina/Buenos_Aires'),
(171, 'America/Argentina/Catamarca', 'America/Argentina/Catamarca'),
(172, 'America/Argentina/Cordoba', 'America/Argentina/Cordoba'),
(173, 'America/Argentina/Jujuy', 'America/Argentina/Jujuy'),
(174, 'America/Argentina/La_Rioja', 'America/Argentina/La_Rioja'),
(175, 'America/Argentina/Mendoza', 'America/Argentina/Mendoza'),
(176, 'America/Argentina/Rio_Gallegos', 'America/Argentina/Rio_Gallegos'),
(177, 'America/Argentina/Salta', 'America/Argentina/Salta'),
(178, 'America/Argentina/San_Juan', 'America/Argentina/San_Juan'),
(179, 'America/Argentina/San_Luis', 'America/Argentina/San_Luis'),
(180, 'America/Argentina/Tucuman', 'America/Argentina/Tucuman'),
(181, 'America/Argentina/Ushuaia', 'America/Argentina/Ushuaia'),
(182, 'America/Aruba', 'America/Aruba'),
(183, 'America/Asuncion', 'America/Asuncion'),
(184, 'America/Atikokan', 'America/Atikokan'),
(185, 'America/Bahia', 'America/Bahia'),
(186, 'America/Bahia_Banderas', 'America/Bahia_Banderas'),
(187, 'America/Barbados', 'America/Barbados'),
(188, 'America/Belem', 'America/Belem'),
(189, 'America/Belize', 'America/Belize'),
(190, 'America/Blanc-Sablon', 'America/Blanc-Sablon'),
(191, 'America/Boa_Vista', 'America/Boa_Vista'),
(192, 'America/Bogota', 'America/Bogota'),
(193, 'America/Boise', 'America/Boise'),
(194, 'America/Cambridge_Bay', 'America/Cambridge_Bay'),
(195, 'America/Campo_Grande', 'America/Campo_Grande'),
(196, 'America/Cancun', 'America/Cancun'),
(197, 'America/Caracas', 'America/Caracas'),
(198, 'America/Cayenne', 'America/Cayenne'),
(199, 'America/Cayman', 'America/Cayman'),
(200, 'America/Chicago', 'America/Chicago'),
(201, 'America/Chihuahua', 'America/Chihuahua'),
(202, 'America/Costa_Rica', 'America/Costa_Rica'),
(203, 'America/Creston', 'America/Creston'),
(204, 'America/Cuiaba', 'America/Cuiaba'),
(205, 'America/Curacao', 'America/Curacao'),
(206, 'America/Danmarkshavn', 'America/Danmarkshavn'),
(207, 'America/Dawson', 'America/Dawson'),
(208, 'America/Dawson_Creek', 'America/Dawson_Creek'),
(209, 'America/Denver', 'America/Denver'),
(210, 'America/Detroit', 'America/Detroit'),
(211, 'America/Dominica', 'America/Dominica'),
(212, 'America/Edmonton', 'America/Edmonton'),
(213, 'America/Eirunepe', 'America/Eirunepe'),
(214, 'America/El_Salvador', 'America/El_Salvador'),
(215, 'America/Fort_Nelson', 'America/Fort_Nelson'),
(216, 'America/Fortaleza', 'America/Fortaleza'),
(217, 'America/Glace_Bay', 'America/Glace_Bay'),
(218, 'America/Godthab', 'America/Godthab'),
(219, 'America/Goose_Bay', 'America/Goose_Bay'),
(220, 'America/Grand_Turk', 'America/Grand_Turk'),
(221, 'America/Grenada', 'America/Grenada'),
(222, 'America/Guadeloupe', 'America/Guadeloupe'),
(223, 'America/Guatemala', 'America/Guatemala'),
(224, 'America/Guayaquil', 'America/Guayaquil'),
(225, 'America/Guyana', 'America/Guyana'),
(226, 'America/Halifax', 'America/Halifax'),
(227, 'America/Havana', 'America/Havana'),
(228, 'America/Hermosillo', 'America/Hermosillo'),
(229, 'America/Indiana/Indianapolis', 'America/Indiana/Indianapolis'),
(230, 'America/Indiana/Knox', 'America/Indiana/Knox'),
(231, 'America/Indiana/Marengo', 'America/Indiana/Marengo'),
(232, 'America/Indiana/Petersburg', 'America/Indiana/Petersburg'),
(233, 'America/Indiana/Tell_City', 'America/Indiana/Tell_City'),
(234, 'America/Indiana/Vevay', 'America/Indiana/Vevay'),
(235, 'America/Indiana/Vincennes', 'America/Indiana/Vincennes'),
(236, 'America/Indiana/Winamac', 'America/Indiana/Winamac'),
(237, 'America/Inuvik', 'America/Inuvik'),
(238, 'America/Iqaluit', 'America/Iqaluit'),
(239, 'America/Jamaica', 'America/Jamaica'),
(240, 'America/Juneau', 'America/Juneau'),
(241, 'America/Kentucky/Louisville', 'America/Kentucky/Louisville'),
(242, 'America/Kentucky/Monticello', 'America/Kentucky/Monticello'),
(243, 'America/Kralendijk', 'America/Kralendijk'),
(244, 'America/La_Paz', 'America/La_Paz'),
(245, 'America/Lima', 'America/Lima'),
(246, 'America/Los_Angeles', 'America/Los_Angeles'),
(247, 'America/Lower_Princes', 'America/Lower_Princes'),
(248, 'America/Maceio', 'America/Maceio'),
(249, 'America/Managua', 'America/Managua'),
(250, 'America/Manaus', 'America/Manaus'),
(251, 'America/Marigot', 'America/Marigot'),
(252, 'America/Martinique', 'America/Martinique'),
(253, 'America/Matamoros', 'America/Matamoros'),
(254, 'America/Mazatlan', 'America/Mazatlan'),
(255, 'America/Menominee', 'America/Menominee'),
(256, 'America/Merida', 'America/Merida'),
(257, 'America/Metlakatla', 'America/Metlakatla'),
(258, 'America/Mexico_City', 'America/Mexico_City'),
(259, 'America/Miquelon', 'America/Miquelon'),
(260, 'America/Moncton', 'America/Moncton'),
(261, 'America/Monterrey', 'America/Monterrey'),
(262, 'America/Montevideo', 'America/Montevideo'),
(263, 'America/Montserrat', 'America/Montserrat'),
(264, 'America/Nassau', 'America/Nassau'),
(265, 'America/New_York', 'America/New_York'),
(266, 'America/Nipigon', 'America/Nipigon'),
(267, 'America/Nome', 'America/Nome'),
(268, 'America/Noronha', 'America/Noronha'),
(269, 'America/North_Dakota/Beulah', 'America/North_Dakota/Beulah'),
(270, 'America/North_Dakota/Center', 'America/North_Dakota/Center'),
(271, 'America/North_Dakota/New_Salem', 'America/North_Dakota/New_Salem'),
(272, 'America/Ojinaga', 'America/Ojinaga'),
(273, 'America/Panama', 'America/Panama'),
(274, 'America/Pangnirtung', 'America/Pangnirtung'),
(275, 'America/Paramaribo', 'America/Paramaribo'),
(276, 'America/Phoenix', 'America/Phoenix'),
(277, 'America/Port-au-Prince', 'America/Port-au-Prince'),
(278, 'America/Port_of_Spain', 'America/Port_of_Spain'),
(279, 'America/Porto_Velho', 'America/Porto_Velho'),
(280, 'America/Puerto_Rico', 'America/Puerto_Rico'),
(281, 'America/Punta_Arenas', 'America/Punta_Arenas'),
(282, 'America/Rainy_River', 'America/Rainy_River'),
(283, 'America/Rankin_Inlet', 'America/Rankin_Inlet'),
(284, 'America/Recife', 'America/Recife'),
(285, 'America/Regina', 'America/Regina'),
(286, 'America/Resolute', 'America/Resolute'),
(287, 'America/Rio_Branco', 'America/Rio_Branco'),
(288, 'America/Santarem', 'America/Santarem'),
(289, 'America/Santiago', 'America/Santiago'),
(290, 'America/Santo_Domingo', 'America/Santo_Domingo'),
(291, 'America/Sao_Paulo', 'America/Sao_Paulo'),
(292, 'America/Scoresbysund', 'America/Scoresbysund'),
(293, 'America/Sitka', 'America/Sitka'),
(294, 'America/St_Barthelemy', 'America/St_Barthelemy'),
(295, 'America/St_Johns', 'America/St_Johns'),
(296, 'America/St_Kitts', 'America/St_Kitts'),
(297, 'America/St_Lucia', 'America/St_Lucia'),
(298, 'America/St_Thomas', 'America/St_Thomas'),
(299, 'America/St_Vincent', 'America/St_Vincent'),
(300, 'America/Swift_Current', 'America/Swift_Current'),
(301, 'America/Tegucigalpa', 'America/Tegucigalpa'),
(302, 'America/Thule', 'America/Thule'),
(303, 'America/Thunder_Bay', 'America/Thunder_Bay'),
(304, 'America/Tijuana', 'America/Tijuana'),
(305, 'America/Toronto', 'America/Toronto'),
(306, 'America/Tortola', 'America/Tortola'),
(307, 'America/Vancouver', 'America/Vancouver'),
(308, 'America/Whitehorse', 'America/Whitehorse'),
(309, 'America/Winnipeg', 'America/Winnipeg'),
(310, 'America/Yakutat', 'America/Yakutat'),
(311, 'America/Yellowknife', 'America/Yellowknife'),
(312, 'Antarctica/Casey', 'Antarctica/Casey'),
(313, 'Antarctica/Davis', 'Antarctica/Davis'),
(314, 'Antarctica/DumontDUrville', 'Antarctica/DumontDUrville'),
(315, 'Antarctica/Macquarie', 'Antarctica/Macquarie'),
(316, 'Antarctica/Mawson', 'Antarctica/Mawson'),
(317, 'Antarctica/McMurdo', 'Antarctica/McMurdo'),
(318, 'Antarctica/Palmer', 'Antarctica/Palmer'),
(319, 'Antarctica/Rothera', 'Antarctica/Rothera'),
(320, 'Antarctica/Syowa', 'Antarctica/Syowa'),
(321, 'Antarctica/Troll', 'Antarctica/Troll'),
(322, 'Antarctica/Vostok', 'Antarctica/Vostok'),
(323, 'Arctic/Longyearbyen', 'Arctic/Longyearbyen'),
(324, 'Asia/Aden', 'Asia/Aden'),
(325, 'Asia/Almaty', 'Asia/Almaty'),
(326, 'Asia/Amman', 'Asia/Amman'),
(327, 'Asia/Anadyr', 'Asia/Anadyr'),
(328, 'Asia/Aqtau', 'Asia/Aqtau'),
(329, 'Asia/Aqtobe', 'Asia/Aqtobe'),
(330, 'Asia/Ashgabat', 'Asia/Ashgabat'),
(331, 'Asia/Atyrau', 'Asia/Atyrau'),
(332, 'Asia/Baghdad', 'Asia/Baghdad'),
(333, 'Asia/Bahrain', 'Asia/Bahrain'),
(334, 'Asia/Baku', 'Asia/Baku'),
(335, 'Asia/Bangkok', 'Asia/Bangkok'),
(336, 'Asia/Barnaul', 'Asia/Barnaul'),
(337, 'Asia/Beirut', 'Asia/Beirut'),
(338, 'Asia/Bishkek', 'Asia/Bishkek'),
(339, 'Asia/Brunei', 'Asia/Brunei'),
(340, 'Asia/Chita', 'Asia/Chita'),
(341, 'Asia/Choibalsan', 'Asia/Choibalsan'),
(342, 'Asia/Colombo', 'Asia/Colombo'),
(343, 'Asia/Damascus', 'Asia/Damascus'),
(344, 'Asia/Dhaka', 'Asia/Dhaka'),
(345, 'Asia/Dili', 'Asia/Dili'),
(346, 'Asia/Dubai', 'Asia/Dubai'),
(347, 'Asia/Dushanbe', 'Asia/Dushanbe'),
(348, 'Asia/Famagusta', 'Asia/Famagusta'),
(349, 'Asia/Gaza', 'Asia/Gaza'),
(350, 'Asia/Hebron', 'Asia/Hebron'),
(351, 'Asia/Ho_Chi_Minh', 'Asia/Ho_Chi_Minh'),
(352, 'Asia/Hong_Kong', 'Asia/Hong_Kong'),
(353, 'Asia/Hovd', 'Asia/Hovd'),
(354, 'Asia/Irkutsk', 'Asia/Irkutsk'),
(355, 'Asia/Jakarta', 'Asia/Jakarta'),
(356, 'Asia/Jayapura', 'Asia/Jayapura'),
(357, 'Asia/Jerusalem', 'Asia/Jerusalem'),
(358, 'Asia/Kabul', 'Asia/Kabul'),
(359, 'Asia/Kamchatka', 'Asia/Kamchatka'),
(360, 'Asia/Karachi', 'Asia/Karachi'),
(361, 'Asia/Kathmandu', 'Asia/Kathmandu'),
(362, 'Asia/Khandyga', 'Asia/Khandyga'),
(363, 'Asia/Kolkata', 'Asia/Kolkata'),
(364, 'Asia/Krasnoyarsk', 'Asia/Krasnoyarsk'),
(365, 'Asia/Kuala_Lumpur', 'Asia/Kuala_Lumpur'),
(366, 'Asia/Kuching', 'Asia/Kuching'),
(367, 'Asia/Kuwait', 'Asia/Kuwait'),
(368, 'Asia/Macau', 'Asia/Macau'),
(369, 'Asia/Magadan', 'Asia/Magadan'),
(370, 'Asia/Makassar', 'Asia/Makassar'),
(371, 'Asia/Manila', 'Asia/Manila'),
(372, 'Asia/Muscat', 'Asia/Muscat'),
(373, 'Asia/Nicosia', 'Asia/Nicosia'),
(374, 'Asia/Novokuznetsk', 'Asia/Novokuznetsk'),
(375, 'Asia/Novosibirsk', 'Asia/Novosibirsk'),
(376, 'Asia/Omsk', 'Asia/Omsk'),
(377, 'Asia/Oral', 'Asia/Oral'),
(378, 'Asia/Phnom_Penh', 'Asia/Phnom_Penh'),
(379, 'Asia/Pontianak', 'Asia/Pontianak'),
(380, 'Asia/Pyongyang', 'Asia/Pyongyang'),
(381, 'Asia/Qatar', 'Asia/Qatar'),
(382, 'Asia/Qyzylorda', 'Asia/Qyzylorda'),
(383, 'Asia/Riyadh', 'Asia/Riyadh'),
(384, 'Asia/Sakhalin', 'Asia/Sakhalin'),
(385, 'Asia/Samarkand', 'Asia/Samarkand'),
(386, 'Asia/Seoul', 'Asia/Seoul'),
(387, 'Asia/Shanghai', 'Asia/Shanghai'),
(388, 'Asia/Singapore', 'Asia/Singapore'),
(389, 'Asia/Srednekolymsk', 'Asia/Srednekolymsk'),
(390, 'Asia/Taipei', 'Asia/Taipei'),
(391, 'Asia/Tashkent', 'Asia/Tashkent'),
(392, 'Asia/Tbilisi', 'Asia/Tbilisi'),
(393, 'Asia/Tehran', 'Asia/Tehran'),
(394, 'Asia/Thimphu', 'Asia/Thimphu'),
(395, 'Asia/Tokyo', 'Asia/Tokyo'),
(396, 'Asia/Tomsk', 'Asia/Tomsk'),
(397, 'Asia/Ulaanbaatar', 'Asia/Ulaanbaatar'),
(398, 'Asia/Urumqi', 'Asia/Urumqi'),
(399, 'Asia/Ust-Nera', 'Asia/Ust-Nera'),
(400, 'Asia/Vientiane', 'Asia/Vientiane'),
(401, 'Asia/Vladivostok', 'Asia/Vladivostok'),
(402, 'Asia/Yakutsk', 'Asia/Yakutsk'),
(403, 'Asia/Yangon', 'Asia/Yangon'),
(404, 'Asia/Yekaterinburg', 'Asia/Yekaterinburg'),
(405, 'Asia/Yerevan', 'Asia/Yerevan'),
(406, 'Atlantic/Azores', 'Atlantic/Azores'),
(407, 'Atlantic/Bermuda', 'Atlantic/Bermuda'),
(408, 'Atlantic/Canary', 'Atlantic/Canary'),
(409, 'Atlantic/Cape_Verde', 'Atlantic/Cape_Verde'),
(410, 'Atlantic/Faroe', 'Atlantic/Faroe'),
(411, 'Atlantic/Madeira', 'Atlantic/Madeira'),
(412, 'Atlantic/Reykjavik', 'Atlantic/Reykjavik'),
(413, 'Atlantic/South_Georgia', 'Atlantic/South_Georgia'),
(414, 'Atlantic/St_Helena', 'Atlantic/St_Helena'),
(415, 'Atlantic/Stanley', 'Atlantic/Stanley'),
(416, 'Australia/Adelaide', 'Australia/Adelaide'),
(417, 'Australia/Brisbane', 'Australia/Brisbane'),
(418, 'Australia/Broken_Hill', 'Australia/Broken_Hill'),
(419, 'Australia/Currie', 'Australia/Currie'),
(420, 'Australia/Darwin', 'Australia/Darwin'),
(421, 'Australia/Eucla', 'Australia/Eucla'),
(422, 'Australia/Hobart', 'Australia/Hobart'),
(423, 'Australia/Lindeman', 'Australia/Lindeman'),
(424, 'Australia/Lord_Howe', 'Australia/Lord_Howe'),
(425, 'Australia/Melbourne', 'Australia/Melbourne'),
(426, 'Australia/Perth', 'Australia/Perth'),
(427, 'Australia/Sydney', 'Australia/Sydney'),
(428, 'Europe/Amsterdam', 'Europe/Amsterdam'),
(429, 'Europe/Andorra', 'Europe/Andorra'),
(430, 'Europe/Astrakhan', 'Europe/Astrakhan'),
(431, 'Europe/Athens', 'Europe/Athens'),
(432, 'Europe/Belgrade', 'Europe/Belgrade'),
(433, 'Europe/Berlin', 'Europe/Berlin'),
(434, 'Europe/Bratislava', 'Europe/Bratislava'),
(435, 'Europe/Brussels', 'Europe/Brussels'),
(436, 'Europe/Bucharest', 'Europe/Bucharest'),
(437, 'Europe/Budapest', 'Europe/Budapest'),
(438, 'Europe/Busingen', 'Europe/Busingen'),
(439, 'Europe/Chisinau', 'Europe/Chisinau'),
(440, 'Europe/Copenhagen', 'Europe/Copenhagen'),
(441, 'Europe/Dublin', 'Europe/Dublin'),
(442, 'Europe/Gibraltar', 'Europe/Gibraltar'),
(443, 'Europe/Guernsey', 'Europe/Guernsey'),
(444, 'Europe/Helsinki', 'Europe/Helsinki'),
(445, 'Europe/Isle_of_Man', 'Europe/Isle_of_Man'),
(446, 'Europe/Istanbul', 'Europe/Istanbul'),
(447, 'Europe/Jersey', 'Europe/Jersey'),
(448, 'Europe/Kaliningrad', 'Europe/Kaliningrad'),
(449, 'Europe/Kiev', 'Europe/Kiev'),
(450, 'Europe/Kirov', 'Europe/Kirov'),
(451, 'Europe/Lisbon', 'Europe/Lisbon'),
(452, 'Europe/Ljubljana', 'Europe/Ljubljana'),
(453, 'Europe/London', 'Europe/London'),
(454, 'Europe/Luxembourg', 'Europe/Luxembourg'),
(455, 'Europe/Madrid', 'Europe/Madrid'),
(456, 'Europe/Malta', 'Europe/Malta'),
(457, 'Europe/Mariehamn', 'Europe/Mariehamn'),
(458, 'Europe/Minsk', 'Europe/Minsk'),
(459, 'Europe/Monaco', 'Europe/Monaco'),
(460, 'Europe/Moscow', 'Europe/Moscow'),
(461, 'Europe/Oslo', 'Europe/Oslo'),
(462, 'Europe/Paris', 'Europe/Paris'),
(463, 'Europe/Podgorica', 'Europe/Podgorica'),
(464, 'Europe/Prague', 'Europe/Prague'),
(465, 'Europe/Riga', 'Europe/Riga'),
(466, 'Europe/Rome', 'Europe/Rome'),
(467, 'Europe/Samara', 'Europe/Samara'),
(468, 'Europe/San_Marino', 'Europe/San_Marino'),
(469, 'Europe/Sarajevo', 'Europe/Sarajevo'),
(470, 'Europe/Saratov', 'Europe/Saratov'),
(471, 'Europe/Simferopol', 'Europe/Simferopol'),
(472, 'Europe/Skopje', 'Europe/Skopje'),
(473, 'Europe/Sofia', 'Europe/Sofia'),
(474, 'Europe/Stockholm', 'Europe/Stockholm'),
(475, 'Europe/Tallinn', 'Europe/Tallinn'),
(476, 'Europe/Tirane', 'Europe/Tirane'),
(477, 'Europe/Ulyanovsk', 'Europe/Ulyanovsk'),
(478, 'Europe/Uzhgorod', 'Europe/Uzhgorod'),
(479, 'Europe/Vaduz', 'Europe/Vaduz'),
(480, 'Europe/Vatican', 'Europe/Vatican'),
(481, 'Europe/Vienna', 'Europe/Vienna'),
(482, 'Europe/Vilnius', 'Europe/Vilnius'),
(483, 'Europe/Volgograd', 'Europe/Volgograd'),
(484, 'Europe/Warsaw', 'Europe/Warsaw'),
(485, 'Europe/Zagreb', 'Europe/Zagreb'),
(486, 'Europe/Zaporozhye', 'Europe/Zaporozhye'),
(487, 'Europe/Zurich', 'Europe/Zurich'),
(488, 'Indian/Antananarivo', 'Indian/Antananarivo'),
(489, 'Indian/Chagos', 'Indian/Chagos'),
(490, 'Indian/Christmas', 'Indian/Christmas'),
(491, 'Indian/Cocos', 'Indian/Cocos'),
(492, 'Indian/Comoro', 'Indian/Comoro'),
(493, 'Indian/Kerguelen', 'Indian/Kerguelen'),
(494, 'Indian/Mahe', 'Indian/Mahe'),
(495, 'Indian/Maldives', 'Indian/Maldives'),
(496, 'Indian/Mauritius', 'Indian/Mauritius'),
(497, 'Indian/Mayotte', 'Indian/Mayotte'),
(498, 'Indian/Reunion', 'Indian/Reunion'),
(499, 'Pacific/Apia', 'Pacific/Apia'),
(500, 'Pacific/Auckland', 'Pacific/Auckland'),
(501, 'Pacific/Bougainville', 'Pacific/Bougainville'),
(502, 'Pacific/Chatham', 'Pacific/Chatham'),
(503, 'Pacific/Chuuk', 'Pacific/Chuuk'),
(504, 'Pacific/Easter', 'Pacific/Easter'),
(505, 'Pacific/Efate', 'Pacific/Efate'),
(506, 'Pacific/Enderbury', 'Pacific/Enderbury'),
(507, 'Pacific/Fakaofo', 'Pacific/Fakaofo'),
(508, 'Pacific/Fiji', 'Pacific/Fiji'),
(509, 'Pacific/Funafuti', 'Pacific/Funafuti'),
(510, 'Pacific/Galapagos', 'Pacific/Galapagos'),
(511, 'Pacific/Gambier', 'Pacific/Gambier'),
(512, 'Pacific/Guadalcanal', 'Pacific/Guadalcanal'),
(513, 'Pacific/Guam', 'Pacific/Guam'),
(514, 'Pacific/Honolulu', 'Pacific/Honolulu'),
(515, 'Pacific/Kiritimati', 'Pacific/Kiritimati'),
(516, 'Pacific/Kosrae', 'Pacific/Kosrae'),
(517, 'Pacific/Kwajalein', 'Pacific/Kwajalein'),
(518, 'Pacific/Majuro', 'Pacific/Majuro'),
(519, 'Pacific/Marquesas', 'Pacific/Marquesas'),
(520, 'Pacific/Midway', 'Pacific/Midway'),
(521, 'Pacific/Nauru', 'Pacific/Nauru'),
(522, 'Pacific/Niue', 'Pacific/Niue'),
(523, 'Pacific/Norfolk', 'Pacific/Norfolk'),
(524, 'Pacific/Noumea', 'Pacific/Noumea'),
(525, 'Pacific/Pago_Pago', 'Pacific/Pago_Pago'),
(526, 'Pacific/Palau', 'Pacific/Palau'),
(527, 'Pacific/Pitcairn', 'Pacific/Pitcairn'),
(528, 'Pacific/Pohnpei', 'Pacific/Pohnpei'),
(529, 'Pacific/Port_Moresby', 'Pacific/Port_Moresby'),
(530, 'Pacific/Rarotonga', 'Pacific/Rarotonga'),
(531, 'Pacific/Saipan', 'Pacific/Saipan'),
(532, 'Pacific/Tahiti', 'Pacific/Tahiti'),
(533, 'Pacific/Tarawa', 'Pacific/Tarawa'),
(534, 'Pacific/Tongatapu', 'Pacific/Tongatapu'),
(535, 'Pacific/Wake', 'Pacific/Wake'),
(536, 'Pacific/Wallis', 'Pacific/Wallis'),
(537, 'UTC', 'UTC');

-- --------------------------------------------------------

--
-- Table structure for table `trainingsessions`
--

CREATE TABLE `trainingsessions` (
  `id` bigint(20) NOT NULL,
  `name` varchar(300) NOT NULL,
  `course` bigint(20) NOT NULL,
  `description` text DEFAULT NULL,
  `scheduled` datetime DEFAULT NULL,
  `dueDate` datetime DEFAULT NULL,
  `deliveryMethod` enum('Classroom','Self Study','Online') DEFAULT 'Classroom',
  `deliveryLocation` varchar(500) DEFAULT NULL,
  `status` enum('Pending','Approved','Completed','Cancelled') DEFAULT 'Pending',
  `attendanceType` enum('Sign Up','Assign') DEFAULT 'Sign Up',
  `attachment` varchar(300) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `requireProof` enum('Yes','No') DEFAULT 'Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userreports`
--

CREATE TABLE `userreports` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` text DEFAULT NULL,
  `parameters` text DEFAULT NULL,
  `query` text DEFAULT NULL,
  `paramOrder` varchar(500) NOT NULL,
  `type` enum('Query','Class') DEFAULT 'Query',
  `report_group` varchar(500) DEFAULT NULL,
  `output` varchar(15) NOT NULL DEFAULT 'CSV'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `userreports`
--

INSERT INTO `userreports` (`id`, `name`, `details`, `parameters`, `query`, `paramOrder`, `type`, `report_group`, `output`) VALUES
(1, 'Time Entry Report', 'View your time entries by date range and project', '[\r\n[ \"client\", {\"label\":\"Select Client\",\"type\":\"select\",\"allow-null\":true,\"null-label\":\"Not Selected\",\"remote-source\":[\"Client\",\"id\",\"name\"]}],\r\n[ \"project\", {\"label\":\"Or Project\",\"type\":\"select\",\"allow-null\":true,\"null-label\":\"All Projects\",\"remote-source\":[\"Project\",\"id\",\"name\",\"getAllProjects\"]}],\r\n[ \"date_start\", {\"label\":\"Start Date\",\"type\":\"date\"}],\r\n[ \"date_end\", {\"label\":\"End Date\",\"type\":\"date\"}]\r\n]', 'EmployeeTimesheetReport', '[\"client\",\"project\",\"date_start\",\"date_end\",\"status\"]', 'Class', 'Time Management', 'CSV'),
(2, 'Attendance Report', 'View your attendance entries by date range', '[\r\n[ \"date_start\", {\"label\":\"Start Date\",\"type\":\"date\"}],\r\n[ \"date_end\", {\"label\":\"End Date\",\"type\":\"date\"}]\r\n]', 'EmployeeAttendanceReport', '[\"date_start\",\"date_end\"]', 'Class', 'Time Management', 'CSV'),
(3, 'Time Tracking Report', 'View your working hours and attendance details for each day for a given period ', '[\r\n[ \"date_start\", {\"label\":\"Start Date\",\"type\":\"date\"}],\r\n[ \"date_end\", {\"label\":\"End Date\",\"type\":\"date\"}]\r\n]', 'EmployeeTimeTrackReport', '[\"date_start\",\"date_end\"]', 'Class', 'Time Management', 'CSV'),
(4, 'Travel Request Report', 'View travel requests for a specified period', '[\r\n[ \"date_start\", {\"label\":\"Start Date\",\"type\":\"date\"}],\r\n[ \"date_end\", {\"label\":\"End Date\",\"type\":\"date\"}],\r\n[ \"status\", {\"label\":\"Status\",\"type\":\"select\",\"source\":[[\"NULL\",\"All Statuses\"],[\"Approved\",\"Approved\"],[\"Pending\",\"Pending\"],[\"Rejected\",\"Rejected\"],[\"Cancellation Requested\",\"Cancellation Requested\"],[\"Cancelled\",\"Cancelled\"]]}]\r\n]', 'TravelRequestReport', '[\"date_start\",\"date_end\",\"status\"]', 'Class', 'Travel and Expense Management', 'CSV'),
(5, 'Time Sheet Report', 'This report list all employee time sheets by employee and date range', '[\r\n[ \"date_start\", {\"label\":\"Start Date\",\"type\":\"date\"}],\r\n[ \"date_end\", {\"label\":\"End Date\",\"type\":\"date\"}],\r\n[ \"status\", {\"label\":\"Status\",\"allow-null\":true,\"null-label\":\"All Status\",\"type\":\"select\",\"source\":[[\"Approved\",\"Approved\"],[\"Pending\",\"Pending\"],[\"Rejected\",\"Rejected\"]]}]\r\n]', 'EmployeeTimeSheetData', '[\"date_start\",\"date_end\",\"status\"]', 'Class', 'Time Management', 'CSV'),
(6, 'Client Project Time Report', 'View your time entries for projects under a given client', '[\r\n[ \"client\", {\"label\":\"Select Client\",\"type\":\"select\",\"allow-null\":false,\"remote-source\":[\"Client\",\"id\",\"name\"]}],\r\n[ \"date_start\", {\"label\":\"Start Date\",\"type\":\"date\"}],\r\n[ \"date_end\", {\"label\":\"End Date\",\"type\":\"date\"}]\r\n]', 'ClientProjectTimeReport', '[\"client\",\"date_start\",\"date_end\",\"status\"]', 'Class', 'Time Management', 'PDF'),
(7, 'Download Payslips', 'Download your payslips', '[\r\n[ \"payroll\", {\"label\":\"Select Payroll\",\"type\":\"select\",\"allow-null\":false,\"remote-source\":[\"Payroll\",\"id\",\"name\",\"getEmployeePayrolls\"]}]]', 'PayslipReport', '[\"payroll\"]', 'Class', 'Finance', 'PDF');

-- --------------------------------------------------------

--
-- Table structure for table `userroles`
--

CREATE TABLE `userroles` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `additional_permissions` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `userroles`
--

INSERT INTO `userroles` (`id`, `name`, `additional_permissions`) VALUES
(1, 'Report Manager', NULL),
(2, 'Attendance Manager', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `employee` bigint(20) DEFAULT NULL,
  `default_module` bigint(20) DEFAULT NULL,
  `user_level` enum('Admin','Employee','Manager','Restricted Admin','Restricted Manager','Restricted Employee') DEFAULT NULL,
  `allow_mobile_device_access` tinyint(1) NOT NULL,
  `can_employee_mark_attendance` tinyint(1) NOT NULL,
  `user_roles` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `login_hash` varchar(64) DEFAULT NULL,
  `lang` bigint(20) DEFAULT NULL,
  `googleUserData` text DEFAULT NULL,
  `wrong_password_count` int(11) DEFAULT 0,
  `last_wrong_attempt_at` datetime DEFAULT NULL,
  `last_password_requested_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `employee`, `default_module`, `user_level`, `allow_mobile_device_access`, `can_employee_mark_attendance`, `user_roles`, `last_login`, `last_update`, `created`, `login_hash`, `lang`, `googleUserData`, `wrong_password_count`, `last_wrong_attempt_at`, `last_password_requested_at`) VALUES
(1, 'admin', 'shubham@hihellohr.com', '$2y$13$xwhfDnrxV3w7Z64BAW4v7OdytxVO.glvUMkNO4xZdMQlYssNEdIlG', 1, NULL, 'Admin', 1, 0, '[]', '2023-02-15 11:19:28', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(65, 'Robin001', 'robin001@gmail.com', '$2y$13$xwhfDnrxV3w7Z64BAW4v7OdytxVO.glvUMkNO4xZdMQlYssNEdIlG', 68, NULL, 'Employee', 1, 1, NULL, NULL, NULL, '2023-01-10 12:46:56', NULL, NULL, NULL, 0, NULL, NULL),
(66, 'John781', 'john781@gmail.com', '$2y$13$U7RkN7gyp2qoZV5ejmC7F.DfQw5jpQ/.ql3Lp5HC4S2cdCbU5s2TO', 69, NULL, 'Employee', 1, 1, '[]', '2023-01-25 11:20:40', NULL, '2023-01-10 12:46:56', NULL, NULL, NULL, 0, NULL, NULL),
(68, 'James777', 'james777@gmail.com', '202cb962ac59075b964b07152d234b70', 71, NULL, 'Admin', 1, 1, '[]', NULL, NULL, '2023-01-10 12:46:56', NULL, NULL, NULL, 0, NULL, NULL),
(69, 'Paul990', 'paul990@gmail.com', '$2y$13$spU2SZ7MD652iY2ToU5iduc3GxWVEAK0B7U8kKqiLWGu/0p4drxJa', 73, NULL, 'Manager', 1, 1, '[]', '2023-01-25 11:11:22', NULL, '2023-01-10 12:46:56', NULL, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `visitorimages`
--

CREATE TABLE `visitorimages` (
  `id` bigint(20) NOT NULL,
  `visitorId` bigint(20) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `image` varchar(50) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint(20) NOT NULL,
  `employeeId` bigint(20) NOT NULL,
  `projectId` bigint(20) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `company_name` varchar(100) DEFAULT NULL,
  `in_date` date DEFAULT NULL,
  `in_time` varchar(20) DEFAULT NULL,
  `out_date` date DEFAULT NULL,
  `out_time` varchar(20) DEFAULT NULL,
  `in_lat` decimal(10,8) DEFAULT NULL,
  `in_lng` decimal(10,8) DEFAULT NULL,
  `out_lat` decimal(10,8) DEFAULT NULL,
  `out_lng` decimal(10,8) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address_line_1` varchar(100) DEFAULT NULL,
  `address_note` text DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `visiting_place` varchar(100) DEFAULT NULL,
  `visiting_purpose` varchar(100) DEFAULT NULL,
  `visiting_person_name` varchar(100) DEFAULT NULL,
  `visiting_person_phone` varchar(50) DEFAULT NULL,
  `visiting_person_designation` varchar(50) DEFAULT NULL,
  `booking_amount` decimal(10,2) DEFAULT NULL,
  `advance_amount` decimal(10,2) DEFAULT NULL,
  `billed_amount` decimal(10,2) DEFAULT NULL,
  `tax` decimal(10,2) DEFAULT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `employeeId`, `projectId`, `first_name`, `last_name`, `company_name`, `in_date`, `in_time`, `out_date`, `out_time`, `in_lat`, `in_lng`, `out_lat`, `out_lng`, `city`, `state`, `country`, `phone`, `email`, `address_line_1`, `address_note`, `notes`, `visiting_place`, `visiting_purpose`, `visiting_person_name`, `visiting_person_phone`, `visiting_person_designation`, `booking_amount`, `advance_amount`, `billed_amount`, `tax`, `created`) VALUES
(4, 73, 3, 'Jatinder', 'Singh', 'Dipole', '2023-02-09', '02:00PM', '2023-02-10', '04:00PM', '30.74148200', '76.76806600', '30.96610000', '76.52300000', 'Mohali', 'PB', 'India', '9878001500', 'jatindercrest@gmail.com', 'KSB, Royal Homes 1, Kharar, 140701', 'Rupnagar; formerly known as Ropar is a city and a municipal council in Rupnagar district in the Indian state of Punjab. Rupnagar is a newly c', 'Rupnagar is a very small city with the population of about 50,000 people located in the state of Punjab, India. It was established in the 11th century and has survived many epochs and rulers. The area surrounding the city is rich in natural minerals like silt and clay, therefore, there are a few mineral processing plants in the town', 'IIT Ropar', 'Official Meeting', 'S.Mohinder Singh', '9815308978', 'Dean', '10000.00', '1000.00', '9000.00', '18.00', '2023-02-10 08:42:26'),
(9, 70, 3, 'Jatinder1', 'Singh11', 'Dipole1', '2023-02-09', '02:00PM1', '2023-02-10', '04:00PM1', '30.74148200', '76.76806600', '30.96610000', '76.52300000', 'Mohali 1', 'PB1', 'India 1', '9878001500 1', 'jatindercrest@gmail.com 1', 'KSB, Royal Homes 1, Kharar, 140701 1', '1Rupnagar; formerly known as Ropar is a city and a municipal council in Rupnagar district in the Indian state of Punjab. Rupnagar is a newly c', '1Rupnagar is a very small city with the population of about 50,000 people located in the state of Punjab, India. It was established in the 11th century and has survived many epochs and rulers. The area surrounding the city is rich in natural minerals like silt and clay, therefore, there are a few mineral processing plants in the town', 'IIT Ropar1', 'Official Meeting1', 'S.Mohinder Singh1', '98153089781', 'Dean1', '100001.00', '10001.00', '90001.00', '181.00', '2023-02-10 10:49:49'),
(10, 73, 3, 'Jatinder1', 'Singh11', 'Dipole1', '2023-02-09', '02:00PM1', '2023-02-10', '04:00PM1', '30.74148200', '76.76806600', '30.96610000', '76.52300000', 'Mohali 1', 'PB1', 'India 1', '9878001500 1', 'jatindercrest@gmail.com 1', 'KSB, Royal Homes 1, Kharar, 140701 1', '1Rupnagar; formerly known as Ropar is a city and a municipal council in Rupnagar district in the Indian state of Punjab. Rupnagar is a newly c', '1Rupnagar is a very small city with the population of about 50,000 people located in the state of Punjab, India. It was established in the 11th century and has survived many epochs and rulers. The area surrounding the city is rich in natural minerals like silt and clay, therefore, there are a few mineral processing plants in the town', 'IIT Ropar1', 'Official Meeting1', 'S.Mohinder Singh1', '98153089781', 'Dean1', '100001.00', '10001.00', '90001.00', '181.00', '2023-02-14 06:26:45'),
(20, 73, 3, 'Jatinder', 'Singh', 'Dipole', '2023-02-09', '02:00PM', '2023-02-10', '04:00PM', '30.74148200', '76.76806600', '30.96610000', '76.52300000', 'Mohali', 'PB', 'India', '9878001500', 'jatindercrest@gmail.com', 'KSB, Royal Homes 1, Kharar, 140701', 'Rupnagar; formerly known as Ropar is a city and a municipal council in Rupnagar district in the Indian state of Punjab. Rupnagar is a newly c', '1Rupnagar is a very small city with the population of about 50,000 people located in the state of Punjab, India. It was established in the 11th century and has survived many epochs and rulers. The area surrounding the city is rich in natural minerals like silt and clay, therefore, there are a few mineral processing plants in the town', 'IIT Ropar', 'Official Meeting', 'S.Mohinder Singh', '9815308978', 'Dean', '10000.00', '1000.00', '9000.00', '18.00', '2023-02-14 10:25:21');

-- --------------------------------------------------------

--
-- Table structure for table `workdays`
--

CREATE TABLE `workdays` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` enum('Full Day','Half Day','Non-working Day') DEFAULT 'Full Day',
  `country` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `workdays`
--

INSERT INTO `workdays` (`id`, `name`, `status`, `country`) VALUES
(1, 'Monday', 'Full Day', NULL),
(2, 'Tuesday', 'Full Day', NULL),
(3, 'Wednesday', 'Full Day', NULL),
(4, 'Thursday', 'Full Day', NULL),
(5, 'Friday', 'Full Day', NULL),
(6, 'Saturday', 'Non-working Day', NULL),
(7, 'Sunday', 'Non-working Day', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `job` (`job`,`candidate`),
  ADD KEY `Fk_Applications_Candidates` (`candidate`);

--
-- Indexes for table `archivedemployees`
--
ALTER TABLE `archivedemployees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assetlogs`
--
ALTER TABLE `assetlogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assettypes`
--
ALTER TABLE `assettypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `in_time` (`in_time`),
  ADD KEY `out_time` (`out_time`),
  ADD KEY `employee_in_time` (`employee`,`in_time`),
  ADD KEY `employee_out_time` (`employee`,`out_time`);

--
-- Indexes for table `auditlog`
--
ALTER TABLE `auditlog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_AuditLog_Users` (`user`);

--
-- Indexes for table `benifits`
--
ALTER TABLE `benifits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calls`
--
ALTER TABLE `calls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_Calls_Job` (`job`),
  ADD KEY `Fk_Calls_Candidates` (`candidate`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certifications`
--
ALTER TABLE `certifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clientusers`
--
ALTER TABLE `clientusers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `Fk_Clientusers_Clients` (`clientId`);

--
-- Indexes for table `companyassets`
--
ALTER TABLE `companyassets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_CompanyAssets_AssetTypes` (`type`),
  ADD KEY `Fk_CompanyAssets_Employees` (`employee`),
  ADD KEY `Fk_CompanyAssets_CompanyStructures` (`department`);

--
-- Indexes for table `companydocuments`
--
ALTER TABLE `companydocuments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companyloans`
--
ALTER TABLE `companyloans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companystructures`
--
ALTER TABLE `companystructures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_CompanyStructures_Own` (`parent`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `KEY_Conversations_attachment` (`attachment`),
  ADD KEY `KEY_Conversations_type` (`type`),
  ADD KEY `KEY_Conversations_employee` (`employee`),
  ADD KEY `KEY_Conversations_target` (`target`),
  ADD KEY `KEY_Conversations_target_type` (`target`,`type`),
  ADD KEY `KEY_Conversations_timeint` (`timeint`),
  ADD KEY `KEY_Conversations_timeint_type` (`timeint`,`type`);

--
-- Indexes for table `conversationuserstatus`
--
ALTER TABLE `conversationuserstatus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `KEY_ConversationLastSeen_employee` (`employee`),
  ADD KEY `KEY_ConversationLastSeen_seen_at` (`seen_at`),
  ADD KEY `KEY_ConversationLastSeen_status` (`seen_at`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_Courses_Employees` (`coordinator`);

--
-- Indexes for table `crons`
--
ALTER TABLE `crons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `KEY_Crons_name` (`name`),
  ADD KEY `KEY_Crons_frequency` (`frequency`);

--
-- Indexes for table `currencytypes`
--
ALTER TABLE `currencytypes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `CurrencyTypes_code` (`code`);

--
-- Indexes for table `customfields`
--
ALTER TABLE `customfields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `CustomFields_name` (`type`,`name`);

--
-- Indexes for table `customfieldvalues`
--
ALTER TABLE `customfieldvalues`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `CustomFields_type_name_object_id` (`type`,`name`,`object_id`),
  ADD KEY `CustomFields_type_object_id` (`type`,`object_id`);

--
-- Indexes for table `dataentrybackups`
--
ALTER TABLE `dataentrybackups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dataimport`
--
ALTER TABLE `dataimport`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `KEY_DataImport_name` (`name`);

--
-- Indexes for table `dataimportfiles`
--
ALTER TABLE `dataimportfiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deductiongroup`
--
ALTER TABLE `deductiongroup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deductions`
--
ALTER TABLE `deductions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_Deductions_DeductionGroup` (`deduction_group`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `educationlevel`
--
ALTER TABLE `educationlevel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `educations`
--
ALTER TABLE `educations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emaillog`
--
ALTER TABLE `emaillog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `KEY_EmailLog_status` (`status`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `KEY_Emails_status` (`status`),
  ADD KEY `KEY_Emails_created` (`created`);

--
-- Indexes for table `emergencycontacts`
--
ALTER TABLE `emergencycontacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_EmergencyContacts_Employee` (`employee`);

--
-- Indexes for table `employeeapprovals`
--
ALTER TABLE `employeeapprovals`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `EmployeeApprovals_type_element_level` (`type`,`element`,`level`),
  ADD KEY `EmployeeApprovals_type_element_status_level` (`type`,`element`,`status`,`level`),
  ADD KEY `EmployeeApprovals_type_element` (`type`,`element`),
  ADD KEY `EmployeeApprovals_type` (`type`);

--
-- Indexes for table `employeeattendancesheets`
--
ALTER TABLE `employeeattendancesheets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `EmployeeAttendanceSheetsKey` (`employee`,`date_start`,`date_end`),
  ADD KEY `EmployeeAttendanceSheets_date_end` (`date_end`);

--
-- Indexes for table `employeecareer`
--
ALTER TABLE `employeecareer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_EmployeeCareer_Employee` (`employee`),
  ADD KEY `Fk_EmployeeCareer_JobTitles` (`job_title`),
  ADD KEY `Fk_EmployeeCareer_EmploymentStatus` (`employment_status`),
  ADD KEY `Fk_EmployeeCareer_CompanyStructures` (`department`),
  ADD KEY `Fk_EmployeeCareer_Supervisor` (`supervisor`);

--
-- Indexes for table `employeecertifications`
--
ALTER TABLE `employeecertifications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee` (`employee`,`certification_id`),
  ADD KEY `Fk_EmployeeCertifications_Certifications` (`certification_id`);

--
-- Indexes for table `employeecompanyloans`
--
ALTER TABLE `employeecompanyloans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_EmployeeCompanyLoans_CompanyLoans` (`loan`),
  ADD KEY `Fk_EmployeeCompanyLoans_Employee` (`employee`);

--
-- Indexes for table `employeedatahistory`
--
ALTER TABLE `employeedatahistory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_EmployeeDataHistory_Employee` (`employee`),
  ADD KEY `Fk_EmployeeDataHistory_Users` (`user`);

--
-- Indexes for table `employeedependents`
--
ALTER TABLE `employeedependents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_EmployeeDependents_Employee` (`employee`);

--
-- Indexes for table `employeedocuments`
--
ALTER TABLE `employeedocuments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_EmployeeDocuments_Documents` (`document`),
  ADD KEY `Fk_EmployeeDocuments_Employee` (`employee`),
  ADD KEY `KEY_EmployeeDocuments_valid_until` (`valid_until`),
  ADD KEY `KEY_EmployeeDocuments_valid_until_status` (`valid_until`,`status`,`expire_notification_last`);

--
-- Indexes for table `employeeeducations`
--
ALTER TABLE `employeeeducations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_EmployeeEducations_Educations` (`education_id`),
  ADD KEY `Fk_EmployeeEducations_Employee` (`employee`);

--
-- Indexes for table `employeeethnicity`
--
ALTER TABLE `employeeethnicity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_EmployeeEthnicity_Employee` (`employee`),
  ADD KEY `Fk_EmployeeEthnicity_Ethnicity` (`ethnicity`);

--
-- Indexes for table `employeeexpenses`
--
ALTER TABLE `employeeexpenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_EmployeeExpenses_Employee` (`employee`),
  ADD KEY `Fk_EmployeeExpenses_pm` (`payment_method`),
  ADD KEY `Fk_EmployeeExpenses_category` (`category`);

--
-- Indexes for table `employeeforms`
--
ALTER TABLE `employeeforms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_EmployeeForms_Employee` (`employee`),
  ADD KEY `Fk_EmployeeForms_Forms` (`form`);

--
-- Indexes for table `employeegoals`
--
ALTER TABLE `employeegoals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_EmployeeGoals_Employee` (`employee`),
  ADD KEY `Fk_EmployeeGoals_Review` (`review`);

--
-- Indexes for table `employeeimmigrations`
--
ALTER TABLE `employeeimmigrations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_EmployeeImmigrations_Employee` (`employee`),
  ADD KEY `Fk_EmployeeImmigrations_ImmigrationDocuments` (`document`);

--
-- Indexes for table `employeeimmigrationstatus`
--
ALTER TABLE `employeeimmigrationstatus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_EmployeeImmigrationStatus_Employee` (`employee`),
  ADD KEY `Fk_EmployeeImmigrationStatus_Type` (`status`);

--
-- Indexes for table `employeelanguages`
--
ALTER TABLE `employeelanguages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee` (`employee`,`language_id`),
  ADD KEY `Fk_EmployeeLanguages_Languages` (`language_id`);

--
-- Indexes for table `employeeleavedays`
--
ALTER TABLE `employeeleavedays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_EmployeeLeaveDays_EmployeeLeaves` (`employee_leave`);

--
-- Indexes for table `employeeleavelog`
--
ALTER TABLE `employeeleavelog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_EmployeeLeaveLog_EmployeeLeaves` (`employee_leave`),
  ADD KEY `Fk_EmployeeLeaveLog_Users` (`user_id`);

--
-- Indexes for table `employeeleaves`
--
ALTER TABLE `employeeleaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_EmployeeLeaves_Employee` (`employee`),
  ADD KEY `Fk_EmployeeLeaves_LeaveTypes` (`leave_type`),
  ADD KEY `Fk_EmployeeLeaves_LeavePeriods` (`leave_period`);

--
-- Indexes for table `employeeovertime`
--
ALTER TABLE `employeeovertime`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_EmployeeOvertime_Employee` (`employee`),
  ADD KEY `Fk_EmployeeOvertime_Category` (`category`);

--
-- Indexes for table `employeeprojects`
--
ALTER TABLE `employeeprojects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `EmployeeProjectsKey` (`employee`,`project`),
  ADD KEY `Fk_EmployeeProjects_Projects` (`project`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee_id` (`employee_id`),
  ADD KEY `Fk_Employee_Nationality` (`nationality`),
  ADD KEY `Fk_Employee_JobTitle` (`job_title`),
  ADD KEY `Fk_Employee_EmploymentStatus` (`employment_status`),
  ADD KEY `Fk_Employee_Country` (`country`),
  ADD KEY `Fk_Employee_Province` (`province`),
  ADD KEY `Fk_Employee_Supervisor` (`supervisor`),
  ADD KEY `Fk_Employee_CompanyStructures` (`department`),
  ADD KEY `Fk_Employee_PayGrades` (`pay_grade`);

--
-- Indexes for table `employeesalary`
--
ALTER TABLE `employeesalary`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_EmployeeSalary_Employee` (`employee`),
  ADD KEY `Fk_EmployeeSalary_Currency` (`currency`);

--
-- Indexes for table `employeeskills`
--
ALTER TABLE `employeeskills`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee` (`employee`,`skill_id`),
  ADD KEY `Fk_EmployeeSkills_Skills` (`skill_id`);

--
-- Indexes for table `employeestatus`
--
ALTER TABLE `employeestatus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_EmployeeStatus_Employee` (`employee`);

--
-- Indexes for table `employeeteammembers`
--
ALTER TABLE `employeeteammembers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_EmployeeTeamMembers_Team` (`team`),
  ADD KEY `Fk_EmployeeTeamMembers_Member` (`member`);

--
-- Indexes for table `employeeteams`
--
ALTER TABLE `employeeteams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_EmployeeTeams_Lead` (`lead`),
  ADD KEY `Fk_EmployeeTeams_Department` (`department`);

--
-- Indexes for table `employeetimeentry`
--
ALTER TABLE `employeetimeentry`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_EmployeeTimeEntry_Projects` (`project`),
  ADD KEY `Fk_EmployeeTimeEntry_EmployeeTimeSheets` (`timesheet`),
  ADD KEY `employee_project` (`employee`,`project`),
  ADD KEY `employee_project_date_start` (`employee`,`project`,`date_start`);

--
-- Indexes for table `employeetimesheets`
--
ALTER TABLE `employeetimesheets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `EmployeeTimeSheetsKey` (`employee`,`date_start`,`date_end`),
  ADD KEY `EmployeeTimeSheets_date_end` (`date_end`);

--
-- Indexes for table `employeetrainingsessions`
--
ALTER TABLE `employeetrainingsessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_EmployeeTrainingSessions_TrainingSessions` (`trainingSession`),
  ADD KEY `Fk_EmployeeTrainingSessions_Employee` (`employee`);

--
-- Indexes for table `employeetravelrecords`
--
ALTER TABLE `employeetravelrecords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_EmployeeTravelRecords_Employee` (`employee`);

--
-- Indexes for table `employementtype`
--
ALTER TABLE `employementtype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employmentstatus`
--
ALTER TABLE `employmentstatus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ethnicity`
--
ALTER TABLE `ethnicity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expensescategories`
--
ALTER TABLE `expensescategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expensespaymentmethods`
--
ALTER TABLE `expensespaymentmethods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experiencelevel`
--
ALTER TABLE `experiencelevel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fieldnamemappings`
--
ALTER TABLE `fieldnamemappings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `fieldreport`
--
ALTER TABLE `fieldreport`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_Fieldreport_Employees` (`employeeId`);

--
-- Indexes for table `fieldreportdemo`
--
ALTER TABLE `fieldreportdemo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_Fieldreport_Employeess` (`employeeId`);

--
-- Indexes for table `fieldreportinfo`
--
ALTER TABLE `fieldreportinfo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_Fieldreportinfo_fieldreport` (`fieldreportId`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `filename` (`filename`);

--
-- Indexes for table `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `holidays_dateh_country` (`dateh`,`country`);

--
-- Indexes for table `immigrationdocuments`
--
ALTER TABLE `immigrationdocuments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `immigrationstatus`
--
ALTER TABLE `immigrationstatus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `industry`
--
ALTER TABLE `industry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interviews`
--
ALTER TABLE `interviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_Interviews_Job` (`job`),
  ADD KEY `Fk_Interviews_Candidates` (`candidate`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Job_status` (`status`);

--
-- Indexes for table `jobfunction`
--
ALTER TABLE `jobfunction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobtitles`
--
ALTER TABLE `jobtitles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leavegroupemployees`
--
ALTER TABLE `leavegroupemployees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_LeaveGroupEmployees_LeaveGroups` (`leave_group`),
  ADD KEY `Fk_LeaveGroupEmployees_Employee` (`employee`);

--
-- Indexes for table `leavegroups`
--
ALTER TABLE `leavegroups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leaveperiods`
--
ALTER TABLE `leaveperiods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leaverules`
--
ALTER TABLE `leaverules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_LeaveRules_leave_period` (`leave_period`),
  ADD KEY `Fk_LeaveRules_department` (`department`);

--
-- Indexes for table `leavestartingbalance`
--
ALTER TABLE `leavestartingbalance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leavetypes`
--
ALTER TABLE `leavetypes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `meetingrooms`
--
ALTER TABLE `meetingrooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `KEY_Migrations_file` (`file`),
  ADD KEY `KEY_Migrations_status` (`status`),
  ADD KEY `KEY_Migrations_version` (`version`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Modules_name_modgroup` (`name`,`mod_group`);

--
-- Indexes for table `nationality`
--
ALTER TABLE `nationality`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `toUser_time` (`toUser`,`time`),
  ADD KEY `toUser_status_time` (`toUser`,`status`,`time`);

--
-- Indexes for table `overtimecategories`
--
ALTER TABLE `overtimecategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payfrequency`
--
ALTER TABLE `payfrequency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paygrades`
--
ALTER TABLE `paygrades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_PayGrades_CurrencyTypes` (`currency`);

--
-- Indexes for table `payroll`
--
ALTER TABLE `payroll`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payrollcolumns`
--
ALTER TABLE `payrollcolumns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payrollcolumntemplates`
--
ALTER TABLE `payrollcolumntemplates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payrolldata`
--
ALTER TABLE `payrolldata`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `PayrollDataUniqueKey` (`payroll`,`employee`,`payroll_item`);

--
-- Indexes for table `payrollemployees`
--
ALTER TABLE `payrollemployees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `PayrollEmployees_employee` (`employee`),
  ADD KEY `Fk_PayrollEmployees_DeductionGroup` (`deduction_group`);

--
-- Indexes for table `paysliptemplates`
--
ALTER TABLE `paysliptemplates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `performancereviews`
--
ALTER TABLE `performancereviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_PerformanceReviews_ReviewTemplates` (`form`),
  ADD KEY `Fk_PerformanceReviews_Employees1` (`employee`),
  ADD KEY `Fk_PerformanceReviews_Employees2` (`coordinator`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Module_Permission` (`user_level`,`module_id`,`permission`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_Projects_Client` (`client`);

--
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_Province_Country` (`country`);

--
-- Indexes for table `reportfiles`
--
ALTER TABLE `reportfiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ReportFiles_attachment` (`attachment`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Reports_Name` (`name`);

--
-- Indexes for table `restaccesstokens`
--
ALTER TABLE `restaccesstokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviewfeedbacks`
--
ALTER TABLE `reviewfeedbacks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_ReviewFeedbacks_ReviewTemplates` (`form`),
  ADD KEY `Fk_ReviewFeedbacks_PerformanceReviews` (`review`),
  ADD KEY `Fk_ReviewFeedbacks_Employees1` (`employee`),
  ADD KEY `Fk_ReviewFeedbacks_Employees2` (`subject`);

--
-- Indexes for table `reviewtemplates`
--
ALTER TABLE `reviewtemplates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salarycomponent`
--
ALTER TABLE `salarycomponent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_SalaryComponent_SalaryComponentType` (`componentType`);

--
-- Indexes for table `salarycomponenttype`
--
ALTER TABLE `salarycomponenttype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statuschangelogs`
--
ALTER TABLE `statuschangelogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmployeeApprovals_type_element` (`type`,`element`);

--
-- Indexes for table `supportedlanguages`
--
ALTER TABLE `supportedlanguages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `systemdata`
--
ALTER TABLE `systemdata`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timezones`
--
ALTER TABLE `timezones`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `TimezoneNameKey` (`name`);

--
-- Indexes for table `trainingsessions`
--
ALTER TABLE `trainingsessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_TrainingSessions_Courses` (`course`);

--
-- Indexes for table `userreports`
--
ALTER TABLE `userreports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UserReports_Name` (`name`);

--
-- Indexes for table `userroles`
--
ALTER TABLE `userroles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `Fk_User_Employee` (`employee`),
  ADD KEY `Fk_User_SupportedLanguages` (`lang`),
  ADD KEY `login_hash_index` (`login_hash`);

--
-- Indexes for table `visitorimages`
--
ALTER TABLE `visitorimages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_Visitorimages_Visitors` (`visitorId`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_Visitors_Employees` (`employeeId`),
  ADD KEY `Fk_Visitors_Projects` (`projectId`);

--
-- Indexes for table `workdays`
--
ALTER TABLE `workdays`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `workdays_name_country` (`name`,`country`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `archivedemployees`
--
ALTER TABLE `archivedemployees`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assetlogs`
--
ALTER TABLE `assetlogs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `assettypes`
--
ALTER TABLE `assettypes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `auditlog`
--
ALTER TABLE `auditlog`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `benifits`
--
ALTER TABLE `benifits`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `calls`
--
ALTER TABLE `calls`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `certifications`
--
ALTER TABLE `certifications`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `clientusers`
--
ALTER TABLE `clientusers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `companyassets`
--
ALTER TABLE `companyassets`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `companydocuments`
--
ALTER TABLE `companydocuments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `companyloans`
--
ALTER TABLE `companyloans`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `companystructures`
--
ALTER TABLE `companystructures`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `conversationuserstatus`
--
ALTER TABLE `conversationuserstatus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `crons`
--
ALTER TABLE `crons`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `currencytypes`
--
ALTER TABLE `currencytypes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT for table `customfields`
--
ALTER TABLE `customfields`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customfieldvalues`
--
ALTER TABLE `customfieldvalues`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `dataentrybackups`
--
ALTER TABLE `dataentrybackups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dataimport`
--
ALTER TABLE `dataimport`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dataimportfiles`
--
ALTER TABLE `dataimportfiles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `deductiongroup`
--
ALTER TABLE `deductiongroup`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `deductions`
--
ALTER TABLE `deductions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `educationlevel`
--
ALTER TABLE `educationlevel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `educations`
--
ALTER TABLE `educations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `emaillog`
--
ALTER TABLE `emaillog`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emergencycontacts`
--
ALTER TABLE `emergencycontacts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employeeapprovals`
--
ALTER TABLE `employeeapprovals`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employeeattendancesheets`
--
ALTER TABLE `employeeattendancesheets`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employeecareer`
--
ALTER TABLE `employeecareer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employeecertifications`
--
ALTER TABLE `employeecertifications`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employeecompanyloans`
--
ALTER TABLE `employeecompanyloans`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employeedatahistory`
--
ALTER TABLE `employeedatahistory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employeedependents`
--
ALTER TABLE `employeedependents`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employeedocuments`
--
ALTER TABLE `employeedocuments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employeeeducations`
--
ALTER TABLE `employeeeducations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employeeethnicity`
--
ALTER TABLE `employeeethnicity`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employeeexpenses`
--
ALTER TABLE `employeeexpenses`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employeeforms`
--
ALTER TABLE `employeeforms`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employeegoals`
--
ALTER TABLE `employeegoals`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employeeimmigrations`
--
ALTER TABLE `employeeimmigrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employeeimmigrationstatus`
--
ALTER TABLE `employeeimmigrationstatus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employeelanguages`
--
ALTER TABLE `employeelanguages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employeeleavedays`
--
ALTER TABLE `employeeleavedays`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `employeeleavelog`
--
ALTER TABLE `employeeleavelog`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employeeleaves`
--
ALTER TABLE `employeeleaves`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employeeovertime`
--
ALTER TABLE `employeeovertime`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employeeprojects`
--
ALTER TABLE `employeeprojects`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `employeesalary`
--
ALTER TABLE `employeesalary`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `employeeskills`
--
ALTER TABLE `employeeskills`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employeestatus`
--
ALTER TABLE `employeestatus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employeeteammembers`
--
ALTER TABLE `employeeteammembers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employeeteams`
--
ALTER TABLE `employeeteams`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employeetimeentry`
--
ALTER TABLE `employeetimeentry`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employeetimesheets`
--
ALTER TABLE `employeetimesheets`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `employeetrainingsessions`
--
ALTER TABLE `employeetrainingsessions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employeetravelrecords`
--
ALTER TABLE `employeetravelrecords`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employementtype`
--
ALTER TABLE `employementtype`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employmentstatus`
--
ALTER TABLE `employmentstatus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ethnicity`
--
ALTER TABLE `ethnicity`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `expensescategories`
--
ALTER TABLE `expensescategories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `expensespaymentmethods`
--
ALTER TABLE `expensespaymentmethods`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `experiencelevel`
--
ALTER TABLE `experiencelevel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `fieldnamemappings`
--
ALTER TABLE `fieldnamemappings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `fieldreport`
--
ALTER TABLE `fieldreport`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `fieldreportdemo`
--
ALTER TABLE `fieldreportdemo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `fieldreportinfo`
--
ALTER TABLE `fieldreportinfo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `forms`
--
ALTER TABLE `forms`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `immigrationdocuments`
--
ALTER TABLE `immigrationdocuments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `immigrationstatus`
--
ALTER TABLE `immigrationstatus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `industry`
--
ALTER TABLE `industry`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `interviews`
--
ALTER TABLE `interviews`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobfunction`
--
ALTER TABLE `jobfunction`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `jobtitles`
--
ALTER TABLE `jobtitles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `leavegroupemployees`
--
ALTER TABLE `leavegroupemployees`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leavegroups`
--
ALTER TABLE `leavegroups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `leaveperiods`
--
ALTER TABLE `leaveperiods`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `leaverules`
--
ALTER TABLE `leaverules`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leavestartingbalance`
--
ALTER TABLE `leavestartingbalance`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leavetypes`
--
ALTER TABLE `leavetypes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `meetingrooms`
--
ALTER TABLE `meetingrooms`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `nationality`
--
ALTER TABLE `nationality`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `overtimecategories`
--
ALTER TABLE `overtimecategories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payfrequency`
--
ALTER TABLE `payfrequency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `paygrades`
--
ALTER TABLE `paygrades`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payroll`
--
ALTER TABLE `payroll`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payrollcolumns`
--
ALTER TABLE `payrollcolumns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `payrollcolumntemplates`
--
ALTER TABLE `payrollcolumntemplates`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payrolldata`
--
ALTER TABLE `payrolldata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payrollemployees`
--
ALTER TABLE `payrollemployees`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `paysliptemplates`
--
ALTER TABLE `paysliptemplates`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `performancereviews`
--
ALTER TABLE `performancereviews`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `province`
--
ALTER TABLE `province`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `reportfiles`
--
ALTER TABLE `reportfiles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `restaccesstokens`
--
ALTER TABLE `restaccesstokens`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `reviewfeedbacks`
--
ALTER TABLE `reviewfeedbacks`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviewtemplates`
--
ALTER TABLE `reviewtemplates`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `salarycomponent`
--
ALTER TABLE `salarycomponent`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `salarycomponenttype`
--
ALTER TABLE `salarycomponenttype`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `statuschangelogs`
--
ALTER TABLE `statuschangelogs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supportedlanguages`
--
ALTER TABLE `supportedlanguages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `systemdata`
--
ALTER TABLE `systemdata`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `timezones`
--
ALTER TABLE `timezones`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=538;

--
-- AUTO_INCREMENT for table `trainingsessions`
--
ALTER TABLE `trainingsessions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userreports`
--
ALTER TABLE `userreports`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `userroles`
--
ALTER TABLE `userroles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `visitorimages`
--
ALTER TABLE `visitorimages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `workdays`
--
ALTER TABLE `workdays`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applications`
--
ALTER TABLE `applications`
  ADD CONSTRAINT `Fk_Applications_Candidates` FOREIGN KEY (`candidate`) REFERENCES `candidates` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_Applications_Job` FOREIGN KEY (`job`) REFERENCES `job` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `Fk_Attendance_Employee` FOREIGN KEY (`employee`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `auditlog`
--
ALTER TABLE `auditlog`
  ADD CONSTRAINT `Fk_AuditLog_Users` FOREIGN KEY (`user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `calls`
--
ALTER TABLE `calls`
  ADD CONSTRAINT `Fk_Calls_Candidates` FOREIGN KEY (`candidate`) REFERENCES `candidates` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_Calls_Job` FOREIGN KEY (`job`) REFERENCES `job` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `clientusers`
--
ALTER TABLE `clientusers`
  ADD CONSTRAINT `Fk_Clientusers_Clients` FOREIGN KEY (`clientId`) REFERENCES `clients` (`id`);

--
-- Constraints for table `companyassets`
--
ALTER TABLE `companyassets`
  ADD CONSTRAINT `Fk_CompanyAssets_AssetTypes` FOREIGN KEY (`type`) REFERENCES `assettypes` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_CompanyAssets_CompanyStructures` FOREIGN KEY (`department`) REFERENCES `companystructures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_CompanyAssets_Employees` FOREIGN KEY (`employee`) REFERENCES `employees` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `companystructures`
--
ALTER TABLE `companystructures`
  ADD CONSTRAINT `Fk_CompanyStructures_Own` FOREIGN KEY (`parent`) REFERENCES `companystructures` (`id`);

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `Fk_Courses_Employees` FOREIGN KEY (`coordinator`) REFERENCES `employees` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `deductions`
--
ALTER TABLE `deductions`
  ADD CONSTRAINT `Fk_Deductions_DeductionGroup` FOREIGN KEY (`deduction_group`) REFERENCES `deductiongroup` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `emergencycontacts`
--
ALTER TABLE `emergencycontacts`
  ADD CONSTRAINT `Fk_EmergencyContacts_Employee` FOREIGN KEY (`employee`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employeeattendancesheets`
--
ALTER TABLE `employeeattendancesheets`
  ADD CONSTRAINT `Fk_EmployeeAttendanceSheets_Employee` FOREIGN KEY (`employee`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employeecareer`
--
ALTER TABLE `employeecareer`
  ADD CONSTRAINT `Fk_EmployeeCareer_CompanyStructures` FOREIGN KEY (`department`) REFERENCES `companystructures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_EmployeeCareer_Employee` FOREIGN KEY (`employee`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_EmployeeCareer_EmploymentStatus` FOREIGN KEY (`employment_status`) REFERENCES `employmentstatus` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_EmployeeCareer_JobTitles` FOREIGN KEY (`job_title`) REFERENCES `jobtitles` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_EmployeeCareer_Supervisor` FOREIGN KEY (`supervisor`) REFERENCES `employees` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `employeecertifications`
--
ALTER TABLE `employeecertifications`
  ADD CONSTRAINT `Fk_EmployeeCertifications_Certifications` FOREIGN KEY (`certification_id`) REFERENCES `certifications` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_EmployeeCertifications_Employee` FOREIGN KEY (`employee`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employeecompanyloans`
--
ALTER TABLE `employeecompanyloans`
  ADD CONSTRAINT `Fk_EmployeeCompanyLoans_CompanyLoans` FOREIGN KEY (`loan`) REFERENCES `companyloans` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_EmployeeCompanyLoans_Employee` FOREIGN KEY (`employee`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employeedatahistory`
--
ALTER TABLE `employeedatahistory`
  ADD CONSTRAINT `Fk_EmployeeDataHistory_Employee` FOREIGN KEY (`employee`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_EmployeeDataHistory_Users` FOREIGN KEY (`user`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `employeedependents`
--
ALTER TABLE `employeedependents`
  ADD CONSTRAINT `Fk_EmployeeDependents_Employee` FOREIGN KEY (`employee`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employeedocuments`
--
ALTER TABLE `employeedocuments`
  ADD CONSTRAINT `Fk_EmployeeDocuments_Documents` FOREIGN KEY (`document`) REFERENCES `documents` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_EmployeeDocuments_Employee` FOREIGN KEY (`employee`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employeeeducations`
--
ALTER TABLE `employeeeducations`
  ADD CONSTRAINT `Fk_EmployeeEducations_Educations` FOREIGN KEY (`education_id`) REFERENCES `educations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_EmployeeEducations_Employee` FOREIGN KEY (`employee`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employeeethnicity`
--
ALTER TABLE `employeeethnicity`
  ADD CONSTRAINT `Fk_EmployeeEthnicity_Employee` FOREIGN KEY (`employee`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_EmployeeEthnicity_Ethnicity` FOREIGN KEY (`ethnicity`) REFERENCES `ethnicity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employeeexpenses`
--
ALTER TABLE `employeeexpenses`
  ADD CONSTRAINT `Fk_EmployeeExpenses_Employee` FOREIGN KEY (`employee`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_EmployeeExpenses_category` FOREIGN KEY (`category`) REFERENCES `expensescategories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_EmployeeExpenses_pm` FOREIGN KEY (`payment_method`) REFERENCES `expensespaymentmethods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employeeforms`
--
ALTER TABLE `employeeforms`
  ADD CONSTRAINT `Fk_EmployeeForms_Employee` FOREIGN KEY (`employee`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_EmployeeForms_Forms` FOREIGN KEY (`form`) REFERENCES `forms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employeegoals`
--
ALTER TABLE `employeegoals`
  ADD CONSTRAINT `Fk_EmployeeGoals_Employee` FOREIGN KEY (`employee`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_EmployeeGoals_Review` FOREIGN KEY (`review`) REFERENCES `performancereviews` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employeeimmigrations`
--
ALTER TABLE `employeeimmigrations`
  ADD CONSTRAINT `Fk_EmployeeImmigrations_Employee` FOREIGN KEY (`employee`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_EmployeeImmigrations_ImmigrationDocuments` FOREIGN KEY (`document`) REFERENCES `immigrationdocuments` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `employeeimmigrationstatus`
--
ALTER TABLE `employeeimmigrationstatus`
  ADD CONSTRAINT `Fk_EmployeeImmigrationStatus_Employee` FOREIGN KEY (`employee`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_EmployeeImmigrationStatus_Type` FOREIGN KEY (`status`) REFERENCES `immigrationstatus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employeelanguages`
--
ALTER TABLE `employeelanguages`
  ADD CONSTRAINT `Fk_EmployeeLanguages_Employee` FOREIGN KEY (`employee`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_EmployeeLanguages_Languages` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employeeleavedays`
--
ALTER TABLE `employeeleavedays`
  ADD CONSTRAINT `Fk_EmployeeLeaveDays_EmployeeLeaves` FOREIGN KEY (`employee_leave`) REFERENCES `employeeleaves` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employeeleavelog`
--
ALTER TABLE `employeeleavelog`
  ADD CONSTRAINT `Fk_EmployeeLeaveLog_EmployeeLeaves` FOREIGN KEY (`employee_leave`) REFERENCES `employeeleaves` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_EmployeeLeaveLog_Users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `employeeleaves`
--
ALTER TABLE `employeeleaves`
  ADD CONSTRAINT `Fk_EmployeeLeaves_Employee` FOREIGN KEY (`employee`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_EmployeeLeaves_LeavePeriods` FOREIGN KEY (`leave_period`) REFERENCES `leaveperiods` (`id`),
  ADD CONSTRAINT `Fk_EmployeeLeaves_LeaveTypes` FOREIGN KEY (`leave_type`) REFERENCES `leavetypes` (`id`);

--
-- Constraints for table `employeeovertime`
--
ALTER TABLE `employeeovertime`
  ADD CONSTRAINT `Fk_EmployeeOvertime_Category` FOREIGN KEY (`category`) REFERENCES `overtimecategories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_EmployeeOvertime_Employee` FOREIGN KEY (`employee`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employeeprojects`
--
ALTER TABLE `employeeprojects`
  ADD CONSTRAINT `Fk_EmployeeProjects_Employee` FOREIGN KEY (`employee`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_EmployeeProjects_Projects` FOREIGN KEY (`project`) REFERENCES `projects` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `Fk_Employee_CompanyStructures` FOREIGN KEY (`department`) REFERENCES `companystructures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_Employee_Country` FOREIGN KEY (`country`) REFERENCES `country` (`code`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_Employee_EmploymentStatus` FOREIGN KEY (`employment_status`) REFERENCES `employmentstatus` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_Employee_JobTitle` FOREIGN KEY (`job_title`) REFERENCES `jobtitles` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_Employee_Nationality` FOREIGN KEY (`nationality`) REFERENCES `nationality` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_Employee_PayGrades` FOREIGN KEY (`pay_grade`) REFERENCES `paygrades` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_Employee_Province` FOREIGN KEY (`province`) REFERENCES `province` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_Employee_Supervisor` FOREIGN KEY (`supervisor`) REFERENCES `employees` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `employeesalary`
--
ALTER TABLE `employeesalary`
  ADD CONSTRAINT `Fk_EmployeeSalary_Currency` FOREIGN KEY (`currency`) REFERENCES `currencytypes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_EmployeeSalary_Employee` FOREIGN KEY (`employee`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employeeskills`
--
ALTER TABLE `employeeskills`
  ADD CONSTRAINT `Fk_EmployeeSkills_Employee` FOREIGN KEY (`employee`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_EmployeeSkills_Skills` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employeestatus`
--
ALTER TABLE `employeestatus`
  ADD CONSTRAINT `Fk_EmployeeStatus_Employee` FOREIGN KEY (`employee`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employeeteammembers`
--
ALTER TABLE `employeeteammembers`
  ADD CONSTRAINT `Fk_EmployeeTeamMembers_Member` FOREIGN KEY (`member`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_EmployeeTeamMembers_Team` FOREIGN KEY (`team`) REFERENCES `employeeteams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employeeteams`
--
ALTER TABLE `employeeteams`
  ADD CONSTRAINT `Fk_EmployeeTeams_Department` FOREIGN KEY (`department`) REFERENCES `companystructures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_EmployeeTeams_Lead` FOREIGN KEY (`lead`) REFERENCES `employees` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `employeetimeentry`
--
ALTER TABLE `employeetimeentry`
  ADD CONSTRAINT `Fk_EmployeeTimeEntry_Employee` FOREIGN KEY (`employee`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_EmployeeTimeEntry_EmployeeTimeSheets` FOREIGN KEY (`timesheet`) REFERENCES `employeetimesheets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_EmployeeTimeEntry_Projects` FOREIGN KEY (`project`) REFERENCES `projects` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `employeetimesheets`
--
ALTER TABLE `employeetimesheets`
  ADD CONSTRAINT `Fk_EmployeeTimeSheets_Employee` FOREIGN KEY (`employee`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employeetrainingsessions`
--
ALTER TABLE `employeetrainingsessions`
  ADD CONSTRAINT `Fk_EmployeeTrainingSessions_Employee` FOREIGN KEY (`employee`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_EmployeeTrainingSessions_TrainingSessions` FOREIGN KEY (`trainingSession`) REFERENCES `trainingsessions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employeetravelrecords`
--
ALTER TABLE `employeetravelrecords`
  ADD CONSTRAINT `Fk_EmployeeTravelRecords_Employee` FOREIGN KEY (`employee`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `fieldreport`
--
ALTER TABLE `fieldreport`
  ADD CONSTRAINT `Fk_Fieldreport_Employees` FOREIGN KEY (`employeeId`) REFERENCES `employees` (`id`);

--
-- Constraints for table `fieldreportdemo`
--
ALTER TABLE `fieldreportdemo`
  ADD CONSTRAINT `Fk_Fieldreport_Employeess` FOREIGN KEY (`employeeId`) REFERENCES `employees` (`id`);

--
-- Constraints for table `fieldreportinfo`
--
ALTER TABLE `fieldreportinfo`
  ADD CONSTRAINT `Fk_Fieldreportinfo_fieldreport` FOREIGN KEY (`fieldreportId`) REFERENCES `fieldreport` (`id`);

--
-- Constraints for table `interviews`
--
ALTER TABLE `interviews`
  ADD CONSTRAINT `Fk_Interviews_Candidates` FOREIGN KEY (`candidate`) REFERENCES `candidates` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_Interviews_Job` FOREIGN KEY (`job`) REFERENCES `job` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `leavegroupemployees`
--
ALTER TABLE `leavegroupemployees`
  ADD CONSTRAINT `Fk_LeaveGroupEmployees_Employee` FOREIGN KEY (`employee`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_LeaveGroupEmployees_LeaveGroups` FOREIGN KEY (`leave_group`) REFERENCES `leavegroups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `leaverules`
--
ALTER TABLE `leaverules`
  ADD CONSTRAINT `Fk_LeaveRules_department` FOREIGN KEY (`department`) REFERENCES `companystructures` (`id`),
  ADD CONSTRAINT `Fk_LeaveRules_leave_period` FOREIGN KEY (`leave_period`) REFERENCES `leaveperiods` (`id`);

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `Fk_Notifications_Users` FOREIGN KEY (`toUser`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `paygrades`
--
ALTER TABLE `paygrades`
  ADD CONSTRAINT `Fk_PayGrades_CurrencyTypes` FOREIGN KEY (`currency`) REFERENCES `currencytypes` (`code`);

--
-- Constraints for table `payrolldata`
--
ALTER TABLE `payrolldata`
  ADD CONSTRAINT `Fk_PayrollData_Payroll` FOREIGN KEY (`payroll`) REFERENCES `payroll` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payrollemployees`
--
ALTER TABLE `payrollemployees`
  ADD CONSTRAINT `Fk_PayrollEmployee_Employee` FOREIGN KEY (`employee`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_PayrollEmployees_DeductionGroup` FOREIGN KEY (`deduction_group`) REFERENCES `deductiongroup` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `performancereviews`
--
ALTER TABLE `performancereviews`
  ADD CONSTRAINT `Fk_PerformanceReviews_Employees1` FOREIGN KEY (`employee`) REFERENCES `employees` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_PerformanceReviews_Employees2` FOREIGN KEY (`coordinator`) REFERENCES `employees` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_PerformanceReviews_ReviewTemplates` FOREIGN KEY (`form`) REFERENCES `reviewtemplates` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `Fk_Projects_Client` FOREIGN KEY (`client`) REFERENCES `clients` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `province`
--
ALTER TABLE `province`
  ADD CONSTRAINT `Fk_Province_Country` FOREIGN KEY (`country`) REFERENCES `country` (`code`);

--
-- Constraints for table `reviewfeedbacks`
--
ALTER TABLE `reviewfeedbacks`
  ADD CONSTRAINT `Fk_ReviewFeedbacks_Employees1` FOREIGN KEY (`employee`) REFERENCES `employees` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_ReviewFeedbacks_Employees2` FOREIGN KEY (`subject`) REFERENCES `employees` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_ReviewFeedbacks_PerformanceReviews` FOREIGN KEY (`review`) REFERENCES `performancereviews` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_ReviewFeedbacks_ReviewTemplates` FOREIGN KEY (`form`) REFERENCES `reviewtemplates` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `salarycomponent`
--
ALTER TABLE `salarycomponent`
  ADD CONSTRAINT `Fk_SalaryComponent_SalaryComponentType` FOREIGN KEY (`componentType`) REFERENCES `salarycomponenttype` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `trainingsessions`
--
ALTER TABLE `trainingsessions`
  ADD CONSTRAINT `Fk_TrainingSessions_Courses` FOREIGN KEY (`course`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `Fk_User_Employee` FOREIGN KEY (`employee`) REFERENCES `employees` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_User_SupportedLanguages` FOREIGN KEY (`lang`) REFERENCES `supportedlanguages` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `visitorimages`
--
ALTER TABLE `visitorimages`
  ADD CONSTRAINT `Fk_Visitorimages_Visitors` FOREIGN KEY (`visitorId`) REFERENCES `visitors` (`id`);

--
-- Constraints for table `visitors`
--
ALTER TABLE `visitors`
  ADD CONSTRAINT `Fk_Visitors_Employees` FOREIGN KEY (`employeeId`) REFERENCES `employees` (`id`),
  ADD CONSTRAINT `Fk_Visitors_Projects` FOREIGN KEY (`projectId`) REFERENCES `projects` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
