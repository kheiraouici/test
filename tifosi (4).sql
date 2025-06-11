-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 09 juin 2025 à 17:05
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
-- Base de données : `tifosi`
--

-- --------------------------------------------------------

--
-- Structure de la table `achete`
--

CREATE TABLE `achete` (
  `id_date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `achete`
--

INSERT INTO `achete` (`id_date`) VALUES
('2020-05-12'),
('2028-08-10'),
('2030-01-12');

-- --------------------------------------------------------

--
-- Structure de la table `appartient`
--

CREATE TABLE `appartient` (
  `id_appartient` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `boisson`
--

CREATE TABLE `boisson` (
  `id_boisson` int(11) NOT NULL,
  `nom_boisson` varchar(50) DEFAULT NULL,
  `marque` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `boisson`
--

INSERT INTO `boisson` (`id_boisson`, `nom_boisson`, `marque`) VALUES
(4, 'coca-cola zero', 'Coca-cola'),
(5, 'Coca-cola original', 'Coca-cola'),
(6, 'Fanta citron', 'Coca-cola'),
(7, 'Fanta orange', 'Coca-cola'),
(8, 'Capri-sun', 'Coca-cola'),
(9, 'Pepsi', 'Pepsico'),
(10, 'Pepsi max zero', 'Pepsico'),
(11, 'lipton zéro citron', 'Pepsico'),
(12, 'Lipton peach', 'Pepsico'),
(13, 'Monster energy ultra gold', 'Monster'),
(14, 'Monster energy ultra blue', 'Monster'),
(15, 'Eau de source', 'Cristalline');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id_client` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `code_postale` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id_client`, `nom`, `email`, `code_postale`) VALUES
(1, 'doe john', 'johndoe@gmail.com', 13001),
(2, 'doe jane', 'janedoe@gmail.com', 13001),
(3, 'paul arthur', 'paularthur@gmail.com', 13002),
(4, 'patrick doe', 'patrickdoe@gmail.com', 13003);

-- --------------------------------------------------------

--
-- Structure de la table `comprend`
--

CREATE TABLE `comprend` (
  `idquantite` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `contient`
--

CREATE TABLE `contient` (
  `id_contient` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `est constitue`
--

CREATE TABLE `est constitue` (
  `id_constitue` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `focaccia`
--

CREATE TABLE `focaccia` (
  `id_focaccia` int(11) NOT NULL,
  `nom_focaccia` varchar(255) DEFAULT NULL,
  `prix` decimal(5,2) DEFAULT NULL,
  `ingredient` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `focaccia`
--

INSERT INTO `focaccia` (`id_focaccia`, `nom_focaccia`, `prix`, `ingredient`) VALUES
(1, 'Mozaccia', 9.00, 'Base tomate (200), Mozarella (50), cresson (20), jambon fumé 80, ail 2, artichaut20, champignon 40, parmesan 50, poivre 1, olive noire 20'),
(2, 'Gorgonzolaccia', 10.00, 'Base tomate 200, Gorgonzola 50, cresson 20, ail 2, champignon 40, parmesan 50, poivre 1, olive noire 20'),
(3, 'Raclaccia', 8.00, 'Base tomate 200, raclette 50, cresson 20 , ail 2, champignon 40, parmesan 50, poivre 1'),
(4, 'Emmentalaccia', 8.00, 'Base crème 200, Emmental 50, cresson 20, champignon 40, parmesan 50, poivre 1, oignon 20'),
(5, 'Tradizione', 8.00, 'Base tomate 200, Mozarella 50, cresson 20, jambon cuit 80, champignon(80), parmesan 50, poivre 1, olive noire(10), olive verte(10)'),
(6, 'Hawaienne', 11.00, 'Base tomate 200, Mozarella 50, cresson 20, bacon 80, ananas 40, piment 2, parmesan 50, poivre 1, olive noire 10'),
(7, 'Amércaine', 10.00, 'Base tomate 200, Mozarella 50, cresson 20, bacon 80, pomme de terre(40), parmesan 50, poivre 1, olive noire 10'),
(8, 'paysanne', 12.00, 'Base crème 200, Chèvre 50, cresson 20, pomme de terre 80, jambon fumé 80, ail 2, artichaut 20, champignon 80, parmesan 50, poivre 1, olive noire 10, œuf 50');

-- --------------------------------------------------------

--
-- Structure de la table `ingredient`
--

CREATE TABLE `ingredient` (
  `id_ingredient` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `ingredient`
--

INSERT INTO `ingredient` (`id_ingredient`, `nom`) VALUES
(1, 'ail'),
(2, 'Ananas'),
(3, 'Artichaut'),
(4, 'Bacon'),
(5, 'Base tomate'),
(6, 'Base crème'),
(7, 'Champignon'),
(8, 'chèvre'),
(9, 'Cresson'),
(10, 'Emmental'),
(11, 'Gorgonzola'),
(12, 'Jambon cuit'),
(13, 'Jambon fumé'),
(14, 'Oeuf'),
(15, 'Oignon'),
(16, 'Olive noir'),
(17, 'Olive verte'),
(18, 'Parmesan'),
(19, 'Piment'),
(20, 'Poivre'),
(21, 'Pomme de terre'),
(22, 'Raclette'),
(23, 'Salami'),
(24, 'Tomate cerise'),
(25, 'Mozzarela');

-- --------------------------------------------------------

--
-- Structure de la table `marque`
--

CREATE TABLE `marque` (
  `id_marque` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `marque`
--

INSERT INTO `marque` (`id_marque`, `nom`) VALUES
(1, 'Coca-cola'),
(2, 'Cristalline'),
(3, 'Monster'),
(4, 'Pepsico');

-- --------------------------------------------------------

--
-- Structure de la table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prix` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `menu`
--

INSERT INTO `menu` (`id_menu`, `nom`, `prix`) VALUES
(1, 'menu1', 9.00),
(2, 'menu2', 9.00),
(3, 'menu3', 10.00),
(4, 'menu4', 11.00);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `achete`
--
ALTER TABLE `achete`
  ADD PRIMARY KEY (`id_date`);

--
-- Index pour la table `appartient`
--
ALTER TABLE `appartient`
  ADD PRIMARY KEY (`id_appartient`);

--
-- Index pour la table `boisson`
--
ALTER TABLE `boisson`
  ADD PRIMARY KEY (`id_boisson`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`);

--
-- Index pour la table `comprend`
--
ALTER TABLE `comprend`
  ADD PRIMARY KEY (`idquantite`),
  ADD UNIQUE KEY `idquantite` (`idquantite`);

--
-- Index pour la table `contient`
--
ALTER TABLE `contient`
  ADD PRIMARY KEY (`id_contient`);

--
-- Index pour la table `est constitue`
--
ALTER TABLE `est constitue`
  ADD PRIMARY KEY (`id_constitue`),
  ADD UNIQUE KEY `id_constitue` (`id_constitue`);

--
-- Index pour la table `focaccia`
--
ALTER TABLE `focaccia`
  ADD PRIMARY KEY (`id_focaccia`),
  ADD KEY `id_focaccia` (`id_focaccia`);

--
-- Index pour la table `ingredient`
--
ALTER TABLE `ingredient`
  ADD PRIMARY KEY (`id_ingredient`);

--
-- Index pour la table `marque`
--
ALTER TABLE `marque`
  ADD PRIMARY KEY (`id_marque`);

--
-- Index pour la table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `boisson`
--
ALTER TABLE `boisson`
  MODIFY `id_boisson` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `focaccia`
--
ALTER TABLE `focaccia`
  MODIFY `id_focaccia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `ingredient`
--
ALTER TABLE `ingredient`
  MODIFY `id_ingredient` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `marque`
--
ALTER TABLE `marque`
  MODIFY `id_marque` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `appartient`
--
ALTER TABLE `appartient`
  ADD CONSTRAINT `appartient_ibfk_1` FOREIGN KEY (`id_appartient`) REFERENCES `marque` (`id_marque`),
  ADD CONSTRAINT `appartient_ibfk_2` FOREIGN KEY (`id_appartient`) REFERENCES `boisson` (`id_boisson`);

--
-- Contraintes pour la table `comprend`
--
ALTER TABLE `comprend`
  ADD CONSTRAINT `comprend_ibfk_1` FOREIGN KEY (`idquantite`) REFERENCES `ingredient` (`id_ingredient`),
  ADD CONSTRAINT `comprend_ibfk_2` FOREIGN KEY (`idquantite`) REFERENCES `focaccia` (`id_focaccia`);

--
-- Contraintes pour la table `contient`
--
ALTER TABLE `contient`
  ADD CONSTRAINT `contient_ibfk_1` FOREIGN KEY (`id_contient`) REFERENCES `menu` (`id_menu`);

--
-- Contraintes pour la table `est constitue`
--
ALTER TABLE `est constitue`
  ADD CONSTRAINT `est constitue_ibfk_1` FOREIGN KEY (`id_constitue`) REFERENCES `menu` (`id_menu`),
  ADD CONSTRAINT `est constitue_ibfk_2` FOREIGN KEY (`id_constitue`) REFERENCES `focaccia` (`id_focaccia`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
