-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : lun. 23 mai 2022 à 09:37
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 8.0.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `afterworks`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `id_article` int(11) NOT NULL,
  `titre` text NOT NULL,
  `contenu` text NOT NULL,
  `date_creation_article` date NOT NULL,
  `id_rubrique` int(11) NOT NULL,
  `id_utilisateur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id_article`, `titre`, `contenu`, `date_creation_article`, `id_rubrique`, `id_utilisateur`) VALUES
(1, 'PROMOTION SA MERE !!!!!!', 'TOUT EST GRATUIT NIQUE SA MERE !\r\nEt n\'hesitez pas a bien vous faire enculer, et pour noel achetez une femme ', '2021-12-09', 2, 46),
(2, 'PROMOTION VENTE DE POULE', 'AMAZING, YOU CRAZY MANNNNN !', '2022-01-05', 2, 46),
(3, 'Ben voyons', 'Chaud d\'etre toi', '2001-09-18', 2, 46),
(4, 'Test', 'jjojj', '2021-12-09', 2, 46),
(8, 'Premier article', '\r\nQu\'est-ce que le Lorem Ipsum?\r\nLe Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.\r\n\r\nPourquoi l\'utiliser?\r\nOn sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur la mise en page elle-même. L\'avantage du Lorem Ipsum sur un texte générique comme \'Du texte. Du texte. Du texte.\' est qu\'il possède une distribution de lettres plus ou moins normale, et en tout cas comparable avec celle du français standard. De nombreuses suites logicielles de mise en page ou éditeurs de sites Web ont fait du Lorem Ipsum leur faux texte par défaut, et une recherche pour \'Lorem Ipsum\' vous conduira vers de nombreux sites qui n\'en sont encore qu\'à leur phase de construction. Plusieurs versions sont apparues avec le temps, parfois par accident, souvent intentionnellement (histoire d\'y rajouter de petits clins d\'oeil, voire des phrases embarassantes).\r\n', '2022-04-14', 1, 62),
(9, 'Second article', '\r\nQu\'est-ce que le Lorem Ipsum?\r\nLe Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.\r\n\r\nPourquoi l\'utiliser?\r\nOn sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur la mise en page elle-même. L\'avantage du Lorem Ipsum sur un texte générique comme \'Du texte. Du texte. Du texte.\' est qu\'il possède une distribution de lettres plus ou moins normale, et en tout cas comparable avec celle du français standard. De nombreuses suites logicielles de mise en page ou éditeurs de sites Web ont fait du Lorem Ipsum leur faux texte par défaut, et une recherche pour \'Lorem Ipsum\' vous conduira vers de nombreux sites qui n\'en sont encore qu\'à leur phase de construction. Plusieurs versions sont apparues avec le temps, parfois par accident, souvent intentionnellement (histoire d\'y rajouter de petits clins d\'oeil, voire des phrases embarassantes).\r\n', '2022-04-14', 1, 62);

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id_categorie` int(11) NOT NULL,
  `libelle_categorie` varchar(45) NOT NULL,
  `description_categorie` text DEFAULT NULL,
  `activation` tinyint(4) DEFAULT 1,
  `import` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id_categorie`, `libelle_categorie`, `description_categorie`, `activation`, `import`) VALUES
