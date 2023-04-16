-- MariaDB dump 10.19  Distrib 10.10.3-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: projecte
-- ------------------------------------------------------
-- Server version	10.10.3-MariaDB-1:10.10.3+maria~ubu2204

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS projecte;
CREATE DATABASE projecte;
CREATE USER IF NOT EXISTS 'user'@'localhost' IDENTIFIED BY 'aplicacions';
GRANT ALL PRIVILEGES ON projecte.* TO 'user'@'localhost';

USE projecte;
--
-- Table structure for table `dades`
--

DROP TABLE IF EXISTS `dades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dades` (
  `dades_id` int(11) NOT NULL AUTO_INCREMENT,
  `temperatura` int(11) DEFAULT NULL,
  `humitat` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`dades_id`)
) ENGINE=InnoDB AUTO_INCREMENT=845 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dades`
--

LOCK TABLES `dades` WRITE;
/*!40000 ALTER TABLE `dades` DISABLE KEYS */;
INSERT INTO `dades` VALUES
(1,18,20,'2023-01-03 00:00:00'),
(2,10,60,'2023-01-03 00:00:00'),
(3,25,80,'2023-01-03 00:00:00'),
(4,12,45,'2023-01-02 00:00:00'),
(5,30,65,'2023-01-01 00:00:00'),
(6,18,95,'2022-12-31 00:00:00'),
(7,14,20,'2022-12-30 00:00:00'),
(8,23,50,'2022-12-29 00:00:00'),
(9,16,70,'2022-12-28 00:00:00'),
(10,21,40,'2023-01-04 00:00:00'),
(11,17,65,'2023-01-05 00:00:00'),
(12,19,75,'2023-01-06 00:00:00'),
(13,30,30,'2023-01-07 00:00:00'),
(14,15,55,'2023-01-08 00:00:00'),
(15,25,90,'2023-01-09 00:00:00'),
(16,22,35,'2023-01-10 00:00:00'),
(17,10,70,'2023-01-11 00:00:00'),
(18,28,80,'2023-01-12 00:00:00'),
(19,12,25,'2023-01-13 00:00:00'),
(20,20,60,'2023-01-14 00:00:00'),
(21,24,95,'2023-01-15 00:00:00'),
(22,16,40,'2023-01-17 00:00:00'),
(23,18,65,'2023-01-18 00:00:00'),
(24,14,75,'2023-01-19 00:00:00'),
(25,31,30,'2023-01-20 00:00:00'),
(26,11,55,'2023-01-21 00:00:00'),
(27,29,90,'2023-01-22 00:00:00'),
(28,19,35,'2023-01-23 00:00:00'),
(29,12,70,'2023-01-24 00:00:00'),
(30,27,80,'2023-01-25 00:00:00'),
(31,15,25,'2023-01-26 00:00:00'),
(32,23,60,'2022-12-27 00:00:00'),
(33,26,95,'2022-12-26 00:00:00'),
(34,10,60,'2023-01-03 00:00:00'),
(35,25,80,'2023-01-03 00:00:00'),
(36,12,45,'2023-01-03 00:00:00'),
(37,30,65,'2023-01-03 00:00:00'),
(38,18,95,'2023-01-03 00:00:00'),
(39,14,20,'2023-01-03 00:00:00'),
(40,23,50,'2023-01-03 00:00:00'),
(41,16,70,'2023-01-03 00:00:00'),
(42,21,40,'2023-01-03 00:00:00'),
(43,17,65,'2023-01-03 00:00:00'),
(44,19,75,'2023-01-03 00:00:00'),
(45,30,30,'2023-01-03 00:00:00'),
(46,15,55,'2023-01-03 00:00:00'),
(47,25,90,'2023-01-03 00:00:00'),
(48,22,35,'2023-01-03 00:00:00'),
(49,10,70,'2023-01-03 00:00:00'),
(50,28,80,'2023-01-03 00:00:00'),
(51,12,25,'2023-01-03 00:00:00'),
(52,20,60,'2023-01-03 00:00:00'),
(53,24,95,'2023-01-03 00:00:00'),
(54,16,40,'2023-01-03 00:00:00'),
(55,18,65,'2023-01-03 00:00:00'),
(56,14,75,'2023-01-03 00:00:00'),
(57,31,30,'2023-01-03 00:00:00'),
(58,11,55,'2023-01-03 00:00:00'),
(59,29,90,'2023-01-03 00:00:00'),
(60,19,35,'2023-01-03 00:00:00'),
(61,12,70,'2023-01-03 00:00:00'),
(62,27,80,'2023-01-03 00:00:00'),
(63,15,25,'2023-01-03 00:00:00'),
(64,23,60,'2023-01-03 00:00:00'),
(65,26,95,'2023-01-03 00:00:00'),
(66,16,40,'2023-01-03 00:00:00'),
(70,12,45,'2023-01-04 00:00:00'),
(71,30,65,'2023-01-04 00:00:00'),
(72,18,95,'2023-01-04 00:00:00'),
(73,14,20,'2023-01-04 00:00:00'),
(74,23,50,'2023-01-04 00:00:00'),
(75,16,70,'2023-01-04 00:00:00'),
(76,21,40,'2023-01-04 00:00:00'),
(77,17,65,'2023-01-04 00:00:00'),
(79,30,30,'2023-01-04 00:00:00'),
(80,15,55,'2023-01-04 00:00:00'),
(81,25,90,'2023-01-04 00:00:00'),
(82,22,35,'2023-01-04 00:00:00'),
(83,10,70,'2023-01-04 00:00:00'),
(84,28,80,'2023-01-04 00:00:00'),
(85,12,25,'2023-01-04 00:00:00'),
(86,20,60,'2023-01-04 00:00:00'),
(87,24,95,'2023-01-04 00:00:00'),
(88,16,40,'2023-01-04 00:00:00'),
(89,18,65,'2023-01-04 00:00:00'),
(90,14,75,'2023-01-04 00:00:00'),
(91,31,30,'2023-01-04 00:00:00'),
(96,19,45,'2023-03-18 00:00:00'),
(97,19,54,'2023-03-18 00:00:00'),
(98,21,57,'2023-03-18 00:00:00'),
(99,20,49,'2023-03-18 00:00:00'),
(100,22,53,'2023-03-18 00:00:00'),
(101,22,53,'2023-03-18 00:00:00'),
(102,23,51,'2023-03-18 00:00:00'),
(103,23,51,'2023-03-18 00:00:00'),
(104,23,51,'2023-03-18 00:00:00'),
(105,24,46,'2023-03-20 00:00:00'),
(106,24,46,'2023-03-20 00:00:00'),
(107,25,47,'2023-03-20 00:00:00'),
(108,26,48,'2023-03-20 00:00:00'),
(109,27,49,'2023-03-20 00:00:00'),
(110,28,50,'2023-03-20 00:00:00'),
(111,29,51,'2023-03-20 00:00:00'),
(112,30,52,'2023-03-20 00:00:00'),
(113,31,53,'2023-03-20 00:00:00'),
(114,32,54,'2023-03-20 00:00:00'),
(115,33,55,'2023-03-20 00:00:00'),
(116,34,56,'2023-03-20 00:00:00'),
(117,35,57,'2023-03-20 00:00:00'),
(118,36,58,'2023-03-20 00:00:00'),
(119,37,59,'2023-03-20 00:00:00'),
(120,38,60,'2023-03-20 00:00:00'),
(121,39,61,'2023-03-20 00:00:00'),
(122,40,62,'2023-03-20 00:00:00'),
(123,41,63,'2023-03-20 00:00:00'),
(124,42,64,'2023-03-20 00:00:00'),
(125,43,65,'2023-03-20 00:00:00'),
(126,44,66,'2023-03-20 00:00:00'),
(127,45,67,'2023-03-20 00:00:00'),
(128,46,68,'2023-03-20 00:00:00'),
(129,47,69,'2023-03-20 00:00:00'),
(130,48,70,'2023-03-20 00:00:00'),
(131,49,71,'2023-03-20 00:00:00'),
(132,50,72,'2023-03-20 00:00:00'),
(133,51,73,'2023-03-20 00:00:00'),
(134,52,74,'2023-03-20 00:00:00'),
(135,53,75,'2023-03-20 00:00:00'),
(136,54,76,'2023-03-20 00:00:00'),
(137,55,77,'2023-03-20 00:00:00'),
(138,56,78,'2023-03-20 00:00:00'),
(139,57,79,'2023-03-20 00:00:00'),
(140,58,80,'2023-03-20 00:00:00'),
(141,59,81,'2023-03-20 00:00:00'),
(142,60,82,'2023-03-20 00:00:00'),
(143,61,83,'2023-03-20 00:00:00'),
(144,62,84,'2023-03-20 00:00:00'),
(145,63,85,'2023-03-20 00:00:00'),
(146,64,86,'2023-03-20 00:00:00'),
(147,65,87,'2023-03-20 00:00:00'),
(148,66,88,'2023-03-20 00:00:00'),
(149,67,89,'2023-03-20 00:00:00'),
(150,68,90,'2023-03-20 00:00:00'),
(151,69,91,'2023-03-20 00:00:00'),
(152,70,92,'2023-03-20 00:00:00'),
(153,71,93,'2023-03-20 00:00:00'),
(154,72,94,'2023-03-20 00:00:00'),
(155,73,95,'2023-03-20 00:00:00'),
(156,24,46,'2023-03-20 00:00:00'),
(157,25,47,'2023-03-20 00:00:00'),
(158,26,48,'2023-03-20 00:00:00'),
(159,27,49,'2023-03-20 00:00:00'),
(160,28,50,'2023-03-20 00:00:00'),
(161,24,46,'2023-03-20 00:00:00'),
(162,25,47,'2023-03-20 00:00:00'),
(163,26,48,'2023-03-20 00:00:00'),
(164,27,49,'2023-03-20 00:00:00'),
(165,28,50,'2023-03-20 00:00:00'),
(166,29,51,'2023-03-20 00:00:00'),
(167,24,46,'2023-03-20 00:00:00'),
(168,25,47,'2023-03-20 00:00:00'),
(169,24,46,'2023-03-20 00:00:00'),
(170,24,46,'2023-03-20 00:00:00'),
(171,24,46,'2023-03-20 00:00:00'),
(172,25,47,'2023-03-20 00:00:00'),
(173,26,48,'2023-03-20 00:00:00'),
(174,27,49,'2023-03-20 00:00:00'),
(175,28,50,'2023-03-20 00:00:00'),
(176,29,51,'2023-03-20 00:00:00'),
(177,30,52,'2023-03-20 00:00:00'),
(178,31,53,'2023-03-20 00:00:00'),
(179,32,54,'2023-03-20 00:00:00'),
(180,33,55,'2023-03-20 00:00:00'),
(181,34,56,'2023-03-20 00:00:00'),
(182,35,57,'2023-03-20 00:00:00'),
(183,36,58,'2023-03-20 00:00:00'),
(184,37,59,'2023-03-20 00:00:00'),
(185,38,60,'2023-03-20 00:00:00'),
(186,39,61,'2023-03-20 00:00:00'),
(187,20,62,'2023-03-20 00:00:00'),
(188,21,63,'2023-03-20 00:00:00'),
(189,22,64,'2023-03-20 00:00:00'),
(190,23,65,'2023-03-20 00:00:00'),
(191,24,66,'2023-03-20 00:00:00'),
(192,25,67,'2023-03-20 00:00:00'),
(193,26,68,'2023-03-20 00:00:00'),
(194,27,69,'2023-03-20 00:00:00'),
(195,28,70,'2023-03-20 00:00:00'),
(196,29,71,'2023-03-20 00:00:00'),
(197,20,72,'2023-03-20 00:00:00'),
(198,21,73,'2023-03-20 00:00:00'),
(199,22,74,'2023-03-20 00:00:00'),
(200,23,75,'2023-03-20 00:00:00'),
(201,24,76,'2023-03-20 00:00:00'),
(202,25,77,'2023-03-20 00:00:00'),
(203,26,78,'2023-03-20 00:00:00'),
(204,27,79,'2023-03-20 00:00:00'),
(205,28,80,'2023-03-20 00:00:00'),
(206,29,81,'2023-03-20 00:00:00'),
(207,20,82,'2023-03-20 00:00:00'),
(208,21,83,'2023-03-20 00:00:00'),
(209,22,84,'2023-03-20 00:00:00'),
(210,23,85,'2023-03-20 00:00:00'),
(211,24,86,'2023-03-20 00:00:00'),
(212,25,87,'2023-03-20 00:00:00'),
(213,26,88,'2023-03-20 00:00:00'),
(214,27,89,'2023-03-20 00:00:00'),
(215,28,90,'2023-03-20 00:00:00'),
(216,29,91,'2023-03-20 00:00:00'),
(217,20,92,'2023-03-20 00:00:00'),
(218,21,93,'2023-03-20 00:00:00'),
(219,22,94,'2023-03-20 00:00:00'),
(220,22,95,'2023-03-20 00:00:00'),
(221,24,96,'2023-03-20 00:00:00'),
(222,25,97,'2023-03-20 00:00:00'),
(223,26,98,'2023-03-20 00:00:00'),
(224,27,99,'2023-03-20 00:00:00'),
(225,28,23,'2023-03-20 00:00:00'),
(226,29,31,'2023-03-20 00:00:00'),
(227,20,32,'2023-03-20 00:00:00'),
(228,21,33,'2023-03-20 00:00:00'),
(229,22,34,'2023-03-20 00:00:00'),
(230,23,35,'2023-03-20 00:00:00'),
(231,24,36,'2023-03-20 00:00:00'),
(232,25,37,'2023-03-20 00:00:00'),
(233,26,38,'2023-03-20 00:00:00'),
(234,27,39,'2023-03-20 00:00:00'),
(235,28,30,'2023-03-20 00:00:00'),
(236,29,31,'2023-03-20 00:00:00'),
(237,20,32,'2023-03-20 00:00:00'),
(238,21,33,'2023-03-20 00:00:00'),
(239,22,34,'2023-03-20 00:00:00'),
(240,23,35,'2023-03-20 00:00:00'),
(241,24,36,'2023-03-20 00:00:00'),
(242,25,37,'2023-03-20 00:00:00'),
(243,26,38,'2023-03-20 00:00:00'),
(244,24,23,'2023-03-20 00:00:00'),
(245,24,23,'2023-03-20 00:00:00'),
(246,34,23,'2023-03-20 00:00:00'),
(247,34,22,'2023-03-20 00:00:00'),
(248,33,22,'2023-03-20 00:00:00'),
(249,33,22,'2023-03-20 00:00:00'),
(250,33,22,'2023-03-20 00:00:00'),
(251,23,22,'2023-03-20 00:00:00'),
(252,22,43,'2023-03-20 00:00:00'),
(253,22,43,'2023-03-20 00:00:00'),
(254,22,43,'2023-03-20 00:00:00'),
(255,22,43,'2023-03-20 00:00:00'),
(256,22,43,'2023-03-20 00:00:00'),
(257,22,43,'2023-03-20 00:00:00'),
(258,22,44,'2023-03-20 00:00:00'),
(259,22,44,'2023-03-20 00:00:00'),
(260,22,44,'2023-03-20 00:00:00'),
(261,22,44,'2023-03-20 00:00:00'),
(262,22,44,'2023-03-20 00:00:00'),
(263,23,44,'2023-03-20 00:00:00'),
(264,23,44,'2023-03-20 00:00:00'),
(265,23,44,'2023-03-20 00:00:00'),
(266,23,44,'2023-03-20 00:00:00'),
(267,23,44,'2023-03-20 00:00:00'),
(268,23,44,'2023-03-20 00:00:00'),
(269,23,44,'2023-03-20 00:00:00'),
(270,23,44,'2023-03-20 00:00:00'),
(271,23,44,'2023-03-20 00:00:00'),
(272,23,44,'2023-03-20 00:00:00'),
(273,23,44,'2023-03-20 00:00:00'),
(274,23,44,'2023-03-20 00:00:00'),
(275,23,44,'2023-03-20 00:00:00'),
(276,23,50,'2023-03-20 00:00:00'),
(277,23,44,'2023-03-20 00:00:00'),
(278,23,50,'2023-03-20 00:00:00'),
(279,23,44,'2023-03-20 00:00:00'),
(280,23,44,'2023-03-20 00:00:00'),
(281,23,44,'2023-03-20 00:00:00'),
(282,23,44,'2023-03-20 00:00:00'),
(283,23,44,'2023-03-20 00:00:00'),
(284,23,44,'2023-03-20 00:00:00'),
(285,23,44,'2023-03-20 00:00:00'),
(286,23,44,'2023-03-20 00:00:00'),
(287,23,44,'2023-03-20 00:00:00'),
(288,23,44,'2023-03-20 00:00:00'),
(289,23,44,'2023-03-20 00:00:00'),
(290,23,44,'2023-03-20 00:00:00'),
(291,23,44,'2023-03-20 00:00:00'),
(292,23,44,'2023-03-20 00:00:00'),
(293,23,44,'2023-03-20 00:00:00'),
(294,23,44,'2023-03-20 00:00:00'),
(295,23,44,'2023-03-20 00:00:00'),
(296,23,44,'2023-03-20 00:00:00'),
(297,23,44,'2023-03-20 00:00:00'),
(298,23,44,'2023-03-20 00:00:00'),
(299,23,44,'2023-03-20 00:00:00'),
(300,23,44,'2023-03-20 00:00:00'),
(301,23,44,'2023-03-20 00:00:00'),
(302,23,45,'2023-03-20 00:00:00'),
(303,23,45,'2023-03-20 00:00:00'),
(304,23,45,'2023-03-20 00:00:00'),
(305,23,45,'2023-03-20 00:00:00'),
(306,23,45,'2023-03-20 00:00:00'),
(307,23,45,'2023-03-20 00:00:00'),
(308,24,55,'2023-03-20 00:00:00'),
(309,25,65,'2023-03-20 00:00:00'),
(310,25,70,'2023-03-20 00:00:00'),
(311,27,71,'2023-03-20 00:00:00'),
(312,27,71,'2023-03-20 00:00:00'),
(313,27,60,'2023-03-20 00:00:00'),
(314,26,49,'2023-03-20 00:00:00'),
(315,26,42,'2023-03-20 00:00:00'),
(316,25,41,'2023-03-20 00:00:00'),
(317,25,40,'2023-03-20 00:00:00'),
(318,25,40,'2023-03-20 00:00:00'),
(319,24,40,'2023-03-20 00:00:00'),
(320,24,41,'2023-03-20 00:00:00'),
(321,24,41,'2023-03-20 00:00:00'),
(322,24,41,'2023-03-20 00:00:00'),
(323,24,41,'2023-03-20 00:00:00'),
(324,24,42,'2023-03-20 00:00:00'),
(325,24,42,'2023-03-20 00:00:00'),
(326,24,42,'2023-03-20 00:00:00'),
(327,24,43,'2023-03-20 00:00:00'),
(328,24,43,'2023-03-20 00:00:00'),
(329,24,43,'2023-03-20 00:00:00'),
(330,23,43,'2023-03-20 00:00:00'),
(331,23,43,'2023-03-20 00:00:00'),
(332,23,43,'2023-03-20 00:00:00'),
(333,23,44,'2023-03-20 00:00:00'),
(334,23,44,'2023-03-20 00:00:00'),
(335,23,44,'2023-03-20 00:00:00'),
(336,23,44,'2023-03-20 00:00:00'),
(337,23,44,'2023-03-20 00:00:00'),
(338,23,44,'2023-03-20 00:00:00'),
(339,23,44,'2023-03-20 00:00:00'),
(340,23,44,'2023-03-20 00:00:00'),
(341,23,44,'2023-03-20 00:00:00'),
(342,23,44,'2023-03-20 00:00:00'),
(343,23,44,'2023-03-20 00:00:00'),
(344,23,44,'2023-03-20 00:00:00'),
(345,23,45,'2023-03-20 00:00:00'),
(346,23,45,'2023-03-20 00:00:00'),
(347,23,45,'2023-03-20 00:00:00'),
(348,23,45,'2023-03-20 00:00:00'),
(349,23,45,'2023-03-20 00:00:00'),
(350,23,45,'2023-03-20 00:00:00'),
(351,23,45,'2023-03-20 00:00:00'),
(352,23,45,'2023-03-20 00:00:00'),
(353,23,45,'2023-03-20 00:00:00'),
(354,23,45,'2023-03-20 00:00:00'),
(355,23,45,'2023-03-20 00:00:00'),
(356,23,45,'2023-03-20 00:00:00'),
(357,23,45,'2023-03-20 00:00:00'),
(358,23,45,'2023-03-20 00:00:00'),
(359,23,45,'2023-03-20 00:00:00'),
(360,23,45,'2023-03-20 00:00:00'),
(361,23,45,'2023-03-20 00:00:00'),
(362,23,45,'2023-03-20 00:00:00'),
(363,23,44,'2023-03-20 00:00:00'),
(364,23,44,'2023-03-20 00:00:00'),
(365,23,43,'2023-03-20 00:00:00'),
(366,23,42,'2023-03-20 00:00:00'),
(367,23,42,'2023-03-20 00:00:00'),
(368,22,42,'2023-03-20 00:00:00'),
(369,22,42,'2023-03-20 00:00:00'),
(370,22,42,'2023-03-20 00:00:00'),
(371,22,43,'2023-03-20 00:00:00'),
(372,22,43,'2023-03-20 00:00:00'),
(373,22,44,'2023-03-20 00:00:00'),
(374,22,44,'2023-03-20 00:00:00'),
(375,22,44,'2023-03-20 00:00:00'),
(376,22,44,'2023-03-20 00:00:00'),
(377,22,45,'2023-03-20 00:00:00'),
(378,22,44,'2023-03-20 00:00:00'),
(379,22,44,'2023-03-20 00:00:00'),
(380,22,44,'2023-03-20 00:00:00'),
(381,26,37,'2023-03-20 00:00:00'),
(382,26,37,'2023-03-20 00:00:00'),
(383,26,37,'2023-03-20 00:00:00'),
(384,26,37,'2023-03-20 00:00:00'),
(385,26,37,'2023-03-20 00:00:00'),
(386,26,38,'2023-03-20 00:00:00'),
(387,26,38,'2023-03-20 00:00:00'),
(388,26,38,'2023-03-20 00:00:00'),
(389,26,38,'2023-03-20 00:00:00'),
(390,26,38,'2023-03-20 00:00:00'),
(391,26,38,'2023-03-20 00:00:00'),
(392,26,38,'2023-03-20 00:00:00'),
(393,26,38,'2023-03-20 00:00:00'),
(394,26,38,'2023-03-20 00:00:00'),
(395,26,38,'2023-03-20 00:00:00'),
(396,26,38,'2023-03-20 00:00:00'),
(397,26,38,'2023-03-20 00:00:00'),
(398,26,38,'2023-03-20 00:00:00'),
(399,26,38,'2023-03-20 00:00:00'),
(400,26,38,'2023-03-20 00:00:00'),
(401,26,38,'2023-03-20 00:00:00'),
(402,26,38,'2023-03-20 00:00:00'),
(403,26,38,'2023-03-20 00:00:00'),
(404,26,37,'2023-03-20 00:00:00'),
(405,26,37,'2023-03-20 00:00:00'),
(406,26,37,'2023-03-20 00:00:00'),
(407,25,37,'2023-03-20 00:00:00'),
(408,25,37,'2023-03-20 00:00:00'),
(409,25,37,'2023-03-20 00:00:00'),
(410,25,37,'2023-03-20 00:00:00'),
(411,25,37,'2023-03-20 00:00:00'),
(412,25,37,'2023-03-20 00:00:00'),
(413,25,37,'2023-03-20 00:00:00'),
(414,25,37,'2023-03-20 00:00:00'),
(415,25,37,'2023-03-20 00:00:00'),
(416,25,36,'2023-03-20 00:00:00'),
(417,24,36,'2023-03-20 00:00:00'),
(418,24,37,'2023-03-20 00:00:00'),
(419,24,36,'2023-03-20 00:00:00'),
(420,24,36,'2023-03-20 00:00:00'),
(421,24,37,'2023-03-20 00:00:00'),
(422,24,37,'2023-03-20 00:00:00'),
(423,24,37,'2023-03-20 00:00:00'),
(424,24,37,'2023-03-20 00:00:00'),
(425,24,37,'2023-03-20 00:00:00'),
(426,24,37,'2023-03-20 00:00:00'),
(427,24,37,'2023-03-20 00:00:00'),
(428,24,37,'2023-03-20 00:00:00'),
(429,24,37,'2023-03-20 00:00:00'),
(430,24,37,'2023-03-20 00:00:00'),
(431,24,37,'2023-03-20 00:00:00'),
(432,24,37,'2023-03-20 00:00:00'),
(433,24,37,'2023-03-20 00:00:00'),
(434,24,37,'2023-03-20 00:00:00'),
(435,24,37,'2023-03-20 00:00:00'),
(436,24,37,'2023-03-20 00:00:00'),
(437,24,38,'2023-03-20 00:00:00'),
(438,24,38,'2023-03-20 00:00:00'),
(439,24,38,'2023-03-20 00:00:00'),
(440,24,38,'2023-03-20 00:00:00'),
(441,24,38,'2023-03-20 00:00:00'),
(442,24,38,'2023-03-20 00:00:00'),
(443,24,38,'2023-03-20 00:00:00'),
(444,24,38,'2023-03-20 00:00:00'),
(445,24,38,'2023-03-20 00:00:00'),
(446,24,38,'2023-03-20 00:00:00'),
(447,24,38,'2023-03-20 00:00:00'),
(448,24,38,'2023-03-20 00:00:00'),
(449,24,38,'2023-03-20 00:00:00'),
(450,24,38,'2023-03-20 00:00:00'),
(451,24,38,'2023-03-20 00:00:00'),
(452,23,38,'2023-03-20 00:00:00'),
(453,23,38,'2023-03-20 00:00:00'),
(454,23,38,'2023-03-20 00:00:00'),
(455,23,38,'2023-03-20 00:00:00'),
(456,23,38,'2023-03-20 00:00:00'),
(457,23,38,'2023-03-20 00:00:00'),
(458,23,38,'2023-03-20 00:00:00'),
(459,23,38,'2023-03-20 00:00:00'),
(460,23,40,'2023-03-20 00:00:00'),
(461,23,40,'2023-03-20 00:00:00'),
(462,23,40,'2023-03-20 00:00:00'),
(463,23,39,'2023-03-20 00:00:00'),
(464,23,39,'2023-03-20 00:00:00'),
(465,23,39,'2023-03-20 00:00:00'),
(466,23,39,'2023-03-20 00:00:00'),
(467,23,39,'2023-03-20 00:00:00'),
(468,23,39,'2023-03-20 00:00:00'),
(469,23,39,'2023-03-20 00:00:00'),
(470,23,39,'2023-03-20 00:00:00'),
(471,23,39,'2023-03-20 00:00:00'),
(472,23,39,'2023-03-20 00:00:00'),
(473,23,40,'2023-03-20 00:00:00'),
(474,23,40,'2023-03-20 00:00:00'),
(475,23,40,'2023-03-20 00:00:00'),
(476,23,40,'2023-03-20 00:00:00'),
(477,23,39,'2023-03-20 00:00:00'),
(478,23,39,'2023-03-20 00:00:00'),
(479,23,40,'2023-03-20 00:00:00'),
(480,23,40,'2023-03-20 00:00:00'),
(481,23,40,'2023-03-20 00:00:00'),
(482,23,40,'2023-03-20 00:00:00'),
(483,22,44,'2023-03-20 00:00:00'),
(484,22,43,'2023-03-20 00:00:00'),
(485,22,43,'2023-03-20 00:00:00'),
(486,22,43,'2023-03-20 00:00:00'),
(487,22,43,'2023-03-20 00:00:00'),
(488,22,44,'2023-03-20 00:00:00'),
(489,22,45,'2023-03-20 00:00:00'),
(490,22,45,'2023-03-20 00:00:00'),
(491,22,45,'2023-03-20 00:00:00'),
(492,22,45,'2023-03-20 00:00:00'),
(493,22,45,'2023-03-20 00:00:00'),
(494,22,45,'2023-03-20 00:00:00'),
(495,22,44,'2023-03-20 00:00:00'),
(496,22,44,'2023-03-20 00:00:00'),
(497,22,44,'2023-03-20 00:00:00'),
(498,22,44,'2023-03-20 00:00:00'),
(499,22,44,'2023-03-20 00:00:00'),
(500,22,44,'2023-03-20 00:00:00'),
(501,22,45,'2023-03-20 00:00:00'),
(502,22,45,'2023-03-20 00:00:00'),
(503,22,44,'2023-03-20 00:00:00'),
(504,22,44,'2023-03-20 00:00:00'),
(505,22,44,'2023-03-20 00:00:00'),
(506,22,45,'2023-03-20 00:00:00'),
(507,22,45,'2023-03-20 00:00:00'),
(508,22,46,'2023-03-20 00:00:00'),
(509,22,46,'2023-03-20 00:00:00'),
(510,22,46,'2023-03-20 00:00:00'),
(511,22,45,'2023-03-20 00:00:00'),
(512,22,45,'2023-03-20 00:00:00'),
(513,22,45,'2023-03-20 00:00:00'),
(514,22,45,'2023-03-20 00:00:00'),
(515,21,45,'2023-03-20 00:00:00'),
(516,21,44,'2023-03-20 00:00:00'),
(517,21,45,'2023-03-20 00:00:00'),
(518,21,45,'2023-03-20 00:00:00'),
(519,21,45,'2023-03-20 00:00:00'),
(520,21,45,'2023-03-20 00:00:00'),
(521,21,45,'2023-03-20 00:00:00'),
(522,21,45,'2023-03-20 00:00:00'),
(523,22,45,'2023-03-20 00:00:00'),
(524,22,45,'2023-03-20 00:00:00'),
(525,22,45,'2023-03-20 00:00:00'),
(526,22,46,'2023-03-20 00:00:00'),
(527,22,46,'2023-03-20 00:00:00'),
(528,22,46,'2023-03-20 00:00:00'),
(529,22,45,'2023-03-20 00:00:00'),
(530,22,45,'2023-03-20 00:00:00'),
(531,22,45,'2023-03-20 00:00:00'),
(532,22,45,'2023-03-20 00:00:00'),
(533,22,45,'2023-03-20 00:00:00'),
(534,22,45,'2023-03-20 00:00:00'),
(535,21,45,'2023-03-20 00:00:00'),
(536,21,45,'2023-03-20 00:00:00'),
(537,21,45,'2023-03-20 00:00:00'),
(538,21,45,'2023-03-20 00:00:00'),
(539,21,46,'2023-03-20 00:00:00'),
(540,22,51,'2023-03-21 18:20:13'),
(541,22,51,'2023-03-21 18:20:31'),
(542,22,51,'2023-03-21 18:20:48'),
(543,22,51,'2023-03-21 18:21:06'),
(544,22,51,'2023-03-21 18:21:23'),
(545,22,51,'2023-03-21 18:21:41'),
(546,22,50,'2023-03-21 18:21:59'),
(547,22,50,'2023-03-21 18:22:16'),
(548,22,50,'2023-03-21 18:22:34'),
(549,23,50,'2023-03-21 18:22:51'),
(550,23,50,'2023-03-21 18:23:09'),
(551,22,50,'2023-03-21 18:23:27'),
(552,22,50,'2023-03-21 18:23:44'),
(553,22,50,'2023-03-21 18:24:02'),
(554,22,50,'2023-03-21 18:24:19'),
(555,22,50,'2023-03-21 18:24:37'),
(556,22,50,'2023-03-21 18:24:54'),
(557,22,50,'2023-03-21 18:25:12'),
(558,22,50,'2023-03-21 18:25:30'),
(559,22,50,'2023-03-21 18:25:48'),
(560,22,50,'2023-03-21 18:26:05'),
(561,22,50,'2023-03-21 18:26:23'),
(562,22,50,'2023-03-21 18:26:40'),
(563,22,50,'2023-03-21 18:26:58'),
(564,22,50,'2023-03-21 18:27:25'),
(565,22,50,'2023-03-21 18:27:43'),
(566,22,50,'2023-03-21 18:28:00'),
(567,22,50,'2023-03-21 18:28:18'),
(568,22,51,'2023-03-21 18:28:36'),
(569,22,51,'2023-03-21 18:28:53'),
(570,22,51,'2023-03-21 18:29:11'),
(571,22,51,'2023-03-21 18:29:28'),
(572,22,51,'2023-03-21 18:29:46'),
(573,22,51,'2023-03-21 18:30:04'),
(574,22,51,'2023-03-21 18:30:22'),
(575,22,51,'2023-03-21 18:30:39'),
(576,22,51,'2023-03-21 18:30:57'),
(577,22,51,'2023-03-21 18:31:14'),
(578,22,51,'2023-03-21 18:31:32'),
(579,22,50,'2023-03-21 18:31:50'),
(580,22,50,'2023-03-21 18:32:07'),
(581,22,51,'2023-03-21 18:32:25'),
(582,23,51,'2023-03-21 18:32:42'),
(583,23,51,'2023-03-21 18:33:00'),
(584,23,51,'2023-03-21 18:33:17'),
(585,23,51,'2023-03-21 18:33:35'),
(586,23,50,'2023-03-21 18:33:53'),
(587,23,50,'2023-03-21 18:34:10'),
(588,23,50,'2023-03-21 18:34:28'),
(589,23,50,'2023-03-21 18:34:45'),
(590,23,50,'2023-03-21 18:35:03'),
(591,23,50,'2023-03-21 18:35:20'),
(592,27,53,'2023-03-21 18:35:38'),
(593,23,50,'2023-03-21 18:35:56'),
(594,23,50,'2023-03-21 18:36:14'),
(595,23,50,'2023-03-21 18:36:31'),
(596,23,50,'2023-03-21 18:36:49'),
(597,23,50,'2023-03-21 18:37:06'),
(598,22,50,'2023-03-21 18:37:24'),
(599,22,50,'2023-03-21 18:37:42'),
(600,22,50,'2023-03-21 18:37:59'),
(601,22,50,'2023-03-21 18:38:17'),
(602,22,50,'2023-03-21 18:38:30'),
(603,22,50,'2023-03-21 18:38:47'),
(604,22,50,'2023-03-21 18:39:00'),
(605,22,50,'2023-03-21 18:39:17'),
(606,22,50,'2023-03-21 18:39:47'),
(607,22,50,'2023-03-21 18:40:05'),
(608,22,50,'2023-03-21 18:40:22'),
(609,22,51,'2023-03-21 18:40:40'),
(610,22,51,'2023-03-21 18:40:58'),
(611,22,51,'2023-03-21 18:41:15'),
(612,22,51,'2023-03-21 18:41:33'),
(613,23,66,'2023-03-21 18:41:50'),
(614,22,51,'2023-03-21 18:42:08'),
(615,22,51,'2023-03-21 18:42:26'),
(616,22,51,'2023-03-21 18:42:43'),
(617,22,52,'2023-03-21 18:43:01'),
(618,22,52,'2023-03-21 18:43:18'),
(619,12,54,'2023-03-21 18:43:36'),
(620,22,52,'2023-03-21 18:43:54'),
(621,22,52,'2023-03-21 18:44:11'),
(622,22,52,'2023-03-21 18:44:29'),
(623,22,52,'2023-03-21 18:44:46'),
(624,22,52,'2023-03-21 18:45:04'),
(625,22,52,'2023-03-21 18:45:21'),
(626,22,52,'2023-03-21 18:45:39'),
(627,22,52,'2023-03-21 18:45:57'),
(628,22,52,'2023-03-21 18:46:14'),
(629,22,52,'2023-03-21 18:46:32'),
(630,22,52,'2023-03-21 18:46:49'),
(631,22,52,'2023-03-21 18:47:07'),
(632,22,52,'2023-03-21 18:47:25'),
(633,22,52,'2023-03-21 18:47:42'),
(634,22,52,'2023-03-21 18:48:00'),
(635,22,52,'2023-03-21 18:48:17'),
(636,22,52,'2023-03-21 18:48:35'),
(637,22,52,'2023-03-21 18:48:53'),
(638,22,52,'2023-03-21 18:49:10'),
(639,22,52,'2023-03-21 18:49:28'),
(640,22,52,'2023-03-21 18:49:45'),
(641,22,52,'2023-03-21 18:50:03'),
(642,22,52,'2023-03-21 18:50:21'),
(643,22,52,'2023-03-21 18:50:38'),
(644,22,52,'2023-03-21 18:50:56'),
(645,22,52,'2023-03-21 18:51:13'),
(646,22,52,'2023-03-21 18:51:31'),
(647,22,52,'2023-03-21 18:51:49'),
(648,22,52,'2023-03-21 18:52:06'),
(649,22,52,'2023-03-21 18:52:24'),
(650,22,52,'2023-03-21 18:52:41'),
(651,22,52,'2023-03-21 18:52:59'),
(652,22,52,'2023-03-21 18:53:16'),
(653,22,52,'2023-03-21 18:53:34'),
(654,22,52,'2023-03-21 18:53:52'),
(655,22,52,'2023-03-21 18:54:09'),
(656,22,52,'2023-03-21 18:54:27'),
(657,22,52,'2023-03-21 18:54:44'),
(658,22,52,'2023-03-21 18:55:02'),
(659,22,52,'2023-03-21 18:55:20'),
(660,22,52,'2023-03-21 18:55:37'),
(661,22,52,'2023-03-21 18:55:55'),
(662,22,52,'2023-03-21 18:56:12'),
(663,22,52,'2023-03-21 18:56:30'),
(664,22,54,'2023-03-21 18:57:36'),
(665,22,54,'2023-03-21 18:57:53'),
(666,22,53,'2023-03-21 18:58:11'),
(667,22,55,'2023-03-21 19:09:34'),
(668,22,55,'2023-03-21 19:09:52'),
(669,22,55,'2023-03-21 19:10:09'),
(670,22,54,'2023-03-21 19:10:27'),
(671,22,54,'2023-03-21 19:10:44'),
(672,22,53,'2023-03-21 19:11:02'),
(673,22,52,'2023-03-21 19:11:20'),
(674,22,52,'2023-03-21 19:11:37'),
(675,22,52,'2023-03-21 19:11:55'),
(676,22,52,'2023-03-21 19:12:12'),
(677,22,52,'2023-03-21 19:12:30'),
(678,22,52,'2023-03-21 19:12:48'),
(679,22,52,'2023-03-21 19:13:05'),
(680,22,52,'2023-03-21 19:13:23'),
(681,22,52,'2023-03-21 19:13:40'),
(682,22,52,'2023-03-21 19:13:58'),
(683,22,52,'2023-03-21 19:14:16'),
(684,22,53,'2023-03-21 19:14:33'),
(685,22,53,'2023-03-21 19:14:51'),
(686,22,52,'2023-03-21 19:15:08'),
(687,22,52,'2023-03-21 19:15:26'),
(688,22,52,'2023-03-21 19:15:44'),
(689,22,52,'2023-03-21 19:16:01'),
(690,22,52,'2023-03-21 19:16:19'),
(691,22,52,'2023-03-21 19:16:36'),
(692,22,52,'2023-03-21 19:16:54'),
(693,22,52,'2023-03-21 19:17:11'),
(694,22,52,'2023-03-21 19:17:29'),
(695,22,52,'2023-03-21 19:17:47'),
(696,22,52,'2023-03-21 19:18:05'),
(697,22,52,'2023-03-21 19:18:22'),
(698,22,52,'2023-03-21 19:18:40'),
(699,22,52,'2023-03-21 19:18:57'),
(700,22,52,'2023-03-21 19:19:15'),
(701,22,52,'2023-03-21 19:19:33'),
(702,22,52,'2023-03-21 19:19:50'),
(703,22,52,'2023-03-21 19:20:08'),
(704,22,52,'2023-03-21 19:20:26'),
(705,22,52,'2023-03-21 19:20:43'),
(706,22,52,'2023-03-21 19:21:01'),
(707,22,52,'2023-03-21 19:21:30'),
(708,22,52,'2023-03-21 19:21:48'),
(709,22,52,'2023-03-21 19:22:06'),
(710,22,52,'2023-03-21 19:22:23'),
(711,22,52,'2023-03-21 19:22:41'),
(712,22,52,'2023-03-21 19:22:58'),
(713,22,52,'2023-03-21 19:23:16'),
(714,22,52,'2023-03-21 19:23:34'),
(715,22,52,'2023-03-21 19:23:51'),
(716,22,52,'2023-03-21 19:24:09'),
(717,22,52,'2023-03-21 19:24:27'),
(718,22,52,'2023-03-21 19:24:44'),
(719,22,52,'2023-03-21 19:25:02'),
(720,22,52,'2023-03-21 19:25:19'),
(721,22,52,'2023-03-21 19:25:37'),
(722,22,52,'2023-03-21 19:25:55'),
(723,22,52,'2023-03-21 19:26:12'),
(724,21,52,'2023-03-21 19:26:30'),
(725,21,52,'2023-03-21 19:26:47'),
(726,21,52,'2023-03-21 19:27:05'),
(727,21,52,'2023-03-21 19:27:23'),
(728,21,52,'2023-03-21 19:27:40'),
(729,21,52,'2023-03-21 19:27:58'),
(730,21,52,'2023-03-21 19:28:15'),
(731,21,52,'2023-03-21 19:28:33'),
(732,21,53,'2023-03-21 19:28:50'),
(733,21,53,'2023-03-21 19:29:15'),
(734,21,54,'2023-03-21 19:29:32'),
(735,21,54,'2023-03-21 19:29:50'),
(736,21,54,'2023-03-21 19:30:08'),
(737,21,54,'2023-03-21 19:30:25'),
(738,21,54,'2023-03-21 19:30:43'),
(739,21,52,'2023-03-21 19:31:08'),
(740,21,52,'2023-03-21 19:31:26'),
(741,21,52,'2023-03-21 19:31:44'),
(742,21,53,'2023-03-21 19:32:01'),
(743,21,53,'2023-03-21 19:32:19'),
(744,21,53,'2023-03-21 19:32:36'),
(745,21,53,'2023-03-21 19:32:54'),
(746,21,53,'2023-03-21 19:33:11'),
(747,21,53,'2023-03-21 19:33:29'),
(748,21,53,'2023-03-21 19:33:47'),
(749,21,53,'2023-03-21 19:34:04'),
(750,21,53,'2023-03-21 19:34:22'),
(751,21,53,'2023-03-21 19:34:39'),
(752,21,53,'2023-03-21 19:34:57'),
(753,21,54,'2023-03-21 19:35:14'),
(754,21,54,'2023-03-21 19:35:32'),
(755,21,54,'2023-03-21 19:35:50'),
(756,21,53,'2023-03-21 19:36:07'),
(757,21,53,'2023-03-21 19:36:25'),
(758,21,53,'2023-03-21 19:36:42'),
(759,21,53,'2023-03-21 19:37:00'),
(822,26,50,'2023-03-22 12:18:07'),
(823,27,51,'2023-03-22 12:18:25'),
(824,28,52,'2023-03-22 12:18:42'),
(825,29,53,'2023-03-22 12:19:00'),
(826,30,54,'2023-03-22 12:19:17'),
(827,31,38,'2023-03-22 12:19:35'),
(828,32,39,'2023-03-22 12:19:52'),
(829,21,40,'2023-03-22 12:20:10'),
(830,22,41,'2023-03-22 12:20:27'),
(831,23,42,'2023-03-22 12:20:45'),
(832,24,43,'2023-03-22 12:21:03'),
(833,25,44,'2023-03-22 12:21:20'),
(834,26,45,'2023-03-22 12:21:38'),
(835,27,46,'2023-03-22 12:21:55'),
(836,28,47,'2023-03-22 12:22:13'),
(837,29,48,'2023-03-22 12:22:30'),
(838,30,49,'2023-03-22 12:22:48'),
(839,31,50,'2023-03-22 12:23:06'),
(840,32,51,'2023-03-22 12:23:23'),
(841,21,52,'2023-03-22 12:23:41'),
(842,22,53,'2023-03-22 12:23:58'),
(843,23,54,'2023-03-22 12:24:16'),
(844,24,38,'2023-03-22 12:24:33');
/*!40000 ALTER TABLE `dades` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-22 12:31:38