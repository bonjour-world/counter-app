-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Apr 29, 2022 at 02:19 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `redomat`
--

-- --------------------------------------------------------

--
-- Table structure for table `counter`
--

CREATE TABLE `counter` (
  `id` int(11) NOT NULL,
  `store` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `reserved_number` int(11) NOT NULL,
  `current_number` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `counter`
--

INSERT INTO `counter` (`id`, `store`, `date`, `reserved_number`, `current_number`, `created_at`, `updated_at`) VALUES
(26, 2, '2022-02-02', 5, 5555, '2022-02-01 23:00:00', '2022-02-01 23:00:00'),
(27, 2, '2022-02-03', 1, 1, '2022-02-02 23:00:00', '2022-02-02 23:00:00'),
(28, 2, '2022-02-07', 1, 0, '2022-02-06 23:00:00', '2022-02-06 23:00:00'),
(29, 2, '2022-02-08', 3, 0, '2022-02-07 23:00:00', '2022-02-07 23:00:00'),
(31, NULL, '2022-02-09', 135, 128, '2022-02-08 23:00:00', '2022-02-08 23:00:00'),
(32, NULL, '2022-02-10', 5, 5, '2022-02-09 23:00:00', '2022-02-09 23:00:00'),
(33, NULL, '2022-02-11', 28, 26, '2022-02-10 23:00:00', '2022-02-10 23:00:00'),
(34, NULL, '2022-02-14', 16, 15, '2022-02-13 23:00:00', '2022-02-13 23:00:00'),
(35, NULL, '2022-02-17', 1, 1, '2022-02-16 23:00:00', '2022-02-16 23:00:00'),
(36, NULL, '2022-02-18', 30, 30, '2022-02-17 23:00:00', '2022-02-17 23:00:00'),
(37, 2, '2022-02-18', 30, 30, '2022-02-17 23:00:00', '2022-02-17 23:00:00'),
(38, NULL, '2022-02-21', 6, 6, '2022-02-20 23:00:00', '2022-02-20 23:00:00'),
(39, NULL, '2022-02-22', 5, 5, '2022-02-21 23:00:00', '2022-02-21 23:00:00'),
(40, NULL, '2022-02-23', 1, 1, '2022-02-22 23:00:00', '2022-02-22 23:00:00'),
(41, NULL, '2022-03-07', 1, 0, '2022-03-06 23:00:00', '2022-03-07 13:53:04'),
(42, NULL, '2022-03-14', 3, 3, '2022-03-14 12:40:14', '2022-03-14 12:39:39'),
(43, NULL, '2022-03-15', 2, 2, '2022-03-15 09:56:26', '2022-03-15 09:56:20'),
(44, NULL, '2022-03-18', 2, 2, '2022-03-18 12:25:12', '2022-03-18 12:16:53'),
(45, NULL, '2022-03-21', 36, 0, '2022-03-21 14:06:35', '2022-03-21 09:02:03'),
(46, NULL, '2022-03-22', 52, 39, '2022-03-22 14:19:23', '2022-03-22 07:48:12'),
(47, NULL, '2022-03-23', 45, 0, '2022-03-23 14:31:12', '2022-03-23 06:53:37'),
(48, NULL, '2022-03-24', 2, 0, '2022-03-24 07:07:16', '2022-03-24 07:07:00'),
(49, NULL, '2022-03-29', 6, 6, '2022-03-29 06:43:26', '2022-03-29 06:29:35');

-- --------------------------------------------------------

--
-- Table structure for table `objects`
--

CREATE TABLE `objects` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `objects`
--

INSERT INTO `objects` (`id`, `name`) VALUES
(2, 'MP002'),
(3, 'MP003'),
(4, 'MP004'),
(221, 'MP006'),
(222, 'MP007'),
(223, 'MP009'),
(224, 'MP010'),
(225, 'MP011'),
(226, 'MP012'),
(227, 'MP013'),
(228, 'MP014'),
(229, 'MP015'),
(230, 'MP017'),
(231, 'MP022'),
(232, 'MP023'),
(233, 'MP024'),
(234, 'MP025'),
(235, 'MP026'),
(236, 'MP027'),
(237, 'MP028'),
(238, 'MP031'),
(239, 'MP032'),
(240, 'MP033'),
(241, 'MP034'),
(242, 'MP035'),
(243, 'MP036'),
(244, 'MP038'),
(245, 'MP039'),
(246, 'MP040'),
(247, 'MP041'),
(248, 'MP042'),
(249, 'MP043'),
(250, 'MP045'),
(251, 'MP046'),
(252, 'MP047'),
(253, 'MP048'),
(254, 'MP050'),
(255, 'MP051'),
(256, 'MP052'),
(257, 'MP053'),
(258, 'MP054'),
(259, 'MP055'),
(260, 'MP057'),
(261, 'MP058'),
(262, 'MP059'),
(263, 'MP060'),
(264, 'MP061'),
(266, 'MP063'),
(267, 'MP065'),
(268, 'MP066'),
(269, 'MP067'),
(270, 'MP068'),
(271, 'MP069'),
(272, 'MP070'),
(273, 'MP071'),
(274, 'MP073'),
(275, 'MP075'),
(276, 'MP076'),
(277, 'MP079'),
(278, 'MP081'),
(279, 'MP082'),
(280, 'MP083'),
(281, 'MP084'),
(282, 'MP086'),
(283, 'MP087'),
(284, 'MP088'),
(285, 'MP090'),
(286, 'MP091'),
(287, 'MP092'),
(288, 'MP093'),
(289, 'MP094'),
(290, 'MP095'),
(291, 'MP096'),
(292, 'MP098'),
(293, 'MP099'),
(294, 'MP102'),
(295, 'MP103'),
(296, 'MP104'),
(297, 'MP105'),
(298, 'MP106'),
(299, 'MP107'),
(300, 'MP108'),
(301, 'MP109'),
(302, 'MP110'),
(303, 'MP111'),
(304, 'MP112'),
(305, 'MP113'),
(306, 'MP114'),
(307, 'MP115'),
(308, 'MP116'),
(309, 'MP117'),
(310, 'MP118'),
(311, 'MP119'),
(312, 'MP120'),
(313, 'MP121'),
(314, 'MP122'),
(315, 'MP123'),
(316, 'MP124'),
(317, 'MP125'),
(318, 'MP126'),
(319, 'MP127'),
(320, 'MP128'),
(321, 'MP129'),
(322, 'MP130'),
(323, 'MP131'),
(324, 'MP132'),
(325, 'MP133'),
(326, 'MP134'),
(327, 'MP135'),
(328, 'MP136'),
(329, 'MP138'),
(330, 'MP139'),
(331, 'MP141'),
(332, 'MP142'),
(333, 'MP143'),
(334, 'MP144'),
(335, 'MP145'),
(336, 'MP147'),
(337, 'MP151'),
(338, 'MP155'),
(339, 'MP156'),
(340, 'MP157'),
(342, 'MP200'),
(343, 'MP202'),
(344, 'MP203'),
(345, 'MP204'),
(346, 'MP205'),
(347, 'MP206'),
(348, 'MP207'),
(349, 'MP208'),
(350, 'MP209'),
(351, 'MP210'),
(352, 'MP211'),
(353, 'MP212'),
(354, 'MP213'),
(355, 'MP214'),
(356, 'MP215'),
(357, 'MP216'),
(358, 'MP217'),
(359, 'MP218'),
(360, 'MP219'),
(361, 'MP220'),
(362, 'MP221'),
(363, 'MP222'),
(364, 'MP223'),
(365, 'MP224'),
(366, 'MP225'),
(367, 'MP226'),
(368, 'MP227'),
(369, 'MP228'),
(371, 'MP230'),
(372, 'MP231'),
(373, 'MP232'),
(374, 'MP233'),
(375, 'MP234'),
(376, 'MP235'),
(377, 'MP237'),
(378, 'MP238'),
(379, 'MP239'),
(380, 'MP240'),
(381, 'MP241'),
(382, 'MP242'),
(383, 'MP243'),
(384, 'MP244'),
(386, 'MP064'),
(390, 'MP078'),
(391, 'MP146'),
(394, 'MP021'),
(395, 'MP085'),
(399, 'MP150'),
(401, 'MP154'),
(402, 'MP152'),
(403, 'MP167');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `counter`
--
ALTER TABLE `counter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store` (`store`);

--
-- Indexes for table `objects`
--
ALTER TABLE `objects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `counter`
--
ALTER TABLE `counter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `objects`
--
ALTER TABLE `objects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=404;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `counter`
--
ALTER TABLE `counter`
  ADD CONSTRAINT `counter_ibfk_1` FOREIGN KEY (`store`) REFERENCES `objects` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
