-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  Dim 12 août 2018 à 11:40
-- Version du serveur :  10.1.30-MariaDB
-- Version de PHP :  7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `glossary`
--

-- --------------------------------------------------------

--
-- Structure de la table `glo_wm`
--

CREATE TABLE `glo_wm` (
  `wm_id` int(4) NOT NULL,
  `wm_letter` varchar(1) NOT NULL,
  `wm_word` varchar(50) NOT NULL,
  `wm_def` text NOT NULL,
  `wm_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `glo_wm`
--

INSERT INTO `glo_wm` (`wm_id`, `wm_letter`, `wm_word`, `wm_def`, `wm_date`) VALUES
(1, 'A', 'Adsense', 'Une plate-forme de diffusion d’annonces contextuelles de Google qui permet aux webmasters de créer un flux de revenus en plaçant des annonces sur leurs sites.', '2018-03-05 18:26:05'),
(2, 'A', 'Adwords', 'Régie publicitaire de Google pour permettre aux annonceurs de placer des annonces au travers des liens sponsorisés dans les services de Google. Il s’agit de la régie publicitaire de Google. C’est cette régie qu’il faut utiliser afin d’acheter des annonces ou des bannières publicitaires qui seront affichées sur le moteur de recherche Google ou sur les sites partenaires (comme Youtube…) en fonction des mots clés écrits par les Internautes ou en fonction de leur navigation.', '2018-03-05 18:26:05'),
(3, 'A', 'Affiliation', 'Partenariat passé sur des produits ou services tiers en échange d’une commission sur les ventes confirmées ou des prospects généré. il s’agit d’une technique consistant pour un site marchand d’acheter auprès d’un autre site du trafic qui sera redirigé vers ce site marchand. Il y aura rémunération du site qui amène le trafic lorsque les Internautes redirigés auront acheté.', '2018-03-05 18:35:18'),
(4, 'A', 'Alexa Rank', 'Une mesure basée sur le trafic d’un site Web. Plus le score est petit meilleur est le résultat. Par exemple, un site Web avec un rang Alexa de 40 obtient plus de trafic que celui classé 200.', '2018-03-05 18:35:18'),
(5, 'A', 'Ancre', 'Texte cliquable d’un lien hypertexte.', '2018-03-05 18:35:18'),
(6, 'A', 'Automation marketing', 'Appelé aussi Marketing Automation, se défini par le remplacement d’une tâche répétitive par des logiciels pour permettre le déclenchement et le déroulement de campagnes marketing afin de stimuler le prospect dans l’avancement de son processus d’achat.', '2018-03-05 18:35:18'),
(7, 'A', 'Autorépondeur ', 'C’est un outil qui vous permet de gérer ses envois d’emails à ses listes d’abonnés sous forme de flux programmées à l’avance. Beaucoup de marketeurs, considèrent l’autorépondeur comme un des outils indispensables pour développer leur businesss sur le web.', '2018-03-05 18:35:18'),
(8, 'A', 'Autorité ', 'L’autorité globale d’un site Web est basé sur une série de facteurs tels que la popularité, le trafic, les backlinks, les actions des médias sociaux etc. Plus un site Web est populaire, plus celui-ci à de l’autorité.', '2018-03-05 18:35:18'),
(9, 'B', 'Backlink ', 'Quand un lien externe d’un site externe pointe vers votre site Web.', '2018-03-05 18:35:18'),
(10, 'B', 'Black hat SEO', 'Une forme agressive de l’optimisation des moteurs de recherche en utilisant souvent des outils automatisés et des pratiques immorales avec un risque de pénalisation par les moteurs de recherches.', '2018-03-05 18:35:18'),
(11, 'B', 'Buyer Persona', 'Un buyer persona est un profil d’acheteur cible à qui on construit une identité fictive notamment dans le cadre d’une stratégie Inbound Marketing.', '2018-03-05 18:35:18'),
(12, 'C', 'Call to Action', 'Mots ou boutons qui encouragent l’utilisateur à faire une certaine action. En cliquant sur un lien ou faire un achat par exemple. \r\n caractérise le fait d’inciter les internautes à effectuer une action particulière avec le site, interagissant ainsi avec lui (par exemple « Achetez » ou encore « Souscrivez à la newsletter »).', '2018-03-05 18:35:18'),
(13, 'C', 'Clickbait', 'Appelé également “Putaclic” dans le langage courant, le clickbait désigne une technique de rédaction de contenu médiocre qui vise à maximiser le nombre de clics sur un article ou une vidéo, notamment via les réseaux sociaux grâce à un titre racoleur et/ou trompeur.', '2018-03-05 19:18:35'),
(14, 'C', 'Click Through Rate (CTR)', 'C’est le taux qui correspond au pourcentage du nombre de vu d’une annonce par rapport à au nombre de clic. Si l’annonce a été vue 100 fois et cliqué 30 fois, vous avez alors un CTR de 30%.', '2018-03-05 19:18:35'),
(15, 'C', 'Content Management System (CMS)', 'signifiant littéralement « Content Management System », les CMS sont des solution web qui permettent de grandement faciliter la création et la mise à jour de sites Internet. Les plus connus sont par exemple WordPress, Joomla, Magento ou encore Drupal.', '2018-03-05 19:18:35'),
(16, 'C', 'Community Management', 'Création, développement et animation d’une communauté au travers les réseaux sociaux.', '2018-03-05 19:18:35'),
(17, 'C', 'Content marketing', ' Appelé aussi marketing de contenu, il s’agit comme son nom l’indique de la création de contenus tels que des articles, livres blancs, infographies, études de cas, etc., afin d’acquérir du trafic mais aussi de nouveaux clients à travers leurs diffusions. En savoir plus sur le marketing de contenu', '2018-03-05 19:18:35'),
(18, 'C', 'Conversion', 'Quand un utilisateur réalise l’action désirée par l’objectif de départ comme acheter un produit.', '2018-03-05 19:18:35'),
(19, 'C', 'Crawler', 'Appelé aussi spider, c’est un bot ou un morceau de logiciel qui explore le Web pour extraire et créer un index de données.', '2018-03-05 19:18:35'),
(20, 'C', 'CSS', 'Un langage web utilisé pour appliquer des styles aux éléments Web tels que la taille de police, la couleur, la police, l’alignement etc.', '2018-03-05 19:18:35'),
(21, 'C', 'CRM ', 'Custom Relationship Management ou Gestion de la Relation Client (GRC), est l’ensemble des outils et techniques marketing visant à capter, traiter, analyser les informations relatives aux clients et aux prospects, dans le but de développer la relation et la fidélisation des clients. On parle aussi de logiciels CRM qui offrent des solutions pour faciliter le processus de relation client.', '2018-03-05 19:18:35'),
(22, 'D', 'Duplicate Content', 'Deux pages Web qui disposent en double des contenus similaires. C’est est une des principales causes des pénalités de Google Panda.', '2018-03-05 19:18:35'),
(23, 'E', 'E-réputation', 'il s’agit de connaître la notoriété, l’image et tout ce qui se dit sur l’entreprise sur Internet et d’agir afin de faire en sorte d’avoir la réputation que l’entreprise souhaite avoir sur Internet. Il faut donc connaître tous les avis, commentaires, rumeurs concernant l’entreprise mais aussi réaliser des actions permettant aux Internautes de se forger une idée sur l’entreprise conforme aux souhaits de l’entreprise.', '2018-03-05 20:17:00'),
(24, 'G', 'Guest post', 'Lorsque vous êtes invités à publier un article sur le site ou le blog de ​​quelqu’un d’autre. Cela se fait habituellement pour créer un backlink vers votre site ou à augmenter le trafic et la notoriété du site ainsi que l’engagement.', '2018-03-05 20:17:00'),
(25, 'H', 'Hébergement dédié', 'Hébergement de sites Web qui ne sont pas partagés avec d’autres personnes. Vous avez un serveur dédié qui sert uniquement à votre site sans partager les ressources avec d’autres sites.', '2018-03-05 20:17:00'),
(26, 'H', 'HTML', 'Hypertext Markup Language, un langage de programmation statique utilisé pour créer des sites Web.', '2018-03-05 20:17:00'),
(27, 'I', 'Inbound Marketing', 'L’inbound marketing est une méthodologie marketing visant à faire venir le client vers soi plutôt que d’aller le chercher avec les techniques de marketing traditionnelles en produisant du contenu de qualité sur son site pour qu’il soit fortement identifiable par les moteurs de recherche et partagé sur les réseaux sociaux. ', '2018-03-05 20:17:00'),
(28, 'L', 'Landing Page', 'C’est la page qui a pour objectif d’accueillir les visiteurs. Appelées aussi pages d’atterrissage elles ont généralement un appel à l’action. ', '2018-03-05 20:17:00'),
(29, 'L', 'Lead ', 'Terme utilisé pour désigner un contact commercial auprès d’un prospect, d’un client potentiel. Il peut s’agir d’une demande de devis, de visites sur le site internet, de demandes d’information etc. il s’agit d’un contact commercial entre un consommateur potentiel et une entreprise. Sur Internet, il se fait généralement par le remplissage d’un formulaire ou l’acceptation d’envoi de newsletters ou encore la création d’un espace personnel sur un site. Le client recueille des informations sur le prospect lui permettant de le recontacter et le relancer commercialement.', '2018-03-05 20:17:00'),
(30, 'L', 'Lead nurturing', 'Le lead nurturing est un processus qui consiste à créer une relation marketing avec des prospects qui ne sont pas encore mûrs pour une action de vente ou pour lesquels cette action a échoué car trop précoce.', '2018-03-05 20:17:00'),
(31, 'L', 'Lean Marketing', 'Le Lean Marketing est basé sur le livre Lean Startup écrit par Eric Ries qui promeut la méthode du même nom en adaptant constamment son offre mais aussi son entreprise aux évolutions du marché, en suivant le principe de l’innovation continue.', '2018-03-05 20:17:00'),
(32, 'L', 'Link bait', 'Un contenu qui est créé dans le but d’attirer des backlinks provenant d’autres sites. c’est le fait d’acquérir des liens, relayés naturellement par des internautes ayant jugés un contenu particulièrement qualitatif.', '2018-03-05 20:17:00'),
(33, 'M', 'Marketing Automation', 'Pratique qui consiste à automatiser des tâches marketing répétitives  à l’aide d’outils spécifiques comme des autorépondeurs. Le Marketing Automation permet ainsi de générer des campagnes marketing programmées à l’avance suivant différents scénarios comme l’envoi d’une série d’emails en fonction du comportement de l’utilisateur.', '2018-03-05 20:57:45'),
(34, 'M', 'Meta-Description', 'La description d’une page Web qui apparaît dans les résultats des moteurs de résultats est définie avec la balise meta-description dans la section de l’entête d’une page Web.', '2018-03-05 20:57:45'),
(35, 'M', 'Mobile First', 'Il s’agit d’un critère de référencement lié à Google qui favorise un site responsive pour le positionnement sur son moteur de recherche. Le principe du Mobile First est que les contenus des pages mobiles servent à analyser et classer les contenus et non plus le texte des pages “desktop”.', '2018-03-05 20:57:45'),
(36, 'M', 'Mot-clé', 'Un terme important que vous souhaitez optimiser pour classer votre site dans les résultats des moteurs de recherche. En savoir plus sur les mots-clés.', '2018-03-05 20:57:45'),
(37, 'N', 'Netlinking', 'Etape essentielle du référencement, le netlinking ou linkbuilding consiste à améliorer la popularité d’un site en construisant des liens (backlinks) qui pointent vers celui-ci.\r\nil s’agit de liens présents sur le site renvoyant vers un autre site. L’objectif est d’échanger des Internautes afin d’accroître le trafic des divers sites et d’en améliorer le référencement.', '2018-03-05 20:57:45'),
(38, 'N', 'Nofollow', 'Une étiquette qui peut être ajouté aux liens afin de prévenir les moteurs de recherche de ne pas les suivre ou de leur donner du poids lors du calcul des classements.', '2018-03-05 20:57:45'),
(39, 'N', 'Nom de domaine', 'il s’agit d’un identifiant de domaine Internet permettant de retrouver le site dans la jungle d’Internet. Il s’agit donc d’une adresse où on peut trouver le site. Il commence par “www” et fini par divers identifiants au choix “.com”, “.fr”…', '2018-03-05 20:57:45'),
(40, 'O', 'Opt-in', 'Quand un utilisateur rejoint votre liste d’email ou opte pour recevoir des communications de votre part.', '2018-03-05 20:57:45'),
(41, 'O', 'Outbound marketing', 'Approche plus traditionnelle du marketing de masse par la diffusion à grande échelle de campagnes print, télé ou radio).', '2018-03-05 20:57:45'),
(42, 'P', 'Page de résultats des moteurs de recherche (SERP)', 'La page de résultats que vous voyez après avoir effectué une recherche dans un moteur de recherche comme Google.', '2018-03-05 20:57:45'),
(43, 'P', 'PageRank', 'mesure de popularité allant de 1 à 10, créée et servant uniquement pour Google afin d’afiner la pertinence de son index. Son utilité a été considérablement décroissante au fil des années.', '2018-03-05 21:00:57'),
(44, 'P', 'Panda', 'La mise à jour Google Panda a été introduite en Février 2011 ciblant les sites de faible qualité et dupliquant du contenu et pénalisant certain d’entre eux.', '2018-03-05 21:00:57'),
(45, 'P', 'Pay Per action (PPA)', 'Un modèle de publicité où vous ne payez que pour une action achevée comme une vente confirmée ou un abonnement à vos emails.', '2018-03-05 21:00:57'),
(46, 'P', 'Pay Per Click (PPC)', 'Un modèle de publicité où vous payez un montant fixe pour chaque clic  que votre annonce reçoit.', '2018-03-05 21:00:57'),
(47, 'P', 'PHP ', 'Langage de programmation aussi connu comme Hypertext Preproccesor et qui est généralement utilisé pour servir du contenu dynamique et des interactions avec les bases de données.', '2018-03-05 21:00:57'),
(48, 'P', 'Pingouin ', 'mise à jour de l’algorithme de Google parue pour la première fois en 2012, qui s’attaque notamment aux liens jugés trop artificiels et ne répondant pas aux conditions d’utilisation de Google, en déclassant les sites concernés.', '2018-03-05 21:00:57'),
(49, 'R', 'Reach ', 'Il s’agit du taux de couverture qui mesure la proportion des utilisateurs atteints par une publication sur un réseau social.', '2018-03-05 21:00:57'),
(50, 'R', 'Responsive Web Design (RWD)', 'C’est la façon de concevoir un site Web pour qu’il s’adapte automatiquement aux différentes tailles d’écran afin de faciliter la lecture.', '2018-03-05 21:00:57'),
(51, 'R', 'Robots.txt', 'Le Robot Exclusion Standard est un fichier consulté par l’ensemble des moteurs de recherche lors du crawl d’un site, indiquant à ces derniers s’ils ont le droit ou non de visiter le site, en précisant s’ils peuvent le faire en intégralité ou non.', '2018-03-05 21:00:57'),
(52, 'R', 'ROI (retour sur investissement)', 'Return On Investment ou Retour sur Investissement en Français, il décrit le retour monétaire qui découle d’une opération marketing. Le pourcentage des bénéfices réalisés au-dessus de l’investissement initial. Si vous avez investi 100€ et avez gagné 160€ vous aurez un ROI de 60%.', '2018-03-05 21:00:57'),
(53, 'A', 'Accessibilité', 'partie intégrante de l’ergonomie d’un site, elle a pour but de rendre un site navigable par tous les internautes, mal voyants et personnes âgées y compris.', '2018-03-05 21:03:24'),
(54, 'S', 'Search Engine Advertising (SEA)', 'achat de liens sponsorisés dans le but de se positionner rapidement sur des mots clés spécifiques, pour une campagne par exemple.', '2018-03-05 21:03:24'),
(55, 'S', 'Search Engine Marketing (SEM)', 'L’utilisation des moteurs de recherche pour viser votre cible, soit par des méthodes de SEO ou par de la publicité en ligne. Mise en place de liens sponsorisés, notamment sur les moteurs de recherche, afin de gagner en visibilité tout en augmentant son trafic.', '2018-03-05 21:03:24'),
(56, 'S', 'Search Engine Optimisation (SEO) ', 'optimisation d’une page ou d’un site pour les moteurs de recherche destinée à faire remonter la page ou le site dans les pages de résultats.', '2018-03-05 21:03:24'),
(57, 'S', 'Sitemap XML', 'fichiers à destination des moteurs de recherche recensant l’ensemble ou une partie des pages d’un site dans le but de faciliter et d’optimiser l’indexation de ce dernier.', '2018-03-05 21:03:24'),
(58, 'S', 'SMO (Social Media Optimization)', 'C’est l’ensemble des méthodes qui ont pour objectif de développer la visibilité et la réputation d’une marque ou d’un site sur les réseaux sociaux en favorisant l’échange et la création d’informations. ', '2018-03-05 21:03:24'),
(59, 'T', 'Taux de conversion', 'pourcentage de visiteurs ayant réalisé l’objectif du site en question (achat, inscription à une newsletter, etc.). Le pourcentage de personnes qui convertissent. Par exemple, si 5 visiteurs sur 10 achètent un produit c’est que vous avez un taux de conversion de 50%.', '2018-03-05 21:03:24'),
(60, 'T', 'Tunnel de conversion (funnel)', 'utilisé dans le web analytique, il correspond au chemin de visite (déterminé ou non) qu’effectuent les internautes jusqu’à la réalisation d’un objectif donné.', '2018-03-05 21:03:24'),
(61, 'U', 'User Experience (UX)', 'L’UX design est un ensemble d’éléments qui prend en compte l’interface utilisateur mais aussi le contenu, le design ou la structure du site dans le but de faciliter la navigation de l’internaute.', '2018-03-05 21:03:24'),
(62, 'W', 'Webmarketing', 'Appelé aussi marketing digital ou e-marketing, il correspond à l\'utilisation des nouvelles technologies de l’information et de la communication (ntic) pour promouvoir un site Internet, c’est-à-dire gagner en visibilité mais aussi optimiser ses performances.', '2018-03-05 21:03:24'),
(63, 'W', 'White hat SEO', 'L’utilisation de pratiques SEO éthiques pour augmenter la popularité de vos sites et le classement dans les moteurs de recherche.', '2018-03-05 21:03:41'),
(64, 'A', 'Ajax ', 'nouvelle approche permettant de réaliser des actions dynamiques au sein d’un site sans avoir à recharger l’ensemble de la page.', '2018-03-05 21:06:17'),
(65, 'A', 'Analyse sémantique', 'base de tout bon référencement, cela consiste à s’assurer que les mots clés sur lesquels un site se positionne soient en adéquation avec ce que recherchent les internautes.', '2018-03-05 21:06:17'),
(66, 'A', 'Ancre ', 'texte utilisé sur lequel est intégré un lien hypertexte, avec une destination soit externe, soit interne au sein d’une même page ou d’un même site.', '2018-03-05 21:07:08'),
(67, 'B', 'Big Data', 'Datamasse en Français,  il s’agit de l’ensemble des données brutes (encore non triées) récoltées par une entreprise sur des clients, prospects, visiteurs de leur site ainsi que leur comportement sur le site… Cette notion implique un nombre très important de données qu’il faut trier et analyser afin d’en déduire des informations pertinentes.', '2018-03-05 21:07:08'),
(68, 'B', 'Business Model', 'signifiant littéralement modèle d’entreprise, cela désigne le modèle économique d’une entreprise, c’est-à-dire par quel moyen gagne-t-elle de l’argent.', '2018-03-05 21:08:04'),
(69, 'C', 'CGV ', 'Conditions Générales de Ventes, elles résument aux utilisateurs d’un site Internet l’ensemble des informations concernant les engagements, les droits et les devoirs qui leur incombent en surfant sur ce dernier.', '2018-03-05 21:08:04'),
(70, 'C', 'CNIL ', 'Commission Nationale de l’Informatique et des Libertés, est une autorité indépendante Française chargée de faire respecter les lois et devoirs de chaque sites sur Internet.', '2018-03-05 21:10:15'),
(71, 'C', 'Community Management', ' il s’agit de l’ensemble des actions réalisées par une entreprise afin d’agir sur les communautés sur Internet (forum, blog, avis sur site, réseaux sociaux). Le but est de faire de la veille d’informations, de la contrôler et d’agir afin d’obtenir les objectifs définis (bonne e-réputation, notoriété, image, recherche de clients…).', '2018-03-05 21:10:15'),
(72, 'C', 'CRM ', 'Custom Relationship Management ou Gestion de la Relation Client (GRC), il regroupe les opérations marketing visant à développer la relation et la fidélisation des clients.', '2018-03-05 21:11:18'),
(73, 'D', 'Data mining', 'technologie utilisée dans le but d’organiser, d’analyser ou de classer des informations issues d’une base de données marketing.', '2018-03-05 21:11:18'),
(74, 'D', 'Display ', 'encarts publicitaires imagés (bannières publicitaires), souvent payés au CPM (Coût pour mille affichages).', '2018-03-05 21:12:23'),
(75, 'E', 'Emailing ', 'envoi de mail groupés plus ou moins ciblés dans un but marketing (vente à des clients ou prospects, fidélisation de clients, informations, image, notoriété).', '2018-03-05 21:12:23'),
(76, 'E', 'Ergonomie web ', 'pratique consistant à rendre un site le plus agréable et facile à naviguer possible, en optimisant la satisfaction de l’internaute tout en favorisant l’accessibilité du site.  il s’agit de rendre son site Web, ludique, interactif, rapide, simple d’utilisation afin d’en facilité l’utilisation et d’inciter les Internautes à le visiter, acheter et y retourner souvent.', '2018-03-05 21:14:21'),
(77, 'E', 'ERP ', 'Entreprise Ressource Planning, il désigne le logiciel utilisé par une entreprise pour centraliser toutes les informations liées aux ventes, achats, méthodes de gestion et production.', '2018-03-05 21:14:21'),
(78, 'E', 'ESN', 'Une entreprise de services du numérique (ESN), anciennement société de services en ingénierie informatique (SSII ou SS2I), est une société de services experte dans le domaine des nouvelles technologies et de l\'informatique.', '2018-03-05 21:14:21'),
(79, 'F', 'Favicon', ' icone symbolisant un site web. Cette dernière est souvent affichée dans les onglets des navigateurs et dans la gestion des favoris en face des sites correspondants.', '2018-03-05 21:14:21'),
(80, 'F', 'Flash', 'technologie créée et popularisée par Adobe permettant de créer un site à partir d’animation. Cette dernière est vite devenue obsolète par manque de comptabilité avec les moteurs de recherche.', '2018-03-05 21:14:21'),
(81, 'J', 'Javascript', 'langage de programmation utilisé pour créer de l’interactivité au sein de pages HTML.', '2018-03-05 21:18:29'),
(82, 'K', 'KPI', 'Key Performance Indicator, indicateur clé de performance (ICP) en Français, il désigne une donnée chiffrable et mesurable utilisée pour constater une performance.', '2018-03-05 21:18:29'),
(83, 'M', 'Multi plateformes', 'l’ensemble des supports à la disposition des internautes et des marketeurs (smartphone, tablette, PC, etc.).', '2018-03-05 21:18:29'),
(84, 'L', 'Link building', 'étape incontournable du SEO qui consiste à améliorer la popularité d’un site en augmentant le nombre de liens qui pointent vers lui.', '2018-03-05 21:18:29'),
(85, 'M', 'Mentions légales', ' désigne la page sur laquelle figure l’ensemble des données à faire figurer obligatoirement par l’ensemble des blogs, sites et e-commerces.', '2018-03-05 21:18:29'),
(86, 'N', 'Negative SEO', ' tactiques SEO visant à déclasser un ou plusieurs de ses concurrents dans Google.', '2018-03-05 21:20:20'),
(87, 'O', 'Opt-out', 'système de collecte d’information auprès des internautes sans pour autant demander d’accord explicit à ces derniers. Cette pratique est illégale en France, mais pas nécessairement à l’étranger.', '2018-03-05 21:20:20'),
(88, 'P', 'Paypal', 'Paypal est un mode de paiement en ligne exclusivement disponible sur Internet, créé en 1998.', '2018-03-05 21:26:11'),
(89, 'P', 'Plan média', ' document regroupant les différentes dépenses liées aux gains de visibilité online et offline, ainsi que les différentes méthodes de promotion utilisées.', '2018-03-05 21:26:11'),
(90, 'R', 'Reporting ', 'rapport faisant état des lieux des performances d’un site, et souvent de l’évolution de ces performances, à un instant T.', '2018-03-05 21:26:11'),
(91, 'R', 'Responsive ', 'procédé selon lequel un site s’adapte automatiquement et à partir de sa forme actuelle aux différentes tailles d’écran.', '2018-03-05 21:26:11'),
(92, 'R', 'RSS ', 'Really Simple Syndication est un format de données généré automatiquement qui est utilisé pour syndiquer du contenu au sein d’un lecteur spécialement prévu à cet effet.', '2018-03-05 21:26:11'),
(93, 'R', 'RTB (Real Time Bidding) ', ' littéralement enchères en temps réel, le RTB désigne le principe selon lequel des régies proposent des espaces publicitaires aux plus offrants en fonction d’enchères gérées en temps réel.', '2018-03-05 21:28:05'),
(94, 'S', 'SERP ', 'Search Engine Result Page ou page de résultat d’un moteur de recherche, ce terme est principalement utilisé pour décrire les pages de résultats de Google.', '2018-03-05 21:28:05'),
(95, 'S', 'Social Media (ou réseaux sociaux)', 'ensemble des interfaces et des plateformes de partage d’information apparues avec le web 2.0 dans le but de favoriser l’échange et la création d’informations.', '2018-03-05 21:32:00'),
(96, 'T', 'Taux de reach', 'principalement utilisé par Facebook, c’est le pourcentage de fans atteints par une publication en comparaison du nombre total de fans en ligne au moment de cette dernière.', '2018-03-05 21:32:00'),
(97, 'T', 'Taxonomie', 'en marketing, la taxonomie décrit le fait de segmenter des prospects ou clients en fonction de leur profil (sexe, CSP, âge, etc.).', '2018-03-05 21:32:00'),
(98, 'T', 'Tracking ', 'ensemble de solutions techniques permettant de suivre les actions réalisées par un Internaute lors de ces accès à Internet.', '2018-03-05 21:32:00'),
(99, 'U', 'Utilisabilité ', 'partie intégrante de l’ergonomie, elle consiste à rendre un site efficient et efficace au maximum afin d’augmenter la satisfaction client.', '2018-03-05 21:32:00'),
(100, 'W', 'W3C ', 'World Wide Web Consortium, organisme chargé de déterminer et réglementer de façon officieuse, mais quasi officielle désormais, les règles des principales technologies et langages web tels que le HTML et le CSS par exemple.', '2018-03-05 21:33:21'),
(101, 'W', 'Web analytique', 'mesurer l’audience et analyser les chiffres recueillis afin d’optimiser les performances d’un site web.', '2018-03-05 21:33:21'),
(102, 'S', 'Stratégie de contenu', '(Content strategy) La stratégie de contenu fait référence à la planification, au développement et à la gestion du contenu écrit ou dans d\'autres médias. C\'est un domaine reconnu dans la conception de l\'expérience utilisateur, et il tire également des disciplines adjacentes telles que l\'architecture de l\'information, la gestion de contenu, l\'analyse commerciale et la communication technique.', '2018-03-05 21:36:23'),
(103, 'A', 'A/B Testing', ' action qui consiste à tester différentes ergonomies de sites, pages Web, emailing, bannières publicitaires auprès d’échantillons différents d’Internautes afin d’analyser les résultats et identifier ceux qui ont amené le meilleur résultat.', '2018-03-05 21:36:23'),
(104, 'A', 'Application Mobile', 'c’est un logiciel développé pour un appareil mobile (smartphone, tablette…). L’application est souvent distribué par des plateformes de téléchargements comme Apple Store ou Google Play… Il y a des différences techniques entre les applications pour IOS et Android.', '2018-03-05 21:36:23'),
(105, 'A', 'Audience (d’un site Web)', ' il s’agit d’une statistique sur la fréquentation d’un site, souvent en nombre de visites par jour. Mais on peut aussi définir le nombre de visiteurs uniques, de sessions, de pages vues…', '2018-03-05 21:36:23'),
(106, 'B', 'Bannière publicitaire (display)', 'il s’agit d’images, textes ou vidéos présents à côté de contenus de site Web et permettant de faire la promotion d’un produit ou d’une entreprise. En cliquant dessus on est redirigé vers un site ou un blog. Les bannières sont payantes pour les entreprises car ce sont des publicités sur Internet.', '2018-03-05 21:36:23'),
(107, 'B', 'BDD (base de données digitale)', 'outil informatique permettant de stocker et classer des informations diverses concernant les clients ou prospects d’une entreprise afin de pouvoir les exploiter (emailing, phoning…).', '2018-03-05 21:40:09'),
(108, 'B', 'Blog', 'il s’agit d’une partie ou de la totalité d’un site Web destinée à la publication régulière d’articles rendant compte de l’actualité d’un sujet particulier.', '2018-03-05 21:40:09'),
(109, 'B', 'Brick and Mortar', 'il s’agit d’une entreprise qui ne vend des produits ou services que dans des lieux physiques, la plupart du temps dans leurs magasins.', '2018-03-05 21:40:09'),
(110, 'B', 'BtoB (business to business) ', 'il s’agit de l’ensemble des activités d’une entreprise destinées à être vendues uniquement à des professionnels.', '2018-03-05 21:40:09'),
(111, 'B', 'BtoC (business to consumer) ', 'il s’agit de l’ensemble des activités d’une entreprise destinées à être vendues à des consommateurs finaux particuliers.', '2018-03-05 21:40:09'),
(112, 'B', 'Buzz Marketing', ' il s’agit d’une technique marketing consistant à utiliser le bouche à oreille (notamment via les communautés sur Internet) afin de propager une information sur un évènement, un produit, un service, une marque, une promotion commerciale… Ce buzz est souvent accentué par les médias qui parlent de ce buzz.', '2018-03-05 21:44:57'),
(113, 'C', 'Cookies', 'ce sont des données récoltées sur l’Internaute par le site Internet visité. Souvent ces cookies permettent de personnaliser la présentation du site en fonction des goûts de l’Internaute identifiés lors des visites.', '2018-03-05 21:44:57'),
(114, 'C', 'Cross Canal', 'il s’agit de l’évolution du comportement du consommateur qui peut, avec Internet, utiliser divers canaux (magasin, Internet) avec de prendre sa décision d’achat. Les prospects peuvent par exemple se renseigner en magasin et acheter sur Internet ou inversement, il faut donc modifier ces actions marketing en conséquence.', '2018-03-05 21:44:57'),
(115, 'C', 'Crowdfunding (achat participatif)', 'il s’agit de faire appel à un grand nombre de personnes afin de financer un projet sans l’aide des acteurs traditionnels (banque, organismes publiques…). Ce sont donc souvent des particuliers qui financent (ex : kisskissbangbang, mymajorcompany).', '2018-03-05 21:44:57'),
(116, 'C', 'Crowdsourcing (co-création)', 'il s’agit de faire appel à des personnes extérieures à l’entreprise (clients, prospects, Internautes…) et de leur proposer de participer à la conception d’un produit ou d’un service, très souvent au niveau de l’idée ou de l’esthétique.', '2018-03-05 21:44:57'),
(117, 'C', 'Click and Collect', 'il s’agit d’une action consistant à acheter un bien sur Internet et de le retirer dans un magasin de l’entreprise (la Fnac est très connue pour cette pratique).', '2018-03-05 21:44:57'),
(118, 'C', 'Comparateur de prix', 'il s’agit d’un site Internet permettant aux Internautes de comparer les diverses prestations proposées par diverses entreprises pour un besoin que l’Internaute aura précédemment précisé. La comparaison se fait souvent sur les prix.', '2018-03-05 21:44:57'),
(119, 'C', 'Content Marketing', 'il s’agit d’une politique consistant à définir la production de contenu sur Internet dans un but d’acquisition de client. On définit le lieu de diffusion, le style, le type d’informations proposées…', '2018-03-05 21:44:57'),
(120, 'C', 'CPA (coût par action)', 'c’est un type de rémunération d’un intermédiaire amenant du trafic sur son site Web, consistant à définir un prix lorsqu’un achat est réalisé sur notre site. Le partenaire est rémunéré uniquement lorsque le client que le partenaire a amené vers le site a acheté.', '2018-03-05 21:44:57'),
(121, 'C', 'CPC (coût par clic) ', 'c’est la rémunération que doit payer le site marchand au site partenaire lorsque le site partenaire à faire cliquer un Internaute sur son annonce ou encart publicitaire.', '2018-03-05 21:44:57'),
(122, 'C', 'CPL (coût par lead)', 'c’est la rémunération du partenaire qui a amené un Internaute à donner ces coordonnées au site de destination (remplir un formulaire…).', '2018-03-05 21:48:04'),
(123, 'C', 'CPM (coût par mille impressions) ', 'c’est une rémunération due au site partenaire lorsque l’annonce ou la bannière publicitaire s’affiche sur pour un Internaute (que cet Internaute clique ou pas dessus).', '2018-03-05 21:48:04'),
(124, 'C', 'CtoC (Consumer to Consumer)', 'il s’agit d’échanges commerciaux entre particuliers, (échange de bien ou services).', '2018-03-05 21:48:04'),
(125, 'E', 'E-commerce', 'entreprise qui vend des produits ou services uniquement sur Internet.', '2018-03-05 21:48:04'),
(126, 'E', 'Entonnoir de conversion (ou tunnel de conversion)', ' il s’agit de l’ensemble des étapes réalisées par les Internautes avant de réaliser une action voulue par l’entreprise (achat, lead, …). Il s’agit donc du chemin utilisé sur l’Internet et surtout sur le site. L’analyse permet de définir comment améliorer le nombre de conversion en faisant en sorte que le chemin soit le plus efficace possible.', '2018-03-05 21:48:04'),
(127, 'E', 'E-CRM', 'il s’agit de l’ensemble des outils mis en place pour la gestion de la relation client sur Internet (Intranet, extranet, forum, avis…).', '2018-03-05 21:48:04'),
(128, 'E', 'E-distribution', 'il s’agit de la politique de distribution sur son site Web.', '2018-03-05 21:48:04'),
(129, 'E', 'E-logistique', 'il s’agit de la politique logistique sur son site Web.', '2018-03-05 21:48:04'),
(130, 'E', 'E-merchandising', 'Il s’agit de la politique de merchandising sur son site Web, à savoir la disposition des produits vendus, le lien entre eux, le définition des diverses étapes de navigation lors de l’achat.', '2018-03-05 21:48:04'),
(131, 'E', 'E-publicité', 'il s’agit de la politique publicitaire sur Internet (achat de liens commerciaux, de bannières, buzz…).', '2018-03-05 21:48:04'),
(132, 'F', 'Facebook ', ' il s’agit d’un réseau social très connu sur Internet, permettant la publication de billets d’actualité, d’image et de commentaires de la part de la communautés.', '2018-03-05 21:52:11'),
(133, 'F', 'Forum', 'il s’agit d’un espace de discussion publique sur Internet, où les messages sont archivés.', '2018-03-05 21:52:11'),
(134, 'F', 'Free-lance', 'il s’agit d’une forme d’entreprise où une seule personne propose ses services à des professionnels souvent dans le domaine d’Internet. Cela peut aller de la conception de site Web ou d’application, à la refonte ou encore à la définition de tout ou partie de la stratégie ou d’actions marketing ou Webmarketing.', '2018-03-05 21:52:11'),
(135, 'G', 'GAFA (Google, Apple, Facebook, Amazon)', 'ce sigle désigne les quatre grands leaders sur le marché du numérique.', '2018-03-05 21:52:11'),
(136, 'G', 'Géolocalisation ', 'il s’agit de connaître la position géographique de l’Internaute lorsqu’il se connecte ou est toujours connecté sur le Web. Très utile sur les smartphone, tablettes ou autres objets connectés, ce système permet de réaliser des actions marketing personnalisées, comme par exemple proposer des réductions pour l’achat dans des magasins situés à proximité.', '2018-03-05 21:52:11'),
(137, 'G', 'Google ', 'il s’agit du leader incontesté des moteurs de recherche sur Internet. En France, il représente 90% des recherches sur Internet.', '2018-03-05 21:52:11'),
(138, 'G', 'Google+', 'il s’agit d’un réseau social axé sur la publication, l’échange et la discussion par l’intermédiaire de la photo, proposé par l’entreprise Google.', '2018-03-05 21:52:11'),
(139, 'G', 'Google Analytics', 'il s’agit d’un outil gratuit proposé par Google afin d’analyser l’audience sur son site Web.', '2018-03-05 21:52:11'),
(140, 'G', 'Growth Hacking', 'méthode de Webmarketing permettant d’accélérer le développement d’une start-up à l’aide de diverses actions innovantes et originales. L’objectif est de réaliser des actions afin de permettre une croissance rapide de l’entreprise.', '2018-03-05 21:52:11'),
(141, 'I', 'Identité Graphique', 'c’est un ensemble d’éléments permettant de reconnaître en un seul coup d’œil son site Web ou marque parmi tous les concurrents (texte, image, couleur, dessin, police…).', '2018-03-05 21:52:11'),
(142, 'I', 'Image (de marque)', ' représentation perçue d’une marque par le public.', '2018-03-05 22:02:02'),
(143, 'I', 'Internaute ', 'personne physique qui surfe sur le Web.', '2018-03-05 22:02:02'),
(144, 'I', 'Internet ', 'réseau informatique mondial ouvert à tout public.', '2018-03-05 22:02:02'),
(145, 'L', 'Lien Sponsorisé', 'il s’agit de l’achat d’annonces payantes sur les moteurs de recherche permettant d’être bien placé lors de recherche de mots clés des Internautes et donc d’acquérir du trafic vers son site Web.', '2018-03-05 22:02:02'),
(146, 'L', 'Linkedin ', 'Réseau social professionnel présent dans le monde entier, qui a pour objectif de mettre en relation les professionnels entre eux.', '2018-03-05 22:02:02'),
(147, 'L', 'Longue Traine', 'il s’agit de politique mise en place par les E-commerce afin de maximiser leurs bénéfices. Il s’agit de mettre à la disposition des Internautes un large choix de produits, même si certains produits ne se vendent que très peu. En effet, l’ensemble des produits se vendant peu amène parfois plus de bénéfices que l’ensemble des grosses ventes.', '2018-03-05 22:02:02'),
(148, 'M', 'Marketing ', 'ensemble des actions ayants pour objectif de connaître et stimuler les besoins clients concernant les produits ou services vendus par l’entreprise.', '2018-03-05 22:02:02'),
(149, 'M', 'Mobile Marketing', 'Il s’agit de l’ensemble de la stratégie et des actions marketing liées aux moyens mobiles permettant d’utiliser Internet (smartphone, tablette, objet connecté).', '2018-03-05 22:02:02'),
(150, 'M', 'Moteur de Recherche', 'site Web permettant de trouver les sites ou pages Web parlant d’un sujet. L’Internaute précise des mots clés concernant le sujet recherché et le site lui donner un liste de sites ou pages où ces sujets sont abordés.', '2018-03-05 22:02:02'),
(151, 'N', 'Newsletters (lettre d’information)', 'il s’agit d’emails envoyés de manière périodique aux Internautes ayant effectués la demande. Il peut s’agir d’emails d’informations ou commerciaux.', '2018-03-05 22:02:02'),
(152, 'N', 'NPAI (n’habite pas à l’adresse indiquée)', ' il s’agit d’exprimer le fait que l’adresse email n’existe pas.', '2018-03-05 22:08:03'),
(153, 'N', 'Notoriété ', 'il s’agit de savoir si l’entreprise ou le site est connu ou non.', '2018-03-05 22:08:03'),
(154, 'P', 'Place de Marché', 'le lieu virtuel sur Internet permettant la rencontre d’offreurs et de demandeurs.', '2018-03-05 22:08:03'),
(155, 'P', 'Profiling', 'il s’agit de déterminer les comportements d’achat d’un Internaute en fonction de l’analyse de données recueillies sur ce dernier.', '2018-03-05 22:08:03'),
(156, 'P', 'Pure players', 'entreprises qui ne vendent leurs produits ou services que sur Internet.', '2018-03-05 22:08:03'),
(157, 'R', 'Référencement naturel (SEO)', 'ensemble des techniques permettant d’être bien placé de manière naturel sur les moteurs de recherches en fonction de mots clés pertinents.', '2018-03-05 22:08:03'),
(158, 'R', 'Référencement payant (SEA)', 'achat de liens commerciaux sur les moteurs de recherches sur des mots clés pertinents pour l’entreprise dans le but d’acquérir du trafic supplémentaire sur son site.', '2018-03-05 22:08:03'),
(159, 'R', 'Réseau social', 'site Internet donc l’objectif est d’échanger entre les individus (du texte, des images, des vidéos…).', '2018-03-05 22:08:03'),
(160, 'S', 'SoLoMo (Social, Local, Mobile)', 'il s’agit des trois tendances importantes du Webmarketing. Utiliser les réseaux sociaux, avoir une relation de proximité avec les prospects et clients et utiliser les réseaux mobiles.', '2018-03-05 22:08:03'),
(161, 'S', 'Start-Up', 'il s’agit d’une jeune entreprise à fort potentiel de croissance, souvent liée à Internet.', '2018-03-05 22:08:03'),
(162, 'T', 'Taux de rebond', 'pourcentage du trafic d’Internautes entrant sur un site qui repartent directement après avoir consulté une seule page.', '2018-03-05 22:12:58'),
(163, 'T', 'Twitter ', 'il s’agit d’une réseau social qui permet la création et l’échange de contenu entre Internautes. Chaque Internaute particulier ou entreprise peut créer son compte et publier ou échanger des contenus. Ce réseau social est surtout connu pour ses comptes de célébrités qui y diffusent des informations, des photos ou des vidéos d’eux qui sont repris partout sur le Web.', '2018-03-05 22:12:58'),
(164, 'U', 'UGC (user generated content) ', 'création de contenus par les Internautes (videos, textes, photos…).', '2018-03-05 22:12:58'),
(165, 'V', 'Viadeo ', 'site réseau social destiné à l’échange entre professionnels au même type que Linkedin, mais qui est surtout développé en France contrairement à Linkedin qui est international.', '2018-03-05 22:12:58'),
(166, 'W', 'Web 2.0', 'il s’agit d’une évolution historique du Web vers un Web participatif. Il y a de nombreux échanges entre Internautes et non plus une communication descendante comme auparavant.', '2018-03-05 22:12:58'),
(167, 'W', 'Web agency', ' il s’agit de petites agences de communication qui réalisent des actions de Webmarketing pour le compte d’entreprises clientes (création ou modification de site, référencement, création de trafic, analyse de trafic, mobile marketing, display, emailing…).', '2018-03-05 22:12:58'),
(168, 'W', 'Webmarketeur', 'professionnel exerçant dans le secteur du Webmarketing.', '2018-03-05 22:12:58'),
(169, 'W', 'Wikipédia', 'encyclopédie universelle où le contenu est réalisé par les Internautes.', '2018-03-05 22:12:58'),
(170, 'Y', 'Youtube', 'site de partage et visionnage de vidéos créé par Google.', '2018-03-05 22:12:58'),
(171, 'Z', 'ZMOT (zero moment of truth)', 'il s’agit d’un changement important dans le comportement d’achat des consommateurs du fait de l’avènement d’Internet. En effet, les consommateurs potentiels utilisent Internet pour s’informer, vérifier l’information, communiquer entre eux et parfois même acheter. Cela remet en cause le système traditionnel qui voulait que les entreprises proposaient des stimuli afin d’inciter les prospects à aller acheter dans les magasins. Avant d’aller dans ces magasins, le client passe très souvent par Internet. Les entreprises doivent donc intervenir également sur Internet afin que le consommateur viennent par le suite acheter leurs produits.', '2018-03-05 22:12:58'),
(172, 'Z', 'Zoning', 'il s’agit de l’organisation visuelle d’une page web.', '2018-03-05 22:14:41'),
(173, 'M', 'Marketing agile', 'Le marketing agile est une stratégie d\'efficacité organisationnelle qui stimule la croissance en concentrant les efforts de l\'équipe sur ceux qui apportent de la valeur au client final. Cette pratique émergente en marketing applique les principes clés du développement logiciel agile pour augmenter la rapidité, la qualité, la flexibilité et l\'efficacité d\'un service marketing. Comment pouvons-nous offrir la meilleure valeur à nos clients ?', '2018-03-05 22:23:11'),
(174, 'W', 'Web to store', 'le comportement d’achat par lequel le consommateur effectue une recherche d’informations sur Internet avant d’aller effectuer son achat en point de vente. La recherche peut porter sur le produit ou directement sur la localisation du point de vente le plus proche. Ce phénomène est également désigné sous les acronymes ROPO ou ROBO.', '2018-03-05 22:25:11'),
(175, 'R', 'ROPO ROBO', 'ROPO est un acronyme pour « Research Online, Purchase Offline » ou « Research Online, Buy Offline ». Le ROPO désigne donc un comportement d’achat quand on se place du coté du consommateur. Vu du coté  des responsables marketing ou commerciaux, le ROPO désigne la démarche d’utilisation d’Internet à des fins de création de trafic en point de vente physique.', '2018-03-05 22:27:06');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `glo_wm`
--
ALTER TABLE `glo_wm`
  ADD PRIMARY KEY (`wm_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `glo_wm`
--
ALTER TABLE `glo_wm`
  MODIFY `wm_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
