-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  jeu. 17 déc. 2020 à 23:54
-- Version du serveur :  5.7.31-0ubuntu0.18.04.1
-- Version de PHP :  7.2.24-0ubuntu0.18.04.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `test`
--

-- --------------------------------------------------------

--
-- Structure de la table `fr_departement`
--

CREATE TABLE `fr_departement` (
  `dpt_id` int(11) NOT NULL,
  `dpt_nom` varchar(50) NOT NULL,
  `region` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `fr_departement`
--

INSERT INTO `fr_departement` (`dpt_id`, `dpt_nom`, `region`) VALUES
(1, 'Alpes-de-Haute-Provence (04)', 12),
(2, 'Hautes-Alpes (05)', 12),
(3, 'Alpes-Maritimes (06)', 12),
(4, 'Bouches-du-Rhône (13)', 12),
(5, 'Var (83)', 12),
(6, 'Vaucluse (84)', 12);

-- --------------------------------------------------------

--
-- Structure de la table `fr_region`
--

CREATE TABLE `fr_region` (
  `rg_id` int(11) NOT NULL,
  `rg_nom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `fr_region`
--

INSERT INTO `fr_region` (`rg_id`, `rg_nom`) VALUES
(1, 'Île-de-France'),
(2, 'Centre-Val de Loire'),
(3, 'Bourgogne-Franche-Comté'),
(4, 'Normandie'),
(5, 'Hauts-de-France'),
(6, 'Grand Est'),
(7, 'Pays de la Loire'),
(8, 'Bretagne'),
(9, 'Nouvelle-Aquitaine'),
(10, 'Occitanie'),
(11, 'Auvergne-Rhône-Alpes'),
(12, 'Provence-Alpes-Côte d\'Azur'),
(13, 'Corse'),
(14, 'Guadeloupe'),
(15, 'Martinique'),
(16, 'Guyane'),
(17, 'La Réunion'),
(18, 'Mayotte'),
(19, 'Saint-Pierre-et-Miquelon'),
(20, 'Saint-Barthélemy'),
(21, 'Saint-Martin'),
(22, 'Polynésie française'),
(23, 'Nouvelle-Calédonie'),
(24, 'Wallis-et-Futuna');

-- --------------------------------------------------------

--
-- Structure de la table `fr_ville`
--

CREATE TABLE `fr_ville` (
  `ville_id` int(11) NOT NULL,
  `CP` varchar(10) NOT NULL,
  `ville_nom` varchar(50) NOT NULL,
  `departement` int(2) NOT NULL,
  `region` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `fr_ville`
--

INSERT INTO `fr_ville` (`ville_id`, `CP`, `ville_nom`, `departement`, `region`) VALUES
(1, '04000', 'Digne-les-Bains', 1, 12),
(2, '04100', 'Manosque', 1, 12),
(3, '04200', 'Sisteron', 1, 12),
(4, '04700', 'Oraison', 1, 12),
(5, '05000', 'Gap', 2, 12),
(6, '05100', 'Briançon', 2, 12),
(7, '05200', 'Embrun', 2, 12),
(8, '06000', 'Nice', 3, 12),
(9, '06110', 'Le Cannet', 3, 12),
(10, '06130', 'Grasse', 3, 12),
(11, '06140', 'Vence', 3, 12),
(12, '06150', 'Cannes', 3, 12),
(13, '06160', 'Antibes', 3, 12),
(14, '06190', 'Roquebrune-Cap-Martin', 3, 12),
(15, '06210', 'Mandelieu-la-Napoule', 3, 12),
(16, '06220', 'Vallauris', 3, 12),
(17, '06240', 'Beausoleil', 3, 12),
(18, '06250', 'Mougins', 3, 12),
(19, '06270', 'Villeneuve-Loubet', 3, 12),
(20, '06330', 'Roquefort-les-Pins', 3, 12),
(21, '06340', 'La Trinité', 3, 12),
(22, '06370', 'Mouans-Sartoux', 3, 12),
(23, '06390', 'Contes', 3, 12),
(24, '06410', 'Biot', 3, 12),
(25, '06480', 'La Colle-sur-Loup', 3, 12),
(26, '06500', 'Menton', 3, 12),
(27, '06510', 'Carros', 3, 12),
(28, '06530', 'Peymeinade', 3, 12),
(29, '06560', 'Valbonne', 3, 12),
(30, '06580', 'Pégomas', 3, 12),
(31, '06610', 'La Gaude', 3, 12),
(32, '06700', 'Saint-Laurent-du-Var', 3, 12),
(33, '06800', 'Cagnes-sur-Mer', 3, 12),
(34, '13000', 'Marseille', 4, 12),
(35, '13080', 'Aix-en-Provence', 4, 12),
(36, '13104', 'Arles', 4, 12),
(37, '13109', 'Simiane-Collongue', 4, 12),
(38, '13110', 'Port-de-Bouc', 4, 12),
(39, '13117', 'Martigues', 4, 12),
(40, '13118', 'Istres', 4, 12),
(41, '13120', 'Gardanne', 4, 12),
(42, '13127', 'Vitrolles', 4, 12),
(43, '13130', 'Berre-l\'Étang', 4, 12),
(44, '13140', 'Miramas', 4, 12),
(45, '13150', 'Tarascon', 4, 12),
(46, '13160', 'Châteaurenard', 4, 12),
(47, '13170', 'Les Pennes-Mirabeau', 4, 12),
(48, '13180', 'Gignac-la-Nerthe', 4, 12),
(49, '13190', 'Allauch', 4, 12),
(50, '13210', 'Saint-Rémy-de-Provence', 4, 12),
(51, '13220', 'Châteauneuf-les-Martigues', 4, 12),
(52, '13230', 'Port-Saint-Louis-du-Rhône', 4, 12),
(53, '13240', 'Septèmes-les-Vallons', 4, 12),
(54, '13250', 'Saint-Chamas', 4, 12),
(55, '13260', 'Cassis', 4, 12),
(56, '13270', 'Fos-sur-Mer', 4, 12),
(57, '13300', 'Salon-de-Provence', 4, 12),
(58, '13310', 'Saint-Martin-de-Crau', 4, 12),
(59, '13320', 'Bouc-Bel-Air', 4, 12),
(60, '13330', 'Pélissanne', 4, 12),
(61, '13340', 'Rognac', 4, 12),
(62, '13360', 'Roquevaire', 4, 12),
(63, '13370', 'Mallemort', 4, 12),
(64, '13380', 'Plan-de-Cuques', 4, 12),
(65, '13390', 'Auriol', 4, 12),
(66, '13400', 'Aubagne', 4, 12),
(67, '13410', 'Lambesc', 4, 12),
(68, '13420', 'Gémenos', 4, 12),
(69, '13430', 'Eyguières', 4, 12),
(70, '13470', 'Carnoux-en-Provence', 4, 12),
(71, '13480', 'Cabriès', 4, 12),
(72, '13510', 'Éguilles', 4, 12),
(73, '13530', 'Trets', 4, 12),
(74, '13550', 'Noves', 4, 12),
(75, '13560', 'Sénas', 4, 12),
(76, '13580', 'La Fare-les-Oliviers', 4, 12),
(77, '13600', 'La Ciotat', 4, 12),
(78, '13610', 'Le Puy-Sainte-Réparade', 4, 12),
(79, '13620', 'Carry-le-Rouet', 4, 12),
(80, '13680', 'Lançon-Provence', 4, 12),
(81, '13700', 'Marignane', 4, 12),
(82, '13710', 'Fuveau', 4, 12),
(83, '13720', 'La Bouilladisse', 4, 12),
(84, '13730', 'Saint-Victoret', 4, 12),
(85, '13760', 'Saint-Cannat', 4, 12),
(86, '13770', 'Venelles', 4, 12),
(87, '13821', 'La Penne-sur-Huveaune', 4, 12),
(88, '13880', 'Velaux', 4, 12),
(89, '13920', 'Saint-Mitre-les-Remparts', 4, 12),
(90, '13960', 'Sausset-les-Pins', 4, 12),
(91, '83000', 'Toulon', 5, 12),
(92, '83110', 'Sanary-sur-Mer', 5, 12),
(93, '83120', 'Sainte-Maxime', 5, 12),
(94, '83130', 'La Garde', 5, 12),
(95, '83140', 'Six-Fours-les-Plages', 5, 12),
(96, '83150', 'Bandol', 5, 12),
(97, '83160', 'La Valette-du-Var', 5, 12),
(98, '83170', 'Brignoles', 5, 12),
(99, '83190', 'Ollioules', 5, 12),
(100, '83210', 'Solliès-Pont', 5, 12),
(101, '83210', 'La Farlède', 5, 12),
(102, '83210', 'Solliès-Toucas', 5, 12),
(103, '83220', 'Le Pradet', 5, 12),
(104, '83230', 'Bormes-les-Mimosas', 5, 12),
(105, '83240', 'Cavalaire-sur-Mer', 5, 12),
(106, '83250', 'La Londe-les-Maures', 5, 12),
(107, '83260', 'La Crau', 5, 12),
(108, '83270', 'Saint-Cyr-sur-Mer', 5, 12),
(109, '83300', 'Draguignan', 5, 12),
(110, '83310', 'Cogolin', 5, 12),
(111, '83320', 'Carqueiranne', 5, 12),
(112, '83330', 'Le Beausset', 5, 12),
(113, '83340', 'Le Luc', 5, 12),
(114, '83370', 'Fréjus', 5, 12),
(115, '83380', 'Roquebrune-sur-Argens', 5, 12),
(116, '83390', 'Cuers', 5, 12),
(117, '83390', 'Pierrefeu-du-Var', 5, 12),
(118, '83400', 'Hyères', 5, 12),
(119, '83430', 'Saint-Mandrier-sur-Mer', 5, 12),
(120, '83440', 'Montauroux', 5, 12),
(121, '83440', 'Fayence', 5, 12),
(122, '83460', 'Les Arcs', 5, 12),
(123, '83470', 'Saint-Maximin-la-Sainte-Baume', 5, 12),
(124, '83480', 'Puget-sur-Argens', 5, 12),
(125, '83490', 'Le Muy', 5, 12),
(126, '83500', 'La Seyne-sur-Mer', 5, 12),
(127, '83510', 'Lorgues', 5, 12),
(128, '83530', 'Saint-Raphaël', 5, 12),
(129, '83550', 'dauban', 5, 12),
(130, '83720', 'ans-en-Provence', 5, 12),
(131, '84000', 'Avignon', 6, 12),
(132, '84100', 'Orange', 6, 12),
(133, '84110', 'Vaison-la-Romaine', 6, 12),
(134, '84120', 'Pertuis', 6, 12),
(135, '84130', 'Le Pontet', 6, 12),
(136, '84170', 'Monteux', 6, 12),
(137, '84200', 'Carpentras', 6, 12),
(138, '84210', 'Pernes-les-Fontaines', 6, 12),
(139, '84250', 'Le Thor', 6, 12),
(140, '84260', 'Sarrians', 6, 12),
(141, '84270', 'Vedène', 6, 12),
(142, '84300', 'Cavaillon', 6, 12),
(143, '84310', 'Morières-lès-Avignon', 6, 12),
(144, '84320', 'Entraigues-sur-la-Sorgue', 6, 12),
(145, '84380', 'Mazan', 6, 12),
(146, '84400', 'Apt', 6, 12),
(147, '84500', 'Bollène', 6, 12),
(148, '84600', 'Valréas', 6, 12),
(149, '84700', 'Sorgues', 6, 12),
(150, '84800', 'L\'Isle-sur-la-Sorgue', 6, 12);

-- --------------------------------------------------------

--
-- Structure de la table `subscription`
--

CREATE TABLE `subscription` (
  `sb_id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `CP` varchar(5) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `age` int(3) NOT NULL,
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `score` int(11) NOT NULL,
  `badge` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `subscription`
--

INSERT INTO `subscription` (`sb_id`, `firstname`, `lastname`, `email`, `CP`, `phone`, `age`, `creation_date`, `score`, `badge`) VALUES
(1, 'Mario', 'Bross', 'mario@nintendo.com', '06000', '123456789', 35, '2020-12-17 14:44:02', 42, '2'),
(2, 'Luigi', 'Bross', 'luigi@nintendo.com', '05000', '987654321', 37, '2020-12-17 03:31:11', 42, '2'),
(7, 'Donkey', 'Kong', 'dkk@nintendo.com', '04000', '123654789', 39, '2020-12-17 03:42:11', 42, '2'),
(11, 'Link', 'Link', 'link@zelda.com', '13000', '654789321', 34, '2020-12-17 03:48:01', 42, '2'),
(13, 'Mic', 'T', 'mti.dpm@gmail.com', '06000', '123456789', 40, '2020-12-17 07:43:19', 42, '2');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `fr_departement`
--
ALTER TABLE `fr_departement`
  ADD PRIMARY KEY (`dpt_id`);

--
-- Index pour la table `fr_region`
--
ALTER TABLE `fr_region`
  ADD PRIMARY KEY (`rg_id`);

--
-- Index pour la table `fr_ville`
--
ALTER TABLE `fr_ville`
  ADD PRIMARY KEY (`ville_id`);

--
-- Index pour la table `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`sb_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `fr_departement`
--
ALTER TABLE `fr_departement`
  MODIFY `dpt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `fr_region`
--
ALTER TABLE `fr_region`
  MODIFY `rg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `fr_ville`
--
ALTER TABLE `fr_ville`
  MODIFY `ville_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT pour la table `subscription`
--
ALTER TABLE `subscription`
  MODIFY `sb_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
