-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 12, 2024 at 08:36 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `itthink`
--
CREATE DATABASE IF NOT EXISTS `itthink` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `itthink`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id_categorie` int NOT NULL,
  `nom_categorie` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id_categorie`, `nom_categorie`) VALUES
(1, 'sports'),
(2, 'movies'),
(3, 'education'),
(4, 'games'),
(5, 'kids');

-- --------------------------------------------------------

--
-- Table structure for table `freelances`
--

CREATE TABLE `freelances` (
  `id_freelance` int NOT NULL,
  `nom_freelance` varchar(50) NOT NULL,
  `competences` varchar(50) NOT NULL,
  `id_utilisateur` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `freelances`
--

INSERT INTO `freelances` (`id_freelance`, `nom_freelance`, `competences`, `id_utilisateur`) VALUES
(1, 'issam', 'full stack dev', 1),
(2, 'oussama', 'full stack dev', 2),
(3, 'ibrahim', 'full stack dev', 3),
(4, 'wassim', 'full stack dev', 4),
(5, 'anas', 'full stack dev', 5);

-- --------------------------------------------------------

--
-- Table structure for table `offres`
--

CREATE TABLE `offres` (
  `id_offre` int NOT NULL,
  `montant` int NOT NULL,
  `delai` int NOT NULL,
  `id_freelance` int NOT NULL,
  `id_projet` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `offres`
--

INSERT INTO `offres` (`id_offre`, `montant`, `delai`, `id_freelance`, `id_projet`) VALUES
(1, 1000, 13, 1, 1),
(3, 100, 10, 2, 2),
(4, 200, 20, 3, 3),
(5, 300, 30, 4, 4),
(6, 400, 40, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `projets`
--

CREATE TABLE `projets` (
  `id_projet` int NOT NULL,
  `titre_projet` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `id_categorie` int NOT NULL,
  `id_sous_categorie` int NOT NULL,
  `id_utilisateur` int NOT NULL,
  `date_creation` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `projets`
--

INSERT INTO `projets` (`id_projet`, `titre_projet`, `description`, `id_categorie`, `id_sous_categorie`, `id_utilisateur`, `date_creation`) VALUES
(1, 'ball', 'the ball of wcup 2022', 1, 1, 1, '2024-12-11'),
(2, 'the punisher', 'punisher film', 2, 2, 2, '2024-12-11'),
(3, 'computer science', 'kdzokkdzo', 3, 3, 3, '2024-12-11'),
(4, 'pes', 'zdzdzdzd', 4, 4, 4, '2024-12-11'),
(5, 'spongbob', 'zdzdzdz', 5, 5, 5, '2024-12-11');

-- --------------------------------------------------------

--
-- Table structure for table `souscategories`
--

CREATE TABLE `souscategories` (
  `id_sous_categorie` int NOT NULL,
  `nom_sous_categorie` varchar(50) NOT NULL,
  `id_categorie` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `souscategories`
--

INSERT INTO `souscategories` (`id_sous_categorie`, `nom_sous_categorie`, `id_categorie`) VALUES
(1, 'sports', 1),
(2, 'drama', 2),
(3, 'maths', 3),
(4, 'pes', 4),
(5, 't&j', 5);

-- --------------------------------------------------------

--
-- Table structure for table `temoignages`
--

CREATE TABLE `temoignages` (
  `id_temoignage` int NOT NULL,
  `commentaire` varchar(100) NOT NULL,
  `id_utilisateur` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `temoignages`
--

INSERT INTO `temoignages` (`id_temoignage`, `commentaire`, `id_utilisateur`) VALUES
(3, 'faenkf', 1),
(4, 'scscsc', 2),
(5, 'rgrfe', 3),
(6, 'thrzs', 4),
(7, 'zrbbz', 5);

-- --------------------------------------------------------

--
-- Table structure for table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id_utilisateur` int NOT NULL,
  `nom_utilisateur` varchar(50) NOT NULL,
  `mot_de_passe` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id_utilisateur`, `nom_utilisateur`, `mot_de_passe`, `email`) VALUES
(1, 'issam', 'issam11', 'issammahtajto'),
(2, 'oussama', 'Hkkdn4', 'oussama.aa@to.ma'),
(3, 'ayoub', 'edMMd44', 'ayoub.jeb@to.ma'),
(4, 'wassim', 'Jbbeh21', 'wassim.mag@to.ma'),
(5, 'younes', 'KNvbxh10', 'ydot.aa@to.ma');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_categorie`);

--
-- Indexes for table `freelances`
--
ALTER TABLE `freelances`
  ADD PRIMARY KEY (`id_freelance`),
  ADD KEY `id_utilisateur` (`id_utilisateur`);

--
-- Indexes for table `offres`
--
ALTER TABLE `offres`
  ADD PRIMARY KEY (`id_offre`),
  ADD KEY `id_freelance` (`id_freelance`),
  ADD KEY `id_projet` (`id_projet`);

--
-- Indexes for table `projets`
--
ALTER TABLE `projets`
  ADD PRIMARY KEY (`id_projet`),
  ADD KEY `id_categorie` (`id_categorie`),
  ADD KEY `id_sous_categorie` (`id_sous_categorie`),
  ADD KEY `id_utilisateur` (`id_utilisateur`);

--
-- Indexes for table `souscategories`
--
ALTER TABLE `souscategories`
  ADD PRIMARY KEY (`id_sous_categorie`),
  ADD KEY `id_categorie` (`id_categorie`);

--
-- Indexes for table `temoignages`
--
ALTER TABLE `temoignages`
  ADD PRIMARY KEY (`id_temoignage`),
  ADD KEY `id_utilisateur` (`id_utilisateur`);

--
-- Indexes for table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id_utilisateur`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id_categorie` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `freelances`
--
ALTER TABLE `freelances`
  MODIFY `id_freelance` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `offres`
--
ALTER TABLE `offres`
  MODIFY `id_offre` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `projets`
--
ALTER TABLE `projets`
  MODIFY `id_projet` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `souscategories`
--
ALTER TABLE `souscategories`
  MODIFY `id_sous_categorie` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `temoignages`
--
ALTER TABLE `temoignages`
  MODIFY `id_temoignage` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id_utilisateur` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `freelances`
--
ALTER TABLE `freelances`
  ADD CONSTRAINT `freelances_ibfk_1` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateurs` (`id_utilisateur`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `offres`
--
ALTER TABLE `offres`
  ADD CONSTRAINT `offres_ibfk_1` FOREIGN KEY (`id_freelance`) REFERENCES `freelances` (`id_freelance`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `offres_ibfk_2` FOREIGN KEY (`id_projet`) REFERENCES `projets` (`id_projet`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `projets`
--
ALTER TABLE `projets`
  ADD CONSTRAINT `projets_ibfk_1` FOREIGN KEY (`id_categorie`) REFERENCES `categories` (`id_categorie`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `projets_ibfk_2` FOREIGN KEY (`id_sous_categorie`) REFERENCES `souscategories` (`id_sous_categorie`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `projets_ibfk_3` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateurs` (`id_utilisateur`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `souscategories`
--
ALTER TABLE `souscategories`
  ADD CONSTRAINT `souscategories_ibfk_1` FOREIGN KEY (`id_categorie`) REFERENCES `categories` (`id_categorie`);

--
-- Constraints for table `temoignages`
--
ALTER TABLE `temoignages`
  ADD CONSTRAINT `temoignages_ibfk_1` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateurs` (`id_utilisateur`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
