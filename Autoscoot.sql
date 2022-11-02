-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : ven. 14 oct. 2022 à 07:25
-- Version du serveur :  5.7.34
-- Version de PHP : 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `Autoscoot`
--

-- --------------------------------------------------------

--
-- Structure de la table `Etat_Vehicule`
--

CREATE TABLE `Etat_Vehicule` (
  `ID_Etat` int(11) NOT NULL,
  `Etat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Etat_Vehicule`
--

INSERT INTO `Etat_Vehicule` (`ID_Etat`, `Etat`) VALUES
(1, 'Comme Neuf'),
(2, 'Tres Bon etat'),
(3, 'Bon etat');

-- --------------------------------------------------------

--
-- Structure de la table `Marques`
--

CREATE TABLE `Marques` (
  `ID_Marque` int(11) NOT NULL,
  `Nom_Marque` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Marques`
--

INSERT INTO `Marques` (`ID_Marque`, `Nom_Marque`) VALUES
(41, 'Abarth'),
(42, 'Acura'),
(27, 'Alfa Romeo'),
(19, 'Aprilia'),
(43, 'Aston Martin'),
(1, 'Audi'),
(39, 'Bentley'),
(20, 'BMW'),
(40, 'Bugatti'),
(44, 'Cadillac'),
(45, 'Chevrolet'),
(46, 'Chrysler'),
(21, 'Citroen'),
(23, 'Dacia'),
(11, 'Ducati'),
(8, 'Ferrari'),
(26, 'Fiat'),
(24, 'Ford'),
(15, 'Harley Davidson'),
(13, 'Honda'),
(48, 'Infinity'),
(30, 'Jaguar'),
(37, 'Jeep'),
(14, 'Kawasaki'),
(22, 'Kia'),
(16, 'KTM'),
(35, 'Lamborghini'),
(34, 'Land-Rover'),
(47, 'Maseratti'),
(28, 'Mazda'),
(5, 'Mercedes'),
(36, 'Mini-Cooper'),
(29, 'Mitsubishi'),
(25, 'Mustang'),
(32, 'Nissan'),
(9, 'Opel'),
(2, 'Peugeot'),
(18, 'Piaggio'),
(6, 'Porsche'),
(7, 'Range Rover'),
(3, 'Renault'),
(31, 'Seat'),
(33, 'Skoda'),
(49, 'Smart'),
(50, 'Subaru'),
(10, 'Suzuki'),
(17, 'Triumph'),
(4, 'Volkswagen'),
(38, 'Volvo'),
(12, 'Yamaha');

-- --------------------------------------------------------

--
-- Structure de la table `Photos`
--

CREATE TABLE `Photos` (
  `ID_Photo` int(11) NOT NULL,
  `Photo` varchar(100) DEFAULT NULL,
  `FK_ID_Vehicule` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Photos`
--

INSERT INTO `Photos` (`ID_Photo`, `Photo`, `FK_ID_Vehicule`) VALUES
(1, 'Photo/photoaudiA4.jpg', 1),
(2, 'Photo/alfaromeomito.jpg', 2),
(3, 'Photo/motoaprilia.jpg', 3),
(4, 'Photo/golf7_.jpg', 4),
(5, 'Photo/BMWX3.jpg', 5),
(6, 'Photo/motoyamahaR6.jpg', 6),
(7, 'Photo/citroenc3.jpg', 7),
(8, 'Photo/golf4.jpg', 8),
(9, 'Photo/audiQ5.jpg', 9),
(10, 'Photo/ducatipanigale.jpg', 10),
(11, 'Photo/megane4.jpg', 11),
(12, 'Photo/polo5.jpg', 12),
(13, 'Photo/BMWK16000.jpg', 13),
(14, 'Photo/astonmartinDBX.jpg', 14),
(15, 'Photo/bugattichiron.jpg', 15),
(16, 'Photo/harleydavidson883.jpg', 16),
(17, 'Photo/kawasakininja.jpg', 17),
(18, 'Photo/clio4.jpg', 18),
(19, 'Photo/mercedesAMGA45.jpg', 19),
(20, 'Photo/motohondaCB1000R.jpg', 20);

-- --------------------------------------------------------

--
-- Structure de la table `Vehicules`
--

CREATE TABLE `Vehicules` (
  `ID_Vehicule` int(11) NOT NULL,
  `Type` varchar(10) DEFAULT NULL,
  `Nom_Marque` varchar(100) DEFAULT NULL,
  `Modele` varchar(100) DEFAULT NULL,
  `1ere_Immatriculation` date DEFAULT NULL,
  `Prix` int(11) DEFAULT NULL,
  `ID_Etat` int(11) DEFAULT NULL,
  `Ville` varchar(30) DEFAULT NULL,
  `Code_Postale` int(11) DEFAULT NULL,
  `Vendeur` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Vehicules`
--

INSERT INTO `Vehicules` (`ID_Vehicule`, `Type`, `Nom_Marque`, `Modele`, `1ere_Immatriculation`, `Prix`, `ID_Etat`, `Ville`, `Code_Postale`, `Vendeur`) VALUES
(1, 'Voiture', 'Audi', 'A4', '2009-12-08', 4800, 1, 'Lens', 62300, 'Particulier'),
(2, 'Voiture', 'Alfa Romeo', 'Mito', '2010-11-11', 3500, 2, 'Nice', 6088, 'Particulier'),
(3, 'Moto', 'Aprilia', 'RS660', '2016-04-10', 20000, 1, 'Carvin', 62215, 'Particulier'),
(4, 'Voiture', 'Volkswagen', 'Golf7', '2015-05-02', 17000, 1, 'Berck', 62600, 'Particulier'),
(5, 'Voiture', 'BMW', 'X3', '2012-11-20', 13000, 2, 'Maubeuge', 59600, 'Professionnel'),
(6, 'Moto', 'Yamaha', 'R6 GYTR', '2022-01-01', 14499, 1, 'Lens', 62300, 'Professionnel'),
(7, 'Voiture', 'Citroen', 'C3', '2013-07-22', 5699, 2, 'Maubeuge', 59600, 'Professionnel'),
(8, 'Voiture', 'Volkswagen', 'Golf4', '2008-04-29', 4500, 2, 'Lens', 62300, 'Professionnel'),
(9, 'Voiture', 'Audi', 'Q5', '2013-08-29', 11000, 1, 'Maubeuge', 59600, 'Professionnel'),
(10, 'Moto', 'Ducati ', 'PanigaleV4', '2018-02-13', 27299, 1, 'Toulouse', 31000, 'Particulier'),
(11, 'Voiture', 'Renault', 'Megane4', '2010-09-12', 11399, 1, 'Henin-Beaumont', 62110, 'Particulier'),
(12, 'Voiture', 'Volkswagen', 'Polo5', '2019-12-24', 12000, 2, 'Lens', 62300, 'Professionnel'),
(13, 'Moto', 'BMW', 'K1600GT', '2020-06-21', 21900, 1, 'Berck', 62600, 'Particulier'),
(14, 'Voiture', 'Aston Martin', 'DBX', '2019-03-16', 200000, 1, 'Toulouse', 31000, 'Professionnel'),
(15, 'Voiture', 'Bugatti', 'Chiron', '2021-01-18', 5000000, 1, 'Toulouse', 31000, 'Professionnel'),
(16, 'Moto', 'Harley Davidson', 'Sportster883', '2017-05-02', 10800, 2, 'Maubeuge', 59600, 'Particulier'),
(17, 'Moto', 'Kawasaki', 'Ninja650', '2018-10-23', 8500, 1, 'Carvin', 62215, 'Particulier'),
(18, 'Voiture', 'Renault', 'Clio4', '2016-05-24', 14000, 1, 'Maubeuge', 59600, 'Professionnel'),
(19, 'Voiture', 'Mercedes', 'AMG A 45', '2019-07-13', 85000, 1, 'Toulouse', 31000, 'Professionnel'),
(20, 'Moto', 'Honda', 'CB1000R', '2022-08-24', 14499, 2, 'Berck', 62600, 'Particulier');

-- --------------------------------------------------------

--
-- Structure de la table `Vendeurs`
--

CREATE TABLE `Vendeurs` (
  `ID_Vendeur` int(11) NOT NULL,
  `Nom_Vendeur` varchar(100) DEFAULT NULL,
  `Prenom_Vendeur` varchar(100) DEFAULT NULL,
  `Num_Tel` varchar(10) DEFAULT NULL,
  `FK2_ID_Vehicule` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Vendeurs`
--

INSERT INTO `Vendeurs` (`ID_Vendeur`, `Nom_Vendeur`, `Prenom_Vendeur`, `Num_Tel`, `FK2_ID_Vehicule`) VALUES
(1, 'Dupont', 'Kevin', '0678965068', 1),
(2, 'Lefebvre', 'Dany', '0762961054', 2),
(3, 'Dubois', 'Laurie', '0321459043', 3),
(4, 'Milo', 'Naya', '0634204078', 4),
(5, 'Bernard', 'Laura', '0761980065', 5),
(6, 'Leon', 'Nawell', '0656982089', 6),
(7, 'Willoq', 'Jody', '0742876590', 7),
(8, 'Akerman', 'Lorenzo', '0612918681', 8),
(9, 'Guillot', 'Milan', '0321646456', 9),
(10, 'Dewyse', 'Hans', '0713789756', 10),
(11, 'Robillard', 'Marie', '0656983465', 11),
(12, 'Coslo', 'Pierre', '0723895426', 12),
(13, 'Marechal', 'Yves', '0609436782', 13),
(14, 'Lemaitre', 'David', '0618295432', 14),
(15, 'Souchez', 'Emilie', '0321291999', 15),
(16, 'Tessier', 'Luc', '0791831219', 16),
(17, 'Joubert', 'Diane', '0621679845', 17),
(18, 'Georges', 'Ines', '0765128755', 18),
(19, 'Bouvier', 'Claude', '0726398061', 19),
(20, 'Deschamps', 'Vincent', '0642014337', 20);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Etat_Vehicule`
--
ALTER TABLE `Etat_Vehicule`
  ADD PRIMARY KEY (`ID_Etat`);

--
-- Index pour la table `Marques`
--
ALTER TABLE `Marques`
  ADD PRIMARY KEY (`Nom_Marque`);

--
-- Index pour la table `Photos`
--
ALTER TABLE `Photos`
  ADD PRIMARY KEY (`ID_Photo`),
  ADD KEY `FK_ID_Vehicule` (`FK_ID_Vehicule`);

--
-- Index pour la table `Vehicules`
--
ALTER TABLE `Vehicules`
  ADD PRIMARY KEY (`ID_Vehicule`),
  ADD KEY `ID_Etat` (`ID_Etat`),
  ADD KEY `Nom_Marque` (`Nom_Marque`);

--
-- Index pour la table `Vendeurs`
--
ALTER TABLE `Vendeurs`
  ADD PRIMARY KEY (`ID_Vendeur`),
  ADD KEY `FK_ID_Vehicule` (`FK2_ID_Vehicule`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Photos`
--
ALTER TABLE `Photos`
  ADD CONSTRAINT `photos_ibfk_1` FOREIGN KEY (`FK_ID_Vehicule`) REFERENCES `Vehicules` (`ID_Vehicule`);

--
-- Contraintes pour la table `Vehicules`
--
ALTER TABLE `Vehicules`
  ADD CONSTRAINT `vehicules_ibfk_2` FOREIGN KEY (`ID_Etat`) REFERENCES `Etat_Vehicule` (`ID_Etat`),
  ADD CONSTRAINT `vehicules_ibfk_3` FOREIGN KEY (`Nom_Marque`) REFERENCES `Marques` (`Nom_Marque`);

--
-- Contraintes pour la table `Vendeurs`
--
ALTER TABLE `Vendeurs`
  ADD CONSTRAINT `vendeurs_ibfk_1` FOREIGN KEY (`FK2_ID_Vehicule`) REFERENCES `Vehicules` (`ID_Vehicule`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
