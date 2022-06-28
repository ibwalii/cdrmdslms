-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 16, 2022 at 03:29 PM
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
-- Database: `update`
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
(523, NULL, '/store/1/default_images/categories_icons/heart.png', NULL),
(524, NULL, '/store/1/default_images/categories_icons/umbrella.png', NULL),
(525, NULL, '/store/1/default_images/categories_icons/pie-chart.png', NULL),
(526, NULL, '/store/1/default_images/categories_icons/anchor.png', NULL),
(528, NULL, '/store/1/default_images/categories_icons/code.png', NULL),
(601, 522, NULL, 1),
(602, 522, NULL, 2),
(603, 522, NULL, 3),
(604, 524, NULL, 1),
(605, 524, NULL, 2),
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

--
-- Dumping data for table `certificates`
--

INSERT INTO `certificates` (`id`, `quiz_id`, `quiz_result_id`, `student_id`, `user_grade`, `file`, `created_at`) VALUES
(3, 28, 28, 995, 80, '/store/995/certificates/Become a Product Manager(-80).jpg', 1626248277),
(4, 33, 29, 996, 80, '/store/996/certificates/Excel from Beginner to Advanced().jpg', 1626239046),
(5, 34, 30, 979, 90, '/store/979/certificates/Learn Linux in 5 Days().jpg', 1626239103);

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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `review_id`, `webinar_id`, `blog_id`, `reply_id`, `comment`, `status`, `report`, `disabled`, `created_at`, `viewed_at`) VALUES
(43, 996, NULL, 2004, NULL, NULL, 'Hi.\r\nWhat is the level of this course?', 'active', 0, 0, 1625863108, NULL),
(44, 930, NULL, 1998, NULL, NULL, 'I have already taken another course with this teacher. His teaching method is excellent.', 'active', 0, 0, 1625863203, 1625863611),
(45, 979, NULL, 1999, NULL, NULL, 'Is it possible to participate in this course without participating in the prerequisite course?', 'active', 0, 0, 1625863345, NULL),
(47, 1015, NULL, 1998, NULL, 44, 'Thanks a lot for your comment, Best regards.', 'active', 0, 0, 1625863726, 1626235570),
(48, 3, NULL, 1997, NULL, NULL, 'Will we be able to build applications at the end of this course?', 'active', 0, 0, 1625864259, 1625864297),
(49, 934, NULL, 1997, NULL, 48, 'Hi.\r\nYes you can.', 'active', 0, 0, 1625864351, NULL),
(50, 1016, NULL, 2006, NULL, NULL, 'Will this course be updated in the future?', 'active', 0, 0, 1625864416, NULL),
(51, 995, NULL, 2004, NULL, NULL, 'Will we receive a certificate at the end of this course?', 'active', 0, 0, 1625864526, NULL),
(52, 1015, NULL, 2002, NULL, NULL, 'Perfect course, thank you.', 'active', 0, 0, 1626235679, NULL),
(53, 995, NULL, 1995, NULL, NULL, 'Course files are not complete !!!', 'active', 0, 0, 1626240118, 1626240169),
(54, 1016, NULL, 1995, NULL, 53, 'Please prove. The course files are complete and 90% of the students are satisfied.', 'active', 0, 0, 1626240342, 1626241422),
(55, 929, NULL, 1995, NULL, NULL, 'Is it possible to update the course ?', 'active', 0, 0, 1626241320, 1626241422),
(56, 929, NULL, 2003, NULL, NULL, 'Hi.\r\nIs it possible to start the class earlier?', 'active', 0, 0, 1626241386, NULL),
(57, 1016, NULL, 1995, NULL, 55, 'No, but it may change in the future. Thank you', 'active', 0, 0, 1626241505, NULL),
(58, 3, NULL, 2003, NULL, 56, 'Hi kate.\r\nNo, but it may change in the future. Thank you', 'active', 0, 0, 1626242070, NULL),
(63, 996, NULL, 2003, NULL, NULL, 'As i already new a lot on this matter i was surprised that i actually find out that there are more ways to tweak your time management', 'active', 0, 0, 1626509327, NULL),
(64, 1015, NULL, 1995, NULL, NULL, 'Great course that gives you the basic knowledge needed to become a product manager.', 'pending', 0, 0, 1626509546, NULL),
(65, 863, NULL, 2002, NULL, 52, 'We are very happy that you are satisfied with this course.', 'pending', 0, 0, 1626509913, NULL),
(66, 1015, NULL, NULL, 21, NULL, 'Thank you for this excellent article.', 'active', 0, 0, 1646413650, NULL);

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

--
-- Dumping data for table `comments_reports`
--

INSERT INTO `comments_reports` (`id`, `user_id`, `blog_id`, `webinar_id`, `comment_id`, `message`, `created_at`) VALUES
(5, 1016, NULL, 1995, 53, 'this is a spam comment.', 1626240256);

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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_learning`
--

INSERT INTO `course_learning` (`id`, `user_id`, `text_lesson_id`, `file_id`, `session_id`, `created_at`) VALUES
(29, 995, NULL, 46, NULL, 1626232964),
(30, 995, NULL, 47, NULL, 1626232969),
(32, 1015, NULL, 34, NULL, 1626235773),
(33, 1015, NULL, 31, NULL, 1626235776),
(34, 1015, NULL, 32, NULL, 1626235777),
(35, 996, NULL, 52, NULL, 1626235816),
(36, 996, NULL, 53, NULL, 1626235817),
(37, 996, NULL, 54, NULL, 1626235821),
(41, 996, NULL, 35, NULL, 1626235943),
(42, 996, 13, NULL, NULL, 1626235945),
(43, 996, NULL, 31, NULL, 1626235956),
(44, 996, NULL, 34, NULL, 1626235958),
(45, 996, NULL, 32, NULL, 1626235961),
(46, 995, NULL, 52, NULL, 1626236011),
(47, 995, NULL, 49, NULL, 1626236016),
(48, 995, NULL, 50, NULL, 1626236018),
(49, 995, NULL, 51, NULL, 1626236021),
(50, 995, NULL, 48, NULL, 1626236042),
(51, 995, NULL, 37, NULL, 1626236053),
(52, 995, NULL, 38, NULL, 1626236054),
(53, 995, NULL, 39, NULL, 1626236055),
(54, 995, NULL, 31, NULL, 1626236077),
(55, 995, NULL, 32, NULL, 1626236081),
(56, 995, NULL, 34, NULL, 1626236083),
(57, 995, NULL, 60, NULL, 1646174182),
(58, 995, NULL, 61, NULL, 1646174192),
(59, 995, NULL, 63, NULL, 1646174196),
(60, 995, NULL, 64, NULL, 1646174198),
(61, 995, NULL, 65, NULL, 1646174200);

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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `creator_id`, `webinar_id`, `order`, `created_at`, `updated_at`) VALUES
(13, 1016, 1995, NULL, 1624908798, NULL),
(14, 1016, 1995, NULL, 1624908812, NULL),
(15, 1016, 1995, NULL, 1624908829, NULL),
(16, 1016, 1995, NULL, 1624908852, NULL),
(17, 1016, 1995, NULL, 1624908868, NULL),
(18, 1015, 1996, NULL, 1624945244, NULL),
(19, 1015, 1996, NULL, 1624945306, NULL),
(20, 1015, 1996, NULL, 1624945328, NULL),
(21, 934, 1997, NULL, 1624956994, NULL),
(22, 934, 1997, NULL, 1624957014, NULL),
(23, 929, 1999, NULL, 1625039334, NULL),
(24, 929, 1999, NULL, 1625039363, NULL),
(25, 929, 1999, NULL, 1625039377, NULL),
(26, 867, 2000, NULL, 1625046069, NULL),
(27, 867, 2000, NULL, 1625046102, NULL),
(28, 3, 2001, NULL, 1625079104, NULL),
(29, 864, 2003, NULL, 1625300294, NULL),
(30, 864, 2003, NULL, 1625300305, NULL),
(31, 864, 2003, NULL, 1625300320, NULL),
(32, 4, 2005, NULL, 1625691029, NULL),
(33, 4, 2005, NULL, 1625691056, NULL),
(34, 4, 2005, NULL, 1625691083, NULL),
(35, 867, 2006, NULL, 1625694463, NULL),
(36, 867, 2006, NULL, 1625694481, NULL),
(37, 1015, 1998, NULL, 1626109158, NULL),
(38, 1015, 1998, NULL, 1626109178, NULL),
(39, 1015, 1998, NULL, 1626109196, NULL),
(40, 867, 2007, NULL, 1626234581, NULL),
(41, 867, 2007, NULL, 1626234619, NULL),
(42, 867, 2007, NULL, 1626234666, NULL),
(43, 1015, 2009, NULL, 1646172991, NULL),
(44, 1015, 2009, NULL, 1646173018, NULL),
(45, 1015, 2009, NULL, 1646173035, NULL),
(46, 1015, 2008, NULL, 1646173113, NULL),
(47, 1015, 2008, NULL, 1646173127, NULL),
(48, 1015, 2008, NULL, 1646173143, NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq_translations`
--

INSERT INTO `faq_translations` (`id`, `faq_id`, `locale`, `title`, `answer`) VALUES
(1, 13, 'en', 'What is the course level?', 'This is a course for beginners so you will get familiar with the topic from scratch.'),
(2, 14, 'en', 'How can I get course updates?', 'You will receive a notification after each update is released so you can download updated files from the course page.'),
(3, 15, 'en', 'Is it a supported course?', 'Yes, you can get in touch with the instructor using the support system.'),
(4, 16, 'en', 'How can I download exercise files?', 'All of the exercise files could be downloaded from the content tab on the course page.'),
(5, 17, 'en', 'Can I have a private meeting with the instructor?', 'Yes, you can reserve a 1 to 1 meeting with the instructor using the instructor profile.'),
(6, 18, 'en', 'What is the course level??', 'This is a course for beginners so you will get familiar with the topic from scratch.'),
(7, 19, 'en', 'How can I get course updates?', 'You will receive a notification after each update is released so you can download updated files from the course page.'),
(8, 20, 'en', 'Is it a supported course?', 'Yes, you can get in touch with the instructor using the support system.'),
(9, 21, 'en', 'What is the course level?', 'This is a course for beginners so you will get familiar with the topic from scratch.'),
(10, 22, 'en', 'How can I get course updates?', 'You will receive a notification after each update is released so you can download updated files from the course page.'),
(11, 23, 'en', 'What is the course level?', 'This is a course for beginners so you will get familiar with the topic from scratch.'),
(12, 24, 'en', 'How can I download exercise files?', 'All of the exercise files could be downloaded from the content tab on the course page.'),
(13, 25, 'en', 'Can I have a private meeting with the instructor?', 'Yes, you can reserve a 1 to 1 meeting with the instructor using the instructor profile.'),
(14, 26, 'en', 'How can I get course updates?', 'You will receive a notification after each update is released so you can download updated files from the course page.'),
(15, 27, 'en', 'What is the course level?', 'This is a course for beginners so you will get familiar with the topic from scratch.'),
(16, 28, 'en', 'Is it a supported course?', 'Yes, you can get in touch with the instructor using the support system.'),
(17, 29, 'en', 'How can I get course updates?', 'You will receive a notification after each update is released so you can download updated files from the course page.'),
(18, 30, 'en', 'Can I have a private meeting with the instructor?', 'Yes, you can reserve a 1 to 1 meeting with the instructor using the instructor profile.'),
(19, 31, 'en', 'Is it a supported course?', 'Yes, you can get in touch with the instructor using the support system.'),
(20, 32, 'en', 'What is the course level?', 'This is a course for beginners so you will get familiar with the topic from scratch.'),
(21, 33, 'en', 'Is it a supported course?', 'Yes, you can get in touch with the instructor using the support system.'),
(22, 34, 'en', 'Can I have a private meeting with the instructor?', 'Yes, you can reserve a 1 to 1 meeting with the instructor using the instructor profile.'),
(23, 35, 'en', 'Is it a supported course?', 'Yes, you can get in touch with the instructor using the support system.'),
(24, 36, 'en', 'Can I have a private meeting with the instructor?', 'Yes, you can reserve a 1 to 1 meeting with the instructor using the instructor profile.'),
(25, 37, 'en', 'What is the course level?', 'This is a course for beginners so you will get familiar with the topic from scratch.'),
(26, 38, 'en', 'Is it a supported course?', 'Yes, you can get in touch with the instructor using the support system.'),
(27, 39, 'en', 'Can I have a private meeting with the instructor?', 'Yes, you can reserve a 1 to 1 meeting with the instructor using the instructor profile.'),
(28, 40, 'en', 'What is the course level?', 'This is a course for beginners so you will get familiar with the topic from scratch.'),
(29, 41, 'en', 'How can I get course updates?', 'You will receive a notification after each update is released so you can download updated files from the course page.'),
(30, 42, 'en', 'Is it a supported course?', 'Yes, you can get in touch with the instructor using the support system.'),
(31, 43, 'en', 'Is it a supported course?', 'Yes, you can get in touch with the instructor using the support system.'),
(32, 44, 'en', 'How can I get course updates?', 'You will receive a notification after each update is released so you can download updated files from the course page.'),
(33, 45, 'en', 'What is the course level?', 'This is a course for beginners so you will get familiar with the topic from scratch.'),
(34, 46, 'en', 'What is the course level?', 'This is a course for beginners so you will get familiar with the topic from scratch.'),
(35, 47, 'en', 'Is it a supported course?', 'Yes, you can get in touch with the instructor using the support system.'),
(36, 48, 'en', 'Can I have a private meeting with the instructor?', 'Yes, you can reserve a 1 to 1 meeting with the instructor using the instructor profile.');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

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

--
-- Dumping data for table `feature_webinars`
--

INSERT INTO `feature_webinars` (`id`, `webinar_id`, `page`, `status`, `updated_at`) VALUES
(26, 1998, 'home', 'publish', 1635438083),
(28, 2008, 'home', 'publish', 1646493590);

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

--
-- Dumping data for table `feature_webinar_translations`
--

INSERT INTO `feature_webinar_translations` (`id`, `feature_webinar_id`, `locale`, `description`) VALUES
(1, 26, 'en', 'Microsoft Excel is a spreadsheet developed by Microsoft for Windows, macOS, Android and iOS. It features calculation, graphing tools, pivot tables, and a macro programming language called Visual Basic for Applications (VBA).'),
(2, 28, 'en', 'Learn step-by-step tips that help you get things done with your virtual team by increasing trust and accountability.If you manage a virtual team today, then you\'ll probably continue to do so for the rest of your career.'),
(3, 28, 'es', 'Aprenda consejos paso a paso que lo ayudarán a hacer las cosas con su equipo virtual al aumentar la confianza y la responsabilidad. Si administra un equipo virtual hoy, probablemente continuará haciéndolo durante el resto de su carrera.'),
(4, 28, 'ar', 'تعلم نصائح خطوة بخطوة تساعدك على إنجاز المهام مع فريقك الافتراضي من خلال زيادة الثقة والمساءلة ، إذا كنت تدير فريقًا افتراضيًا اليوم ، فمن المحتمل أن تستمر في القيام بذلك لبقية حياتك المهنية.'),
(5, 26, 'ar', 'Microsoft Excel هو جدول بيانات تم تطويره بواسطة Microsoft لأنظمة Windows و macOS و Android و iOS. يتميز بأدوات الحساب والرسوم البيانية والجداول المحورية ولغة برمجة ماكرو تسمى Visual Basic for Applications (VBA).'),
(6, 26, 'es', 'Microsoft Excel es una hoja de cálculo desarrollada por Microsoft para Windows, macOS, Android e iOS. Cuenta con cálculo, herramientas gráficas, tablas dinámicas y un lenguaje de programación de macros llamado Visual Basic para Aplicaciones (VBA).');

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
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `creator_id`, `webinar_id`, `chapter_id`, `accessibility`, `downloadable`, `storage`, `file`, `volume`, `file_type`, `interactive_type`, `interactive_file_name`, `interactive_file_path`, `order`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(31, 1016, 1995, 4, 'free', 0, 'youtube', 'https://youtu.be/pCmh6XaMVxs', '136.00 MB', 'video', NULL, NULL, NULL, 2, 'active', 1624869878, 1635416216, NULL),
(32, 1016, 1995, 4, 'free', 0, 'youtube', 'https://youtu.be/yUOC-Y0f5ZQ', '46.00 MB', 'video', NULL, NULL, NULL, 3, 'active', 1624870086, 1635416357, NULL),
(33, 1016, 1995, 11, 'free', 0, 'vimeo', 'https://vimeo.com/354744129', '280.00 MB', 'video', NULL, NULL, NULL, 4, 'active', 1624871143, 1635416520, NULL),
(34, 1016, 1995, 4, 'free', 0, 'upload', '/store/1016/Become A Product Manager.mp4', '5.82 MB', 'mp4', NULL, NULL, NULL, 1, 'active', 1624942577, 1635410854, NULL),
(35, 934, 1997, 24, 'free', 1, 'upload', '/store/934/Python for Beginners.mp4', '7.09 MB', 'mp4', NULL, NULL, NULL, NULL, 'active', 1624956937, 1635417846, NULL),
(36, 1015, 1998, 20, 'free', 0, 'upload', '/store/1015/Microsoft Excel - Excel from Beginner to Advanced.mkv', '4.10 MB', 'mkv', NULL, NULL, NULL, NULL, 'active', 1624966718, 1635417493, NULL),
(37, 929, 1999, 9, 'free', 1, 'upload', '/store/929/How To Manage & Influence Your Virtual Team.mkv', '10.58 MB', 'mkv', NULL, NULL, NULL, NULL, 'active', 1625038371, 1635412743, NULL),
(38, 929, 1999, 9, 'paid', 1, 'upload', '/store/929/How To Manage & Influence Your Virtual Team.mkv', '10.58 MB', 'mkv', NULL, NULL, NULL, NULL, 'active', 1625038447, 1635414077, NULL),
(39, 929, 1999, 10, 'paid', 1, 'upload', '/store/929/How To Manage & Influence Your Virtual Team.mkv', '10.58 MB', 'mkv', NULL, NULL, NULL, NULL, 'active', 1625038633, 1635414206, NULL),
(40, 929, 1999, 10, 'paid', 1, 'upload', '/store/929/How To Manage & Influence Your Virtual Team.mkv', '10.58 MB', 'mkv', NULL, NULL, NULL, NULL, 'active', 1625039003, 1635415977, NULL),
(41, 929, 1999, 10, 'paid', 1, 'upload', '/store/929/How To Manage & Influence Your Virtual Team.mkv', '10.58 MB', 'mkv', NULL, NULL, NULL, NULL, 'active', 1625039096, 1635416001, NULL),
(42, 929, 1999, 10, 'paid', 1, 'upload', '/store/929/How To Manage & Influence Your Virtual Team.mkv', '10.58 MB', 'mkv', NULL, NULL, NULL, NULL, 'active', 1625039180, 1635416049, NULL),
(43, 867, 2000, 18, 'free', 1, 'upload', '/store/867/Effective Time Management.mkv', '1.59 MB', 'mkv', NULL, NULL, NULL, NULL, 'active', 1625045148, 1635417295, NULL),
(44, 863, 2002, 14, 'free', 0, 'upload', '/store/863/Why Your Fitness Matters.mp4', '4.72 MB', 'mp4', NULL, NULL, NULL, NULL, 'active', 1625123527, 1635416995, NULL),
(45, 864, 2003, 12, 'free', 1, 'upload', '/store/864/Active Listening- You Can Be a Great Listener.mkv', '3.78 MB', 'mkv', NULL, NULL, NULL, NULL, 'active', 1625300200, 1635416686, NULL),
(46, 929, 2004, 8, 'paid', 1, 'upload', '/store/929/The Future of Energy.mkv', '15.00 MB', 'mkv', NULL, NULL, NULL, NULL, 'active', 1625685492, 1635412637, NULL),
(47, 929, 2004, 8, 'paid', 1, 'upload', '/store/929/The Future of Energy.mkv', '15.00 MB', 'mkv', NULL, NULL, NULL, NULL, 'active', 1625685578, 1635412643, NULL),
(48, 929, 2004, 8, 'paid', 1, 'upload', '/store/929/The Future of Energy.mkv', '15.00 MB', 'mkv', NULL, NULL, NULL, NULL, 'active', 1625685691, 1635412656, NULL),
(49, 4, 2005, 7, 'free', 0, 'youtube', 'https://youtu.be/z-xkbNLIB5w', '52.00 MB', 'video', NULL, NULL, NULL, NULL, 'active', 1625690308, 1635412526, NULL),
(50, 4, 2005, 7, 'paid', 0, 'youtube', 'https://youtu.be/jx5jmI0UlXU', '75.00 MB', 'video', NULL, NULL, NULL, NULL, 'active', 1625690699, 1635412541, NULL),
(51, 4, 2005, 7, 'paid', 0, 'youtube', 'https://youtu.be/IyYC-hSFEFQ', '168.00 MB', 'video', NULL, NULL, NULL, NULL, 'active', 1625690835, 1635412551, NULL),
(52, 867, 2006, 5, 'free', 1, 'upload', '/store/867/How to Travel Around the World on a Budget.mkv', '13.10 MB', 'mkv', NULL, NULL, NULL, NULL, 'active', 1625694176, 1635412034, NULL),
(53, 867, 2006, 5, 'paid', 1, 'upload', '/store/867/How to Travel Around the World on a Budget.mkv', '13.10 MB', 'mkv', NULL, NULL, NULL, NULL, 'active', 1625694214, 1635412043, NULL),
(54, 867, 2006, 6, 'paid', 1, 'upload', '/store/867/How to Travel Around the World on a Budget.mkv', '13.10 MB', 'mkv', NULL, NULL, NULL, NULL, 'active', 1625694330, 1635412081, NULL),
(55, 867, 2006, 6, 'paid', 1, 'upload', '/store/867/How to Travel Around the World on a Budget.mkv', '13.10 MB', 'mkv', NULL, NULL, NULL, NULL, 'active', 1625694401, 1635412090, NULL),
(56, 867, 2007, 2, 'free', 0, 'upload', '/store/1/123.mp4', '7.66 MB', 'mp4', NULL, NULL, NULL, NULL, 'active', 1626234339, 1635408940, NULL),
(57, 867, 2007, 2, 'free', 1, 'upload', '/store/867/Travel Management Course.mkv', '13.48 MB', 'mkv', NULL, NULL, NULL, NULL, 'active', 1626234398, 1635407853, NULL),
(58, 867, 2007, 3, 'free', 1, 'upload', '/store/867/Travel Management Course.mkv', '13.48 MB', 'mkv', NULL, NULL, NULL, NULL, 'active', 1626234448, 1635408073, NULL),
(59, 867, 2007, 3, 'free', 1, 'upload', '/store/867/Travel Management Course.mkv', '13.48 MB', 'mkv', NULL, NULL, NULL, NULL, 'active', 1626234512, 1635408084, NULL),
(60, 1015, 2008, 28, 'paid', 0, 'upload_archive', '/store/1015/scorm/ispring.zip', '4.76 MB', 'archive', 'i_spring', NULL, '/store/1015/ispring/story.html', NULL, 'active', 1646119189, 1646120896, NULL),
(61, 1015, 2008, 28, 'paid', 0, 'upload_archive', '/store/1015/scorm/captivate.zip', '5.11 MB', 'archive', 'adobe_captivate', NULL, '/store/1015/captivate/index.html', NULL, 'active', 1646119460, 1646120931, NULL),
(62, 1015, 2008, 28, 'paid', 0, 'upload_archive', '/store/1015/scorm/custom.zip', '4.75 MB', 'archive', 'custom', 'next.html', '/store/1015/custom/next.html', NULL, 'active', 1646119651, NULL, NULL),
(63, 1015, 2008, 29, 'paid', 0, 'upload', '/store/1015/Learn Linux In 5 Days.mp4', '3.95 MB', 'mp4', NULL, NULL, NULL, 1, 'active', 1646120871, 1646124268, NULL),
(64, 1015, 2008, 29, 'paid', 0, 'youtube', 'https://youtu.be/6Vo2v7WCyTs', '0 bytes', 'video', NULL, NULL, NULL, 2, 'active', 1646124099, 1646124279, NULL),
(65, 1015, 2008, 29, 'paid', 0, 'vimeo', 'https://vimeo.com/187511962', '0 bytes', 'video', NULL, NULL, NULL, 3, 'active', 1646124765, NULL, NULL),
(66, 1015, 2008, 29, 'paid', 1, 'external_link', 'https://drive.google.com/file/d/18CDM0xG2KdOP6YvvTKEvPvtsb4XfQQF3/view', '19.00 MB', 'archive', NULL, NULL, NULL, 6, 'active', 1646124966, NULL, NULL),
(67, 1015, 2008, 29, 'paid', 0, 'google_drive', '<iframe src=\"https://drive.google.com/file/d/1pu1TgfcTFJeRU6Venxa46i_pStM4GCwH/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', '14.00 MB', 'video', NULL, NULL, NULL, 8, 'active', 1646125437, 1646128112, NULL),
(68, 1015, 2008, 29, 'paid', 0, 'google_drive', '<iframe src=\"https://drive.google.com/file/d/1BdiQQp3-7SPRdmuqeN8cdkO75U4wbU9i/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', '2.00 MB', 'powerpoint', NULL, NULL, NULL, 10, 'active', 1646126002, 1646128083, NULL),
(69, 1015, 2008, 29, 'paid', 0, 'google_drive', '<iframe src=\"https://drive.google.com/file/d/1KuEkNBCvXxFiWU5U2_Be4LlYLTg4VFq7/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', '2.00 MB', 'pdf', NULL, NULL, NULL, 11, 'active', 1646126305, 1646128068, NULL),
(70, 1015, 2008, 29, 'paid', 1, 'external_link', 'https://uploads.rocket-soft.org/lms/Rocket_LMS_App.apk', '19.00 MB', 'project', NULL, NULL, NULL, 7, 'active', 1646126442, 1646128137, NULL),
(71, 1015, 2008, 29, 'paid', 0, 'iframe', '<div style=\"position:relative;padding-bottom:56.25%;height:0;overflow:hidden;\"> <iframe style=\"width:100%;height:100%;position:absolute;left:0px;top:0px;overflow:hidden\" frameborder=\"0\" type=\"text/html\" src=\"https://www.dailymotion.com/embed/video/x88dvcq?autoplay=1\" width=\"100%\" height=\"100%\" allowfullscreen allow=\"autoplay\"> </iframe> </div>', '0 bytes', 'video', NULL, NULL, NULL, 9, 'active', 1646127121, 1646127426, NULL),
(72, 1015, 2008, 29, 'paid', 0, 's3', 'https://s3.us-east-1.amazonaws.com/daghighy/store/1015/UMgeYxq2Z6Pn6C3bnQLBfjZyJNEx8dcvINbSXJtJ.mkv', '4.00 MB', 'video', NULL, NULL, NULL, 4, 'active', 1646130252, 1646131442, NULL),
(73, 1015, 2008, 29, 'paid', 1, 's3', 'https://s3.us-east-1.amazonaws.com/daghighy/store/1015/ZXW0cMcembGqD7aJNnpmV6ft5Ovsf8tAGXogzb0N.pdf', '2.00 MB', 'pdf', NULL, NULL, NULL, 5, 'active', 1646130397, NULL, NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `file_translations`
--

INSERT INTO `file_translations` (`id`, `file_id`, `locale`, `title`, `description`) VALUES
(1, 31, 'en', 'Course Overview (Youtube)', 'Understand the varying role of a Product Manager through different types and sizes of companies'),
(2, 32, 'en', 'What is a Product? (Youtube)', 'Let’s get basic – what is a product?\r\n\r\nProducts, like ghosts, are all around you (read that in a spooky voice).\r\n\r\nSure, it sounds simple, but there’s a lot more nuance to this than just looking up the dictionary definition.'),
(3, 33, 'en', 'Ideas and User Needs (Vimeo)', 'Welcome to the land of ideas and user needs! Have you ever.'),
(4, 34, 'en', 'Demo Video', 'The most complete course available on Product Management.'),
(5, 35, 'en', 'Introduction video', 'Python is an interpreted high-level general-purpose programming language. Python\'s design philosophy emphasizes code readability with its notable use of significant indentation.'),
(6, 36, 'en', 'Introduction Class', 'Microsoft Excel is a spreadsheet developed by Microsoft for Windows, macOS, Android and iOS. It features calculation, graphing tools, pivot tables, and a macro programming language called Visual Basic for Applications (VBA).'),
(7, 37, 'en', 'Introduction', 'In this welcome  video, I give you a quick overview of what the course is about.'),
(8, 38, 'en', 'Principles of Behavior Change', 'In this lecture, I discuss an overview of the \"Principles of Behavior Change\" module, the 4 power principles of behavior change, and what you should know about those principles when managing your virtual team.'),
(9, 39, 'en', 'The Power of Writing', 'In this lecture, I discuss the following: The mysterious power of writing things down and The advantages of writing tasks out to your virtual team'),
(10, 40, 'en', 'Before the Meeting', 'In this lecture, I discuss the five things you should do before every meeting, and how to manage everyone’s expectations through a well-crafted meeting agenda.'),
(11, 41, 'en', 'During the Meeting', 'In this lecture, I discuss the five things you should do during every meeting, and how to facilitate your meetings to keep everyone focused on their tasks.'),
(12, 42, 'en', 'After the Meeting', 'In this lecture, I discuss the two things you should do after every meeting, and how to follow up with your team to make sure they are committed to getting their actions completed.'),
(13, 43, 'en', 'Introduction', 'If you have ever taken a time management course, you\'ve probably faced the frustration of trying to manage your time better and not succeeding.'),
(14, 44, 'en', 'Why Your Fitness Matters', 'Unfortunately, the internet is full of false fitness gurus that sell you all kinds of workouts plans and gimmicks that are overpriced and don\'t work.'),
(15, 45, 'en', 'Introduction', 'Improve your reactive habits, define your listening mindset, amplify your curiosity, & add value as a great listener'),
(16, 46, 'en', 'Exponential', 'Here you will gain and understanding of how consumption is more important than finds of non-renewable energy. Also other matters that affect the future development of non-renewable key and primary fuels'),
(17, 47, 'en', 'Importance of Oil', 'Here we test your knowledge of what you learned hopefully listening to our second lecture.'),
(18, 48, 'en', 'Behavioural Solutions', 'Here you will gain and understanding of how consumption is more important than finds of non-renewable energy. Also other matters that affect the future development of non-renewable key and primary fuels'),
(19, 49, 'en', 'Welcome !!', 'Today we are going to learn the basics of creating a good design. This can apply from web design to graphic design in general.\r\nI put together my top 5 tips and tricks to create a good design from scratch.'),
(20, 50, 'en', 'CSS Essentials', 'Chances are you have heard of relative and absolute position in CSS, but did you know there are still three other positions? In this video I will be covering all five CSS positions (static, relative, absolute, fixed, and sticky) .'),
(21, 51, 'en', 'Intermediate CSS', 'Learn more about Intermediate CSS features like CSS Grid, Flexbox, and custom properties (aka. variables). Kyle, from Web Dev Simplified, will walk through a few Intermediate CSS challenges and discuss some of our favorite CSS tips and tricks.'),
(22, 52, 'en', 'Welcome to the Course!', 'A warm welcome to the course! Feel free to contact me if you have any questions'),
(23, 53, 'en', 'Health & Safety', 'The point of this lecture is to share with you numerous safety tips I\'ve learned during my journey.'),
(24, 54, 'en', 'Where To Sleep during your Travels?', 'After this lesson you\'ll know what exactly is Couchsurfing and what to expect.'),
(25, 55, 'en', 'Ready to go? The last things to do!', 'In this video I\'ll share with you some tips to earn money on the road and I will take my example as a digital nomad to show you what works.'),
(26, 56, 'en', 'Overview', 'The course content is uniquely customized in a way to give each student who participates in this course the best skill orientation and the basic knowledge required to enter the travel and tourism industry.'),
(27, 57, 'en', 'Understanding Maps', 'The course content is uniquely customized in a way to give each student who participates in this course the best skill orientation and the basic knowledge required to enter the travel and tourism industry.'),
(28, 58, 'en', 'World Time', 'The course content is uniquely customized in a way to give each student who participates in this course the best skill orientation and the basic knowledge required to enter the travel and tourism industry.'),
(29, 59, 'en', 'Travel Technology', 'The course content is uniquely customized in a way to give each student who participates in this course the best skill orientation and the basic knowledge require'),
(30, 60, 'en', 'iSpring SCORM', 'iSpring Suite is a PowerPoint-based authoring toolkit produced by iSpring Solutions that allows users to create slide-based courses.'),
(31, 61, 'en', 'Adobe Captivate SCORM', 'Adobe Captivate is an authoring tool that is used for creating eLearning content such as software demonstrations, software simulations, branched scenarios, and randomized quizzes in Shockwave Flash and HTML5 formats.'),
(32, 62, 'en', 'Custom SCORM', 'Always remember to tune \"up\" to a pitch and not down to a pitch. This helps in keeping your guitar in tune.'),
(33, 63, 'en', 'Upload Source', 'This course will teach you how to master your fretboard, understand music theory, and most importantly, how to use these tools to craft your unique sound.'),
(34, 64, 'en', 'Youtube Source', 'YouTube is an American online video sharing and social media platform owned by Google. It was launched on February 14, 2005, by Steve Chen, Chad Hurley, and Jawed Karim.'),
(35, 65, 'en', 'Vimeo Source', 'Vimeo, Inc. is an American video hosting, sharing, and services platform provider headquartered in New York City. Vimeo focuses on the delivery of high-definition video across a range of devices. Vimeo\'s business model is through software as a service.'),
(36, 66, 'en', 'External Link Source', 'Rocket LMS mobile app is an Android mobile application for Rocket LMS. Rocket LMS is an online course marketplace that helps you run your online education business easily.'),
(37, 67, 'en', 'Google Drive Source', 'Google Drive is a file storage and synchronization service developed by Google. Launched on April 24, 2012, Google Drive allows users to store files in the cloud, synchronize files across devices, and share files.'),
(38, 68, 'en', 'PowerPoint File', 'Microsoft PowerPoint is a presentation program, created by Robert Gaskins and Dennis Austin at a software company named Forethought, Inc. It was released on April 20, 1987, initially for Macintosh computers only.'),
(39, 69, 'en', 'PDF File', 'Portable Document Format (PDF), standardized as ISO 32000, is a file format developed by Adobe in 1992 to present documents, including text formatting and images, in a manner independent of application software, hardware, and operating systems.'),
(40, 70, 'en', 'Direct Link', 'Rocket LMS mobile app is an Android mobile application for Rocket LMS. Rocket LMS is an online course marketplace that helps you run your online education business easily.'),
(41, 71, 'en', 'iFrame Source', 'March 20 is the first day of spring for most people, while March 1 is the first spring day for meteorologists.'),
(42, 72, 'en', 'Amazon S3 Stream', 'Amazon S3 or Amazon Simple Storage Service is a service offered by Amazon Web Services that provides object storage through a web service interface. Amazon S3 uses the same scalable storage infrastructure that Amazon.com uses to run its global e-commerce network.'),
(43, 73, 'en', 'Amazon S3 File', 'Amazon S3 or Amazon Simple Storage Service is a service offered by Amazon Web Services that provides object storage through a web service interface. Amazon S3 uses the same scalable storage infrastructure that Amazon.com uses to run its global e-commerce network.');

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

--
-- Dumping data for table `filters`
--

INSERT INTO `filters` (`id`, `category_id`) VALUES
(1805, 520),
(1819, 520),
(1834, 520),
(1809, 523),
(1823, 523),
(1838, 523),
(1812, 525),
(1826, 525),
(1841, 525),
(1806, 601),
(1820, 601),
(1835, 601),
(1807, 602),
(1821, 602),
(1836, 602),
(1808, 603),
(1822, 603),
(1837, 603),
(1810, 604),
(1824, 604),
(1839, 604),
(1811, 605),
(1825, 605),
(1840, 605),
(1816, 606),
(1831, 606),
(1845, 606),
(1817, 607),
(1832, 607),
(1846, 607),
(1818, 608),
(1833, 608),
(1847, 608),
(1813, 609),
(1827, 609),
(1842, 609),
(1814, 610),
(1829, 610),
(1843, 610),
(1815, 611),
(1830, 611),
(1844, 611);

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

--
-- Dumping data for table `filter_options`
--

INSERT INTO `filter_options` (`id`, `filter_id`, `order`) VALUES
(9114, 1805, 1),
(9115, 1805, 2),
(9116, 1805, 3),
(9117, 1806, 1),
(9118, 1806, 2),
(9119, 1806, 3),
(9120, 1807, 1),
(9121, 1807, 2),
(9122, 1807, 3),
(9123, 1808, 1),
(9124, 1808, 2),
(9125, 1808, 3),
(9126, 1809, 1),
(9127, 1809, 2),
(9128, 1809, 3),
(9129, 1810, 1),
(9130, 1810, 2),
(9131, 1810, 3),
(9132, 1811, 1),
(9133, 1811, 2),
(9134, 1811, 3),
(9135, 1812, 1),
(9136, 1812, 2),
(9137, 1812, 3),
(9138, 1813, 1),
(9139, 1813, 2),
(9140, 1813, 3),
(9141, 1814, 1),
(9142, 1814, 2),
(9143, 1814, 3),
(9144, 1815, 1),
(9145, 1815, 2),
(9146, 1815, 3),
(9147, 1816, 1),
(9148, 1816, 2),
(9149, 1816, 3),
(9150, 1817, 1),
(9151, 1817, 2),
(9152, 1817, 3),
(9153, 1818, 1),
(9154, 1818, 2),
(9155, 1818, 3),
(9156, 1819, 1),
(9157, 1819, 3),
(9158, 1819, 2),
(9159, 1819, 4),
(9160, 1819, 5),
(9161, 1820, 1),
(9162, 1820, 3),
(9163, 1820, 2),
(9164, 1820, 4),
(9165, 1820, 5),
(9166, 1821, 1),
(9167, 1821, 3),
(9168, 1821, 2),
(9169, 1821, 4),
(9170, 1821, 5),
(9171, 1822, 1),
(9172, 1822, 3),
(9173, 1822, 2),
(9174, 1822, 4),
(9175, 1822, 5),
(9176, 1823, 1),
(9177, 1823, 3),
(9178, 1823, 2),
(9179, 1823, 4),
(9180, 1823, 5),
(9181, 1824, 1),
(9182, 1824, 3),
(9183, 1824, 2),
(9184, 1824, 4),
(9185, 1824, 5),
(9186, 1825, 1),
(9187, 1825, 3),
(9188, 1825, 2),
(9189, 1825, 4),
(9190, 1825, 5),
(9191, 1826, 1),
(9192, 1826, 3),
(9193, 1826, 2),
(9194, 1826, 4),
(9195, 1826, 5),
(9196, 1827, 1),
(9197, 1827, 3),
(9198, 1827, 2),
(9199, 1827, 4),
(9200, 1827, 5),
(9206, 1829, 1),
(9207, 1829, 3),
(9208, 1829, 2),
(9209, 1829, 4),
(9210, 1829, 5),
(9211, 1830, 1),
(9212, 1830, 3),
(9213, 1830, 2),
(9214, 1830, 4),
(9215, 1830, 5),
(9216, 1831, 1),
(9217, 1831, 3),
(9218, 1831, 2),
(9219, 1831, 4),
(9220, 1831, 5),
(9221, 1832, 1),
(9222, 1832, 3),
(9223, 1832, 2),
(9224, 1832, 4),
(9225, 1832, 5),
(9226, 1833, 1),
(9227, 1833, 3),
(9228, 1833, 2),
(9229, 1833, 4),
(9230, 1833, 5),
(9231, 1834, 1),
(9232, 1834, 2),
(9233, 1834, 3),
(9234, 1834, 4),
(9235, 1834, 5),
(9236, 1835, 1),
(9237, 1835, 2),
(9238, 1835, 3),
(9239, 1835, 4),
(9240, 1836, 1),
(9241, 1836, 2),
(9242, 1836, 3),
(9243, 1836, 4),
(9244, 1837, 1),
(9245, 1837, 2),
(9246, 1837, 3),
(9247, 1837, 4),
(9248, 1837, 5),
(9249, 1838, 1),
(9250, 1838, 2),
(9251, 1838, 3),
(9252, 1838, 4),
(9253, 1839, 3),
(9254, 1839, 1),
(9255, 1839, 2),
(9256, 1839, 4),
(9257, 1840, 1),
(9258, 1840, 2),
(9259, 1840, 3),
(9260, 1840, 4),
(9261, 1840, 5),
(9262, 1841, 1),
(9263, 1841, 2),
(9264, 1841, 3),
(9265, 1841, 4),
(9266, 1842, 1),
(9267, 1842, 2),
(9268, 1842, 3),
(9269, 1842, 4),
(9270, 1843, 1),
(9271, 1843, 2),
(9272, 1843, 3),
(9273, 1843, 4),
(9274, 1843, 5),
(9275, 1844, 1),
(9276, 1844, 2),
(9277, 1844, 3),
(9278, 1844, 4),
(9279, 1845, 1),
(9280, 1845, 2),
(9281, 1845, 3),
(9282, 1845, 4),
(9283, 1845, 5),
(9284, 1846, 1),
(9285, 1846, 2),
(9286, 1846, 3),
(9287, 1846, 4),
(9288, 1847, 1),
(9289, 1847, 2),
(9290, 1847, 3),
(9291, 1847, 4),
(9292, 1847, 5);

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

--
-- Dumping data for table `filter_option_translations`
--

INSERT INTO `filter_option_translations` (`id`, `filter_option_id`, `locale`, `title`) VALUES
(1, 9114, 'en', 'Beginner'),
(2, 9115, 'en', 'Intermediate'),
(3, 9116, 'en', 'Expert'),
(4, 9117, 'en', 'Beginner'),
(5, 9118, 'en', 'Intermediate'),
(6, 9119, 'en', 'Expert'),
(7, 9120, 'en', 'Beginner'),
(8, 9121, 'en', 'Intermediate'),
(9, 9122, 'en', 'Expert'),
(10, 9123, 'en', 'Beginner'),
(11, 9124, 'en', 'Intermediate'),
(12, 9125, 'en', 'Expert'),
(13, 9126, 'en', 'Beginner'),
(14, 9127, 'en', 'Intermediate'),
(15, 9128, 'en', 'Expert'),
(16, 9129, 'en', 'Beginner'),
(17, 9130, 'en', 'Intermediate'),
(18, 9131, 'en', 'Intermediate'),
(19, 9132, 'en', 'Beginner'),
(20, 9133, 'en', 'Intermediate'),
(21, 9134, 'en', 'Expert'),
(22, 9135, 'en', 'Beginner'),
(23, 9136, 'en', 'Intermediate'),
(24, 9137, 'en', 'Expert'),
(25, 9138, 'en', 'Beginner'),
(26, 9139, 'en', 'Intermediate'),
(27, 9140, 'en', 'Expert'),
(28, 9141, 'en', 'Beginner'),
(29, 9142, 'en', 'Intermediate'),
(30, 9143, 'en', 'Expert'),
(31, 9144, 'en', 'Beginner'),
(32, 9145, 'en', 'Intermediate'),
(33, 9146, 'en', 'Expert'),
(34, 9147, 'en', 'Beginner'),
(35, 9148, 'en', 'Intermediate'),
(36, 9149, 'en', 'Expert'),
(37, 9150, 'en', 'Beginner'),
(38, 9151, 'en', 'Intermediate'),
(39, 9152, 'en', 'Expert'),
(40, 9153, 'en', 'Beginner'),
(41, 9154, 'en', 'Intermediate'),
(42, 9155, 'en', 'Expert'),
(43, 9156, 'en', 'English'),
(44, 9157, 'en', 'Português'),
(45, 9158, 'en', 'Español'),
(46, 9159, 'en', 'हिन्'),
(47, 9160, 'en', 'العربية'),
(48, 9161, 'en', 'English'),
(49, 9162, 'en', 'Português'),
(50, 9163, 'en', 'Español'),
(51, 9164, 'en', 'हिन्'),
(52, 9165, 'en', 'العربية'),
(53, 9166, 'en', 'English'),
(54, 9167, 'en', 'Português'),
(55, 9168, 'en', 'Español'),
(56, 9169, 'en', 'हिन्'),
(57, 9170, 'en', 'العربية'),
(58, 9171, 'en', 'English'),
(59, 9172, 'en', 'Português'),
(60, 9173, 'en', 'Español'),
(61, 9174, 'en', 'हिन्'),
(62, 9175, 'en', 'العربية'),
(63, 9176, 'en', 'English'),
(64, 9177, 'en', 'Português'),
(65, 9178, 'en', 'Español'),
(66, 9179, 'en', 'हिन्'),
(67, 9180, 'en', 'العربية'),
(68, 9181, 'en', 'English'),
(69, 9182, 'en', 'Português'),
(70, 9183, 'en', 'Español'),
(71, 9184, 'en', 'हिन्'),
(72, 9185, 'en', 'العربية'),
(73, 9186, 'en', 'English'),
(74, 9187, 'en', 'Português'),
(75, 9188, 'en', 'Español'),
(76, 9189, 'en', 'हिन्'),
(77, 9190, 'en', 'العربية'),
(78, 9191, 'en', 'English'),
(79, 9192, 'en', 'Português'),
(80, 9193, 'en', 'Español'),
(81, 9194, 'en', 'हिन्'),
(82, 9195, 'en', 'العربية'),
(83, 9196, 'en', 'English'),
(84, 9197, 'en', 'Português'),
(85, 9198, 'en', 'Español'),
(86, 9199, 'en', 'हिन्'),
(87, 9200, 'en', 'العربية'),
(88, 9206, 'en', 'English'),
(89, 9207, 'en', 'Português'),
(90, 9208, 'en', 'Español'),
(91, 9209, 'en', 'हिन्'),
(92, 9210, 'en', 'العربية'),
(93, 9211, 'en', 'English'),
(94, 9212, 'en', 'Português'),
(95, 9213, 'en', 'Español'),
(96, 9214, 'en', 'हिन्'),
(97, 9215, 'en', 'العربية'),
(98, 9216, 'en', 'English'),
(99, 9217, 'en', 'Português'),
(100, 9218, 'en', 'Español'),
(101, 9219, 'en', 'हिन्'),
(102, 9220, 'en', 'العربية'),
(103, 9221, 'en', 'English'),
(104, 9222, 'en', 'Português'),
(105, 9223, 'en', 'Español'),
(106, 9224, 'en', 'हिन्'),
(107, 9225, 'en', 'العربية'),
(108, 9226, 'en', 'English'),
(109, 9227, 'en', 'Português'),
(110, 9228, 'en', 'Español'),
(111, 9229, 'en', 'हिन्'),
(112, 9230, 'en', 'العربية'),
(113, 9231, 'en', 'Photoshop'),
(114, 9232, 'en', 'Adobe Illustrator'),
(115, 9233, 'en', 'Blender'),
(116, 9234, 'en', '3D Modeling'),
(117, 9235, 'en', 'After Effects'),
(118, 9236, 'en', 'Math'),
(119, 9237, 'en', 'Algebra'),
(120, 9238, 'en', 'Calculus'),
(121, 9239, 'en', 'Statistics'),
(122, 9240, 'en', 'Physics'),
(123, 9241, 'en', 'Chemistry'),
(124, 9242, 'en', 'Biology'),
(125, 9243, 'en', 'Genetics'),
(126, 9244, 'en', 'English Language'),
(127, 9245, 'en', 'English Grammar'),
(128, 9246, 'en', 'Spanish Language'),
(129, 9247, 'en', 'Arabic Language'),
(130, 9248, 'en', 'IELTS'),
(131, 9249, 'en', 'Yoga'),
(132, 9250, 'en', 'Fitness'),
(133, 9251, 'en', 'Health'),
(134, 9252, 'en', 'Dance'),
(135, 9253, 'en', 'Chess'),
(136, 9254, 'en', 'Cooking'),
(137, 9255, 'en', 'Drawing'),
(138, 9256, 'en', 'Reiki'),
(139, 9257, 'en', 'Makeup Artistry'),
(140, 9258, 'en', 'Hair Styling'),
(141, 9259, 'en', 'Skincare'),
(142, 9260, 'en', 'Fashion'),
(143, 9261, 'en', 'Nail Art'),
(144, 9262, 'en', 'Digital Marketing'),
(145, 9263, 'en', 'SEO'),
(146, 9264, 'en', 'Marketing Strategy'),
(147, 9265, 'en', 'Social Media Marketing'),
(148, 9266, 'en', 'Leadership'),
(149, 9267, 'en', 'Management Skills'),
(150, 9268, 'en', 'ISO 9001'),
(151, 9269, 'en', 'Manager Training'),
(152, 9270, 'en', 'Communication Skills'),
(153, 9271, 'en', 'Presentation Skills'),
(154, 9272, 'en', 'Public Speaking'),
(155, 9273, 'en', 'Business Communication'),
(156, 9274, 'en', 'Writing'),
(157, 9275, 'en', 'Business Strategy'),
(158, 9276, 'en', 'Strategic Planning'),
(159, 9277, 'en', 'Marketing Strategy'),
(160, 9278, 'en', 'Innovation'),
(161, 9279, 'en', 'HTML'),
(162, 9280, 'en', 'CSS'),
(163, 9281, 'en', 'PHP'),
(164, 9282, 'en', 'JavaScript'),
(165, 9283, 'en', 'Laravel'),
(166, 9284, 'en', 'Android Development'),
(167, 9285, 'en', 'iOS Development'),
(168, 9286, 'en', 'Google Flutter'),
(169, 9287, 'en', 'React NativeKotlin'),
(170, 9288, 'en', 'Unity'),
(171, 9289, 'en', 'Unreal Engine'),
(172, 9290, 'en', 'Unreal Engine Blueprints'),
(173, 9291, 'en', '3D Game Development'),
(174, 9292, 'en', 'Game Development Fundamentals');

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

--
-- Dumping data for table `filter_translations`
--

INSERT INTO `filter_translations` (`id`, `filter_id`, `locale`, `title`) VALUES
(1, 1805, 'en', 'Level'),
(2, 1806, 'en', 'Level'),
(3, 1807, 'en', 'Level'),
(4, 1808, 'en', 'Level'),
(5, 1809, 'en', 'Level'),
(6, 1810, 'en', 'Level'),
(7, 1811, 'en', 'Level'),
(8, 1812, 'en', 'Level'),
(9, 1813, 'en', 'Level'),
(10, 1814, 'en', 'Level'),
(11, 1815, 'en', 'Level'),
(12, 1816, 'en', 'Level'),
(13, 1817, 'en', 'Level'),
(14, 1818, 'en', 'Level'),
(15, 1819, 'en', 'Language'),
(16, 1820, 'en', 'Language'),
(17, 1821, 'en', 'Language'),
(18, 1822, 'en', 'Language'),
(19, 1823, 'en', 'Language'),
(20, 1824, 'en', 'Language'),
(21, 1825, 'en', 'Language'),
(22, 1826, 'en', 'Language'),
(23, 1827, 'en', 'Language'),
(24, 1829, 'en', 'Language'),
(25, 1830, 'en', 'Language'),
(26, 1831, 'en', 'Language'),
(27, 1832, 'en', 'Language'),
(28, 1833, 'en', 'Language'),
(29, 1834, 'en', 'Topic'),
(30, 1835, 'en', 'Topic'),
(31, 1836, 'en', 'Topic'),
(32, 1837, 'en', 'Topic'),
(33, 1838, 'en', 'Topic'),
(34, 1839, 'en', 'Topic'),
(35, 1840, 'en', 'Topic'),
(36, 1841, 'en', 'Topic'),
(37, 1842, 'en', 'Topic'),
(38, 1843, 'en', 'Topic'),
(39, 1844, 'en', 'Topic'),
(40, 1845, 'en', 'Topic'),
(41, 1846, 'en', 'Topic'),
(42, 1847, 'en', 'Topic');

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
(64, 3, 996, 1625974235),
(65, 2, 3, 1625974258),
(66, 2, 1016, 1625974260);

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
(29, 923, 100, 10, 1, 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1625916131),
(30, 1015, 100, NULL, 1, 250, 1, 20, 200, 50, 5, 30, 150, 0, 1625938321),
(31, 934, 100, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1625939199),
(32, 929, 200, NULL, 1, 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1625939298),
(33, 870, 100, NULL, 1, 200, 1, 20, 100, 80, 5, 30, 150, 0, 1625939436),
(34, 3, 50, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1625939607),
(35, 1016, 60, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1625941278);

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
(84, 29, 'all', 'monday', '09:00AM-10:00AM', NULL, 1625916149),
(85, 29, 'all', 'wednesday', '08:30AM-10:00AM', NULL, 1625916235),
(86, 29, 'all', 'thursday', '06:30PM-07:30PM', NULL, 1625916372),
(87, 29, 'all', 'monday', '07:00PM-09:00PM', NULL, 1625916397),
(88, 29, 'all', 'thursday', '09:30PM-10:30PM', NULL, 1625916437),
(89, 29, 'all', 'wednesday', '10:15AM-11:45AM', NULL, 1625916467),
(90, 29, 'all', 'wednesday', '07:30PM-09:00PM', NULL, 1625916508),
(91, 29, 'all', 'tuesday', '09:00PM-10:00PM', NULL, 1625916577),
(92, 29, 'all', 'friday', '08:30PM-10:00PM', NULL, 1625916611),
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
(107, 32, 'all', 'wednesday', '09:00AM-11:30AM', NULL, 1625939319),
(108, 32, 'all', 'monday', '09:00AM-10:30AM', NULL, 1625939339),
(109, 32, 'all', 'monday', '10:45AM-11:45AM', NULL, 1625939358),
(110, 32, 'all', 'tuesday', '06:00PM-07:30PM', NULL, 1625939384),
(111, 33, 'all', 'monday', '08:00AM-09:30AM', NULL, 1625939462),
(112, 33, 'all', 'thursday', '08:30AM-09:30AM', NULL, 1625939477),
(113, 33, 'all', 'tuesday', '10:30AM-11:30AM', NULL, 1625939493),
(114, 33, 'all', 'wednesday', '08:00AM-09:00AM', NULL, 1625939508),
(115, 33, 'all', 'thursday', '09:30AM-10:30AM', NULL, 1625939527),
(116, 33, 'all', 'monday', '10:30AM-11:30AM', NULL, 1625939551),
(117, 34, 'all', 'monday', '09:30AM-10:30AM', NULL, 1625939631),
(118, 34, 'all', 'tuesday', '09:30AM-10:30AM', NULL, 1625939646),
(119, 34, 'all', 'monday', '10:45AM-11:45AM', NULL, 1625939660),
(120, 34, 'all', 'wednesday', '08:00AM-10:00AM', NULL, 1625939678),
(121, 34, 'all', 'wednesday', '10:30AM-11:30AM', NULL, 1625939700),
(122, 34, 'all', 'wednesday', '05:00PM-06:30PM', NULL, 1625939744),
(123, 34, 'all', 'thursday', '08:00PM-09:30PM', NULL, 1625939763),
(124, 35, 'all', 'monday', '09:30AM-10:30AM', NULL, 1625941315),
(125, 35, 'all', 'monday', '11:00AM-11:45AM', NULL, 1625941331),
(126, 35, 'all', 'tuesday', '08:00AM-09:30AM', NULL, 1625941347),
(127, 35, 'all', 'wednesday', '08:00AM-09:30AM', NULL, 1625941388),
(128, 35, 'all', 'wednesday', '10:00AM-11:30AM', NULL, 1625941418),
(129, 35, 'all', 'monday', '05:00PM-06:30PM', NULL, 1625941460),
(130, 35, 'all', 'wednesday', '08:00PM-09:30PM', NULL, 1625941475),
(131, 35, 'all', 'thursday', '08:00AM-09:00AM', NULL, 1625941557),
(132, 35, 'all', 'thursday', '09:30AM-10:30AM', NULL, 1625941580),
(133, 35, 'all', 'thursday', '10:45AM-11:45AM', NULL, 1625941611),
(134, 35, 'all', 'monday', '07:30PM-08:30PM', NULL, 1625941640),
(135, 35, 'all', 'thursday', '10:00PM-11:00PM', NULL, 1625941668),
(136, 35, 'all', 'monday', '09:00PM-10:00PM', NULL, 1625941731),
(137, 35, 'all', 'monday', '10:15PM-11:00PM', NULL, 1625941832),
(138, 35, 'all', 'friday', '09:00AM-10:00AM', NULL, 1625941864),
(139, 35, 'all', 'friday', '10:30AM-11:30AM', NULL, 1625941879),
(140, 31, 'all', 'monday', '08:40AM-09:40AM', NULL, 1625942014),
(141, 31, 'all', 'monday', '10:00AM-11:30AM', NULL, 1625942028),
(142, 31, 'all', 'monday', '05:00PM-06:30PM', NULL, 1625942048),
(143, 31, 'all', 'monday', '06:45PM-07:45PM', NULL, 1625942079),
(144, 31, 'all', 'monday', '08:00PM-09:30PM', NULL, 1625942101),
(145, 31, 'all', 'monday', '10:00PM-10:30PM', NULL, 1625942137),
(146, 31, 'all', 'tuesday', '08:30AM-09:30AM', NULL, 1625942159),
(147, 31, 'all', 'tuesday', '10:00AM-11:00AM', NULL, 1625942173),
(148, 31, 'all', 'tuesday', '06:00PM-07:00PM', NULL, 1625942191),
(149, 31, 'all', 'saturday', '09:30AM-10:30AM', NULL, 1625942210),
(150, 31, 'all', 'sunday', '08:30AM-09:30AM', NULL, 1625942229),
(151, 31, 'all', 'sunday', '09:45AM-10:00AM', NULL, 1625942247),
(152, 31, 'all', 'sunday', '10:30AM-11:45AM', NULL, 1625942266),
(153, 31, 'all', 'saturday', '10:45AM-11:45AM', NULL, 1625942311),
(154, 31, 'all', 'sunday', '05:00PM-06:30PM', NULL, 1625942351),
(155, 31, 'all', 'wednesday', '08:15AM-09:15AM', NULL, 1625942379),
(156, 31, 'all', 'wednesday', '09:30AM-10:30AM', NULL, 1625942395),
(157, 31, 'all', 'wednesday', '10:45AM-11:45AM', NULL, 1625942414),
(158, 31, 'all', 'thursday', '07:30AM-08:30AM', NULL, 1625942446),
(159, 31, 'all', 'thursday', '08:45AM-09:45AM', NULL, 1625942461),
(160, 31, 'all', 'thursday', '10:00AM-11:00AM', NULL, 1625942474),
(161, 31, 'all', 'thursday', '05:30PM-07:00PM', NULL, 1625942499),
(162, 31, 'all', 'friday', '09:00AM-10:00AM', NULL, 1625942521),
(163, 31, 'all', 'friday', '10:30AM-11:30AM', NULL, 1625942564),
(164, 31, 'all', 'tuesday', '08:00PM-09:00PM', NULL, 1625942840),
(165, 31, 'all', 'saturday', '06:00PM-07:00PM', NULL, 1625943005),
(166, 29, 'in_person', 'saturday', '09:30AM-10:30AM', 'Business Management Workshop.', 1646352042),
(167, 32, 'in_person', 'saturday', '06:30PM-08:30PM', 'School Management Workshop', 1646352258),
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
(12, NULL, NULL, 'all', 'Staff', 'New Year Sales Festival', '<p>Due to the New Year Festival, users who buy more than $ 200 will be given a 20% discount code.</p>', 1626132374),
(13, 867, NULL, 'students_and_instructors', 'Light Moon', 'New Class Published', '\"Effective Time Management\" Live Class <font color=\"#6ba54a\" style=\"\">Published</font>, for getting the final certificate it is necessary to Enroll in this class.', 1626165028),
(14, 867, NULL, 'students_and_instructors', 'Light Moon', 'New Private Course Published', '<p>Dear students and instructors. Travel Management Course published privately for you. please enroll on this course<br></p>', 1626235132);

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
(5, 995, 13, 1626165137),
(6, 1015, 13, 1626165555),
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
) ENGINE=InnoDB AUTO_INCREMENT=1913 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `sender_id`, `group_id`, `title`, `message`, `sender`, `type`, `created_at`) VALUES
(1263, 1016, NULL, NULL, 'Course created', '<p>you create new course&nbsp;with Title Become a Product Manager</p>', 'system', 'single', 1624870230),
(1264, 1016, NULL, NULL, 'Course created', '<p>you create new course&nbsp;with Title Become a Product Manager</p>', 'system', 'single', 1624872525),
(1265, 1016, NULL, NULL, 'Course approve', '<p>your course with title Become a Product Manager approved</p>', 'system', 'single', 1624904613),
(1266, 1016, NULL, NULL, 'Course created', '<p>you create new course&nbsp;with Title Become a Product Manager</p>', 'system', 'single', 1624907184),
(1267, 1016, NULL, NULL, 'Course approve', '<p>your course with title Become a Product Manager approved</p>', 'system', 'single', 1624907798),
(1268, 1016, NULL, NULL, 'Course created', '<p>you create new course&nbsp;with Title Become a Product Manager</p>', 'system', 'single', 1624908934),
(1269, 1016, NULL, NULL, 'Course approve', '<p>your course with title Become a Product Manager approved</p>', 'system', 'single', 1624908947),
(1270, 1016, NULL, NULL, 'Course created', '<p>you create new course&nbsp;with Title Become a Product Manager</p>', 'system', 'single', 1624911781),
(1271, 1016, NULL, NULL, 'Course approve', '<p>your course with title Become a Product Manager approved</p>', 'system', 'single', 1624911801),
(1272, 1016, NULL, NULL, 'Course approve', '<p>your course with title Become a Product Manager approved</p>', 'system', 'single', 1624942128),
(1273, 1016, NULL, NULL, 'Course created', '<p>you create new course&nbsp;with Title Become a Product Manager</p>', 'system', 'single', 1624942267),
(1274, 1016, NULL, NULL, 'Course approve', '<p>your course with title Become a Product Manager approved</p>', 'system', 'single', 1624942277),
(1275, 1016, NULL, NULL, 'Course approve', '<p>your course with title Become a Product Manager approved</p>', 'system', 'single', 1624942627),
(1276, 1015, NULL, NULL, 'Course created', '<p>you create new course&nbsp;with Title Learn Linux in 5 Days</p>', 'system', 'single', 1624945432),
(1277, 1015, NULL, NULL, 'Course approve', '<p>your course with title Learn Linux in 5 Days approved</p>', 'system', 'single', 1624945452),
(1278, 934, NULL, NULL, 'Course created', '<p>you create new course&nbsp;with Title Learn Python Programming</p>', 'system', 'single', 1624957035),
(1279, 934, NULL, NULL, 'Course approve', '<p>your course with title Learn Python Programming approved</p>', 'system', 'single', 1624957054),
(1280, 934, NULL, NULL, 'Course approve', '<p>your course with title Learn Python Programming approved</p>', 'system', 'single', 1624959946),
(1281, 1015, NULL, NULL, 'Course created', '<p>you create new course&nbsp;with Title Excel from Beginner to Advanced</p>', 'system', 'single', 1624966729),
(1282, 1015, NULL, NULL, 'Course approve', '<p>your course with title Excel from Beginner to Advanced approved</p>', 'system', 'single', 1624966741),
(1283, 1015, NULL, NULL, 'Course created', '<p>you create new course&nbsp;with Title Excel from Beginner to Advanced</p>', 'system', 'single', 1625003468),
(1284, 1015, NULL, NULL, 'Course approve', '<p>your course with title Excel from Beginner to Advanced approved</p>', 'system', 'single', 1625003516),
(1285, 929, NULL, NULL, 'Course created', '<p>you create new course&nbsp;with Title How to Manage & Influence Your Virtual Team</p>', 'system', 'single', 1625041045),
(1286, 929, NULL, NULL, 'Course approve', '<p>your course with title How to Manage & Influence Your Virtual Team approved</p>', 'system', 'single', 1625041074),
(1287, 929, NULL, NULL, 'Course created', '<p>you create new course&nbsp;with Title How to Manage & Influence Your Virtual Team</p>', 'system', 'single', 1625043168),
(1288, 929, NULL, NULL, 'Course approve', '<p>your course with title How to Manage & Influence Your Virtual Team approved</p>', 'system', 'single', 1625043180),
(1289, 929, NULL, NULL, 'Course approve', '<p>your course with title How to Manage & Influence Your Virtual Team approved</p>', 'system', 'single', 1625043319),
(1290, 867, NULL, NULL, 'Course created', '<p>you create new course&nbsp;with Title Effective Time Management</p>', 'system', 'single', 1625046155),
(1291, 923, NULL, NULL, 'Course approve', '<p>your course with title Effective Time Management approved</p>', 'system', 'single', 1625046173),
(1292, 3, NULL, NULL, 'Course approve', '<p>your course with title Learn and Understand AngularJS approved</p>', 'system', 'single', 1625084229),
(1293, 3, NULL, NULL, 'Course created', '<p>you create new course&nbsp;with Title Learn and Understand AngularJS</p>', 'system', 'single', 1625085106),
(1294, 3, NULL, NULL, 'Course approve', '<p>your course with title Learn and Understand AngularJS approved</p>', 'system', 'single', 1625085118),
(1295, 3, NULL, NULL, 'Course approve', '<p>your course with title Learn and Understand AngularJS approved</p>', 'system', 'single', 1625088480),
(1296, 3, NULL, NULL, 'Course created', '<p>you create new course&nbsp;with Title Learn and Understand AngularJS</p>', 'system', 'single', 1625088678),
(1297, 3, NULL, NULL, 'Course approve', '<p>your course with title Learn and Understand AngularJS approved</p>', 'system', 'single', 1625088698),
(1298, 3, NULL, NULL, 'Course approve', '<p>your course with title Learn and Understand AngularJS approved</p>', 'system', 'single', 1625088760),
(1299, 863, NULL, NULL, 'Course created', '<p>you create new course&nbsp;with Title Health And Fitness Masterclass: Beginner To Advanced</p>', 'system', 'single', 1625124082),
(1300, 870, NULL, NULL, 'Course approve', '<p>your course with title Health And Fitness Masterclass approved</p>', 'system', 'single', 1625124100),
(1301, 934, NULL, NULL, 'Course created', '<p>you create new course&nbsp;with Title Learn Python Programming</p>', 'system', 'single', 1625286023),
(1302, 934, NULL, NULL, 'Course approve', '<p>your course with title Learn Python Programming approved</p>', 'system', 'single', 1625286038),
(1303, 1015, NULL, NULL, 'Course approve', '<p>your course with title Excel from Beginner to Advanced approved</p>', 'system', 'single', 1625293759),
(1304, 870, NULL, NULL, 'Course approve', '<p>your course with title Health And Fitness Masterclass approved</p>', 'system', 'single', 1625293821),
(1305, 923, NULL, NULL, 'Course approve', '<p>your course with title Effective Time Management approved</p>', 'system', 'single', 1625293844),
(1306, 864, NULL, NULL, 'Course created', '<p>you create new course&nbsp;with Title Active Listening: You Can Be a Great Listener</p>', 'system', 'single', 1625300387),
(1307, 3, NULL, NULL, 'Course approve', '<p>your course with title Active Listening: You Can Be a Great Listener approved</p>', 'system', 'single', 1625300399),
(1308, 864, NULL, NULL, 'Course created', '<p>you create new course&nbsp;with Title Active Listening: You Can Be a Great Listener</p>', 'system', 'single', 1625300598),
(1309, 3, NULL, NULL, 'Course approve', '<p>your course with title Active Listening: You Can Be a Great Listener approved</p>', 'system', 'single', 1625300612),
(1310, 870, NULL, NULL, 'Course approve', '<p>your course with title Health And Fitness Masterclass approved</p>', 'system', 'single', 1625301355),
(1311, 3, NULL, NULL, 'Course created', '<p>you create new course&nbsp;with Title Learn and Understand AngularJS</p>', 'system', 'single', 1625301679),
(1312, 3, NULL, NULL, 'Course created', '<p>you create new course&nbsp;with Title Learn and Understand AngularJS</p>', 'system', 'single', 1625301721),
(1313, 3, NULL, NULL, 'Course approve', '<p>your course with title Learn and Understand AngularJS approved</p>', 'system', 'single', 1625301754),
(1314, 1016, NULL, NULL, 'New badge', '<p>Congratilations! You received New User&nbsp;badge.</p>', 'system', 'single', 1625553784),
(1315, 1015, NULL, NULL, 'New badge', '<p>Congratilations! You received New User&nbsp;badge.</p>', 'system', 'single', 1625553799),
(1316, 934, NULL, NULL, 'New badge', '<p>Congratilations! You received New User&nbsp;badge.</p>', 'system', 'single', 1625553801),
(1317, 929, NULL, NULL, 'New badge', '<p>Congratilations! You received New User&nbsp;badge.</p>', 'system', 'single', 1625553801),
(1318, 870, NULL, NULL, 'New badge', '<p>Congratilations! You received New User&nbsp;badge.</p>', 'system', 'single', 1625553802),
(1319, 923, NULL, NULL, 'New badge', '<p>Congratilations! You received New User&nbsp;badge.</p>', 'system', 'single', 1625553802),
(1320, 3, NULL, NULL, 'New badge', '<p>Congratilations! You received New User&nbsp;badge.</p>', 'system', 'single', 1625553815),
(1321, 864, NULL, NULL, 'New badge', '<p>Congratilations! You received New User&nbsp;badge.</p>', 'system', 'single', 1625553917),
(1322, 934, NULL, NULL, 'New badge', '<p>Congratilations! You received Loyal User&nbsp;badge.</p>', 'system', 'single', 1625554209),
(1323, 929, NULL, NULL, 'New badge', '<p>Congratilations! You received Loyal User&nbsp;badge.</p>', 'system', 'single', 1625554210),
(1324, 870, NULL, NULL, 'New badge', '<p>Congratilations! You received Loyal User&nbsp;badge.</p>', 'system', 'single', 1625554210),
(1325, 923, NULL, NULL, 'New badge', '<p>Congratilations! You received Loyal User&nbsp;badge.</p>', 'system', 'single', 1625554211),
(1326, 929, NULL, NULL, 'New badge', '<p>Congratilations! You received Faitful User&nbsp;badge.</p>', 'system', 'single', 1625554498),
(1327, 870, NULL, NULL, 'New badge', '<p>Congratilations! You received Faitful User&nbsp;badge.</p>', 'system', 'single', 1625554499),
(1328, 923, NULL, NULL, 'New badge', '<p>Congratilations! You received Faitful User&nbsp;badge.</p>', 'system', 'single', 1625554499),
(1329, 1016, NULL, NULL, 'New badge', '<p>Congratilations! You received Junior Vendor&nbsp;badge.</p>', 'system', 'single', 1625554777),
(1330, 1015, NULL, NULL, 'New badge', '<p>Congratilations! You received Junior Vendor&nbsp;badge.</p>', 'system', 'single', 1625554779),
(1331, 934, NULL, NULL, 'New badge', '<p>Congratilations! You received Junior Vendor&nbsp;badge.</p>', 'system', 'single', 1625554782),
(1332, 929, NULL, NULL, 'New badge', '<p>Congratilations! You received Junior Vendor&nbsp;badge.</p>', 'system', 'single', 1625554784),
(1333, 870, NULL, NULL, 'New badge', '<p>Congratilations! You received Junior Vendor&nbsp;badge.</p>', 'system', 'single', 1625554784),
(1334, 923, NULL, NULL, 'New badge', '<p>Congratilations! You received Junior Vendor&nbsp;badge.</p>', 'system', 'single', 1625554785),
(1335, 1015, NULL, NULL, 'New badge', '<p>Congratilations! You received Senior Vendor&nbsp;badge.</p>', 'system', 'single', 1625554976),
(1336, 3, NULL, NULL, 'New badge', '<p>Congratilations! You received Faitful User&nbsp;badge.</p>', 'system', 'single', 1625558907),
(1337, 3, NULL, NULL, 'New badge', '<p>Congratilations! You received Senior Vendor&nbsp;badge.</p>', 'system', 'single', 1625558908),
(1338, 867, NULL, NULL, 'New badge', '<p>Congratilations! You received Faitful User&nbsp;badge.</p>', 'system', 'single', 1625602049),
(1339, 867, NULL, NULL, 'New badge', '<p>Congratilations! You received Junior Vendor&nbsp;badge.</p>', 'system', 'single', 1625602050),
(1340, 864, NULL, NULL, 'New badge', '<p>Congratilations! You received Faitful User&nbsp;badge.</p>', 'system', 'single', 1625635046),
(1341, 864, NULL, NULL, 'New badge', '<p>Congratilations! You received Junior Vendor&nbsp;badge.</p>', 'system', 'single', 1625635048),
(1342, 996, NULL, NULL, 'New badge', '<p>Congratilations! You received Loyal User&nbsp;badge.</p>', 'system', 'single', 1625636389),
(1343, 859, NULL, NULL, 'New badge', '<p>Congratilations! You received Faitful User&nbsp;badge.</p>', 'system', 'single', 1625642664),
(1344, 863, NULL, NULL, 'New badge', '<p>Congratilations! You received Faitful User&nbsp;badge.</p>', 'system', 'single', 1625643033),
(1345, 863, NULL, NULL, 'New badge', '<p>Congratilations! You received Junior Vendor&nbsp;badge.</p>', 'system', 'single', 1625643034),
(1346, 868, NULL, NULL, 'New badge', '<p>Congratilations! You received Faitful User&nbsp;badge.</p>', 'system', 'single', 1625643807),
(1347, 4, NULL, NULL, 'New badge', '<p>Congratilations! You received Faitful User&nbsp;badge.</p>', 'system', 'single', 1625644582),
(1348, 995, NULL, NULL, 'New badge', '<p>Congratilations! You received Loyal User&nbsp;badge.</p>', 'system', 'single', 1625681178),
(1349, 929, NULL, NULL, 'Your class created', '<p>Your class The Future of Energy successfully created. It will be published after approval.</p>', 'system', 'single', 1625685731),
(1350, 929, NULL, NULL, 'Your class approved', '<p>Your class The Future of Energy successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1625685748),
(1351, 929, NULL, NULL, 'New badge', '<p>Congratilations! You received Senior Vendor&nbsp;badge.</p>', 'system', 'single', 1625685768),
(1352, 929, NULL, NULL, 'Your class approved', '<p>Your class The Future of Energy successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1625685818),
(1353, 929, NULL, NULL, 'Your class approved', '<p>Your class The Future of Energy successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1625685843),
(1354, 4, NULL, NULL, 'Your class created', '<p>Your class Web Design for Beginners successfully created. It will be published after approval.</p>', 'system', 'single', 1625691113),
(1355, 934, NULL, NULL, 'Your class approved', '<p>Your class Web Design for Beginners successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1625691133),
(1356, 1016, NULL, NULL, 'Your class approved', '<p>Your class Become a Product Manager successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1625691301),
(1357, 1016, NULL, NULL, 'Your class approved', '<p>Your class Become a Product Manager successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1625692122),
(1358, 929, NULL, NULL, 'Your class approved', '<p>Your class The Future of Energy successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1625692134),
(1359, 934, NULL, NULL, 'Your class approved', '<p>Your class Web Design for Beginners successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1625692139),
(1360, 867, NULL, NULL, 'New badge', '<p>Congratilations! You received Senior Vendor&nbsp;badge.</p>', 'system', 'single', 1625693949),
(1361, 867, NULL, NULL, 'Your class created', '<p>Your class How to Travel Around the World on a Budget successfully created. It will be published after approval.</p>', 'system', 'single', 1625694536),
(1362, 923, NULL, NULL, 'Your class approved', '<p>Your class How to Travel Around the World on a Budget successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1625694552),
(1363, 4, NULL, NULL, 'New badge', '<p>Congratilations! You received Junior Vendor&nbsp;badge.</p>', 'system', 'single', 1625694573),
(1364, 934, NULL, NULL, 'New badge', '<p>Congratilations! You received Senior Vendor&nbsp;badge.</p>', 'system', 'single', 1625694573),
(1365, 923, NULL, NULL, 'New badge', '<p>Congratilations! You received Senior Vendor&nbsp;badge.</p>', 'system', 'single', 1625694574),
(1366, 923, NULL, NULL, 'Your class approved', '<p>Your class How to Travel Around the World successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1625694594),
(1368, 1, NULL, NULL, 'New comment for your class', '<p>Robert B. Gray left a new comment on your class The Future of Energy .</p>', 'system', 'single', 1625863108),
(1369, 930, NULL, NULL, 'New badge', '<p>Congratilations! You received Faitful User&nbsp;badge.</p>', 'system', 'single', 1625863166),
(1370, 1, NULL, NULL, 'New comment for your class', '<p>Jade Harrison left a new comment on your class Excel from Beginner to Advanced .</p>', 'system', 'single', 1625863203),
(1371, 979, NULL, NULL, 'New badge', '<p>Congratilations! You received Loyal User&nbsp;badge.</p>', 'system', 'single', 1625863218),
(1372, 1, NULL, NULL, 'New comment for your class', '<p>Morgan Sullivan left a new comment on your class How to Manage & Influence Your Virtual Team .</p>', 'system', 'single', 1625863345),
(1373, 1, NULL, NULL, 'New comment for your class', '<p>Robert Ransdell left a new comment on your class Learn Python Programming .</p>', 'system', 'single', 1625863462),
(1374, 934, NULL, NULL, 'New comment for your class', '<p>Robert Ransdell left a new comment on your class Learn Python Programming .</p>', 'system', 'single', 1625863587),
(1375, 929, NULL, NULL, 'New comment for your class', '<p>Morgan Sullivan left a new comment on your class How to Manage & Influence Your Virtual Team .</p>', 'system', 'single', 1625863590),
(1376, 1015, NULL, NULL, 'New comment for your class', '<p>Jade Harrison left a new comment on your class Excel from Beginner to Advanced .</p>', 'system', 'single', 1625863593),
(1377, 929, NULL, NULL, 'New comment for your class', '<p>Robert B. Gray left a new comment on your class The Future of Energy .</p>', 'system', 'single', 1625863596),
(1378, 1, NULL, NULL, 'New comment for your class', '<p>James Kong left a new comment on your class Learn Python Programming .</p>', 'system', 'single', 1625864259),
(1379, 934, NULL, NULL, 'New comment for your class', '<p>James Kong left a new comment on your class Learn Python Programming .</p>', 'system', 'single', 1625864266),
(1380, 1, NULL, NULL, 'New comment for your class', '<p>Ricardo dave left a new comment on your class How to Travel Around the World .</p>', 'system', 'single', 1625864416),
(1381, 923, NULL, NULL, 'New comment for your class', '<p>Ricardo dave left a new comment on your class How to Travel Around the World .</p>', 'system', 'single', 1625864421),
(1382, 1, NULL, NULL, 'New comment for your class', '<p>Cameron Schofield left a new comment on your class The Future of Energy .</p>', 'system', 'single', 1625864526),
(1383, 929, NULL, NULL, 'New comment for your class', '<p>Cameron Schofield left a new comment on your class The Future of Energy .</p>', 'system', 'single', 1625864533),
(1384, 1, NULL, NULL, 'New support ticket', '<p>New support ticket received with subject Convert Videos .</p>', 'system', 'single', 1625891270),
(1385, 1, NULL, NULL, 'New support ticket', '<p>New support ticket received with subject Pre-purchase question .</p>', 'system', 'single', 1625891677),
(1386, 1, NULL, NULL, 'New support ticket', '<p>New support ticket received with subject Pending Offline Payment .</p>', 'system', 'single', 1625891851),
(1387, 1, NULL, NULL, 'New support ticket', '<p>New support ticket received with subject Commission Rate .</p>', 'system', 'single', 1625892221),
(1388, 1, NULL, NULL, 'New support ticket', '<p>New support ticket received with subject Class delay .</p>', 'system', 'single', 1625895874),
(1389, 1, NULL, NULL, 'New reply on support ticket', '<p>The support ticket with the subject Class delay updated with a new reply.</p>', 'system', 'single', 1625897110),
(1390, 1, NULL, NULL, 'New reply on support ticket', '<p>The support ticket with the subject Class delay updated with a new reply.</p>', 'system', 'single', 1625898890),
(1391, 996, NULL, NULL, 'Offline payment submitted', '<p>An offline payment request with the amount 500 submitted successfully.</p>', 'system', 'single', 1625944192),
(1392, 996, NULL, NULL, 'Offline payment approved', '<p>Offline payment request with the amount 500 successfully approved.</p>', 'system', 'single', 1625944212),
(1393, 1015, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class  .</p>', 'system', 'single', 1625944345),
(1394, 996, NULL, NULL, 'New purchase completed', '<p>The class  successfully purchased. Now you can start learning.</p>', 'system', 'single', 1625944345),
(1395, 996, NULL, NULL, 'New meeting request', '<p>New meeting booked by Robert B. Gray for 2021-07-12  with the amount 150 .</p>', 'system', 'single', 1625944346),
(1396, 1015, NULL, NULL, 'New meeting request', '<p>New meeting booked by Robert B. Gray for 2021-07-12  with the amount 150 .</p>', 'system', 'single', 1625944346),
(1397, 996, NULL, NULL, 'New financial document', '<p>&nbsp;New financial document submitted for your class Meeting Reservation with type deduction and amount 165.00 .</p>', 'system', 'single', 1625944347),
(1398, 1015, NULL, NULL, 'Your class approved', '<p>Your class Learn Linux in 5 Days successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1625947994),
(1399, 1015, NULL, NULL, 'Your class approved', '<p>Your class Excel from Beginner to Advanced successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1625948044),
(1400, 934, NULL, NULL, 'Your class approved', '<p>Your class Learn Python Programming successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1625949854),
(1401, 1016, NULL, NULL, 'Your class approved', '<p>Your class Become a Product Manager successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1625950395),
(1402, 995, NULL, NULL, 'Offline payment submitted', '<p>An offline payment request with the amount 1000 submitted successfully.</p>', 'system', 'single', 1625950563),
(1403, 930, NULL, NULL, 'New financial document', '<p>&nbsp;New financial document submitted for your class [c.title] with type addiction and amount 600 .</p>', 'system', 'single', 1625950715),
(1404, 995, NULL, NULL, 'Offline payment approved', '<p>Offline payment request with the amount 1000 successfully approved.</p>', 'system', 'single', 1625950749),
(1405, 934, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class  .</p>', 'system', 'single', 1625952628),
(1406, 995, NULL, NULL, 'New purchase completed', '<p>The class  successfully purchased. Now you can start learning.</p>', 'system', 'single', 1625952628),
(1407, 995, NULL, NULL, 'New meeting request', '<p>New meeting booked by Cameron Schofield for 2021-08-05  with the amount 100 .</p>', 'system', 'single', 1625952629),
(1408, 934, NULL, NULL, 'New meeting request', '<p>New meeting booked by Cameron Schofield for 2021-08-05  with the amount 100 .</p>', 'system', 'single', 1625952629),
(1409, 995, NULL, NULL, 'New financial document', '<p>&nbsp;New financial document submitted for your class Meeting Reservation with type deduction and amount 110.00 .</p>', 'system', 'single', 1625952630),
(1410, 4, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class Web Design for Beginners .</p>', 'system', 'single', 1625953196),
(1411, 995, NULL, NULL, 'New purchase completed', '<p>The class Web Design for Beginners successfully purchased. Now you can start learning.</p>', 'system', 'single', 1625953197),
(1412, 995, NULL, NULL, 'New financial document', '<p>&nbsp;New financial document submitted for your class Web Design for Beginners with type deduction and amount 11.00 .</p>', 'system', 'single', 1625953197),
(1413, 934, NULL, NULL, 'New class support message', '<p>user Cameron Schofield send new support message for course with title Web Design for Beginners .</p>', 'system', 'single', 1625953303),
(1414, 996, NULL, NULL, 'Your user group changed', '<p>Your user group changed to Special Students .</p>', 'system', 'single', 1625974235),
(1415, 3, NULL, NULL, 'Your user group changed', '<p>Your user group changed to Vip Instructors .</p>', 'system', 'single', 1625974258),
(1416, 1016, NULL, NULL, 'Your user group changed', '<p>Your user group changed to Vip Instructors .</p>', 'system', 'single', 1625974260),
(1417, 934, NULL, NULL, 'New badge', '<p>Congratilations! You received Best Seller&nbsp;badge.</p>', 'system', 'single', 1625974480),
(1418, 4, NULL, NULL, 'New badge', '<p>Congratilations! You received Best Seller&nbsp;badge.</p>', 'system', 'single', 1625980530),
(1419, 979, NULL, NULL, 'Offline payment submitted', '<p>An offline payment request with the amount 400 submitted successfully.</p>', 'system', 'single', 1625992349),
(1420, 979, NULL, NULL, 'Offline payment approved', '<p>Offline payment request with the amount 400 successfully approved.</p>', 'system', 'single', 1625992548),
(1421, 1016, NULL, NULL, 'Offline payment submitted', '<p>An offline payment request with the amount 100 submitted successfully.</p>', 'system', 'single', 1625992606),
(1422, 1016, NULL, NULL, 'Offline payment rejected', '<p>Sorry, offline payment request with the amount 100&nbsp;rejected.</p>', 'system', 'single', 1625992620),
(1423, 923, NULL, NULL, 'Offline payment submitted', '<p>An offline payment request with the amount 300 submitted successfully.</p>', 'system', 'single', 1625993378),
(1424, 923, NULL, NULL, 'Offline payment submitted', '<p>An offline payment request with the amount 300 submitted successfully.</p>', 'system', 'single', 1625993428),
(1425, 930, NULL, NULL, 'Offline payment submitted', '<p>An offline payment request with the amount 250 submitted successfully.</p>', 'system', 'single', 1625993489),
(1426, 1015, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class  .</p>', 'system', 'single', 1625996812),
(1427, 995, NULL, NULL, 'New purchase completed', '<p>The class  successfully purchased. Now you can start learning.</p>', 'system', 'single', 1625996813),
(1428, 995, NULL, NULL, 'New meeting request', '<p>New meeting booked by Cameron Schofield for 2021-07-14  with the amount 125 .</p>', 'system', 'single', 1625996815),
(1429, 1015, NULL, NULL, 'New meeting request', '<p>New meeting booked by Cameron Schofield for 2021-07-14  with the amount 125 .</p>', 'system', 'single', 1625996816),
(1430, 995, NULL, NULL, 'New financial document', '<p>&nbsp;New financial document submitted for your class Meeting Reservation with type deduction and amount 137.50 .</p>', 'system', 'single', 1625996816),
(1431, 995, NULL, NULL, 'Meeting finished', '<p>The meeting finished. Instructor: Linda Anderson Student:&nbsp; Cameron Schofield&nbsp; Meeting time: 2021-08-05 .</p>', 'system', 'single', 1625996841),
(1432, 934, NULL, NULL, 'Meeting finished', '<p>The meeting finished. Instructor: Linda Anderson Student:&nbsp; Cameron Schofield&nbsp; Meeting time: 2021-08-05 .</p>', 'system', 'single', 1625996842),
(1433, 1016, NULL, NULL, 'New badge', '<p>Congratilations! You received Best Seller&nbsp;badge.</p>', 'system', 'single', 1625996905),
(1434, 929, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class How to Manage & Influence Your Virtual Team .</p>', 'system', 'single', 1625996941),
(1435, 995, NULL, NULL, 'New purchase completed', '<p>The class How to Manage & Influence Your Virtual Team successfully purchased. Now you can start learning.</p>', 'system', 'single', 1625996942),
(1436, 995, NULL, NULL, 'New financial document', '<p>&nbsp;New financial document submitted for your class How to Manage & Influence Your Virtual Team with type deduction and amount 55.00 .</p>', 'system', 'single', 1625996942),
(1437, 1015, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class Excel from Beginner to Advanced .</p>', 'system', 'single', 1625996978),
(1438, 995, NULL, NULL, 'New purchase completed', '<p>The class Excel from Beginner to Advanced successfully purchased. Now you can start learning.</p>', 'system', 'single', 1625996978),
(1439, 995, NULL, NULL, 'New financial document', '<p>&nbsp;New financial document submitted for your class Excel from Beginner to Advanced with type deduction and amount 55.00 .</p>', 'system', 'single', 1625996979),
(1440, 3, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class Learn and Understand AngularJS .</p>', 'system', 'single', 1625997104),
(1441, 995, NULL, NULL, 'New purchase completed', '<p>The class Learn and Understand AngularJS successfully purchased. Now you can start learning.</p>', 'system', 'single', 1625997105),
(1442, 995, NULL, NULL, 'New financial document', '<p>&nbsp;New financial document submitted for your class Learn and Understand AngularJS with type deduction and amount 17.60 .</p>', 'system', 'single', 1625997105),
(1443, 929, NULL, NULL, 'New pending quiz', '<p>Cameron Schofield passed First Quiz quiz of the How to Manage & Influence Your Virtual Team class and waiting for correction to get results.</p>', 'system', 'single', 1625997328),
(1444, 929, NULL, NULL, 'New badge', '<p>Congratilations! You received Best Seller&nbsp;badge.</p>', 'system', 'single', 1626009973),
(1445, 3, NULL, NULL, 'New badge', '<p>Congratilations! You received Best Seller&nbsp;badge.</p>', 'system', 'single', 1626009973),
(1446, 1015, NULL, NULL, 'New badge', '<p>Congratilations! You received Best Seller&nbsp;badge.</p>', 'system', 'single', 1626060376),
(1447, 867, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class How to Travel Around the World .</p>', 'system', 'single', 1626060487),
(1448, 996, NULL, NULL, 'New purchase completed', '<p>The class How to Travel Around the World successfully purchased. Now you can start learning.</p>', 'system', 'single', 1626060487),
(1449, 996, NULL, NULL, 'New financial document', '<p>&nbsp;New financial document submitted for your class How to Travel Around the World with type deduction and amount 24.75 .</p>', 'system', 'single', 1626060488),
(1450, 1015, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class Excel from Beginner to Advanced .</p>', 'system', 'single', 1626060552),
(1451, 996, NULL, NULL, 'New purchase completed', '<p>The class Excel from Beginner to Advanced successfully purchased. Now you can start learning.</p>', 'system', 'single', 1626060552),
(1452, 996, NULL, NULL, 'New financial document', '<p>&nbsp;New financial document submitted for your class Excel from Beginner to Advanced with type deduction and amount 44.00 .</p>', 'system', 'single', 1626060553),
(1453, 1015, NULL, NULL, 'New badge', '<p>Congratilations! You received Top Seller&nbsp;badge.</p>', 'system', 'single', 1626060704),
(1454, 1015, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class Excel from Beginner to Advanced .</p>', 'system', 'single', 1626060835),
(1455, 930, NULL, NULL, 'New purchase completed', '<p>The class Excel from Beginner to Advanced successfully purchased. Now you can start learning.</p>', 'system', 'single', 1626060836),
(1456, 930, NULL, NULL, 'New financial document', '<p>&nbsp;New financial document submitted for your class Excel from Beginner to Advanced with type deduction and amount 55.00 .</p>', 'system', 'single', 1626060836),
(1457, 1015, NULL, NULL, 'New badge', '<p>Congratilations! You received King Seller&nbsp;badge.</p>', 'system', 'single', 1626060860),
(1458, 1015, NULL, NULL, 'Payout request submitted', '<p>Your payout request successfully submitted for 332 . You will receive an email when processed.</p>', 'system', 'single', 1626061191),
(1459, 1, NULL, NULL, 'New payout request', '<p>New payout request received with the amount 332 . You can manage it using the admin panel.</p>', 'system', 'single', 1626061192),
(1460, 1015, NULL, NULL, 'Payout has been processed', 'Your payout has been processed with the amount 332.00&nbsp;&nbsp;to your account Qatar National Bank .', 'system', 'single', 1626061220),
(1461, 934, NULL, NULL, 'Payout request submitted', '<p>Your payout request successfully submitted for 80 . You will receive an email when processed.</p>', 'system', 'single', 1626061254),
(1462, 1, NULL, NULL, 'New payout request', '<p>New payout request received with the amount 80 . You can manage it using the admin panel.</p>', 'system', 'single', 1626061254),
(1463, 929, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class The Future of Energy .</p>', 'system', 'single', 1626061332),
(1464, 979, NULL, NULL, 'New purchase completed', '<p>The class The Future of Energy successfully purchased. Now you can start learning.</p>', 'system', 'single', 1626061333),
(1465, 979, NULL, NULL, 'New financial document', '<p>&nbsp;New financial document submitted for your class The Future of Energy with type deduction and amount 66.00 .</p>', 'system', 'single', 1626061333),
(1466, 867, NULL, NULL, 'New badge', '<p>Congratilations! You received Best Seller&nbsp;badge.</p>', 'system', 'single', 1626061342),
(1467, 923, NULL, NULL, 'New badge', '<p>Congratilations! You received Best Seller&nbsp;badge.</p>', 'system', 'single', 1626061342),
(1468, 863, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class Health And Fitness Masterclass .</p>', 'system', 'single', 1626061373),
(1469, 979, NULL, NULL, 'New purchase completed', '<p>The class Health And Fitness Masterclass successfully purchased. Now you can start learning.</p>', 'system', 'single', 1626061373),
(1470, 979, NULL, NULL, 'New financial document', '<p>&nbsp;New financial document submitted for your class Health And Fitness Masterclass with type deduction and amount 22.00 .</p>', 'system', 'single', 1626061374),
(1471, 867, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class Effective Time Management .</p>', 'system', 'single', 1626061374),
(1472, 979, NULL, NULL, 'New purchase completed', '<p>The class Effective Time Management successfully purchased. Now you can start learning.</p>', 'system', 'single', 1626061375),
(1473, 979, NULL, NULL, 'New financial document', '<p>&nbsp;New financial document submitted for your class Effective Time Management with type deduction and amount 33.00 .</p>', 'system', 'single', 1626061375),
(1474, NULL, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class Bronze Subscribe .</p>', 'system', 'single', 1626061450),
(1475, 995, NULL, NULL, 'New purchase completed', '<p>The class Bronze Subscribe successfully purchased. Now you can start learning.</p>', 'system', 'single', 1626061450),
(1476, 995, NULL, NULL, 'New financial document', '<p>&nbsp;New financial document submitted for your class [c.title] with type deduction and amount 22.00 .</p>', 'system', 'single', 1626061450),
(1477, 995, NULL, NULL, 'Subscription plan activated', '<p>Bronze subscription package activated by user Cameron Schofield .</p>', 'system', 'single', 1626061451),
(1478, 863, NULL, NULL, 'New badge', '<p>Congratilations! You received Best Seller&nbsp;badge.</p>', 'system', 'single', 1626061477),
(1479, 870, NULL, NULL, 'New badge', '<p>Congratilations! You received Best Seller&nbsp;badge.</p>', 'system', 'single', 1626061477),
(1480, 867, NULL, NULL, 'New badge', '<p>Congratilations! You received Top Seller&nbsp;badge.</p>', 'system', 'single', 1626061483),
(1481, 923, NULL, NULL, 'New badge', '<p>Congratilations! You received Top Seller&nbsp;badge.</p>', 'system', 'single', 1626061484),
(1482, 929, NULL, NULL, 'New badge', '<p>Congratilations! You received Top Seller&nbsp;badge.</p>', 'system', 'single', 1626061490),
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
(1493, 929, NULL, NULL, 'New feedback', '<p>Your class How to Manage & Influence Your Virtual Team received a 5 stars rating from Cameron Schofield .</p>', 'system', 'single', 1626091671),
(1494, 929, NULL, NULL, 'New badge', '<p>Congratilations! You received Golden Classes&nbsp;badge.</p>', 'system', 'single', 1626091708),
(1495, 929, NULL, NULL, 'New badge', '<p>Congratilations! You received Fantastic Support&nbsp;badge.</p>', 'system', 'single', 1626091708),
(1496, 1015, NULL, NULL, 'Your class approved', '<p>Your class Excel from Beginner to Advanced successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1626128217),
(1497, 1016, NULL, NULL, 'New feedback', '<p>Your class Become a Product Manager received a 5 stars rating from Cameron Schofield .</p>', 'system', 'single', 1626129736),
(1498, 1016, NULL, NULL, 'New badge', '<p>Congratilations! You received Golden Classes&nbsp;badge.</p>', 'system', 'single', 1626129748),
(1499, 1016, NULL, NULL, 'New badge', '<p>Congratilations! You received Fantastic Support&nbsp;badge.</p>', 'system', 'single', 1626129749),
(1500, 1016, NULL, NULL, 'New feedback', '<p>Your class Become a Product Manager received a 4.25 stars rating from Robert B. Gray .</p>', 'system', 'single', 1626129826),
(1501, 1016, NULL, NULL, 'New feedback', '<p>Your class Become a Product Manager received a 4.5 stars rating from Robert B. Gray .</p>', 'system', 'single', 1626129947),
(1502, 1016, NULL, NULL, 'New badge', '<p>Congratilations! You received Silver Classes&nbsp;badge.</p>', 'system', 'single', 1626129963),
(1503, 1016, NULL, NULL, 'New badge', '<p>Congratilations! You received Top Seller&nbsp;badge.</p>', 'system', 'single', 1626132407),
(1504, 1015, NULL, NULL, 'Offline payment submitted', '<p>An offline payment request with the amount 500 submitted successfully.</p>', 'system', 'single', 1626132546),
(1505, 1015, NULL, NULL, 'Offline payment approved', '<p>Offline payment request with the amount 500 successfully approved.</p>', 'system', 'single', 1626132570),
(1506, 863, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class Health And Fitness Masterclass .</p>', 'system', 'single', 1626132844),
(1507, 1015, NULL, NULL, 'New purchase completed', '<p>The class Health And Fitness Masterclass successfully purchased. Now you can start learning.</p>', 'system', 'single', 1626132844),
(1508, 1015, NULL, NULL, 'New financial document', '<p>&nbsp;New financial document submitted for your class Health And Fitness Masterclass with type deduction and amount 17.60 .</p>', 'system', 'single', 1626132845),
(1509, 863, NULL, NULL, 'New badge', '<p>Congratilations! You received Top Seller&nbsp;badge.</p>', 'system', 'single', 1626132861),
(1510, 870, NULL, NULL, 'New badge', '<p>Congratilations! You received Top Seller&nbsp;badge.</p>', 'system', 'single', 1626132861),
(1511, 1014, NULL, NULL, 'New badge', '<p>Congratilations! You received New User&nbsp;badge.</p>', 'system', 'single', 1626150992),
(1512, 1015, NULL, NULL, 'New pending quiz', '<p>Cameron Schofield passed Final Quiz quiz of the Learn Linux in 5 Days class and waiting for correction to get results.</p>', 'system', 'single', 1626204790),
(1513, 995, NULL, NULL, 'Waiting quiz result', '<p>Your pending quiz corrected and your result is passed for Final Quiz quiz of Learn Linux in 5 Days class.</p>', 'system', 'single', 1626204825),
(1514, 867, NULL, NULL, 'New badge', '<p>Congratilations! You received Expert Vendor&nbsp;badge.</p>', 'system', 'single', 1626214437),
(1515, 1015, NULL, NULL, 'New badge', '<p>Congratilations! You received Expert Vendor&nbsp;badge.</p>', 'system', 'single', 1626214438),
(1516, 923, NULL, NULL, 'New feedback', '<p>Your class How to Travel Around the World received a 5 stars rating from Robert B. Gray .</p>', 'system', 'single', 1626214531),
(1517, 1015, NULL, NULL, 'New feedback', '<p>Your class Excel from Beginner to Advanced received a 4.75 stars rating from Robert B. Gray .</p>', 'system', 'single', 1626214590),
(1518, 934, NULL, NULL, 'New feedback', '<p>Your class Learn Python Programming received a 5 stars rating from Robert B. Gray .</p>', 'system', 'single', 1626214647),
(1519, 1015, NULL, NULL, 'New feedback', '<p>Your class Learn Linux in 5 Days received a 4 stars rating from Robert B. Gray .</p>', 'system', 'single', 1626214731),
(1520, 1016, NULL, NULL, 'New feedback', '<p>Your class Become a Product Manager received a 5 stars rating from Robert B. Gray .</p>', 'system', 'single', 1626214849),
(1521, 934, NULL, NULL, 'New badge', '<p>Congratilations! You received Golden Classes&nbsp;badge.</p>', 'system', 'single', 1626232841),
(1522, 934, NULL, NULL, 'New badge', '<p>Congratilations! You received Fantastic Support&nbsp;badge.</p>', 'system', 'single', 1626232843),
(1523, 934, NULL, NULL, 'New feedback', '<p>Your class Web Design for Beginners received a 4.25 stars rating from Cameron Schofield .</p>', 'system', 'single', 1626232945),
(1524, 929, NULL, NULL, 'New feedback', '<p>Your class The Future of Energy received a 2.5 stars rating from Cameron Schofield .</p>', 'system', 'single', 1626233054),
(1525, 3, NULL, NULL, 'New feedback', '<p>Your class Learn and Understand AngularJS received a 2.75 stars rating from Cameron Schofield .</p>', 'system', 'single', 1626233222),
(1526, 1016, NULL, NULL, 'New feedback', '<p>Your class Become a Product Manager received a 3.75 stars rating from Cameron Schofield .</p>', 'system', 'single', 1626233313),
(1527, 929, NULL, NULL, 'New feedback', '<p>Your class How to Manage & Influence Your Virtual Team received a 3.75 stars rating from Cameron Schofield .</p>', 'system', 'single', 1626233413),
(1528, 867, NULL, NULL, 'New badge', '<p>Congratilations! You received Golden Classes&nbsp;badge.</p>', 'system', 'single', 1626233555),
(1529, 867, NULL, NULL, 'New badge', '<p>Congratilations! You received Fantastic Support&nbsp;badge.</p>', 'system', 'single', 1626233556),
(1530, 867, NULL, NULL, 'Your class created', '<p>Your class Travel Management Course successfully created. It will be published after approval.</p>', 'system', 'single', 1626234714),
(1531, 1015, NULL, NULL, 'Your class approved', '<p>Your class Travel Management Course successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1626234749),
(1532, 1015, NULL, NULL, 'New badge', '<p>Congratilations! You received Golden Classes&nbsp;badge.</p>', 'system', 'single', 1626234771),
(1533, 1015, NULL, NULL, 'New badge', '<p>Congratilations! You received Amazing Support&nbsp;badge.</p>', 'system', 'single', 1626234771),
(1534, 1, NULL, NULL, 'New comment for your class', '<p>Robert Ransdell left a new comment on your class Health And Fitness Masterclass .</p>', 'system', 'single', 1626235679),
(1535, 870, NULL, NULL, 'New comment for your class', '<p>Robert Ransdell left a new comment on your class Health And Fitness Masterclass .</p>', 'system', 'single', 1626235693),
(1536, 1016, NULL, NULL, 'New badge', '<p>Congratilations! You received Amazing Support&nbsp;badge.</p>', 'system', 'single', 1626235711),
(1537, 923, NULL, NULL, 'New badge', '<p>Congratilations! You received Golden Classes&nbsp;badge.</p>', 'system', 'single', 1626235803),
(1538, 923, NULL, NULL, 'New badge', '<p>Congratilations! You received Fantastic Support&nbsp;badge.</p>', 'system', 'single', 1626235803),
(1539, 934, NULL, NULL, 'New badge', '<p>Congratilations! You received Amazing Support&nbsp;badge.</p>', 'system', 'single', 1626235937),
(1540, 4, NULL, NULL, 'New badge', '<p>Congratilations! You received Silver Classes&nbsp;badge.</p>', 'system', 'single', 1626236007),
(1541, 4, NULL, NULL, 'New badge', '<p>Congratilations! You received Amazing Support&nbsp;badge.</p>', 'system', 'single', 1626236007),
(1542, 929, NULL, NULL, 'New badge', '<p>Congratilations! You received Good Support&nbsp;badge.</p>', 'system', 'single', 1626236028),
(1543, 1015, NULL, NULL, 'New pending quiz', '<p>Morgan Sullivan passed Final Quiz quiz of the Learn Linux in 5 Days class and waiting for correction to get results.</p>', 'system', 'single', 1626237968),
(1544, 979, NULL, NULL, 'Waiting quiz result', '<p>Your pending quiz corrected and your result is passed for Final Quiz quiz of Learn Linux in 5 Days class.</p>', 'system', 'single', 1626237996),
(1545, 3, NULL, NULL, 'New badge', '<p>Congratilations! You received Good Support&nbsp;badge.</p>', 'system', 'single', 1626239421),
(1546, 1, NULL, NULL, 'New comment for your class', '<p>Cameron Schofield left a new comment on your class Become a Product Manager .</p>', 'system', 'single', 1626240118),
(1547, 1016, NULL, NULL, 'New comment for your class', '<p>Cameron Schofield left a new comment on your class Become a Product Manager .</p>', 'system', 'single', 1626240131),
(1548, 1016, NULL, NULL, 'New comment for your class', '<p>Ricardo dave left a new comment on your class Become a Product Manager .</p>', 'system', 'single', 1626240383),
(1549, 870, NULL, NULL, 'Your class approved', '<p>Your class Health And Fitness Masterclass successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1626240665),
(1550, 870, NULL, NULL, 'Your class approved', '<p>Your class Health And Fitness Masterclass successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1626240714),
(1551, 1015, NULL, NULL, 'Your class approved', '<p>Your class Excel from Beginner to Advanced successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1626240740),
(1552, 3, NULL, NULL, 'Your class approved', '<p>Your class Active Listening: You Can Be a Great Listener successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1626240800),
(1553, 3, NULL, NULL, 'Your class approved', '<p>Your class Learn and Understand AngularJS successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1626240827),
(1554, 929, NULL, NULL, 'Offline payment submitted', '<p>An offline payment request with the amount 300 submitted successfully.</p>', 'system', 'single', 1626241046),
(1555, 929, NULL, NULL, 'Offline payment approved', '<p>Offline payment request with the amount 300 successfully approved.</p>', 'system', 'single', 1626241074),
(1556, NULL, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class The Future of Energy .</p>', 'system', 'single', 1626241152),
(1557, 929, NULL, NULL, 'New purchase completed', '<p>The class The Future of Energy successfully purchased. Now you can start learning.</p>', 'system', 'single', 1626241152),
(1558, 929, NULL, NULL, 'New financial document', '<p>&nbsp;New financial document submitted for your class The Future of Energy with type deduction and amount 55.00 .</p>', 'system', 'single', 1626241152),
(1559, 929, NULL, NULL, 'Promotion plan activated', '<p>Promotion plan Bronze&nbsp;&nbsp;activated for the call The Future of Energy .</p>', 'system', 'single', 1626241153),
(1560, 864, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class Active Listening: You Can Be a Great Listener .</p>', 'system', 'single', 1626241212),
(1561, 929, NULL, NULL, 'New purchase completed', '<p>The class Active Listening: You Can Be a Great Listener successfully purchased. Now you can start learning.</p>', 'system', 'single', 1626241213),
(1562, 929, NULL, NULL, 'New financial document', '<p>&nbsp;New financial document submitted for your class Active Listening: You Can Be a Great Listener with type deduction and amount 33.00 .</p>', 'system', 'single', 1626241213),
(1563, 864, NULL, NULL, 'New badge', '<p>Congratilations! You received Best Seller&nbsp;badge.</p>', 'system', 'single', 1626241242),
(1564, 1, NULL, NULL, 'New comment for your class', '<p>Kate Williams left a new comment on your class Become a Product Manager .</p>', 'system', 'single', 1626241320),
(1565, 1016, NULL, NULL, 'New comment for your class', '<p>Kate Williams left a new comment on your class Become a Product Manager .</p>', 'system', 'single', 1626241345),
(1566, 1, NULL, NULL, 'New comment for your class', '<p>Kate Williams left a new comment on your class Active Listening: You Can Be a Great Listener .</p>', 'system', 'single', 1626241386),
(1567, 3, NULL, NULL, 'New comment for your class', '<p>Kate Williams left a new comment on your class Active Listening: You Can Be a Great Listener .</p>', 'system', 'single', 1626241400),
(1568, 3, NULL, NULL, 'New comment for your class', '<p>James Kong left a new comment on your class Active Listening: You Can Be a Great Listener .</p>', 'system', 'single', 1626242090),
(1569, 1016, NULL, NULL, 'New comment for your class', '<p>Kate Williams left a new comment on your class Become a Product Manager .</p>', 'system', 'single', 1626242094),
(1570, 1, NULL, NULL, 'New badge', '<p>Congratilations! You received Faitful User&nbsp;badge.</p>', 'system', 'single', 1626242992),
(1571, 996, NULL, NULL, 'Meeting finished', '<p>The meeting finished. Instructor: Robert Ransdell Student:&nbsp; Robert B. Gray&nbsp; Meeting time: 2021-07-12 .</p>', 'system', 'single', 1626243180),
(1572, 1015, NULL, NULL, 'Meeting finished', '<p>The meeting finished. Instructor: Robert Ransdell Student:&nbsp; Robert B. Gray&nbsp; Meeting time: 2021-07-12 .</p>', 'system', 'single', 1626243180),
(1573, 1015, NULL, NULL, 'New pending quiz', '<p>Kate Williams passed Final Quiz quiz of the Learn Linux in 5 Days class and waiting for correction to get results.</p>', 'system', 'single', 1626243488);
INSERT INTO `notifications` (`id`, `user_id`, `sender_id`, `group_id`, `title`, `message`, `sender`, `type`, `created_at`) VALUES
(1574, 1015, NULL, NULL, 'Your class approved', '<p>Your class Learn Linux in 5 Days successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1626246628),
(1575, 923, NULL, NULL, 'Your class approved', '<p>Your class Effective Time Management successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1626246694),
(1576, 870, NULL, NULL, 'Your class approved', '<p>Your class Health And Fitness Masterclass successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1626246793),
(1577, 923, NULL, NULL, 'Your class approved', '<p>Your class Effective Time Management successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1626246814),
(1578, 870, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class  .</p>', 'system', 'single', 1626247195),
(1579, 995, NULL, NULL, 'New purchase completed', '<p>The class  successfully purchased. Now you can start learning.</p>', 'system', 'single', 1626247195),
(1580, 995, NULL, NULL, 'New meeting request', '<p>New meeting booked by Cameron Schofield for 2021-09-01  with the amount 100 .</p>', 'system', 'single', 1626247196),
(1581, 870, NULL, NULL, 'New meeting request', '<p>New meeting booked by Cameron Schofield for 2021-09-01  with the amount 100 .</p>', 'system', 'single', 1626247196),
(1582, 995, NULL, NULL, 'New financial document', '<p>&nbsp;New financial document submitted for your class Meeting Reservation with type deduction and amount 110.00 .</p>', 'system', 'single', 1626247196),
(1583, 1, NULL, NULL, 'New support ticket', '<p>New support ticket received with subject Problem with quiz .</p>', 'system', 'single', 1626250124),
(1584, 870, NULL, NULL, 'New feedback', '<p>Your class Health And Fitness Masterclass received a 5 stars rating from Cameron Schofield .</p>', 'system', 'single', 1626283457),
(1585, 863, NULL, NULL, 'New badge', '<p>Congratilations! You received Golden Classes&nbsp;badge.</p>', 'system', 'single', 1626283475),
(1586, 863, NULL, NULL, 'New badge', '<p>Congratilations! You received Fantastic Support&nbsp;badge.</p>', 'system', 'single', 1626283486),
(1587, 870, NULL, NULL, 'New badge', '<p>Congratilations! You received Golden Classes&nbsp;badge.</p>', 'system', 'single', 1626283490),
(1588, 870, NULL, NULL, 'New badge', '<p>Congratilations! You received Fantastic Support&nbsp;badge.</p>', 'system', 'single', 1626283496),
(1589, 870, NULL, NULL, 'New feedback', '<p>Your class Health And Fitness Masterclass received a 5 stars rating from Morgan Sullivan .</p>', 'system', 'single', 1626283559),
(1590, 1, NULL, NULL, 'New comment for your class', '<p>Robert Ransdell left a new comment on your class Learn Python Programming .</p>', 'system', 'single', 1626493830),
(1591, 1015, NULL, NULL, 'New badge', '<p>Congratilations! You received Fantastic Support&nbsp;badge.</p>', 'system', 'single', 1626508221),
(1592, 3, NULL, NULL, 'New badge', '<p>Congratilations! You received Bronze Classes&nbsp;badge.</p>', 'system', 'single', 1626508287),
(1593, 3, NULL, NULL, 'New badge', '<p>Congratilations! You received Amazing Support&nbsp;badge.</p>', 'system', 'single', 1626508287),
(1594, 929, NULL, NULL, 'New badge', '<p>Congratilations! You received Amazing Support&nbsp;badge.</p>', 'system', 'single', 1626508287),
(1595, 867, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class Effective Time Management .</p>', 'system', 'single', 1626508956),
(1596, 996, NULL, NULL, 'New purchase completed', '<p>The class Effective Time Management successfully purchased. Now you can start learning.</p>', 'system', 'single', 1626508957),
(1597, 996, NULL, NULL, 'New financial document', '<p>&nbsp;New financial document submitted for your class Effective Time Management with type deduction and amount 29.70 .</p>', 'system', 'single', 1626508957),
(1598, 923, NULL, NULL, 'New feedback', '<p>Your class Effective Time Management received a 5 stars rating from Robert B. Gray .</p>', 'system', 'single', 1626508980),
(1599, 1, NULL, NULL, 'New comment for your class', '<p>Robert B. Gray left a new comment on your class Active Listening: You Can Be a Great Listener .</p>', 'system', 'single', 1626509207),
(1600, 1, NULL, NULL, 'New comment for your class', '<p>Robert B. Gray left a new comment on your class Active Listening: You Can Be a Great Listener .</p>', 'system', 'single', 1626509327),
(1601, 1, NULL, NULL, 'New comment for your class', '<p>Robert Ransdell left a new comment on your class Become a Product Manager .</p>', 'system', 'single', 1626509546),
(1602, 3, NULL, NULL, 'New comment for your class', '<p>Robert B. Gray left a new comment on your class Active Listening: You Can Be a Great Listener .</p>', 'system', 'single', 1626509591),
(1603, 1015, NULL, NULL, 'New badge', '<p>Congratilations! You received Loyal User&nbsp;badge.</p>', 'system', 'single', 1627543283),
(1604, 934, NULL, NULL, 'New badge', '<p>Congratilations! You received Faitful User&nbsp;badge.</p>', 'system', 'single', 1628619121),
(1605, 1016, NULL, NULL, 'New badge', '<p>Congratilations! You received Loyal User&nbsp;badge.</p>', 'system', 'single', 1628619122),
(1606, 930, NULL, NULL, 'Offline payment approved', '<p>Offline payment request with the amount 250 successfully approved.</p>', 'system', 'single', 1628704280),
(1607, 923, NULL, NULL, 'Offline payment approved', '<p>Offline payment request with the amount 300 successfully approved.</p>', 'system', 'single', 1628704284),
(1608, 996, NULL, NULL, 'Offline payment submitted', '<p>An offline payment request with the amount 200 submitted successfully.</p>', 'system', 'single', 1628704322),
(1609, 995, NULL, NULL, 'Offline payment submitted', '<p>An offline payment request with the amount 100 submitted successfully.</p>', 'system', 'single', 1628704347),
(1610, 995, NULL, NULL, 'Offline payment submitted', '<p>An offline payment request with the amount 200 submitted successfully.</p>', 'system', 'single', 1628704369),
(1611, 995, NULL, NULL, 'Offline payment approved', '<p>Offline payment request with the amount 200 successfully approved.</p>', 'system', 'single', 1628704378),
(1612, 995, NULL, NULL, 'Offline payment approved', '<p>Offline payment request with the amount 100 successfully approved.</p>', 'system', 'single', 1628704382),
(1613, 996, NULL, NULL, 'Offline payment approved', '<p>Offline payment request with the amount 200 successfully approved.</p>', 'system', 'single', 1628704397),
(1614, 979, NULL, NULL, 'Offline payment submitted', '<p>An offline payment request with the amount 100 submitted successfully.</p>', 'system', 'single', 1628704436),
(1615, 979, NULL, NULL, 'Offline payment rejected', '<p>Sorry, offline payment request with the amount 100&nbsp;rejected.</p>', 'system', 'single', 1628704449),
(1616, 930, NULL, NULL, 'Offline payment submitted', '<p>An offline payment request with the amount 100 submitted successfully.</p>', 'system', 'single', 1628785223),
(1617, 930, NULL, NULL, 'Offline payment submitted', '<p>An offline payment request with the amount 555 submitted successfully.</p>', 'system', 'single', 1628785232),
(1618, 930, NULL, NULL, 'Offline payment submitted', '<p>An offline payment request with the amount 18919 submitted successfully.</p>', 'system', 'single', 1628785247),
(1619, 930, NULL, NULL, 'Offline payment submitted', '<p>An offline payment request with the amount 18919 submitted successfully.</p>', 'system', 'single', 1628785251),
(1620, 930, NULL, NULL, 'Offline payment submitted', '<p>An offline payment request with the amount 888 submitted successfully.</p>', 'system', 'single', 1628785264),
(1621, 930, NULL, NULL, 'Offline payment submitted', '<p>An offline payment request with the amount 44 submitted successfully.</p>', 'system', 'single', 1628785278),
(1622, 930, NULL, NULL, 'Offline payment submitted', '<p>An offline payment request with the amount 500 submitted successfully.</p>', 'system', 'single', 1628785293),
(1623, 930, NULL, NULL, 'Offline payment submitted', '<p>An offline payment request with the amount 555 submitted successfully.</p>', 'system', 'single', 1628785304),
(1624, 930, NULL, NULL, 'Offline payment submitted', '<p>An offline payment request with the amount 555 submitted successfully.</p>', 'system', 'single', 1628785307),
(1625, 930, NULL, NULL, 'Offline payment submitted', '<p>An offline payment request with the amount 555 submitted successfully.</p>', 'system', 'single', 1628785327),
(1626, 930, NULL, NULL, 'Offline payment submitted', '<p>An offline payment request with the amount 555 submitted successfully.</p>', 'system', 'single', 1628785330),
(1627, 930, NULL, NULL, 'Offline payment submitted', '<p>An offline payment request with the amount 444 submitted successfully.</p>', 'system', 'single', 1628785342),
(1628, 930, NULL, NULL, 'Offline payment submitted', '<p>An offline payment request with the amount 78797 submitted successfully.</p>', 'system', 'single', 1628785393),
(1629, 996, NULL, NULL, 'New badge', '<p>Congratilations! You received &nbsp;badge.</p>', 'system', 'single', 1635366097),
(1630, 995, NULL, NULL, 'New badge', '<p>Congratilations! You received &nbsp;badge.</p>', 'system', 'single', 1635366115),
(1631, 1015, NULL, NULL, 'New badge', '<p>Congratilations! You received &nbsp;badge.</p>', 'system', 'single', 1635404223),
(1632, 4, NULL, NULL, 'New badge', '<p>Congratilations! You received Golden Classes&nbsp;badge.</p>', 'system', 'single', 1635405357),
(1633, 4, NULL, NULL, 'New badge', '<p>Congratilations! You received Fantastic Support&nbsp;badge.</p>', 'system', 'single', 1635405358),
(1634, 979, NULL, NULL, 'New badge', '<p>Congratilations! You received Faitful User&nbsp;badge.</p>', 'system', 'single', 1635405486),
(1635, 1014, NULL, NULL, 'New badge', '<p>Congratilations! You received Loyal User&nbsp;badge.</p>', 'system', 'single', 1635406181),
(1636, 995, NULL, NULL, 'New badge', '<p>Congratilations! You received Faitful User&nbsp;badge.</p>', 'system', 'single', 1635408182),
(1637, 1015, NULL, NULL, 'Your class approved', '<p>Your class Travel Management Course successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1635410916),
(1638, 1015, NULL, NULL, 'Your class approved', '<p>Your class Travel Management Course successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1635411032),
(1639, 1015, NULL, NULL, 'Your class approved', '<p>Your class Travel Management Course successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1635411039),
(1640, 867, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class Effective Time Management .</p>', 'system', 'single', 1635412196),
(1641, 929, NULL, NULL, 'New purchase completed', '<p>The class Effective Time Management successfully purchased. Now you can start learning.</p>', 'system', 'single', 1635412196),
(1642, 929, NULL, NULL, 'New financial document', '<p>&nbsp;New financial document submitted for your class Effective Time Management with type deduction and amount 33.00 .</p>', 'system', 'single', 1635412197),
(1643, 1015, NULL, NULL, 'Your class approved', '<p>Your class Curso de gestión de viajes successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1635442592),
(1644, 923, NULL, NULL, 'Your class approved', '<p>Your class Cómo viajar por el mundo successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1635442687),
(1645, 923, NULL, NULL, 'Your class approved', '<p>Your class Cómo viajar por el mundo successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1635442733),
(1646, 923, NULL, NULL, 'Your class approved', '<p>Your class كيف تسافر حول العالم successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1635443083),
(1647, 934, NULL, NULL, 'Your class approved', '<p>Your class تصميم المواقع للمبتدئين successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1635443257),
(1648, 934, NULL, NULL, 'Your class approved', '<p>Your class Diseño web para principiantes successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1635443302),
(1649, 929, NULL, NULL, 'Your class approved', '<p>Your class El futuro de la energía successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1635443448),
(1650, 929, NULL, NULL, 'Your class approved', '<p>Your class مستقبل الطاقة successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1635443492),
(1651, 929, NULL, NULL, 'Your class approved', '<p>Your class كيفية إدارة والتأثير على فريقك الافتراضي successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1635443668),
(1652, 929, NULL, NULL, 'Your class approved', '<p>Your class Cómo administrar e influir en su equipo virtual successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1635443747),
(1653, 1016, NULL, NULL, 'Your class approved', '<p>Your class Conviértete en gerente de producto successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1635443872),
(1654, 1016, NULL, NULL, 'Your class approved', '<p>Your class كن مدير منتج successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1635443991),
(1655, 3, NULL, NULL, 'Your class approved', '<p>Your class الاستماع النشط: يمكنك أن تكون مستمعًا جيدًا successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1635444233),
(1656, 3, NULL, NULL, 'Your class approved', '<p>Your class Escucha activa: puedes ser un gran oyente successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1635444317),
(1657, 870, NULL, NULL, 'Your class approved', '<p>Your class Masterclass de salud y fitness successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1635444457),
(1658, 870, NULL, NULL, 'Your class approved', '<p>Your class دروس متقدمة في الصحة واللياقة البدنية successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1635444517),
(1659, 3, NULL, NULL, 'Your class approved', '<p>Your class تعلم وافهم AngularJS successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1635444683),
(1660, 3, NULL, NULL, 'Your class approved', '<p>Your class Aprenda y comprenda AngularJS successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1635444769),
(1661, 923, NULL, NULL, 'Your class approved', '<p>Your class Gestión eficaz del tiempo successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1635444834),
(1662, 923, NULL, NULL, 'Your class approved', '<p>Your class ادارة الوقت بفاعلية successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1635444866),
(1663, 1015, NULL, NULL, 'Your class approved', '<p>Your class مايكروسوفت اكسل من المبتدئين إلى المتقدمين successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1635444974),
(1664, 1015, NULL, NULL, 'Your class approved', '<p>Your class تعلم لينكس في خمسة أيام successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1635445120),
(1665, 1015, NULL, NULL, 'Your class approved', '<p>Your class Aprenda Linux en cinco días successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1635445181),
(1666, 934, NULL, NULL, 'Your class approved', '<p>Your class Aprenda a programar en Python successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1635445296),
(1667, 934, NULL, NULL, 'Your class approved', '<p>Your class تعلم برمجة بايثون successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1635445377),
(1668, 996, NULL, NULL, 'New badge', '<p>Congratilations! You received Faitful User&nbsp;badge.</p>', 'system', 'single', 1639377925),
(1669, 923, NULL, NULL, 'Your class approved', '<p>Your class How to Travel Around the World successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1639378044),
(1670, 870, NULL, NULL, 'Your class approved', '<p>Your class Health And Fitness Masterclass successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1639378097),
(1671, 923, NULL, NULL, 'Your class approved', '<p>Your class Effective Time Management successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1639378108),
(1672, 1017, NULL, NULL, 'New financial document', '<p>&nbsp;New financial document submitted for your class [c.title] with type addiction and amount 500 .</p>', 'system', 'single', 1639379205),
(1673, 867, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class Effective Time Management .</p>', 'system', 'single', 1639379284),
(1674, 1017, NULL, NULL, 'New purchase completed', '<p>The class Effective Time Management successfully purchased. Now you can start learning.</p>', 'system', 'single', 1639379284),
(1675, 1017, NULL, NULL, 'New financial document', '<p>&nbsp;New financial document submitted for your class Effective Time Management with type deduction and amount 33.00 .</p>', 'system', 'single', 1639379284),
(1676, 1015, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class Excel from Beginner to Advanced .</p>', 'system', 'single', 1639379350),
(1677, 1017, NULL, NULL, 'New purchase completed', '<p>The class Excel from Beginner to Advanced successfully purchased. Now you can start learning.</p>', 'system', 'single', 1639379351),
(1678, 1017, NULL, NULL, 'New financial document', '<p>&nbsp;New financial document submitted for your class Excel from Beginner to Advanced with type deduction and amount 110.00 .</p>', 'system', 'single', 1639379351),
(1679, 864, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class Active Listening: You Can Be a Great Listener .</p>', 'system', 'single', 1639379388),
(1680, 1017, NULL, NULL, 'New purchase completed', '<p>The class Active Listening: You Can Be a Great Listener successfully purchased. Now you can start learning.</p>', 'system', 'single', 1639379389),
(1681, 1017, NULL, NULL, 'New financial document', '<p>&nbsp;New financial document submitted for your class Active Listening: You Can Be a Great Listener with type deduction and amount 33.00 .</p>', 'system', 'single', 1639379394),
(1682, 1016, NULL, NULL, 'New badge', '<p>Congratilations! You received Faitful User&nbsp;badge.</p>', 'system', 'single', 1645697363),
(1683, 1015, NULL, NULL, 'New badge', '<p>Congratilations! You received Faitful User&nbsp;badge.</p>', 'system', 'single', 1645697399),
(1684, 923, NULL, NULL, 'Your class approved', '<p>Your class How to Travel Around the World successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1645726175),
(1685, 929, NULL, NULL, 'Your class approved', '<p>Your class How to Manage & Influence Your Virtual Team successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1645726208),
(1686, 929, NULL, NULL, 'Your class approved', '<p>Your class How to Manage & Influence Your Virtual Team successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1645726231),
(1687, 3, NULL, NULL, 'New badge', '<p>Congratilations! You received Top Seller&nbsp;badge.</p>', 'system', 'single', 1645782214),
(1688, 929, NULL, NULL, 'Your class approved', '<p>Your class How to Manage & Influence Your Virtual Team successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1646028920),
(1689, 1015, NULL, NULL, 'Your class approved', '<p>Your class The Professional Guitar Masterclass successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1646127145),
(1690, 1015, NULL, NULL, 'Your class approved', '<p>Your class The Professional Guitar Masterclass successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1646130427),
(1691, 1015, NULL, NULL, 'Your class created', '<p>Your class New in-App Live System successfully created. It will be published after approval.</p>', 'system', 'single', 1646171990),
(1692, 1015, NULL, NULL, 'Your class approved', '<p>Your class New in-App Live System successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1646172006),
(1693, 1015, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class New in-App Live System .</p>', 'system', 'single', 1646172086),
(1694, 995, NULL, NULL, 'New purchase completed', '<p>The class New in-App Live System successfully purchased. Now you can start learning.</p>', 'system', 'single', 1646172086),
(1695, 995, NULL, NULL, 'New financial document', '<p>&nbsp;New financial document submitted for your class New in-App Live System with type deduction and amount 11.00 .</p>', 'system', 'single', 1646172087),
(1696, 1015, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class New in-App Live System .</p>', 'system', 'single', 1646172123),
(1697, 996, NULL, NULL, 'New purchase completed', '<p>The class New in-App Live System successfully purchased. Now you can start learning.</p>', 'system', 'single', 1646172123),
(1698, 996, NULL, NULL, 'New financial document', '<p>&nbsp;New financial document submitted for your class New in-App Live System with type deduction and amount 9.90 .</p>', 'system', 'single', 1646172124),
(1699, 1015, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class New in-App Live System .</p>', 'system', 'single', 1646172159),
(1700, 979, NULL, NULL, 'New purchase completed', '<p>The class New in-App Live System successfully purchased. Now you can start learning.</p>', 'system', 'single', 1646172159),
(1701, 979, NULL, NULL, 'New financial document', '<p>&nbsp;New financial document submitted for your class New in-App Live System with type deduction and amount 11.00 .</p>', 'system', 'single', 1646172160),
(1702, 1015, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class New in-App Live System .</p>', 'system', 'single', 1646172296),
(1703, 929, NULL, NULL, 'New purchase completed', '<p>The class New in-App Live System successfully purchased. Now you can start learning.</p>', 'system', 'single', 1646172296),
(1704, 929, NULL, NULL, 'New financial document', '<p>&nbsp;New financial document submitted for your class New in-App Live System with type deduction and amount 11.00 .</p>', 'system', 'single', 1646172296),
(1705, 923, NULL, NULL, 'Your class approved', '<p>Your class How to Travel Around the World successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1646172352),
(1706, 923, NULL, NULL, 'Your class approved', '<p>Your class Effective Time Management successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1646172394),
(1707, 1015, NULL, NULL, 'Your class created', '<p>Your class New in-App Live System successfully created. It will be published after approval.</p>', 'system', 'single', 1646172624),
(1708, 1015, NULL, NULL, 'Your class approved', '<p>Your class New in-App Live System successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1646172650),
(1709, 1015, NULL, NULL, 'Your class created', '<p>Your class New in-App Live System successfully created. It will be published after approval.</p>', 'system', 'single', 1646173046),
(1710, 1015, NULL, NULL, 'Your class approved', '<p>Your class New Learning Page successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1646173945),
(1711, 1017, NULL, NULL, 'New badge', '<p>Congratilations! You received Loyal User&nbsp;badge.</p>', 'system', 'single', 1646174015),
(1712, 1015, NULL, NULL, 'Your class approved', '<p>Your class New in-App Live System successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1646174680),
(1713, 1015, NULL, NULL, 'Your class approved', '<p>Your class New in-App Live System successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1646175192),
(1714, 1015, NULL, NULL, 'Your class approved', '<p>Your class New in-App Live System successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1646175313),
(1715, 1015, NULL, NULL, 'Your class approved', '<p>Your class New in-App Live System successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1646175337),
(1764, 863, NULL, NULL, 'New badge', '<p><span style=\"color: rgb(78, 94, 106); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.5px;\">Congratulations</span>! You received Golden Classes&nbsp;badge.</p>', 'system', 'single', 1646263574),
(1765, 863, NULL, NULL, 'New badge', '<p><span style=\"color: rgb(78, 94, 106); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.5px;\">Congratulations</span>! You received Top Seller&nbsp;badge.</p>', 'system', 'single', 1646263574),
(1766, 863, NULL, NULL, 'New badge', '<p><span style=\"color: rgb(78, 94, 106); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.5px;\">Congratulations</span>! You received Fantastic Support&nbsp;badge.</p>', 'system', 'single', 1646263574),
(1767, 868, NULL, NULL, 'New badge', '<p><span style=\"color: rgb(78, 94, 106); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.5px;\">Congratulations</span>! You received Faithful User&nbsp;badge.</p>', 'system', 'single', 1646287364),
(1768, 996, NULL, NULL, 'New badge', '<p><span style=\"color: rgb(78, 94, 106); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.5px;\">Congratulations</span>! You received Faithful User&nbsp;badge.</p>', 'system', 'single', 1646290203),
(1769, 995, NULL, NULL, 'New badge', '<p><span style=\"color: rgb(78, 94, 106); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.5px;\">Congratulations</span>! You received Faithful User&nbsp;badge.</p>', 'system', 'single', 1646302693),
(1770, 923, NULL, NULL, 'New badge', '<p><span style=\"color: rgb(78, 94, 106); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.5px;\">Congratulations</span>! You received Faithful User&nbsp;badge.</p>', 'system', 'single', 1646326059),
(1771, 923, NULL, NULL, 'New badge', '<p><span style=\"color: rgb(78, 94, 106); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.5px;\">Congratulations</span>! You received Senior Vendor&nbsp;badge.</p>', 'system', 'single', 1646326060),
(1772, 923, NULL, NULL, 'New badge', '<p><span style=\"color: rgb(78, 94, 106); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.5px;\">Congratulations</span>! You received Golden Classes&nbsp;badge.</p>', 'system', 'single', 1646326060),
(1773, 923, NULL, NULL, 'New badge', '<p><span style=\"color: rgb(78, 94, 106); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.5px;\">Congratulations</span>! You received Top Seller&nbsp;badge.</p>', 'system', 'single', 1646326060),
(1774, 923, NULL, NULL, 'New badge', '<p><span style=\"color: rgb(78, 94, 106); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.5px;\">Congratulations</span>! You received Fantastic Support&nbsp;badge.</p>', 'system', 'single', 1646326061),
(1775, 929, NULL, NULL, 'Your class approved', '<p>Your class How to Manage Your Virtual Team successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1646350436),
(1776, 1015, NULL, NULL, 'New feedback', '<p>Your class New Learning Page received a 5 stars rating from Cameron Schofield .</p>', 'system', 'single', 1646352833),
(1777, 1015, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class  .</p>', 'system', 'single', 1646379288),
(1778, 995, NULL, NULL, 'New purchase completed', '<p>The class  successfully purchased. Now you can start learning.</p>', 'system', 'single', 1646379289),
(1779, 995, NULL, NULL, 'New meeting request', '<p>New meeting booked by Cameron Schofield for 2022-03-15  with the amount 750 .</p>', 'system', 'single', 1646379289),
(1780, 1015, NULL, NULL, 'New meeting request', '<p>New meeting booked by Cameron Schofield for 2022-03-15  with the amount 750 .</p>', 'system', 'single', 1646379290),
(1781, 995, NULL, NULL, 'New financial document', '<p>&nbsp;New financial document submitted for your class Reservation Appointment with type deduction and amount 825.00 .</p>', 'system', 'single', 1646379290),
(1782, 1017, NULL, NULL, 'New badge', '<p><span style=\"color: rgb(78, 94, 106); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.5px;\">Congratulations</span>! You received Loyal User&nbsp;badge.</p>', 'system', 'single', 1646379366),
(1783, 867, NULL, NULL, 'New financial document', '<p>&nbsp;New financial document submitted for your class [c.title] with type addiction and amount 200 .</p>', 'system', 'single', 1646381415),
(1784, 870, NULL, NULL, 'New badge', '<p>You received Faithful User&nbsp;badge.</p>', 'system', 'single', 1646384782),
(1785, 870, NULL, NULL, 'New badge', '<p>You received Junior Vendor&nbsp;badge.</p>', 'system', 'single', 1646384788),
(1786, 870, NULL, NULL, 'New badge', '<p>You received Golden Classes&nbsp;badge.</p>', 'system', 'single', 1646384788),
(1787, 870, NULL, NULL, 'New badge', '<p>You received Top Seller&nbsp;badge.</p>', 'system', 'single', 1646384789),
(1788, 870, NULL, NULL, 'New badge', '<p>You received Fantastic Support&nbsp;badge.</p>', 'system', 'single', 1646384794),
(1789, 930, NULL, NULL, 'New badge', '<p>You received Faithful User&nbsp;badge.</p>', 'system', 'single', 1646386699),
(1790, NULL, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class Pro Registration package .</p>', 'system', 'single', 1646386787),
(1791, 930, NULL, NULL, 'New purchase completed', '<p>The class Pro Registration package successfully purchased. Now you can start learning.</p>', 'system', 'single', 1646386787),
(1792, 930, NULL, NULL, 'New financial document', '<p>&nbsp;New financial document submitted for your class [c.title] with type deduction and amount 218.90 .</p>', 'system', 'single', 1646386792),
(1793, 859, NULL, NULL, 'New badge', '<p>You received Faithful User&nbsp;badge.</p>', 'system', 'single', 1646387054),
(1794, 1015, NULL, NULL, 'New badge', '<p>You received Faithful User&nbsp;badge.</p>', 'system', 'single', 1646387094),
(1795, 1015, NULL, NULL, 'New badge', '<p>You received Expert Vendor&nbsp;badge.</p>', 'system', 'single', 1646387101),
(1796, 1015, NULL, NULL, 'New badge', '<p>You received Golden Classes&nbsp;badge.</p>', 'system', 'single', 1646387102),
(1797, 1015, NULL, NULL, 'New badge', '<p>You received King Seller&nbsp;badge.</p>', 'system', 'single', 1646387102),
(1798, 1015, NULL, NULL, 'New badge', '<p>You received Fantastic Support&nbsp;badge.</p>', 'system', 'single', 1646387107),
(1799, 859, NULL, NULL, 'New financial document', '<p>&nbsp;New financial document submitted for your class [c.title] with type addiction and amount 500 .</p>', 'system', 'single', 1646387608),
(1800, NULL, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class Basic Registration package .</p>', 'system', 'single', 1646387655),
(1801, 859, NULL, NULL, 'New purchase completed', '<p>The class Basic Registration package successfully purchased. Now you can start learning.</p>', 'system', 'single', 1646387655),
(1802, 859, NULL, NULL, 'New financial document', '<p>&nbsp;New financial document submitted for your class [c.title] with type deduction and amount 220.00 .</p>', 'system', 'single', 1646387660),
(1803, 1017, NULL, NULL, 'New badge', '<p>You received Loyal User&nbsp;badge.</p>', 'system', 'single', 1646387776),
(1804, 996, NULL, NULL, 'New badge', '<p>You received Faithful User&nbsp;badge.</p>', 'system', 'single', 1646389863),
(1805, 934, NULL, NULL, 'New badge', '<p>You received Faithful User&nbsp;badge.</p>', 'system', 'single', 1646389876),
(1806, 934, NULL, NULL, 'New badge', '<p>You received Senior Vendor&nbsp;badge.</p>', 'system', 'single', 1646389876),
(1807, 934, NULL, NULL, 'New badge', '<p>You received Golden Classes&nbsp;badge.</p>', 'system', 'single', 1646389881),
(1808, 934, NULL, NULL, 'New badge', '<p>You received Best Seller&nbsp;badge.</p>', 'system', 'single', 1646389887),
(1809, 934, NULL, NULL, 'New badge', '<p>You received Fantastic Support&nbsp;badge.</p>', 'system', 'single', 1646389887),
(1810, 1015, NULL, NULL, 'Your class approved', '<p>Your class New In-App Live System successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1646392216),
(1811, 995, NULL, NULL, 'New badge', '<p>You received Faithful User&nbsp;badge.</p>', 'system', 'single', 1646396328),
(1812, 1016, NULL, NULL, 'New badge', '<p>You received Faithful User&nbsp;badge.</p>', 'system', 'single', 1646396360),
(1813, 1016, NULL, NULL, 'New badge', '<p>You received Junior Vendor&nbsp;badge.</p>', 'system', 'single', 1646396362),
(1814, 1016, NULL, NULL, 'New badge', '<p>You received Golden Classes&nbsp;badge.</p>', 'system', 'single', 1646396363),
(1815, 1016, NULL, NULL, 'New badge', '<p>You received Top Seller&nbsp;badge.</p>', 'system', 'single', 1646396363),
(1816, 1016, NULL, NULL, 'New badge', '<p>You received Fantastic Support&nbsp;badge.</p>', 'system', 'single', 1646396368),
(1817, 934, NULL, NULL, 'Your class approved', '<p>Your class Web Design for Beginners successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1646396836),
(1818, 929, NULL, NULL, 'Your class approved', '<p>Your class How to Manage Your Virtual Team successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1646396847),
(1819, 929, NULL, NULL, 'Your class approved', '<p>Your class The Future of Energy successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1646396857),
(1820, 979, NULL, NULL, 'New badge', '<p>You received Faithful User&nbsp;badge.</p>', 'system', 'single', 1646398166),
(1821, 3, NULL, NULL, 'New badge', '<p>You received Faithful User&nbsp;badge.</p>', 'system', 'single', 1646406163),
(1822, 3, NULL, NULL, 'New badge', '<p>You received Senior Vendor&nbsp;badge.</p>', 'system', 'single', 1646406163),
(1823, 3, NULL, NULL, 'New badge', '<p>You received Bronze Classes&nbsp;badge.</p>', 'system', 'single', 1646406164),
(1824, 3, NULL, NULL, 'New badge', '<p>You received Top Seller&nbsp;badge.</p>', 'system', 'single', 1646406169),
(1825, 3, NULL, NULL, 'New badge', '<p>You received Amazing Support&nbsp;badge.</p>', 'system', 'single', 1646406174),
(1826, 4, NULL, NULL, 'New badge', '<p>You received Faithful User&nbsp;badge.</p>', 'system', 'single', 1646406175),
(1827, 4, NULL, NULL, 'New badge', '<p>You received Junior Vendor&nbsp;badge.</p>', 'system', 'single', 1646406175),
(1828, 4, NULL, NULL, 'New badge', '<p>You received Golden Classes&nbsp;badge.</p>', 'system', 'single', 1646406175),
(1829, 4, NULL, NULL, 'New badge', '<p>You received Best Seller&nbsp;badge.</p>', 'system', 'single', 1646406181),
(1830, 4, NULL, NULL, 'New badge', '<p>You received Fantastic Support&nbsp;badge.</p>', 'system', 'single', 1646406181),
(1831, 863, NULL, NULL, 'New badge', '<p>You received Faithful User&nbsp;badge.</p>', 'system', 'single', 1646406181),
(1832, 863, NULL, NULL, 'New badge', '<p>You received Junior Vendor&nbsp;badge.</p>', 'system', 'single', 1646406182),
(1833, 863, NULL, NULL, 'New badge', '<p>You received Golden Classes&nbsp;badge.</p>', 'system', 'single', 1646406187),
(1834, 863, NULL, NULL, 'New badge', '<p>You received Top Seller&nbsp;badge.</p>', 'system', 'single', 1646406187),
(1835, 863, NULL, NULL, 'New badge', '<p>You received Fantastic Support&nbsp;badge.</p>', 'system', 'single', 1646406193),
(1836, 864, NULL, NULL, 'New badge', '<p>You received Faithful User&nbsp;badge.</p>', 'system', 'single', 1646406198),
(1837, 864, NULL, NULL, 'New badge', '<p>You received Junior Vendor&nbsp;badge.</p>', 'system', 'single', 1646406198),
(1838, 864, NULL, NULL, 'New badge', '<p>You received Best Seller&nbsp;badge.</p>', 'system', 'single', 1646406198),
(1839, 867, NULL, NULL, 'New badge', '<p>You received Faithful User&nbsp;badge.</p>', 'system', 'single', 1646406199),
(1840, 867, NULL, NULL, 'New badge', '<p>You received Expert Vendor&nbsp;badge.</p>', 'system', 'single', 1646406199),
(1841, 867, NULL, NULL, 'New badge', '<p>You received Golden Classes&nbsp;badge.</p>', 'system', 'single', 1646406199),
(1842, 867, NULL, NULL, 'New badge', '<p>You received Top Seller&nbsp;badge.</p>', 'system', 'single', 1646406205),
(1843, 867, NULL, NULL, 'New badge', '<p>You received Fantastic Support&nbsp;badge.</p>', 'system', 'single', 1646406205),
(1844, 868, NULL, NULL, 'New badge', '<p>You received Faithful User&nbsp;badge.</p>', 'system', 'single', 1646406205),
(1845, 870, NULL, NULL, 'New badge', '<p>Congrolation ! You received Faithful User badge.</p>', 'system', 'single', 1646408504),
(1846, 870, NULL, NULL, 'New badge', '<p>Congrolation ! You received Junior Vendor badge.</p>', 'system', 'single', 1646408511),
(1847, 870, NULL, NULL, 'New badge', '<p>Congrolation ! You received Golden Classes badge.</p>', 'system', 'single', 1646408516),
(1848, 870, NULL, NULL, 'New badge', '<p>Congrolation ! You received Top Seller badge.</p>', 'system', 'single', 1646408522),
(1849, 870, NULL, NULL, 'New badge', '<p>Congrolation ! You received Fantastic Support badge.</p>', 'system', 'single', 1646408527),
(1850, 934, NULL, NULL, 'New badge', '<p>Congrolation! You received Faithful User badge.</p>', 'system', 'single', 1646408593),
(1851, 934, NULL, NULL, 'New badge', '<p>Congrolation! You received Senior Vendor badge.</p>', 'system', 'single', 1646408594),
(1852, 934, NULL, NULL, 'New badge', '<p>Congrolation! You received Golden Classes badge.</p>', 'system', 'single', 1646408596),
(1853, 934, NULL, NULL, 'New badge', '<p>Congrolation! You received Best Seller badge.</p>', 'system', 'single', 1646408601),
(1854, 934, NULL, NULL, 'New badge', '<p>Congrolation! You received Fantastic Support badge.</p>', 'system', 'single', 1646408606),
(1855, 1015, NULL, NULL, 'New badge', '<p>Congrolation! You received Faithful User badge.</p>', 'system', 'single', 1646408712),
(1856, 1015, NULL, NULL, 'New badge', '<p>Congrolation! You received Expert Vendor badge.</p>', 'system', 'single', 1646408713),
(1857, 1015, NULL, NULL, 'New badge', '<p>Congrolation! You received Golden Classes badge.</p>', 'system', 'single', 1646408719),
(1858, 1015, NULL, NULL, 'New badge', '<p>Congrolation! You received King Seller badge.</p>', 'system', 'single', 1646408724),
(1859, 1015, NULL, NULL, 'New badge', '<p>Congrolation! You received Fantastic Support badge.</p>', 'system', 'single', 1646408730),
(1860, 995, NULL, NULL, 'New badge', '<p>Congrolation! You received Faithful User badge.</p>', 'system', 'single', 1646412265),
(1861, 870, NULL, NULL, 'New badge', '<p>Congrolation! You received Faithful User badge.</p>', 'system', 'single', 1646412316),
(1862, 870, NULL, NULL, 'New badge', '<p>Congrolation! You received Junior Vendor badge.</p>', 'system', 'single', 1646412321),
(1863, 870, NULL, NULL, 'New badge', '<p>Congrolation! You received Golden Classes badge.</p>', 'system', 'single', 1646412322),
(1864, 870, NULL, NULL, 'New badge', '<p>Congrolation! You received Top Seller badge.</p>', 'system', 'single', 1646412323),
(1865, 870, NULL, NULL, 'New badge', '<p>Congrolation! You received Fantastic Support badge.</p>', 'system', 'single', 1646412328),
(1866, 995, NULL, NULL, 'Offline payment submitted', '<p>An offline payment request with the amount 100 submitted successfully.</p>', 'system', 'single', 1646413097),
(1867, 1016, NULL, NULL, 'New badge', '<p>Congrolation! You received Faithful User badge.</p>', 'system', 'single', 1646413370),
(1868, 1016, NULL, NULL, 'New badge', '<p>Congrolation! You received Junior Vendor badge.</p>', 'system', 'single', 1646413376),
(1869, 1016, NULL, NULL, 'New badge', '<p>Congrolation! You received Golden Classes badge.</p>', 'system', 'single', 1646413376),
(1870, 1016, NULL, NULL, 'New badge', '<p>Congrolation! You received Top Seller badge.</p>', 'system', 'single', 1646413377),
(1871, 1016, NULL, NULL, 'New badge', '<p>Congrolation! You received Fantastic Support badge.</p>', 'system', 'single', 1646413380),
(1872, 1016, NULL, NULL, 'New feedback', '<p>Your class Become a Product Manager received a 5 stars rating from Robert Ransdell .</p>', 'system', 'single', 1646413440),
(1873, 996, NULL, NULL, 'New badge', '<p>Congrolation! You received Faithful User badge.</p>', 'system', 'single', 1646414245),
(1874, 1015, NULL, NULL, 'Your class approved', '<p>Your class New In-App Live System successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1646415127),
(1875, 1015, NULL, NULL, 'Your class approved', '<p>Your class New Learning Page successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1646415140),
(1876, 929, NULL, NULL, 'New badge', '<p>Congrolation! You received Faithful User badge.</p>', 'system', 'single', 1646415745),
(1877, 929, NULL, NULL, 'New badge', '<p>Congrolation! You received Senior Vendor badge.</p>', 'system', 'single', 1646415750),
(1878, 929, NULL, NULL, 'New badge', '<p>Congrolation! You received Golden Classes badge.</p>', 'system', 'single', 1646415755),
(1879, 929, NULL, NULL, 'New badge', '<p>Congrolation! You received Top Seller badge.</p>', 'system', 'single', 1646415756),
(1880, 929, NULL, NULL, 'New badge', '<p>Congrolation! You received Amazing Support badge.</p>', 'system', 'single', 1646415756),
(1881, 923, NULL, NULL, 'New badge', '<p>Congrolation! You received Faithful User badge.</p>', 'system', 'single', 1646415757),
(1882, 923, NULL, NULL, 'New badge', '<p>Congrolation! You received Senior Vendor badge.</p>', 'system', 'single', 1646415757),
(1883, 923, NULL, NULL, 'New badge', '<p>Congrolation! You received Golden Classes badge.</p>', 'system', 'single', 1646415757),
(1884, 923, NULL, NULL, 'New badge', '<p>Congrolation! You received Top Seller badge.</p>', 'system', 'single', 1646415758),
(1885, 923, NULL, NULL, 'New badge', '<p>Congrolation! You received Fantastic Support badge.</p>', 'system', 'single', 1646415763),
(1886, 4, NULL, NULL, 'New badge', '<p>Congrolation! You received Faithful User badge.</p>', 'system', 'single', 1646426799),
(1887, 4, NULL, NULL, 'New badge', '<p>Congrolation! You received Junior Vendor badge.</p>', 'system', 'single', 1646426800),
(1888, 4, NULL, NULL, 'New badge', '<p>Congrolation! You received Golden Classes badge.</p>', 'system', 'single', 1646426805),
(1889, 4, NULL, NULL, 'New badge', '<p>Congrolation! You received Best Seller badge.</p>', 'system', 'single', 1646426826),
(1890, 4, NULL, NULL, 'New badge', '<p>Congrolation! You received Fantastic Support badge.</p>', 'system', 'single', 1646426831),
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
(1908, 867, NULL, NULL, 'New badge', '<p>Congrolation! You received Faithful User badge.</p>', 'system', 'single', 1653734137),
(1909, 867, NULL, NULL, 'New badge', '<p>Congrolation! You received Expert Vendor badge.</p>', 'system', 'single', 1653734137),
(1910, 867, NULL, NULL, 'New badge', '<p>Congrolation! You received Golden Classes badge.</p>', 'system', 'single', 1653734137),
(1911, 867, NULL, NULL, 'New badge', '<p>Congrolation! You received Top Seller badge.</p>', 'system', 'single', 1653734137),
(1912, 867, NULL, NULL, 'New badge', '<p>Congrolation! You received Fantastic Support badge.</p>', 'system', 'single', 1653734137);

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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `notifications_status`
--

INSERT INTO `notifications_status` (`id`, `user_id`, `notification_id`, `seen_at`) VALUES
(1, 995, 1431, 1646127235),
(2, 995, 1436, 1646127239),
(3, 995, 1435, 1646127239),
(4, 995, 1438, 1646127241),
(5, 995, 1439, 1646127242),
(6, 995, 1442, 1646127243),
(7, 995, 1441, 1646127245),
(8, 995, 1476, 1646127245),
(9, 995, 1475, 1646127246),
(10, 995, 1477, 1646127248),
(11, 995, 1348, 1646127256),
(12, 995, 1402, 1646127264),
(13, 995, 1404, 1646127265),
(14, 995, 1406, 1646127266),
(15, 995, 1407, 1646127267),
(16, 995, 1409, 1646127269),
(17, 995, 1412, 1646127270),
(18, 995, 1411, 1646127271),
(19, 995, 1427, 1646127272),
(20, 995, 1428, 1646127273),
(21, 995, 1430, 1646127276),
(22, 995, 1513, 1646127280),
(23, 995, 1579, 1646127281),
(24, 995, 1582, 1646127282),
(25, 995, 1580, 1646127282),
(26, 995, 1609, 1646127283),
(27, 995, 1610, 1646127286),
(29, 1, 1601, 1654847000),
(30, 1, 1600, 1654847004),
(31, 1, 1599, 1654847007),
(32, 1, 1590, 1654847009),
(33, 1, 1583, 1654847012),
(34, 1, 1570, 1654847015),
(35, 995, 1866, 1651153123),
(36, 995, 1860, 1651153130),
(37, 995, 1811, 1651153132),
(38, 995, 1781, 1651153135),
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
(61, 1, 1368, 1654847071);

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
(15, 996, 500, 'JPMorgan', '493214678', NULL, 'approved', '1625906880', 1625944192),
(16, 995, 1000, 'Qatar National Bank', '5492247188', NULL, 'approved', '1625888700', 1625950563),
(17, 979, 400, 'State Bank of India', '4637249712', NULL, 'approved', '1626160980', 1625992349),
(18, 1016, 100, 'JPMorgan', '56647132456', NULL, 'reject', '1626065100', 1625992606),
(20, 923, 300, 'Qatar National Bank', '8314667560', NULL, 'approved', '1626321000', 1625993428),
(21, 930, 250, 'JPMorgan', '5325469580', NULL, 'approved', '1626070800', 1625993489),
(22, 1015, 500, 'State Bank of India', '583359268', NULL, 'approved', '1626183840', 1626132546),
(23, 929, 300, 'State Bank of India', '56476312144', NULL, 'approved', '1626252480', 1626241046),
(24, 996, 200, 'Qatar National Bank', '261513513513', NULL, 'approved', '1627950600', 1628704322),
(25, 995, 100, 'State Bank of India', '546465654', NULL, 'approved', '1629204540', 1628704347),
(26, 995, 200, 'JPMorgan', '2123135131', NULL, 'approved', '1628610420', 1628704369),
(27, 979, 100, 'State Bank of India', '3416354544', NULL, 'reject', '1628606880', 1628704436),
(28, 930, 100, 'State Bank of India', '5161616', NULL, 'waiting', '1630413000', 1628785223),
(34, 930, 500, 'Qatar National Bank', '3215415665', NULL, 'waiting', '1629469800', 1628785293),
(41, 995, 100, 'JPMorgan', '1647726485', '1646413097.png', 'waiting', '1646322780', 1646413097);

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
(307, 996, 'paid', 'credit', 0, 150, '15.00', '0.00', '165.00', NULL, NULL, 1625944333),
(308, 995, 'paid', 'credit', 0, 100, '10.00', '0.00', '110.00', NULL, NULL, 1625952623),
(309, 995, 'paid', 'credit', 0, 10, '1.00', '0.00', '11.00', NULL, NULL, 1625953190),
(310, 995, 'paid', 'credit', 0, 125, '12.50', '0.00', '137.50', NULL, NULL, 1625996807),
(311, 995, 'paid', 'credit', 0, 50, '5.00', '0.00', '55.00', NULL, NULL, 1625996936),
(312, 995, 'paid', 'credit', 0, 100, '5.00', '50.00', '55.00', NULL, NULL, 1625996974),
(313, 995, 'paid', 'credit', 0, 16, '1.20', '4.00', '13.20', NULL, NULL, 1625997096),
(314, 996, 'paid', 'credit', 0, 25, '2.25', '2.50', '24.75', NULL, NULL, 1626060481),
(315, 996, 'paid', 'credit', 0, 100, '4.00', '60.00', '44.00', NULL, NULL, 1626060547),
(316, 930, 'paid', 'credit', 0, 100, '5.00', '50.00', '55.00', NULL, NULL, 1626060832),
(317, 979, 'paid', 'credit', 0, 60, '6.00', '0.00', '66.00', NULL, NULL, 1626061329),
(318, 979, 'paid', 'credit', 0, 50, '5.00', '0.00', '55.00', NULL, NULL, 1626061366),
(319, 995, 'paid', 'credit', 0, 20, '2.00', NULL, '22.00', NULL, NULL, 1626061431),
(320, 1015, 'pending', NULL, 0, 20, '2.00', '0.00', '22.00', NULL, NULL, 1626132487),
(321, 1015, 'paid', 'credit', 0, 20, '1.60', '4.00', '17.60', NULL, NULL, 1626132840),
(322, 929, 'pending', NULL, 0, 40, '3.00', '10.00', '33.00', NULL, NULL, 1626240993),
(323, 929, 'paid', 'credit', 0, 50, '5.00', NULL, '55.00', NULL, NULL, 1626241146),
(324, 929, 'paid', 'credit', 0, 40, '3.00', '10.00', '33.00', NULL, NULL, 1626241207),
(325, 995, 'paid', 'credit', 0, 100, '10.00', '0.00', '110.00', NULL, NULL, 1626247189),
(326, 1015, 'pending', NULL, 0, 20, '1.60', '4.00', '17.60', NULL, NULL, 1626284818),
(327, 996, 'paid', 'credit', 0, 30, '2.70', '3.00', '29.70', NULL, NULL, 1626508952),
(328, 929, 'paid', 'credit', 0, 30, '3.00', '0.00', '33.00', NULL, NULL, 1635412190),
(329, 979, 'pending', NULL, 0, 100, '10.00', NULL, '110.00', NULL, NULL, 1635448382),
(330, 1017, 'paid', 'credit', 0, 30, '3.00', '0.00', '33.00', NULL, NULL, 1639379271),
(331, 1017, 'paid', 'credit', 0, 100, '10.00', '0.00', '110.00', NULL, NULL, 1639379347),
(332, 1017, 'paid', 'credit', 0, 40, '3.00', '10.00', '33.00', NULL, NULL, 1639379382),
(333, 995, 'paid', 'credit', 0, 10, '1.00', '0.00', '11.00', NULL, NULL, 1646172083),
(334, 996, 'paid', 'credit', 0, 10, '0.90', '1.00', '9.90', NULL, NULL, 1646172119),
(335, 979, 'paid', 'credit', 0, 10, '1.00', '0.00', '11.00', NULL, NULL, 1646172156),
(336, 929, 'paid', 'credit', 0, 10, '1.00', '0.00', '11.00', NULL, NULL, 1646172292),
(337, 995, 'paid', 'credit', 0, 750, '75.00', '0.00', '825.00', NULL, NULL, 1646379279),
(338, 1017, 'pending', NULL, 0, 300, '30.00', '0.00', '330.00', NULL, NULL, 1646380150),
(339, 930, 'paid', 'credit', 0, 199, '19.90', NULL, '218.90', NULL, NULL, 1646386782),
(340, 859, 'paid', 'credit', 0, 200, '20.00', NULL, '220.00', NULL, NULL, 1646387650);

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
(3, 1015, '332.00', 'Robert Ransdell', 'QR55BDHC20040182623775', 'Qatar National Bank', 'done', 1626061191),
(4, 934, '80.00', 'Linda Anderson', 'QR21BARC20038014587495', 'Qatar National Bank', 'waiting', 1626061254);

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
(25, 1999, 1995, 1, NULL, 1625039222, NULL),
(26, 2003, 1995, 0, NULL, 1625300252, NULL),
(27, 2006, 2002, 0, NULL, 1625694442, NULL),
(28, 1998, 1995, 1, NULL, 1626078328, NULL),
(30, 2007, 2006, 0, NULL, 1626207537, NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `quizzes`
--

INSERT INTO `quizzes` (`id`, `webinar_id`, `creator_id`, `chapter_id`, `webinar_title`, `time`, `attempt`, `pass_mark`, `certificate`, `status`, `total_mark`, `created_at`, `updated_at`) VALUES
(28, 1995, 1016, NULL, 'Become a Product Manager', 5, 10, 70, 1, 'active', 100, 1624872015, NULL),
(30, 1999, 929, NULL, 'How to Manage & Influence Your Virtual Team', 20, 5, 60, 1, 'active', 100, 1625039490, NULL),
(31, 2001, 3, NULL, 'Learn and Understand AngularJS', 5, 10, 70, 1, 'active', 100, 1625079329, 1625950841),
(32, 2003, 3, NULL, 'Active Listening: You Can Be a Great Listener', 10, 3, 60, 1, 'active', 100, 1625950930, 1626242500),
(33, 1998, 1015, NULL, 'Excel from Beginner to Advanced', 10, 4, 60, 1, 'active', 100, 1625951048, 1625951430),
(34, 1996, 1015, NULL, 'Learn Linux in 5 Days', 5, 3, 70, 1, 'active', 100, 1625951477, 1625952288),
(35, 2008, 1015, NULL, 'New Learning Page', 10, 3, 75, 1, 'active', 100, 1646173391, 1646174129);

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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `quizzes_questions`
--

INSERT INTO `quizzes_questions` (`id`, `quiz_id`, `creator_id`, `grade`, `type`, `created_at`, `updated_at`) VALUES
(40, 28, 1016, '20', 'multiple', 1624872142, NULL),
(41, 28, 1016, '20', 'multiple', 1624872345, NULL),
(42, 28, 1016, '20', 'multiple', 1624872432, NULL),
(44, 28, 1016, '20', 'multiple', 1624909419, NULL),
(45, 28, 1016, '20', 'multiple', 1624909495, 1624909533),
(46, 30, 929, '20', 'multiple', 1625039743, NULL),
(47, 30, 929, '20', 'descriptive', 1625040028, 1625040475),
(48, 30, 929, '20', 'descriptive', 1625040598, NULL),
(49, 30, 929, '20', 'descriptive', 1625040865, NULL),
(50, 30, 929, '20', 'multiple', 1625040978, NULL),
(51, 31, 3, '20', 'multiple', 1625086333, NULL),
(52, 31, 3, '20', 'multiple', 1625086927, NULL),
(53, 31, 3, '20', 'multiple', 1625088072, NULL),
(54, 31, 3, '20', 'multiple', 1625733114, NULL),
(55, 31, 3, '20', 'multiple', 1625733218, NULL),
(56, 33, 1015, '20', 'multiple', 1625951156, NULL),
(57, 33, 1015, '20', 'multiple', 1625951217, NULL),
(58, 33, 1015, '20', 'multiple', 1625951303, NULL),
(59, 33, 1015, '20', 'multiple', 1625951366, NULL),
(60, 33, 1015, '20', 'multiple', 1625951427, NULL),
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
(71, 35, 1015, '20', 'multiple', 1646173476, NULL),
(72, 35, 1015, '20', 'multiple', 1646173553, NULL),
(73, 35, 1015, '20', 'multiple', 1646173606, NULL),
(74, 35, 1015, '20', 'multiple', 1646173664, NULL),
(75, 35, 1015, '20', 'multiple', 1646173719, NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `quizzes_questions_answers`
--

INSERT INTO `quizzes_questions_answers` (`id`, `creator_id`, `question_id`, `image`, `correct`, `created_at`, `updated_at`) VALUES
(83, 1016, 40, NULL, 1, 1624872142, NULL),
(84, 1016, 40, NULL, 0, 1624872142, NULL),
(85, 1016, 40, NULL, 0, 1624872142, NULL),
(86, 1016, 40, NULL, 0, 1624872142, NULL),
(87, 1016, 41, NULL, 0, 1624872345, NULL),
(88, 1016, 41, NULL, 0, 1624872345, NULL),
(89, 1016, 41, NULL, 1, 1624872345, NULL),
(90, 1016, 41, NULL, 0, 1624872345, NULL),
(91, 1016, 42, NULL, 0, 1624872432, NULL),
(92, 1016, 42, NULL, 1, 1624872432, NULL),
(93, 1016, 42, NULL, 0, 1624872432, NULL),
(94, 1016, 42, NULL, 0, 1624872432, NULL),
(99, 1016, 44, NULL, 0, 1624909419, NULL),
(100, 1016, 44, NULL, 0, 1624909419, NULL),
(101, 1016, 44, NULL, 0, 1624909419, NULL),
(102, 1016, 44, NULL, 1, 1624909419, NULL),
(103, 1016, 45, NULL, 1, 1624909533, NULL),
(104, 1016, 45, NULL, 0, 1624909533, NULL),
(105, 1016, 45, NULL, 0, 1624909533, NULL),
(106, 1016, 45, NULL, 0, 1624909533, NULL),
(107, 929, 46, NULL, 1, 1625039743, NULL),
(108, 929, 46, NULL, 0, 1625039743, NULL),
(109, 929, 46, NULL, 0, 1625039743, NULL),
(110, 929, 46, NULL, 0, 1625039743, NULL),
(111, 929, 50, NULL, 0, 1625040978, NULL),
(112, 929, 50, NULL, 1, 1625040978, NULL),
(113, 929, 50, NULL, 0, 1625040978, NULL),
(114, 929, 50, NULL, 0, 1625040978, NULL),
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
(135, 1015, 56, '/store/1015/quiz/q1 (1).jpg', 1, 1625951156, NULL),
(136, 1015, 56, '/store/1015/quiz/q1 (2).jpg', 0, 1625951156, NULL),
(137, 1015, 56, '/store/1015/quiz/q1 (3).jpg', 0, 1625951156, NULL),
(138, 1015, 56, '/store/1015/quiz/q1 (4).jpg', 0, 1625951156, NULL),
(139, 1015, 57, '/store/1015/quiz/q2 (1).jpg', 1, 1625951217, NULL),
(140, 1015, 57, '/store/1015/quiz/q2 (2).jpg', 0, 1625951217, NULL),
(141, 1015, 57, '/store/1015/quiz/q2 (3).jpg', 0, 1625951217, NULL),
(142, 1015, 57, '/store/1015/quiz/q2 (4).jpg', 0, 1625951217, NULL),
(143, 1015, 58, '/store/1015/quiz/q3 (1).jpg', 1, 1625951303, NULL),
(144, 1015, 58, '/store/1015/quiz/q3 (2).jpg', 0, 1625951303, NULL),
(145, 1015, 58, '/store/1015/quiz/q3 (3).jpg', 0, 1625951303, NULL),
(146, 1015, 58, '/store/1015/quiz/q3 (4).jpg', 0, 1625951303, NULL),
(147, 1015, 59, '/store/1015/quiz/q4 (1).jpg', 0, 1625951366, NULL),
(148, 1015, 59, '/store/1015/quiz/q4 (2).jpg', 0, 1625951366, NULL),
(149, 1015, 59, '/store/1015/quiz/q4 (3).jpg', 1, 1625951366, NULL),
(150, 1015, 59, '/store/1015/quiz/q4 (4).jpg', 0, 1625951366, NULL),
(151, 1015, 60, '/store/1015/quiz/q5 (1).jpg', 0, 1625951427, NULL),
(152, 1015, 60, '/store/1015/quiz/q5 (2).jpg', 1, 1625951427, NULL),
(153, 1015, 60, '/store/1015/quiz/q5 (3).jpg', 0, 1625951427, NULL),
(154, 1015, 60, '/store/1015/quiz/q5 (4).jpg', 0, 1625951427, NULL),
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
(191, 1015, 71, '/store/1015/quiz/q1 (1).jpg', 1, 1646173476, NULL),
(192, 1015, 71, '/store/1015/quiz/q1 (2).jpg', 0, 1646173476, NULL),
(193, 1015, 71, '/store/1015/quiz/q1 (3).jpg', 0, 1646173476, NULL),
(194, 1015, 71, '/store/1015/quiz/q1 (4).jpg', 0, 1646173476, NULL),
(195, 1015, 72, '/store/1015/quiz/q2 (1).jpg', 1, 1646173553, NULL),
(196, 1015, 72, '/store/1015/quiz/q2 (2).jpg', 0, 1646173553, NULL),
(197, 1015, 72, '/store/1015/quiz/q2 (3).jpg', 0, 1646173553, NULL),
(198, 1015, 72, '/store/1015/quiz/q2 (4).jpg', 0, 1646173553, NULL),
(199, 1015, 73, '/store/1015/quiz/q3 (1).jpg', 1, 1646173606, NULL),
(200, 1015, 73, '/store/1015/quiz/q3 (2).jpg', 0, 1646173606, NULL),
(201, 1015, 73, '/store/1015/quiz/q3 (3).jpg', 0, 1646173606, NULL),
(202, 1015, 73, '/store/1015/quiz/q3 (4).jpg', 0, 1646173606, NULL),
(203, 1015, 74, '/store/1015/quiz/q4 (1).jpg', 0, 1646173664, NULL),
(204, 1015, 74, '/store/1015/quiz/q4 (2).jpg', 0, 1646173664, NULL),
(205, 1015, 74, '/store/1015/quiz/q4 (3).jpg', 1, 1646173664, NULL),
(206, 1015, 74, '/store/1015/quiz/q4 (4).jpg', 0, 1646173664, NULL),
(207, 1015, 75, '/store/1015/quiz/q5 (1).jpg', 0, 1646173720, NULL),
(208, 1015, 75, '/store/1015/quiz/q5 (2).jpg', 1, 1646173720, NULL),
(209, 1015, 75, '/store/1015/quiz/q5 (3).jpg', 0, 1646173720, NULL),
(210, 1015, 75, '/store/1015/quiz/q5 (4).jpg', 0, 1646173720, NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quizzes_questions_answer_translations`
--

INSERT INTO `quizzes_questions_answer_translations` (`id`, `quizzes_questions_answer_id`, `locale`, `title`) VALUES
(17, 83, 'en', 'Paris'),
(18, 84, 'en', 'Berlin'),
(19, 85, 'en', 'London'),
(20, 86, 'en', 'New York'),
(21, 87, 'en', 'Spring'),
(22, 88, 'en', 'Summer'),
(23, 89, 'en', 'Winter'),
(24, 90, 'en', 'autumn'),
(25, 91, 'en', '15'),
(26, 92, 'en', '12'),
(27, 93, 'en', '6'),
(28, 94, 'en', '3'),
(29, 99, 'en', '50 cm'),
(30, 100, 'en', '200 cm'),
(31, 101, 'en', '1000 cm'),
(32, 102, 'en', '100 cm'),
(33, 103, 'en', '1000'),
(34, 104, 'en', '100'),
(35, 105, 'en', '500'),
(36, 106, 'en', '10'),
(37, 107, 'en', '5'),
(38, 108, 'en', '2'),
(39, 109, 'en', '7'),
(40, 110, 'en', '9'),
(41, 111, 'en', '4'),
(42, 112, 'en', '6'),
(43, 113, 'en', '2'),
(44, 114, 'en', '5'),
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
(65, 135, 'en', NULL),
(66, 136, 'en', NULL),
(67, 137, 'en', NULL),
(68, 138, 'en', NULL),
(69, 139, 'en', NULL),
(70, 140, 'en', NULL),
(71, 141, 'en', NULL),
(72, 142, 'en', NULL),
(73, 143, 'en', NULL),
(74, 144, 'en', NULL),
(75, 145, 'en', NULL),
(76, 146, 'en', NULL),
(77, 147, 'en', NULL),
(78, 148, 'en', NULL),
(79, 149, 'en', NULL),
(80, 150, 'en', NULL),
(81, 151, 'en', NULL),
(82, 152, 'en', NULL),
(83, 153, 'en', NULL),
(84, 154, 'en', NULL),
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
(121, 191, 'en', NULL),
(122, 192, 'en', NULL),
(123, 193, 'en', NULL),
(124, 194, 'en', NULL),
(125, 195, 'en', NULL),
(126, 196, 'en', NULL),
(127, 197, 'en', NULL),
(128, 198, 'en', NULL),
(129, 199, 'en', NULL),
(130, 200, 'en', NULL),
(131, 201, 'en', NULL),
(132, 202, 'en', NULL),
(133, 203, 'en', NULL),
(134, 204, 'en', NULL),
(135, 205, 'en', NULL),
(136, 206, 'en', NULL),
(137, 207, 'en', NULL),
(138, 208, 'en', NULL),
(139, 209, 'en', NULL),
(140, 210, 'en', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `quizzes_results`
--

INSERT INTO `quizzes_results` (`id`, `quiz_id`, `user_id`, `results`, `user_grade`, `status`, `created_at`) VALUES
(24, 33, 995, '{\"56\":{\"answer\":\"135\",\"status\":true,\"grade\":\"20\"},\"57\":{\"answer\":\"142\",\"status\":false,\"grade\":\"20\"},\"58\":{\"answer\":\"145\",\"status\":false,\"grade\":\"20\"},\"59\":{\"answer\":\"148\",\"status\":false,\"grade\":\"20\"},\"60\":{\"answer\":\"152\",\"status\":true,\"grade\":\"20\"},\"attempt_number\":\"1\"}', 40, 'failed', 1625997180),
(25, 30, 995, '{\"46\":{\"answer\":\"107\",\"status\":true,\"grade\":\"20\"},\"47\":{\"answer\":\"Look for technologies that improve collaboration and enhance the meeting experience. Meeting attendees may be calling in from around the block\\u2014or around the world. Whatever the case, your goal is to make people feel like they are together in the same room.\",\"status\":false,\"grade\":\"20\"},\"48\":{\"answer\":\"Make sure people come to the meeting prepared. Yes, this will require effort beyond simply scheduling the call, but you\\u2019ll reap enormous benefits if you distribute agendas and other relevant materials to attendees ahead of time. Work smart and leverage technology to help you prep meeting content.\",\"status\":false,\"grade\":\"20\"},\"49\":{\"answer\":\"Preserve content so it doesn\'t need to be repeated. Many of our survey respondents reported that they have a huge problem with content persistence (meaning that they have trouble making sure that files, video, web pages, whiteboards, annotations, etc., exist after a meeting ends).\",\"status\":false,\"grade\":\"20\"},\"50\":{\"answer\":\"112\",\"status\":true,\"grade\":\"20\"},\"attempt_number\":\"1\"}', 40, 'waiting', 1625997328),
(28, 28, 995, '{\"40\":{\"answer\":\"83\",\"status\":true,\"grade\":\"20\"},\"41\":{\"answer\":\"89\",\"status\":true,\"grade\":\"20\"},\"42\":{\"answer\":\"92\",\"status\":true,\"grade\":\"20\"},\"44\":{\"answer\":\"102\",\"status\":true,\"grade\":\"20\"},\"45\":{\"answer\":\"104\",\"status\":false,\"grade\":\"20\"},\"attempt_number\":\"1\"}', 80, 'passed', 1626213083),
(29, 33, 996, '{\"56\":{\"answer\":\"135\",\"status\":true,\"grade\":\"20\"},\"57\":{\"answer\":\"142\",\"status\":false,\"grade\":\"20\"},\"58\":{\"answer\":\"143\",\"status\":true,\"grade\":\"20\"},\"59\":{\"answer\":\"149\",\"status\":true,\"grade\":\"20\"},\"60\":{\"answer\":\"152\",\"status\":true,\"grade\":\"20\"},\"attempt_number\":\"1\"}', 80, 'passed', 1626237574),
(30, 34, 979, '{\"61\":{\"answer\":\"155\",\"status\":true,\"grade\":\"20\"},\"62\":{\"answer\":\"162\",\"status\":true,\"grade\":\"20\"},\"63\":{\"answer\":\"166\",\"status\":true,\"grade\":\"20\"},\"64\":{\"answer\":\"169\",\"status\":true,\"grade\":\"20\"},\"65\":{\"answer\":\"Ubuntu is a Linux distribution based on Debian and composed mostly of free and open-source software. Ubuntu is officially released in three editions: Desktop, Server, and Core for Internet of things devices and robots. All the editions can run on the computer alone, or in a virtual machine. Wikipedia\",\"status\":true,\"grade\":\"10\"},\"attempt_number\":\"1\"}', 90, 'passed', 1626237968),
(31, 34, 929, '{\"61\":{\"answer\":\"155\",\"status\":true,\"grade\":\"20\"},\"62\":{\"answer\":\"162\",\"status\":true,\"grade\":\"20\"},\"63\":{\"answer\":\"166\",\"status\":true,\"grade\":\"20\"},\"64\":{\"answer\":\"169\",\"status\":true,\"grade\":\"20\"},\"65\":{\"answer\":\"Ubuntu is a Linux distribution based on Debian and composed mostly of free and open-source software. Ubuntu is officially released in three editions: Desktop, Server, and Core for Internet of things devices and robots. All the editions can run on the computer alone, or in a virtual machine.\",\"status\":false,\"grade\":\"20\"},\"attempt_number\":\"1\"}', 80, 'waiting', 1626243488);

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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quiz_question_translations`
--

INSERT INTO `quiz_question_translations` (`id`, `quizzes_question_id`, `locale`, `title`, `correct`) VALUES
(1, 40, 'en', 'Where is the French capital?', NULL),
(2, 41, 'en', 'What is the coldest season of the year?', NULL),
(3, 42, 'en', 'How many months is each year?', NULL),
(4, 44, 'en', 'How many centimeters is one meter unit?', NULL),
(5, 45, 'en', 'How many meters is one kilometer unit?', ''),
(6, 46, 'en', 'What is the number of things we should do before the meeting?', NULL),
(7, 47, 'en', 'What should we do during the meeting?', 'Start the meeting promptly on schedule and do not wait for others to arrive. A large amount of professional time is wasted by leaders who wait for more people to arrive before starting a meeting. It may require a change in the culture, but once people know that you start your meetings on time, they will arrive on time.'),
(8, 48, 'en', 'What should we do before the meeting?', 'Make sure people come to the meeting prepared. Yes, this will require effort beyond simply scheduling the call, but you’ll reap enormous benefits if you distribute agendas and other relevant materials to attendees ahead of time. Work smart and leverage technology to help you prep meeting content.'),
(9, 49, 'en', 'What should we do after the meeting?', 'Preserve content so it doesn\'t need to be repeated. Many of our survey respondents reported that they have a huge problem with content persistence (meaning that they have trouble making sure that files, video, web pages, whiteboards, annotations, etc., exist after a meeting ends). The key here is to stop conceiving of meetings as events with a definite beginning and an end. Instead, recognize that meetings are often segments of larger projects and look for technology that can preserve and instantly restore your sessions exactly where you left off.'),
(10, 50, 'en', 'What is the number of things we should do after the meeting?', NULL),
(11, 51, 'en', 'Which photo belongs to France?', NULL),
(12, 52, 'en', 'Which image is about a teacher\'s job?', NULL),
(13, 53, 'en', 'Which image is about a fireman\'s job?', NULL),
(14, 54, 'en', 'Which animal lives in water?', NULL),
(15, 55, 'en', 'Which image is autumn?', NULL),
(16, 56, 'en', 'Which photo belongs to France?', NULL),
(17, 57, 'en', 'Which image is about a teacher\'s job?', NULL),
(18, 58, 'en', 'Which image is about a fireman\'s job?', NULL),
(19, 59, 'en', 'Which animal lives in water?', NULL),
(20, 60, 'en', 'Which image is autumn?', NULL),
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
(31, 71, 'en', 'Which photo belongs to France?', NULL),
(32, 72, 'en', 'Which image is about a teacher\'s job?', NULL),
(33, 73, 'en', 'Which image is about a fireman\'s job?', NULL),
(34, 74, 'en', 'Which animal lives in water?', NULL),
(35, 75, 'en', 'Which image is autumn?', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quiz_translations`
--

INSERT INTO `quiz_translations` (`id`, `quiz_id`, `locale`, `title`) VALUES
(1, 28, 'en', 'Elementary Quiz'),
(2, 30, 'en', 'First Quiz'),
(3, 31, 'en', 'Placement Quiz'),
(4, 32, 'en', 'Midterm Quiz'),
(5, 33, 'en', 'Midterm Quiz'),
(6, 34, 'en', 'Final Quiz'),
(7, 35, 'en', 'Entrance Quiz');

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

--
-- Dumping data for table `reserve_meetings`
--

INSERT INTO `reserve_meetings` (`id`, `meeting_id`, `sale_id`, `meeting_time_id`, `day`, `date`, `start_at`, `end_at`, `user_id`, `paid_amount`, `meeting_type`, `student_count`, `discount`, `link`, `password`, `description`, `status`, `created_at`, `locked_at`, `reserved_at`) VALUES
(1, 30, 186, 169, '2022-03-15', 1647302400, 1647354600, 1647358200, 995, '750.00', 'in_person', 5, NULL, NULL, NULL, 'We are the managers of a company and we want to get acquainted with the concepts of risk in resource management.', 'pending', 1646379271, NULL, 1646379290),
(5, 30, NULL, 170, '2022-03-25', 1648166400, 1648240200, 1648243800, 1017, '300.00', 'online', 3, NULL, NULL, NULL, NULL, 'pending', 1646379963, NULL, NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rewards_accounting`
--

INSERT INTO `rewards_accounting` (`id`, `user_id`, `item_id`, `type`, `score`, `status`, `created_at`) VALUES
(1, 867, 2006, 'create_classes', 50, 'addiction', 1645726175),
(2, 929, 1999, 'create_classes', 50, 'addiction', 1645726209),
(3, 1015, 2008, 'create_classes', 50, 'addiction', 1646127156),
(4, 995, 2005, 'learning_progress_100', 20, 'addiction', 1646127296),
(5, 1015, 2009, 'create_classes', 50, 'addiction', 1646172007),
(6, 995, NULL, 'buy', 55, 'addiction', 1646172086),
(7, 996, NULL, 'buy', 50, 'addiction', 1646172123),
(8, 979, NULL, 'buy', 55, 'addiction', 1646172159),
(9, 929, NULL, 'buy', 55, 'addiction', 1646172296),
(10, 867, 2000, 'create_classes', 50, 'addiction', 1646172395),
(11, 979, 23, 'badge', 15, 'addiction', 1646245104),
(12, 1015, 23, 'badge', 15, 'addiction', 1646254479),
(13, 1015, 26, 'badge', 30, 'addiction', 1646254480),
(14, 1015, 29, 'badge', 50, 'addiction', 1646254480),
(15, 1015, 32, 'badge', 50, 'addiction', 1646254481),
(16, 1015, 35, 'badge', 20, 'addiction', 1646254481),
(17, 979, 33, 'review_courses', 15, 'addiction', 1646254639),
(18, 864, 23, 'badge', 15, 'addiction', 1646256513),
(19, 864, 24, 'badge', 10, 'addiction', 1646256514),
(20, 870, 23, 'badge', 15, 'addiction', 1646257010),
(21, 870, 24, 'badge', 10, 'addiction', 1646257010),
(22, 870, 29, 'badge', 50, 'addiction', 1646257011),
(23, 870, 31, 'badge', 20, 'addiction', 1646257011),
(24, 870, 35, 'badge', 20, 'addiction', 1646257011),
(25, 867, 23, 'badge', 15, 'addiction', 1646260042),
(26, 867, 26, 'badge', 30, 'addiction', 1646260043),
(27, 867, 29, 'badge', 50, 'addiction', 1646260043),
(28, 867, 31, 'badge', 20, 'addiction', 1646260043),
(29, 867, 35, 'badge', 20, 'addiction', 1646260044),
(30, 1016, 23, 'badge', 15, 'addiction', 1646263056),
(31, 1016, 24, 'badge', 10, 'addiction', 1646263057),
(32, 1016, 29, 'badge', 50, 'addiction', 1646263057),
(33, 1016, 31, 'badge', 20, 'addiction', 1646263057),
(34, 1016, 35, 'badge', 20, 'addiction', 1646263058),
(35, 934, 23, 'badge', 15, 'addiction', 1646263177),
(36, 934, 25, 'badge', 20, 'addiction', 1646263177),
(37, 934, 29, 'badge', 50, 'addiction', 1646263177),
(38, 934, 35, 'badge', 20, 'addiction', 1646263178),
(39, 929, 23, 'badge', 15, 'addiction', 1646263303),
(40, 929, 25, 'badge', 20, 'addiction', 1646263304),
(41, 929, 29, 'badge', 50, 'addiction', 1646263304),
(42, 929, 31, 'badge', 20, 'addiction', 1646263304),
(43, 3, 23, 'badge', 15, 'addiction', 1646263503),
(44, 3, 25, 'badge', 20, 'addiction', 1646263504),
(45, 3, 31, 'badge', 20, 'addiction', 1646263504),
(46, 4, 23, 'badge', 15, 'addiction', 1646263571),
(47, 4, 24, 'badge', 10, 'addiction', 1646263571),
(48, 4, 29, 'badge', 50, 'addiction', 1646263572),
(49, 4, 35, 'badge', 20, 'addiction', 1646263572),
(50, 859, 23, 'badge', 15, 'addiction', 1646263573),
(51, 863, 23, 'badge', 15, 'addiction', 1646263573),
(52, 863, 24, 'badge', 10, 'addiction', 1646263573),
(53, 863, 29, 'badge', 50, 'addiction', 1646263574),
(54, 863, 31, 'badge', 20, 'addiction', 1646263574),
(55, 863, 35, 'badge', 20, 'addiction', 1646263574),
(56, 868, 23, 'badge', 15, 'addiction', 1646287364),
(57, 996, 23, 'badge', 15, 'addiction', 1646290203),
(58, 995, 23, 'badge', 15, 'addiction', 1646302693),
(59, 923, 23, 'badge', 15, 'addiction', 1646326059),
(60, 923, 25, 'badge', 20, 'addiction', 1646326060),
(61, 923, 29, 'badge', 50, 'addiction', 1646326060),
(62, 923, 31, 'badge', 20, 'addiction', 1646326060),
(63, 923, 35, 'badge', 20, 'addiction', 1646326061),
(64, 995, 34, 'review_courses', 15, 'addiction', 1646352844),
(65, 995, NULL, 'buy', 4125, 'addiction', 1646379288),
(66, 995, NULL, 'student_meeting_reserve', 30, 'addiction', 1646379290),
(67, 1017, 22, 'badge', 10, 'addiction', 1646379365),
(68, 930, 23, 'badge', 15, 'addiction', 1646386699),
(69, 930, NULL, 'buy', 1095, 'addiction', 1646386787),
(70, 859, NULL, 'buy', 1100, 'addiction', 1646387655),
(71, 1017, 1017, 'newsletters', 10, 'addiction', 1646389129),
(72, 4, 2005, 'create_classes', 50, 'addiction', 1646396841),
(73, 929, 2004, 'create_classes', 50, 'addiction', 1646396863),
(74, 1015, 35, 'review_courses', 15, 'addiction', 1646413457),
(75, 1015, 66, 'comment', 5, 'addiction', 1646413662),
(76, 996, 996, 'newsletters', 10, 'addiction', 1646414262),
(77, 864, 2010, 'create_classes', 50, 'addiction', 1651240160),
(78, 864, 25, 'badge', 20, 'addiction', 1651240183),
(79, 3, 26, 'badge', 30, 'addiction', 1651240183),
(80, 864, 2003, 'create_classes', 50, 'addiction', 1651240265),
(81, 1032, 21, 'badge', 5, 'addiction', 1651316115),
(82, 3, 2011, 'create_classes', 50, 'addiction', 1651324524);

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
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

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
(188, NULL, 859, 340, NULL, NULL, NULL, NULL, NULL, 4, 'registration_package', 'credit', 200, '20.00', '0.00', NULL, '220.00', 1646387655, NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `creator_id`, `webinar_id`, `chapter_id`, `date`, `duration`, `link`, `zoom_start_link`, `session_api`, `api_secret`, `moderator_secret`, `agora_settings`, `order`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(52, 1015, 1996, 22, 1696408200, 90, 'https://us05web.zoom.us/j/88274172998?pwd=Y2czMmNtendmNU1GMVdRNmFRdS9JQT09', 'https://us05web.zoom.us/s/88274172998?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6Il84Z2M3Q2Y5Ul9lYmF2WUQyTjNYekEiLCJpc3MiOiJ3ZWIiLCJzdHkiOjEsIndjZCI6InVzMDUiLCJjbHQiOjAsInN0ayI6ImM0TXJjZ3FWYURaLXF0dUo4NFlHcE5idmQ5bzhOSkVmUERBem1fQXZYREUuQUcucEJrSHVjbnRXbTJhSXl5WUN0QmZXZHJuMEFZWUZERjhMbHpORFFTMXM1MU1ybXBvNElLYnQ5dVZkV2hOdkttODUxako1eEtiVWFiZG1QUUYuT0U2TGx2bmQwVmZGejFfV0dueWVaQS5paWJFODdIeFlfWVRGcXJwIiwiZXhwIjoxNjI0OTUxOTgwLCJpYXQiOjE2MjQ5NDQ3ODAsImFpZCI6Ikh4M2NFTjQ0UlZtbExHZ1hkT3dleVEiLCJjaWQiOiIifQ.hxHT3quR9dYW9yPaof6J1Y2WEh9LTu3xSBEzWR4UBLw', 'zoom', '', '', NULL, NULL, 'active', 1624944778, 1635417703, NULL),
(53, 1015, 1996, 23, 1696581000, 90, 'https://us05web.zoom.us/j/89548965384?pwd=ZHVpZjZwdlg4c1NZcExmOUZ3Qk1hZz09', 'https://us05web.zoom.us/s/89548965384?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6Il84Z2M3Q2Y5Ul9lYmF2WUQyTjNYekEiLCJpc3MiOiJ3ZWIiLCJzdHkiOjEsIndjZCI6InVzMDUiLCJjbHQiOjAsInN0ayI6IjdfLTFUQ0ZGWHRzMGZER3NSWWlwVVNKbEJYc0JIR1p6V0piLVgtQ2RaamcuQUcuektDUldmYVdHNTdFMEYzcUFoX3lsd3BlZHZQYzdQcVQ0cGNGcGRtWklGLWpOMkVZMVo0WDhTVENvbnk4LXZLODVuNU03LWFuMDQ4dXBWTlkuU0I5dEJ2OC1NZ0t1MDlVRlZGWnF3QS5KalNENDFPbU85QzV6czctIiwiZXhwIjoxNjI0OTUyMDYyLCJpYXQiOjE2MjQ5NDQ4NjIsImFpZCI6Ikh4M2NFTjQ0UlZtbExHZ1hkT3dleVEiLCJjaWQiOiIifQ.Qy2-SV5zcLoJuOFRHnWOg2bsoYWgBKOsHkUXJoyR0Z4', 'zoom', '', '', NULL, NULL, 'active', 1624944860, 1635417710, NULL),
(54, 1015, 1996, 23, 1696761000, 90, 'https://us05web.zoom.us/j/85386163374?pwd=UnVlYmNHTk5Tak1XN0J2d05Xa1hpZz09', 'https://us05web.zoom.us/s/85386163374?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6Il84Z2M3Q2Y5Ul9lYmF2WUQyTjNYekEiLCJpc3MiOiJ3ZWIiLCJzdHkiOjEsIndjZCI6InVzMDUiLCJjbHQiOjAsInN0ayI6IlB5TnU3WE9NcUIxNy1hcEhDTDhNZ0dFbm1ydmJLWTlkci1vU3ZPYU1mUGcuQUcuSEMzOVNhWmFieFlEdzdSa25JTGw2dWRtc29zQ2RmVFVDTG1oNUxYbDhJSHl4NkhwQ0haZ0czcF9IQzdHLUc1SmJ0RkNDTXRVQ01PUXVuRnguLXdnRERNM1NyMEJBSk41VGZvUTNHUS4xcGd1bjRoclRwSjF3LUhwIiwiZXhwIjoxNjI0OTUyMTQ5LCJpYXQiOjE2MjQ5NDQ5NDksImFpZCI6Ikh4M2NFTjQ0UlZtbExHZ1hkT3dleVEiLCJjaWQiOiIifQ.OHoObakmLvuWC1vtExvmnSq4gdcOiFLAdCXlHCf5dHo', 'zoom', '', '', NULL, NULL, 'active', 1624944947, 1635417717, NULL),
(55, 1015, 1996, 23, 1696948200, 90, 'https://us05web.zoom.us/j/85322459249?pwd=M29NVUh3dlNTR2tIWmcrdVVRUE9NUT09', 'https://us05web.zoom.us/s/85322459249?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6Il84Z2M3Q2Y5Ul9lYmF2WUQyTjNYekEiLCJpc3MiOiJ3ZWIiLCJzdHkiOjEsIndjZCI6InVzMDUiLCJjbHQiOjAsInN0ayI6InFORXdjalVERjhjV3haLXQtcHlJOUE4U0REOVRVVHhmMS02a3h6bkJDVlkuQUcud3RBSmt6SG9TNDNuRUt3NmlzQlhEaWtHbFdER1NuS2hTU3Zwa0pIRzVJY044bE5CbUhtalRoTkNHT1ZWMEhnNS1oY3JfaE9uLVVLemVTbG8ud0d5WDlQUVJjdlpmeFNpVUNsX0V6QS5zZ0pzQkJtNHEwaExxT21TIiwiZXhwIjoxNjI0OTUyMjAwLCJpYXQiOjE2MjQ5NDUwMDAsImFpZCI6Ikh4M2NFTjQ0UlZtbExHZ1hkT3dleVEiLCJjaWQiOiIifQ.Qv-bb4gviXtnXZsoTcOVEff252ll2GjBYSHeEL8KCIo', 'zoom', '', '', NULL, NULL, 'active', 1624944997, 1635417726, NULL),
(56, 1015, 1996, 23, 1697286600, 90, 'https://us05web.zoom.us/j/84379684637?pwd=M2NTQUdmbXF4N0ZzOGluRm02Z3dvZz09', 'https://us05web.zoom.us/s/84379684637?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6Il84Z2M3Q2Y5Ul9lYmF2WUQyTjNYekEiLCJpc3MiOiJ3ZWIiLCJzdHkiOjEsIndjZCI6InVzMDUiLCJjbHQiOjAsInN0ayI6Imc2QXNVaGx3elFNMFBpLTNGNklDdnJXRlA1eUxDbDJlNEVuSndvRjRQbUEuQUcuSnFvR0ZMZWNRVUdleS1nY29fUVhFWFpNR1lkOXExSjZSV21WRzh1UDNOTWwwcTB6Q25nSzRyWXpvd0FhYVpVMzUyaTBYOXNITnZoNmlVazQueDR4c3ZlZGd4aUtQWEFIb1E4bGM5QS5FdnVwSnJBYTFFQ20taS1lIiwiZXhwIjoxNjI0OTUyMjU4LCJpYXQiOjE2MjQ5NDUwNTgsImFpZCI6Ikh4M2NFTjQ0UlZtbExHZ1hkT3dleVEiLCJjaWQiOiIifQ.JhbjqEoYpVL0nquEuQT5RYfdMdi3z88XB3duM4XP2e8', 'zoom', '', '', NULL, NULL, 'active', 1624945056, 1635417732, NULL),
(59, 1015, 1998, 21, 1679331600, 30, 'https://us05web.zoom.us/j/83490579533?pwd=MXdMN3hYZ0t3OWZSRVhOY0V2YU52dz09', 'https://us05web.zoom.us/s/83490579533?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6Il84Z2M3Q2Y5Ul9lYmF2WUQyTjNYekEiLCJpc3MiOiJ3ZWIiLCJzdHkiOjEsIndjZCI6InVzMDUiLCJjbHQiOjAsInN0ayI6IjVvOENnMEtUZ2xZcVIwVllleXJyX3VCSnpXaGFIMGFGVEU3U2xWTU9uY1kuQUcuU05QbnRONE9DMmQyX1BWZWd2Z19YMzREdmE0M3paOTJqUkg0SzBWUlJKR3g2RWd3dThDb0NfNGlkbm00UG9CTVNBcEk4VDhXelNld1k2cEkubW9Ga21hV0Q2YTA0enBlMEtNcWpoZy5vR1p5Qkl3QWdiejdLX2xrIiwiZXhwIjoxNjI0OTczNTI0LCJpYXQiOjE2MjQ5NjYzMjQsImFpZCI6Ikh4M2NFTjQ0UlZtbExHZ1hkT3dleVEiLCJjaWQiOiIifQ.f1qRvBvbkkJRcP4lAVbuEmLWM2kM6RFOiql2zwBvAy8', 'zoom', '', '', NULL, NULL, 'active', 1624966322, 1635417562, NULL),
(60, 1015, 1998, 21, 1679756400, 30, 'https://us05web.zoom.us/j/85729329911?pwd=dDBYeEJnalYzNmVhaEZaVXIvbVpvdz09', 'https://us05web.zoom.us/s/85729329911?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6Il84Z2M3Q2Y5Ul9lYmF2WUQyTjNYekEiLCJpc3MiOiJ3ZWIiLCJzdHkiOjEsIndjZCI6InVzMDUiLCJjbHQiOjAsInN0ayI6Ik91cHVsNkE0VGNMZXBfYUhBcVY3MTl6dHVtYUN3MkRka2tabDBNN3gwTlkuQUcuZmhFV2FOZkdKamMwck9fa25LYVNFNmRXMmxZRXdLdmVnOW9SQVJWVVdhVVhFZjdONkprWGlvNGZZWExkRkNBOXJfZG1hT2F5Q2lPalNybkIuUU8yVFNkMzRHUUZPalhDOUx0aVAyZy5OM096dWNPaWNRakQ5N1o0IiwiZXhwIjoxNjI0OTczNjMwLCJpYXQiOjE2MjQ5NjY0MzAsImFpZCI6Ikh4M2NFTjQ0UlZtbExHZ1hkT3dleVEiLCJjaWQiOiIifQ.vMAyA5w2-w5cbz5_KRQWur8vMIIa78a8UMuHwLRNQEE', 'zoom', '', '', NULL, NULL, 'active', 1624966428, 1635417571, NULL),
(61, 1015, 1998, 21, 1680017400, 30, 'https://us05web.zoom.us/j/82086275539?pwd=VC85S01VSDNPRHdqWUlsOGNVbk5lQT09', 'https://us05web.zoom.us/s/82086275539?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6Il84Z2M3Q2Y5Ul9lYmF2WUQyTjNYekEiLCJpc3MiOiJ3ZWIiLCJzdHkiOjEsIndjZCI6InVzMDUiLCJjbHQiOjAsInN0ayI6Ik9fUzctZVRVSnB1QU5sdVRsa3Y4TnBpcXFvUkJiWVVQWDhKaFNxLWwzZEkuQUcuZ1VFUDdfSXVxczdVTjRLRnNNcFphRnJ3NXVLVFpfdE1aX25BaE9LN2JjenE5ZWpnVmFEMWV2bGMxY2pMc3pjeGZlQWVTZExBdjMwY2VfRE4uSmZNaHZnZVhybEY2ZUFWRWt2ZmRrUS5maGl1UTc5TU1FTmZEdE9OIiwiZXhwIjoxNjI0OTczODYxLCJpYXQiOjE2MjQ5NjY2NjEsImFpZCI6Ikh4M2NFTjQ0UlZtbExHZ1hkT3dleVEiLCJjaWQiOiIifQ.u0Pj01ZqbkYID18H5asvqoOLWsCA6MJFHL8-AhNQcxw', 'zoom', '', '', NULL, NULL, 'active', 1624966659, 1635417581, NULL),
(62, 867, 2000, 19, 1690867800, 30, 'https://meet.google.com/', NULL, 'local', '12345', '', NULL, NULL, 'active', 1625045297, 1635417342, NULL),
(63, 867, 2000, 19, 1691130600, 30, 'https://meet.google.com/', NULL, 'local', 'ABC547397', '', NULL, NULL, 'active', 1625045392, 1635417351, NULL),
(64, 867, 2000, 19, 1691501400, 30, 'https://meet.google.com/', NULL, 'local', 'LM756114', '', NULL, NULL, 'active', 1625045465, 1635417380, NULL),
(65, 3, 2001, 16, 1702362600, 20, 'https://meet.google.com/', NULL, 'local', '12345', '', NULL, NULL, 'active', 1625078642, 1635417181, NULL),
(66, 3, 2001, 17, 1702650600, 20, 'https://meet.google.com/', NULL, 'local', '46546', '', NULL, NULL, 'active', 1625078804, 1635417191, NULL),
(67, 3, 2001, 17, 1702895400, 20, 'https://meet.google.com/', NULL, 'local', 'D548755', '', NULL, NULL, 'active', 1625079005, 1635417199, NULL),
(68, 863, 2002, 15, 1625200200, 20, 'https://meet.google.com/', NULL, 'local', '46546', '', NULL, NULL, 'active', 1625122908, 1635417036, NULL),
(69, 863, 2002, 15, 1625211600, 20, 'https://meet.google.com/', NULL, 'local', '12345', '', NULL, NULL, 'active', 1625122957, 1635417042, NULL),
(70, 863, 2002, 15, 1625220000, 20, 'https://meet.google.com/', NULL, 'local', 'A547397', '', NULL, NULL, 'active', 1625123036, 1635417051, NULL),
(71, 864, 2003, 13, 1696505400, 20, 'https://meet.google.com/', NULL, 'local', '368967886', '', NULL, NULL, 'active', 1625299964, 1635416803, NULL),
(72, 864, 2003, 13, 1696915800, 20, 'https://meet.google.com/', NULL, 'local', '55475666', '', NULL, NULL, 'active', 1625300053, 1635416824, NULL),
(73, 864, 2003, 13, 1697319000, 35, 'https://meet.google.com/', NULL, 'local', 'RW346@654', '', NULL, NULL, 'active', 1625300165, 1635416835, NULL),
(74, 1015, 2009, 30, 1646177400, 3, NULL, NULL, 'agora', NULL, NULL, '{\"chat\":true,\"record\":false}', 2, 'active', 1646172799, NULL, NULL),
(75, 1015, 2009, 30, 1646233200, 9999999, NULL, NULL, 'agora', '12345', NULL, '{\"chat\":true,\"record\":false}', 3, 'active', 1646172930, NULL, NULL),
(76, 1015, 2009, 30, 1646141400, 3, NULL, NULL, 'agora', NULL, NULL, '{\"chat\":true,\"record\":false}', 1, 'active', 1646391211, NULL, NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `session_translations`
--

INSERT INTO `session_translations` (`id`, `session_id`, `locale`, `title`, `description`) VALUES
(1, 52, 'en', 'Day 1', 'In this lesson you will learn:What Linux is and Brief history of Linux'),
(2, 53, 'en', 'Day 2', 'In this lesson you will learn about the Linux directory structure. You\'ll learn where different components of the operating system are located. You\'ll also learn how applications can employ the same conventions for their directory structures.'),
(3, 54, 'en', 'Day 3', 'In this lesson you will learn various commands that can be used to view files as well as how to use the nano text editor.'),
(4, 55, 'en', 'Day 4', 'This lesson will cover how to delete, copy, move, and rename files in Linux.'),
(5, 56, 'en', 'Day 5', 'In this lesson you will learn how to display information about running programs and processes. You will also learn how to control the behavior of processes, including running processes in the background and terminating processes.'),
(6, 59, 'en', 'Introduction', 'Microsoft Excel is a spreadsheet developed by Microsoft for Windows, macOS, Android and iOS. It features calculation, graphing tools, pivot tables, and a macro programming language called Visual Basic for Applications (VBA).'),
(7, 60, 'en', 'Basic Excel Functions', 'Microsoft Excel has the basic features of all spreadsheets,[6] using a grid of cells arranged in numbered rows and letter-named columns to organize data manipulations like arithmetic operations.'),
(8, 61, 'en', 'Basic Charts', 'Excel supports charts, graphs, or histograms generated from specified groups of cells. It also supports Pivot Charts that allow for a chart to be linked directly to a Pivot table. This allows the chart to be refreshed with the Pivot Table.'),
(9, 62, 'en', 'The Key to Effective Time Management', 'If you have ever taken a time management course, you\'ve probably faced the frustration of trying to manage your time better and not succeeding.\r\n\r\nThis is because time management is a Myth.\r\n\r\nWhat this course will teach you, is the concept of \"Task Management.\" In other words, it will teach you how to accomplish more high value tasks, so that you get a 10X greater return for all of the work you put in every hour.'),
(10, 63, 'en', '20/80 Time Management', 'If you have ever taken a time management course, you\'ve probably faced the frustration of trying to manage your time better and not succeeding.\r\n\r\nThis is because time management is a Myth.\r\n\r\nWhat this course will teach you, is the concept of \"Task Management.\" In other words, it will teach you how to accomplish more high value tasks, so that you get a 10X greater return for all of the work you put in every hour.'),
(11, 64, 'en', 'Getting High Value Things Done', 'What this course will teach you, is the concept of \"Task Management.\" In other words, it will teach you how to accomplish more high value tasks, so that you get a 10X greater return for all of the work you put in every hour.'),
(12, 65, 'en', 'Getting Started', 'A brief overview of what you\'ll learn in this course.'),
(13, 66, 'en', 'Modules, Apps, and Controllers', 'AngularJS enables you to control the DOM via modules, apps, and controllers -- all without polluting the global namespace.\r\nThis lecture contains downloadable source code. Download the file below and unzip (or extract) it.'),
(14, 67, 'en', 'Data Binding and Directives', 'Our first visual AngularJS code. Now that we understand scope, let\'s use it to output content to a page.\r\n\r\nThis lecture contains downloadable source code. Download the file below and unzip (or extract) it.'),
(15, 68, 'en', 'The Perfect Fitness Diet', 'My \"Health & Fitness Masterclass\" is designed for anyone who wants to boost their fitness, no matter if you\'re a beginner, athlete or simply want to live a healthier life.'),
(16, 69, 'en', 'Setting Up Your Fitness Diet', 'My \"Health & Fitness Masterclass\" is designed for anyone who wants to boost their fitness, no matter if you\'re a beginner, athlete or simply want to live a healthier life.'),
(17, 70, 'en', 'The Right Fitness Mindset', 'My \"Health & Fitness Masterclass\" is designed for anyone who wants to boost their fitness, no matter if you\'re a beginner, athlete or simply want to live a healthier life.'),
(18, 71, 'en', 'Why Active Listening?', 'Most of us want to get better at talking. But the REAL power tool for influencing others, leading, collaborating, having an impact, and being an an-all-around-better person is Active Listening. While regular listening can look like being blank and silent, Active Listening is engaged, creative, and responsive.'),
(19, 72, 'en', 'Automatic Listening Habits', 'In this course, you will gain both the internal awareness and external skill-set that are the foundation of Active Listening. You will be able to have far more satisfying, interesting, successful conversations.'),
(20, 73, 'en', 'Helpful Habits', 'Most of us want to get better at talking. But the REAL power tool for influencing others, leading, collaborating, having an impact, and being an an-all-around-better person is Active Listening.'),
(21, 74, 'en', 'First sesions', 'Online Course Creation can be simple once you have mastered the art of speaking in front of a camera. Imagine yourself delivering an entire course filled with great lectures'),
(22, 75, 'en', 'Join to This Session', 'The skill you will learn in this class is not primarily theoretical or academic. It is a skill that requires physical habits.'),
(23, 76, 'en', 'Introduction Session', 'The skill you will learn in this class is not primarily theoretical or academic. It is a skill that requires physical habits.');

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
(8, 'personalization', 'home_hero', 1645562921),
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
(6, 8, 'en', '{\"title\":\"Joy of learning & teaching...\",\"description\":\"Rocket LMS is a fully-featured educational platform that helps instructors to create and publish video courses, live classes, and text courses and earn money, and helps students to learn in the easiest way.\",\"hero_background\":\"\\/store\\/1\\/default_images\\/hero_1.jpg\"}'),
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
(12, 870, 2002, 'Discount', 20, 'inactive', 1625301470, 1625081400, 1688153400),
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

--
-- Dumping data for table `subscribe_uses`
--

INSERT INTO `subscribe_uses` (`id`, `user_id`, `subscribe_id`, `webinar_id`, `sale_id`) VALUES
(9, 995, 3, 2006, 160),
(10, 995, 3, 2004, 161),
(11, 995, 3, 2002, 162);

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

--
-- Dumping data for table `supports`
--

INSERT INTO `supports` (`id`, `user_id`, `webinar_id`, `department_id`, `title`, `status`, `created_at`, `updated_at`) VALUES
(25, 934, NULL, 3, 'Convert Videos', 'close', 1625891270, 1625973596),
(26, 995, NULL, 3, 'Pre-Purchase Question', 'close', 1625891677, 1625973708),
(27, 930, NULL, 2, 'Pending Offline Payment', 'open', 1625891851, 1625891851),
(28, 923, NULL, 3, 'Commission Rate', 'supporter_replied', 1625892221, 1625892332),
(29, 867, NULL, 3, 'Class delay', 'supporter_replied', 1625895874, 1625973471),
(30, 995, 2005, NULL, 'design software', 'open', 1625953303, 1625953303),
(31, 996, 1996, NULL, 'help for start', 'replied', 1626062396, 1626062756),
(32, 995, 1996, NULL, 'Version of linux', 'close', 1626062941, 1626065078),
(33, 995, NULL, 2, 'Refund Request #64237', 'close', 1626063457, 1626063559),
(34, 995, NULL, 3, 'Problem with quiz', 'open', 1626250124, 1626250124);

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

--
-- Dumping data for table `support_conversations`
--

INSERT INTO `support_conversations` (`id`, `support_id`, `supporter_id`, `sender_id`, `attach`, `message`, `created_at`) VALUES
(1, 25, NULL, 934, NULL, 'Hello.\r\nI want to convert my video files to reduce their size. What software do you recommend?', 1625891270),
(2, 26, NULL, 995, NULL, 'Hello\r\nIs it possible to refund it after the purchase if you are dissatisfied with the course?', 1625891677),
(3, 27, NULL, 930, NULL, 'Hello.\r\nI registered an offline payment document to charge my wallet.\r\nHow long does it take for my payment to be approved?\r\nI am going to buy a course and I would be grateful if this could be done a little earlier.', 1625891851),
(4, 28, NULL, 923, NULL, 'Hello.\r\nIs it possible for me to receive more commission for my sales on this platform?', 1625892221),
(5, 28, 1, NULL, NULL, 'Hello.\r\nPlease send this ticket to the financial department.\r\nThank', 1625892332),
(6, 29, NULL, 867, NULL, 'Hello .\r\nWhat are the rules if one of the live class sessions is delayed?\r\nIs it possible to change the date of that session?', 1625895874),
(7, 29, NULL, 867, '/store/867/60da388cbcee3.png', 'Hi.\r\nPlease check attachmnet', 1625897110),
(8, 29, 1, NULL, NULL, 'Yes you can change the date of your class sessions at any time.', 1625897202),
(9, 29, NULL, 867, NULL, 'thank you.', 1625898890),
(10, 30, NULL, 995, NULL, 'Hello.\r\nWhat software do you recommend to start learning?', 1625953303),
(11, 29, 1, NULL, NULL, 'you\'re welcome.', 1625973471),
(12, 25, 1, NULL, NULL, 'We offer you handbrake software.', 1625973573),
(13, 26, 1, NULL, NULL, 'Hello Cameron.\r\nYes it is possible.', 1625973699),
(14, 31, NULL, 996, NULL, 'Hello . Which version of Linux should I install to get started?', 1626062396),
(15, 31, NULL, 1015, NULL, 'Hello . I recommend version 6.0.4.', 1626062467),
(16, 31, NULL, 996, NULL, 'I get an error during installation.', 1626062520),
(17, 31, NULL, 1015, NULL, 'Please send a screenshot.', 1626062578),
(18, 31, NULL, 996, '/store/996/lmX4K.png', 'Please check attachment .', 1626062690),
(19, 31, NULL, 1015, NULL, 'I will check and let you know the problem.', 1626062756),
(20, 32, NULL, 995, NULL, 'Hello . Which version of Linux should I install for getting start?', 1626062941),
(21, 32, NULL, 1015, NULL, 'Hello . I recommend version 5.8.4.', 1626063058),
(22, 33, NULL, 995, NULL, 'Hello. I was supposed to get this refund via email. Please follow my request.', 1626063457),
(23, 33, 1, NULL, NULL, 'Hello. We will check. Thanks', 1626063496),
(24, 33, NULL, 995, NULL, 'Thanks.', 1626063547),
(25, 34, NULL, 995, NULL, 'Hello.\r\nIn the quiz of course that I bought was the wrong question.\r\nCourse Name: Photoshop course from beginner to advanced\r\nQuestion number : 3\r\nPlease check it. thank you', 1626250124);

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
(2, 1635445554),
(3, 1635445486),
(4, 1635445505);

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
(1, 2, 'en', 'Financial'),
(2, 3, 'en', 'Content'),
(3, 4, 'en', 'Marketing'),
(4, 4, 'ar', 'تسويق'),
(5, 4, 'es', 'Márketing'),
(6, 3, 'es', 'Contenido'),
(7, 3, 'ar', 'المحتوى'),
(8, 2, 'ar', 'الأمور المالية'),
(9, 2, 'es', 'Financiera');

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
) ENGINE=InnoDB AUTO_INCREMENT=6572 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `title`, `webinar_id`) VALUES
(6423, 'travel', 2007),
(6424, 'Travel Management', 2007),
(6425, 'trip', 2007),
(6447, 'Product Manager', 1995),
(6448, 'managment', 1995),
(6464, 'Angular', 2001),
(6465, 'AngularJS', 2001),
(6466, 'Javascript', 2001),
(6473, 'Excel', 1998),
(6474, 'microsoft excel', 1998),
(6475, 'excel class', 1998),
(6479, 'linux', 1996),
(6480, 'os', 1996),
(6481, 'network', 1996),
(6485, 'fitness', 2002),
(6486, 'Health & Fitness', 2002),
(6487, 'Health', 2002),
(6514, 'travel', 2006),
(6515, 'trip', 2006),
(6516, 'World Trip', 2006),
(6517, 'Time', 2000),
(6518, 'Time Management', 2000),
(6519, 'Save Time', 2000),
(6548, 'web', 2005),
(6549, 'design', 2005),
(6550, 'web design', 2005),
(6551, 'Virtual Team', 1999),
(6552, 'Team', 1999),
(6561, 'Live Class', 2009),
(6562, 'New Live System', 2009),
(6565, 'Guitar', 2008),
(6566, 'Guitar Masterclass', 2008),
(6567, 'Listening', 2003),
(6568, 'Listen', 2003),
(6569, 'Listener', 2003);

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `text_lessons`
--

INSERT INTO `text_lessons` (`id`, `creator_id`, `webinar_id`, `chapter_id`, `image`, `study_time`, `accessibility`, `order`, `status`, `created_at`, `updated_at`) VALUES
(13, 934, 1997, 26, '/store/934/hero (9).jpg', 5, 'free', 1, 'active', 1624954655, 1635417906),
(14, 934, 1997, 26, '/store/934/hero (14).jpg', 10, 'free', 2, 'active', 1624954929, 1635417914),
(15, 934, 1997, 26, '/store/934/hero (4).jpg', 20, 'free', 3, 'active', 1624956733, 1635417921);

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

--
-- Dumping data for table `text_lessons_attachments`
--

INSERT INTO `text_lessons_attachments` (`id`, `text_lesson_id`, `file_id`, `created_at`) VALUES
(14, 13, 35, 1635417906);

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `text_lesson_translations`
--

INSERT INTO `text_lesson_translations` (`id`, `text_lesson_id`, `locale`, `title`, `summary`, `content`) VALUES
(1, 13, 'en', 'Hello, World!', 'Get started learning Python with DataCamp\'s free Intro to Python tutorial. Learn Data Science by completing interactive coding challenges and watching videos by expert instructors. Start Now!', '<div>Python is a very simple language, and has a very straightforward syntax. It encourages programmers to program without boilerplate (prepared) code. The simplest directive in Python is the \"print\" directive - it simply prints out a line (and also includes a newline, unlike in C).</div><div><br></div><div>There are two major Python versions, Python 2 and Python 3. Python 2 and 3 are quite different. This tutorial uses Python 3, because it more semantically correct and supports newer features.</div><div><br></div><div>For example, one difference between Python 2 and 3 is the print statement. In Python 2, the \"print\" statement is not a function, and therefore it is invoked without parentheses. However, in Python 3, it is a function, and must be invoked with parentheses.</div>'),
(2, 14, 'en', 'Learning', 'Before getting started, you may want to find out which IDEs and text editors are tailored to make Python editing easy, browse the list of introductory books, or look at code samples that you might find helpful.', '<div>There is a list of tutorials suitable for experienced programmers on the BeginnersGuide/Tutorials page. There is also a list of resources in other languages which might be useful if English is not your first language.</div><div><br></div><div>The online documentation is your first port of call for definitive information. There is a fairly brief tutorial that gives you basic information about the language and gets you started. You can follow this by looking at the library reference for a full description of Python\'s many libraries and the language reference for a complete (though somewhat dry) explanation of Python\'s syntax. If you are looking for common Python recipes and patterns, you can browse the ActiveState Python Cookbook</div>'),
(3, 15, 'en', 'Looking for Something Specific?', 'If you want to know whether a particular application, or a library with particular functionality, is available in Python there are a number of possible sources of information.', '<p>If you want to know whether a particular application, or a library with particular functionality, is available in Python there are a number of possible sources of information. The Python web site provides a Python Package Index (also known as the Cheese Shop, a reference to the Monty Python script of that name). There is also a search page for a number of sources of Python-related information. Failing that, just Google for a phrase including the word \'\'python\'\' and you may well get the result you need. If all else fails, ask on the python newsgroup and there\'s a good chance someone will put you on the right track.</p><p>Python is an interpreted high-level general-purpose programming language. Python\'s design philosophy emphasizes code readability with its notable use of significant indentation. Its language constructs as well as its object-oriented approach aim to help programmers write clear, logical code for small and large-scale projects.[30]</p><p><br></p><p>Python is dynamically-typed and garbage-collected. It supports multiple programming paradigms, including structured (particularly, procedural), object-oriented and functional programming. Python is often described as a \"batteries included\" language due to its comprehensive standard library.[31]</p><p><br></p><p>Guido van Rossum began working on Python in the late 1980s, as a successor to the ABC programming language, and first released it in 1991 as Python 0.9.0.[32] Python 2.0 was released in 2000 and introduced new features, such as list comprehensions and a garbage collection system using reference counting. Python 3.0 was released in 2008 and was a major revision of the language that is not completely backward-compatible and much Python 2 code does not run unmodified on Python 3. Python 2 was discontinued with version 2.7.18 in 2020.[33]</p><p><br></p><p>Python consistently ranks as one of the most popular programming languages.</p>');

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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `creator_id`, `webinar_id`, `start_date`, `end_date`, `discount`, `capacity`, `order`, `created_at`, `updated_at`, `deleted_at`) VALUES
(28, 1015, 1998, 1623699000, 1639513800, 50, 20, NULL, 1624965807, 1626077968, NULL),
(29, 1015, 1998, 1639600200, 1655235000, 20, 30, NULL, 1624965932, 1626077978, NULL),
(30, 929, 1999, 1622489400, 1623267000, 20, 100, NULL, 1625038262, NULL, NULL),
(31, 864, 2003, 1625081400, 1690831800, 25, 5, NULL, 1625299801, NULL, NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticket_translations`
--

INSERT INTO `ticket_translations` (`id`, `ticket_id`, `locale`, `title`) VALUES
(1, 28, 'en', 'Golden Offer'),
(2, 29, 'en', 'Silver Offer'),
(3, 30, 'en', 'First Students Offer'),
(4, 31, 'en', 'First Price Plan');

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

--
-- Dumping data for table `ticket_users`
--

INSERT INTO `ticket_users` (`id`, `ticket_id`, `user_id`, `created_at`) VALUES
(6, 28, 995, 1625996979),
(7, 28, 996, 1626060553),
(8, 28, 930, 1626060837),
(9, 31, 929, 1626241214),
(10, 31, 1017, 1639379395);

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
(3, 604, '/store/1/default_images/trend_categories_icons/family.png', '#ff7c59', 1605117336),
(4, 523, '/store/1/default_images/trend_categories_icons/muscle.png', '#28c76f', 1605117336),
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
) ENGINE=InnoDB AUTO_INCREMENT=1033 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `role_name`, `role_id`, `organ_id`, `mobile`, `email`, `bio`, `password`, `google_id`, `facebook_id`, `remember_token`, `verified`, `financial_approval`, `avatar`, `cover_img`, `headline`, `about`, `address`, `country_id`, `province_id`, `city_id`, `district_id`, `location`, `level_of_training`, `meeting_type`, `status`, `language`, `timezone`, `newsletter`, `public_message`, `account_type`, `iban`, `account_id`, `identity_scan`, `certificate`, `commission`, `affiliate`, `ban`, `ban_start_at`, `ban_end_at`, `offline`, `offline_message`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'admin', 2, NULL, '00000000', 'admin@demo.com', 'Senior software developer', '$2y$10$nSUg1Z2rltHGecudC6dEEeRoqfIhlHi8WaAFFQs57oyFtpkvvQufW', NULL, NULL, '1N7WaRfOiTOahUoeEbSF6EEZIHFqqUgbKPw88gEEAkGXXUjxhrgIEcO3OfcG', 1, 0, '/store/1/default_images/logo-new.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 'EN', 'America/New_York', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, NULL, 1597826952, 1597826952, NULL),
(3, 'James Kong', 'teacher', 4, 864, '+12085141324', 'Jameskong2021@gmail.com', 'Master Certified Coach', '$2y$10$NPgvpOF52CHJuSKbh9gG8.7IvjjFd0HklLy5elWySZ58m.9IHpM2K', NULL, NULL, 'Xr4zhhoQpDZU1NbMVh0h7iXy390lCDz8pt4NYTUNvsncEqn9Z8PoTKSxKB96', 0, 1, '/store/3/avatar/617a4fad7845b.png', '/store/3/17.jpg', NULL, 'James Kong is a sound and communication expert. His vision is for a world that listens consciously and speaks powerfully.\r\n\r\nJulian is author of the books How to be Heard: Secrets for Powerful Speaking and Listening and Sound Business. \r\n\r\nHis five TED talks about sound and communication have been watched over 90 million times and his latest talk, How to speak so that people want to listen, is the sixth most watched TED talk of all time. \r\n\r\nJames is a media commentator on speaking and listening skills, and has been featured by the likes of TIME Magazine, The Economist, The BBC, and The Times. \r\n\r\nJames\'s company, The Sound Agency, works with major brands worldwide to improve the way they sound. Their pioneering methods have improved customer happiness, raised sales, and even lowered crime rates, and their work has made headlines internationally.', '638153, Tamil Nadu, Modakkurichi, Elumathur', 20, 33, 34, 42, 0x000000000101000000c96b207dbda438401b0620262a544740, b'110', 'all', 'active', 'EN', 'America/New_York', 0, 0, 'State Bank of India', 'IN74BARC20032649126989', '5234903165288', '/store/3/passport.jpg', '', NULL, 1, 0, NULL, NULL, 1, 'I will not be available for 2 weeks until  end of January due to a business trip.', 1597826952, 1597826952, NULL),
(4, 'King Pictures', 'organization', 3, NULL, '+441632960079', 'kingpictures@gmail.com', 'High Quality Training', '$2y$10$NPgvpOF52CHJuSKbh9gG8.7IvjjFd0HklLy5elWySZ58m.9IHpM2K', NULL, NULL, 'HVMcrvVIvbrAWoMqj0keYcuCqkuVNZ5SumTNTlEY510zC373P6VQXFs6ZNN4', 0, 0, '/store/4/avatar/617a50568d8a8.png', '/store/4/19.jpg', NULL, 'King Pictures is a Canadian based company who offer a huge and ever growing range of high quality eLearning solutions that teach using studio quality narrated videos backed-up with practical hands-on examples and comprehensive working files. All courses are created by trained educators and experts in video based education.\r\n\r\nThe emphasis is on teaching real life skills that are essential for progressing in today\'s commercial environment.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 'EN', 'America/New_York', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, NULL, 1597826952, 1597826952, NULL),
(859, 'Cactuscat Clothing', 'user', 1, NULL, '+12025550132', 'cactuscat@hotmail.com', 'Programming Training Institute', '$2y$10$IjiUK.pAJGeErJNyys7CkeFzHlwv50b4L0tDSicMvhSpNk2QGud1G', NULL, NULL, NULL, 0, 0, '/store/859/avatar/617a4fcf7ac48.png', '/store/859/8.png', NULL, 'Eduonix creates and distributes high quality technology training content. Our team of  industry professionals have been training manpower for more than a decade. We aim to teach technology the way it is used in industry and professional world.  We have professional team of trainers for technologies ranging from Mobility, Web to Enterprise and Database and Server Administration.', '', 20, 31, 32, 40, 0x0000000001010000000b9b5fd3557b38409b046daf23cc4340, b'111', 'all', 'active', 'EN', 'America/New_York', 0, 0, 'Qatar National Bank', 'QT23125459035582', '7922603874612', '/store/859/certificate.jpg', '/store/859/certificate.jpg', NULL, 1, 0, NULL, NULL, 0, NULL, 1604509713, NULL, NULL),
(863, 'Owosso', 'organization', 3, NULL, '+12025550198', 'owosso@info.com', 'Chemical Engineering Institute', '$2y$10$NPgvpOF52CHJuSKbh9gG8.7IvjjFd0HklLy5elWySZ58m.9IHpM2K', NULL, NULL, NULL, 0, 0, '/store/863/avatar/617a5000eb040.png', '/store/863/2.png', NULL, 'Dear students,\r\n\r\nWR Training is a group of professional engineers from various disciplines (chemical, petrochemical, mechanical, electrical…) providing academic and industrial online courses.\r\n\r\nWhether you’re trying to learn and discover a new scientific or engineering topic from scratch, or want to refresh your memory on something you’ve learnt in the past, you’ve come to the right place.\r\n\r\nWR Training exists to help you succeed in your academic and professional life. Our goal is to spread the knowledge and promote science.\r\n\r\nThe courses, you are about to enroll in, were undertaken to give you a clear view of scientific and engineering topics through detailed examples using hands on demo and provide numerous problems with their solutions. You can also use these courses as a review for taking exams or as a vehicle for self-instruction.\r\n\r\nOur training methodology was designed to enable individual self paced e-learning.\r\n\r\nEach course has been undertaken to teach a specific skill.\r\n\r\nOur courses can be watched 24/7 wherever you are. You can also view them on mobile devices with the Udemy mobile app.\r\n\r\nWe are active online instructors and we will be here for you every step of the way. If you have questions about the course content, you can always post your questions or send us a private message. It will be our pleasure to provide assistance and answer your questions.\r\n\r\nSo with no further ado, go ahead, select the course suitable for you, click the enroll button and we\'ll see you in the first section !\r\n\r\nWR Training\r\n\r\nSpread the wings of your knowledge', NULL, 17, 28, 30, 37, 0x0000000001010000006e56cabeb2f73240a691c50fda345240, b'110', 'online', 'active', 'EN', 'America/New_York', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, NULL, 1604509713, NULL, NULL),
(864, 'Ahmadu Bello University CDRMDS', 'organization', 3, NULL, '+12025550131', 'abuinfo@cdrmds.org', 'ABU CDRMDS', '$2y$10$ZV92q8k.ZK1zGsNa0ICwe.QKtbKmIFQnkjLqWhORbg.jbBWvMmXgm', NULL, NULL, NULL, 0, 0, '/store/864/avatar/617a5011ca3ba.png', '/store/864/20.jpg', NULL, 'Learn creative skills, from absolute beginner to advanced mastery. \r\n\r\nVideo School exists to help you succeed in life. Each course has been hand-tailored to teach a specific skill from photography and video to art, design and business.\r\n\r\nWhether you’re trying to learn a new skill from scratch, or want to refresh your memory on something you’ve learned in the past, you’ve come to the right place.\r\n\r\nEducation makes the world a better place. Make your world better with new skills!\r\n\r\nOur courses can be watched 24/7 wherever you are. Most are fully downloadable so you can take them with you.\r\n\r\nAll courses have a 30-day money-back guarantee so that you can check it out, make sure it’s the right course for you, and get a refund if it’s not!', NULL, 16, 22, 23, 25, 0x000000000101000000facb2c14066848400100008026fc0140, b'100', 'all', 'active', 'EN', 'America/New_York', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, NULL, 1604509713, NULL, NULL),
(867, 'Light Moon', 'organization', 3, NULL, '+12025550151', 'organization@demo.com', 'Building Better Professionals', '$2y$10$W0.rfZgYCWGr/rOSrGrGg.Nnm6xBVdR3FYjJiXqiq6LZdx2Ds.aXq', NULL, NULL, 'BWflmtylS4Tli2iNjXU1uauLyg3OkvqqMJXK3ZBgugWems9IrTpI62QnMOxA', 1, 1, '/store/867/avatar/617a502cf268a.png', '/store/867/18.jpg', NULL, 'The Light Moon Academy was created by Tim Buchalka, a software developer with 35 years experience, who is also an instructor on Udemy, with over 1.22M+ students in his courses on Java, Python, Android, C#  and the Spring framework. \r\n\r\nThe Academy’s goal in the next three years, is to teach one million people to learn how to program.\r\n\r\nApart from Tim’s own courses, which are all available here, we are working with the very best teachers, creating courses to teach the essential skills required by developers, at all levels.\r\n\r\nOne other important philosophy is that our courses are taught by real professionals; software developers with real and substantial experience in the industry, who are also great teachers.  All our instructors are experienced, software developers!\r\n\r\nOur team is busy creating new courses right now.\r\n\r\nWhether you are a beginner, looking to learn how to program for the very first time, or to brush up on your existing skills, or to learn new languages and frameworks, the Academy has you covered.', 'Massachusetts, West Roxbury, 3979 Smith Street', 16, 21, 67, 68, 0x000000000101000000b4c5c332820e4840ab3e0bfa1c52fbbf, b'110', 'all', 'active', 'EN', 'America/New_York', 0, 0, 'JPMorgan', 'US55MA520040182633883', '6425763442', '/store/867/passport.jpg', '', NULL, 1, 0, NULL, NULL, 0, NULL, 1604509713, NULL, NULL),
(868, 'TechDecomposed', 'organization', 3, NULL, '+441632960582', 'techdecomposed@info.com', 'Behavioral Expert Institute', '$2y$10$NPgvpOF52CHJuSKbh9gG8.7IvjjFd0HklLy5elWySZ58m.9IHpM2K', NULL, NULL, NULL, 0, 0, '/store/868/avatar/617a504591edd.png', '/store/868/6.jpg', NULL, 'Hi, my name is Gregory Caremans. I\'m the founder of the award-winning TechDecomposed.\r\nI\'m a psychologist with a Master in communication, specialized in the Neurocognitive and Behavioral Approach. I\'m the former Director of the Institute of Neurocognitivism in Brussels (Belgium).\r\nWith the TechDecomposed we\'ve specialized in writing and producing high quality brain-related content. Mostly, we create online courses. I\'m very proud to say that we have a partnership with The Economist where they offer our courses to their readers. Our courses were also featured in the magazine Entrepreneur and CNN. And I was invited to give my first TEDx Talk in December of 2018.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 'EN', 'America/New_York', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, NULL, 1604509713, NULL, NULL),
(870, 'Jessica Wray', 'teacher', 4, 863, '+12025550188', 'marques.torp@hotmail.com', 'Network Technician at Cisco', '$2y$10$NPgvpOF52CHJuSKbh9gG8.7IvjjFd0HklLy5elWySZ58m.9IHpM2K', NULL, NULL, NULL, 1, 1, '/store/870/avatar/617a4f7c09d61.png', '/store/870/16.jpg', NULL, 'Hi,\r\n\r\nI’m a certified coach and author. Over the years I\'ve worked with and coached 100,000 students from all over the world.\r\nMy expertise includes science-based personal development, health & fitness advice in the following areas:\r\n- Self Improvement\r\n- Life Coaching\r\n- Stress Management\r\n- Muscle Growth & Fat Loss\r\n- Healthy Living & Meal Planning\r\n- Gym Workouts & Bodybuilding\r\n\r\nPersonal Development doesn\'t have to be difficult!\r\nWhat you need are the right strategies and a few simple - but crucial - tips on how to get started and stay motivated. That\'s what I teach in my courses, on my blog and in my books.', NULL, 16, 22, 23, 26, 0x000000000101000000adea5bb7216d4840038c262b63310340, b'100', 'all', 'active', 'EN', 'America/New_York', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, NULL, 1604509713, NULL, NULL),
(923, 'John Powe', 'teacher', 4, 867, '+61498970158', 'johnpowe98@yahoo.com', 'IT Director at Cognizant', '$2y$10$NPgvpOF52CHJuSKbh9gG8.7IvjjFd0HklLy5elWySZ58m.9IHpM2K', NULL, NULL, NULL, 1, 0, '/store/923/avatar/617a4f9983fe5.png', '/store/923/14.jpg', NULL, 'Hello! I am John Powe; let me welcome you on this platform. I have created unique courses on different subjects including Business, marketing, Sales, Psychology, Copywriting, Social media marketing and a lot more. I have vast knowledge about business planning, marketing strategies, sales and management.\r\n\r\nI am a Gold Medalist Student of my time. With the passage of time, I have done different courses including IELTS, Color Therapy, Cognitive behavior Therapy, Nebosh etc.\r\n\r\nI always try to learn new things and like to travel. Learning new skills and exploring new fields is my passion. I am a full time Udemy instructor so I am always there to support and help you if you find any kind of difficulty.\r\n\r\nI try to make my courses as simple and informative as possible. My courses are mostly 1 to 2 hours of length, to the point and cover most important information regarding the respective subject so that you can learn the best possible knowledge in shortest possible time.\r\n\r\nI hope you will learn new things from my courses. Feel free to contact me if you have any questions. Thanks I wish you all the success and happiness in the world. Best of luck', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 'EN', 'America/New_York', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, NULL, 1604509713, NULL, NULL),
(929, 'Kate Williams', 'teacher', 4, 868, '+12025550148', 'kate.williams.dev@yahoo.com', 'Computer Engineer at Oracle', '$2y$10$NPgvpOF52CHJuSKbh9gG8.7IvjjFd0HklLy5elWySZ58m.9IHpM2K', NULL, NULL, 'pP6HTrpGp7DTJv4wocq6BqinGolsn4pxOVmnxr15WEvlpDQjpAo0ZeHsNlhl', 0, 0, '/store/929/avatar/617a4f5d834c8.png', '/store/929/15.jpg', NULL, '\"Short courses for busy managers\"\r\n\r\nHi there, my name is Kate Williams and I\'ve been managing projects and virtual teams for the past 10+ years.\r\n\r\nI\'m currently a Director at Cisco Systems,* where I lead Project and Program Management teams on delivering complex projects for Cisco\'s customers.\r\n\r\nPreviously, I was a manager at Ernst & Young, where I analyzed failing projects at Fortune 500 companies, and recommended solutions to fix them.  \r\n\r\nI was also a research assistant at Harvard University, where I studied issues related to virtual teams. \r\n\r\nI\'m an Amazon bestselling author of 4 books about team management (including \"Influencing Virtual Teams,\" \"Don\'t Reply All,\" \"Project Kickoff,\" and \"Effective Delegation of Authority\"), and I hold the PMP, CSM and ITIL certifications.\r\n\r\nMost managers don\'t have a lot of time to watch lengthy courses (that are usually full of fluff). So I focus on creating short courses that help busy managers become more effective leaders, without wasting their time.\r\n\r\nI have published courses about Writing Better Emails, Delegating Effectively, Leading Virtual Meetings, and Managing and Influencing Virtual Teams.', NULL, 17, 27, 29, 36, 0x000000000101000000c337fdc1618e3c4088bc2353c14d5340, b'010', 'all', 'active', 'EN', 'America/New_York', 0, 0, NULL, NULL, NULL, NULL, NULL, 10, 1, 0, NULL, NULL, 0, NULL, 1605463391, NULL, 1622030241),
(930, 'Jade Harrison', 'user', 1, NULL, '+12025550130', 'jadeharrison@gmail.com', NULL, '$2y$10$NPgvpOF52CHJuSKbh9gG8.7IvjjFd0HklLy5elWySZ58m.9IHpM2K', NULL, NULL, 'Ci4PVF45uuqLCuaxz92kWYuFMnTyesfS5N9cMaGnCsTrkb6zQF5UL8suOFrk', 0, 0, '/store/930/avatar/617a4ee75dd14.png', '/store/930/2.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 'EN', 'America/New_York', 0, 0, 'Qatar National Bank', 'QR55DHUC20040182698453785', '43225664525', '/store/930/passport.jpg', '/store/930/certificate.jpg', NULL, 1, 0, NULL, NULL, 0, NULL, 1606325331, NULL, NULL),
(934, 'Linda Anderson', 'teacher', 4, 4, '+12025550143', 'Lindaanderson_92@gmail.com', 'IT Technician at IBM', '$2y$10$m.NTg5P372vNTY2PQlx/S.j9cswa9Fc9UKWJ608AmlaOkqdgRmyw6', NULL, NULL, NULL, 0, 1, '/store/934/avatar/617a4f418be6b.png', '/store/934/2.jpg', NULL, 'I am a programmer with over 12 years\' experience gained in a range of industries, the last 16 with IBM.\r\n\r\nI am now self employed developing apps for Android; programming in a range of languages including Java, Javascript and Python; and helping the next generation of programmers gain the skills that I have acquired over the years.\r\n\r\nThe first program I sold controlled stock movement in a warehouse, and ran on a CP/M computer - both the program and operating system lived in the 64 kb (yes, kilobytes) that was all CP/M systems had in those days.\r\n\r\nI have gained experience in a wide range of industries including Utilities, Retail, Insurance and the Motor Manufacturing industry. My clients and employers have included Northumbrian Water, Arcadia, Royal Sun Alliance, Nissan and Jaguar Landrover. I also worked for Sunderland University for 3 years preparing and delivering training courses in computing.\r\n\r\nTimes have changed, the challenges are very different to what they were, but programming remains fun!\r\n\r\nWhen not at my computer, I am often riding my motorbike through the wonderful countryside of the UK and Europe.', 'OX7 3NH, England, Oxfordshire, Ascott-under-Wychwood', 19, 59, 60, 63, 0x000000000101000000197710c1ce2f28404aa4cb6cec292e40, b'100', 'all', 'active', 'EN', 'America/New_York', 0, 0, 'Qatar National Bank', 'QR21BARC20038014587495', '276393394748', '/store/934/passport.jpg', '', NULL, 1, 0, NULL, NULL, 0, NULL, 1612680476, NULL, NULL),
(979, 'Morgan Sullivan', 'user', 1, NULL, '+12025550162', 'morgansullivan@yahoo.com', NULL, '$2y$10$TB0nU6Wpg4W9NtIix/uPge6w8aovVEHuzTkoLYWLqykaBnXEkF96u', NULL, NULL, NULL, 0, 0, '/store/979/avatar/617a4ed2908fd.png', '/store/979/5.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 'EN', 'America/New_York', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, NULL, 1613807727, NULL, NULL),
(995, 'Cameron Schofield', 'user', 1, 867, '+12025550169', 'student@demo.com', NULL, '$2y$10$Hc4OzTkL3i5vmHXXvZvSfOsZDMD/XYwO4yS8UOtUIAFQcXYhIIJsa', NULL, NULL, '91HErIcqrCSkZgasvQZIJPmAjJ78gyzgnHrBtB8guYhXaFzOKqbhSAKL1Us5', 1, 0, '/store/995/avatar/6179b58ee64c7.png', '/store/995/7.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 'EN', 'America/New_York', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, NULL, 1615538893, NULL, NULL),
(996, 'Robert B. Gray', 'user', 1, 867, '+12025550159', 'robert2002@gmail.com', 'bio', '$2y$10$PNK/Cn/SK/ut4rIsFeZhB.xehag15jXTD60lI8WDnEv8evtGn19my', NULL, NULL, 'iw1xNbFV2orSeJvaSeJVKCcOBCPcJNRGalESn6M1dVSflsJwM468L9iEEzr0', 0, 0, '/store/996/avatar/617a4ea0d77af.png', '/store/996/11.jpg', NULL, 'about', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 'EN', 'America/New_York', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, NULL, 1619885166, NULL, NULL),
(1014, 'George Hamilton', 'Author Role', 9, NULL, '6104254644', 'Robert@gmail.com', NULL, '$2y$10$UQtinAOPeFdgy81Mxd3z7uGdSz2gsQsh0A3osAkoOb7A6IpjnDH0a', NULL, NULL, NULL, 1, 0, '/store/1/default_images/testimonials/profile_picture (30).jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 'EN', 'America/New_York', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, NULL, 1624692024, NULL, NULL),
(1015, 'Robert Ransdell', 'teacher', 4, 867, '+61491170156', 'instructor@demo.com', 'System Administrator at Amazon', '$2y$10$8.jgtS/cg8L6HfuuBgWnkeg49r0LiY7kofR6eiY9b.mx747i82n.u', NULL, NULL, 'e1VphUocvRw5kSlBQmT1r0ErB6MFLw2ZsOCxe07oVfKlAqWONl5QBG7z39TV', 1, 1, '/store/1015/avatar/617a4f2fb8a6d.png', '/store/1015/6.jpg', NULL, 'Robert started his career as a Unix and Linux System Engineer in 1999. Since that time he has utilized his Linux skills at companies such as Xerox, UPS, Hewlett-Packard, and Amazon.com. Additionally, he has acted as a technical consultant and independent contractor for small businesses and Fortune 500 companies.\r\n\r\nRobert has professional experience with CentOS, RedHat Enterprise Linux, SUSE Linux Enterprise Server, and Ubuntu. He has used several Linux distributions on personal projects including Debian, Slackware, CrunchBang, and others. In addition to Linux, Jason has experience supporting proprietary Unix operating systems including AIX, HP-UX, and Solaris.\r\n\r\nHe enjoys teaching others how to use and exploit the power of the Linux operating system. He is also the author of the books \"Linux for Beginners\" and \"Command Line Kung Fu.\"', 'Qatar ,Al Wakrah ,27904 Hilpert Knoll', 18, 46, 49, 55, 0x0000000001010000008087fa84a95b4440ee7007d9bc8052c0, b'110', 'all', 'active', 'EN', 'America/New_York', 0, 0, 'Qatar National Bank', 'QR55BDHC20040182623775', '6342781654', '/store/1015/passport.jpg', '/store/1015/certificate_validation.jpg', NULL, 1, 0, NULL, NULL, 0, NULL, 1624817207, NULL, NULL),
(1016, 'Ricardo dave', 'teacher', 4, NULL, '+12025250175', 'Ricardodave09@hotmail.com', 'Data Analyst at Microsoft', '$2y$10$NA3UcrvzR9bOoHbFQa.Xbeb2KhRplWzdSLU72eRosUOLfhaMITiN.', NULL, NULL, NULL, 0, 1, '/store/1016/avatar/617a4f17c8e72.png', '/store/1016/7.jpg', NULL, 'Ricardo dave has a BS and MS in Mechanical Engineering from Santa Clara University and years of experience as a professional instructor and trainer for Data Science and programming. He has publications and patents in various fields such as microfluidics, materials science, and data science technologies. Over the course of his career he has developed a skill set in analyzing data and he hopes to use his experience in teaching and data science to help other people learn the power of programming the ability to analyze data, as well as present the data in clear and beautiful visualizations. Currently he works as the Head of Data Science for Pierian Data Inc. and provides in-person data science and python programming training courses to employees working at top companies, including General Electric, Cigna, The New York Times, Credit Suisse, McKinsey and many more. Feel free to contact him on LinkedIn for more information on in-person training sessions or group training sessions in Las Vegas, NV.', 'Luib, 72 Wern Ddu Lane', 16, 22, 23, 25, 0x00000000010100000087f8fa14fb674840dd3a59c20bfb0140, b'010', 'all', 'active', 'EN', 'America/New_York', 0, 0, 'JPMorgan', 'GB55BARC20040182633883', '456873063464', '/store/1016/passport.jpg', '', NULL, 1, 0, NULL, NULL, 1, 'I am not available for 2 days due to a business trip', 1624817905, NULL, NULL),
(1017, 'Alex Pmelaa', 'user', 1, NULL, '085374589', 'a.pmelaa@gmail.com', NULL, '$2y$10$EfeGqWC1GieaFQKzSLPeMOPr9ggMsLPgP5L8wunEz4tI.5wIz3Eni', NULL, NULL, NULL, 0, 0, '/store/1017/avatar/61b6f03ebd69d.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 'EN', 'America/New_York', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, NULL, 1639378748, NULL, NULL),
(1031, 'Ibrahim Bakari', 'user', 1, NULL, NULL, 'ibwalii53@gmail.com', NULL, '$2y$10$ThvHgYFAy7.qh8XQ.jE28uGiVsDg6iktmwMUil/.qPXvGcFjzAZ/q', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'pending', NULL, 'America/New_York', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, 1650971446, NULL, NULL),
(1032, 'Abdullahi Nuhu', 'user', 1, 864, '09055535554', 'abdullahi@cdrmd.org', NULL, '$2y$10$FIWmmiz8KIdPLzQG5najOO4s92VGIDnqZLKucryf9Y7fdZTeGCJzu', NULL, NULL, 'EDq1mv31tbXqouWcirbkmBOcFdVwzZvh9GMbwN698xM2EekhkhMshEjq2NEl', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 'EN', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, 1651239556, NULL, NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

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
(75, 864, 'education', 'Bsc Risk Management');

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
(1004, 1016, 520),
(1005, 1016, 606),
(1006, 1016, 607),
(1010, 1015, 609),
(1011, 1015, 606),
(1012, 1015, 607),
(1016, 867, 520),
(1017, 867, 525),
(1018, 867, 611),
(1019, 867, 606),
(1020, 867, 607),
(1021, 867, 608),
(1027, 929, 604),
(1028, 929, 525),
(1029, 929, 609),
(1030, 929, 610),
(1031, 929, 611),
(1032, 870, 523),
(1033, 870, 604),
(1034, 3, 602),
(1035, 3, 525),
(1036, 3, 609),
(1037, 3, 611),
(1038, 3, 606),
(1039, 934, 525),
(1040, 934, 606),
(1041, 934, 607),
(1042, 934, 608),
(1043, 923, 604),
(1044, 923, 609),
(1045, 923, 611),
(1050, 863, 601),
(1051, 863, 602),
(1052, 863, 603),
(1053, 863, 609),
(1054, 863, 611),
(1055, 864, 520),
(1056, 864, 601),
(1057, 864, 602),
(1058, 864, 603),
(1059, 868, 601),
(1060, 868, 602),
(1061, 868, 603),
(1062, 868, 523),
(1063, 868, 611),
(1064, 4, 520),
(1065, 4, 606),
(1066, 930, 520),
(1067, 859, 520),
(1068, 859, 601),
(1069, 859, 604),
(1070, 859, 611);

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

--
-- Dumping data for table `verifications`
--

INSERT INTO `verifications` (`id`, `user_id`, `mobile`, `email`, `code`, `verified_at`, `expired_at`, `created_at`) VALUES
(57, 996, NULL, 'test@gmail.com', '52692', NULL, 1626247575, 1626243975),
(58, 995, NULL, 'student@demo.com', '30257', 1626246439, 1626246489, 1626246375),
(59, 1017, NULL, 'a.pmelaa@gmail.com', '86261', 1639378855, 1639378905, 1639378748),
(71, 1031, NULL, 'ibwalii53@gmail.com', '22722', NULL, 1650975046, 1650971446);

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
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `webinars_slug_unique` (`slug`) USING BTREE,
  KEY `webinars_teacher_id_foreign` (`teacher_id`) USING BTREE,
  KEY `webinars_category_id_foreign` (`category_id`) USING BTREE,
  KEY `webinars_slug_index` (`slug`) USING BTREE,
  KEY `webinars_creator_id_foreign` (`creator_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2012 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `webinars`
--

INSERT INTO `webinars` (`id`, `teacher_id`, `creator_id`, `category_id`, `type`, `private`, `slug`, `start_date`, `duration`, `timezone`, `thumbnail`, `image_cover`, `video_demo`, `video_demo_source`, `capacity`, `price`, `support`, `downloadable`, `partner_instructor`, `subscribe`, `points`, `message_for_reviewer`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1995, 1016, 1016, 611, 'course', 0, 'Become-a-Product-Manager', NULL, 150, NULL, '/store/1016/1.jpg', '/store/1016/1_c.jpg', '/store/1016/Become A Product Manager.mp4', NULL, NULL, 0, 1, 1, 0, 0, NULL, NULL, 'active', 1624867858, 1635443991, NULL),
(1996, 1015, 1015, 606, 'webinar', 0, 'Learn-Linux-in-5-Days', 1625859000, 450, NULL, '/store/1015/hero (6).jpg', '/store/1015/6.jpg', '/store/1015/Learn Linux In 5 Days.mp4', NULL, 10, 0, 1, 0, 0, 0, NULL, 'Can I add a new session to my class after it is published?', 'active', 1624943782, 1635445181, NULL),
(1997, 934, 934, 606, 'text_lesson', 0, 'Learn-Python-Programming', NULL, 35, NULL, '/store/934/Python for Beginners.jpg', '/store/934/hero (4).jpg', '/store/934/Python for Beginners.mp4', NULL, NULL, 0, 1, 0, 0, 0, NULL, 'thank you .', 'active', 1624954285, 1635445377, NULL),
(1998, 1015, 1015, 609, 'webinar', 0, 'Excel-from-Beginner-to-Advanced', 1679257800, 100, NULL, '/store/1015/Excel from Beginner to Advanced.jpg', '/store/1015/11.jpg', '/store/1015/Microsoft Excel - Excel from Beginner to Advanced.mkv', NULL, 10, 100, 1, 0, 1, 1, NULL, 'thank you.', 'active', 1624965321, 1635444974, NULL),
(1999, 929, 929, 610, 'course', 0, 'How-to-Manage-Your-Virtual-Team', NULL, 90, 'America/New_York', '/store/929/How to Manage & Influence Your Virtual Team.jpg', '/store/929/How to Manage & Influence Your Virtual Team_c.jpg.png', '/store/929/How To Manage & Influence Your Virtual Team.mkv', NULL, NULL, 50, 0, 1, 0, 1, 500, 'I solved the problems you mentioned', 'active', 1625037906, 1646396847, NULL),
(2000, 923, 867, 609, 'webinar', 0, 'Effective-Time-Management', 1690846200, 90, 'America/New_York', '/store/867/Effective Time Management.jpg', '/store/867/Effective Time Management_c.png', '/store/867/Effective Time Management.mkv', NULL, 10, 30, 0, 0, 0, 0, NULL, NULL, 'active', 1625044975, 1646172394, NULL),
(2001, 3, 3, 606, 'webinar', 0, 'Learn-and-Understand-AngularJS', 1702153800, 60, NULL, '/store/3/Learn and Understand AngularJS.jpg', '/store/3/Learn and Understand AngularJS_c.png', '/store/3/Learn and Understand AngularJS.mkv', NULL, 10, 20, 1, 0, 0, 0, NULL, 'I corrected the session dates. Thanks', 'active', 1625074163, 1635444769, NULL),
(2002, 870, 863, 523, 'webinar', 0, 'Health-And-Fitness-Masterclass', 1625081400, 60, NULL, '/store/863/Health And Fitness Masterclass Beginner To Advanced.jpg', '/store/863/Health And Fitness Masterclass Beginner To Advanced_c.png', '/store/863/Health And Fitness Masterclass- Beginner To Advanced.mkv', NULL, 5, 20, 1, 0, 0, 1, NULL, 'Thank you for your good services.', 'active', 1625122618, 1639378097, NULL),
(2003, 3, 864, 610, 'webinar', 1, 'Active-Listening-You-Can-Be-a-Great-Listener', 1696120200, 75, 'America/New_York', '/store/864/couple-listening-music.jpg', '/store/864/Active Listening You Can Be a Great Listener_c.png', '/store/864/Active Listening- You Can Be a Great Listener.mkv', 'upload', 10, 40, 1, 0, 0, 0, NULL, 'I modified the files again. Thanks', 'active', 1625299225, 1651240265, NULL),
(2004, 929, 929, 602, 'course', 0, 'The-Future-of-Energy', NULL, 70, 'America/New_York', '/store/929/The Future of Energy.jpg', '/store/929/The Future of Energy_c.jpg', '/store/929/The Future of Energy.mkv', NULL, NULL, 60, 1, 1, 0, 1, 600, NULL, 'active', 1625685324, 1646396857, NULL),
(2005, 934, 4, 520, 'course', 0, 'Web-Design-for-Beginners', NULL, 105, 'America/New_York', '/store/4/Web Design for Beginners.jpg', '/store/4/Web Design for Beginners_c.jpg', '/store/4/Web Designing for Beginners.mkv', NULL, NULL, 10, 1, 0, 1, 1, 200, 'thank you', 'active', 1625689958, 1646396836, NULL),
(2006, 923, 867, 604, 'webinar', 0, 'How-to-Travel-Around-the-World', 1646197200, 150, 'America/New_York', '/store/867/How to Travel Around the World on a Budget.jpg', '/store/867/How to Travel Around the World on a Budget_c.jpg', '/store/867/How to Travel Around the World on a Budget.mkv', NULL, 5, 25, 1, 1, 0, 1, NULL, 'I edited the text of the course. Thank', 'active', 1625693895, 1646172352, NULL),
(2007, 1015, 867, 604, 'course', 1, 'Travel-Management-Course', NULL, 60, NULL, '/store/867/Travel Management Course.jpg', '/store/867/Travel Management Course_c.jpg', '/store/867/How to Travel Around the World on a Budget.mkv', NULL, NULL, 0, 1, 1, 0, 0, NULL, NULL, 'active', 1626207424, 1635442592, NULL),
(2008, 1015, 1015, 604, 'course', 0, 'The-Professional-Guitar-Masterclass', NULL, 210, 'America/New_York', '/store/1015/The Professional Guitar Masterclass.jpg', '/store/1015/The Professional Guitar Masterclass_c.jpg', 'https://youtu.be/6Vo2v7WCyTs', 'youtube', NULL, 0, 1, 1, 1, 1, NULL, NULL, 'active', 1646118189, 1646492850, NULL),
(2009, 1015, 1015, 610, 'webinar', 0, 'New-in-App-Live-System', 1646118000, 150, 'America/New_York', '/store/1015/new_live_system.jpg', '/store/1015/new_live_system_c.jpg', '/store/1015/Learn Linux In 5 Days.mp4', 'upload', 10, 10, 1, 0, 0, 0, 200, NULL, 'active', 1646171664, 1646415127, NULL),
(2010, 3, 864, 610, 'course', 0, 'Introduction-to-Risk-Management', NULL, 10, 'America/New_York', '/store/864/20.jpg', '/store/864/couple-listening-music.jpg', NULL, NULL, NULL, NULL, 0, 1, 0, 0, NULL, 'A new Couse', 'active', 1651239876, 1651240160, NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `webinar_chapters`
--

INSERT INTO `webinar_chapters` (`id`, `user_id`, `webinar_id`, `type`, `order`, `status`, `created_at`) VALUES
(2, 1015, 2007, 'file', NULL, 'active', 1635407804),
(3, 867, 2007, 'file', NULL, 'active', 1635407977),
(4, 1016, 1995, 'file', NULL, 'active', 1635410840),
(5, 867, 2006, 'file', NULL, 'active', 1635412019),
(6, 867, 2006, 'file', NULL, 'active', 1635412070),
(7, 4, 2005, 'file', NULL, 'active', 1635412460),
(8, 929, 2004, 'file', NULL, 'active', 1635412622),
(9, 929, 1999, 'file', NULL, 'active', 1635412731),
(10, 929, 1999, 'file', NULL, 'active', 1635414134),
(11, 1016, 1995, 'file', NULL, 'active', 1635416511),
(12, 864, 2003, 'file', NULL, 'active', 1635416675),
(13, 864, 2003, 'session', NULL, 'active', 1635416784),
(14, 863, 2002, 'file', NULL, 'active', 1635416977),
(15, 863, 2002, 'session', NULL, 'active', 1635417025),
(16, 3, 2001, 'session', NULL, 'active', 1635417112),
(17, 3, 2001, 'session', NULL, 'active', 1635417172),
(18, 867, 2000, 'file', NULL, 'active', 1635417285),
(19, 867, 2000, 'session', NULL, 'active', 1635417326),
(20, 1015, 1998, 'file', NULL, 'active', 1635417480),
(21, 1015, 1998, 'session', NULL, 'active', 1635417524),
(22, 1015, 1996, 'session', NULL, 'active', 1635417655),
(23, 1015, 1996, 'session', NULL, 'active', 1635417695),
(24, 934, 1997, 'file', NULL, 'active', 1635417828),
(26, 934, 1997, 'text_lesson', NULL, 'active', 1635417896),
(28, 1015, 2008, 'file', NULL, 'active', 1646118899),
(29, 1015, 2008, 'file', NULL, 'active', 1646119712),
(30, 1015, 2009, 'session', NULL, 'active', 1646171933);

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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `webinar_chapter_translations`
--

INSERT INTO `webinar_chapter_translations` (`id`, `webinar_chapter_id`, `locale`, `title`) VALUES
(2, 2, 'en', 'Introduction'),
(3, 3, 'en', 'General Advice & Tips'),
(4, 4, 'en', 'Before Starting the Course'),
(5, 5, 'en', 'Let\'s Start!'),
(6, 6, 'en', 'Ready to go?'),
(7, 7, 'en', 'Essentials'),
(8, 8, 'en', 'Exponential'),
(9, 9, 'en', 'Introduction'),
(10, 10, 'en', 'Tactics of Influence & Persuasion'),
(11, 11, 'en', 'Ideas and User Needs'),
(12, 12, 'en', 'Introduction'),
(13, 13, 'en', 'Why Active Listening?'),
(14, 14, 'en', 'Introduction'),
(15, 15, 'en', 'Setting Up Your Fitness Diet'),
(16, 16, 'en', 'Getting Started'),
(17, 17, 'en', 'Model, View, Whatever...'),
(18, 18, 'en', 'Introduction'),
(19, 19, 'en', 'Effective Time Management'),
(20, 20, 'en', 'Introduction'),
(21, 21, 'en', 'Microsoft Excel Fundamentals'),
(22, 22, 'en', 'Overview'),
(23, 23, 'en', 'Start learning'),
(24, 24, 'en', 'Introduction'),
(26, 26, 'en', 'Stepping into the World of Python'),
(28, 28, 'en', 'SCORM Files'),
(29, 29, 'en', 'Different File Types'),
(30, 30, 'en', 'Introduction');

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
) ENGINE=InnoDB AUTO_INCREMENT=11595 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `webinar_filter_option`
--

INSERT INTO `webinar_filter_option` (`id`, `webinar_id`, `filter_option_id`) VALUES
(11423, 2007, 9130),
(11424, 2007, 9181),
(11447, 1995, 9146),
(11448, 1995, 9212),
(11449, 1995, 9275),
(11450, 1995, 9277),
(11467, 1998, 9138),
(11468, 1998, 9196),
(11469, 1998, 9267),
(11474, 1997, 9147),
(11475, 1997, 9218),
(11476, 1997, 9281),
(11477, 1997, 9283),
(11480, 2002, 9127),
(11481, 2002, 9250),
(11505, 2006, 9130),
(11506, 2006, 9181),
(11507, 2000, 9140),
(11508, 2000, 9196),
(11509, 2000, 9267),
(11558, 2005, 9114),
(11559, 2005, 9156),
(11560, 2005, 9231),
(11561, 2004, 9122),
(11562, 2004, 9166),
(11563, 2004, 9240),
(11576, 2009, 9143),
(11577, 2009, 9206),
(11578, 2009, 9270),
(11579, 2009, 9271),
(11582, 2008, 9131),
(11583, 2008, 9181),
(11587, 2010, 9141),
(11588, 2010, 9206),
(11589, 2010, 9270),
(11590, 2003, 9142),
(11591, 2003, 9206),
(11592, 2003, 9272);

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

--
-- Dumping data for table `webinar_partner_teacher`
--

INSERT INTO `webinar_partner_teacher` (`id`, `webinar_id`, `teacher_id`) VALUES
(79, 1998, 1016),
(87, 2005, 1016),
(91, 2008, 1016);

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

--
-- Dumping data for table `webinar_reports`
--

INSERT INTO `webinar_reports` (`id`, `user_id`, `webinar_id`, `reason`, `message`, `created_at`) VALUES
(3, 995, 1997, 'Not Related', 'I think the right category has not been chosen for this course.', 1626239751),
(4, 995, 1995, 'Against Rules', 'Course files are not complete', 1626239965);

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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `webinar_reviews`
--

INSERT INTO `webinar_reviews` (`id`, `webinar_id`, `creator_id`, `content_quality`, `instructor_skills`, `purchase_worth`, `support_quality`, `rates`, `description`, `created_at`, `status`) VALUES
(20, 2006, 996, 5, 5, 5, 5, '5', 'This course is full of traveling information. I\'m so thankful for new tips that I didn\'t hear before. Thanks:)', 1626214531, 'active'),
(21, 1998, 996, 5, 5, 4, 5, '4.75', 'Definitely recommended for anyone starting out excel. If you are familiar with the basics and have only been using excel as a calculator this will help you realize how versatile it is and how to use it effectively.', 1626214590, 'active'),
(22, 1997, 996, 5, 5, 5, 5, '5', 'The course covers all the basics required along with applications which gives the learner a high level of exposure in python programming.\r\n\r\nI liked the way the course is explained ie, by showing the errors and how to correct them. This enables the learner to debug issues on his own.\r\n\r\nKeep up the good work.', 1626214647, 'active'),
(23, 1996, 996, 4, 4, 4, 4, '4', 'It\'s a nice course for who is new in Linux distribution. You may take this course for Basic Linux Literacy. Thanks to honourable instructor', 1626214731, 'active'),
(24, 1995, 996, 5, 5, 5, 5, '5', 'Very clear and entertaining course, made me feel prepared to take the next step in my journey to become a product manager! 10/10 would totally recomend.', 1626214849, 'active'),
(25, 2005, 995, 5, 4, 4, 4, '4.25', 'Has some previous experience. But wanted to further develop this knowledge and chose to do it thoroughly. So this course definitely feels right to me.', 1626232945, 'active'),
(26, 2004, 995, 2, 2, 3, 3, '2.5', 'Didn\'t have the expert deliver the information. Heavily political bashing. Full disaster and scare rather than being leveled and focused on the science.', 1626233054, 'active'),
(27, 2001, 995, 2, 3, 3, 3, '2.75', 'this last lecture about controller and routing didnt worked for me. Second page is not loading even after taking uploaded resources.', 1626233222, 'active'),
(28, 1995, 995, 3, 4, 4, 4, '3.75', 'The course is completely worth. The instructors gave practical instances and interviewed two successful PMs. In short it taught me all the necessities. The resource PDF is treasure.', 1626233313, 'active'),
(29, 1999, 995, 4, 4, 4, 3, '3.75', 'Good Course, It has good tips and information, it is important to apply these on your day-to-day to make sure that you get the best of it. Liked the summary slides.', 1626233413, 'active'),
(30, 2002, 995, 5, 5, 5, 5, '5', 'The instructor is very clear in his teaching and he makes it so simple for anyone to understand what he is teaching. I\'m glad I chose him to take this course.', 1626283457, 'active'),
(31, 2002, 979, 5, 5, 5, 5, '5', 'Personally I love fitness and wanted to gain more knowledge because I love to workout and also help people get in shape and I found the right course. It\'s amazing and I am learning a lot.', 1626283559, 'active'),
(32, 2000, 996, 5, 5, 5, 5, '5', 'Great course, concise and to the point. Realized how much time I have been wasting. Tried some of the concept mentioned in this course from other readings before but the framework provided here to create a sustainable environment/process for success was the missing piece to keep things from falling apart soon after starting.', 1626508980, 'active'),
(33, 2009, 979, 5, 5, 5, 5, '5', 'It was a perfect Course.\r\nThank Robert :)', 1646254621, 'active'),
(34, 2008, 995, 5, 5, 5, 5, '5', 'It was an excellent course. I hope to see more courses from this teacher in the future.', 1646352833, 'active'),
(35, 1995, 1015, 5, 5, 5, 5, '5', 'This course was perfect.', 1646413440, 'active');

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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `webinar_translations`
--

INSERT INTO `webinar_translations` (`id`, `webinar_id`, `locale`, `title`, `seo_description`, `description`) VALUES
(1, 1995, 'en', 'Become a Product Manager', 'The most complete course available on Product Management.', '<p style=\"margin-top: 0.8rem; font-size: inherit; max-width: 118.4rem;\">The <strong style=\"margin: 0px; padding: 0px;\">most updated </strong>and <strong style=\"margin: 0px; padding: 0px;\">complete</strong> Product Management course on Udemy! You\'ll learn the skills that make up the entire <strong style=\"margin: 0px; padding: 0px;\">Product Management </strong>job and process: from <strong style=\"margin: 0px; padding: 0px;\">ideation</strong> to <strong style=\"margin: 0px; padding: 0px;\">market research,</strong> to <strong style=\"margin: 0px; padding: 0px;\">UX wireframing</strong> to <strong style=\"margin: 0px; padding: 0px;\">prototyping</strong>, <strong style=\"margin: 0px; padding: 0px;\">technology</strong>, <strong style=\"margin: 0px; padding: 0px;\">metrics, </strong>and finally to <strong style=\"margin: 0px; padding: 0px;\">building the product</strong> with <strong style=\"margin: 0px; padding: 0px;\">user stories</strong>, <strong style=\"margin: 0px; padding: 0px;\">project management</strong>, <strong style=\"margin: 0px; padding: 0px;\">scoping</strong>, and <strong style=\"margin: 0px; padding: 0px;\">leadership</strong>. We even have <strong style=\"margin: 0px; padding: 0px;\">interviews with real life PMs</strong>, <strong style=\"margin: 0px; padding: 0px;\">Q&A sessions</strong> with students, and a comprehensive guide to <strong style=\"margin: 0px; padding: 0px;\">preparing and interviewing for a Product Management job</strong>. <br style=\"margin: 0px; padding: 0px;\"></p><p style=\"margin-top: 0.8rem; font-size: inherit; max-width: 118.4rem;\">Right now, there are over <strong style=\"margin: 0px; padding: 0px;\">3,000+ job listings</strong> worldwide that are looking for Product Managers, that pay on average <strong style=\"margin: 0px; padding: 0px;\">$100,000 / year</strong>.</p><p style=\"margin-top: 0.8rem; font-size: inherit; max-width: 118.4rem;\">The demand for Product Management is increasing at an insane rate. More and more companies are finally figuring out how important this discipline and this role is to their success. </p><p style=\"margin-top: 0.8rem; font-size: inherit; max-width: 118.4rem;\">But how exactly do you get into the field? There aren\'t any degrees in Product Management & there are no certifications. Most Product Managers get into the field through luck or connections. That ends here - we\'ll get you up to date on ALL the skills you need to learn Product Management AND have the best chance at getting the job you want. There\'s no more ambiguity to it. We\'ll show you what you need to know and what you have to do - all taught from a Product Management insider.</p><p style=\"margin-top: 0.8rem; font-size: inherit; max-width: 118.4rem;\">Students aren\'t required to know anything beforehand - we\'ll teach you the fundamentals, how to apply them, how to develop into an advanced product manager, and finally how to maximize your chances to get a job as a Product Manager.</p><p style=\"margin-top: 0.8rem; font-size: inherit; max-width: 118.4rem;\"><strong style=\"margin: 0px; padding: 0px;\">Your instructors:</strong></p><p style=\"margin-top: 0.8rem; font-size: inherit; max-width: 118.4rem;\"><strong style=\"margin: 0px; padding: 0px;\">Cole Mercer</strong> has been a Senior Product Manager at Soundcloud, Bonobos, Mass Relevance, and has taught the Product Management course at General Assembly in Manhattan, NYC.</p><p style=\"margin-top: 0.8rem; font-size: inherit; max-width: 118.4rem;\"><strong style=\"margin: 0px; padding: 0px;\">Evan Kimbrell </strong>is a Top rated Udemy instructor with 11 courses on everything Entrepreneurship. His courses have over 35,000 students, 1,000+ 5 star reviews, and an average rating of 4.9 / 5.0.</p><p style=\"margin-top: 0.8rem; font-size: inherit; max-width: 118.4rem;\"><br style=\"margin: 0px; padding: 0px; color: rgb(60, 59, 55); font-family: \"sf pro text\", -apple-system, BlinkMacSystemFont, Roboto, \"segoe ui\", Helvetica, Arial, sans-serif, \"apple color emoji\", \"segoe ui emoji\", \"segoe ui symbol\"; font-size: 14px;\"></p>'),
(2, 1996, 'en', 'Learn Linux in 5 Days', 'Use the in-demand Linux skills you learn in this course to get promoted or start a new career as a Linux professional.', '<p>If you want to learn how to use Linux and level up your career but are pressed for time, read on. Hello. My name is Jason Cannon and I\'m the author of Linux for Beginners as well as the founder of the Linux Training Academy. When I ask people to tell me what their biggest challenge is to learning Linux, they all say the same thing: Time.</p><p>That\'s why I\'ve created this course. Give me just 45 minutes a day for the next 5 days and I will teach you exactly what you need to know about the Linux operating system. You\'ll learn the most important concepts and commands, and I\'ll even guide you step-by-step through several practical and real-world examples.</p><p>So, if you can spare a few minutes a day and want to learn the ins-and-outs of the Linux Operating System, join me and the other students in this course today.</p><p>Free Bonus - How to Install WordPress on Your Very Own Linux System</p><p>As an added bonus for enrolling in the Learn Linux in 5 Days video training course, you\'ll receive a step-by-step checklist and video that teaches you how to install WordPress on an Ubuntu Linux system. First, you\'ll learn what software is required for WordPress to run on a Linux system. Next, you\'ll be given the exact commands to type that install all the required software and WordPress.</p><p>You\'ll learn how to install a web server, how to install a database server, how to create database users, and how to configure WordPress. Before you know it, you\'ll have a fully functioning blog on your hands. This is a great way to put your new-found Linux skills to good use. Totally optional, but very cool: If you want to host your blog on the internet on your very own installation of Linux, I\'ll show you were you can get hosting for just $5 a month.</p><p>____________________</p><p>Learn Linux in 5 Days doesn\'t make any assumptions about your background or knowledge of Linux. You need no prior knowledge to benefit from this course. You will be guided step by step using a logical and systematic approach. As new concepts, commands, or jargon are encountered they are explained in plain language, making it easy for anyone to understand. Here is what you will learn by taking Learn Linux in 5 Days:</p><p>•<span style=\"white-space:pre\">	</span>How to get access to a Linux server if you don\'t already.</p><p>•<span style=\"white-space:pre\">	</span>What a Linux distribution is and which one to choose.</p><p>•<span style=\"white-space:pre\">	</span>What software is needed to connect to Linux from Mac and Windows computers.</p><p>•<span style=\"white-space:pre\">	</span>What SSH is and how to use it.</p><p>•<span style=\"white-space:pre\">	</span>The file system layout of Linux systems and where to find programs, configurations, and documentation.</p><p>•<span style=\"white-space:pre\">	</span>The basic Linux commands you\'ll use most often.</p><p>•<span style=\"white-space:pre\">	</span>Creating, renaming, moving, and deleting directories.</p><p>•<span style=\"white-space:pre\">	</span>Listing, reading, creating, editing, copying, and deleting files.</p><p>•<span style=\"white-space:pre\">	</span>Exactly how permissions work and how to decipher the most cryptic Linux permissions with ease.</p><p>•<span style=\"white-space:pre\">	</span>How to use the nano, vi, and emacs editors.</p><p>•<span style=\"white-space:pre\">	</span>Two methods to search for files and directories.</p><p>•<span style=\"white-space:pre\">	</span>How to compare the contents of files.</p><p>•<span style=\"white-space:pre\">	</span>What pipes are, why they are useful, and how to use them.</p><p>•<span style=\"white-space:pre\">	</span>How to compress files to save space and make transferring data easy.</p><p>•<span style=\"white-space:pre\">	</span>How and why to redirect input and output from applications.</p><p>•<span style=\"white-space:pre\">	</span>How to customize your shell prompt.</p><p>•<span style=\"white-space:pre\">	</span>How to be efficient at the command line by using aliases, tab completion, and your shell history.</p><p>•<span style=\"white-space:pre\">	</span>How to schedule and automate jobs using cron.</p><p>•<span style=\"white-space:pre\">	</span>How to switch users and run processes as others.</p><p>•<span style=\"white-space:pre\">	</span>How to find and install software.</p><p>•<span style=\"white-space:pre\">	</span>Unconditional Udemy 30 day money-back guarantee - that\'s my personal promise of your success!</p><p>What you learn in Learn Linux in 5 Days applies to any Linux environment including Ubuntu, Debian, Kali Linux, Linux Mint, RedHat, Fedora, OpenSUSE, Slackware, and more.</p><div><br></div>'),
(3, 1997, 'en', 'Learn Python Programming', 'Learn Python Programming the Easy Way, Complete with Examples, Quizzes, Exercises and more. Learn Python 2 and Python 3.', '<p>Whether you want to:</p><p>- build the skills you need to get your first Python programming job</p><p>- move to a more senior software developer position</p><p>- get started with Machine Learning, Data Science, Django or other hot areas that Python specialises in</p><p>- or just learn Python to be able to create your own Python apps quickly.</p><p>…then you need a solid foundation in Python programming. And this course is designed to give you those core skills, fast.</p><p>This course is aimed at complete beginners who have never programmed before, as well as existing programmers who want to increase their career options by learning Python.</p><p>The fact is, Python is one of the most popular programming languages in the world – Huge companies like Google use it in mission critical applications like Google Search.</p><p>And Python is the number one language choice for machine learning, data science and artificial intelligence. To get those high paying jobs you need an expert knowledge of Python, and that’s what you will get from this course.</p><p>By the end of the course you’ll be able to apply in confidence for Python programming jobs. And yes, this applies even if you have never programmed before. With the right skills which you will learn in this course, you can become employable and valuable in the eyes of future employers.</p><p>Here’s what a few students have told us about the course after going through it.</p><p>“I had very limited programming experience before I started this course, so I have really learned a lot from the first few sections. It has taken me from essentially zero programming skill to a level where I\'m comfortable using Python to analyze data for my lab reports, and I\'m not even halfway done the course yet. There are other courses out there which focus on data analysis, but those courses are usually targeted at people who already know how to program which is why I chose this course instead. “ – Christian DiMaria</p><p><br></p><p>“I have been puttering through your Python course . In that time, though, and without finishing it yet I\'ve been able to automate quite a bit at my work. I work in a school system and unifying data from our various student information systems can be incredibly frustrating, time consuming, and at times challenging. Using your course, I\'ve learned enough to write applications that turn massive text files into dictionaries that get \"stitched\" together like a database and output to properly formatted CSV files and then uploaded via SFTP to various systems for secure processing. Our teachers, students, and the tech department have greatly benefitted from this automation. I just wanted to drop you a note thanking you for helping me learn this skill.” – Keith Medlin</p><p><br></p><p>“This course was great. Within 3 weeks I was able to write my own database related applications.” – Theo Coenen</p><p><br></p><p>And there are many more students who love the course – check out all the reviews for yourself.</p><p>Will this course give you core python skills?</p><p>Yes it will.  There are a range of exciting opportunities for Python developers. All of them require a solid understanding of Python, and that’s what you will learn in this course.</p><p>Will the course teach me data science, machine learning and artificial intelligence?</p><p>No, it won’t do that – All of these topics are branches of Python programming.  And all of them require a solid understanding of the Python language.</p><p>Nearly all courses on these topics assume that you understand Python, and without it you will quickly become lost and confused.</p><p>This course will give you that core, solid understanding of the Python programming language.</p><p>By the end of the course you will be ready to apply for Python programming positions as well as move on to specific areas of Python, as listed above.</p><p>Why should you take this course?</p><p>There are a lot of Python courses on Udemy – Your instructors, Tim and Jean-Paul are pretty unique in that between them they have around 70 years of professional programming experience.  That’s more than a lifetime of skills you get to learn Python from.</p><p>You can enrol in the course safe in the knowledge that they are not just teachers, but professional programmers with real commercial programming experience, having worked with big companies like IBM, Mitsubishi, Fujitsu and Saab in the past.</p><p>As such you will not only be learning Python, but you will be learning industry best practices for Python programming that real employers demand. </p><p>And if that’s not enough take a read of some of the many reviews from happy students – there are around 100,000 students who have left around 19,000 reviews.</p><p>This is one of the most popular courses on Python programming on Udemy.</p><p>Student Quote: “Tim and JP are excellent teachers and are constantly answering questions and surveying students on new topics they will like to learn. This isn\'t a Python course it’s THE Python course you need.” – Sean Burger</p><p>Ready to get started, developer?</p><p>Enrol now using the “Add to Cart” button on the right, and get started on your way to creative, advanced Python brilliance. Or, take this course for a free spin using the preview feature, so you know you’re 100% certain this course is for you.</p><p>See you on the inside (hurry, your Python class is waiting!)</p><div><br></div>'),
(4, 1998, 'en', 'Excel from Beginner to Advanced', 'Excel with this A-Z Microsoft Excel Course', '<p>Microsoft Excel all in One Package</p><p>This Microsoft Excel course combines 4 different courses.</p><p>•<span style=\"white-space:pre\">	</span>Microsoft Excel 101 - An Introduction to Excel</p><p>•<span style=\"white-space:pre\">	</span>Microsoft Excel 102 - Intermediate Level Excel</p><p>•<span style=\"white-space:pre\">	</span>Microsoft Excel 103 - Advanced Level Excel</p><p>•<span style=\"white-space:pre\">	</span>Master Microsoft Excel Macros and VBA in 6 Simple Projects</p><p>Material recorded with Excel 2013 but works in 2010, 2013, 2016, 2019 (Office 365)</p><p>Recent Student Review</p><p>•<span style=\"white-space:pre\">	</span>\"You sir are a life saver. Not everyone has the ability to teach. Thank you so much for taking the time to put together an amazing course bro. If anyone doubts buying this course, don\'t doubt it, buy it. I\'ve learned so much in this course. Hope more courses are on the way because I\'d buy every single one of them. Thanks again bro. God bless you and your family.\"</p><p>•<span style=\"white-space:pre\">	</span>\"Happy to say that I now \"know\" excel. I realize there is so much more to learn, but it\'s a start! Thank you for being such a great instructor... now on to the next class.\"</p><p>•<span style=\"white-space:pre\">	</span>\"Thanks for a well made course. The progression of topics is well structured and the part about Macro and VBA was new for me. Excel is a really powerful tool and it is worth know all of its aspects. Kyle did a good job at explaining them.\"</p><p>Enroll now to go through a deep dive of the most popular spreadsheet tool on the market, Microsoft Excel. As your instructor I will use my 15+ years of Excel training to guide you step by step through the beginner to advanced level and beyond.</p><p>As you participate in each of the 4 courses you will master Excel tools that will clear away the pain of stumbling through your daily tasks. You will start with the basics, building a solid foundation that will give you further knowledge as you progress into intermediate and advanced level topics.</p><p>At completion of this course you will have mastered the most popular Excel tools and come out with confidence to complete any Excel tasks with efficiency and grace. Below are just a few of the topics that you will master:</p><p>•<span style=\"white-space:pre\">	</span>Creating effective spreadsheets</p><p>•<span style=\"white-space:pre\">	</span>Managing large sets of data</p><p>•<span style=\"white-space:pre\">	</span>Mastering the use of some of Excel\'s most popular and highly sought after functions (SUM, VLOOKUP, IF, AVERAGE, INDEX/MATCH and many more...)</p><p>•<span style=\"white-space:pre\">	</span>Create dynamic report with Excel PivotTables</p><p>•<span style=\"white-space:pre\">	</span>Unlock the power and versatility of Microsoft Excel\'s Add-In, PowerPivot</p><p>•<span style=\"white-space:pre\">	</span>Audit Excel Worksheet formulas to ensure clean formulas</p><p>•<span style=\"white-space:pre\">	</span>Automate your day to day Excel tasks by mastering the power of Macros and VBA</p><p>So, what are you waiting for, enroll now and take the next step in mastering Excel and go from Excel Newb to Excel Guru!</p><div><br></div>'),
(5, 1999, 'en', 'How to Manage Your Virtual Team', 'Learn step-by-step tips that help you get things done with your virtual team by increasing trust and accountability', '<p>If you manage a <b><font color=\"#636363\">virtual team</font></b> today, then you\'ll probably continue to do so for the rest of your career. </p><p>If you don\'t, then you probably will soon.</p><p>Learning how to manage people you don\'t see face-to-face is an important skill that you need regardless of what industry you\'re in. The coronavirus pandemic (COVID-19) has also accelerated the need for managing people who work from home, as telecommuting became the norm.</p><p>With \"How to Manage & Influence Your Virtual Team\" you will learn the psychological secrets of persuasion and communication that influence your virtual team members to do what you need them to do. </p><p>The course will also help you increase the level of trust and accountability among your team members while reducing the time you spend on frustrating meetings, useless technology tools, and back-and-forth emails. </p><p>At the end of each lecture in the course, you\'ll get specific, actionable steps that you can implement immediately. </p><p>In addition, you\'ll also get downloadable sample scripts and templates that you can simply copy & paste and use with your own virtual team. </p><p><br></p><p>The course contains the following sections: </p><ul><li>•<span style=\"white-space:pre\">	</span>The Psychology of Communication in Virtual Teams: Psychological strategies to effectively communicate with your team and reduce ambiguity and miscommunication</li><li>•<span style=\"white-space:pre\">	</span>Principles of Behavior Change: Four strategic principles that will change your team\'s behavior to get things done</li><li>•<span style=\"white-space:pre\">	</span>Tactics of Influence & Persuasion: Step-by-step tactics that influence your team members to do what you need them to do</li><li>•<span style=\"white-space:pre\">	</span>Managing Virtual Meetings Effectively: How to have fewer meetings while increasing their effectiveness at the same time</li><li>•<span style=\"white-space:pre\">	</span>Choosing and Evaluating the Right Technology: A simple framework to choose and evaluate the right technology tools to use with your virtual teams</li><li>•<span style=\"white-space:pre\">	</span>Building Trust in Virtual Environments: A methodical blueprint to increase the level of trust among your virtual team</li><li>•<span style=\"white-space:pre\">	</span>Killer Email and Phone Techniques: Powerful email and phone techniques that you can use to influence your virtual team members</li></ul><p><br></p><p>What is different about this course? </p><p>There are many courses on managing virtual teams. Here are three reasons why this one is different </p><p><br></p><p>Reason #1: Tactics, not just strategies </p><p>Most courses about virtual teams focus on high-level strategies and theories. </p><p>Very few actually give you the tactics that you need to implement those strategies. </p><p>In this course, I\'ll show you how to apply the management tactics to your own situation. You\'ll get step-by-step techniques and scripts that will save you a lot of time in managing your virtual team. </p><p>In other words, you will get answers to both those questions: </p><p>  -What do I need to do? </p><p>  -How do I do it? </p><p>Moreover, every video also has a “Summary of Actions\" slide at the end that summarizes the course lecture for you, and tells you exactly what you need to do as a next step. Basically, you\'ll learn everything about virtual team management in simple steps.</p><p><br></p><p>Reason #2: Proven Science-based Research </p><p>For the course, I did a ton of science-based research about powerful psychological and productivity studies in the areas of influence and management. </p><p>Some of the research references include studies from the Harvard Business School, Kelley School of  Business, and McKinsey Global Institute. </p><p>I also reference studies from international bestselling books such as “Influence: The Science of Persuasion,\" “Made to Stick,\" and “The Tipping Point,\" among others. </p><p>I\'ve tested the findings from those references myself and selected what works and what doesn\'t in virtual teams. </p><p>So you will get the absolute best of the best concepts that work for you and your team. </p><p><br></p><p>Reason #3: Practical insights that work (not just theory) </p><p>I\'ve been managing virtual teams for over 15 years, both as an entrepreneur and as a program manager. </p><p>In fact, I still work as a remote leader, and my full-time job is to manage virtual teams across the world to deliver highly complex projects (note: I work for Cisco Systems, but all views are my own and not those of Cisco). </p><p>Unlike most courses that are taught by professors who have studied this space from a purely theoretical view, you\'ll be getting a unique perspective on how to manage people remotely from someone who does this for a living. </p><p><br></p><p>In short, the course will help you: </p><p>•<span style=\"white-space:pre\">	</span>Communicate more effectively and build trust with your team</p><p>•<span style=\"white-space:pre\">	</span>Stop worrying about being caught up in pointless day-to-day details</p><p>•<span style=\"white-space:pre\">	</span>Save valuable time spent on useless meetings and back & forth emails</p><p>•<span style=\"white-space:pre\">	</span>Choose the right technology tools and techniques for effective team collaboration</p><p>•<span style=\"white-space:pre\">	</span>Influence  your team to be accountable for getting tasks accomplished</p><p><br></p><p>NOTE for Project Management Professional (PMP) certification holders </p><p>This course qualifies for 3 Professional Development Units (PDUs) under the Project Management Institute\'s (PMI\'s) \"Education\" requirement. After you\'re done with the course, you will get a \"Certificate of Completion\" from Udemy, which you can use as evidence for PMI. All 3 hours can be claimed under the \"Leadership\" category.</p><div><br></div>'),
(6, 2000, 'en', 'Effective Time Management', 'How Entrepreneurs and Small Business Owners can Get 10X More Done in Half of the Time', '<p style=\"font-size: 14px; max-width: 118.4rem; color: rgb(60, 59, 55); font-family: \"sf pro text\", -apple-system, BlinkMacSystemFont, Roboto, \"segoe ui\", Helvetica, Arial, sans-serif, \"apple color emoji\", \"segoe ui emoji\", \"segoe ui symbol\";\">If you have ever taken a time management course, you\'ve probably faced the frustration of trying to manage your time better and not succeeding.</p><p style=\"margin-top: 0.8rem; font-size: 14px; max-width: 118.4rem; color: rgb(60, 59, 55); font-family: \"sf pro text\", -apple-system, BlinkMacSystemFont, Roboto, \"segoe ui\", Helvetica, Arial, sans-serif, \"apple color emoji\", \"segoe ui emoji\", \"segoe ui symbol\";\">This is because <strong style=\"margin: 0px; padding: 0px;\">time management is a Myth.</strong></p><p style=\"margin-top: 0.8rem; font-size: 14px; max-width: 118.4rem; color: rgb(60, 59, 55); font-family: \"sf pro text\", -apple-system, BlinkMacSystemFont, Roboto, \"segoe ui\", Helvetica, Arial, sans-serif, \"apple color emoji\", \"segoe ui emoji\", \"segoe ui symbol\";\">What this course will teach you, is the concept of <strong style=\"margin: 0px; padding: 0px;\">\"Task Management.\"</strong> In other words, it will teach you how to <strong style=\"margin: 0px; padding: 0px;\">accomplish more high value tasks</strong>, so that you <strong style=\"margin: 0px; padding: 0px;\">get a 10X greater return for all of the work you put in every hour.</strong></p><p style=\"margin-top: 0.8rem; font-size: 14px; max-width: 118.4rem; color: rgb(60, 59, 55); font-family: \"sf pro text\", -apple-system, BlinkMacSystemFont, Roboto, \"segoe ui\", Helvetica, Arial, sans-serif, \"apple color emoji\", \"segoe ui emoji\", \"segoe ui symbol\";\">Using the principles of the <strong style=\"margin: 0px; padding: 0px;\">20/80 Rule and Parkinson\'s law,</strong> you will learn how to increase the value of the things you do within your limited time, so that you can have as much as <strong style=\"margin: 0px; padding: 0px;\">200X greater impact from what you do.</strong></p>'),
(7, 2001, 'en', 'Learn and Understand AngularJS', 'Master AngularJS and the Javascript concepts behind it, design custom directives, and build a single page application.', '<p>Angular  is a TypeScript-based free and open-source web application framework led by the Angular Team at Google and by a community of individuals and corporations. Angular is a complete rewrite from the same team that built AngularJS.</p><p><br></p><p>Angular is used as the frontend of the MEAN stack, consisting of MongoDB database, Express.js web application server framework, Angular itself (or AngularJS), and Node.js server runtime environment.</p><p>Knowing <b>AngularJS</b> can get you a job or improve the one you have. It\'s a skill that will put you more in demand in the modern web development industry, and make your web software life easier, that\'s why it\'s so popular and backed by Google.</p><p><br></p><p>This course will get you up and running quickly, and teach you the core knowledge you need to deeply understand and build AngularJS applications - and we\'ll build a single page application along the way.</p><p><br></p><p>We\'ll design custom services, build custom directives, understand two-way binding, design a weather forecast app as a single page application, and lots more. Both starter and finished source code is provided as we go.</p><p><br></p>'),
(8, 2002, 'en', 'Health And Fitness Masterclass', 'Everything In 1 Course: The Right Diet, Workout, Meal Plan, Exercise Motivation, Nutrition, Cardio, Home Workout', '<p>Hi, I\'m Jessica fitness and dieting coach and amazon best selling author. My \"Health & Fitness Masterclass\" is designed for anyone who wants to boost their fitness, no matter if you\'re a beginner, athlete or simply want to live a healthier life.</p><p><br></p><p>This course is not some random program that makes outragous promises and keeps none. Instead I will teach you everything you need to know about the three most important ascpect of fitness: the right diet, the right exercises and the right mindset.</p><p><br></p><p>Unfortunately, the internet is full of false fitness gurus that sell you all kinds of workouts plans and gimmicks that are overpriced and don\'t work. This is why I wanted to create an video course that not only debunks the most common fitness myths but also teaches everything you need to know to reach your goals, be it to lose fat, build muscle or simply live a healthier life. </p><p><br></p><p>All In All The Program Includes Over 60 Lessons On Fitness And Nutrition</p><p><br></p><p>So If You Want To Boost Your Fitness, Feel More Energized And Live A Healthier Life, This Is The Right Course For You</p><p><br></p><p>Learn about proper nutrition, meal planning, healthy eating and a healthy lifestyle. Better meal planning and healthy cooking will help with weight loss, building muscle and overall well being.</p>'),
(9, 2003, 'en', 'Active Listening: You Can Be a Great Listener', 'Improve your reactive habits, define your listening mindset, amplify your curiosity, & add value as a great listener', '<p>Most of us want to get better at talking. But the REAL power tool for influencing others, leading, collaborating, having an impact, and being an an-all-around-better person is Active Listening. While regular listening can look like being blank and silent, Active Listening is engaged, creative, and responsive.</p><p><br></p><p>In this course, you will gain both the internal awareness and external skill-set that are the foundation of Active Listening. You will be able to have far more satisfying, interesting, successful conversations.</p><p><br></p><p>I created this practical  Udemy course for you--filled with my unique insights from starting out as a terrible listener to now being a professional listener, a Master Certified Coach. I’ve been teaching people how to listen actively for twenty years now and these skills are both learnable and priceless. My course is packed with real-world examples that demystify and simplify what to pay attention to so you can be a great listener.</p>'),
(10, 2004, 'en', 'The Future of Energy', 'The Bigger Picture: The Probable Future of Energy', '<p>This course is designed to start you on a new career path towards becoming an Energy Futurist or just out of interest. <b>Energy Futurists</b> earn huge amounts of money as advisors to government, businesses and in-house, using their skills to wisely invest in the future. You don\'t need to do the course on financials or on Micro-renewable energy but they will help you a little.</p><p><br></p><p>This course will solve you several problems in one go: you will know what is viable and what is not on a grander, strategic level, but you will also gain knowledge of many measurements and indicators that are not taught in physics, economics courses or in college or university. This will mean you can stand out from the crowd, with secret knowledge known only to a few Energy Futurists.</p><p><br></p><p>Do you have a curiosity about the future? Are you interested in shaping the future long into the second half of the 21st century?</p><p><br></p><p>If you are you might be ready to become and Energy Futurist? Energy Futurists are specialist that every business should have. They can earn a lot of money, but often the courses they go on never actually tell them what they need to know. They are confined by the need to calculate carbon emissions from their business; or sold an idea that there is nothing we can do about the future. This course however helps you to become a real Energy Futurist with potential of better earnings via writing and blogging about the future of energy.</p><p><br></p><p>This course will teach you the probably future of energy. We consider the evidence of resource depletion; potential solutions, challenges we face in implementing the solutions; and outline 3 possible energy economies, that will be mixed together to hopefully solve the loss of economically available fossil fuels.</p>'),
(11, 2005, 'en', 'Web Design for Beginners', 'Launch a career as a web designer by learning HTML5, CSS3, responsive design, Sass and more!', '<p>You can launch a new career in web development today by learning HTML & CSS. You don\'t need a computer science degree or expensive software. All you need is a computer, a bit of time, a lot of determination, and a teacher you trust. I\'ve taught HTML and CSS to countless coworkers and held training sessions for fortune 100 companies. I am that teacher you can trust. </p><p><br></p><p>Don\'t limit yourself by creating websites with some cheesy “site-builder\" tool. This course teaches you how to take 100% control over your webpages by using the same concepts that every professional website is created with.</p><p><br></p><p>This course does not assume any prior experience. We start at square one and learn together bit by bit. By the end of the course you will have created (by hand) a website that looks great on phones, tablets, laptops, and desktops alike.</p><p><br></p><p>In the summer of 2020 the course has received a new section where we push our website live up onto the web using the free GitHub Pages service; this means you\'ll be able to share a link to what you\'ve created with your friends, family, colleagues and the world!</p>'),
(12, 2006, 'en', 'How to Travel Around the World', 'The Most Complete and Updated Travel Course! Get the Best Travel Tips to Plan your World Trip without breaking the bank!', '<p>Do you want to know how to travel on a budget? Do you think you don\'t have enough money to start your journey?</p><p><br></p><p>I\'m not a content creator making a travel course, I\'m a die-hard traveler, using my spare time this year to help and inspire others to set on a trip abroad. I genuinely want my course to let students realize their dreams.</p><p><br></p><p>In this Course I will teach you everything you need to know to plan your round-the-world trip. You\'ll learn how to stay safe and healthy during your travels while being able to reduce your expenses concerning accommodation, food, transportation and activities.</p><p><br></p><p>After following this course, I can guarantee you will be able to travel the world on anywhere between 1 and 50$ a day, depending on how adventurous you are!</p><p><br></p><p>This course is suitable for any traveler, no matter how much you have traveled before. You\'ll learn tips and ideas I guarantee you have never seen before anywhere else!</p><p><br></p><p>Ready to get started?</p><p><br></p><p>Enroll Now and get immediate access to all the features of this course and my personal feedback.</p><p><br></p><p>I\'ll see you in the course,</p>'),
(13, 2007, 'en', 'Travel Management Course', '#1 Travel Management Course in the Industry .All you need to know to step into the Travel & Tourism Sector.', '<p><b>COURSE DESCRIPTION</b></p><p><br></p><p>The course content is uniquely customized in a way to give each student who participates in this course the best skill orientation and the basic knowledge required to enter the travel and tourism industry. The course is detailed in a way to give the student the best including the skills required.</p><p><br></p><p>Subjects like Basic elements of Travel Geography, World Time ( GMT, International Date Line, Elapsed Time ) and Maps are introduced in e-learning. Also, a look into the documents required like the Passport, Visas and Insurance are also discussed. Departure and Arrival Formalities, Basic Planning of a Holiday are taught. The importance of the technology (CRS) with an introduction to Fares/ E-tickets are also being introduced.</p><p><br></p><p>Two skill-based courses are also included.</p><p><br></p><p>By learning this course you can step into and be a part of the tourism industry which not only generates revenues for a country and cultural wealth, but it is also one of the most important economic engines for growth and development.</p><p><br></p><p><b>Career options :</b></p><p><br></p><p>“Students have endless career opportunities in the fastest growing industry of travel and tourism”.Few of the career options are working in travel agencies, Customer Ground Handling (customer service) at international or domestic airports, tour operator, event manager, ticketing officer, an adventure tourism expert, transport officer, holiday consultant, logistics, cruises, airlines, hotels, and tourism departments in government and private sectors.</p><p><br></p><p><b>Payment:</b></p><p><br></p><p>Salary is pretty good in the travel and tourism industry. Moreover, you get added perks such as free travel or reduced rates for you and your family. Salaries are higher in foreign-based airlines or travel agencies. Peak seasons might bring added bonuses and commission.</p><p><br></p><p><b>CERTIFICATION</b></p><p><br></p><p>Issued and attested by a professional trainer of over 33 years of experience in the travel and tourism industry.</p>'),
(14, 2007, 'es', 'Curso de gestión de viajes', 'Curso de gestión de viajes n.o 1 en la industria. Todo lo que necesita saber para ingresar al sector de viajes y turismo.', '<p>DESCRIPCIÓN DEL CURSO</p><p>El contenido del curso se personaliza de manera única para brindar a cada estudiante que participa en este curso la mejor orientación en habilidades y los conocimientos básicos necesarios para ingresar a la industria de viajes y turismo. El curso está detallado de manera que le brinde al estudiante lo mejor, incluidas las habilidades requeridas.</p><p>Temas como elementos básicos de geografía de viajes, hora mundial (GMT, línea de fecha internacional, tiempo transcurrido) y mapas se introducen en el aprendizaje electrónico. Además, también se analizan los documentos requeridos, como el pasaporte, las visas y el seguro. Se enseñan las formalidades de salida y llegada, la planificación básica de unas vacaciones. También se está introduciendo la importancia de la tecnología (CRS) con una introducción a las tarifas / billetes electrónicos.</p><p>También se incluyen dos cursos basados ​​en habilidades.</p><p><br></p><p>Al aprender este curso, puede ingresar y ser parte de la industria del turismo, que no solo genera ingresos para un país y riqueza cultural, sino que también es uno de los motores económicos más importantes para el crecimiento y el desarrollo.</p><p>Opciones de carrera :</p><p>“Los estudiantes tienen un sinfín de oportunidades profesionales en la industria de viajes y turismo de más rápido crecimiento”. Pocas de las opciones profesionales están trabajando en agencias de viajes, Customer Ground Handling (servicio al cliente) en aeropuertos internacionales o nacionales, tour operador, gerente de eventos, oficial de venta de boletos, un experto en turismo de aventura, oficial de transporte, consultor de vacaciones, logística, cruceros, aerolíneas, hoteles y departamentos de turismo en los sectores público y privado.</p><p>Pago:</p><p>El salario es bastante bueno en la industria de viajes y turismo. Además, obtiene beneficios adicionales, como viajes gratis o tarifas reducidas para usted y su familia. Los salarios son más altos en las aerolíneas o agencias de viajes con base en el extranjero. Las temporadas altas pueden traer bonificaciones y comisiones adicionales.</p><p>CERTIFICACIÓN</p><p>Emitido y certificado por un formador profesional con más de 33 años de experiencia en la industria de viajes y turismo.</p>'),
(15, 2006, 'es', 'Cómo viajar por el mundo', '¡El curso de viaje más completo y actualizado! Obtenga los mejores consejos de viaje para planificar su viaje mundial sin gastar mucho dinero.', '<p>¿Quieres saber cómo viajar con un presupuesto limitado? ¿Crees que no tienes suficiente dinero para comenzar tu viaje?</p><p>No soy un creador de contenido que hace un curso de viaje, soy un viajero empedernido, que uso mi tiempo libre este año para ayudar e inspirar a otros a emprender un viaje al extranjero. Realmente quiero que mi curso permita a los estudiantes realizar sus sueños.</p><p>En este curso te enseñaré todo lo que necesitas saber para planificar tu viaje alrededor del mundo. Aprenderá cómo mantenerse seguro y saludable durante sus viajes mientras puede reducir sus gastos de alojamiento, comida, transporte y actividades.</p><p>Después de seguir este curso, puedo garantizar que podrás viajar por el mundo entre 1 y 50 $ al día, ¡dependiendo de lo aventurero que seas!</p><p>Este curso es adecuado para cualquier viajero, sin importar cuánto haya viajado antes. ¡Aprenderás consejos e ideas que te garantizo que nunca antes has visto en ningún otro lugar!</p><p>Listo para comenzar?</p><p>Inscríbase ahora y obtenga acceso inmediato a todas las funciones de este curso y a mis comentarios personales.</p><p>Te veré en el curso,</p>'),
(16, 2006, 'ar', 'كيف تسافر حول العالم', 'دورة السفر الأكثر اكتمالا وتحديثًا! احصل على أفضل نصائح السفر للتخطيط لرحلتك العالمية دون كسر البنك!', '<p>هل تريد أن تعرف كيف تسافر بميزانية محدودة؟ هل تعتقد أنه ليس لديك ما يكفي من المال لبدء رحلتك؟</p><p><br></p><p>أنا لست منشئ محتوى أقوم بدورة سفر ، فأنا مسافر شديد الصعوبة ، وأستخدم وقت فراغي هذا العام لمساعدة الآخرين وإلهامهم للقيام برحلة إلى الخارج. أريد حقًا أن تسمح مقرري الدراسي للطلاب بتحقيق أحلامهم.</p><p><br></p><p>في هذه الدورة التدريبية ، سوف أعلمك كل ما تحتاج إلى معرفته للتخطيط لرحلتك حول العالم. ستتعلم كيف تحافظ على سلامتك وصحتك أثناء سفرك بينما تكون قادرًا على تقليل نفقاتك المتعلقة بالسكن والطعام والمواصلات والأنشطة.</p><p><br></p><p>بعد اتباع هذه الدورة ، يمكنني أن أضمن أنك ستتمكن من السفر حول العالم في أي مكان يتراوح بين 1 و 50 دولارًا في اليوم ، اعتمادًا على مدى رغبتك في المغامرة!</p><p><br></p><p>هذه الدورة مناسبة لأي مسافر مهما سافرت من قبل. ستتعلم النصائح والأفكار التي أضمن أنك لم ترها من قبل في أي مكان آخر!</p><p><br></p><p><b>على استعداد للبدء؟</b></p><p><br></p><p>سجل الآن واحصل على وصول فوري إلى جميع ميزات هذه الدورة وملاحظاتي الشخصية.</p><p><br></p><p>سأراك في الدورة ،</p>'),
(17, 2005, 'ar', 'تصميم المواقع للمبتدئين', 'ابدأ حياتك المهنية كمصمم ويب من خلال تعلم HTML5 و CSS3 والتصميم سريع الاستجابة و Sass والمزيد!', '<p>يمكنك بدء مهنة جديدة في تطوير الويب اليوم من خلال تعلم HTML &amp; CSS. لست بحاجة إلى درجة علمية في علوم الكمبيوتر أو برامج باهظة الثمن. كل ما تحتاجه هو جهاز كمبيوتر ، وقليل من الوقت ، والكثير من التصميم ، ومعلم تثق به. لقد قمت بتدريس HTML و CSS لعدد لا يحصى من زملاء العمل وعقدت دورات تدريبية لشركات Fortune 100. أنا ذلك المعلم الذي يمكنك الوثوق به.</p><p><br></p><p>لا تقيد نفسك بإنشاء مواقع ويب باستخدام بعض أدوات \"إنشاء مواقع الويب\" المبتذلة. تعلمك هذه الدورة التدريبية كيفية التحكم بنسبة 100٪ في صفحات الويب الخاصة بك باستخدام نفس المفاهيم التي يتم إنشاؤها باستخدام كل موقع ويب احترافي.</p><p><br></p><p>لا تفترض هذه الدورة أي خبرة سابقة. نبدأ من المربع الأول ونتعلم معًا شيئًا فشيئًا. بحلول نهاية الدورة التدريبية ، ستكون قد أنشأت (يدويًا) موقعًا إلكترونيًا يبدو رائعًا على الهواتف والأجهزة اللوحية وأجهزة الكمبيوتر المحمولة وأجهزة الكمبيوتر المكتبية على حدٍ سواء.</p><p><br></p><p>في صيف 2020 ، تلقت الدورة قسماً جديداً حيث نضغط على موقعنا الإلكتروني مباشرة على الويب باستخدام خدمة صفحات GitHub المجانية ؛ هذا يعني أنك ستتمكن من مشاركة رابط لما قمت بإنشائه مع أصدقائك وعائلتك وزملائك والعالم!</p>'),
(18, 2005, 'es', 'Diseño web para principiantes', '¡Inicie una carrera como diseñador web aprendiendo HTML5, CSS3, diseño receptivo, Sass y más!', '<p>Puede iniciar una nueva carrera en el desarrollo web hoy mismo aprendiendo HTML y CSS. No necesitas un título en informática ni un software caro. Todo lo que necesitas es una computadora, un poco de tiempo, mucha determinación y un maestro en quien confíes. He enseñado HTML y CSS a innumerables compañeros de trabajo y he realizado sesiones de formación para empresas de Fortune 100. Soy ese maestro en el que puedes confiar.</p><p>No se limite a crear sitios web con alguna herramienta cursi de \"constructor de sitios\". Este curso le enseña cómo tomar el 100% de control sobre sus páginas web utilizando los mismos conceptos con los que se crean todos los sitios web profesionales.</p><p>Este curso no asume ninguna experiencia previa. Comenzamos en el punto de partida y aprendemos juntos poco a poco. Al final del curso, habrá creado (a mano) un sitio web que se ve muy bien en teléfonos, tabletas, computadoras portátiles y computadoras de escritorio por igual.</p><p>En el verano de 2020, el curso recibió una nueva sección en la que colocamos nuestro sitio web en vivo en la web utilizando el servicio gratuito de páginas de GitHub; esto significa que podrá compartir un enlace a lo que ha creado con sus amigos, familiares, colegas y el mundo.</p>'),
(19, 2004, 'es', 'El futuro de la energía', 'El panorama más amplio: el futuro probable de la energía', '<p>Este curso está diseñado para comenzar en una nueva carrera profesional para convertirse en un futurista energético o simplemente por interés. Los futuristas de la energía ganan enormes cantidades de dinero como asesores del gobierno, las empresas y dentro de la empresa, utilizando sus habilidades para invertir sabiamente en el futuro. No es necesario que hagas el curso de finanzas o de micro energías renovables pero te ayudarán un poco.</p><p>Este curso le resolverá varios problemas de una sola vez: sabrá qué es viable y qué no en un nivel estratégico más amplio, pero también obtendrá conocimiento de muchas medidas e indicadores que no se enseñan en los cursos de física, economía o en colegio o universidad. Esto significará que puede destacarse entre la multitud, con un conocimiento secreto conocido solo por unos pocos futuristas de la energía.</p><p>Tienes curiosidad por el futuro? ¿Está interesado en dar forma al futuro en la segunda mitad del siglo XXI?</p><p>Si es así, ¿podría estar listo para convertirse en un futurista energético? Los futuristas de la energía son especialistas que toda empresa debería tener. Pueden ganar mucho dinero, pero a menudo los cursos a los que asisten nunca les dicen lo que necesitan saber. Están limitados por la necesidad de calcular las emisiones de carbono de su negocio; o vendí una idea de que no hay nada que podamos hacer sobre el futuro. Sin embargo, este curso lo ayuda a convertirse en un verdadero futurista de la energía con el potencial de obtener mejores ganancias escribiendo y escribiendo en blogs sobre el futuro de la energía.</p><p>Este curso le enseñará el futuro probable de la energía. Consideramos la evidencia del agotamiento de los recursos; posibles soluciones, desafíos que enfrentamos en la implementación de las soluciones; y delinear 3 posibles economías energéticas, que se combinarán para resolver, con suerte, la pérdida de combustibles fósiles económicamente disponibles.</p>'),
(20, 2004, 'ar', 'مستقبل الطاقة', 'الصورة الأكبر: المستقبل المحتمل للطاقة', '<p>تم تصميم هذه الدورة لتبدأ في مسار وظيفي جديد نحو أن تصبح مستقبليًا في مجال الطاقة أو مجرد اهتمام. يكسب المستقبليون في مجال الطاقة مبالغ ضخمة من المال كمستشارين للحكومة والشركات وداخل الشركة ، مستخدمين مهاراتهم للاستثمار بحكمة في المستقبل. لا تحتاج إلى إجراء الدورة التدريبية حول الشؤون المالية أو الطاقة المتجددة الصغيرة ولكنها ستساعدك قليلاً.</p><p><br></p><p>ستحل لك هذه الدورة العديد من المشكلات دفعة واحدة: ستعرف ما هو قابل للتطبيق وما هو ليس على مستوى استراتيجي أعظم ، ولكنك ستكتسب أيضًا معرفة بالعديد من القياسات والمؤشرات التي لم يتم تدريسها في دورات الفيزياء أو الاقتصاد أو في الكلية أو الجامعة. هذا يعني أنه يمكنك التميز من بين الحشود ، بمعرفة سرية لا يعرفها سوى عدد قليل من مستقبلي الطاقة.</p><p><br></p><p>هل لديك فضول حول المستقبل؟ هل أنت مهتم بتشكيل المستقبل في النصف الثاني من القرن الحادي والعشرين؟</p><p><br></p><p>إذا كنت قد تكون مستعدًا لتصبح مستقبليًا للطاقة؟ مستقبلي الطاقة متخصصون في كل عمل تجاري. يمكنهم كسب الكثير من المال ، ولكن في كثير من الأحيان لا تخبرهم الدورات التدريبية التي يذهبون إليها في الواقع بما يحتاجون إلى معرفته. إنهم مقيدون بالحاجة إلى حساب انبعاثات الكربون من أعمالهم ؛ أو باع فكرة أنه لا يوجد ما يمكننا فعله بشأن المستقبل. ومع ذلك ، تساعدك هذه الدورة على أن تصبح مستقبليًا حقيقيًا للطاقة مع إمكانية تحقيق أرباح أفضل من خلال الكتابة والتدوين حول مستقبل الطاقة.</p><p><br></p><p>ستعلمك هذه الدورة التدريبية مستقبل الطاقة المحتمل. نحن نعتبر الدليل على نضوب الموارد ؛ الحلول المحتملة والتحديات التي نواجهها في تنفيذ الحلول ؛ وحدد 3 اقتصادات طاقة محتملة ، والتي سيتم دمجها معًا على أمل حل مشكلة فقدان الوقود الأحفوري المتاح اقتصاديًا.</p>');
INSERT INTO `webinar_translations` (`id`, `webinar_id`, `locale`, `title`, `seo_description`, `description`) VALUES
(21, 1999, 'ar', 'كيفية إدارة والتأثير على فريقك الافتراضي', 'تعرف على نصائح خطوة بخطوة تساعدك على إنجاز المهام مع فريقك الافتراضي من خلال زيادة الثقة والمساءلة', '<p style=\"text-align: right; \">إذا كنت تدير فريقًا افتراضيًا اليوم ، فمن المحتمل أن تستمر في القيام بذلك لبقية حياتك المهنية.</p><p style=\"text-align: right; \">إذا لم تقم بذلك ، فمن المحتمل أن تفعل ذلك قريبًا.</p><p style=\"text-align: right; \">إن تعلم كيفية إدارة الأشخاص الذين لا تراهم وجهًا لوجه هو مهارة مهمة تحتاجها بغض النظر عن الصناعة التي تعمل فيها. لقد أدى وباء الفيروس التاجي (COVID-19) أيضًا إلى تسريع الحاجة إلى إدارة الأشخاص الذين يعملون من المنزل ، حيث أصبح العمل عن بعد هو القاعدة.</p><p style=\"text-align: right; \">من خلال \"كيفية إدارة فريقك الافتراضي والتأثير عليه\" ستتعلم الأسرار النفسية للإقناع والتواصل التي تؤثر على أعضاء فريقك الافتراضي للقيام بما تريد منهم القيام به.</p><p style=\"text-align: right; \">ستساعدك الدورة أيضًا على زيادة مستوى الثقة والمساءلة بين أعضاء فريقك مع تقليل الوقت الذي تقضيه في الاجتماعات المحبطة ، وأدوات التكنولوجيا غير المجدية ، ورسائل البريد الإلكتروني المتبادلة.</p><p style=\"text-align: right; \">في نهاية كل محاضرة في الدورة ، ستحصل على خطوات محددة وقابلة للتنفيذ يمكنك تنفيذها على الفور.</p><p style=\"text-align: right; \">بالإضافة إلى ذلك ، ستحصل أيضًا على نماذج نصية وقوالب قابلة للتنزيل يمكنك ببساطة نسخها ولصقها واستخدامها مع فريقك الافتراضي.</p><p style=\"text-align: right; \">تحتوي الدورة على الأقسام التالية:</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">• سيكولوجية الاتصال في الفرق الافتراضية: استراتيجيات نفسية للتواصل الفعال مع فريقك وتقليل الغموض وسوء التواصل</p><p style=\"text-align: right; \">• مبادئ تغيير السلوك: أربعة مبادئ إستراتيجية ستغير سلوك فريقك لإنجاز الأمور</p><p style=\"text-align: right; \">• تكتيكات التأثير والإقناع: تكتيكات خطوة بخطوة تؤثر على أعضاء فريقك للقيام بما تريد منهم القيام به</p><p style=\"text-align: right; \">• إدارة الاجتماعات الافتراضية بشكل فعال: كيفية عقد اجتماعات أقل مع زيادة فعاليتها في نفس الوقت</p><p style=\"text-align: right; \">• اختيار وتقييم التكنولوجيا الصحيحة: إطار عمل بسيط لاختيار وتقييم أدوات التكنولوجيا المناسبة لاستخدامها مع فرقك الافتراضية</p><p style=\"text-align: right; \">• بناء الثقة في البيئات الافتراضية: مخطط منهجي لزيادة مستوى الثقة بين فريقك الافتراضي</p><p style=\"text-align: right; \">• تقنيات البريد الإلكتروني والهاتف القاتلة: تقنيات البريد الإلكتروني والهاتف القوية التي يمكنك استخدامها للتأثير على أعضاء فريقك الافتراضي</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">ما هو الاختلاف في هذه الدورة؟</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">هناك العديد من الدورات التدريبية حول إدارة الفرق الافتراضية. فيما يلي ثلاثة أسباب لاختلاف هذا</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">السبب الأول: التكتيكات وليس الاستراتيجيات فقط</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">تركز معظم الدورات التدريبية حول الفرق الافتراضية على الاستراتيجيات والنظريات عالية المستوى.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">القليل منها يمنحك في الواقع التكتيكات التي تحتاجها لتنفيذ هذه الاستراتيجيات.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">في هذه الدورة ، سأوضح لك كيفية تطبيق أساليب الإدارة على حالتك الخاصة. ستحصل على تقنيات ونصوص خطوة بخطوة ستوفر لك الكثير من الوقت في إدارة فريقك الافتراضي.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">بمعنى آخر ، ستحصل على إجابات لكل من هذين السؤالين:</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">&nbsp; -ما الذي أنا بحاجة لفعله؟</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">&nbsp; -كيف فعلتها؟</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">علاوة على ذلك ، يحتوي كل مقطع فيديو أيضًا على شريحة \"ملخص الإجراءات\" في النهاية تلخص محاضرة الدورة التدريبية لك ، وتخبرك بالضبط بما عليك القيام به كخطوة تالية. بشكل أساسي ، ستتعلم كل شيء عن إدارة الفريق الافتراضية في خطوات بسيطة.</p>'),
(22, 1999, 'es', 'Cómo administrar e influir en su equipo virtual', 'Aprenda consejos paso a paso que lo ayudarán a hacer las cosas con su equipo virtual al aumentar la confianza y la responsabilidad.', '<p>Si administra un equipo virtual hoy, probablemente continuará haciéndolo durante el resto de su carrera.</p><p>Si no lo hace, probablemente lo hará pronto.</p><p>Aprender a manejar personas que no ve cara a cara es una habilidad importante que necesita independientemente de la industria en la que se encuentre. La pandemia de coronavirus (COVID-19) también ha acelerado la necesidad de administrar personas que trabajan desde casa, ya que el teletrabajo se convirtió en la norma.</p><p>Con \"Cómo administrar e influir en su equipo virtual\", aprenderá los secretos psicológicos de la persuasión y la comunicación que influyen en los miembros de su equipo virtual para que hagan lo que usted necesita.</p><p>El curso también lo ayudará a aumentar el nivel de confianza y responsabilidad entre los miembros de su equipo mientras reduce el tiempo que dedica a reuniones frustrantes, herramientas tecnológicas inútiles y correos electrónicos de ida y vuelta.</p><p>Al final de cada conferencia del curso, obtendrá pasos específicos y prácticos que puede implementar de inmediato.</p><p>Además, también obtendrá scripts y plantillas de muestra descargables que puede simplemente copiar, pegar y usar con su propio equipo virtual.</p><p>El curso contiene las siguientes secciones:</p><p>• La psicología de la comunicación en equipos virtuales: estrategias psicológicas para comunicarse eficazmente con su equipo y reducir la ambigüedad y la falta de comunicación</p><p>• Principios de cambio de comportamiento: cuatro principios estratégicos que cambiarán el comportamiento de su equipo para hacer las cosas.</p><p>• Tácticas de influencia y persuasión: tácticas paso a paso que influyen en los miembros de su equipo para hacer lo que necesita que hagan.</p><p>• Gestionar reuniones virtuales de forma eficaz: cómo tener menos reuniones y, al mismo tiempo, aumentar su eficacia.</p><p>• Elección y evaluación de la tecnología adecuada: un marco simple para elegir y evaluar las herramientas tecnológicas adecuadas para usar con sus equipos virtuales.</p><p>• Generar confianza en entornos virtuales: un plan metódico para aumentar el nivel de confianza entre su equipo virtual</p><p>• Técnicas asesinas de correo electrónico y teléfono: potentes técnicas de correo electrónico y teléfono que puede utilizar para influir en los miembros de su equipo virtual</p><p>¿Qué tiene de diferente este curso?</p><p>Hay muchos cursos sobre la gestión de equipos virtuales. Aquí hay tres razones por las que esta es diferente.</p><p><br></p><p>Razón n. ° 1: tácticas, no solo estrategias</p><p>La mayoría de los cursos sobre equipos virtuales se centran en estrategias y teorías de alto nivel.</p><p>Muy pocos realmente le brindan las tácticas que necesita para implementar esas estrategias.</p><p>En este curso, le mostraré cómo aplicar las tácticas de gestión a su propia situación. Obtendrá técnicas y scripts paso a paso que le ahorrarán mucho tiempo en la gestión de su equipo virtual.</p><p>En otras palabras, obtendrá respuestas a ambas preguntas:</p><p>&nbsp; -Que necesito hacer?</p><p>&nbsp; -Cómo lo hago?</p><p><br></p><p>Además, cada video también tiene una diapositiva de \"Resumen de acciones\" al final que resume la conferencia del curso para usted y le dice exactamente lo que debe hacer como siguiente paso. Básicamente, aprenderá todo sobre la administración de equipos virtuales en pasos sencillos.</p>'),
(23, 1995, 'es', 'Conviértete en gerente de producto', 'El curso más completo disponible sobre Gestión de productos.', '<p>¡El curso de gestión de productos más actualizado y completo de Udemy! Aprenderá las habilidades que componen todo el trabajo y el proceso de Gestión de productos: desde la ideación hasta la investigación de mercado, pasando por el wireframing de UX, la creación de prototipos, la tecnología, las métricas y, finalmente, la creación del producto con historias de usuario, gestión de proyectos, alcance y liderazgo. . Incluso tenemos entrevistas con PM de la vida real, sesiones de preguntas y respuestas con estudiantes y una guía completa para prepararse y entrevistarse para un trabajo de Gestión de productos.</p><p>En este momento, hay más de 3,000 ofertas de trabajo en todo el mundo que buscan gerentes de producto, que pagan un promedio de $ 100,000 al año.</p><p>La demanda de gestión de productos está aumentando a un ritmo increíble. Cada vez más empresas están descubriendo finalmente la importancia de esta disciplina y este papel para su éxito.</p><p><br></p><p>Pero, ¿cómo se introduce exactamente en el campo? No hay títulos en Gestión de Productos y no hay certificaciones. La mayoría de los gerentes de producto entran en el campo por suerte o por conexiones. Eso termina aquí: lo pondremos al día sobre TODAS las habilidades que necesita para aprender Gestión de productos Y tener la mejor oportunidad de obtener el trabajo que desea. No hay más ambigüedad en eso. Le mostraremos lo que necesita saber y lo que tiene que hacer, todo ello impartido por un experto en gestión de productos.</p><p><br></p><p>No se requiere que los estudiantes sepan nada de antemano: le enseñaremos los fundamentos, cómo aplicarlos, cómo convertirse en un gerente de producto avanzado y, finalmente, cómo maximizar sus posibilidades de conseguir un trabajo como gerente de producto.</p><p><b>Tus instructores:</b></p><p>Cole Mercer ha sido gerente sénior de productos en Soundcloud, Bonobos, Mass Relevance y ha impartido el curso de gestión de productos en la Asamblea General en Manhattan, Nueva York.</p><p>Evan Kimbrell es un instructor de Udemy de primer nivel con 11 cursos sobre todo lo relacionado con el espíritu empresarial. Sus cursos tienen más de 35,000 estudiantes, más de 1,000 reseñas de 5 estrellas y una calificación promedio de 4.9 / 5.0.</p>'),
(24, 1995, 'ar', 'كن مدير منتج', 'الدورة التدريبية الأكثر اكتمالا المتاحة في إدارة المنتج.', '<p>أحدث دورة تدريبية في إدارة المنتجات على موقع Udemy! ستتعلم المهارات التي تشكل وظيفة إدارة المنتج بالكامل والعملية: من التفكير إلى أبحاث السوق ، إلى الإطار الشبكي لتجربة المستخدم إلى النماذج الأولية والتكنولوجيا والمقاييس ، وأخيراً بناء المنتج بقصص المستخدم وإدارة المشروع وتحديد النطاق والقيادة . لدينا أيضًا مقابلات مع مديري إدارة حقيقيين ، وجلسات أسئلة وأجوبة مع الطلاب ، ودليل شامل للتحضير وإجراء المقابلات لوظيفة إدارة المنتج.</p><p><br></p><p>في الوقت الحالي ، هناك أكثر من 3000+ قائمة وظائف في جميع أنحاء العالم تبحث عن مديري المنتجات ، الذين يدفعون في المتوسط ​​100000 دولار في السنة.</p><p><br></p><p>يتزايد الطلب على إدارة المنتجات بمعدل مجنون. المزيد والمزيد من الشركات تكتشف أخيرًا مدى أهمية هذا الانضباط وهذا الدور لنجاحها.</p><p><br></p><p>لكن كيف بالضبط تدخل الميدان؟ لا توجد درجات علمية في إدارة المنتجات ولا توجد شهادات. يدخل معظم مديري المنتجات إلى الميدان من خلال الحظ أو الاتصالات. ينتهي هذا هنا - سنطلعك على كل ما هو جديد في جميع المهارات التي تحتاجها لتعلم إدارة المنتج ولديك أفضل فرصة للحصول على الوظيفة التي تريدها. لم يعد هناك غموض في ذلك. سنعرض لك ما تحتاج إلى معرفته وما عليك القيام به - كل ذلك يتم تدريسه من داخل إدارة المنتج.</p><p>لا يُطلب من الطلاب معرفة أي شيء مسبقًا - سنعلمك الأساسيات ، وكيفية تطبيقها ، وكيفية التطور إلى مدير منتج متقدم ، وأخيرًا كيفية تعظيم فرصك في الحصول على وظيفة كمدير منتج.</p><p>معلموك:</p><p>كان كول ميرسر مديرًا أول للمنتجات في Soundcloud ، Bonobos ، Mass الصلة ، وقام بتدريس دورة إدارة المنتجات في الجمعية العامة في مانهاتن ، نيويورك.</p><p>Evan Kimbrell هو مدرب Udemy الأعلى تقييمًا ولديه 11 دورة في كل شيء ريادة الأعمال. تضم دوراته أكثر من 35000 طالب و 1،000+ تقييم 5 نجوم ومتوسط ​​تقييم 4.9 / 5.0.</p>'),
(25, 2003, 'ar', 'الاستماع النشط: يمكنك أن تكون مستمعًا جيدًا', 'قم بتحسين عاداتك التفاعلية ، وحدد عقلية الاستماع لديك ، وقم بتضخيم فضولك ، وإضافة قيمة كمستمع رائع', '<p style=\"text-align: right; \">يرغب معظمنا في التحسن في الحديث. لكن أداة القوة الحقيقية للتأثير على الآخرين ، والقيادة ، والتعاون ، وإحداث تأثير ، وكونك شخصًا أفضل في كل مكان هي الاستماع النشط. في حين أن الاستماع المنتظم يمكن أن يبدو فارغًا وصامتًا ، فإن الاستماع النشط نشط ومبدع وسريع الاستجابة.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">في هذه الدورة ، ستكتسب كلاً من الوعي الداخلي ومجموعة المهارات الخارجية التي تشكل أساس الاستماع النشط. ستكون قادرًا على إجراء محادثات أكثر إرضاءً وإثارةً ونجاحًا.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">لقد أنشأت دورة Udemy العملية هذه من أجلك - مليئة بآرائي الفريدة من البداية كمستمع رهيب إلى أن أصبح الآن مستمعًا محترفًا ، ومدربًا معتمدًا. لقد قمت بتعليم الناس كيفية الاستماع بنشاط لمدة عشرين عامًا حتى الآن وهذه المهارات قابلة للتعلم ولا تقدر بثمن. الدورة التدريبية الخاصة بي مليئة بأمثلة من العالم الحقيقي تزيل الغموض عن ما يجب الانتباه إليه وتبسطه حتى تكون مستمعًا جيدًا.</p>'),
(26, 2003, 'es', 'Escucha activa: puedes ser un gran oyente', 'Mejore sus hábitos reactivos, defina su mentalidad de escucha, amplifique su curiosidad y agregue valor como un gran oyente', '<p>La mayoría de nosotros queremos mejorar al hablar. Pero la verdadera herramienta poderosa para influir en los demás, liderar, colaborar, tener un impacto y ser una persona mejor en todos los aspectos es la escucha activa. Si bien la escucha regular puede parecer en blanco y en silencio, la escucha activa es comprometida, creativa y receptiva.</p><p>En este curso, obtendrá tanto la conciencia interna como el conjunto de habilidades externas que son la base de la escucha activa. Podrá tener conversaciones mucho más satisfactorias, interesantes y exitosas.</p><p>Creé este curso práctico de Udemy para ti, lleno de mis conocimientos únicos desde que comencé como un oyente terrible hasta que ahora soy un oyente profesional, un Master Certified Coach. He estado enseñando a la gente a escuchar activamente durante veinte años y estas habilidades se pueden aprender y no tienen precio. Mi curso está repleto de ejemplos del mundo real que desmitifican y simplifican a qué prestar atención para que pueda ser un gran oyente.</p>'),
(27, 2002, 'es', 'Masterclass de salud y fitness', 'Todo en 1 curso: la dieta adecuada, entrenamiento, plan de comidas, motivación para el ejercicio, nutrición, cardio, entrenamiento en casa', '<p>Hola, soy Jessica, entrenadora de fitness y dietas, y autora de best sellers de Amazon. Mi \"Clase magistral de salud y estado físico\" está diseñada para cualquier persona que quiera mejorar su estado físico, sin importar si es un principiante, un atleta o simplemente quiere vivir una vida más saludable.</p><p>Este curso no es un programa aleatorio que hace promesas escandalosas y no cumple ninguna. En su lugar, le enseñaré todo lo que necesita saber sobre los tres aspectos más importantes del fitness: la dieta adecuada, los ejercicios adecuados y la mentalidad adecuada.</p><p>Desafortunadamente, Internet está lleno de falsos gurús del fitness que te venden todo tipo de planes de entrenamiento y trucos que son demasiado caros y no funcionan. Es por eso que quería crear un curso en video que no solo desacredite los mitos más comunes del fitness, sino que también enseñe todo lo que necesita saber para alcanzar sus objetivos, ya sea para perder grasa, desarrollar músculo o simplemente vivir una vida más saludable.</p><p>En general, el programa incluye más de 60 lecciones sobre fitness y nutrición</p><p>Entonces, si desea mejorar su estado físico, sentirse con más energía y vivir una vida más saludable, este es el camino correcto para usted.</p><p><br></p><p><br></p><p>Aprenda sobre nutrición adecuada, planificación de comidas, alimentación saludable y estilo de vida saludable. Una mejor planificación de las comidas y una cocina saludable ayudarán a perder peso, desarrollar músculos y bienestar general.</p>'),
(28, 2002, 'ar', 'دروس متقدمة في الصحة واللياقة البدنية', 'كل شيء في دورة واحدة: النظام الغذائي الصحيح ، التمرين ، خطة الوجبة ، الحافز التمرين ، التغذية ، القلب ، التمارين المنزلية', '<p style=\"text-align: right; \">مرحبًا ، أنا جيسيكا مدرب اللياقة البدنية والنظام الغذائي والمؤلف الأكثر مبيعًا في أمازون. صُممت \"دروس الصحة واللياقة البدنية\" الخاصة بي لأي شخص يرغب في تعزيز لياقته ، بغض النظر عما إذا كنت مبتدئًا أو رياضيًا أو تريد ببساطة أن تعيش حياة أكثر صحة.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">هذه الدورة ليست برنامجًا عشوائيًا يقدم وعودًا فظيعة ولا يحافظ على أي منها. بدلاً من ذلك ، سأعلمك كل ما تحتاج لمعرفته حول أهم ثلاثة محاور للياقة البدنية: النظام الغذائي الصحيح ، والتمارين الصحيحة والعقلية الصحيحة.</p><p style=\"text-align: right; \">لسوء الحظ ، الإنترنت مليء بمعلمي اللياقة البدنية الزائفين الذين يبيعون لك جميع أنواع خطط التدريبات والحيل التي تكون باهظة الثمن ولا تعمل. لهذا السبب أردت إنشاء دورة فيديو لا تكشف فقط زيف خرافات اللياقة الأكثر شيوعًا ولكنها تعلم أيضًا كل ما تحتاج إلى معرفته للوصول إلى أهدافك ، سواء كان ذلك لفقدان الدهون أو بناء العضلات أو ببساطة عيش حياة أكثر صحة.</p><p style=\"text-align: right; \">الكل في الكل يشتمل البرنامج على أكثر من 60 درسًا في اللياقة البدنية والتغذية</p><p style=\"text-align: right; \">لذلك إذا كنت ترغب في تعزيز لياقتك ، وتشعر بمزيد من النشاط والعيش حياة أكثر صحة ، فهذا هو المسار الصحيح لك</p><p style=\"text-align: right; \">تعرف على التغذية السليمة وتخطيط الوجبات والأكل الصحي ونمط الحياة الصحي. يساعد التخطيط الأفضل للوجبات والطهي الصحي على إنقاص الوزن وبناء العضلات والرفاهية بشكل عام.</p>'),
(29, 2001, 'ar', 'تعلم وافهم AngularJS', 'Master AngularJS ومفاهيم Javascript وراءها ، وتصميم توجيهات مخصصة ، وإنشاء تطبيق صفحة واحدة.', '<p style=\"text-align: right; \">Angular هو إطار عمل لتطبيق ويب مجاني ومفتوح المصدر يعتمد على TypeScript بقيادة فريق Angular في Google ومجتمع من الأفراد والشركات. Angular هي إعادة كتابة كاملة من نفس الفريق الذي بنى AngularJS.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">يتم استخدام Angular كواجهة أمامية لمكدس MEAN ، والذي يتكون من قاعدة بيانات MongoDB ، وإطار عمل خادم تطبيق الويب Express.js ، و Angular نفسه (أو AngularJS) ، وبيئة تشغيل خادم Node.js.</p><p style=\"text-align: right; \">يمكن أن توفر لك معرفة AngularJS وظيفة أو تحسين الوظيفة التي لديك. إنها مهارة ستجعلك أكثر طلبًا في صناعة تطوير الويب الحديثة ، وتجعل حياة برامج الويب أسهل ، ولهذا السبب تحظى بشعبية كبيرة وتدعمها Google.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">ستساعدك هذه الدورة التدريبية على العمل بسرعة ، وتعلمك المعرفة الأساسية التي تحتاجها لفهم وبناء تطبيقات AngularJS بعمق - وسننشئ تطبيقًا من صفحة واحدة على طول الطريق.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">سنقوم بتصميم خدمات مخصصة ، وإنشاء توجيهات مخصصة ، وفهم الربط ثنائي الاتجاه ، وتصميم تطبيق توقعات الطقس كتطبيق صفحة واحدة ، وغير ذلك الكثير. يتم توفير كل من كود المصدر المبدئي والنهائي كما نذهب.</p>'),
(30, 2001, 'es', 'Aprenda y comprenda AngularJS', 'Domine AngularJS y los conceptos de Javascript detrás de él, diseñe directivas personalizadas y cree una aplicación de una sola página.', '<p>Angular es un marco de aplicación web gratuito y de código abierto basado en TypeScript dirigido por el equipo de Angular en Google y por una comunidad de individuos y corporaciones. Angular es una reescritura completa del mismo equipo que construyó AngularJS.</p><p>Angular se utiliza como la interfaz de la pila MEAN, que consta de la base de datos MongoDB, el marco del servidor de aplicaciones web Express.js, el propio Angular (o AngularJS) y el entorno de tiempo de ejecución del servidor Node.js.</p><p>Conocer AngularJS puede conseguirle un trabajo o mejorar el que tiene. Es una habilidad que aumentará su demanda en la industria del desarrollo web moderno y facilitará la vida de su software web, por eso es tan popular y cuenta con el respaldo de Google.</p><p>Este curso lo pondrá en funcionamiento rápidamente y le enseñará el conocimiento básico que necesita para comprender y construir aplicaciones AngularJS en profundidad, y construiremos una aplicación de una sola página a lo largo del camino.</p><p>Diseñaremos servicios personalizados, crearemos directivas personalizadas, comprenderemos el enlace bidireccional, diseñaremos una aplicación de pronóstico del tiempo como una aplicación de una sola página y mucho más. Tanto el código fuente inicial como el final se proporcionan a medida que avanzamos.</p>'),
(31, 2000, 'es', 'Gestión eficaz del tiempo', 'Cómo los empresarios y los propietarios de pequeñas empresas pueden hacer 10 veces más en la mitad del tiempo', '<p>Si alguna vez ha tomado un curso de administración del tiempo, probablemente se haya enfrentado a la frustración de tratar de administrar mejor su tiempo y no tener éxito.</p><p>Esto se debe a que la gestión del tiempo es un mito.</p><p>Lo que este curso le enseñará es el concepto de \"Gestión de tareas\". En otras palabras, le enseñará cómo realizar tareas de mayor valor, de modo que obtenga un rendimiento 10 veces mayor por todo el trabajo que realiza cada hora.</p><p>Usando los principios de la regla 20/80 y la ley de Parkinson, aprenderá cómo aumentar el valor de las cosas que hace dentro de su tiempo limitado, de modo que pueda tener un impacto hasta 200 veces mayor de lo que hace.</p>'),
(32, 2000, 'ar', 'ادارة الوقت بفاعلية', 'كيف يمكن لرواد الأعمال وأصحاب الأعمال الصغيرة إنجاز 10 أضعاف في نصف الوقت', '<p style=\"text-align: right; \">إذا سبق لك أن درست دورة في إدارة الوقت ، فمن المحتمل أنك واجهت الإحباط من محاولتك إدارة وقتك بشكل أفضل وعدم النجاح.</p><p style=\"text-align: right; \">هذا لأن إدارة الوقت هي خرافة.</p><p style=\"text-align: right; \">ما ستعلمك إياه هذه الدورة هو مفهوم \"إدارة المهام\". بعبارة أخرى ، ستعلمك كيفية إنجاز المزيد من المهام ذات القيمة العالية ، بحيث تحصل على عائد أكبر بعشر مرات مقابل كل العمل الذي تقوم به في كل ساعة.</p><p style=\"text-align: right; \">باستخدام مبادئ قاعدة 20/80 وقانون باركنسون ، ستتعلم كيفية زيادة قيمة الأشياء التي تقوم بها في غضون وقتك المحدود ، بحيث يكون لديك تأثير أكبر بما يصل إلى 200 ضعف مما تفعله.</p>'),
(33, 1998, 'ar', 'مايكروسوفت اكسل من المبتدئين إلى المتقدمين', 'تفوق مع دورة مايكروسوفت إكسل من الألف إلى الياء', '<p style=\"text-align: right; \">مايكروسوفت اكسل كلها في حزمة واحدة</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">تجمع دورة Microsoft Excel هذه بين 4 دورات مختلفة.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">• Microsoft Excel 101 - مقدمة لبرنامج Excel</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">• Microsoft Excel 102 - المستوى المتوسط ​​Excel</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">• Microsoft Excel 103 - المستوى المتقدم Excel</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">• إتقان Microsoft Excel Macros و VBA في 6 مشاريع بسيطة</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">المواد مسجلة في Excel 2013 ولكنها تعمل في 2010 ، 2013 ، 2016 ، 2019 (Office 365)</p><p style=\"text-align: right; \">مراجعة الطالب الأخيرة</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">• \"أنت يا سيدي منقذ للحياة. ليس كل شخص لديه القدرة على التدريس. شكرًا جزيلاً لك على الوقت الذي قضيته في إعداد دورة رائعة يا أخي. إذا كان أي شخص يشك في شراء هذه الدورة ، فلا تشك في ذلك ، اشتريها. أنا لقد تعلمت الكثير في هذه الدورة. أتمنى أن تكون هناك المزيد من الدورات التدريبية في الطريق لأنني سأشتري كل واحدة منها. شكرًا مرة أخرى يا أخي. بارك الله فيك وعائلتك. \"</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">• \"\" يسعدني أن أقول إنني الآن \"أعرف\" التفوق. أدرك أن هناك الكثير لنتعلمه ، لكنها بداية! شكرًا لك لكونك معلمًا رائعًا ... الآن إلى الفصل التالي. \"</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">• \"نشكرك على الدورة التدريبية التي تم إعدادها بشكل جيد. تم تنظيم تقدم الموضوعات بشكل جيد وكان الجزء المتعلق بـ Macro و VBA جديدًا بالنسبة لي. يعد Excel أداة قوية حقًا ويستحق معرفة جميع جوانبها. لقد قام Kyle بعمل جيد في موضحا لهم \".</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">سجل الآن لتصفح أكثر أدوات جداول البيانات شيوعًا في السوق ، Microsoft Excel. بصفتي مدرسك ، سأستخدم تدريبي على Excel لمدة 15 عامًا أو أكثر لإرشادك خطوة بخطوة خلال المستوى المبتدئ إلى المستوى المتقدم وما بعده.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">أثناء مشاركتك في كل دورة من الدورات الأربع ، ستتقن أدوات Excel التي ستزيل ألم التعثر في مهامك اليومية. ستبدأ بالأساسيات ، وتبني أساسًا متينًا يمنحك مزيدًا من المعرفة أثناء تقدمك في موضوعات المستوى المتوسط ​​والمتقدم.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">عند الانتهاء من هذه الدورة التدريبية ، ستكون قد أتقنت أكثر أدوات Excel شيوعًا وستخرج بثقة لإكمال أي مهام Excel بكفاءة ورشاقة. فيما يلي عدد قليل من الموضوعات التي ستتقنها:</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">• إنشاء جداول بيانات فعالة</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">• إدارة مجموعات كبيرة من البيانات</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">• إتقان استخدام بعض وظائف Excel الأكثر شيوعًا والمطلوبة بشدة (SUM و VLOOKUP و IF و AVERAGE و INDEX / MATCH وغيرها الكثير ...)</p><p style=\"text-align: right; \">• إنشاء تقرير ديناميكي باستخدام Excel PivotTables</p><p style=\"text-align: right; \">• أطلق العنان لقوة وتنوع الوظائف الإضافية لبرنامج Microsoft Excel ، PowerPivot</p><p style=\"text-align: right; \">• تدقيق صيغ ورقة عمل Excel لضمان الصيغ النظيفة</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">• أتمتة مهام Excel اليومية الخاصة بك عن طريق إتقان قوة وحدات الماكرو و VBA</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">إذن ، ما الذي تنتظره ، قم بالتسجيل الآن واتخاذ الخطوة التالية في إتقان Excel وانتقل من Excel Newb إلى Excel Guru!</p>'),
(34, 1996, 'ar', 'تعلم لينكس في خمسة أيام', 'استخدم مهارات Linux المطلوبة التي تتعلمها في هذه الدورة للحصول على ترقية أو بدء مهنة جديدة كمحترف Linux.', '<p style=\"text-align: right; \">إذا كنت تريد معرفة كيفية استخدام Linux والارتقاء بمستوى حياتك المهنية ولكنك مضغوط للوقت ، فتابع القراءة. أهلا. اسمي جيسون كانون وأنا مؤلف Linux للمبتدئين وكذلك مؤسس أكاديمية تدريب Linux. عندما أطلب من الناس أن يخبروني ما هو التحدي الأكبر الذي يواجههم في تعلم Linux ، فإنهم جميعًا يقولون نفس الشيء: الوقت.</p><p style=\"text-align: right; \">لهذا السبب قمت بإنشاء هذه الدورة. أعطني 45 دقيقة فقط يوميًا لمدة 5 أيام قادمة وسأعلمك بالضبط ما تحتاج إلى معرفته حول نظام التشغيل Linux. ستتعلم أهم المفاهيم والأوامر ، وسأرشدك خطوة بخطوة عبر العديد من الأمثلة العملية والواقعية.</p><p style=\"text-align: right; \">لذا ، إذا كان بإمكانك تخصيص بضع دقائق يوميًا وترغب في معرفة تفاصيل نظام التشغيل Linux ، فقم بالانضمام إلي والطلاب الآخرين في هذه الدورة التدريبية اليوم.</p><p style=\"text-align: right; \">مكافأة مجانية - كيفية تثبيت WordPress على نظام Linux الخاص بك</p><p style=\"text-align: right; \">كمكافأة إضافية للتسجيل في دورة فيديو Learn Linux in 5 Days التدريبية ، ستتلقى قائمة تحقق خطوة بخطوة وفيديو يعلمك كيفية تثبيت WordPress على نظام Ubuntu Linux. أولاً ، ستتعرف على البرنامج المطلوب لتشغيل WordPress على نظام Linux. بعد ذلك ، ستحصل على الأوامر الدقيقة لكتابة تثبيت جميع البرامج المطلوبة و WordPress.</p><p style=\"text-align: right; \">ستتعلم كيفية تثبيت خادم الويب ، وكيفية تثبيت خادم قاعدة البيانات ، وكيفية إنشاء مستخدمي قاعدة البيانات ، وكيفية تكوين WordPress. قبل أن تعرف ذلك ، سيكون لديك مدونة تعمل بكامل طاقتها بين يديك. هذه طريقة رائعة لاستخدام مهارات Linux الجديدة الخاصة بك بشكل جيد. اختياري تمامًا ، ولكنه رائع جدًا: إذا كنت ترغب في استضافة مدونتك على الإنترنت على تثبيت نظام Linux الخاص بك ، فسأوضح أنه يمكنك الحصول على استضافة مقابل 5 دولارات فقط شهريًا.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">____________________</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">لا تقدم Learn Linux in 5 Days أي افتراضات حول خلفيتك أو معرفتك بنظام Linux. لا تحتاج إلى معرفة مسبقة للاستفادة من هذه الدورة. سيتم إرشادك خطوة بخطوة باستخدام نهج منطقي ومنظم. عند مواجهة المفاهيم أو الأوامر أو المصطلحات الجديدة يتم شرحها بلغة واضحة ، مما يسهل على أي شخص فهمها. إليك ما ستتعلمه من خلال تعلم Linux في 5 أيام:</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">• كيفية الوصول إلى خادم Linux إذا لم تقم بذلك بالفعل.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">• ما هي توزيعة Linux وأيها تختار.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">• ما هي البرامج المطلوبة للاتصال بـ Linux من أجهزة كمبيوتر Mac و Windows.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">• ما هو SSH وكيفية استخدامه.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">• تخطيط نظام الملفات لأنظمة Linux ومكان العثور على البرامج والتكوينات والوثائق.</p><p style=\"text-align: right; \">• أوامر Linux الأساسية التي ستستخدمها في أغلب الأحيان.</p><p style=\"text-align: right; \">• إنشاء وإعادة تسمية ونقل وحذف الدلائل.</p><p style=\"text-align: right; \">• إدراج الملفات وقراءتها وإنشاءها وتحريرها ونسخها وحذفها.</p><p style=\"text-align: right; \">• كيفية عمل الأذونات بالضبط وكيفية فك تشفير أذونات Linux الأكثر تشفيرًا بسهولة.</p><p style=\"text-align: right; \">• كيفية استخدام محررات nano و vi و emacs.</p><p style=\"text-align: right; \">• طريقتان للبحث عن الملفات والأدلة.</p><p style=\"text-align: right; \">• كيفية مقارنة محتويات الملفات.</p><p style=\"text-align: right; \">• ما هي الأنابيب ولماذا هي مفيدة وكيفية استخدامها.</p><p style=\"text-align: right; \">• كيفية ضغط الملفات لتوفير المساحة وتسهيل نقل البيانات.</p><p style=\"text-align: right; \">• كيف ولماذا يتم إعادة توجيه المدخلات والمخرجات من التطبيقات.</p><p style=\"text-align: right; \">• كيفية تخصيص موجه شل الخاص بك.</p><p style=\"text-align: right; \">• كيف تكون فعالاً في سطر الأوامر باستخدام الأسماء المستعارة وإكمال علامات التبويب وسجل shell الخاص بك.</p><p style=\"text-align: right; \">• كيفية جدولة المهام وأتمتتها باستخدام cron.</p><p style=\"text-align: right; \">• كيفية تبديل المستخدمين وتشغيل العمليات مثل الآخرين.</p><p style=\"text-align: right; \">• كيفية البحث عن البرامج وتثبيتها.</p><p style=\"text-align: right; \">• ضمان استرداد الأموال لمدة 30 يومًا من Udemy غير المشروط - هذا وعد شخصي لنجاحك!</p><p style=\"text-align: right; \">ما تتعلمه في Learn Linux in 5 Days ينطبق على أي بيئة Linux بما في ذلك Ubuntu و Debian و Kali Linux و Linux Mint و RedHat و Fedora و OpenSUSE و Slackware والمزيد.</p>'),
(35, 1996, 'es', 'Aprenda Linux en cinco días', 'Utilice las habilidades de Linux en demanda que aprenda en este curso para obtener un ascenso o comenzar una nueva carrera como profesional de Linux.', '<p>Si quieres aprender a usar Linux y subir de nivel en tu carrera, pero tienes poco tiempo, sigue leyendo. Hola. Mi nombre es Jason Cannon y soy el autor de Linux for Beginners, así como el fundador de Linux Training Academy. Cuando le pido a la gente que me diga cuál es su mayor desafío para aprender Linux, todos dicen lo mismo: tiempo.</p><p>Por eso he creado este curso. Dame solo 45 minutos al día durante los próximos 5 días y te enseñaré exactamente lo que necesitas saber sobre el sistema operativo Linux. Aprenderá los conceptos y comandos más importantes, e incluso lo guiaré paso a paso a través de varios ejemplos prácticos y del mundo real.</p><p>Entonces, si puede dedicar unos minutos al día y desea aprender los entresijos del sistema operativo Linux, únase a mí y a los otros estudiantes en este curso hoy.</p><p>Bonificación gratuita: cómo instalar WordPress en su propio sistema Linux</p><p>Como una ventaja adicional por inscribirse en el curso de capacitación en video Learn Linux in 5 Days, recibirá una lista de verificación paso a paso y un video que le enseñará cómo instalar WordPress en un sistema Ubuntu Linux. Primero, aprenderá qué software se requiere para que WordPress se ejecute en un sistema Linux. A continuación, se le darán los comandos exactos para escribir que instalan todo el software requerido y WordPress.</p><p><br></p><p>Aprenderá cómo instalar un servidor web, cómo instalar un servidor de base de datos, cómo crear usuarios de base de datos y cómo configurar WordPress. Antes de que te des cuenta, tendrás un blog en pleno funcionamiento en tus manos. Esta es una excelente manera de hacer un buen uso de sus nuevas habilidades de Linux. Totalmente opcional, pero muy bueno: si desea alojar su blog en Internet en su propia instalación de Linux, le mostraré dónde puede obtener alojamiento por solo $ 5 al mes.</p><p>____________________</p><p>Learn Linux in 5 Days no hace ninguna suposición sobre su experiencia o conocimiento de Linux. No necesita conocimientos previos para beneficiarse de este curso. Se le guiará paso a paso utilizando un enfoque lógico y sistemático. A medida que se encuentran nuevos conceptos, comandos o jerga, se explican en un lenguaje sencillo, lo que facilita su comprensión por parte de cualquiera. Esto es lo que aprenderá al tomar Learn Linux en 5 días:</p><p>• Cómo obtener acceso a un servidor Linux si aún no lo ha hecho.</p><p>• Qué es una distribución de Linux y cuál elegir.</p><p>• Qué software se necesita para conectarse a Linux desde computadoras Mac y Windows.</p><p>• Qué es SSH y cómo usarlo.</p><p>• El diseño del sistema de archivos de los sistemas Linux y dónde encontrar programas, configuraciones y documentación.</p><p>• Los comandos básicos de Linux que utilizará con más frecuencia.</p><p>• Crear, renombrar, mover y eliminar directorios.</p><p>• Enumerar, leer, crear, editar, copiar y eliminar archivos.</p><p>• Exactamente cómo funcionan los permisos y cómo descifrar los permisos más crípticos de Linux con facilidad.</p><p>• Cómo utilizar los editores nano, vi y emacs.</p><p>• Dos métodos para buscar archivos y directorios.</p><p>• Cómo comparar el contenido de archivos.</p><p>• Qué son las tuberías, por qué son útiles y cómo usarlas.</p><p>• Cómo comprimir archivos para ahorrar espacio y facilitar la transferencia de datos.</p><p>• Cómo y por qué redirigir la entrada y salida de las aplicaciones.</p><p>• Cómo personalizar su indicador de shell.</p><p>• Cómo ser eficiente en la línea de comandos mediante el uso de alias, finalización de tabulaciones y su historial de shell.</p><p>• Cómo programar y automatizar trabajos usando cron.</p><p>• Cómo cambiar de usuario y ejecutar procesos como otros.</p><p>• Cómo encontrar e instalar software.</p><p>• Garantía incondicional de devolución de dinero de 30 días de Udemy: ¡esa es mi promesa personal de su éxito!</p><p>Lo que aprende en Aprenda Linux en 5 días se aplica a cualquier entorno Linux, incluidos Ubuntu, Debian, Kali Linux, Linux Mint, RedHat, Fedora, OpenSUSE, Slackware y más.</p>'),
(36, 1997, 'es', 'Aprenda a programar en Python', 'Aprenda a programar en Python de forma fácil, con ejemplos, cuestionarios, ejercicios y más. Aprenda Python 2 y Python 3.', '<p>Si quieres:</p><p>- desarrolle las habilidades que necesita para obtener su primer trabajo de programación en Python</p><p>- pasar a un puesto de desarrollador de software más senior</p><p>- comience con Machine Learning, Data Science, Django u otras áreas de interés en las que Python se especializa</p><p>- o simplemente aprenda Python para poder crear sus propias aplicaciones Python rápidamente.</p><p>... entonces necesitas una base sólida en la programación de Python. Y este curso está diseñado para brindarle esas habilidades básicas rápidamente.</p><p>Este curso está dirigido a principiantes completos que nunca han programado antes, así como a programadores existentes que desean aumentar sus opciones profesionales aprendiendo Python.</p><p>El hecho es que Python es uno de los lenguajes de programación más populares del mundo: grandes empresas como Google lo utilizan en aplicaciones de misión crítica como Google Search.</p><p>Y Python es la opción de idioma número uno para el aprendizaje automático, la ciencia de datos y la inteligencia artificial. Para conseguir esos trabajos bien remunerados, necesita un conocimiento experto de Python, y eso es lo que obtendrá con este curso.</p><p>Al final del curso, podrá postularse con confianza para trabajos de programación de Python. Y sí, esto se aplica incluso si nunca ha programado antes. Con las habilidades adecuadas que aprenderá en este curso, puede convertirse en un empleado y valioso a los ojos de los futuros empleadores.</p><p>Esto es lo que algunos estudiantes nos han contado sobre el curso después de haberlo completado.</p><p>“Tenía una experiencia de programación muy limitada antes de comenzar este curso, por lo que realmente aprendí mucho de las primeras secciones. Me ha llevado de una habilidad de programación esencialmente cero a un nivel en el que me siento cómodo usando Python para analizar datos para mis informes de laboratorio, y aún no he terminado la mitad del curso. Hay otros cursos que se centran en el análisis de datos, pero esos cursos suelen estar dirigidos a personas que ya saben programar, por lo que elegí este curso. “- Christian DiMaria</p><p><br></p><p>“He estado revisando tu curso de Python. En ese tiempo, sin embargo, y sin terminarlo, he podido automatizar bastante mi trabajo. Trabajo en un sistema escolar y unificar datos de nuestros diversos sistemas de información estudiantil puede ser increíblemente frustrante, llevar mucho tiempo y, en ocasiones, ser un desafío. Con su curso, aprendí lo suficiente para escribir aplicaciones que convierten archivos de texto masivos en diccionarios que se \"unen\" como una base de datos y se generan en archivos CSV con el formato adecuado y luego se cargan a través de SFTP en varios sistemas para un procesamiento seguro. Nuestros profesores, estudiantes y el departamento de tecnología se han beneficiado enormemente de esta automatización. Solo quería dejarte una nota agradeciéndote por ayudarme a aprender esta habilidad \". - Keith Medlin</p><p><br></p><p>“Este curso fue genial. En 3 semanas pude escribir mis propias aplicaciones relacionadas con la base de datos \". - Theo Coenen</p><p><br></p><p><br></p><p>Y hay muchos más estudiantes a los que les encanta el curso: compruebe usted mismo todas las reseñas.</p><p>Este curso le dará las habilidades básicas de Python?</p><p><br></p><p>Sí lo será. Existe una variedad de oportunidades interesantes para los desarrolladores de Python. Todos ellos requieren un conocimiento sólido de Python, y eso es lo que aprenderá en este curso.</p><p>El curso me enseñará ciencia de datos, aprendizaje automático e inteligencia artificial?</p><p>No, no hará eso: todos estos temas son ramas de la programación de Python. Y todos ellos requieren una sólida comprensión del lenguaje Python.</p><p>Casi todos los cursos sobre estos temas asumen que usted comprende Python y, sin él, se perderá y confundirá rápidamente.</p><p><br></p><p>Este curso le brindará un conocimiento básico y sólido del lenguaje de programación Python.</p><p>Al final del curso, estará listo para postularse para puestos de programación de Python, así como para pasar a áreas específicas de Python, como se enumera anteriormente.</p><p>Por qué debería tomar este curso?</p><p>Hay muchos cursos de Python en Udemy: tus instructores, Tim y Jean-Paul son bastante únicos, ya que entre ellos tienen alrededor de 70 años de experiencia en programación profesional. Eso es más que toda una vida de habilidades de las que puedes aprender Python.</p><p><br></p><p>Puede inscribirse en el curso con la seguridad de saber que no son solo profesores, sino programadores profesionales con experiencia real en programación comercial, habiendo trabajado con grandes empresas como IBM, Mitsubishi, Fujitsu y Saab en el pasado.</p><p><br></p><p>Como tal, no solo aprenderá Python, sino que también aprenderá las mejores prácticas de la industria para la programación de Python que exigen los empleadores reales.</p><p>Y si eso no es suficiente, lea algunas de las muchas reseñas de estudiantes felices: hay alrededor de 100,000 estudiantes que han dejado alrededor de 19,000 reseñas.</p><p>Este es uno de los cursos más populares sobre programación Python en Udemy.</p><p>Cita del estudiante: “Tim y JP son excelentes maestros y están constantemente respondiendo preguntas y encuestando a los estudiantes sobre nuevos temas que les gustaría aprender. Este no es un curso de Python, es EL curso de Python que necesitas \". - Sean Burge</p><p>Listo para empezar, desarrollador?</p>'),
(37, 1997, 'ar', 'تعلم برمجة بايثون', 'تعلم برمجة Python بطريقة سهلة ، واستكمل بالأمثلة والاختبارات والتمارين والمزيد. تعلم بايثون 2 وبايثون 3.', '<p style=\"text-align: right; \">سواء كنت تريد:</p><p style=\"text-align: right; \">- قم ببناء المهارات التي تحتاجها للحصول على أول وظيفة لبرمجة Python</p><p style=\"text-align: right; \">- الانتقال إلى منصب مطور برمجيات أعلى</p><p style=\"text-align: right; \">- ابدأ مع Machine Learning أو Data Science أو Django أو المناطق الساخنة الأخرى التي تتخصص فيها Python</p><p style=\"text-align: right; \">- أو تعلم لغة Python لتتمكن من إنشاء تطبيقات Python الخاصة بك بسرعة.</p><p style=\"text-align: right; \">... فأنت بحاجة إلى أساس متين في برمجة بايثون. وهذه الدورة مصممة لتزويدك بهذه المهارات الأساسية بسرعة.</p><p style=\"text-align: right; \">تستهدف هذه الدورة المبتدئين الذين لم يسبق لهم البرمجة من قبل ، بالإضافة إلى المبرمجين الحاليين الذين يرغبون في زيادة خياراتهم المهنية من خلال تعلم بايثون.</p><p style=\"text-align: right; \">الحقيقة هي أن Python هي واحدة من أكثر لغات البرمجة شيوعًا في العالم - تستخدمها شركات ضخمة مثل Google في تطبيقات مهمة مثل بحث Google.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">و Python هي الخيار الأول للغة للتعلم الآلي وعلوم البيانات والذكاء الاصطناعي. للحصول على تلك الوظائف ذات الأجور المرتفعة ، فأنت بحاجة إلى معرفة متخصصة ببايثون ، وهذا ما ستحصل عليه من هذه الدورة التدريبية.</p><p style=\"text-align: right; \">بحلول نهاية الدورة التدريبية ، ستكون قادرًا على التقدم بثقة لوظائف برمجة Python. ونعم ، هذا ينطبق حتى لو لم تقم بالبرمجة من قبل. من خلال المهارات المناسبة التي ستتعلمها في هذه الدورة ، يمكنك أن تصبح قابلاً للتوظيف وذات قيمة في نظر أرباب العمل في المستقبل.</p><p style=\"text-align: right; \">إليك ما أخبرنا به بعض الطلاب عن الدورة التدريبية بعد اجتيازها.</p><p style=\"text-align: right; \">\"كانت لدي خبرة برمجية محدودة للغاية قبل أن أبدأ هذه الدورة ، لذلك تعلمت الكثير حقًا من الأقسام القليلة الأولى. لقد أخذني من مهارة البرمجة الصفرية إلى المستوى الذي أشعر فيه بالراحة عند استخدام Python لتحليل البيانات لتقارير المعمل الخاصة بي ، ولم أنتهي حتى منتصف الدورة التدريبية حتى الآن. هناك دورات أخرى تركز على تحليل البيانات ، ولكن هذه الدورات عادةً ما تستهدف الأشخاص الذين يعرفون بالفعل كيفية البرمجة ولهذا اخترت هذه الدورة بدلاً من ذلك. \"- كريستيان ديماريا</p><p style=\"text-align: right; \">\"لقد كنت أتجول في دورة بايثون الخاصة بك. في ذلك الوقت ، وعلى الرغم من ذلك ، وبدون الانتهاء من ذلك ، تمكنت من أتمتة قدر كبير من العمل في عملي. أنا أعمل في نظام مدرسي ويمكن أن يكون توحيد البيانات من أنظمة معلومات الطلاب المختلفة أمرًا محبطًا بشكل لا يصدق ، ويستغرق وقتًا طويلاً ، وفي بعض الأحيان يمثل تحديًا. باستخدام الدورة التدريبية الخاصة بك ، تعلمت ما يكفي لكتابة التطبيقات التي تحول الملفات النصية الضخمة إلى قواميس يتم \"تجميعها\" معًا كقاعدة بيانات وإخراجها إلى ملفات CSV منسقة بشكل صحيح ثم تحميلها عبر SFTP إلى أنظمة مختلفة للمعالجة الآمنة. استفاد مدرسونا وطلابنا وقسم التكنولوجيا بشكل كبير من هذه الأتمتة. أردت فقط أن أرسل لك ملاحظة أشكرك على مساعدتي في تعلم هذه المهارة \". - كيث ميدلين</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">”كانت هذه الدورة رائعة. في غضون 3 أسابيع ، تمكنت من كتابة التطبيقات المتعلقة بقاعدة البيانات الخاصة بي \". - ثيو كوينين</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">وهناك العديد من الطلاب الذين يحبون الدورة - تحقق من جميع المراجعات بنفسك.</p><p style=\"text-align: right; \">هل ستمنحك هذه الدورة مهارات الثعبان الأساسية؟</p><p style=\"text-align: right; \">نعم. هناك مجموعة من الفرص المثيرة لمطوري بايثون. تتطلب كل منهم فهمًا قويًا لبايثون ، وهذا ما ستتعلمه في هذه الدورة التدريبية.</p><p style=\"text-align: right; \">هل ستعلمني الدورة علم البيانات والتعلم الآلي والذكاء الاصطناعي؟</p><p style=\"text-align: right; \">لا ، لن تفعل ذلك - كل هذه الموضوعات هي فروع لبرمجة بايثون. وكلهم يحتاجون إلى فهم قوي للغة بايثون.</p><p style=\"text-align: right; \">تفترض جميع الدورات التدريبية حول هذه الموضوعات تقريبًا أنك تفهم لغة Python ، وبدونها ستفقدك وتشوشك بسرعة.</p><p style=\"text-align: right; \">ستمنحك هذه الدورة التدريبية ذلك الفهم الأساسي والراسخ للغة برمجة بايثون.</p><p style=\"text-align: right; \">بحلول نهاية الدورة التدريبية ، ستكون جاهزًا للتقدم لشغل وظائف برمجة Python وكذلك الانتقال إلى مناطق محددة في Python ، كما هو مذكور أعلاه.</p><p style=\"text-align: right; \">لماذا يجب أن تأخذ هذه الدورة؟</p><p style=\"text-align: right; \">هناك الكثير من دورات Python في Udemy - يعتبر معلمك ، Tim و Jean-Paul فريدًا جدًا من حيث أن لديهم ما يقرب من 70 عامًا من الخبرة في البرمجة الاحترافية. هذا أكثر من عمر للمهارات التي تحصل عليها لتتعلم بايثون منها.</p><p style=\"text-align: right; \">يمكنك التسجيل في الدورة بأمان مع العلم أنهم ليسوا مجرد معلمين ، ولكنهم مبرمجون محترفون يتمتعون بخبرة برمجة تجارية حقيقية ، بعد أن عملوا مع شركات كبيرة مثل IBM و Mitsubishi و Fujitsu و Saab في الماضي.</p><p style=\"text-align: right; \">على هذا النحو ، لن تتعلم Python فحسب ، بل ستتعلم أفضل الممارسات الصناعية لبرمجة Python التي يطلبها أصحاب العمل الحقيقيون.</p><p style=\"text-align: right; \">وإذا لم يكن ذلك كافيًا ، فقم بقراءة بعض المراجعات العديدة من الطلاب السعداء - هناك حوالي 100000 طالب تركوا حوالي 19000 تقييم.</p><p style=\"text-align: right; \">هذه واحدة من أشهر الدورات التدريبية في برمجة Python على Udemy.</p><p style=\"text-align: right; \">اقتباس من الطالب: \"Tim و JP مدرسان ممتازان ويجيبان باستمرار على الأسئلة ويستطلعان الطلاب حول مواضيع جديدة يرغبون في تعلمها. هذه ليست دورة بايثون ، إنها دورة بايثون التي تحتاجها \". - شون برجر</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">جاهز للبدء أيها المطور؟</p>'),
(38, 2008, 'en', 'New Learning Page', 'Learn The Tools Used By The World\'s Top Professional Guitar Players.', '<p style=\"font-size: inherit; max-width: 118.4rem;\"><a href=\"https://rocket-soft.org/lms\" rel=\"nofollow\" style=\"color: rgb(0, 132, 180); font-family: \"Helvetica Neue\", Helvetica, Arial, sans-serif;\"><strong style=\"font-weight: bold;\">Rocket LMS</strong></a><span style=\"color: rgb(84, 84, 84); font-family: \"Helvetica Neue\", Helvetica, Arial, sans-serif;\"> is an online course marketplace with a pile of features that helps you to run your online education business easily. This product helps instructors and students to get in touch together and share knowledge.</span><br style=\"color: rgb(84, 84, 84); font-family: \"Helvetica Neue\", Helvetica, Arial, sans-serif;\"><span style=\"color: rgb(84, 84, 84); font-family: \"Helvetica Neue\", Helvetica, Arial, sans-serif;\">Instructors will be able to create unlimited video courses, live classes, text courses, projects, quizzes, files, etc and students will be able to use the educational material and increase their skill level.</span><br style=\"color: rgb(84, 84, 84); font-family: \"Helvetica Neue\", Helvetica, Arial, sans-serif;\"><strong style=\"font-weight: bold; color: rgb(84, 84, 84); font-family: \"Helvetica Neue\", Helvetica, Arial, sans-serif;\">Rocket LMS</strong><span style=\"color: rgb(84, 84, 84); font-family: \"Helvetica Neue\", Helvetica, Arial, sans-serif;\"> is based on real business needs, cultural differences, advanced user researches so the product covers your business requirements efficiently.</span><br></p>');
INSERT INTO `webinar_translations` (`id`, `webinar_id`, `locale`, `title`, `seo_description`, `description`) VALUES
(39, 2009, 'en', 'New In-App Live System', 'Online Course Creation can be simple once you have mastered the art of speaking in front of a camera.', '<p style=\"max-width: 118.4rem;\" sf=\"\" pro=\"\" text\",=\"\" -apple-system,=\"\" blinkmacsystemfont,=\"\" roboto,=\"\" \"segoe=\"\" ui\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" ui=\"\" symbol\";\"=\"\"><strong style=\"font-size: 14px; margin: 0px; padding: 0px;\"><font color=\"#ff0000\">Note:</font><font color=\"#1c1d1f\"> </font></strong><font color=\"#1c1d1f\"><b>You should join to live session with the instructor first and then join by students to it.</b></font></p><p style=\"font-size: 14px; max-width: 118.4rem; color: rgb(28, 29, 31); font-family: \" sf=\"\" pro=\"\" text\",=\"\" -apple-system,=\"\" blinkmacsystemfont,=\"\" roboto,=\"\" \"segoe=\"\" ui\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" ui=\"\" symbol\";\"=\"\"><strong style=\"margin: 0px; padding: 0px;\">Online Course Creation</strong> can be simple once you have mastered the art of speaking in front of a camera. Imagine yourself delivering an entire course filled with great lectures. You can be the star of your own classroom--online. You can be a confident and engaging instructor of your own course. </p><p style=\"margin-top: 0.8rem; font-size: 14px; max-width: 118.4rem; color: rgb(28, 29, 31); font-family: \" sf=\"\" pro=\"\" text\",=\"\" -apple-system,=\"\" blinkmacsystemfont,=\"\" roboto,=\"\" \"segoe=\"\" ui\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" ui=\"\" symbol\";\"=\"\">    In this <strong style=\"margin: 0px; padding: 0px;\">Online course creation </strong>Course you will earn the following: </p><p style=\"margin-top: 0.8rem; font-size: 14px; max-width: 118.4rem; color: rgb(28, 29, 31); font-family: \" sf=\"\" pro=\"\" text\",=\"\" -apple-system,=\"\" blinkmacsystemfont,=\"\" roboto,=\"\" \"segoe=\"\" ui\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" ui=\"\" symbol\";\"=\"\">    * How to speak and lecture with confidence throughout your <strong style=\"margin: 0px; padding: 0px;\">online course creation </strong>process</p><p style=\"margin-top: 0.8rem; font-size: 14px; max-width: 118.4rem; color: rgb(28, 29, 31); font-family: \" sf=\"\" pro=\"\" text\",=\"\" -apple-system,=\"\" blinkmacsystemfont,=\"\" roboto,=\"\" \"segoe=\"\" ui\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" ui=\"\" symbol\";\"=\"\">    * How to record lectures on video </p><p style=\"margin-top: 0.8rem; font-size: 14px; max-width: 118.4rem; color: rgb(28, 29, 31); font-family: \" sf=\"\" pro=\"\" text\",=\"\" -apple-system,=\"\" blinkmacsystemfont,=\"\" roboto,=\"\" \"segoe=\"\" ui\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" ui=\"\" symbol\";\"=\"\">    * How to be confident that your course is engaging and interesting to students </p><p style=\"margin-top: 0.8rem; font-size: 14px; max-width: 118.4rem; color: rgb(28, 29, 31); font-family: \" sf=\"\" pro=\"\" text\",=\"\" -apple-system,=\"\" blinkmacsystemfont,=\"\" roboto,=\"\" \"segoe=\"\" ui\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" ui=\"\" symbol\";\"=\"\">    * How to structure your <strong style=\"margin: 0px; padding: 0px;\">online course creation</strong> </p><p style=\"margin-top: 0.8rem; font-size: 14px; max-width: 118.4rem; color: rgb(28, 29, 31); font-family: \" sf=\"\" pro=\"\" text\",=\"\" -apple-system,=\"\" blinkmacsystemfont,=\"\" roboto,=\"\" \"segoe=\"\" ui\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" ui=\"\" symbol\";\"=\"\">    This course is delivered primarily through spoken lectures. Because the skill you are learning is speaking related, it only makes sense that you learn through speaking. </p><p style=\"margin-top: 0.8rem; font-size: 14px; max-width: 118.4rem; color: rgb(28, 29, 31); font-family: \" sf=\"\" pro=\"\" text\",=\"\" -apple-system,=\"\" blinkmacsystemfont,=\"\" roboto,=\"\" \"segoe=\"\" ui\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" ui=\"\" symbol\";\"=\"\">    The skill you will learn in this class is not primarily theoretical or academic. It is a skill that requires physical habits. That is why you will be asked to take part in numerous exercises where you record yourself speaking on video, and then watching yourself. Learning presentation skills is like learning how to ride a bicycle. You simply have to do it numerous times and work past the wobbling and falling off parts until you get it right. </p><p style=\"margin-top: 0.8rem; font-size: 14px; max-width: 118.4rem; color: rgb(28, 29, 31); font-family: \" sf=\"\" pro=\"\" text\",=\"\" -apple-system,=\"\" blinkmacsystemfont,=\"\" roboto,=\"\" \"segoe=\"\" ui\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" ui=\"\" symbol\";\"=\"\">    This <strong style=\"margin: 0px; padding: 0px;\">online course creation</strong> course contains numerous video lectures plus several bonus books for your training library. </p><p style=\"margin-top: 0.8rem; font-size: 14px; max-width: 118.4rem; color: rgb(28, 29, 31); font-family: \" sf=\"\" pro=\"\" text\",=\"\" -apple-system,=\"\" blinkmacsystemfont,=\"\" roboto,=\"\" \"segoe=\"\" ui\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" ui=\"\" symbol\";\"=\"\">\"5 Stars! Very clear, very easy to follow. Really like the step by step approach that TJ puts across. Fealing much more knowledgable snd inspired to move forward.\" Udemy student David Robinson</p><p style=\"margin-top: 0.8rem; font-size: 14px; max-width: 118.4rem; color: rgb(28, 29, 31); font-family: \" sf=\"\" pro=\"\" text\",=\"\" -apple-system,=\"\" blinkmacsystemfont,=\"\" roboto,=\"\" \"segoe=\"\" ui\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" ui=\"\" symbol\";\"=\"\">\"5 stars! The instructions being presented here are the truth. they are the results of years of experience and expertise. I can really relate to the topics and the points are crystal clear. after all, the proof of the pudding is in the eating. I`m pumped to move on and absorb the rest of this course.\" Udemy student Youcef(Joe) Seyyedi</p><p style=\"margin-top: 0.8rem; font-size: 14px; max-width: 118.4rem; color: rgb(28, 29, 31); font-family: \" sf=\"\" pro=\"\" text\",=\"\" -apple-system,=\"\" blinkmacsystemfont,=\"\" roboto,=\"\" \"segoe=\"\" ui\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" ui=\"\" symbol\";\"=\"\">\"5 Stars! This course is so effective because TJ shows you the ropes without the confusing language that technical experts normally use. He also shows us that we can do this without becoming technical experts ourselves.\" Udemy Student Pete Burdon</p><p style=\"margin-top: 0.8rem; font-size: 14px; max-width: 118.4rem; color: rgb(28, 29, 31); font-family: \" sf=\"\" pro=\"\" text\",=\"\" -apple-system,=\"\" blinkmacsystemfont,=\"\" roboto,=\"\" \"segoe=\"\" ui\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" ui=\"\" symbol\";\"=\"\">TJ Walker has been coaching and training people on their presentation skills for 30 years. Now, through the power of Udemy\'s online platform, he is able to give you the same high quality training that he gives in person to CEOs, Fortune 500 executives, and Presidents of countries. Only you can now receive the training at a tiny fraction of the normal fee for in-person training.<br style=\"margin: 0px; padding: 0px;\"></p><p style=\"margin-top: 0.8rem; font-size: 14px; max-width: 118.4rem; color: rgb(28, 29, 31); font-family: \" sf=\"\" pro=\"\" text\",=\"\" -apple-system,=\"\" blinkmacsystemfont,=\"\" roboto,=\"\" \"segoe=\"\" ui\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" ui=\"\" symbol\";\"=\"\">    How long this course takes is up to you. The longest part of the course involves you speaking on video, critiquing yourself, and doing it over until you like it. But if you get to the point where you love how you look and sound when you present it will be well worth the time spent. And having this skill will save you time for all future presentations in your life. </p>'),
(40, 2008, 'es', 'Nueva página de aprendizaje', 'Aprenda las herramientas utilizadas por los mejores guitarristas profesionales del mundo.', '<p>Rocket LMS es un mercado de cursos en línea con un montón de características que lo ayudan a administrar su negocio de educación en línea fácilmente. Este producto ayuda a los instructores y estudiantes a ponerse en contacto y compartir conocimientos.</p><p>Los instructores podrán crear cursos de video ilimitados, clases en vivo, cursos de texto, proyectos, cuestionarios, archivos, etc. y los estudiantes podrán usar el material educativo y aumentar su nivel de habilidad.</p><p>Rocket LMS se basa en necesidades comerciales reales, diferencias culturales, investigaciones avanzadas de usuarios para que el producto cubra los requisitos de su negocio de manera eficiente.</p>'),
(41, 2008, 'ar', 'صفحة تعلم جديدة', 'تعلم الأدوات المستخدمة من قبل أفضل لاعبي الجيتار المحترفين في العالم.', '<p style=\"direction: rtl; \">Rocket LMS عبارة عن سوق للدورات التدريبية عبر الإنترنت به كومة من الميزات التي تساعدك على إدارة أعمالك التعليمية عبر الإنترنت بسهولة. يساعد هذا المنتج المدرسين والطلاب على التواصل معًا ومشاركة المعرفة.</p><p style=\"direction: rtl; \">سيتمكن المدرسون من إنشاء دورات فيديو غير محدودة ، وفصول مباشرة ، ودورات نصية ، ومشاريع ، ومسابقات ، وملفات ، وما إلى ذلك ، وسيتمكن الطلاب من استخدام المواد التعليمية وزيادة مستوى مهاراتهم.</p><p style=\"direction: rtl; \">يعتمد Rocket LMS على احتياجات العمل الحقيقية والاختلافات الثقافية وأبحاث المستخدم المتقدمة بحيث يغطي المنتج متطلبات عملك بكفاءة.</p>'),
(42, 2009, 'ar', 'نظام مباشر جديد داخل التطبيق', 'يمكن أن يكون إنشاء الدورة التدريبية عبر الإنترنت أمرًا بسيطًا بمجرد أن تتقن فن التحدث أمام الكاميرا.', '<p style=\"text-align: right; direction: rtl;\">ملاحظة: يجب عليك الانضمام إلى جلسة مباشرة مع المعلم أولاً ثم الانضمام إليها من قبل الطلاب.</p><p style=\"text-align: right; direction: rtl;\"><br></p><p style=\"text-align: right; direction: rtl;\">يمكن أن يكون إنشاء الدورة التدريبية عبر الإنترنت أمرًا بسيطًا بمجرد أن تتقن فن التحدث أمام الكاميرا. تخيل نفسك تقدم دورة كاملة مليئة بالمحاضرات العظيمة. يمكنك أن تكون نجم الفصل الدراسي الخاص بك - عبر الإنترنت. يمكنك أن تكون مدربًا واثقًا وجذابًا في الدورة التدريبية الخاصة بك.</p><p style=\"text-align: right; direction: rtl;\"><br></p><p style=\"text-align: right; direction: rtl;\">&nbsp; &nbsp; في دورة إنشاء الدورة التدريبية عبر الإنترنت ، ستربح ما يلي:</p><p style=\"text-align: right; direction: rtl;\"><br></p><p style=\"text-align: right; direction: rtl;\">&nbsp; &nbsp; * كيف تتحدث وتحاضر بثقة خلال عملية إنشاء الدورة التدريبية عبر الإنترنت</p><p style=\"text-align: right; direction: rtl;\"><br></p><p style=\"text-align: right; direction: rtl;\">&nbsp; &nbsp; * كيفية تسجيل المحاضرات بالفيديو</p><p style=\"text-align: right; direction: rtl;\"><br></p><p style=\"text-align: right; direction: rtl;\">&nbsp; &nbsp; * كيف تكون واثقًا من أن دورتك الدراسية جذابة وممتعة للطلاب</p><p style=\"text-align: right; direction: rtl;\"><br></p><p style=\"text-align: right; direction: rtl;\">&nbsp; &nbsp; * كيفية هيكلة إنشاء الدورة التدريبية عبر الإنترنت</p><p style=\"text-align: right; direction: rtl;\"><br></p><p style=\"text-align: right; direction: rtl;\">&nbsp; &nbsp; يتم تقديم هذه الدورة في المقام الأول من خلال المحاضرات المنطوقة. نظرًا لأن المهارة التي تتعلمها مرتبطة بالتحدث ، فمن المنطقي أن تتعلم من خلال التحدث فقط.</p><p style=\"text-align: right; direction: rtl;\"><br></p><p style=\"text-align: right; direction: rtl;\">&nbsp; &nbsp; المهارة التي ستتعلمها في هذا الفصل ليست نظرية أو أكاديمية في الأساس. إنها مهارة تتطلب عادات جسدية. هذا هو السبب في أنه سيُطلب منك المشاركة في العديد من التدريبات حيث تقوم بتسجيل نفسك وأنت تتحدث على الفيديو ، ثم تشاهد نفسك. تعلم مهارات العرض هو مثل تعلم كيفية ركوب الدراجة. عليك ببساطة القيام بذلك عدة مرات والعمل بعد الأجزاء المتذبذبة والمتساقطة حتى تحصل عليها بشكل صحيح.</p><p style=\"text-align: right; direction: rtl;\"><br></p><p style=\"text-align: right; direction: rtl;\">&nbsp; &nbsp; تحتوي دورة إنشاء الدورة التدريبية عبر الإنترنت على العديد من محاضرات الفيديو بالإضافة إلى العديد من الكتب الإضافية لمكتبتك التدريبية.</p><p style=\"text-align: right; direction: rtl;\"><br></p><p style=\"text-align: right; direction: rtl;\">\"5 نجوم! واضح جدًا ، من السهل جدًا متابعته. أحب حقًا النهج التدريجي الذي يطبقه TJ. استلهام المزيد من المعرفة والمعرفة للمضي قدمًا.\" طالب Udemy ديفيد روبنسون</p><p style=\"text-align: right; direction: rtl;\"><br></p><p style=\"text-align: right; direction: rtl;\">\"5 نجوم! التعليمات المقدمة هنا هي الحقيقة. إنها نتائج سنوات من الخبرة والخبرة. يمكنني حقًا الارتباط بالموضوعات والنقاط واضحة وضوح الشمس. بعد كل شيء ، الدليل على الحلوى يكمن في الأكل . أنا مضغوطة للمضي قدما واستيعاب بقية هذه الدورة \". طالب Udemy يوسف (جو) سيدي</p><p style=\"text-align: right; direction: rtl;\"><br></p><p style=\"text-align: right; direction: rtl;\">\"5 نجوم! هذه الدورة فعالة للغاية لأن TJ يوضح لك الحبال بدون اللغة المربكة التي يستخدمها الخبراء الفنيون عادةً. كما يوضح لنا أنه يمكننا القيام بذلك دون أن نصبح خبراء تقنيين بأنفسنا.\" طالب Udemy بيت بوردون</p><p style=\"text-align: right; direction: rtl;\"><br></p><p style=\"text-align: right; direction: rtl;\">يقوم TJ Walker بتدريب الأشخاص وتدريبهم على مهارات العرض التقديمي لمدة 30 عامًا. الآن ، من خلال قوة منصة Udemy عبر الإنترنت ، يمكنه أن يمنحك نفس التدريب عالي الجودة الذي يقدمه شخصيًا إلى الرؤساء التنفيذيين والمدراء التنفيذيين في Fortune 500 ورؤساء الدول. يمكنك الآن فقط تلقي التدريب بجزء بسيط من الرسوم العادية للتدريب الشخصي.</p><p style=\"text-align: right; direction: rtl;\"><br></p><p style=\"text-align: right; direction: rtl;\">&nbsp; &nbsp; كم من الوقت تستغرق هذه الدورة متروك لك. يتضمن الجزء الأطول من الدورة التدريبية التحدث عبر الفيديو وانتقاد نفسك والقيام بذلك مرة أخرى حتى تعجبك. ولكن إذا وصلت إلى النقطة التي تحب فيها مظهرك وصوتك عند التقديم ، فسيكون ذلك يستحق الوقت الذي تقضيه. وسيوفر لك امتلاك هذه المهارة الوقت لجميع العروض التقديمية المستقبلية في حياتك.</p>'),
(43, 2009, 'es', 'Nuevo sistema en vivo en la aplicación', 'La creación de cursos en línea puede ser simple una vez que haya dominado el arte de hablar frente a una cámara.', '<p>Nota: primero debe unirse a la sesión en vivo con el instructor y luego unirse a ella los estudiantes.</p><p><br></p><p>La creación de cursos en línea puede ser simple una vez que haya dominado el arte de hablar frente a una cámara. Imagínese impartiendo un curso completo repleto de excelentes conferencias. Puede ser la estrella de su propio salón de clases, en línea. Puede ser un instructor seguro y atractivo de su propio curso.</p><p><br></p><p>&nbsp; &nbsp; En este curso de creación de cursos en línea obtendrá lo siguiente:</p><p><br></p><p>&nbsp; &nbsp; * Cómo hablar y dar conferencias con confianza a lo largo de su proceso de creación de cursos en línea</p><p><br></p><p>&nbsp; &nbsp; * Cómo grabar conferencias en video</p><p><br></p><p>&nbsp; &nbsp; * Cómo estar seguro de que su curso es atractivo e interesante para los estudiantes</p><p><br></p><p>&nbsp; &nbsp; * Cómo estructurar la creación de su curso en línea</p><p><br></p><p>&nbsp; &nbsp; Este curso se imparte principalmente a través de conferencias orales. Debido a que la habilidad que estás aprendiendo está relacionada con el habla, solo tiene sentido que aprendas hablando.</p><p><br></p><p>&nbsp; &nbsp; La habilidad que aprenderá en esta clase no es principalmente teórica o académica. Es una habilidad que requiere hábitos físicos. Es por eso que se le pedirá que participe en numerosos ejercicios en los que se graba a sí mismo hablando en video y luego observándose a sí mismo. Aprender habilidades de presentación es como aprender a andar en bicicleta. Simplemente tiene que hacerlo varias veces y trabajar más allá de las partes que se tambalean y se caen hasta que lo haga bien.</p><p><br></p><p>&nbsp; &nbsp; Este curso de creación de cursos en línea contiene numerosas conferencias en video además de varios libros adicionales para su biblioteca de capacitación.</p><p><br></p><p>\"¡5 estrellas! Muy claro, muy fácil de seguir. Realmente me gusta el enfoque paso a paso que TJ presenta. Me siento mucho más informado e inspirado para seguir adelante\". Estudiante de Udemy David Robinson</p><p><br></p><p>\"¡5 estrellas! Las instrucciones que se presentan aquí son la verdad. Son el resultado de años de experiencia y conocimientos. Realmente puedo identificarme con los temas y los puntos son muy claros. Después de todo, la prueba del pudín está en comerlo. Estoy emocionado de seguir adelante y absorber el resto de este curso\". Estudiante de Udemy Youcef(Joe) Seyyedi</p><p><br></p><p>\"¡5 estrellas! Este curso es tan efectivo porque TJ te muestra los trucos sin el lenguaje confuso que normalmente usan los expertos técnicos. También nos muestra que podemos hacer esto sin convertirnos en expertos técnicos nosotros mismos\". Pete Burdon, estudiante de Udemy</p><p><br></p><p>TJ Walker ha estado entrenando y capacitando a personas en sus habilidades de presentación durante 30 años. Ahora, a través del poder de la plataforma en línea de Udemy, puede brindarle la misma capacitación de alta calidad que brinda en persona a los directores ejecutivos, ejecutivos de Fortune 500 y presidentes de países. Ahora solo usted puede recibir la capacitación a una pequeña fracción de la tarifa normal para la capacitación en persona.</p><p><br></p><p>&nbsp; &nbsp; La duración de este curso depende de usted. La parte más larga del curso involucra que hables en video, te critiques a ti mismo y lo repitas hasta que te guste. Pero si llegas al punto en que te encanta cómo te ves y cómo suenas cuando presentas, valdrá la pena el tiempo invertido. Y tener esta habilidad te ahorrará tiempo para todas las futuras presentaciones en tu vida.</p>'),
(44, 2010, 'en', 'Introduction to Risk Management', NULL, '<p>A test course</p>');

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
