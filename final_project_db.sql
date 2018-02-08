-- phpMyAdmin SQL Dump
-- version 4.7.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 08, 2018 at 01:40 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final_project_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` varchar(255) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `countryId` int(10) UNSIGNED NOT NULL,
  `countryCode` varchar(2) NOT NULL,
  `countryName` varchar(100) DEFAULT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`countryId`, `countryCode`, `countryName`, `createdOn`) VALUES
(1, 'AD', 'Andorra', '2018-02-01 21:24:08'),
(2, 'AE', 'United Arab Emirates', '2018-02-01 21:24:08'),
(3, 'AF', 'Afghanistan', '2018-02-01 21:24:08'),
(4, 'AG', 'Antigua and Barbuda', '2018-02-01 21:24:08'),
(5, 'AI', 'Anguilla', '2018-02-01 21:24:08'),
(6, 'AL', 'Albania', '2018-02-01 21:24:08'),
(7, 'AM', 'Armenia', '2018-02-01 21:24:08'),
(8, 'AO', 'Angola', '2018-02-01 21:24:08'),
(9, 'AQ', 'Antarctica', '2018-02-01 21:24:08'),
(10, 'AR', 'Argentina', '2018-02-01 21:24:08'),
(11, 'AS', 'American Samoa', '2018-02-01 21:24:08'),
(12, 'AT', 'Austria', '2018-02-01 21:24:08'),
(13, 'AU', 'Australia', '2018-02-01 21:24:08'),
(14, 'AW', 'Aruba', '2018-02-01 21:24:08'),
(15, 'AX', 'Åland Islands', '2018-02-01 21:24:08'),
(16, 'AZ', 'Azerbaijan', '2018-02-01 21:24:08'),
(17, 'BA', 'Bosnia and Herzegovina', '2018-02-01 21:24:08'),
(18, 'BB', 'Barbados', '2018-02-01 21:24:08'),
(19, 'BD', 'Bangladesh', '2018-02-01 21:24:08'),
(20, 'BE', 'Belgium', '2018-02-01 21:24:08'),
(21, 'BF', 'Burkina Faso', '2018-02-01 21:24:08'),
(22, 'BG', 'Bulgaria', '2018-02-01 21:24:08'),
(23, 'BH', 'Bahrain', '2018-02-01 21:24:08'),
(24, 'BI', 'Burundi', '2018-02-01 21:24:08'),
(25, 'BJ', 'Benin', '2018-02-01 21:24:08'),
(26, 'BL', 'Saint Barthélemy', '2018-02-01 21:24:08'),
(27, 'BM', 'Bermuda', '2018-02-01 21:24:08'),
(28, 'BN', 'Brunei Darussalam', '2018-02-01 21:24:08'),
(29, 'BO', 'Bolivia', '2018-02-01 21:24:08'),
(30, 'BQ', 'Caribbean Netherlands ', '2018-02-01 21:24:08'),
(31, 'BR', 'Brazil', '2018-02-01 21:24:08'),
(32, 'BS', 'Bahamas', '2018-02-01 21:24:08'),
(33, 'BT', 'Bhutan', '2018-02-01 21:24:08'),
(34, 'BV', 'Bouvet Island', '2018-02-01 21:24:08'),
(35, 'BW', 'Botswana', '2018-02-01 21:24:08'),
(36, 'BY', 'Belarus', '2018-02-01 21:24:08'),
(37, 'BZ', 'Belize', '2018-02-01 21:24:08'),
(38, 'CA', 'Canada', '2018-02-01 21:24:08'),
(39, 'CC', 'Cocos (Keeling) Islands', '2018-02-01 21:24:08'),
(40, 'CD', 'Congo, Democratic Republic of', '2018-02-01 21:24:08'),
(41, 'CF', 'Central African Republic', '2018-02-01 21:24:08'),
(42, 'CG', 'Congo', '2018-02-01 21:24:08'),
(43, 'CH', 'Switzerland', '2018-02-01 21:24:08'),
(44, 'CI', 'Côte D’Ivoire', '2018-02-01 21:24:08'),
(45, 'CK', 'Cook Islands', '2018-02-01 21:24:08'),
(46, 'CL', 'Chile', '2018-02-01 21:24:08'),
(47, 'CM', 'Cameroon', '2018-02-01 21:24:08'),
(48, 'CN', 'China', '2018-02-01 21:24:08'),
(49, 'CO', 'Colombia', '2018-02-01 21:24:08'),
(50, 'CR', 'Costa Rica', '2018-02-01 21:24:08'),
(51, 'CU', 'Cuba', '2018-02-01 21:24:08'),
(52, 'CV', 'Cape Verde', '2018-02-01 21:24:08'),
(53, 'CW', 'Curaçao', '2018-02-01 21:24:08'),
(54, 'CX', 'Christmas Island', '2018-02-01 21:24:08'),
(55, 'CY', 'Cyprus', '2018-02-01 21:24:08'),
(56, 'CZ', 'Czech Republic', '2018-02-01 21:24:08'),
(57, 'DE', 'Germany', '2018-02-01 21:24:08'),
(58, 'DJ', 'Djibouti', '2018-02-01 21:24:08'),
(59, 'DK', 'Denmark', '2018-02-01 21:24:08'),
(60, 'DM', 'Dominica', '2018-02-01 21:24:08'),
(61, 'DO', 'Dominican Republic', '2018-02-01 21:24:08'),
(62, 'DZ', 'Algeria', '2018-02-01 21:24:08'),
(63, 'EC', 'Ecuador', '2018-02-01 21:24:08'),
(64, 'EE', 'Estonia', '2018-02-01 21:24:08'),
(65, 'EG', 'Egypt', '2018-02-01 21:24:08'),
(66, 'EH', 'Western Sahara', '2018-02-01 21:24:08'),
(67, 'ER', 'Eritrea', '2018-02-01 21:24:08'),
(68, 'ES', 'Spain', '2018-02-01 21:24:08'),
(69, 'ET', 'Ethiopia', '2018-02-01 21:24:08'),
(70, 'FI', 'Finland', '2018-02-01 21:24:08'),
(71, 'FJ', 'Fiji', '2018-02-01 21:24:08'),
(72, 'FK', 'Falkland Islands', '2018-02-01 21:24:08'),
(73, 'FM', 'Micronesia, Federated States of', '2018-02-01 21:24:08'),
(74, 'FO', 'Faroe Islands', '2018-02-01 21:24:08'),
(75, 'FR', 'France', '2018-02-01 21:24:08'),
(76, 'GA', 'Gabon', '2018-02-01 21:24:08'),
(77, 'GB', 'United Kingdom', '2018-02-01 21:24:08'),
(78, 'GD', 'Grenada', '2018-02-01 21:24:08'),
(79, 'GE', 'Georgia', '2018-02-01 21:24:08'),
(80, 'GF', 'French Guiana', '2018-02-01 21:24:08'),
(81, 'GG', 'Guernsey', '2018-02-01 21:24:08'),
(82, 'GH', 'Ghana', '2018-02-01 21:24:08'),
(83, 'GI', 'Gibraltar', '2018-02-01 21:24:08'),
(84, 'GL', 'Greenland', '2018-02-01 21:24:08'),
(85, 'GM', 'Gambia', '2018-02-01 21:24:08'),
(86, 'GN', 'Guinea', '2018-02-01 21:24:08'),
(87, 'GP', 'Guadeloupe', '2018-02-01 21:24:08'),
(88, 'GQ', 'Equatorial Guinea', '2018-02-01 21:24:08'),
(89, 'GR', 'Greece', '2018-02-01 21:24:08'),
(90, 'GS', 'South Georgia and the South Sandwich Islands', '2018-02-01 21:24:08'),
(91, 'GT', 'Guatemala', '2018-02-01 21:24:08'),
(92, 'GU', 'Guam', '2018-02-01 21:24:08'),
(93, 'GW', 'Guinea-Bissau', '2018-02-01 21:24:08'),
(94, 'GY', 'Guyana', '2018-02-01 21:24:08'),
(95, 'HK', 'Hong Kong', '2018-02-01 21:24:08'),
(96, 'HM', 'Heard and McDonald Islands', '2018-02-01 21:24:08'),
(97, 'HN', 'Honduras', '2018-02-01 21:24:08'),
(98, 'HR', 'Croatia', '2018-02-01 21:24:08'),
(99, 'HT', 'Haiti', '2018-02-01 21:24:08'),
(100, 'HU', 'Hungary', '2018-02-01 21:24:08'),
(101, 'ID', 'Indonesia', '2018-02-01 21:24:08'),
(102, 'IE', 'Ireland', '2018-02-01 21:24:08'),
(103, 'IL', 'Israel', '2018-02-01 21:24:08'),
(104, 'IM', 'Isle of Man', '2018-02-01 21:24:08'),
(105, 'IN', 'India', '2018-02-01 21:24:08'),
(106, 'IO', 'British Indian Ocean Territory', '2018-02-01 21:24:08'),
(107, 'IQ', 'Iraq', '2018-02-01 21:24:08'),
(108, 'IR', 'Iran', '2018-02-01 21:24:08'),
(109, 'IS', 'Iceland', '2018-02-01 21:24:08'),
(110, 'IT', 'Italy', '2018-02-01 21:24:08'),
(111, 'JE', 'Jersey', '2018-02-01 21:24:08'),
(112, 'JM', 'Jamaica', '2018-02-01 21:24:08'),
(113, 'JO', 'Jordan', '2018-02-01 21:24:08'),
(114, 'JP', 'Japan', '2018-02-01 21:24:08'),
(115, 'KE', 'Kenya', '2018-02-01 21:24:08'),
(116, 'KG', 'Kyrgyzstan', '2018-02-01 21:24:08'),
(117, 'KH', 'Cambodia', '2018-02-01 21:24:08'),
(118, 'KI', 'Kiribati', '2018-02-01 21:24:08'),
(119, 'KM', 'Comoros', '2018-02-01 21:24:08'),
(120, 'KN', 'Saint Kitts and Nevis', '2018-02-01 21:24:08'),
(121, 'KP', 'North Korea', '2018-02-01 21:24:08'),
(122, 'KR', 'South Korea', '2018-02-01 21:24:08'),
(123, 'KW', 'Kuwait', '2018-02-01 21:24:08'),
(124, 'KY', 'Cayman Islands', '2018-02-01 21:24:08'),
(125, 'KZ', 'Kazakhstan', '2018-02-01 21:24:08'),
(126, 'LA', 'Lao People’s Democratic Republic', '2018-02-01 21:24:08'),
(127, 'LB', 'Lebanon', '2018-02-01 21:24:08'),
(128, 'LC', 'Saint Lucia', '2018-02-01 21:24:08'),
(129, 'LI', 'Liechtenstein', '2018-02-01 21:24:08'),
(130, 'LK', 'Sri Lanka', '2018-02-01 21:24:08'),
(131, 'LR', 'Liberia', '2018-02-01 21:24:08'),
(132, 'LS', 'Lesotho', '2018-02-01 21:24:08'),
(133, 'LT', 'Lithuania', '2018-02-01 21:24:08'),
(134, 'LU', 'Luxembourg', '2018-02-01 21:24:08'),
(135, 'LV', 'Latvia', '2018-02-01 21:24:08'),
(136, 'LY', 'Libya', '2018-02-01 21:24:08'),
(137, 'MA', 'Morocco', '2018-02-01 21:24:08'),
(138, 'MC', 'Monaco', '2018-02-01 21:24:08'),
(139, 'MD', 'Moldova', '2018-02-01 21:24:08'),
(140, 'ME', 'Montenegro', '2018-02-01 21:24:08'),
(141, 'MF', 'Saint-Martin (France)', '2018-02-01 21:24:08'),
(142, 'MG', 'Madagascar', '2018-02-01 21:24:08'),
(143, 'MH', 'Marshall Islands', '2018-02-01 21:24:08'),
(144, 'MK', 'Macedonia', '2018-02-01 21:24:08'),
(145, 'ML', 'Mali', '2018-02-01 21:24:08'),
(146, 'MM', 'Myanmar', '2018-02-01 21:24:08'),
(147, 'MN', 'Mongolia', '2018-02-01 21:24:08'),
(148, 'MO', 'Macau', '2018-02-01 21:24:08'),
(149, 'MP', 'Northern Mariana Islands', '2018-02-01 21:24:08'),
(150, 'MQ', 'Martinique', '2018-02-01 21:24:08'),
(151, 'MR', 'Mauritania', '2018-02-01 21:24:08'),
(152, 'MS', 'Montserrat', '2018-02-01 21:24:08'),
(153, 'MT', 'Malta', '2018-02-01 21:24:08'),
(154, 'MU', 'Mauritius', '2018-02-01 21:24:08'),
(155, 'MV', 'Maldives', '2018-02-01 21:24:08'),
(156, 'MW', 'Malawi', '2018-02-01 21:24:08'),
(157, 'MX', 'Mexico', '2018-02-01 21:24:08'),
(158, 'MY', 'Malaysia', '2018-02-01 21:24:08'),
(159, 'MZ', 'Mozambique', '2018-02-01 21:24:08'),
(160, 'NA', 'Namibia', '2018-02-01 21:24:08'),
(161, 'NC', 'New Caledonia', '2018-02-01 21:24:08'),
(162, 'NE', 'Niger', '2018-02-01 21:24:08'),
(163, 'NF', 'Norfolk Island', '2018-02-01 21:24:08'),
(164, 'NG', 'Nigeria', '2018-02-01 21:24:08'),
(165, 'NI', 'Nicaragua', '2018-02-01 21:24:08'),
(166, 'NL', 'The Netherlands', '2018-02-01 21:24:08'),
(167, 'NO', 'Norway', '2018-02-01 21:24:08'),
(168, 'NP', 'Nepal', '2018-02-01 21:24:08'),
(169, 'NR', 'Nauru', '2018-02-01 21:24:08'),
(170, 'NU', 'Niue', '2018-02-01 21:24:08'),
(171, 'NZ', 'New Zealand', '2018-02-01 21:24:08'),
(172, 'OM', 'Oman', '2018-02-01 21:24:08'),
(173, 'PA', 'Panama', '2018-02-01 21:24:08'),
(174, 'PE', 'Peru', '2018-02-01 21:24:08'),
(175, 'PF', 'French Polynesia', '2018-02-01 21:24:08'),
(176, 'PG', 'Papua New Guinea', '2018-02-01 21:24:08'),
(177, 'PH', 'Philippines', '2018-02-01 21:24:08'),
(178, 'PK', 'Pakistan', '2018-02-01 21:24:08'),
(179, 'PL', 'Poland', '2018-02-01 21:24:08'),
(180, 'PM', 'St. Pierre and Miquelon', '2018-02-01 21:24:08'),
(181, 'PN', 'Pitcairn', '2018-02-01 21:24:08'),
(182, 'PR', 'Puerto Rico', '2018-02-01 21:24:08'),
(183, 'PS', 'Palestinian Territory, Occupied', '2018-02-01 21:24:08'),
(184, 'PT', 'Portugal', '2018-02-01 21:24:08'),
(185, 'PW', 'Palau', '2018-02-01 21:24:08'),
(186, 'PY', 'Paraguay', '2018-02-01 21:24:08'),
(187, 'QA', 'Qatar', '2018-02-01 21:24:08'),
(188, 'RE', 'Reunion', '2018-02-01 21:24:08'),
(189, 'RO', 'Romania', '2018-02-01 21:24:08'),
(190, 'RS', 'Serbia', '2018-02-01 21:24:08'),
(191, 'RU', 'Russian Federation', '2018-02-01 21:24:08'),
(192, 'RW', 'Rwanda', '2018-02-01 21:24:08'),
(193, 'SA', 'Saudi Arabia', '2018-02-01 21:24:08'),
(194, 'SB', 'Solomon Islands', '2018-02-01 21:24:08'),
(195, 'SC', 'Seychelles', '2018-02-01 21:24:08'),
(196, 'SD', 'Sudan', '2018-02-01 21:24:08'),
(197, 'SE', 'Sweden', '2018-02-01 21:24:08'),
(198, 'SG', 'Singapore', '2018-02-01 21:24:08'),
(199, 'SH', 'Saint Helena', '2018-02-01 21:24:08'),
(200, 'SI', 'Slovenia', '2018-02-01 21:24:08'),
(201, 'SJ', 'Svalbard and Jan Mayen Islands', '2018-02-01 21:24:08'),
(202, 'SK', 'Slovakia (Slovak Republic)', '2018-02-01 21:24:08'),
(203, 'SL', 'Sierra Leone', '2018-02-01 21:24:08'),
(204, 'SM', 'San Marino', '2018-02-01 21:24:08'),
(205, 'SN', 'Senegal', '2018-02-01 21:24:08'),
(206, 'SO', 'Somalia', '2018-02-01 21:24:08'),
(207, 'SR', 'Suriname', '2018-02-01 21:24:08'),
(208, 'SS', 'South Sudan', '2018-02-01 21:24:08'),
(209, 'ST', 'Sao Tome and Principe', '2018-02-01 21:24:08'),
(210, 'SV', 'El Salvador', '2018-02-01 21:24:08'),
(211, 'SX', 'Saint-Martin (Pays-Bas)', '2018-02-01 21:24:08'),
(212, 'SY', 'Syria', '2018-02-01 21:24:08'),
(213, 'SZ', 'Swaziland', '2018-02-01 21:24:08'),
(214, 'TC', 'Turks and Caicos Islands', '2018-02-01 21:24:08'),
(215, 'TD', 'Chad', '2018-02-01 21:24:08'),
(216, 'TF', 'French Southern Territories', '2018-02-01 21:24:08'),
(217, 'TG', 'Togo', '2018-02-01 21:24:08'),
(218, 'TH', 'Thailand', '2018-02-01 21:24:08'),
(219, 'TJ', 'Tajikistan', '2018-02-01 21:24:08'),
(220, 'TK', 'Tokelau', '2018-02-01 21:24:08'),
(221, 'TL', 'Timor-Leste', '2018-02-01 21:24:08'),
(222, 'TM', 'Turkmenistan', '2018-02-01 21:24:08'),
(223, 'TN', 'Tunisia', '2018-02-01 21:24:08'),
(224, 'TO', 'Tonga', '2018-02-01 21:24:08'),
(225, 'TR', 'Turkey', '2018-02-01 21:24:08'),
(226, 'TT', 'Trinidad and Tobago', '2018-02-01 21:24:08'),
(227, 'TV', 'Tuvalu', '2018-02-01 21:24:08'),
(228, 'TW', 'Taiwan', '2018-02-01 21:24:08'),
(229, 'TZ', 'Tanzania', '2018-02-01 21:24:08'),
(230, 'UA', 'Ukraine', '2018-02-01 21:24:08'),
(231, 'UG', 'Uganda', '2018-02-01 21:24:08'),
(232, 'UM', 'United States Minor Outlying Islands', '2018-02-01 21:24:08'),
(233, 'US', 'United States', '2018-02-01 21:24:08'),
(234, 'UY', 'Uruguay', '2018-02-01 21:24:08'),
(235, 'UZ', 'Uzbekistan', '2018-02-01 21:24:08'),
(236, 'VA', 'Vatican', '2018-02-01 21:24:08'),
(237, 'VC', 'Saint Vincent and the Grenadines', '2018-02-01 21:24:08'),
(238, 'VE', 'Venezuela', '2018-02-01 21:24:08'),
(239, 'VG', 'Virgin Islands (British)', '2018-02-01 21:24:08'),
(240, 'VI', 'Virgin Islands (U.S.)', '2018-02-01 21:24:08'),
(241, 'VN', 'Vietnam', '2018-02-01 21:24:08'),
(242, 'VU', 'Vanuatu', '2018-02-01 21:24:08'),
(243, 'WF', 'Wallis and Futuna Islands', '2018-02-01 21:24:08'),
(244, 'WS', 'Samoa', '2018-02-01 21:24:08'),
(245, 'YE', 'Yemen', '2018-02-01 21:24:08'),
(246, 'YT', 'Mayotte', '2018-02-01 21:24:08'),
(247, 'ZA', 'South Africa', '2018-02-01 21:24:08'),
(248, 'ZM', 'Zambia', '2018-02-01 21:24:08'),
(249, 'ZW', 'Zimbabwe', '2018-02-01 21:24:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `billing_address` varchar(255) DEFAULT NULL,
  `billing_city` varchar(255) DEFAULT NULL,
  `billing_country` varchar(255) DEFAULT NULL,
  `billing_zip_code` varchar(255) DEFAULT NULL,
  `contact_no` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shipping_address` varchar(255) DEFAULT NULL,
  `shipping_city` varchar(255) DEFAULT NULL,
  `shipping_zip_code` varchar(255) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `billing_address`, `billing_city`, `billing_country`, `billing_zip_code`, `contact_no`, `email`, `first_name`, `last_name`, `password`, `shipping_address`, `shipping_city`, `shipping_zip_code`, `created_on`, `updated_on`, `category_id`, `category_name`, `image`, `parent_id`) VALUES
(18, 'fsdgbnhmjk,l;mkjhgfd', 'AWERTYUIKJMNB ', NULL, '67890', '12', 'd@s.czaswGsxs', 'as', 'as', 'AS,AS', NULL, NULL, NULL, '2018-02-08 12:00:32', '2018-02-08 12:00:32', 0, NULL, NULL, NULL),
(19, 'fsdgbnhmjk,l;mkjhgfd', 'AWERTYUIKJMNB ', NULL, '67890', '12', 'd@s.czaswGsxssa', 'as', 'as', 'as,as', NULL, NULL, NULL, '2018-02-08 12:18:51', '2018-02-08 12:18:51', 0, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `parent_category` (`parent_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`countryId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `countryId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