(1, 'Racine', '', 1, 1),
(2, 'Boutique', '', 1, 1),
(3, 'Infusion', 'La Brûlerie Comtoise vous propose une sélection d\"infusions...Classiques, fruitées, épicées il y en a pour tous les goûts... A consommer aussi bien chaudes que glacées elles sauront vous accompagner toute au long de la journée et au fil des saisons... ', 1, 1),
(4, 'Infusettes', 'La Brûlerie Comtoise vous fait découvrir sa large de gamme d\"infusions en sachet individuel. Au bureau comme à la maison, plus pratique et plus rapide, faites vous plaisir avec ces infusettes Made in France.', 1, 1),
(5, 'Infusion vrac', 'La Brûlerie Comtoise vous propose une sélection d\"infusions.Classiques, fruitées, épicées il y en a pour tous les goûts... A consommer aussi bien chaudes que glacées elles sauront vous accompagner tout au long de la journée et au fil des saisons...', 1, 1),
(6, 'Thé', 'Description de la catégorie thé', 1, 1),
(7, 'Café', '', 1, 1),
(8, 'Thé vrac', 'Découvrez la sélection de thés vrac de la Brûlerie Comtoise. Amateurs de grandes origines, de mélanges aromatisés, fruités ou épicés... Sur une base de thé blanc, de thé vert ou de thé noir... il y a de quoi ravir tous les palais...', 1, 1),
(9, 'Café capsule', '\n\nLa Brûlerie Comtoise a développé sa sélection de capsules compatibles Nespresso®. Après avoir été torréfié le café est transformé et mis en capsule dans notre manufacture de la Grande rue de Dole. Étant basée sur la même gamme que notre sélection de café en grain, les capsules bénéficient des mêmes labels : Rainforest, issu de l\"agriculture biologique. De plus, elles sont labellisées « Made in Jura », label qui valorise la production artisanale et locale. \n\n\nLa production se veut intégralement Made in France. La machine qui permet de concevoir les capsules, ainsi que les capsules elles-mêmes sont fabriquées en France. Élaborées dans des matières biodégradables, la dosette est en amidon de maïs et l\"opercule en canne à sucre. Elles illustrent pleinement la volonté de l\"entreprise de préserver l\"environnement et de limiter la production de déchets. \n\n', 1, 1),
(10, 'Café grain', '', 1, 1),
(11, 'Café grain & moulu', 'Le cœur du métier de la Brûlerie Comtoise est sa torréfaction 100% doloise. Du sourcing, à la réception des échantillons, aux séances de tasting et pour finir à la transformation du grain vert... tout se passe entre les quatre mûrs de la manufacture de la Grande rue de Dole. \nAttirés par les effluves du café grillé, les passants du centre ville peuvent assister aux séances de torréfaction et écouter les histoires et les conseils de Yoann sur le café. \nTorréfacteur et diplômé du Q Arabica Grader, Yoann Bride gère la sélection et la production du café de la Brûlerie Comtoise. Il choisit lui-même les producteurs avec lesquels il veut collaborer afin de veiller que leurs plantations leur assurent une rémunération correcte. Dans un souci de qualité, de préservation de l\"environnement le choix des grains se porte sur des origines labellisées. Issue de l\"agriculture biologique, labellisée Rainforest (préservation de la forêt) la gamme proposée se veut au plus près de la nature. \nLa sélection de Yoann, sera un voyage à chaque tasse. Destination l\"Afrique avec un café d\"Éthiopie ou du Burundi. L\"Amérique du Sud avec le café aux notes chocolatées du Pérou ou de Colombie, suaves du Honduras, des notes de fruits rouges dans le Brésil ou le déca du Mexique. \nLe traditionnel Mélange Italien avec son assemblage d\"arabica et de robusta et le Blend de la Brûlerie entièrement élaboré par Yoann complètent la gamme. Vous y trouverez des cafés intenses, corsés, fruités, acidulés, gourmands, doux et fleuris. Palais de grand amateur, de débutant ou d\"épicurien qui aime les bonnes choses il y aura forcément un café pour vous. \nNous vous proposons également un café expérimental, unique au monde, vieilli en fût de Sauternes 1er grand cru classé. Ce café issu du travail de 3 amis, Simon Verger, MOF Maître d\"hôtel et directeur du Skiff club, 2 étoilés Michelin, de Jean Compeyrot du Château Sigalas Rabaud, 1er grand cru classé et de notre torréfacteur Yoann.', 1, 1),
(12, 'Rooibos', 'La Brûlerie Comtoise propose une gamme de rooibos parfumés. Issu d\"Afrique du Sud, faible en tanin, sans théine et aux vertus antioxydantes, le rooibos accompagnera volontiers toutes vos soirées. ', 1, 1),
(13, 'Accompagnements', 'Pour un moment de plaisir, pour accompagner votre café ou votre thé, la Brûlerie Comtoise a sélectionné pour vous une gamme de confiseries... à grignoter, à tartiner ou à déguster... ', 1, 1),
(14, 'Machine & Accessoire', '', 1, 1),
(15, 'Les Chocolats de Damien Benetot', 'Les Chocolats de Damien Benetot\nPâtisserie Damien BENETOT\nhttp://www.benetot.fr/\n26 rue de Besançon\n39100 Dole', 1, 1),
(16, 'Coffret', '', 1, 1),
(17, 'Pâques - Moulage', 'Les Chocolats de Damien Benetot\nPâtisserie Damien BENETOT\nhttp://www.benetot.fr/\n26 rue de Besançon\n39100 Dole', 1, 1),
(18, 'Chocolats, macarons et divers', 'Les Chocolats de Damien Benetot\nPâtisserie Damien BENETOT\nhttp://www.benetot.fr/\n26 rue de Besançon\n39100 Dole', 1, 1),
(19, 'Epicerie', 'Pour un moment de plaisir, pour accompagner votre café ou votre thé, la Brûlerie Comtoise a sélectionné pour vous une gamme Épicerie fine... à grignoter, à tartiner ou à déguster... \nPour vous satisfaire du mieux possible nous avons élaboré une gamme de produits artisanaux, locaux si possible mais surtout MADE IN FRANCE. Nous avons à cœur de proposer des produits de qualité qui sauront accompagner vos instants de dégustation.', 1, 1),
(20, 'Confiseries', 'Pour un moment de plaisir, pour accompagner votre café ou votre thé, la Brûlerie Comtoise a sélectionné pour vous une gamme de confiseries... à grignoter, à tartiner ou à déguster... ', 1, 1),
(21, 'Thé & Infusion', '', 1, 1),
(22, 'Vrac', 'Découvrez la sélection de thés et infusions vrac de la Brûlerie Comtoise. \nAmateurs de grandes origines, de mélanges aromatisés, fruités ou épicés... Sur une base de thé blanc, vert ou noir, de fruits ou de plantes ... Il y a de quoi ravir tous les palais ...  ', 1, 1),
(23, 'Sachet', 'La Brûlerie Comtoise vous fait découvrir sa large gamme de thés et infusions en sachets individuels. Au bureau comme à la maison, plus pratique et plus rapide, faites vous plaisir avec ces infusettes Made in France.', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id_commande` int(11) NOT NULL,
  `id_statut` int(11) NOT NULL,
  `date_commande` datetime NOT NULL,
  `no_table` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`id_commande`, `id_statut`, `date_commande`, `no_table`) VALUES
(179, 6, '2022-05-06 09:00:13', 12),
(180, 6, '2022-05-06 09:01:43', 10),
(181, 6, '2022-05-06 13:36:09', 5),
(182, 5, '2022-05-06 13:36:09', 5),
(183, 7, '2022-05-06 13:36:09', 5),
(184, 0, '2022-05-06 09:01:43', 10),
(185, 0, '2022-05-06 09:01:43', 10),
(186, 3, '2022-05-06 09:00:13', 12);

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

CREATE TABLE `commentaire` (
  `id_commentaire` int(11) NOT NULL,
  `id_utilisateur` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL,
  `titre` text NOT NULL,
  `description` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `commentaire`
--

INSERT INTO `commentaire` (`id_commentaire`, `id_utilisateur`, `id_produit`, `titre`, `description`, `date`) VALUES
(1, 63, 2, 'Super produit', 'Je suis étonné de la qualité', '2022-05-10 16:11:07'),
(2, 54, 2, 'Je déconseille', 'Produit froid', '2022-05-10 16:11:51'),
(10, 63, 2, 'Bof', 'Trop de sucre', '2022-05-10 18:10:51'),
(11, 63, 2, 'Pas mal', 'Manque de la gnose dedans', '2022-05-10 18:11:42'),
(12, 63, 2, 'Vraiment Bon !', 'pas mal de mousse', '2022-05-10 18:14:15');

-- --------------------------------------------------------

--
-- Structure de la table `declinaison`
--

CREATE TABLE `declinaison` (
  `id_declinaison` int(11) NOT NULL,
  `libelle_declinaison` text NOT NULL,
  `description_declinaison` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `declinaison`
--

INSERT INTO `declinaison` (`id_declinaison`, `libelle_declinaison`, `description_declinaison`) VALUES
(0, 'Aucune Déclinaison', 'Aucune Déclinaison'),
(1, '250 g', NULL),
(2, 'Filtre', NULL),
(3, 'Piston', NULL),
(4, 'Italienne', NULL),
(5, 'Espresso', NULL),
(6, '500 g', NULL),
(7, '1 kg', NULL),
(8, '15', NULL),
(9, 'Chocolat noir', NULL),
(10, 'Chocolat lait', NULL),
(11, '12', NULL),
(12, '20', NULL),
(13, '30', NULL),
(14, '16', NULL),
(15, '25', NULL),
(16, '40 g', NULL),
(17, '125 g', NULL),
(18, '650 g', NULL),
(19, 'sachet 100 g', NULL),
(20, 'boîte 100 g ', NULL),
(21, '50', NULL),
(22, 'Grain', NULL),
(23, 'Sachet 100g', NULL),
(24, 'Boîte 50g', NULL),
(25, 'Sachet 50g', NULL),
(26, '100', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `declinaison_produit`
--

CREATE TABLE `declinaison_produit` (
  `id_declinaison_produit` int(11) NOT NULL,
  `id_declinaison` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `declinaison_produit`
--

INSERT INTO `declinaison_produit` (`id_declinaison_produit`, `id_declinaison`, `id_produit`) VALUES
(0, 0, 3),
(1, 2, 2),
(2, 3, 18),
(3, 4, 18),
(4, 5, 18),
(5, 22, 18),
(6, 20, 24),
(7, 23, 24),
(8, 2, 26),
(9, 3, 26),
(10, 4, 26),
(11, 5, 26),
(12, 22, 26),
(13, 19, 35),
(14, 20, 35),
(15, 19, 39),
(16, 20, 39),
(17, 19, 40),
(18, 20, 40),
(19, 19, 41),
(20, 20, 41),
(21, 19, 42),
(22, 20, 42),
(23, 19, 43),
(24, 20, 43),
(25, 19, 44),
(26, 20, 44),
(27, 19, 45),
(28, 20, 45),
(29, 24, 46),
(30, 25, 46),
(31, 2, 47),
(32, 3, 47),
(33, 4, 47),
(34, 5, 47),
(35, 22, 47),
(36, 19, 48),
(37, 20, 48),
(38, 19, 53),
(39, 20, 53),
(40, 19, 54),
(41, 20, 54),
(42, 19, 55),
(43, 20, 55),
(44, 8, 64),
(45, 21, 64),
(46, 26, 64),
(47, 8, 65),
(48, 21, 65),
(49, 26, 65),
(50, 8, 66),
(51, 21, 66),
(52, 26, 66),
(53, 8, 67),
(54, 21, 67),
(55, 26, 67),
(56, 8, 68),
(57, 21, 68),
(58, 26, 68),
(59, 8, 69),
(60, 21, 69),
(61, 26, 69),
(62, 8, 70),
(63, 21, 70),
(64, 26, 70),
(65, 8, 71),
(66, 21, 71),
(67, 26, 71),
(68, 2, 74),
(69, 3, 74),
(70, 4, 74),
(71, 5, 74),
(72, 22, 74),
(73, 2, 75),
(74, 3, 75),
(75, 4, 75),
(76, 5, 75),
(77, 22, 75),
(78, 19, 85),
(79, 20, 85),
(80, 24, 86),
(81, 25, 86),
(82, 20, 87),
(83, 23, 87),
(84, 20, 88),
(85, 23, 88),
(86, 24, 89),
(87, 25, 89),
(88, 20, 90),
(89, 23, 90),
(90, 20, 91),
(91, 23, 91),
(92, 20, 92),
(93, 23, 92),
(94, 20, 93),
(95, 23, 93),
(96, 20, 94),
(97, 23, 94),
(98, 20, 95),
(99, 23, 95),
(100, 20, 96),
(101, 23, 96),
(102, 24, 97),
(103, 25, 97),
(104, 19, 98),
(105, 20, 98),
(106, 20, 99),
(107, 23, 99),
(108, 20, 100),
(109, 23, 100),
(110, 20, 101),
(111, 23, 101),
(112, 20, 102),
(113, 23, 102),
(114, 20, 103),
(115, 23, 103),
(116, 20, 104),
(117, 23, 104),
(118, 20, 105),
(119, 23, 105),
(120, 20, 106),
(121, 23, 106),
(122, 20, 107),
(123, 23, 107),
(124, 20, 108),
(125, 23, 108),
(126, 20, 109),
(127, 23, 109),
(128, 20, 110),
(129, 23, 110),
(130, 20, 111),
(131, 23, 111),
(132, 20, 112),
(133, 23, 112),
(134, 20, 113),
(135, 23, 113),
(136, 20, 114),
(137, 23, 114),
(138, 20, 115),
(139, 23, 115),
(140, 20, 116),
(141, 23, 116),
(142, 24, 117),
(143, 25, 117),
(144, 20, 118),
(145, 23, 118),
(146, 20, 119),
(147, 23, 119),
(148, 20, 120),
(149, 23, 120),
(150, 20, 121),
(151, 23, 121),
(152, 20, 122),
(153, 23, 122),
(154, 20, 123),
(155, 23, 123),
(156, 19, 124),
(157, 20, 124),
(158, 19, 125),
(159, 20, 125),
(160, 19, 126),
(161, 20, 126),
(162, 19, 127),
(163, 20, 127),
(164, 19, 128),
(165, 20, 128),
(166, 19, 129),
(167, 20, 129),
(168, 19, 130),
(169, 20, 130),
(170, 19, 131),
(171, 20, 131),
(172, 19, 132),
(173, 20, 132),
(174, 19, 133),
(175, 20, 133),
(176, 19, 134),
(177, 20, 134),
(178, 19, 135),
(179, 20, 135),
(180, 19, 136),
(181, 20, 136);

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `newsletter`
--

CREATE TABLE `newsletter` (
  `email` varchar(250) NOT NULL,
  `activation` binary(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `newsletter`
--

INSERT INTO `newsletter` (`email`, `activation`) VALUES
('sam@gmail.com', 0x00),
('samt@gmail.com', 0x31),
('toto@gmai.com', 0x31);

-- --------------------------------------------------------

--
-- Structure de la table `prise_en_charge_commande`
--

CREATE TABLE `prise_en_charge_commande` (
  `id_prise_en_charge` int(11) NOT NULL,
  `id_commande` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `statut_commande` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `prise_en_charge_commande`
--

INSERT INTO `prise_en_charge_commande` (`id_prise_en_charge`, `id_commande`, `username`, `statut_commande`) VALUES
(87, 180, 'sam@gmail.com', 'Accepté'),
(88, 180, 'sam@gmail.com', 'En préparation'),
(89, 180, 'sam@gmail.com', 'En attente de livraison'),
(90, 180, 'sam@gmail.com', 'Commande terminée'),
(91, 182, 'sam@gmail.com', 'Livrée salle (attente paiement)'),
(92, 183, 'sam@gmail.com', 'En préparation');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id_produit` int(11) NOT NULL,
  `libelle_produit` varchar(45) NOT NULL,
  `id_tva` int(11) NOT NULL,
  `id_categorie` int(11) NOT NULL,
  `description_produit` text DEFAULT NULL,
  `prix_unitaire_HT` float NOT NULL,
  `image` text DEFAULT NULL,
  `activation` tinyint(4) DEFAULT 1,
  `import` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id_produit`, `libelle_produit`, `id_tva`, `id_categorie`, `description_produit`, `prix_unitaire_HT`, `image`, `activation`, `import`) VALUES
(1, 'Nougatine noisettes - 150g', 3, 2, 'Fabrication artisanale par la Confiserie \"La Sucrerie\" - 39600 Arbois, JURA\nIngrédients : glucose, sucre, noisettes, beurre', 5, NULL, 1, 1),
(2, 'Miel acacia - 250g', 3, 2, 'Miel du JURA - 39190 Val-Sonnette', 6, NULL, 1, 1),
(3, 'Eau tonique nature', 3, 2, 'EAU TONIQUE NATURE HYSOPE :\nFruit de l\"artisanat français sur l\"intégralité de sa chaîne de production, l\"eau tonique HYSOPE est élaborée à partir d\"ingrédients d\"origine biologique, dont l\"ensemble des recettes est certifiée ECOCERT. Tous les arômes sont sélectionnés à Grasse, capitale du parfum.\n\nPour twister vos cocktails, sublimer vos spiritueux ou simplement se déguster bien fraîche l\"eau tonique HYSOPE saura vous accompagner lors de vos apéritifs. ', 3, NULL, 0, 1),
(4, 'Eau tonique concombre', 3, 2, 'EAU TONIQUE CONCOMBRE HYSOPE :\nFruit de l\"artisanat français sur l\"intégralité de sa chaîne de production, l\"eau tonique HYSOPE est élaborée à partir d\"ingrédients d\"origine biologique, dont l\"ensemble des recettes est certifiée ECOCERT. Tous les arômes sont sélectionnés à Grasse, capitale du parfum.\n\nPour twister vos cocktails, sublimer vos spiritueux ou simplement se déguster bien fraîche l\"eau tonique HYSOPE saura vous accompagner lors de vos apéritifs.', 4, NULL, 1, 1),
(5, 'Eau tonique gingembre', 3, 2, 'EAU TONIQUE GINGEMBRE HYSOPE :\nFruit de l\"artisanat français sur l\"intégralité de sa chaîne de production, l\"eau tonique HYSOPE est élaborée à partir d\"ingrédients d\"origine biologique, dont l\"ensemble des recettes est certifiée ECOCERT. Tous les arômes sont sélectionnés à Grasse, capitale du parfum.\n\nPour twister vos cocktails, sublimer vos spiritueux ou simplement se déguster bien fraîche l\"eau tonique HYSOPE saura vous accompagner lors de vos apéritifs.', 4, NULL, 0, 1),
(6, 'Eau tonique citron', 3, 2, 'EAU TONIQUE CITRON HYSOPE :\nFruit de l\"artisanat français sur l\"intégralité de sa chaîne de production, l\"eau tonique HYSOPE est élaborée à partir d\"ingrédients d\"origine biologique, dont l\"ensemble des recettes est certifiée ECOCERT. Tous les arômes sont sélectionnés à Grasse, capitale du parfum.\n\nPour twister vos cocktails, sublimer vos spiritueux ou simplement se déguster bien fraîche l\"eau tonique HYSOPE saura vous accompagner lors de vos apéritifs.', 4, NULL, 0, 1),
(7, 'Eau tonique fleur de sureau', 3, 2, 'EAU TONIQUE FLEUR DE SUREAU HYSOPE :\nFruit de l\"artisanat français sur l\"intégralité de sa chaîne de production, l\"eau tonique HYSOPE est élaborée à partir d\"ingrédients d\"origine biologique, dont l\"ensemble des recettes est certifiée ECOCERT. Tous les arômes sont sélectionnés à Grasse, capitale du parfum.\n\nPour twister vos cocktails, sublimer vos spiritueux ou simplement se déguster bien fraîche l\"eau tonique HYSOPE saura vous accompagner lors de vos apéritifs.', 5, NULL, 1, 1),
(8, 'Miel sapin - 250g', 3, 2, 'Miel du JURA - 39190 Val-Sonnette', 8, NULL, 1, 1),
(9, 'Miel fleurs sauvages - 250g', 3, 2, 'Miel du JURA - 39190 Val-Sonnette', 9, NULL, 1, 1),
(10, 'Cranberry enrobée - 120g', 3, 2, 'Dragée Reynaud, confiseur de la région de Marseille, détourne la dragée traditionnelle avec des recettes des plus gourmandes. \n', 7, NULL, 1, 1),
(11, 'Guimauve vanille', 3, 2, '', 4, NULL, 1, 1),
(12, 'Dragée fruitée - abricot 150g', 3, 2, '\nDragée Reynaud, confiseur de la région de Marseille, détourne la dragée traditionnelle avec des recettes des plus gourmandes. ', 7, NULL, 1, 1),
(13, 'Dragée fruitée - framboise 150g', 3, 2, 'Dragée Reynaud, confiseur de la région de Marseille, détourne la dragée traditionnelle avec des recettes des plus gourmandes. \n', 7, NULL, 1, 1),
(14, 'Dragée fruitée - poire 150g', 3, 2, 'Dragée Reynaud, confiseur de la région de Marseille, détourne la dragée traditionnelle avec des recettes des plus gourmandes. \n', 7, NULL, 1, 1),
(15, 'Dragée fruitée - assortiment 150g', 3, 2, 'Dragée Reynaud, confiseur de la région de Marseille, détourne la dragée traditionnelle avec des recettes des plus gourmandes. \n', 8, NULL, 1, 1),
(16, 'Amande chocolat noir - 100g', 3, 2, '', 6, NULL, 1, 1),
(17, 'Bille croustillante chocolat lait - 100g', 3, 2, '', 4, NULL, 1, 1),
(18, 'Le Café Sigalas - 150g', 3, 2, '', 4.7, NULL, 1, 1),
(19, 'Filtre x100', 3, 2, '', 2.5, NULL, 1, 1),
(20, 'Valrhona - Jivara 40%', 3, 2, 'Jivara, par sa douceur cacaotée et maltée, est un chocolat chaleureux comme les rayons dorés du soleil à l\"aube d\"un matin d\"été.\n\nDéveloppé en 1995, Valrhona fait évoluer les codes du chocolat au lait avec Jivara, premier chocolat au lait à proposer une telle force gustative, avec un véritable goût de cacao. Pour atteindre ce goût singulier, Jivara est issu d\"un assemblage complexe de profils aromatiques de cacaos typiques d\"Equateur et du Ghana. ', 3, NULL, 1, 1),
(21, 'Valrhona - Dulcey 35%', 3, 2, 'Dulcey, par sa douceur biscuitée très légèrement salée et son goût de lait caramélisé, à ce don de nus renvoyer en enfance, de nousf aire voyager dans un tourbillon de souvenirs délicieux propres à chacun.\nEn 2012, Valrhona invente la quatrième couleur de chocolat : le blond. Laissant du chocolat blanc au bain-marie trop longtemps, Frédéric Bau découvre un surprenant résultat, le chocolat est devenu blond et laisse échapper une douce odeur. Dulcey est une ode à la créativité et à l\"audace qui révolutionne le monde de la pâtisserie pour offrir de nouvelles émotions grâce à a couleur son goût et sa texture. ', 3.3, NULL, 1, 1),
(22, 'Valrhona - Ivoire 35%', 3, 2, 'Les notes réconfortantes de lait cuit de chocolat blanc Ivoire font écho aux éclats de rire d\"enfants qui partagent ensemble leurs plus grands moments de bonheur. \nAvec Ivoire, Valrhona se démarque de l\"univers traditionnel des chocolats blancs, grâce à sa note sucrée tout en légèreté et sa couleur subtilement nacrée. \nRéférence iconique, Ivoire est devenu le mot générique parmi les professionnels de la gastronomie pour désigner le chocolat blanc.', 3.3, NULL, 1, 1),
(23, 'Valrhona - Caraïbe 66%', 3, 2, 'Caraïbe, avec ses notes amères intenses et ses accents boisés et de fruits secs grillés, fait rêver à une danse envoûtante à l\"ombre des cacaoyers. \nRéférent des chocolats équilibrés depuis 1988, Caraïbe est issu d\"un assemblage complexe de profils aromatiques de cacaos typiques de République Dominicaine, Equateur, Jamaïque et Togo pour atteindre ce goût singulier. Caraïbe est ainsi nommé car il rend hommage à la diversité des îles Caraïbes, dont les fèves ont inspiré sa création. ', 3.8, NULL, 1, 1),
(24, 'Thé noir Par Amour - 100g', 3, 2, 'Un thé noir aux saveurs de cerise parsemé de pétales de rose et de cœur en sucre. \nUne façon gourmande et délicate de dire JE T\"AIME à ceux qui sont chers à notre cœur... \nA la fois fruité, parfumé et sucré ce thé saura mettre vos pailles en extase. Les pétales de rose qu\"il contient remplaceront volontiers le traditionnel bouquet de fleurs de la Saint Valentin... ', 4, NULL, 1, 1),
(25, 'Valrhona - Oriado 60% 1kg', 3, 2, 'La douceur onctueuse et vanillée d\"Oriado invite à une sieste sur le sable chaud, avec la caresse enveloppante du soleil sur la peau. \nCréé en 2015, Oriado se distingue à la dégustation par sa légèreté et son équilibre. Issu de la gamme certifée, Oriado est l\"expression visible de l\"engagement de Valrhona, pour sa qualité et la traçabilité de la filière cacao. \nOriado est réalisé exclusivement à partir des meilleures matières premières biologiques, issues du commerce équitable (certifié Fairtrade/ Max Havelaar et issu de l\"Agriculture Biologique)', 12, NULL, 1, 1),
(26, 'GEISHA DU PANAMA - 150g', 3, 2, '', 5.5, NULL, 1, 1),
(27, 'Thé vert citron - 15 infusettes', 3, 2, '', 4, NULL, 1, 1),
(28, 'Delonghi Dinamica 3515B', 3, 2, 'Système Boissons lactées : Buse vapeur simple\nBoissons réalisable : Expresso, Café Long (Lungo), Café, Café Filtre (basse pression), Mousse de lait manuel, Eau chaude\nTrappe à moulu : Oui\nNombre de réglages du Broyeur : 13 positions\nRéglage intensité café : 5\nTempérature de percolation programmable : 3 niveaux\nInterface : Touches tactiles\nType d\"écran : Écran à texte LCD\nType de Broyeur Acier\n2 cafés simultanés : Oui\nRinçage des buses : Automatique\nEntretien du Groupe Café Manuel : groupe café extractible\nPression de la pompe : 15 Bars\nGarantie : 3 ans\nColoris : Noir\nMatériau(x) : ABS Mat\nVolume du réservoir à eau : 1.8 l\nVolume du bac à grain : 300 g\nNombre de bac à grains  : 1 bac\nVolume du bac à marcs : 14 galettes\nDimensions (LxPxH) : 236 x 429 x 348 mm\nPoids  : 9.5 Kg\nPuissance (en Watts) : 1450 W\nCapacité journalière : jusqu\"à 30 cafés/jour', 6, NULL, 1, 1),
(29, 'Infuseur Gladys', 3, 2, '', 5.8, NULL, 1, 1),
(30, 'Infuseur hippopotame', 3, 2, '', 5.8, NULL, 1, 1),
(31, 'Dragée Reyanud - Mûre 150g', 3, 2, '', 7.5, NULL, 1, 1),
(32, 'Amande crème de nougat - 140g', 3, 2, '', 8, NULL, 1, 1),
(33, 'Détartrant Delonghi', 3, 2, '', 7, NULL, 1, 1),
(34, 'Cartouche filtrante Delonghi', 3, 2, '', 1.5, NULL, 1, 1),
(35, 'Rooibos caramel - 100g', 3, 2, '', 3.3, NULL, 1, 1),
(36, 'Earl Grey - 15 infusettes', 3, 2, '', 2, NULL, 1, 1),
(37, 'Secret d\'Antan - 15 infusettes', 3, 2, '', 2, NULL, 1, 1),
(38, 'Peps - 15 infusettes', 3, 2, '', 2, NULL, 1, 1),
(39, 'Gyokuro - 100g', 3, 2, '', 3.3, NULL, 1, 1),
(40, 'Honeybush chocolat - 100g', 3, 2, '', 4, NULL, 1, 1),
(41, 'Maté latino - 100g', 3, 2, '', 4, NULL, 1, 1),
(42, 'Infusion Yetchuno - 100g', 3, 2, '', 4, NULL, 1, 1),
(43, 'Namas\'thé 100g', 3, 2, '', 4, NULL, 1, 1),
(44, 'Infusion d\'antan - 100g', 3, 2, '', 4, NULL, 1, 1),
(45, 'Thé blanc grenade cassis aloe 100g', 3, 2, '', 4, NULL, 1, 1),
(46, 'Thé blanc framboise tonka 50g', 3, 2, '', 3.5, NULL, 1, 1),
(47, 'Papouasie Nouvelle Guinée', 3, 2, '', 4, NULL, 1, 1),
(48, 'Bonbon d\'anis 100g', 3, 2, '', 4, NULL, 1, 1),
(49, 'Thé vert menthe - 15 infusettes', 3, 2, '', 2.5, NULL, 1, 1),
(50, 'Zen - 15 infusettes', 3, 2, '', 2.5, NULL, 1, 1),
(51, 'La délicieuse - 15 infusettes', 3, 2, '', 2.5, NULL, 1, 1),
(52, 'Croisière sur le Nil - 15 infusettes', 3, 2, '', 2.5, NULL, 1, 1),
(53, 'Thé vert menthe - 100g', 3, 2, '', 3, NULL, 1, 1),
(54, 'Infusion verveine - 50g', 3, 2, '', 2.5, NULL, 1, 1),
(55, 'Pu Erh - 100g', 3, 2, '', 4, NULL, 1, 1),
(56, 'Cerise sauvage - 15 infusettes', 3, 4, 'Pomme, Cynorrhodon, Hibiscus, Cerise sauvage (3%), arômes', 2.5, NULL, 1, 1),
(57, 'Zen', 3, 4, 'Oranger Doux pétale, Passiflore des Indes, Camomille Matricaire, Mélisse, Coquelicot', 2.5, NULL, 1, 1),
(58, 'Thé blanc Bai Mu Dan - 15 infusettes', 3, 4, 'Thé blanc de Chine', 2.5, NULL, 1, 1),
(59, 'Lendemain de fête - 15 infusettes', 3, 4, 'Thé Noir, Badiane, Tilleul Aubier, Gingembre, Réglisse', 2.5, NULL, 1, 1),
(60, 'English Breakfast - 15 infusettes', 3, 4, 'Thé noir', 2.5, NULL, 1, 1),
(61, 'Sencha douce saveur - 15 infusettes', 3, 4, 'Thé vert Sencha (70%), Raisin de Corinthe, Pétale de rose, arômes,  Ananas, Papaye, Fraise, Framboise', 2.5, NULL, 1, 1),
(62, 'Thé vert bio - 15 infusettes', 3, 4, 'Thé vert Bio', 2.5, NULL, 1, 1),
(63, 'Detox Automne hiver - 15 infusettes', 3, 4, 'Thé vert feuille, Chicorée feuille, Citron écorce, Chiendent Officinal racine', 2.5, NULL, 1, 1),
(64, 'Brésil', 3, 9, 'Premier pays producteur de café, ce cru du Brésil de chez Daterra vous surprendra par ses notes sucrées et fruitées.', 4, NULL, 1, 1),
(65, 'Ethiopie Yrgacheffe', 3, 9, 'Issu de la célèbre région d\"Ethiopie Yrgacheffe, ce café est récolté à pleine maturité, puis laissé fermenter sous eau de 24 à 36 heures afin de développer ses arômes d\"une rare délicatesse', 5, NULL, 1, 1),
(66, 'Mexique Décaféiné', 3, 9, 'Un décaféiné mexicain issu d\"un process naturel à l\"eau et crédité du label biologiqueLabel : Bio', 5, NULL, 1, 1),
(67, 'Pérou El Palto', 3, 9, 'L\"association JUMARP qui gère cette coopérative a pour objectifs d\"aider fiancièrement les producteurs et d\"améliorer leurs conditions de travail mais aussi en finançant la construction d\"école Label : Bio', 5, NULL, 1, 1),
(68, 'Blend de la Brûlerie', 3, 9, 'Un café rond et subtil 100% arabica avec ses notes de chocolat et de fruits secs', 6.6, NULL, 1, 1),
(69, 'Mélange italien', 3, 9, 'Un café corsé comme dans la tradition italienne avec ses notes de cacao et animal', 5, NULL, 1, 1),
(70, 'Honduras', 3, 9, 'Ce Cru du Honduras vous fera voyager dans ce pays emblématique de la production de café', 5, NULL, 1, 1),
(71, 'Indonésie', 3, 9, '', 4, NULL, 1, 1),
(72, 'Le Café Sigalas - 10 capsules', 3, 9, '', 4, NULL, 1, 1),
(73, 'Colombie', 3, 10, 'Issu d\"un microlot de Colombie, ce café vous ravira par ses notes subtiles et suaves', 4, NULL, 1, 1),
(74, 'Ethiopie Guji', 3, 11, 'Berceau du café, ce cru produit dans la région de Guji est séché naturellement au soleil pour transférer les sucres présent dans la chair du fruit au grain de café', 5, NULL, 1, 1),
(75, 'Guji Ethiopie naturel', 3, 11, 'Berceau du café, ce cru produit dans la région de Guji est séché naturellement au soleil pour transférer les sucres présent dans la chair du fruit au grain de café', 5, NULL, 1, 1),
(76, 'Machine Automatique Mélitta Solo Noir', 3, 14, 'Machine automatique avec moulin intégré, réservoir d\"eau + 1kg de café offert Pérou Bio Commerce équitable', 20, NULL, 1, 1),
(77, 'cafetière', 3, 14, 'Machine à café vendue avec 3 adaptateurs : Café moulu, Capsules Nespresso et Capsules Dolce Gusto. Une machine compact et facile d\"utilisation. Fournit avec un tampeur et une cuillère doseuse.', 30, NULL, 1, 1),
(78, 'Tea maker 0.5l', 3, 14, '', 25, NULL, 1, 1),
(79, 'Orangette chocolat noir  - 100g', 3, 19, '', 4, NULL, 1, 1),
(80, 'Caramel à l\'O - 230g', 3, 19, 'Elaboré par la Confiserie Lou Sucrèu St Haon-le-Châtel avec l\"eau Thermale de Salins les Bains, Jura\nIngrédients : crème, sucre, glucose, beurre, sel 1,2%.\nSans huile de palme', 3.6, NULL, 1, 1),
(81, 'Nougatine amandes - 150g', 3, 19, 'Fabrication artisanale par la Confiserie \"La Sucrerie\" - 39600 Arbois, JURA\nIngrédients : glucose, sucre, amandes, beurre', 3.3, NULL, 1, 1),
(82, 'Miel forêt - 250g', 3, 19, 'Miel du JURA - 39190 Val-Sonnette', 5, NULL, 1, 1),
(83, 'Nougatine sésame - 150g', 3, 19, 'Fabrication artisanale par la Confiserie \"La Sucrerie\" - 39600 Arbois, JURA\nIngrédients : glucose, sucre, lin,  sésame, beurre\nTraces possibles de fruits à coque', 3.3, NULL, 1, 1),
(84, 'Miel Tilleul - 250g', 3, 20, 'Miel du JURA - 39190 Val-Sonnette', 5, NULL, 1, 1),
(85, 'Infusion Tout en douceur - 50g', 3, 21, '', 2.5, NULL, 1, 1),
(86, 'Infusion Camomille - 50g', 3, 22, '', 2.5, NULL, 1, 1),
(87, 'Infusion Fruits rouges - 100g', 3, 22, '', 4, NULL, 1, 1),
(88, 'Infusion Mangue - 100g', 3, 22, '', 4, NULL, 1, 1),
(89, 'Infusion Menthe - 50g', 3, 22, '', 3, NULL, 1, 1),
(90, 'Thé noir caramel beurre salé - 100g', 3, 22, 'Du caramel fondant et doux accompagné d\"un soupçon de sel de perles africaines ajoutés aux morceaux de crème et d\"amandes... Il n\"en fallait pas plus pour inventer cette noble création gourmande.', 4, NULL, 1, 1),
(91, 'Darjeeling First Flush - 100g', 3, 22, 'Signifiant \"pays des orages\" en langue tibétaine. Plantation de thé noir issue de la région d\"Inde portant le même nom, elle est la seule à bénéficier d\"une Indication Géographique Protégée (IGP) pour lutter contre les nombreuses contrefaçons existantes.\nLe thé peut être récolté jusqu\"à 4 fois par an, celle du printemps, la première récolte, ou \"First Flush\" est très attendue des amateurs qui la qualifient de \"Champagne du thé\".\nElle offre un thé léger et délicat aux notes fraîches et intenses, merveilleusement élaboré et présentant un caractère frais, légèrement épicé. ', 4, NULL, 1, 1),
(92, 'English Breakfast - 100g', 3, 22, 'Ce mélange So British de culture biologique contrôlée est composé essentiellement de thés Assam. D\"abord réservée à l\"élite anglaise, la consommation du \"five o\"clock tea\" se démocratise au XIXe siècle. Depuis l\"époque coloniale, les Britanniques ont pour habitude de consommer des thés noirs plus corsés le matin comme ce ENGLISH BREAKFAST. Ce thé, à la fois puissant et aromatique, révèle une tasse foncée d\"un brun cuivré et un bouquet plein et épicé. ', 4, NULL, 1, 1),
(93, 'Roiboos bergamote - 100g', 3, 22, '', 4, NULL, 1, 1),
(94, 'Rooibos aloe vera melon', 3, 22, '', 4, NULL, 1, 1),
(95, 'Rooibos Cranberry vanille - 100g', 3, 22, '', 4, NULL, 1, 1),
(96, 'Rooibos Rhubarbe framboise - 100g', 3, 22, '', 4, NULL, 1, 1),
(97, 'Thé blanc Chine - 50g', 3, 22, 'Ce thé du Yunnan est cultivé à une altitude comprise entre 1300 et 2000m d\"altitude et à des températures allant de 12 à 23°C. Ses grandes feuilles ouvertes vert clair et la large proportion de pointes argentées laissent un bouquet doux et fleuri en bouche. La liqueur a un parfum fleuri dont la couleur rappelle le lever du soleil.Le THE BLANC est celui qui nécessite le temps d\"infusion le moins long, l\"eau la moins chaude et est celui qui subit le moins de transformation.', 3, NULL, 1, 1),
(98, 'Thé noir Ceylan - 100g', 3, 22, 'Jusqu’au milieu du XIXème siècle, on consommait à Ceylan exclusivement du café. Cependant, dans les années 1850, un parasite ravagea les plantations de café de l’île, ce qui obligea les cultivateurs anglais à recourir à une autre plante : les théiers. C’est ainsi que le thé fit son apparition au Sri Lanka.\nCe Ceylan organique provient de la vallée de Bogawantalwa dans l\"ouest du Sri Lanka. Les feuilles courtes et foncées d\"un brun rouillé développent une tasse brillante de couleur cuivrée et une infusion rouge vif. Le bouquet vous impressionnera par son goût plein et un arôme doux et épicé, qui laisse un arrière-goût très riche.  ', 4, NULL, 1, 1),
(99, 'Thé noir Chine - 100g', 3, 22, 'La qualité supérieure de ce thé noir du Yunnan se présente magnifiquement avec beaucoup de grandes pointes de feuilles brun doré et une infusion brun cuivré foncé avec un goût bien équilibré et des notes légèrement douces et épicées. Elle vous laissera avec une touche finale douce et légèrement fumée. ', 4, NULL, 1, 1),
(100, 'Thé noir fruits rouges - 100g', 3, 22, 'L’ardeur du printemps se transforme en amour estival. Les fleurs de pavot, le souci et la rose sont les annonciateurs de l’été. Le bonheur peut durer un moment de plus sur cette prairie fruitée et douce de fleurs. \n\n\n', 4, NULL, 1, 1),
(101, 'Thé noir Inde - 100g', 3, 22, 'Ce thé noir du Sud de l\"Inde du jardin Thiashola a une saveur fraîche et légèrement tranchante avec un certain corps. Une feuille multicolore et inégale avec des tâches vertes. La couleur de coupe d\"un rouge cuivre offre un parfum de fleurs fraîches. ', 4, NULL, 1, 1),
(102, 'Thé noir mangue - 100g', 3, 22, '', 4, NULL, 1, 1),
(103, 'Thé noir orange - 100g', 3, 22, 'Aussi rafraîchissant et vitaminé qu\"un jus d\"orange pressé, ce thé noir, frais et vif, sera votre allié pour démarrer votre journée du bon pied ! ', 4, NULL, 1, 1),
(104, 'Thé noir pêche - 100g', 3, 22, 'Ce thé de Ceylan doux décoré avec les couleurs de différentes fleurs et le bleu profond et scintillant de fleurs de bleuet est une promesse de détente complète. Cet arôme est composé des fruits les plus exotiques au monde et d\"un soupçon de crème douce qui fait errer vos pensées, vous permettant de profiter d’un moment de relaxation parfait et de recueillir de nouvelles forces. ', 4, NULL, 1, 1),
(105, 'Thé vert citron jasmin - 100g', 3, 22, '', 4, NULL, 1, 1),
(106, 'Thé vert fraise litchi - 100g', 3, 22, '', 4, NULL, 1, 1),
(107, 'Thé vert Inde - 100g', 3, 22, 'Au cours des dernières années, la plantation Nagri Farm, qui se trouve dans la vallée de Rongbong, a acquis une réputation exceptionnelle pour la production de thé vert. La plantation est répartie sur une superficie de 571 hectares à des altitudes allant jusqu’à 1400 m et a une production annuelle d’environ 190000 kg de thé. Les buissons poussent lentement dans l’air frais de la montagne et l’arôme et les feuilles peuvent se développer parfaitement dans ces conditions idéales. La feuille verte régulière a quelques pointes argentées et présente son caractère classique, rond et doux dans une tasse jaune citron. ', 4, NULL, 1, 1),
(108, 'Thé vert Japon - 50g', 3, 22, '', 4, NULL, 1, 1),
(109, 'Thé vert jasmin - 100g', 3, 22, 'Avec une tasse légèrement jaune et le parfum expressif et typique de jasmin ainsi qu\"une légère note fruitée-acidulée, ce thé au jasmin est un compagnon idéal pour chaque repas et un vrai désaltérant. Selon la qualité de l’eau, le thé peut être infusé plus d’une fois', 4, NULL, 1, 1),
(110, 'Thé vert mangue ananas - 100g', 3, 22, '', 4, NULL, 1, 1),
(111, 'Thé vert poire - 100g', 3, 22, '', 4, NULL, 1, 1),
(112, 'Thé vert Vanille jasmin - 100g', 3, 22, '', 4, NULL, 1, 1),
(113, 'Thé vert Vietnam - 100g', 3, 22, '', 4, NULL, 1, 1),
(114, 'Infusion Noix de coco aloé vera - 100g', 3, 22, '', 4, NULL, 1, 1),
(115, 'Infusion Pina Colada -100g', 3, 22, '', 4, NULL, 1, 1),
(116, 'Infusion Poire cannelle - 100g', 3, 22, '', 4, NULL, 1, 1),
(117, 'Infusion Tilleul - 50g', 3, 22, '', 3, NULL, 1, 1),
(118, 'Thé vert pêche - 100g', 3, 22, '', 4, NULL, 1, 1),
(119, 'Thé vert mirabelle - 100g', 3, 22, '', 4, NULL, 1, 1),
(120, 'Thé vert figue baies rouges - 100g', 3, 22, '', 4, NULL, 1, 1),
(121, 'Thé vert pomme gingembre - 100g', 3, 22, '', 4, NULL, 1, 1),
(122, 'Thé vert cerise - 100g', 3, 22, 'Ce thé vert est une invitation au voyage... L\"excellente base abondamment décorée de pétales de rose, et son parfum fruité de cerise n\"est pas sans rappeler les magnifiques jardins japonais durant la saison de floraison des cerisiers... ', 4, NULL, 1, 1),
(123, 'Oolong Vietnam - 100g', 3, 22, 'Thé désigné sous le nom de « bleu vert » à mi chemin entre le thé vert non oxydé et le thé noir complétement oxydé. Qualifié de thé semi-oxydé, faible en théine il sera à déguster tout au long de la journée. Issu de la ville de Bao Loc, où sont produits des Oolong en utilisant les méthodes taïwanaises anciennes. Les feuilles de thé fraîchement cueillies sont séchées puis écrasées pour commencer la fermentation. Après avoir atteint le niveau de fermentation souhaité, le thé est séché à basse température. La tasse verte rayonnante caresse les papilles de chacun avec sa saveur fleurie et sucrée. ', 4, NULL, 1, 1),
(124, 'Croisière sur le Nil - 100g', 3, 22, '', 4, NULL, 1, 1),
(125, 'L\'ambroisie du dragon 100g', 3, 22, '', 4, NULL, 1, 1),
(126, 'Maté della Melagrana - 100g', 3, 22, '', 4, NULL, 1, 1),
(127, 'Bâton de réglisse 100g', 3, 22, '', 4, NULL, 1, 1),
(128, 'Thé vert citron - 100g', 3, 22, '', 4, NULL, 1, 1),
(129, 'Thé vert coco ananas - 100g', 3, 22, '', 4, NULL, 1, 1),
(130, 'Thé vert ananas fraise - 100g', 3, 22, '', 4, NULL, 1, 1),
(131, 'Earl Grey - 100g', 3, 22, '', 4, NULL, 1, 1),
(132, 'Infusion Chaï - 100g', 3, 22, '', 4, NULL, 1, 1),
(133, 'Maté - 100g', 3, 22, '', 4, NULL, 1, 1),
(134, 'Lapsang Souchong - 100g', 3, 22, '', 4, NULL, 1, 1),
(135, 'Doux nectar - 100g', 3, 22, '', 4, NULL, 1, 1),
(136, 'Thé vert cactus ananas - 100g', 3, 22, '', 4, NULL, 1, 1),
(137, 'Symphonie - 15 infusettes', 3, 23, 'Raisin de Corynthe, Cynorrhodon, Hibiscus, Orange, Ananas, Papaye, arômes', 2.5, NULL, 1, 1),
(138, 'Digestive - 15 infusettes', 3, 23, 'Menthe Poivrée BIO plante, Mélisse BIO plante, Angélique BIO fruit, Anis Vert BIO fruit, Fenouil BIO fruit', 2.5, NULL, 1, 1),
(139, 'Au clair de la Lune - 15 infusettes', 3, 23, 'Oranger Doux feuille, Passiflore des Indes, Mélisse, Verveine Odorante, Aspérule Odorante', 2.5, NULL, 1, 1),
(140, 'Camomille - 15 infusettes', 3, 23, 'Camomille Bio', 2.5, NULL, 1, 1),
(141, 'Infusion Tilleul - 15 infusettes', 3, 23, 'Tilleul', 2.5, NULL, 1, 1),
(142, 'Infusion Verveine - 15 infusettes', 3, 23, 'Verveine Bio', 2.5, NULL, 1, 1),
(143, 'Tisane de Noël - 15 infusettes', 3, 23, 'Cannelle, Orange Douce, Badiane, Hibiscus, Orange Amère, Cardamome', 2.5, NULL, 1, 1),
(144, 'Transit - 15 infusettes', 3, 23, 'Anis Vert, Menthe Douce, Citronnelle', 2.5, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `produit_commande`
--

CREATE TABLE `produit_commande` (
  `id_produit_commande` int(11) NOT NULL,
  `id_commande` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL,
  `id_declinaison_produit` int(11) NOT NULL,
  `quantité_produit` int(11) NOT NULL,
  `prix_HT` float NOT NULL,
  `montant_TVA` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `produit_commande`
--

INSERT INTO `produit_commande` (`id_produit_commande`, `id_commande`, `id_produit`, `id_declinaison_produit`, `quantité_produit`, `prix_HT`, `montant_TVA`) VALUES
(52, 179, 1, 1, 2, 5, 20),
(53, 179, 2, 2, 6, 6, 20),
(54, 179, 35, 20, 6, 3, 20),
(55, 179, 3, 1, 1, 3, 20),
(56, 180, 1, 0, 2, 5, 20),
(57, 180, 2, 2, 6, 6, 20),
(58, 180, 35, 20, 6, 3, 20),
(59, 180, 3, 1, 1, 3, 20),
(60, 181, 2, 2, 3, 6, 20),
(61, 181, 5, 0, 4, 4, 20),
(62, 181, 45, 20, 2, 4, 20);

-- --------------------------------------------------------

--
-- Structure de la table `rubrique`
--

CREATE TABLE `rubrique` (
  `id_rubrique` int(11) NOT NULL,
  `titre` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `rubrique`
--

INSERT INTO `rubrique` (`id_rubrique`, `titre`, `description`) VALUES
(1, 'Actualités', 'Cette rubrique vous informera de toutes les nouveautés de notre site !\nCa va etre la fete !'),
(3, 'Conseils', 'Dans cette rubriques nous vous livrons nos conseils en fonction de vos goûts !'),
(4, 'Super Rubrique', 'Y a R a dire ca claque'),
(5, 'Genial', 'Ok');

-- --------------------------------------------------------

--
-- Structure de la table `statut_commande`
--

CREATE TABLE `statut_commande` (
  `id_statut` int(11) NOT NULL,
  `libelle_statut` varchar(45) NOT NULL,
  `description_statut` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `statut_commande`
--

INSERT INTO `statut_commande` (`id_statut`, `libelle_statut`, `description_statut`) VALUES
(0, 'En attente', 'Commande crée, en attente d\'être acceptée refusée'),
(1, 'Accepté', 'La commande est acceptée'),
(2, 'Refusé', 'La commande est refusée'),
(3, 'En préparation', 'La commande est cours de préparation'),
(4, 'En attente de livraison', 'En attente de livraison en salle avec son ticket'),
(5, 'Livrée salle (attente paiement)', 'La commande est livrée mais attend d\'être payée'),
(6, 'Commande terminée', 'Payée et terminée'),
(7, 'Client parti : avant livraison', ''),
(8, 'Client parti : après livraison', NULL),
(9, 'Rupture de stock', NULL),
(10, 'Réclamation', 'Tout s’est bien passé, mais après paiement, le client émet des objections.');

-- --------------------------------------------------------

--
-- Structure de la table `tva`
--

CREATE TABLE `tva` (
  `id_tva` int(11) NOT NULL,
  `pourcentageTVA` decimal(10,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `tva`
--

INSERT INTO `tva` (`id_tva`, `pourcentageTVA`) VALUES
(1, '2.1'),
(2, '5.5'),
(3, '10.0'),
(4, '20.0');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id_utilisateur` int(11) NOT NULL,
  `nom_utilisateur` varchar(45) NOT NULL,
  `prenom_utilisateur` varchar(45) NOT NULL,
  `mot_de_passe` text NOT NULL,
  `mail_utilisateur` text NOT NULL,
  `lib_rue_utilisateur` varchar(45) NOT NULL,
  `CP_utilisateur` varchar(45) NOT NULL,
  `ville_utilisateur` varchar(45) NOT NULL,
  `tel_utilisateur` varchar(45) NOT NULL,
  `role_jwt` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`role_jwt`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id_utilisateur`, `nom_utilisateur`, `prenom_utilisateur`, `mot_de_passe`, `mail_utilisateur`, `lib_rue_utilisateur`, `CP_utilisateur`, `ville_utilisateur`, `tel_utilisateur`, `role_jwt`) VALUES
(46, 'Grandvincent', 'Sam', '$2y$13$aWYZKHu0W4u5Z.vtAiiuD.tFha16knL9xB7e2jJUTXkDxvjVUCRPO', 'sam@gmail.com', '3 rue de la Saone', '70120', 'Lavoncourt', '0788086587', '[\"ROLE_SERVER\"]'),
(53, 'gvtr', 'totq', '$2y$13$Yuv/cfKEejfy2O3uatzBy.JeNfAxChpAbdcfosKqHsdu7cyAf.yj6', 'toto@gmail.com', 'Rue du fiak ', '25000', 'lavoncourtoiu', '0788086591', '[\"ROLE_USER\"]'),
(54, 'huihn', 'inhuinh', '$argon2i$v=19$m=65536,t=4,p=1$LmNZbjAzLjBLbnREYVJZYQ$nfF76aVruKRHfru3n3YR8m99quI+8Z9JqoXDy9jGMes', 'gigi@gmail.com', 'omjiojmo', 'oimjoim', 'mjoijmoi', '657876677', '[\"ROLE_USER\"]'),
(55, 'Boze', 'Andre', '$2y$13$8wjKc6ynk/Z3xyFArTcqguYGdOXKs3Tkq8iaKlyZ9EhwDnUZN5pra', 'roleRedac@gmail.com', '4 rue du GIGA FIAK', '45678', 'FiakLand', '0798087867', '[\"ROLE_REDAC\"]'),
(60, 'roro', 'tutu', '$argon2i$v=19$m=65536,t=4,p=1$TUFyUmMyRGZFd1YwakRicw$1m4kS9dHvsBfZPxeRgNBVNI6UqiH+XOgUwqkg/JhI5w', 'roor@gmail.com', '3 rut ', '34567', 'lavon', '087654676', '[\"ROLE_USER\"]'),
(61, 'gvt', 'Sam', '$2y$13$O59PeWGpO0jONyZyoVMJ1.1JLX.ncsU1YnsH2D7Fy1f7i6nUqP1/C', 'roleAdmin@gmail.com', '3 rue de la Saône', '70120', 'Lavoncourt', '0788909765', '[\"ROLE_ADMIN\"]'),
(62, 'Noob', 'toto', '$2y$13$qn0K.k24lCi4xnC1wR0bgeOjaVzNyzAkH13tQyfyUdRoxYiJREbcO', 'noob@gmail.com', '3 rue du fiak', '34567', 'fiak', '0788976561', '[\"ROLE_ADMIN\"]'),
(63, 'role', 'user', '$2y$13$0LSbOuQGhajK9/yFOPPEZe2bXf8DnNeS3BI1hekGq2CjhLjMLdYB2', 'roleUser@gmail.com', 'user rue', '45678', 'Vesoul', '0788675432', '[\"ROLE_USER\"]');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id_article`),
  ADD KEY `fkIdx_139` (`id_rubrique`),
  ADD KEY `FK_ARTICLE_UTILISATEUR` (`id_utilisateur`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id_categorie`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id_commande`),
  ADD KEY `fkIdx_53` (`id_statut`);

