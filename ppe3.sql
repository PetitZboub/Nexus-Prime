-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 20 mars 2024 à 14:42
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ppe3`
--

-- --------------------------------------------------------

--
-- Structure de la table `candidat`
--

DROP TABLE IF EXISTS `candidat`;
CREATE TABLE IF NOT EXISTS `candidat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` text NOT NULL,
  `prenom` text NOT NULL,
  `mail` varchar(255) NOT NULL,
  `numTel` varchar(10) NOT NULL,
  `numEtRue` varchar(255) NOT NULL,
  `ville` text NOT NULL,
  `CP` int(11) NOT NULL,
  `urlCV` varchar(255) NOT NULL,
  `urlLettre` varchar(255) NOT NULL,
  `accepter` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `rhadmin`
--

DROP TABLE IF EXISTS `rhadmin`;
CREATE TABLE IF NOT EXISTS `rhadmin` (
  `nom` text NOT NULL,
  `prenom` text NOT NULL,
  `numIDEnt` int(10) NOT NULL,
  `hashMdp` varchar(255) NOT NULL,
  PRIMARY KEY (`numIDEnt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `rhadmin`
--

INSERT INTO `rhadmin` (`nom`, `prenom`, `numIDEnt`, `hashMdp`) VALUES
('ERB', 'Esteban', 1, 'mdp');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
