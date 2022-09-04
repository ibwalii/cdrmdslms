-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 04, 2022 at 08:34 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounting`
--

DROP TABLE IF EXISTS `accounting`;
CREATE TABLE IF NOT EXISTS `accounting` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `webinar_id` int(10) UNSIGNED DEFAULT NULL,
  `meeting_time_id` int(10) UNSIGNED DEFAULT NULL,
  `subscribe_id` int(10) UNSIGNED DEFAULT NULL,
  `promotion_id` int(10) UNSIGNED DEFAULT NULL,
  `registration_package_id` int(10) UNSIGNED DEFAULT NULL,
  `system` tinyint(1) NOT NULL DEFAULT 0,
  `tax` tinyint(1) NOT NULL DEFAULT 0,
  `amount` decimal(13,2) DEFAULT NULL,
  `type` enum('addiction','deduction') COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_account` enum('income','asset','subscribe','promotion','registration_package') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_type` enum('automatic','manual') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'automatic',
  `referred_user_id` int(10) UNSIGNED DEFAULT NULL,
  `is_affiliate_amount` tinyint(1) NOT NULL DEFAULT 0,
  `is_affiliate_commission` tinyint(1) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE,
  KEY `webinar_id` (`webinar_id`) USING BTREE,
  KEY `meeting_time_id` (`meeting_time_id`) USING BTREE,
  KEY `subscribe_id` (`subscribe_id`) USING BTREE,
  KEY `promotion_id` (`promotion_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=400 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `accounting`
--

INSERT INTO `accounting` (`id`, `user_id`, `creator_id`, `webinar_id`, `meeting_time_id`, `subscribe_id`, `promotion_id`, `registration_package_id`, `system`, `tax`, `amount`, `type`, `type_account`, `store_type`, `referred_user_id`, `is_affiliate_amount`, `is_affiliate_commission`, `description`, `created_at`) VALUES
(251, 996, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '500.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'offline payment approved', 1625944212),
(252, 996, NULL, NULL, 98, NULL, NULL, NULL, 0, 0, '165.00', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid for 1:30 hours of consultation', 1625944347),
(253, 996, NULL, NULL, 98, NULL, NULL, NULL, 0, 1, '15.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1625944347),
(254, 1015, NULL, NULL, 98, NULL, NULL, NULL, 0, 0, '120.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1625944347),
(255, 1015, NULL, NULL, 98, NULL, NULL, NULL, 1, 0, '30.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1625944347),
(256, 930, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '600.00', 'addiction', 'asset', 'manual', NULL, 0, 0, 'Gifts from the platform', 1625950715),
(257, 995, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '1000.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'offline payment approved', 1625950749),
(258, 995, NULL, NULL, 160, NULL, NULL, NULL, 0, 0, '110.00', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid for 1:00 hours of consultation', 1625952630),
(259, 995, NULL, NULL, 160, NULL, NULL, NULL, 0, 1, '10.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1625952630),
(260, 934, NULL, NULL, 160, NULL, NULL, NULL, 0, 0, '80.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1625952630),
(261, 934, NULL, NULL, 160, NULL, NULL, NULL, 1, 0, '20.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1625952630),
(262, 995, NULL, 2005, NULL, NULL, NULL, NULL, 0, 0, '11.00', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form Credit', 1625953197),
(263, 995, NULL, 2005, NULL, NULL, NULL, NULL, 0, 1, '1.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1625953198),
(264, 4, NULL, 2005, NULL, NULL, NULL, NULL, 0, 0, '8.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1625953198),
(265, 4, NULL, 2005, NULL, NULL, NULL, NULL, 1, 0, '2.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1625953198),
(266, 979, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '400.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'offline payment approved', 1625992548),
(267, 995, NULL, NULL, 103, NULL, NULL, NULL, 0, 0, '137.50', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid for 1:15 hours of consultation', 1625996816),
(268, 995, NULL, NULL, 103, NULL, NULL, NULL, 0, 1, '12.50', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1625996817),
(269, 1015, NULL, NULL, 103, NULL, NULL, NULL, 0, 0, '100.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1625996817),
(270, 1015, NULL, NULL, 103, NULL, NULL, NULL, 1, 0, '25.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1625996817),
(271, 995, NULL, 1999, NULL, NULL, NULL, NULL, 0, 0, '55.00', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form Credit', 1625996942),
(272, 995, NULL, 1999, NULL, NULL, NULL, NULL, 0, 1, '5.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1625996943),
(273, 929, NULL, 1999, NULL, NULL, NULL, NULL, 0, 0, '45.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1625996943),
(274, 929, NULL, 1999, NULL, NULL, NULL, NULL, 1, 0, '5.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1625996943),
(275, 995, NULL, 1998, NULL, NULL, NULL, NULL, 0, 0, '55.00', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form Credit', 1625996979),
(276, 995, NULL, 1998, NULL, NULL, NULL, NULL, 0, 1, '5.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1625996979),
(277, 1015, NULL, 1998, NULL, NULL, NULL, NULL, 0, 0, '40.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1625996979),
(278, 1015, NULL, 1998, NULL, NULL, NULL, NULL, 1, 0, '10.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1625996979),
(279, 995, NULL, 2001, NULL, NULL, NULL, NULL, 0, 0, '17.60', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form Credit', 1625997105),
(280, 995, NULL, 2001, NULL, NULL, NULL, NULL, 0, 1, '1.60', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1625997106),
(281, 3, NULL, 2001, NULL, NULL, NULL, NULL, 0, 0, '14.40', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1625997106),
(282, 3, NULL, 2001, NULL, NULL, NULL, NULL, 1, 0, '1.60', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1625997106),
(283, 996, NULL, 2006, NULL, NULL, NULL, NULL, 0, 0, '24.75', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form Credit', 1626060488),
(284, 996, NULL, 2006, NULL, NULL, NULL, NULL, 0, 1, '2.25', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1626060488),
(285, 867, NULL, 2006, NULL, NULL, NULL, NULL, 0, 0, '18.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1626060488),
(286, 867, NULL, 2006, NULL, NULL, NULL, NULL, 1, 0, '4.50', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1626060488),
(287, 996, NULL, 1998, NULL, NULL, NULL, NULL, 0, 0, '44.00', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form Credit', 1626060553),
(288, 996, NULL, 1998, NULL, NULL, NULL, NULL, 0, 1, '4.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1626060553),
(289, 1015, NULL, 1998, NULL, NULL, NULL, NULL, 0, 0, '32.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1626060553),
(290, 1015, NULL, 1998, NULL, NULL, NULL, NULL, 1, 0, '8.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1626060553),
(291, 930, NULL, 1998, NULL, NULL, NULL, NULL, 0, 0, '55.00', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form Credit', 1626060836),
(292, 930, NULL, 1998, NULL, NULL, NULL, NULL, 0, 1, '5.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1626060837),
(293, 1015, NULL, 1998, NULL, NULL, NULL, NULL, 0, 0, '40.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1626060837),
(294, 1015, NULL, 1998, NULL, NULL, NULL, NULL, 1, 0, '10.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1626060837),
(295, 1015, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '332.00', 'deduction', 'income', 'automatic', NULL, 0, 0, 'Payout request', 1626061220),
(296, 979, NULL, 2004, NULL, NULL, NULL, NULL, 0, 0, '66.00', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form Credit', 1626061333),
(297, 979, NULL, 2004, NULL, NULL, NULL, NULL, 0, 1, '6.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1626061334),
(298, 929, NULL, 2004, NULL, NULL, NULL, NULL, 0, 0, '54.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1626061334),
(299, 929, NULL, 2004, NULL, NULL, NULL, NULL, 1, 0, '6.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1626061334),
(300, 979, NULL, 2002, NULL, NULL, NULL, NULL, 0, 0, '22.00', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form Credit', 1626061374),
(301, 979, NULL, 2002, NULL, NULL, NULL, NULL, 0, 1, '2.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1626061374),
(302, 863, NULL, 2002, NULL, NULL, NULL, NULL, 0, 0, '16.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1626061374),
(303, 863, NULL, 2002, NULL, NULL, NULL, NULL, 1, 0, '4.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1626061374),
(304, 979, NULL, 2000, NULL, NULL, NULL, NULL, 0, 0, '33.00', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form Credit', 1626061375),
(305, 979, NULL, 2000, NULL, NULL, NULL, NULL, 0, 1, '3.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1626061376),
(306, 867, NULL, 2000, NULL, NULL, NULL, NULL, 0, 0, '24.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1626061376),
(307, 867, NULL, 2000, NULL, NULL, NULL, NULL, 1, 0, '6.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1626061376),
(308, 995, NULL, NULL, NULL, 3, NULL, NULL, 0, 0, '22.00', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form Credit', 1626061450),
(309, 995, NULL, NULL, NULL, 3, NULL, NULL, 0, 1, '2.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1626061451),
(310, 995, NULL, NULL, NULL, 3, NULL, NULL, 1, 0, '20.00', 'addiction', 'subscribe', 'automatic', NULL, 0, 0, 'Income for Subscribe', 1626061451),
(311, 867, NULL, 2006, NULL, NULL, NULL, NULL, 0, 0, '0.16', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Paid for Subscribe', 1626061483),
(312, 1, NULL, 2006, NULL, NULL, NULL, NULL, 1, 0, '0.16', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid for Subscribe', 1626061483),
(313, 929, NULL, 2004, NULL, NULL, NULL, NULL, 0, 0, '0.16', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Paid for Subscribe', 1626061490),
(314, 1, NULL, 2004, NULL, NULL, NULL, NULL, 1, 0, '0.16', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid for Subscribe', 1626061490),
(315, 863, NULL, 2002, NULL, NULL, NULL, NULL, 0, 0, '0.16', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Paid for Subscribe', 1626061494),
(316, 1, NULL, 2002, NULL, NULL, NULL, NULL, 1, 0, '0.16', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid for Subscribe', 1626061494),
(317, 1015, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '500.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'offline payment approved', 1626132570),
(318, 1015, NULL, 2002, NULL, NULL, NULL, NULL, 0, 0, '17.60', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form Credit', 1626132845),
(319, 1015, NULL, 2002, NULL, NULL, NULL, NULL, 0, 1, '1.60', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1626132845),
(320, 863, NULL, 2002, NULL, NULL, NULL, NULL, 0, 0, '12.80', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1626132845),
(321, 863, NULL, 2002, NULL, NULL, NULL, NULL, 1, 0, '3.20', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1626132845),
(322, 929, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '300.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'offline payment approved', 1626241074),
(323, 929, NULL, 2004, NULL, NULL, 3, NULL, 0, 0, '55.00', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form Credit', 1626241152),
(324, 929, NULL, 2004, NULL, NULL, 3, NULL, 0, 1, '5.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1626241153),
(325, 929, NULL, NULL, NULL, NULL, 3, NULL, 1, 0, '50.00', 'addiction', 'promotion', 'automatic', NULL, 0, 0, 'Paid for Promotion', 1626241153),
(326, 929, NULL, 2003, NULL, NULL, NULL, NULL, 0, 0, '33.00', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form Credit', 1626241213),
(327, 929, NULL, 2003, NULL, NULL, NULL, NULL, 0, 1, '3.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1626241214),
(328, 864, NULL, 2003, NULL, NULL, NULL, NULL, 0, 0, '24.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1626241214),
(329, 864, NULL, 2003, NULL, NULL, NULL, NULL, 1, 0, '6.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1626241214),
(330, 995, NULL, NULL, 114, NULL, NULL, NULL, 0, 0, '110.00', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid for 1:00 hours of consultation', 1626247196),
(331, 995, NULL, NULL, 114, NULL, NULL, NULL, 0, 1, '10.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1626247196),
(332, 870, NULL, NULL, 114, NULL, NULL, NULL, 0, 0, '80.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1626247196),
(333, 870, NULL, NULL, 114, NULL, NULL, NULL, 1, 0, '20.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1626247196),
(334, 995, NULL, NULL, 114, NULL, NULL, NULL, 0, 0, '110.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Refunded to Buyer', 1626247245),
(335, NULL, NULL, NULL, 114, NULL, NULL, NULL, 0, 1, '10.00', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Refunded Tax', 1626247245),
(336, 870, NULL, NULL, 114, NULL, NULL, NULL, 0, 0, '100.00', 'deduction', 'income', 'automatic', NULL, 0, 0, 'Refunded Income', 1626247245),
(337, 870, NULL, NULL, 114, NULL, NULL, NULL, 0, 0, '20.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Refunded Commission to Seller', 1626247245),
(338, 870, NULL, NULL, 114, NULL, NULL, NULL, 1, 0, '20.00', 'deduction', 'income', 'automatic', NULL, 0, 0, 'Refunded Commission', 1626247245),
(339, 996, NULL, 2000, NULL, NULL, NULL, NULL, 0, 0, '29.70', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form Credit', 1626508957),
(340, 996, NULL, 2000, NULL, NULL, NULL, NULL, 0, 1, '2.70', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1626508957),
(341, 867, NULL, 2000, NULL, NULL, NULL, NULL, 0, 0, '21.60', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1626508957),
(342, 867, NULL, 2000, NULL, NULL, NULL, NULL, 1, 0, '5.40', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1626508957),
(343, 930, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '250.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'offline payment approved', 1628704280),
(344, 923, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '300.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'offline payment approved', 1628704284),
(345, 995, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '200.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'offline payment approved', 1628704378),
(346, 995, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '100.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'offline payment approved', 1628704382),
(347, 996, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '200.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'offline payment approved', 1628704397),
(348, 929, NULL, 2000, NULL, NULL, NULL, NULL, 0, 0, '33.00', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form Credit', 1635412197),
(349, 929, NULL, 2000, NULL, NULL, NULL, NULL, 0, 1, '3.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1635412197),
(350, 867, NULL, 2000, NULL, NULL, NULL, NULL, 0, 0, '24.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1635412197),
(351, 867, NULL, 2000, NULL, NULL, NULL, NULL, 1, 0, '6.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1635412197),
(352, 1015, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '80.00', 'addiction', 'income', 'automatic', 1017, 1, 0, 'public.get_amount_from_referral', 1639378855),
(353, 1015, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '80.00', 'deduction', 'income', 'automatic', 1017, 1, 0, 'public.get_amount_from_referral', 1639378855),
(354, 1017, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '50.00', 'addiction', 'income', 'automatic', NULL, 1, 0, 'public.get_amount_from_referral', 1639378855),
(355, 1017, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '50.00', 'deduction', 'income', 'automatic', NULL, 1, 0, 'public.get_amount_from_referral', 1639378855),
(356, 1017, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '500.00', 'addiction', 'asset', 'manual', NULL, 0, 0, 'charging for test', 1639379205),
(357, 1017, NULL, 2000, NULL, NULL, NULL, NULL, 0, 0, '33.00', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form Credit', 1639379284),
(358, 1017, NULL, 2000, NULL, NULL, NULL, NULL, 0, 1, '3.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1639379285),
(359, 867, NULL, 2000, NULL, NULL, NULL, NULL, 0, 0, '24.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1639379285),
(360, 867, NULL, 2000, NULL, NULL, NULL, NULL, 1, 0, '4.50', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1639379285),
(361, 1015, NULL, 2000, NULL, NULL, NULL, NULL, 0, 0, '1.50', 'addiction', 'income', 'automatic', 1017, 0, 1, 'public.get_commission_from_referral', 1639379285),
(362, 1017, NULL, 1998, NULL, NULL, NULL, NULL, 0, 0, '110.00', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form Credit', 1639379351),
(363, 1017, NULL, 1998, NULL, NULL, NULL, NULL, 0, 1, '10.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1639379352),
(364, 1015, NULL, 1998, NULL, NULL, NULL, NULL, 0, 0, '80.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1639379352),
(365, 1015, NULL, 1998, NULL, NULL, NULL, NULL, 1, 0, '15.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1639379352),
(366, 1015, NULL, 1998, NULL, NULL, NULL, NULL, 0, 0, '5.00', 'addiction', 'income', 'automatic', 1017, 0, 1, 'public.get_commission_from_referral', 1639379352),
(367, 1017, NULL, 2003, NULL, NULL, NULL, NULL, 0, 0, '33.00', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form Credit', 1639379394),
(368, 1017, NULL, 2003, NULL, NULL, NULL, NULL, 0, 1, '3.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1639379395),
(369, 864, NULL, 2003, NULL, NULL, NULL, NULL, 0, 0, '24.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1639379395),
(370, 864, NULL, 2003, NULL, NULL, NULL, NULL, 1, 0, '4.50', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1639379395),
(371, 1015, NULL, 2003, NULL, NULL, NULL, NULL, 0, 0, '1.50', 'addiction', 'income', 'automatic', 1017, 0, 1, 'public.get_commission_from_referral', 1639379395),
(372, 995, NULL, 2009, NULL, NULL, NULL, NULL, 0, 0, '11.00', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid Form Credit', 1646172087),
(373, 995, NULL, 2009, NULL, NULL, NULL, NULL, 0, 1, '1.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax Get Form Buyer', 1646172087),
(374, 1015, NULL, 2009, NULL, NULL, NULL, NULL, 0, 0, '8.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1646172087),
(375, 1015, NULL, 2009, NULL, NULL, NULL, NULL, 1, 0, '2.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Get Commission From Seller', 1646172087),
(376, 996, NULL, 2009, NULL, NULL, NULL, NULL, 0, 0, '9.90', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid Form Credit', 1646172124),
(377, 996, NULL, 2009, NULL, NULL, NULL, NULL, 0, 1, '0.90', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax Get Form Buyer', 1646172124),
(378, 1015, NULL, 2009, NULL, NULL, NULL, NULL, 0, 0, '7.20', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1646172124),
(379, 1015, NULL, 2009, NULL, NULL, NULL, NULL, 1, 0, '1.80', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Get Commission From Seller', 1646172124),
(380, 979, NULL, 2009, NULL, NULL, NULL, NULL, 0, 0, '11.00', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid Form Credit', 1646172160),
(381, 979, NULL, 2009, NULL, NULL, NULL, NULL, 0, 1, '1.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax Get Form Buyer', 1646172160),
(382, 1015, NULL, 2009, NULL, NULL, NULL, NULL, 0, 0, '8.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1646172160),
(383, 1015, NULL, 2009, NULL, NULL, NULL, NULL, 1, 0, '2.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Get Commission From Seller', 1646172160),
(384, 929, NULL, 2009, NULL, NULL, NULL, NULL, 0, 0, '11.00', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid Form Credit', 1646172296),
(385, 929, NULL, 2009, NULL, NULL, NULL, NULL, 0, 1, '1.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax Get Form Buyer', 1646172297),
(386, 1015, NULL, 2009, NULL, NULL, NULL, NULL, 0, 0, '8.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1646172297),
(387, 1015, NULL, 2009, NULL, NULL, NULL, NULL, 1, 0, '2.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Get Commission From Seller', 1646172297),
(388, 995, NULL, NULL, 169, NULL, NULL, NULL, 0, 0, '825.00', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid for 1:00 hours of consultation', 1646379290),
(389, 995, NULL, NULL, 169, NULL, NULL, NULL, 0, 1, '75.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax Get Form Buyer', 1646379290),
(390, 1015, NULL, NULL, 169, NULL, NULL, NULL, 0, 0, '600.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1646379290),
(391, 1015, NULL, NULL, 169, NULL, NULL, NULL, 1, 0, '150.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Get Commission From Seller', 1646379290),
(392, 867, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '200.00', 'addiction', 'asset', 'manual', NULL, 0, 0, 'gift', 1646381415),
(393, 930, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, '218.90', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid Form Credit', 1646386792),
(394, 930, NULL, NULL, NULL, NULL, NULL, 2, 0, 1, '19.90', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax Get Form Buyer', 1646386797),
(395, 1, NULL, NULL, NULL, NULL, NULL, 2, 1, 0, '199.00', 'addiction', 'registration_package', 'automatic', NULL, 0, 0, 'Paid For Registration Package', 1646386797),
(396, 859, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '500.00', 'addiction', 'asset', 'manual', NULL, 0, 0, 'Charge for the test.', 1646387608),
(397, 859, NULL, NULL, NULL, NULL, NULL, 4, 0, 0, '220.00', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid Form Credit', 1646387660),
(398, 859, NULL, NULL, NULL, NULL, NULL, 4, 0, 1, '20.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax Get Form Buyer', 1646387660),
(399, 1, NULL, NULL, NULL, NULL, NULL, 4, 1, 0, '200.00', 'addiction', 'registration_package', 'automatic', NULL, 0, 0, 'Paid For Registration Package', 1646387660);

-- --------------------------------------------------------

--
-- Table structure for table `advertising_banners`
--

DROP TABLE IF EXISTS `advertising_banners`;
CREATE TABLE IF NOT EXISTS `advertising_banners` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `position` enum('home1','home2','course','course_sidebar') COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(10) UNSIGNED NOT NULL DEFAULT 12,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `advertising_banners`
--

INSERT INTO `advertising_banners` (`id`, `position`, `size`, `link`, `published`, `created_at`) VALUES
(2, 'home1', 12, '/login', 1, 1607885353),
(3, 'home2', 6, '/certificate_validation', 1, 1607885656),
(4, 'home2', 6, '/instructors', 1, 1607885681),
(6, 'course_sidebar', 12, '/instructors', 1, 1607886391),
(7, 'course_sidebar', 12, '/certificate_validation', 1, 1607886440);

-- --------------------------------------------------------

--
-- Table structure for table `advertising_banners_translations`
--

DROP TABLE IF EXISTS `advertising_banners_translations`;
CREATE TABLE IF NOT EXISTS `advertising_banners_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `advertising_banner_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `advertising_banners_translations_advertising_banner_id_foreign` (`advertising_banner_id`),
  KEY `advertising_banners_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advertising_banners_translations`
--

INSERT INTO `advertising_banners_translations` (`id`, `advertising_banner_id`, `locale`, `title`, `image`) VALUES
(1, 2, 'en', 'Home - Join as instructor', '/store/1/default_images/banners/become_instructor_banner.png'),
(2, 3, 'en', 'Certificate validation - Home', '/store/1/default_images/banners/validate_certificates_banner.png'),
(3, 4, 'en', 'Reserve a meeting - Home', '/store/1/default_images/banners/reserve_a_meeting.png'),
(4, 6, 'en', 'Reserve a meeting - Course page', '/store/1/default_images/banners/reserve_a_meeting.png'),
(5, 7, 'en', 'Certificate validation - Course page', '/store/1/default_images/banners/validate_certificates_banner.png'),
(7, 2, 'ar', 'الصفحة الرئيسية - انضم كمدرس', '/store/1/default_images/banners/become_instructor_banner_ar.png'),
(8, 2, 'es', 'Inicio - Únete como instructora', '/store/1/default_images/banners/become_instructor_banner_es.png'),
(9, 3, 'ar', 'التحقق من صحة الشهادة - الصفحة الرئيسية', '/store/1/default_images/banners/validate_certificates_banner_ar.png'),
(10, 3, 'es', 'Validación de certificados - Inicio', '/store/1/default_images/banners/validate_certificates_banner_es.png'),
(11, 4, 'ar', 'حجز اجتماع - الصفحة الرئيسية', '/store/1/default_images/banners/reserve_a_meeting_ar.png'),
(12, 4, 'es', 'Reservar una reunión - Inicio', '/store/1/default_images/banners/reserve_a_meeting_es.png'),
(13, 6, 'ar', 'حجز اجتماع - صفحة الدورة', '/store/1/default_images/banners/reserve_a_meeting_ar.png'),
(14, 6, 'es', 'Reservar una reunión - página del curso', '/store/1/default_images/banners/reserve_a_meeting_es.png'),
(15, 7, 'ar', 'التحقق من صحة الشهادة - صفحة الدورة', '/store/1/default_images/banners/validate_certificates_banner_ar.png'),
(16, 7, 'es', 'Validación del certificado - página del curso', '/store/1/default_images/banners/validate_certificates_banner_es.png');

-- --------------------------------------------------------

--
-- Table structure for table `affiliates`
--

DROP TABLE IF EXISTS `affiliates`;
CREATE TABLE IF NOT EXISTS `affiliates` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `affiliate_user_id` int(10) UNSIGNED NOT NULL,
  `referred_user_id` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `affiliates_affiliate_user_id_foreign` (`affiliate_user_id`),
  KEY `affiliates_referred_user_id_foreign` (`referred_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `affiliates`
--

INSERT INTO `affiliates` (`id`, `affiliate_user_id`, `referred_user_id`, `created_at`) VALUES
(1, 1015, 1017, 1639378855);

-- --------------------------------------------------------

--
-- Table structure for table `affiliates_codes`
--

DROP TABLE IF EXISTS `affiliates_codes`;
CREATE TABLE IF NOT EXISTS `affiliates_codes` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `affiliates_codes_code_unique` (`code`),
  KEY `affiliates_codes_user_id_foreign` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `affiliates_codes`
--

INSERT INTO `affiliates_codes` (`id`, `user_id`, `code`, `created_at`) VALUES
(2, 995, '422536', 1635366391),
(3, 996, '442769', 1635420731),
(4, 1015, '822047', 1639378662);

-- --------------------------------------------------------

--
-- Table structure for table `agora_history`
--

DROP TABLE IF EXISTS `agora_history`;
CREATE TABLE IF NOT EXISTS `agora_history` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `session_id` int(10) UNSIGNED NOT NULL,
  `start_at` int(10) UNSIGNED NOT NULL,
  `end_at` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `agora_history_session_id_foreign` (`session_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agora_history`
--

INSERT INTO `agora_history` (`id`, `session_id`, `start_at`, `end_at`) VALUES
(1, 74, 1646391218, 1646391343),
(2, 76, 1646391739, 1646391984);

-- --------------------------------------------------------

--
-- Table structure for table `badges`
--

DROP TABLE IF EXISTS `badges`;
CREATE TABLE IF NOT EXISTS `badges` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('register_date','course_count','course_rate','sale_count','support_rate') COLLATE utf8mb4_unicode_ci NOT NULL,
  `condition` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` int(11) DEFAULT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `badges_type_index` (`type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `badges`
--

INSERT INTO `badges` (`id`, `image`, `type`, `condition`, `score`, `created_at`) VALUES
(21, '/store/1/default_images/badges/new_user.png', 'register_date', '{\"from\":\"1\",\"to\":\"30\"}', 5, 1625553769),
(22, '/store/1/default_images/badges/loyal_user.png', 'register_date', '{\"from\":\"31\",\"to\":\"180\"}', 10, 1625554171),
(23, '/store/1/default_images/badges/faithful_user.png', 'register_date', '{\"from\":\"181\",\"to\":\"365\"}', 15, 1625554495),
(24, '/store/1/default_images/badges/junior_vendor.png', 'course_count', '{\"from\":\"1\",\"to\":\"1\"}', 10, 1625554772),
(25, '/store/1/default_images/badges/senior_vendor.png', 'course_count', '{\"from\":\"2\",\"to\":\"2\"}', 20, 1625554960),
(26, '/store/1/default_images/badges/expert_vendor.png', 'course_count', '{\"from\":\"3\",\"to\":\"6\"}', 30, 1625555421),
(27, '/store/1/default_images/badges/bronze_classes.png', 'course_rate', '{\"from\":\"2\",\"to\":\"3\"}', NULL, 1625556048),
(28, '/store/1/default_images/badges/silver_classes.png', 'course_rate', '{\"from\":\"3\",\"to\":\"4\"}', NULL, 1625556159),
(29, '/store/1/default_images/badges/golden_classes.png', 'course_rate', '{\"from\":\"4\",\"to\":\"5\"}', 50, 1625556284),
(30, '/store/1/default_images/badges/best_seller.png', 'sale_count', '{\"from\":\"1\",\"to\":\"2\"}', NULL, 1625557021),
(31, '/store/1/default_images/badges/top_seller.png', 'sale_count', '{\"from\":\"3\",\"to\":\"9\"}', 20, 1625557247),
(32, '/store/1/default_images/badges/king_seller.png', 'sale_count', '{\"from\":\"10\",\"to\":\"20\"}', 50, 1625558061),
(33, '/store/1/default_images/badges/good_support.png', 'support_rate', '{\"from\":\"2\",\"to\":\"3\"}', NULL, 1625558473),
(34, '/store/1/default_images/badges/amazing_support.png', 'support_rate', '{\"from\":\"3\",\"to\":\"4\"}', NULL, 1625558682),
(35, '/store/1/default_images/badges/fantastic_support.png', 'support_rate', '{\"from\":\"4\",\"to\":\"5\"}', 20, 1625558892);

-- --------------------------------------------------------

--
-- Table structure for table `badge_translations`
--

DROP TABLE IF EXISTS `badge_translations`;
CREATE TABLE IF NOT EXISTS `badge_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `badge_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `badge_translations_badge_id_foreign` (`badge_id`),
  KEY `badge_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `badge_translations`
--

INSERT INTO `badge_translations` (`id`, `badge_id`, `locale`, `title`, `description`) VALUES
(1, 21, 'en', 'New User', '1 Month of Membership'),
(2, 22, 'en', 'Loyal User', '6 Month of Membership'),
(3, 23, 'en', 'Faithful User', '1 Year of Membership'),
(4, 24, 'en', 'Junior Vendor', 'Has 1 Class'),
(5, 25, 'en', 'Senior Vendor', 'Has 2 Classes'),
(6, 26, 'en', 'Expert Vendor', 'Has 3 to 6 Classes'),
(7, 27, 'en', 'Bronze Classes', 'Classes Rating from 2 to 3'),
(8, 28, 'en', 'Silver Classes', 'Classes Rating from 3 to 4'),
(9, 29, 'en', 'Golden Classes', 'Classes Rating from 4 to 5'),
(10, 30, 'en', 'Best Seller', 'Classes Sales from 1 to 2'),
(11, 31, 'en', 'Top Seller', 'Classes Sales from 3 to 9'),
(12, 32, 'en', 'King Seller', 'Classes Sales from 10 to 20'),
(13, 33, 'en', 'Good Support', 'Support Rating from 2 to 3'),
(14, 34, 'en', 'Amazing Support', 'Support Rating from 3 to 4'),
(15, 35, 'en', 'Fantastic Support', 'Support Rating from 4 to 5');

-- --------------------------------------------------------

--
-- Table structure for table `become_instructors`
--

DROP TABLE IF EXISTS `become_instructors`;
CREATE TABLE IF NOT EXISTS `become_instructors` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role` enum('teacher','organization') COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_id` int(10) UNSIGNED DEFAULT NULL,
  `certificate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','accept','reject') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `become_instructors_user_id_foreign` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `become_instructors`
--

INSERT INTO `become_instructors` (`id`, `user_id`, `role`, `package_id`, `certificate`, `description`, `status`, `created_at`) VALUES
(5, 930, 'teacher', 2, '/store/930/certificate.jpg', 'I taught design in London for two years.', 'pending', 1626242477),
(6, 859, 'organization', 4, '/store/859/certificate.jpg', 'We have 3 years of experience in advanced sewing training.', 'pending', 1646387556);

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
CREATE TABLE IF NOT EXISTS `blog` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `author_id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visit_count` int(10) UNSIGNED DEFAULT 0,
  `enable_comment` tinyint(1) NOT NULL DEFAULT 1,
  `status` enum('pending','publish') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` int(10) UNSIGNED NOT NULL,
  `updated_at` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `blog_category_id_foreign` (`category_id`) USING BTREE,
  KEY `slug` (`slug`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `category_id`, `author_id`, `slug`, `image`, `visit_count`, `enable_comment`, `status`, `created_at`, `updated_at`) VALUES
(21, 34, 1014, 'How-To-Teach-Your-Kid-Anything-Easily', '/store/1/default_images/blogs/blog1.jpg', 23, 1, 'publish', 1625091953, 1635438417),
(22, 37, 1, 'Better-Relationship-Between-You-and-Your-Student-s-Parent', '/store/1/default_images/blogs/blog2.jpg', 8, 1, 'publish', 1625093279, 1635438425),
(23, 36, 1, '3-Laws-to-Become-a-Straight-A-Student', '/store/1014/blog3.jpg', 17, 1, 'publish', 1625094412, 1635438384);

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

DROP TABLE IF EXISTS `blog_categories`;
CREATE TABLE IF NOT EXISTS `blog_categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `title`, `slug`) VALUES
(33, 'Announcements', 'Vel-consequatur'),
(34, 'Articles', 'Facilis-ea'),
(36, 'Events', 'Fugit-dignissimos-possimus'),
(37, 'News', 'new');

-- --------------------------------------------------------

--
-- Table structure for table `blog_translations`
--

DROP TABLE IF EXISTS `blog_translations`;
CREATE TABLE IF NOT EXISTS `blog_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `blog_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_translations_blog_id_locale_unique` (`blog_id`,`locale`),
  KEY `blog_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_translations`
--

INSERT INTO `blog_translations` (`id`, `blog_id`, `locale`, `title`, `description`, `content`, `meta_description`) VALUES
(2, 21, 'en', 'How To Teach Your Kid Anything Easily', '<p>The primary reason kids struggle with school is fear. And in most cases, it’s their parent\'s fault. I started tutoring math out of financial desperation. I’d just been fired from my job as a waiter, most of the proofreading in jobs in New York had been outsourced to India, and for the third time in my life, I was facing dire poverty.</p>', '<p>I started tutoring math out of financial desperation. I’d just been fired from my job as a waiter, most of the proofreading in jobs in New York had been outsourced to India, and for the third time in my life, I was facing dire poverty.</p><p>The amount I had forgotten was startling at first, and I had excelled at math for my entire academic life. If you don’t use it, you really do lose it, so not so surprisingly, most parents cry uncle at around 4th-grade math. They don’t remember and don’t want to remember, perpetuating this attitude in their children.</p><p>Imagine doing anything, even something you’re great at, with the equivalent of a giant looming behind you and scrutinizing your every move. This is what parents do to their children. They hover and pounce on every mistake.</p><p>1) Have Empathy for Your Kids</p><p>In my first session with my first student, his mom skulked nervously behind us, then called me over about five minutes in. She asked if I noticed her kid had answered the last question incorrectly, and I immediately saw the problem\'s essence.</p><p>You have to rest and relax for your kid to be comfortable and wait until the end before you start to correct anything. This is how kids learn to check their work, and that making mistakes is not a big deal.</p><p>Mistakes are inevitable, but how we handle them isn’t. If you want your kid to be eternally terrified of math, then, by all means, continue to crowd and interrupt them perpetually. Chances are, you’ll make them wary of attempting to learn anything at all.</p><p>2) Give Yourself a Shot</p><p>Thankfully, this mom and most of the other parents understood what I was doing, and recognized their complicity in their children’s struggles. After that first session, mom left us alone, and her kid began to improve forthwith.</p><p>His parents were so encouraged they asked if I could help with other subjects. History, science, and English were all within my wheelhouse, but the kid went to a Catholic school and had to learn Latin.</p><p>I borrowed a copy of his Latin book and was completely demoralized. Latin is baffling, especially in the beginning. So many conjugations, and context matter. The way you speak to noblemen, peers, and slaves is practically like learning three different languages.</p><p>Still, I was broke, and this would mean more money. And did I actually have to know Latin? All I had to do was stay a few days ahead of the kid.</p><p>3) Be Honest</p><p>Our default state is to deny our ignorance, especially in front of children. We’re defensive and dismissive, and most kids can tell you’re just as lost as they are.</p><p>My solution was to admit this from the start. The kid asked me the point of learning Latin and I told him I didn’t know. Supposedly it helped with other languages, but maybe he could use it someday to impress pretentious people at cocktail parties. He asked me why some verbs broke the conjugation patterns, and I told him it was the ancients’ way of torturing us.</p><p>As a young child, he picked up the language quicker than I did, but had more difficulty with some of the subtleties. There were times I was mystified and talked out loud to myself in front of him.</p><p>I’m a math tutor. What on earth made me think I was equipped to teach Latin, let alone learn it?</p><p>The kid told me I seemed to be pretty good at everything else, so I’d probably get it, but there was a tinge of concern in his voice. The worse I did, the more likely he would fail, and he wanted Latin out of his life even more than I did.</p><p>Our mutual hatred of Latin brought us closer together. For the first time, we both understood we were in this together.</p><p>4) Dealing With Parents and Teachers Is a Part of Education</p><p>As he grew older, he started to ask me about his parents, who were Fox News conservatives. He told me he could see they were biased, but didn’t understand why, or know what to think.</p><p>I told him to think for himself and admit when he didn’t know something, and that he shouldn’t be afraid to change his mind in light of valid new evidence.</p><p>He complained about his teachers, one of whom wasn’t happy I’d taught him different approaches to algebra. Eventually, he learned how to do it the teacher’s way, but he’d needed another avenue to get there. We were both a bit angry, but I told him learning to deal with teachers is a part of education.</p><p>I kept my rancor to myself, but I also wanted to strangle his teacher. This kid had gone from a D average to a B+, and this teacher was still hounding him. No wonder so many people are lousy at math — their parents and teachers were against them and didn’t even realize it.</p><p>5) Embrace a Learning Attitude</p><p>If you aren’t willing to learn, it’s going to be difficult to teach, and the first step is accepting just how little we know. It’s hypocritical to pounce on your kid when you can’t do his homework either, and kids notice this and rightfully feel that you’re being unjust.</p><p>If you choose to have children, they should be your number one priority, and you’ll be surprised at how much learning (or relearning) will improve your cognition in general.</p><p>Reading and math are foundational skills, and learning math is humbling. While there is scant evidence to support that mathematics improves reasoning in general, you need it to understand science, and when puzzled by much of your child’s elementary school homework, at least a little uncertainty penetrates your views. You realize you don’t know nearly as much as you thought, and for most, this can mark a new beginning. As rigidity subsides, plasticity reemerges, and the habit of lifelong learning is the most valuable gift you can give to yourself and your child.</p>', 'The primary reason kids struggle with school is fear. And in most cases, it’s their parent\'s fault.'),
(3, 22, 'en', 'Better Relationship Between You and Your Student’s Parent', '<p>The tutor-parent relationship is an important relationship and unfortunately greatly overlooked. Why is it important? Well, a good relationship between you and the student’s parent or guardian serves to help students perform better personally and academically. Fostering a relationship with them as a tutor can be challenging due to a number of factors, however, there are a number of ways to build this relationship and optimize students’ learning support system over time.</p>', '<p>Compassion and Positivity is Everything</p><p>It can be stressful for parents or guardians to engage with you. There may be fear that their child isn’t doing as well as they should be, a lack of time to connect, or even language barriers. As a tutor, being compassionate and delivering information in a well-mannered tone does wonders in situations like this. It’s best to smile, make eye contact, be welcoming, and offer any advice if needed. One good trick to help ease parents or guardians when speaking to them is to first acknowledge something positive about their child that you’ve noticed no matter how small it is. For example, you may have noticed that they are more engaged in their lessons and asking more questions.</p><p>Be Proactive and Communicate Often</p><p>Some tutors may only speak to parents or guardians when there is a problem, creating a negative environment for both. That’s why it’s key to make the effort to speak with them often whether that be face to face, phone call or even an email. It’s best to keep them up to date about their child’s learning. Communicating often keeps them from feeling on high alert when you reach out and can even foster a beautiful friendship. Of course it is important to know that parents and guardians are busy! So make sure when you communicate with them that you’re planning ahead to find a time that works best for them.</p><p>Make the Parent or Guardian Feel Valued and Ask for Their Advice</p><p>A great way to build a relationship with parents or guardians is to involve them in their child’s education. This doesn’t mean just having them help with homework, but it could mean asking them to participate in school activities or events. Asking them if they would like to help organize an event is a great way to get to know them and give them a chance to meet other parents or guardians. It could also be something as simple as creating a lesson plan that requests input from them. Of course all of this depends on their schedule and if they have time to participate. In the end, the more you try to involve them in activities, the better.</p><p>Another great way to make them feel valued is to ask for their advice. If your student is displaying negative behaviors during a lesson, it is wise to seek out the advice of the parent or guardian. By asking for their advice, two things can occur. One, they may not know there is negative behavior to begin with as the student may not be displaying it at home. Two, you are building a better relationship with the parent or guardian by getting their input in this situation, which will build trust. Questions don’t just have to be about the student’s education when speaking to them, you can also ask questions about the student’s interest and plans that they have during the holidays. It is always important for you to conduct yourself professionally when dealing with a parent or guardian but the conversation doesn’t have to just be strictly about education.</p><p>Avoid Taking it Personally and Making Assumptions</p><p>Parents and guardians are human and they have their own stress to deal with whether it be at work or in their home life. It is best for you to always keep calm and never take anything they say to heart. You should always respond with questions that will help defuse the situation. For example a parent or guardian may say “You’re saying this because you’re out to get my child” and the best way to respond to a question like this is “I’m sorry you feel this way, please let me know why you think this?”</p><p>Also you shouldn’t make assumptions about a student’s home life. Unless it has been stated so, an assumption can cause many problems and can be insensitive to a family’s situation. You should not assume that the student lives with both parents or any parent for that matter. Now, in our globally diverse world you shouldn’t assume that the parent or guardian’s first language is English and should always confirm if they can speak English in the first place. Every student will have a different situation than the next. Assumptions lead to misunderstandings which can create more challenging circumstances for learning.</p><p>Building a relationship with a parent or guardian can sometimes be challenging. Keeping these ideas in mind can help you better connect with them. It’s good to remember, at the end of the day the better connection you have with them, the better they can help teach the student, ultimately allowing them to achieve academic success and foster a love for learning.</p>', 'The tutor-parent relationship is an important relationship and unfortunately greatly overlooked.'),
(4, 23, 'en', '3 Laws to Become a Straight-A Student', '<p>In this article, I’ll explain the two rules I followed to become a straight-A student.&nbsp;If you take my advice, you’ll get better grades and lead a more balanced life too.</p>', '<p>A strong academic record can open doors for you down the road. More importantly, through the process of becoming a straight-A student, you’ll learn values like hard work, discipline and determination.</p><h3 style=\"color: rgb(0, 0, 0); font-family: Lato, sans-serif; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px; font-size: 24px;\">Rule #1: Always have a plan.</h3><div><div>(a) As the semester progresses, keep track of key dates: tests and exams, project submission deadlines, term breaks, etc.</div><div><br></div><div>Enter these dates into a physical or digital calendar.</div><div><br></div><div><div>If you choose to use a digital calendar, I recommend Google Calendar.</div><div><br></div><div>(b) Schedule a fixed time every week where you review your upcoming events over the next two months. Mark down when you’ll start preparing for that Math exam, working on that History project, or writing that English paper.</div><div><br></div><div>(d) Next, note your commitments for the coming week, e.g. extracurricular activities, family gatherings, extra classes. On your calendar, highlight the blocks of time you’ll have for schoolwork.</div><div><br></div><div>This planning process might sound time-consuming, but it’ll typically take just 15 minutes every week.</div><div><br></div><div>This is a wise investment of time as a student, because the rest of your week will become far more productive.</div><div><br></div><div>This way, you’ll be studying smart, not just hard!</div><div><br></div><div><h3 style=\"color: rgb(0, 0, 0); font-family: Lato, sans-serif; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px; font-size: 24px;\">Rule #2: Be organized.</h3></div></div></div><div><div>Ever had trouble finding your notes or assignments when you needed them? You probably ended up wasting precious time looking for them, before you finally asked to borrow them from your friend.</div><div><br></div><div>Many students tell me that they keep all their notes and assignments in one big pile, and only sort them out before their exams!</div><div><br></div><div>Being organized – it’s easier said than done, I know.</div></div>', 'In this article, I’ll explain the two rules I followed to become a straight-A student.'),
(5, 21, 'ar', 'كيف تعلم طفلك أي شيء بسهولة', '<p style=\"text-align: right; \">الخوف هو السبب الرئيسي الذي يجعل الأطفال يكافحون مع المدرسة. وفي معظم الحالات ، يكون ذلك خطأ الوالدين. بدأت في تدريس الرياضيات بسبب اليأس المالي.</p>', '<p style=\"text-align: right; \">بدأت في تدريس الرياضيات بسبب اليأس المالي. لقد طُردت للتو من وظيفتي كنادل ، ومعظم عمليات التدقيق اللغوي في الوظائف في نيويورك تم الاستعانة بمصادر خارجية للهند ، وللمرة الثالثة في حياتي ، كنت أواجه فقرًا مدقعًا.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">كان المبلغ الذي نسيته مذهلاً في البداية ، وقد تفوقت في الرياضيات طوال حياتي الأكاديمية. إذا كنت لا تستخدمها ، فأنت تخسرها حقًا ، لذلك ليس من المستغرب أن يبكي معظم الآباء عمي في الرياضيات في الصف الرابع تقريبًا. إنهم لا يتذكرون ولا يريدون أن يتذكروا ، مما يديم هذا الموقف لدى أطفالهم.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">تخيل أنك تفعل أي شيء ، حتى لو كنت بارعًا فيه ، بما يعادل عملاقًا يلوح في الأفق خلفك ويفحص كل تحركاتك. وهذا هو ما يفعله الآباء لأطفالهم. إنهم يحومون وينقضون على كل خطأ.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">1) تعاطف مع أطفالك</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">في جلستي الأولى مع تلميذي الأول ، تراجعت والدته بعصبية خلفنا ، ثم اتصلت بي لمدة خمس دقائق. سألت إذا لاحظت أن ابنها قد أجاب على السؤال الأخير بشكل غير صحيح ، ورأيت على الفور جوهر المشكلة.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">عليك أن ترتاح وتسترخي حتى يكون طفلك مرتاحًا وتنتظر حتى النهاية قبل أن تبدأ في تصحيح أي شيء. هذه هي الطريقة التي يتعلم بها الأطفال التحقق من عملهم ، وأن ارتكاب الأخطاء ليس مشكلة كبيرة.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">الأخطاء لا مفر منها ، ولكن كيفية التعامل معها ليست كذلك. إذا كنت تريد أن يشعر ابنك بالرعب إلى الأبد من الرياضيات ، إذن ، بكل الوسائل ، استمر في الازدحام ومقاطعته على الدوام. من المحتمل أن تجعلهم حذرين من محاولة تعلم أي شيء على الإطلاق.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">2) إعطاء نفسك وأطلق عليه الرصاص</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">لحسن الحظ ، فهمت هذه الأم ومعظم الآباء الآخرين ما كنت أفعله ، وأدركوا تواطؤهم في كفاح أطفالهم. بعد تلك الجلسة الأولى ، تركتنا أمي وشأننا ، وبدأ طفلها في التحسن على الفور.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">تم تشجيع والديه لدرجة أنهم سألوا عما إذا كان بإمكاني المساعدة في مواضيع أخرى. كان التاريخ والعلوم واللغة الإنجليزية داخل غرفة قيادتي ، لكن الطفل ذهب إلى مدرسة كاثوليكية وكان عليه أن يتعلم اللاتينية.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">استعرت نسخة من كتابه اللاتيني وأصيبت بالإحباط تمامًا. اللغة اللاتينية محيرة ، خاصة في البداية. هذا العدد الكبير من الإقتران، ومسألة السياق. الطريقة التي تتحدث بها إلى النبلاء والأقران والعبيد تشبه عمليًا تعلم ثلاث لغات مختلفة.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">ما زلت مفلسة ، وهذا يعني المزيد من المال. وهل كان علي بالفعل معرفة اللاتينية؟ كل ما كان علي فعله هو البقاء قبل الطفل ببضعة أيام.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">3) كن صادقا</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">حالتنا الافتراضية هي إنكار جهلنا ، خاصة أمام الأطفال. نحن دفاعيون ورفضون ، ويمكن لمعظم الأطفال أن يقولوا إنك ضائع مثلهم.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">كان الحل هو الاعتراف بذلك منذ البداية. سألني الطفل عن وجهة نظر تعلم اللاتينية وأخبرته أنني لا أعرف. من المفترض أنه ساعد مع لغات أخرى ، لكن ربما يمكنه استخدامه يومًا ما لإثارة إعجاب الأشخاص الطنانين في حفلات الكوكتيل. سألني لماذا تكسر بعض الأفعال أنماط الاقتران ، وقلت له إنها طريقة القدماء في تعذيبنا.</p><p style=\"text-align: right; \">عندما كان طفلاً صغيرًا ، كان يتعلم اللغة أسرع مني ، لكنه كان يواجه صعوبة أكبر في بعض التفاصيل الدقيقة. كانت هناك أوقات حيرتني فيها وأتحدث بصوت عالٍ أمامه.</p><p style=\"text-align: right; \">أنا مدرس رياضيات. ما الذي جعلني أعتقد أنني مستعد لتدريس اللاتينية ، ناهيك عن تعلمها؟</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">قال لي الطفل إنني أبدو جيدًا في كل شيء آخر ، لذا من المحتمل أن أفهم ذلك ، لكن كان هناك القليل من القلق في صوته. كلما فعلت الأسوأ ، زاد احتمال فشله ، وأراد إخراج اللاتينية من حياته أكثر مما فعلت.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">لقد قربنا كراهيتنا المتبادل للغة اللاتينية من بعضنا البعض. لأول مرة ، أدرك كلانا أننا في هذا معًا.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">4) التعامل مع أولياء الأمور والمعلمين هو جزء من التعليم</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">مع تقدمه في السن ، بدأ يسألني عن والديه ، اللذين كانا من المحافظين في قناة فوكس نيوز. قال لي انه يمكن ان نرى انهم منحازون، ولكن لم أفهم لماذا، أو أعرف ما يفكر.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">أخبرته أن يفكر بنفسه ويعترف عندما لا يعرف شيئًا ، وأنه لا يجب أن يخشى تغيير رأيه في ضوء أدلة جديدة صحيحة.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">واشتكى أساتذته، واحد منهم لم يكن سعيدا كنت قد علمته الطرق المختلفة لعلم الجبر. في نهاية المطاف، وعلم أنه كيفية القيام بذلك بطريقة المعلم، ولكن عنيدا حاجة سبيلا آخر للوصول إلى هناك. كنا غاضبين بعض الشيء ، لكنني أخبرته أن تعلم التعامل مع المعلمين هو جزء من التعليم.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">احتفظت بالضغينة لنفسي ، لكنني أردت أيضًا خنق معلمه. وكان هذا الطفل قد ذهب من متوسط ​​D إلى B +، وكان هذا المعلم لا يزال يطارد له. ولا عجب في ذلك كثير من الناس رديء في الرياضيات - الآباء والامهات والمعلمين ضدهم وحتى لم يدرك ذلك.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">5) احتضان موقف التعلم</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">إذا لم تكن على استعداد للتعلم ، فسيكون من الصعب تدريسه ، والخطوة الأولى هي قبول مدى ضآلة معرفتنا. من النفاق أن تنقض على ابنك عندما لا تتمكن من أداء واجبه المنزلي أيضًا ، ويلاحظ الأطفال ذلك ويشعرون بحق أنك غير عادل.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">التعلم الإلكتروني) سيحسن إدراكك بشكل عام.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">القراءة والرياضيات مهارات أساسية ، وتعلم الرياضيات أمر متواضع. في حين أن هناك القليل من الأدلة التي تدعم أن الرياضيات تحسن التفكير بشكل عام ، فأنت بحاجة إليها لفهم العلوم ، وعندما تشعر بالحيرة تجاه الكثير من الواجبات المدرسية لطفلك في المدرسة الابتدائية ، فإن القليل على الأقل من عدم اليقين يخترق آرائك. أنت تدرك أنك لا تعرف الكثير كما كنت تعتقد ، وبالنسبة لمعظم الناس ، يمكن أن يمثل هذا بداية جديدة. مع انحسار الصلابة ، تعاود اللدونة الظهور ، وعادات التعلم مدى الحياة هي أثمن هدية يمكن أن تقدمها لنفسك ولطفلك.إذا اخترت أن يكون الأطفال، يجب أن يكون لديك الاولوية رقم واحد، وسوف يفاجأ في مقدار التعلم (أو ص</p>', 'الخوف هو السبب الرئيسي الذي يجعل الأطفال يكافحون مع المدرسة. وفي معظم الحالات ، يكون ذلك خطأ الوالدين.'),
(6, 21, 'es', 'Cómo enseñar a tu hija cualquier cosa fácilmente', '<p>La razón principal por la que los niños luchan con la escuela es el miedo. Y en la mayoría de los casos, es culpa de sus padres. Comencé a dar clases particulares de matemáticas por desesperación financiera. Me acababan de despedir de mi trabajo como camarero, la mayor parte de la corrección de pruebas en los trabajos en Nueva York se habían subcontratado a la India y, por tercera vez en mi vida, me enfrentaba a una pobreza extrema.</p>', '<p>Comencé a dar clases particulares de matemáticas por desesperación financiera. Me acababan de despedir de mi trabajo como camarero, la mayor parte de la corrección de pruebas en los trabajos en Nueva York se habían subcontratado a la India y, por tercera vez en mi vida, me enfrentaba a una pobreza extrema.</p><p><br></p><p>La cantidad que había olvidado fue sorprendente al principio, y había sobresalido en matemáticas durante toda mi vida académica. Si no lo usas, realmente lo pierdes, así que no es de extrañar que la mayoría de los padres lloren a tío en matemáticas de cuarto grado. No recuerdan y no quieren recordar, perpetuando esta actitud en sus hijos.</p><p><br></p><p>Imagínese haciendo cualquier cosa, incluso algo en lo que se le da bien, con el equivalente a un gigante acechando detrás de usted y escudriñando cada uno de sus movimientos. Esto es lo que les hacen los padres a sus hijos. Se ciernen y se abalanzan sobre cada error.</p><p><br></p><p>1) Tenga empatía por sus hijos</p><p><br></p><p>En mi primera sesión con mi primer alumno, su madre se escondió nerviosamente detrás de nosotros, luego me llamó unos cinco minutos después. Me preguntó si noté que su hijo había respondido la última pregunta incorrectamente, e inmediatamente vi la esencia del problema.</p><p><br></p><p>Tienes que descansar y relajarte para que tu hijo se sienta cómodo y esperar hasta el final antes de empezar a corregir algo. Así es como los niños aprenden a controlar su trabajo y que cometer errores no es gran cosa.</p><p><br></p><p>Los errores son inevitables, pero la forma en que los manejamos no lo es. Si quiere que su hijo esté eternamente aterrorizado por las matemáticas, entonces, por supuesto, continúe apiñándolos e interrumpiéndolos perpetuamente. Lo más probable es que los haga desconfiar de intentar aprender algo.</p><p><br></p><p>2) Date una oportunidad</p><p><br></p><p>Afortunadamente, esta madre y la mayoría de los otros padres entendieron lo que estaba haciendo y reconocieron su complicidad en las luchas de sus hijos. Después de esa primera sesión, mamá nos dejó solos y su hijo comenzó a mejorar de inmediato.</p><p><br></p><p>Sus padres estaban tan animados que me preguntaron si podía ayudar con otros temas. La historia, la ciencia y el inglés estaban a mi alcance, pero el niño fue a una escuela católica y tuvo que aprender latín.</p><p><br></p><p>Pedí prestada una copia de su libro en latín y me desmoralicé por completo. El latín es desconcertante, especialmente al principio. Tantas conjugaciones y contexto son importantes. La forma de hablar con nobles, compañeros y esclavos es prácticamente como aprender tres idiomas diferentes.</p><p><br></p><p>Aún así, estaba arruinado y esto significaría más dinero. ¿Y realmente tenía que saber latín? Todo lo que tenía que hacer era quedarme unos días por delante del chico.</p><p><br></p><p>3) Sea honesto</p><p><br></p><p>Nuestro estado predeterminado es negar nuestra ignorancia, especialmente frente a los niños. Estamos a la defensiva y desdeñosos, y la mayoría de los niños pueden decir que estás tan perdido como ellos.</p><p><br></p><p>Mi solución fue admitir esto desde el principio. El niño me preguntó qué sentido tenía aprender latín y le dije que no lo sabía. Supuestamente le ayudó con otros idiomas, pero tal vez algún día podría usarlo para impresionar a personas pretenciosas en los cócteles. Me preguntó por qué algunos verbos rompían los patrones de conjugación y le dije que era la forma de los antiguos de torturarnos.</p><p><br></p><p>Cuando era niño, aprendió el idioma más rápido que yo, pero tuvo más dificultades con algunas de las sutilezas. Hubo momentos en que estaba desconcertado y me hablaba en voz alta frente a él.</p><p><br></p><p>Soy un tutor de matemáticas. ¿Qué diablos me hizo pensar que estaba equipado para enseñar latín, y mucho menos aprenderlo?</p><p><br></p><p>El chico me dijo que parecía ser bastante bueno en todo lo demás, así que probablemente lo entendería, pero había un matiz de preocupación en su voz. Cuanto peor lo hacía, más probabilidades había de que fracasara, y quería que el latín fuera de su vida incluso más que yo.</p><p><br></p><p>Nuestro odio mutuo por el latín nos acercó más. Por primera vez, ambos comprendimos que estábamos juntos en esto.</p><p><br></p><p>4) Tratar con padres y maestros es parte de la educación</p><p><br></p><p>A medida que crecía, empezó a preguntarme sobre sus padres, que eran conservadores de Fox News. Me dijo que podía ver que eran parciales, pero que no entendía por qué ni sabía qué pensar.</p><p><br></p><p>Le dije que pensara por sí mismo y admitiera cuando no sabía algo, y que no debería tener miedo de cambiar de opinión a la luz de nuevas pruebas válidas.</p><p><br></p><p>Se quejaba de sus profesores, uno de los cuales no estaba contento de que le hubiera enseñado diferentes enfoques del álgebra. Con el tiempo, aprendió a hacerlo a la manera del maestro, pero necesitaba otra vía para llegar allí. Ambos estábamos un poco enojados, pero le dije que aprender a tratar con los maestros es parte de la educación.</p><p><br></p><p>Me guardé mi rencor, pero también quería estrangular a su maestro. Este niño había pasado de un promedio D a un B +, y esta maestra todavía lo perseguía. No es de extrañar que tanta gente sea pésima en matemáticas: sus padres y maestros estaban en contra de ellos y ni siquiera se dieron cuenta.</p><p><br></p><p>5) Adopte una actitud de aprendizaje</p><p><br></p><p>Si no está dispuesto a aprender, será difícil enseñar y el primer paso es aceptar lo poco que sabemos. Es hipócrita atacar a tu hijo cuando tú tampoco puedes hacer su tarea, y los niños se dan cuenta de esto y sienten que estás siendo injusto.</p><p><br></p><p>Si elige tener hijos, deberían ser su prioridad número uno y se sorprenderá de cuánto aprendizaje (o relearning) mejorará su cognición en general.</p><p><br></p><p>La lectura y las matemáticas son habilidades fundamentales, y aprender matemáticas es una lección de humildad. Si bien hay poca evidencia que respalde que las matemáticas mejoran el razonamiento en general, las necesita para comprender las ciencias, y cuando gran parte de las tareas de la escuela primaria de su hijo le desconcierta, al menos un poco de incertidumbre penetra en sus puntos de vista. Te das cuenta de que no sabes tanto como pensabas y, para la mayoría, esto puede marcar un nuevo comienzo. A medida que cede la rigidez, resurge la plasticidad y el hábito del aprendizaje permanente es el regalo más valioso que puede hacerse a sí mismo y a su hijo.</p>', 'La razón principal por la que los niños luchan con la escuela es el miedo. Y en la mayoría de los casos, es culpa de sus padres.'),
(7, 23, 'es', '3 leyes para convertirse en una estudiante heterosexual', '<p>En este artículo, explicaré las dos reglas que seguí para convertirme en un estudiante sobresaliente. Si sigue mi consejo, obtendrá mejores calificaciones y también llevará una vida más equilibrada.</p>', '<p>Un historial académico sólido puede abrirle puertas en el futuro. Más importante aún, a través del proceso de convertirse en un estudiante sobresaliente, aprenderá valores como el trabajo duro, la disciplina y la determinación.</p><p>Regla 1: siempre tenga un plan.</p><p>(a) A medida que avanza el semestre, realice un seguimiento de las fechas clave: pruebas y exámenes, fechas límite para la presentación de proyectos, interrupciones del período, etc.</p><p>Ingrese estas fechas en un calendario físico o digital.</p><p>Si elige utilizar un calendario digital, le recomiendo Google Calendar.</p><p><br></p><p>(b) Programe un horario fijo cada semana en el que revise sus próximos eventos durante los próximos dos meses. Marque cuándo comenzará a prepararse para ese examen de matemáticas, a trabajar en ese proyecto de historia o a escribir ese ensayo en inglés.</p><p>(d) A continuación, anote sus compromisos para la próxima semana, p. ej. actividades extracurriculares, reuniones familiares, clases extra. En su calendario, resalte los bloques de tiempo que tendrá para el trabajo escolar.</p><p>Este proceso de planificación puede parecer lento, pero por lo general solo tomará 15 minutos cada semana.</p><p>Esta es una sabia inversión de tiempo como estudiante, porque el resto de la semana será mucho más productiva.</p><p>De esta manera, estudiarás inteligentemente, ¡no solo duro!</p><p><br></p><p>Regla # 2: Sea organizado.</p><p>Alguna vez ha tenido problemas para encontrar sus notas o tareas cuando las necesitaba? Probablemente terminó perdiendo un tiempo precioso buscándolos, antes de que finalmente se los pidiera prestados a su amigo.</p><p>Muchos estudiantes me dicen que guardan todas sus notas y tareas en una gran pila, ¡y solo las clasifican antes de sus exámenes!</p><p>Ser organizado, es más fácil decirlo que hacerlo, lo sé.</p>', 'En este artículo, explicaré las dos reglas que seguí para convertirme en un estudiante sobresaliente.'),
(8, 23, 'ar', 'علاقة أفضل بينك وبين ولي أمر الطالب', '<div style=\"text-align: right;\">في هذه المقالة ، سأشرح القاعدتين اللتين اتبعتهما لأصبح طالبًا عاديًا. إذا أخذت بنصيحتي ، ستحصل على درجات أفضل وتعيش حياة أكثر توازناً أيضًا.</div>', '<div style=\"text-align: right; \">يمكن للسجل الأكاديمي القوي أن يفتح لك الأبواب في المستقبل. والأهم من ذلك ، من خلال عملية أن تصبح طالبًا عاديًا ، ستتعلم قيمًا مثل العمل الجاد والانضباط والتصميم.</div><div style=\"text-align: right; \"><br></div><div style=\"text-align: right; \">القاعدة 1: امتلك خطة دائمًا.</div><div style=\"text-align: right; \">(أ) مع تقدم الفصل الدراسي ، تتبع التواريخ الرئيسية: الاختبارات والامتحانات والمواعيد النهائية لتقديم المشروع وفواصل الفصل الدراسي وما إلى ذلك.</div><div style=\"text-align: right; \"><br></div><div style=\"text-align: right; \">أدخل هذه التواريخ في تقويم مادي أو رقمي.</div><div style=\"text-align: right; \"><br></div><div style=\"text-align: right; \">إذا اخترت استخدام تقويم رقمي ، فإنني أوصي بتقويم Google.</div><div style=\"text-align: right; \"><br></div><div style=\"text-align: right; \">(ب) حدد موعدًا محددًا كل أسبوع حيث تقوم بمراجعة الأحداث القادمة على مدار الشهرين المقبلين. ضع علامة على الوقت الذي ستبدأ فيه التحضير لامتحان الرياضيات هذا ، أو العمل في مشروع التاريخ ، أو كتابة هذه الورقة باللغة الإنجليزية.</div><div style=\"text-align: right; \"><br></div><div style=\"text-align: right; \">(د) بعد ذلك ، دوِّن التزاماتك للأسبوع القادم ، على سبيل المثال الأنشطة اللامنهجية والتجمعات العائلية والفصول الإضافية. في التقويم الخاص بك ، حدد فترات الوقت التي ستتاح لك للعمل المدرسي.</div><div style=\"text-align: right; \"><br></div><div style=\"text-align: right; \">قد تبدو عملية التخطيط هذه مضيعة للوقت ، ولكنها عادة ما تستغرق 15 دقيقة فقط كل أسبوع.</div><div style=\"text-align: right; \"><br></div><div style=\"text-align: right; \">هذا استثمار حكيم للوقت كطالب ، لأن بقية الأسبوع ستصبح أكثر إنتاجية بكثير.</div><div style=\"text-align: right; \"><br></div><div style=\"text-align: right; \">بهذه الطريقة ، ستدرس بذكاء ، وليس فقط بجد!</div><div style=\"text-align: right; \"><br></div><div style=\"text-align: right; \">القاعدة رقم 2: كن منظمًا.</div><div style=\"text-align: right; \">هل واجهت مشكلة في العثور على ملاحظاتك أو مهامك عندما احتجت إليها؟ ربما انتهى بك الأمر إلى إضاعة الوقت الثمين في البحث عنهم ، قبل أن تطلب أخيرًا استعارتهم من صديقك.</div><div style=\"text-align: right; \"><br></div><div style=\"text-align: right; \">يخبرني العديد من الطلاب أنهم يحتفظون بجميع ملاحظاتهم وواجباتهم في كومة كبيرة واحدة ، ولا يقوموا بفرزها إلا قبل امتحاناتهم!</div><div style=\"text-align: right; \"><br></div><div style=\"text-align: right; \">كونك منظمًا - القول أسهل من الفعل ، أعلم.</div>', 'في هذه المقالة ، سأشرح القاعدتين اللتين اتبعتهما لأصبح طالبًا عاديًا.'),
(9, 22, 'ar', 'علاقة أفضل بينك وبين ولي أمر الطالب', '<p style=\"text-align: right; \">العلاقة بين المعلم والوالدين هي علاقة مهمة ويتم التغاضي عنها للأسف إلى حد كبير. لماذا هو مهم؟ حسنًا ، تساعد العلاقة الجيدة بينك وبين ولي أمر الطالب أو الوصي عليه في مساعدة الطلاب على أداء أفضل على المستوى الشخصي والأكاديمي. </p>', '<p style=\"text-align: right; \">الرحمة والإيجابية هي كل شيء</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">قد يكون التعامل معك أمرًا مرهقًا للوالدين أو الأوصياء. قد يكون هناك خوف من أن أداء طفلهم ليس جيدًا كما ينبغي ، أو ضيق الوقت للتواصل ، أو حتى حواجز اللغة. بصفتك مدرسًا ، فإن التعاطف وتقديم المعلومات بنبرة مهذبة يؤدي إلى العجائب في مثل هذه المواقف. من الأفضل الابتسام والتواصل البصري والترحيب وتقديم أي نصيحة إذا لزم الأمر. إحدى الحيل الجيدة للمساعدة في تهدئة الآباء أو الأوصياء عند التحدث إليهم هي الاعتراف أولاً بشيء إيجابي عن طفلهم لاحظته مهما كان صغيراً. على سبيل المثال ، ربما لاحظت أنهم أكثر انخراطًا في دروسهم وطرحوا المزيد من الأسئلة.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">كن استباقيًا وتواصل كثيرًا</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">قد يتحدث بعض المعلمين مع الوالدين أو الأوصياء فقط عندما تكون هناك مشكلة ، مما يخلق بيئة سلبية لكليهما. هذا هو السبب في أنه من الضروري بذل الجهد للتحدث معهم كثيرًا سواء كان ذلك وجهًا لوجه أو مكالمة هاتفية أو حتى رسالة بريد إلكتروني. من الأفضل إبقائهم على اطلاع دائم بما يتعلمه أطفالهم. غالبًا ما يمنعهم التواصل من الشعور باليقظة القصوى عند التواصل معهم ويمكنه أيضًا تعزيز صداقة جميلة. بالطبع من المهم معرفة أن الآباء والأوصياء مشغولون! لذا تأكد عند التواصل معهم أنك تخطط مسبقًا للعثور على وقت يناسبهم بشكل أفضل.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">اجعل الوالد أو الوصي يشعر بالتقدير واطلب مشورتهما</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">من الطرق الرائعة لبناء علاقة مع الوالدين أو الأوصياء إشراكهم في تعليم أطفالهم. هذا لا يعني مجرد مساعدتهم في أداء واجباتهم المدرسية ، ولكن قد يعني مطالبتهم بالمشاركة في الأنشطة أو الأحداث المدرسية. يُعد سؤالهم عما إذا كانوا يرغبون في المساعدة في تنظيم حدث طريقة رائعة للتعرف عليهم ومنحهم فرصة لمقابلة أولياء الأمور أو الأوصياء الآخرين. يمكن أن يكون أيضًا شيئًا بسيطًا مثل إنشاء خطة درس تطلب مدخلات منهم. بالطبع كل هذا يعتمد على جدولهم الزمني وما إذا كان لديهم الوقت للمشاركة. في النهاية ، كلما حاولت إشراكهم في الأنشطة ، كان ذلك أفضل.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">طريقة أخرى رائعة لجعلهم يشعرون بالتقدير هي طلب نصيحتهم. إذا كان الطالب يعرض سلوكيات سلبية أثناء الدرس ، فمن الحكمة طلب مشورة الوالد أو الوصي. من خلال طلب نصيحتهم ، يمكن أن يحدث شيئان. أولاً ، قد لا يعرفون أن هناك سلوكًا سلبيًا للبدء به لأن الطالب قد لا يعرضه في المنزل. ثانيًا ، أنت تبني علاقة أفضل مع الوالد أو الوصي من خلال الحصول على مدخلاتهم في هذا الموقف ، مما سيبني الثقة. لا يجب أن تدور الأسئلة حول تعليم الطالب فقط عند التحدث إليهم ، بل يمكنك أيضًا طرح أسئلة حول اهتمامات الطالب والخطط التي لديهم خلال العطلات. من المهم دائمًا أن تتصرف بشكل احترافي عند التعامل مع أحد الوالدين أو الوصي ، ولكن لا يجب أن تكون المحادثة فقط حول التعليم.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">تجنب أخذها بشكل شخصي والافتراضات</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">الآباء والأوصياء بشر ولديهم ضغوط خاصة بهم للتعامل معها سواء كان ذلك في العمل أو في حياتهم المنزلية. من الأفضل لك أن تحافظ على هدوئك دائمًا ولا تأخذ أي شيء يقولونه على محمل الجد. يجب عليك دائمًا الرد بأسئلة من شأنها أن تساعد في نزع فتيل الموقف. على سبيل المثال ، قد يقول أحد الوالدين أو الوصي \"أنت تقول هذا لأنك خرجت لإحضار طفلي\" وأفضل طريقة للرد على سؤال مثل هذا هي \"أنا آسف لأنك تشعر بهذه الطريقة ، يرجى إعلامي لماذا تعتقد هذا؟\"</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">كما يجب ألا تضع افتراضات حول الحياة المنزلية للطالب. ما لم يتم ذكر ذلك ، يمكن للافتراض أن يسبب العديد من المشاكل ويمكن أن يكون غير حساس لوضع الأسرة. يجب ألا تفترض أن الطالب يعيش مع كلا الوالدين أو أي من الوالدين في هذا الشأن. الآن ، في عالمنا المتنوع عالميًا ، لا يجب أن تفترض أن اللغة الأولى للوالد أو الوصي هي اللغة الإنجليزية ويجب دائمًا تأكيد ما إذا كان بإمكانهم التحدث باللغة الإنجليزية في المقام الأول. سيكون لكل طالب وضع مختلف عن الوضع الذي يليه. تؤدي الافتراضات إلى سوء الفهم الذي يمكن أن يخلق ظروفًا أكثر صعوبة للتعلم.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">قد يكون بناء علاقة مع أحد الوالدين أو الوصي أمرًا صعبًا في بعض الأحيان. يمكن أن يساعدك وضع هذه الأفكار في الاعتبار على التواصل معها بشكل أفضل. من الجيد أن تتذكر ، في نهاية اليوم ، أنه كلما كان لديك اتصال أفضل معهم ، كان من الأفضل أن يساعدوا في تعليم الطالب ، مما يسمح لهم في النهاية بتحقيق النجاح الأكاديمي وتعزيز حب التعلم.</p>', 'العلاقة بين المعلم والوالدين هي علاقة مهمة ويتم التغاضي عنها للأسف إلى حد كبير.'),
(10, 22, 'es', 'Mejor relación entre usted y los padres de su estudiante', '<p>La relación padre / tutor es una relación importante y, lamentablemente, se pasa por alto en gran medida. ¿Por qué es importante? Bueno, una buena relación entre usted y el padre o tutor del estudiante sirve para ayudar a los estudiantes a desempeñarse mejor a nivel personal y académico. Fomentar una relación con ellos como tutor puede ser un desafío debido a una serie de factores; sin embargo, hay varias formas de construir esta relación y optimizar el sistema de apoyo al aprendizaje de los estudiantes a lo largo del tiempo.</p>', '<p>La compasión y la positividad lo son todo</p><p>Puede ser estresante para los padres o tutores interactuar con usted. Puede haber temor de que a su hijo no le esté yendo tan bien como debería, falta de tiempo para conectarse o incluso barreras del idioma. Como tutor, ser compasivo y brindar información en un tono educado hace maravillas en situaciones como esta. Es mejor sonreír, hacer contacto visual, ser acogedor y ofrecer cualquier consejo si es necesario. Un buen truco para ayudar a los padres o tutores a hablar con ellos es reconocer primero algo positivo acerca de su hijo que haya notado, sin importar lo pequeño que sea. Por ejemplo, es posible que haya notado que están más involucrados en sus lecciones y hacen más preguntas.</p><p><br></p><p>Sea proactivo y comuníquese con frecuencia</p><p><br></p><p>Es posible que algunos tutores solo hablen con los padres o tutores cuando hay un problema, lo que crea un entorno negativo para ambos. Por eso es clave hacer el esfuerzo de hablar con ellos a menudo, ya sea cara a cara, por teléfono o incluso por correo electrónico. Es mejor mantenerlos actualizados sobre el aprendizaje de sus hijos. Comunicarse a menudo evita que se sientan en alerta máxima cuando se acerca e incluso puede fomentar una hermosa amistad. ¡Por supuesto que es importante saber que los padres y tutores están ocupados! Por eso, cuando te comuniques con ellos, asegúrate de planificar con anticipación para encontrar el momento que mejor funcione para ellos.</p><p><br></p><p>Haga que el padre o tutor se sienta valorado y solicite su consejo</p><p><br></p><p>Una excelente manera de entablar una relación con los padres o tutores es involucrarlos en la educación de sus hijos. Esto no significa solo que los ayuden con la tarea, sino que también podría significar pedirles que participen en actividades o eventos escolares. Preguntarles si les gustaría ayudar a organizar un evento es una excelente manera de conocerlos y darles la oportunidad de conocer a otros padres o tutores. También podría ser algo tan simple como crear un plan de lección que solicite su opinión. Por supuesto, todo esto depende de su horario y si tienen tiempo para participar. Al final, cuanto más intente involucrarlos en las actividades, mejor.</p><p><br></p><p>Otra excelente manera de hacerlos sentir valorados es pedirles su consejo. Si su estudiante muestra comportamientos negativos durante una lección, es aconsejable buscar el consejo del padre o tutor. Al pedirles su consejo, pueden ocurrir dos cosas. Uno, para empezar, es posible que no sepan que existe un comportamiento negativo, ya que es posible que el estudiante no lo esté mostrando en casa. Dos, está construyendo una mejor relación con el padre o tutor al obtener su opinión en esta situación, lo que generará confianza. Las preguntas no tienen que ser solo sobre la educación del estudiante al hablar con él, también puede hacer preguntas sobre el interés del estudiante y los planes que tiene durante las vacaciones. Siempre es importante que te comportes de manera profesional cuando trates con un padre o tutor, pero la conversación no tiene que ser estrictamente sobre educación.</p><p><br></p><p>Evite tomárselo personalmente y hacer suposiciones</p><p><br></p><p>Los padres y tutores son humanos y tienen que lidiar con su propio estrés, ya sea en el trabajo o en su vida familiar. Es mejor para usted mantener siempre la calma y nunca tomar en serio nada de lo que le digan. Siempre debe responder con preguntas que ayuden a calmar la situación. Por ejemplo, un padre o tutor puede decir \"Dices esto porque quieres atrapar a mi hijo\" y la mejor manera de responder a una pregunta como esta es \"Lamento que te sientas así, por favor avísame Por qué piensas esto?</p><p>Además, no debe hacer suposiciones sobre la vida hogareña de un estudiante. A menos que se haya indicado así, una suposición puede causar muchos problemas y puede ser insensible a la situación de una familia. No debe asumir que el estudiante vive con ambos padres o con cualquier padre. Ahora, en nuestro mundo globalmente diverso, no debe asumir que el primer idioma del padre o tutor es el inglés y siempre debe confirmar si pueden hablar inglés en primer lugar. Cada estudiante tendrá una situación diferente a la del próximo. Las suposiciones conducen a malentendidos que pueden crear circunstancias más desafiantes para el aprendizaje.</p><p><br></p><p>Establecer una relación con un padre o tutor a veces puede ser un desafío. Tener estas ideas en mente puede ayudarlo a conectarse mejor con ellas. Es bueno recordar que, al final del día, cuanto mejor sea la conexión que tenga con ellos, mejor podrán ayudar a enseñar al estudiante, lo que en última instancia les permitirá alcanzar el éxito académico y fomentar el amor por el aprendizaje.</p>', 'La relación padre / tutor es una relación importante y, lamentablemente, se pasa por alto en gran medida.');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED DEFAULT NULL,
  `reserve_meeting_id` int(10) UNSIGNED DEFAULT NULL,
  `subscribe_id` int(10) UNSIGNED DEFAULT NULL,
  `promotion_id` int(10) UNSIGNED DEFAULT NULL,
  `ticket_id` int(10) UNSIGNED DEFAULT NULL,
  `special_offer_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `cart_creator_id_foreign` (`creator_id`) USING BTREE,
  KEY `cart_webinar_id_foreign` (`webinar_id`) USING BTREE,
  KEY `cart_ticket_id_foreign` (`ticket_id`) USING BTREE,
  KEY `cart_reserve_meeting_id_foreign` (`reserve_meeting_id`) USING BTREE,
  KEY `cart_subscribe_id_foreign` (`subscribe_id`) USING BTREE,
  KEY `cart_promotion_id_foreign` (`promotion_id`) USING BTREE,
  KEY `cart_special_offer_id_foreign` (`special_offer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `creator_id`, `webinar_id`, `reserve_meeting_id`, `subscribe_id`, `promotion_id`, `ticket_id`, `special_offer_id`, `created_at`) VALUES
(94, 1015, 2001, NULL, NULL, NULL, NULL, 13, 1626284814),
(106, 1017, NULL, 5, NULL, NULL, NULL, NULL, 1646379963);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `parent_id` (`parent_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=612 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `icon`, `order`) VALUES
(520, NULL, '/store/1/default_images/categories_icons/feather.png', NULL),
(522, NULL, '/store/1/default_images/categories_icons/briefcase.png', NULL),
(526, NULL, '/store/1/default_images/categories_icons/anchor.png', NULL),
(528, NULL, '/store/1/default_images/categories_icons/code.png', NULL),
(601, 522, NULL, 1),
(602, 522, NULL, 2),
(603, 522, NULL, 3),
(606, 528, NULL, 1),
(607, 528, NULL, 2),
(608, 528, NULL, 3),
(609, 526, NULL, 1),
(610, 526, NULL, 2),
(611, 526, NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `category_translations`
--

DROP TABLE IF EXISTS `category_translations`;
CREATE TABLE IF NOT EXISTS `category_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_translations_category_id_foreign` (`category_id`),
  KEY `category_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_translations`
--

INSERT INTO `category_translations` (`id`, `category_id`, `locale`, `title`) VALUES
(55, 528, 'en', 'Sciences'),
(56, 522, 'en', 'Management');

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

DROP TABLE IF EXISTS `certificates`;
CREATE TABLE IF NOT EXISTS `certificates` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `quiz_id` int(10) UNSIGNED NOT NULL,
  `quiz_result_id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `user_grade` int(10) UNSIGNED DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `certificates_quiz_id_foreign` (`quiz_id`) USING BTREE,
  KEY `certificates_quiz_result_id_foreign` (`quiz_result_id`) USING BTREE,
  KEY `certificates_student_id_foreign` (`student_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `certificates_templates`
--

DROP TABLE IF EXISTS `certificates_templates`;
CREATE TABLE IF NOT EXISTS `certificates_templates` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position_x` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position_y` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `font_size` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_color` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('draft','publish') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `certificates_templates`
--

INSERT INTO `certificates_templates` (`id`, `image`, `position_x`, `position_y`, `font_size`, `text_color`, `status`, `created_at`, `updated_at`) VALUES
(1, '/store/1/default_images/certificate.jpg', '320', '400', '32', '#314963', 'publish', 1608663541, 1635446250);

-- --------------------------------------------------------

--
-- Table structure for table `certificate_template_translations`
--

DROP TABLE IF EXISTS `certificate_template_translations`;
CREATE TABLE IF NOT EXISTS `certificate_template_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `certificate_template_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rtl` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `certificate_template_id` (`certificate_template_id`),
  KEY `certificate_template_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `certificate_template_translations`
--

INSERT INTO `certificate_template_translations` (`id`, `certificate_template_id`, `locale`, `title`, `body`, `rtl`) VALUES
(1, 1, 'en', 'Certificate', 'This certificate awarded to [student] \r\nregarding to passing the [course] with \r\nthe [grade] with success\r\nCertificate ID : [certificate_id]', 0),
(2, 1, 'es', 'Certificado', 'Este certificado se otorgó a [student]\r\nen cuanto a aprobar el [course] con\r\nel [grade] con éxito\r\nID de certificado: [certificate_id]', 0);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `review_id` int(10) UNSIGNED DEFAULT NULL,
  `webinar_id` int(10) UNSIGNED DEFAULT NULL,
  `blog_id` int(10) UNSIGNED DEFAULT NULL,
  `reply_id` int(10) UNSIGNED DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','active') COLLATE utf8mb4_unicode_ci NOT NULL,
  `report` tinyint(1) NOT NULL DEFAULT 0,
  `disabled` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` int(11) NOT NULL,
  `viewed_at` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `comments_webinar_id_foreign` (`webinar_id`) USING BTREE,
  KEY `comments_user_id_foreign` (`user_id`) USING BTREE,
  KEY `comments_review_id_foreign` (`review_id`) USING BTREE,
  KEY `comments_reply_id_foreign` (`reply_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `review_id`, `webinar_id`, `blog_id`, `reply_id`, `comment`, `status`, `report`, `disabled`, `created_at`, `viewed_at`) VALUES
(66, 1015, NULL, NULL, 21, NULL, 'Thank you for this excellent article.', 'active', 0, 0, 1646413650, NULL),
(67, 1034, NULL, 2012, NULL, NULL, 'a good course', 'active', 0, 0, 1661253426, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments_reports`
--

DROP TABLE IF EXISTS `comments_reports`;
CREATE TABLE IF NOT EXISTS `comments_reports` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `blog_id` int(10) UNSIGNED DEFAULT NULL,
  `webinar_id` int(10) UNSIGNED DEFAULT NULL,
  `comment_id` int(10) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `comments_reports_comment_id_foreign` (`comment_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `reply` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','replied') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `course_learning`
--

DROP TABLE IF EXISTS `course_learning`;
CREATE TABLE IF NOT EXISTS `course_learning` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `text_lesson_id` int(10) UNSIGNED DEFAULT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `session_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `course_learning_user_id_foreign` (`user_id`),
  KEY `course_learning_text_lesson_id_foreign` (`text_lesson_id`),
  KEY `course_learning_file_id_foreign` (`file_id`),
  KEY `course_learning_session_id_foreign` (`session_id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_learning`
--

INSERT INTO `course_learning` (`id`, `user_id`, `text_lesson_id`, `file_id`, `session_id`, `created_at`) VALUES
(62, 3, NULL, 77, NULL, 1660750683),
(63, 3, NULL, 78, NULL, 1660750703),
(64, 1032, NULL, 77, NULL, 1660931251),
(65, 1032, NULL, 78, NULL, 1660931267),
(66, 1032, NULL, 79, NULL, 1660931313),
(67, 3, NULL, NULL, 77, 1661341579),
(68, 3, NULL, NULL, 78, 1661341581),
(69, 3, NULL, NULL, 79, 1661341583),
(70, 3, NULL, NULL, 80, 1661341586),
(71, 1032, NULL, NULL, 93, 1661614400);

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

DROP TABLE IF EXISTS `discounts`;
CREATE TABLE IF NOT EXISTS `discounts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_type` enum('percentage','fixed_amount') COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` enum('all','course','category','meeting') COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percent` int(10) UNSIGNED DEFAULT NULL,
  `amount` int(10) UNSIGNED DEFAULT NULL,
  `max_amount` int(10) UNSIGNED DEFAULT NULL,
  `minimum_order` int(10) UNSIGNED DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT 1,
  `user_type` enum('all_users','special_users') COLLATE utf8mb4_unicode_ci NOT NULL,
  `for_first_purchase` tinyint(1) NOT NULL DEFAULT 0,
  `status` enum('active','disable') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `expired_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `discounts_code_unique` (`code`),
  KEY `discounts_creator_id_foreign` (`creator_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `discounts`
--

INSERT INTO `discounts` (`id`, `creator_id`, `title`, `discount_type`, `source`, `code`, `percent`, `amount`, `max_amount`, `minimum_order`, `count`, `user_type`, `for_first_purchase`, `status`, `expired_at`, `created_at`) VALUES
(7, 1, 'Black Friday', 'percentage', 'all', 'BLK2021', 20, 10, NULL, NULL, 20, 'all_users', 0, 'active', 1639427340, 1626132792);

-- --------------------------------------------------------

--
-- Table structure for table `discount_categories`
--

DROP TABLE IF EXISTS `discount_categories`;
CREATE TABLE IF NOT EXISTS `discount_categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `discount_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `discount_categories_discount_id_foreign` (`discount_id`),
  KEY `discount_categories_category_id_foreign` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discount_courses`
--

DROP TABLE IF EXISTS `discount_courses`;
CREATE TABLE IF NOT EXISTS `discount_courses` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `discount_id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `discount_courses_discount_id_foreign` (`discount_id`),
  KEY `discount_courses_course_id_foreign` (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discount_groups`
--

DROP TABLE IF EXISTS `discount_groups`;
CREATE TABLE IF NOT EXISTS `discount_groups` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `discount_id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `discount_groups_discount_id_foreign` (`discount_id`),
  KEY `discount_groups_group_id_foreign` (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discount_users`
--

DROP TABLE IF EXISTS `discount_users`;
CREATE TABLE IF NOT EXISTS `discount_users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `discount_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `discount_users_discount_id_foreign` (`discount_id`) USING BTREE,
  KEY `discount_users_user_id_foreign` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
CREATE TABLE IF NOT EXISTS `faqs` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL,
  `created_at` int(10) UNSIGNED DEFAULT NULL,
  `updated_at` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `faqs_webinar_id_foreign` (`webinar_id`) USING BTREE,
  KEY `faqs_creator_id_foreign` (`creator_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `creator_id`, `webinar_id`, `order`, `created_at`, `updated_at`) VALUES
(18, 1015, 1996, NULL, 1624945244, NULL),
(19, 1015, 1996, NULL, 1624945306, NULL),
(20, 1015, 1996, NULL, 1624945328, NULL),
(28, 3, 2001, NULL, 1625079104, NULL),
(29, 864, 2003, NULL, 1625300294, NULL),
(30, 864, 2003, NULL, 1625300305, NULL),
(31, 864, 2003, NULL, 1625300320, NULL),
(49, 864, 2012, NULL, 1659482157, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `faq_translations`
--

DROP TABLE IF EXISTS `faq_translations`;
CREATE TABLE IF NOT EXISTS `faq_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `faq_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `faq_translations_faq_id_foreign` (`faq_id`),
  KEY `faq_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq_translations`
--

INSERT INTO `faq_translations` (`id`, `faq_id`, `locale`, `title`, `answer`) VALUES
(6, 18, 'en', 'What is the course level??', 'This is a course for beginners so you will get familiar with the topic from scratch.'),
(7, 19, 'en', 'How can I get course updates?', 'You will receive a notification after each update is released so you can download updated files from the course page.'),
(8, 20, 'en', 'Is it a supported course?', 'Yes, you can get in touch with the instructor using the support system.'),
(16, 28, 'en', 'Is it a supported course?', 'Yes, you can get in touch with the instructor using the support system.'),
(17, 29, 'en', 'How can I get course updates?', 'You will receive a notification after each update is released so you can download updated files from the course page.'),
(18, 30, 'en', 'Can I have a private meeting with the instructor?', 'Yes, you can reserve a 1 to 1 meeting with the instructor using the instructor profile.'),
(19, 31, 'en', 'Is it a supported course?', 'Yes, you can get in touch with the instructor using the support system.'),
(37, 49, 'en', 'What is the purpose of the course?', 'No web development course is complete without a hands-on project. In this course, we’ll be using the three pillars of the web (HTML, CSS, and JavaScript) to build your first project, a personalized portfolio website. Once you have these under your belt, picking up other tools and languages is much easier.');

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
CREATE TABLE IF NOT EXISTS `favorites` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `favorites_webinar_id_foreign` (`webinar_id`) USING BTREE,
  KEY `favorites_user_id_foreign` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `feature_webinars`
--

DROP TABLE IF EXISTS `feature_webinars`;
CREATE TABLE IF NOT EXISTS `feature_webinars` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `page` enum('categories','home','home_categories') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('publish','pending') COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `feature_webinars_webinar_id_index` (`webinar_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `feature_webinar_translations`
--

DROP TABLE IF EXISTS `feature_webinar_translations`;
CREATE TABLE IF NOT EXISTS `feature_webinar_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `feature_webinar_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `feature_webinar_translations_feature_webinar_id_foreign` (`feature_webinar_id`),
  KEY `feature_webinar_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
CREATE TABLE IF NOT EXISTS `files` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `chapter_id` int(10) UNSIGNED DEFAULT NULL,
  `accessibility` enum('free','paid') COLLATE utf8mb4_unicode_ci NOT NULL,
  `downloadable` tinyint(1) DEFAULT 0,
  `storage` enum('upload','youtube','vimeo','external_link','google_drive','dropbox','iframe','s3','upload_archive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `volume` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_type` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `interactive_type` enum('adobe_captivate','i_spring','custom') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interactive_file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interactive_file_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `files_webinar_id_foreign` (`webinar_id`) USING BTREE,
  KEY `files_creator_id_foreign` (`creator_id`) USING BTREE,
  KEY `files_chapter_id_foreign` (`chapter_id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `creator_id`, `webinar_id`, `chapter_id`, `accessibility`, `downloadable`, `storage`, `file`, `volume`, `file_type`, `interactive_type`, `interactive_file_name`, `interactive_file_path`, `order`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(74, 864, 2012, 31, 'free', 0, 'youtube', 'https://www.youtube.com/watch?v=Bzohr7uqBS0', '0 bytes', 'video', NULL, NULL, NULL, NULL, 'active', 1659481972, NULL, NULL),
(75, 864, 2012, 31, 'free', 0, 'youtube', 'https://www.youtube.com/watch?v=mnwVeRMBiiA', '0 bytes', 'video', NULL, NULL, NULL, NULL, 'active', 1659482016, NULL, NULL),
(76, 864, 2012, 32, 'free', 0, 'youtube', 'https://www.youtube.com/watch?v=36uFVCXJ8oo', '0 bytes', 'video', NULL, NULL, NULL, NULL, 'active', 1659482114, NULL, NULL),
(77, 3, 2010, 33, 'free', 0, 'youtube', 'https://www.youtube.com/watch?v=SJeBRW1QQMA', '0 bytes', 'video', NULL, NULL, NULL, NULL, 'active', 1660750163, NULL, NULL),
(78, 3, 2010, 33, 'free', 0, 'youtube', 'https://www.youtube.com/watch?v=Bzohr7uqBS0', '0 bytes', 'video', NULL, NULL, NULL, NULL, 'active', 1660750222, NULL, NULL),
(79, 3, 2010, 34, 'free', 0, 'youtube', 'https://www.youtube.com/watch?v=SJeBRW1QQMA', '0 bytes', 'video', NULL, NULL, NULL, NULL, 'active', 1660750274, NULL, NULL),
(80, 3, 2016, 37, 'free', 0, 'youtube', 'https://www.youtube.com/watch?v=HBOLGWyNitY', '0 bytes', 'video', NULL, NULL, NULL, NULL, 'active', 1660918440, NULL, NULL),
(81, 3, 2017, 40, 'paid', 0, 'youtube', 'https://www.youtube.com/watch?v=wKb1nZ5YnCg', '0 bytes', 'video', NULL, NULL, NULL, NULL, 'active', 1660920218, NULL, NULL),
(82, 3, 2019, 43, 'free', 1, 'upload', '/store/1/CamScanner 06-16-2022 20.34.pdf', '569.52 KB', 'pdf', NULL, NULL, NULL, NULL, 'active', 1660929712, NULL, NULL),
(83, 3, 2020, 44, 'free', 0, 'youtube', 'https://www.youtube.com/watch?v=HBOLGWyNitY', '0 bytes', 'video', NULL, NULL, NULL, NULL, 'active', 1660930135, NULL, NULL),
(84, 3, 2020, 44, 'free', 0, 'youtube', 'https://www.youtube.com/watch?v=HBOLGWyNitY', '0 bytes', 'video', NULL, NULL, NULL, NULL, 'active', 1660930160, NULL, NULL),
(85, 3, 2020, 44, 'free', 0, 'youtube', 'https://www.youtube.com/watch?v=HBOLGWyNitY', '0 bytes', 'video', NULL, NULL, NULL, NULL, 'active', 1660930197, NULL, NULL),
(86, 3, 2028, 49, 'free', 0, 'youtube', 'https://www.youtube.com/watch?v=WsD5QvLn4is', '0 bytes', 'video', NULL, NULL, NULL, NULL, 'active', 1661522662, NULL, NULL),
(87, 3, 2028, 49, 'free', 0, 'youtube', 'https://www.youtube.com/watch?v=WsD5QvLn4is', '0 bytes', 'video', NULL, NULL, NULL, NULL, 'active', 1661522697, NULL, NULL),
(88, 864, 2031, 52, 'free', 0, 'youtube', 'https://www.youtube.com/watch?v=WsD5QvLn4is', '0 bytes', 'video', NULL, NULL, NULL, NULL, 'active', 1661528260, NULL, NULL),
(89, 864, 2032, 53, 'free', 0, 'youtube', 'https://www.youtube.com/watch?v=WsD5QvLn4is', '0 bytes', 'video', NULL, NULL, NULL, NULL, 'active', 1661528522, NULL, NULL),
(90, 864, 2003, 60, 'free', 0, 'youtube', 'https://www.youtube.com/watch?v=rv4LlmLmVWk', '0 bytes', 'video', NULL, NULL, NULL, NULL, 'active', 1661617632, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `file_translations`
--

DROP TABLE IF EXISTS `file_translations`;
CREATE TABLE IF NOT EXISTS `file_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `file_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `file_translations_file_id_foreign` (`file_id`),
  KEY `file_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `file_translations`
--

INSERT INTO `file_translations` (`id`, `file_id`, `locale`, `title`, `description`) VALUES
(44, 74, 'en', 'Basic Structure', 'Frontend developers: Frontend developers implement web page designs using HTML and CSS. They make sure the website looks pretty on different devices, and that the forms and buttons work.'),
(45, 75, 'en', 'Understanding Topography', 'There are many other specific roles in web development, like system architects, AI, machine learning and security engineers. These roles require more specialized knowledge of one or more of the above types of development, so many professionals in these roles will start by gaining some general web development experience.'),
(46, 76, 'en', 'Forms in HTML', 'In short, very good. Employment of web developers is projected to grow 13 percent from 2018 to 2028, much faster than the average for all occupations.'),
(47, 77, 'en', 'Introduction to Course', NULL),
(48, 78, 'en', 'Conclusion', 'Learn how to choose a fullstack JavaScript framework by asking questions about your web app in a flow chart. If you\'re crazy enough, you can even build your own JS framework from scratch like me.'),
(49, 79, 'en', 'Basic Structure', 'Learn how to choose a fullstack JavaScript framework by asking questions about your web app in a flow chart. If you\'re crazy enough, you can even build your own JS framework from scratch like me.'),
(50, 80, 'en', 'A New Text attachment', 'video file attachment https://www.youtube.com/watch?v=HBOLGWyNitY'),
(51, 81, 'en', 'Third course File', 'the description https://www.youtube.com/watch?v=wKb1nZ5YnCg'),
(52, 82, 'en', 'A New Text Course', 'A pDF'),
(53, 83, 'en', 'Intr', NULL),
(54, 84, 'en', 'Basic', NULL),
(55, 85, 'en', 'Other', NULL),
(56, 86, 'en', 'Introduction', 'Introduction to Mobile App'),
(57, 87, 'en', 'Basic Understanding', 'Basic Understanding'),
(58, 88, 'en', 'Intro', 'KKKK'),
(59, 89, 'en', 'Introduction', 'Watch Introduction'),
(60, 90, 'en', 'Introduction', 'A Video file');

-- --------------------------------------------------------

--
-- Table structure for table `filters`
--

DROP TABLE IF EXISTS `filters`;
CREATE TABLE IF NOT EXISTS `filters` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `filters_category_id_foreign` (`category_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1848 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `filter_options`
--

DROP TABLE IF EXISTS `filter_options`;
CREATE TABLE IF NOT EXISTS `filter_options` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `filter_id` int(10) UNSIGNED NOT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `filter_options_filter_id_foreign` (`filter_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9293 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `filter_option_translations`
--

DROP TABLE IF EXISTS `filter_option_translations`;
CREATE TABLE IF NOT EXISTS `filter_option_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `filter_option_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `filter_option_translations_filter_option_id_foreign` (`filter_option_id`),
  KEY `filter_option_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `filter_translations`
--

DROP TABLE IF EXISTS `filter_translations`;
CREATE TABLE IF NOT EXISTS `filter_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `filter_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `filter_translations_filter_id_foreign` (`filter_id`),
  KEY `filter_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `follows`
--

DROP TABLE IF EXISTS `follows`;
CREATE TABLE IF NOT EXISTS `follows` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `follower` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `status` enum('requested','accepted','rejected') COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `follows_follower_foreign` (`follower`) USING BTREE,
  KEY `follows_user_id_foreign` (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `commission` int(11) DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `groups_creator_id_foreign` (`creator_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `creator_id`, `name`, `discount`, `commission`, `status`, `created_at`) VALUES
(2, 1, 'Vip Instructors', 20, 10, 'active', 1613379096),
(3, 1, 'Special Students', 10, NULL, 'active', 1614530208);

-- --------------------------------------------------------

--
-- Table structure for table `groups_registration_packages`
--

DROP TABLE IF EXISTS `groups_registration_packages`;
CREATE TABLE IF NOT EXISTS `groups_registration_packages` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `group_id` int(10) UNSIGNED NOT NULL,
  `instructors_count` int(11) DEFAULT NULL,
  `students_count` int(11) DEFAULT NULL,
  `courses_capacity` int(11) DEFAULT NULL,
  `courses_count` int(11) DEFAULT NULL,
  `meeting_count` int(11) DEFAULT NULL,
  `status` enum('disabled','active') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `groups_registration_packages_group_id_foreign` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group_users`
--

DROP TABLE IF EXISTS `group_users`;
CREATE TABLE IF NOT EXISTS `group_users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `group_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `group_users_group_id_foreign` (`group_id`) USING BTREE,
  KEY `group_users_user_id_foreign` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `group_users`
--

INSERT INTO `group_users` (`id`, `group_id`, `user_id`, `created_at`) VALUES
(65, 2, 3, 1625974258);

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

DROP TABLE IF EXISTS `meetings`;
CREATE TABLE IF NOT EXISTS `meetings` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `amount` int(10) UNSIGNED DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `in_person` tinyint(1) NOT NULL DEFAULT 0,
  `in_person_amount` int(11) DEFAULT NULL,
  `group_meeting` tinyint(1) NOT NULL DEFAULT 0,
  `online_group_min_student` int(11) DEFAULT NULL,
  `online_group_max_student` int(11) DEFAULT NULL,
  `online_group_amount` int(11) DEFAULT NULL,
  `in_person_group_min_student` int(11) DEFAULT NULL,
  `in_person_group_max_student` int(11) DEFAULT NULL,
  `in_person_group_amount` int(11) DEFAULT NULL,
  `disabled` tinyint(1) DEFAULT 0,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `meetings_creator_id_foreign` (`creator_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `meetings`
--

INSERT INTO `meetings` (`id`, `creator_id`, `amount`, `discount`, `in_person`, `in_person_amount`, `group_meeting`, `online_group_min_student`, `online_group_max_student`, `online_group_amount`, `in_person_group_min_student`, `in_person_group_max_student`, `in_person_group_amount`, `disabled`, `created_at`) VALUES
(30, 1015, 100, NULL, 1, 250, 1, 20, 200, 50, 5, 30, 150, 0, 1625938321),
(34, 3, 50, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1625939607);

-- --------------------------------------------------------

--
-- Table structure for table `meeting_times`
--

DROP TABLE IF EXISTS `meeting_times`;
CREATE TABLE IF NOT EXISTS `meeting_times` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `meeting_id` int(10) UNSIGNED NOT NULL,
  `meeting_type` enum('all','in_person','online') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all',
  `day_label` enum('saturday','sunday','monday','tuesday','wednesday','thursday','friday') COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `meeting_times_meeting_id_foreign` (`meeting_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `meeting_times`
--

INSERT INTO `meeting_times` (`id`, `meeting_id`, `meeting_type`, `day_label`, `time`, `description`, `created_at`) VALUES
(93, 30, 'all', 'saturday', '10:00AM-11:30AM', NULL, 1625938350),
(94, 30, 'all', 'sunday', '05:00PM-06:00PM', NULL, 1625938383),
(95, 30, 'all', 'sunday', '06:30PM-07:30PM', NULL, 1625938416),
(96, 30, 'all', 'monday', '09:45AM-10:15AM', NULL, 1625938436),
(97, 30, 'all', 'monday', '11:00AM-11:45AM', NULL, 1625938462),
(98, 30, 'all', 'monday', '06:00PM-07:30PM', NULL, 1625938497),
(99, 30, 'all', 'tuesday', '08:30AM-09:30AM', NULL, 1625938517),
(100, 30, 'all', 'wednesday', '10:30AM-11:30AM', NULL, 1625938585),
(101, 30, 'all', 'thursday', '04:50PM-05:50PM', NULL, 1625938619),
(102, 30, 'all', 'wednesday', '06:00PM-07:30PM', NULL, 1625938647),
(103, 30, 'all', 'wednesday', '08:30PM-09:45PM', NULL, 1625938681),
(104, 30, 'all', 'wednesday', '10:00PM-10:30PM', NULL, 1625938700),
(105, 30, 'all', 'thursday', '06:00PM-08:00PM', NULL, 1625938755),
(106, 30, 'all', 'friday', '10:15AM-11:45AM', NULL, 1625938776),
(117, 34, 'all', 'monday', '09:30AM-10:30AM', NULL, 1625939631),
(118, 34, 'all', 'tuesday', '09:30AM-10:30AM', NULL, 1625939646),
(119, 34, 'all', 'monday', '10:45AM-11:45AM', NULL, 1625939660),
(120, 34, 'all', 'wednesday', '08:00AM-10:00AM', NULL, 1625939678),
(121, 34, 'all', 'wednesday', '10:30AM-11:30AM', NULL, 1625939700),
(122, 34, 'all', 'wednesday', '05:00PM-06:30PM', NULL, 1625939744),
(123, 34, 'all', 'thursday', '08:00PM-09:30PM', NULL, 1625939763),
(168, 30, 'in_person', 'sunday', '10:00AM-11:30AM', 'School Management Workshop.', 1646352499),
(169, 30, 'in_person', 'tuesday', '10:30AM-11:30AM', 'Risk Management Workshop.', 1646352560),
(170, 30, 'online', 'friday', '04:30PM-05:30PM', NULL, 1646352585),
(171, 30, 'online', 'friday', '06:00PM-07:30PM', 'Risk Management Workshop.', 1646352619),
(172, 30, 'in_person', 'friday', '08:00PM-09:30PM', 'Risk Management Workshop.', 1646352638),
(173, 30, 'in_person', 'saturday', '12:15PM-01:45PM', 'Risk Management Workshop.', 1646352676);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=341 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_08_09_145553_create_roles_table', 1),
(4, '2020_08_09_145834_create_sections_table', 1),
(5, '2020_08_09_145926_create_permissions_table', 1),
(6, '2020_08_24_163003_create_webinars_table', 1),
(7, '2020_08_24_164823_create_webinar_partner_teacher_table', 1),
(8, '2020_08_24_165658_create_tags_table', 1),
(9, '2020_08_24_165835_create_webinar_tag_table', 1),
(10, '2020_08_24_171611_create_categories_table', 1),
(11, '2020_08_29_052437_create_filters_table', 1),
(12, '2020_08_29_052900_create_filter_options_table', 1),
(13, '2020_08_29_054455_add_category_id_in_webinar_table', 1),
(14, '2020_09_01_174741_add_seo_description_and_start_end_time_in_webinar_table', 1),
(15, '2020_09_02_180508_create_webinar_filter_option_table', 1),
(16, '2020_09_02_193923_create_tickets_table', 1),
(17, '2020_09_02_210447_create_sessions_table', 1),
(18, '2020_09_02_212642_create_files_table', 1),
(19, '2020_09_03_175543_create_faqs_table', 1),
(20, '2020_09_08_175539_delete_webinar_tag_and_update_tag_table', 1),
(21, '2020_09_09_154522_create_quizzes_table', 1),
(22, '2020_09_09_174646_create_quizzes_questions_table', 1),
(23, '2020_09_09_182726_create_quizzes_questions_answers_table', 1),
(24, '2020_09_14_160028_create_prerequisites_table', 1),
(25, '2020_09_14_183235_nullable_item_id_in_quizzes_table', 1),
(26, '2020_09_14_190110_create_webinar_quizzes_table', 1),
(27, '2020_09_16_163835_create_quizzes_results_table', 1),
(28, '2020_09_24_102115_add_total_mark_in_quize_table', 1),
(29, '2020_09_24_132242_create_comment_table', 1),
(30, '2020_09_24_132639_create_favorites_table', 1),
(31, '2020_09_26_181200_create_certificate_table', 1),
(32, '2020_09_26_181444_create_certificates_templates_table', 1),
(33, '2020_09_30_170451_add_slug_in_webinars_table', 1),
(34, '2020_09_30_191202_create_purchases_table', 1),
(35, '2020_10_02_063828_create_rating_table', 1),
(36, '2020_10_02_094723_edit_table_and_add_foreign_key', 1),
(37, '2020_10_08_055408_add_reviwes_table', 1),
(38, '2020_10_08_084100_edit_status_comments_table', 1),
(39, '2020_10_08_121041_create_meetings_table', 2),
(40, '2020_10_08_121621_create_meeting_times_table', 2),
(41, '2020_10_08_121848_create_meeting_requests_table', 2),
(42, '2020_10_15_172913_add_about_and_head_line_in_users_table', 2),
(43, '2020_10_15_173645_create_follow_table', 2),
(46, '2020_10_17_100606_create_badges_table', 3),
(47, '2020_10_08_121848_create_reserve_meetings_table', 4),
(48, '2020_10_20_193013_update_users_table', 5),
(49, '2020_10_20_211927_create_users_metas_table', 6),
(50, '2020_10_18_220323_convert_creatore_user_id_to_creator_id', 7),
(51, '2020_10_22_153502_create_cart_table', 7),
(52, '2020_10_22_154636_create_orders_table', 7),
(53, '2020_10_22_155930_create_order_items_table', 7),
(54, '2020_10_23_204203_create_sales_table', 7),
(55, '2020_10_23_211459_create_accounting_table', 7),
(56, '2020_10_23_213515_create_discounts_table', 7),
(57, '2020_10_23_213934_create_discount_users_table', 7),
(58, '2020_10_23_235444_create_ticket_users_table', 7),
(59, '2020_10_25_172331_create_groups_table', 7),
(60, '2020_10_25_172523_create_group_users_table', 7),
(62, '2020_11_02_202754_edit_email_in_users_table', 8),
(63, '2020_11_03_200314_edit_some_tables', 9),
(64, '2020_11_06_193300_create_settings_table', 10),
(67, '2020_11_09_202533_create_feature_webinars_table', 11),
(68, '2020_11_10_193459_edit_webinars_table', 12),
(69, '2020_11_11_203344_create_trend_categories_table', 13),
(72, '2020_11_11_222833_create_blog_categories_table', 14),
(75, '2020_11_11_231204_create_blog_table', 15),
(76, '2020_10_25_223247_add_sub_title_tickets_table', 16),
(77, '2020_10_28_001340_add_count_in_discount_users_table', 16),
(78, '2020_10_28_221509_create_payment_channels_table', 16),
(79, '2020_11_01_120909_change_class_name_enum_payment_channels_table', 16),
(80, '2020_11_07_233948_add_some_raw_in_order_items__table', 16),
(81, '2020_11_10_061350_add_discount_id_in_order_items_table', 16),
(82, '2020_11_10_071651_decimal_orders_order_items_sales_table', 16),
(83, '2020_11_11_193138_change_reference_id_type_in_orders_tabel', 16),
(84, '2020_11_11_222413_change_meeting_id_to_meeting_time_id_in_order_items_table', 16),
(85, '2020_11_11_225421_add_locked_at_and_reserved_at_and_change_request_time_to_day_in_reserve_meetings_table', 17),
(86, '2020_11_12_000116_add_type_in_orders_table', 17),
(87, '2020_11_12_001912_change_meeting_id_to_meeting_time_id_in_accounting_table', 17),
(88, '2020_11_12_133009_decimal_paid_amount_in_reserve_meetings_table', 17),
(91, '2020_11_12_170109_add_blog_id_to_comments_table', 18),
(98, '2020_11_14_201228_add_bio_and_ban_to_users_table', 20),
(99, '2020_11_14_224447_create_users_badges_table', 21),
(100, '2020_11_14_233319_create_payout_request_table', 22),
(101, '2020_11_15_010622_change_byer_id_and_add_seller_id_in_sales_table', 22),
(102, '2020_11_16_195009_create_supports_table', 22),
(103, '2020_11_16_201814_create_support_departments_table', 22),
(107, '2020_11_16_202254_create_supports_table', 23),
(109, '2020_11_17_192744_create_support_conversations_table', 24),
(110, '2020_11_17_072348_create_offline_payments_table', 25),
(111, '2020_11_19_191943_add_replied_status_to_comments_table', 25),
(114, '2020_11_20_215748_create_subscribes_table', 26),
(115, '2020_11_21_185519_create_notification_templates_table', 27),
(116, '2020_11_22_210832_create_promotions_table', 28),
(118, '2020_11_23_194153_add_status_column_to_discounts_table', 29),
(119, '2020_11_23_213532_create_users_occupations_table', 30),
(120, '2020_11_30_220855_change_amount_in_payouts_table', 31),
(121, '2020_11_30_231334_add_pay_date_in_offline_payments_table', 31),
(122, '2020_11_30_233018_add_charge_enum_in_type_in_orders_table', 31),
(123, '2020_12_01_193948_create_testimonials_table', 32),
(124, '2020_12_02_202043_edit_and_add_types_to_webinars_table', 33),
(128, '2020_12_04_204048_add_column_creator_id_to_some_tables', 34),
(129, '2020_12_05_205320_create_text_lessons_table', 35),
(130, '2020_12_05_210052_create_text_lessons_attachments_table', 36),
(131, '2020_12_06_215701_add_order_column_to_webinar_items_tables', 37),
(132, '2020_12_11_114844_add_column_storage_to_files_table', 38),
(133, '2020_12_07_211009_add_subscribe_id_in_order_items_table', 39),
(134, '2020_12_07_211657_nullable_payment_method_in_orders_table', 39),
(135, '2020_12_07_212306_add_subscribe_enum__type_in_orders_table', 39),
(136, '2020_12_07_223237_changes_in_sales_table', 39),
(137, '2020_12_07_224925_add_subscribe_id_in_accounting_table', 39),
(138, '2020_12_07_230200_create_subscribe_uses_table', 39),
(139, '2020_12_11_123209_add_subscribe_type_account_in_accounting_table', 39),
(140, '2020_12_11_132819_add_sale_id_in_subscribe_use_in_subscribe_uses_table', 39),
(141, '2020_12_11_135824_add_subscribe_payment_method_in_sales_table', 39),
(143, '2020_12_13_205751_create_advertising_banners_table', 41),
(145, '2020_12_14_204251_create_become_instructors_table', 42),
(146, '2020_11_12_232207_create_reports_table', 43),
(147, '2020_11_12_232207_create_comments_reports_table', 44),
(148, '2020_12_17_210822_create_webinar_reports_table', 45),
(150, '2020_12_18_181551_create_notifications_table', 46),
(151, '2020_12_18_195833_create_notifications_status_table', 47),
(152, '2020_12_19_195152_add_status_column_to_payment_channels_table', 48),
(154, '2020_12_20_231434_create_contacts_table', 49),
(155, '2020_12_21_210345_edit_quizzes_table', 50),
(156, '2020_12_24_221715_add_column_to_users_table', 50),
(157, '2020_12_24_084728_create_special_offers_table', 51),
(158, '2020_12_25_204545_add_promotion_enum_type_in_orders_table', 51),
(159, '2020_12_25_205139_add_promotion_id_in_order_items_table', 51),
(160, '2020_12_25_205811_add_promotion_id_in_accounting_table', 51),
(161, '2020_12_25_210341_add_promotion_id_in_sales_table', 51),
(162, '2020_12_25_212453_add_promotion_type_account_enum_in_accounting_table', 51),
(163, '2020_12_25_231005_add_promotion_type_enum_in_sales_table', 51),
(166, '2020_12_29_192943_add_column_reply_to_contacts_table', 53),
(167, '2020_12_30_225001_create_payu_transactions_table', 54),
(168, '2021_01_06_202649_edit_column_password_from_users_table', 55),
(169, '2021_01_08_134022_add_api_column_to_sessions_table', 56),
(170, '2021_01_10_215540_add_column_store_type_to_accounting', 57),
(173, '2021_01_13_214145_edit_carts_table', 58),
(174, '2021_01_13_230725_delete_column_type_from_orders_table', 59),
(175, '2021_01_20_214653_add_discount_column_to_reserve_meetings_table', 60),
(177, '2021_01_27_193915_add_foreign_key_to_support_conversations_table', 61),
(178, '2021_02_02_203821_add_viewed_at_column_to_comments_table', 62),
(180, '2021_02_12_134504_add_financial_approval_column_to_users_table', 64),
(181, '2021_02_12_131916_create_verifications_table', 65),
(182, '2021_02_15_221518_add_certificate_to_users_table', 66),
(183, '2021_02_16_194103_add_cloumn_private_to_webinars_table', 66),
(184, '2021_02_18_213601_edit_rates_column_webinar_reviews_table', 67),
(188, '2021_02_27_212131_create_noticeboards_table', 68),
(189, '2021_02_27_213940_create_noticeboards_status_table', 68),
(191, '2021_02_28_195025_edit_groups_table', 69),
(192, '2021_03_06_205221_create_newsletters_table', 70),
(193, '2021_03_12_105526_add_is_main_column_to_roles_table', 71),
(194, '2021_03_12_202441_add_description_column_to_feature_webinars_table', 72),
(195, '2021_03_18_130248_edit_status_column_from_supports_table', 73),
(196, '2021_03_19_113306_add_column_order_to_categories_table', 74),
(197, '2021_03_19_115939_add_column_order_to_filter_options_table', 75),
(199, '2021_03_24_100005_edit_discounts_table', 76),
(200, '2021_03_27_204551_create_sales_status_table', 77),
(202, '2021_03_28_182558_add_column_page_to_settings_table', 78),
(206, '2021_03_31_195835_add_new_status_in_reserve_meetings_table', 79),
(207, '2020_12_12_204705_create_course_learning_table', 80),
(208, '2021_04_19_195452_add_meta_description_column_to_blog_table', 81),
(209, '2021_04_21_200131_add_icon_column_to_categories_table', 82),
(210, '2021_04_21_203746_add_is_popular_column_to_subscribes_table', 83),
(211, '2021_04_25_203955_add_is_charge_account_column_to_order_items', 84),
(212, '2021_04_25_203955_add_is_charge_account_column_to_orders', 85),
(213, '2021_05_13_111720_add_moderator_secret_column_to_sessions_table', 86),
(214, '2021_05_13_123920_add_zoom_id_column_to_sessions_table', 87),
(215, '2021_05_14_182848_create_session_reminds_table', 88),
(217, '2021_05_25_193743_create_users_zoom_api_table', 89),
(218, '2021_05_25_205716_add_new_column_to_sessions_table', 90),
(219, '2021_05_27_095128_add_user_id_to_newsletters_table', 91),
(220, '2020_12_27_192459_create_pages_table', 92),
(221, '2021_07_03_222439_add_special_offer_id_to_cart_table', 93),
(222, '2021_09_02_101422_add_payment_data_to_orders_table', 94),
(223, '2021_09_02_110519_add_sender_id_to_notifications_table', 95),
(224, '2021_09_06_113524_create_webinar_chapters_table', 96),
(228, '2021_09_06_114459_add_chapter_id_to_files_table', 97),
(229, '2021_09_06_114532_add_chapter_id_to_text_lessons_table', 97),
(230, '2021_09_06_114547_add_chapter_id_to_sessions_table', 97),
(231, '2021_09_13_134659_add_chapter_id_to_quizzes_table', 98),
(234, '2021_09_14_122505_create_affiliates_table', 100),
(235, '2021_09_14_122117_create_affiliates_codes_table', 101),
(239, '2021_09_14_142927_add_affiliate_column_to_users_table', 105),
(241, '2021_09_14_142302_add_affiliate_column_to_accounting_table', 106),
(244, '2021_09_18_155914_create_blog_translations_table', 107),
(246, '2021_09_19_190400_create_page_translations_table', 108),
(248, '2021_09_19_203526_create_setting_translations_table', 109),
(250, '2021_09_20_140241_create_advertising_banners_translations_table', 110),
(252, '2021_09_20_175518_create_category_translations_table', 111),
(255, '2021_09_20_184724_create_filter_translations_table', 112),
(256, '2021_09_20_185132_create_filter_option_translations_table', 112),
(258, '2021_09_21_160650_create_subscribe_translations_table', 113),
(260, '2021_09_21_162922_create_promotion_translations_table', 114),
(262, '2021_09_21_164954_create_testimonial_translations_table', 115),
(264, '2021_09_21_182251_create_feature_webinar_translations_table', 116),
(266, '2021_09_21_184239_create_certificate_template_translations_table', 117),
(268, '2021_09_21_195731_create_support_department_translations_table', 118),
(270, '2021_09_21_201512_create_badge_translations_table', 119),
(272, '2021_09_22_120723_create_webinar_translations_table', 120),
(274, '2021_09_22_135518_create_ticket_translations_table', 121),
(276, '2021_09_22_144342_create_webinar_chapter_translations_table', 122),
(278, '2021_09_22_162502_create_session_translations_table', 123),
(280, '2021_09_22_172309_create_file_translations_table', 124),
(282, '2021_09_22_173500_create_faq_translations_table', 125),
(284, '2021_09_23_094903_create_text_lesson_translations_table', 126),
(286, '2021_09_27_194537_create_quiz_translations_table', 127),
(288, '2021_09_28_112529_create_quiz_question_translations_table', 128),
(290, '2021_09_28_122513_create_quizzes_questions_answer_translations_table', 129);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
CREATE TABLE IF NOT EXISTS `newsletters` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletters`
--

INSERT INTO `newsletters` (`id`, `user_id`, `email`, `created_at`) VALUES
(8, 995, 'cameronschofield@gmail.com', 1625090411),
(9, 1017, 'a.pmelaa@gmail.com', 1646389129),
(10, 996, 'robert2002@gmail.com', 1646414262);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters_history`
--

DROP TABLE IF EXISTS `newsletters_history`;
CREATE TABLE IF NOT EXISTS `newsletters_history` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `send_method` enum('send_to_all','send_to_bcc','send_to_excel') COLLATE utf8mb4_unicode_ci NOT NULL,
  `bcc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_count` int(11) DEFAULT NULL,
  `created_at` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletters_history`
--

INSERT INTO `newsletters_history` (`id`, `title`, `description`, `send_method`, `bcc_email`, `email_count`, `created_at`) VALUES
(1, 'Black Friday OFF', '<p>Hello,</p><p>Be sure to check our Black Friday discounts.</p><p>Regards.</p>', 'send_to_all', NULL, 2, 1646389249);

-- --------------------------------------------------------

--
-- Table structure for table `noticeboards`
--

DROP TABLE IF EXISTS `noticeboards`;
CREATE TABLE IF NOT EXISTS `noticeboards` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `organ_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `type` enum('all','organizations','students','instructors','students_and_instructors') COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `noticeboards_organ_id_foreign` (`organ_id`),
  KEY `noticeboards_user_id_foreign` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `noticeboards`
--

INSERT INTO `noticeboards` (`id`, `organ_id`, `user_id`, `type`, `sender`, `title`, `message`, `created_at`) VALUES
(10, NULL, NULL, 'all', 'Staff', 'Top summer classes', '<p>You can find top summer courses on the platform homepage and get all of them with 50% discount by using \"mysummer\" discount coupon.</p>', 1625921717),
(11, NULL, NULL, 'instructors', 'Staff', 'Instructor terms of services changed', '<p>Instructors terms of services changed on July 17. You can read terms on the terms page.</p>', 1625921872),
(12, NULL, NULL, 'all', 'Staff', 'New Year Sales Festival', '<p>Due to the New Year Festival, users who buy more than $ 200 will be given a 20% discount code.</p>', 1626132374);

-- --------------------------------------------------------

--
-- Table structure for table `noticeboards_status`
--

DROP TABLE IF EXISTS `noticeboards_status`;
CREATE TABLE IF NOT EXISTS `noticeboards_status` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `noticeboard_id` int(10) UNSIGNED NOT NULL,
  `seen_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `noticeboards_status_noticeboard_id_foreign` (`noticeboard_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `noticeboards_status`
--

INSERT INTO `noticeboards_status` (`id`, `user_id`, `noticeboard_id`, `seen_at`) VALUES
(7, 1015, 11, 1626204347);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
CREATE TABLE IF NOT EXISTS `notifications` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `sender_id` int(10) UNSIGNED DEFAULT NULL,
  `group_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender` enum('system','admin') COLLATE utf8mb4_unicode_ci DEFAULT 'system',
  `type` enum('single','all_users','students','instructors','organizations','group') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `notifications_user_id_foreign` (`user_id`) USING BTREE,
  KEY `notifications_group_id_foreign` (`group_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2028 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `sender_id`, `group_id`, `title`, `message`, `sender`, `type`, `created_at`) VALUES
(1276, 1015, NULL, NULL, 'Course created', '<p>you create new course&nbsp;with Title Learn Linux in 5 Days</p>', 'system', 'single', 1624945432),
(1277, 1015, NULL, NULL, 'Course approve', '<p>your course with title Learn Linux in 5 Days approved</p>', 'system', 'single', 1624945452),
(1281, 1015, NULL, NULL, 'Course created', '<p>you create new course&nbsp;with Title Excel from Beginner to Advanced</p>', 'system', 'single', 1624966729),
(1282, 1015, NULL, NULL, 'Course approve', '<p>your course with title Excel from Beginner to Advanced approved</p>', 'system', 'single', 1624966741),
(1283, 1015, NULL, NULL, 'Course created', '<p>you create new course&nbsp;with Title Excel from Beginner to Advanced</p>', 'system', 'single', 1625003468),
(1284, 1015, NULL, NULL, 'Course approve', '<p>your course with title Excel from Beginner to Advanced approved</p>', 'system', 'single', 1625003516),
(1292, 3, NULL, NULL, 'Course approve', '<p>your course with title Learn and Understand AngularJS approved</p>', 'system', 'single', 1625084229),
(1293, 3, NULL, NULL, 'Course created', '<p>you create new course&nbsp;with Title Learn and Understand AngularJS</p>', 'system', 'single', 1625085106),
(1294, 3, NULL, NULL, 'Course approve', '<p>your course with title Learn and Understand AngularJS approved</p>', 'system', 'single', 1625085118),
(1295, 3, NULL, NULL, 'Course approve', '<p>your course with title Learn and Understand AngularJS approved</p>', 'system', 'single', 1625088480),
(1296, 3, NULL, NULL, 'Course created', '<p>you create new course&nbsp;with Title Learn and Understand AngularJS</p>', 'system', 'single', 1625088678),
(1297, 3, NULL, NULL, 'Course approve', '<p>your course with title Learn and Understand AngularJS approved</p>', 'system', 'single', 1625088698),
(1298, 3, NULL, NULL, 'Course approve', '<p>your course with title Learn and Understand AngularJS approved</p>', 'system', 'single', 1625088760),
(1303, 1015, NULL, NULL, 'Course approve', '<p>your course with title Excel from Beginner to Advanced approved</p>', 'system', 'single', 1625293759),
(1306, 864, NULL, NULL, 'Course created', '<p>you create new course&nbsp;with Title Active Listening: You Can Be a Great Listener</p>', 'system', 'single', 1625300387),
(1307, 3, NULL, NULL, 'Course approve', '<p>your course with title Active Listening: You Can Be a Great Listener approved</p>', 'system', 'single', 1625300399),
(1308, 864, NULL, NULL, 'Course created', '<p>you create new course&nbsp;with Title Active Listening: You Can Be a Great Listener</p>', 'system', 'single', 1625300598),
(1309, 3, NULL, NULL, 'Course approve', '<p>your course with title Active Listening: You Can Be a Great Listener approved</p>', 'system', 'single', 1625300612),
(1311, 3, NULL, NULL, 'Course created', '<p>you create new course&nbsp;with Title Learn and Understand AngularJS</p>', 'system', 'single', 1625301679),
(1312, 3, NULL, NULL, 'Course created', '<p>you create new course&nbsp;with Title Learn and Understand AngularJS</p>', 'system', 'single', 1625301721),
(1313, 3, NULL, NULL, 'Course approve', '<p>your course with title Learn and Understand AngularJS approved</p>', 'system', 'single', 1625301754),
(1315, 1015, NULL, NULL, 'New badge', '<p>Congratilations! You received New User&nbsp;badge.</p>', 'system', 'single', 1625553799),
(1320, 3, NULL, NULL, 'New badge', '<p>Congratilations! You received New User&nbsp;badge.</p>', 'system', 'single', 1625553815),
(1321, 864, NULL, NULL, 'New badge', '<p>Congratilations! You received New User&nbsp;badge.</p>', 'system', 'single', 1625553917),
(1330, 1015, NULL, NULL, 'New badge', '<p>Congratilations! You received Junior Vendor&nbsp;badge.</p>', 'system', 'single', 1625554779),
(1335, 1015, NULL, NULL, 'New badge', '<p>Congratilations! You received Senior Vendor&nbsp;badge.</p>', 'system', 'single', 1625554976),
(1336, 3, NULL, NULL, 'New badge', '<p>Congratilations! You received Faitful User&nbsp;badge.</p>', 'system', 'single', 1625558907),
(1337, 3, NULL, NULL, 'New badge', '<p>Congratilations! You received Senior Vendor&nbsp;badge.</p>', 'system', 'single', 1625558908),
(1340, 864, NULL, NULL, 'New badge', '<p>Congratilations! You received Faitful User&nbsp;badge.</p>', 'system', 'single', 1625635046),
(1341, 864, NULL, NULL, 'New badge', '<p>Congratilations! You received Junior Vendor&nbsp;badge.</p>', 'system', 'single', 1625635048),
(1368, 1, NULL, NULL, 'New comment for your class', '<p>Robert B. Gray left a new comment on your class The Future of Energy .</p>', 'system', 'single', 1625863108),
(1370, 1, NULL, NULL, 'New comment for your class', '<p>Jade Harrison left a new comment on your class Excel from Beginner to Advanced .</p>', 'system', 'single', 1625863203),
(1372, 1, NULL, NULL, 'New comment for your class', '<p>Morgan Sullivan left a new comment on your class How to Manage & Influence Your Virtual Team .</p>', 'system', 'single', 1625863345),
(1373, 1, NULL, NULL, 'New comment for your class', '<p>Robert Ransdell left a new comment on your class Learn Python Programming .</p>', 'system', 'single', 1625863462),
(1376, 1015, NULL, NULL, 'New comment for your class', '<p>Jade Harrison left a new comment on your class Excel from Beginner to Advanced .</p>', 'system', 'single', 1625863593),
(1378, 1, NULL, NULL, 'New comment for your class', '<p>James Kong left a new comment on your class Learn Python Programming .</p>', 'system', 'single', 1625864259),
(1380, 1, NULL, NULL, 'New comment for your class', '<p>Ricardo dave left a new comment on your class How to Travel Around the World .</p>', 'system', 'single', 1625864416),
(1382, 1, NULL, NULL, 'New comment for your class', '<p>Cameron Schofield left a new comment on your class The Future of Energy .</p>', 'system', 'single', 1625864526),
(1384, 1, NULL, NULL, 'New support ticket', '<p>New support ticket received with subject Convert Videos .</p>', 'system', 'single', 1625891270),
(1385, 1, NULL, NULL, 'New support ticket', '<p>New support ticket received with subject Pre-purchase question .</p>', 'system', 'single', 1625891677),
(1386, 1, NULL, NULL, 'New support ticket', '<p>New support ticket received with subject Pending Offline Payment .</p>', 'system', 'single', 1625891851),
(1387, 1, NULL, NULL, 'New support ticket', '<p>New support ticket received with subject Commission Rate .</p>', 'system', 'single', 1625892221),
(1388, 1, NULL, NULL, 'New support ticket', '<p>New support ticket received with subject Class delay .</p>', 'system', 'single', 1625895874),
(1389, 1, NULL, NULL, 'New reply on support ticket', '<p>The support ticket with the subject Class delay updated with a new reply.</p>', 'system', 'single', 1625897110),
(1390, 1, NULL, NULL, 'New reply on support ticket', '<p>The support ticket with the subject Class delay updated with a new reply.</p>', 'system', 'single', 1625898890),
(1393, 1015, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class  .</p>', 'system', 'single', 1625944345),
(1396, 1015, NULL, NULL, 'New meeting request', '<p>New meeting booked by Robert B. Gray for 2021-07-12  with the amount 150 .</p>', 'system', 'single', 1625944346),
(1398, 1015, NULL, NULL, 'Your class approved', '<p>Your class Learn Linux in 5 Days successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1625947994),
(1399, 1015, NULL, NULL, 'Your class approved', '<p>Your class Excel from Beginner to Advanced successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1625948044),
(1415, 3, NULL, NULL, 'Your user group changed', '<p>Your user group changed to Vip Instructors .</p>', 'system', 'single', 1625974258),
(1426, 1015, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class  .</p>', 'system', 'single', 1625996812),
(1429, 1015, NULL, NULL, 'New meeting request', '<p>New meeting booked by Cameron Schofield for 2021-07-14  with the amount 125 .</p>', 'system', 'single', 1625996816),
(1437, 1015, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class Excel from Beginner to Advanced .</p>', 'system', 'single', 1625996978),
(1440, 3, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class Learn and Understand AngularJS .</p>', 'system', 'single', 1625997104),
(1445, 3, NULL, NULL, 'New badge', '<p>Congratilations! You received Best Seller&nbsp;badge.</p>', 'system', 'single', 1626009973),
(1446, 1015, NULL, NULL, 'New badge', '<p>Congratilations! You received Best Seller&nbsp;badge.</p>', 'system', 'single', 1626060376),
(1450, 1015, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class Excel from Beginner to Advanced .</p>', 'system', 'single', 1626060552),
(1453, 1015, NULL, NULL, 'New badge', '<p>Congratilations! You received Top Seller&nbsp;badge.</p>', 'system', 'single', 1626060704),
(1454, 1015, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class Excel from Beginner to Advanced .</p>', 'system', 'single', 1626060835),
(1457, 1015, NULL, NULL, 'New badge', '<p>Congratilations! You received King Seller&nbsp;badge.</p>', 'system', 'single', 1626060860),
(1458, 1015, NULL, NULL, 'Payout request submitted', '<p>Your payout request successfully submitted for 332 . You will receive an email when processed.</p>', 'system', 'single', 1626061191),
(1459, 1, NULL, NULL, 'New payout request', '<p>New payout request received with the amount 332 . You can manage it using the admin panel.</p>', 'system', 'single', 1626061192),
(1460, 1015, NULL, NULL, 'Payout has been processed', 'Your payout has been processed with the amount 332.00&nbsp;&nbsp;to your account Qatar National Bank .', 'system', 'single', 1626061220),
(1462, 1, NULL, NULL, 'New payout request', '<p>New payout request received with the amount 80 . You can manage it using the admin panel.</p>', 'system', 'single', 1626061254),
(1474, NULL, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class Bronze Subscribe .</p>', 'system', 'single', 1626061450),
(1483, 1015, NULL, NULL, 'New class support message', '<p>user Robert B. Gray send new support message for course with title Learn Linux in 5 Days .</p>', 'system', 'single', 1626062396),
(1484, 1015, NULL, NULL, 'New reply on support conversation', '<p>New reply on a support conversation on your class Learn Linux in 5 Days support.</p>', 'system', 'single', 1626062467),
(1485, 1015, NULL, NULL, 'New reply on support conversation', '<p>New reply on a support conversation on your class Learn Linux in 5 Days support.</p>', 'system', 'single', 1626062520),
(1486, 1015, NULL, NULL, 'New reply on support conversation', '<p>New reply on a support conversation on your class Learn Linux in 5 Days support.</p>', 'system', 'single', 1626062578),
(1487, 1015, NULL, NULL, 'New reply on support conversation', '<p>New reply on a support conversation on your class Learn Linux in 5 Days support.</p>', 'system', 'single', 1626062690),
(1488, 1015, NULL, NULL, 'New reply on support conversation', '<p>New reply on a support conversation on your class Learn Linux in 5 Days support.</p>', 'system', 'single', 1626062756),
(1489, 1015, NULL, NULL, 'New class support message', '<p>user Cameron Schofield send new support message for course with title Learn Linux in 5 Days .</p>', 'system', 'single', 1626062941),
(1490, 1015, NULL, NULL, 'New reply on support conversation', '<p>New reply on a support conversation on your class Learn Linux in 5 Days support.</p>', 'system', 'single', 1626063058),
(1491, 1, NULL, NULL, 'New support ticket', '<p>New support ticket received with subject Refund Request #64237 .</p>', 'system', 'single', 1626063457),
(1492, 1, NULL, NULL, 'New reply on support ticket', '<p>The support ticket with the subject Refund Request #64237 updated with a new reply.</p>', 'system', 'single', 1626063547),
(1496, 1015, NULL, NULL, 'Your class approved', '<p>Your class Excel from Beginner to Advanced successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1626128217),
(1504, 1015, NULL, NULL, 'Offline payment submitted', '<p>An offline payment request with the amount 500 submitted successfully.</p>', 'system', 'single', 1626132546),
(1505, 1015, NULL, NULL, 'Offline payment approved', '<p>Offline payment request with the amount 500 successfully approved.</p>', 'system', 'single', 1626132570),
(1507, 1015, NULL, NULL, 'New purchase completed', '<p>The class Health And Fitness Masterclass successfully purchased. Now you can start learning.</p>', 'system', 'single', 1626132844),
(1508, 1015, NULL, NULL, 'New financial document', '<p>&nbsp;New financial document submitted for your class Health And Fitness Masterclass with type deduction and amount 17.60 .</p>', 'system', 'single', 1626132845),
(1512, 1015, NULL, NULL, 'New pending quiz', '<p>Cameron Schofield passed Final Quiz quiz of the Learn Linux in 5 Days class and waiting for correction to get results.</p>', 'system', 'single', 1626204790),
(1515, 1015, NULL, NULL, 'New badge', '<p>Congratilations! You received Expert Vendor&nbsp;badge.</p>', 'system', 'single', 1626214438),
(1517, 1015, NULL, NULL, 'New feedback', '<p>Your class Excel from Beginner to Advanced received a 4.75 stars rating from Robert B. Gray .</p>', 'system', 'single', 1626214590),
(1519, 1015, NULL, NULL, 'New feedback', '<p>Your class Learn Linux in 5 Days received a 4 stars rating from Robert B. Gray .</p>', 'system', 'single', 1626214731),
(1525, 3, NULL, NULL, 'New feedback', '<p>Your class Learn and Understand AngularJS received a 2.75 stars rating from Cameron Schofield .</p>', 'system', 'single', 1626233222),
(1531, 1015, NULL, NULL, 'Your class approved', '<p>Your class Travel Management Course successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1626234749),
(1532, 1015, NULL, NULL, 'New badge', '<p>Congratilations! You received Golden Classes&nbsp;badge.</p>', 'system', 'single', 1626234771),
(1533, 1015, NULL, NULL, 'New badge', '<p>Congratilations! You received Amazing Support&nbsp;badge.</p>', 'system', 'single', 1626234771),
(1534, 1, NULL, NULL, 'New comment for your class', '<p>Robert Ransdell left a new comment on your class Health And Fitness Masterclass .</p>', 'system', 'single', 1626235679),
(1543, 1015, NULL, NULL, 'New pending quiz', '<p>Morgan Sullivan passed Final Quiz quiz of the Learn Linux in 5 Days class and waiting for correction to get results.</p>', 'system', 'single', 1626237968),
(1545, 3, NULL, NULL, 'New badge', '<p>Congratilations! You received Good Support&nbsp;badge.</p>', 'system', 'single', 1626239421),
(1546, 1, NULL, NULL, 'New comment for your class', '<p>Cameron Schofield left a new comment on your class Become a Product Manager .</p>', 'system', 'single', 1626240118),
(1551, 1015, NULL, NULL, 'Your class approved', '<p>Your class Excel from Beginner to Advanced successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1626240740),
(1552, 3, NULL, NULL, 'Your class approved', '<p>Your class Active Listening: You Can Be a Great Listener successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1626240800),
(1553, 3, NULL, NULL, 'Your class approved', '<p>Your class Learn and Understand AngularJS successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1626240827),
(1556, NULL, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class The Future of Energy .</p>', 'system', 'single', 1626241152),
(1560, 864, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class Active Listening: You Can Be a Great Listener .</p>', 'system', 'single', 1626241212),
(1563, 864, NULL, NULL, 'New badge', '<p>Congratilations! You received Best Seller&nbsp;badge.</p>', 'system', 'single', 1626241242),
(1564, 1, NULL, NULL, 'New comment for your class', '<p>Kate Williams left a new comment on your class Become a Product Manager .</p>', 'system', 'single', 1626241320),
(1566, 1, NULL, NULL, 'New comment for your class', '<p>Kate Williams left a new comment on your class Active Listening: You Can Be a Great Listener .</p>', 'system', 'single', 1626241386),
(1567, 3, NULL, NULL, 'New comment for your class', '<p>Kate Williams left a new comment on your class Active Listening: You Can Be a Great Listener .</p>', 'system', 'single', 1626241400),
(1568, 3, NULL, NULL, 'New comment for your class', '<p>James Kong left a new comment on your class Active Listening: You Can Be a Great Listener .</p>', 'system', 'single', 1626242090),
(1570, 1, NULL, NULL, 'New badge', '<p>Congratilations! You received Faitful User&nbsp;badge.</p>', 'system', 'single', 1626242992),
(1572, 1015, NULL, NULL, 'Meeting finished', '<p>The meeting finished. Instructor: Robert Ransdell Student:&nbsp; Robert B. Gray&nbsp; Meeting time: 2021-07-12 .</p>', 'system', 'single', 1626243180),
(1573, 1015, NULL, NULL, 'New pending quiz', '<p>Kate Williams passed Final Quiz quiz of the Learn Linux in 5 Days class and waiting for correction to get results.</p>', 'system', 'single', 1626243488),
(1574, 1015, NULL, NULL, 'Your class approved', '<p>Your class Learn Linux in 5 Days successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1626246628),
(1583, 1, NULL, NULL, 'New support ticket', '<p>New support ticket received with subject Problem with quiz .</p>', 'system', 'single', 1626250124),
(1590, 1, NULL, NULL, 'New comment for your class', '<p>Robert Ransdell left a new comment on your class Learn Python Programming .</p>', 'system', 'single', 1626493830),
(1591, 1015, NULL, NULL, 'New badge', '<p>Congratilations! You received Fantastic Support&nbsp;badge.</p>', 'system', 'single', 1626508221),
(1592, 3, NULL, NULL, 'New badge', '<p>Congratilations! You received Bronze Classes&nbsp;badge.</p>', 'system', 'single', 1626508287),
(1593, 3, NULL, NULL, 'New badge', '<p>Congratilations! You received Amazing Support&nbsp;badge.</p>', 'system', 'single', 1626508287),
(1599, 1, NULL, NULL, 'New comment for your class', '<p>Robert B. Gray left a new comment on your class Active Listening: You Can Be a Great Listener .</p>', 'system', 'single', 1626509207),
(1600, 1, NULL, NULL, 'New comment for your class', '<p>Robert B. Gray left a new comment on your class Active Listening: You Can Be a Great Listener .</p>', 'system', 'single', 1626509327),
(1601, 1, NULL, NULL, 'New comment for your class', '<p>Robert Ransdell left a new comment on your class Become a Product Manager .</p>', 'system', 'single', 1626509546),
(1602, 3, NULL, NULL, 'New comment for your class', '<p>Robert B. Gray left a new comment on your class Active Listening: You Can Be a Great Listener .</p>', 'system', 'single', 1626509591),
(1603, 1015, NULL, NULL, 'New badge', '<p>Congratilations! You received Loyal User&nbsp;badge.</p>', 'system', 'single', 1627543283),
(1631, 1015, NULL, NULL, 'New badge', '<p>Congratilations! You received &nbsp;badge.</p>', 'system', 'single', 1635404223),
(1637, 1015, NULL, NULL, 'Your class approved', '<p>Your class Travel Management Course successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1635410916),
(1638, 1015, NULL, NULL, 'Your class approved', '<p>Your class Travel Management Course successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1635411032),
(1639, 1015, NULL, NULL, 'Your class approved', '<p>Your class Travel Management Course successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1635411039),
(1643, 1015, NULL, NULL, 'Your class approved', '<p>Your class Curso de gestión de viajes successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1635442592),
(1655, 3, NULL, NULL, 'Your class approved', '<p>Your class الاستماع النشط: يمكنك أن تكون مستمعًا جيدًا successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1635444233),
(1656, 3, NULL, NULL, 'Your class approved', '<p>Your class Escucha activa: puedes ser un gran oyente successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1635444317),
(1659, 3, NULL, NULL, 'Your class approved', '<p>Your class تعلم وافهم AngularJS successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1635444683),
(1660, 3, NULL, NULL, 'Your class approved', '<p>Your class Aprenda y comprenda AngularJS successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1635444769),
(1663, 1015, NULL, NULL, 'Your class approved', '<p>Your class مايكروسوفت اكسل من المبتدئين إلى المتقدمين successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1635444974),
(1664, 1015, NULL, NULL, 'Your class approved', '<p>Your class تعلم لينكس في خمسة أيام successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1635445120),
(1665, 1015, NULL, NULL, 'Your class approved', '<p>Your class Aprenda Linux en cinco días successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1635445181),
(1676, 1015, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class Excel from Beginner to Advanced .</p>', 'system', 'single', 1639379350),
(1679, 864, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class Active Listening: You Can Be a Great Listener .</p>', 'system', 'single', 1639379388),
(1683, 1015, NULL, NULL, 'New badge', '<p>Congratilations! You received Faitful User&nbsp;badge.</p>', 'system', 'single', 1645697399),
(1687, 3, NULL, NULL, 'New badge', '<p>Congratilations! You received Top Seller&nbsp;badge.</p>', 'system', 'single', 1645782214),
(1689, 1015, NULL, NULL, 'Your class approved', '<p>Your class The Professional Guitar Masterclass successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1646127145),
(1690, 1015, NULL, NULL, 'Your class approved', '<p>Your class The Professional Guitar Masterclass successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1646130427),
(1691, 1015, NULL, NULL, 'Your class created', '<p>Your class New in-App Live System successfully created. It will be published after approval.</p>', 'system', 'single', 1646171990),
(1692, 1015, NULL, NULL, 'Your class approved', '<p>Your class New in-App Live System successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1646172006),
(1693, 1015, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class New in-App Live System .</p>', 'system', 'single', 1646172086),
(1696, 1015, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class New in-App Live System .</p>', 'system', 'single', 1646172123),
(1699, 1015, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class New in-App Live System .</p>', 'system', 'single', 1646172159),
(1702, 1015, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class New in-App Live System .</p>', 'system', 'single', 1646172296),
(1707, 1015, NULL, NULL, 'Your class created', '<p>Your class New in-App Live System successfully created. It will be published after approval.</p>', 'system', 'single', 1646172624),
(1708, 1015, NULL, NULL, 'Your class approved', '<p>Your class New in-App Live System successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1646172650),
(1709, 1015, NULL, NULL, 'Your class created', '<p>Your class New in-App Live System successfully created. It will be published after approval.</p>', 'system', 'single', 1646173046),
(1710, 1015, NULL, NULL, 'Your class approved', '<p>Your class New Learning Page successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1646173945),
(1712, 1015, NULL, NULL, 'Your class approved', '<p>Your class New in-App Live System successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1646174680),
(1713, 1015, NULL, NULL, 'Your class approved', '<p>Your class New in-App Live System successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1646175192),
(1714, 1015, NULL, NULL, 'Your class approved', '<p>Your class New in-App Live System successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1646175313),
(1715, 1015, NULL, NULL, 'Your class approved', '<p>Your class New in-App Live System successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1646175337),
(1776, 1015, NULL, NULL, 'New feedback', '<p>Your class New Learning Page received a 5 stars rating from Cameron Schofield .</p>', 'system', 'single', 1646352833),
(1777, 1015, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class  .</p>', 'system', 'single', 1646379288),
(1780, 1015, NULL, NULL, 'New meeting request', '<p>New meeting booked by Cameron Schofield for 2022-03-15  with the amount 750 .</p>', 'system', 'single', 1646379290),
(1790, NULL, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class Pro Registration package .</p>', 'system', 'single', 1646386787),
(1794, 1015, NULL, NULL, 'New badge', '<p>You received Faithful User&nbsp;badge.</p>', 'system', 'single', 1646387094),
(1795, 1015, NULL, NULL, 'New badge', '<p>You received Expert Vendor&nbsp;badge.</p>', 'system', 'single', 1646387101),
(1796, 1015, NULL, NULL, 'New badge', '<p>You received Golden Classes&nbsp;badge.</p>', 'system', 'single', 1646387102),
(1797, 1015, NULL, NULL, 'New badge', '<p>You received King Seller&nbsp;badge.</p>', 'system', 'single', 1646387102),
(1798, 1015, NULL, NULL, 'New badge', '<p>You received Fantastic Support&nbsp;badge.</p>', 'system', 'single', 1646387107),
(1800, NULL, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class Basic Registration package .</p>', 'system', 'single', 1646387655),
(1810, 1015, NULL, NULL, 'Your class approved', '<p>Your class New In-App Live System successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1646392216),
(1821, 3, NULL, NULL, 'New badge', '<p>You received Faithful User&nbsp;badge.</p>', 'system', 'single', 1646406163),
(1822, 3, NULL, NULL, 'New badge', '<p>You received Senior Vendor&nbsp;badge.</p>', 'system', 'single', 1646406163),
(1823, 3, NULL, NULL, 'New badge', '<p>You received Bronze Classes&nbsp;badge.</p>', 'system', 'single', 1646406164),
(1824, 3, NULL, NULL, 'New badge', '<p>You received Top Seller&nbsp;badge.</p>', 'system', 'single', 1646406169),
(1825, 3, NULL, NULL, 'New badge', '<p>You received Amazing Support&nbsp;badge.</p>', 'system', 'single', 1646406174),
(1836, 864, NULL, NULL, 'New badge', '<p>You received Faithful User&nbsp;badge.</p>', 'system', 'single', 1646406198),
(1837, 864, NULL, NULL, 'New badge', '<p>You received Junior Vendor&nbsp;badge.</p>', 'system', 'single', 1646406198),
(1838, 864, NULL, NULL, 'New badge', '<p>You received Best Seller&nbsp;badge.</p>', 'system', 'single', 1646406198),
(1855, 1015, NULL, NULL, 'New badge', '<p>Congrolation! You received Faithful User badge.</p>', 'system', 'single', 1646408712),
(1856, 1015, NULL, NULL, 'New badge', '<p>Congrolation! You received Expert Vendor badge.</p>', 'system', 'single', 1646408713),
(1857, 1015, NULL, NULL, 'New badge', '<p>Congrolation! You received Golden Classes badge.</p>', 'system', 'single', 1646408719),
(1858, 1015, NULL, NULL, 'New badge', '<p>Congrolation! You received King Seller badge.</p>', 'system', 'single', 1646408724),
(1859, 1015, NULL, NULL, 'New badge', '<p>Congrolation! You received Fantastic Support badge.</p>', 'system', 'single', 1646408730),
(1874, 1015, NULL, NULL, 'Your class approved', '<p>Your class New In-App Live System successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1646415127),
(1875, 1015, NULL, NULL, 'Your class approved', '<p>Your class New Learning Page successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1646415140),
(1891, 1015, NULL, NULL, 'Your class approved', '<p>Your class New Learning Page successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1646492850),
(1892, 864, NULL, NULL, 'New badge', '<p>Congrolation! You received Faithful User badge.</p>', 'system', 'single', 1651067085),
(1893, 864, NULL, NULL, 'New badge', '<p>Congrolation! You received Junior Vendor badge.</p>', 'system', 'single', 1651067085),
(1894, 864, NULL, NULL, 'New badge', '<p>Congrolation! You received Best Seller badge.</p>', 'system', 'single', 1651067085),
(1895, 3, NULL, NULL, 'New badge', '<p>Congrolation! You received Faithful User badge.</p>', 'system', 'single', 1651067199),
(1896, 3, NULL, NULL, 'New badge', '<p>Congrolation! You received Senior Vendor badge.</p>', 'system', 'single', 1651067199),
(1897, 3, NULL, NULL, 'New badge', '<p>Congrolation! You received Bronze Classes badge.</p>', 'system', 'single', 1651067199),
(1898, 3, NULL, NULL, 'New badge', '<p>Congrolation! You received Top Seller badge.</p>', 'system', 'single', 1651067199),
(1899, 3, NULL, NULL, 'New badge', '<p>Congrolation! You received Amazing Support badge.</p>', 'system', 'single', 1651067199),
(1900, 864, NULL, NULL, 'Your class created', '<p>Your class Active Listening: You Can Be a Great Listener successfully created. It will be published after approval.</p>', 'system', 'single', 1651239461),
(1901, 864, NULL, NULL, 'Your class created', '<p>Your class Introduction to Risk Management successfully created. It will be published after approval.</p>', 'system', 'single', 1651239949),
(1902, 3, NULL, NULL, 'Your class approved', '<p>Your class Introduction to Risk Management successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1651240160),
(1903, 864, NULL, NULL, 'New badge', '<p>Congrolation! You received Senior Vendor badge.</p>', 'system', 'single', 1651240183),
(1904, 3, NULL, NULL, 'New badge', '<p>Congrolation! You received Expert Vendor badge.</p>', 'system', 'single', 1651240183),
(1905, 3, NULL, NULL, 'Your class approved', '<p>Your class Active Listening: You Can Be a Great Listener successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1651240265),
(1906, 1032, NULL, NULL, 'New badge', '<p>Congrolation! You received New User badge.</p>', 'system', 'single', 1651316115),
(1907, 3, NULL, NULL, 'Your class approved', '<p>Your class A new text course successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1651324524),
(1913, 1032, NULL, NULL, 'New badge', '<p>Congrolation! You received Loyal User badge.</p>', 'system', 'single', 1658923273),
(1914, 864, NULL, NULL, 'New badge', '<p>Congrolation! You received Top Seller badge.</p>', 'system', 'single', 1658923389),
(1918, 864, NULL, NULL, 'Your class created', '<p>Your class Introduction to Risk Management successfully created. It will be published after approval.</p>', 'system', 'single', 1659480699),
(1919, 3, NULL, NULL, 'Your class approved', '<p>Your class Introduction to Risk Management successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1659480732),
(1920, 864, NULL, NULL, 'Your class created', '<p>Your class Introduction to webdesign successfully created. It will be published after approval.</p>', 'system', 'single', 1659482382),
(1921, 864, NULL, NULL, 'Your class created', '<p>Your class Introduction to webdesign successfully created. It will be published after approval.</p>', 'system', 'single', 1659482549),
(1922, 1033, NULL, NULL, 'Your class approved', '<p>Your class Introduction to webdesign successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1659482597),
(1923, 1033, NULL, NULL, 'New badge', '<p>Congrolation! You received Junior Vendor badge.</p>', 'system', 'single', 1659482707),
(1929, 864, NULL, NULL, 'New badge', '<p>Congrolation! You received Expert Vendor badge.</p>', 'system', 'single', 1659483291),
(1931, 3, NULL, NULL, 'Your class created', '<p>Your class Learn and Understand AngularJS successfully created. It will be published after approval.</p>', 'system', 'single', 1660656396),
(1932, 3, NULL, NULL, 'Your class approved', '<p>Your class Learn and Understand AngularJS successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1660656454),
(1933, 3, NULL, NULL, 'Your class approved', '<p>Your class Introduction to Risk Management successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1660658767),
(1934, 864, NULL, NULL, 'Your class created', '<p>Your class Active Listening: You Can Be a Great Listener successfully created. It will be published after approval.</p>', 'system', 'single', 1660659581),
(1935, 1033, NULL, NULL, 'Your class approved', '<p>Your class Introduction to webdesign successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1660659741),
(1936, 864, NULL, NULL, 'Your class created', '<p>Your class Active Listening: You Can Be a Great Listener successfully created. It will be published after approval.</p>', 'system', 'single', 1660660198),
(1937, 3, NULL, NULL, 'Your class approved', '<p>Your class Active Listening: You Can Be a Great Listener successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1660660222),
(1938, 3, NULL, NULL, 'Your class created', '<p>Your class Introduction to Risk Management successfully created. It will be published after approval.</p>', 'system', 'single', 1660750435),
(1939, 3, NULL, NULL, 'Your class approved', '<p>Your class Introduction to Risk Management successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1660750512),
(1940, 3, NULL, NULL, 'Your class created', '<p>Your class Active Listening: You Can Be a Great Listener successfully created. It will be published after approval.</p>', 'system', 'single', 1660750778),
(1941, 3, NULL, NULL, 'Your class approved', '<p>Your class A New Text Course successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1660914585),
(1942, 3, NULL, NULL, 'Your class approved', '<p>Your class Second Text Course successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1660918558),
(1943, 3, NULL, NULL, 'Your class approved', '<p>Your class Third course successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1660920261),
(1944, 3, NULL, NULL, 'Your class approved', '<p>Your class Live Class Test 1 successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1660923852),
(1945, 3, NULL, NULL, 'Your class approved', '<p>Your class Live Class Test 1 successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1660924304),
(1946, 3, NULL, NULL, 'Your class created', '<p>Your class Live Class Test 1 successfully created. It will be published after approval.</p>', 'system', 'single', 1660924590),
(1947, 3, NULL, NULL, 'Your class approved', '<p>Your class Live Class Test 1 successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1660924612),
(1948, 3, NULL, NULL, 'Your class approved', '<p>Your class Learning App successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1660929725),
(1949, 3, NULL, NULL, 'Your class approved', '<p>Your class Learning App successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1660929743),
(1950, 3, NULL, NULL, 'Your class approved', '<p>Your class Learning App successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1660929763),
(1951, 3, NULL, NULL, 'Your class created', '<p>Your class Better Relationship Between You and Your Parents successfully created. It will be published after approval.</p>', 'system', 'single', 1660930349),
(1952, 3, NULL, NULL, 'Your class approved', '<p>Your class Better Relationship Between You and Your Parents successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1660930411),
(1953, 1033, NULL, NULL, 'New badge', '<p>Congrolation! You received New User badge.</p>', 'system', 'single', 1660931097),
(1954, 3, NULL, NULL, 'Your class approved', '<p>Your class Better Relationship Between You and Your Parent successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1661006281),
(1955, 1, NULL, NULL, 'New badge', '<p>Congrolation! You received Faithful User badge.</p>', 'system', 'single', 1661036075),
(1956, 864, NULL, NULL, 'Your class created', '<p>Your class Active Listening: You Can Be a Great Listener successfully created. It will be published after approval.</p>', 'system', 'single', 1661101881),
(1957, 864, NULL, NULL, 'Your class created', '<p>Your class Introduction to Risk Management Studies successfully created. It will be published after approval.</p>', 'system', 'single', 1661101945),
(1958, 864, NULL, NULL, 'Your class created', '<p>Your class A text course successfully created. It will be published after approval.</p>', 'system', 'single', 1661103456),
(1959, 1036, NULL, NULL, 'New badge', '<p>Congrolation! You received Junior Vendor badge.</p>', 'system', 'single', 1661103671),
(1960, 1034, NULL, NULL, 'New badge', '<p>Congrolation! You received New User badge.</p>', 'system', 'single', 1661121331),
(1961, 1033, NULL, NULL, 'New badge', '<p>Congrolation! You received Best Seller badge.</p>', 'system', 'single', 1661121347),
(1962, 864, NULL, NULL, 'Your class created', '<p>Your class A text course successfully created. It will be published after approval.</p>', 'system', 'single', 1661121676),
(1963, 1036, NULL, NULL, 'Your class approved', '<p>Your class A text course successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1661121713),
(1964, 3, NULL, NULL, 'Your class approved', '<p>Your class A New Text Course successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1661121734),
(1965, 3, NULL, NULL, 'Your class approved', '<p>Your class Better Relationship Between You and Your Parent successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1661121758),
(1966, 1036, NULL, NULL, 'New badge', '<p>Congrolation! You received Best Seller badge.</p>', 'system', 'single', 1661122173),
(1967, 3, NULL, NULL, 'Your class approved', '<p>Your class Introduction to Risk Management Studies successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1661163690),
(1968, 3, NULL, NULL, 'Your class approved', '<p>Your class Active Listening: You Can Be a Great Listener successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1661163717),
(1969, 1036, NULL, NULL, 'New badge', '<p>Congrolation! You received New User badge.</p>', 'system', 'single', 1661163810),
(1970, 1033, NULL, NULL, 'New feedback', '<p>Your class Introduction to webdesign received a 2 stars rating from Ibrahim Bakari .</p>', 'system', 'single', 1661253059),
(1971, 1, NULL, NULL, 'New comment for your class', '<p>Ibrahim Bakari left a new comment on your class Introduction to webdesign .</p>', 'system', 'single', 1661253426),
(1972, 1033, NULL, NULL, 'New comment for your class', '<p>Ibrahim Bakari left a new comment on your class Introduction to webdesign .</p>', 'system', 'single', 1661253530),
(1973, 864, NULL, NULL, 'Your class created', '<p>Your class Risk Management successfully created. It will be published after approval.</p>', 'system', 'single', 1661344053),
(1974, 3, NULL, NULL, 'Your class approved', '<p>Your class Risk Management successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1661344092),
(1975, 1033, NULL, NULL, 'New badge', '<p>Congrolation! You received Top Seller badge.</p>', 'system', 'single', 1661350848),
(1976, 864, NULL, NULL, 'Your class created', '<p>Your class Risk Management successfully created. It will be published after approval.</p>', 'system', 'single', 1661352342),
(1977, 1037, NULL, NULL, 'Your class approved', '<p>Your class Risk Management successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1661352377),
(1978, 1037, NULL, NULL, 'New badge', '<p>Congrolation! You received Junior Vendor badge.</p>', 'system', 'single', 1661352409),
(1979, 864, NULL, NULL, 'Your class created', '<p>Your class Course Details successfully created. It will be published after approval.</p>', 'system', 'single', 1661513550),
(1980, 3, NULL, NULL, 'Your class approved', '<p>Your class Course Details successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1661513578),
(1981, 864, NULL, NULL, 'New badge', '<p>Congrolation! You received King Seller badge.</p>', 'system', 'single', 1661514068),
(1982, 864, NULL, NULL, 'Your class created', '<p>Your class Learning Laravel successfully created. It will be published after approval.</p>', 'system', 'single', 1661514973),
(1983, 1036, NULL, NULL, 'Your class approved', '<p>Your class Learning Laravel successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1661514998),
(1984, 1036, NULL, NULL, 'New badge', '<p>Congrolation! You received Senior Vendor badge.</p>', 'system', 'single', 1661515567),
(1985, 864, NULL, NULL, 'Your class created', '<p>Your class Learning React successfully created. It will be published after approval.</p>', 'system', 'single', 1661516316),
(1986, 3, NULL, NULL, 'Your class approved', '<p>Your class Learning React successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1661516360),
(1987, 1036, NULL, NULL, 'New badge', '<p>Congrolation! You received Top Seller badge.</p>', 'system', 'single', 1661517653),
(1988, 3, NULL, NULL, 'Your class created', '<p>Your class Learn Mobile Design successfully created. It will be published after approval.</p>', 'system', 'single', 1661522727),
(1989, 3, NULL, NULL, 'Your class approved', '<p>Your class Learn Mobile Design successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1661522756),
(1990, 864, NULL, NULL, 'Your class created', '<p>Your class Learning Laravel successfully created. It will be published after approval.</p>', 'system', 'single', 1661523010),
(1991, 3, NULL, NULL, 'Your class created', '<p>Your class Learning Vue successfully created. It will be published after approval.</p>', 'system', 'single', 1661524015),
(1992, 3, NULL, NULL, 'Your class approved', '<p>Your class Learning Vue successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1661524045),
(1993, 3, NULL, NULL, 'Your class created', '<p>Your class Course Details successfully created. It will be published after approval.</p>', 'system', 'single', 1661524566),
(1994, 3, NULL, NULL, 'Your class approved', '<p>Your class Course Details successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1661524614),
(1995, 3, NULL, NULL, 'Your class approved', '<p>Your class Course Details successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1661524745),
(1996, 3, NULL, NULL, 'Your class approved', '<p>Your class Course Details successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1661524939),
(1997, 864, NULL, NULL, 'Your class created', '<p>Your class Course by Center successfully created. It will be published after approval.</p>', 'system', 'single', 1661527715),
(1998, 3, NULL, NULL, 'Your class approved', '<p>Your class Course by Center successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1661527750),
(1999, 864, NULL, NULL, 'Your class created', '<p>Your class Video By Center successfully created. It will be published after approval.</p>', 'system', 'single', 1661528068),
(2000, 3, NULL, NULL, 'Your class approved', '<p>Your class Video By Center successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1661528097),
(2001, 864, NULL, NULL, 'Your class created', '<p>Your class Video By Center successfully created. It will be published after approval.</p>', 'system', 'single', 1661528270),
(2002, 3, NULL, NULL, 'Your class approved', '<p>Your class Video By Center successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1661528298),
(2003, 864, NULL, NULL, 'Your class created', '<p>Your class Text Course by Center successfully created. It will be published after approval.</p>', 'system', 'single', 1661528568),
(2004, 3, NULL, NULL, 'Your class approved', '<p>Your class Text Course by Center successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1661528595),
(2005, 864, NULL, NULL, 'Your class created', '<p>Your class Live Class by Center successfully created. It will be published after approval.</p>', 'system', 'single', 1661528920),
(2006, 3, NULL, NULL, 'Your class approved', '<p>Your class Live Class by Center successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1661528945),
(2007, 3, NULL, NULL, 'Your class approved', '<p>Your class Live Class by Center successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1661528998),
(2008, 864, NULL, NULL, 'Your class created', '<p>Your class UI Design successfully created. It will be published after approval.</p>', 'system', 'single', 1661530995),
(2009, 864, NULL, NULL, 'Your class created', '<p>Your class UI Design successfully created. It will be published after approval.</p>', 'system', 'single', 1661531042),
(2010, 3, NULL, NULL, 'Your class approved', '<p>Your class UI Design successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1661531070),
(2011, 864, NULL, NULL, 'Your class created', '<p>Your class UI Design successfully created. It will be published after approval.</p>', 'system', 'single', 1661531330),
(2012, 3, NULL, NULL, 'Your class approved', '<p>Your class UI Design successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1661531352),
(2013, 864, NULL, NULL, 'Your class created', '<p>Your class UI Design 2 successfully created. It will be published after approval.</p>', 'system', 'single', 1661531695),
(2014, 3, NULL, NULL, 'Your class approved', '<p>Your class UI Design 2 successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1661531717),
(2015, 864, NULL, NULL, 'Your class created', '<p>Your class UI Design 2 successfully created. It will be published after approval.</p>', 'system', 'single', 1661532054),
(2016, 3, NULL, NULL, 'Your class approved', '<p>Your class UI Design 2 successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1661532077),
(2017, 864, NULL, NULL, 'Your class created', '<p>Your class Designer successfully created. It will be published after approval.</p>', 'system', 'single', 1661532326),
(2018, 3, NULL, NULL, 'Your class approved', '<p>Your class Designer successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1661532349),
(2019, 864, NULL, NULL, 'Your class created', '<p>Your class Live Class by Center 2 successfully created. It will be published after approval.</p>', 'system', 'single', 1661550419),
(2020, 3, NULL, NULL, 'Your class approved', '<p>Your class Live Class by Center 2 successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1661550456),
(2021, 3, NULL, NULL, 'New badge', '<p>Congrolation! You received King Seller badge.</p>', 'system', 'single', 1661550547),
(2022, 3, NULL, NULL, 'Your class created', '<p>Your class Live Class by Center 2 successfully created. It will be published after approval.</p>', 'system', 'single', 1661551017),
(2023, 3, NULL, NULL, 'Your class approved', '<p>Your class Live Class by Center 2 successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1661551048),
(2024, 864, NULL, NULL, 'Your class created', '<p>Your class Active Listening: You Can Be a Great Listener successfully created. It will be published after approval.</p>', 'system', 'single', 1661617944),
(2025, 3, NULL, NULL, 'Your class approved', '<p>Your class Active Listening: You Can Be a Great Listener successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1661617981),
(2026, 3, NULL, NULL, 'Your class approved', '<p>Your class Active Listening: You Can Be a Great Listener successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1661618101),
(2027, 3, NULL, NULL, 'Your class created', '<p>Your class Active Listening: You Can Be a Great Listener successfully created. It will be published after approval.</p>', 'system', 'single', 1661618345);

-- --------------------------------------------------------

--
-- Table structure for table `notifications_status`
--

DROP TABLE IF EXISTS `notifications_status`;
CREATE TABLE IF NOT EXISTS `notifications_status` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `notification_id` int(10) UNSIGNED NOT NULL,
  `seen_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `notifications_status_notification_id_foreign` (`notification_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `notifications_status`
--

INSERT INTO `notifications_status` (`id`, `user_id`, `notification_id`, `seen_at`) VALUES
(29, 1, 1601, 1654847000),
(30, 1, 1600, 1654847004),
(31, 1, 1599, 1654847007),
(32, 1, 1590, 1654847009),
(33, 1, 1583, 1654847012),
(34, 1, 1570, 1654847015),
(39, 1015, 1891, 1652102487),
(40, 1, 1566, 1653734538),
(41, 1, 1564, 1653734546),
(42, 1, 1546, 1653734554),
(43, 1, 1534, 1653734559),
(44, 1, 1492, 1654847023),
(45, 1, 1491, 1654847026),
(46, 1, 1462, 1654847028),
(47, 1, 1459, 1654847031),
(48, 1, 1390, 1654847033),
(49, 1, 1389, 1654847035),
(50, 1, 1388, 1654847037),
(51, 1, 1387, 1654847041),
(52, 1, 1386, 1654847044),
(53, 1, 1385, 1654847046),
(54, 1, 1384, 1654847054),
(55, 1, 1382, 1654847057),
(56, 1, 1380, 1654847059),
(57, 1, 1378, 1654847061),
(58, 1, 1373, 1654847063),
(59, 1, 1372, 1654847066),
(60, 1, 1370, 1654847068),
(61, 1, 1368, 1654847071),
(62, 1032, 1913, 1660755679),
(63, 1032, 1906, 1660755683),
(64, 1, 1971, 1661268148);

-- --------------------------------------------------------

--
-- Table structure for table `notification_templates`
--

DROP TABLE IF EXISTS `notification_templates`;
CREATE TABLE IF NOT EXISTS `notification_templates` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `template` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `notification_templates`
--

INSERT INTO `notification_templates` (`id`, `title`, `template`) VALUES
(2, 'New badge', '<p>Congrolation! You received [u.b.title] badge.</p>'),
(3, 'Your user group changed', '<p>Your user group changed to [u.g.title] .</p>'),
(4, 'Your class created', '<p>Your class [c.title] successfully created. It will be published after approval.</p>'),
(5, 'Your class approved', '<p>Your class [c.title] successfully approved. Now you can find it on the website.</p>'),
(6, 'Your class rejected', '<p>Sorry, Your class [c.title] rejected because it doesn\'t meet requirements or is against the community rules.</p>'),
(7, 'New comment for your class', '<p>[u.name] left a new comment on your class [c.title] .</p>'),
(8, 'New class support message', '<p>user [u.name] send new support message for course with title [c.title] .</p>'),
(9, 'New reply on support conversation', '<p>New reply on a support conversation on your class [c.title] support.</p>'),
(10, 'New support ticket', '<p>New support ticket received with subject [s.t.title] .</p>'),
(11, 'New reply on support ticket', '<p>The support ticket with the subject [s.t.title] updated with a new reply.</p>'),
(12, 'New financial document', '<p>&nbsp;New financial document submitted for your class [c.title] with type [f.d.type] and amount [amount] .</p>'),
(13, 'New payout request', '<p>New payout request received with the amount [payout.amount] . You can manage it using the admin panel.</p>'),
(14, 'Payout has been processed', 'Your payout has been processed with the amount [payout.amount]&nbsp;&nbsp;to your account [payout.account] .'),
(15, 'New sales', '<p>Congratulations! There is a new sales for your class [c.title] .</p>'),
(16, 'New purchase completed', '<p>The class [c.title] successfully purchased. Now you can start learning.</p>'),
(17, 'New feedback', '<p>Your class [c.title] received a [rate.count] stars rating from [student.name] .</p>'),
(18, 'Offline payment submitted', '<p>An offline payment request with the amount [amount] submitted successfully.</p>'),
(19, 'Offline payment approved', '<p>Offline payment request with the amount [amount] successfully approved.</p>'),
(20, 'Offline payment rejected', '<p>Sorry, offline payment request with the amount [amount]&nbsp;rejected.</p>'),
(21, 'Subscription plan activated', '<p>[s.p.name] subscription package activated by user [u.name] .</p>'),
(22, 'New meeting request', '<p>New meeting booked by [u.name] for [time.date] with the amount [amount] .</p>'),
(23, 'New meeting join URL', '<p>The reserved meeting join URL created by [instructor.name]. Join the meeting on [time.date] using this URL: [link] .</p>'),
(24, 'Meeting reminder', '<p>You have a meeting on [time.date] . Don\'t forget to join it on time.</p>'),
(25, 'Meeting finished', '<p>The meeting finished. Instructor: [instructor.name] Student:&nbsp; [student.name]&nbsp; Meeting time: [time.date] .</p>'),
(26, 'New contact message', '<p>New contact message with title [c.u.title] received from [u.name] .</p>'),
(27, 'Live class reminder', '<p>Your live class [c.title] will be conducted on [time.date] . Join it on time.</p>'),
(28, 'Promotion plan activated', '<p>Promotion plan [p.p.name]&nbsp;&nbsp;activated for the call [c.title] .</p>'),
(29, 'Promotion plan purchased', '<p>There is new request for activating [p.p.name] for class [c.title] .&nbsp;</p>'),
(30, 'New certificate', '<p>You achieved a new certificate for [c.title] . You can download it from the class page or your panel.</p>'),
(31, 'New pending quiz', '<p>[student.name] passed [q.title] quiz of the [c.title] class and waiting for correction to get results.</p>'),
(32, 'Waiting quiz result', '<p>Your pending quiz corrected and your result is [q.result] for [q.title] quiz of [c.title] class.</p>'),
(33, 'New comment', '<p>[u.name] left a new comment and waiting for approval.</p>'),
(34, 'Payout request submitted', '<p>Your payout request successfully submitted for [payout.amount] . You will receive an email when processed.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `offline_payments`
--

DROP TABLE IF EXISTS `offline_payments`;
CREATE TABLE IF NOT EXISTS `offline_payments` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `amount` int(11) NOT NULL,
  `bank` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_number` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('waiting','approved','reject') COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay_date` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `offline_payments_user_id_foreign` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `offline_payments`
--

INSERT INTO `offline_payments` (`id`, `user_id`, `amount`, `bank`, `reference_number`, `attachment`, `status`, `pay_date`, `created_at`) VALUES
(22, 1015, 500, 'State Bank of India', '583359268', NULL, 'approved', '1626183840', 1626132546);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `status` enum('pending','paying','paid','fail') COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` enum('credit','payment_channel') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_charge_account` tinyint(1) NOT NULL DEFAULT 0,
  `amount` int(10) UNSIGNED NOT NULL,
  `tax` decimal(13,2) DEFAULT NULL,
  `total_discount` decimal(13,2) DEFAULT NULL,
  `total_amount` decimal(13,2) DEFAULT NULL,
  `reference_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `orders_user_id_foreign` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=341 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `status`, `payment_method`, `is_charge_account`, `amount`, `tax`, `total_discount`, `total_amount`, `reference_id`, `payment_data`, `created_at`) VALUES
(306, 1015, 'pending', NULL, 0, 63, '6.30', NULL, '69.30', NULL, NULL, 1625145687),
(320, 1015, 'pending', NULL, 0, 20, '2.00', '0.00', '22.00', NULL, NULL, 1626132487),
(321, 1015, 'paid', 'credit', 0, 20, '1.60', '4.00', '17.60', NULL, NULL, 1626132840),
(326, 1015, 'pending', NULL, 0, 20, '1.60', '4.00', '17.60', NULL, NULL, 1626284818);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
CREATE TABLE IF NOT EXISTS `order_items` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED DEFAULT NULL,
  `subscribe_id` int(10) UNSIGNED DEFAULT NULL,
  `promotion_id` int(10) UNSIGNED DEFAULT NULL,
  `registration_package_id` int(10) UNSIGNED DEFAULT NULL,
  `reserve_meeting_id` int(10) UNSIGNED DEFAULT NULL,
  `ticket_id` int(10) UNSIGNED DEFAULT NULL,
  `discount_id` int(11) DEFAULT NULL,
  `become_instructor_id` int(10) UNSIGNED DEFAULT NULL,
  `amount` int(10) UNSIGNED DEFAULT NULL,
  `tax` int(10) UNSIGNED DEFAULT NULL,
  `tax_price` decimal(13,2) DEFAULT NULL,
  `commission` int(10) UNSIGNED DEFAULT NULL,
  `commission_price` decimal(13,2) DEFAULT NULL,
  `discount` decimal(13,2) DEFAULT NULL,
  `total_amount` decimal(13,2) DEFAULT NULL,
  `created_at` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `order_items_order_id_foreign` (`order_id`) USING BTREE,
  KEY `order_items_webinar_id_foreign` (`webinar_id`) USING BTREE,
  KEY `order_items_ticket_id_foreign` (`ticket_id`) USING BTREE,
  KEY `order_items_reserve_meeting_id_foreign` (`reserve_meeting_id`) USING BTREE,
  KEY `order_items_subscribe_id_foreign` (`subscribe_id`) USING BTREE,
  KEY `order_items_promotion_id_foreign` (`promotion_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=346 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `user_id`, `order_id`, `webinar_id`, `subscribe_id`, `promotion_id`, `registration_package_id`, `reserve_meeting_id`, `ticket_id`, `discount_id`, `become_instructor_id`, `amount`, `tax`, `tax_price`, `commission`, `commission_price`, `discount`, `total_amount`, `created_at`) VALUES
(310, 1015, 306, 1996, NULL, 3, NULL, NULL, NULL, NULL, NULL, 63, 10, '6.30', 0, '0.00', NULL, '69.30', 1625145687),
(311, 996, 307, NULL, NULL, NULL, NULL, 48, NULL, NULL, NULL, 150, 10, '15.00', 20, '30.00', '0.00', '165.00', 1625944333),
(312, 995, 308, NULL, NULL, NULL, NULL, 49, NULL, NULL, NULL, 100, 10, '10.00', 20, '20.00', '0.00', '110.00', 1625952623),
(313, 995, 309, 2005, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 10, '1.00', 20, '2.00', '0.00', '11.00', 1625953190),
(314, 995, 310, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, 125, 10, '12.50', 20, '25.00', '0.00', '137.50', 1625996807),
(315, 995, 311, 1999, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50, 10, '5.00', 10, '5.00', '0.00', '55.00', 1625996936),
(316, 995, 312, 1998, NULL, NULL, NULL, NULL, 28, NULL, NULL, 100, 10, '5.00', 20, '10.00', '50.00', '55.00', 1625996974),
(317, 995, 313, 2001, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, 10, '1.60', 10, '1.60', '4.00', '17.60', 1625997096),
(318, 996, 314, 2006, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25, 10, '2.25', 20, '4.50', '2.50', '24.75', 1626060481),
(319, 996, 315, 1998, NULL, NULL, NULL, NULL, 28, NULL, NULL, 100, 10, '4.00', 20, '8.00', '60.00', '44.00', 1626060548),
(320, 930, 316, 1998, NULL, NULL, NULL, NULL, 28, NULL, NULL, 100, 10, '5.00', 20, '10.00', '50.00', '55.00', 1626060832),
(321, 979, 317, 2004, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60, 10, '6.00', 10, '6.00', '0.00', '66.00', 1626061329),
(322, 979, 318, 2002, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, 10, '2.00', 20, '4.00', '0.00', '22.00', 1626061366),
(323, 979, 318, 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 10, '3.00', 20, '6.00', '0.00', '33.00', 1626061366),
(324, 995, 319, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 20, 10, '2.00', 0, '0.00', NULL, '22.00', 1626061431),
(325, 1015, 320, 2002, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, 10, '2.00', 20, '4.00', '0.00', '22.00', 1626132487),
(326, 1015, 321, 2002, NULL, NULL, NULL, NULL, NULL, 7, NULL, 20, 10, '1.60', 20, '3.20', '4.00', '17.60', 1626132840),
(327, 929, 322, 2003, NULL, NULL, NULL, NULL, 31, NULL, NULL, 40, 10, '3.00', 20, '6.00', '10.00', '33.00', 1626240993),
(328, 929, 323, 2004, NULL, 3, NULL, NULL, NULL, NULL, NULL, 50, 10, '5.00', 0, '0.00', NULL, '55.00', 1626241146),
(329, 929, 324, 2003, NULL, NULL, NULL, NULL, 31, NULL, NULL, 40, 10, '3.00', 20, '6.00', '10.00', '33.00', 1626241207),
(330, 995, 325, NULL, NULL, NULL, NULL, 51, NULL, NULL, NULL, 100, 10, '10.00', 20, '20.00', '0.00', '110.00', 1626247189),
(331, 1015, 326, 2001, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, 10, '1.60', 10, '1.60', '4.00', '17.60', 1626284818),
(332, 996, 327, 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 10, '2.70', 20, '5.40', '3.00', '29.70', 1626508952),
(333, 929, 328, 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 10, '3.00', 20, '6.00', '0.00', '33.00', 1635412190),
(334, 979, 329, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, 100, 10, '10.00', 0, '0.00', NULL, '110.00', 1635448382),
(335, 1017, 330, 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 10, '3.00', 20, '6.00', '0.00', '33.00', 1639379271),
(336, 1017, 331, 1998, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100, 10, '10.00', 20, '20.00', '0.00', '110.00', 1639379347),
(337, 1017, 332, 2003, NULL, NULL, NULL, NULL, 31, NULL, NULL, 40, 10, '3.00', 20, '6.00', '10.00', '33.00', 1639379382),
(338, 995, 333, 2009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 10, '1.00', 20, '2.00', '0.00', '11.00', 1646172083),
(339, 996, 334, 2009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 10, '0.90', 20, '1.80', '1.00', '9.90', 1646172119),
(340, 979, 335, 2009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 10, '1.00', 20, '2.00', '0.00', '11.00', 1646172156),
(341, 929, 336, 2009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 10, '1.00', 20, '2.00', '0.00', '11.00', 1646172292),
(342, 995, 337, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 750, 10, '75.00', 20, '150.00', '0.00', '825.00', 1646379279),
(343, 1017, 338, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, 300, 10, '30.00', 20, '60.00', '0.00', '330.00', 1646380150),
(344, 930, 339, NULL, NULL, NULL, 2, NULL, NULL, NULL, 5, 199, 10, '19.90', 0, '0.00', NULL, '218.90', 1646386782),
(345, 859, 340, NULL, NULL, NULL, 4, NULL, NULL, NULL, 6, 200, 10, '20.00', 0, '0.00', NULL, '220.00', 1646387650);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `robot` tinyint(1) NOT NULL DEFAULT 0,
  `status` enum('publish','draft') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_link_unique` (`link`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `link`, `name`, `robot`, `status`, `created_at`) VALUES
(3, '/about', 'About', 1, 'publish', 1609088468),
(5, '/terms', 'Terms & rules', 1, 'publish', 1646409295),
(6, '/reward_points_system', 'Reward Points System', 1, 'publish', 1646398467);

-- --------------------------------------------------------

--
-- Table structure for table `page_translations`
--

DROP TABLE IF EXISTS `page_translations`;
CREATE TABLE IF NOT EXISTS `page_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `page_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `page_translations_page_id_foreign` (`page_id`),
  KEY `page_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_translations`
--

INSERT INTO `page_translations` (`id`, `page_id`, `locale`, `title`, `seo_description`, `content`) VALUES
(1, 3, 'en', 'About Rocket LMS', 'Rocket LMS is an online course marketplace with a pile of features that helps you to run your online education business easily.', '<div><b>Rocket LMS</b> is an online course marketplace with a pile of features that helps you to run your online education business easily. This platform helps instructors and students get in touch together and share knowledge.</div><div><br></div><div>Teachers will be able to create unlimited video courses, live classes, text courses, projects, quizzes, files, etc and students will be able to use the educational material and increase their skill level.</div><div><br></div><div>Rocket LMS is based on real business needs, cultural differences, advanced user researches so it covers your business requirements efficiently.</div><div style=\"text-align: center; \"><img src=\"/store/1/default_images/about.png\" style=\"width: 1110px;\"><br></div><div><br></div><div><b>WHY CHOOSE Rocket LMS?</b></div><div><br></div><div>- Comprehensive solution for online education businesses</div><div>- Based on real business needs</div><div>- Multiple content types (Video courses, Live classes, text courses)</div><div>- Youtube, Vimeo, and AWS integration</div><div>- Google calendar integration</div><div>- Online 1 to 1 meetings support</div><div>- Single &amp; multiple instructors</div><div>- Organizational education system</div><div>- Subscribe system</div><div>- Various payment gateways for worldwide</div><div>- Offline payment</div><div>- Multilanguage</div><div>- Fully responsive</div><div>- Fully customizable</div><div>- RTL support</div>'),
(2, 5, 'en', 'Terms of Service', 'Our mission is to improve lives through learning. We enable anyone anywhere to create and share educational content (instructors) and to access that educational content to learn.', '<p><b>Note: This is just demo data.</b></p><p>Our mission is to improve lives through learning. We enable anyone anywhere to create and share educational content (instructors) and to access that educational content to learn (students). We consider our marketplace model the best way to offer valuable educational content to our users. We need rules to keep our platform and services safe for you, us, and our student and instructor community. These Terms apply to all your activities on the Udemy website, the Udemy mobile applications, our TV applications, our APIs, and other related services (“<b>Services</b>”).</p><p>If you publish content on our platform, you must also agree to the Instructor Terms. We also provide details regarding our processing of the personal data of our students and instructors in our Privacy Policy. If you are using our platform for Business as part of your organization’s Udemy for Business subscription, you should consult our Udemy for Business Privacy Statement.</p><p style=\"text-align: center; \"><img src=\"/store/1/default_images/blogs/home2.png\" style=\"width: 954px;\"><br></p><p>You need an account for most activities on our platform, including to <b>purchase</b> and access content or to <b>submit content for publication</b>. When setting up and maintaining your account, you must provide and continue to provide accurate and complete information, including a valid email address. You have complete responsibility for your account and everything that happens on your account, including for any harm or damage (to us or anyone else) caused by someone using your account without your permission. This means you need to be careful with your password. You may not transfer your account to someone else or use someone else’s account. If you contact us to request access to an account, we will not grant you such access unless you can provide us with the information that we need to prove you are the owner of that account. In the event of the death of a user, the account of that user will be closed.</p>'),
(3, 6, 'en', 'Reward Points System', 'Rocket LMS Reward Points System is a Complete Loyalty Reward Points System and the most comprehensive Points and Rewards Plugin.', '<p><img src=\"/store/1/default_images/Reward Points System.jpg\" style=\"width: 800px;\"><br></p><p><b>Rocket LMS&nbsp;Reward Points System is a Complete Loyalty Reward Points System and the most comprehensive Points and Rewards Plugin. Reward your Customers using Reward Points for Product Purchase, Writing Reviews, Sign up, Referrals, etc. The earned Reward Points can be redeemed for future purchases.&nbsp;</b></p>'),
(4, 5, 'es', 'Términos de servicio', 'Nuestra misión es mejorar vidas a través del aprendizaje. Permitimos que cualquier persona en cualquier lugar pueda crear y compartir contenido educativo (instructores) y acceder a ese contenido educativo para aprender.', '<p>Nota: Estos son solo datos de demostración.</p><p><br></p><p>Nuestra misión es mejorar vidas a través del aprendizaje. Permitimos que cualquier persona en cualquier lugar pueda crear y compartir contenido educativo (instructores) y acceder a ese contenido educativo para aprender (estudiantes). Consideramos nuestro modelo de mercado la mejor manera de ofrecer contenido educativo valioso a nuestros usuarios. Necesitamos reglas para mantener nuestra plataforma y servicios seguros para usted, nosotros y nuestra comunidad de estudiantes e instructores. Estos Términos se aplican a todas sus actividades en el sitio web de Udemy, las aplicaciones móviles de Udemy, nuestras aplicaciones de TV, nuestras API y otros servicios relacionados (\"Servicios\").</p><p><br></p><p>Si publica contenido en nuestra plataforma, también debe aceptar los Términos del instructor. También proporcionamos detalles sobre nuestro procesamiento de los datos personales de nuestros estudiantes e instructores en nuestra Política de privacidad. Si utiliza nuestra plataforma para empresas como parte de la suscripción a Udemy for Business de su organización, debe consultar nuestra Declaración de privacidad de Udemy for Business.</p><p><br></p><p><br></p><p><br></p><p>Necesita una cuenta para la mayoría de las actividades en nuestra plataforma, incluso para comprar y acceder a contenido o para enviar contenido para su publicación. Al configurar y mantener su cuenta, debe proporcionar y continuar proporcionando información precisa y completa, incluida una dirección de correo electrónico válida. Usted es completamente responsable de su cuenta y de todo lo que sucede en ella, incluido cualquier daño o perjuicio (a nosotros o a cualquier otra persona) causado por alguien que usa su cuenta sin su permiso. Esto significa que debe tener cuidado con su contraseña. No puede transferir su cuenta a otra persona ni usar la cuenta de otra persona. Si se comunica con nosotros para solicitar acceso a una cuenta, no le otorgaremos dicho acceso a menos que pueda proporcionarnos la información que necesitamos para demostrar que es el propietario de esa cuenta. En caso de fallecimiento de un usuario, la cuenta de ese usuario se cerrará.</p>'),
(5, 5, 'ar', 'شروط الخدمة', 'مهمتنا هي تحسين الحياة من خلال التعلم. نحن نمكن أي شخص في أي مكان من إنشاء ومشاركة المحتوى التعليمي (المدربين) والوصول إلى هذا المحتوى التعليمي للتعلم.', '<p style=\"direction: rtl; text-align: right;\">ملاحظة: هذه مجرد بيانات تجريبية.</p><p style=\"direction: rtl; text-align: right;\">مهمتنا هي تحسين الحياة من خلال التعلم. نحن نمكن أي شخص في أي مكان من إنشاء ومشاركة المحتوى التعليمي (المدربين) والوصول إلى هذا المحتوى التعليمي للتعلم (الطلاب). نحن نعتبر نموذج السوق الخاص بنا هو أفضل طريقة لتقديم محتوى تعليمي قيم لمستخدمينا. نحن بحاجة إلى قواعد للحفاظ على نظامنا الأساسي وخدماتنا آمنة لك ولنا ومجتمع الطلاب والمدرسين لدينا. تنطبق هذه الشروط على جميع أنشطتك على موقع Udemy على الويب ، وتطبيقات Udemy للهاتف المحمول ، وتطبيقات التلفزيون لدينا ، وواجهات برمجة التطبيقات الخاصة بنا ، والخدمات الأخرى ذات الصلة (\"الخدمات\").</p><p style=\"direction: rtl; text-align: right;\">إذا قمت بنشر محتوى على نظامنا الأساسي ، فيجب عليك أيضًا الموافقة على شروط المدرب. نقدم أيضًا تفاصيل تتعلق بمعالجتنا للبيانات الشخصية لطلابنا ومعلمينا في سياسة الخصوصية الخاصة بنا. إذا كنت تستخدم منصتنا للأعمال كجزء من اشتراك Udemy for Business الخاص بمؤسستك ، فيجب عليك الرجوع إلى بيان خصوصية Udemy for Business.</p><p style=\"direction: rtl; text-align: right;\">أنت بحاجة إلى حساب لمعظم الأنشطة على نظامنا الأساسي ، بما في ذلك شراء المحتوى والوصول إليه أو إرسال المحتوى للنشر. عند إعداد حسابك وصيانته ، يجب عليك تقديم معلومات دقيقة وكاملة والاستمرار في تقديمها ، بما في ذلك عنوان بريد إلكتروني صالح. أنت تتحمل المسؤولية الكاملة عن حسابك وكل ما يحدث على حسابك ، بما في ذلك أي ضرر أو ضرر (لنا أو لأي شخص آخر) ناجم عن شخص يستخدم حسابك دون إذنك. هذا يعني أنك بحاجة إلى توخي الحذر بشأن كلمة المرور الخاصة بك. لا يجوز لك نقل حسابك إلى شخص آخر أو استخدام حساب شخص آخر. إذا اتصلت بنا لطلب الوصول إلى حساب ، فلن نمنحك هذا الوصول ما لم تتمكن من تزويدنا بالمعلومات التي نحتاجها لإثبات أنك مالك هذا الحساب. في حالة وفاة المستخدم ، سيتم إغلاق حساب هذا المستخدم.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `payment_channels`
--

DROP TABLE IF EXISTS `payment_channels`;
CREATE TABLE IF NOT EXISTS `payment_channels` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_name` enum('Paypal','Paystack','Paytm','Payu','Razorpay','Zarinpal','Stripe','Paysera','Cashu','YandexCheckout','MercadoPago','Bitpay','Midtrans','Iyzipay','Flutterwave','Payfort','UnionPay') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `payment_channels`
--

INSERT INTO `payment_channels` (`id`, `title`, `class_name`, `status`, `image`, `settings`, `created_at`) VALUES
(1, 'Paypal', 'Paypal', 'active', '/store/1/default_images/gateways/paypal.png', '', '1617345734'),
(4, 'Payu', 'Payu', 'active', '/store/1/default_images/gateways/payu.png', '', '1617345734'),
(5, 'Razorpay', 'Razorpay', 'active', '/store/1/default_images/gateways/razorpay.png', '', '1617345734');

-- --------------------------------------------------------

--
-- Table structure for table `payouts`
--

DROP TABLE IF EXISTS `payouts`;
CREATE TABLE IF NOT EXISTS `payouts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `amount` decimal(13,2) NOT NULL,
  `account_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_number` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_bank_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('waiting','done','reject') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `payouts_user_id_foreign` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `payouts`
--

INSERT INTO `payouts` (`id`, `user_id`, `amount`, `account_name`, `account_number`, `account_bank_name`, `status`, `created_at`) VALUES
(3, 1015, '332.00', 'Robert Ransdell', 'QR55BDHC20040182623775', 'Qatar National Bank', 'done', 1626061191);

-- --------------------------------------------------------

--
-- Table structure for table `payu_transactions`
--

DROP TABLE IF EXISTS `payu_transactions`;
CREATE TABLE IF NOT EXISTS `payu_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `paid_for_id` bigint(20) UNSIGNED DEFAULT NULL,
  `paid_for_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gateway` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `destination` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hash` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `response` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','failed','successful','invalid') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `verified_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `payu_transactions_transaction_id_unique` (`transaction_id`) USING BTREE,
  KEY `payu_transactions_status_index` (`status`) USING BTREE,
  KEY `payu_transactions_verified_at_index` (`verified_at`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `section_id` int(10) UNSIGNED DEFAULT NULL,
  `allow` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `permissions_role_id_index` (`role_id`) USING BTREE,
  KEY `permissions_section_id_index` (`section_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9891 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `role_id`, `section_id`, `allow`) VALUES
(9615, 2, 1, 1),
(9616, 2, 2, 1),
(9617, 2, 3, 1),
(9618, 2, 4, 1),
(9619, 2, 5, 1),
(9620, 2, 6, 1),
(9621, 2, 7, 1),
(9622, 2, 8, 1),
(9623, 2, 9, 1),
(9624, 2, 10, 1),
(9625, 2, 11, 1),
(9626, 2, 12, 1),
(9627, 2, 13, 1),
(9628, 2, 14, 1),
(9629, 2, 15, 1),
(9630, 2, 16, 1),
(9631, 2, 17, 1),
(9632, 2, 25, 1),
(9633, 2, 26, 1),
(9634, 2, 50, 1),
(9635, 2, 51, 1),
(9636, 2, 52, 1),
(9637, 2, 53, 1),
(9638, 2, 54, 1),
(9639, 2, 100, 1),
(9640, 2, 101, 1),
(9641, 2, 102, 1),
(9642, 2, 103, 1),
(9643, 2, 104, 1),
(9644, 2, 105, 1),
(9645, 2, 106, 1),
(9646, 2, 107, 1),
(9647, 2, 108, 1),
(9648, 2, 109, 1),
(9649, 2, 110, 1),
(9650, 2, 111, 1),
(9651, 2, 112, 1),
(9652, 2, 113, 1),
(9653, 2, 114, 1),
(9654, 2, 115, 1),
(9655, 2, 116, 1),
(9656, 2, 117, 1),
(9657, 2, 150, 1),
(9658, 2, 151, 1),
(9659, 2, 152, 1),
(9660, 2, 153, 1),
(9661, 2, 154, 1),
(9662, 2, 155, 1),
(9663, 2, 156, 1),
(9664, 2, 157, 1),
(9665, 2, 158, 1),
(9666, 2, 200, 1),
(9667, 2, 201, 1),
(9668, 2, 202, 1),
(9669, 2, 203, 1),
(9670, 2, 204, 1),
(9671, 2, 205, 1),
(9672, 2, 206, 1),
(9673, 2, 207, 1),
(9674, 2, 208, 1),
(9675, 2, 250, 1),
(9676, 2, 251, 1),
(9677, 2, 252, 1),
(9678, 2, 253, 1),
(9679, 2, 254, 1),
(9680, 2, 300, 1),
(9681, 2, 301, 1),
(9682, 2, 302, 1),
(9683, 2, 303, 1),
(9684, 2, 304, 1),
(9685, 2, 350, 1),
(9686, 2, 351, 1),
(9687, 2, 352, 1),
(9688, 2, 353, 1),
(9689, 2, 354, 1),
(9690, 2, 355, 1),
(9691, 2, 356, 1),
(9692, 2, 400, 1),
(9693, 2, 401, 1),
(9694, 2, 402, 1),
(9695, 2, 403, 1),
(9696, 2, 404, 1),
(9697, 2, 405, 1),
(9698, 2, 450, 1),
(9699, 2, 451, 1),
(9700, 2, 452, 1),
(9701, 2, 453, 1),
(9702, 2, 454, 1),
(9703, 2, 455, 1),
(9704, 2, 456, 1),
(9705, 2, 457, 1),
(9706, 2, 458, 1),
(9707, 2, 459, 1),
(9708, 2, 500, 1),
(9709, 2, 501, 1),
(9710, 2, 502, 1),
(9711, 2, 503, 1),
(9712, 2, 504, 1),
(9713, 2, 505, 1),
(9714, 2, 550, 1),
(9715, 2, 551, 1),
(9716, 2, 552, 1),
(9717, 2, 553, 1),
(9718, 2, 554, 1),
(9719, 2, 555, 1),
(9720, 2, 600, 1),
(9721, 2, 601, 1),
(9722, 2, 602, 1),
(9723, 2, 603, 1),
(9724, 2, 650, 1),
(9725, 2, 651, 1),
(9726, 2, 652, 1),
(9727, 2, 653, 1),
(9728, 2, 654, 1),
(9729, 2, 655, 1),
(9730, 2, 656, 1),
(9731, 2, 657, 1),
(9732, 2, 658, 1),
(9733, 2, 700, 1),
(9734, 2, 701, 1),
(9735, 2, 702, 1),
(9736, 2, 703, 1),
(9737, 2, 704, 1),
(9738, 2, 705, 1),
(9739, 2, 706, 1),
(9740, 2, 707, 1),
(9741, 2, 708, 1),
(9742, 2, 750, 1),
(9743, 2, 751, 1),
(9744, 2, 752, 1),
(9745, 2, 753, 1),
(9746, 2, 754, 1),
(9747, 2, 800, 1),
(9748, 2, 801, 1),
(9749, 2, 802, 1),
(9750, 2, 803, 1),
(9751, 2, 850, 1),
(9752, 2, 851, 1),
(9753, 2, 852, 1),
(9754, 2, 853, 1),
(9755, 2, 854, 1),
(9756, 2, 900, 1),
(9757, 2, 901, 1),
(9758, 2, 902, 1),
(9759, 2, 903, 1),
(9760, 2, 904, 1),
(9761, 2, 950, 1),
(9762, 2, 951, 1),
(9763, 2, 952, 1),
(9764, 2, 953, 1),
(9765, 2, 954, 1),
(9766, 2, 955, 1),
(9767, 2, 956, 1),
(9768, 2, 957, 1),
(9769, 2, 958, 1),
(9770, 2, 959, 1),
(9771, 2, 1000, 1),
(9772, 2, 1001, 1),
(9773, 2, 1002, 1),
(9774, 2, 1003, 1),
(9775, 2, 1004, 1),
(9776, 2, 1050, 1),
(9777, 2, 1051, 1),
(9778, 2, 1052, 1),
(9779, 2, 1053, 1),
(9780, 2, 1054, 1),
(9781, 2, 1055, 1),
(9782, 2, 1056, 1),
(9783, 2, 1057, 1),
(9784, 2, 1058, 1),
(9785, 2, 1059, 1),
(9786, 2, 1060, 1),
(9787, 2, 1075, 1),
(9788, 2, 1076, 1),
(9789, 2, 1077, 1),
(9790, 2, 1078, 1),
(9791, 2, 1079, 1),
(9792, 2, 1100, 1),
(9793, 2, 1101, 1),
(9794, 2, 1102, 1),
(9795, 2, 1103, 1),
(9796, 2, 1104, 1),
(9797, 2, 1150, 1),
(9798, 2, 1151, 1),
(9799, 2, 1152, 1),
(9800, 2, 1153, 1),
(9801, 2, 1154, 1),
(9802, 2, 1200, 1),
(9803, 2, 1201, 1),
(9804, 2, 1202, 1),
(9805, 2, 1203, 1),
(9806, 2, 1204, 1),
(9807, 2, 1230, 1),
(9808, 2, 1231, 1),
(9809, 2, 1232, 1),
(9810, 2, 1233, 1),
(9811, 2, 1234, 1),
(9812, 2, 1235, 1),
(9813, 2, 1250, 1),
(9814, 2, 1251, 1),
(9815, 2, 1252, 1),
(9816, 2, 1253, 1),
(9817, 2, 1300, 1),
(9818, 2, 1301, 1),
(9819, 2, 1302, 1),
(9820, 2, 1303, 1),
(9821, 2, 1304, 1),
(9822, 2, 1305, 1),
(9823, 2, 1350, 1),
(9824, 2, 1351, 1),
(9825, 2, 1352, 1),
(9826, 2, 1353, 1),
(9827, 2, 1354, 1),
(9828, 2, 1355, 1),
(9829, 2, 1400, 1),
(9830, 2, 1401, 1),
(9831, 2, 1402, 1),
(9832, 2, 1403, 1),
(9833, 2, 1404, 1),
(9834, 2, 1405, 1),
(9835, 2, 1406, 1),
(9836, 2, 1407, 1),
(9837, 2, 1408, 1),
(9838, 2, 1409, 1),
(9839, 2, 1410, 1),
(9840, 2, 1450, 1),
(9841, 2, 1451, 1),
(9842, 2, 1452, 1),
(9843, 2, 1453, 1),
(9844, 2, 1454, 1),
(9845, 2, 1455, 1),
(9846, 2, 1500, 1),
(9847, 2, 1501, 1),
(9848, 2, 1502, 1),
(9849, 2, 1503, 1),
(9850, 2, 1504, 1),
(9851, 2, 1550, 1),
(9852, 2, 1551, 1),
(9853, 2, 1552, 1),
(9854, 2, 1553, 1),
(9855, 2, 1554, 1),
(9856, 2, 1600, 1),
(9857, 2, 1601, 1),
(9858, 2, 1602, 1),
(9859, 2, 1603, 1),
(9860, 2, 1604, 1),
(9861, 2, 1650, 1),
(9862, 2, 1651, 1),
(9863, 2, 1652, 1),
(9864, 2, 1675, 1),
(9865, 2, 1676, 1),
(9866, 2, 1677, 1),
(9867, 2, 1678, 1),
(9868, 2, 1700, 1),
(9869, 2, 1701, 1),
(9870, 2, 1702, 1),
(9871, 2, 1725, 1),
(9872, 2, 1726, 1),
(9873, 2, 1727, 1),
(9874, 2, 1728, 1),
(9875, 2, 1729, 1),
(9876, 2, 1730, 1),
(9877, 2, 1731, 1),
(9878, 2, 1732, 1),
(9879, 2, 1750, 1),
(9880, 2, 1751, 1),
(9881, 2, 1752, 1),
(9882, 2, 1753, 1),
(9883, 2, 1754, 1),
(9884, 2, 1775, 1),
(9885, 2, 1776, 1),
(9886, 2, 1777, 1),
(9887, 2, 1778, 1),
(9888, 2, 1779, 1),
(9889, 2, 1780, 1),
(9890, 2, 1781, 1);

-- --------------------------------------------------------

--
-- Table structure for table `prerequisites`
--

DROP TABLE IF EXISTS `prerequisites`;
CREATE TABLE IF NOT EXISTS `prerequisites` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `prerequisite_id` int(10) UNSIGNED NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `order` int(10) UNSIGNED DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `prerequisites_webinar_id_foreign` (`webinar_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `prerequisites`
--

INSERT INTO `prerequisites` (`id`, `webinar_id`, `prerequisite_id`, `required`, `order`, `created_at`, `updated_at`) VALUES
(26, 2003, 1995, 0, NULL, 1625300252, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

DROP TABLE IF EXISTS `promotions`;
CREATE TABLE IF NOT EXISTS `promotions` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `days` int(10) UNSIGNED NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_popular` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `promotions`
--

INSERT INTO `promotions` (`id`, `days`, `price`, `icon`, `is_popular`, `created_at`) VALUES
(2, 15, 150, '/store/1/default_images/subscribe_packages/gold.svg', 1, 1635446032),
(3, 15, 50, '/store/1/default_images/subscribe_packages/bronze.png', 0, 1646415095),
(4, 15, 90, '/store/1/default_images/subscribe_packages/silver.svg', 0, 1635446095);

-- --------------------------------------------------------

--
-- Table structure for table `promotion_translations`
--

DROP TABLE IF EXISTS `promotion_translations`;
CREATE TABLE IF NOT EXISTS `promotion_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `promotion_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `promotion_translations_promotion_id_foreign` (`promotion_id`),
  KEY `promotion_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promotion_translations`
--

INSERT INTO `promotion_translations` (`id`, `promotion_id`, `locale`, `title`, `description`) VALUES
(1, 2, 'en', 'Gold', 'One of your classes will be displayed at the top of the category list and homepage slider'),
(2, 3, 'en', 'Bronze', 'One of your classes will be displayed at the top of the category list'),
(3, 4, 'en', 'Silver', 'One of your classes will be displayed at the homepage slider'),
(4, 2, 'es', 'Oro', 'Una de sus clases se mostrará en la parte superior de la lista de categorías y el control deslizante de la página de inicio.'),
(5, 2, 'ar', 'ذهب', 'سيتم عرض أحد فصولك الدراسية في أعلى قائمة الفئات وشريط تمرير الصفحة الرئيسية'),
(6, 4, 'ar', 'فضة', 'سيتم عرض إحدى فصولك الدراسية في شريط تمرير الصفحة الرئيسية'),
(7, 4, 'es', 'Plata', 'Una de sus clases se mostrará en el control deslizante de la página de inicio.'),
(8, 3, 'ar', 'برونزية', 'سيتم عرض أحد فصولك في أعلى قائمة الفئات'),
(9, 3, 'es', 'Bronce', 'Una de sus clases se mostrará en la parte superior de la lista de categorías.');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

DROP TABLE IF EXISTS `purchases`;
CREATE TABLE IF NOT EXISTS `purchases` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `purchases_webinar_id_foreign` (`webinar_id`) USING BTREE,
  KEY `purchases_user_id_foreign` (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

DROP TABLE IF EXISTS `quizzes`;
CREATE TABLE IF NOT EXISTS `quizzes` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `webinar_id` int(10) UNSIGNED DEFAULT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `chapter_id` int(10) UNSIGNED DEFAULT NULL,
  `webinar_title` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` int(11) DEFAULT 0,
  `attempt` int(11) DEFAULT NULL,
  `pass_mark` int(11) NOT NULL,
  `certificate` tinyint(1) NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_mark` int(10) UNSIGNED DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `quizzes_webinar_id_foreign` (`webinar_id`) USING BTREE,
  KEY `quizzes_creator_id_foreign` (`creator_id`) USING BTREE,
  KEY `quizzes_chapter_id_foreign` (`chapter_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `quizzes`
--

INSERT INTO `quizzes` (`id`, `webinar_id`, `creator_id`, `chapter_id`, `webinar_title`, `time`, `attempt`, `pass_mark`, `certificate`, `status`, `total_mark`, `created_at`, `updated_at`) VALUES
(31, 2010, 3, NULL, 'Introduction to Risk Management', 5, 10, 70, 1, 'active', 100, 1625079329, 1661079720),
(32, 2003, 3, NULL, 'Active Listening: You Can Be a Great Listener', 10, 3, 60, 1, 'active', 100, 1625950930, 1626242500),
(34, 1996, 1015, NULL, 'Learn Linux in 5 Days', 5, 3, 70, 1, 'active', 100, 1625951477, 1625952288),
(36, 2012, 864, 31, 'Introduction to webdesign', 5, NULL, 5, 0, 'active', 5, 1659482199, NULL),
(37, 2010, 3, 33, 'Introduction to Risk Management', NULL, 1, 10, 0, 'active', NULL, 1660750400, NULL),
(38, 2020, 3, 44, 'Better Relationship Between You and Your Parents', NULL, NULL, 5, 0, 'active', NULL, 1660930254, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quizzes_questions`
--

DROP TABLE IF EXISTS `quizzes_questions`;
CREATE TABLE IF NOT EXISTS `quizzes_questions` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `quiz_id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `grade` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('multiple','descriptive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `quizzes_questions_quiz_id_foreign` (`quiz_id`) USING BTREE,
  KEY `quizzes_questions_creator_id_foreign` (`creator_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `quizzes_questions`
--

INSERT INTO `quizzes_questions` (`id`, `quiz_id`, `creator_id`, `grade`, `type`, `created_at`, `updated_at`) VALUES
(51, 31, 3, '20', 'multiple', 1625086333, NULL),
(52, 31, 3, '20', 'multiple', 1625086927, NULL),
(53, 31, 3, '20', 'multiple', 1625088072, NULL),
(54, 31, 3, '20', 'multiple', 1625733114, NULL),
(55, 31, 3, '20', 'multiple', 1625733218, NULL),
(61, 34, 1015, '20', 'multiple', 1625951934, 1625951971),
(62, 34, 1015, '20', 'multiple', 1625952052, NULL),
(63, 34, 1015, '20', 'multiple', 1625952097, NULL),
(64, 34, 1015, '20', 'multiple', 1625952140, NULL),
(65, 34, 1015, '20', 'descriptive', 1625952278, NULL),
(66, 32, 3, '20', 'multiple', 1626061979, NULL),
(67, 32, 3, '20', 'multiple', 1626062031, NULL),
(68, 32, 3, '20', 'multiple', 1626062079, NULL),
(69, 32, 3, '20', 'multiple', 1626062130, NULL),
(70, 32, 3, '20', 'multiple', 1626062181, NULL),
(76, 36, 864, '2', 'multiple', 1659482237, NULL),
(77, 36, 864, '2', 'multiple', 1659482294, NULL),
(78, 36, 864, '1', 'descriptive', 1659482335, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quizzes_questions_answers`
--

DROP TABLE IF EXISTS `quizzes_questions_answers`;
CREATE TABLE IF NOT EXISTS `quizzes_questions_answers` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `question_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `correct` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `quizzes_questions_answers_question_id_foreign` (`question_id`) USING BTREE,
  KEY `quizzes_questions_answers_creator_id_foreign` (`creator_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `quizzes_questions_answers`
--

INSERT INTO `quizzes_questions_answers` (`id`, `creator_id`, `question_id`, `image`, `correct`, `created_at`, `updated_at`) VALUES
(115, 3, 51, '/store/3/quiz/q1 (4).jpg', 0, 1625086333, NULL),
(116, 3, 51, '/store/3/quiz/q1 (1).jpg', 1, 1625086333, NULL),
(117, 3, 51, '/store/3/quiz/q1 (3).jpg', 0, 1625086333, NULL),
(118, 3, 51, '/store/3/quiz/q1 (2).jpg', 0, 1625086333, NULL),
(119, 3, 52, '/store/3/quiz/q2 (4).jpg', 0, 1625086927, NULL),
(120, 3, 52, '/store/3/quiz/q2 (3).jpg', 0, 1625086927, NULL),
(121, 3, 52, '/store/3/quiz/q2 (2).jpg', 0, 1625086927, NULL),
(122, 3, 52, '/store/3/quiz/q2 (1).jpg', 1, 1625086927, NULL),
(123, 3, 53, '/store/3/quiz/q3 (1).jpg', 1, 1625088072, NULL),
(124, 3, 53, '/store/3/quiz/q3 (2).jpg', 0, 1625088072, NULL),
(125, 3, 53, '/store/3/quiz/q3 (3).jpg', 0, 1625088072, NULL),
(126, 3, 53, '/store/3/quiz/q3 (4).jpg', 0, 1625088072, NULL),
(127, 3, 54, '/store/3/quiz/q4 (1).jpg', 0, 1625733114, NULL),
(128, 3, 54, '/store/3/quiz/q4 (2).jpg', 0, 1625733114, NULL),
(129, 3, 54, '/store/3/quiz/q4 (3).jpg', 1, 1625733114, NULL),
(130, 3, 54, '/store/3/quiz/q4 (4).jpg', 0, 1625733114, NULL),
(131, 3, 55, '/store/3/quiz/q5 (1).jpg', 0, 1625733218, NULL),
(132, 3, 55, '/store/3/quiz/q5 (2).jpg', 1, 1625733218, NULL),
(133, 3, 55, '/store/3/quiz/q5 (3).jpg', 0, 1625733218, NULL),
(134, 3, 55, '/store/3/quiz/q5 (4).jpg', 0, 1625733218, NULL),
(155, 1015, 61, NULL, 1, 1625951971, NULL),
(156, 1015, 61, NULL, 0, 1625951971, NULL),
(157, 1015, 61, NULL, 0, 1625951971, NULL),
(158, 1015, 61, NULL, 0, 1625951971, NULL),
(159, 1015, 62, NULL, 0, 1625952052, NULL),
(160, 1015, 62, NULL, 0, 1625952052, NULL),
(161, 1015, 62, NULL, 0, 1625952052, NULL),
(162, 1015, 62, NULL, 1, 1625952052, NULL),
(163, 1015, 63, NULL, 0, 1625952097, NULL),
(164, 1015, 63, NULL, 0, 1625952097, NULL),
(165, 1015, 63, NULL, 0, 1625952097, NULL),
(166, 1015, 63, NULL, 1, 1625952097, NULL),
(167, 1015, 64, NULL, 0, 1625952140, NULL),
(168, 1015, 64, NULL, 0, 1625952140, NULL),
(169, 1015, 64, NULL, 1, 1625952140, NULL),
(170, 1015, 64, NULL, 0, 1625952140, NULL),
(171, 3, 66, '/store/3/quiz/q1 (3).jpg', 0, 1626061979, NULL),
(172, 3, 66, '/store/3/quiz/q1 (2).jpg', 0, 1626061979, NULL),
(173, 3, 66, '/store/3/quiz/q1 (4).jpg', 0, 1626061979, NULL),
(174, 3, 66, '/store/3/quiz/q1 (1).jpg', 1, 1626061979, NULL),
(175, 3, 67, '/store/3/quiz/q2 (1).jpg', 1, 1626062031, NULL),
(176, 3, 67, '/store/3/quiz/q2 (2).jpg', 0, 1626062031, NULL),
(177, 3, 67, '/store/3/quiz/q2 (3).jpg', 0, 1626062031, NULL),
(178, 3, 67, '/store/3/quiz/q2 (4).jpg', 0, 1626062031, NULL),
(179, 3, 68, '/store/3/quiz/q3 (1).jpg', 1, 1626062079, NULL),
(180, 3, 68, '/store/3/quiz/q3 (2).jpg', 0, 1626062079, NULL),
(181, 3, 68, '/store/3/quiz/q3 (3).jpg', 0, 1626062079, NULL),
(182, 3, 68, '/store/3/quiz/q3 (4).jpg', 0, 1626062079, NULL),
(183, 3, 69, '/store/3/quiz/q4 (4).jpg', 0, 1626062130, NULL),
(184, 3, 69, '/store/3/quiz/q4 (2).jpg', 0, 1626062130, NULL),
(185, 3, 69, '/store/3/quiz/q4 (1).jpg', 0, 1626062130, NULL),
(186, 3, 69, '/store/3/quiz/q4 (3).jpg', 1, 1626062130, NULL),
(187, 3, 70, '/store/3/quiz/q5 (1).jpg', 0, 1626062181, NULL),
(188, 3, 70, '/store/3/quiz/q5 (2).jpg', 1, 1626062181, NULL),
(189, 3, 70, '/store/3/quiz/q5 (3).jpg', 0, 1626062181, NULL),
(190, 3, 70, '/store/3/quiz/q5 (4).jpg', 0, 1626062181, NULL),
(211, 864, 76, NULL, 0, 1659482237, NULL),
(212, 864, 76, NULL, 0, 1659482237, NULL),
(213, 864, 76, NULL, 1, 1659482237, NULL),
(214, 864, 77, NULL, 1, 1659482294, NULL),
(215, 864, 77, NULL, 0, 1659482294, NULL),
(216, 864, 77, NULL, 0, 1659482294, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quizzes_questions_answer_translations`
--

DROP TABLE IF EXISTS `quizzes_questions_answer_translations`;
CREATE TABLE IF NOT EXISTS `quizzes_questions_answer_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `quizzes_questions_answer_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `quizzes_questions_answer_id` (`quizzes_questions_answer_id`),
  KEY `quizzes_questions_answer_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quizzes_questions_answer_translations`
--

INSERT INTO `quizzes_questions_answer_translations` (`id`, `quizzes_questions_answer_id`, `locale`, `title`) VALUES
(45, 115, 'en', NULL),
(46, 116, 'en', NULL),
(47, 117, 'en', NULL),
(48, 118, 'en', NULL),
(49, 119, 'en', NULL),
(50, 120, 'en', NULL),
(51, 121, 'en', NULL),
(52, 122, 'en', NULL),
(53, 123, 'en', NULL),
(54, 124, 'en', NULL),
(55, 125, 'en', NULL),
(56, 126, 'en', NULL),
(57, 127, 'en', NULL),
(58, 128, 'en', NULL),
(59, 129, 'en', NULL),
(60, 130, 'en', NULL),
(61, 131, 'en', NULL),
(62, 132, 'en', NULL),
(63, 133, 'en', NULL),
(64, 134, 'en', NULL),
(85, 155, 'en', 'Paris'),
(86, 156, 'en', 'Berlin'),
(87, 157, 'en', 'New York'),
(88, 158, 'en', 'London'),
(89, 159, 'en', '6'),
(90, 160, 'en', '3'),
(91, 161, 'en', '15'),
(92, 162, 'en', '12'),
(93, 163, 'en', '50'),
(94, 164, 'en', '1000'),
(95, 165, 'en', '10'),
(96, 166, 'en', '100'),
(97, 167, 'en', '100'),
(98, 168, 'en', '10'),
(99, 169, 'en', '1000'),
(100, 170, 'en', '500'),
(101, 171, 'en', NULL),
(102, 172, 'en', NULL),
(103, 173, 'en', NULL),
(104, 174, 'en', NULL),
(105, 175, 'en', NULL),
(106, 176, 'en', NULL),
(107, 177, 'en', NULL),
(108, 178, 'en', NULL),
(109, 179, 'en', NULL),
(110, 180, 'en', NULL),
(111, 181, 'en', NULL),
(112, 182, 'en', NULL),
(113, 183, 'en', NULL),
(114, 184, 'en', NULL),
(115, 185, 'en', NULL),
(116, 186, 'en', NULL),
(117, 187, 'en', NULL),
(118, 188, 'en', NULL),
(119, 189, 'en', NULL),
(120, 190, 'en', NULL),
(141, 211, 'en', '1'),
(142, 212, 'en', '2'),
(143, 213, 'en', '3'),
(144, 214, 'en', 'HTML'),
(145, 215, 'en', 'HCF'),
(146, 216, 'en', 'HMTL');

-- --------------------------------------------------------

--
-- Table structure for table `quizzes_results`
--

DROP TABLE IF EXISTS `quizzes_results`;
CREATE TABLE IF NOT EXISTS `quizzes_results` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `quiz_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `results` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_grade` int(11) DEFAULT NULL,
  `status` enum('passed','failed','waiting') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `quizzes_results_quiz_id_foreign` (`quiz_id`) USING BTREE,
  KEY `quizzes_results_user_id_foreign` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `quizzes_results`
--

INSERT INTO `quizzes_results` (`id`, `quiz_id`, `user_id`, `results`, `user_grade`, `status`, `created_at`) VALUES
(32, 37, 3, '', 0, 'waiting', 1660750636),
(33, 37, 1032, '', 0, 'waiting', 1660931200),
(34, 32, 3, '{\"66\":{\"answer\":\"174\",\"status\":true,\"grade\":\"20\"},\"67\":{\"answer\":\"175\",\"status\":true,\"grade\":\"20\"},\"68\":{\"answer\":\"179\",\"status\":true,\"grade\":\"20\"},\"69\":{\"answer\":\"186\",\"status\":true,\"grade\":\"20\"},\"70\":{\"answer\":\"188\",\"status\":true,\"grade\":\"20\"},\"attempt_number\":\"1\"}', 100, 'passed', 1661340365),
(35, 37, 1034, '', 0, 'waiting', 1662323415);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_question_translations`
--

DROP TABLE IF EXISTS `quiz_question_translations`;
CREATE TABLE IF NOT EXISTS `quiz_question_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `quizzes_question_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correct` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `quiz_question_translations_quiz_question_id_foreign` (`quizzes_question_id`),
  KEY `quiz_question_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quiz_question_translations`
--

INSERT INTO `quiz_question_translations` (`id`, `quizzes_question_id`, `locale`, `title`, `correct`) VALUES
(11, 51, 'en', 'Which photo belongs to France?', NULL),
(12, 52, 'en', 'Which image is about a teacher\'s job?', NULL),
(13, 53, 'en', 'Which image is about a fireman\'s job?', NULL),
(14, 54, 'en', 'Which animal lives in water?', NULL),
(15, 55, 'en', 'Which image is autumn?', NULL),
(21, 61, 'en', 'Where is the French capital?', ''),
(22, 62, 'en', 'How many months is each year?', NULL),
(23, 63, 'en', 'How many centimeters is one meter unit?', NULL),
(24, 64, 'en', 'How many meters is one kilometer unit?', NULL),
(25, 65, 'en', 'Please explain about Ubuntu versions of Linux?', 'Ubuntu is probably the most well-known Linux distribution. Ubuntu is based on Debian, but it has its own software repositories. Much of the software in these repositories is synced from Debian’s repositories.\r\n\r\nThe Ubuntu project has a focus on providing a solid desktop (and server) experience, and it isn’t afraid to build its own custom technology to do it. Ubuntu used to use the GNOME 2 desktop environment, but it now uses its own Unity desktop environment. Ubuntu is even building its own Mir graphical server while other distributions are working on the Wayland.'),
(26, 66, 'en', 'Which photo belongs to France?', NULL),
(27, 67, 'en', 'Which image is about a teacher\'s job?', NULL),
(28, 68, 'en', 'Which image is about a fireman\'s job?', NULL),
(29, 69, 'en', 'Which animal lives in water?', NULL),
(30, 70, 'en', 'Which image is autumn?', NULL),
(36, 76, 'en', 'Understanding', NULL),
(37, 77, 'en', 'Understanding basic HTML', NULL),
(38, 78, 'en', 'what is HTML', 'HTML is a markup language');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_translations`
--

DROP TABLE IF EXISTS `quiz_translations`;
CREATE TABLE IF NOT EXISTS `quiz_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `quiz_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `quiz_translations_quiz_id_foreign` (`quiz_id`),
  KEY `quiz_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quiz_translations`
--

INSERT INTO `quiz_translations` (`id`, `quiz_id`, `locale`, `title`) VALUES
(3, 31, 'en', 'Placement Quiz'),
(4, 32, 'en', 'Midterm Quiz'),
(6, 34, 'en', 'Final Quiz'),
(8, 36, 'en', 'Understanding'),
(9, 37, 'en', 'Understanding'),
(10, 38, 'en', 'Basic Quiz');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
CREATE TABLE IF NOT EXISTS `rating` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `rate` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `rating_user_id_foreign` (`user_id`) USING BTREE,
  KEY `rating_webinar_id_foreign` (`webinar_id`) USING BTREE,
  KEY `rating_creator_id_foreign` (`creator_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

DROP TABLE IF EXISTS `regions`;
CREATE TABLE IF NOT EXISTS `regions` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `province_id` int(10) UNSIGNED DEFAULT NULL,
  `city_id` int(10) UNSIGNED DEFAULT NULL,
  `geo_center` point DEFAULT NULL,
  `type` enum('country','province','city','district') COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `regions_country_id_foreign` (`country_id`),
  KEY `regions_province_id_foreign` (`province_id`),
  KEY `regions_city_id_foreign` (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`id`, `country_id`, `province_id`, `city_id`, `geo_center`, `type`, `title`, `created_at`) VALUES
(16, NULL, NULL, NULL, 0x0000000001010000004e2c37a3fd2748400100000000910440, 'country', 'France', 1646175250),
(17, NULL, NULL, NULL, 0x000000000101000000d04c51ad1a29374000000000509c5340, 'country', 'India', 1646045215),
(18, NULL, NULL, NULL, 0x0000000001010000000188794512fd434000000000787e58c0, 'country', 'United States', 1646208799),
(19, NULL, NULL, NULL, 0x000000000101000000ba99e9d9582130400000000040da3240, 'country', 'Chad', 1646045318),
(20, NULL, NULL, NULL, 0x000000000101000000d014e2b7f634384001000000e0634640, 'country', 'Saudi Arabia', 1646045651),
(21, 16, NULL, NULL, 0x000000000101000000b8417d8d9700484000000000c01709c0, 'province', 'Brittany', 1646175600),
(22, 16, NULL, NULL, 0x000000000101000000c08d5422c26d484001000000e0b20240, 'province', 'Île-de-France', 1646176998),
(23, 16, 22, NULL, 0x0000000001010000003e242b8d136e4840010000003ecd0240, 'city', 'Paris', 1646177038),
(24, 16, 22, 23, 0x000000000101000000f9056521416f484001000080315a0240, 'district', 'Chaillot', 1646177131),
(25, 16, 22, 23, 0x000000000101000000facb2c14066848400100008026fc0140, 'district', 'Le val', 1646177195),
(26, 16, 22, 23, 0x000000000101000000d905b69e8a6d484001000000cd2e0340, 'district', 'Charonne', 1646177249),
(27, 17, NULL, NULL, 0x00000000010100000035073e5acab03c4001000000934a5340, 'province', 'Delhi', 1646177430),
(28, 17, NULL, NULL, 0x000000000101000000ea331bb0e31333400100008025395240, 'province', 'Maharashtra', 1646177529),
(29, 17, 27, NULL, 0x0000000001010000004aa45133209e3c4000000050f54c5340, 'city', 'New Delhi', 1646177585),
(30, 17, 28, NULL, 0x00000000010100000019d66a9d27f13240010000305b355240, 'city', 'Mumbai', 1646177660),
(31, 20, NULL, NULL, 0x00000000010100000066a3dd6a75923840010000004acf4340, 'province', 'Medina', 1646207588),
(32, 20, 31, NULL, 0x0000000001010000007222ebce077938400100005028ce4340, 'city', 'Medina', 1646207641),
(33, 20, NULL, NULL, 0x000000000101000000ef7d72b19dd33840000000007c5d4740, 'province', 'Riyadh', 1646207846),
(34, 20, 33, NULL, 0x0000000001010000002852eaadc2a23840010000207c5b4740, 'city', 'Riyadh', 1646207899),
(35, 17, 27, 29, 0x0000000001010000005e7eaddc83933c40010000f4e44f5340, 'district', 'Jal vihar', 1646208038),
(36, 17, 27, 29, 0x0000000001010000000b564b253b8f3c40010000f4f54d5340, 'district', 'Anand lok', 1646208100),
(37, 17, 28, 30, 0x000000000101000000774a1102cef732400100003c9b345240, 'district', 'Tardeo', 1646208151),
(38, 17, 28, 30, 0x000000000101000000e4347d6ea4ed32400100009235355240, 'district', 'Kala ghoda', 1646208227),
(39, 17, 28, 30, 0x0000000001010000008b59b3f397003340010000a46f345240, 'district', 'Nehru nagar', 1646208287),
(40, 20, 31, 32, 0x000000000101000000a99a107be67a3840010000f42bcc4340, 'district', 'Al fath', 1646208357),
(41, 20, 31, 32, 0x000000000101000000549335c11e7c384001000084fbd54340, 'district', 'Al mabuth', 1646208449),
(42, 20, 33, 34, 0x000000000101000000f2dbbe5e4ca438400100001821554740, 'district', 'Al rafiah', 1646208501),
(43, 20, 33, 34, 0x0000000001010000004aa393f74fa8384001000090195d4740, 'district', 'Al malaz', 1646208541),
(44, 20, 33, 34, 0x000000000101000000becc5d99029b384001000090d3574740, 'district', 'Sultanah', 1646208741),
(45, 18, NULL, NULL, 0x0000000001010000008f421c62479242400100000002ef5dc0, 'province', 'California', 1646208923),
(46, 18, NULL, NULL, 0x00000000010100000075bb0212f86a4540010000006add52c0, 'province', 'New York', 1646209125),
(47, 18, 45, NULL, 0x000000000101000000c3eb475b13e44240010000b0d29a5ec0, 'city', 'San Francisco', 1646209213),
(48, 18, 45, NULL, 0x0000000001010000009a6d3806e37c4240010000f8ee815ec0, 'city', 'Santa Cruz', 1646209310),
(49, 18, 46, NULL, 0x00000000010100000034f3954dd15d4440010000504b7f52c0, 'city', 'New York', 1646209459),
(50, 18, 46, NULL, 0x0000000001010000002ec4cc6279534540010000b85b7052c0, 'city', 'Albany', 1646209552),
(51, 18, 45, 47, 0x0000000001010000003feafdd6abe04240010000d8b49f5ec0, 'district', 'Sunset district', 1646209607),
(52, 18, 45, 47, 0x00000000010100000024646d8c1bdf424001000058859a5ec0, 'district', 'Bernal heights', 1646209668),
(53, 18, 45, 48, 0x000000000101000000738fe4b88f7b4240010000d4f3825ec0, 'district', 'Westside', 1646209704),
(54, 18, 45, 48, 0x00000000010100000012a4fdcb187c4240010000dc84805ec0, 'district', 'Seabright', 1646209756),
(55, 18, 46, 49, 0x0000000001010000004c2d3717765b444001000064278052c0, 'district', 'Civic center', 1646209822),
(56, 18, 46, 49, 0x000000000101000000875ffa4836624440010000f8687d52c0, 'district', 'Lenox hill', 1646209902),
(57, 18, 46, 50, 0x0000000001010000002c11fd866f5445400100000c7e7252c0, 'district', 'Pine hills', 1646209945),
(58, 18, 46, 50, 0x0000000001010000000f2a6a90cb5445400100000a557052c0, 'district', 'Arbor hill', 1646209990),
(59, 19, NULL, NULL, 0x000000000101000000f92f3b6e024728400100000084122e40, 'province', 'N\'Djaména', 1646210607),
(60, 19, 59, NULL, 0x000000000101000000215659aeba3d284001000040c4192e40, 'city', 'N\'Djaména', 1646210643),
(61, 19, NULL, NULL, 0x000000000101000000796860c6695021400100000094103040, 'province', 'Logone Occidental', 1646210813),
(62, 19, 61, NULL, 0x000000000101000000d2cf427b71222140010000a0e2123040, 'city', 'Moundou', 1646210881),
(63, 19, 59, 60, 0x000000000101000000492f2cc30d312840010000e071262e40, 'district', 'Moursal', 1646210978),
(64, 19, 59, 60, 0x000000000101000000b793ddbcdc392840010000a0eb192e40, 'district', 'Blabline', 1646211027),
(65, 19, 61, 62, 0x0000000001010000000b910079232321400100009832163040, 'district', 'Bornou', 1646211077),
(66, 19, 61, 62, 0x0000000001010000006d07cb49aa192140010000a8650f3040, 'district', 'Dokapti', 1646211168),
(67, 16, 21, NULL, 0x00000000010100000017e23f51690e484000000000f2e3fabf, 'city', 'Rennes', 1646295560),
(68, 16, 21, 67, 0x000000000101000000182d3bd0140e4840010000009f54fbbf, 'district', 'Moulin du comte', 1646295696);

-- --------------------------------------------------------

--
-- Table structure for table `registration_packages`
--

DROP TABLE IF EXISTS `registration_packages`;
CREATE TABLE IF NOT EXISTS `registration_packages` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `days` int(10) UNSIGNED NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('instructors','organizations') COLLATE utf8mb4_unicode_ci NOT NULL,
  `instructors_count` int(11) DEFAULT NULL,
  `students_count` int(11) DEFAULT NULL,
  `courses_capacity` int(11) DEFAULT NULL,
  `courses_count` int(11) DEFAULT NULL,
  `meeting_count` int(11) DEFAULT NULL,
  `status` enum('disabled','active') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `registration_packages_role_index` (`role`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `registration_packages`
--

INSERT INTO `registration_packages` (`id`, `days`, `price`, `icon`, `role`, `instructors_count`, `students_count`, `courses_capacity`, `courses_count`, `meeting_count`, `status`, `created_at`) VALUES
(1, 30, 99, '/store/1/default_images/registertion_packages/bronze_instructor.png', 'instructors', NULL, NULL, 40, 10, 30, 'active', 1646040584),
(2, 90, 199, '/store/1/default_images/registertion_packages/silver_instructor.png', 'instructors', NULL, NULL, 60, 20, 50, 'active', 1646041075),
(3, 180, 400, '/store/1/default_images/registertion_packages/gold_instructor.png', 'instructors', NULL, NULL, 100, 40, 75, 'active', 1646041329),
(4, 30, 200, '/store/1/default_images/registertion_packages/bronze_organization.png', 'organizations', 5, 50, 40, 10, 30, 'active', 1646041807),
(5, 90, 400, '/store/1/default_images/registertion_packages/silver_organization.png', 'organizations', 10, 100, 70, 20, 50, 'active', 1646041992),
(6, 180, 600, '/store/1/default_images/registertion_packages/gold_organization.png', 'organizations', 30, 300, 150, 50, 100, 'active', 1646042364);

-- --------------------------------------------------------

--
-- Table structure for table `registration_packages_translations`
--

DROP TABLE IF EXISTS `registration_packages_translations`;
CREATE TABLE IF NOT EXISTS `registration_packages_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `registration_package_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `registration_package` (`registration_package_id`),
  KEY `registration_packages_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `registration_packages_translations`
--

INSERT INTO `registration_packages_translations` (`id`, `registration_package_id`, `locale`, `title`, `description`) VALUES
(1, 1, 'en', 'Basic', 'Suggested for starter instructors.'),
(2, 2, 'en', 'Pro', 'Suggested for professional instructors.'),
(3, 3, 'en', 'Premium', 'Suggested for expert instructors.'),
(4, 4, 'en', 'Basic', 'Suggested for small organizations'),
(5, 5, 'en', 'Pro', 'Suggested for medium organizations'),
(6, 6, 'en', 'Premium', 'Suggested for big organizations');

-- --------------------------------------------------------

--
-- Table structure for table `reserve_meetings`
--

DROP TABLE IF EXISTS `reserve_meetings`;
CREATE TABLE IF NOT EXISTS `reserve_meetings` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `meeting_id` int(11) DEFAULT NULL,
  `sale_id` int(10) UNSIGNED DEFAULT NULL,
  `meeting_time_id` int(10) UNSIGNED NOT NULL,
  `day` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` int(10) UNSIGNED NOT NULL,
  `start_at` bigint(20) UNSIGNED NOT NULL,
  `end_at` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `paid_amount` decimal(13,2) NOT NULL,
  `meeting_type` enum('in_person','online') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'online',
  `student_count` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','open','finished','canceled') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `locked_at` int(11) DEFAULT NULL,
  `reserved_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `reserve_meetings_meeting_time_id_foreign` (`meeting_time_id`) USING BTREE,
  KEY `reserve_meetings_user_id_foreign` (`user_id`) USING BTREE,
  KEY `reserve_meetings_sale_id_foreign` (`sale_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `rewards`
--

DROP TABLE IF EXISTS `rewards`;
CREATE TABLE IF NOT EXISTS `rewards` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` enum('account_charge','create_classes','buy','pass_the_quiz','certificate','comment','register','review_courses','instructor_meeting_reserve','student_meeting_reserve','newsletters','badge','referral','learning_progress_100','charge_wallet') COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` int(10) UNSIGNED DEFAULT NULL,
  `condition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','disabled') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rewards`
--

INSERT INTO `rewards` (`id`, `type`, `score`, `condition`, `status`, `created_at`) VALUES
(3, 'charge_wallet', 50, '150', 'active', 1641205067),
(4, 'account_charge', 50, '100', 'active', 1641369989),
(5, 'badge', NULL, NULL, 'active', 1641300755),
(6, 'create_classes', 50, NULL, 'active', 1641369921),
(7, 'buy', 50, '10', 'active', 1641369938),
(8, 'pass_the_quiz', 50, NULL, 'active', 1641369947),
(9, 'certificate', 30, NULL, 'active', 1641369955),
(10, 'comment', 5, NULL, 'active', 1641369968),
(11, 'register', 5, NULL, 'active', 1641370008),
(12, 'review_courses', 15, NULL, 'active', 1641370016),
(13, 'instructor_meeting_reserve', 30, NULL, 'active', 1641370026),
(14, 'student_meeting_reserve', 30, NULL, 'active', 1641370036),
(15, 'newsletters', 10, NULL, 'active', 1641370050),
(16, 'referral', 5, NULL, 'active', 1641370059),
(18, 'learning_progress_100', 20, NULL, 'active', 1641372957);

-- --------------------------------------------------------

--
-- Table structure for table `rewards_accounting`
--

DROP TABLE IF EXISTS `rewards_accounting`;
CREATE TABLE IF NOT EXISTS `rewards_accounting` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED DEFAULT NULL,
  `type` enum('account_charge','create_classes','buy','pass_the_quiz','certificate','comment','register','review_courses','instructor_meeting_reserve','student_meeting_reserve','newsletters','badge','referral','learning_progress_100','charge_wallet','withdraw') COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` int(10) UNSIGNED NOT NULL,
  `status` enum('addiction','deduction') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rewards_accounting_user_id_foreign` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rewards_accounting`
--

INSERT INTO `rewards_accounting` (`id`, `user_id`, `item_id`, `type`, `score`, `status`, `created_at`) VALUES
(3, 1015, 2008, 'create_classes', 50, 'addiction', 1646127156),
(5, 1015, 2009, 'create_classes', 50, 'addiction', 1646172007),
(12, 1015, 23, 'badge', 15, 'addiction', 1646254479),
(13, 1015, 26, 'badge', 30, 'addiction', 1646254480),
(14, 1015, 29, 'badge', 50, 'addiction', 1646254480),
(15, 1015, 32, 'badge', 50, 'addiction', 1646254481),
(16, 1015, 35, 'badge', 20, 'addiction', 1646254481),
(18, 864, 23, 'badge', 15, 'addiction', 1646256513),
(19, 864, 24, 'badge', 10, 'addiction', 1646256514),
(43, 3, 23, 'badge', 15, 'addiction', 1646263503),
(44, 3, 25, 'badge', 20, 'addiction', 1646263504),
(45, 3, 31, 'badge', 20, 'addiction', 1646263504),
(74, 1015, 35, 'review_courses', 15, 'addiction', 1646413457),
(75, 1015, 66, 'comment', 5, 'addiction', 1646413662),
(77, 864, 2010, 'create_classes', 50, 'addiction', 1651240160),
(78, 864, 25, 'badge', 20, 'addiction', 1651240183),
(79, 3, 26, 'badge', 30, 'addiction', 1651240183),
(80, 864, 2003, 'create_classes', 50, 'addiction', 1651240265),
(81, 1032, 21, 'badge', 5, 'addiction', 1651316115),
(82, 3, 2011, 'create_classes', 50, 'addiction', 1651324524),
(83, 1032, 22, 'badge', 10, 'addiction', 1658923273),
(84, 864, 31, 'badge', 20, 'addiction', 1658923389),
(87, 864, 2012, 'create_classes', 50, 'addiction', 1659482597),
(88, 1033, 24, 'badge', 10, 'addiction', 1659482707),
(89, 864, 26, 'badge', 30, 'addiction', 1659483291),
(91, 3, 2001, 'create_classes', 50, 'addiction', 1660656454),
(92, 3, 2015, 'create_classes', 50, 'addiction', 1660914585),
(93, 3, 2016, 'create_classes', 50, 'addiction', 1660918558),
(94, 3, 2017, 'create_classes', 50, 'addiction', 1660920261),
(95, 3, 2018, 'create_classes', 50, 'addiction', 1660923852),
(96, 3, 2019, 'create_classes', 50, 'addiction', 1660929725),
(97, 3, 2020, 'create_classes', 50, 'addiction', 1660930411),
(98, 1033, 21, 'badge', 5, 'addiction', 1660931097),
(99, 1032, 2010, 'learning_progress_100', 20, 'addiction', 1660931319),
(100, 3, 2013, 'create_classes', 50, 'addiction', 1661006281),
(101, 1, 23, 'badge', 15, 'addiction', 1661036075),
(102, 1036, 24, 'badge', 10, 'addiction', 1661103670),
(103, 1034, 21, 'badge', 5, 'addiction', 1661121331),
(104, 864, 2023, 'create_classes', 50, 'addiction', 1661121713),
(105, 3, 2022, 'create_classes', 50, 'addiction', 1661121734),
(106, 3, 2021, 'create_classes', 50, 'addiction', 1661121758),
(107, 1036, 21, 'badge', 5, 'addiction', 1661163810),
(108, 1034, 67, 'comment', 5, 'addiction', 1661253530),
(109, 3, 32, 'pass_the_quiz', 50, 'addiction', 1661340365),
(110, 3, 2018, 'learning_progress_100', 20, 'addiction', 1661341595),
(111, 864, 2024, 'create_classes', 50, 'addiction', 1661344092),
(112, 1033, 31, 'badge', 20, 'addiction', 1661350848),
(113, 1037, 24, 'badge', 10, 'addiction', 1661352409),
(114, 864, 2025, 'create_classes', 50, 'addiction', 1661513578),
(115, 864, 32, 'badge', 50, 'addiction', 1661514068),
(116, 864, 2026, 'create_classes', 50, 'addiction', 1661514998),
(117, 1036, 25, 'badge', 20, 'addiction', 1661515567),
(118, 864, 2027, 'create_classes', 50, 'addiction', 1661516360),
(119, 1036, 31, 'badge', 20, 'addiction', 1661517653),
(120, 3, 2028, 'create_classes', 50, 'addiction', 1661522756),
(121, 864, 2029, 'create_classes', 50, 'addiction', 1661524045),
(122, 864, 2030, 'create_classes', 50, 'addiction', 1661527750),
(123, 864, 2031, 'create_classes', 50, 'addiction', 1661528097),
(124, 864, 2032, 'create_classes', 50, 'addiction', 1661528595),
(125, 864, 2033, 'create_classes', 50, 'addiction', 1661528945),
(126, 864, 2034, 'create_classes', 50, 'addiction', 1661531070),
(127, 864, 2035, 'create_classes', 50, 'addiction', 1661531352),
(128, 864, 2036, 'create_classes', 50, 'addiction', 1661531717),
(129, 864, 2037, 'create_classes', 50, 'addiction', 1661532349),
(130, 864, 2038, 'create_classes', 50, 'addiction', 1661550456),
(131, 3, 32, 'badge', 50, 'addiction', 1661550547),
(132, 1032, 2038, 'learning_progress_100', 20, 'addiction', 1661614407);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `caption`, `users_count`, `is_admin`, `created_at`) VALUES
(1, 'user', 'User role', 0, 0, 1604418504),
(2, 'admin', 'Admin role', 0, 1, 1604418504),
(3, 'organization', 'Organization role', 0, 0, 1604418504),
(4, 'teacher', 'Teacher role', 0, 0, 1604418504),
(6, 'education', 'Staff role', 0, 1, 1613370817),
(9, 'Author Role', 'Author', 0, 1, 1625093577);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
CREATE TABLE IF NOT EXISTS `sales` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `seller_id` int(10) UNSIGNED DEFAULT NULL,
  `buyer_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `webinar_id` int(10) UNSIGNED DEFAULT NULL,
  `meeting_id` int(10) UNSIGNED DEFAULT NULL,
  `subscribe_id` int(10) UNSIGNED DEFAULT NULL,
  `ticket_id` int(10) UNSIGNED DEFAULT NULL,
  `promotion_id` int(10) UNSIGNED DEFAULT NULL,
  `registration_package_id` int(10) UNSIGNED DEFAULT NULL,
  `type` enum('webinar','meeting','subscribe','promotion','registration_package') COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` enum('credit','payment_channel','subscribe') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` int(10) UNSIGNED NOT NULL,
  `tax` decimal(13,2) DEFAULT NULL,
  `commission` decimal(13,2) DEFAULT NULL,
  `discount` decimal(13,2) DEFAULT NULL,
  `total_amount` decimal(13,2) DEFAULT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  `refund_at` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `sales_order_id_foreign` (`order_id`) USING BTREE,
  KEY `sales_webinar_id_foreign` (`webinar_id`) USING BTREE,
  KEY `sales_meeting_id_foreign` (`meeting_id`) USING BTREE,
  KEY `sales_ticket_id_foreign` (`ticket_id`) USING BTREE,
  KEY `sales_buyer_id_foreign` (`buyer_id`) USING BTREE,
  KEY `sales_seller_id_foreign` (`seller_id`) USING BTREE,
  KEY `sales_promotion_id_foreign` (`promotion_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `seller_id`, `buyer_id`, `order_id`, `webinar_id`, `meeting_id`, `subscribe_id`, `ticket_id`, `promotion_id`, `registration_package_id`, `type`, `payment_method`, `amount`, `tax`, `commission`, `discount`, `total_amount`, `created_at`, `refund_at`) VALUES
(141, 1015, 996, 307, NULL, 30, NULL, NULL, NULL, NULL, 'meeting', 'credit', 150, '15.00', '30.00', '0.00', '165.00', 1625944345, NULL),
(142, 934, 995, 308, NULL, 31, NULL, NULL, NULL, NULL, 'meeting', 'credit', 100, '10.00', '20.00', '0.00', '110.00', 1625952627, NULL),
(143, 4, 995, 309, 2005, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 10, '1.00', '2.00', '0.00', '11.00', 1625953196, NULL),
(144, 1015, 995, 310, NULL, 30, NULL, NULL, NULL, NULL, 'meeting', 'credit', 125, '12.50', '25.00', '0.00', '137.50', 1625996812, NULL),
(145, 1016, 995, NULL, 1995, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, NULL, 1625996905, NULL),
(146, 929, 995, 311, 1999, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 50, '5.00', '5.00', '0.00', '55.00', 1625996941, NULL),
(147, 1015, 995, 312, 1998, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 100, '5.00', '10.00', '50.00', '55.00', 1625996978, NULL),
(148, 3, 995, 313, 2001, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 20, '1.60', '1.60', '4.00', '17.60', 1625997104, NULL),
(149, 1015, 996, NULL, 1996, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, NULL, 1626060382, NULL),
(150, 934, 996, NULL, 1997, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, NULL, 1626060412, NULL),
(151, 867, 996, 314, 2006, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 25, '2.25', '4.50', '2.50', '24.75', 1626060487, NULL),
(152, 1015, 996, 315, 1998, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 100, '4.00', '8.00', '60.00', '44.00', 1626060552, NULL),
(153, 1015, 979, NULL, 1996, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, NULL, 1626060740, NULL),
(154, 1015, 930, NULL, 1996, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, NULL, 1626060773, NULL),
(155, 1015, 930, 316, 1998, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 100, '5.00', '10.00', '50.00', '55.00', 1626060835, NULL),
(156, 929, 979, 317, 2004, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 60, '6.00', '6.00', '0.00', '66.00', 1626061332, NULL),
(157, 863, 979, 318, 2002, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 20, '2.00', '4.00', '0.00', '22.00', 1626061373, NULL),
(158, 867, 979, 318, 2000, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 30, '3.00', '6.00', '0.00', '33.00', 1626061374, NULL),
(159, NULL, 995, 319, NULL, NULL, 3, NULL, NULL, NULL, 'subscribe', 'credit', 20, '2.00', '0.00', NULL, '22.00', 1626061450, NULL),
(160, 867, 995, NULL, 2006, NULL, NULL, NULL, NULL, NULL, 'webinar', 'subscribe', 0, NULL, NULL, NULL, '0.00', 1626061483, NULL),
(161, 929, 995, NULL, 2004, NULL, NULL, NULL, NULL, NULL, 'webinar', 'subscribe', 0, NULL, NULL, NULL, '0.00', 1626061490, NULL),
(162, 863, 995, NULL, 2002, NULL, NULL, NULL, NULL, NULL, 'webinar', 'subscribe', 0, NULL, NULL, NULL, '0.00', 1626061494, NULL),
(163, 1015, 995, NULL, 1996, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, NULL, 1626062834, NULL),
(164, 1016, 996, NULL, 1995, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, NULL, 1626129811, NULL),
(165, 1016, 1015, NULL, 1995, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, NULL, 1626132407, NULL),
(166, 863, 1015, 321, 2002, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 20, '1.60', '3.20', '4.00', '17.60', 1626132844, NULL),
(167, NULL, 929, 323, 2004, NULL, NULL, NULL, 3, NULL, 'promotion', 'credit', 50, '5.00', '0.00', NULL, '55.00', 1626241152, NULL),
(168, 864, 929, 324, 2003, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 40, '3.00', '6.00', '10.00', '33.00', 1626241212, NULL),
(169, 1015, 929, NULL, 1996, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, NULL, 1626243340, NULL),
(170, 870, 995, 325, NULL, 33, NULL, NULL, NULL, NULL, 'meeting', 'credit', 100, '10.00', '20.00', '0.00', '110.00', 1626247195, 1626247245),
(171, 867, 996, 327, 2000, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 30, '2.70', '5.40', '3.00', '29.70', 1626508956, NULL),
(172, 867, 995, NULL, 2007, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, '0.00', 1635408189, NULL),
(173, 867, 929, 328, 2000, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 30, '3.00', '6.00', '0.00', '33.00', 1635412196, NULL),
(174, 867, 1017, 330, 2000, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 30, '3.00', '6.00', '0.00', '33.00', 1639379284, NULL),
(175, 1016, 1017, NULL, 1995, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, '0.00', 1639379336, NULL),
(176, 1015, 1017, 331, 1998, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 100, '10.00', '20.00', '0.00', '110.00', 1639379350, NULL),
(177, 864, 1017, 332, 2003, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 40, '3.00', '6.00', '10.00', '33.00', 1639379388, NULL),
(178, 1015, 995, NULL, 2008, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, '0.00', 1646127212, NULL),
(179, 1015, 995, 333, 2009, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 10, '1.00', '2.00', '0.00', '11.00', 1646172086, NULL),
(180, 1015, 996, 334, 2009, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 10, '0.90', '1.80', '1.00', '9.90', 1646172123, NULL),
(181, 1015, 979, 335, 2009, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 10, '1.00', '2.00', '0.00', '11.00', 1646172159, NULL),
(182, 1015, 929, 336, 2009, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 10, '1.00', '2.00', '0.00', '11.00', 1646172296, NULL),
(183, 1015, 996, NULL, 2008, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, '0.00', 1646174000, NULL),
(184, 1015, 1017, NULL, 2008, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, '0.00', 1646174029, NULL),
(185, 1015, 1016, NULL, 2008, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, '0.00', 1646326504, NULL),
(186, 1015, 995, 337, NULL, 30, NULL, NULL, NULL, NULL, 'meeting', 'credit', 750, '75.00', '150.00', '0.00', '825.00', 1646379288, NULL),
(187, NULL, 930, 339, NULL, NULL, NULL, NULL, NULL, 2, 'registration_package', 'credit', 199, '19.90', '0.00', NULL, '218.90', 1646386787, NULL),
(188, NULL, 859, 340, NULL, NULL, NULL, NULL, NULL, 4, 'registration_package', 'credit', 200, '20.00', '0.00', NULL, '220.00', 1646387655, NULL),
(189, 864, 1032, NULL, 2010, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, '0.00', 1658923387, NULL),
(190, 864, 1034, NULL, 2010, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, '0.00', 1661076502, NULL),
(191, 864, 1034, NULL, 2012, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, '0.00', 1661121346, NULL),
(192, 864, 1032, NULL, 2012, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, '0.00', 1661121422, NULL),
(193, 864, 1034, NULL, 2023, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, '0.00', 1661122172, NULL),
(194, 864, 1032, NULL, 2023, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, '0.00', 1661164638, NULL),
(195, 864, 3, NULL, 2012, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, '0.00', 1661253874, NULL),
(196, 864, 1032, NULL, 2025, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, '0.00', 1661513681, NULL),
(197, 864, 1034, NULL, 2025, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, '0.00', 1661513727, NULL),
(198, 864, 1032, NULL, 2026, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, '0.00', 1661515605, NULL),
(199, 864, 1034, NULL, 2027, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, '0.00', 1661516498, NULL),
(200, 864, 1032, NULL, 2031, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, '0.00', 1661528174, NULL),
(201, 864, 1032, NULL, 2032, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, '0.00', 1661528613, NULL),
(202, 864, 1034, NULL, 2038, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, '0.00', 1661550512, NULL),
(203, 864, 1032, NULL, 2038, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, '0.00', 1661614383, NULL),
(204, 864, 1032, NULL, 2037, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, '0.00', 1661616057, NULL),
(205, 864, 1032, NULL, 2003, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, '0.00', 1661616118, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales_log`
--

DROP TABLE IF EXISTS `sales_log`;
CREATE TABLE IF NOT EXISTS `sales_log` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sale_id` int(10) UNSIGNED NOT NULL,
  `viewed_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sales_status_sale_id_foreign` (`sale_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales_log`
--

INSERT INTO `sales_log` (`id`, `sale_id`, `viewed_at`) VALUES
(1, 173, 1635412221),
(2, 172, 1635412222),
(3, 171, 1635412222),
(4, 170, 1635412222),
(5, 169, 1635412222),
(6, 168, 1635412222),
(7, 167, 1635412222),
(8, 166, 1635412222),
(9, 165, 1635412222),
(10, 164, 1635412222),
(11, 163, 1635412231),
(12, 162, 1635412231),
(13, 161, 1635412231),
(14, 160, 1635412231),
(15, 159, 1635412231),
(16, 158, 1635412231),
(17, 157, 1635412231),
(18, 156, 1635412231),
(19, 155, 1635412231),
(20, 154, 1635412231),
(21, 153, 1635412234),
(22, 152, 1635412234),
(23, 151, 1635412234),
(24, 150, 1635412234),
(25, 149, 1635412234),
(26, 148, 1635412234),
(27, 147, 1635412234),
(28, 146, 1635412234),
(29, 145, 1635412234),
(30, 144, 1635412234),
(31, 143, 1635412235),
(32, 142, 1635412235),
(33, 141, 1635412235),
(34, 184, 1646260033),
(35, 183, 1646260033),
(36, 182, 1646260033),
(37, 181, 1646260033),
(38, 180, 1646260033),
(39, 179, 1646260033),
(40, 178, 1646260033),
(41, 177, 1646260033),
(42, 176, 1646260033),
(43, 175, 1646260033),
(44, 188, 1651318976),
(45, 187, 1651318976),
(46, 186, 1651318976),
(47, 185, 1651318976),
(48, 174, 1654846560);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

DROP TABLE IF EXISTS `sections`;
CREATE TABLE IF NOT EXISTS `sections` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_group_id` int(10) UNSIGNED DEFAULT NULL,
  `caption` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1782 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `name`, `section_group_id`, `caption`) VALUES
(1, 'admin_general_dashboard', NULL, 'General Dashboard'),
(2, 'admin_general_dashboard_show', 1, 'General Dashboard page'),
(3, 'admin_general_dashboard_quick_access_links', 1, 'Quick access links in General Dashboard'),
(4, 'admin_general_dashboard_daily_sales_statistics', 1, 'Daily Sales Type Statistics Section'),
(5, 'admin_general_dashboard_income_statistics', 1, 'Income Statistics Section'),
(6, 'admin_general_dashboard_total_sales_statistics', 1, 'Total Sales Statistics Section'),
(7, 'admin_general_dashboard_new_sales', 1, 'New Sales Section'),
(8, 'admin_general_dashboard_new_comments', 1, 'New Comments Section'),
(9, 'admin_general_dashboard_new_tickets', 1, 'New Tickets Section'),
(10, 'admin_general_dashboard_new_reviews', 1, 'New Reviews Section'),
(11, 'admin_general_dashboard_sales_statistics_chart', 1, 'Sales Statistics Chart'),
(12, 'admin_general_dashboard_recent_comments', 1, 'Recent comments Section'),
(13, 'admin_general_dashboard_recent_tickets', 1, 'Recent tickets Section'),
(14, 'admin_general_dashboard_recent_webinars', 1, 'Recent webinars Section'),
(15, 'admin_general_dashboard_recent_courses', 1, 'Recent courses Section'),
(16, 'admin_general_dashboard_users_statistics_chart', 1, 'Users Statistics Chart'),
(17, 'admin_clear_cache', 1, 'Clear cache'),
(25, 'admin_marketing_dashboard', NULL, 'Marketing Dashboard'),
(26, 'admin_marketing_dashboard_show', 25, 'Marketing Dashboard page'),
(50, 'admin_roles', NULL, 'Roles'),
(51, 'admin_roles_list', 50, 'Roles List'),
(52, 'admin_roles_create', 50, 'Roles Create'),
(53, 'admin_roles_edit', 50, 'Roles Edit'),
(54, 'admin_roles_delete', 50, 'Roles Delete'),
(100, 'admin_users', NULL, 'Users'),
(101, 'admin_staffs_list', 100, 'Staffs list'),
(102, 'admin_users_list', 100, 'Students list'),
(103, 'admin_instructors_list', 100, 'Instructors list'),
(104, 'admin_organizations_list', 100, 'Organizations list'),
(105, 'admin_users_create', 100, 'Users Create'),
(106, 'admin_users_edit', 100, 'Users Edit'),
(107, 'admin_users_delete', 100, 'Users Delete'),
(108, 'admin_users_export_excel', 100, 'List Export excel'),
(109, 'admin_users_badges', 100, 'Users Badges'),
(110, 'admin_users_badges_edit', 100, 'Badges edit'),
(111, 'admin_users_badges_delete', 100, 'Badges delete'),
(112, 'admin_users_impersonate', 100, 'users impersonate (login by users)'),
(113, 'admin_become_instructors_list', 100, 'Lists of requests for become instructors'),
(114, 'admin_become_instructors_reject', 100, 'Reject requests for become instructors'),
(115, 'admin_become_instructors_delete', 100, 'Delete requests for become instructors'),
(116, 'admin_update_user_registration_package', 100, 'Edit user registration package'),
(117, 'admin_update_user_meeting_settings', 100, 'Edit user meeting settings'),
(150, 'admin_webinars', NULL, 'Webinars'),
(151, 'admin_webinars_list', 150, 'Webinars List'),
(152, 'admin_webinars_create', 150, 'Webinars Create'),
(153, 'admin_webinars_edit', 150, 'Webinars Edit'),
(154, 'admin_webinars_delete', 150, 'Webinars Delete'),
(155, 'admin_webinars_export_excel', 150, 'Feature webinars list'),
(156, 'admin_feature_webinars', 150, 'Feature webinars list'),
(157, 'admin_feature_webinars_create', 150, 'create feature webinar'),
(158, 'admin_feature_webinars_export_excel', 150, 'Feature webinar export excel'),
(200, 'admin_categories', NULL, 'Categories'),
(201, 'admin_categories_list', 200, 'Categories List'),
(202, 'admin_categories_create', 200, 'Categories Create'),
(203, 'admin_categories_edit', 200, 'Categories Edit'),
(204, 'admin_categories_delete', 200, 'Categories Delete'),
(205, 'admin_trending_categories', 200, 'Trends Categories List'),
(206, 'admin_create_trending_categories', 200, 'Create Trend Categories'),
(207, 'admin_edit_trending_categories', 200, 'Edit Trend Categories'),
(208, 'admin_delete_trending_categories', 200, 'Delete Trend Categories'),
(250, 'admin_tags', NULL, 'Tags'),
(251, 'admin_tags_list', 250, 'Tags List'),
(252, 'admin_tags_create', 250, 'Tags Create'),
(253, 'admin_tags_edit', 250, 'Tags Edit'),
(254, 'admin_tags_delete', 250, 'Tags Delete'),
(300, 'admin_filters', NULL, 'Filters'),
(301, 'admin_filters_list', 300, 'Filters List'),
(302, 'admin_filters_create', 300, 'Filters Create'),
(303, 'admin_filters_edit', 300, 'Filters Edit'),
(304, 'admin_filters_delete', 300, 'Filters Delete'),
(350, 'admin_quizzes', NULL, 'Quizzes'),
(351, 'admin_quizzes_list', 350, 'Quizzes List'),
(352, 'admin_quizzes_edit', 350, 'Quiz edit'),
(353, 'admin_quizzes_delete', 350, 'Quiz delete'),
(354, 'admin_quizzes_results', 350, 'Quizzes results'),
(355, 'admin_quizzes_results_delete', 350, 'Quizzes results delete'),
(356, 'admin_quizzes_lists_excel', 350, 'Quizzes export excel'),
(400, 'admin_quiz_result', NULL, 'Quiz Result'),
(401, 'admin_quiz_result_list', 400, 'Quiz Result List'),
(402, 'admin_quiz_result_create', 400, 'Quiz Result Create'),
(403, 'admin_quiz_result_edit', 400, 'Quiz Result Edit'),
(404, 'admin_quiz_result_delete', 400, 'Quiz Result Delete'),
(405, 'admin_quiz_result_export_excel', 400, 'quiz result export excel'),
(450, 'admin_certificate', NULL, 'Certificate'),
(451, 'admin_certificate_list', 450, 'Certificate List'),
(452, 'admin_certificate_create', 450, 'Certificate Create'),
(453, 'admin_certificate_edit', 450, 'Certificate Edit'),
(454, 'admin_certificate_delete', 450, 'Certificate Delete'),
(455, 'admin_certificate_template_list', 450, 'Certificate template lists'),
(456, 'admin_certificate_template_create', 450, 'Certificate template create'),
(457, 'admin_certificate_template_edit', 450, 'Certificate template edit'),
(458, 'admin_certificate_template_delete', 450, 'Certificate template delete'),
(459, 'admin_certificate_export_excel', 450, 'Certificates export excel'),
(500, 'admin_discount_codes', NULL, 'Discount codes'),
(501, 'admin_discount_codes_list', 500, 'Discount codes list'),
(502, 'admin_discount_codes_create', 500, 'Discount codes create'),
(503, 'admin_discount_codes_edit', 500, 'Discount codes edit'),
(504, 'admin_discount_codes_delete', 500, 'Discount codes delete'),
(505, 'admin_discount_codes_export', 500, 'Discount codes export excel'),
(550, 'admin_group', NULL, 'Groups'),
(551, 'admin_group_list', 550, 'Groups List'),
(552, 'admin_group_create', 550, 'Groups Create'),
(553, 'admin_group_edit', 550, 'Groups Edit'),
(554, 'admin_group_delete', 550, 'Groups Delete'),
(555, 'admin_update_group_registration_package', 550, 'Update group registration package'),
(600, 'admin_payment_channel', NULL, 'Payment Channels'),
(601, 'admin_payment_channel_list', 600, 'Payment Channels List'),
(602, 'admin_payment_channel_toggle_status', 600, 'active or inactive channel'),
(603, 'admin_payment_channel_edit', 600, 'Payment Channels Edit'),
(650, 'admin_settings', NULL, 'settings'),
(651, 'admin_settings_general', 650, 'General settings'),
(652, 'admin_settings_financial', 650, 'Financial settings'),
(653, 'admin_settings_personalization', 650, 'Personalization settings'),
(654, 'admin_settings_notifications', 650, 'Notifications settings'),
(655, 'admin_settings_seo', 650, 'Seo settings'),
(656, 'admin_settings_customization', 650, 'Customization settings'),
(657, 'admin_settings_notifications', 650, 'Notifications settings'),
(658, 'admin_settings_home_sections', 650, 'Home sections settings'),
(700, 'admin_blog', NULL, 'Blog'),
(701, 'admin_blog_lists', 700, 'Blog lists'),
(702, 'admin_blog_create', 700, 'Blog create'),
(703, 'admin_blog_edit', 700, 'Blog edit'),
(704, 'admin_blog_delete', 700, 'Blog delete'),
(705, 'admin_blog_categories', 700, 'Blog categories list'),
(706, 'admin_blog_categories_create', 700, 'Blog categories create'),
(707, 'admin_blog_categories_edit', 700, 'Blog categories edit'),
(708, 'admin_blog_categories_delete', 700, 'Blog categories delete'),
(750, 'admin_sales', NULL, 'Sales'),
(751, 'admin_sales_list', 750, 'Sales List'),
(752, 'admin_sales_refund', 750, 'Sales Refund'),
(753, 'admin_sales_invoice', 750, 'Sales invoice'),
(754, 'admin_sales_export', 750, 'Sales Export Excel'),
(800, 'admin_documents', NULL, 'Balances'),
(801, 'admin_documents_list', 800, 'Balances List'),
(802, 'admin_documents_create', 800, 'Balances Create'),
(803, 'admin_documents_print', 800, 'Balances print'),
(850, 'admin_payouts', NULL, 'Payout'),
(851, 'admin_payouts_list', 850, 'Payout List'),
(852, 'admin_payouts_reject', 850, 'Payout Reject'),
(853, 'admin_payouts_payout', 850, 'Payout accept'),
(854, 'admin_payouts_export_excel', 850, 'Payout export excel'),
(900, 'admin_offline_payments', NULL, 'Offline Payments'),
(901, 'admin_offline_payments_list', 900, 'Offline Payments List'),
(902, 'admin_offline_payments_reject', 900, 'Offline Payments Reject'),
(903, 'admin_offline_payments_approved', 900, 'Offline Payments Approved'),
(904, 'admin_offline_payments_export_excel', 900, 'Offline Payments export excel'),
(950, 'admin_supports', NULL, 'Supports'),
(951, 'admin_supports_list', 950, 'Supports List'),
(952, 'admin_support_send', 950, 'Send Support'),
(953, 'admin_supports_reply', 950, 'Supports reply'),
(954, 'admin_supports_delete', 950, 'Supports delete'),
(955, 'admin_support_departments', 950, 'Support departments lists'),
(956, 'admin_support_department_create', 950, 'Create support department'),
(957, 'admin_support_departments_edit', 950, 'Edit support departments'),
(958, 'admin_support_departments_delete', 950, 'Delete support department'),
(959, 'admin_support_course_conversations', 950, 'Course conversations'),
(1000, 'admin_subscribe', NULL, 'Subscribes'),
(1001, 'admin_subscribe_list', 1000, 'Subscribes list'),
(1002, 'admin_subscribe_create', 1000, 'Subscribes create'),
(1003, 'admin_subscribe_edit', 1000, 'Subscribes edit'),
(1004, 'admin_subscribe_delete', 1000, 'Subscribes delete'),
(1050, 'admin_notifications', NULL, 'Notifications'),
(1051, 'admin_notifications_list', 1050, 'Notifications list'),
(1052, 'admin_notifications_send', 1050, 'Send Notifications'),
(1053, 'admin_notifications_edit', 1050, 'Edit and details Notifications'),
(1054, 'admin_notifications_delete', 1050, 'Delete Notifications'),
(1055, 'admin_notifications_markAllRead', 1050, 'Mark All Read Notifications'),
(1056, 'admin_notifications_templates', 1050, 'Notifications templates'),
(1057, 'admin_notifications_template_create', 1050, 'Create notification template'),
(1058, 'admin_notifications_template_edit', 1050, 'Edit notification template'),
(1059, 'admin_notifications_template_delete', 1050, 'Delete notification template'),
(1060, 'admin_notifications_posted_list', 1050, 'Notifications Posted list'),
(1075, 'admin_noticeboards', NULL, 'Noticeboards'),
(1076, 'admin_noticeboards_list', 1075, 'Noticeboards list'),
(1077, 'admin_noticeboards_send', 1075, 'Send Noticeboards'),
(1078, 'admin_noticeboards_edit', 1075, 'Edit Noticeboards'),
(1079, 'admin_noticeboards_delete', 1075, 'Delete Noticeboards'),
(1100, 'admin_promotion', NULL, 'Promotions'),
(1101, 'admin_promotion_list', 1100, 'Promotions list'),
(1102, 'admin_promotion_create', 1100, 'Promotion create'),
(1103, 'admin_promotion_edit', 1100, 'Promotion edit'),
(1104, 'admin_promotion_delete', 1100, 'Promotion delete'),
(1150, 'admin_testimonials', NULL, 'testimonials'),
(1151, 'admin_testimonials_list', 1150, 'testimonials list'),
(1152, 'admin_testimonials_create', 1150, 'testimonials create'),
(1153, 'admin_testimonials_edit', 1150, 'testimonials edit'),
(1154, 'admin_testimonials_delete', 1150, 'testimonials delete'),
(1200, 'admin_advertising', NULL, 'advertising'),
(1201, 'admin_advertising_banners', 1200, 'advertising banners list'),
(1202, 'admin_advertising_banners_create', 1200, 'create advertising banner'),
(1203, 'admin_advertising_banners_edit', 1200, 'edit advertising banner'),
(1204, 'admin_advertising_banners_delete', 1200, 'delete advertising banner'),
(1230, 'admin_newsletters', NULL, 'Newsletters'),
(1231, 'admin_newsletters_lists', 1230, 'Newsletters lists'),
(1232, 'admin_newsletters_send', 1230, 'Send Newsletters'),
(1233, 'admin_newsletters_history', 1230, 'Newsletters histories'),
(1234, 'admin_newsletters_delete', 1230, 'Delete newsletters item'),
(1235, 'admin_newsletters_export_excel', 1230, 'Export excel newsletters item'),
(1250, 'admin_contacts', NULL, 'Contacts'),
(1251, 'admin_contacts_lists', 1250, 'Contacts lists'),
(1252, 'admin_contacts_reply', 1250, 'Contacts reply'),
(1253, 'admin_contacts_delete', 1250, 'Contacts delete'),
(1300, 'admin_product_discount', NULL, 'product discount'),
(1301, 'admin_product_discount_list', 1300, 'product discount list'),
(1302, 'admin_product_discount_create', 1300, 'create product discount'),
(1303, 'admin_product_discount_edit', 1300, 'edit product discount'),
(1304, 'admin_product_discount_delete', 1300, 'delete product discount'),
(1305, 'admin_product_discount_export', 1300, 'delete product export excel'),
(1350, 'admin_pages', NULL, 'pages'),
(1351, 'admin_pages_list', 1350, 'pages list'),
(1352, 'admin_pages_create', 1350, 'pages create'),
(1353, 'admin_pages_edit', 1350, 'pages edit'),
(1354, 'admin_pages_toggle', 1350, 'pages toggle publish/draft'),
(1355, 'admin_pages_delete', 1350, 'pages delete'),
(1400, 'admin_comments', NULL, 'Comments'),
(1401, 'admin_webinar_comments', 1400, 'Classes comments'),
(1402, 'admin_webinar_comments_edit', 1400, 'Classes comments edit'),
(1403, 'admin_webinar_comments_reply', 1400, 'Classes comments reply'),
(1404, 'admin_webinar_comments_delete', 1400, 'Classes comments delete'),
(1405, 'admin_webinar_comments_status', 1400, 'Classes comments status (active or pending)'),
(1406, 'admin_blog_comments', 1400, 'Blog comments'),
(1407, 'admin_blog_comments_edit', 1400, 'Blog comments edit'),
(1408, 'admin_blog_comments_reply', 1400, 'Blog comments reply'),
(1409, 'admin_blog_comments_delete', 1400, 'Blog comments delete'),
(1410, 'admin_blog_comments_status', 1400, 'Blog comments status (active or pending)'),
(1450, 'admin_reports', NULL, 'Reports'),
(1451, 'admin_webinar_reports', 1450, 'Classes reports'),
(1452, 'admin_webinar_comments_reports', 1450, 'Classes Comments reports'),
(1453, 'admin_webinar_reports_delete', 1450, 'Classes reports delete'),
(1454, 'admin_blog_comments_reports', 1450, 'Blog Comments reports'),
(1455, 'admin_report_reasons', 1450, 'Reports reasons'),
(1500, 'admin_additional_pages', NULL, 'Additional Pages'),
(1501, 'admin_additional_pages_404', 1500, '404 error page settings'),
(1502, 'admin_additional_pages_contact_us', 1500, 'Contact page settings'),
(1503, 'admin_additional_pages_footer', 1500, 'Footer settings'),
(1504, 'admin_additional_pages_navbar_links', 1500, 'Top Navbar links settings'),
(1550, 'admin_appointments', NULL, 'Appointments'),
(1551, 'admin_appointments_lists', 1550, 'Appointments lists'),
(1552, 'admin_appointments_join', 1550, 'Appointments join'),
(1553, 'admin_appointments_send_reminder', 1550, 'Appointments send reminder'),
(1554, 'admin_appointments_cancel', 1550, 'Appointments cancel'),
(1600, 'admin_reviews', NULL, 'Reviews'),
(1601, 'admin_reviews_lists', 1600, 'Reviews lists'),
(1602, 'admin_reviews_status_toggle', 1600, 'Reviews status toggle (publish or hidden)'),
(1603, 'admin_reviews_detail_show', 1600, 'Review details page'),
(1604, 'admin_reviews_delete', 1600, 'Review delete'),
(1650, 'admin_consultants', NULL, 'Consultants'),
(1651, 'admin_consultants_lists', 1650, 'Consultants lists'),
(1652, 'admin_consultants_export_excel', 1650, 'Consultants export excel'),
(1675, 'admin_referrals', NULL, 'Referrals'),
(1676, 'admin_referrals_history', 1675, 'Referrals History'),
(1677, 'admin_referrals_users', 1675, 'Referrals users'),
(1678, 'admin_referrals_export', 1675, 'Export Referrals'),
(1700, 'admin_agora_history', NULL, 'Agora history'),
(1701, 'admin_agora_history_list', 1700, 'Agora history lists'),
(1702, 'admin_agora_history_export', 1700, 'Agora history export'),
(1725, 'admin_regions', NULL, 'Regions'),
(1726, 'admin_regions_countries', 1725, 'countries lists'),
(1727, 'admin_regions_provinces', 1725, 'provinces lists'),
(1728, 'admin_regions_cities', 1725, 'cities lists'),
(1729, 'admin_regions_districts', 1725, 'districts lists'),
(1730, 'admin_regions_create', 1725, 'create item'),
(1731, 'admin_regions_edit', 1725, 'edit item'),
(1732, 'admin_regions_delete', 1725, 'delete item'),
(1750, 'admin_rewards', NULL, 'Rewards'),
(1751, 'admin_rewards_history', 1750, 'Rewards history'),
(1752, 'admin_rewards_settings', 1750, 'Rewards settings'),
(1753, 'admin_rewards_items', 1750, 'Rewards items'),
(1754, 'admin_rewards_item_delete', 1750, 'Reward item delete'),
(1775, 'admin_registration_packages', NULL, 'Registration packages'),
(1776, 'admin_registration_packages_lists', 1775, 'packages lists'),
(1777, 'admin_registration_packages_new', 1775, 'New package'),
(1778, 'admin_registration_packages_edit', 1775, 'Edit package'),
(1779, 'admin_registration_packages_delete', 1775, 'Delete package'),
(1780, 'admin_registration_packages_reports', 1775, 'Reports'),
(1781, 'admin_registration_packages_settings', 1775, 'Settings');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `chapter_id` int(10) UNSIGNED DEFAULT NULL,
  `date` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zoom_start_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session_api` enum('local','big_blue_button','zoom','agora') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'local',
  `api_secret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `moderator_secret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agora_settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `sessions_webinar_id_foreign` (`webinar_id`) USING BTREE,
  KEY `sessions_creator_id_foreign` (`creator_id`) USING BTREE,
  KEY `sessions_chapter_id_foreign` (`chapter_id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `creator_id`, `webinar_id`, `chapter_id`, `date`, `duration`, `link`, `zoom_start_link`, `session_api`, `api_secret`, `moderator_secret`, `agora_settings`, `order`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(52, 1015, 1996, 22, 1696408200, 90, 'https://us05web.zoom.us/j/88274172998?pwd=Y2czMmNtendmNU1GMVdRNmFRdS9JQT09', 'https://us05web.zoom.us/s/88274172998?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6Il84Z2M3Q2Y5Ul9lYmF2WUQyTjNYekEiLCJpc3MiOiJ3ZWIiLCJzdHkiOjEsIndjZCI6InVzMDUiLCJjbHQiOjAsInN0ayI6ImM0TXJjZ3FWYURaLXF0dUo4NFlHcE5idmQ5bzhOSkVmUERBem1fQXZYREUuQUcucEJrSHVjbnRXbTJhSXl5WUN0QmZXZHJuMEFZWUZERjhMbHpORFFTMXM1MU1ybXBvNElLYnQ5dVZkV2hOdkttODUxako1eEtiVWFiZG1QUUYuT0U2TGx2bmQwVmZGejFfV0dueWVaQS5paWJFODdIeFlfWVRGcXJwIiwiZXhwIjoxNjI0OTUxOTgwLCJpYXQiOjE2MjQ5NDQ3ODAsImFpZCI6Ikh4M2NFTjQ0UlZtbExHZ1hkT3dleVEiLCJjaWQiOiIifQ.hxHT3quR9dYW9yPaof6J1Y2WEh9LTu3xSBEzWR4UBLw', 'zoom', '', '', NULL, NULL, 'active', 1624944778, 1635417703, NULL),
(53, 1015, 1996, 23, 1696581000, 90, 'https://us05web.zoom.us/j/89548965384?pwd=ZHVpZjZwdlg4c1NZcExmOUZ3Qk1hZz09', 'https://us05web.zoom.us/s/89548965384?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6Il84Z2M3Q2Y5Ul9lYmF2WUQyTjNYekEiLCJpc3MiOiJ3ZWIiLCJzdHkiOjEsIndjZCI6InVzMDUiLCJjbHQiOjAsInN0ayI6IjdfLTFUQ0ZGWHRzMGZER3NSWWlwVVNKbEJYc0JIR1p6V0piLVgtQ2RaamcuQUcuektDUldmYVdHNTdFMEYzcUFoX3lsd3BlZHZQYzdQcVQ0cGNGcGRtWklGLWpOMkVZMVo0WDhTVENvbnk4LXZLODVuNU03LWFuMDQ4dXBWTlkuU0I5dEJ2OC1NZ0t1MDlVRlZGWnF3QS5KalNENDFPbU85QzV6czctIiwiZXhwIjoxNjI0OTUyMDYyLCJpYXQiOjE2MjQ5NDQ4NjIsImFpZCI6Ikh4M2NFTjQ0UlZtbExHZ1hkT3dleVEiLCJjaWQiOiIifQ.Qy2-SV5zcLoJuOFRHnWOg2bsoYWgBKOsHkUXJoyR0Z4', 'zoom', '', '', NULL, NULL, 'active', 1624944860, 1635417710, NULL),
(54, 1015, 1996, 23, 1696761000, 90, 'https://us05web.zoom.us/j/85386163374?pwd=UnVlYmNHTk5Tak1XN0J2d05Xa1hpZz09', 'https://us05web.zoom.us/s/85386163374?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6Il84Z2M3Q2Y5Ul9lYmF2WUQyTjNYekEiLCJpc3MiOiJ3ZWIiLCJzdHkiOjEsIndjZCI6InVzMDUiLCJjbHQiOjAsInN0ayI6IlB5TnU3WE9NcUIxNy1hcEhDTDhNZ0dFbm1ydmJLWTlkci1vU3ZPYU1mUGcuQUcuSEMzOVNhWmFieFlEdzdSa25JTGw2dWRtc29zQ2RmVFVDTG1oNUxYbDhJSHl4NkhwQ0haZ0czcF9IQzdHLUc1SmJ0RkNDTXRVQ01PUXVuRnguLXdnRERNM1NyMEJBSk41VGZvUTNHUS4xcGd1bjRoclRwSjF3LUhwIiwiZXhwIjoxNjI0OTUyMTQ5LCJpYXQiOjE2MjQ5NDQ5NDksImFpZCI6Ikh4M2NFTjQ0UlZtbExHZ1hkT3dleVEiLCJjaWQiOiIifQ.OHoObakmLvuWC1vtExvmnSq4gdcOiFLAdCXlHCf5dHo', 'zoom', '', '', NULL, NULL, 'active', 1624944947, 1635417717, NULL),
(55, 1015, 1996, 23, 1696948200, 90, 'https://us05web.zoom.us/j/85322459249?pwd=M29NVUh3dlNTR2tIWmcrdVVRUE9NUT09', 'https://us05web.zoom.us/s/85322459249?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6Il84Z2M3Q2Y5Ul9lYmF2WUQyTjNYekEiLCJpc3MiOiJ3ZWIiLCJzdHkiOjEsIndjZCI6InVzMDUiLCJjbHQiOjAsInN0ayI6InFORXdjalVERjhjV3haLXQtcHlJOUE4U0REOVRVVHhmMS02a3h6bkJDVlkuQUcud3RBSmt6SG9TNDNuRUt3NmlzQlhEaWtHbFdER1NuS2hTU3Zwa0pIRzVJY044bE5CbUhtalRoTkNHT1ZWMEhnNS1oY3JfaE9uLVVLemVTbG8ud0d5WDlQUVJjdlpmeFNpVUNsX0V6QS5zZ0pzQkJtNHEwaExxT21TIiwiZXhwIjoxNjI0OTUyMjAwLCJpYXQiOjE2MjQ5NDUwMDAsImFpZCI6Ikh4M2NFTjQ0UlZtbExHZ1hkT3dleVEiLCJjaWQiOiIifQ.Qv-bb4gviXtnXZsoTcOVEff252ll2GjBYSHeEL8KCIo', 'zoom', '', '', NULL, NULL, 'active', 1624944997, 1635417726, NULL),
(56, 1015, 1996, 23, 1697286600, 90, 'https://us05web.zoom.us/j/84379684637?pwd=M2NTQUdmbXF4N0ZzOGluRm02Z3dvZz09', 'https://us05web.zoom.us/s/84379684637?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6Il84Z2M3Q2Y5Ul9lYmF2WUQyTjNYekEiLCJpc3MiOiJ3ZWIiLCJzdHkiOjEsIndjZCI6InVzMDUiLCJjbHQiOjAsInN0ayI6Imc2QXNVaGx3elFNMFBpLTNGNklDdnJXRlA1eUxDbDJlNEVuSndvRjRQbUEuQUcuSnFvR0ZMZWNRVUdleS1nY29fUVhFWFpNR1lkOXExSjZSV21WRzh1UDNOTWwwcTB6Q25nSzRyWXpvd0FhYVpVMzUyaTBYOXNITnZoNmlVazQueDR4c3ZlZGd4aUtQWEFIb1E4bGM5QS5FdnVwSnJBYTFFQ20taS1lIiwiZXhwIjoxNjI0OTUyMjU4LCJpYXQiOjE2MjQ5NDUwNTgsImFpZCI6Ikh4M2NFTjQ0UlZtbExHZ1hkT3dleVEiLCJjaWQiOiIifQ.JhbjqEoYpVL0nquEuQT5RYfdMdi3z88XB3duM4XP2e8', 'zoom', '', '', NULL, NULL, 'active', 1624945056, 1635417732, NULL),
(65, 3, 2001, 16, 1702362600, 20, 'https://meet.google.com/', NULL, 'local', '12345', '', NULL, NULL, 'active', 1625078642, 1635417181, NULL),
(66, 3, 2001, 17, 1702650600, 20, 'https://meet.google.com/', NULL, 'local', '46546', '', NULL, NULL, 'active', 1625078804, 1635417191, NULL),
(67, 3, 2001, 17, 1702895400, 20, 'https://meet.google.com/', NULL, 'local', 'D548755', '', NULL, NULL, 'active', 1625079005, 1635417199, NULL),
(71, 864, 2003, 13, 1661636400, 20, 'https://meet.google.com/msq-avey-wxg', NULL, 'local', '368967886', '', NULL, NULL, 'active', 1625299964, 1661618092, NULL),
(72, 864, 2003, 13, 1696915800, 20, 'https://meet.google.com/', NULL, 'local', '55475666', '', NULL, NULL, 'active', 1625300053, 1635416824, NULL),
(73, 864, 2003, 13, 1697319000, 35, 'https://meet.google.com/', NULL, 'local', 'RW346@654', '', NULL, NULL, 'active', 1625300165, 1635416835, NULL),
(77, 3, 2018, 41, 1660881600, 30, '', NULL, 'agora', '', '', '{\"chat\":false,\"record\":false}', NULL, 'active', 1660923626, NULL, NULL),
(78, 3, 2018, 41, 1660881600, 30, 'https://meet.google.com/kby-vcyb-gaz', NULL, 'local', '1234567890', '', NULL, NULL, 'active', 1660923817, NULL, NULL),
(79, 3, 2018, 41, 1660942200, 30, '', NULL, 'agora', '', '', '{\"chat\":false,\"record\":false}', NULL, 'active', 1660924099, NULL, NULL),
(80, 3, 2018, 41, 1660924740, 30, 'https://meet.google.com/xxt-oqwn-kkh', NULL, 'local', '123456', NULL, NULL, NULL, 'active', 1660924570, NULL, NULL),
(82, 864, 2025, 46, 1661542800, 30, 'https://meet.google.com/hkg-krmf-bwi', NULL, 'local', '123456', NULL, NULL, NULL, 'active', 1661513519, 1661524739, NULL),
(83, 864, 2026, 47, 1661522400, 30, 'https://meet.google.com/hkg-krmf-bwi', NULL, 'local', '123456789', NULL, NULL, NULL, 'active', 1661514936, NULL, NULL),
(84, 864, 2027, 48, 1661522400, 30, 'https://meet.google.com/hkg-krmf-bwi', NULL, 'local', '123456789', NULL, NULL, NULL, 'active', 1661516283, NULL, NULL),
(85, 3, 2029, 50, 1661525400, 30, 'https://meet.google.com/hkg-krmf-bwi', NULL, 'local', '123456789', NULL, NULL, NULL, 'active', 1661523831, 1661523951, NULL),
(86, 3, 2029, 50, 1661526000, 30, 'https://meet.google.com/hkg-krmf-bwi', NULL, 'local', '123456789', NULL, NULL, NULL, 'active', 1661523927, 1661523987, NULL),
(88, 864, 2033, 54, 1661529480, 20, 'https://meet.google.com/hkg-krmf-bwi', NULL, 'local', 'https://meet.google.com/hkg-krmf-bwi', NULL, NULL, NULL, 'active', 1661528892, NULL, NULL),
(90, 864, 2035, 56, 1661490000, 30, 'https://meet.google.com/hkg-krmf-bwi', NULL, 'local', '123456789', NULL, NULL, NULL, 'active', 1661531307, NULL, NULL),
(91, 864, 2036, 57, 1661526000, 20, 'https://meet.google.com/hkg-krmf-bwi', NULL, 'local', '123456789', NULL, NULL, NULL, 'active', 1661531676, NULL, NULL),
(92, 864, 2037, 58, 1661468400, 20, 'https://meet.google.com/hkg-krmf-bwi', NULL, 'local', '123456789', NULL, NULL, NULL, 'active', 1661532290, NULL, NULL),
(93, 864, 2038, 59, 1661572800, 20, 'https://meet.google.com/hkg-krmf-bwi', NULL, 'local', '123456789', NULL, NULL, NULL, 'active', 1661550401, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `session_reminds`
--

DROP TABLE IF EXISTS `session_reminds`;
CREATE TABLE IF NOT EXISTS `session_reminds` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `session_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `session_reminds_session_id_foreign` (`session_id`),
  KEY `session_reminds_user_id_foreign` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `session_translations`
--

DROP TABLE IF EXISTS `session_translations`;
CREATE TABLE IF NOT EXISTS `session_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `session_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `session_translations_session_id_foreign` (`session_id`),
  KEY `session_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `session_translations`
--

INSERT INTO `session_translations` (`id`, `session_id`, `locale`, `title`, `description`) VALUES
(1, 52, 'en', 'Day 1', 'In this lesson you will learn:What Linux is and Brief history of Linux'),
(2, 53, 'en', 'Day 2', 'In this lesson you will learn about the Linux directory structure. You\'ll learn where different components of the operating system are located. You\'ll also learn how applications can employ the same conventions for their directory structures.'),
(3, 54, 'en', 'Day 3', 'In this lesson you will learn various commands that can be used to view files as well as how to use the nano text editor.'),
(4, 55, 'en', 'Day 4', 'This lesson will cover how to delete, copy, move, and rename files in Linux.'),
(5, 56, 'en', 'Day 5', 'In this lesson you will learn how to display information about running programs and processes. You will also learn how to control the behavior of processes, including running processes in the background and terminating processes.'),
(12, 65, 'en', 'Getting Started', 'A brief overview of what you\'ll learn in this course.'),
(13, 66, 'en', 'Modules, Apps, and Controllers', 'AngularJS enables you to control the DOM via modules, apps, and controllers -- all without polluting the global namespace.\r\nThis lecture contains downloadable source code. Download the file below and unzip (or extract) it.'),
(14, 67, 'en', 'Data Binding and Directives', 'Our first visual AngularJS code. Now that we understand scope, let\'s use it to output content to a page.\r\n\r\nThis lecture contains downloadable source code. Download the file below and unzip (or extract) it.'),
(18, 71, 'en', 'Why Active Listening?', 'Most of us want to get better at talking. But the REAL power tool for influencing others, leading, collaborating, having an impact, and being an an-all-around-better person is Active Listening. While regular listening can look like being blank and silent, Active Listening is engaged, creative, and responsive.'),
(19, 72, 'en', 'Automatic Listening Habits', 'In this course, you will gain both the internal awareness and external skill-set that are the foundation of Active Listening. You will be able to have far more satisfying, interesting, successful conversations.'),
(20, 73, 'en', 'Helpful Habits', 'Most of us want to get better at talking. But the REAL power tool for influencing others, leading, collaborating, having an impact, and being an an-all-around-better person is Active Listening.'),
(24, 77, 'en', 'Live Class Session 1', 'A live class Test'),
(25, 78, 'en', 'Google Meet', 'Google Meet class'),
(26, 79, 'en', 'In App Live', 'in APp'),
(27, 80, 'en', 'Google', 'A google meet'),
(29, 82, 'en', 'Introduction', 'Introduction'),
(30, 83, 'en', 'Introduction', 'Intro'),
(31, 84, 'en', 'Introduction', 'Intro to React'),
(32, 85, 'en', 'Introduction', 'Inroduction'),
(33, 86, 'en', 'Basic', 'Basic Decision'),
(35, 88, 'en', 'Session 001', 'Kad'),
(37, 90, 'en', 'Topic 1', 'Basic'),
(38, 91, 'en', 'Today', 'Today class'),
(39, 92, 'en', 'Session one', 'Workflow'),
(40, 93, 'en', 'Session 1', 'Session one class');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `page` enum('general','financial','personalization','notifications','seo','customization','other') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'other',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `page`, `name`, `updated_at`) VALUES
(1, 'seo', 'seo_metas', 1645610423),
(2, 'general', 'socials', 1645553984),
(4, 'other', 'footer', 1632071275),
(5, 'general', 'general', 1651181809),
(6, 'financial', 'financial', 1645554757),
(8, 'personalization', 'home_hero', 1661077812),
(12, 'customization', 'custom_css_js', 1636119881),
(14, 'personalization', 'page_background', 1651183777),
(15, 'personalization', 'home_hero2', 1645563058),
(20, 'other', 'report_reasons', 1645600934),
(22, 'notifications', 'notifications', 1636119806),
(23, 'financial', 'site_bank_accounts', 1645555160),
(24, 'other', 'contact_us', 1651318765),
(25, 'personalization', 'home_sections', 1646494759),
(26, 'other', 'navbar_links', 1651318787),
(27, 'personalization', 'home_video_or_image_box', 1645563215),
(28, 'other', '404', 1645563969),
(29, 'personalization', 'panel_sidebar', 1645563328),
(30, 'financial', 'referral', 1646494549),
(31, 'general', 'features', 1651183662),
(32, 'personalization', 'find_instructors', 1645610065),
(33, 'personalization', 'reward_program', 1645606462),
(34, 'general', 'rewards_settings', 1646494590),
(37, 'financial', 'registration_packages_general', 1646494566),
(38, 'financial', 'registration_packages_instructors', 1646494569),
(39, 'financial', 'registration_packages_organizations', 1646494574),
(40, 'personalization', 'become_instructor_section', 1645609839);

-- --------------------------------------------------------

--
-- Table structure for table `setting_translations`
--

DROP TABLE IF EXISTS `setting_translations`;
CREATE TABLE IF NOT EXISTS `setting_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `setting_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `setting_translations_setting_id_foreign` (`setting_id`),
  KEY `setting_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting_translations`
--

INSERT INTO `setting_translations` (`id`, `setting_id`, `locale`, `value`) VALUES
(1, 1, 'en', '{\"home\":{\"title\":\"Home\",\"description\":\"home page Description\",\"robot\":\"index\"},\"search\":{\"title\":\"Search\",\"description\":\"search page Description\",\"robot\":\"index\"},\"categories\":{\"title\":\"Category\",\"description\":\"categories page Description\",\"robot\":\"index\"},\"login\":{\"title\":\"Login\",\"description\":\"login page description\",\"robot\":\"index\"},\"register\":{\"title\":\"Register\",\"description\":\"register page Description\",\"robot\":\"index\"},\"about\":{\"title\":\"about page title\",\"description\":\"about page Description\"},\"contact\":{\"title\":\"Contact\",\"description\":\"contact page Description\",\"robot\":\"index\"},\"certificate_validation\":{\"title\":\"Certificate validation\",\"description\":\"Certificate validation description\",\"robot\":\"index\"},\"classes\":{\"title\":\"Courses\",\"description\":\"Courses page Description\",\"robot\":\"index\"},\"blog\":{\"title\":\"Blog\",\"description\":\"Blog page description\",\"robot\":\"index\"},\"instructors\":{\"title\":\"Instructors\",\"description\":\"instructors page Description\",\"robot\":\"index\"},\"organizations\":{\"title\":\"Organizations\",\"description\":\"Organizations page description\",\"robot\":\"index\"},\"instructor_finder_wizard\":{\"title\":\"Instructor finder wizard\",\"description\":\"Instructor finder wizard description\",\"robot\":\"noindex\"},\"instructor_finder\":{\"title\":\"Instructor finder\",\"description\":\"Instructor finder description\",\"robot\":\"index\"},\"reward_courses\":{\"title\":\"Reward courses\",\"description\":\"Reward courses description\",\"robot\":\"index\"}}'),
(2, 2, 'en', '{\"Instagram\":{\"title\":\"Instagram\",\"image\":\"\\/store\\/1\\/default_images\\/social\\/instagram.svg\",\"link\":\"https:\\/\\/www.instagram.com\\/\",\"order\":\"1\"},\"Whatsapp\":{\"title\":\"Whatsapp\",\"image\":\"\\/store\\/1\\/default_images\\/social\\/whatsapp.svg\",\"link\":\"https:\\/\\/web.whatsapp.com\\/\",\"order\":\"2\"},\"Twitter\":{\"title\":\"Twitter\",\"image\":\"\\/store\\/1\\/default_images\\/social\\/twitter.svg\",\"link\":\"https:\\/\\/twitter.com\\/\",\"order\":\"3\"},\"Facebook\":{\"title\":\"Facebook\",\"image\":\"\\/store\\/1\\/default_images\\/social\\/facebook.svg\",\"link\":\"https:\\/\\/www.facebook.com\\/\",\"order\":\"4\"}}'),
(4, 5, 'en', '{\"site_name\":\"CDRMDS LMS\",\"site_email\":\"info@cdrmds.org\",\"site_phone\":\"091-716-1166\",\"site_language\":\"EN\",\"register_method\":\"email\",\"default_time_zone\":\"America\\/New_York\",\"date_format\":\"textual\",\"time_format\":\"24_hours\",\"user_languages\":[\"AR\",\"EN\",\"ES\"],\"rtl_languages\":[\"AR\"],\"fav_icon\":\"\\/store\\/1\\/fav-lms.png\",\"logo\":\"\\/store\\/1\\/default_images\\/lms-logo.png\",\"footer_logo\":\"\\/store\\/1\\/default_images\\/lms-logo.png\",\"webinar_reminder_schedule\":\"2\",\"preloading\":\"1\",\"hero_section2\":\"1\"}'),
(5, 6, 'en', '{\"commission\":\"20\",\"tax\":\"10\",\"minimum_payout\":\"50\",\"currency\":\"USD\",\"currency_position\":\"left\",\"price_display\":\"only_price\"}'),
(6, 8, 'en', '{\"title\":\"learning & teaching...\",\"description\":\"LMS\",\"hero_background\":\"\\/store\\/1\\/default_images\\/hero_1.jpg\"}'),
(7, 12, 'en', '{\"css\":null,\"js\":null}'),
(8, 14, 'en', '{\"admin_login\":\"\\/store\\/1\\/default_images\\/admin_login.jpg\",\"admin_dashboard\":\"\\/store\\/1\\/default_images\\/admin_dashboard.jpg\",\"login\":\"\\/store\\/1\\/default_images\\/cdrmds.png\",\"register\":\"\\/store\\/1\\/default_images\\/front_register.jpg\",\"remember_pass\":\"\\/store\\/1\\/default_images\\/password_recovery.jpg\",\"verification\":\"\\/store\\/1\\/default_images\\/verification.jpg\",\"search\":\"\\/store\\/1\\/default_images\\/search_cover.png\",\"categories\":\"\\/store\\/1\\/default_images\\/category_cover.png\",\"become_instructor\":\"\\/store\\/1\\/default_images\\/become_instructor.jpg\",\"certificate_validation\":\"\\/store\\/1\\/default_images\\/certificate_validation.jpg\",\"blog\":\"\\/store\\/1\\/default_images\\/blogs_cover.png\",\"instructors\":\"\\/store\\/1\\/default_images\\/instructors_cover.png\",\"organizations\":\"\\/store\\/1\\/default_images\\/organizations_cover.png\",\"dashboard\":\"\\/store\\/1\\/dashboard.png\",\"user_avatar\":\"\\/store\\/1\\/default_images\\/default_profile.jpg\",\"user_cover\":\"\\/store\\/1\\/default_images\\/default_cover.jpg\",\"instructor_finder_wizard\":\"\\/store\\/1\\/default_images\\/instructor_finder_wizard.jpg\"}'),
(9, 15, 'en', '{\"title\":\"Joy of learning & teaching...\",\"description\":\"Rocket LMS is a fully-featured educational platform that helps instructors to create and publish video courses, live classes, and text courses and earn money, and helps students to learn in the easiest way.\",\"hero_background\":\"\\/assets\\/default\\/img\\/home\\/world.png\",\"hero_vector\":\"\\/store\\/1\\/animated-header.json\",\"has_lottie\":\"1\"}'),
(10, 20, 'en', '{\"1\":\"reason 2\",\"2\":\"reason 1\"}'),
(11, 22, 'en', '{\"new_comment_admin\":\"7\",\"support_message_admin\":\"10\",\"support_message_replied_admin\":\"11\",\"promotion_plan_admin\":\"29\",\"new_contact_message\":\"26\",\"new_badge\":\"2\",\"change_user_group\":\"3\",\"course_created\":\"4\",\"course_approve\":\"5\",\"course_reject\":\"6\",\"new_comment\":\"7\",\"support_message\":\"8\",\"support_message_replied\":\"9\",\"new_rating\":\"17\",\"webinar_reminder\":\"27\",\"new_financial_document\":\"12\",\"payout_request\":\"13\",\"payout_proceed\":\"14\",\"offline_payment_request\":\"18\",\"offline_payment_approved\":\"19\",\"offline_payment_rejected\":\"20\",\"new_sales\":\"15\",\"new_purchase\":\"16\",\"new_subscribe_plan\":\"21\",\"promotion_plan\":\"28\",\"new_appointment\":\"22\",\"new_appointment_link\":\"23\",\"appointment_reminder\":\"24\",\"meeting_finished\":\"25\",\"new_certificate\":\"30\",\"waiting_quiz\":\"31\",\"waiting_quiz_result\":\"32\",\"payout_request_admin\":\"13\"}'),
(12, 23, 'en', '{\"540\":{\"title\":\"Qatar National Bank\",\"image\":\"\\/store\\/1\\/default_images\\/offline_payments\\/Qatar National Bank.png\",\"card_id\":\"2578-4910-3682-6288\",\"account_id\":\"38152294372\",\"iban\":\"QA66QUWW934528129454345775226\"},\"334\":{\"title\":\"State Bank of India\",\"image\":\"\\/store\\/1\\/default_images\\/offline_payments\\/State Bank of India.png\",\"card_id\":\"6282-4518-1237-7641\",\"account_id\":\"56238341127\",\"iban\":\"IN37ABNA2422193788\"},\"jhgDW\":{\"title\":\"JPMorgan\",\"image\":\"\\/store\\/1\\/default_images\\/offline_payments\\/jpmorgan.png\",\"card_id\":\"5012-4518-1772-8911\",\"account_id\":\"46237751125\",\"iban\":\"NL37ABNA2423554788\"}}'),
(13, 24, 'en', '{\"background\":\"\\/store\\/1\\/default_images\\/category_cover.png\",\"latitude\":\"43.45905\",\"longitude\":\"11.87300\",\"map_zoom\":\"16\",\"phones\":\"415-716-1166 , 415-716-1167\",\"emails\":\"mail@cdrmds.org , info@cdrmds.org\",\"address\":\"12 Danube Street\\r\\nMaitama, Abuja 94103\"}'),
(14, 25, 'en', '{\"latest_classes\":\"1\",\"best_sellers\":\"1\",\"free_classes\":\"1\",\"discount_classes\":\"1\",\"best_rates\":\"1\",\"trend_categories\":\"1\",\"testimonials\":\"1\",\"subscribes\":\"1\",\"blog\":\"1\",\"organizations\":\"1\",\"instructors\":\"1\",\"video_or_image_section\":\"1\"}'),
(15, 26, 'en', '{\"02nh9a\":{\"title\":\"Home\",\"link\":\"\\/\",\"order\":\"1\"},\"1cH2kF\":{\"title\":\"Courses\",\"link\":\"\\/classes?sort=newest\",\"order\":\"2\"},\"VH2ZWa\":{\"title\":\"Blog\",\"link\":\"\\/blog\",\"order\":\"4\"},\"7Q6uAZ\":{\"title\":\"Contact\",\"link\":\"\\/contact\",\"order\":\"5\"}}'),
(16, 27, 'en', '{\"link\":\"\\/classes\",\"title\":\"Start learning anywhere, anytime...\",\"description\":\"Use Rocket LMS to access high-quality education materials without any limitations in the easiest way.\",\"background\":\"\\/store\\/1\\/default_images\\/home_video_section.png\"}'),
(17, 28, 'en', '{\"error_image\":\"\\/store\\/1\\/default_images\\/404.svg\",\"error_title\":\"title for error 404\",\"error_description\":\"404 Error description\"}'),
(18, 29, 'en', '{\"link\":\"\\/classes?sort=newest\",\"background\":\"\\/store\\/1\\/sidebar-user.png\"}'),
(19, 30, 'en', '{\"affiliate_user_commission\":\"5\",\"affiliate_user_amount\":\"20\",\"referred_user_amount\":\"10\",\"referral_description\":\"You can share your affiliate URL you will get the above rewards when a user uses the platform.\"}'),
(20, 4, 'en', '{\"first_column\":{\"title\":\"About US\",\"value\":\"<p><font color=\\\"#ffffff\\\">Rocket LMS is a fully-featured learning management system that helps you to run your education business in several hours. This platform helps instructors to create professional education materials and helps students to learn from the best instructors.<\\/font><\\/p>\"},\"second_column\":{\"title\":\"Additional Links\",\"value\":\"<p><a href=\\\"\\/login\\\"><font color=\\\"#ffffff\\\">- Login<\\/font><\\/a><\\/p><p><font color=\\\"#ffffff\\\"><a href=\\\"\\/register\\\"><font color=\\\"#ffffff\\\">- Register<\\/font><\\/a><br><\\/font><\\/p><p><a href=\\\"\\/blog\\\"><font color=\\\"#ffffff\\\">- Blog<\\/font><\\/a><\\/p><p><a href=\\\"\\/contact\\\"><font color=\\\"#ffffff\\\">- Contact us<\\/font><\\/a><\\/p><p><font color=\\\"#ffffff\\\"><a href=\\\"\\/certificate_validation\\\"><font color=\\\"#ffffff\\\">- Certificate validation<\\/font><\\/a><br><\\/font><\\/p><p><font color=\\\"#ffffff\\\"><a href=\\\"\\/become_instructor\\\"><font color=\\\"#ffffff\\\">- Become instructor<\\/font><\\/a><br><\\/font><\\/p><p><a href=\\\"\\/pages\\/terms\\\"><font color=\\\"#ffffff\\\">- Terms &amp; rules<\\/font><\\/a><\\/p><p><a href=\\\"\\/pages\\/about\\\"><font color=\\\"#ffffff\\\">- About us<\\/font><\\/a><br><\\/p>\"},\"third_column\":{\"title\":\"Similar Businesses\",\"value\":\"<p><a href=\\\"https:\\/\\/www.udemy.com\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- Udemy<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.skillshare.com\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- Skillshare<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.coursera.org\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- Coursera<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.linkedin.com\\/learning\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- Lynda<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.skillsoft.com\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- Skillsoft<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.udacity.com\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- Udacity<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.edx.org\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- edX<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.masterclass.com\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- Masterclass<\\/font><\\/a><br><\\/p>\"},\"forth_column\":{\"title\":\"Purchase Rocket LMS\",\"value\":\"<p><a title=\\\"Notnt\\\" href=\\\"https:\\/\\/codecanyon.net\\\"><img style=\\\"width: 200px;\\\" src=\\\"\\/store\\/1\\/default_images\\/envato.png\\\"><\\/a><\\/p>\"}}'),
(31, 4, 'ar', '{\"first_column\":{\"title\":\"\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0639\\u0646\\u0627\",\"value\":\"<p><font color=\\\"#ffffff\\\">Rocket LMS \\u0647\\u0648 \\u0646\\u0638\\u0627\\u0645 \\u0625\\u062f\\u0627\\u0631\\u0629 \\u062a\\u0639\\u0644\\u0645 \\u0643\\u0627\\u0645\\u0644 \\u0627\\u0644\\u0645\\u064a\\u0632\\u0627\\u062a \\u064a\\u0633\\u0627\\u0639\\u062f\\u0643 \\u0639\\u0644\\u0649 \\u0625\\u062f\\u0627\\u0631\\u0629 \\u0623\\u0639\\u0645\\u0627\\u0644\\u0643 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a\\u0629 \\u0641\\u064a \\u0639\\u062f\\u0629 \\u0633\\u0627\\u0639\\u0627\\u062a. \\u062a\\u0633\\u0627\\u0639\\u062f \\u0647\\u0630\\u0647 \\u0627\\u0644\\u0645\\u0646\\u0635\\u0629 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646 \\u0639\\u0644\\u0649 \\u0625\\u0646\\u0634\\u0627\\u0621 \\u0645\\u0648\\u0627\\u062f \\u062a\\u0639\\u0644\\u064a\\u0645\\u064a\\u0629 \\u0627\\u062d\\u062a\\u0631\\u0627\\u0641\\u064a\\u0629 \\u0648\\u062a\\u0633\\u0627\\u0639\\u062f \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u062a\\u0639\\u0644\\u0645 \\u0645\\u0646 \\u0623\\u0641\\u0636\\u0644 \\u0627\\u0644\\u0645\\u062f\\u0631\\u0628\\u064a\\u0646.<\\/font><\\/p>\"},\"second_column\":{\"title\":\"\\u0631\\u0648\\u0627\\u0628\\u0637 \\u0625\\u0636\\u0627\\u0641\\u064a\\u0629\",\"value\":\"<p><a href=\\\"\\/login\\\"><span style=\\\"color: #ffffff;\\\">- \\u062a\\u0633\\u062c\\u064a\\u0644 \\u0627\\u0644\\u062f\\u062e\\u0648\\u0644<\\/span><\\/a><\\/p>\\r\\n<p><span style=\\\"color: #ffffff;\\\"><a href=\\\"\\/register\\\"><span style=\\\"color: #ffffff;\\\">- \\u062a\\u0633\\u062c\\u064a\\u0644<\\/span><\\/a><br><\\/span><\\/p>\\r\\n<p><a href=\\\"\\/blog\\\"><span style=\\\"color: #ffffff;\\\">- \\u0645\\u0642\\u0627\\u0644\\u0627\\u062a<\\/span><\\/a><\\/p>\\r\\n<p><a href=\\\"\\/contact\\\"><span style=\\\"color: #ffffff;\\\">- \\u0627\\u062a\\u0635\\u0644 \\u0628\\u0646\\u0627<\\/span><\\/a><\\/p>\\r\\n<p><span style=\\\"color: #ffffff;\\\"><a href=\\\"\\/certificate_validation\\\"><span style=\\\"color: #ffffff;\\\">- \\u0627\\u0644\\u062a\\u062d\\u0642\\u0642 \\u0645\\u0646 \\u0635\\u062d\\u0629 \\u0627\\u0644\\u0634\\u0647\\u0627\\u062f\\u0629<\\/span><\\/a><br><\\/span><\\/p>\\r\\n<p><span style=\\\"color: #ffffff;\\\"><a href=\\\"\\/become_instructor\\\"><span style=\\\"color: #ffffff;\\\">- \\u0623\\u0635\\u0628\\u062d \\u0645\\u062f\\u0631\\u0628\\u0627<\\/span><\\/a><br><\\/span><\\/p>\\r\\n<p><a href=\\\"\\/pages\\/terms\\\"><span style=\\\"color: #ffffff;\\\">- \\u0627\\u0644\\u0634\\u0631\\u0648\\u0637 \\u0648\\u0627\\u0644\\u0642\\u0648\\u0627\\u0639\\u062f<\\/span><\\/a><\\/p>\\r\\n<p><a href=\\\"\\/pages\\/about\\\"><span style=\\\"color: #ffffff;\\\">- \\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0639\\u0646\\u0627<\\/span><\\/a><\\/p>\"},\"third_column\":{\"title\":\"\\u0623\\u0639\\u0645\\u0627\\u0644 \\u0645\\u0645\\u0627\\u062b\\u0644\\u0629\",\"value\":\"<p><a href=\\\"https:\\/\\/www.udemy.com\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- \\u064a\\u0648\\u062f\\u0645\\u064a<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.skillshare.com\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- \\u0627\\u0633\\u06a9\\u06cc\\u0644 \\u0634\\u06cc\\u0631<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.coursera.org\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- \\u0643\\u0631\\u0633 \\u0627\\u064a\\u0631\\u0627<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.linkedin.com\\/learning\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- \\u0644\\u06cc\\u0646\\u062f\\u0627<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.skillsoft.com\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- \\u0627\\u0633\\u0643\\u064a\\u0644 \\u0633\\u0641\\u062a<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.udacity.com\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- \\u0627\\u0648\\u062f\\u0627\\u0633\\u064a\\u062a\\u064a<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.edx.org\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">\\u0627\\u062f\\u0643\\u0633<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.masterclass.com\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- \\u0645\\u0633\\u062a\\u0631 \\u0643\\u0644\\u0633<\\/font><\\/a><br><\\/p>\"},\"forth_column\":{\"title\":\"\\u0642\\u0645 \\u0628\\u0634\\u0631\\u0627\\u0621 Rocket LMS\",\"value\":\"<p><a title=\\\"Notnt\\\" href=\\\"https:\\/\\/codecanyon.net\\\"><img style=\\\"width: 200px;\\\" src=\\\"\\/store\\/1\\/default_images\\/envato.png\\\"><\\/a><\\/p>\"}}'),
(32, 31, 'en', '{\"agora_max_bitrate\":\"2260\",\"agora_min_bitrate\":\"1130\",\"agora_frame_rate\":\"15\",\"timezone_in_register\":\"1\",\"timezone_in_create_webinar\":\"1\"}'),
(33, 32, 'en', '{\"image\":\"\\/store\\/1\\/default_images\\/home_sections_banners\\/instructor_finder_banner.jpg\",\"title\":\"Find the best instructor\",\"description\":\"Looking for an instructor? Find the best instructors according to different parameters like gender, skill level, price, meeting type, rating, etc.\\r\\nFind instructors on the map.\",\"button1\":{\"title\":\"Tutor Finder\",\"link\":\"\\/instructor-finder\\/wizard\"},\"button2\":{\"title\":\"Tutors on Map\",\"link\":\"\\/instructor-finder\"}}'),
(34, 33, 'en', '{\"image\":\"\\/store\\/1\\/default_images\\/home_sections_banners\\/club_points_banner.png\",\"title\":\"Win Club Points\",\"description\":\"Use Rocket LMS and win club points according to different activities.\\r\\nYou will be able to use your club points to get free prizes and courses. Start using the system now and collect points!\",\"button1\":{\"title\":\"Rewards\",\"link\":\"\\/reward-courses\"},\"button2\":{\"title\":\"Points Club\",\"link\":\"\\/panel\\/rewards\"}}'),
(35, 34, 'en', '{\"status\":\"1\",\"exchangeable\":\"1\",\"exchangeable_unit\":\"500\",\"want_more_points_link\":\"\\/\"}'),
(38, 37, 'en', '[]'),
(39, 38, 'en', '{\"courses_capacity\":\"20\",\"courses_count\":\"5\",\"meeting_count\":\"20\"}'),
(40, 39, 'en', '{\"instructors_count\":\"3\",\"students_count\":\"30\",\"courses_capacity\":\"30\",\"courses_count\":\"10\",\"meeting_count\":\"40\"}'),
(41, 40, 'en', '{\"image\":\"\\/store\\/1\\/default_images\\/home_sections_banners\\/become_instructor_banner.jpg\",\"title\":\"Become an instructor\",\"description\":\"Are you interested to be a part of our community?\\r\\nYou can be a part of our community by signing up as an instructor or organization.\",\"button1\":{\"title\":\"Become an Instructor\",\"link\":\"\\/become-instructor\"},\"button2\":{\"title\":\"Registration Packages\",\"link\":\"become-instructor\\/packages\\/\"}}'),
(42, 8, 'ar', '{\"title\":\"\\u0645\\u062a\\u0639\\u0629 \\u0627\\u0644\\u062a\\u0639\\u0644\\u0645 \\u0648\\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645 ...\",\"description\":\"Rocket LMS \\u0639\\u0628\\u0627\\u0631\\u0629 \\u0639\\u0646 \\u0646\\u0638\\u0627\\u0645 \\u0623\\u0633\\u0627\\u0633\\u064a \\u062a\\u0639\\u0644\\u064a\\u0645\\u064a \\u0643\\u0627\\u0645\\u0644 \\u0627\\u0644\\u0645\\u064a\\u0632\\u0627\\u062a \\u064a\\u0633\\u0627\\u0639\\u062f \\u0627\\u0644\\u0645\\u062f\\u0631\\u0628\\u064a\\u0646 \\u0639\\u0644\\u0649 \\u0625\\u0646\\u0634\\u0627\\u0621 \\u0648\\u0646\\u0634\\u0631 \\u062f\\u0648\\u0631\\u0627\\u062a \\u0641\\u064a\\u062f\\u064a\\u0648 \\u0648\\u0641\\u0635\\u0648\\u0644 \\u0645\\u0628\\u0627\\u0634\\u0631\\u0629 \\u0648\\u062f\\u0648\\u0631\\u0627\\u062a \\u0646\\u0635\\u064a\\u0629 \\u0648\\u0643\\u0633\\u0628 \\u0627\\u0644\\u0645\\u0627\\u0644 \\u060c \\u0648\\u064a\\u0633\\u0627\\u0639\\u062f \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u062a\\u0639\\u0644\\u0645 \\u0628\\u0623\\u0633\\u0647\\u0644 \\u0637\\u0631\\u064a\\u0642\\u0629.\",\"hero_background\":\"\\/store\\/1\\/default_images\\/hero_1.jpg\"}'),
(43, 8, 'es', '{\"title\":\"Alegr\\u00eda de aprender y ense\\u00f1ar ...\",\"description\":\"Rocket LMS es una plataforma educativa con todas las funciones que ayuda a los instructores a crear y publicar cursos de video, clases en vivo y cursos de texto y ganar dinero, y ayuda a los estudiantes a aprender de la manera m\\u00e1s f\\u00e1cil.\",\"hero_background\":\"\\/store\\/1\\/default_images\\/hero_1.jpg\"}'),
(44, 15, 'ar', '{\"title\":\"\\u0645\\u062a\\u0639\\u0629 \\u0627\\u0644\\u062a\\u0639\\u0644\\u0645 \\u0648\\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645 ...\",\"description\":\"Rocket LMS \\u0639\\u0628\\u0627\\u0631\\u0629 \\u0639\\u0646 \\u0646\\u0638\\u0627\\u0645 \\u0623\\u0633\\u0627\\u0633\\u064a \\u062a\\u0639\\u0644\\u064a\\u0645\\u064a \\u0643\\u0627\\u0645\\u0644 \\u0627\\u0644\\u0645\\u064a\\u0632\\u0627\\u062a \\u064a\\u0633\\u0627\\u0639\\u062f \\u0627\\u0644\\u0645\\u062f\\u0631\\u0628\\u064a\\u0646 \\u0639\\u0644\\u0649 \\u0625\\u0646\\u0634\\u0627\\u0621 \\u0648\\u0646\\u0634\\u0631 \\u062f\\u0648\\u0631\\u0627\\u062a \\u0641\\u064a\\u062f\\u064a\\u0648 \\u0648\\u0641\\u0635\\u0648\\u0644 \\u0645\\u0628\\u0627\\u0634\\u0631\\u0629 \\u0648\\u062f\\u0648\\u0631\\u0627\\u062a \\u0646\\u0635\\u064a\\u0629 \\u0648\\u0643\\u0633\\u0628 \\u0627\\u0644\\u0645\\u0627\\u0644 \\u060c \\u0648\\u064a\\u0633\\u0627\\u0639\\u062f \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u062a\\u0639\\u0644\\u0645 \\u0628\\u0623\\u0633\\u0647\\u0644 \\u0637\\u0631\\u064a\\u0642\\u0629.\",\"hero_background\":\"\\/assets\\/default\\/img\\/home\\/world.png\",\"hero_vector\":\"\\/store\\/1\\/animated-header.json\",\"has_lottie\":\"1\"}'),
(45, 15, 'es', '{\"title\":\"Alegr\\u00eda de aprender y ense\\u00f1ar ...\",\"description\":\"Rocket LMS es una plataforma educativa con todas las funciones que ayuda a los instructores a crear y publicar cursos de video, clases en vivo y cursos de texto y ganar dinero, y ayuda a los estudiantes a aprender de la manera m\\u00e1s f\\u00e1cil.\",\"hero_background\":\"\\/assets\\/default\\/img\\/home\\/world.png\",\"hero_vector\":\"\\/store\\/1\\/animated-header.json\",\"has_lottie\":\"1\"}'),
(46, 27, 'ar', '{\"link\":\"\\/classes\",\"title\":\"\\u0627\\u0628\\u062f\\u0623 \\u0627\\u0644\\u062a\\u0639\\u0644\\u0645 \\u0641\\u064a \\u0623\\u064a \\u0645\\u0643\\u0627\\u0646 \\u0648\\u0641\\u064a \\u0623\\u064a \\u0648\\u0642\\u062a ...\",\"description\":\"\\u0627\\u0633\\u062a\\u062e\\u062f\\u0645 Rocket LMS \\u0644\\u0644\\u0648\\u0635\\u0648\\u0644 \\u0625\\u0644\\u0649 \\u0645\\u0648\\u0627\\u062f \\u062a\\u0639\\u0644\\u064a\\u0645\\u064a\\u0629 \\u0639\\u0627\\u0644\\u064a\\u0629 \\u0627\\u0644\\u062c\\u0648\\u062f\\u0629 \\u062f\\u0648\\u0646 \\u0623\\u064a \\u0642\\u064a\\u0648\\u062f \\u0648\\u0628\\u0623\\u0633\\u0647\\u0644 \\u0637\\u0631\\u064a\\u0642\\u0629.\",\"background\":\"\\/store\\/1\\/default_images\\/home_video_section.png\"}'),
(47, 27, 'es', '{\"link\":\"\\/classes\",\"title\":\"Empiece a aprender en cualquier lugar, en cualquier momento ...\",\"description\":\"Utilice Rocket LMS para acceder a materiales educativos de alta calidad sin limitaciones de la forma m\\u00e1s sencilla.\",\"background\":\"\\/store\\/1\\/default_images\\/home_video_section.png\"}'),
(48, 29, 'ar', '{\"link\":\"\\/classes?sort=newest\",\"background\":\"\\/store\\/1\\/sidebar-user-ar.png\"}'),
(49, 29, 'es', '{\"link\":\"\\/classes?sort=newest\",\"background\":\"\\/store\\/1\\/sidebar-user-sp.png\"}'),
(50, 4, 'es', '{\"first_column\":{\"title\":\"Sobre Nosotras\",\"value\":\"<p><font color=\\\"#ffffff\\\">Rocket LMS es un sistema de gesti\\u00f3n de aprendizaje con todas las funciones que le ayuda a gestionar su negocio educativo en varias horas. Esta plataforma ayuda a los instructores a crear materiales educativos profesionales y ayuda a los estudiantes a aprender de los mejores instructores.<\\/font><\\/p>\"},\"second_column\":{\"title\":\"Enlaces Adicionales\",\"value\":\"<p><a href=\\\"\\/login\\\"><span style=\\\"color: #ffffff;\\\">- Acceso<\\/span><\\/a><\\/p>\\r\\n<p><span style=\\\"color: #ffffff;\\\"><a href=\\\"\\/register\\\"><span style=\\\"color: #ffffff;\\\">- Registrarse<\\/span><\\/a><br><\\/span><\\/p>\\r\\n<p><a href=\\\"\\/blog\\\"><span style=\\\"color: #ffffff;\\\">- Blog<\\/span><\\/a><\\/p>\\r\\n<p><a href=\\\"\\/contact\\\"><span style=\\\"color: #ffffff;\\\">- Contacta con nosotras<\\/span><\\/a><\\/p>\\r\\n<p><span style=\\\"color: #ffffff;\\\"><a href=\\\"\\/certificate_validation\\\"><span style=\\\"color: #ffffff;\\\">- Validaci\\u00f3n de certificado<\\/span><\\/a><br><\\/span><\\/p>\\r\\n<p><span style=\\\"color: #ffffff;\\\"><a href=\\\"\\/become_instructor\\\"><span style=\\\"color: #ffffff;\\\">- Convi\\u00e9rtete en instructor<\\/span><\\/a><br><\\/span><\\/p>\\r\\n<p><a href=\\\"\\/pages\\/terms\\\"><span style=\\\"color: #ffffff;\\\">- T\\u00e9rminos y reglas<\\/span><\\/a><\\/p>\\r\\n<p><a href=\\\"\\/pages\\/about\\\"><span style=\\\"color: #ffffff;\\\">- Sobre nosotras<\\/span><\\/a><\\/p>\"},\"third_column\":{\"title\":\"Negocios Similares\",\"value\":\"<p><a href=\\\"https:\\/\\/www.udemy.com\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- Udemy<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.skillshare.com\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- Skillshare<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.coursera.org\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- Coursera<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.linkedin.com\\/learning\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- Lynda<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.skillsoft.com\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- Skillsoft<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.udacity.com\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- Udacity<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.edx.org\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- edX<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.masterclass.com\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- Masterclass<\\/font><\\/a><br><\\/p>\"},\"forth_column\":{\"title\":\"Compra Rocket LMS\",\"value\":\"<p><a title=\\\"Notnt\\\" href=\\\"https:\\/\\/codecanyon.net\\\"><img style=\\\"width: 200px;\\\" src=\\\"\\/store\\/1\\/default_images\\/envato.png\\\"><\\/a><\\/p>\"}}'),
(51, 26, 'es', '{\"02nh9a\":{\"title\":\"hogar\",\"link\":\"\\/\",\"order\":\"1\"},\"1cH2kF\":{\"title\":\"Cursos\",\"link\":\"\\/classes?sort=newest\",\"order\":\"2\"},\"VBxDrB\":{\"title\":\"Blog\",\"link\":\"\\/blog\",\"order\":\"4\"},\"7Q6uAZ\":{\"title\":\"Contacto\",\"link\":\"\\/contact\",\"order\":\"5\"}}'),
(52, 26, 'ar', '{\"02nh9a\":{\"title\":\"\\u0627\\u0644\\u0635\\u0641\\u062d\\u0629 \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a\\u0629\",\"link\":\"\\/\",\"order\":\"1\"},\"1cH2kF\":{\"title\":\"\\u0627\\u0644\\u062f\\u0648\\u0631\\u0627\\u062a\",\"link\":\"\\/classes?sort=newest\",\"order\":\"2\"},\"VH2ZWa\":{\"title\":\"\\u0627\\u0644\\u0645\\u062f\\u0648\\u0646\\u0627\\u062a\",\"link\":\"\\/blog\",\"order\":\"4\"},\"7Q6uAZ\":{\"title\":\"\\u0627\\u062a\\u0635\\u0644\",\"link\":\"\\/contact\",\"order\":\"5\"}}'),
(53, 32, 'ar', '{\"image\":\"\\/store\\/1\\/default_images\\/home_sections_banners\\/instructor_finder_banner.jpg\",\"title\":\"\\u0627\\u0639\\u062b\\u0631 \\u0639\\u0644\\u0649 \\u0623\\u0641\\u0636\\u0644 \\u0645\\u062f\\u0631\\u0628\",\"description\":\"\\u062a\\u0628\\u062d\\u062b \\u0639\\u0646 \\u0645\\u062f\\u0631\\u0628\\u061f \\u0627\\u0639\\u062b\\u0631 \\u0639\\u0644\\u0649 \\u0623\\u0641\\u0636\\u0644 \\u0627\\u0644\\u0645\\u062f\\u0631\\u0628\\u064a\\u0646 \\u0648\\u0641\\u0642\\u064b\\u0627 \\u0644\\u0645\\u0639\\u0627\\u064a\\u064a\\u0631 \\u0645\\u062e\\u062a\\u0644\\u0641\\u0629 \\u0645\\u062b\\u0644 \\u0627\\u0644\\u062c\\u0646\\u0633 \\u0648\\u0645\\u0633\\u062a\\u0648\\u0649 \\u0627\\u0644\\u0645\\u0647\\u0627\\u0631\\u0629 \\u0648\\u0627\\u0644\\u0633\\u0639\\u0631 \\u0648\\u0646\\u0648\\u0639 \\u0627\\u0644\\u0627\\u062c\\u062a\\u0645\\u0627\\u0639 \\u0648\\u0627\\u0644\\u062a\\u0642\\u064a\\u064a\\u0645 \\u0648\\u0645\\u0627 \\u0625\\u0644\\u0649 \\u0630\\u0644\\u0643.\\r\\n\\u0627\\u0628\\u062d\\u062b \\u0639\\u0646 \\u0645\\u062f\\u0631\\u0628\\u064a\\u0646 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u062e\\u0631\\u064a\\u0637\\u0629.\",\"button1\":{\"title\":\"\\u0627\\u0644\\u0628\\u0627\\u062d\\u062b \\u0639\\u0646 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\",\"link\":\"\\/instructor-finder\\/wizard\"},\"button2\":{\"title\":\"\\u0645\\u062f\\u0631\\u0633\\u0648\\u0646 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u062e\\u0631\\u064a\\u0637\\u0629\",\"link\":\"\\/instructor-finder\"}}'),
(54, 32, 'es', '{\"image\":\"\\/store\\/1\\/default_images\\/home_sections_banners\\/instructor_finder_banner.jpg\",\"title\":\"Encuentra la mejor instructora\",\"description\":\"\\u00bfBuscas un instructor? Encuentre los mejores instructores seg\\u00fan diferentes par\\u00e1metros como g\\u00e9nero, nivel de habilidad, precio, tipo de reuni\\u00f3n, calificaci\\u00f3n, etc.\\r\\nEncuentra instructores en el mapa.\",\"button1\":{\"title\":\"Buscadora de tutores\",\"link\":\"\\/instructor-finder\\/wizard\"},\"button2\":{\"title\":\"Tutores en el mapa\",\"link\":\"\\/instructor-finder\"}}'),
(55, 33, 'ar', '{\"image\":\"\\/store\\/1\\/default_images\\/home_sections_banners\\/club_points_banner.png\",\"title\":\"\\u0627\\u0631\\u0628\\u062d \\u0646\\u0642\\u0627\\u0637 \\u0627\\u0644\\u0646\\u0627\\u062f\\u064a\",\"description\":\"\\u0627\\u0633\\u062a\\u062e\\u062f\\u0645 Rocket LMS \\u0648\\u0627\\u0631\\u0628\\u062d \\u0646\\u0642\\u0627\\u0637 \\u0627\\u0644\\u0646\\u0627\\u062f\\u064a \\u0648\\u0641\\u0642\\u064b\\u0627 \\u0644\\u0644\\u0623\\u0646\\u0634\\u0637\\u0629 \\u0627\\u0644\\u0645\\u062e\\u062a\\u0644\\u0641\\u0629.\\r\\n\\u0633\\u062a\\u062a\\u0645\\u0643\\u0646 \\u0645\\u0646 \\u0627\\u0633\\u062a\\u062e\\u062f\\u0627\\u0645 \\u0646\\u0642\\u0627\\u0637 \\u0627\\u0644\\u0646\\u0627\\u062f\\u064a \\u0627\\u0644\\u062e\\u0627\\u0635\\u0629 \\u0628\\u0643 \\u0644\\u0644\\u062d\\u0635\\u0648\\u0644 \\u0639\\u0644\\u0649 \\u062c\\u0648\\u0627\\u0626\\u0632 \\u0648\\u062f\\u0648\\u0631\\u0627\\u062a \\u0645\\u062c\\u0627\\u0646\\u064a\\u0629. \\u0627\\u0628\\u062f\\u0623 \\u0641\\u064a \\u0627\\u0633\\u062a\\u062e\\u062f\\u0627\\u0645 \\u0627\\u0644\\u0646\\u0638\\u0627\\u0645 \\u0627\\u0644\\u0622\\u0646 \\u0648\\u0627\\u062c\\u0645\\u0639 \\u0627\\u0644\\u0646\\u0642\\u0627\\u0637!\",\"button1\":{\"title\":\"\\u0627\\u0644\\u0645\\u0643\\u0627\\u0641\\u0622\\u062a\",\"link\":\"\\/reward-courses\"},\"button2\":{\"title\":\"\\u0646\\u0627\\u062f\\u064a \\u0627\\u0644\\u0646\\u0642\\u0627\\u0637\",\"link\":\"\\/panel\\/rewards\"}}'),
(56, 33, 'es', '{\"image\":\"\\/store\\/1\\/default_images\\/home_sections_banners\\/club_points_banner.png\",\"title\":\"Gana puntos del club\",\"description\":\"Utilice Rocket LMS y gane puntos del club seg\\u00fan diferentes actividades.\\r\\nPodr\\u00e1s utilizar tus puntos del club para conseguir premios y cursos gratuitos. \\u00a1Comience a usar el sistema ahora y acumule puntos!\",\"button1\":{\"title\":\"Recompensas\",\"link\":\"\\/reward-courses\"},\"button2\":{\"title\":\"club de puntos\",\"link\":\"\\/panel\\/rewards\"}}'),
(57, 40, 'ar', '{\"image\":\"\\/store\\/1\\/default_images\\/home_sections_banners\\/become_instructor_banner.jpg\",\"title\":\"\\u0643\\u0646 \\u0645\\u062f\\u0631\\u0628\\u064b\\u0627\",\"description\":\"\\u0647\\u0644 \\u0623\\u0646\\u062a \\u0645\\u0647\\u062a\\u0645 \\u0628\\u0623\\u0646 \\u062a\\u0643\\u0648\\u0646 \\u062c\\u0632\\u0621\\u064b\\u0627 \\u0645\\u0646 \\u0645\\u062c\\u062a\\u0645\\u0639\\u0646\\u0627\\u061f\\r\\n\\u064a\\u0645\\u0643\\u0646\\u0643 \\u0623\\u0646 \\u062a\\u0643\\u0648\\u0646 \\u062c\\u0632\\u0621\\u064b\\u0627 \\u0645\\u0646 \\u0645\\u062c\\u062a\\u0645\\u0639\\u0646\\u0627 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0627\\u0644\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0643\\u0645\\u062f\\u0631\\u0628 \\u0623\\u0648 \\u0645\\u0646\\u0638\\u0645\\u0629.\",\"button1\":{\"title\":\"\\u0643\\u0646 \\u0645\\u062f\\u0631\\u0633\\u064b\\u0627\",\"link\":\"\\/become-instructor\"},\"button2\":{\"title\":\"\\u062d\\u0632\\u0645 \\u0627\\u0644\\u062a\\u0633\\u062c\\u064a\\u0644\",\"link\":\"become-instructor\\/packages\\/\"}}'),
(58, 40, 'es', '{\"image\":\"\\/store\\/1\\/default_images\\/home_sections_banners\\/become_instructor_banner.jpg\",\"title\":\"Convi\\u00e9rtete en instructora\",\"description\":\"\\u00bfEst\\u00e1s interesado en ser parte de nuestra comunidad?\\r\\nPuedes ser parte de nuestra comunidad registr\\u00e1ndote como instructor u organizaci\\u00f3n.\",\"button1\":{\"title\":\"Convi\\u00e9rtete en instructora\",\"link\":\"\\/become-instructor\"},\"button2\":{\"title\":\"Paquetes de registro\",\"link\":\"become-instructor\\/packages\\/\"}}');

-- --------------------------------------------------------

--
-- Table structure for table `special_offers`
--

DROP TABLE IF EXISTS `special_offers`;
CREATE TABLE IF NOT EXISTS `special_offers` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percent` int(10) UNSIGNED NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  `from_date` int(10) UNSIGNED NOT NULL,
  `to_date` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `special_offers_creator_id_foreign` (`creator_id`) USING BTREE,
  KEY `special_offers_webinar_id_foreign` (`webinar_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `special_offers`
--

INSERT INTO `special_offers` (`id`, `creator_id`, `webinar_id`, `name`, `percent`, `status`, `created_at`, `from_date`, `to_date`) VALUES
(13, 3, 2001, 'Discount Title', 20, 'active', 1625301833, 1625081400, 1688232600);

-- --------------------------------------------------------

--
-- Table structure for table `subscribes`
--

DROP TABLE IF EXISTS `subscribes`;
CREATE TABLE IF NOT EXISTS `subscribes` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `usable_count` int(10) UNSIGNED NOT NULL,
  `days` int(10) UNSIGNED NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_popular` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `subscribes`
--

INSERT INTO `subscribes` (`id`, `usable_count`, `days`, `price`, `icon`, `is_popular`, `created_at`) VALUES
(3, 100, 15, 20, '/store/1/default_images/subscribe_packages/bronze.png', 0, 1635441672),
(4, 1000, 30, 100, '/store/1/default_images/subscribe_packages/gold.png', 1, 1635442074),
(5, 400, 30, 50, '/store/1/default_images/subscribe_packages/silver.png', 0, 1635442132);

-- --------------------------------------------------------

--
-- Table structure for table `subscribe_translations`
--

DROP TABLE IF EXISTS `subscribe_translations`;
CREATE TABLE IF NOT EXISTS `subscribe_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `subscribe_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subscribe_translations_subscribe_id_foreign` (`subscribe_id`),
  KEY `subscribe_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribe_translations`
--

INSERT INTO `subscribe_translations` (`id`, `subscribe_id`, `locale`, `title`, `description`) VALUES
(1, 3, 'en', 'Bronze', 'Suggested for personal usage'),
(2, 4, 'en', 'Gold', 'Suggested for big businesses'),
(3, 5, 'en', 'Silver', 'Suggested for small businesses'),
(4, 3, 'ar', 'برونزية', 'اقترح للاستخدام الشخصي'),
(5, 3, 'es', 'Bronce', 'Sugerido para uso personal'),
(6, 4, 'es', 'Oro', 'Sugerido para grandes empresas'),
(7, 4, 'ar', 'ذهب', 'مقترح للشركات الكبيرة'),
(8, 5, 'ar', 'فضة', 'اقترح للشركات الصغيرة'),
(9, 5, 'es', 'Plata', 'Sugerido para pequeñas empresas');

-- --------------------------------------------------------

--
-- Table structure for table `subscribe_uses`
--

DROP TABLE IF EXISTS `subscribe_uses`;
CREATE TABLE IF NOT EXISTS `subscribe_uses` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `subscribe_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `sale_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `subscribe_uses_user_id_foreign` (`user_id`) USING BTREE,
  KEY `subscribe_uses_webinar_id_foreign` (`webinar_id`) USING BTREE,
  KEY `subscribe_uses_subscribe_id_foreign` (`subscribe_id`) USING BTREE,
  KEY `subscribe_uses_sale_id_foreign` (`sale_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `supports`
--

DROP TABLE IF EXISTS `supports`;
CREATE TABLE IF NOT EXISTS `supports` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED DEFAULT NULL,
  `department_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('open','close','replied','supporter_replied') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `created_at` int(10) UNSIGNED DEFAULT NULL,
  `updated_at` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `supports_user_id_foreign` (`user_id`) USING BTREE,
  KEY `supports_webinar_id_foreign` (`webinar_id`) USING BTREE,
  KEY `supports_department_id_foreign` (`department_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `support_conversations`
--

DROP TABLE IF EXISTS `support_conversations`;
CREATE TABLE IF NOT EXISTS `support_conversations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `support_id` int(10) UNSIGNED NOT NULL,
  `supporter_id` int(10) UNSIGNED DEFAULT NULL,
  `sender_id` int(10) UNSIGNED DEFAULT NULL,
  `attach` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `support_conversations_support_id_foreign` (`support_id`) USING BTREE,
  KEY `support_conversations_sender_id_foreign` (`sender_id`) USING BTREE,
  KEY `support_conversations_supporter_id_foreign` (`supporter_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `support_departments`
--

DROP TABLE IF EXISTS `support_departments`;
CREATE TABLE IF NOT EXISTS `support_departments` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `support_departments`
--

INSERT INTO `support_departments` (`id`, `created_at`) VALUES
(3, 1635445486);

-- --------------------------------------------------------

--
-- Table structure for table `support_department_translations`
--

DROP TABLE IF EXISTS `support_department_translations`;
CREATE TABLE IF NOT EXISTS `support_department_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `support_department_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `support_department_id` (`support_department_id`),
  KEY `support_department_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `support_department_translations`
--

INSERT INTO `support_department_translations` (`id`, `support_department_id`, `locale`, `title`) VALUES
(2, 3, 'en', 'Content'),
(6, 3, 'es', 'Contenido'),
(7, 3, 'ar', 'المحتوى');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `tags_webinar_id_foreign` (`webinar_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6605 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `title`, `webinar_id`) VALUES
(6479, 'linux', 1996),
(6480, 'os', 1996),
(6481, 'network', 1996),
(6572, 'Angular', 2001),
(6573, 'AngularJS', 2001),
(6574, 'Javascript', 2001),
(6602, 'Listening', 2003),
(6603, 'Listen', 2003),
(6604, 'Listener', 2003);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
CREATE TABLE IF NOT EXISTS `testimonials` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `status` enum('active','disable') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'disable',
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `user_avatar`, `rate`, `status`, `created_at`) VALUES
(2, '/store/1/default_images/testimonials/profile_picture (28).jpg', '5', 'active', 1606841889),
(3, '/store/1/default_images/testimonials/profile_picture (50).jpg', '5', 'active', 1606841910),
(4, '/store/1/default_images/testimonials/profile_picture (38).jpg', '5', 'active', 1606841929),
(5, '/store/1/default_images/testimonials/profile_picture (20).jpg', '5', 'active', 1606841946),
(6, '/store/1/default_images/testimonials/profile_picture (52).jpg', '5', 'active', 1606842000);

-- --------------------------------------------------------

--
-- Table structure for table `testimonial_translations`
--

DROP TABLE IF EXISTS `testimonial_translations`;
CREATE TABLE IF NOT EXISTS `testimonial_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `testimonial_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_bio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `testimonial_translations_testimonial_id_foreign` (`testimonial_id`),
  KEY `testimonial_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonial_translations`
--

INSERT INTO `testimonial_translations` (`id`, `testimonial_id`, `locale`, `user_name`, `user_bio`, `comment`) VALUES
(1, 2, 'en', 'Ryan Newman', 'Data Analyst at Microsoft', '\"We\'ve used Rocket LMS for the last 2  years. Thanks for the great service.\"'),
(2, 3, 'en', 'Megan Hayward', 'System Administrator at Amazon', '\"We\'re loving it. Rocket LMS is both perfect    and highly adaptable.\"'),
(3, 4, 'en', 'Natasha Hope', 'IT Technician at IBM', '\"I am really satisfied with my Rocket LMS. It\'s the perfect solution for our business.\"'),
(4, 5, 'en', 'Charles Dale', 'Computer Engineer at Oracle', '\"I am so pleased with this product. I couldn\'t have asked for more than this.\"'),
(5, 6, 'en', 'David Patterson', 'Network Technician at Cisco', '\"Rocket LMS impressed me on multiple           levels.\"'),
(6, 2, 'ar', 'Abdul Jabbaar el-Kaleel', 'محلل بيانات في مايكروسوفت', '\"لقد استخدمنا Rocket LMS خلال العامين الماضيين. شكرًا على الخدمة الرائعة.\"'),
(7, 2, 'es', 'Ryan Newman', 'Analista de datos en Microsoft', '\"Hemos utilizado Rocket LMS durante los últimos 2 años. Gracias por el gran servicio\"'),
(8, 3, 'es', 'Megan Hayward', 'Administradora de sistemas en Amazon', '\"Nos encanta. Rocket LMS es perfecto y muy adaptable\".'),
(9, 3, 'ar', 'Khaleela el-Alam', 'مسؤول النظام في أمازون', '\"نحن نحبها. Rocket LMS مثالي وقابل للتكيف بشكل كبير.\"'),
(10, 4, 'es', 'Natasha Hope', 'Técnico de TI en IBM', '\"Estoy realmente satisfecho con mi Rocket LMS. Es la solución perfecta para nuestro negocio\"'),
(11, 4, 'ar', 'Sakeena el-Shad', 'فني تكنولوجيا المعلومات في شركة آی بی ام', '\"أنا راضٍ حقًا عن Rocket LMS. إنه الحل الأمثل لأعمالنا.\"'),
(12, 5, 'es', 'Charles Dale', 'Ingeniera informatica en oracle', '\"Estoy muy satisfecho con este producto. No podría haber pedido más que esto\"'),
(13, 5, 'ar', 'Rifat el-Younis', 'مهندس كمبيوتر', '\"أنا مسرور جدًا بهذا المنتج. لم أستطع طلب أكثر من هذا.\"'),
(14, 6, 'es', 'David Patterson', 'Técnico de redes en Cisco', '\"Rocket LMS me impresionó en varios niveles\"'),
(15, 6, 'ar', 'Ahmed al-Mansouri', 'فني شبكات في سيسكو', '\"لقد أبهرني صاروخ Rocket LMS على مستويات متعددة.\"');

-- --------------------------------------------------------

--
-- Table structure for table `text_lessons`
--

DROP TABLE IF EXISTS `text_lessons`;
CREATE TABLE IF NOT EXISTS `text_lessons` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `chapter_id` int(10) UNSIGNED DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `study_time` int(10) UNSIGNED DEFAULT NULL,
  `accessibility` enum('free','paid') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'free',
  `order` int(10) UNSIGNED DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` int(10) UNSIGNED NOT NULL,
  `updated_at` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `text_lessons_creator_id_foreign` (`creator_id`) USING BTREE,
  KEY `text_lessons_webinar_id_foreign` (`webinar_id`) USING BTREE,
  KEY `text_lessons_chapter_id_foreign` (`chapter_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `text_lessons`
--

INSERT INTO `text_lessons` (`id`, `creator_id`, `webinar_id`, `chapter_id`, `image`, `study_time`, `accessibility`, `order`, `status`, `created_at`, `updated_at`) VALUES
(17, 3, 2016, 36, '/store/1/risk1.jpg', 10, 'free', 1, 'active', 1660918310, NULL),
(18, 3, 2017, 38, '/store/1/risk1.jpg', 10, 'free', 1, 'active', 1660919877, NULL),
(19, 3, 2017, 38, '/store/1/fav-lms.png', 10, 'free', 2, 'active', 1660920086, NULL),
(20, 3, 2017, 38, '/store/1/risk1.jpg', 10, 'free', 3, 'active', 1660922033, NULL),
(21, 3, 2019, 42, '/store/1/abulogo.jpg', 5, 'free', 1, 'active', 1660929529, NULL),
(22, 3, 2019, 42, '/store/1/abulogo.jpg', 10, 'free', 2, 'active', 1660929616, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `text_lessons_attachments`
--

DROP TABLE IF EXISTS `text_lessons_attachments`;
CREATE TABLE IF NOT EXISTS `text_lessons_attachments` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `text_lesson_id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `text_lessons_attachments_text_lesson_id_foreign` (`text_lesson_id`) USING BTREE,
  KEY `text_lessons_attachments_file_id_foreign` (`file_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `text_lesson_translations`
--

DROP TABLE IF EXISTS `text_lesson_translations`;
CREATE TABLE IF NOT EXISTS `text_lesson_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `text_lesson_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `text_lesson_id` (`text_lesson_id`),
  KEY `text_lesson_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `text_lesson_translations`
--

INSERT INTO `text_lesson_translations` (`id`, `text_lesson_id`, `locale`, `title`, `summary`, `content`) VALUES
(4, 17, 'en', 'Introduction', 'Its an introduction', '<p>The text Problems between parents and children are common and timeless. If you \r\nare looking to improve your relationship with your parents, you are not \r\nalone. Developing a better relationship with your parents involves \r\nassessing the underlying cause of the issues, fostering a more mature \r\nrelationship with them, and focusing on changing how you think and \r\nbehave. If you currently have a negative relationship with your parents,\r\n or a so-so relationship, but desire to improve it, there are a number \r\nof steps that can be taken to make that happen.</p>'),
(5, 18, 'en', 'Introduction', 'Introduction of Chapters', '<p>\r\n</p><p><u><b>Text Course</b></u></p><p>Image:  Stop-Your-Parents-from-Fighting-Step-2-Version-3  |    \r\nBy:Wikivisual0\r\n\r\n- /images/a/a6/Stop-Your-Parents-from-Fighting-Step-2-Version-3.jpg  - \r\n licensed by Creative Commons - cc-by-sa-nc-3.0-self ---- \r\ncreativecommons.org/licenses/by-nc-sa/3.0/us/ -Last updated:15:40, 21 \r\nMarch 2015</p>'),
(6, 19, 'en', 'Body', 'Body of the study', '<p>\r\n<u><b>Body of the study</b></u></p><p>Image:  Stop-Your-Parents-from-Fighting-Step-2-Version-3  |    \r\nBy:Wikivisual0\r\n\r\n- /images/a/a6/Stop-Your-Parents-from-Fighting-Step-2-Version-3.jpg  - \r\n licensed by Creative Commons - cc-by-sa-nc-3.0-self ---- \r\ncreativecommons.org/licenses/by-nc-sa/3.0/us/ -Last updated:15:40, 21 \r\nMarch 2015</p>'),
(7, 20, 'en', 'A New Text Course 3rd', 'Summary of the content', '<p>The content after edit</p><p>Edited the page<br></p>'),
(8, 21, 'en', 'Introduct to computing', 'Com', '<p><b>Subscribing</b></p><p><b> </b>to my channel is greatly appreciated!!\r\n\r\nProblems between parents and children are common and timeless. If you \r\nare looking to improve your relationship with your parents, you are not \r\nalone. Developing a better relationship with your parents involves \r\nassessing the underlying cause of the issues, fostering a more mature \r\nrelationship with them, and focusing on changing how you think and \r\nbehave. If you currently have a negative relationship with your parents,\r\n or a so-so relationship, but desire to improve it, there are a number \r\nof steps that can be taken to make that happen.\r\n\r\n---------------------------------------------------- Image \r\nAttributions-------------------------------------------------------\r\n\r\nImage:  Stop-Your-Parents-from-Fighting-Step-2-Version-3  |    \r\nBy:Wikivisual0\r\n\r\n- /images/a/a6/Stop-Your-Parents-from-Fighting-Step-2-Version-3.jpg  - \r\n licensed by Creative Commons - cc-by-sa-nc-3.0-self ---- \r\ncreativecommons.org/licenses/by-nc-sa/3.0/us/ -Last updated:15:40, 21 \r\nMarch 2015\r\n\r\n-----------------------------------------------------------------------------------------------\r\n\r\nImage:  Please-Your-Parents-Step-8  |    By:Wikivisual0\r\n\r\n- /images/6/6f/Please-Your-Parents-Step-8.jpg  -  licensed by Creative \r\nCommons - cc-by-sa-nc-3.0-self ---- \r\ncreativecommons.org/licenses/by-nc-sa/3.0/us/ -Last updated:15:06, 22 \r\nOctober 2015\r\n\r\n-----------------------------------------------------------------------------------------------\r\n\r\nImage:  Stop-Your-Parents-from-Fighting-Step-22  |    By:Wikivisual0\r\n\r\n- /images/4/4e/Stop-Your-Parents-from-Fighting-Step-22.jpg  -  licensed\r\n by Creative Commons - cc-by-sa-nc-3.0-self ---- \r\ncreativecommons.org/licenses/by-nc-sa/3.0/us/ -Last updated:15:40, 21 \r\nMarch 2015\r\n\r\n-----------------------------------------------------------------------------------------------\r\n\r\nImage:  Stop-Your-Parents-from-Fighting-Step-12  |    By:Wikivisual0\r\n\r\n- /images/e/ef/Stop-Your-Parents-from-Fighting-Step-12.jpg  -  licensed\r\n by Creative Commons - cc-by-sa-nc-3.0-self ---- \r\ncreativecommons.org/licenses/by-nc-sa/3.0/us/ -Last updated:15:40, 21 \r\nMarch 2015\r\n\r\n-----------------------------------------------------------------------------------------</p>'),
(9, 22, 'en', 'Another Part of Chapter 1', 'NNN', '<p><b>Section 2</b><br></p><p>Subscribing </p><p>to my channel is greatly appreciated!!\r\n\r\nProblems between parents and children are common and timeless. If you \r\nare looking to improve your relationship with your parents, you are not \r\nalone. Developing a better relationship with your parents involves \r\nassessing the underlying cause of the issues, fostering a more mature \r\nrelationship with them, and focusing on changing how you think and \r\nbehave. If you currently have a negative relationship with your parents,\r\n or a so-so relationship, but desire to improve it, there are a number \r\nof steps that can be taken to make that happen.\r\n\r\n---------------------------------------------------- Image \r\nAttributions-------------------------------------------------------\r\n\r\nImage:  Stop-Your-Parents-from-Fighting-Step-2-Version-3  |    \r\nBy:Wikivisual0\r\n\r\n- /images/a/a6/Stop-Your-Parents-from-Fighting-Step-2-Version-3.jpg  - \r\n licensed by Creative Commons - cc-by-sa-nc-3.0-self ---- \r\ncreativecommons.org/licenses/by-nc-sa/3.0/us/ -Last updated:15:40, 21 \r\nMarch 2015\r\n\r\n-----------------------------------------------------------------------------------------------\r\n\r\nImage:  Please-Your-Parents-Step-8  |    By:Wikivisual0\r\n\r\n- /images/6/6f/Please-Your-Parents-Step-8.jpg  -  licensed by Creative \r\nCommons - cc-by-sa-nc-3.0-self ---- \r\ncreativecommons.org/licenses/by-nc-sa/3.0/us/ -Last updated:15:06, 22 \r\nOctober 2015\r\n\r\n-----------------------------------------------------------------------------------------------\r\n\r\nImage:  Stop-Your-Parents-from-Fighting-Step-22  |    By:Wikivisual0\r\n\r\n- /images/4/4e/Stop-Your-Parents-from-Fighting-Step-22.jpg  -  licensed\r\n by Creative Commons - cc-by-sa-nc-3.0-self ---- \r\ncreativecommons.org/licenses/by-nc-sa/3.0/us/ -Last updated:15:40, 21 \r\nMarch 2015\r\n\r\n-----------------------------------------------------------------------------------------------\r\n\r\nImage:  Stop-Your-Parents-from-Fighting-Step-12  |    By:Wikivisual0\r\n\r\n- /images/e/ef/Stop-Your-Parents-from-Fighting-Step-12.jpg  -  licensed\r\n by Creative Commons - cc-by-sa-nc-3.0-self ---- \r\ncreativecommons.org/licenses/by-nc-sa/3.0/us/ -Last updated:15:40, 21 \r\nMarch 2015\r\n\r\n-----------------------------------------------------------------------------------------</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
CREATE TABLE IF NOT EXISTS `tickets` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `start_date` int(10) UNSIGNED DEFAULT NULL,
  `end_date` int(10) UNSIGNED DEFAULT NULL,
  `discount` int(11) NOT NULL,
  `capacity` int(11) DEFAULT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `tickets_webinar_id_foreign` (`webinar_id`) USING BTREE,
  KEY `tickets_creator_id_foreign` (`creator_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `creator_id`, `webinar_id`, `start_date`, `end_date`, `discount`, `capacity`, `order`, `created_at`, `updated_at`, `deleted_at`) VALUES
(31, 864, 2003, 1625081400, 1690831800, 25, 5, NULL, 1625299801, NULL, NULL),
(32, 864, 2036, 1661472000, 1661472000, 10, 10, NULL, 1661532043, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ticket_translations`
--

DROP TABLE IF EXISTS `ticket_translations`;
CREATE TABLE IF NOT EXISTS `ticket_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ticket_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ticket_translations_ticket_id_foreign` (`ticket_id`),
  KEY `ticket_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticket_translations`
--

INSERT INTO `ticket_translations` (`id`, `ticket_id`, `locale`, `title`) VALUES
(4, 31, 'en', 'First Price Plan'),
(5, 32, 'en', 'Basic');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_users`
--

DROP TABLE IF EXISTS `ticket_users`;
CREATE TABLE IF NOT EXISTS `ticket_users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ticket_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `ticket_users_ticket_id_foreign` (`ticket_id`) USING BTREE,
  KEY `ticket_users_user_id_foreign` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `trend_categories`
--

DROP TABLE IF EXISTS `trend_categories`;
CREATE TABLE IF NOT EXISTS `trend_categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(10) UNSIGNED NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `trend_categories_category_id_index` (`category_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `trend_categories`
--

INSERT INTO `trend_categories` (`id`, `category_id`, `icon`, `color`, `created_at`) VALUES
(1, 609, '/store/1/default_images/trend_categories_icons/briefcase.png', '#7367f0', 1605117336),
(2, 611, '/store/1/default_images/trend_categories_icons/bulb.png', '#ad82e0', 1605117336),
(5, 602, '/store/1/default_images/trend_categories_icons/connection.png', '#ea5455', 1605117336),
(6, 520, '/store/1/default_images/trend_categories_icons/palette.png', '#45c0f9', 1605117336);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `full_name` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `organ_id` int(11) DEFAULT NULL,
  `mobile` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT 0,
  `financial_approval` tinyint(1) NOT NULL DEFAULT 0,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `headline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `province_id` int(10) UNSIGNED DEFAULT NULL,
  `city_id` int(10) UNSIGNED DEFAULT NULL,
  `district_id` int(10) UNSIGNED DEFAULT NULL,
  `location` point DEFAULT NULL,
  `level_of_training` bit(3) DEFAULT NULL,
  `meeting_type` enum('all','in_person','online') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all',
  `status` enum('active','pending','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timezone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `newsletter` tinyint(1) NOT NULL DEFAULT 0,
  `public_message` tinyint(1) NOT NULL DEFAULT 0,
  `account_type` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iban` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identity_scan` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certificate` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commission` int(10) UNSIGNED DEFAULT NULL,
  `affiliate` tinyint(1) NOT NULL DEFAULT 1,
  `ban` tinyint(1) NOT NULL DEFAULT 0,
  `ban_start_at` int(10) UNSIGNED DEFAULT NULL,
  `ban_end_at` int(10) UNSIGNED DEFAULT NULL,
  `offline` tinyint(1) NOT NULL DEFAULT 0,
  `offline_message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `users_email_unique` (`email`) USING BTREE,
  UNIQUE KEY `users_mobile_unique` (`mobile`) USING BTREE,
  KEY `users_country_id_foreign` (`country_id`) USING BTREE,
  KEY `users_province_id_foreign` (`province_id`) USING BTREE,
  KEY `users_city_id_foreign` (`city_id`) USING BTREE,
  KEY `users_district_id_foreign` (`district_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1038 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `role_name`, `role_id`, `organ_id`, `mobile`, `email`, `bio`, `password`, `google_id`, `facebook_id`, `remember_token`, `verified`, `financial_approval`, `avatar`, `cover_img`, `headline`, `about`, `address`, `country_id`, `province_id`, `city_id`, `district_id`, `location`, `level_of_training`, `meeting_type`, `status`, `language`, `timezone`, `newsletter`, `public_message`, `account_type`, `iban`, `account_id`, `identity_scan`, `certificate`, `commission`, `affiliate`, `ban`, `ban_start_at`, `ban_end_at`, `offline`, `offline_message`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'admin', 2, NULL, '00000000', 'admin@cdrmds.org', 'Senior software developer', '$2y$10$nSUg1Z2rltHGecudC6dEEeRoqfIhlHi8WaAFFQs57oyFtpkvvQufW', NULL, NULL, 'OiyyLyKgwssgV2ygJF5fsfHHLqY7WAUMgM6lvzjbBtLwzs04xjonCL9xi1UQ', 1, 0, '/store/1/default_images/logo-new.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 'EN', 'America/New_York', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, NULL, 1597826952, 1597826952, NULL),
(3, 'Abdulaziz Muhammad', 'teacher', 4, 864, '+12085141324', 'abdulaziz@cdrmds.org', 'Master Certified Coach', '$2y$10$NPgvpOF52CHJuSKbh9gG8.7IvjjFd0HklLy5elWySZ58m.9IHpM2K', NULL, NULL, 'Xr4zhhoQpDZU1NbMVh0h7iXy390lCDz8pt4NYTUNvsncEqn9Z8PoTKSxKB96', 0, 1, '/store/3/avatar/62fb9a5275549.png', '/store/3/Learn and Understand AngularJS_c.png', NULL, 'James Kong is a sound and communication expert. His vision is for a world that listens consciously and speaks powerfully.\r\n\r\nJulian is author of the books How to be Heard: Secrets for Powerful Speaking and Listening and Sound Business. \r\n\r\nHis five TED talks about sound and communication have been watched over 90 million times and his latest talk, How to speak so that people want to listen, is the sixth most watched TED talk of all time. \r\n\r\nJames is a media commentator on speaking and listening skills, and has been featured by the likes of TIME Magazine, The Economist, The BBC, and The Times. \r\n\r\nJames\'s company, The Sound Agency, works with major brands worldwide to improve the way they sound. Their pioneering methods have improved customer happiness, raised sales, and even lowered crime rates, and their work has made headlines internationally.', '638153, Tamil Nadu, Modakkurichi, Elumathur', 20, 33, 34, 42, 0x000000000101000000c96b207dbda438401b0620262a544740, b'110', 'all', 'active', 'EN', 'America/New_York', 0, 0, 'State Bank of India', 'IN74BARC20032649126989', '5234903165288', '/store/3/passport.jpg', '', NULL, 1, 0, NULL, NULL, 1, 'I will not be available for 2 weeks until  end of January due to a business trip.', 1597826952, 1597826952, NULL),
(864, 'Ahmadu Bello University CDRMDS', 'organization', 3, NULL, '+12025550131', 'abuinfo@cdrmds.org', 'ABU CDRMDS', '$2y$10$ZV92q8k.ZK1zGsNa0ICwe.QKtbKmIFQnkjLqWhORbg.jbBWvMmXgm', NULL, NULL, NULL, 0, 0, '/store/864/avatar/62fba96e5d52c.png', '/store/864/abulogo.jpg', NULL, 'Learn creative skills, from absolute beginner to advanced mastery. \r\n\r\nVideo School exists to help you succeed in life. Each course has been hand-tailored to teach a specific skill from photography and video to art, design and business.\r\n\r\nWhether you’re trying to learn a new skill from scratch, or want to refresh your memory on something you’ve learned in the past, you’ve come to the right place.\r\n\r\nEducation makes the world a better place. Make your world better with new skills!\r\n\r\nOur courses can be watched 24/7 wherever you are. Most are fully downloadable so you can take them with you.\r\n\r\nAll courses have a 30-day money-back guarantee so that you can check it out, make sure it’s the right course for you, and get a refund if it’s not!', NULL, 16, 22, 23, 25, 0x000000000101000000facb2c14066848400100008026fc0140, b'100', 'all', 'active', 'EN', 'America/New_York', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, NULL, 1604509713, NULL, NULL),
(1015, 'Aminu Ibrahim', 'teacher', 4, 867, '+61491170156', 'instructor@cdrmds.org', 'System Administrator at Amazon', '$2y$10$8.jgtS/cg8L6HfuuBgWnkeg49r0LiY7kofR6eiY9b.mx747i82n.u', NULL, NULL, 'e1VphUocvRw5kSlBQmT1r0ErB6MFLw2ZsOCxe07oVfKlAqWONl5QBG7z39TV', 1, 1, '/store/1015/avatar/617a4f2fb8a6d.png', '/store/1015/6.jpg', NULL, 'Robert started his career as a Unix and Linux System Engineer in 1999. Since that time he has utilized his Linux skills at companies such as Xerox, UPS, Hewlett-Packard, and Amazon.com. Additionally, he has acted as a technical consultant and independent contractor for small businesses and Fortune 500 companies.\r\n\r\nRobert has professional experience with CentOS, RedHat Enterprise Linux, SUSE Linux Enterprise Server, and Ubuntu. He has used several Linux distributions on personal projects including Debian, Slackware, CrunchBang, and others. In addition to Linux, Jason has experience supporting proprietary Unix operating systems including AIX, HP-UX, and Solaris.\r\n\r\nHe enjoys teaching others how to use and exploit the power of the Linux operating system. He is also the author of the books \"Linux for Beginners\" and \"Command Line Kung Fu.\"', 'Qatar ,Al Wakrah ,27904 Hilpert Knoll', 18, 46, 49, 55, 0x0000000001010000008087fa84a95b4440ee7007d9bc8052c0, b'110', 'all', 'active', 'EN', 'America/New_York', 0, 0, 'Qatar National Bank', 'QR55BDHC20040182623775', '6342781654', '/store/1015/passport.jpg', '/store/1015/certificate_validation.jpg', NULL, 1, 0, NULL, NULL, 0, NULL, 1624817207, NULL, NULL),
(1032, 'Abdullahi Nuhu', 'user', 1, 864, '09055535554', 'abdullahi@cdrmd.org', NULL, '$2y$10$/aews1siLtCFQVBsPUyJtuWxAwRnY.EQtrnre19yLVZBtupc01R06', NULL, NULL, 'EDq1mv31tbXqouWcirbkmBOcFdVwzZvh9GMbwN698xM2EekhkhMshEjq2NEl', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 'EN', 'Africa/Lagos', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, 1651239556, NULL, NULL),
(1033, 'instructor 2', 'teacher', 4, 864, '08035734353', 'instructor2@gmail.com', NULL, '$2y$10$hXeA0qV9dvOzapF1kqHDFO.5SHTqDVBwqnPC89Z93hU4I8.BoLwKy', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 'EN', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, 1659482507, NULL, NULL),
(1034, 'Ibrahim Bakari', 'user', 1, 864, '+2348012121121', 'ibwalii@cdrmds.org', NULL, '$2y$10$.rp0vXFR4iSC4fcdbDkGu.g0j9hyckT339TvL8TRC9PLTj2vjzrLu', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', NULL, 'Africa/Lagos', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, 1661076404, NULL, NULL),
(1036, 'Ibrahim Bakari Intructor', 'teacher', 4, 864, '+2348012121122', 'ibrahim@cdrmds.org', NULL, '$2y$10$NFvMCuXzdo9X5EtJGa5rv.ZNjGq4vrqmWLug5qGokJs/fMt4lZxG.', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 'EN', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, 1661093397, NULL, NULL),
(1037, 'Musa Muner', 'teacher', 4, 864, '08068882165', 'musamuner@gmail.com', NULL, '$2y$10$EhWgMAeiRd6ki5XAI.Zrd.fIyrpWue00uJw1dvjDFLNO90A1gPQFG', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 'EN', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, 1661352167, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_badges`
--

DROP TABLE IF EXISTS `users_badges`;
CREATE TABLE IF NOT EXISTS `users_badges` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `badge_id` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `users_badges_user_id_foreign` (`user_id`) USING BTREE,
  KEY `users_badges_badge_id_foreign` (`badge_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `users_metas`
--

DROP TABLE IF EXISTS `users_metas`;
CREATE TABLE IF NOT EXISTS `users_metas` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users_metas`
--

INSERT INTO `users_metas` (`id`, `user_id`, `name`, `value`) VALUES
(21, 1016, 'education', 'BS in Mechanical Engineering from Santa Clara University'),
(22, 1016, 'education', 'MS in Mechanical Engineering from Santa Clara University'),
(23, 1016, 'experience', 'professional instructor and trainer for Data Science and programming'),
(24, 1016, 'experience', 'Head of Data Science for Pierian Data Inc'),
(25, 1015, 'experience', 'supporting proprietary Unix operating systems including AIX, HP-UX, and Solaris.'),
(26, 1015, 'experience', '10 years of experience working with Linux systems'),
(27, 1015, 'education', 'Red Hat Certified Engineer (RHCE)'),
(28, 1015, 'education', 'AWS Certified DevOps Engineer - Professional'),
(29, 1015, 'education', 'Linux Foundation Certified System Administrator'),
(30, 929, 'experience', 'Director at Cisco Systems 2015 - 2021'),
(31, 929, 'experience', 'research assistant at Harvard University 2010 - 2019'),
(32, 929, 'experience', 'Amazon bestselling author'),
(33, 923, 'experience', 'marketing strategies at Microlab 2010-2015'),
(34, 923, 'education', 'Associate of Business Administration from Imperial College London'),
(35, 923, 'education', 'Bachelor of International Business Economics from University of Cambridge'),
(36, 923, 'education', 'Master of Business Administration from King\'s College London'),
(37, 3, 'experience', 'Five-time TED speaker'),
(38, 3, 'education', 'Associate of Applied Business from Stanford University'),
(39, 3, 'education', 'Bachelor of Science in Business from Harvard University'),
(40, 3, 'education', 'Master of Computational Finance from University of Chicago'),
(41, 870, 'education', 'Associate in Physical Therapy from University of British Columbia'),
(42, 870, 'education', 'Bachelor of Arts in Psychology from Duke University'),
(43, 870, 'education', 'Master of Public Health from Cornell University'),
(44, 929, 'education', 'Associate of Applied Business from University of Leeds'),
(45, 929, 'education', 'Bachelor of Management and Organizational Studies from University of Sheffield'),
(46, 929, 'education', 'Master of Management from Durham University'),
(47, 934, 'education', 'Bachelor of Science in Information Technology from University of Glasgow'),
(48, 934, 'education', 'Master of Science in Information Systems (MSIS) from Delft University of Technology'),
(49, 934, 'experience', 'Web Developer at Uber 2015 - 2018'),
(50, 1015, 'education', 'Master of Science in Information Systems (MSIS) from University of Sydney'),
(51, 1016, 'gender', 'man'),
(52, 1016, 'age', '29'),
(53, 1016, 'address', 'Luib, 72 Wern Ddu Lane'),
(54, 1015, 'address', 'Al Wakrah ,27904 Hilpert Knoll'),
(55, 934, 'gender', 'woman'),
(56, 934, 'age', '32'),
(57, 934, 'address', 'OX7 3NH, England, Oxfordshire, Ascott-under-Wychwood'),
(58, 1015, 'gender', 'man'),
(59, 1015, 'age', '27'),
(60, 929, 'gender', 'woman'),
(61, 929, 'age', '24'),
(62, 929, 'address', '668, Katra Hira Lal, Chandni Chowk'),
(63, 870, 'gender', 'woman'),
(64, 870, 'age', '28'),
(65, 870, 'address', '99 boulevard de Prague'),
(66, 3, 'gender', 'man'),
(67, 3, 'age', '36'),
(68, 3, 'address', '638153, Tamil Nadu, Modakkurichi, Elumathur'),
(69, 859, 'age', '30'),
(70, 859, 'address', '6N736 MEDINAH RD , MEDINAH, IL'),
(71, 863, 'age', '22'),
(72, 863, 'address', '19, Janata Market, Nerul, Navi Mumbai'),
(73, 864, 'address', 'No. 13 Poultry Farm Ave., South Odorkor ESt.'),
(74, 867, 'address', 'Massachusetts, West Roxbury, 3979 Smith Street'),
(75, 864, 'education', 'Bsc Risk Management'),
(76, 1036, 'education', 'Bsc Education');

-- --------------------------------------------------------

--
-- Table structure for table `users_occupations`
--

DROP TABLE IF EXISTS `users_occupations`;
CREATE TABLE IF NOT EXISTS `users_occupations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `users_occupations_user_id_foreign` (`user_id`) USING BTREE,
  KEY `users_occupations_category_id_foreign` (`category_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1071 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users_occupations`
--

INSERT INTO `users_occupations` (`id`, `user_id`, `category_id`) VALUES
(1010, 1015, 609),
(1011, 1015, 606),
(1012, 1015, 607),
(1034, 3, 602),
(1036, 3, 609),
(1037, 3, 611),
(1038, 3, 606),
(1055, 864, 520),
(1056, 864, 601),
(1057, 864, 602),
(1058, 864, 603);

-- --------------------------------------------------------

--
-- Table structure for table `users_registration_packages`
--

DROP TABLE IF EXISTS `users_registration_packages`;
CREATE TABLE IF NOT EXISTS `users_registration_packages` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `instructors_count` int(11) DEFAULT NULL,
  `students_count` int(11) DEFAULT NULL,
  `courses_capacity` int(11) DEFAULT NULL,
  `courses_count` int(11) DEFAULT NULL,
  `meeting_count` int(11) DEFAULT NULL,
  `status` enum('disabled','active') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `users_registration_packages_user_id_foreign` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_zoom_api`
--

DROP TABLE IF EXISTS `users_zoom_api`;
CREATE TABLE IF NOT EXISTS `users_zoom_api` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `jwt_token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `users_zoom_api_user_id_foreign` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_zoom_api`
--

INSERT INTO `users_zoom_api` (`id`, `user_id`, `jwt_token`, `created_at`) VALUES
(3, 1015, 'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOm51bGwsImlzcyI6IlJvSDREeURtU2lHQTNjMXhMejFoUWciLCJleHAiOjE3NjYyNTAwMDAsImlhdCI6MTYyNDk2NjMwM30.exdStLAnK4V4jIFd6CtLCX_4nvMYLpX1JqMj70If04s', 1624966312);

-- --------------------------------------------------------

--
-- Table structure for table `verifications`
--

DROP TABLE IF EXISTS `verifications`;
CREATE TABLE IF NOT EXISTS `verifications` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `mobile` char(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` char(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` char(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verified_at` int(10) UNSIGNED DEFAULT NULL,
  `expired_at` int(10) UNSIGNED DEFAULT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `verifications_user_id_foreign` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `webinars`
--

DROP TABLE IF EXISTS `webinars`;
CREATE TABLE IF NOT EXISTS `webinars` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `teacher_id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `type` enum('webinar','course','text_lesson') COLLATE utf8mb4_unicode_ci NOT NULL,
  `private` tinyint(1) NOT NULL DEFAULT 0,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` int(11) DEFAULT NULL,
  `duration` int(10) UNSIGNED DEFAULT NULL,
  `timezone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_demo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_demo_source` enum('upload','youtube','vimeo','external_link') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capacity` int(10) UNSIGNED DEFAULT NULL,
  `price` int(10) UNSIGNED DEFAULT NULL,
  `support` tinyint(1) DEFAULT 0,
  `downloadable` tinyint(1) DEFAULT 0,
  `partner_instructor` tinyint(1) DEFAULT 0,
  `subscribe` tinyint(1) DEFAULT 0,
  `points` int(11) DEFAULT NULL,
  `message_for_reviewer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','pending','is_draft','inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `webinars_slug_unique` (`slug`) USING BTREE,
  KEY `webinars_teacher_id_foreign` (`teacher_id`) USING BTREE,
  KEY `webinars_category_id_foreign` (`category_id`) USING BTREE,
  KEY `webinars_slug_index` (`slug`) USING BTREE,
  KEY `webinars_creator_id_foreign` (`creator_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2039 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `webinars`
--

INSERT INTO `webinars` (`id`, `teacher_id`, `creator_id`, `category_id`, `type`, `private`, `slug`, `start_date`, `duration`, `timezone`, `thumbnail`, `image_cover`, `video_demo`, `video_demo_source`, `capacity`, `price`, `support`, `downloadable`, `partner_instructor`, `subscribe`, `points`, `message_for_reviewer`, `status`, `level`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1996, 1015, 1015, 606, 'webinar', 0, 'Learn-Linux-in-5-Days', 1625859000, 450, NULL, '/store/1015/hero (6).jpg', '/store/1015/6.jpg', '/store/1015/Learn Linux In 5 Days.mp4', NULL, 10, 0, 1, 0, 0, 0, NULL, 'Can I add a new session to my class after it is published?', 'active', NULL, 1624943782, 1635445181, NULL),
(2001, 3, 3, 606, 'webinar', 0, 'Learn-and-Understand-AngularJS', 1702171800, 60, 'America/New_York', '/store/3/Learn and Understand AngularJS.jpg', '/store/3/Learn and Understand AngularJS_c.png', '/store/3/Learn and Understand AngularJS.mkv', 'upload', 10, 0, 1, 0, 0, 0, NULL, 'I corrected the session dates. Thanks', 'active', '100', 1625074163, 1660656454, NULL),
(2003, 3, 864, 610, 'webinar', 0, 'Active-Listening-You-Can-Be-a-Great-Listener', 1660678200, 75, 'America/New_York', '/store/864/couple-listening-music.jpg', '/store/864/Active Listening You Can Be a Great Listener_c.png', '/store/864/Active Listening- You Can Be a Great Listener.mkv', 'upload', 10, 0, 1, 0, 0, 0, NULL, 'I modified the files again. Thanks', 'pending', '100', 1625299225, 1661618345, NULL),
(2010, 3, 864, 610, 'course', 0, 'Introduction-Risk-Management', NULL, 10, 'America/New_York', '/store/1/risk1.jpg', '/store/1/risk cover.jpg', NULL, NULL, NULL, NULL, 0, 1, 0, 0, NULL, 'A new Couse', 'active', '100', 1651239876, 1661163690, NULL),
(2012, 1033, 864, 601, 'course', 0, 'Introduction-to-webdesign', NULL, 30, 'America/New_York', '/store/864/Intro to WebDev-29.png', '/store/864/cover.jpg', 'https://www.youtube.com/watch?v=-s3InudNIrM', 'youtube', NULL, 0, 0, 0, 0, 0, NULL, 'Pls do approve right away', 'active', '100', 1659481459, 1660659741, NULL),
(2013, 3, 3, 601, 'course', 0, 'Better-Relationship-Between-You-and-Your-Parent', NULL, 30, 'America/New_York', '/store/1/risk1.jpg', '/store/1/risk cover.jpg', 'https://www.youtube.com/watch?v=HBOLGWyNitY', 'upload', NULL, NULL, 0, 0, 0, 0, NULL, NULL, 'active', NULL, 1660832379, 1661006281, NULL),
(2014, 3, 3, 520, 'webinar', 0, 'Better-Relationship-Between-You-and-Your-Parents', NULL, 30, 'America/New_York', '/store/1/risk1.jpg', '/store/1/risk cover.jpg', 'https://www.youtube.com/watch?v=HBOLGWyNitY', 'upload', NULL, 0, 0, 0, 0, 0, NULL, NULL, 'is_draft', '100', 1660833491, 1660912770, NULL),
(2015, 3, 3, 520, 'text_lesson', 0, 'A-New-Text-Course', NULL, 30, 'America/New_York', '/store/1/risk1.jpg', '/store/1/risk cover.jpg', 'https://www.youtube.com/watch?v=HBOLGWyNitY', 'upload', NULL, NULL, 0, 0, 0, 0, NULL, NULL, 'active', NULL, 1660913309, 1660914585, NULL),
(2016, 3, 3, 520, 'text_lesson', 0, 'Second-Text-Course', NULL, 30, 'America/New_York', '/store/1/risk1.jpg', '/store/1/risk cover.jpg', 'https://www.youtube.com/watch?v=HBOLGWyNitY', 'upload', NULL, NULL, 0, 0, 0, 0, NULL, NULL, 'active', NULL, 1660914707, 1660918558, NULL),
(2017, 3, 3, 520, 'text_lesson', 0, 'Third-course', NULL, 30, 'Africa/Lagos', '/store/1/risk1.jpg', '/store/1/risk cover.jpg', 'https://www.youtube.com/watch?v=HBOLGWyNitY', 'youtube', NULL, 0, 0, 0, 0, 0, NULL, NULL, 'active', NULL, 1660919716, 1660920260, NULL),
(2018, 3, 3, 520, 'webinar', 0, 'Live-Class-Test-1', 1660863600, 30, 'Africa/Lagos', '/store/1/risk1.jpg', '/store/1/risk cover.jpg', 'https://www.youtube.com/watch?v=HBOLGWyNitY', 'upload', 50, NULL, 0, 0, 0, 0, NULL, NULL, 'active', '100', 1660923536, 1660924612, NULL),
(2019, 3, 3, 520, 'text_lesson', 0, 'Learning-App', NULL, 30, 'America/New_York', '/store/1/risk1.jpg', '/store/1/risk cover.jpg', '/store/1/abulogo.jpg', 'upload', NULL, 0, 0, 0, 0, 0, NULL, NULL, 'active', NULL, 1660929352, 1660929763, NULL),
(2020, 3, 3, 520, 'course', 0, 'Better-Relationship-Between-You-and-Your-Parents-1', NULL, 30, 'America/New_York', '/store/3/Learn and Understand AngularJS.jpg', '/store/3/17.jpg', 'https://www.youtube.com/watch?v=HBOLGWyNitY', 'youtube', NULL, NULL, 0, 0, 0, 0, NULL, 'Approve now', 'active', '100', 1660930054, 1660930411, NULL),
(2021, 3, 3, 520, 'text_lesson', 0, 'Better-Relationship-Between-You-and-Your-Parent-1', NULL, 30, 'America/New_York', '/store/1/risk1.jpg', '/store/1/risk cover.jpg', NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 'active', NULL, 1661001675, 1661121758, NULL),
(2022, 3, 3, 611, 'webinar', 0, 'New Session', 1660968000, 30, 'America/New_York', '/store/1/risk1.jpg', '/store/1/risk cover.jpg', NULL, NULL, 50, 0, 0, 0, 0, 0, NULL, 'a new course', 'active', '100', 1661006372, 1661121734, NULL),
(2023, 1036, 864, 601, 'course', 1, 'A-text-course', NULL, 300, 'America/New_York', '/store/864/Intro to WebDev-29.png', '/store/864/cover.jpg', NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 'active', '100', 1661103422, 1661121713, NULL),
(2025, 3, 864, 520, 'webinar', 0, 'Course-Details', 1661525100, 300, 'Africa/Lagos', '/store/864/Intro to WebDev-29.png', '/store/864/cover.jpg', NULL, NULL, 300, 0, 0, 0, 0, 0, NULL, 'A new course', 'active', '100', 1661513384, 1661524939, NULL),
(2026, 1036, 864, 606, 'webinar', 1, 'Learning-Laravel', 1661522400, 30, 'Africa/Lagos', '/store/864/Intro to WebDev-29.png', '/store/864/cover.jpg', 'https://www.youtube.com/watch?v=HBOLGWyNitY', 'youtube', 200, 0, 0, 0, 0, 0, NULL, 'Accept now', 'pending', '100', 1661514591, 1661523010, NULL),
(2027, 3, 864, 602, 'webinar', 1, 'Learning-React', 1661518800, 30, 'Africa/Lagos', '/store/864/Intro to WebDev-29.png', '/store/864/cover.jpg', 'https://www.youtube.com/watch?v=HBOLGWyNitY', 'youtube', 200, 0, 0, 0, 0, 0, NULL, 'A New', 'active', '100', 1661515796, 1661516360, NULL),
(2028, 3, 3, 606, 'course', 0, 'Learn-Mobile-Design', NULL, 30, 'America/New_York', '/store/3/Learn and Understand AngularJS_c.png', '/store/3/Learn and Understand AngularJS_c.png', 'https://www.youtube.com/watch?v=HBOLGWyNitY', 'youtube', NULL, 0, 0, 0, 0, 0, NULL, NULL, 'active', '100', 1661522591, 1661522756, NULL),
(2029, 3, 864, 606, 'webinar', 0, 'Learning-Vue', 1661468400, 30, 'Africa/Lagos', '/store/864/Intro to WebDev-29.png', '/store/864/cover.jpg', 'https://www.youtube.com/watch?v=HBOLGWyNitY', 'youtube', 300, 0, 0, 0, 0, 0, NULL, NULL, 'active', '100', 1661523340, 1661524045, NULL),
(2031, 3, 864, 607, 'course', 1, 'Video-By-Center', NULL, 300, 'America/New_York', '/store/864/cover.jpg', '/store/864/Intro to WebDev-29.png', 'https://www.youtube.com/watch?v=HBOLGWyNitY', 'youtube', NULL, 0, 0, 0, 0, 0, NULL, 'a new', 'active', '100', 1661528035, 1661528298, NULL),
(2032, 3, 864, 606, 'text_lesson', 1, 'Text-Course-by-Center', NULL, 30, 'America/New_York', '/store/864/cover.jpg', '/store/864/Intro to WebDev-29.png', 'https://www.youtube.com/watch?v=HBOLGWyNitY', 'youtube', NULL, 0, 0, 0, 0, 0, NULL, 'A Job', 'active', '100', 1661528467, 1661528595, NULL),
(2033, 3, 864, 606, 'webinar', 1, 'Live-Class-by-Center', 1661295600, 30, 'Africa/Lagos', '/store/864/cover.jpg', '/store/864/Intro to WebDev-29.png', 'https://www.youtube.com/watch?v=HBOLGWyNitY', 'youtube', 20, 0, 0, 0, 0, 0, NULL, NULL, 'active', '100', 1661528725, 1661528998, NULL),
(2035, 3, 864, 606, 'webinar', 1, 'UI-Design', 1661468400, 300, 'Africa/Lagos', '/store/864/Intro to WebDev-29.png', '/store/864/cover.jpg', 'https://www.youtube.com/watch?v=HBOLGWyNitY', 'youtube', 30, 0, 0, 0, 0, 0, NULL, 'H', 'active', '100', 1661531209, 1661531352, NULL),
(2036, 3, 864, 606, 'webinar', 1, 'UI-Design-2', 1661468400, 30, 'Africa/Lagos', '/store/864/Intro to WebDev-29.png', '/store/864/cover.jpg', 'https://www.youtube.com/watch?v=HBOLGWyNitY', 'youtube', 40, 0, 0, 0, 0, 0, NULL, 'hey', 'active', '100', 1661531517, 1661532076, NULL),
(2037, 3, 864, 607, 'webinar', 1, 'Designer', 1661468400, 40, 'Africa/Lagos', '/store/864/Intro to WebDev-29.png', '/store/864/cover.jpg', 'https://www.youtube.com/watch?v=HBOLGWyNitY', 'youtube', 400, 0, 0, 0, 0, 0, NULL, 'aws', 'active', '100', 1661532200, 1661532349, NULL),
(2038, 3, 864, 601, 'webinar', 1, 'Live-Class-by-Center-2', 1661572800, 300, 'America/New_York', '/store/864/Intro to WebDev-29.png', '/store/864/cover.jpg', 'https://www.youtube.com/watch?v=HBOLGWyNitY', 'youtube', 300, 0, 0, 0, 0, 0, NULL, 'aa', 'active', '100', 1661550290, 1661551048, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `webinar_chapters`
--

DROP TABLE IF EXISTS `webinar_chapters`;
CREATE TABLE IF NOT EXISTS `webinar_chapters` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `type` enum('file','session','text_lesson') CHARACTER SET utf8mb4 NOT NULL DEFAULT 'file',
  `order` int(10) UNSIGNED DEFAULT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 NOT NULL DEFAULT 'active',
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `webinar_chapters_user_id_foreign` (`user_id`),
  KEY `webinar_chapters_webinar_id_foreign` (`webinar_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `webinar_chapters`
--

INSERT INTO `webinar_chapters` (`id`, `user_id`, `webinar_id`, `type`, `order`, `status`, `created_at`) VALUES
(13, 864, 2003, 'session', NULL, 'active', 1635416784),
(16, 3, 2001, 'session', NULL, 'active', 1635417112),
(17, 3, 2001, 'session', NULL, 'active', 1635417172),
(22, 1015, 1996, 'session', NULL, 'active', 1635417655),
(23, 1015, 1996, 'session', NULL, 'active', 1635417695),
(31, 864, 2012, 'file', NULL, 'active', 1659481773),
(32, 864, 2012, 'file', NULL, 'active', 1659482071),
(33, 3, 2010, 'file', NULL, 'active', 1660750073),
(34, 3, 2010, 'file', NULL, 'active', 1660750243),
(35, 3, 2016, 'session', NULL, 'active', 1660918137),
(36, 3, 2016, 'text_lesson', NULL, 'active', 1660918183),
(37, 3, 2016, 'file', NULL, 'active', 1660918392),
(38, 3, 2017, 'text_lesson', NULL, 'active', 1660919742),
(39, 3, 2017, 'session', NULL, 'active', 1660919783),
(40, 3, 2017, 'file', NULL, 'active', 1660920154),
(41, 3, 2018, 'session', NULL, 'active', 1660923560),
(42, 3, 2019, 'text_lesson', NULL, 'active', 1660929386),
(43, 3, 2019, 'file', NULL, 'active', 1660929638),
(44, 3, 2020, 'file', NULL, 'active', 1660930101),
(46, 864, 2025, 'session', NULL, 'active', 1661513450),
(47, 864, 2026, 'session', NULL, 'active', 1661514880),
(48, 864, 2027, 'session', NULL, 'active', 1661516187),
(49, 3, 2028, 'file', NULL, 'active', 1661522618),
(50, 3, 2029, 'session', NULL, 'active', 1661523739),
(52, 864, 2031, 'file', NULL, 'active', 1661528216),
(53, 864, 2032, 'file', NULL, 'active', 1661528490),
(54, 864, 2033, 'session', NULL, 'active', 1661528767),
(56, 864, 2035, 'session', NULL, 'active', 1661531257),
(57, 864, 2036, 'session', NULL, 'active', 1661531626),
(58, 864, 2037, 'session', NULL, 'active', 1661532250),
(59, 864, 2038, 'session', NULL, 'active', 1661550358),
(60, 864, 2003, 'file', NULL, 'active', 1661617206);

-- --------------------------------------------------------

--
-- Table structure for table `webinar_chapter_translations`
--

DROP TABLE IF EXISTS `webinar_chapter_translations`;
CREATE TABLE IF NOT EXISTS `webinar_chapter_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `webinar_chapter_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `webinar_chapter_id` (`webinar_chapter_id`),
  KEY `webinar_chapter_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `webinar_chapter_translations`
--

INSERT INTO `webinar_chapter_translations` (`id`, `webinar_chapter_id`, `locale`, `title`) VALUES
(13, 13, 'en', 'Why Active Listening?'),
(16, 16, 'en', 'Getting Started'),
(17, 17, 'en', 'Model, View, Whatever...'),
(22, 22, 'en', 'Overview'),
(23, 23, 'en', 'Start learning'),
(31, 31, 'en', 'Chapter 1'),
(32, 32, 'en', 'Chapter 2'),
(33, 33, 'en', 'Chapter 1 - Intro'),
(34, 34, 'en', 'Chapter 2 - Basic'),
(35, 35, 'en', 'Chapter one 1'),
(36, 36, 'en', 'Chapter 2'),
(37, 37, 'en', 'Attachment section'),
(38, 38, 'en', 'Chapter 1'),
(39, 39, 'en', 'Chapter 2'),
(40, 40, 'en', 'Chapter 3'),
(41, 41, 'en', 'Chapter 1'),
(42, 42, 'en', 'Chapter 1'),
(43, 43, 'en', 'Chapter 2'),
(44, 44, 'en', 'Video 1'),
(46, 46, 'en', 'Chapter 1'),
(47, 47, 'en', 'Chapter 1'),
(48, 48, 'en', 'Chapter one'),
(49, 49, 'en', 'Chapter One'),
(50, 50, 'en', 'Chapter 1'),
(52, 52, 'en', 'Chapter 1'),
(53, 53, 'en', 'Chapter one'),
(54, 54, 'en', 'First Session'),
(56, 56, 'en', 'Chapter 1'),
(57, 57, 'en', 'Chapter 1'),
(58, 58, 'en', 'Class 1'),
(59, 59, 'en', 'Chapter one'),
(60, 60, 'en', 'Introduction');

-- --------------------------------------------------------

--
-- Table structure for table `webinar_filter_option`
--

DROP TABLE IF EXISTS `webinar_filter_option`;
CREATE TABLE IF NOT EXISTS `webinar_filter_option` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `filter_option_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `webinar_filter_option_filter_option_id_foreign` (`filter_option_id`) USING BTREE,
  KEY `webinar_filter_option_webinar_id_foreign` (`webinar_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11697 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `webinar_partner_teacher`
--

DROP TABLE IF EXISTS `webinar_partner_teacher`;
CREATE TABLE IF NOT EXISTS `webinar_partner_teacher` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `teacher_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `webinar_partner_teacher_webinar_id_foreign` (`webinar_id`) USING BTREE,
  KEY `webinar_partner_teacher_teacher_id_foreign` (`teacher_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `webinar_reports`
--

DROP TABLE IF EXISTS `webinar_reports`;
CREATE TABLE IF NOT EXISTS `webinar_reports` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `webinar_reports_webinar_id_foreign` (`webinar_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `webinar_reviews`
--

DROP TABLE IF EXISTS `webinar_reviews`;
CREATE TABLE IF NOT EXISTS `webinar_reviews` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `content_quality` int(10) UNSIGNED NOT NULL,
  `instructor_skills` int(10) UNSIGNED NOT NULL,
  `purchase_worth` int(10) UNSIGNED NOT NULL,
  `support_quality` int(10) UNSIGNED NOT NULL,
  `rates` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  `status` enum('pending','active') COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `webinar_reviews_webinar_id_foreign` (`webinar_id`) USING BTREE,
  KEY `webinar_reviews_creator_id_foreign` (`creator_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `webinar_reviews`
--

INSERT INTO `webinar_reviews` (`id`, `webinar_id`, `creator_id`, `content_quality`, `instructor_skills`, `purchase_worth`, `support_quality`, `rates`, `description`, `created_at`, `status`) VALUES
(36, 2012, 1034, 5, 1, 1, 1, '2', 'good', 1661253059, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `webinar_translations`
--

DROP TABLE IF EXISTS `webinar_translations`;
CREATE TABLE IF NOT EXISTS `webinar_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `webinar_translations_webinar_id_foreign` (`webinar_id`),
  KEY `webinar_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `webinar_translations`
--

INSERT INTO `webinar_translations` (`id`, `webinar_id`, `locale`, `title`, `seo_description`, `description`) VALUES
(2, 1996, 'en', 'Learn Linux in 5 Days', 'Use the in-demand Linux skills you learn in this course to get promoted or start a new career as a Linux professional.', '<p>If you want to learn how to use Linux and level up your career but are pressed for time, read on. Hello. My name is Jason Cannon and I\'m the author of Linux for Beginners as well as the founder of the Linux Training Academy. When I ask people to tell me what their biggest challenge is to learning Linux, they all say the same thing: Time.</p><p>That\'s why I\'ve created this course. Give me just 45 minutes a day for the next 5 days and I will teach you exactly what you need to know about the Linux operating system. You\'ll learn the most important concepts and commands, and I\'ll even guide you step-by-step through several practical and real-world examples.</p><p>So, if you can spare a few minutes a day and want to learn the ins-and-outs of the Linux Operating System, join me and the other students in this course today.</p><p>Free Bonus - How to Install WordPress on Your Very Own Linux System</p><p>As an added bonus for enrolling in the Learn Linux in 5 Days video training course, you\'ll receive a step-by-step checklist and video that teaches you how to install WordPress on an Ubuntu Linux system. First, you\'ll learn what software is required for WordPress to run on a Linux system. Next, you\'ll be given the exact commands to type that install all the required software and WordPress.</p><p>You\'ll learn how to install a web server, how to install a database server, how to create database users, and how to configure WordPress. Before you know it, you\'ll have a fully functioning blog on your hands. This is a great way to put your new-found Linux skills to good use. Totally optional, but very cool: If you want to host your blog on the internet on your very own installation of Linux, I\'ll show you were you can get hosting for just $5 a month.</p><p>____________________</p><p>Learn Linux in 5 Days doesn\'t make any assumptions about your background or knowledge of Linux. You need no prior knowledge to benefit from this course. You will be guided step by step using a logical and systematic approach. As new concepts, commands, or jargon are encountered they are explained in plain language, making it easy for anyone to understand. Here is what you will learn by taking Learn Linux in 5 Days:</p><p>•<span style=\"white-space:pre\">	</span>How to get access to a Linux server if you don\'t already.</p><p>•<span style=\"white-space:pre\">	</span>What a Linux distribution is and which one to choose.</p><p>•<span style=\"white-space:pre\">	</span>What software is needed to connect to Linux from Mac and Windows computers.</p><p>•<span style=\"white-space:pre\">	</span>What SSH is and how to use it.</p><p>•<span style=\"white-space:pre\">	</span>The file system layout of Linux systems and where to find programs, configurations, and documentation.</p><p>•<span style=\"white-space:pre\">	</span>The basic Linux commands you\'ll use most often.</p><p>•<span style=\"white-space:pre\">	</span>Creating, renaming, moving, and deleting directories.</p><p>•<span style=\"white-space:pre\">	</span>Listing, reading, creating, editing, copying, and deleting files.</p><p>•<span style=\"white-space:pre\">	</span>Exactly how permissions work and how to decipher the most cryptic Linux permissions with ease.</p><p>•<span style=\"white-space:pre\">	</span>How to use the nano, vi, and emacs editors.</p><p>•<span style=\"white-space:pre\">	</span>Two methods to search for files and directories.</p><p>•<span style=\"white-space:pre\">	</span>How to compare the contents of files.</p><p>•<span style=\"white-space:pre\">	</span>What pipes are, why they are useful, and how to use them.</p><p>•<span style=\"white-space:pre\">	</span>How to compress files to save space and make transferring data easy.</p><p>•<span style=\"white-space:pre\">	</span>How and why to redirect input and output from applications.</p><p>•<span style=\"white-space:pre\">	</span>How to customize your shell prompt.</p><p>•<span style=\"white-space:pre\">	</span>How to be efficient at the command line by using aliases, tab completion, and your shell history.</p><p>•<span style=\"white-space:pre\">	</span>How to schedule and automate jobs using cron.</p><p>•<span style=\"white-space:pre\">	</span>How to switch users and run processes as others.</p><p>•<span style=\"white-space:pre\">	</span>How to find and install software.</p><p>•<span style=\"white-space:pre\">	</span>Unconditional Udemy 30 day money-back guarantee - that\'s my personal promise of your success!</p><p>What you learn in Learn Linux in 5 Days applies to any Linux environment including Ubuntu, Debian, Kali Linux, Linux Mint, RedHat, Fedora, OpenSUSE, Slackware, and more.</p><div><br></div>'),
(7, 2001, 'en', 'Learn and Understand AngularJS', 'Master AngularJS and the Javascript concepts behind it, design custom directives, and build a single page application.', '<p>Angular  is a TypeScript-based free and open-source web application framework led by the Angular Team at Google and by a community of individuals and corporations. Angular is a complete rewrite from the same team that built AngularJS.</p><p><br></p><p>Angular is used as the frontend of the MEAN stack, consisting of MongoDB database, Express.js web application server framework, Angular itself (or AngularJS), and Node.js server runtime environment.</p><p>Knowing <b>AngularJS</b> can get you a job or improve the one you have. It\'s a skill that will put you more in demand in the modern web development industry, and make your web software life easier, that\'s why it\'s so popular and backed by Google.</p><p><br></p><p>This course will get you up and running quickly, and teach you the core knowledge you need to deeply understand and build AngularJS applications - and we\'ll build a single page application along the way.</p><p><br></p><p>We\'ll design custom services, build custom directives, understand two-way binding, design a weather forecast app as a single page application, and lots more. Both starter and finished source code is provided as we go.</p><p><br></p>'),
(9, 2003, 'en', 'Active Listening: You Can Be a Great Listener', 'Improve your reactive habits, define your listening mindset, amplify your curiosity, & add value as a great listener', '<p>Most of us want to get better at talking. But the REAL power tool for influencing others, leading, collaborating, having an impact, and being an an-all-around-better person is Active Listening. While regular listening can look like being blank and silent, Active Listening is engaged, creative, and responsive.</p><p><br></p><p>In this course, you will gain both the internal awareness and external skill-set that are the foundation of Active Listening. You will be able to have far more satisfying, interesting, successful conversations.</p><p><br></p><p>I created this practical  Udemy course for you--filled with my unique insights from starting out as a terrible listener to now being a professional listener, a Master Certified Coach. I’ve been teaching people how to listen actively for twenty years now and these skills are both learnable and priceless. My course is packed with real-world examples that demystify and simplify what to pay attention to so you can be a great listener.</p>'),
(25, 2003, 'ar', 'الاستماع النشط: يمكنك أن تكون مستمعًا جيدًا', 'قم بتحسين عاداتك التفاعلية ، وحدد عقلية الاستماع لديك ، وقم بتضخيم فضولك ، وإضافة قيمة كمستمع رائع', '<p style=\"text-align: right; \">يرغب معظمنا في التحسن في الحديث. لكن أداة القوة الحقيقية للتأثير على الآخرين ، والقيادة ، والتعاون ، وإحداث تأثير ، وكونك شخصًا أفضل في كل مكان هي الاستماع النشط. في حين أن الاستماع المنتظم يمكن أن يبدو فارغًا وصامتًا ، فإن الاستماع النشط نشط ومبدع وسريع الاستجابة.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">في هذه الدورة ، ستكتسب كلاً من الوعي الداخلي ومجموعة المهارات الخارجية التي تشكل أساس الاستماع النشط. ستكون قادرًا على إجراء محادثات أكثر إرضاءً وإثارةً ونجاحًا.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">لقد أنشأت دورة Udemy العملية هذه من أجلك - مليئة بآرائي الفريدة من البداية كمستمع رهيب إلى أن أصبح الآن مستمعًا محترفًا ، ومدربًا معتمدًا. لقد قمت بتعليم الناس كيفية الاستماع بنشاط لمدة عشرين عامًا حتى الآن وهذه المهارات قابلة للتعلم ولا تقدر بثمن. الدورة التدريبية الخاصة بي مليئة بأمثلة من العالم الحقيقي تزيل الغموض عن ما يجب الانتباه إليه وتبسطه حتى تكون مستمعًا جيدًا.</p>'),
(26, 2003, 'es', 'Escucha activa: puedes ser un gran oyente', 'Mejore sus hábitos reactivos, defina su mentalidad de escucha, amplifique su curiosidad y agregue valor como un gran oyente', '<p>La mayoría de nosotros queremos mejorar al hablar. Pero la verdadera herramienta poderosa para influir en los demás, liderar, colaborar, tener un impacto y ser una persona mejor en todos los aspectos es la escucha activa. Si bien la escucha regular puede parecer en blanco y en silencio, la escucha activa es comprometida, creativa y receptiva.</p><p>En este curso, obtendrá tanto la conciencia interna como el conjunto de habilidades externas que son la base de la escucha activa. Podrá tener conversaciones mucho más satisfactorias, interesantes y exitosas.</p><p>Creé este curso práctico de Udemy para ti, lleno de mis conocimientos únicos desde que comencé como un oyente terrible hasta que ahora soy un oyente profesional, un Master Certified Coach. He estado enseñando a la gente a escuchar activamente durante veinte años y estas habilidades se pueden aprender y no tienen precio. Mi curso está repleto de ejemplos del mundo real que desmitifican y simplifican a qué prestar atención para que pueda ser un gran oyente.</p>'),
(29, 2001, 'ar', 'تعلم وافهم AngularJS', 'Master AngularJS ومفاهيم Javascript وراءها ، وتصميم توجيهات مخصصة ، وإنشاء تطبيق صفحة واحدة.', '<p style=\"text-align: right; \">Angular هو إطار عمل لتطبيق ويب مجاني ومفتوح المصدر يعتمد على TypeScript بقيادة فريق Angular في Google ومجتمع من الأفراد والشركات. Angular هي إعادة كتابة كاملة من نفس الفريق الذي بنى AngularJS.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">يتم استخدام Angular كواجهة أمامية لمكدس MEAN ، والذي يتكون من قاعدة بيانات MongoDB ، وإطار عمل خادم تطبيق الويب Express.js ، و Angular نفسه (أو AngularJS) ، وبيئة تشغيل خادم Node.js.</p><p style=\"text-align: right; \">يمكن أن توفر لك معرفة AngularJS وظيفة أو تحسين الوظيفة التي لديك. إنها مهارة ستجعلك أكثر طلبًا في صناعة تطوير الويب الحديثة ، وتجعل حياة برامج الويب أسهل ، ولهذا السبب تحظى بشعبية كبيرة وتدعمها Google.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">ستساعدك هذه الدورة التدريبية على العمل بسرعة ، وتعلمك المعرفة الأساسية التي تحتاجها لفهم وبناء تطبيقات AngularJS بعمق - وسننشئ تطبيقًا من صفحة واحدة على طول الطريق.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">سنقوم بتصميم خدمات مخصصة ، وإنشاء توجيهات مخصصة ، وفهم الربط ثنائي الاتجاه ، وتصميم تطبيق توقعات الطقس كتطبيق صفحة واحدة ، وغير ذلك الكثير. يتم توفير كل من كود المصدر المبدئي والنهائي كما نذهب.</p>'),
(30, 2001, 'es', 'Aprenda y comprenda AngularJS', 'Domine AngularJS y los conceptos de Javascript detrás de él, diseñe directivas personalizadas y cree una aplicación de una sola página.', '<p>Angular es un marco de aplicación web gratuito y de código abierto basado en TypeScript dirigido por el equipo de Angular en Google y por una comunidad de individuos y corporaciones. Angular es una reescritura completa del mismo equipo que construyó AngularJS.</p><p>Angular se utiliza como la interfaz de la pila MEAN, que consta de la base de datos MongoDB, el marco del servidor de aplicaciones web Express.js, el propio Angular (o AngularJS) y el entorno de tiempo de ejecución del servidor Node.js.</p><p>Conocer AngularJS puede conseguirle un trabajo o mejorar el que tiene. Es una habilidad que aumentará su demanda en la industria del desarrollo web moderno y facilitará la vida de su software web, por eso es tan popular y cuenta con el respaldo de Google.</p><p>Este curso lo pondrá en funcionamiento rápidamente y le enseñará el conocimiento básico que necesita para comprender y construir aplicaciones AngularJS en profundidad, y construiremos una aplicación de una sola página a lo largo del camino.</p><p>Diseñaremos servicios personalizados, crearemos directivas personalizadas, comprenderemos el enlace bidireccional, diseñaremos una aplicación de pronóstico del tiempo como una aplicación de una sola página y mucho más. Tanto el código fuente inicial como el final se proporcionan a medida que avanzamos.</p>'),
(34, 1996, 'ar', 'تعلم لينكس في خمسة أيام', 'استخدم مهارات Linux المطلوبة التي تتعلمها في هذه الدورة للحصول على ترقية أو بدء مهنة جديدة كمحترف Linux.', '<p style=\"text-align: right; \">إذا كنت تريد معرفة كيفية استخدام Linux والارتقاء بمستوى حياتك المهنية ولكنك مضغوط للوقت ، فتابع القراءة. أهلا. اسمي جيسون كانون وأنا مؤلف Linux للمبتدئين وكذلك مؤسس أكاديمية تدريب Linux. عندما أطلب من الناس أن يخبروني ما هو التحدي الأكبر الذي يواجههم في تعلم Linux ، فإنهم جميعًا يقولون نفس الشيء: الوقت.</p><p style=\"text-align: right; \">لهذا السبب قمت بإنشاء هذه الدورة. أعطني 45 دقيقة فقط يوميًا لمدة 5 أيام قادمة وسأعلمك بالضبط ما تحتاج إلى معرفته حول نظام التشغيل Linux. ستتعلم أهم المفاهيم والأوامر ، وسأرشدك خطوة بخطوة عبر العديد من الأمثلة العملية والواقعية.</p><p style=\"text-align: right; \">لذا ، إذا كان بإمكانك تخصيص بضع دقائق يوميًا وترغب في معرفة تفاصيل نظام التشغيل Linux ، فقم بالانضمام إلي والطلاب الآخرين في هذه الدورة التدريبية اليوم.</p><p style=\"text-align: right; \">مكافأة مجانية - كيفية تثبيت WordPress على نظام Linux الخاص بك</p><p style=\"text-align: right; \">كمكافأة إضافية للتسجيل في دورة فيديو Learn Linux in 5 Days التدريبية ، ستتلقى قائمة تحقق خطوة بخطوة وفيديو يعلمك كيفية تثبيت WordPress على نظام Ubuntu Linux. أولاً ، ستتعرف على البرنامج المطلوب لتشغيل WordPress على نظام Linux. بعد ذلك ، ستحصل على الأوامر الدقيقة لكتابة تثبيت جميع البرامج المطلوبة و WordPress.</p><p style=\"text-align: right; \">ستتعلم كيفية تثبيت خادم الويب ، وكيفية تثبيت خادم قاعدة البيانات ، وكيفية إنشاء مستخدمي قاعدة البيانات ، وكيفية تكوين WordPress. قبل أن تعرف ذلك ، سيكون لديك مدونة تعمل بكامل طاقتها بين يديك. هذه طريقة رائعة لاستخدام مهارات Linux الجديدة الخاصة بك بشكل جيد. اختياري تمامًا ، ولكنه رائع جدًا: إذا كنت ترغب في استضافة مدونتك على الإنترنت على تثبيت نظام Linux الخاص بك ، فسأوضح أنه يمكنك الحصول على استضافة مقابل 5 دولارات فقط شهريًا.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">____________________</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">لا تقدم Learn Linux in 5 Days أي افتراضات حول خلفيتك أو معرفتك بنظام Linux. لا تحتاج إلى معرفة مسبقة للاستفادة من هذه الدورة. سيتم إرشادك خطوة بخطوة باستخدام نهج منطقي ومنظم. عند مواجهة المفاهيم أو الأوامر أو المصطلحات الجديدة يتم شرحها بلغة واضحة ، مما يسهل على أي شخص فهمها. إليك ما ستتعلمه من خلال تعلم Linux في 5 أيام:</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">• كيفية الوصول إلى خادم Linux إذا لم تقم بذلك بالفعل.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">• ما هي توزيعة Linux وأيها تختار.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">• ما هي البرامج المطلوبة للاتصال بـ Linux من أجهزة كمبيوتر Mac و Windows.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">• ما هو SSH وكيفية استخدامه.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">• تخطيط نظام الملفات لأنظمة Linux ومكان العثور على البرامج والتكوينات والوثائق.</p><p style=\"text-align: right; \">• أوامر Linux الأساسية التي ستستخدمها في أغلب الأحيان.</p><p style=\"text-align: right; \">• إنشاء وإعادة تسمية ونقل وحذف الدلائل.</p><p style=\"text-align: right; \">• إدراج الملفات وقراءتها وإنشاءها وتحريرها ونسخها وحذفها.</p><p style=\"text-align: right; \">• كيفية عمل الأذونات بالضبط وكيفية فك تشفير أذونات Linux الأكثر تشفيرًا بسهولة.</p><p style=\"text-align: right; \">• كيفية استخدام محررات nano و vi و emacs.</p><p style=\"text-align: right; \">• طريقتان للبحث عن الملفات والأدلة.</p><p style=\"text-align: right; \">• كيفية مقارنة محتويات الملفات.</p><p style=\"text-align: right; \">• ما هي الأنابيب ولماذا هي مفيدة وكيفية استخدامها.</p><p style=\"text-align: right; \">• كيفية ضغط الملفات لتوفير المساحة وتسهيل نقل البيانات.</p><p style=\"text-align: right; \">• كيف ولماذا يتم إعادة توجيه المدخلات والمخرجات من التطبيقات.</p><p style=\"text-align: right; \">• كيفية تخصيص موجه شل الخاص بك.</p><p style=\"text-align: right; \">• كيف تكون فعالاً في سطر الأوامر باستخدام الأسماء المستعارة وإكمال علامات التبويب وسجل shell الخاص بك.</p><p style=\"text-align: right; \">• كيفية جدولة المهام وأتمتتها باستخدام cron.</p><p style=\"text-align: right; \">• كيفية تبديل المستخدمين وتشغيل العمليات مثل الآخرين.</p><p style=\"text-align: right; \">• كيفية البحث عن البرامج وتثبيتها.</p><p style=\"text-align: right; \">• ضمان استرداد الأموال لمدة 30 يومًا من Udemy غير المشروط - هذا وعد شخصي لنجاحك!</p><p style=\"text-align: right; \">ما تتعلمه في Learn Linux in 5 Days ينطبق على أي بيئة Linux بما في ذلك Ubuntu و Debian و Kali Linux و Linux Mint و RedHat و Fedora و OpenSUSE و Slackware والمزيد.</p>'),
(35, 1996, 'es', 'Aprenda Linux en cinco días', 'Utilice las habilidades de Linux en demanda que aprenda en este curso para obtener un ascenso o comenzar una nueva carrera como profesional de Linux.', '<p>Si quieres aprender a usar Linux y subir de nivel en tu carrera, pero tienes poco tiempo, sigue leyendo. Hola. Mi nombre es Jason Cannon y soy el autor de Linux for Beginners, así como el fundador de Linux Training Academy. Cuando le pido a la gente que me diga cuál es su mayor desafío para aprender Linux, todos dicen lo mismo: tiempo.</p><p>Por eso he creado este curso. Dame solo 45 minutos al día durante los próximos 5 días y te enseñaré exactamente lo que necesitas saber sobre el sistema operativo Linux. Aprenderá los conceptos y comandos más importantes, e incluso lo guiaré paso a paso a través de varios ejemplos prácticos y del mundo real.</p><p>Entonces, si puede dedicar unos minutos al día y desea aprender los entresijos del sistema operativo Linux, únase a mí y a los otros estudiantes en este curso hoy.</p><p>Bonificación gratuita: cómo instalar WordPress en su propio sistema Linux</p><p>Como una ventaja adicional por inscribirse en el curso de capacitación en video Learn Linux in 5 Days, recibirá una lista de verificación paso a paso y un video que le enseñará cómo instalar WordPress en un sistema Ubuntu Linux. Primero, aprenderá qué software se requiere para que WordPress se ejecute en un sistema Linux. A continuación, se le darán los comandos exactos para escribir que instalan todo el software requerido y WordPress.</p><p><br></p><p>Aprenderá cómo instalar un servidor web, cómo instalar un servidor de base de datos, cómo crear usuarios de base de datos y cómo configurar WordPress. Antes de que te des cuenta, tendrás un blog en pleno funcionamiento en tus manos. Esta es una excelente manera de hacer un buen uso de sus nuevas habilidades de Linux. Totalmente opcional, pero muy bueno: si desea alojar su blog en Internet en su propia instalación de Linux, le mostraré dónde puede obtener alojamiento por solo $ 5 al mes.</p><p>____________________</p><p>Learn Linux in 5 Days no hace ninguna suposición sobre su experiencia o conocimiento de Linux. No necesita conocimientos previos para beneficiarse de este curso. Se le guiará paso a paso utilizando un enfoque lógico y sistemático. A medida que se encuentran nuevos conceptos, comandos o jerga, se explican en un lenguaje sencillo, lo que facilita su comprensión por parte de cualquiera. Esto es lo que aprenderá al tomar Learn Linux en 5 días:</p><p>• Cómo obtener acceso a un servidor Linux si aún no lo ha hecho.</p><p>• Qué es una distribución de Linux y cuál elegir.</p><p>• Qué software se necesita para conectarse a Linux desde computadoras Mac y Windows.</p><p>• Qué es SSH y cómo usarlo.</p><p>• El diseño del sistema de archivos de los sistemas Linux y dónde encontrar programas, configuraciones y documentación.</p><p>• Los comandos básicos de Linux que utilizará con más frecuencia.</p><p>• Crear, renombrar, mover y eliminar directorios.</p><p>• Enumerar, leer, crear, editar, copiar y eliminar archivos.</p><p>• Exactamente cómo funcionan los permisos y cómo descifrar los permisos más crípticos de Linux con facilidad.</p><p>• Cómo utilizar los editores nano, vi y emacs.</p><p>• Dos métodos para buscar archivos y directorios.</p><p>• Cómo comparar el contenido de archivos.</p><p>• Qué son las tuberías, por qué son útiles y cómo usarlas.</p><p>• Cómo comprimir archivos para ahorrar espacio y facilitar la transferencia de datos.</p><p>• Cómo y por qué redirigir la entrada y salida de las aplicaciones.</p><p>• Cómo personalizar su indicador de shell.</p><p>• Cómo ser eficiente en la línea de comandos mediante el uso de alias, finalización de tabulaciones y su historial de shell.</p><p>• Cómo programar y automatizar trabajos usando cron.</p><p>• Cómo cambiar de usuario y ejecutar procesos como otros.</p><p>• Cómo encontrar e instalar software.</p><p>• Garantía incondicional de devolución de dinero de 30 días de Udemy: ¡esa es mi promesa personal de su éxito!</p><p>Lo que aprende en Aprenda Linux en 5 días se aplica a cualquier entorno Linux, incluidos Ubuntu, Debian, Kali Linux, Linux Mint, RedHat, Fedora, OpenSUSE, Slackware y más.</p>'),
(44, 2010, 'en', 'Introduction to Risk Management Studies', NULL, '<p>A test course</p>'),
(46, 2012, 'en', 'Introduction to webdesign', 'In this course, you’ll learn all about becoming a web developer', '<h2 id=\"1-who-is-a-web-developer\" style=\"margin-top: 20px; margin-bottom: 15px; font-family: DINPro-Cond, Helvetica, Arial, sans-serif; font-size: 48px; line-height: 1.15; color: rgb(34, 60, 80);\">1. Who is a web developer?</h2><p style=\"font-family: TradeGothic, Helvetica, Arial, sans-serif; margin-bottom: 10px; color: rgb(34, 60, 80);\">A web developer is at heart an <span style=\"font-weight: 900; line-height: 1.5;\">interactive artist</span>. They’re someone driven by a <span style=\"font-weight: 900; line-height: 1.5;\">deep desire to create things</span>. A web developer’s canvas is a user’s web browser.</p><p style=\"font-family: TradeGothic, Helvetica, Arial, sans-serif; margin-bottom: 10px; color: rgb(34, 60, 80);\">Much like how a curious child takes pleasure in making toys by joining LEGO blocks—and then experiences a similar joy in taking things apart to see how they’re made, a web developer’s job is to use the basic building blocks of the web (like HTML, CSS and JavaScript) to create something complex like a webpage. Don’t sweat it! We’ll get into all of those terms soon.</p>'),
(47, 2013, 'en', 'Better Relationship Between You and Your Parent', NULL, '<p>Problems between parents and children are common and timeless. If you \r\nare looking to improve your relationship with your parents, you are not \r\nalone. Developing a better relationship with your parents involves \r\nassessing the underlying cause of the issues, fostering a more mature \r\nrelationship with them, and focusing on changing how you think and \r\nbehave. If you currently have a negative relationship with your parents,\r\n or a so-so relationship, but desire to improve it, there are a number \r\nof steps that can be taken to make that happen.</p>'),
(48, 2014, 'en', 'Better Relationship Between You and Your Parents', NULL, '<p>Problems between parents and children are common and timeless. If you \r\nare looking to improve your relationship with your parents, you are not \r\nalone. Developing a better relationship with your parents involves \r\nassessing the underlying cause of the issues, fostering a more mature \r\nrelationship with them, and focusing on changing how you think and \r\nbehave. If you currently have a negative relationship with your parents,\r\n or a so-so relationship, but desire to improve it, there are a number \r\nof steps that can be taken to make that happen.</p>'),
(49, 2015, 'en', 'A New Text Course', NULL, '<p>Problems between parents and children are common and timeless. If you \r\nare looking to improve your relationship with your parents, you are not \r\nalone. Developing a better relationship with your parents involves \r\nassessing the underlying cause of the issues, fostering a more mature \r\nrelationship with them, and focusing on changing how you think and \r\nbehave. If you currently have a negative relationship with your parents,\r\n or a so-so relationship, but desire to improve it, there are a number \r\nof steps that can be taken to make that happen.</p>'),
(50, 2016, 'en', 'Second Text Course', NULL, '<p>Problems between parents and children are common and timeless. If you \r\nare looking to improve your relationship with your parents, you are not \r\nalone. Developing a better relationship with your parents involves \r\nassessing the underlying cause of the issues, fostering a more mature \r\nrelationship with them, and focusing on changing how you think and \r\nbehave. If you currently have a negative relationship with your parents,\r\n or a so-so relationship, but desire to improve it, there are a number \r\nof steps that can be taken to make that happen.</p>'),
(51, 2017, 'en', 'Third course', NULL, '<p>\r\nImage:  Stop-Your-Parents-from-Fighting-Step-2-Version-3  |    \r\nBy:Wikivisual0\r\n\r\n- /images/a/a6/Stop-Your-Parents-from-Fighting-Step-2-Version-3.jpg  - \r\n licensed by Creative Commons - cc-by-sa-nc-3.0-self ---- \r\ncreativecommons.org/licenses/by-nc-sa/3.0/us/ -Last updated:15:40, 21 \r\nMarch 2015</p>'),
(52, 2018, 'en', 'Live Class Test 1', NULL, 'mage:  Stop-Your-Parents-from-Fighting-Step-22  |    By:Wikivisual0\r\n\r\n- /images/4/4e/Stop-Your-Parents-from-Fighting-Step-22.jpg  -  licensed\r\n by Creative Commons - cc-by-sa-nc-3.0-self ---- \r\ncreativecommons.org/licenses/by-nc-sa/3.0/us/ -Last updated:15:40, 21 \r\nMarch 2015<p></p>'),
(53, 2019, 'en', 'Learning App', NULL, '<p>Course Des<br></p>'),
(54, 2020, 'en', 'Better Relationship Between You and Your Parents', NULL, '<p>video <br></p>'),
(55, 2021, 'en', 'Better Relationship Between You and Your Parent', NULL, '<p>A<br></p>'),
(56, 2022, 'en', 'A New Text Course', NULL, '<p>b<br></p>'),
(57, 2023, 'en', 'A text course', NULL, '<p>a text course<br></p>'),
(59, 2025, 'en', 'Course Details', NULL, '<p>A new course with pricing<br></p>'),
(60, 2026, 'en', 'Learning Laravel', NULL, '<p>Laravel Framework and workings<br></p>'),
(61, 2027, 'en', 'Learning React', NULL, '<p>Learning React<br></p>'),
(62, 2028, 'en', 'Learn Mobile Design', NULL, '<p>Learn Mobile Design Development<br></p>'),
(63, 2029, 'en', 'Learning Vue', NULL, '<p>Learning vuejs Library<br></p>'),
(65, 2031, 'en', 'Video By Center', NULL, '<p>A New<br></p>'),
(66, 2032, 'en', 'Text Course by Center', NULL, '<p>A Text Course by Center<br></p>'),
(67, 2033, 'en', 'Live Class by Center', NULL, '<p>A live class by center<br></p>'),
(69, 2035, 'en', 'UI Design', NULL, '<p>UI Design<br></p>'),
(70, 2036, 'en', 'UI Design 2', NULL, '<p>A UI Design<br></p>'),
(71, 2037, 'en', 'Designer', NULL, '<p>A new<br></p>'),
(72, 2038, 'en', 'Live Class by Center 2', NULL, '<p>Description<br></p>');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `blog_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `blog_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `certificates`
--
ALTER TABLE `certificates`
  ADD CONSTRAINT `certificates_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `certificates_quiz_result_id_foreign` FOREIGN KEY (`quiz_result_id`) REFERENCES `quizzes_results` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `certificates_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `certificate_template_translations`
--
ALTER TABLE `certificate_template_translations`
  ADD CONSTRAINT `certificate_template_id` FOREIGN KEY (`certificate_template_id`) REFERENCES `certificates_templates` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_reply_id_foreign` FOREIGN KEY (`reply_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_review_id_foreign` FOREIGN KEY (`review_id`) REFERENCES `webinar_reviews` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments_reports`
--
ALTER TABLE `comments_reports`
  ADD CONSTRAINT `comments_reports_comment_id_foreign` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `course_learning`
--
ALTER TABLE `course_learning`
  ADD CONSTRAINT `course_learning_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_learning_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_learning_text_lesson_id_foreign` FOREIGN KEY (`text_lesson_id`) REFERENCES `text_lessons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_learning_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `discounts`
--
ALTER TABLE `discounts`
  ADD CONSTRAINT `discounts_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `discount_categories`
--
ALTER TABLE `discount_categories`
  ADD CONSTRAINT `discount_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `discount_categories_discount_id_foreign` FOREIGN KEY (`discount_id`) REFERENCES `discounts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `discount_courses`
--
ALTER TABLE `discount_courses`
  ADD CONSTRAINT `discount_courses_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `discount_courses_discount_id_foreign` FOREIGN KEY (`discount_id`) REFERENCES `discounts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `discount_groups`
--
ALTER TABLE `discount_groups`
  ADD CONSTRAINT `discount_groups_discount_id_foreign` FOREIGN KEY (`discount_id`) REFERENCES `discounts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `discount_groups_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `discount_users`
--
ALTER TABLE `discount_users`
  ADD CONSTRAINT `discount_users_discount_id_foreign` FOREIGN KEY (`discount_id`) REFERENCES `discounts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `discount_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `faqs`
--
ALTER TABLE `faqs`
  ADD CONSTRAINT `faqs_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `faqs_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `faq_translations`
--
ALTER TABLE `faq_translations`
  ADD CONSTRAINT `faq_translations_faq_id_foreign` FOREIGN KEY (`faq_id`) REFERENCES `faqs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favorites_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `feature_webinars`
--
ALTER TABLE `feature_webinars`
  ADD CONSTRAINT `feature_webinars_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `feature_webinar_translations`
--
ALTER TABLE `feature_webinar_translations`
  ADD CONSTRAINT `feature_webinar_translations_feature_webinar_id_foreign` FOREIGN KEY (`feature_webinar_id`) REFERENCES `feature_webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_chapter_id_foreign` FOREIGN KEY (`chapter_id`) REFERENCES `webinar_chapters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `files_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `files_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `file_translations`
--
ALTER TABLE `file_translations`
  ADD CONSTRAINT `file_translations_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `filters`
--
ALTER TABLE `filters`
  ADD CONSTRAINT `filters_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `filter_options`
--
ALTER TABLE `filter_options`
  ADD CONSTRAINT `filter_options_filter_id_foreign` FOREIGN KEY (`filter_id`) REFERENCES `filters` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `filter_option_translations`
--
ALTER TABLE `filter_option_translations`
  ADD CONSTRAINT `filter_option_translations_filter_option_id_foreign` FOREIGN KEY (`filter_option_id`) REFERENCES `filter_options` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `filter_translations`
--
ALTER TABLE `filter_translations`
  ADD CONSTRAINT `filter_translations_filter_id_foreign` FOREIGN KEY (`filter_id`) REFERENCES `filters` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `follows`
--
ALTER TABLE `follows`
  ADD CONSTRAINT `follows_follower_foreign` FOREIGN KEY (`follower`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `follows_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `groups`
--
ALTER TABLE `groups`
  ADD CONSTRAINT `groups_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `groups_registration_packages`
--
ALTER TABLE `groups_registration_packages`
  ADD CONSTRAINT `groups_registration_packages_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `group_users`
--
ALTER TABLE `group_users`
  ADD CONSTRAINT `group_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `group_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `meetings`
--
ALTER TABLE `meetings`
  ADD CONSTRAINT `meetings_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `meeting_times`
--
ALTER TABLE `meeting_times`
  ADD CONSTRAINT `meeting_times_meeting_id_foreign` FOREIGN KEY (`meeting_id`) REFERENCES `meetings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `noticeboards`
--
ALTER TABLE `noticeboards`
  ADD CONSTRAINT `noticeboards_organ_id_foreign` FOREIGN KEY (`organ_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `noticeboards_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `noticeboards_status`
--
ALTER TABLE `noticeboards_status`
  ADD CONSTRAINT `noticeboards_status_noticeboard_id_foreign` FOREIGN KEY (`noticeboard_id`) REFERENCES `noticeboards` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications_status`
--
ALTER TABLE `notifications_status`
  ADD CONSTRAINT `notifications_status_notification_id_foreign` FOREIGN KEY (`notification_id`) REFERENCES `notifications` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `offline_payments`
--
ALTER TABLE `offline_payments`
  ADD CONSTRAINT `offline_payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `page_translations`
--
ALTER TABLE `page_translations`
  ADD CONSTRAINT `page_translations_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payouts`
--
ALTER TABLE `payouts`
  ADD CONSTRAINT `payouts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permissions_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`);

--
-- Constraints for table `prerequisites`
--
ALTER TABLE `prerequisites`
  ADD CONSTRAINT `prerequisites_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `promotion_translations`
--
ALTER TABLE `promotion_translations`
  ADD CONSTRAINT `promotion_translations_promotion_id_foreign` FOREIGN KEY (`promotion_id`) REFERENCES `promotions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `purchases_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD CONSTRAINT `quizzes_chapter_id_foreign` FOREIGN KEY (`chapter_id`) REFERENCES `webinar_chapters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `quizzes_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `quizzes_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quizzes_questions`
--
ALTER TABLE `quizzes_questions`
  ADD CONSTRAINT `quizzes_questions_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `quizzes_questions_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quizzes_questions_answers`
--
ALTER TABLE `quizzes_questions_answers`
  ADD CONSTRAINT `quizzes_questions_answers_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `quizzes_questions_answers_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `quizzes_questions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quizzes_questions_answer_translations`
--
ALTER TABLE `quizzes_questions_answer_translations`
  ADD CONSTRAINT `quizzes_questions_answer_id` FOREIGN KEY (`quizzes_questions_answer_id`) REFERENCES `quizzes_questions_answers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quizzes_results`
--
ALTER TABLE `quizzes_results`
  ADD CONSTRAINT `quizzes_results_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `quizzes_results_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quiz_question_translations`
--
ALTER TABLE `quiz_question_translations`
  ADD CONSTRAINT `quiz_question_translations_quiz_question_id_foreign` FOREIGN KEY (`quizzes_question_id`) REFERENCES `quizzes_questions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quiz_translations`
--
ALTER TABLE `quiz_translations`
  ADD CONSTRAINT `quiz_translations_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rating_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rating_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `regions`
--
ALTER TABLE `regions`
  ADD CONSTRAINT `regions_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `regions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `regions_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `regions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `regions_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `regions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `registration_packages_translations`
--
ALTER TABLE `registration_packages_translations`
  ADD CONSTRAINT `registration_package` FOREIGN KEY (`registration_package_id`) REFERENCES `registration_packages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reserve_meetings`
--
ALTER TABLE `reserve_meetings`
  ADD CONSTRAINT `reserve_meetings_meeting_time_id_foreign` FOREIGN KEY (`meeting_time_id`) REFERENCES `meeting_times` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reserve_meetings_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reserve_meetings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rewards_accounting`
--
ALTER TABLE `rewards_accounting`
  ADD CONSTRAINT `rewards_accounting_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_log`
--
ALTER TABLE `sales_log`
  ADD CONSTRAINT `sales_status_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sessions`
--
ALTER TABLE `sessions`
  ADD CONSTRAINT `sessions_chapter_id_foreign` FOREIGN KEY (`chapter_id`) REFERENCES `webinar_chapters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sessions_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sessions_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `session_reminds`
--
ALTER TABLE `session_reminds`
  ADD CONSTRAINT `session_reminds_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `session_reminds_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `session_translations`
--
ALTER TABLE `session_translations`
  ADD CONSTRAINT `session_translations_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `setting_translations`
--
ALTER TABLE `setting_translations`
  ADD CONSTRAINT `setting_translations_setting_id_foreign` FOREIGN KEY (`setting_id`) REFERENCES `settings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `special_offers`
--
ALTER TABLE `special_offers`
  ADD CONSTRAINT `special_offers_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `special_offers_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subscribe_translations`
--
ALTER TABLE `subscribe_translations`
  ADD CONSTRAINT `subscribe_translations_subscribe_id_foreign` FOREIGN KEY (`subscribe_id`) REFERENCES `subscribes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subscribe_uses`
--
ALTER TABLE `subscribe_uses`
  ADD CONSTRAINT `subscribe_uses_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subscribe_uses_subscribe_id_foreign` FOREIGN KEY (`subscribe_id`) REFERENCES `subscribes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subscribe_uses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subscribe_uses_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `supports`
--
ALTER TABLE `supports`
  ADD CONSTRAINT `supports_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `support_departments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `supports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `supports_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `support_conversations`
--
ALTER TABLE `support_conversations`
  ADD CONSTRAINT `support_conversations_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `support_conversations_support_id_foreign` FOREIGN KEY (`support_id`) REFERENCES `supports` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `support_department_translations`
--
ALTER TABLE `support_department_translations`
  ADD CONSTRAINT `support_department_id` FOREIGN KEY (`support_department_id`) REFERENCES `support_departments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tags`
--
ALTER TABLE `tags`
  ADD CONSTRAINT `tags_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `testimonial_translations`
--
ALTER TABLE `testimonial_translations`
  ADD CONSTRAINT `testimonial_translations_testimonial_id_foreign` FOREIGN KEY (`testimonial_id`) REFERENCES `testimonials` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `text_lessons`
--
ALTER TABLE `text_lessons`
  ADD CONSTRAINT `text_lessons_chapter_id_foreign` FOREIGN KEY (`chapter_id`) REFERENCES `webinar_chapters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `text_lessons_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `text_lessons_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `text_lessons_attachments`
--
ALTER TABLE `text_lessons_attachments`
  ADD CONSTRAINT `text_lessons_attachments_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `text_lessons_attachments_text_lesson_id_foreign` FOREIGN KEY (`text_lesson_id`) REFERENCES `text_lessons` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `text_lesson_translations`
--
ALTER TABLE `text_lesson_translations`
  ADD CONSTRAINT `text_lesson_id` FOREIGN KEY (`text_lesson_id`) REFERENCES `text_lessons` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tickets_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ticket_translations`
--
ALTER TABLE `ticket_translations`
  ADD CONSTRAINT `ticket_translations_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ticket_users`
--
ALTER TABLE `ticket_users`
  ADD CONSTRAINT `ticket_users_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ticket_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `trend_categories`
--
ALTER TABLE `trend_categories`
  ADD CONSTRAINT `trend_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `regions` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `users_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `regions` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `users_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `regions` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `users_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `regions` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Constraints for table `users_badges`
--
ALTER TABLE `users_badges`
  ADD CONSTRAINT `users_badges_badge_id_foreign` FOREIGN KEY (`badge_id`) REFERENCES `badges` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_badges_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users_occupations`
--
ALTER TABLE `users_occupations`
  ADD CONSTRAINT `users_occupations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_occupations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users_registration_packages`
--
ALTER TABLE `users_registration_packages`
  ADD CONSTRAINT `users_registration_packages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users_zoom_api`
--
ALTER TABLE `users_zoom_api`
  ADD CONSTRAINT `users_zoom_api_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `verifications`
--
ALTER TABLE `verifications`
  ADD CONSTRAINT `verifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `webinars`
--
ALTER TABLE `webinars`
  ADD CONSTRAINT `webinars_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `webinars_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `webinars_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `webinar_chapters`
--
ALTER TABLE `webinar_chapters`
  ADD CONSTRAINT `webinar_chapters_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `webinar_chapters_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `webinar_chapter_translations`
--
ALTER TABLE `webinar_chapter_translations`
  ADD CONSTRAINT `webinar_chapter_id` FOREIGN KEY (`webinar_chapter_id`) REFERENCES `webinar_chapters` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `webinar_filter_option`
--
ALTER TABLE `webinar_filter_option`
  ADD CONSTRAINT `webinar_filter_option_filter_option_id_foreign` FOREIGN KEY (`filter_option_id`) REFERENCES `filter_options` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `webinar_filter_option_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `webinar_partner_teacher`
--
ALTER TABLE `webinar_partner_teacher`
  ADD CONSTRAINT `webinar_partner_teacher_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `webinar_partner_teacher_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `webinar_reports`
--
ALTER TABLE `webinar_reports`
  ADD CONSTRAINT `webinar_reports_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `webinar_reviews`
--
ALTER TABLE `webinar_reviews`
  ADD CONSTRAINT `webinar_reviews_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `webinar_reviews_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `webinar_translations`
--
ALTER TABLE `webinar_translations`
  ADD CONSTRAINT `webinar_translations_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
