-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2021 at 04:51 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `boutique`
--

-- --------------------------------------------------------

--
-- Table structure for table `produit`
--

CREATE TABLE `produit` (
  `id_produit` int(11) NOT NULL,
  `reference` varchar(20) NOT NULL,
  `categorie` varchar(20) NOT NULL,
  `titre` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `couleur` varchar(20) NOT NULL,
  `taille` varchar(5) NOT NULL,
  `public` enum('m','f','mixte') NOT NULL,
  `photo` varchar(250) NOT NULL,
  `prix` int(3) NOT NULL,
  `stock` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produit`
--

INSERT INTO `produit` (`id_produit`, `reference`, `categorie`, `titre`, `description`, `couleur`, `taille`, `public`, `photo`, `prix`, `stock`) VALUES
(2, '98-22-11', 'tshirt', 'Tshirt Col V rouge', 'c\'est vraiment un super tshirt en soirée !', 'rouge', 'S', 'm', 'http://localhost/ajax/photo/66-f-15_11-d-23_bleu.jpg', 99, 30),
(3, '88-g-77', 'tshirt', 'Tshirt Col rond vert', 'Il vous faut ce tshirt Made In France !!!', 'vert', 'L', 'm', 'http://localhost/ajax/photo/88-g-77_vert.png', 29, 36),
(4, '55-b-38', 'tshirt', 'Tshirt jaune', 'le jaune reviens &agrave; la mode, non? :-)', 'jaune', 'S', 'm', 'http://localhost/ajax/photo/55-b-38_jaune.png', 20, -4),
(5, '31-p-33', 'tshirt', 'Tshirt noir original', 'voici un tshirt noir très original :p', 'noir', 'XL', 'm', 'http://localhost/ajax/photo/31-p-33_noir.jpg', 25, 52),
(6, '56-a-65', 'chemise', 'Chemise Blanche', 'Les chemises c\'est bien mieux que les tshirts', 'blanc', 'L', 'm', 'http://localhost/ajax/photo/56-a-65_chemiseblanchem.jpg', 49, 42),
(7, '63-s-63', 'chemise', 'Chemise Noir', 'Comme vous pouvez le voir c\'est une chemise noir...', 'noir', 'M', 'm', 'http://localhost/ajax/photo/63-s-63_chemisenoirm.jpg', 59, 92),
(8, '77-p-79', 'pull', 'Pull gris', 'Pull gris pour l\'hiver', 'gris', 'XL', 'f', 'http://localhost/ajax/photo/77-p-79_pullgrism2.jpg', 79, 71),
(11, 'x01', 'tshirt', 'Super tshirt formentera', 'Super tshirt confectionné par Sacha', 'noire', 'm', 'm', 'http://localhost/ajax/photo/x01_55-b-38_jaune.png', 99, 18),
(14, '11-d-231', 'tshirt', 'Tshirt Col V', 'Tee-shirt en coton flammé liseré contrastant pour femme', 'bleu foncé', 'M', 'm', 'http://localhost/ajax/photo/11-d-23_11-d-23_bleu.jpg', 44, 3),
(15, '11-d-23_02', 'tshirt', 'Tshirt Col V', 'Tee-shirt en coton flammé liseré contrastant pour femme', 'bleu foncé', 'M', 'm', 'http://localhost/ajax/photo/11-d-23_11-d-23_bleu.jpg', 44, 22),
(16, '66-f-15_01', 'tshirt', 'Tshirt Col V rouge', 'c\'est vraiment un super tshirt en soirée !', 'rouge', 'S', 'm', 'http://localhost/ajax/photo/66-f-15_01_31-p-33_noir.jpg', 151, 27),
(17, '88-g-77-01', 'tshirt', 'Tshirt Col rond vert', 'Il vous faut ce tshirt Made In France !!!', 'vert', 'L', 'm', 'http://localhost/ajax/photo/88-g-77_vert.png', 29, 32),
(18, '31-p-33-01', 'tshirt', 'Tshirt noir original', 'voici un tshirt noir très original :p', 'noir', 'XL', 'm', 'http://localhost/ajax/photo/31-p-33_noir.jpg', 25, 50),
(20, 'iron-883', 'polo', 'iron 883', 'Super Iron pour faire le biker', 'black', 'L', 'm', 'http://localhost/ajax/photo/63-s-63_chemisenoirm.jpg', 99, 23);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id_produit`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `produit`
--
ALTER TABLE `produit`
  MODIFY `id_produit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
