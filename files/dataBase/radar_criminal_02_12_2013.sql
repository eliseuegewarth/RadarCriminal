-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tempo de Geração: 02/12/2013 às 13:37
-- Versão do servidor: 5.5.16
-- Versão do PHP: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de dados: `radar_criminal`
--
CREATE DATABASE IF NOT EXISTS `radar_criminal` DEFAULT CHARACTER SET latin1 COLLATE latin1_general_cs;
USE `radar_criminal`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `categoria`
--

CREATE TABLE IF NOT EXISTS `categoria` (
  `id_categoria` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome_categoria` varchar(100) COLLATE latin1_general_cs NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs AUTO_INCREMENT=4 ;

--
-- Fazendo dump de dados para tabela `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nome_categoria`) VALUES
(1, 'Criminalidade'),
(2, 'AÃ§Ã£o Policial'),
(3, 'TrÃ¢nsito');

-- --------------------------------------------------------

--
-- Estrutura para tabela `crime`
--

CREATE TABLE IF NOT EXISTS `crime` (
  `id_crime` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regiao_administrativa_id_regiao_administrativa` int(10) unsigned DEFAULT NULL,
  `tempo_id_tempo` int(10) unsigned NOT NULL,
  `natureza_id_natureza` int(10) unsigned NOT NULL,
  `quantidade` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_crime`),
  KEY `crime_FKIndex1` (`natureza_id_natureza`),
  KEY `crime_FKIndex4` (`tempo_id_tempo`),
  KEY `crime_FKIndex3` (`regiao_administrativa_id_regiao_administrativa`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs AUTO_INCREMENT=342 ;

--
-- Fazendo dump de dados para tabela `crime`
--

INSERT INTO `crime` (`id_crime`, `regiao_administrativa_id_regiao_administrativa`, `tempo_id_tempo`, `natureza_id_natureza`, `quantidade`) VALUES
(1, NULL, 1, 1, 540),
(2, NULL, 2, 1, 497),
(3, NULL, 3, 1, 586),
(4, NULL, 4, 1, 553),
(5, NULL, 5, 1, 512),
(6, NULL, 6, 1, 539),
(7, NULL, 7, 1, 567),
(8, NULL, 8, 1, 651),
(9, NULL, 9, 1, 756),
(10, NULL, 10, 1, 638),
(11, NULL, 11, 1, 722),
(12, NULL, 1, 2, 821),
(13, NULL, 2, 2, 789),
(14, NULL, 3, 2, 801),
(15, NULL, 4, 2, 873),
(16, NULL, 5, 2, 790),
(17, NULL, 6, 2, 890),
(18, NULL, 7, 2, 911),
(19, NULL, 8, 2, 1002),
(20, NULL, 9, 2, 1114),
(21, NULL, 10, 2, 1018),
(22, NULL, 11, 2, 1191),
(23, NULL, 1, 3, 12230),
(24, NULL, 2, 3, 13191),
(25, NULL, 3, 3, 12592),
(26, NULL, 4, 3, 12619),
(27, NULL, 5, 3, 13715),
(28, NULL, 6, 3, 13176),
(29, NULL, 7, 3, 11544),
(30, NULL, 8, 3, 10847),
(31, NULL, 9, 3, 11053),
(32, NULL, 10, 3, 10838),
(33, NULL, 11, 3, 10081),
(34, NULL, 1, 4, 84),
(35, NULL, 2, 4, 52),
(36, NULL, 3, 4, 69),
(37, NULL, 4, 4, 62),
(38, NULL, 5, 4, 51),
(39, NULL, 6, 4, 55),
(40, NULL, 7, 4, 49),
(41, NULL, 8, 4, 60),
(42, NULL, 9, 4, 52),
(43, NULL, 10, 4, 42),
(44, NULL, 11, 4, 49),
(45, NULL, 1, 5, 111),
(46, NULL, 2, 5, 115),
(47, NULL, 3, 5, 163),
(48, NULL, 4, 5, 148),
(49, NULL, 5, 5, 147),
(50, NULL, 6, 5, 176),
(51, NULL, 7, 5, 166),
(52, NULL, 8, 5, 181),
(53, NULL, 9, 5, 195),
(54, NULL, 10, 5, 170),
(55, NULL, 11, 5, 190),
(56, NULL, 1, 6, 89),
(57, NULL, 2, 6, 91),
(58, NULL, 3, 6, 236),
(59, NULL, 4, 6, 409),
(60, NULL, 5, 6, 411),
(61, NULL, 6, 6, 378),
(62, NULL, 7, 6, 410),
(63, NULL, 8, 6, 533),
(64, NULL, 9, 6, 618),
(65, NULL, 10, 6, 504),
(66, NULL, 11, 6, 675),
(67, NULL, 1, 7, 95),
(68, NULL, 2, 7, 62),
(69, NULL, 3, 7, 107),
(70, NULL, 4, 7, 116),
(71, NULL, 5, 7, 82),
(72, NULL, 6, 7, 68),
(73, NULL, 7, 7, 46),
(74, NULL, 8, 7, 60),
(75, NULL, 9, 7, 48),
(76, NULL, 10, 7, 30),
(77, NULL, 11, 7, 22),
(78, NULL, 1, 8, 35),
(79, NULL, 2, 8, 32),
(80, NULL, 3, 8, 21),
(81, NULL, 4, 8, 49),
(82, NULL, 5, 8, 32),
(83, NULL, 6, 8, 9),
(84, NULL, 7, 8, 5),
(85, NULL, 8, 8, 1),
(86, NULL, 9, 8, 11),
(87, NULL, 10, 8, 16),
(88, NULL, 11, 8, 12),
(89, NULL, 1, 9, 1443),
(90, NULL, 2, 9, 1145),
(91, NULL, 3, 9, 1215),
(92, NULL, 4, 9, 1135),
(93, NULL, 5, 9, 648),
(94, NULL, 6, 9, 581),
(95, NULL, 7, 9, 613),
(96, NULL, 8, 9, 1076),
(97, NULL, 9, 9, 1599),
(98, NULL, 10, 9, 1453),
(99, NULL, 11, 9, 1164),
(100, NULL, 1, 10, 357),
(101, NULL, 2, 10, 223),
(102, NULL, 3, 10, 401),
(103, NULL, 4, 10, 474),
(104, NULL, 5, 10, 513),
(105, NULL, 6, 10, 536),
(106, NULL, 7, 10, 356),
(107, NULL, 8, 10, 284),
(108, NULL, 9, 10, 0),
(109, NULL, 10, 10, 0),
(110, NULL, 11, 10, 0),
(111, NULL, 1, 11, 18),
(112, NULL, 2, 11, 5),
(113, NULL, 3, 11, 16),
(114, NULL, 4, 11, 4),
(115, NULL, 5, 11, 3),
(116, NULL, 6, 11, 1),
(117, NULL, 7, 11, 1),
(118, NULL, 8, 11, 0),
(119, NULL, 9, 11, 7),
(120, NULL, 10, 11, 1),
(121, NULL, 11, 11, 0),
(122, NULL, 1, 12, 31),
(123, NULL, 2, 12, 33),
(124, NULL, 3, 12, 32),
(125, NULL, 4, 12, 28),
(126, NULL, 5, 12, 16),
(127, NULL, 6, 12, 15),
(128, NULL, 7, 12, 5),
(129, NULL, 8, 12, 9),
(130, NULL, 9, 12, 27),
(131, NULL, 10, 12, 27),
(132, NULL, 11, 12, 6),
(133, NULL, 1, 13, 1803),
(134, NULL, 2, 13, 1799),
(135, NULL, 3, 13, 2030),
(136, NULL, 4, 13, 1926),
(137, NULL, 5, 13, 1617),
(138, NULL, 6, 13, 1769),
(139, NULL, 7, 13, 1922),
(140, NULL, 8, 13, 2490),
(141, NULL, 9, 13, 2375),
(142, NULL, 10, 13, 2036),
(143, NULL, 11, 13, 2016),
(144, NULL, 1, 14, 455),
(145, NULL, 2, 14, 461),
(146, NULL, 3, 14, 553),
(147, NULL, 4, 14, 592),
(148, NULL, 5, 14, 607),
(149, NULL, 6, 14, 526),
(150, NULL, 7, 14, 418),
(151, NULL, 8, 14, 410),
(152, NULL, 9, 14, 581),
(153, NULL, 10, 14, 429),
(154, NULL, 11, 14, 350),
(155, NULL, 1, 15, 340),
(156, NULL, 2, 15, 131),
(157, NULL, 3, 15, 182),
(158, NULL, 4, 15, 87),
(159, NULL, 5, 15, 69),
(160, NULL, 6, 15, 56),
(161, NULL, 7, 15, 24),
(162, NULL, 8, 15, 66),
(163, NULL, 9, 15, 72),
(164, NULL, 10, 15, 51),
(165, NULL, 11, 15, 15),
(166, NULL, 1, 16, 1098),
(167, NULL, 2, 16, 1015),
(168, NULL, 3, 16, 994),
(169, NULL, 4, 16, 910),
(170, NULL, 5, 16, 437),
(171, NULL, 6, 16, 661),
(172, NULL, 7, 16, 663),
(173, NULL, 8, 16, 907),
(174, NULL, 9, 16, 885),
(175, NULL, 10, 16, 773),
(176, NULL, 11, 16, 761),
(177, NULL, 1, 17, 15030),
(178, NULL, 2, 17, 17191),
(179, NULL, 3, 17, 21804),
(180, NULL, 4, 17, 21549),
(181, NULL, 5, 17, 20596),
(182, NULL, 6, 17, 21692),
(183, NULL, 7, 17, 20491),
(184, NULL, 8, 17, 21758),
(185, NULL, 9, 17, 22714),
(186, NULL, 10, 17, 18414),
(187, NULL, 11, 17, 16505),
(188, NULL, 1, 18, 2038),
(189, NULL, 2, 18, 1570),
(190, NULL, 3, 18, 1740),
(191, NULL, 4, 18, 1859),
(192, NULL, 5, 18, 1491),
(193, NULL, 6, 18, 1596),
(194, NULL, 7, 18, 1574),
(195, NULL, 8, 18, 2135),
(196, NULL, 9, 18, 2957),
(197, NULL, 10, 18, 2854),
(198, NULL, 11, 18, 2823),
(199, NULL, 1, 19, 6901),
(200, NULL, 2, 19, 6341),
(201, NULL, 3, 19, 7045),
(202, NULL, 4, 19, 7134),
(203, NULL, 5, 19, 7046),
(204, NULL, 6, 19, 8141),
(205, NULL, 7, 19, 7643),
(206, NULL, 8, 19, 7979),
(207, NULL, 9, 19, 7825),
(208, NULL, 10, 19, 6438),
(209, NULL, 11, 19, 6162),
(210, NULL, 1, 20, 6548),
(211, NULL, 2, 20, 6740),
(212, NULL, 3, 20, 8329),
(213, NULL, 4, 20, 8568),
(214, NULL, 5, 20, 9229),
(215, NULL, 6, 20, 9534),
(216, NULL, 7, 20, 8585),
(217, NULL, 8, 20, 8102),
(218, NULL, 9, 20, 7645),
(219, NULL, 10, 20, 7273),
(220, NULL, 11, 20, 6649),
(221, NULL, 1, 21, 2319),
(222, NULL, 2, 21, 2434),
(223, NULL, 3, 21, 2910),
(224, NULL, 4, 21, 2938),
(225, NULL, 5, 21, 3178),
(226, NULL, 6, 21, 3366),
(227, NULL, 7, 21, 3508),
(228, NULL, 8, 21, 3585),
(229, NULL, 9, 21, 3993),
(230, NULL, 10, 21, 3408),
(231, NULL, 11, 21, 3390),
(232, NULL, 1, 22, 12933),
(233, NULL, 2, 22, 13418),
(234, NULL, 3, 22, 16269),
(235, NULL, 4, 22, 15454),
(236, NULL, 5, 22, 14215),
(237, NULL, 6, 22, 12386),
(238, NULL, 7, 22, 10621),
(239, NULL, 8, 22, 11559),
(240, NULL, 9, 22, 10636),
(241, NULL, 10, 22, 10536),
(242, NULL, 11, 22, 11128),
(243, NULL, 1, 23, 25359),
(244, NULL, 2, 23, 32082),
(245, NULL, 3, 23, 39436),
(246, NULL, 4, 23, 37834),
(247, NULL, 5, 23, 36059),
(248, NULL, 6, 23, 41432),
(249, NULL, 7, 23, 38661),
(250, NULL, 8, 23, 36996),
(251, NULL, 9, 23, 34792),
(252, NULL, 10, 23, 36304),
(253, NULL, 11, 23, 38689),
(254, NULL, 1, 24, 740),
(255, NULL, 2, 24, 687),
(256, NULL, 3, 24, 590),
(257, NULL, 4, 24, 516),
(258, NULL, 5, 24, 605),
(259, NULL, 6, 24, 529),
(260, NULL, 7, 24, 537),
(261, NULL, 8, 24, 504),
(262, NULL, 9, 24, 601),
(263, NULL, 10, 24, 585),
(264, NULL, 11, 24, 739),
(265, NULL, 1, 25, 63),
(266, NULL, 2, 25, 79),
(267, NULL, 3, 25, 59),
(268, NULL, 4, 25, 77),
(269, NULL, 5, 25, 65),
(270, NULL, 6, 25, 65),
(271, NULL, 7, 25, 43),
(272, NULL, 8, 25, 45),
(273, NULL, 9, 25, 41),
(274, NULL, 10, 25, 62),
(275, NULL, 11, 25, 84),
(276, NULL, 1, 26, 665),
(277, NULL, 2, 26, 681),
(278, NULL, 3, 26, 620),
(279, NULL, 4, 26, 685),
(280, NULL, 5, 26, 691),
(281, NULL, 6, 26, 817),
(282, NULL, 7, 26, 1002),
(283, NULL, 8, 26, 1022),
(284, NULL, 9, 26, 1153),
(285, NULL, 10, 26, 1559),
(286, NULL, 11, 26, 2077),
(287, NULL, 1, 27, 1195),
(288, NULL, 2, 27, 1470),
(289, NULL, 3, 27, 1361),
(290, NULL, 4, 27, 1673),
(291, NULL, 5, 27, 1760),
(292, NULL, 6, 27, 2175),
(293, NULL, 7, 27, 2758),
(294, NULL, 8, 27, 2716),
(295, NULL, 9, 27, 2968),
(296, NULL, 10, 27, 3446),
(297, NULL, 11, 27, 4152),
(298, NULL, 1, 28, 1550),
(299, NULL, 2, 28, 1533),
(300, NULL, 3, 28, 1625),
(301, NULL, 4, 28, 1674),
(302, NULL, 5, 28, 1375),
(303, NULL, 6, 28, 1332),
(304, NULL, 7, 28, 1205),
(305, NULL, 8, 28, 1272),
(306, NULL, 9, 28, 1509),
(307, NULL, 10, 28, 1366),
(308, NULL, 11, 28, 1286),
(309, NULL, 1, 29, 5458),
(310, NULL, 2, 29, 4807),
(311, NULL, 3, 29, 5142),
(312, NULL, 4, 29, 5473),
(313, NULL, 5, 29, 5111),
(314, NULL, 6, 29, 5321),
(315, NULL, 7, 29, 5343),
(316, NULL, 8, 29, 5650),
(317, NULL, 9, 29, 6240),
(318, NULL, 10, 29, 5300),
(319, NULL, 11, 29, 5046),
(320, NULL, 1, 30, 6941),
(321, NULL, 2, 30, 7561),
(322, NULL, 3, 30, 7665),
(323, NULL, 4, 30, 7919),
(324, NULL, 5, 30, 8369),
(325, NULL, 6, 30, 8659),
(326, NULL, 7, 30, 9584),
(327, NULL, 8, 30, 9443),
(328, NULL, 9, 30, 9203),
(329, NULL, 10, 30, 9328),
(330, NULL, 11, 30, 8858),
(331, NULL, 1, 31, 371),
(332, NULL, 2, 31, 393),
(333, NULL, 3, 31, 440),
(334, NULL, 4, 31, 338),
(335, NULL, 5, 31, 357),
(336, NULL, 6, 31, 331),
(337, NULL, 7, 31, 337),
(338, NULL, 8, 31, 341),
(339, NULL, 9, 31, 306),
(340, NULL, 10, 31, 373),
(341, NULL, 11, 31, 350);

-- --------------------------------------------------------

--
-- Estrutura para tabela `natureza`
--

CREATE TABLE IF NOT EXISTS `natureza` (
  `id_natureza` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `categoria_id_categoria` int(10) unsigned NOT NULL,
  `natureza` varchar(50) COLLATE latin1_general_cs DEFAULT NULL,
  PRIMARY KEY (`id_natureza`),
  KEY `natureza_FKIndex1` (`categoria_id_categoria`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs AUTO_INCREMENT=32 ;

--
-- Fazendo dump de dados para tabela `natureza`
--

INSERT INTO `natureza` (`id_natureza`, `categoria_id_categoria`, `natureza`) VALUES
(1, 1, 'HomicÃ­dio'),
(2, 1, 'Tentativa de HomicÃ­dio'),
(3, 1, 'LesÃ£o Corporal'),
(4, 1, 'LatrocÃ­nio'),
(5, 1, 'Tentativa de LatrocÃ­nio'),
(6, 1, 'Roubo RestriÃ§Ã£o de Liberdade'),
(7, 1, 'Roubo com ExtorsÃ£o'),
(8, 1, 'Roubo de Carga'),
(9, 1, 'Roubo em Coletivo'),
(10, 1, 'Roubo Transporte Alternativo'),
(11, 1, 'Roubo a Banco'),
(12, 1, 'Roubo a Casa LotÃ©rica'),
(13, 1, 'Roubo em ComÃ©rcio'),
(14, 1, 'Roubo em ResidÃªncia'),
(15, 1, 'Roubo CaminhÃ£o Bebidas'),
(16, 1, 'Roubo Posto de Gasolina'),
(17, 1, 'Roubo Transeunte'),
(18, 1, 'Roubo de VeÃ­culo'),
(19, 1, 'Furto de VeÃ­culo'),
(20, 1, 'Furto em ResidÃªncia'),
(21, 1, 'Furto em ComÃ©rcio'),
(22, 1, 'Furto em VeÃ­culo'),
(23, 1, 'Furtos Diversos'),
(24, 1, 'Estupro'),
(25, 1, 'Tentativa de Estupro'),
(26, 2, 'TrÃ¡fico de Drogas'),
(27, 2, 'Uso e Porte de Drogas'),
(28, 2, 'Porte de Arma'),
(29, 2, 'LocalizaÃ§Ã£o de VeÃ­culo'),
(30, 3, 'LesÃ£o Corporal Culposa'),
(31, 3, 'HomicÃ­dio Culposo');

-- --------------------------------------------------------

--
-- Estrutura para tabela `regiao_administrativa`
--

CREATE TABLE IF NOT EXISTS `regiao_administrativa` (
  `id_regiao_administrativa` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) COLLATE latin1_general_cs DEFAULT NULL,
  PRIMARY KEY (`id_regiao_administrativa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tempo`
--

CREATE TABLE IF NOT EXISTS `tempo` (
  `id_tempo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ano` varchar(10) COLLATE latin1_general_cs DEFAULT NULL,
  `mes` varchar(30) COLLATE latin1_general_cs DEFAULT NULL,
  PRIMARY KEY (`id_tempo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs AUTO_INCREMENT=12 ;

--
-- Fazendo dump de dados para tabela `tempo`
--

INSERT INTO `tempo` (`id_tempo`, `ano`, `mes`) VALUES
(1, '2001', NULL),
(2, '2002', NULL),
(3, '2003', NULL),
(4, '2004', NULL),
(5, '2005', NULL),
(6, '2006', NULL),
(7, '2007', NULL),
(8, '2008', NULL),
(9, '2009', NULL),
(10, '2010', NULL),
(11, '2011', NULL);

-- --------------------------------------------------------

--
-- Estrutura stand-in para view `totalgeralcrimes`
--
CREATE TABLE IF NOT EXISTS `totalgeralcrimes` (
`total` decimal(32,0)
);
-- --------------------------------------------------------

--
-- Estrutura para view `totalgeralcrimes`
--
DROP TABLE IF EXISTS `totalgeralcrimes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `totalgeralcrimes` AS select sum(`c`.`quantidade`) AS `total` from (`crime` `c` join `natureza` `n`) where ((`c`.`natureza_id_natureza` = `n`.`id_natureza`) and (`n`.`id_natureza` = 1)and (`c`.`id_crime` between 1 and 341)) union select sum(`c`.`quantidade`) AS `total` from (`crime` `c` join `natureza` `n`) where (`c`.`natureza_id_natureza` = (`n`.`id_natureza` between 1 and 3)and (`c`.`id_crime` between 1 and 341)) union select sum(`c`.`quantidade`) AS `total` from (`crime` `c` join `natureza` `n`) where ((`c`.`natureza_id_natureza` = `n`.`id_natureza`) = (`n`.`id_natureza` between 6 and 18)and (`c`.`id_crime` between 1 and 341)) union select sum(`c`.`quantidade`) AS `total` from (`crime` `c` join `natureza` `n`) where ((`c`.`natureza_id_natureza` = `n`.`id_natureza`) and (`n`.`id_natureza` between 19 and 23)and (`c`.`id_crime` between 1 and 341)) union select sum(`c`.`quantidade`) AS `total` from (`crime` `c` join `natureza` `n`) where ((`c`.`natureza_id_natureza` = `n`.`id_natureza`) and (`n`.`id_natureza` = 3)and (`c`.`id_crime` between 1 and 341)) union select sum(`c`.`quantidade`) AS `total` from (`crime` `c` join `natureza` `n`) where ((`c`.`natureza_id_natureza` = `n`.`id_natureza`) and (`n`.`id_natureza` = 2)and (`c`.`id_crime` between 1 and 341)) union select sum(`c`.`quantidade`) AS `total` from (`crime` `c` join `natureza` `n`) where ((`c`.`natureza_id_natureza` = `n`.`id_natureza`) and (`n`.`id_natureza` between 24 and 25)and (`c`.`id_crime` between 1 and 341)) union select sum(`c`.`quantidade`) AS `total` from (`crime` `c` join `natureza` `n`) where ((`c`.`natureza_id_natureza` = `n`.`id_natureza`) and (`n`.`id_natureza` between 26 and 29)and (`c`.`id_crime` between 1 and 341)) union select sum(`c`.`quantidade`) AS `total` from (`crime` `c` join `natureza` `n`) where ((`c`.`natureza_id_natureza` = `n`.`id_natureza`) and (`n`.`id_natureza` between 30 and 31)and (`c`.`id_crime` between 1 and 341));

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;