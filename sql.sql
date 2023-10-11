-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 10 oct. 2023 à 17:58
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `shuttereroz`
--

-- --------------------------------------------------------

--
-- Structure de la table `photos`
--

CREATE TABLE `photos` (
  `id` int(11) NOT NULL,
  `photo_name` varchar(100) NOT NULL,
  `photo_description` varchar(1000) NOT NULL,
  `photo_price` decimal(8,2) NOT NULL,
  `photo_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `photos`
--

INSERT INTO `photos` (`id`, `photo_name`, `photo_description`, `photo_price`, `photo_path`) VALUES
(1, 'Nom de la photo 1', 'Un renard majestueux se tient devant la caméra, son regard perçant fixant directement l\'objectif. Son pelage roux vif brille sous les rayons du soleil filtrant à travers les arbres de la forêt de Montmorency. Les traits délicats de son visage expriment une intelligence vive, accentuée par ses oreilles dressées avec attention. Ses yeux d\'un ambre profond reflètent curiosité et audace. Le renard est prêt à s\'échapper d\'un bond, mais montre aussi une confiance tranquille. L\'arrière-plan dépeint une forêt enchanteuse aux teintes automnales, complétant la beauté naturelle de cette rencontre captivante avec la faune sauvage.', 19.99, './photo/renard.jpg'),
(2, 'Nom de la photo 2', '', 24.99, './photo/tigre.jpg'),
(3, 'Nom de la photo 3', 'Description photo', 24.99, './photo/cerf.jpg'),
(4, 'Nom de la photo 4', '', 24.99, './photo/oiseau.jpg'),
(5, 'Nom de la photo 5', '', 24.99, './photo/ouistiti.jpg'),
(6, 'Nom de la photo 6', '', 24.99, './photo/cameleon.jpg'),
(7, 'Nom de la photo 7', '', 24.99, './photo/oiseau2.jpeg'),
(8, 'Nom de la photo 8', '', 24.99, './photo/chat.jpg');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
