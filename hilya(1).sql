-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 24 mai 2025 à 16:19
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `hilya`
--

-- --------------------------------------------------------

--
-- Structure de la table `admine`
--

CREATE TABLE `admine` (
  `nom_ad` varchar(15) DEFAULT NULL,
  `prenom_ad` varchar(20) NOT NULL,
  `email_ad` varchar(70) NOT NULL,
  `motpas_ad` varchar(16) NOT NULL,
  `id_ad` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `nom_cl` varchar(15) NOT NULL,
  `prenom_cl` varchar(20) NOT NULL,
  `email_cl` varchar(70) NOT NULL,
  `num` int(10) NOT NULL,
  `id_cl` int(8) NOT NULL,
  `num_card` int(20) DEFAULT NULL,
  `fin_card` date DEFAULT NULL,
  `mot_pass` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id_pr` int(11) NOT NULL,
  `nom_pr` varchar(30) NOT NULL,
  `prix` int(11) NOT NULL,
  `Quantité` int(11) DEFAULT NULL,
  `discreption` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admine`
--
ALTER TABLE `admine`
  ADD PRIMARY KEY (`id_ad`),
  ADD UNIQUE KEY `email_ad` (`email_ad`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_cl`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id_pr`),
  ADD UNIQUE KEY `PRIXPR` (`nom_pr`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `id_pr` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
