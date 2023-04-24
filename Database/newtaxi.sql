-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2023 at 06:04 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newtaxi`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `mobile_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `email`, `password`, `country_code`, `country_id`, `mobile_number`, `remember_token`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', 'admin@admin.com', '$2y$10$DSSyOFQW7.Rw8Vwp6EZndOgsqq/DmTjlptMp6HcJBcRsvcK30g9sW', '1', 38, '254700207417', NULL, 'Active', '2021-12-18 12:35:20', '2022-05-20 04:20:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `api_credentials`
--

CREATE TABLE `api_credentials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `api_credentials`
--

INSERT INTO `api_credentials` (`id`, `name`, `value`, `site`) VALUES
(1, 'key', 'AIzaSyDfPZLkGFSJVBQcLaRxy5GydvtIryBdSs8', 'GoogleMap'),
(2, 'server_key', 'AIzaSyDfPZLkGFSJVBQcLaRxy5GydvtIryBdSs8', 'GoogleMap'),
(3, 'sid', 'ACf64f4d6b2a55e7c56b592b6dec3919ae', 'Twillo'),
(4, 'token', 'bc887b0e7159ab5cb0945c3fc59b345a', 'Twillo'),
(5, 'service_sid', 'ACf64f4d6b2a55e7c56b592b6dec3919ae', 'Twillo'),
(6, 'from', '+15594238858', 'Twillo'),
(7, 'server_key', 'AAAA-1Sg-aQ:APA91bHjcUn6E1kdQEZabkIXEAPxVM3R8kOWFccXKANw8VVuUEGJSGiGgmNPVes4jATlseaeTemSdREAr2oTfJvJ_M-F7tJw-Ghy0IO6ciN4tHOmiWTdoI-mxFusa2EuLZeH7uJGDF_Q', 'FCM'),
(8, 'sender_id', '1079456627108', 'FCM'),
(9, 'client_id', '#', 'Facebook'),
(10, 'client_secret', '#', 'Facebook'),
(11, 'client_id', '#', 'Google'),
(12, 'client_secret', '#', 'Google'),
(13, 'sinch_key', '55992d18-0a40-44b9-8cf6-456f729031e7', 'Sinch'),
(14, 'sinch_secret_key', 'yx4js89/Y0KxBNHwJWv+3w==', 'Sinch'),
(15, 'service_id', '#', 'Apple'),
(16, 'team_id', '#', 'Apple'),
(17, 'key_id', '#', 'Apple'),
(18, 'key_file', '/public/key.txt', 'Apple'),
(19, 'database_url', 'https://new-taxis-default-rtdb.firebaseio.com', 'Firebase'),
(20, 'service_account', '/resources/credentials//service_account.json', 'Firebase'),
(21, 'site_key', '6LfJKvoUAAAAAFe8tYNw85mY5Tur-_A4tp865bL3', 'Recaptcha'),
(22, 'secret_key', '6LfJKvoUAAAAABh-36UFZrtp-_bZEtdgcg0kwWhy', 'Recaptcha');

-- --------------------------------------------------------

--
-- Table structure for table `applied_referrals`
--

CREATE TABLE `applied_referrals` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `currency_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_version`
--

CREATE TABLE `app_version` (
  `id` int(10) UNSIGNED NOT NULL,
  `version` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `device_type` tinyint(4) NOT NULL,
  `user_type` tinyint(4) NOT NULL,
  `force_update` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cancel`
--

