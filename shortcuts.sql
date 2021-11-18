-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Nov 18, 2021 at 12:46 PM
-- Server version: 8.0.25
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shortcuts`
--
DROP DATABASE IF EXISTS `shortcuts`;
CREATE DATABASE IF NOT EXISTS `shortcuts` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `shortcuts`;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(33, 'Développement'),
(34, 'Design'),
(35, 'PHP'),
(36, 'JavaScript');

-- --------------------------------------------------------

--
-- Table structure for table `media_object`
--

DROP TABLE IF EXISTS `media_object`;
CREATE TABLE `media_object` (
  `id` int NOT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_object`
--

INSERT INTO `media_object` (`id`, `file_path`) VALUES
(27, 'chrome.png'),
(28, 'firefox.png'),
(29, 'phpstorm.png'),
(30, 'vscode.png'),
(31, 'xd.png'),
(32, 'search-everywhere.png'),
(33, 'gotodeclaration.gif'),
(34, 'extendselection.gif'),
(35, 'multiplecursors.gif');

-- --------------------------------------------------------

--
-- Table structure for table `shortcut`
--

DROP TABLE IF EXISTS `shortcut`;
CREATE TABLE `shortcut` (
  `id` int NOT NULL,
  `software_id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `windows` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `macos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linux` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `image_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shortcut`
--

INSERT INTO `shortcut` (`id`, `software_id`, `title`, `windows`, `macos`, `linux`, `context`, `description`, `created_at`, `image_id`) VALUES
(22, 33, 'Indentation du code dans PHPStorm', 'Ctrl Alt i', 'Command Alt l', 'Ctrl Alt l', 'Dans un fichier .php', 'Indentation automatique du code PHP et suppression des espaces inutiles.', '2021-11-17 20:16:30', NULL),
(23, 34, 'Dupliquer une ligne dans VSCode', 'Ctrl Shift d', 'Command Shift d', 'Ctrl Shift d', 'Dans un fichier code', 'Duplication de la ligne sur laquelle se trouve le curseur dans un fichier.', '2021-11-17 20:16:30', NULL),
(24, 33, 'Rechercher dans un projet PHPStorm', 'Shift Shift', 'Shift Shift', 'Shift Shift', 'Dans le logiciel PHPStorm', 'Permet de rechercher n\'importe quoi (fichier, fonction, variable...) dans un projet.', '2021-11-17 20:16:30', 32),
(25, 33, 'Naviguer vers dans PHPStorm', 'Ctrl Click', 'Ctrl Click', 'Ctrl Click', 'Dans un fichier source dans le logiciel PHPStorm', 'Permet de naviguer rapidement vers la déclaration d\'une fonction, d\'une méthode, d\'une variable...', '2021-11-17 20:16:30', 33),
(26, 33, 'Etendre la sélection dans PHPStorm', 'Ctrl W', 'Command ⬆️', 'Ctrl W', 'Dans un fichier source dans le logiciel PHPStorm', 'Permet de sélectionner rapidement un bloc de code.', '2021-11-17 20:16:30', 34),
(27, 33, 'Avoir plusieurs curseurs dans PHPStorm', 'Alt Click', 'Alt Click️', 'Alt Click', 'Dans un fichier source dans le logiciel PHPStorm', 'Permet de créer plusieurs curseurs.', '2021-11-17 20:16:30', 35),
(28, 35, 'Outil de sélection dans Adobe XD', 'V', 'V', 'V', 'Dans un fichier Adobe XD', 'Permet d\'ouvrir rapidement l\'outil de sélection.', '2021-11-17 20:16:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shortcut_category`
--

DROP TABLE IF EXISTS `shortcut_category`;
CREATE TABLE `shortcut_category` (
  `shortcut_id` int NOT NULL,
  `category_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shortcut_category`
--

INSERT INTO `shortcut_category` (`shortcut_id`, `category_id`) VALUES
(22, 33),
(22, 35),
(22, 36),
(23, 33),
(24, 33),
(25, 33),
(26, 33),
(27, 33),
(28, 34);

-- --------------------------------------------------------

--
-- Table structure for table `software`
--

DROP TABLE IF EXISTS `software`;
CREATE TABLE `software` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `software`
--

INSERT INTO `software` (`id`, `name`, `logo_id`) VALUES
(31, 'Google Chrome', 27),
(32, 'Firefox', 28),
(33, 'PHPStorm', 29),
(34, 'Visual Studio Code', 30),
(35, 'XD', 31);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media_object`
--
ALTER TABLE `media_object`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shortcut`
--
ALTER TABLE `shortcut`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_2EF83F9CD7452741` (`software_id`),
  ADD KEY `IDX_2EF83F9C3DA5256D` (`image_id`);

--
-- Indexes for table `shortcut_category`
--
ALTER TABLE `shortcut_category`
  ADD PRIMARY KEY (`shortcut_id`,`category_id`),
  ADD KEY `IDX_32F7BCA279F0D498` (`shortcut_id`),
  ADD KEY `IDX_32F7BCA212469DE2` (`category_id`);

--
-- Indexes for table `software`
--
ALTER TABLE `software`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_77D068CFF98F144A` (`logo_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `media_object`
--
ALTER TABLE `media_object`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `shortcut`
--
ALTER TABLE `shortcut`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `software`
--
ALTER TABLE `software`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `shortcut`
--
ALTER TABLE `shortcut`
  ADD CONSTRAINT `FK_2EF83F9C3DA5256D` FOREIGN KEY (`image_id`) REFERENCES `media_object` (`id`),
  ADD CONSTRAINT `FK_2EF83F9CD7452741` FOREIGN KEY (`software_id`) REFERENCES `software` (`id`);

--
-- Constraints for table `shortcut_category`
--
ALTER TABLE `shortcut_category`
  ADD CONSTRAINT `FK_32F7BCA212469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_32F7BCA279F0D498` FOREIGN KEY (`shortcut_id`) REFERENCES `shortcut` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `software`
--
ALTER TABLE `software`
  ADD CONSTRAINT `FK_77D068CFF98F144A` FOREIGN KEY (`logo_id`) REFERENCES `media_object` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