--
-- Index pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD PRIMARY KEY (`id_commentaire`),
  ADD KEY `fkIdx_22` (`id_utilisateur`),
  ADD KEY `fkIdx_25` (`id_produit`);

--
-- Index pour la table `declinaison`
--
ALTER TABLE `declinaison`
  ADD PRIMARY KEY (`id_declinaison`);

--
-- Index pour la table `declinaison_produit`
--
ALTER TABLE `declinaison_produit`
  ADD PRIMARY KEY (`id_declinaison_produit`,`id_declinaison`,`id_produit`),
  ADD KEY `fkIdx_156` (`id_declinaison`),
  ADD KEY `fkIdx_159` (`id_produit`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `prise_en_charge_commande`
--
ALTER TABLE `prise_en_charge_commande`
  ADD PRIMARY KEY (`id_prise_en_charge`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id_produit`),
  ADD KEY `fkIdx_13` (`id_categorie`),
  ADD KEY `fkIdx_95` (`id_tva`);

--
-- Index pour la table `produit_commande`
--
ALTER TABLE `produit_commande`
  ADD PRIMARY KEY (`id_produit_commande`),
  ADD KEY `fkIdx_32` (`id_commande`),
  ADD KEY `fkIdx_182` (`id_declinaison_produit`),
  ADD KEY `fk_idProduit` (`id_produit`);

--
-- Index pour la table `rubrique`
--
ALTER TABLE `rubrique`
  ADD PRIMARY KEY (`id_rubrique`);

--
-- Index pour la table `statut_commande`
--
ALTER TABLE `statut_commande`
  ADD PRIMARY KEY (`id_statut`);

--
-- Index pour la table `tva`
--
ALTER TABLE `tva`
  ADD PRIMARY KEY (`id_tva`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id_utilisateur`),
  ADD UNIQUE KEY `mail` (`mail_utilisateur`) USING HASH;

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id_article` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id_categorie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id_commande` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT pour la table `commentaire`
--
ALTER TABLE `commentaire`
  MODIFY `id_commentaire` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT pour la table `declinaison`
--
ALTER TABLE `declinaison`
  MODIFY `id_declinaison` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `declinaison_produit`
--
ALTER TABLE `declinaison_produit`
  MODIFY `id_declinaison_produit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT pour la table `prise_en_charge_commande`
--
ALTER TABLE `prise_en_charge_commande`
  MODIFY `id_prise_en_charge` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `id_produit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT pour la table `produit_commande`
--
ALTER TABLE `produit_commande`
  MODIFY `id_produit_commande` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT pour la table `rubrique`
--
ALTER TABLE `rubrique`
  MODIFY `id_rubrique` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `statut_commande`
--
ALTER TABLE `statut_commande`
  MODIFY `id_statut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT pour la table `tva`
--
ALTER TABLE `tva`
  MODIFY `id_tva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id_utilisateur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `FK_ARTICLE_UTILISATEUR` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id_utilisateur`);

--
-- Contraintes pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD CONSTRAINT `fkIdx_22` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id_utilisateur`);

--
-- Contraintes pour la table `produit_commande`
--
ALTER TABLE `produit_commande`
  ADD CONSTRAINT `fk_idProduit` FOREIGN KEY (`id_produit`) REFERENCES `produit` (`id_produit`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