CREATE TABLE `cancel` (
  `id` int(10) UNSIGNED NOT NULL,
  `trip_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `cancel_reason_id` int(10) UNSIGNED NOT NULL,
  `cancel_comments` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cancelled_by` enum('Rider','Driver') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cancel_reasons`
--

CREATE TABLE `cancel_reasons` (
  `id` int(10) UNSIGNED NOT NULL,
  `reason` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cancelled_by` enum('Rider','Driver','Admin','Company') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cancel_reasons`
--

INSERT INTO `cancel_reasons` (`id`, `reason`, `cancelled_by`, `status`) VALUES
(1, 'Driver Not Available', 'Rider', 'Active'),
(2, 'Driver not respond proper	', 'Rider', 'Active'),
(3, 'Wrong Route', 'Rider', 'Active'),
(4, 'Rider Not Available', 'Driver', 'Active'),
(5, 'Rider not respond proper', 'Driver', 'Active'),
(6, 'Rider not yet come', 'Driver', 'Active'),
(7, 'Rider ask for Cancel', 'Admin', 'Active'),
(8, 'Other Reasons', 'Admin', 'Active'),
(9, 'Rider Cancelled', 'Company', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `cancel_reason_translations`
--

CREATE TABLE `cancel_reason_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `cancel_reason_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `car_type`
--

CREATE TABLE `car_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `car_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_pool` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `car_type`
--

INSERT INTO `car_type` (`id`, `car_name`, `description`, `vehicle_image`, `active_image`, `is_pool`, `status`) VALUES
(1, 'Micro', 'Micro', 'newtaxiGo.png', 'newtaxiGo_blue.png', 'No', 'Active'),
(2, 'Mini', 'Mini', 'newtaxiX.png', 'newtaxiX_Blue.png', 'No', 'Active'),
(3, 'Prime', 'Prime', 'newtaxiXL.png', 'newtaxiXL_Blue.png', 'No', 'Active'),
(4, 'POOL', 'POOL', 'newtaxipool_black.png', 'newtaxipool.png', 'Yes', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_number` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Pending','Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `device_type` enum('1','2') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_commission` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `profile`, `email`, `country_code`, `mobile_number`, `vat_number`, `password`, `remember_token`, `status`, `device_type`, `device_id`, `language`, `address`, `city`, `state`, `country`, `postal_code`, `company_commission`, `country_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', '', 'admin@admin.com', '254', '1234567890', NULL, '$2y$10$7QrzLFU2DE4m5In.VYzZP.qclISTKsXUa8QSYlxPrD399vRAlnWk6', NULL, 'Active', NULL, '', '', 'Nairobi, Kenya', NULL, NULL, '254', '40000', '', 110, '2016-04-16 22:00:00', '2022-05-20 04:29:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `company_documents`
--

CREATE TABLE `company_documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_date` date DEFAULT NULL,
  `status` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_payout_credentials`
--

CREATE TABLE `company_payout_credentials` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `preference_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` enum('no','yes') COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payout_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_payout_preference`
--

CREATE TABLE `company_payout_preference` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `address1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payout_method` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paypal_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `routing_number` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `holder_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `holder_type` enum('Individual','Company') COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_document_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_document_image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_kanji` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_location` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ssn_last_4` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(10) UNSIGNED NOT NULL,
  `short_name` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iso3` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `num_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_country` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `short_name`, `long_name`, `iso3`, `num_code`, `phone_code`, `stripe_country`) VALUES
(1, 'AF', 'Afghanistan', 'AFG', '4', '93', 'No'),
(2, 'AL', 'Albania', 'ALB', '8', '355', 'No'),
(3, 'DZ', 'Algeria', 'DZA', '12', '213', 'No'),
(4, 'AS', 'American Samoa', 'ASM', '16', '1', 'No'),
(5, 'AD', 'Andorra', 'AND', '20', '376', 'No'),
(6, 'AO', 'Angola', 'AGO', '24', '244', 'No'),
(7, 'AI', 'Anguilla', 'AIA', '660', '1', 'No'),
(8, 'AQ', 'Antarctica', NULL, NULL, '0', 'No'),
(9, 'AG', 'Antigua and Barbuda', 'ATG', '28', '1', 'No'),
(10, 'AR', 'Argentina', 'ARG', '32', '54', 'No'),
(11, 'AM', 'Armenia', 'ARM', '51', '374', 'No'),
(12, 'AW', 'Aruba', 'ABW', '533', '297', 'No'),
(13, 'AU', 'Australia', 'AUS', '36', '61', 'Yes'),
(14, 'AT', 'Austria', 'AUT', '40', '43', 'Yes'),
(15, 'AZ', 'Azerbaijan', 'AZE', '31', '994', 'No'),
(16, 'BS', 'Bahamas', 'BHS', '44', '1', 'No'),
(17, 'BH', 'Bahrain', 'BHR', '48', '973', 'No'),
(18, 'BD', 'Bangladesh', 'BGD', '50', '880', 'No'),
(19, 'BB', 'Barbados', 'BRB', '52', '1', 'No'),
(20, 'BY', 'Belarus', 'BLR', '112', '375', 'No'),
(21, 'BE', 'Belgium', 'BEL', '56', '32', 'Yes'),
(22, 'BZ', 'Belize', 'BLZ', '84', '501', 'No'),
(23, 'BJ', 'Benin', 'BEN', '204', '229', 'No'),
(24, 'BM', 'Bermuda', 'BMU', '60', '1', 'No'),
(25, 'BT', 'Bhutan', 'BTN', '64', '975', 'No'),
(26, 'BO', 'Bolivia', 'BOL', '68', '591', 'No'),
(27, 'BA', 'Bosnia and Herzegovina', 'BIH', '70', '387', 'No'),
(28, 'BW', 'Botswana', 'BWA', '72', '267', 'No'),
(29, 'BV', 'Bouvet Island', NULL, NULL, '0', 'No'),
(30, 'BR', 'Brazil', 'BRA', '76', '55', 'No'),
(31, 'IO', 'British Indian Ocean Territory', NULL, NULL, '246', 'No'),
(32, 'BN', 'Brunei Darussalam', 'BRN', '96', '673', 'No'),
(33, 'BG', 'Bulgaria', 'BGR', '100', '359', 'No'),
(34, 'BF', 'Burkina Faso', 'BFA', '854', '226', 'No'),
(35, 'BI', 'Burundi', 'BDI', '108', '257', 'No'),
(36, 'KH', 'Cambodia', 'KHM', '116', '855', 'No'),
(37, 'CM', 'Cameroon', 'CMR', '120', '237', 'No'),
(38, 'CA', 'Canada', 'CAN', '124', '1', 'Yes'),
(39, 'CV', 'Cape Verde', 'CPV', '132', '238', 'No'),
(40, 'KY', 'Cayman Islands', 'CYM', '136', '1', 'No'),
(41, 'CF', 'Central African Republic', 'CAF', '140', '236', 'No'),
(42, 'TD', 'Chad', 'TCD', '148', '235', 'No'),
(43, 'CL', 'Chile', 'CHL', '152', '56', 'No'),
(44, 'CN', 'China', 'CHN', '156', '86', 'No'),
(45, 'CX', 'Christmas Island', NULL, NULL, '61', 'No'),
(46, 'CC', 'Cocos (Keeling) Islands', NULL, NULL, '672', 'No'),
(47, 'CO', 'Colombia', 'COL', '170', '57', 'No'),
(48, 'KM', 'Comoros', 'COM', '174', '269', 'No'),
(49, 'CG', 'Congo', 'COG', '178', '242', 'No'),
(50, 'CD', 'Democratic Republic of the Congo', 'COD', '180', '242', 'No'),
(51, 'CK', 'Cook Islands', 'COK', '184', '682', 'No'),
(52, 'CR', 'Costa Rica', 'CRI', '188', '506', 'No'),
(53, 'CI', 'Cote D\'Ivoire', 'CIV', '384', '225', 'No'),
(54, 'HR', 'Croatia', 'HRV', '191', '385', 'No'),
(55, 'CU', 'Cuba', 'CUB', '192', '53', 'No'),
(56, 'CY', 'Cyprus', 'CYP', '196', '357', 'No'),
(57, 'CZ', 'Czech Republic', 'CZE', '203', '420', 'No'),
(58, 'DK', 'Denmark', 'DNK', '208', '45', 'Yes'),
(59, 'DJ', 'Djibouti', 'DJI', '262', '253', 'No'),
(60, 'DM', 'Dominica', 'DMA', '212', '1', 'No'),
(61, 'DO', 'Dominican Republic', 'DOM', '214', '1', 'No'),
(62, 'EC', 'Ecuador', 'ECU', '218', '593', 'No'),
(63, 'EG', 'Egypt', 'EGY', '818', '20', 'No'),
(64, 'SV', 'El Salvador', 'SLV', '222', '503', 'No'),
(65, 'GQ', 'Equatorial Guinea', 'GNQ', '226', '240', 'No'),
(66, 'ER', 'Eritrea', 'ERI', '232', '291', 'No'),
(67, 'EE', 'Estonia', 'EST', '233', '372', 'No'),
(68, 'ET', 'Ethiopia', 'ETH', '231', '251', 'No'),
(69, 'FK', 'Falkland Islands (Malvinas)', 'FLK', '238', '500', 'No'),
(70, 'FO', 'Faroe Islands', 'FRO', '234', '298', 'No'),
(71, 'FJ', 'Fiji', 'FJI', '242', '679', 'No'),
(72, 'FI', 'Finland', 'FIN', '246', '358', 'Yes'),
(73, 'FR', 'France', 'FRA', '250', '33', 'Yes'),
(74, 'GF', 'French Guiana', 'GUF', '254', '594', 'No'),
(75, 'PF', 'French Polynesia', 'PYF', '258', '689', 'No'),
(76, 'TF', 'French Southern Territories', NULL, NULL, '0', 'No'),
(77, 'GA', 'Gabon', 'GAB', '266', '241', 'No'),
(78, 'GM', 'Gambia', 'GMB', '270', '220', 'No'),
(79, 'GE', 'Georgia', 'GEO', '268', '995', 'No'),
(80, 'DE', 'Germany', 'DEU', '276', '49', 'Yes'),
(81, 'GH', 'Ghana', 'GHA', '288', '233', 'No'),
(82, 'GI', 'Gibraltar', 'GIB', '292', '350', 'No'),
(83, 'GR', 'Greece', 'GRC', '300', '30', 'No'),
(84, 'GL', 'Greenland', 'GRL', '304', '299', 'No'),
(85, 'GD', 'Grenada', 'GRD', '308', '1', 'No'),
(86, 'GP', 'Guadeloupe', 'GLP', '312', '590', 'No'),
(87, 'GU', 'Guam', 'GUM', '316', '1', 'No'),
(88, 'GT', 'Guatemala', 'GTM', '320', '502', 'No'),
(89, 'GN', 'Guinea', 'GIN', '324', '224', 'No'),
(90, 'GW', 'Guinea-Bissau', 'GNB', '624', '245', 'No'),
(91, 'GY', 'Guyana', 'GUY', '328', '592', 'No'),
(92, 'HT', 'Haiti', 'HTI', '332', '509', 'No'),
(93, 'HM', 'Heard Island and Mcdonald Islands', NULL, NULL, '0', 'No'),
(94, 'VA', 'Holy See (Vatican City State)', 'VAT', '336', '39', 'No'),
(95, 'HN', 'Honduras', 'HND', '340', '504', 'No'),
(96, 'HK', 'Hong Kong', 'HKG', '344', '852', 'Yes'),
(97, 'HU', 'Hungary', 'HUN', '348', '36', 'No'),
(98, 'IS', 'Iceland', 'ISL', '352', '354', 'No'),
(99, 'IN', 'India', 'IND', '356', '91', 'No'),
(100, 'ID', 'Indonesia', 'IDN', '360', '62', 'No'),
(101, 'IR', 'Iran, Islamic Republic of', 'IRN', '364', '98', 'No'),
(102, 'IQ', 'Iraq', 'IRQ', '368', '964', 'No'),
(103, 'IE', 'Ireland', 'IRL', '372', '353', 'Yes'),
(104, 'IL', 'Israel', 'ISR', '376', '972', 'No'),
(105, 'IT', 'Italy', 'ITA', '380', '39', 'Yes'),
(106, 'JM', 'Jamaica', 'JAM', '388', '1', 'No'),
(107, 'JP', 'Japan', 'JPN', '392', '81', 'Yes'),
(108, 'JO', 'Jordan', 'JOR', '400', '962', 'No'),
(109, 'KZ', 'Kazakhstan', 'KAZ', '398', '7', 'No'),
(110, 'KE', 'Kenya', 'KEN', '404', '254', 'No'),
(111, 'KI', 'Kiribati', 'KIR', '296', '686', 'No'),
(112, 'KP', 'Korea, Democratic People\'s Republic of', 'PRK', '408', '850', 'No'),
(113, 'KR', 'Korea, Republic of', 'KOR', '410', '82', 'No'),
(114, 'KW', 'Kuwait', 'KWT', '414', '965', 'No'),
(115, 'KG', 'Kyrgyzstan', 'KGZ', '417', '996', 'No'),
(116, 'LA', 'Lao People\'s Democratic Republic', 'LAO', '418', '856', 'No'),
(117, 'LV', 'Latvia', 'LVA', '428', '371', 'No'),
(118, 'LB', 'Lebanon', 'LBN', '422', '961', 'No'),
(119, 'LS', 'Lesotho', 'LSO', '426', '266', 'No'),
(120, 'LR', 'Liberia', 'LBR', '430', '231', 'No'),
(121, 'LY', 'Libyan Arab Jamahiriya', 'LBY', '434', '218', 'No'),
(122, 'LI', 'Liechtenstein', 'LIE', '438', '423', 'No'),
(123, 'LT', 'Lithuania', 'LTU', '440', '370', 'No'),
(124, 'LU', 'Luxembourg', 'LUX', '442', '352', 'Yes'),
(125, 'MO', 'Macao', 'MAC', '446', '853', 'No'),
(126, 'MK', 'Macedonia, the Former Yugoslav Republic of', 'MKD', '807', '389', 'No'),
(127, 'MG', 'Madagascar', 'MDG', '450', '261', 'No'),
(128, 'MW', 'Malawi', 'MWI', '454', '265', 'No'),
(129, 'MY', 'Malaysia', 'MYS', '458', '60', 'No'),
(130, 'MV', 'Maldives', 'MDV', '462', '960', 'No'),
(131, 'ML', 'Mali', 'MLI', '466', '223', 'No'),
(132, 'MT', 'Malta', 'MLT', '470', '356', 'No'),
(133, 'MH', 'Marshall Islands', 'MHL', '584', '692', 'No'),
(134, 'MQ', 'Martinique', 'MTQ', '474', '596', 'No'),
(135, 'MR', 'Mauritania', 'MRT', '478', '222', 'No'),
(136, 'MU', 'Mauritius', 'MUS', '480', '230', 'No'),
(137, 'YT', 'Mayotte', NULL, NULL, '269', 'No'),
(138, 'MX', 'Mexico', 'MEX', '484', '52', 'No'),
(139, 'FM', 'Micronesia, Federated States of', 'FSM', '583', '691', 'No'),
(140, 'MD', 'Moldova, Republic of', 'MDA', '498', '373', 'No'),
(141, 'MC', 'Monaco', 'MCO', '492', '377', 'No'),
(142, 'MN', 'Mongolia', 'MNG', '496', '976', 'No'),
(143, 'MS', 'Montserrat', 'MSR', '500', '1', 'No'),
(144, 'MA', 'Morocco', 'MAR', '504', '212', 'No'),
(145, 'MZ', 'Mozambique', 'MOZ', '508', '258', 'No'),
(146, 'MM', 'Myanmar', 'MMR', '104', '95', 'No'),
(147, 'NA', 'Namibia', 'NAM', '516', '264', 'No'),
(148, 'NR', 'Nauru', 'NRU', '520', '674', 'No'),
(149, 'NP', 'Nepal', 'NPL', '524', '977', 'No'),
(150, 'NL', 'Netherlands', 'NLD', '528', '31', 'Yes'),
(151, 'AN', 'Netherlands Antilles', 'ANT', '530', '599', 'No'),
(152, 'NC', 'New Caledonia', 'NCL', '540', '687', 'No'),
(153, 'NZ', 'New Zealand', 'NZL', '554', '64', 'Yes'),
(154, 'NI', 'Nicaragua', 'NIC', '558', '505', 'No'),
(155, 'NE', 'Niger', 'NER', '562', '227', 'No'),
(156, 'NG', 'Nigeria', 'NGA', '566', '234', 'No'),
(157, 'NU', 'Niue', 'NIU', '570', '683', 'No'),
(158, 'NF', 'Norfolk Island', 'NFK', '574', '672', 'No'),
(159, 'MP', 'Northern Mariana Islands', 'MNP', '580', '1', 'No'),
(160, 'NO', 'Norway', 'NOR', '578', '47', 'Yes'),
(161, 'OM', 'Oman', 'OMN', '512', '968', 'No'),
(162, 'PK', 'Pakistan', 'PAK', '586', '92', 'No'),
(163, 'PW', 'Palau', 'PLW', '585', '680', 'No'),
(164, 'PS', 'Palestinian Territory, Occupied', NULL, NULL, '970', 'No'),
(165, 'PA', 'Panama', 'PAN', '591', '507', 'No'),
(166, 'PG', 'Papua New Guinea', 'PNG', '598', '675', 'No'),
(167, 'PY', 'Paraguay', 'PRY', '600', '595', 'No'),
(168, 'PE', 'Peru', 'PER', '604', '51', 'No'),
(169, 'PH', 'Philippines', 'PHL', '608', '63', 'No'),
(170, 'PN', 'Pitcairn', 'PCN', '612', '0', 'No'),
(171, 'PL', 'Poland', 'POL', '616', '48', 'No'),
(172, 'PT', 'Portugal', 'PRT', '620', '351', 'Yes'),
(173, 'PR', 'Puerto Rico', 'PRI', '630', '1', 'No'),
(174, 'QA', 'Qatar', 'QAT', '634', '974', 'No'),
(175, 'RE', 'Reunion', 'REU', '638', '262', 'No'),
(176, 'RO', 'Romania', 'ROM', '642', '40', 'No'),
(177, 'RU', 'Russian Federation', 'RUS', '643', '70', 'No'),
(178, 'RW', 'Rwanda', 'RWA', '646', '250', 'No'),
(179, 'SH', 'Saint Helena', 'SHN', '654', '290', 'No'),
(180, 'KN', 'Saint Kitts and Nevis', 'KNA', '659', '1', 'No'),
(181, 'LC', 'Saint Lucia', 'LCA', '662', '1', 'No'),
(182, 'PM', 'Saint Pierre and Miquelon', 'SPM', '666', '508', 'No'),
(183, 'VC', 'Saint Vincent and the Grenadines', 'VCT', '670', '1', 'No'),
(184, 'WS', 'Samoa', 'WSM', '882', '684', 'No'),
(185, 'SM', 'San Marino', 'SMR', '674', '378', 'No'),
(186, 'ST', 'Sao Tome and Principe', 'STP', '678', '239', 'No'),
(187, 'SA', 'Saudi Arabia', 'SAU', '682', '966', 'No'),
(188, 'SN', 'Senegal', 'SEN', '686', '221', 'No'),
(189, 'RS', 'Serbia and Montenegro', NULL, NULL, '381', 'No'),
(190, 'SC', 'Seychelles', 'SYC', '690', '248', 'No'),
(191, 'SL', 'Sierra Leone', 'SLE', '694', '232', 'No'),
(192, 'SG', 'Singapore', 'SGP', '702', '65', 'Yes'),
(193, 'SK', 'Slovakia', 'SVK', '703', '421', 'No'),
(194, 'SI', 'Slovenia', 'SVN', '705', '386', 'No'),
(195, 'SB', 'Solomon Islands', 'SLB', '90', '677', 'No'),
(196, 'SO', 'Somalia', 'SOM', '706', '252', 'No'),
(197, 'ZA', 'South Africa', 'ZAF', '710', '27', 'No'),
(198, 'GS', 'South Georgia and the South Sandwich Islands', NULL, NULL, '0', 'No'),
(199, 'ES', 'Spain', 'ESP', '724', '34', 'Yes'),
(200, 'LK', 'Sri Lanka', 'LKA', '144', '94', 'No'),
(201, 'SD', 'Sudan', 'SDN', '736', '249', 'No'),
(202, 'SS', 'South Sudan', 'SSD', '728', '211', 'No'),
(203, 'SR', 'Suriname', 'SUR', '740', '597', 'No'),
(204, 'SJ', 'Svalbard and Jan Mayen', 'SJM', '744', '47', 'No'),
(205, 'SZ', 'Swaziland', 'SWZ', '748', '268', 'No'),
(206, 'SE', 'Sweden', 'SWE', '752', '46', 'Yes'),
(207, 'CH', 'Switzerland', 'CHE', '756', '41', 'Yes'),
(208, 'SY', 'Syrian Arab Republic', 'SYR', '760', '963', 'No'),
(209, 'TW', 'Taiwan, Province of China', 'TWN', '158', '886', 'No'),
(210, 'TJ', 'Tajikistan', 'TJK', '762', '992', 'No'),
(211, 'TZ', 'Tanzania, United Republic of', 'TZA', '834', '255', 'No'),
(212, 'TH', 'Thailand', 'THA', '764', '66', 'No'),
(213, 'TL', 'Timor-Leste', NULL, NULL, '670', 'No'),
(214, 'TG', 'Togo', 'TGO', '768', '228', 'No'),
(215, 'TK', 'Tokelau', 'TKL', '772', '690', 'No'),
(216, 'TO', 'Tonga', 'TON', '776', '676', 'No'),
(217, 'TT', 'Trinidad and Tobago', 'TTO', '780', '1', 'No'),
(218, 'TN', 'Tunisia', 'TUN', '788', '216', 'No'),
(219, 'TR', 'Turkey', 'TUR', '792', '90', 'No'),
(220, 'TM', 'Turkmenistan', 'TKM', '795', '7370', 'No'),
(221, 'TC', 'Turks and Caicos Islands', 'TCA', '796', '1', 'No'),
(222, 'TV', 'Tuvalu', 'TUV', '798', '688', 'No'),
(223, 'UG', 'Uganda', 'UGA', '800', '256', 'No'),
(224, 'UA', 'Ukraine', 'UKR', '804', '380', 'No'),
(225, 'AE', 'United Arab Emirates', 'ARE', '784', '971', 'No'),
(226, 'GB', 'United Kingdom', 'GBR', '826', '44', 'Yes'),
(227, 'US', 'United States', 'USA', '840', '1', 'Yes'),
(228, 'UM', 'United States Minor Outlying Islands', NULL, NULL, '1', 'No'),
(229, 'UY', 'Uruguay', 'URY', '858', '598', 'No'),
(230, 'UZ', 'Uzbekistan', 'UZB', '860', '998', 'No'),
(231, 'VU', 'Vanuatu', 'VUT', '548', '678', 'No'),
(232, 'VE', 'Venezuela', 'VEN', '862', '58', 'No'),
(233, 'VN', 'Viet Nam', 'VNM', '704', '84', 'No'),
(234, 'VG', 'Virgin Islands, British', 'VGB', '92', '1', 'No'),
(235, 'VI', 'Virgin Islands, U.s.', 'VIR', '850', '1', 'No'),
(236, 'WF', 'Wallis and Futuna', 'WLF', '876', '681', 'No'),
(237, 'EH', 'Western Sahara', 'ESH', '732', '212', 'No'),
(238, 'YE', 'Yemen', 'YEM', '887', '967', 'No'),
(239, 'ZM', 'Zambia', 'ZMB', '894', '260', 'No'),
(240, 'ZW', 'Zimbabwe', 'ZWE', '716', '263', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `default_currency` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL,
  `paypal_currency` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `rate`, `status`, `default_currency`, `paypal_currency`) VALUES
(1, 'US Dollar', 'USD', '&#36;', '1.00', 'Active', '1', 'Yes'),
(2, 'Pound Sterling', 'GBP', '&pound;', '0.78', 'Active', '0', 'Yes'),
(3, 'Europe', 'EUR', '&euro;', '0.90', 'Active', '0', 'Yes'),
(4, 'Australian Dollar', 'AUD', '&#36;', '1.46', 'Active', '0', 'Yes'),
(5, 'Singapore', 'SGD', '&#36;', '1.36', 'Active', '0', 'Yes'),
(6, 'Swedish Krona', 'SEK', 'kr', '9.65', 'Active', '0', 'Yes'),
(7, 'Danish Krone', 'DKK', 'kr', '6.70', 'Active', '0', 'Yes'),
(8, 'Mexican Peso', 'MXN', '$', '19.12', 'Active', '0', 'Yes'),
(9, 'Brazilian Real', 'BRL', 'R$', '4.12', 'Active', '0', 'Yes'),
(10, 'Malaysian Ringgit', 'MYR', 'RM', '4.19', 'Active', '0', 'Yes'),
(11, 'Philippine Peso', 'PHP', 'P', '51.35', 'Active', '0', 'Yes'),
(12, 'Swiss Franc', 'CHF', '&euro;', '0.99', 'Active', '0', 'Yes'),
(13, 'India', 'INR', '&#x20B9;', '70.99', 'Active', '0', 'Yes'),
(14, 'Argentine Peso', 'ARS', '&#36;', '58.13', 'Active', '0', 'No'),
(15, 'Canadian Dollar', 'CAD', '&#36;', '1.31', 'Active', '0', 'Yes'),
(16, 'Chinese Yuan', 'CNY', '&#165;', '7.07', 'Active', '0', 'No'),
(17, 'Czech Republic Koruna', 'CZK', 'K&#269;', '22.98', 'Active', '0', 'Yes'),
(18, 'Hong Kong Dollar', 'HKD', '&#36;', '7.84', 'Active', '0', 'Yes'),
(19, 'Hungarian Forint', 'HUF', 'Ft', '296.75', 'Active', '0', 'Yes'),
(20, 'Indonesian Rupiah', 'IDR', 'Rp', '14117.00', 'Active', '0', 'No'),
(21, 'Israeli New Sheqel', 'ILS', '&#8362;', '3.54', 'Active', '0', 'Yes'),
(22, 'Japanese Yen', 'JPY', '&#165;', '108.50', 'Active', '0', 'Yes'),
(23, 'South Korean Won', 'KRW', '&#8361;', '1173.91', 'Active', '0', 'No'),
(24, 'Norwegian Krone', 'NOK', 'kr', '9.16', 'Active', '0', 'Yes'),
(25, 'New Zealand Dollar', 'NZD', '&#36;', '1.56', 'Active', '0', 'Yes'),
(26, 'Polish Zloty', 'PLN', 'z&#322;', '3.84', 'Active', '0', 'Yes'),
(27, 'Russian Ruble', 'RUB', 'p', '63.80', 'Active', '0', 'Yes'),
(28, 'Thai Baht', 'THB', '&#3647;', '30.27', 'Active', '0', 'Yes'),
(29, 'Turkish Lira', 'TRY', '&#8378;', '5.79', 'Active', '0', 'No'),
(30, 'New Taiwan Dollar', 'TWD', '&#36;', '30.56', 'Active', '0', 'Yes'),
(31, 'Vietnamese Dong', 'VND', '&#8363;', '23161.61', 'Active', '0', 'No'),
(32, 'South African Rand', 'ZAR', 'R', '14.80', 'Active', '0', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('Driver','Vehicle','Company') COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_on_date` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `document_name`, `type`, `country_code`, `expire_on_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 'License', 'Driver', 'all', 'Yes', 'Active', '2021-12-18 15:00:05', '2021-12-18 15:00:05'),
(2, 'Insurance', 'Vehicle', 'all', 'Yes', 'Active', '2021-12-18 15:00:20', '2021-12-18 15:00:20'),
(3, 'Insurence', 'Driver', 'all', 'Yes', 'Inactive', '2022-05-20 04:36:06', '2022-05-20 04:43:26');

-- --------------------------------------------------------

--
-- Table structure for table `documents_langs`
--

CREATE TABLE `documents_langs` (
  `id` int(10) UNSIGNED NOT NULL,
  `documents_id` int(10) UNSIGNED NOT NULL,
  `document_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `documents_langs`
--

INSERT INTO `documents_langs` (`id`, `documents_id`, `document_name`, `locale`) VALUES
(1, 3, 'بیمه', 'fa'),
(2, 3, 'التأمين', 'ar'),
(3, 3, 'Seguro', 'pt');

-- --------------------------------------------------------

--
-- Table structure for table `driver_address`
--

CREATE TABLE `driver_address` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `address_line1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_line2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `driver_address`
--

INSERT INTO `driver_address` (`id`, `user_id`, `address_line1`, `address_line2`, `city`, `state`, `postal_code`) VALUES
(1, 10002, 'Nairobi, Kennya', '', 'Nairobi', 'Kenya', '00100'),
(2, 10003, 'Nairobi', '00100', 'Nairobi', 'Nairobi', '00100');

-- --------------------------------------------------------

--
-- Table structure for table `driver_documents`
--

CREATE TABLE `driver_documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` enum('Driver','Vehicle') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Driver',
  `vehicle_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `expired_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `driver_documents`
--

INSERT INTO `driver_documents` (`id`, `type`, `vehicle_id`, `user_id`, `document_id`, `document`, `status`, `expired_date`) VALUES
(1, 'Vehicle', 1, 10002, '2', 'https://newtaxi.seentechs.com/images/users/10002/insurance_1639843248.jpg', '1', '2038-12-18'),
(2, 'Driver', 0, 10002, '1', 'https://newtaxi.seentechs.com/images/users/10002/license_1653031563.png', '1', '2025-07-17'),
(3, 'Driver', 0, 10003, '1', 'https://newtaxi.seentechs.com/images/users/10003/license_1652858347.jpg', '1', '2023-05-15'),
(4, 'Vehicle', 2, 10003, '2', 'https://newtaxi.seentechs.com/images/users/10003/insurance_1652858536.jpg', '1', '2023-05-24');

-- --------------------------------------------------------

--
-- Table structure for table `driver_location`
--

CREATE TABLE `driver_location` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `latitude` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `car_id` int(10) UNSIGNED NOT NULL,
  `pool_trip_id` int(10) UNSIGNED DEFAULT NULL,
  `status` enum('Online','Offline','Trip','Pool Trip') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Offline',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `driver_location`
--

INSERT INTO `driver_location` (`id`, `user_id`, `latitude`, `longitude`, `car_id`, `pool_trip_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 10002, '19.1442955', '72.8374645', 1, NULL, 'Offline', '2021-12-18 15:03:48', '2022-05-20 04:27:54'),
(2, 10002, '19.1442955', '72.8374645', 2, NULL, 'Offline', '2021-12-18 15:03:48', '2022-05-20 04:27:54'),
(3, 10002, '19.1442955', '72.8374645', 3, NULL, 'Offline', '2021-12-18 15:03:48', '2022-05-20 04:27:54'),
(4, 10002, '19.1442955', '72.8374645', 4, NULL, 'Offline', '2021-12-18 15:03:48', '2022-05-20 04:27:54'),
(5, 10003, '-0.7291916', '37.1600195', 1, NULL, 'Online', '2022-05-18 04:19:43', '2022-05-20 21:27:55'),
(6, 10003, '-0.7291916', '37.1600195', 2, NULL, 'Online', '2022-05-18 04:24:03', '2022-05-20 21:27:55'),
(7, 10003, '-0.7291916', '37.1600195', 3, NULL, 'Online', '2022-05-18 04:24:03', '2022-05-20 21:27:55'),
(8, 10003, '-0.7291916', '37.1600195', 4, NULL, 'Online', '2022-05-18 04:24:03', '2022-05-20 21:27:55');

-- --------------------------------------------------------

--
-- Table structure for table `driver_owe_amounts`
--

CREATE TABLE `driver_owe_amounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `amount` decimal(11,2) DEFAULT NULL,
  `currency_code` char(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `driver_owe_amounts`
--

INSERT INTO `driver_owe_amounts` (`id`, `user_id`, `amount`, `currency_code`) VALUES
(1, 10002, '0.00', 'INR'),
(8, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `driver_owe_amount_payments`
--

CREATE TABLE `driver_owe_amount_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `transaction_id` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(11,2) DEFAULT NULL,
  `currency_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `driver_owe_amount_payments`
--

INSERT INTO `driver_owe_amount_payments` (`id`, `user_id`, `transaction_id`, `amount`, `currency_code`, `status`, `created_at`, `updated_at`) VALUES
(1, 10003, 'pi_3L1fHDJbZQ9xXEmX18Ej0TVF', '1.00', 'USD', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `driver_payment`
--

CREATE TABLE `driver_payment` (
  `id` int(10) UNSIGNED NOT NULL,
  `driver_id` int(10) UNSIGNED NOT NULL,
  `last_trip_id` int(10) UNSIGNED NOT NULL,
  `currency_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paid_amount` decimal(7,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_settings`
--

CREATE TABLE `email_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_settings`
--

INSERT INTO `email_settings` (`id`, `name`, `value`) VALUES
(1, 'driver', 'smtp'),
(2, 'host', 'smtp.gmail.com'),
(3, 'port', '25'),
(4, 'from_address', 'newtaxi@gmail.com'),
(5, 'from_name', 'newtaxi'),
(6, 'encryption', 'tls'),
(7, 'username', 'newtaxi@gmail.com'),
(8, 'password', 'newtaxi'),
(9, 'domain', 'sandboxcc51fc42882e46ccbffd90316d4731e7.mailgun.org'),
(10, 'secret', 'key-3160b23116332e595b861f60d77fa720');

-- --------------------------------------------------------

--
-- Table structure for table `emergency_sos`
--

CREATE TABLE `emergency_sos` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `emergency_sos`
--

INSERT INTO `emergency_sos` (`id`, `user_id`, `name`, `country_code`, `mobile_number`, `country_id`) VALUES
(1, 10004, 'Allan', '254', '795623714', 110);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`id`, `name`, `value`) VALUES
(1, 'access_fee', '10'),
(2, 'driver_peak_fare', '70'),
(3, 'driver_access_fee', '10'),
(4, 'additional_fee', 'Yes'),
(5, 'additional_rider_fare', '75');

-- --------------------------------------------------------

--
-- Table structure for table `filter_objects`
--

CREATE TABLE `filter_objects` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` enum('vehicle','rider') COLLATE utf8mb4_unicode_ci NOT NULL,
  `object_id` int(11) NOT NULL,
  `filter_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `filter_objects`
--

INSERT INTO `filter_objects` (`id`, `type`, `object_id`, `filter_id`, `created_at`, `updated_at`) VALUES
(1, 'vehicle', 1, 2, '2021-12-18 14:58:33', '2021-12-18 14:58:33'),
(2, 'vehicle', 1, 3, '2021-12-18 14:58:33', '2021-12-18 14:58:33'),
(3, 'vehicle', 2, 2, '2022-05-18 04:21:16', '2022-05-18 04:21:16'),
(4, 'vehicle', 2, 3, '2022-05-18 04:21:16', '2022-05-18 04:21:16');

-- --------------------------------------------------------

--
-- Table structure for table `filter_options`
--

CREATE TABLE `filter_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `filter_options`
--

INSERT INTO `filter_options` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Prefer Female Riders only', '2021-12-18 13:35:24', '2021-12-18 13:35:24'),
(2, 'Prefer Handicap Accessibility', '2021-12-18 13:35:24', '2021-12-18 13:35:24'),
(3, 'Prefer Child Seat Accessibility', '2021-12-18 13:35:24', '2021-12-18 13:35:24'),
(4, 'Prefer Female Drivers only', '2021-12-18 13:35:24', '2021-12-18 13:35:24');

-- --------------------------------------------------------

--
-- Table structure for table `filter_options_translations`
--

CREATE TABLE `filter_options_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `filter_option_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `filter_options_translations`
--

INSERT INTO `filter_options_translations` (`id`, `filter_option_id`, `name`, `locale`, `created_at`, `updated_at`) VALUES
(1, 1, 'تفضل الفرسان الإناث فقط', 'ar', '2021-12-18 13:35:24', '2021-12-18 13:35:24'),
(2, 1, 'Preferir solo mujeres jinetes', 'es', '2021-12-18 13:35:24', '2021-12-18 13:35:24'),
(3, 1, 'فقط زن سوارکار را ترجیح دهید', 'fa', '2021-12-18 13:35:24', '2021-12-18 13:35:24'),
(4, 1, 'Prefira apenas mulheres', 'pt', '2021-12-18 13:35:24', '2021-12-18 13:35:24'),
(5, 2, 'تفضل الوصول للمعاقين', 'ar', '2021-12-18 13:35:24', '2021-12-18 13:35:24'),
(6, 2, 'Prefiero la accesibilidad para discapacitados', 'es', '2021-12-18 13:35:24', '2021-12-18 13:35:24'),
(7, 2, 'دسترسی معلولیت را ترجیح دهید', 'fa', '2021-12-18 13:35:24', '2021-12-18 13:35:24'),
(8, 2, 'Prefira acessibilidade para deficientes', 'pt', '2021-12-18 13:35:24', '2021-12-18 13:35:24'),
(9, 3, 'تفضل الوصول إلى مقعد الطفل', 'ar', '2021-12-18 13:35:24', '2021-12-18 13:35:24'),
(10, 3, 'Prefiero la accesibilidad del asiento para niños', 'es', '2021-12-18 13:35:24', '2021-12-18 13:35:24'),
(11, 3, 'دسترسی صندلی کودک را ترجیح دهید', 'fa', '2021-12-18 13:35:24', '2021-12-18 13:35:24'),
(12, 3, 'Acessibilidade preferencial para cadeirinha de criança', 'pt', '2021-12-18 13:35:24', '2021-12-18 13:35:24'),
(13, 4, 'تفضل السائقات الإناث فقط', 'ar', '2021-12-18 13:35:24', '2021-12-18 13:35:24'),
(14, 4, 'Prefiero solo mujeres conductoras', 'es', '2021-12-18 13:35:24', '2021-12-18 13:35:24'),
(15, 4, 'فقط رانندگان زن را ترجیح دهید', 'fa', '2021-12-18 13:35:24', '2021-12-18 13:35:24'),
(16, 4, 'Prefira apenas motoristas', 'pt', '2021-12-18 13:35:24', '2021-12-18 13:35:24');

-- --------------------------------------------------------

--
-- Table structure for table `help`
--

CREATE TABLE `help` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `question` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` mediumblob DEFAULT NULL,
  `suggested` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `help_category`
--

CREATE TABLE `help_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `help_category_lang`
--

CREATE TABLE `help_category_lang` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `help_subcategory`
--

CREATE TABLE `help_subcategory` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `help_sub_category_lang`
--

CREATE TABLE `help_sub_category_lang` (
  `id` int(10) UNSIGNED NOT NULL,
  `sub_category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `help_translations`
--

CREATE TABLE `help_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `help_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `join_us`
--

CREATE TABLE `join_us` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `join_us`
--

INSERT INTO `join_us` (`id`, `name`, `value`) VALUES
(1, 'facebook', '#'),
(2, 'google_plus', ''),
(3, 'twitter', '#'),
(4, 'linkedin', '#'),
(5, 'pinterest', '#'),
(6, 'youtube', '#'),
(7, 'instagram', '#'),
(8, 'app_store_rider', '#'),
(9, 'app_store_driver', '#'),
(10, 'play_store_rider', '#'),
(11, 'play_store_driver', '#');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `default_language` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `name`, `value`, `status`, `default_language`) VALUES
(1, 'English', 'en', 'Active', '1'),
(2, 'Persian', 'fa', 'Active', '0'),
(3, 'Arabic', 'ar', 'Active', '0'),
(4, 'Spanish', 'es', 'Active', '0'),
(5, 'Português', 'pt', 'Active', '0');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coordinates` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name`, `coordinates`, `status`) VALUES
(1, 'All', 'POLYGON((-89.251982 64.744949, -88.739890 23.612136, -89.265376 -11.728805, -88.995466 -142.861618, -88.762195 128.193070, -89.251982 64.744949 ))', 'Active'),
(2, 'India', 'POLYGON((38.149190 67.591397, 23.177668 64.383389, 22.204632 64.866787, 21.224803 65.262295, 4.496405 66.448818, 3.181033 79.632412, 5.809407 95.804287, 31.144125 95.364834, 35.761611 93.343350, 38.149190 67.591397 ))', 'Active'),
(3, 'Kenya', 'POLYGON((5.245436 34.282895, 5.201673 42.544613, -5.242819 42.193051, -4.717468 32.217465, 5.245436 34.282895 ))', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `manage_fare`
--

CREATE TABLE `manage_fare` (
  `id` int(10) UNSIGNED NOT NULL,
  `location_id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL DEFAULT 0,
  `base_fare` decimal(5,2) NOT NULL,
  `capacity` int(11) NOT NULL,
  `min_fare` decimal(5,2) NOT NULL,
  `per_min` decimal(5,2) NOT NULL,
  `per_km` decimal(5,2) NOT NULL,
  `schedule_fare` decimal(5,2) NOT NULL,
  `schedule_cancel_fare` decimal(5,2) NOT NULL,
  `waiting_time` int(11) DEFAULT NULL,
  `waiting_charge` decimal(5,2) NOT NULL,
  `currency_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apply_peak` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL,
  `apply_night` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manage_fare`
--

INSERT INTO `manage_fare` (`id`, `location_id`, `vehicle_id`, `base_fare`, `capacity`, `min_fare`, `per_min`, `per_km`, `schedule_fare`, `schedule_cancel_fare`, `waiting_time`, `waiting_charge`, `currency_code`, `apply_peak`, `apply_night`) VALUES
(1, 1, 1, '50.00', 3, '10.00', '1.00', '10.00', '20.00', '0.00', 2, '20.00', 'INR', 'No', 'No'),
(2, 2, 3, '100.00', 3, '1.00', '1.00', '1.00', '1.00', '0.00', 1, '1.00', 'INR', 'No', 'No'),
(3, 1, 2, '2.00', 5, '5.00', '1.00', '1.00', '1.00', '0.00', 15, '0.20', 'USD', 'No', 'No'),
(4, 1, 3, '2.00', 5, '5.00', '1.00', '1.00', '1.00', '0.00', 10, '0.20', 'USD', 'No', 'No'),
(5, 1, 4, '2.00', 5, '1.00', '1.00', '1.00', '1.00', '0.00', 15, '0.10', 'USD', 'No', 'No'),
(6, 3, 1, '2.00', 5, '5.00', '1.00', '1.00', '1.00', '0.00', 10, '0.20', 'USD', 'No', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `metas`
--

CREATE TABLE `metas` (
  `id` int(10) UNSIGNED NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `metas`
--

INSERT INTO `metas` (`id`, `url`, `title`, `description`, `keywords`) VALUES
(1, '/', 'Home Page', 'Home Page', ''),
(2, 'signin', 'Sign In', 'Sign In', ''),
(3, 'signin_driver', 'Sign In Driver', 'Sign In Driver', ''),
(4, 'signin_rider', 'Sign In Rider', 'Sign In Rider', ''),
(5, 'signup', 'Sing Up', 'Sing Up', ''),
(6, 'signup_driver', 'Sign Up Driver', 'Sign Up Driver', ''),
(7, 'signup_rider', 'Sign Up Rider', 'Sign Up Rider', ''),
(8, 'ride', 'Rider Home Page', 'Rider Home Page', ''),
(9, 'drive', 'Driver Home Page', 'Driver Home Page', ''),
(10, 'safety', 'Trip safety', 'Trip safety', ''),
(11, 'how_it_works', 'How its works', 'How its works', ''),
(12, 'requirements', 'Driver requirements', 'Driver requirements', ''),
(13, 'driver_app', 'Driver App', 'Driver App', ''),
(14, 'drive_safety', 'Driver Safety', 'Driver Safety', ''),
(15, 'driver_profile', 'Driver Profile', 'Driver Profile', ''),
(16, 'documents/{id}', 'Driver Documents', 'Driver Documents', ''),
(17, 'driver_payment', 'Driver Payment', 'Driver Payment', ''),
(18, 'driver_invoice', 'Driver Invoice', 'Driver Invoice', ''),
(19, 'driver_trip', 'Driver Trips', 'Driver Trips', ''),
(20, 'driver_trip_detail/{id}', 'Driver Trips Details', 'Driver Trips Details', ''),
(21, 'download_invoice/{id}', 'Invoice', 'Invoice', ''),
(22, 'trip', 'Trips', 'Trips', ''),
(23, 'profile', 'Profile', 'Profile', ''),
(24, 'forgot_password_driver', 'Forgot Password', 'Forgot Password', ''),
(25, 'reset_password', 'Reset Password', 'Reset Password', ''),
(26, 'forgot_password_rider', 'Forgot Password', 'Forgot Password', ''),
(27, 'forgot_password_link/{id}', 'Forgot Password Link', 'Forgot Password Link', ''),
(28, 'payout_preferences', 'Payout Preferences', 'Payout Preferences', ''),
(29, 'help', 'Help Center', 'Help Center', ''),
(30, 'help/topic/{id}/{category}', 'Help Center', 'Help Center', ''),
(31, 'help/article/{id}/{question}', 'Help Center', 'Help Center', ''),
(32, 'signin_company', 'Sign In Company', 'Sign In Company', ''),
(33, 'signup_company', 'Sign Up Company', 'Sign Up Company', ''),
(34, 'forgot_password_company', 'Forgot Password', 'Forgot Password', ''),
(35, 'company/reset_password', 'Reset Password', 'Reset Password', ''),
(36, 'admin', 'Admin Panel', 'Admin Panel', ''),
(37, 'company', 'Company Panel', 'Company Panel', ''),
(38, 'app/driver', 'Diver App', 'Diver App', ''),
(39, 'app/rider', 'Rider App', 'Rider App', ''),
(40, 'rider_delete', 'Delete Rider', 'Delete Rider', ''),
(41, 'rider_deletion', 'Delete Rider', 'Delete Rider', ''),
(42, 'driver_deletion', 'Delete Driver', 'Delete Driver', ''),
(43, 'login', 'Deletion Login', 'Deletion Login', '');

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
(1, '2014_08_25_160119_create_country_table', 1),
(2, '2014_10_11_095317_create_companies_table', 1),
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2015_08_17_142217_create_session_table', 1),
(6, '2015_08_23_070159_create_site_settings_table', 1),
(7, '2015_09_24_163220_create_admins_table', 1),
(8, '2016_03_25_173347_create_pages_table', 1),
(9, '2016_03_27_084526_create_join_us_table', 1),
(10, '2016_04_02_160807_create_metas_table', 1),
(11, '2016_05_09_140352_create_help_category_table', 1),
(12, '2016_05_09_140411_create_help_subcategory_table', 1),
(13, '2016_05_09_140500_create_help_table', 1),
(14, '2016_10_13_114638_create_currency_table', 1),
(15, '2017_04_18_070421_create_profile_picture_table', 1),
(16, '2017_04_18_080501_create_driver_documents_table', 1),
(17, '2017_04_24_071834_create_driver_address_table', 1),
(18, '2017_04_24_141629_create_car_type_table', 1),
(19, '2017_04_25_063221_create_driver_location_table', 1),
(20, '2017_04_27_101812_create_request_table', 1),
(21, '2017_05_08_123453_create_toll_reason_table', 1),
(22, '2017_05_09_044810_create_trips_table', 1),
(23, '2017_05_23_060535_create_rider_location_table', 1),
(24, '2017_05_24_092403_create_rating_table', 1),
(25, '2017_05_24_095832_create_cancel_reasons_table', 1),
(26, '2017_05_24_095833_create_cancel_table', 1),
(27, '2017_06_01_130626_create_fees_table', 1),
(28, '2017_06_08_085929_create_api_credentials_table', 1),
(29, '2017_06_08_102833_create_payment_gateway_table', 1),
(30, '2017_06_16_112151_create_payment_table', 1),
(31, '2017_06_16_112152_create_driver_payment_table', 1),
(32, '2017_09_21_115741_create_jobs_table', 1),
(33, '2017_11_12_133719_create_wallet_table', 1),
(34, '2017_11_17_071107_create_promo_code_table', 1),
(35, '2017_11_17_072500_create_users_promo_code_table', 1),
(36, '2018_03_09_193432_create_help_category_lang_table', 1),
(37, '2018_03_09_193447_create_help_sub_category_lang_table', 1),
(38, '2018_04_02_130448_create_language_table', 1),
(39, '2018_05_26_000018_create_payout_preference_table', 1),
(40, '2018_05_26_000020_create_payment_method_table', 1),
(41, '2018_07_13_063641_CreateEmergencySosTable', 1),
(42, '2018_07_13_073129_create_schedule_ride_table', 1),
(43, '2018_07_16_063607_entrust_setup_tables', 1),
(44, '2018_08_08_100000_create_telescope_entries_table', 1),
(45, '2019_01_09_111401_create_locations_table', 1),
(46, '2019_01_09_115510_create_manage_fare_table', 1),
(47, '2019_01_09_120028_create_peak_fare_details_table', 1),
(48, '2019_01_19_062416_create_email_settings_table', 1),
(49, '2019_01_19_132454_create_payout_credentials', 1),
(50, '2019_02_06_055025_create_help_translations_table', 1),
(51, '2019_03_07_131731_create_schedule_cancel_table', 1),
(52, '2019_04_01_100347_create_company_documents_table', 1),
(53, '2019_04_08_125114_create_company_payout_credentials_table', 1),
(54, '2019_04_09_051226_create_company_payout_preference_table', 1),
(55, '2019_04_11_115908_create_vehicle_table', 1),
(56, '2019_06_22_052259_create_referral_settings_table', 1),
(57, '2019_06_22_053324_create_referral_users_table', 1),
(58, '2019_09_24_051053_create_driver_owe_amounts_table', 1),
(59, '2019_09_25_104410_create_driver_owe_amount_payments_table', 1),
(60, '2019_10_18_130612_create_trip_toll_reasons_table', 1),
(61, '2019_10_21_123628_create_applied_referrals_table', 1),
(62, '2020_02_24_070641_create_failed_jobs_table', 1),
(63, '2020_05_28_105123_create_pool_trips_table', 1),
(64, '2020_07_10_061326_create_vehicle_make', 1),
(65, '2020_07_10_090927_create_vehicle_model', 1),
(66, '2020_07_10_135338_create_documents_table', 1),
(67, '2020_07_25_061824_create_documents_langs_table', 1),
(68, '2020_10_20_113351_create_filter_options_table', 1),
(69, '2020_10_22_070142_create_filter_objects_table', 1),
(70, '2020_10_22_123351_create_filter_options_translations', 1),
(71, '2020_11_05_132127_create_supports_table', 1),
(72, '2021_03_11_102950_create_app_version_table', 1),
(73, '2021_05_17_082442_create_cancel_reason_translations_table', 1),
(74, '2021_05_19_044410_create_pages_translations', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL,
  `under` enum('company','discover','hosting') COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `url`, `footer`, `under`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Terms of Service', 'terms_of_service', 'yes', 'company', '<span id=\"docs-internal-guid-f7e67a51-7fff-1c1d-45ae-29ad878ff34a\"><h4 dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 24pt; font-family: Arial; color: rgb(0, 0, 0); font-weight: 700; vertical-align: baseline; white-space: pre-wrap;\">Terms Of Service</span></h4><br><h4 dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 12pt; font-family: Arial; color: rgb(0, 0, 0); vertical-align: baseline; white-space: pre-wrap;\">Last updated: February 15, 2019</span></h4><br><h4 dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 12pt; font-family: Arial; color: rgb(0, 0, 0); font-weight: 700; vertical-align: baseline; white-space: pre-wrap;\">Contractual Relationship</span></h4><br><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\">These Terms of Use (\"Terms\") administer the entrance or use by you, a person, from inside any nation in the realm of utilizations, sites, substance, items, and administrations (the \"Administrations\") </span></p><br><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\">It would be ideal if you READ THESE TERMS CAREFULLY BEFORE ACCESSING OR USING THE SERVICES. </span></p><br><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\">Your entrance and utilization of the Services comprises your consent to be bound by these Terms, which builds up a legally binding connection among you and newtaxi. In the event that you don\'t consent to these Terms, you may not access or utilize the Services. These Terms explicitly override earlier understandings or courses of action with you. newtaxi may quickly end these Terms or any Services as for you, or by and large stop offering or deny access to the Services or any segment thereof, whenever for any reason. </span></p><br><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\">Supplemental terms may apply to specific Services, for example, approaches for a specific occasion, movement or advancement, and such supplemental terms will be unveiled to you regarding the material Services. Supplemental terms are notwithstanding, and will be esteemed a piece of, the Terms for the motivations behind the material Services. Supplemental terms will beat these Terms in case of a contention regarding the pertinent Services. </span></p><br><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\">newtaxi may correct the Terms identified with the Services every once in a while. Alterations will be compelling upon newtaxi\' posting of such refreshed Terms at this area or the changed arrangements or supplemental terms on the relevant Service. Your proceeded with access or utilization of the Services after such presenting establishes your assent on be bound by the Terms, as altered. </span></p><br><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\">newtaxi may give to a cases processor or a safety net provider any fundamental data (counting your contact data) if there is a dissension, debate or strife, which may incorporate a mishap, including you and a Third Party Provider and such data or information is important to determine the grumbling, question or struggle.</span></p><br><h5 dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); font-weight: 700; vertical-align: baseline; white-space: pre-wrap;\">License.</span></h5><br><h5 dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); vertical-align: baseline; white-space: pre-wrap;\">Subject to your consistence with these Terms, newtaxi awards you a constrained, non-elite, non-sublicensable, revocable, non-transferrable permit to: (I) access and utilize the Applications on your own gadget exclusively regarding your utilization of the Services; and (ii) access and utilize any substance, data and related materials that might be made accessible through the Services, for each situation exclusively for your own, noncommercial use. Any rights not explicitly allowed in this are held by newtaxi and newtaxi\' licensors.</span></h5><br><h5 dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); font-weight: 700; vertical-align: baseline; white-space: pre-wrap;\">Restrictions.</span></h5><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\">You may not: (I) evacuate any copyright, trademark or other exclusive notification from any bit of the Services; (ii) replicate, change, get ready subsidiary works dependent on, circulate, permit, rent, move, exchange, exchange, freely show, openly perform, transmit, stream, communicate or generally misuse the Services aside from as explicitly allowed by newtaxi; (iii) decompile, figure out or dismantle the Services with the exception of as might be allowed by material law; (iv) connection to, mirror or edge any bit of the Services; (v) cause or dispatch any projects or contents to scrape, ordering, looking over, or generally information mining any part of the Services or unduly loading or frustrating the task as well as usefulness of any part of the Services; or (vi) endeavor to increase unapproved access to or disable any part of the Services or its related frameworks or systems.</span></p><br><h5 dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); font-weight: 700; vertical-align: baseline; white-space: pre-wrap;\">Ownership.</span></h5><br><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\">The Services and all rights in that are and will remain newtaxi\' property or the property of newtaxi\' licensors. Neither these Terms nor your utilization of the Services pass on or concede to you any rights: (I) in or identified with the Services aside from the constrained permit allowed above; or (ii) to utilize or reference in any way newtaxi\' organization names, logos, item and administration names, trademarks or administrations marks or those of newtaxi\' licensors.</span></p><br><h4 dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 12pt; font-family: Arial; color: rgb(0, 0, 0); font-weight: 700; vertical-align: baseline; white-space: pre-wrap;\">Your Use of the Services</span></h4><br><h5 dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); font-weight: 700; vertical-align: baseline; white-space: pre-wrap;\">User Accounts.</span></h5><br><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\">So as to utilize most parts of the Services, you should enroll for and keep up a functioning individual client Services (\"Account\"). You should be around 18 years old, or the time of lawful larger part in your locale (if not quite the same as 18), to acquire an Account. Record enlistment expects you to submit to newtaxi certain individual data, for example, your name, address, cell phone number and age, and additionally no less than one substantial installment technique (either a charge card or acknowledged installment accomplice). You consent to keep up exact, finish, and up and coming data in your Account. Your inability to keep up exact, finish, and up and coming Account </span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\">data, including having an invalid or lapsed installment strategy on document, may result in your powerlessness to access and utilize the Services or newtaxi\' end of these Terms with you. You are in charge of all movement that happens under your Account, and you consent to keep up the security and mystery of your Account username and secret key consistently. Except if generally allowed by newtaxi in thinking of, you may just have one Account.</span></p><br><h5 dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); font-weight: 700; vertical-align: baseline; white-space: pre-wrap;\">User Requirements and Conduct.</span></h5><br><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\">The Service isn\'t accessible for use by people younger than 18. You may not approve outsiders to utilize your Account, and you may not permit people younger than 18 to get transportation or coordinations administrations from Third Party Providers except if they are joined by you. You may not relegate or generally exchange your Account to some other individual or substance. You consent to follow every single pertinent law when utilizing the Services, and you may just utilize the Services for legal purposes (e.g., no vehicle of unlawful or perilous materials). You won\'t, in your utilization of the Services, cause disturbance, irritation, burden, or property harm, regardless of whether to the Third Party Provider or some other gathering. In specific occurrences you might be solicited to give confirmation from identity to access or utilize the Services, and you concur that you might be denied access to or utilization of the Services in the event that you decline to give evidence of personality.</span></p><br><h5 dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); font-weight: 700; vertical-align: baseline; white-space: pre-wrap;\">Promotional Codes.</span></h5><br><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\">newtaxi may, in newtaxi\' sole circumspection, make limited time codes that might be reclaimed for Account credit, or different highlights or advantages identified with the Services as well as a Third Party Provider\'s administrations, subject to any extra terms that newtaxi sets up on a for every special code premise (\"Promo Codes\"). You concur that Promo Codes: (I) must be utilized for the target group and reason, and in a legal way; (ii) may not be copied, sold or moved in any way, or made accessible to the overall population (regardless of whether presented on an open frame or something else), except if explicitly allowed by newtaxi; (iii) might be crippled by newtaxi whenever for any reason without risk to newtaxi; (iv) may just be utilized as per the explicit terms that newtaxi sets up for such Promo Code; (v) are not substantial for money; and (vi) may lapse preceding your utilization. newtaxi maintains whatever authority is needed to retain or deduct credits or different highlights or advantages acquired using Promo Codes by you or some other client if newtaxi decides or trusts that the utilization or reclamation of the Promo Code was in blunder, deceitful, unlawful, or disregarding the pertinent Promo Code terms or these Terms.</span></p><br><h5 dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); font-weight: 700; vertical-align: baseline; white-space: pre-wrap;\">User Provided Content.</span></h5><br><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\">newtaxi may, in newtaxi\' sole carefulness, allow you now and again to submit, transfer, distribute or generally make accessible to newtaxi through the Services literary, sound, or potentially visual substance and data, including critique and criticism identified with the Services, commencement of help solicitations, and accommodation of passages for rivalries and advancements (\"User Content\"). Any User Content given by you remains your property. In any case, by giving User Content to newtaxi, you give newtaxi an around the world, unending, permanent, transferrable, eminence free permit, with the privilege to sublicense, to utilize, duplicate, adjust, make subordinate works of, appropriate, openly show, freely perform, and generally misuse in any way such User Content in all arrangements and dissemination channels currently known or in the future contrived (incorporating into association with the Services and newtaxi\' the same old thing and on outsider locales and administrations), without further notice to or assent from you, and without the prerequisite of installment to you or some other individual or element. </span></p><br><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\">You speak to and warrant that: (I) you either are the sole and select proprietor of all User Content or you have all rights, licenses, assents and discharges important to give newtaxi the permit to the User Content as put forward above; and (ii) neither the User Content nor your accommodation, transferring, distributing or generally making accessible of such User Content nor newtaxi\' utilization of the User Content as allowed in this will encroach, abuse or damage an outsider\'s protected innovation or exclusive rights, or privileges of exposure or security, or result in the infringement of any relevant law or direction. </span></p><br><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\">You consent to not give User Content that is slanderous, derogatory, contemptuous, savage, profane, obscene, unlawful, or generally hostile, as controlled by newtaxi in its sole watchfulness, regardless of whether such material might be secured by law. newtaxi may, however will not be committed to, survey, screen, or evacuate User Content, at newtaxi\' sole prudence and whenever and for any reason, without notice to you. </span></p><br><h5 dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); font-weight: 700; vertical-align: baseline; white-space: pre-wrap;\">Network Access and Devices.</span></h5><br><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\">You are in charge of getting the information arrange get to important to utilize the Services. Your portable system\'s information and informing rates and expenses may apply on the off chance that you access or utilize the Services from a remote empowered gadget and you will be in charge of such rates and charges. You are in charge of getting and refreshing perfect equipment or gadgets important to access and utilize the Services and Applications and any updates thereto. newtaxi does not ensure that the Services, or any segment thereof, will work on a specific equipment or gadgets. Also, the Services might be liable to glitches</span></p><br><p dir=\"ltr\" style=\"line-height:2.057148;margin-top:0pt;margin-bottom:12pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-weight: 700; vertical-align: baseline; white-space: pre-wrap;\">Payment</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\">You comprehend that utilization of the Services may result in charges to you for the administrations or merchandise you get from a Third Party Provider (\"Charges\"). After you have gotten administrations or products acquired through your utilization of the Service, newtaxi will encourage your installment of the material Charges for the benefit of the Third Party Provider thusly Third Party Provider\'s constrained installment accumulation operator. Installment of the Charges in such way will be viewed as equivalent to installment made straightforwardly by you to the Third Party Provider. Charges will be comprehensive of relevant expenses where required by law. Charges paid by you are conclusive and non-refundable, except if generally dictated by newtaxi. You hold the privilege to ask for lower Charges from a Third Party Provider for administrations or products gotten by you from such Third Party Provider at the time you get such administrations or merchandise. newtaxi will react in like manner to any demand from a Third Party Provider to adjust the Charges for a specific administration or great. </span></p><br><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\">All Charges are expected quickly and installment will be encouraged by newtaxi utilizing the favored installment technique assigned in your Account, after which newtaxi will send you a receipt by email. In the event that your essential Account installment strategy is resolved to be terminated, invalid or generally not ready to be charged, you concur that newtaxi may, as the Third Party Provider\'s constrained installment accumulation specialist, utilize an optional installment technique in your Account, if accessible. </span></p><br><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\">As among you and newtaxi, newtaxi claims all authority to set up, expel as well as change Charges for any or all administrations or products acquired using the Services whenever in newtaxi\' sole caution. Further, you recognize and concur that Charges material in certain topographical zones may increment significantly amid times of appeal. newtaxi will utilize sensible endeavors to advise you of Charges that may apply, gave that you will be in charge of Charges brought about under your Account paying little mind to your consciousness of such Charges or the sums thereof. newtaxi may every once in a while give certain clients special offers and limits that may result in various sums charged for the equivalent or comparative administrations or products got using the Services, and you concur that such special offers and limits, except if likewise made accessible to you, will make little difference to your utilization of the Services or the Charges connected to you. You may choose to drop your demand for administrations or merchandise from a Third Party Provider whenever before such Third Party Provider\'s landing, in which case you might be charged an abrogation expense. </span></p><br><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\">This installment structure is planned to completely repay the Third Party Provider for the administrations or products gave. Aside from as for cab transportation administrations asked for through the Application, newtaxi does not assign any bit of your installment as a tip or tip to the Third Party Provider. Any portrayal by newtaxi (on newtaxi\' site, in the Application, or in newtaxi\' advertising materials) such that tipping is \"deliberate,\" \"not required,\" as well as \"included\" in the installments you make for administrations or products gave isn\'t proposed to recommend that newtaxi gives any extra sums, past those depicted above, to the Third Party Provider. You comprehend and concur that, while you are allowed to give extra installment as a tip to any Third Party Provider who gives you administrations or products acquired through the Service, you are under no commitment to do as such. Tips are deliberate. After you have gotten administrations or merchandise acquired through the Service, you will have the chance to rate your experience and leave extra criticism about your Third Party Provider.</span></p><br><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-weight: 700; vertical-align: baseline; white-space: pre-wrap;\">General </span></p><br><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\">You may not dole out or move these Terms in entire or partially without newtaxi\' earlier composed endorsement. You give your endorsement to newtaxi for it to appoint or move these Terms in entire or to some extent, including to: (I) a backup or associate; (ii) an acquirer of newtaxi\' value, business or resources; or (iii) a successor by merger. No joint endeavor, association, business or office relationship exists between you, newtaxi or any Third Party Provider because of the agreement among you and newtaxi or utilization of the Services. </span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\">On the off chance that any arrangement of these Terms is held to be unlawful, invalid or unenforceable, in entire or to some extent, under any law, such arrangement or part thereof will to that degree be regarded not to frame some portion of these Terms but rather the lawfulness, legitimacy and enforceability of alternate arrangements in these Terms will not be influenced. In that occasion, the gatherings will supplant the illicit, invalid or unenforceable arrangement or part thereof with an arrangement or part thereof that is legitimate, substantial and enforceable and that has, to the best degree conceivable, a comparable impact as the unlawful, invalid or unenforceable arrangement or part thereof, given the substance and reason for these Terms. These Terms comprise the whole ascension and comprehension of the gatherings as for its topic and replaces and overrides all earlier or contemporaneous understandings or endeavors with respect to such topic. In these Terms, the words \"counting\" and \"incorporate\" signify \"counting, however not restricted to.\"</span></p><br><br></span>', 'Active', '2016-03-26 13:50:11', '2016-03-26 16:08:22');
INSERT INTO `pages` (`id`, `name`, `url`, `footer`, `under`, `content`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Privacy Policy', 'privacy_policy', 'yes', 'company', '<h1>Privacy Policy</h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Introduction</span></p><p><b style=\"font-weight:normal;\" id=\"docs-internal-guid-6f636417-7fff-8cb2-eb22-d2e54c334be5\"><br></b></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">When you use newtaxi, you confide in us with your data. We are focused on keeping that trust. That begins with helping you comprehend our security rehearses. </span></p><p><b style=\"font-weight:normal;\"><br></b></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">This policy portrays the data we gather, how it is utilized and shared, and your decisions in regards to this data. </span></p><p><b style=\"font-weight:normal;\"><br></b></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Last adjusted: 15 Feb 2019 </span></p><p><b style=\"font-weight:normal;\"><br></b></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Powerful date: 15 Feb 2019 </span></p><h4 dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:2pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Data collection and use</span></h4><h5 dir=\"ltr\" style=\"line-height:1.38;margin-top:11pt;margin-bottom:2pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Scope</span></h5><p><b style=\"font-weight:normal;\"><br></b></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">This Policy applies to user of newtaxi services anywhere in the world, including user of newtaxi\' applications, websites, highlights or different services. </span></p><p><b style=\"font-weight:normal;\"><br></b></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">This Policy depicts how newtaxi and its partners gather and utilize individual data to give our services. </span></p><p><b style=\"font-weight:normal;\"><br></b></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">This Policy explicitly applies to: </span></p><p><b style=\"font-weight:normal;\"><br></b></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Drivers:</span><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"> user who give transport independently or through accomplice transport organizations to deliver food.</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Riders : </span><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">users who request for the ride to travel.</span></p><p><b style=\"font-weight:normal;\"><br></b></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">This policy likewise applies to the individuals who furnish data to newtaxi regarding an application to utilize our services, or whose data newtaxi generally gets regarding its services.</span></p><p><b style=\"font-weight:normal;\"><br></b></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">The practices portrayed in this policy are liable to appropriate laws in the spots in which we work. This implies we just take part in the practices portrayed in this policy in a specific nation or area whenever allowed under the laws of those spots. If you don\'t mind get in touch with us in the event that you have inquiries on our practices in your nation or area. </span></p><p><b style=\"font-weight:normal;\"><br></b></p><h5 dir=\"ltr\" style=\"line-height:1.38;margin-top:11pt;margin-bottom:2pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Data controller</span></h5><h5 dir=\"ltr\" style=\"line-height:1.38;margin-top:11pt;margin-bottom:2pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">The information we collect</span></h5><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">newtaxi collects:: </span></p><p><b style=\"font-weight:normal;\"><br></b></p><ul style=\"margin-top:0pt;margin-bottom:0pt;\"><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Data that you give to newtaxi, for example, when you make your newtaxi account. </span></p></li></ul><p><b style=\"font-weight:normal;\"><br></b></p><ul style=\"margin-top:0pt;margin-bottom:0pt;\"><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Data made when you utilize our services, for example, area, utilization and gadget data. </span></p></li></ul><p><b style=\"font-weight:normal;\"><br></b></p><ul style=\"margin-top:0pt;margin-bottom:0pt;\"><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Information from other sources, such as newtaxi partners and third parties that use newtaxi APIs.</span></p></li></ul><p><b style=\"font-weight:normal;\"><br></b></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">The accompanying data is gathered by or for newtaxi: </span></p><p><b style=\"font-weight:normal;\"><br></b></p><p dir=\"ltr\" style=\"line-height:2.052;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Information you provide</span></p><p><b style=\"font-weight:normal;\"><br></b></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">This may include: </span></p><p><b style=\"font-weight:normal;\"><br></b></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">User profile</span><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"> : We gather data when you make or refresh your newtaxi account. This may incorporate your name, email address, telephone number, login name and secret key, address, installment or keeping money data (counting related installment check data), government recognizable proof numbers, for example, Social Security number, driving permit or identification whenever required by law, date of birth, photograph and mark. This likewise incorporates driver vehicle or protection data. This likewise incorporates the inclinations and settings that you empower for your newtaxi account. </span></p><p><b style=\"font-weight:normal;\"><br></b></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Background check information</span><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"> We may gather historical verification data in the event that you join to utilize newtaxi\' services as a driver or delivery partner. This may incorporate data, for example, your driving history or criminal record (where allowed by law). This data might be gathered by a seller for newtaxi\' sake. </span></p><p><b style=\"font-weight:normal;\"><br></b></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">User content:</span><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"> We may gather data that you submit when you contact newtaxi customer support, give appraisals or compliments to different user, or generally contact newtaxi. </span></p><p><b style=\"font-weight:normal;\"><br></b></p><p dir=\"ltr\" style=\"line-height:2.052;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Information created when you use our services</span></p><p><b style=\"font-weight:normal;\"><br></b></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">This may include: </span></p><p><b style=\"font-weight:normal;\"><br></b></p><ul style=\"margin-top:0pt;margin-bottom:0pt;\"><li dir=\"ltr\" style=\"list-style-type:square;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\"><p dir=\"ltr\" style=\"line-height:2.052;margin-top:2pt;margin-bottom:2pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Location information</span></p></li></ul><p><b style=\"font-weight:normal;\"><br></b></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Depending upon the newtaxi services you use and your application settings or gadget consents, we may gather your exact or inexact area data as decided through information, for example, GPS, IP address and Wi-Fi. </span></p><p><b style=\"font-weight:normal;\"><br></b></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">On the off chance that you are a driver, newtaxi gathers area data when the newtaxi application is running in the closer view (application open and onscreen) or background (application open yet not onscreen) of your gadget. </span></p><p><b style=\"font-weight:normal;\"><br></b></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Riders and drivers can utilize the newtaxi application without permitting newtaxi to gather their location information. Be that as it may, this may influence the usefulness accessible on your newtaxi application. For instance, on the off chance that you don\'t permit newtaxi to gather your area data, you should enter your get address physically. What\'s more, area data will be gathered from the driver amid your excursion and connected to your record, regardless of whether you have not permitted newtaxi to gather your area data. </span></p><p><b style=\"font-weight:normal;\"><br></b></p><p dir=\"ltr\" style=\"line-height:2.052;margin-top:2pt;margin-bottom:2pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Transaction information</span></p><p><b style=\"font-weight:normal;\"><br></b></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">We gather transaction information identified with your utilization of our services, including the kind of services you asked for or gave, your request subtleties, &nbsp;delivery information, date and time the administration was given, sum charged, separate voyaged, and installment Policy. Likewise, on the off chance that somebody utilizes your advancement code, we may connect your name with that individual. </span></p><p><b style=\"font-weight:normal;\"><br></b></p><p dir=\"ltr\" style=\"line-height:2.052;margin-top:2pt;margin-bottom:2pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Usage information</span></p><p><b style=\"font-weight:normal;\"><br></b></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">We gather data about how you interface with our services. This incorporates data, for example, get to dates and times, application highlights or pages saw, application crashes and other framework action, kind of program, and outsider destinations or services you were utilizing before cooperating with our services. Sometimes, we gather this data through treats, pixel labels and comparable advancements that make and keep up remarkable identifiers. To discover increasingly about these advancements, if it\'s not too much trouble see our Cookie Statement. </span></p><p><b style=\"font-weight:normal;\"><br></b></p><p dir=\"ltr\" style=\"line-height:2.052;margin-top:2pt;margin-bottom:2pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Communications data</span></p><p><b style=\"font-weight:normal;\"><br></b></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">We empower user to speak with one another and newtaxi by means of the newtaxi applications, sites and other services. For instance, we empower drivers and riders, are beneficiaries, to call one another (in a few nations, without uncovering their phone numbers to one another). To give this administration, newtaxi gets some data with respect to the calls, including the date and time of the call/content and the substance of the interchanges. newtaxi may likewise utilize this data for customer support services (counting to determine question between user), for wellbeing and security purposes, to enhance our items and services, and for investigation. </span></p><p><b style=\"font-weight:normal;\"><br></b></p><p dir=\"ltr\" style=\"line-height:2.052;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Information from other sources</span></p><p><b style=\"font-weight:normal;\"><br></b></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">This may include: </span></p><p><b style=\"font-weight:normal;\"><br></b></p><ul style=\"margin-top:0pt;margin-bottom:0pt;\"><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">User feedback, such as ratings or compliments.</span></p></li><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">user furnishing your data regarding referral programs. </span></p></li><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">user asking for services for you or for your benefit. </span></p></li><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">user or others giving data in association claims or debate. </span></p></li><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">newtaxi colleagues through which you make or access your newtaxi account, for example, installment suppliers, internet based life services, on-request music services, or applications or sites who utilize newtaxi\' APIs or whose APIs newtaxi utilizes, (for example, when you arrange a stumble on Google Maps). </span></p></li><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Protection suppliers (on the off chance that you are a driver or delivery partner). </span></p></li><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Money related services suppliers (on the off chance that you are a driver or delivery partner). </span></p></li><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Accomplice transport organizations (in the event that you are a driver who utilizes our services through a record related with such an organization). </span></p></li><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">The proprietor of a newtaxi for Business or newtaxi Family profile that you use. </span></p></li><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Publicly available sources.</span></p></li><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Marketing service providers.</span></p></li></ul><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">newtaxi may consolidate the data gathered from these sources with other data in its ownership. </span></p><p><b style=\"font-weight:normal;\"><br></b></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">How we utilize your data </span></p><p><b style=\"font-weight:normal;\"><br></b></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">newtaxi gathers and uses data to empower dependable and helpful transportation, conveyance and different items and services. We likewise utilize the data we gather: </span></p><p><b style=\"font-weight:normal;\"><br></b></p><ul style=\"margin-top:0pt;margin-bottom:0pt;\"><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">To improve the wellbeing and security of our user and services </span></p></li><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">For customer support </span></p></li><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">For innovative work </span></p></li><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">To empower interchanges to or between user </span></p></li><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">To give advancements or challenges </span></p></li><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Regarding legitimate procedures </span></p></li></ul><p><b style=\"font-weight:normal;\"><br></b></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">newtaxi does not offer or share your own data to outsiders for outsider direct showcasing purposes. </span></p><p><b style=\"font-weight:normal;\"><br></b></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">newtaxi utilizes the data it gathers for purposes including: </span></p><p><b style=\"font-weight:normal;\"><br></b></p><p dir=\"ltr\" style=\"line-height:2.052;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Providing services and features</span></p><p><b style=\"font-weight:normal;\"><br></b></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">newtaxi utilizes the data we gather to give, customize, keep up and enhance our items and services. This incorporates utilizing the data to: </span></p><p><b style=\"font-weight:normal;\"><br></b></p><ul style=\"margin-top:0pt;margin-bottom:0pt;\"><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Make and refresh your record. </span></p></li><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\"><p dir=\"ltr\" style=\"line-height:2.052;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Verify your identity.</span></p></li><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Process or encourage installments for those services. </span></p></li></ul><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;margin-left: 36pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Offer, acquire, give or encourage protection or financing policies regarding our services. </span></p><ul style=\"margin-top:0pt;margin-bottom:0pt;\"><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Track the advancement of your trek or conveyance. </span></p></li><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Empower highlights that enable you to impart data to other individuals, for example, when you present a compliment about a driver, allude a companion to newtaxi, split charges or offer your ETA. </span></p></li><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Empower highlights to customize your newtaxi account, for example, making bookmarks for your most loved spots, and to empower speedy access to past goals. </span></p></li><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Empower availability includes that make it less demanding for user with handicaps to utilize our services, for example, those that empower hard of hearing or in need of a hearing aide drivers to alarm their riders of their incapacities, permit just instant messages from riders, and to get blazing outing demand warnings rather than sound notices. </span></p></li><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Perform inward tasks important to give our services, including to investigate programming bugs and operational issues, to lead information examination, testing and look into, and to screen and dissect use and movement patterns. </span></p></li></ul><p><b style=\"font-weight:normal;\"><br></b></p><h5 dir=\"ltr\" style=\"line-height:1.38;margin-top:11pt;margin-bottom:2pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Cookies and third-party technologies</span></h5><p><b style=\"font-weight:normal;\"><br></b></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">newtaxi and its accomplices use cookies and other identification technologies on our applications, sites, messages and online promotions for purposes portrayed in this approach. </span></p><p><b style=\"font-weight:normal;\"><br></b></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Cookies are little content documents that are put away on your program or gadget by sites, applications, online media and commercials. newtaxi utilizes treats and comparable advancements for purposes, for example, </span></p><p><b style=\"font-weight:normal;\"><br></b></p><ul style=\"margin-top:0pt;margin-bottom:0pt;\"><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Validating clients </span></p></li><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Recollecting client inclinations and settings </span></p></li><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Deciding the prevalence of substance </span></p></li><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Conveying and estimating the viability of publicizing efforts </span></p></li></ul><ul style=\"margin-top:0pt;margin-bottom:0pt;\"><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Investigating webpage traffic and inclines, and by and large understanding the online conduct and premiums of individuals who associate with our administrations We may likewise enable others to give group of onlookers estimation and examination administrations for us, to serve promotions for our benefit over the Internet, and to track and give an account of the execution of those ads. These substances may utilize treats, web reference points, SDKs and different innovations to recognize your gadget when you visit our webpage and utilize our administrations, and in addition when you visit other online locales and administrations. It would be ideal if you see our Cookie Statement for more data with respect to the utilization of cookies and different advances portrayed in this area, including in regards to your decisions identifying with such advances. </span></p></li></ul><p><b style=\"font-weight:normal;\"><br></b></p><h4 dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:2pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Choice and transparency</span></h4><p><b style=\"font-weight:normal;\"><br></b></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">newtaxi gives the way to you to see and control the data that newtaxi gathers, including through: </span></p><p><b style=\"font-weight:normal;\"><br></b></p><ul style=\"margin-top:0pt;margin-bottom:0pt;\"><li dir=\"ltr\" style=\"list-style-type:square;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">in-app privacy settings</span></p></li><li dir=\"ltr\" style=\"list-style-type:square;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">device permissions</span></p></li><li dir=\"ltr\" style=\"list-style-type:square;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">in-app ratings pages</span></p></li><li dir=\"ltr\" style=\"list-style-type:square;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">marketing opt-outs</span></p></li></ul><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">You can likewise ask newtaxi to give you clarification, duplicates or revision of your information. </span></p><p><b style=\"font-weight:normal;\"><br></b></p><p dir=\"ltr\" style=\"line-height:2.052;margin-top:2pt;margin-bottom:2pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">PRIVACY SETTINGS</span></p><p><b style=\"font-weight:normal;\"><br></b></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">The Privacy Settings menu in the newtaxi Rider application enables clients to set or refresh their area and contacts sharing inclinations, and their inclinations for getting portable notices from newtaxi. Data on these settings, how to set or change these settings, and the impact of killing these settings are depicted underneath. </span></p><p><b style=\"font-weight:normal;\"><br></b></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Location information</span></p><p><b style=\"font-weight:normal;\"><br><br></b></p><ul style=\"margin-top:0pt;margin-bottom:0pt;\"><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">newtaxi utilizes riders\' gadget area administrations to make it simpler to get a sheltered, dependable excursion at whatever point you require one. Area information enhances our administrations, including pick-ups, route and client bolster. </span></p></li></ul><p><b style=\"font-weight:normal;\"><br></b></p><ul style=\"margin-top:0pt;margin-bottom:0pt;\"><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">You can empower/incapacitate or change newtaxi\' accumulation of rider area data whenever through the Privacy Settings menu in the newtaxi application, or by means of the settings on your cell phone. On the off chance that you cripple the gadget area benefits on your gadget, your utilization of the newtaxi application will be influenced. For instance, you should enter your get or drop-off areas physically. What\'s more, area data will be gathered from the driver amid your outing and connected to your record, regardless of whether you have not empowered newtaxi to gather your area data. </span></p></li></ul><p><b style=\"font-weight:normal;\"><br></b></p><p dir=\"ltr\" style=\"line-height:2.052;margin-top:2pt;margin-bottom:2pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Notifications: Account and trip updates</span></p><p><b style=\"font-weight:normal;\"><br></b></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">newtaxi gives clients arrange status warnings and updates identified with your record. These warnings are an important piece of utilizing the newtaxi application and can\'t be handicapped. In any case, you can pick the strategy by which you get these notices through the Privacy Settings menu in the newtaxi application. </span></p><p><b style=\"font-weight:normal;\"><br></b></p><p dir=\"ltr\" style=\"line-height:2.052;margin-top:2pt;margin-bottom:2pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Notifications: Discounts and news</span></p><p><b style=\"font-weight:normal;\"><br></b></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">You can empower newtaxi to send you push warnings about limits and news from newtaxi. You can empower/impair these notices whenever through the Privacy Settings menu in the newtaxi application. </span></p><p><b style=\"font-weight:normal;\"><br></b></p><p dir=\"ltr\" style=\"line-height:2.052;margin-top:2pt;margin-bottom:2pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">DEVICE PERMISSIONS</span></p><p><b style=\"font-weight:normal;\"><br></b></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Most portable stages (iOS, Android, and so on.) have characterized specific kinds of gadget information that applications can\'t access without your assent. These stages have diverse authorization frameworks for acquiring your assent. The iOS stage will caution you the first run through the newtaxi application needs authorization to get to particular sorts of information and will give you a chance to assent (or not assent) to that ask. Android gadgets will advise you of the authorizations that the newtaxi application looks for before you first utilize the application, and your utilization of the application establishes your assent. </span></p><p><b style=\"font-weight:normal;\"><br></b></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Updates to this policy</span></p><p><b style=\"font-weight:normal;\"><br></b></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">We may sometimes refresh this arrangement. </span></p><p><b style=\"font-weight:normal;\"><br></b></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">We may sometimes refresh this arrangement. On the off chance that we roll out huge improvements, we will inform you of the progressions through the newtaxi applications or through others implies, for example, email. To the degree allowed under pertinent law, by utilizing our administrations after such notice, you agree to our updates to this strategy. </span></p><p><b style=\"font-weight:normal;\"><br></b></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">We urge you to occasionally survey this strategy for the most recent data on our protection rehearses. We will likewise make earlier forms of our protection strategies accessible for survey.</span></p><p><br></p><p></p><p></p>', 'Active', '2016-03-26 15:26:38', '2016-03-26 15:31:17');
INSERT INTO `pages` (`id`, `name`, `url`, `footer`, `under`, `content`, `status`, `created_at`, `updated_at`) VALUES
(3, 'About Us', 'about_us', 'yes', 'company', '&nbsp;&nbsp;&nbsp;<div class=\"text-copy\"><h1 class=\"h2 row-space-4\">About Us</h1><p>&nbsp; Founded in Jan of 2016 and based in India, SITE_NAME is a trusted community marketplace for people to list, discover, and book unique accommodations around the world — online or from a mobile phone or tablet.</p><p class=\"row-space-4\">&nbsp; Whether an apartment for a night, a castle for a week, or a villa for a month, SITE_NAME connects people to unique travel experiences, at any price point, in more than 34,000 cities and 190 countries. And with world-class customer service and a growing community of users, SITE_NAME is the easiest way for people to monetize their extra space and showcase it to an audience of millions.</p></div>', 'Active', '2016-03-26 17:22:05', '2016-03-26 17:23:32');

-- --------------------------------------------------------

--
-- Table structure for table `pages_translations`
--

CREATE TABLE `pages_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `pages_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(10) UNSIGNED NOT NULL,
  `trip_id` int(10) UNSIGNED NOT NULL,
  `correlation_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_transaction_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driver_transaction_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_payout_status` enum('Pending','Processing','Paid') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `driver_payout_status` enum('Pending','Processing','Paid') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `trip_id`, `correlation_id`, `admin_transaction_id`, `driver_transaction_id`, `admin_payout_status`, `driver_payout_status`) VALUES
(1, 1, '', NULL, '', 'Pending', 'Paid'),
(2, 2, '', NULL, '', 'Pending', 'Paid'),
(3, 3, '', NULL, NULL, 'Pending', 'Pending'),
(4, 4, NULL, NULL, NULL, 'Pending', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateway`
--

CREATE TABLE `payment_gateway` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_gateway`
--

INSERT INTO `payment_gateway` (`id`, `name`, `value`, `site`) VALUES
(1, 'trip_default', 'cash', 'Common'),
(2, 'payout_methods', 'bank_transfer,paypal,stripe', 'Common'),
(3, 'is_enabled', '1', 'Cash'),
(4, 'is_enabled', '1', 'Paypal'),
(5, 'paypal_id', '#', 'Paypal'),
(6, 'mode', 'sandbox', 'Paypal'),
(7, 'client', 'AbZqxwGM87-fRHI-HnG_plBoz-Z_j2OgcAKRFQzgdR4qd5dszhQXS5nk6FTPd9sw0vSSLMadISBc2_lA', 'Paypal'),
(8, 'secret', 'EDFYQf8itbqoWi-9BIzgzrNvGWLI62UEliT1i8f_APi_MAJkteZLwnXGmTvBkBIRAVy-jCBi-PmYyNUa', 'Paypal'),
(9, 'access_token', 'access_token$sandbox$d7852qvvw6wj277m$71ad22f88418c3a7f17d824ad0786ffc', 'Paypal'),
(10, 'is_enabled', '1', 'Stripe'),
(11, 'publish', 'pk_test_lQctuc2tx2IVDCSYIjiFodaz00n0TNteiG', 'Stripe'),
(12, 'secret', 'sk_test_1tiewAwj00VlKzL7uwMPZcTN003Vk0kWl6', 'Stripe'),
(13, 'api_version', '2019-12-03', 'Stripe'),
(14, 'is_enabled', '0', 'Braintree'),
(15, 'mode', 'sandbox', 'Braintree'),
(16, 'merchant_id', 'g3dprd7kyfs7f3jr', 'Braintree'),
(17, 'public_key', 'prwd98qgnqkdptkp', 'Braintree'),
(18, 'private_key', 'fe3e98760ba97b6b2e01fe28379cd477', 'Braintree'),
(19, 'tokenization_key', 'sandbox_jy9mwggn_q8v7ynjw9fssn4hy', 'Braintree'),
(20, 'merchant_account_id', '', 'Braintree'),
(21, 'is_web_payment', '', 'Common');

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

CREATE TABLE `payment_method` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `customer_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intent_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last4` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`id`, `user_id`, `customer_id`, `intent_id`, `payment_method_id`, `brand`, `last4`, `created_at`, `updated_at`) VALUES
(1, 10004, 'cus_Li8bVOriLsvnwT', 'seti_1L0iKfJbZQ9xXEmX60Bq9lP0', 'pm_1L0iKiJbZQ9xXEmXqdqa7K2T', 'mastercard', '4444', NULL, NULL),
(2, 10003, 'cus_Lj7WUol47sc4vV', 'seti_1L1fH0JbZQ9xXEmXRbxcELj2', 'pm_1L1fH5JbZQ9xXEmX5VqS2uby', 'mastercard', '4444', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payout_credentials`
--

CREATE TABLE `payout_credentials` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `preference_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` enum('no','yes') COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payout_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payout_credentials`
--

INSERT INTO `payout_credentials` (`id`, `user_id`, `preference_id`, `default`, `type`, `payout_id`, `created_at`, `updated_at`) VALUES
(1, 10002, '1', 'yes', 'BankTransfer', '123456789', '2021-12-18 16:13:31', '2021-12-18 16:13:31'),
(2, 10003, '2', 'yes', 'Paypal', 'admin@admin.com', '2022-11-12 07:07:08', '2022-11-12 07:07:08');

-- --------------------------------------------------------

--
-- Table structure for table `payout_preference`
--

CREATE TABLE `payout_preference` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `address1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payout_method` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paypal_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `routing_number` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `holder_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `holder_type` enum('Individual','Company') COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_document_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_document_image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_kanji` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_location` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ssn_last_4` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payout_preference`
--

INSERT INTO `payout_preference` (`id`, `user_id`, `address1`, `address2`, `city`, `state`, `postal_code`, `country`, `payout_method`, `paypal_email`, `currency_code`, `routing_number`, `account_number`, `holder_name`, `holder_type`, `document_id`, `document_image`, `additional_document_id`, `additional_document_image`, `phone_number`, `address_kanji`, `bank_name`, `bank_location`, `branch_name`, `branch_code`, `ssn_last_4`, `created_at`, `updated_at`) VALUES
(1, 10002, '', '', NULL, NULL, NULL, NULL, 'BankTransfer', '123456789', '', '', '123456789', 'SMR IT SOLUTIONS', 'Company', NULL, NULL, NULL, NULL, '', '[]', 'Demo', 'Demo', '', 'Demo', '', '2021-12-18 16:13:31', '2021-12-18 16:15:00'),
(2, 10003, '10444', '', 'Nairobi', 'Nairobi', '2333', 'KE', 'Paypal', 'admin@admin.com', 'USD', '', '', '', 'Company', NULL, NULL, NULL, NULL, '', '[]', '', '', '', '', '', '2022-11-12 07:07:08', '2022-11-12 07:07:08');

-- --------------------------------------------------------

--
-- Table structure for table `peak_fare_details`
--

CREATE TABLE `peak_fare_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `fare_id` int(10) UNSIGNED NOT NULL,
  `type` enum('Peak','Night') COLLATE utf8mb4_unicode_ci NOT NULL,
  `day` tinyint(4) DEFAULT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'manage_admin', 'Manage Admin', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(2, 'create_rider', 'Create Rider', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(3, 'view_rider', 'View Rider', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(4, 'update_rider', 'Update Rider', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(5, 'delete_rider', 'Delete Rider', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(6, 'create_driver', 'Create Driver', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(7, 'view_driver', 'View Driver', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(8, 'update_driver', 'Update Driver', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(9, 'delete_driver', 'Delete Driver', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(10, 'create_company', 'Create Company', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(11, 'view_company', 'View Company', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(12, 'update_company', 'Update Company', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(13, 'delete_company', 'Delete Company', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(14, 'manage_vehicle_type', 'Manage Vehicle Type', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(15, 'manage_send_message', 'Manage Send Message', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(16, 'manage_api_credentials', 'Manage Api Credentials', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(17, 'manage_payment_gateway', 'Manage Payment Gateway', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(18, 'manage_site_settings', 'Manage Site Settings', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(19, 'manage_map', 'Manage Map', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(20, 'manage_statements', 'Manage Statements', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(21, 'manage_trips', 'Manage Trips', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(22, 'manage_wallet', 'Manage Wallet', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(23, 'manage_owe_amount', 'Manage Owe Amount', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(24, 'manage_promo_code', 'Manage Promo Code', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(25, 'manage_driver_payments', 'Manage Driver Payments', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(26, 'manage_cancel_trips', 'Manage Cancel Trips', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(27, 'manage_rating', 'Manage Rating', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(28, 'manage_fees', 'Manage Fees', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(29, 'manage_join_us', 'Manage Join Us', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(30, 'manage_requests', 'Manage Requests', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(31, 'manage_currency', 'Manage Currency', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(32, 'manage_static_pages', 'Manage Static Pages', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(33, 'manage_metas', 'Manage Metas', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(34, 'manage_locations', 'Manage Locations', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(35, 'manage_peak_based_fare', 'Manage Peak Based Fare', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(36, 'manage_send_email', 'Manage Send Email', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(37, 'manage_email_settings', 'Manage Email Settings', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(38, 'manage_language', 'Manage Language', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(39, 'manage_help', 'Manage Help', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(40, 'manage_country', 'Manage Country', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(41, 'manage_heat_map', 'Manage Heat Map', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(42, 'manage_manual_booking', 'Manage Manual Booking', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(43, 'manage_company_payment', 'Manage Company Payment', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(44, 'manage_payments', 'Manage Payments', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(45, 'manage_vehicle', 'Manage Vehicle', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(46, 'manage_referral_settings', 'Manage Referral Settings', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(47, 'manage_rider_referrals', 'Manage Rider Referrals', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(48, 'manage_driver_referrals', 'Manage Driver Referrals', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(49, 'create_manage_reason', 'Create Manage Reason', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(50, 'view_manage_reason', 'View Manage Reason', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(51, 'update_manage_reason', 'Update Manage Reason', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(52, 'delete_manage_reason', 'Delete Manage Reason', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(53, 'create_additional_reason', 'Create Additional Reason', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(54, 'view_additional_reason', 'View Additional Reason', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(55, 'update_additional_reason', 'Update Additional Reason', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(56, 'delete_additional_reason', 'Delete Additional Reason', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(57, 'create_vehicle_make', 'Create Vehicle Make', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(58, 'view_vehicle_make', 'View Vehicle Make', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(59, 'update_vehicle_make', 'Update Vehicle Make', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(60, 'delete_vehicle_make', 'Delete Vehicle Make', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(61, 'create_vehicle_model', 'Create Vehicle Model', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(62, 'view_vehicle_model', 'View Vehicle Model', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(63, 'update_vehicle_model', 'Update Vehicle Model', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(64, 'delete_vehicle_model', 'Delete Vehicle Model', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(65, 'create_documents', 'Create Documents', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(66, 'view_documents', 'View Documents', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(67, 'update_documents', 'Update Documents', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(68, 'delete_documents', 'Delete Documents', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(69, 'manage_support', 'Manage Support', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(70, 'manage_mobile_app_version', 'Manage Mobile App Version', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24');

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
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(42, 2),
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
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pool_trips`
--

CREATE TABLE `pool_trips` (
  `id` int(10) UNSIGNED NOT NULL,
  `driver_id` int(10) UNSIGNED NOT NULL,
  `car_id` int(10) UNSIGNED NOT NULL,
  `seats` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `pickup_latitude` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pickup_longitude` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `drop_latitude` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `drop_longitude` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pickup_location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `drop_location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trip_path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `map_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_time` decimal(7,2) NOT NULL,
  `total_km` decimal(7,2) NOT NULL,
  `time_fare` decimal(11,2) NOT NULL,
  `distance_fare` decimal(11,2) NOT NULL,
  `base_fare` decimal(11,2) NOT NULL,
  `additional_rider_amount` decimal(11,2) NOT NULL,
  `peak_fare` decimal(11,2) NOT NULL,
  `peak_amount` decimal(11,2) NOT NULL,
  `driver_peak_amount` decimal(11,2) NOT NULL,
  `schedule_fare` decimal(11,2) NOT NULL,
  `access_fee` decimal(11,2) NOT NULL,
  `tips` decimal(11,2) NOT NULL DEFAULT 0.00,
  `waiting_charge` decimal(11,2) NOT NULL DEFAULT 0.00,
  `toll_reason_id` int(10) UNSIGNED DEFAULT NULL,
  `toll_fee` decimal(11,2) NOT NULL DEFAULT 0.00,
  `wallet_amount` decimal(11,2) NOT NULL,
  `promo_amount` decimal(11,2) NOT NULL,
  `subtotal_fare` decimal(11,2) NOT NULL,
  `total_fare` decimal(11,2) NOT NULL,
  `driver_payout` decimal(11,2) NOT NULL,
  `driver_or_company_commission` decimal(11,2) NOT NULL,
  `owe_amount` decimal(11,2) NOT NULL,
  `remaining_owe_amount` decimal(11,2) NOT NULL,
  `applied_owe_amount` decimal(11,2) NOT NULL,
  `arrive_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `begin_trip` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_trip` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `currency_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profile_picture`
--

CREATE TABLE `profile_picture` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `src` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_source` enum('Facebook','Google','Local') COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profile_picture`
--

INSERT INTO `profile_picture` (`user_id`, `src`, `photo_source`) VALUES
(10001, 'https://newtaxi.seentechs.com/images/user.jpeg', 'Local'),
(10002, '', 'Local'),
(10003, 'https://newtaxi.seentechs.com/images/users/10003/profile_pic_1652863875.jpg', 'Local'),
(10004, 'https://newtaxi.seentechs.com/images/users/10004/profile_pic_1652863838.jpg', 'Local');

-- --------------------------------------------------------

--
-- Table structure for table `promo_code`
--

CREATE TABLE `promo_code` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `currency_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(10) UNSIGNED NOT NULL,
  `trip_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `driver_id` int(10) UNSIGNED NOT NULL,
  `rider_rating` int(11) NOT NULL,
  `rider_comments` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `driver_rating` int(11) NOT NULL,
  `driver_comments` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `trip_id`, `user_id`, `driver_id`, `rider_rating`, `rider_comments`, `driver_rating`, `driver_comments`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 10001, 10002, 5, 'good', 5, 'good', '2021-12-18 15:57:59', '2021-12-18 15:58:09', NULL),
(2, 2, 10001, 10002, 0, '', 5, 'good', '2021-12-18 17:33:08', '2021-12-18 17:33:08', NULL),
(3, 3, 10004, 10003, 0, '', 5, 'Legit business', '2022-05-18 05:33:46', '2022-05-18 05:33:46', NULL),
(4, 4, 10004, 10003, 0, '', 5, 'Awesome App', '2022-05-20 12:35:24', '2022-05-20 12:35:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `referral_settings`
--

CREATE TABLE `referral_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` enum('Driver','Rider') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `referral_settings`
--

INSERT INTO `referral_settings` (`id`, `name`, `value`, `user_type`) VALUES
(1, 'apply_referral', '1', 'Driver'),
(2, 'number_of_trips', '5', 'Driver'),
(3, 'number_of_days', '3', 'Driver'),
(4, 'currency_code', 'USD', 'Driver'),
(5, 'referral_amount', '10', 'Driver'),
(6, 'apply_referral', '1', 'Rider'),
(7, 'number_of_trips', '5', 'Rider'),
(8, 'number_of_days', '3', 'Rider'),
(9, 'currency_code', 'USD', 'Rider'),
(10, 'referral_amount', '10', 'Rider');

-- --------------------------------------------------------

--
-- Table structure for table `referral_users`
--

CREATE TABLE `referral_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `referral_id` int(10) UNSIGNED NOT NULL,
  `user_type` enum('Rider','Driver') COLLATE utf8mb4_unicode_ci NOT NULL,
  `days` int(10) UNSIGNED NOT NULL,
  `trips` int(10) UNSIGNED NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `currency_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(11,2) NOT NULL,
  `pending_amount` decimal(11,2) NOT NULL,
  `payment_status` enum('Pending','Expired','Completed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `seats` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `pickup_latitude` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pickup_longitude` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `drop_latitude` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `drop_longitude` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pickup_location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `drop_location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `car_id` int(10) UNSIGNED NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `driver_id` int(10) UNSIGNED NOT NULL,
  `payment_mode` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Credit Card',
  `schedule_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Null',
  `location_id` int(10) UNSIGNED NOT NULL,
  `additional_fare` enum('Peak') COLLATE utf8mb4_unicode_ci NOT NULL,
  `peak_fare` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `additional_rider` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timezone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trip_path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Null',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`id`, `user_id`, `seats`, `pickup_latitude`, `pickup_longitude`, `drop_latitude`, `drop_longitude`, `pickup_location`, `drop_location`, `car_id`, `group_id`, `driver_id`, `payment_mode`, `schedule_id`, `location_id`, `additional_fare`, `peak_fare`, `additional_rider`, `timezone`, `trip_path`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 10001, 0, '19.1438971', '72.8427707', '19.1178548', '72.8631304', 'Jogeshwari West, Mumbai, Maharashtra, India', 'Andheri East, Mumbai, Maharashtra, India', 3, 1, 10002, 'Cash & Wallet', '', 2, '', '0', '75', 'Asia/Kolkata', 'g`zsBmbr{LlDa@RKjAOrDc@rFg@n@Wd@Yh@e@JUJa@B_@Ia@Kw@Eq@?gBRcCj@uHLcBRe@JmAd@gDH{@Bo@Ey@SoAWgAmAeE}@uBiAcD]wAOy@QcAMc@hAA`IUxBE~@HbBCbACv@Aza@o@vKM|FAbCI|@M`A[rDcB|B}@dASdAMlAAj@@hFt@zEp@fEn@pBTl@GfALvCXD?HEP?zBT\\DFJpDTx@cBt@kBZk@dAoBj@aBLw@ZiCF{@P{EgAu@MMaAaB}@sBq@aBc@s@Ya@a@[_Ac@yBy@WSKIAA', 'Accepted', '2021-12-18 21:26:47', '2021-12-18 15:58:09', NULL),
(2, 10001, 0, '19.1438971', '72.8427707', '19.1178548', '72.8631304', 'Jogeshwari, Mumbai, Maharashtra, India', 'Andheri East, Mumbai, Maharashtra, India', 3, 2, 10002, 'Cash & Wallet', '', 2, '', '0', '75', 'Asia/Kolkata', 'g`zsBmbr{LlDa@RKjAOrDc@rFg@n@Wd@Yh@e@JUJa@B_@Ia@Kw@Eq@?gBRcCj@uHLcBRe@JmAd@gDH{@Bo@Ey@SoAWgAmAeE}@uBiAcD]wAOy@QcAMc@hAA`IUxBE~@HbBCbACv@Aza@o@vKM|FAbCI|@M`A[rDcB|B}@dASdAMlAAj@@hFt@zEp@fEn@pBTl@GfALvCXD?HEP?zBT\\DFJpDTx@cBt@kBZk@dAoBj@aBLw@ZiCF{@P{EgAu@MMaAaB}@sBq@aBc@s@Ya@a@[_Ac@yBy@WSKIAA', 'Accepted', '2021-12-18 23:02:05', '2021-12-18 17:33:46', NULL),
(3, 10004, 0, '-0.7269114', '37.1610938', '-1.3230381', '36.703815899999995', '75F6+77P, Murang\'a, Kenya', 'PR35+G42, Ngong Rd, Nairobi, Kenya', 1, 3, 10003, 'Stripe', '', 3, '', '0', '75', 'Africa/Nairobi', '', 'Accepted', '2022-05-18 08:09:30', '2022-05-18 05:34:23', NULL),
(4, 10004, 0, '-0.728249', '37.1582974', '-1.2962358999999999', '36.8077602', '75F5+5GC, Murang\'a, Kenya', 'Nairobi hospital, Ngong Road, Nairobi, Kenya', 1, 4, 10003, 'Cash', '', 3, '', '0', '75', 'Africa/Nairobi', 'remConxaFcBvNvAfEl@x@d@Zl@dABjBi@`BJpA\\zAI`@n@x@t@f@nFdHxEbEpF|AjDJpFs@pE{BbBgBnCkFbIcR`FiYLgIFkA|@iDbGaG`KkFvKsDhDYhCd@rCxCfFbNtAfKf@tN\\jI`@nBdAdBvBrAnEj@jM^pCg@|BkAlDyDfB_AnCKxF|ArE^tVsA|HGxGj@pG|AlTnJvCpBnFhItHfHnDtCjDdFhDnIpB`D`DlDpFbE`LlEhK|DbFlElEpGtFrHjHdF~FvBjHjAbILfGe@jKsCbPwFtYeK|PeG|JeCjHg@fILfb@hBzVdAbMjAnP|EfJ`BnGl@hMZxSk@jw@yDlLm@`KeBxYaIdI{AtDWdKLhH^va@vBxKV`OuB`a@cCfCL`Ct@rBzAjBpC`MpUlG|LpCtCfKjGzIhFfCjBbD|DtCnI|AvG|BfCdIlCrI`CpE|BnDfEdFrIlI~F|HfBtENnIaAlKsC~VaHbNcD|KOnKKnJkCrIuG~HaHtCsAbCe@|MPlMp@~PrAxSzEdf@~LnE^|Dc@|L}ClEw@zALzAr@jCpEhDvC|CbC~E|FpFvHtGrFtKvEnRdHzMfIjGxFxJzLlItPdEtLzCtHhFdI|KdK|EtCrJxDzJjBjMnAzSnCbHrBpKnFfOpKbIbFtNtL|DrD|JvGvMbFtWvGvL|EvFpCzO|GfKlD|KhFnUhP`]zM~X~KrKhI~J~IlJxGdQxGjIlAdY_@fIj@|OjExPzFzdAr]`]|Iv\\hIzTpG`\\zOlXnN`_@rRjS`M`TpPtSdStLdK~FvFvCbEvHtKpN~Rp\\f`@fUzVtRxShIhFlNvDnVhFfItBdHlDpEnDtV~YdR~TpClDdDdGbBlGl@fHNba@l@xNzAhRnAhK~Fl]pCnNfBbFzApCzFtGbVhNjRfKnHdGlIlK~EdElGrBdh@xLzo@jNjRfEhIhExExEpDnGtGjN|LlWnFpIjRnR~]bZjWjVndAlaAr^d]jKlIpPfOxMdM~DvE|BvFlCbLjIf^bJ|^vDfHbHpIfTzVjUrShQ|Vpa@tl@hPpTzDfE~DpCzKdExVhItDjBhJrI|V`VlZxYbKnKbKtN`ClH`@tTRlG~@dE|A`ExEdMnD~HzBvChHlLlJzPzFzFrOvLhO~XvPpW~EhGhErA`B`Bx@~AbBZ|Am@nBEx@\\pAzADh@k@bBjClG?tCdF|LxBhFj@E`LeErLqF`Aa@^|@At@hHbRxEnMTdChBdGtExKtFbMt@^hJyDvB_ANIFAt@SxFsBh@s@o@gB', 'Accepted', '2022-05-20 15:30:12', '2022-05-20 12:30:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rider_location`
--

CREATE TABLE `rider_location` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `home` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `work` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `home_latitude` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `home_longitude` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_latitude` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_longitude` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rider_location`
--

INSERT INTO `rider_location` (`id`, `user_id`, `home`, `work`, `home_latitude`, `home_longitude`, `work_latitude`, `work_longitude`, `latitude`, `longitude`) VALUES
(1, 10001, 'Nairobi, Kenya', 'Mombasa, Kenya', '-1.2920659', '36.8219462', '-4.0434771', '39.6682065', '19.14430794923723', '72.83747524023056'),
(2, 10004, 'PR35+G42, Ngong Rd, Nairobi, Kenya', 'Murang\'a, Kenya', '-1.2962359', '36.8077602', '-0.7236857999999999', '37.1606968', '43.07034264312149', '47.338916435837746');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', 'Admin', '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(2, 'dispatcher', 'Dispatcher', 'Dispatcher', '2021-12-18 12:35:24', '2021-12-18 12:35:24');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `schedule_cancel`
--

CREATE TABLE `schedule_cancel` (
  `id` int(10) UNSIGNED NOT NULL,
  `schedule_ride_id` int(10) UNSIGNED NOT NULL,
  `cancel_reason` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cancel_reason_id` int(10) UNSIGNED NOT NULL,
  `cancel_by` enum('Rider','Driver','Admin','Company') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schedule_ride`
--

CREATE TABLE `schedule_ride` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `schedule_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `schedule_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `schedule_end_date` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `schedule_end_time` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pickup_latitude` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pickup_longitude` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `drop_latitude` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `drop_longitude` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pickup_location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `drop_location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trip_path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `car_id` int(10) UNSIGNED NOT NULL,
  `location_id` int(10) UNSIGNED NOT NULL,
  `peak_id` int(10) UNSIGNED NOT NULL,
  `booking_type` enum('Manual Booking','Schedule Booking') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Schedule Booking',
  `driver_id` int(11) NOT NULL DEFAULT 0,
  `status` enum('Pending','Completed','Cancelled','Car Not Found') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timezone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fare_estimation` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_wallet` enum('Yes','No') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('1E0E5LbUF74dhE1hE6f49jbZWOhWxviNsP8LHe3z', NULL, '103.142.198.16', 'okhttp/3.14.9', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IkIwVEhuUHRwZUdGNGJtWGZWaTdONWlNZFVldXdtclVQdG5NblZsRXEiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk1OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1yaWRlciZ2ZXJzaW9uPTEuMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639890007),
('27pcft6cb0ss9olBZF80f3IIKeBCUr48nrOFdmrN', NULL, '66.249.84.117', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6ImdwaHJTNlZRYml3cHNoN2ZLRVRnTDJQelZUZktQUmtxdUlBQ3dyQ3AiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890805),
('2c1gHDgmQL20LhILPOrxoB8pDZvN8x3Y27zmiaqL', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo1OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6InVhd2dUYmw2U0JyZWFRSVBYZlZ3aWJ1MmE0S2JwNkZMS3J2U1hlYVQiO3M6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639891186),
('2OzXMZouBDvoKNIKVoDiJE3BUXF7JES4uhH1A72R', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6Inc2dG1jaWkwSnpnTW1XUkQ3S3lRUGFIc3U4VlpCYzlZVmVzVkExUnMiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQwNjoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2dldF9kcml2ZXJfcHJvZmlsZT90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKcGMzTWlPaUpvZEhSd2N6b3ZMMk5oWW0xbExtTnNiMjVsWVhCd2MyOXNkWFJwYjI1ekxtTnZiUzloY0drdmNtVm5hWE4wWlhJaUxDSnBZWFFpT2pFMk16azRORE13Tnpjc0ltVjRjQ0k2TVRZME1qUTNNVEEzTnl3aWJtSm1Jam94TmpNNU9EUXpNRGMzTENKcWRHa2lPaUpGYTNkak4wbERhR1pLVFUxUlZUQkJJaXdpYzNWaUlqb3hNREF3TWl3aWNISjJJam9pTWpOaVpEVmpPRGswT1dZMk1EQmhaR0l6T1dVM01ERmpOREF3T0RjeVpHSTNZVFU1TnpabU55SjkuMWJja1JPV0MwNzdsMlFwclhKU282bXRyOUpQOUVrcXBiTmV6bkJiYWxHZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639891186),
('3KpsT9U8IDB9Hu2H0G6h0HuBHL6nVJ5WJVw5spr0', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo1OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IkxYZTA5NklSdkF1Wkt5WThFc0F5MnhPb1lGMFBPczE1NjZhaE1oWEYiO3M6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639890052),
('43pmKTWUAZxlXK6iItNI5D5U9VIuL7zwNtlkKpk8', 10001, '103.142.198.16', 'okhttp/3.14.9', 'YTo1OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IjFUTlkxRUNmbElnbWp3Mk1tUUlBOEoyTHIzcHdrZ0ZqYlVpZmZTaXYiO3M6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639889999),
('4EpWfALT5ue5vVroKNGn1UBg8o4D1QpJoFuU6iza', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6ImlsU3h6cnRScXhUQjU1OUpaVWFuRW93bUpISGJrdVdHSm1tdzVoUjQiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQyMDoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2hlYXRfbWFwP3RpbWV6b25lPUFzaWElMkZLb2xrYXRhJnRva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUpwYzNNaU9pSm9kSFJ3Y3pvdkwyTmhZbTFsTG1Oc2IyNWxZWEJ3YzI5c2RYUnBiMjV6TG1OdmJTOWhjR2t2Y21WbmFYTjBaWElpTENKcFlYUWlPakUyTXprNE5ETXdOemNzSW1WNGNDSTZNVFkwTWpRM01UQTNOeXdpYm1KbUlqb3hOak01T0RRek1EYzNMQ0pxZEdraU9pSkZhM2RqTjBsRGFHWktUVTFSVlRCQklpd2ljM1ZpSWpveE1EQXdNaXdpY0hKMklqb2lNak5pWkRWak9EazBPV1kyTURCaFpHSXpPV1UzTURGak5EQXdPRGN5WkdJM1lUVTVOelptTnlKOS4xYmNrUk9XQzA3N2wyUXByWEpTbzZtdHI5SlA5RWtxcGJOZXpuQmJhbEdnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639892462),
('69RPnrM6nTVevatYJaHZye7BrdB1lawFZQ2WeViZ', 10001, '103.142.198.16', 'okhttp/3.14.9', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IkRDczY5cmVKUjVSallpUTJYV214aWVUelN6MldNQTk2b2FYeGx6QXQiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQwNToiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2dldF9yaWRlcl9wcm9maWxlP3Rva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUpwYzNNaU9pSm9kSFJ3Y3pvdkwyTmhZbTFsTG1Oc2IyNWxZWEJ3YzI5c2RYUnBiMjV6TG1OdmJTOWhjR2t2Y21WbmFYTjBaWElpTENKcFlYUWlPakUyTXprNE16a3pOalVzSW1WNGNDSTZNVFkwTWpRMk56TTJOU3dpYm1KbUlqb3hOak01T0RNNU16WTFMQ0pxZEdraU9pSTVRbTA1V0ZjMlNFOWFTVE5RWmxsVklpd2ljM1ZpSWpveE1EQXdNU3dpY0hKMklqb2lNak5pWkRWak9EazBPV1kyTURCaFpHSXpPV1UzTURGak5EQXdPRGN5WkdJM1lUVTVOelptTnlKOS5lLXVULU9LbFRGV0ZqOG5ZZkdvR004aHI1QldYM2s3SXJqWnFVN2ZJck9vIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639890008),
('6bHCNnt0yPq0CPr5zSGeXO3oj82KS7Lu96mQlm5n', NULL, '108.177.7.87', 'okhttp/3.14.9', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IkFtTGNmejhURGpYQldqTFZKaEpxcjVJU2dUdDdBb0lYZFNGUWZtYVMiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk1OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1yaWRlciZ2ZXJzaW9uPTEuMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639890524),
('75LU1Yvaa8yF6KfGAAJhJk9jrW57vlAm0ytQmYps', NULL, '66.102.8.51', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IklIZzlUdTZYbmlkYWJ1bTR1djVYVzRJajBkU2dQbVR0b2RrNW91bk8iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890888),
('8JVb0RspWPWoAogzS2Vk1nqTKyk1pee0Fucm90Xr', NULL, '66.249.84.115', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6Imlod245RktBeFBrZ2ZSNkF3VFl1Sld5WDRranpZZHJjQmE2dVAxUkQiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890724),
('A1b9WBhjEH1SpHdJhVh28MwjfnPpyo8bwEFLbYWx', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo1OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IklaZE9aWTdvcHBXTGl6cjZTM0MzalNxU2dFN1Z2RHpOSEVQZHY0Q0wiO3M6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639890043),
('A6LH68XqJQ7u3oJDigsqqVLogd1xAHehe3XNyr8A', NULL, '66.102.8.51', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6ImNSTklJSXVyY01EQkZ3cHBXeEZQY0JmTVhUNElxeUtsOUw4NXVBeXEiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890739),
('AcDdBU4E7ImzF1LdQZpzaG34YWkuHYlbguGTkN7X', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo1OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6InhjMmhKVzd6ZlFyTkJsQUZIMXUxbGE4S3ZDRzRUc09WcVRnUWt6d1AiO3M6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639891254),
('ae7og9TScL6Nmr1Z6X1Urc84xEOB8RMGWHHiexVz', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6Im0zYUFUVUpaWDJzSlZubk9jQnRSbllGcGYxcFhsMmZVTUdDOGxFVk4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQyMDoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2hlYXRfbWFwP3RpbWV6b25lPUFzaWElMkZLb2xrYXRhJnRva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUpwYzNNaU9pSm9kSFJ3Y3pvdkwyTmhZbTFsTG1Oc2IyNWxZWEJ3YzI5c2RYUnBiMjV6TG1OdmJTOWhjR2t2Y21WbmFYTjBaWElpTENKcFlYUWlPakUyTXprNE5ETXdOemNzSW1WNGNDSTZNVFkwTWpRM01UQTNOeXdpYm1KbUlqb3hOak01T0RRek1EYzNMQ0pxZEdraU9pSkZhM2RqTjBsRGFHWktUVTFSVlRCQklpd2ljM1ZpSWpveE1EQXdNaXdpY0hKMklqb2lNak5pWkRWak9EazBPV1kyTURCaFpHSXpPV1UzTURGak5EQXdPRGN5WkdJM1lUVTVOelptTnlKOS4xYmNrUk9XQzA3N2wyUXByWEpTbzZtdHI5SlA5RWtxcGJOZXpuQmJhbEdnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639890351),
('b22tcTp0F1v79uzNoNiyKSzjGZnQS7HsGaMsLIh3', NULL, '66.102.8.49', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IkEzUGRpaWZUVGc3aUpwSzEzUFNwU2x2UkhFTlJXc05wa1B5MkNCZXIiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890923),
('bayZMQvLSINeTL0lLRtv2dovlNClfJFZZ9lp3VGR', NULL, '66.249.84.119', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IkFmM0JWbWplVHNWOTlRYnpaR2NaWFZTUTBaVHV2YlNieHF0SWNjaGQiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890809),
('BIb0741rUDD9wSXuytXpZIQ74EgMFSywv6PpIIRT', NULL, '66.102.6.155', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IlcyNUQzd0UyajF1UjFuYXdVemgzcmZoUk9FWmFBUFFxWmF4TllpWHIiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890835),
('brJhWGm3WwH4X8TNCCWJwhflsKPMJ5QrqgWAQlBd', NULL, '66.102.8.49', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6InhHOGJ3cFpTR1YzcnVjN3Z0aTcyc3dQN1JzV3JuVjdJY0tkdDI5b1kiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890952),
('cVVzkrWruP3c5SZmLkV9PIhVg5KzrdBFG67OH2fD', NULL, '66.249.84.119', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IkNMUUxRdmhIOFdScHJsR3ZsYjllU0pJWVJkTzhmTzlSdFZRaTVLc3UiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890783),
('CZjDL3oJ48aWP2khYGmp1czegfjxPGAM7lYauIf8', NULL, '66.102.8.53', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6Ik1rQkNrMkhXZG1aaU0yQWdyMTYybTlQajlWVzNQbzBqTlVtRkVqVVYiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890732),
('d2zcpqBfhxazUIrIB5BylRmDSFgY9dsuqVCXnWuo', NULL, '66.102.8.51', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6ImtFS3ZpV0o5Ujl2WnR2SkpRQm5EV2ZuMFRsNjJPUVZqSVRKTXZmd2wiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890802),
('dF8XYl3yw78fheO3NBIbOQ1fRHbgYIDLupuf1nUL', NULL, '66.102.6.156', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IlJkSTdHaHk0bWtmZDZiS3B1eEN2YWc1S1RrTTlQNDA3MWVvWHBaazIiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890785),
('dlbE0ieNlqpR5EJqhifLZUh5FB4KwmBVHkaGlK41', NULL, '66.102.8.49', 'okhttp/3.14.9', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6ImV0NHk4MUlDUnFQbVExZXUwNlBzSzFHdzVQRWdyZkRYN05PM2h4cnQiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk1OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1yaWRlciZ2ZXJzaW9uPTEuMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639889953),
('DWIJWQboYxyY1dQmy7O2LPfSqmKOhCCoPprAFewX', NULL, '107.181.177.130', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YTo3OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6Ik9Ha1pQSVN6Y0dmU2Mwbm5xYVVWQUZIaHo5Y3ZDUElUSkhYWUpDNjMiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjc1OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9kZW1vL3B1YmxpYy9pbnN0YWxsL2Vudmlyb25tZW50L2NsYXNzaWMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YToxOntpOjA7czo3OiJtZXNzYWdlIjt9czozOiJuZXciO2E6MDp7fX1zOjc6Im1lc3NhZ2UiO3M6NDA6IllvdXIgLmVudiBmaWxlIHNldHRpbmdzIGhhdmUgYmVlbiBzYXZlZC4iO30=', 1639893929),
('e0NcSmojiXhy4lHCS3PbAZdvlOLLzSRwLgRrZ4Es', NULL, '108.177.7.87', 'okhttp/3.14.9', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IjFqeFBaS3FoSG5rcVJkOGVHQ1pIVFNXNk1PenA0b2h2UXBTVjl4dGQiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk1OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1yaWRlciZ2ZXJzaW9uPTEuMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639890565),
('ETZJwtUIE3O8CPXwtd9qEHtBUnNlsCHida28vobf', NULL, '108.177.7.87', 'okhttp/3.14.9', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IlU2aFdmY2NqZjJFQTlsR0hlRDRRM0EyN1VRSWpLZFA2djZxT1drWEwiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk1OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1yaWRlciZ2ZXJzaW9uPTEuMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639890575),
('f2oxh0jdxNjZLHWbfXiOLEZM6SPxbKBJSMu0O7Q5', NULL, '108.177.7.80', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IktZVWZoMXZaTzFFbm5GWEdIWUZNNURxUVdsQUZZeHJTRWRjS1dIV1IiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890593),
('fHP1oeZ8CVb0xLW7hL4CWOuHXEITJoiwozQGOXcv', NULL, '66.249.84.117', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IlZ4eU5tRlpFWFpvampRS1J0WTdOUURlZGJlQ0tJOHk3Q2laa3RFeDEiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890742),
('fmQYpPx0C97TFzZrucLrgrbhEtqFGTlOuUSLVrXB', NULL, '103.142.198.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YTo3OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6Ik4zOUhYSTl2dk1ueGs2Y1l0anhqRk1yRlZFV0FEMHQzNHQ2bkVpT1QiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjU3OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hZG1pbi9hcGlfY3JlZGVudGlhbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUyOiJsb2dpbl9hZG1pbl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1639891984),
('fTpU2eJ61LZeTKqTqWWekJjfwueBMUhSCFQmvBRa', NULL, '103.142.198.16', 'okhttp/3.14.9', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IlJYUThvTmtTcWtUS3pEZmdwZWNCNEFJWkNSVFBreHRzdVlicFdJanciO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk1OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1yaWRlciZ2ZXJzaW9uPTEuMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639889816),
('GGkvMOLp75Vxf2kny4h75yUDwCbWubBoRFi5amQ2', 10001, '103.142.198.16', 'okhttp/3.14.9', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6Ik1JdldJYVZYRGNjTXNKNlBKQkt4Vko5RnNtT3QxV2lYQlE4cWt3bGgiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQ4ODoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL3VwZGF0ZXJpZGVybG9jYXRpb24/bGF0aXR1ZGU9MTkuMTQ0MzA3OTQ5MjM3MjMmbG9uZ2l0dWRlPTcyLjgzNzQ3NTI0MDIzMDU2JnBvbHlsaW5lPSZ0b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKcGMzTWlPaUpvZEhSd2N6b3ZMMk5oWW0xbExtTnNiMjVsWVhCd2MyOXNkWFJwYjI1ekxtTnZiUzloY0drdmNtVm5hWE4wWlhJaUxDSnBZWFFpT2pFMk16azRNemt6TmpVc0ltVjRjQ0k2TVRZME1qUTJOek0yTlN3aWJtSm1Jam94TmpNNU9ETTVNelkxTENKcWRHa2lPaUk1UW0wNVdGYzJTRTlhU1ROUVpsbFZJaXdpYzNWaUlqb3hNREF3TVN3aWNISjJJam9pTWpOaVpEVmpPRGswT1dZMk1EQmhaR0l6T1dVM01ERmpOREF3T0RjeVpHSTNZVFU1TnpabU55SjkuZS11VC1PS2xURldGajhuWWZHb0dNOGhyNUJXWDNrN0lyalpxVTdmSXJPbyZ1c2VyX3R5cGU9cmlkZXIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890008),
('gjMsnAG7t21sDpPbVqIqTovIBu1uKXyVjhcvkteN', NULL, '103.142.198.16', 'okhttp/3.14.9', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6Inc2Yjc5aHNjN0t1a2JYYWNHQTN5NmVuUFpsWjYyUklyQ2N2Q3pWd00iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk1OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1yaWRlciZ2ZXJzaW9uPTEuMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639889822),
('GNHkmyazvNwHWHV0rmLgSMNy27jZaI7iLbkeZoSa', NULL, '108.177.7.80', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IlEzelFSNFk0Q21tdmV5RXNjVjdyZHVpQnU5Zk0xWTlWcUVpb0JNYjIiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890636),
('GPkbaBedogfO0phXfFcialNGrLi3ic0jaYkK6iqU', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6ImZTVFVzU0t3bVpXTVdmWmxvcTFNM2dPVUtaNEJzTVA0dHd5UjMxT3MiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjYwODoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL3VwZGF0ZV9kZXZpY2U/ZGV2aWNlX2lkPWVKcGJmOWRFUnc2THdSdnpCN0pwcHQlM0FBUEE5MWJILWx2MEVyQ1FlbmJ5enprWGkwWGMyR2pBanYtTHFQbFotUGNGUHdmSThHazNBNWdnd2RyWlhaTUVuTERseTdRc05UTFI1emREMUh1NjN4NzV5clZMeU0tRkJaR05JYTk0RDhMazR4QWVHMmdlRFhadWR2aTNLbnRvNlJMWDZsZHpUWVpTVCZkZXZpY2VfdHlwZT0yJnRva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUpwYzNNaU9pSm9kSFJ3Y3pvdkwyTmhZbTFsTG1Oc2IyNWxZWEJ3YzI5c2RYUnBiMjV6TG1OdmJTOWhjR2t2Y21WbmFYTjBaWElpTENKcFlYUWlPakUyTXprNE5ETXdOemNzSW1WNGNDSTZNVFkwTWpRM01UQTNOeXdpYm1KbUlqb3hOak01T0RRek1EYzNMQ0pxZEdraU9pSkZhM2RqTjBsRGFHWktUVTFSVlRCQklpd2ljM1ZpSWpveE1EQXdNaXdpY0hKMklqb2lNak5pWkRWak9EazBPV1kyTURCaFpHSXpPV1UzTURGak5EQXdPRGN5WkdJM1lUVTVOelptTnlKOS4xYmNrUk9XQzA3N2wyUXByWEpTbzZtdHI5SlA5RWtxcGJOZXpuQmJhbEdnJnVzZXJfdHlwZT1kcml2ZXIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890030),
('H1ll15pJMuAwIjf2k6iAMB0L6oKL9dtBj1alYUJd', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IjBhSWhMeXFvaTdTUE5GSTVYMmU1R3VrR3FPY2pIRUV6WXhpUUNTa3ciO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQxMjoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2dldF9wZW5kaW5nX3RyaXBzP3BhZ2U9MSZ0b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKcGMzTWlPaUpvZEhSd2N6b3ZMMk5oWW0xbExtTnNiMjVsWVhCd2MyOXNkWFJwYjI1ekxtTnZiUzloY0drdmNtVm5hWE4wWlhJaUxDSnBZWFFpT2pFMk16azRORE13Tnpjc0ltVjRjQ0k2TVRZME1qUTNNVEEzTnl3aWJtSm1Jam94TmpNNU9EUXpNRGMzTENKcWRHa2lPaUpGYTNkak4wbERhR1pLVFUxUlZUQkJJaXdpYzNWaUlqb3hNREF3TWl3aWNISjJJam9pTWpOaVpEVmpPRGswT1dZMk1EQmhaR0l6T1dVM01ERmpOREF3T0RjeVpHSTNZVFU1TnpabU55SjkuMWJja1JPV0MwNzdsMlFwclhKU282bXRyOUpQOUVrcXBiTmV6bkJiYWxHZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639891252),
('hhIEM8MwoFMg3zTZ7dpgJ5oWKaSJkMFXjD1DXvju', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6Iko4SG1iMnBlVkNvM21SOVVZNHNSODViWU9ENmREMGxEWGo5d3RrdEUiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQyMDoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2hlYXRfbWFwP3RpbWV6b25lPUFzaWElMkZLb2xrYXRhJnRva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUpwYzNNaU9pSm9kSFJ3Y3pvdkwyTmhZbTFsTG1Oc2IyNWxZWEJ3YzI5c2RYUnBiMjV6TG1OdmJTOWhjR2t2Y21WbmFYTjBaWElpTENKcFlYUWlPakUyTXprNE5ETXdOemNzSW1WNGNDSTZNVFkwTWpRM01UQTNOeXdpYm1KbUlqb3hOak01T0RRek1EYzNMQ0pxZEdraU9pSkZhM2RqTjBsRGFHWktUVTFSVlRCQklpd2ljM1ZpSWpveE1EQXdNaXdpY0hKMklqb2lNak5pWkRWak9EazBPV1kyTURCaFpHSXpPV1UzTURGak5EQXdPRGN5WkdJM1lUVTVOelptTnlKOS4xYmNrUk9XQzA3N2wyUXByWEpTbzZtdHI5SlA5RWtxcGJOZXpuQmJhbEdnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639890672),
('hKjx2xR2h43MPiWNtrQ6HA5VXtKB4QzW2AEZTXmD', 10001, '103.142.198.16', 'okhttp/3.14.9', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6Im4yMk9DbVRXZVVIRFRrZ1dXZHZhYmxkbDRWcVVmVHlMQUNsSmREQzciO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQwNToiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2dldF9yaWRlcl9wcm9maWxlP3Rva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUpwYzNNaU9pSm9kSFJ3Y3pvdkwyTmhZbTFsTG1Oc2IyNWxZWEJ3YzI5c2RYUnBiMjV6TG1OdmJTOWhjR2t2Y21WbmFYTjBaWElpTENKcFlYUWlPakUyTXprNE16a3pOalVzSW1WNGNDSTZNVFkwTWpRMk56TTJOU3dpYm1KbUlqb3hOak01T0RNNU16WTFMQ0pxZEdraU9pSTVRbTA1V0ZjMlNFOWFTVE5RWmxsVklpd2ljM1ZpSWpveE1EQXdNU3dpY0hKMklqb2lNak5pWkRWak9EazBPV1kyTURCaFpHSXpPV1UzTURGak5EQXdPRGN5WkdJM1lUVTVOelptTnlKOS5lLXVULU9LbFRGV0ZqOG5ZZkdvR004aHI1QldYM2s3SXJqWnFVN2ZJck9vIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639890003),
('hzMG8j6eL7psJtREXEFy33TBKPo46KkiFOcERC0v', NULL, '66.249.84.117', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6InFRMWFFREdaTFd4b3hQV1NzaGYyVW1aeHVpdGpTZWNHd285WmxjSksiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890764),
('IMqknh0u630MdUsqLto8muV0pUbIbQ5jaVQotKLK', NULL, '66.102.8.49', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IjhOR3FoVFFUTTlsaUFGaERjZmdTTlRBVjlxV3ZWVWtwSDlJNWhzaVUiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890695),
('jBAOjuy6LFbyE8qxMvPJxqzQhyqz4M7kYoVPSBvJ', 10001, '103.142.198.16', 'okhttp/3.14.9', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IkJiOTdHb2YxaTZ6WjdlQkZQUWFsTXYweGw4TEpqZHBGb3F4N1dFaUoiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQ4OToiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL3VwZGF0ZXJpZGVybG9jYXRpb24/bGF0aXR1ZGU9MTkuMTQ0Mjc2Mjc1ODQ2NDk3JmxvbmdpdHVkZT03Mi44Mzc0NTg0NzY0MjQyMiZwb2x5bGluZT0mdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnBjM01pT2lKb2RIUndjem92TDJOaFltMWxMbU5zYjI1bFlYQndjMjlzZFhScGIyNXpMbU52YlM5aGNHa3ZjbVZuYVhOMFpYSWlMQ0pwWVhRaU9qRTJNems0TXprek5qVXNJbVY0Y0NJNk1UWTBNalEyTnpNMk5Td2libUptSWpveE5qTTVPRE01TXpZMUxDSnFkR2tpT2lJNVFtMDVXRmMyU0U5YVNUTlFabGxWSWl3aWMzVmlJam94TURBd01Td2ljSEoySWpvaU1qTmlaRFZqT0RrME9XWTJNREJoWkdJek9XVTNNREZqTkRBd09EY3laR0kzWVRVNU56Wm1OeUo5LmUtdVQtT0tsVEZXRmo4bllmR29HTThocjVCV1gzazdJcmpacVU3ZklyT28mdXNlcl90eXBlPXJpZGVyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639889818),
('JBAu2I2GGOD7ZktwFuHOFOm83h76jQqcA5ZfySMO', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6ImxrTVFiS3ZaQ01OcEVQd3phWkJMVVJiSlRXYVoyemtaMnhXeUZjQ0oiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQwNjoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2dldF9kcml2ZXJfcHJvZmlsZT90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKcGMzTWlPaUpvZEhSd2N6b3ZMMk5oWW0xbExtTnNiMjVsWVhCd2MyOXNkWFJwYjI1ekxtTnZiUzloY0drdmNtVm5hWE4wWlhJaUxDSnBZWFFpT2pFMk16azRORE13Tnpjc0ltVjRjQ0k2TVRZME1qUTNNVEEzTnl3aWJtSm1Jam94TmpNNU9EUXpNRGMzTENKcWRHa2lPaUpGYTNkak4wbERhR1pLVFUxUlZUQkJJaXdpYzNWaUlqb3hNREF3TWl3aWNISjJJam9pTWpOaVpEVmpPRGswT1dZMk1EQmhaR0l6T1dVM01ERmpOREF3T0RjeVpHSTNZVFU1TnpabU55SjkuMWJja1JPV0MwNzdsMlFwclhKU282bXRyOUpQOUVrcXBiTmV6bkJiYWxHZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639890031),
('jh60usUplQ3ueRq79xb54GeePZg4ppMTcE1b9mes', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6ImZheU43THA3b0dUcDRaeEJVMVZZRzBRcUllWXhzRmVaT3loWWVEY0giO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQyMDoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2hlYXRfbWFwP3RpbWV6b25lPUFzaWElMkZLb2xrYXRhJnRva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUpwYzNNaU9pSm9kSFJ3Y3pvdkwyTmhZbTFsTG1Oc2IyNWxZWEJ3YzI5c2RYUnBiMjV6TG1OdmJTOWhjR2t2Y21WbmFYTjBaWElpTENKcFlYUWlPakUyTXprNE5ETXdOemNzSW1WNGNDSTZNVFkwTWpRM01UQTNOeXdpYm1KbUlqb3hOak01T0RRek1EYzNMQ0pxZEdraU9pSkZhM2RqTjBsRGFHWktUVTFSVlRCQklpd2ljM1ZpSWpveE1EQXdNaXdpY0hKMklqb2lNak5pWkRWak9EazBPV1kyTURCaFpHSXpPV1UzTURGak5EQXdPRGN5WkdJM1lUVTVOelptTnlKOS4xYmNrUk9XQzA3N2wyUXByWEpTbzZtdHI5SlA5RWtxcGJOZXpuQmJhbEdnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639891865),
('JnWFwSxOJhcZCsSBCrqLSwpGUtZEAlJABsm9JO0Y', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IllSU1ZmRGl3UVprMHBwQ28xRkRCV1RZcm9VRzNvbndFS3hPVWxUTmMiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQyMDoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2hlYXRfbWFwP3RpbWV6b25lPUFzaWElMkZLb2xrYXRhJnRva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUpwYzNNaU9pSm9kSFJ3Y3pvdkwyTmhZbTFsTG1Oc2IyNWxZWEJ3YzI5c2RYUnBiMjV6TG1OdmJTOWhjR2t2Y21WbmFYTjBaWElpTENKcFlYUWlPakUyTXprNE5ETXdOemNzSW1WNGNDSTZNVFkwTWpRM01UQTNOeXdpYm1KbUlqb3hOak01T0RRek1EYzNMQ0pxZEdraU9pSkZhM2RqTjBsRGFHWktUVTFSVlRCQklpd2ljM1ZpSWpveE1EQXdNaXdpY0hKMklqb2lNak5pWkRWak9EazBPV1kyTURCaFpHSXpPV1UzTURGak5EQXdPRGN5WkdJM1lUVTVOelptTnlKOS4xYmNrUk9XQzA3N2wyUXByWEpTbzZtdHI5SlA5RWtxcGJOZXpuQmJhbEdnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639890939),
('jNzG9Dt0g8LluFZfU69okOXM6J1V5jUvZOndXn4i', NULL, '66.102.6.157', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IjFsN3NxNGpxdWFyblZzVllySWNUcVo0Y253NWpreW1tQjdpSHNMUlIiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890793),
('K6fDG0M4x5Ki6Kf0odQDMNp6GSJYbF1QBkzLfBO4', NULL, '108.177.7.80', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IjJmTHh4Tnlsd0xzT2JhTmNzcWNqSmU5ZGpra0NxbmRHNlFYcUpwVnoiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890615),
('kOn5CGXyi4C3TjqNtTHGo0deFoZQQty7DmTIJwyg', NULL, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IjFpRWlzUHpaUEc0ZjNUZWlIOWs5NzI4V2pNN2V2UG54WlZnbVdOM0wiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890029),
('l3Ue2DgApjWu5FjJ5kro8ynjWuHCSjJOkTjbmrzq', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6ImtlODdQMGFnNTlKRnJtVXR2OVR6Q2Y3ajV2eTl5Yk1qbEVybks2RmgiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQwODoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL3ZlaGljbGVfZGVzY3JpcHRpb25zP3Rva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUpwYzNNaU9pSm9kSFJ3Y3pvdkwyTmhZbTFsTG1Oc2IyNWxZWEJ3YzI5c2RYUnBiMjV6TG1OdmJTOWhjR2t2Y21WbmFYTjBaWElpTENKcFlYUWlPakUyTXprNE5ETXdOemNzSW1WNGNDSTZNVFkwTWpRM01UQTNOeXdpYm1KbUlqb3hOak01T0RRek1EYzNMQ0pxZEdraU9pSkZhM2RqTjBsRGFHWktUVTFSVlRCQklpd2ljM1ZpSWpveE1EQXdNaXdpY0hKMklqb2lNak5pWkRWak9EazBPV1kyTURCaFpHSXpPV1UzTURGak5EQXdPRGN5WkdJM1lUVTVOelptTnlKOS4xYmNrUk9XQzA3N2wyUXByWEpTbzZtdHI5SlA5RWtxcGJOZXpuQmJhbEdnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639890056),
('laHqMBbrGZqXW8maVThW3fDCs9QEnotT6zl230An', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IkhPMVFFM3Vha1FiaVZQWlllNEVOczQyVVRLTXhDaFE4bkZscm5NQjciO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQwNjoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2dldF9kcml2ZXJfcHJvZmlsZT90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKcGMzTWlPaUpvZEhSd2N6b3ZMMk5oWW0xbExtTnNiMjVsWVhCd2MyOXNkWFJwYjI1ekxtTnZiUzloY0drdmNtVm5hWE4wWlhJaUxDSnBZWFFpT2pFMk16azRORE13Tnpjc0ltVjRjQ0k2TVRZME1qUTNNVEEzTnl3aWJtSm1Jam94TmpNNU9EUXpNRGMzTENKcWRHa2lPaUpGYTNkak4wbERhR1pLVFUxUlZUQkJJaXdpYzNWaUlqb3hNREF3TWl3aWNISjJJam9pTWpOaVpEVmpPRGswT1dZMk1EQmhaR0l6T1dVM01ERmpOREF3T0RjeVpHSTNZVFU1TnpabU55SjkuMWJja1JPV0MwNzdsMlFwclhKU282bXRyOUpQOUVrcXBiTmV6bkJiYWxHZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639890052),
('lEop3CfgAU8fPnokuDyCj0KKeYpjp30nvgVqDIUM', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6ImFiN2pVcVJYdmROeWpNQkpGRDdraE43YUc0NTV5bWZ6OVJYcnpmZlMiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQwNjoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2dldF9kcml2ZXJfcHJvZmlsZT90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKcGMzTWlPaUpvZEhSd2N6b3ZMMk5oWW0xbExtTnNiMjVsWVhCd2MyOXNkWFJwYjI1ekxtTnZiUzloY0drdmNtVm5hWE4wWlhJaUxDSnBZWFFpT2pFMk16azRORE13Tnpjc0ltVjRjQ0k2TVRZME1qUTNNVEEzTnl3aWJtSm1Jam94TmpNNU9EUXpNRGMzTENKcWRHa2lPaUpGYTNkak4wbERhR1pLVFUxUlZUQkJJaXdpYzNWaUlqb3hNREF3TWl3aWNISjJJam9pTWpOaVpEVmpPRGswT1dZMk1EQmhaR0l6T1dVM01ERmpOREF3T0RjeVpHSTNZVFU1TnpabU55SjkuMWJja1JPV0MwNzdsMlFwclhKU282bXRyOUpQOUVrcXBiTmV6bkJiYWxHZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639891190),
('lhFVii1tqepJvQo7yvJ77Urmxu8c0K0OdGwr863e', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IjN5MXJNSFhDa0hEd2V0R2lZWWd5dDI0OUVzZ2RpMkVnQVRyakphSlIiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQyMDoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2hlYXRfbWFwP3RpbWV6b25lPUFzaWElMkZLb2xrYXRhJnRva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUpwYzNNaU9pSm9kSFJ3Y3pvdkwyTmhZbTFsTG1Oc2IyNWxZWEJ3YzI5c2RYUnBiMjV6TG1OdmJTOWhjR2t2Y21WbmFYTjBaWElpTENKcFlYUWlPakUyTXprNE5ETXdOemNzSW1WNGNDSTZNVFkwTWpRM01UQTNOeXdpYm1KbUlqb3hOak01T0RRek1EYzNMQ0pxZEdraU9pSkZhM2RqTjBsRGFHWktUVTFSVlRCQklpd2ljM1ZpSWpveE1EQXdNaXdpY0hKMklqb2lNak5pWkRWak9EazBPV1kyTURCaFpHSXpPV1UzTURGak5EQXdPRGN5WkdJM1lUVTVOelptTnlKOS4xYmNrUk9XQzA3N2wyUXByWEpTbzZtdHI5SlA5RWtxcGJOZXpuQmJhbEdnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639892806),
('lj1i1slz1dbUI25eKyxYNqn1r47DbmmQoJQ3TM8Q', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IlV5aUFKTzZhT3pCbTlzenE4ZFowYlowMVJUa1JHOVMyTGNXejRreWMiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQxMjoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2dldF9wZW5kaW5nX3RyaXBzP3BhZ2U9MSZ0b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKcGMzTWlPaUpvZEhSd2N6b3ZMMk5oWW0xbExtTnNiMjVsWVhCd2MyOXNkWFJwYjI1ekxtTnZiUzloY0drdmNtVm5hWE4wWlhJaUxDSnBZWFFpT2pFMk16azRORE13Tnpjc0ltVjRjQ0k2TVRZME1qUTNNVEEzTnl3aWJtSm1Jam94TmpNNU9EUXpNRGMzTENKcWRHa2lPaUpGYTNkak4wbERhR1pLVFUxUlZUQkJJaXdpYzNWaUlqb3hNREF3TWl3aWNISjJJam9pTWpOaVpEVmpPRGswT1dZMk1EQmhaR0l6T1dVM01ERmpOREF3T0RjeVpHSTNZVFU1TnpabU55SjkuMWJja1JPV0MwNzdsMlFwclhKU282bXRyOUpQOUVrcXBiTmV6bkJiYWxHZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639891195),
('LNaX4CBAajnAIsH9YE8NGjumZR3yDNJEpKhT7aiZ', NULL, '66.102.8.51', 'okhttp/3.14.9', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IkRYdUlrenBmRGRYWlZHcElCZFZTRjNxR0U0MXlVSUdrbm8yU080UHoiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk1OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1yaWRlciZ2ZXJzaW9uPTEuMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639889818),
('LpJ1RRm4mb47QIUkUZyv6qwfiaZd6sFhQkRhTorI', NULL, '66.102.8.51', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IjJFYVR6R0M2eXhXUk14SGptYk1VY0ZQMkl3dWxGQ3VzZmJrYk1pd2MiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890868),
('LQmJ1T4vhLaxHZ4fHtwNGqORPrssnhIFeNenVOXm', NULL, '66.102.6.157', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6Ilp5M3VCUzlPYUhCbWM4eTlyOVR1WEJUZVQxamRCTDVpWFhvVFhDdFUiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890842),
('lz5i2HKx2knad9u9H6tQi15YWiIXagmhQRiu9uCd', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IlpmYzlEYUNMcks3Nk9WMEJhUnFvRXZ3alhiSDlVWU9kRjhsTDVrN3ciO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQwNjoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2dldF9kcml2ZXJfcHJvZmlsZT90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKcGMzTWlPaUpvZEhSd2N6b3ZMMk5oWW0xbExtTnNiMjVsWVhCd2MyOXNkWFJwYjI1ekxtTnZiUzloY0drdmNtVm5hWE4wWlhJaUxDSnBZWFFpT2pFMk16azRORE13Tnpjc0ltVjRjQ0k2TVRZME1qUTNNVEEzTnl3aWJtSm1Jam94TmpNNU9EUXpNRGMzTENKcWRHa2lPaUpGYTNkak4wbERhR1pLVFUxUlZUQkJJaXdpYzNWaUlqb3hNREF3TWl3aWNISjJJam9pTWpOaVpEVmpPRGswT1dZMk1EQmhaR0l6T1dVM01ERmpOREF3T0RjeVpHSTNZVFU1TnpabU55SjkuMWJja1JPV0MwNzdsMlFwclhKU282bXRyOUpQOUVrcXBiTmV6bkJiYWxHZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639891204),
('mFF4JJdIBmA04S58rIT3MqF9dKXhSIcvVrKvBKUT', 10001, '103.142.198.16', 'okhttp/3.14.9', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IjE2ek9OYWZ1a1ZKQmEwRUdzdE9nc3NSeEZPQjZLVFo2OEU0U2tiUDIiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQxMzoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2dldF90cmlwX2RldGFpbHM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnBjM01pT2lKb2RIUndjem92TDJOaFltMWxMbU5zYjI1bFlYQndjMjlzZFhScGIyNXpMbU52YlM5aGNHa3ZjbVZuYVhOMFpYSWlMQ0pwWVhRaU9qRTJNems0TXprek5qVXNJbVY0Y0NJNk1UWTBNalEyTnpNMk5Td2libUptSWpveE5qTTVPRE01TXpZMUxDSnFkR2tpT2lJNVFtMDVXRmMyU0U5YVNUTlFabGxWSWl3aWMzVmlJam94TURBd01Td2ljSEoySWpvaU1qTmlaRFZqT0RrME9XWTJNREJoWkdJek9XVTNNREZqTkRBd09EY3laR0kzWVRVNU56Wm1OeUo5LmUtdVQtT0tsVEZXRmo4bllmR29HTThocjVCV1gzazdJcmpacVU3ZklyT28mdHJpcF9pZD0iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890008),
('N3a1PT39hNrql83exTvobgPuw3I3A96AwlG7aBjV', NULL, '108.177.7.87', 'okhttp/3.14.9', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6InFoaFN6VDVMOUppNjFXcnQydHhXandjTTRxNDFhWUpiRVd6RjBQVzkiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk1OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1yaWRlciZ2ZXJzaW9uPTEuMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639890585),
('n6vslKAHTjFz7E8mu1Db4TD8ZibdNMLhoWKaNzSj', NULL, '66.102.6.157', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6InRDYnlmQ0VHeFNhdXE3dlo4RlZVbWdPVklCQW9uTEJ1QjAxVDFlZlMiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890859),
('NdzYJPxpKmoEM2Ga112eAGFp3bxe0HfYAsosIek9', NULL, '66.102.8.49', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IjlNQkhMNXByOGxxUzNhdVFSZEU2V2E5UUx4djNETkpzcHFqNW40MkEiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890776),
('NerBKj1sq2cuokqbjcCDCFg2yX2BAqeHPQjlHnxv', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6InlneEgzVlNrTXZRY3VzWVpKekNzUWVBeU53TEtrUlU4VG5NMGhYeHYiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQwNjoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2dldF9kcml2ZXJfcHJvZmlsZT90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKcGMzTWlPaUpvZEhSd2N6b3ZMMk5oWW0xbExtTnNiMjVsWVhCd2MyOXNkWFJwYjI1ekxtTnZiUzloY0drdmNtVm5hWE4wWlhJaUxDSnBZWFFpT2pFMk16azRORE13Tnpjc0ltVjRjQ0k2TVRZME1qUTNNVEEzTnl3aWJtSm1Jam94TmpNNU9EUXpNRGMzTENKcWRHa2lPaUpGYTNkak4wbERhR1pLVFUxUlZUQkJJaXdpYzNWaUlqb3hNREF3TWl3aWNISjJJam9pTWpOaVpEVmpPRGswT1dZMk1EQmhaR0l6T1dVM01ERmpOREF3T0RjeVpHSTNZVFU1TnpabU55SjkuMWJja1JPV0MwNzdsMlFwclhKU282bXRyOUpQOUVrcXBiTmV6bkJiYWxHZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639891212),
('NKfyqXomud9m2yeB5bwSrgBM1UcDvmwZyB9eaYAL', NULL, '66.249.84.117', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IlBsa1haSU94MVBvTXYzYWIxWmdKbW9pVmxwVjZrejdxcnRyb2hKY1oiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890768),
('NNQEWSTughilAE5m52obgt47npgjoiPZ6PtMT7Oa', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6Im9oMm9wNjl0Y1cwNjdDY3pRbzVGUkRIdXUxVW0ySllrTktkcFQyTkoiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQ4MzoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL3VwZGF0ZWxvY2F0aW9uP2Nhcl9pZD0mbGF0aXR1ZGU9MTkuMTQ0Mjk1NSZsb25naXR1ZGU9NzIuODM3NDY0NSZzdGF0dXM9T2ZmbGluZSZ0b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKcGMzTWlPaUpvZEhSd2N6b3ZMMk5oWW0xbExtTnNiMjVsWVhCd2MyOXNkWFJwYjI1ekxtTnZiUzloY0drdmNtVm5hWE4wWlhJaUxDSnBZWFFpT2pFMk16azRORE13Tnpjc0ltVjRjQ0k2TVRZME1qUTNNVEEzTnl3aWJtSm1Jam94TmpNNU9EUXpNRGMzTENKcWRHa2lPaUpGYTNkak4wbERhR1pLVFUxUlZUQkJJaXdpYzNWaUlqb3hNREF3TWl3aWNISjJJam9pTWpOaVpEVmpPRGswT1dZMk1EQmhaR0l6T1dVM01ERmpOREF3T0RjeVpHSTNZVFU1TnpabU55SjkuMWJja1JPV0MwNzdsMlFwclhKU282bXRyOUpQOUVrcXBiTmV6bkJiYWxHZyZ1c2VyX3R5cGU9ZHJpdmVyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639890030),
('nPnbGSNxXcKGOD4zOc4s6HTVbs9Ur8RraSvKC1ct', NULL, '108.177.7.87', 'okhttp/3.14.9', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IkI4ODhBWHZpZ1U3VHpyOE1UOG82UHpwTFpSTjc0b1dzNDZBcjVwMHkiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk1OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1yaWRlciZ2ZXJzaW9uPTEuMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639890557),
('ogikkBxoraVdI8JrbYCMFDsr4HkmfZxZo7z7Zvq2', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IjlzQkxXNGVIY2w4d0VaaWZtSkh3aGJFRE1wdnlVdzc5MU5PYzdjNHkiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQwNjoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL3dlZWtseV90cmlwP3BhZ2U9MSZ0b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKcGMzTWlPaUpvZEhSd2N6b3ZMMk5oWW0xbExtTnNiMjVsWVhCd2MyOXNkWFJwYjI1ekxtTnZiUzloY0drdmNtVm5hWE4wWlhJaUxDSnBZWFFpT2pFMk16azRORE13Tnpjc0ltVjRjQ0k2TVRZME1qUTNNVEEzTnl3aWJtSm1Jam94TmpNNU9EUXpNRGMzTENKcWRHa2lPaUpGYTNkak4wbERhR1pLVFUxUlZUQkJJaXdpYzNWaUlqb3hNREF3TWl3aWNISjJJam9pTWpOaVpEVmpPRGswT1dZMk1EQmhaR0l6T1dVM01ERmpOREF3T0RjeVpHSTNZVFU1TnpabU55SjkuMWJja1JPV0MwNzdsMlFwclhKU282bXRyOUpQOUVrcXBiTmV6bkJiYWxHZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639891201),
('OJn1rRZsWT9D4RAW2WBWBKLOC1OPvMDUWSIYM5sU', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IjBteTZiUGhMSDg1RGdqdFpLanVWb1JwVmQ3bWR1b1BEejFuUDZhd08iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQyMDoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2hlYXRfbWFwP3RpbWV6b25lPUFzaWElMkZLb2xrYXRhJnRva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUpwYzNNaU9pSm9kSFJ3Y3pvdkwyTmhZbTFsTG1Oc2IyNWxZWEJ3YzI5c2RYUnBiMjV6TG1OdmJTOWhjR2t2Y21WbmFYTjBaWElpTENKcFlYUWlPakUyTXprNE5ETXdOemNzSW1WNGNDSTZNVFkwTWpRM01UQTNOeXdpYm1KbUlqb3hOak01T0RRek1EYzNMQ0pxZEdraU9pSkZhM2RqTjBsRGFHWktUVTFSVlRCQklpd2ljM1ZpSWpveE1EQXdNaXdpY0hKMklqb2lNak5pWkRWak9EazBPV1kyTURCaFpHSXpPV1UzTURGak5EQXdPRGN5WkdJM1lUVTVOelptTnlKOS4xYmNrUk9XQzA3N2wyUXByWEpTbzZtdHI5SlA5RWtxcGJOZXpuQmJhbEdnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639893638),
('ooqDv2VsIOAiYY47VXYP6sE4EUqlSKSGRWQxGpC4', NULL, '66.102.6.155', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6Im81MG1Tc2xxNlZkU3d0R0xCMU5vVXlZWUpHOTNXVHRuTmVLYWE2Zk4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890956),
('oQvbIOPfjvIwnDHNWaWyM0l5MyVKqTvJti0HMOEy', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IlJWc2l3bG45a2Z6aDZHS3NmME5ESm0zSVBDemUwZmp1M3hHU3k3RXQiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQ2MDoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2Vhcm5pbmdfY2hhcnQ/ZW5kX2RhdGU9MjAyMS0xMi0xOSZzdGFydF9kYXRlPTIwMjEtMTItMTMmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnBjM01pT2lKb2RIUndjem92TDJOaFltMWxMbU5zYjI1bFlYQndjMjlzZFhScGIyNXpMbU52YlM5aGNHa3ZjbVZuYVhOMFpYSWlMQ0pwWVhRaU9qRTJNems0TkRNd056Y3NJbVY0Y0NJNk1UWTBNalEzTVRBM055d2libUptSWpveE5qTTVPRFF6TURjM0xDSnFkR2tpT2lKRmEzZGpOMGxEYUdaS1RVMVJWVEJCSWl3aWMzVmlJam94TURBd01pd2ljSEoySWpvaU1qTmlaRFZqT0RrME9XWTJNREJoWkdJek9XVTNNREZqTkRBd09EY3laR0kzWVRVNU56Wm1OeUo5LjFiY2tST1dDMDc3bDJRcHJYSlNvNm10cjlKUDlFa3FwYk5lem5CYmFsR2cmdXNlcl90eXBlPWRyaXZlciI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639891249),
('PAIaCN9aJHakcCmpWKsMEmyQzbyXks54hfLCQ2l5', NULL, '66.249.84.117', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IjBPbG85anJtVm1NNzNMZ1lHTzlIYUFLT0gzblZrbzRVT2h4OTB5YUkiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890833),
('pE3ALrD9rGIHSEqb3fmoezfraeCNgix4vOQeq9Zu', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IkJqV1h3WTBiZERHT0FSUjRGeWk5Vk9YTERvcDRDRkJUa3VjS3EzVjciO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQyMDoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2hlYXRfbWFwP3RpbWV6b25lPUFzaWElMkZLb2xrYXRhJnRva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUpwYzNNaU9pSm9kSFJ3Y3pvdkwyTmhZbTFsTG1Oc2IyNWxZWEJ3YzI5c2RYUnBiMjV6TG1OdmJTOWhjR2t2Y21WbmFYTjBaWElpTENKcFlYUWlPakUyTXprNE5ETXdOemNzSW1WNGNDSTZNVFkwTWpRM01UQTNOeXdpYm1KbUlqb3hOak01T0RRek1EYzNMQ0pxZEdraU9pSkZhM2RqTjBsRGFHWktUVTFSVlRCQklpd2ljM1ZpSWpveE1EQXdNaXdpY0hKMklqb2lNak5pWkRWak9EazBPV1kyTURCaFpHSXpPV1UzTURGak5EQXdPRGN5WkdJM1lUVTVOelptTnlKOS4xYmNrUk9XQzA3N2wyUXByWEpTbzZtdHI5SlA5RWtxcGJOZXpuQmJhbEdnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639891232),
('PFGlL9iq78zuOqYozpnWmeq12Ed74WZDHAWo82G5', 10001, '103.142.198.16', 'okhttp/3.14.9', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6InFuUDJ6Nms2ZlNqa2VuZmJzVVM1UWVrNWhUdmROZERQcFI3NGpueU0iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQwNToiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2dldF9yaWRlcl9wcm9maWxlP3Rva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUpwYzNNaU9pSm9kSFJ3Y3pvdkwyTmhZbTFsTG1Oc2IyNWxZWEJ3YzI5c2RYUnBiMjV6TG1OdmJTOWhjR2t2Y21WbmFYTjBaWElpTENKcFlYUWlPakUyTXprNE16a3pOalVzSW1WNGNDSTZNVFkwTWpRMk56TTJOU3dpYm1KbUlqb3hOak01T0RNNU16WTFMQ0pxZEdraU9pSTVRbTA1V0ZjMlNFOWFTVE5RWmxsVklpd2ljM1ZpSWpveE1EQXdNU3dpY0hKMklqb2lNak5pWkRWak9EazBPV1kyTURCaFpHSXpPV1UzTURGak5EQXdPRGN5WkdJM1lUVTVOelptTnlKOS5lLXVULU9LbFRGV0ZqOG5ZZkdvR004aHI1QldYM2s3SXJqWnFVN2ZJck9vIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639890020);
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('PtD5qyCDMzIQoXBvT6eicIhRJ1tyb5NdnI8oud1a', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IjdFT09OYzFLVkVoNjRWbWY3a2NaZEJWVDd4ZEFGWXBWYVBrRWdDU3oiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQ2MDoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2Vhcm5pbmdfY2hhcnQ/ZW5kX2RhdGU9MjAyMS0xMi0xOSZzdGFydF9kYXRlPTIwMjEtMTItMTMmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnBjM01pT2lKb2RIUndjem92TDJOaFltMWxMbU5zYjI1bFlYQndjMjlzZFhScGIyNXpMbU52YlM5aGNHa3ZjbVZuYVhOMFpYSWlMQ0pwWVhRaU9qRTJNems0TkRNd056Y3NJbVY0Y0NJNk1UWTBNalEzTVRBM055d2libUptSWpveE5qTTVPRFF6TURjM0xDSnFkR2tpT2lKRmEzZGpOMGxEYUdaS1RVMVJWVEJCSWl3aWMzVmlJam94TURBd01pd2ljSEoySWpvaU1qTmlaRFZqT0RrME9XWTJNREJoWkdJek9XVTNNREZqTkRBd09EY3laR0kzWVRVNU56Wm1OeUo5LjFiY2tST1dDMDc3bDJRcHJYSlNvNm10cjlKUDlFa3FwYk5lem5CYmFsR2cmdXNlcl90eXBlPWRyaXZlciI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639891193),
('Q6wkGNIxFFWX4DS1oZtzhPFC4J5RmrcsmHctJ4pr', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IncxaGxOR0xsSUJqZEJjMEVNYmYyRUYySFdCR25XMmI2Y0pta3g3ckMiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQyMDoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2hlYXRfbWFwP3RpbWV6b25lPUFzaWElMkZLb2xrYXRhJnRva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUpwYzNNaU9pSm9kSFJ3Y3pvdkwyTmhZbTFsTG1Oc2IyNWxZWEJ3YzI5c2RYUnBiMjV6TG1OdmJTOWhjR2t2Y21WbmFYTjBaWElpTENKcFlYUWlPakUyTXprNE5ETXdOemNzSW1WNGNDSTZNVFkwTWpRM01UQTNOeXdpYm1KbUlqb3hOak01T0RRek1EYzNMQ0pxZEdraU9pSkZhM2RqTjBsRGFHWktUVTFSVlRCQklpd2ljM1ZpSWpveE1EQXdNaXdpY0hKMklqb2lNak5pWkRWak9EazBPV1kyTURCaFpHSXpPV1UzTURGak5EQXdPRGN5WkdJM1lUVTVOelptTnlKOS4xYmNrUk9XQzA3N2wyUXByWEpTbzZtdHI5SlA5RWtxcGJOZXpuQmJhbEdnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639893047),
('qeufLl23FLiTNc3cuddFepfqv1vZSW1ZwdpaEgK7', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6ImJyeTF0RnA5dzVoRTRGUW91QjFIT0NOZjZDVjBnQ0ZoWEZDcUZPRHIiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQyMDoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2hlYXRfbWFwP3RpbWV6b25lPUFzaWElMkZLb2xrYXRhJnRva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUpwYzNNaU9pSm9kSFJ3Y3pvdkwyTmhZbTFsTG1Oc2IyNWxZWEJ3YzI5c2RYUnBiMjV6TG1OdmJTOWhjR2t2Y21WbmFYTjBaWElpTENKcFlYUWlPakUyTXprNE5ETXdOemNzSW1WNGNDSTZNVFkwTWpRM01UQTNOeXdpYm1KbUlqb3hOak01T0RRek1EYzNMQ0pxZEdraU9pSkZhM2RqTjBsRGFHWktUVTFSVlRCQklpd2ljM1ZpSWpveE1EQXdNaXdpY0hKMklqb2lNak5pWkRWak9EazBPV1kyTURCaFpHSXpPV1UzTURGak5EQXdPRGN5WkdJM1lUVTVOelptTnlKOS4xYmNrUk9XQzA3N2wyUXByWEpTbzZtdHI5SlA5RWtxcGJOZXpuQmJhbEdnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639891626),
('QEUZW3IiC0xV18C09PFd9xSP1EBturc3VjXCzTAZ', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IkpwYWRiWjNZbEZvSkhaOUVNVnNsWXBOMWRncU9lN2Q2UjFkdmxoMnIiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQwNjoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2dldF9kcml2ZXJfcHJvZmlsZT90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKcGMzTWlPaUpvZEhSd2N6b3ZMMk5oWW0xbExtTnNiMjVsWVhCd2MyOXNkWFJwYjI1ekxtTnZiUzloY0drdmNtVm5hWE4wWlhJaUxDSnBZWFFpT2pFMk16azRORE13Tnpjc0ltVjRjQ0k2TVRZME1qUTNNVEEzTnl3aWJtSm1Jam94TmpNNU9EUXpNRGMzTENKcWRHa2lPaUpGYTNkak4wbERhR1pLVFUxUlZUQkJJaXdpYzNWaUlqb3hNREF3TWl3aWNISjJJam9pTWpOaVpEVmpPRGswT1dZMk1EQmhaR0l6T1dVM01ERmpOREF3T0RjeVpHSTNZVFU1TnpabU55SjkuMWJja1JPV0MwNzdsMlFwclhKU282bXRyOUpQOUVrcXBiTmV6bkJiYWxHZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639890043),
('qFYNkDFeiN86xzYxEY4gUYSt1yJx5BgpsBLFFArh', NULL, '108.177.7.87', 'okhttp/3.14.9', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6InBlQVpaNGNQWThqWk92VUhHcDh5RXA2eHJFTHZKdE5iQWVqVDVQa1IiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk1OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1yaWRlciZ2ZXJzaW9uPTEuMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639890718),
('QKJgPUag2OBhTs19nYt9rVzYS6ZjsoghHg3bGxCf', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6ImEwTXc0YkEybG9RaXpJZjl5NTZtcWgySHZ0NmdOR2liR3pUR3JoMTMiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQyMDoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2hlYXRfbWFwP3RpbWV6b25lPUFzaWElMkZLb2xrYXRhJnRva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUpwYzNNaU9pSm9kSFJ3Y3pvdkwyTmhZbTFsTG1Oc2IyNWxZWEJ3YzI5c2RYUnBiMjV6TG1OdmJTOWhjR2t2Y21WbmFYTjBaWElpTENKcFlYUWlPakUyTXprNE5ETXdOemNzSW1WNGNDSTZNVFkwTWpRM01UQTNOeXdpYm1KbUlqb3hOak01T0RRek1EYzNMQ0pxZEdraU9pSkZhM2RqTjBsRGFHWktUVTFSVlRCQklpd2ljM1ZpSWpveE1EQXdNaXdpY0hKMklqb2lNak5pWkRWak9EazBPV1kyTURCaFpHSXpPV1UzTURGak5EQXdPRGN5WkdJM1lUVTVOelptTnlKOS4xYmNrUk9XQzA3N2wyUXByWEpTbzZtdHI5SlA5RWtxcGJOZXpuQmJhbEdnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639890030),
('qUCQAr4332eOsYHrHZtGNX79RHFtY2tDIj0TRIj6', NULL, '66.102.8.53', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IkhUbThIaHhoUHllWU1QU0xkcGdmYTB6bmxkemltUXhvS3FpWGRUV0YiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890948),
('r52okcioggmIL1M7kmNXO76ORrnzp1UdnAzq81Qx', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6Ik5LZHJockV5M1hYcEZuempOTTNNSGVtNjZIeEJWQUdhdng1Y042SEgiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQyMDoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2hlYXRfbWFwP3RpbWV6b25lPUFzaWElMkZLb2xrYXRhJnRva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUpwYzNNaU9pSm9kSFJ3Y3pvdkwyTmhZbTFsTG1Oc2IyNWxZWEJ3YzI5c2RYUnBiMjV6TG1OdmJTOWhjR2t2Y21WbmFYTjBaWElpTENKcFlYUWlPakUyTXprNE5ETXdOemNzSW1WNGNDSTZNVFkwTWpRM01UQTNOeXdpYm1KbUlqb3hOak01T0RRek1EYzNMQ0pxZEdraU9pSkZhM2RqTjBsRGFHWktUVTFSVlRCQklpd2ljM1ZpSWpveE1EQXdNaXdpY0hKMklqb2lNak5pWkRWak9EazBPV1kyTURCaFpHSXpPV1UzTURGak5EQXdPRGN5WkdJM1lUVTVOelptTnlKOS4xYmNrUk9XQzA3N2wyUXByWEpTbzZtdHI5SlA5RWtxcGJOZXpuQmJhbEdnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639894241),
('RraLblQWhryirzJhzYoGlmoTCnsxooZaDV26MxLZ', NULL, '108.177.7.80', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6ImFyUGEzaEdnTkxhMklXekgzOFFjZ1RLUDA0TmdNZzhtbHFuUjF5enciO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890634),
('Rv3jasP24SRmXUanlsIzEYqDRydESuxqIPOE8F06', 10001, '103.142.198.16', 'okhttp/3.14.9', 'YTo1OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6ImNSR1NobVJHMkRjWGpUZ3J0d003d0pSZTh3NHhSc0FXNlYwMWY3dmwiO3M6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639889823),
('rVZs50InGAvwmY34MgRU9rDW8WA9tKz5sfhDYtEF', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IlhhSUl2a1BTcGg2OFpjd1RXMHlGYkxPckdpMGtKNm0yQ0xGZzVsOVMiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQyMDoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2hlYXRfbWFwP3RpbWV6b25lPUFzaWElMkZLb2xrYXRhJnRva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUpwYzNNaU9pSm9kSFJ3Y3pvdkwyTmhZbTFsTG1Oc2IyNWxZWEJ3YzI5c2RYUnBiMjV6TG1OdmJTOWhjR2t2Y21WbmFYTjBaWElpTENKcFlYUWlPakUyTXprNE5ETXdOemNzSW1WNGNDSTZNVFkwTWpRM01UQTNOeXdpYm1KbUlqb3hOak01T0RRek1EYzNMQ0pxZEdraU9pSkZhM2RqTjBsRGFHWktUVTFSVlRCQklpd2ljM1ZpSWpveE1EQXdNaXdpY0hKMklqb2lNak5pWkRWak9EazBPV1kyTURCaFpHSXpPV1UzTURGak5EQXdPRGN5WkdJM1lUVTVOelptTnlKOS4xYmNrUk9XQzA3N2wyUXByWEpTbzZtdHI5SlA5RWtxcGJOZXpuQmJhbEdnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639893346),
('rwA8KjGYeQUkMSvbqddWlwOQVmUaFMQR4RqMZtwg', 10001, '103.142.198.16', 'okhttp/3.14.9', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IlBvbWJ1aTh6WTR1V0pETEhKcmNiUlk2R1c4NGRlc2o4WUZzVWIyQU4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjYxNToiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL3VwZGF0ZV9yaWRlcl9wcm9maWxlP2NvdW50cnlfY29kZT1JTiZlbWFpbF9pZD1jbG9uZWFwcHNvbHV0aW9ucyU0MGdtYWlsLmNvbSZmaXJzdF9uYW1lPUNsb25lJTIwQXBwJTIwU29sdXRpb25zJmxhc3RfbmFtZT1Vc2VyJm1vYmlsZV9udW1iZXI9ODQxOTkwNjA4NyZwcm9maWxlX2ltYWdlPWh0dHBzJTNBJTJGJTJGY2FibWUuY2xvbmVhcHBzb2x1dGlvbnMuY29tJTJGaW1hZ2VzJTJGdXNlci5qcGVnJnRva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUpwYzNNaU9pSm9kSFJ3Y3pvdkwyTmhZbTFsTG1Oc2IyNWxZWEJ3YzI5c2RYUnBiMjV6TG1OdmJTOWhjR2t2Y21WbmFYTjBaWElpTENKcFlYUWlPakUyTXprNE16a3pOalVzSW1WNGNDSTZNVFkwTWpRMk56TTJOU3dpYm1KbUlqb3hOak01T0RNNU16WTFMQ0pxZEdraU9pSTVRbTA1V0ZjMlNFOWFTVE5RWmxsVklpd2ljM1ZpSWpveE1EQXdNU3dpY0hKMklqb2lNak5pWkRWak9EazBPV1kyTURCaFpHSXpPV1UzTURGak5EQXdPRGN5WkdJM1lUVTVOelptTnlKOS5lLXVULU9LbFRGV0ZqOG5ZZkdvR004aHI1QldYM2s3SXJqWnFVN2ZJck9vIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639890001),
('rYpCNU1MDTAq458oL08f2kgjL5AURKrZ8NDOzOcU', NULL, '108.177.7.87', 'okhttp/3.14.9', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6ImxPTWFYbHlsNHNhVURsZGtCZ2FzYlF6NXF1QlRIZHhGYkdVRmpkdkoiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk1OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1yaWRlciZ2ZXJzaW9uPTEuMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639890601),
('S6oCiW9lXkkPpkiOuck1PCHfbuAFDc9YXXGTf3nG', NULL, '66.102.8.53', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IkhWNkdpVFJvemdnM21lcjgyWEM2VWQ2SmpHdWdGb3F6M0p5RGJaNUUiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890756),
('SAwlRm1XWS9OREAyyoK1pKL5E3GCrlscKUbdluZD', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6Im1nc2FCNkxoTlRtcDBYV0hDTjdUUUk4elI3UmU0WXlVM1RrNXJ3bk8iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQxNDoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2dldF9jb21wbGV0ZWRfdHJpcHM/cGFnZT0xJnRva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUpwYzNNaU9pSm9kSFJ3Y3pvdkwyTmhZbTFsTG1Oc2IyNWxZWEJ3YzI5c2RYUnBiMjV6TG1OdmJTOWhjR2t2Y21WbmFYTjBaWElpTENKcFlYUWlPakUyTXprNE5ETXdOemNzSW1WNGNDSTZNVFkwTWpRM01UQTNOeXdpYm1KbUlqb3hOak01T0RRek1EYzNMQ0pxZEdraU9pSkZhM2RqTjBsRGFHWktUVTFSVlRCQklpd2ljM1ZpSWpveE1EQXdNaXdpY0hKMklqb2lNak5pWkRWak9EazBPV1kyTURCaFpHSXpPV1UzTURGak5EQXdPRGN5WkdJM1lUVTVOelptTnlKOS4xYmNrUk9XQzA3N2wyUXByWEpTbzZtdHI5SlA5RWtxcGJOZXpuQmJhbEdnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639891252),
('sMGefJPGXTXmH8e7Y7YkBaptb3pVd2SdYP5Biyfv', NULL, '66.249.84.117', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IlhwR0pPbU5TSW95Q2lCUFl3UUtRZENYak96TTEwbFZ5bGR2SnpiYWkiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890825),
('SscnQYFaE4bbtxhF7fNdQUITsA2TXNdIRJ4XGQgh', 10001, '103.142.198.16', 'okhttp/3.14.9', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6Ilo2elo5eXhLZ0VzNnNrY3Z2ZklRczM1WmJkRU1JMjdZSzI1akV6NmkiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQxMzoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2dldF90cmlwX2RldGFpbHM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnBjM01pT2lKb2RIUndjem92TDJOaFltMWxMbU5zYjI1bFlYQndjMjlzZFhScGIyNXpMbU52YlM5aGNHa3ZjbVZuYVhOMFpYSWlMQ0pwWVhRaU9qRTJNems0TXprek5qVXNJbVY0Y0NJNk1UWTBNalEyTnpNMk5Td2libUptSWpveE5qTTVPRE01TXpZMUxDSnFkR2tpT2lJNVFtMDVXRmMyU0U5YVNUTlFabGxWSWl3aWMzVmlJam94TURBd01Td2ljSEoySWpvaU1qTmlaRFZqT0RrME9XWTJNREJoWkdJek9XVTNNREZqTkRBd09EY3laR0kzWVRVNU56Wm1OeUo5LmUtdVQtT0tsVEZXRmo4bllmR29HTThocjVCV1gzazdJcmpacVU3ZklyT28mdHJpcF9pZD0iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639889817),
('ssSK7ftni13um4y7loUkfFzcvQcnt1ZsmRgXgQi6', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6ImUwdWQ2MzBpdTZEY3BGUDZ2ZHhORHJZOFp4MndOcGoxN00wdUEwQXQiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQyMDoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2hlYXRfbWFwP3RpbWV6b25lPUFzaWElMkZLb2xrYXRhJnRva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUpwYzNNaU9pSm9kSFJ3Y3pvdkwyTmhZbTFsTG1Oc2IyNWxZWEJ3YzI5c2RYUnBiMjV6TG1OdmJTOWhjR2t2Y21WbmFYTjBaWElpTENKcFlYUWlPakUyTXprNE5ETXdOemNzSW1WNGNDSTZNVFkwTWpRM01UQTNOeXdpYm1KbUlqb3hOak01T0RRek1EYzNMQ0pxZEdraU9pSkZhM2RqTjBsRGFHWktUVTFSVlRCQklpd2ljM1ZpSWpveE1EQXdNaXdpY0hKMklqb2lNak5pWkRWak9EazBPV1kyTURCaFpHSXpPV1UzTURGak5EQXdPRGN5WkdJM1lUVTVOelptTnlKOS4xYmNrUk9XQzA3N2wyUXByWEpTbzZtdHI5SlA5RWtxcGJOZXpuQmJhbEdnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639892134),
('t0s57lAJpADisrMPEzYJhApnJC24BlKflwN83ZoT', NULL, '66.102.6.156', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IkhoZEhnYzdzQnpjRjNJY2FUb3VrblBZWlJhZEYzT3pIdXNITUFRTzYiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890907),
('T2CaLe0GftieTEmXqQAr4mXwJhopxClyrIqjAaIY', NULL, '66.102.8.51', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IndPTE5XbzJaRGNkQ3kzQWtXOVdDbEVBeDNadHlVUDM5bjJ5RzRoZmciO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890843),
('TEEP9DEiNQc2ncgc7z1Vf55Yfa0XRaeil6GhX5DY', NULL, '66.102.6.156', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6InFRZDNCUDZyR3F6a1RqdHIyb3VMOHJDeWVpUExIMXdUc3dWbmFucU8iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890808),
('TkXe0ZW1L4PzdDAlC34aj6zd1y5yuSzEUK4Pwajz', 10001, '103.142.198.16', 'okhttp/3.14.9', 'YTo1OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IkdMWWppdkRlWFlCMWRRbDl0T3R0dVR2UmE3d2I3TXNnQXR2WjFKdGYiO3M6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639890008),
('tU5BWNCLQdaHbBw3J3e8zJmI9tnIptCdmNAAoHe1', NULL, '66.102.8.49', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IjZ1RGNNN3JVMU9hV0o1UnBGT2R4UGpUaEduRlBGRFkzd2RGN0RQdlAiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890783),
('Tw7Svr84nR7e35XHYZpSr3Eys1Um2mehQYooCDpF', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IjE5T093VzdZZml2S2c4WGVtMkRnalBkYmRDRTRWSEdhbGdVek1qM3QiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQyMDoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2hlYXRfbWFwP3RpbWV6b25lPUFzaWElMkZLb2xrYXRhJnRva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUpwYzNNaU9pSm9kSFJ3Y3pvdkwyTmhZbTFsTG1Oc2IyNWxZWEJ3YzI5c2RYUnBiMjV6TG1OdmJTOWhjR2t2Y21WbmFYTjBaWElpTENKcFlYUWlPakUyTXprNE5ETXdOemNzSW1WNGNDSTZNVFkwTWpRM01UQTNOeXdpYm1KbUlqb3hOak01T0RRek1EYzNMQ0pxZEdraU9pSkZhM2RqTjBsRGFHWktUVTFSVlRCQklpd2ljM1ZpSWpveE1EQXdNaXdpY0hKMklqb2lNak5pWkRWak9EazBPV1kyTURCaFpHSXpPV1UzTURGak5EQXdPRGN5WkdJM1lUVTVOelptTnlKOS4xYmNrUk9XQzA3N2wyUXByWEpTbzZtdHI5SlA5RWtxcGJOZXpuQmJhbEdnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639893939),
('UDFG2Fn84GRMYUixPuF9cQfCnKxb7qRycK6RdsiS', 10001, '103.142.198.16', 'okhttp/3.14.9', 'YTo1OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6Ijc2eUVXaVNRaXo3amNkZ0Nidjc2dG0wNjU5UThDMFhQZ1FzaDAxY24iO3M6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639889817),
('ueGPVby5brDpQIFV6XiaKtxSYt1yapHAtZkTc80S', 10001, '103.142.198.16', 'okhttp/3.14.9', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6InA2SzVXRWpUZjRYdDZKQ0VvVEczS3NjTGJMa2I5bzFyalg1cm4yNDAiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjYxNToiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL3VwZGF0ZV9yaWRlcl9wcm9maWxlP2NvdW50cnlfY29kZT1JTiZlbWFpbF9pZD1jbG9uZWFwcHNvbHV0aW9ucyU0MGdtYWlsLmNvbSZmaXJzdF9uYW1lPUNsb25lJTIwQXBwJTIwU29sdXRpb25zJmxhc3RfbmFtZT1Vc2VyJm1vYmlsZV9udW1iZXI9ODQxOTkwNjA4NyZwcm9maWxlX2ltYWdlPWh0dHBzJTNBJTJGJTJGY2FibWUuY2xvbmVhcHBzb2x1dGlvbnMuY29tJTJGaW1hZ2VzJTJGdXNlci5qcGVnJnRva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUpwYzNNaU9pSm9kSFJ3Y3pvdkwyTmhZbTFsTG1Oc2IyNWxZWEJ3YzI5c2RYUnBiMjV6TG1OdmJTOWhjR2t2Y21WbmFYTjBaWElpTENKcFlYUWlPakUyTXprNE16a3pOalVzSW1WNGNDSTZNVFkwTWpRMk56TTJOU3dpYm1KbUlqb3hOak01T0RNNU16WTFMQ0pxZEdraU9pSTVRbTA1V0ZjMlNFOWFTVE5RWmxsVklpd2ljM1ZpSWpveE1EQXdNU3dpY0hKMklqb2lNak5pWkRWak9EazBPV1kyTURCaFpHSXpPV1UzTURGak5EQXdPRGN5WkdJM1lUVTVOelptTnlKOS5lLXVULU9LbFRGV0ZqOG5ZZkdvR004aHI1QldYM2s3SXJqWnFVN2ZJck9vIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639890018),
('UpFSc82qqO7H4foPOT5wpJut6V31Di1uy9A8LbFP', 10001, '103.142.198.16', 'okhttp/3.14.9', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6ImVpOHd3dVdzMENmUjJlY2lwbDhmVWtIbmVPa0JDMEtYYWw5WDY0TWYiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQwNToiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2dldF9yaWRlcl9wcm9maWxlP3Rva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUpwYzNNaU9pSm9kSFJ3Y3pvdkwyTmhZbTFsTG1Oc2IyNWxZWEJ3YzI5c2RYUnBiMjV6TG1OdmJTOWhjR2t2Y21WbmFYTjBaWElpTENKcFlYUWlPakUyTXprNE16a3pOalVzSW1WNGNDSTZNVFkwTWpRMk56TTJOU3dpYm1KbUlqb3hOak01T0RNNU16WTFMQ0pxZEdraU9pSTVRbTA1V0ZjMlNFOWFTVE5RWmxsVklpd2ljM1ZpSWpveE1EQXdNU3dpY0hKMklqb2lNak5pWkRWak9EazBPV1kyTURCaFpHSXpPV1UzTURGak5EQXdPRGN5WkdJM1lUVTVOelptTnlKOS5lLXVULU9LbFRGV0ZqOG5ZZkdvR004aHI1QldYM2s3SXJqWnFVN2ZJck9vIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639889823),
('VCyoYsWzgz2IAHOjNrdAwF6Z2mZQHmIJAGe0t1RM', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo1OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IllFMFdoU3FUbkNvcUdTTUVNRXB3dE54amRSYk5LR093aEtZYjZGWEYiO3M6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639891189),
('vICnuAPMiTYGQ9stw4K0UKXstW7xL17GwxZRes5L', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6InVXSmhuejN0VHlSRVdQU0NTd0pwdGpDTUQ0RWxnTWtXT1ZhOFp6TEkiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQwNjoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2dldF9kcml2ZXJfcHJvZmlsZT90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKcGMzTWlPaUpvZEhSd2N6b3ZMMk5oWW0xbExtTnNiMjVsWVhCd2MyOXNkWFJwYjI1ekxtTnZiUzloY0drdmNtVm5hWE4wWlhJaUxDSnBZWFFpT2pFMk16azRORE13Tnpjc0ltVjRjQ0k2TVRZME1qUTNNVEEzTnl3aWJtSm1Jam94TmpNNU9EUXpNRGMzTENKcWRHa2lPaUpGYTNkak4wbERhR1pLVFUxUlZUQkJJaXdpYzNWaUlqb3hNREF3TWl3aWNISjJJam9pTWpOaVpEVmpPRGswT1dZMk1EQmhaR0l6T1dVM01ERmpOREF3T0RjeVpHSTNZVFU1TnpabU55SjkuMWJja1JPV0MwNzdsMlFwclhKU282bXRyOUpQOUVrcXBiTmV6bkJiYWxHZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639891254),
('VMsqKHumGd6XnMSmojgniCvnLZn4N9az56dFTRQP', NULL, '66.102.8.51', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6ImIyRnFXZG5ZVDBhMWQ2cWh2bTlvS2JVcG9KbnhTTGZSQkxIUnJKREUiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890912),
('vpn8M7Cw8Mj5Ai5ZJxWWJqbQZ9kzZhoNXxQ3S0na', NULL, '66.102.7.87', 'okhttp/3.14.9', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6Ik52WjZCTTZwQXBZRGpGZUVnVFUzSHJyVjBtVG5tb3Q2YzBYMGFFRVEiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk1OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1yaWRlciZ2ZXJzaW9uPTEuMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639890130),
('vZ3a7HdiIiLfJBBtbylRwC6mNnyuANuNIJv9plfX', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IlpjRWIxaE52WmZ4ZGwwS2h4SFlsT1dHcTlEdXlDdTY1WGVVUXhQWUgiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQxNDoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2dldF9jb21wbGV0ZWRfdHJpcHM/cGFnZT0xJnRva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUpwYzNNaU9pSm9kSFJ3Y3pvdkwyTmhZbTFsTG1Oc2IyNWxZWEJ3YzI5c2RYUnBiMjV6TG1OdmJTOWhjR2t2Y21WbmFYTjBaWElpTENKcFlYUWlPakUyTXprNE5ETXdOemNzSW1WNGNDSTZNVFkwTWpRM01UQTNOeXdpYm1KbUlqb3hOak01T0RRek1EYzNMQ0pxZEdraU9pSkZhM2RqTjBsRGFHWktUVTFSVlRCQklpd2ljM1ZpSWpveE1EQXdNaXdpY0hKMklqb2lNak5pWkRWak9EazBPV1kyTURCaFpHSXpPV1UzTURGak5EQXdPRGN5WkdJM1lUVTVOelptTnlKOS4xYmNrUk9XQzA3N2wyUXByWEpTbzZtdHI5SlA5RWtxcGJOZXpuQmJhbEdnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639891196),
('WbMnumkw6RL2ltXMuEEyClpWnKOje9Oe5rkYCKgX', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo1OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IkNGZFZzUDdZMVgyZjM2anhoT2JoNTVweE40ZzRyOXBpbmdXc1Vya0UiO3M6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639891212),
('wJ2gO6Jlf9FzO13MFMchXxzT4gc0G1Wo9Dy7t6TO', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo1OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IkNyS25xdEROMkN5WGxreTVPZkxkU2w0M2lPUDlEeEo2TmFYMTFzdXgiO3M6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639890031),
('WMqFoBK5MVPw9rxcw1qqpbXEixs1fSZaphUHYUq5', NULL, '108.177.7.87', 'okhttp/3.14.9', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IktsVlE4QVlFTVBoSnVqSmptaGRIbTdwRGxKZnJ3SGpLNVMySWNRVnUiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk1OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1yaWRlciZ2ZXJzaW9uPTEuMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639890609),
('WRm5zoUzS0XShS3SsI3NY8TRuLdNE2NwYlXUF1Xj', NULL, '108.177.7.80', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IkpTQlRIdGtEVFg4WHlsWVRoc05pOFJ5WTZqenZBWlZzTVlPTUZWYkQiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890749),
('Xk5arC5s7iLWUhf0iDfMBNmSkyG6Qa2W8jduwbRl', NULL, '66.102.6.157', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6Iko4am5tWXE5V3dtSTcwd0FVTXRZcElUOGNTMGdmRVQ3aE5SekhGcW0iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890815),
('XkAc8pNUJihks14ZyY4QhFuMB37jgyR6SqTXjC84', NULL, '108.177.7.80', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6Im5iU1FqZ2liRzhGZER5SW1NWEZQclp6WnhXV3FKNnJ1Uk1YMnFSeGEiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890752),
('XUZ1SQIJ8VMd2TWH3nQMSzDy6cNQzp37qQNhrA12', NULL, '66.249.84.119', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IlQ0bk5jbFFPNHVOTmhMeEhNN3ZWbXZlYnJtVVd2RDFpUnB2VnZBQk0iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890690),
('xVHGZZqy0KG6IeSfwNLS4CZTtiRf7U0JDqIBvyGL', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6ImhLanBaWko2TEZLMTBkdnhkUHN6OTRCOHlCSzFkc25wenNjQjRXcTciO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQxMzoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2dldF90cmlwX2RldGFpbHM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnBjM01pT2lKb2RIUndjem92TDJOaFltMWxMbU5zYjI1bFlYQndjMjlzZFhScGIyNXpMbU52YlM5aGNHa3ZjbVZuYVhOMFpYSWlMQ0pwWVhRaU9qRTJNems0TkRNd056Y3NJbVY0Y0NJNk1UWTBNalEzTVRBM055d2libUptSWpveE5qTTVPRFF6TURjM0xDSnFkR2tpT2lKRmEzZGpOMGxEYUdaS1RVMVJWVEJCSWl3aWMzVmlJam94TURBd01pd2ljSEoySWpvaU1qTmlaRFZqT0RrME9XWTJNREJoWkdJek9XVTNNREZqTkRBd09EY3laR0kzWVRVNU56Wm1OeUo5LjFiY2tST1dDMDc3bDJRcHJYSlNvNm10cjlKUDlFa3FwYk5lem5CYmFsR2cmdHJpcF9pZD0iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890030),
('XZBw00hJ9Tm773wNaoJyKbSGeGlm9PnRxtrdjULM', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IlFqMVpSek53TWpGNXNSaDNHQ1NRMHg2T3hTVmI3OEw1UDhlbU9SdkQiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQwODoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL3ZlaGljbGVfZGVzY3JpcHRpb25zP3Rva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUpwYzNNaU9pSm9kSFJ3Y3pvdkwyTmhZbTFsTG1Oc2IyNWxZWEJ3YzI5c2RYUnBiMjV6TG1OdmJTOWhjR2t2Y21WbmFYTjBaWElpTENKcFlYUWlPakUyTXprNE5ETXdOemNzSW1WNGNDSTZNVFkwTWpRM01UQTNOeXdpYm1KbUlqb3hOak01T0RRek1EYzNMQ0pxZEdraU9pSkZhM2RqTjBsRGFHWktUVTFSVlRCQklpd2ljM1ZpSWpveE1EQXdNaXdpY0hKMklqb2lNak5pWkRWak9EazBPV1kyTURCaFpHSXpPV1UzTURGak5EQXdPRGN5WkdJM1lUVTVOelptTnlKOS4xYmNrUk9XQzA3N2wyUXByWEpTbzZtdHI5SlA5RWtxcGJOZXpuQmJhbEdnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639890036),
('y3LPFzX07XE0CFiPo4bwA8CgBuD567ZLFVjDkhUh', 10001, '103.142.198.16', 'okhttp/3.14.9', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6Im9YSFZRSVBUbHFscG40Mld6dWJVV2pBYVJsM0dpQlh6Ym5GTEx5RkMiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQwNToiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2dldF9yaWRlcl9wcm9maWxlP3Rva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUpwYzNNaU9pSm9kSFJ3Y3pvdkwyTmhZbTFsTG1Oc2IyNWxZWEJ3YzI5c2RYUnBiMjV6TG1OdmJTOWhjR2t2Y21WbmFYTjBaWElpTENKcFlYUWlPakUyTXprNE16a3pOalVzSW1WNGNDSTZNVFkwTWpRMk56TTJOU3dpYm1KbUlqb3hOak01T0RNNU16WTFMQ0pxZEdraU9pSTVRbTA1V0ZjMlNFOWFTVE5RWmxsVklpd2ljM1ZpSWpveE1EQXdNU3dpY0hKMklqb2lNak5pWkRWak9EazBPV1kyTURCaFpHSXpPV1UzTURGak5EQXdPRGN5WkdJM1lUVTVOelptTnlKOS5lLXVULU9LbFRGV0ZqOG5ZZkdvR004aHI1QldYM2s3SXJqWnFVN2ZJck9vIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639889817),
('yk9Dg1QZJdnDDMzltAJxB9xokgzsY5ZfelL3iz5U', 10001, '103.142.198.16', 'okhttp/3.14.9', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6Inh6b01RRlVBSllldmJkWGRsdGJQaVJjTzRmNVVUbzdKd3FQaHJteDUiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQ4OToiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL3VwZGF0ZXJpZGVybG9jYXRpb24/bGF0aXR1ZGU9MTkuMTQ0MzAwOTgxMDkxNzk2JmxvbmdpdHVkZT03Mi44Mzc0NjE0OTM5MDkzNyZwb2x5bGluZT0mdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnBjM01pT2lKb2RIUndjem92TDJOaFltMWxMbU5zYjI1bFlYQndjMjlzZFhScGIyNXpMbU52YlM5aGNHa3ZjbVZuYVhOMFpYSWlMQ0pwWVhRaU9qRTJNems0TXprek5qVXNJbVY0Y0NJNk1UWTBNalEyTnpNMk5Td2libUptSWpveE5qTTVPRE01TXpZMUxDSnFkR2tpT2lJNVFtMDVXRmMyU0U5YVNUTlFabGxWSWl3aWMzVmlJam94TURBd01Td2ljSEoySWpvaU1qTmlaRFZqT0RrME9XWTJNREJoWkdJek9XVTNNREZqTkRBd09EY3laR0kzWVRVNU56Wm1OeUo5LmUtdVQtT0tsVEZXRmo4bllmR29HTThocjVCV1gzazdJcmpacVU3ZklyT28mdXNlcl90eXBlPXJpZGVyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639889823),
('YonZGpwDwq03ZmLuwKk11w77WtohKqOvhUceG9K1', 10001, '103.142.198.16', 'okhttp/3.14.9', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6InJiR0xhN1ZiM2dGREV5RnNiV0FnMG1wUVBNYktXS3V0VWI2RmI1ZDkiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQxMzoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2dldF90cmlwX2RldGFpbHM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnBjM01pT2lKb2RIUndjem92TDJOaFltMWxMbU5zYjI1bFlYQndjMjlzZFhScGIyNXpMbU52YlM5aGNHa3ZjbVZuYVhOMFpYSWlMQ0pwWVhRaU9qRTJNems0TXprek5qVXNJbVY0Y0NJNk1UWTBNalEyTnpNMk5Td2libUptSWpveE5qTTVPRE01TXpZMUxDSnFkR2tpT2lJNVFtMDVXRmMyU0U5YVNUTlFabGxWSWl3aWMzVmlJam94TURBd01Td2ljSEoySWpvaU1qTmlaRFZqT0RrME9XWTJNREJoWkdJek9XVTNNREZqTkRBd09EY3laR0kzWVRVNU56Wm1OeUo5LmUtdVQtT0tsVEZXRmo4bllmR29HTThocjVCV1gzazdJcmpacVU3ZklyT28mdHJpcF9pZD0iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639889823),
('YTPLFLnlqnDW1xSrUAuD17fOHI7ljRvUfzi53dc4', 10001, '103.142.198.16', 'okhttp/3.14.9', 'YTo1OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IjJWamhqc2RYRXhpdjFEQzN4OWxxTW5wUGxPUUJGRnNDV3dsVVVzRGUiO3M6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639890015),
('Ze0WwHJbELAx7RrYoIX42wGwWneW4uT6ASvAyizj', NULL, '66.102.6.157', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6ImxYU0JHMzlja1BsdVpBb1JtZG5UYnBOZk1CYVpJUEJ4MzM5Mkc0ZUMiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890746),
('zXKoo1rSsEyVx49BY2C92lOcKrEB9JSO8ERKXKJF', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo1OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IkpYSzFoY1ZhQ2xwQVppM3NwMzN5ZG5IaDE3Y0RMdWdGbVdMYWdERWsiO3M6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639891204);

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `name`, `value`) VALUES
(1, 'site_name', 'New Taxi'),
(2, 'payment_currency', 'USD'),
(3, 'version', '1'),
(4, 'logo', 'logo.png'),
(5, 'page_logo', 'page_logo.png'),
(6, 'favicon', 'favicon.png'),
(7, 'driver_km', '5'),
(8, 'head_code', ''),
(9, 'admin_contact', '1234567890'),
(10, 'admin_country_code', '110'),
(11, 'site_url', 'http://newtaxi.seentechs.com/public/'),
(12, 'heat_map', 'On'),
(13, 'heat_map_hours', '3'),
(14, 'update_loc_interval', '10'),
(15, 'offline_hours', '1'),
(16, 'pickup_km', '3'),
(17, 'drop_km', '1'),
(18, 'max_waiting_time', '2'),
(19, 'social_logins', ''),
(20, 'otp_verification', '0'),
(21, 'covid_enable', '1'),
(22, 'driver_request_seconds', '10'),
(23, 'driver_request_limit', '10'),
(24, 'copyright_year', '2022'),
(25, 'copyright_url', 'https://seentechs.com'),
(26, 'copyright_name', 'Seen Technologies');

-- --------------------------------------------------------

--
-- Table structure for table `supports`
--

CREATE TABLE `supports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Owner` enum('Rider','Driver','All') COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supports`
--

INSERT INTO `supports` (`id`, `name`, `link`, `status`, `Owner`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Whatsapp', '918419906087', 'Active', 'All', 'whatsapp.png', NULL, NULL),
(2, 'Skype', '4', 'Inactive', 'All', 'skype.jpeg', NULL, NULL),
(3, 'Delete Account', '/rider_deletion', 'Active', 'Rider', 'category-image1668441212.png', NULL, NULL),
(4, 'Delete Account', '/driver_deletion', 'Active', 'Driver', 'category-image1675754098.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `telescope_entries`
--

CREATE TABLE `telescope_entries` (
  `sequence` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `family_hash` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `should_display_on_index` tinyint(1) NOT NULL DEFAULT 1,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `telescope_entries_tags`
--

CREATE TABLE `telescope_entries_tags` (
  `entry_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `telescope_monitoring`
--

CREATE TABLE `telescope_monitoring` (
  `tag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `toll_reasons`
--

CREATE TABLE `toll_reasons` (
  `id` int(10) UNSIGNED NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `toll_reasons`
--

INSERT INTO `toll_reasons` (`id`, `reason`, `status`) VALUES
(1, 'Other Fees', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `trips`
--

CREATE TABLE `trips` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `pool_id` int(10) UNSIGNED NOT NULL,
  `pickup_latitude` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pickup_longitude` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `drop_latitude` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `drop_longitude` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pickup_location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `drop_location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `car_id` int(10) UNSIGNED NOT NULL,
  `request_id` int(10) UNSIGNED NOT NULL,
  `driver_id` int(10) UNSIGNED NOT NULL,
  `trip_path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `map_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seats` tinyint(3) UNSIGNED NOT NULL,
  `total_time` decimal(7,2) NOT NULL,
  `total_km` decimal(7,2) NOT NULL,
  `time_fare` decimal(11,2) NOT NULL,
  `distance_fare` decimal(11,2) NOT NULL,
  `base_fare` decimal(11,2) NOT NULL,
  `additional_rider` int(10) UNSIGNED NOT NULL,
  `additional_rider_amount` decimal(11,2) NOT NULL,
  `peak_fare` decimal(11,2) NOT NULL,
  `peak_amount` decimal(11,2) NOT NULL,
  `driver_peak_amount` decimal(11,2) NOT NULL,
  `schedule_fare` decimal(11,2) NOT NULL,
  `access_fee` decimal(11,2) NOT NULL,
  `tips` decimal(11,2) NOT NULL DEFAULT 0.00,
  `waiting_charge` decimal(11,2) NOT NULL DEFAULT 0.00,
  `toll_reason_id` int(10) UNSIGNED DEFAULT NULL,
  `toll_fee` decimal(11,2) NOT NULL DEFAULT 0.00,
  `wallet_amount` decimal(11,2) NOT NULL,
  `promo_amount` decimal(11,2) NOT NULL,
  `subtotal_fare` decimal(11,2) NOT NULL,
  `total_fare` decimal(11,2) NOT NULL,
  `driver_payout` decimal(11,2) NOT NULL,
  `driver_or_company_commission` decimal(11,2) NOT NULL,
  `owe_amount` decimal(11,2) NOT NULL,
  `remaining_owe_amount` decimal(11,2) NOT NULL,
  `applied_owe_amount` decimal(11,2) NOT NULL,
  `to_trip_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `arrive_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `begin_trip` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_trip` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `paykey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_mode` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Braintree',
  `payment_status` enum('Pending','Completed','Trip Cancelled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `is_calculation` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `currency_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fare_estimation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Scheduled','Cancelled','Begin trip','End trip','Payment','Rating','Completed','Null') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Null',
  `otp` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Null',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trips`
--

INSERT INTO `trips` (`id`, `user_id`, `pool_id`, `pickup_latitude`, `pickup_longitude`, `drop_latitude`, `drop_longitude`, `pickup_location`, `drop_location`, `car_id`, `request_id`, `driver_id`, `trip_path`, `map_image`, `seats`, `total_time`, `total_km`, `time_fare`, `distance_fare`, `base_fare`, `additional_rider`, `additional_rider_amount`, `peak_fare`, `peak_amount`, `driver_peak_amount`, `schedule_fare`, `access_fee`, `tips`, `waiting_charge`, `toll_reason_id`, `toll_fee`, `wallet_amount`, `promo_amount`, `subtotal_fare`, `total_fare`, `driver_payout`, `driver_or_company_commission`, `owe_amount`, `remaining_owe_amount`, `applied_owe_amount`, `to_trip_id`, `arrive_time`, `begin_trip`, `end_trip`, `paykey`, `payment_mode`, `payment_status`, `is_calculation`, `currency_code`, `fare_estimation`, `status`, `otp`, `created_at`, `updated_at`) VALUES
(1, 10001, 0, '19.1417606', '72.8339683', '19.141765', '72.8339667', 'Opposite Dheeraj Gaurav Heights, Off Lokhandwala Link Road, Lashkariya Tower, Shakti nagar, Adarsh Nagar, Andheri West, Mumbai, Maharashtra 400058, India', 'Opposite Dheeraj Gaurav Heights, Off Lokhandwala Link Road, Lashkariya Tower, Shakti nagar, Adarsh Nagar, Andheri West, Mumbai, Maharashtra 400058, India', 3, 1, 10002, 'g`zsBmbr{LlDa@RKjAOrDc@rFg@n@Wd@Yh@e@JUJa@B_@Ia@Kw@Eq@?gBRcCj@uHLcBRe@JmAd@gDH{@Bo@Ey@SoAWgAmAeE}@uBiAcD]wAOy@QcAMc@hAA`IUxBE~@HbBCbACv@Aza@o@vKM|FAbCI|@M`A[rDcB|B}@dASdAMlAAj@@hFt@zEp@fEn@pBTl@GfALvCXD?HEP?zBT\\DFJpDTx@cBt@kBZk@dAoBj@aBLw@ZiCF{@P{EgAu@MMaAaB}@sBq@aBc@s@Ya@a@[_Ac@yBy@WSKIAA', 'ad275297.jpg', 0, '0.00', '0.36', '0.00', '0.36', '100.00', 0, '0.00', '0.00', '0.00', '0.00', '0.00', '10.04', '0.00', '0.00', NULL, '0.00', '110.40', '0.00', '100.36', '0.00', '90.32', '10.04', '0.00', '0.00', '0.00', '', '2021-12-18 21:27:17', '2021-12-18 21:27:32', '2021-12-18 21:27:51', '', 'Cash & Wallet', 'Completed', '1', 'INR', '{\"status\":\"success\",\"distance\":5427,\"time\":916}', 'Completed', '0', '2021-12-18 21:26:53', '2021-12-18 16:17:24'),
(2, 10001, 0, '19.1442764', '72.8374607', '19.1442672', '72.8374539', '25-A/B, Sultanabad Colony, Behram Baug, Jogeshwari West, Mumbai, Maharashtra 400102, India', '25-A/B, Sultanabad Colony, Behram Baug, Jogeshwari West, Mumbai, Maharashtra 400102, India', 3, 2, 10002, 'g`zsBmbr{LlDa@RKjAOrDc@rFg@n@Wd@Yh@e@JUJa@B_@Ia@Kw@Eq@?gBRcCj@uHLcBRe@JmAd@gDH{@Bo@Ey@SoAWgAmAeE}@uBiAcD]wAOy@QcAMc@hAA`IUxBE~@HbBCbACv@Aza@o@vKM|FAbCI|@M`A[rDcB|B}@dASdAMlAAj@@hFt@zEp@fEn@pBTl@GfALvCXD?HEP?zBT\\DFJpDTx@cBt@kBZk@dAoBj@aBLw@ZiCF{@P{EgAu@MMaAaB}@sBq@aBc@s@Ya@a@[_Ac@yBy@WSKIAA', 'f42291d5.jpg', 0, '0.00', '0.00', '0.00', '0.00', '100.00', 0, '0.00', '0.00', '0.00', '0.00', '0.00', '10.00', '0.00', '0.00', NULL, '0.00', '110.00', '0.00', '100.00', '0.00', '90.00', '10.00', '0.00', '0.00', '0.00', '', '2021-12-18 23:02:42', '2021-12-18 23:02:55', '2021-12-18 23:03:02', '', 'Cash & Wallet', 'Completed', '1', 'INR', '{\"status\":\"success\",\"distance\":5427,\"time\":916}', 'Completed', '0', '2021-12-18 23:02:10', '2021-12-18 17:33:48'),
(3, 10004, 0, '-0.7274304', '37.162018', '-0.7274559', '37.1620176', '75F6+2R Murang\'a, Kenya', '75F6+2R Murang\'a, Kenya', 1, 3, 10003, '', '3bba046b.jpg', 0, '0.00', '0.00', '0.00', '0.00', '5.00', 0, '0.00', '0.00', '0.00', '0.00', '0.00', '0.50', '0.00', '0.00', NULL, '0.00', '0.00', '0.00', '5.00', '5.50', '4.50', '0.50', '0.00', '0.00', '0.00', '', '2022-05-18 08:32:53', '2022-05-18 08:33:11', '2022-05-18 08:33:36', 'pi_3L0iKsJbZQ9xXEmX1oQWvo12', 'Stripe', 'Completed', '1', 'USD', '{\"status\":\"success\",\"distance\":98295,\"time\":6687}', 'Completed', '0', '2022-05-18 08:09:39', '2022-05-18 05:34:28'),
(4, 10004, 0, '-0.7282489', '37.158298', '-0.7282501', '37.1582946', '75F5+5GC, Murang\'a, Kenya', '75F5+5GC, Murang\'a, Kenya', 1, 4, 10003, 'remConxaFcBvNvAfEl@x@d@Zl@dABjBi@`BJpA\\zAI`@n@x@t@f@nFdHxEbEpF|AjDJpFs@pE{BbBgBnCkFbIcR`FiYLgIFkA|@iDbGaG`KkFvKsDhDYhCd@rCxCfFbNtAfKf@tN\\jI`@nBdAdBvBrAnEj@jM^pCg@|BkAlDyDfB_AnCKxF|ArE^tVsA|HGxGj@pG|AlTnJvCpBnFhItHfHnDtCjDdFhDnIpB`D`DlDpFbE`LlEhK|DbFlElEpGtFrHjHdF~FvBjHjAbILfGe@jKsCbPwFtYeK|PeG|JeCjHg@fILfb@hBzVdAbMjAnP|EfJ`BnGl@hMZxSk@jw@yDlLm@`KeBxYaIdI{AtDWdKLhH^va@vBxKV`OuB`a@cCfCL`Ct@rBzAjBpC`MpUlG|LpCtCfKjGzIhFfCjBbD|DtCnI|AvG|BfCdIlCrI`CpE|BnDfEdFrIlI~F|HfBtENnIaAlKsC~VaHbNcD|KOnKKnJkCrIuG~HaHtCsAbCe@|MPlMp@~PrAxSzEdf@~LnE^|Dc@|L}ClEw@zALzAr@jCpEhDvC|CbC~E|FpFvHtGrFtKvEnRdHzMfIjGxFxJzLlItPdEtLzCtHhFdI|KdK|EtCrJxDzJjBjMnAzSnCbHrBpKnFfOpKbIbFtNtL|DrD|JvGvMbFtWvGvL|EvFpCzO|GfKlD|KhFnUhP`]zM~X~KrKhI~J~IlJxGdQxGjIlAdY_@fIj@|OjExPzFzdAr]`]|Iv\\hIzTpG`\\zOlXnN`_@rRjS`M`TpPtSdStLdK~FvFvCbEvHtKpN~Rp\\f`@fUzVtRxShIhFlNvDnVhFfItBdHlDpEnDtV~YdR~TpClDdDdGbBlGl@fHNba@l@xNzAhRnAhK~Fl]pCnNfBbFzApCzFtGbVhNjRfKnHdGlIlK~EdElGrBdh@xLzo@jNjRfEhIhExExEpDnGtGjN|LlWnFpIjRnR~]bZjWjVndAlaAr^d]jKlIpPfOxMdM~DvE|BvFlCbLjIf^bJ|^vDfHbHpIfTzVjUrShQ|Vpa@tl@hPpTzDfE~DpCzKdExVhItDjBhJrI|V`VlZxYbKnKbKtN`ClH`@tTRlG~@dE|A`ExEdMnD~HzBvChHlLlJzPzFzFrOvLhO~XvPpW~EhGhErA`B`Bx@~AbBZ|Am@nBEx@\\pAzADh@k@bBjClG?tCdF|LxBhFj@E`LeErLqF`Aa@^|@At@hHbRxEnMTdChBdGtExKtFbMt@^hJyDvB_ANIFAt@SxFsBh@s@o@gB', '8f448512.jpg', 0, '1.00', '0.00', '1.00', '0.00', '4.00', 0, '0.00', '0.00', '0.00', '0.00', '0.00', '0.50', '0.00', '0.00', NULL, '0.00', '0.00', '0.00', '5.00', '5.50', '0.00', '0.50', '1.00', '0.00', '0.00', '', '2022-05-20 15:30:39', '2022-05-20 15:32:56', '2022-05-20 15:34:34', '', 'Cash', 'Completed', '1', 'USD', '{\"status\":\"success\",\"distance\":85805,\"time\":5491}', 'Completed', '0', '2022-05-20 15:30:26', '2022-05-20 12:36:02');

-- --------------------------------------------------------

--
-- Table structure for table `trip_toll_reasons`
--

CREATE TABLE `trip_toll_reasons` (
  `id` int(10) UNSIGNED NOT NULL,
  `trip_id` int(10) UNSIGNED NOT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('1','2') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` enum('Rider','Driver') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firebase_token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apple_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive','Pending','Car_details','Document_details') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_type` enum('1','2') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `referral_code` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `used_referral_code` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `country_code`, `gender`, `mobile_number`, `password`, `user_type`, `company_id`, `remember_token`, `firebase_token`, `fb_id`, `google_id`, `apple_id`, `status`, `device_type`, `device_id`, `referral_code`, `used_referral_code`, `currency_code`, `language`, `country_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(10001, 'Mr', 'Rider', 'rider@gmail.com', '254', '1', '254700207417', '$2y$10$0BPaz6RIdChKe8qZwodAK.awkTlrbN6veYvez6MHTWI9xycRaVloG', 'Rider', NULL, NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJpc3MiOiJmaXJlYmFzZS1hZG1pbnNkay10bWVkd0BjYWJtZS1jYWNhMi5pYW0uZ3NlcnZpY2VhY2NvdW50LmNvbSIsInN1YiI6ImZpcmViYXNlLWFkbWluc2RrLXRtZWR3QGNhYm1lLWNhY2EyLmlhbS5nc2VydmljZWFjY291bnQuY29tIiwiYXVkIjoiaHR0cHM6XC9cL2lkZW50aXR5dG9vbGtpdC5nb29nbGVhcGlzLmNvbVwvZ29vZ2xlLmlkZW50aXR5LmlkZW50aXR5dG9vbGtpdC52MS5JZGVudGl0eVRvb2xraXQiLCJ1aWQiOiJjbG9uZWFwcHNvbHV0aW9uc0BnbWFpbC5jb20gLSBSaWRlciIsImlhdCI6MTYzOTg5MDAwOCwiZXhwIjoxNjM5ODkzNjA4fQ.dE_NvHg3OSNXEPzxEVCRhjPpufWLxUyb6AOid6fq9SpB8iuFDVjTnbA7jLbGpb48jxH0F_Mj9CRb9Cy7cELIsqQ-cvXvfIMAhilnQuhod3YR0gWkQKlIhz_45Pb3slzGLXLQ7N_2TAkidfcf6x7Px6jjY1czxFpv2x49vI3j-o3-vLVrwcoHpusoB9JMMakkGS64UMx2Cpc1hUTC6eHXtum9mjFlBJe5C0g8k_nzCimM72rCd8e1WgD1r6w3XSSHFaw8fDExVQPZXqtcevCn0Jsg8Fk3U2eJXcGYTPn_abHr_gTLDSYym-t-W7NutgyOP9ww_TOKVXITYhvyUB-3qQ', NULL, NULL, NULL, 'Active', '2', 'c5Vl-2uyQ72IW-OoJBTh3K:APA91bHlp4NoYWuZYdayeez0qfsJJ4UCYHqx5gdYGnkC-H9s1Q_oUOlwOnmQHz5n3y8Fz0HDBVU_j_q8blWlIVITDvQDs9fW6bfcixxluCiEK7ruS8ZRC9d5oDXG_n3rHja2TS51uPaQ', 'QKPBGESSIW', '', 'INR', 'en', 110, '2021-12-18 13:56:05', '2022-05-20 04:31:19', NULL),
(10002, 'Mr', 'Driver', 'driver@gmail.com', '254', '1', '0797049280', '$2y$10$.jAwV1S8Kiw3ZmCgUlRdkOgk.uQMUnE.b6Vz87nnNVeNOEODxBC0K', 'Driver', 1, NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJpc3MiOiJmaXJlYmFzZS1hZG1pbnNkay1yM2FlZ0BuZXctdGF4aXMuaWFtLmdzZXJ2aWNlYWNjb3VudC5jb20iLCJzdWIiOiJmaXJlYmFzZS1hZG1pbnNkay1yM2FlZ0BuZXctdGF4aXMuaWFtLmdzZXJ2aWNlYWNjb3VudC5jb20iLCJhdWQiOiJodHRwczpcL1wvaWRlbnRpdHl0b29sa2l0Lmdvb2dsZWFwaXMuY29tXC9nb29nbGUuaWRlbnRpdHkuaWRlbnRpdHl0b29sa2l0LnYxLklkZW50aXR5VG9vbGtpdCIsInVpZCI6ImRyaXZlckBnbWFpbC5jb20gLSBEcml2ZXIiLCJpYXQiOjE2NTMwMzE2NjYsImV4cCI6MTY1MzAzNTI2Nn0.IUqLORkMCRjCi4__zpwh4IqM-NwTseWWXQvFZLYT2JMGkTw88s38iz5lXuxEc_yyk_5yhA6HETndvAg5s-9oUu1JY3OCL4eNcV3ALfl4T4iefJZpDMyjCIz30mgDXV9xBhHPr1xDff323AJCeb8MNdDoyrLeJTpvnM3Uw9NjJICrkNaOGpGPUgy8Qb-2UFxejdU3tGuEaSDlnXRFjke6I2Nxu4y3-EyjlhxSiEEN3J4qqnPZ4_pvZXkjE1R9ExDFCZYw5Bf4csU7NXXNllCriA43ZnnpYiVkhBYMaX-GvVZTnzabyIPWWzblimdt6YQx-yQ8XacuaL_qw3SDeZpQXw', NULL, NULL, NULL, 'Active', NULL, '', 'N2IYFPKMVC', '', 'USD', 'en', 110, '2021-12-18 14:57:57', '2022-05-20 04:27:54', NULL),
(10003, 'Test', 'Driver', 'devtwenties@gmail.com', '254', '1', '0797049288', '$2y$10$0b2E5v4/ex0DSJlPFnbJ/egfsrByh10GtmH4ZeGEv8lS1cUtU8ps.', 'Driver', 1, NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJpc3MiOiJmaXJlYmFzZS1hZG1pbnNkay1yM2FlZ0BuZXctdGF4aXMuaWFtLmdzZXJ2aWNlYWNjb3VudC5jb20iLCJzdWIiOiJmaXJlYmFzZS1hZG1pbnNkay1yM2FlZ0BuZXctdGF4aXMuaWFtLmdzZXJ2aWNlYWNjb3VudC5jb20iLCJhdWQiOiJodHRwczpcL1wvaWRlbnRpdHl0b29sa2l0Lmdvb2dsZWFwaXMuY29tXC9nb29nbGUuaWRlbnRpdHkuaWRlbnRpdHl0b29sa2l0LnYxLklkZW50aXR5VG9vbGtpdCIsInVpZCI6ImRldnR3ZW50aWVzQGdtYWlsLmNvbSAtIERyaXZlciIsImlhdCI6MTY1MzA5MjUyMywiZXhwIjoxNjUzMDk2MTIzfQ.puGEgI9e5hY1BNlDVJXtBq9Saz5zf3HS9xYrc6suk5UN76plzlch1DpthAp76xQacLSFZvyqHBXYJmhvoFsobM7CtErw3l1dawUbIs7EEY5NE8n6Y-9kWl_u0wXZiB1SIiKFjJYJnOcQXUsnRdYyDUMOsrd8iFsajuYNRnzELySxP2Y76e-G3_07WSjocYFDQ_AHMkXOiVhAKMzdmL2cGYG51IcSYBkZ3uwj9YgnW24aFwDRp7DXyW6VGOIrYmcHVxiAruMTzfXkzY2-l7jwMiVSWA2PjmGbfAph0YIskiwsRRiOzYK4urQMphehrNLI9z_crLcuoflBENxo56Ui5Q', NULL, NULL, NULL, 'Active', '2', 'fAUdDmyLQDK-DwoHIZr6Zq:APA91bHOklsJlGlm-Ygccw5Pj1FmxkCAQaXQkskrulET9jvWPxdgy8FLjvJLcIzc7NLnxn8OHzuIukU7cAR_KAizp9HmBe9v2o0aTX_g8WxGVhNoYAAL2ZvRTdA4Pwd_KBRdWPMMBoov', 'ZAIKZQ5JOU', NULL, 'USD', 'en', 110, '2022-05-18 04:19:07', '2022-05-20 21:22:03', NULL),
(10004, 'Test', 'User', 'rider@gmail.com', '254', '1', '0797049289', '$2y$10$yy0wsAsXeCVQI7Pi09/69.rJztOY6FU5Z5gpbNEbEVrhNsCX.o0mq', 'Rider', NULL, NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJpc3MiOiJmaXJlYmFzZS1hZG1pbnNkay1yM2FlZ0BuZXctdGF4aXMuaWFtLmdzZXJ2aWNlYWNjb3VudC5jb20iLCJzdWIiOiJmaXJlYmFzZS1hZG1pbnNkay1yM2FlZ0BuZXctdGF4aXMuaWFtLmdzZXJ2aWNlYWNjb3VudC5jb20iLCJhdWQiOiJodHRwczpcL1wvaWRlbnRpdHl0b29sa2l0Lmdvb2dsZWFwaXMuY29tXC9nb29nbGUuaWRlbnRpdHkuaWRlbnRpdHl0b29sa2l0LnYxLklkZW50aXR5VG9vbGtpdCIsInVpZCI6InJpZGVyQGdtYWlsLmNvbSAtIFJpZGVyIiwiaWF0IjoxNjUzMDgxMTc2LCJleHAiOjE2NTMwODQ3NzZ9.mIp5ne742oSiQJ4XlRG4BX5Mdind_YxJ5eOuzLsUT35mnn_OXCSF1tnc9ZI2SYK_2KMskYWruS0kBvmw1HqLjLdLtN9u3Rn4_QeiWAOt9yNSM1gBHdwc_lDMJp9leevVcXQRmOBdkCXTcFfLunMGMgtz0BT6TSTs7Xzg7cXvBu41GvokAqrcpdexxAWnyuLbUM8JodRpCFijkW0B22PkGx337rkFx9ycxlHKouZTtwy6ilW_SSJ7R4WttY_mHRt5xvEkyRvRbURHmuEtMgGb7wYTgj_34qyAnsljR1mwiiZykbiJSvFUpN0o_DpF6ESa5T5_xth2hZvgynG8IZBU5w', NULL, NULL, NULL, 'Active', '2', 'ezlVpKtJQDClafhc2KXeiQ:APA91bG94rzYWAvakjXQlWxZLS2aMWH-DrV8pPcmnj0JTL7fjyM4vbL0yq1Mai0LYBDatO6iD3jSqe30-tfqoPUzJhQr8XaaWDzh4W7C0jdrMKa5WHPGpUjyke4VaE4SGsGUwVqAxupd', 'RCQX0QW2QL', NULL, 'USD', 'en', 110, '2022-05-18 04:26:48', '2022-05-20 18:12:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_promo_code`
--

CREATE TABLE `users_promo_code` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `promo_code_id` int(10) UNSIGNED NOT NULL,
  `trip_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `vehicle_make_id` int(11) NOT NULL,
  `vehicle_model_id` int(11) NOT NULL,
  `vehicle_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehicle_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehicle_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehicle_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_type` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`id`, `user_id`, `company_id`, `vehicle_make_id`, `vehicle_model_id`, `vehicle_id`, `vehicle_type`, `vehicle_name`, `vehicle_number`, `is_active`, `year`, `color`, `default_type`, `status`) VALUES
(1, 10002, 1, 3, 5, '1,2,3,4', 'Micro,Mini,Prime,POOL', 'Nissan Terrano', 'DKR 882S', 1, '2020', 'Yellow', '1', 'Active'),
(2, 10003, 1, 3, 6, '1,2,3,4', 'Micro,Mini,Prime,POOL', 'Nissan Sunny', 'KCB 2822', 1, '2015', 'White', '1', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_make`
--

CREATE TABLE `vehicle_make` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `make_vehicle_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicle_make`
--

INSERT INTO `vehicle_make` (`id`, `make_vehicle_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Maruti', 'Active', '2021-12-18 12:35:23', '2021-12-18 12:35:23'),
(2, 'Hyundai', 'Active', '2021-12-18 12:35:23', '2021-12-18 12:35:23'),
(3, 'Nissan', 'Active', '2021-12-18 12:35:23', '2021-12-18 12:35:23');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_model`
--

CREATE TABLE `vehicle_model` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vehicle_make_id` int(11) NOT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicle_model`
--

INSERT INTO `vehicle_model` (`id`, `vehicle_make_id`, `model_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Swift', 'Active', '2021-12-18 12:35:23', '2021-12-18 12:35:23'),
(2, 1, 'Wagon R', 'Active', '2021-12-18 12:35:23', '2021-12-18 12:35:23'),
(3, 2, 'Elite i20', 'Active', '2021-12-18 12:35:23', '2021-12-18 12:35:23'),
(4, 2, 'Grand i10', 'Active', '2021-12-18 12:35:23', '2021-12-18 12:35:23'),
(5, 3, 'Terrano', 'Active', '2021-12-18 12:35:23', '2021-12-18 12:35:23'),
(6, 3, 'Sunny', 'Active', '2021-12-18 12:35:23', '2021-12-18 12:35:23');

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE `wallet` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `amount` decimal(7,2) NOT NULL,
  `currency_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paykey` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallet`
--

INSERT INTO `wallet` (`user_id`, `amount`, `currency_code`, `paykey`) VALUES
(10001, '1367.60', 'INR', NULL),
(10004, '8000.00', 'USD', 'pi_3L17nZJbZQ9xXEmX0ktW0JlI');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_username_unique` (`username`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `api_credentials`
--
ALTER TABLE `api_credentials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applied_referrals`
--
ALTER TABLE `applied_referrals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `applied_referrals_user_id_foreign` (`user_id`),
  ADD KEY `applied_referrals_currency_code_foreign` (`currency_code`);

--
-- Indexes for table `app_version`
--
ALTER TABLE `app_version`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cancel`
--
ALTER TABLE `cancel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cancel_trip_id_foreign` (`trip_id`),
  ADD KEY `cancel_user_id_foreign` (`user_id`),
  ADD KEY `cancel_cancel_reason_id_foreign` (`cancel_reason_id`);

--
-- Indexes for table `cancel_reasons`
--
ALTER TABLE `cancel_reasons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cancel_reason_translations`
--
ALTER TABLE `cancel_reason_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cancel_reason_translations_cancel_reason_id_locale_unique` (`cancel_reason_id`,`locale`),
  ADD KEY `cancel_reason_translations_locale_index` (`locale`);

--
-- Indexes for table `car_type`
--
ALTER TABLE `car_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `car_type_status_index` (`status`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `companies_country_id_foreign` (`country_id`),
  ADD KEY `companies_status_index` (`status`);

--
-- Indexes for table `company_documents`
--
ALTER TABLE `company_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_documents_company_id_foreign` (`company_id`);

--
-- Indexes for table `company_payout_credentials`
--
ALTER TABLE `company_payout_credentials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_payout_credentials_company_id_foreign` (`company_id`);

--
-- Indexes for table `company_payout_preference`
--
ALTER TABLE `company_payout_preference`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_payout_preference_company_id_foreign` (`company_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `country_short_name_unique` (`short_name`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `currency_code_unique` (`code`),
  ADD KEY `currency_status_default_currency_paypal_currency_index` (`status`,`default_currency`,`paypal_currency`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_status_index` (`status`);

--
-- Indexes for table `documents_langs`
--
ALTER TABLE `documents_langs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `documents_langs_documents_id_locale_unique` (`documents_id`,`locale`),
  ADD KEY `documents_langs_locale_index` (`locale`);

--
-- Indexes for table `driver_address`
--
ALTER TABLE `driver_address`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `driver_address_user_id_unique` (`user_id`);

--
-- Indexes for table `driver_documents`
--
ALTER TABLE `driver_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `driver_documents_type_vehicle_id_user_id_index` (`type`,`vehicle_id`,`user_id`);

--
-- Indexes for table `driver_location`
--
ALTER TABLE `driver_location`
  ADD PRIMARY KEY (`id`),
  ADD KEY `driver_location_user_id_foreign` (`user_id`),
  ADD KEY `driver_location_car_id_foreign` (`car_id`),
  ADD KEY `driver_location_status_latitude_longitude_index` (`status`,`latitude`,`longitude`);

--
-- Indexes for table `driver_owe_amounts`
--
ALTER TABLE `driver_owe_amounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `driver_owe_amounts_user_id_foreign` (`user_id`);

--
-- Indexes for table `driver_owe_amount_payments`
--
ALTER TABLE `driver_owe_amount_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `driver_owe_amount_payments_user_id_foreign` (`user_id`);

--
-- Indexes for table `driver_payment`
--
ALTER TABLE `driver_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `driver_payment_driver_id_foreign` (`driver_id`);

--
-- Indexes for table `email_settings`
--
ALTER TABLE `email_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emergency_sos`
--
ALTER TABLE `emergency_sos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emergency_sos_user_id_foreign` (`user_id`),
  ADD KEY `emergency_sos_country_id_foreign` (`country_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `filter_objects`
--
ALTER TABLE `filter_objects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `filter_objects_filter_id_foreign` (`filter_id`);

--
-- Indexes for table `filter_options`
--
ALTER TABLE `filter_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `filter_options_translations`
--
ALTER TABLE `filter_options_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `filter_options_translations_filter_option_id_foreign` (`filter_option_id`);

--
-- Indexes for table `help`
--
ALTER TABLE `help`
  ADD PRIMARY KEY (`id`),
  ADD KEY `help_category_id_foreign` (`category_id`);

--
-- Indexes for table `help_category`
--
ALTER TABLE `help_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `help_category_lang`
--
ALTER TABLE `help_category_lang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `help_category_lang_category_id_locale_unique` (`category_id`,`locale`),
  ADD KEY `help_category_lang_locale_index` (`locale`);

--
-- Indexes for table `help_subcategory`
--
ALTER TABLE `help_subcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `help_subcategory_category_id_foreign` (`category_id`);

--
-- Indexes for table `help_sub_category_lang`
--
ALTER TABLE `help_sub_category_lang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `help_sub_category_lang_sub_category_id_locale_unique` (`sub_category_id`,`locale`),
  ADD KEY `help_sub_category_lang_locale_index` (`locale`);

--
-- Indexes for table `help_translations`
--
ALTER TABLE `help_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `help_translations_help_id_locale_unique` (`help_id`,`locale`),
  ADD KEY `help_translations_locale_index` (`locale`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`);

--
-- Indexes for table `join_us`
--
ALTER TABLE `join_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`),
  ADD KEY `language_value_index` (`value`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manage_fare`
--
ALTER TABLE `manage_fare`
  ADD PRIMARY KEY (`id`),
  ADD KEY `manage_fare_currency_code_foreign` (`currency_code`);

--
-- Indexes for table `metas`
--
ALTER TABLE `metas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages_translations`
--
ALTER TABLE `pages_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_translations_pages_id_locale_unique` (`pages_id`,`locale`),
  ADD KEY `pages_translations_locale_index` (`locale`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_trip_id_foreign` (`trip_id`);

--
-- Indexes for table `payment_gateway`
--
ALTER TABLE `payment_gateway`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_method_user_id_foreign` (`user_id`);

--
-- Indexes for table `payout_credentials`
--
ALTER TABLE `payout_credentials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payout_credentials_type_index` (`type`);

--
-- Indexes for table `payout_preference`
--
ALTER TABLE `payout_preference`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peak_fare_details`
--
ALTER TABLE `peak_fare_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `peak_fare_details_fare_id_foreign` (`fare_id`),
  ADD KEY `peak_fare_details_day_start_time_end_time_index` (`day`,`start_time`,`end_time`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `pool_trips`
--
ALTER TABLE `pool_trips`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pool_trips_driver_id_foreign` (`driver_id`),
  ADD KEY `pool_trips_toll_reason_id_foreign` (`toll_reason_id`),
  ADD KEY `pool_trips_currency_code_foreign` (`currency_code`);

--
-- Indexes for table `profile_picture`
--
ALTER TABLE `profile_picture`
  ADD UNIQUE KEY `profile_picture_user_id_unique` (`user_id`);

--
-- Indexes for table `promo_code`
--
ALTER TABLE `promo_code`
  ADD PRIMARY KEY (`id`),
  ADD KEY `promo_code_currency_code_foreign` (`currency_code`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rating_trip_id_foreign` (`trip_id`),
  ADD KEY `rating_user_id_foreign` (`user_id`),
  ADD KEY `rating_driver_id_foreign` (`driver_id`);

--
-- Indexes for table `referral_settings`
--
ALTER TABLE `referral_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referral_users`
--
ALTER TABLE `referral_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `referral_users_user_id_foreign` (`user_id`),
  ADD KEY `referral_users_referral_id_foreign` (`referral_id`),
  ADD KEY `referral_users_currency_code_foreign` (`currency_code`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `request_user_id_foreign` (`user_id`),
  ADD KEY `request_car_id_foreign` (`car_id`),
  ADD KEY `request_driver_id_foreign` (`driver_id`),
  ADD KEY `request_status_index` (`status`);

--
-- Indexes for table `rider_location`
--
ALTER TABLE `rider_location`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rider_location_user_id_unique` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `schedule_cancel`
--
ALTER TABLE `schedule_cancel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schedule_cancel_schedule_ride_id_foreign` (`schedule_ride_id`),
  ADD KEY `schedule_cancel_cancel_reason_id_foreign` (`cancel_reason_id`);

--
-- Indexes for table `schedule_ride`
--
ALTER TABLE `schedule_ride`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schedule_ride_user_id_foreign` (`user_id`),
  ADD KEY `schedule_ride_company_id_foreign` (`company_id`),
  ADD KEY `schedule_ride_car_id_foreign` (`car_id`),
  ADD KEY `schedule_ride_status_index` (`status`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supports`
--
ALTER TABLE `supports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supports_status_index` (`status`);

--
-- Indexes for table `telescope_entries`
--
ALTER TABLE `telescope_entries`
  ADD PRIMARY KEY (`sequence`),
  ADD UNIQUE KEY `telescope_entries_uuid_unique` (`uuid`),
  ADD KEY `telescope_entries_batch_id_index` (`batch_id`),
  ADD KEY `telescope_entries_family_hash_index` (`family_hash`),
  ADD KEY `telescope_entries_created_at_index` (`created_at`),
  ADD KEY `telescope_entries_type_should_display_on_index_index` (`type`,`should_display_on_index`);

--
-- Indexes for table `telescope_entries_tags`
--
ALTER TABLE `telescope_entries_tags`
  ADD KEY `telescope_entries_tags_entry_uuid_tag_index` (`entry_uuid`,`tag`),
  ADD KEY `telescope_entries_tags_tag_index` (`tag`);

--
-- Indexes for table `toll_reasons`
--
ALTER TABLE `toll_reasons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trips`
--
ALTER TABLE `trips`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trips_user_id_foreign` (`user_id`),
  ADD KEY `trips_car_id_foreign` (`car_id`),
  ADD KEY `trips_request_id_foreign` (`request_id`),
  ADD KEY `trips_driver_id_foreign` (`driver_id`),
  ADD KEY `trips_toll_reason_id_foreign` (`toll_reason_id`),
  ADD KEY `trips_currency_code_foreign` (`currency_code`);

--
-- Indexes for table `trip_toll_reasons`
--
ALTER TABLE `trip_toll_reasons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trip_toll_reasons_trip_id_foreign` (`trip_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_fb_id_unique` (`fb_id`),
  ADD UNIQUE KEY `users_google_id_unique` (`google_id`),
  ADD UNIQUE KEY `users_apple_id_unique` (`apple_id`),
  ADD KEY `users_company_id_foreign` (`company_id`),
  ADD KEY `users_country_id_foreign` (`country_id`),
  ADD KEY `users_status_user_type_index` (`status`,`user_type`);

--
-- Indexes for table `users_promo_code`
--
ALTER TABLE `users_promo_code`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_promo_code_user_id_foreign` (`user_id`),
  ADD KEY `users_promo_code_promo_code_id_foreign` (`promo_code_id`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_user_id_foreign` (`user_id`),
  ADD KEY `vehicle_company_id_foreign` (`company_id`),
  ADD KEY `vehicle_status_index` (`status`);

--
-- Indexes for table `vehicle_make`
--
ALTER TABLE `vehicle_make`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_model`
--
ALTER TABLE `vehicle_model`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
  ADD UNIQUE KEY `wallet_user_id_unique` (`user_id`),
  ADD KEY `wallet_currency_code_foreign` (`currency_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `api_credentials`
--
ALTER TABLE `api_credentials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `applied_referrals`
--
ALTER TABLE `applied_referrals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_version`
--
ALTER TABLE `app_version`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cancel`
--
ALTER TABLE `cancel`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cancel_reasons`
--
ALTER TABLE `cancel_reasons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `cancel_reason_translations`
--
ALTER TABLE `cancel_reason_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `car_type`
--
ALTER TABLE `car_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `company_documents`
--
ALTER TABLE `company_documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company_payout_credentials`
--
ALTER TABLE `company_payout_credentials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company_payout_preference`
--
ALTER TABLE `company_payout_preference`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `documents_langs`
--
ALTER TABLE `documents_langs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `driver_address`
--
ALTER TABLE `driver_address`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `driver_documents`
--
ALTER TABLE `driver_documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `driver_location`
--
ALTER TABLE `driver_location`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `driver_owe_amounts`
--
ALTER TABLE `driver_owe_amounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `driver_owe_amount_payments`
--
ALTER TABLE `driver_owe_amount_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `driver_payment`
--
ALTER TABLE `driver_payment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_settings`
--
ALTER TABLE `email_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `emergency_sos`
--
ALTER TABLE `emergency_sos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `filter_objects`
--
ALTER TABLE `filter_objects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `filter_options`
--
ALTER TABLE `filter_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `filter_options_translations`
--
ALTER TABLE `filter_options_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `help`
--
ALTER TABLE `help`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `help_category`
--
ALTER TABLE `help_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `help_category_lang`
--
ALTER TABLE `help_category_lang`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `help_subcategory`
--
ALTER TABLE `help_subcategory`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `help_sub_category_lang`
--
ALTER TABLE `help_sub_category_lang`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `help_translations`
--
ALTER TABLE `help_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `join_us`
--
ALTER TABLE `join_us`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `manage_fare`
--
ALTER TABLE `manage_fare`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `metas`
--
ALTER TABLE `metas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pages_translations`
--
ALTER TABLE `pages_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment_gateway`
--
ALTER TABLE `payment_gateway`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payout_credentials`
--
ALTER TABLE `payout_credentials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payout_preference`
--
ALTER TABLE `payout_preference`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `peak_fare_details`
--
ALTER TABLE `peak_fare_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `pool_trips`
--
ALTER TABLE `pool_trips`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `promo_code`
--
ALTER TABLE `promo_code`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `referral_settings`
--
ALTER TABLE `referral_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `referral_users`
--
ALTER TABLE `referral_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rider_location`
--
ALTER TABLE `rider_location`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `schedule_cancel`
--
ALTER TABLE `schedule_cancel`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schedule_ride`
--
ALTER TABLE `schedule_ride`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `supports`
--
ALTER TABLE `supports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `telescope_entries`
--
ALTER TABLE `telescope_entries`
  MODIFY `sequence` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `toll_reasons`
--
ALTER TABLE `toll_reasons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `trips`
--
ALTER TABLE `trips`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `trip_toll_reasons`
--
ALTER TABLE `trip_toll_reasons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10010;

--
-- AUTO_INCREMENT for table `users_promo_code`
--
ALTER TABLE `users_promo_code`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vehicle_make`
--
ALTER TABLE `vehicle_make`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vehicle_model`
--
ALTER TABLE `vehicle_model`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applied_referrals`
--
ALTER TABLE `applied_referrals`
  ADD CONSTRAINT `applied_referrals_currency_code_foreign` FOREIGN KEY (`currency_code`) REFERENCES `currency` (`code`),
  ADD CONSTRAINT `applied_referrals_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `cancel`
--
ALTER TABLE `cancel`
  ADD CONSTRAINT `cancel_cancel_reason_id_foreign` FOREIGN KEY (`cancel_reason_id`) REFERENCES `cancel_reasons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cancel_trip_id_foreign` FOREIGN KEY (`trip_id`) REFERENCES `trips` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cancel_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cancel_reason_translations`
--
ALTER TABLE `cancel_reason_translations`
  ADD CONSTRAINT `cancel_reason_translations_cancel_reason_id_foreign` FOREIGN KEY (`cancel_reason_id`) REFERENCES `cancel_reasons` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `companies`
--
ALTER TABLE `companies`
  ADD CONSTRAINT `companies_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `company_documents`
--
ALTER TABLE `company_documents`
  ADD CONSTRAINT `company_documents_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `company_payout_credentials`
--
ALTER TABLE `company_payout_credentials`
  ADD CONSTRAINT `company_payout_credentials_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `company_payout_preference`
--
ALTER TABLE `company_payout_preference`
  ADD CONSTRAINT `company_payout_preference_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `documents_langs`
--
ALTER TABLE `documents_langs`
  ADD CONSTRAINT `documents_langs_documents_id_foreign` FOREIGN KEY (`documents_id`) REFERENCES `documents` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `driver_address`
--
ALTER TABLE `driver_address`
  ADD CONSTRAINT `driver_address_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `driver_location`
--
ALTER TABLE `driver_location`
  ADD CONSTRAINT `driver_location_car_id_foreign` FOREIGN KEY (`car_id`) REFERENCES `car_type` (`id`),
  ADD CONSTRAINT `driver_location_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `driver_owe_amounts`
--
ALTER TABLE `driver_owe_amounts`
  ADD CONSTRAINT `driver_owe_amounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `driver_owe_amount_payments`
--
ALTER TABLE `driver_owe_amount_payments`
  ADD CONSTRAINT `driver_owe_amount_payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `driver_payment`
--
ALTER TABLE `driver_payment`
  ADD CONSTRAINT `driver_payment_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `emergency_sos`
--
ALTER TABLE `emergency_sos`
  ADD CONSTRAINT `emergency_sos_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `emergency_sos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `filter_objects`
--
ALTER TABLE `filter_objects`
  ADD CONSTRAINT `filter_objects_filter_id_foreign` FOREIGN KEY (`filter_id`) REFERENCES `filter_options` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `filter_options_translations`
--
ALTER TABLE `filter_options_translations`
  ADD CONSTRAINT `filter_options_translations_filter_option_id_foreign` FOREIGN KEY (`filter_option_id`) REFERENCES `filter_options` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `help`
--
ALTER TABLE `help`
  ADD CONSTRAINT `help_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `help_category` (`id`);

--
-- Constraints for table `help_category_lang`
--
ALTER TABLE `help_category_lang`
  ADD CONSTRAINT `help_category_lang_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `help_category` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `help_subcategory`
--
ALTER TABLE `help_subcategory`
  ADD CONSTRAINT `help_subcategory_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `help_category` (`id`);

--
-- Constraints for table `help_sub_category_lang`
--
ALTER TABLE `help_sub_category_lang`
  ADD CONSTRAINT `help_sub_category_lang_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `help_subcategory` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `help_translations`
--
ALTER TABLE `help_translations`
  ADD CONSTRAINT `help_translations_help_id_foreign` FOREIGN KEY (`help_id`) REFERENCES `help` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `manage_fare`
--
ALTER TABLE `manage_fare`
  ADD CONSTRAINT `manage_fare_currency_code_foreign` FOREIGN KEY (`currency_code`) REFERENCES `currency` (`code`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_trip_id_foreign` FOREIGN KEY (`trip_id`) REFERENCES `trips` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD CONSTRAINT `payment_method_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `peak_fare_details`
--
ALTER TABLE `peak_fare_details`
  ADD CONSTRAINT `peak_fare_details_fare_id_foreign` FOREIGN KEY (`fare_id`) REFERENCES `manage_fare` (`id`);

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pool_trips`
--
ALTER TABLE `pool_trips`
  ADD CONSTRAINT `pool_trips_currency_code_foreign` FOREIGN KEY (`currency_code`) REFERENCES `currency` (`code`),
  ADD CONSTRAINT `pool_trips_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pool_trips_toll_reason_id_foreign` FOREIGN KEY (`toll_reason_id`) REFERENCES `toll_reasons` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profile_picture`
--
ALTER TABLE `profile_picture`
  ADD CONSTRAINT `profile_picture_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `promo_code`
--
ALTER TABLE `promo_code`
  ADD CONSTRAINT `promo_code_currency_code_foreign` FOREIGN KEY (`currency_code`) REFERENCES `currency` (`code`);

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rating_trip_id_foreign` FOREIGN KEY (`trip_id`) REFERENCES `trips` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rating_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `referral_users`
--
ALTER TABLE `referral_users`
  ADD CONSTRAINT `referral_users_currency_code_foreign` FOREIGN KEY (`currency_code`) REFERENCES `currency` (`code`),
  ADD CONSTRAINT `referral_users_referral_id_foreign` FOREIGN KEY (`referral_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `referral_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `request`
--
ALTER TABLE `request`
  ADD CONSTRAINT `request_car_id_foreign` FOREIGN KEY (`car_id`) REFERENCES `car_type` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `request_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `request_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rider_location`
--
ALTER TABLE `rider_location`
  ADD CONSTRAINT `rider_location_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `schedule_cancel`
--
ALTER TABLE `schedule_cancel`
  ADD CONSTRAINT `schedule_cancel_cancel_reason_id_foreign` FOREIGN KEY (`cancel_reason_id`) REFERENCES `cancel_reasons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `schedule_cancel_schedule_ride_id_foreign` FOREIGN KEY (`schedule_ride_id`) REFERENCES `schedule_ride` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `schedule_ride`
--
ALTER TABLE `schedule_ride`
  ADD CONSTRAINT `schedule_ride_car_id_foreign` FOREIGN KEY (`car_id`) REFERENCES `car_type` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `schedule_ride_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `schedule_ride_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `telescope_entries_tags`
--
ALTER TABLE `telescope_entries_tags`
  ADD CONSTRAINT `telescope_entries_tags_entry_uuid_foreign` FOREIGN KEY (`entry_uuid`) REFERENCES `telescope_entries` (`uuid`) ON DELETE CASCADE;

--
-- Constraints for table `trips`
--
ALTER TABLE `trips`
  ADD CONSTRAINT `trips_car_id_foreign` FOREIGN KEY (`car_id`) REFERENCES `car_type` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `trips_currency_code_foreign` FOREIGN KEY (`currency_code`) REFERENCES `currency` (`code`),
  ADD CONSTRAINT `trips_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `trips_request_id_foreign` FOREIGN KEY (`request_id`) REFERENCES `request` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `trips_toll_reason_id_foreign` FOREIGN KEY (`toll_reason_id`) REFERENCES `toll_reasons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `trips_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `trip_toll_reasons`
--
ALTER TABLE `trip_toll_reasons`
  ADD CONSTRAINT `trip_toll_reasons_trip_id_foreign` FOREIGN KEY (`trip_id`) REFERENCES `trips` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `users_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users_promo_code`
--
ALTER TABLE `users_promo_code`
  ADD CONSTRAINT `users_promo_code_promo_code_id_foreign` FOREIGN KEY (`promo_code_id`) REFERENCES `promo_code` (`id`),
  ADD CONSTRAINT `users_promo_code_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD CONSTRAINT `vehicle_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `vehicle_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wallet`
--
ALTER TABLE `wallet`
  ADD CONSTRAINT `wallet_currency_code_foreign` FOREIGN KEY (`currency_code`) REFERENCES `currency` (`code`),
  ADD CONSTRAINT `wallet_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
