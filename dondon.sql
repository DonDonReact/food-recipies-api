-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : db
-- Généré le : sam. 28 nov. 2020 à 17:29
-- Version du serveur :  5.7.32
-- Version de PHP : 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `dondon`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(255) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`) VALUES
(1, 'Tunisian Food'),
(2, 'Italian Food'),
(3, 'Gateau');

-- --------------------------------------------------------

--
-- Structure de la table `items`
--

CREATE TABLE `items` (
  `item_id` int(255) UNSIGNED NOT NULL,
  `category_id` int(255) UNSIGNED NOT NULL,
  `title` varchar(256) NOT NULL,
  `short_description` text NOT NULL,
  `description` text NOT NULL,
  `duration` int(11) NOT NULL,
  `ingrédient` text NOT NULL,
  `Préparation` text NOT NULL,
  `score` float NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `items`
--

INSERT INTO `items` (`item_id`, `category_id`, `title`, `short_description`, `description`, `duration`, `ingrédient`, `Préparation`, `score`, `create_date`, `modify_date`) VALUES
(1, 1, 'Couscous tunisien a l\'agneau ', 'Préparation : 20min\r\nCuisson : 1h', '\r\n', 40, 'Nombre de parts: 4\r\n4 morceaux d\'agneau\r\n2.5 pommes de terres\r\n2.5 carottes\r\n2.5/3\r\npiments selon les personnes qui en mange\r\n2.5 oignons\r\npoignée de pois chiches\r\n0.5 cuillère a soupe de sel\r\n0.5 cuillère en bois de piment rouge\r\n2.5 cuillères a soupe de concentre de tomates\r\nune pincée de raz el hanout\r\nun fond d\'huile d\'olive\r\nde la semoule moyenne', '\r\n1.assaisonner la viande avec curcuma, sel, poivre et les condiments spécial couscous( on les achète des grands surfaces). laisser le tout se reposer 30 mn au frais.\r\n2.mettre la viande reposée dans un couscoussier, avec l\'huile et faire mijoter quelques minutes des deux cotés. couvrir d\'eau et laisser bouillir. en ce moment ajouter un pincé de cannelle,in pincée de noix de muscade, les pois chiches, les pommes de terres et les oignons. laisser sur feu moyen 30 mn.\r\n3.prendre 400 g de couscous et mélanger avec 2 cuillères à soupe d\'huile, une petite cuillère de sel, quelques cardamomes( hill)et 1/2 verre à café d\'eau froide. mélanger le tout avec la main et mettre sur la partie haute du couscoussier(le keskess).\r\n4.les graines de couscous sont cuites par la vapeur de la sauce de couscous. au bout de 20 mn, retirer et verser les grain dans un grand récipient;ajouter 2 cuillères d\'eau et brasser avec 2 fourchettes pour éliminer les grumeaux. remettre de nouveaux dans le keskess pour cuire 20 mn encore.\r\n5.verifier la sauce et enlever les légumes cuites. mettreles piments vert salés pendant 5 mn et les faire sortir.\r\n6.verser les graines de couscous qui ont multiplié de volumes dans un récipient large, mettre dessus un pincé de poivre de moulin, 1 petite cuillère de beurre salé(smen), mélanger le tout. arroser avec la sauce qui ne doit pas être trop réduite. pour une louche de grains de couscous il faut une louche de sauce. mélanger et laisser le se reposer 7mn avant de le servir.\r\n', 2.4, '2020-11-11 19:32:49', '2020-11-11 19:32:49'),
(2, 1, 'Pasta', 'Pasta short description', 'Pasta description', 0, '', '', 4, '2020-11-11 20:03:44', '2020-11-11 20:03:44'),
(3, 1, 'Mlou5ia', 'Mlou5ia short description', 'Mlou5ia description', 0, '', '', 5, '2020-11-11 20:04:45', '2020-11-11 20:04:45'),
(4, 2, 'pizza', 'pizza italienne', 'Les Ingrédients:\r\nPour la pâte (3 pizzas avec ces proportions)\r\n500 g de farine (ou un mélange de 250 g de farine normale + 250 g de farine à pain)\r\n1 c. à café de sel\r\n1 c. à soupe d\'huile d\'olive\r\n1 sachet de levure de boulanger déshydratée (soit environ 6 à 8 g en général)\r\n250 ml d\'eau à température ambiante\r\nPour la garniture :\r\n2 Oignons\r\n2 gousses d\'ail\r\n300 ml de passata ou coulis de tomate\r\n1 cuil. à café d\'herbes de Provence (thym, origan, romarin...)\r\n2 ou 3 tomates fraîches ou tomates cerises (facultatif)\r\nMozzarella ou Fromage râpé type Emmental\r\nChiffonnade de jambon italien\r\nOlives noires\r\nRoquette', 0, '', '', 4, '2020-11-13 19:31:40', '2020-11-13 19:31:40'),
(5, 3, 'Gateau Tunisien', 'Gateau short', 'Gateau description', 0, '', '', 2, '2020-11-13 19:40:30', '2020-11-13 19:40:30');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Index pour la table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `FK_category_id` (`category_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `FK_category_id` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
