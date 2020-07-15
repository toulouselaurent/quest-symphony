-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mer. 15 juil. 2020 à 10:32
-- Version du serveur :  8.0.20-0ubuntu0.20.04.1
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `wild-series`
--

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Horreur'),
(2, 'science fiction'),
(3, 'action'),
(9, 'dessin animé'),
(10, 'bolliwood'),
(15, 'aventure'),
(16, 'isudfudsf');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20200630122038', '2020-06-30 14:22:36', 1218),
('DoctrineMigrations\\Version20200630122832', '2020-06-30 14:28:39', 564),
('DoctrineMigrations\\Version20200630135147', '2020-06-30 15:51:55', 2280),
('DoctrineMigrations\\Version20200706084429', '2020-07-06 10:45:09', 2870),
('DoctrineMigrations\\Version20200706085723', '2020-07-06 10:57:29', 2330),
('DoctrineMigrations\\Version20200706090128', '2020-07-06 11:01:33', 1840),
('DoctrineMigrations\\Version20200706092107', '2020-07-06 11:22:03', 4499);

-- --------------------------------------------------------

--
-- Structure de la table `episode`
--

CREATE TABLE `episode` (
  `id` int NOT NULL,
  `season_id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` int NOT NULL,
  `synopsis` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `episode`
--

INSERT INTO `episode` (`id`, `season_id`, `title`, `number`, `synopsis`) VALUES
(1, 1, 'Passé décomposé', 1, 'Dans le Kentucky, Rick Grimes, un policier, se réveille à l\'hôpital après plusieurs semaines de coma provoqué par une fusillade qui a mal tourné. Il découvre que le monde, ravagé par une épidémie, est envahi par les morts-vivants. Rick ne songe qu\'à une chose : retrouver sa femme Lori et son fils Carl. Il se rend chez lui mais constate qu\'ils ont disparu, puis rencontre Morgan et son fils Duane, qui se terrent dans leur maison. L\'homme lui explique que la seule façon de tuer les zombies est de les atteindre à la tête. Il lui indique aussi qu\'il existe un camp de réfugiés aux alentours d\'Atlanta...'),
(2, 1, 'Tripes', 2, 'Rick parvient à s\'extraire du char et rencontre un groupe de survivants avec le jeune Glenn, Andrea, Morales, T-Dog et Merle Dixon, un homme passablement raciste et énervé. Tous sont réfugiés dans un immeuble et se demandent comment en sortir. Les zombies tentent de prendre d\'assaut le bâtiment. Rick est obligé d\'attacher Dixon pour le calmer car son attitude envers T-Dog envenime la situation. Le petit groupe pense d\'abord à s\'échapper par les égouts. Dans le camp de réfugiés à l\'extérieur de la ville, Lori et Shane deviennent amants...'),
(3, 1, 'T’as qu’à discuter avec les grenouilles', 3, 'Rick, Glenn et le petit groupe de survivants parviennent à rejoindre le camp de réfugiés situé dans les montagnes aux alentours d\'Atlanta. Rick retrouve sa femme Lori et son fils Carl. Son ancien coéquipier, Shane, qui était devenu l\'amant de Lori, est forcément surpris du retour de Rick. Le cas de Merle Dixon fait débat : fallait-il le laisser attaché sur le toit sans défense ? La découverte d\'un mort-vivant aux abords du camp et le retour de Daryl Dixon, le frère de Merle, précipitent les choses : Rick décide de retourner à Atlanta pour délivrer Merle et récupérer des armes et des munitions...'),
(4, 1, 'Le gang', 4, 'A Atlanta, Rick, Glenn, T-Dog et Daryl cherchent Merle, qui a réussi à s\'enfuir malgré sa main coupée. En voulant récupérer le sac d\'armes, ils rencontrent un autre groupe de survivants, qui eux aussi veulent s\'emparer des munitions. Le gang capture Glenn et les deux parties vont devoir négocier. Au camp en dehors de la ville, alors qu\'Andrea s\'est rapprochée de sa soeur Amy, Jim montre des signes d\'inquiétude. L\'homme ne cesse de creuser des tombes et semble perdre toute notion de la réalité. Les autres habitants du camp décident de l\'attacher de manière préventive...'),
(5, 1, 'Feux de forêt', 5, 'Après l\'attaque du campement, tous les survivants sont résignés et abattus. Andrea pleure sa soeur Amy, Shane reproche à Rick d\'être parti à Atlanta et d\'avoir laissé le camp sans renfort, mais c\'est surtout l\'état de santé de Jim qui inquiète. Il a été mordu par un mort-vivant et sa santé se dégrade. Rick cherche du soutien chez Lori et propose au groupe de quitter les montagnes pour essayer de trouver le centre de soins et de prévention des maladies infectieuses. Il pense que l\'endroit est encore protégé par l\'armée. Tous prennent la route alors que Jim est de plus en plus fiévreux...'),
(6, 2, 'Ce qui nous attend', 1, 'Les survivants se retrouvent bloqués sur une route envahie par des carcasses de voitures. Ils décident d\'en profiter pour siphonner les réservoirs. C\'est alors qu\'ils sont surpris par un groupe de zombies. Dale tente de superviser les opérations du haut du camion, tandis que Sophia, imprudente, est poursuivie par un groupe de zombies tenaces. Rick parvient à tuer les créatures qui menaçaient Sophia mais la jeune fille disparaît. Rick et les autres se lancent à sa poursuite...'),
(7, 2, 'Saignée', 2, 'Otis, le chasseur, a indiqué à Rick que les habitants de la ferme pourraient sauver Carl, blessé par balles. Le policier, qui porte son fils inconscient, tente désespérément de rejoindre la ferme. Le docteur Hershel Greene, propriétaire de l\'endroit, pense pouvoir sauver le garçon en pratiquant une transfusion sanguine. Rick, qui possède le même groupe sanguin que son fils, donne son sang. Mais le médecin a besoin de matériel médical pour pouvoir opérer correctement. Otis et Shane se portent volontaires pour aller en chercher dans le lycée voisin. Pendant ce temps, Andrea est attaquée par un zombie. Elle est sauvée in extremis par Maggie, la fille de Hershel...'),
(8, 2, 'Le tout pour le tout', 3, 'L\'angoisse règne toujours à la ferme. Le petit Carl est entre la vie et la mort. Les familles Greene et Grimes attendent des nouvelles de Shane et Otis, partis chercher du matériel médical au lycée. Mais ce qu\'ils ne savent pas, c\'est que Shane et Otis sont désormais prisonniers du lycée, qui est peu à peu envahi par une horde de zombies. De leur côté, Daryl et Andrea continuent à rechercher Sophia.'),
(9, 2, 'Rose Cherokee', 4, 'Tous les survivants se retrouvent à la ferme des Greene. Maggie et Glenn, profitant d\'une escapade au bourg voisin, se laissent aller à leur attirance mutuelle. Shane, depuis la mort d\'Otis, a du mal à dissimuler sa part sombre. Pendant ce temps, Daryl continue de chercher la jeune Sophia disparue...'),
(10, 2, 'Le Chupacabra', 5, 'Dans les bois aux alentours de la ferme de la famille Greene, Daryl s\'aventure à la recherche d\'indices sur la disparition de Sophia. Malencontreusement, il se blesse assez gravement. Pour ne rien arranger, il doit faire face à des zombies et malgré ses talents de chasseur, sa situation devient critique. Pendant ce temps, Rick devine qu\'il est en train de se passer quelque chose de grave. A la ferme d\'Herschel Greene, les relations entre Glenn et Maggie deviennent plus évidentes. Glenn a une appréciation positive sur l\'attitude de Maggie mais doute encore des sentiments naissants entre eux...'),
(11, 3, 'Graines', 1, 'Après la nuit traumatisante au cours de laquelle ils ont dû abandonner la ferme de Hershel, Rick et les autres survivants cherchent un nouvel abri. Cela devient d\'autant plus urgent qu\'ils ont passé plusieurs mois dehors à la merci des rôdeurs, que tous sont épuisés et que l\'accouchement de Lori est imminent. Après avoir fouillé toutes les maisons des alentours, ils arrivent à un endroit qu\'ils n\'avaient pas encore visité. Mais celui-ci est investi par les morts-vivants et risque d\'être difficile à s\'approprier. Rick, dont les décisions ne sont plus discutées, choisit cependant de saisir cette chance et entâme la sécurisation des lieux...'),
(12, 3, 'Malade', 2, 'L\'opération pour éliminer les rôdeurs de la prison et accéder au stock d\'armes et de médicaments a pris une tournure dramatique pour Hershel qui s\'est fait mordre par un mort-vivant. Il est entre la vie et la mort après que Rick l\'ai amputé d\'une jambe pour tenter de le sauver. D\'autre part, les survivants réalisent qu\'ils ne sont pas les seuls à occuper la prison. Ils doivent trouver un arrangement pour co-habiter avec les détenus qui y vivent. Mais peuvent-ils leur faire confiance ? Ces derniers, qui étaient restés reclus près du garde-manger, n\'avaient pas mesuré l\'ampleur de la situation a l\'extérieur...'),
(13, 3, 'Marchez avec moi', 3, 'Andrea et Michonne sont témoin d\'un accident d\'hélicoptère. Méfiantes, elles se cachent pour assister à la scène. Alors que les survivants sont pris en charge par des hommes armés, elles se font repérer et sont emmenées dans un endroit protégé des zombies appelé Woodbury. Dirigé par un homme énigmatique qui se fait appeler le gourverneur, elles y trouvent des soins médicaux, de quoi reprendre des forces et Andrea découvre que Merle Dixon, le frère de Daryl, est encore en vie. Mais si cette dernière semble apprécier le lieu, Michonne se méfie de ses apparences trop idylliques...'),
(14, 3, 'Un tueur à l\'intérieur', 4, 'A Woodburry, le gouverneur tente en vain d\'obtenir la confiance de Michonne. Celle-ci est bien décidée à lever le camp dès que possible. Andrea, elle, n\'est pas pressée de s\'en aller et donne à Merle toutes les informations dont elle dispose sur son frère. Pendant ce temps, à la prison, les efforts du groupe pour rendre l\'endroit vivable commencent à porter leurs fruits. Hershel, désormais rétabli, fait ses premiers pas aidé de béquilles et s\'imagine vivre paisiblement dans cet endroit. Mais ce bonheur est de courte durée puisqu\'une nouvelle fois, les rôdeurs mettent la vie des survivants en danger...'),
(15, 3, 'Dis-le', 5, 'Rick est inconsolable après la décès de Lori et ce sont les autres survivants qui prennent en charge le nouveau-né. Tandis que Maggie et Daryl partent à la recherche de nourriture et de matériel de puériculture, Glenn lui, entreprend d\'enterrer les corps. A Woodburry, Michonne, qui veut récupérer son arme, fouille dans les affaires du gouverneur et découvre certains de ses secrets. Cela renforce sa volonté de partir rapidement et engendre une nouvelle dispute avec Andrea qui, elle, sent de plus en plus à sa place dans cette communauté. Alors que la première part seule, la seconde assiste à un spectacle pour le moins particulier...\r\n');

-- --------------------------------------------------------

--
-- Structure de la table `program`
--

CREATE TABLE `program` (
  `id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `poster` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `program`
--

INSERT INTO `program` (`id`, `title`, `summary`, `poster`, `category_id`) VALUES
(1, 'Walking Dead', 'Le policier Rick Grimes se réveille après un long coma. Il découvre avec effarement que le monde, ravagé par une épidémie, est envahi par les morts-vivants.', 'https://m.media-amazon.com/images/M/MV5BZmFlMTA0MmUtNWVmOC00ZmE1LWFmMDYtZTJhYjJhNGVjYTU5XkEyXkFqcGdeQXVyMTAzMDM4MjM0._V1_.jpg', 1),
(2, 'The Haunting Of Hill House', 'Plusieurs frères et sœurs qui, enfants, ont grandi dans la demeure qui allait devenir la maison hantée la plus célèbre des États-Unis, sont contraints de se réunir pour finalement affronter les fantômes de leur passé.', 'https://m.media-amazon.com/images/M/MV5BMTU4NzA4MDEwNF5BMl5BanBnXkFtZTgwMTQxODYzNjM@._V1_SY1000_CR0,0,674,1000_AL_.jpg', 1),
(3, 'American Horror Story', 'A chaque saison, son histoire. American Horror Story nous embarque dans des récits à la fois poignants et cauchemardesques, mêlant la peur, le gore et le politiquement correct.', 'https://m.media-amazon.com/images/M/MV5BODZlYzc2ODYtYmQyZS00ZTM4LTk4ZDQtMTMyZDdhMDgzZTU0XkEyXkFqcGdeQXVyMzQ2MDI5NjU@._V1_SY1000_CR0,0,666,1000_AL_.jpg', 1),
(4, 'Love Death And Robots', 'Un yaourt susceptible, des soldats lycanthropes, des robots déchaînés, des monstres-poubelles, des chasseurs de primes cyborgs, des araignées extraterrestres et des démons assoiffés de sang : tout ce beau monde est réuni dans 18 courts métrages animés déconseillés aux âmes sensibles.', 'https://m.media-amazon.com/images/M/MV5BMTc1MjIyNDI3Nl5BMl5BanBnXkFtZTgwMjQ1OTI0NzM@._V1_SY1000_CR0,0,674,1000_AL_.jpg', 1),
(5, 'Penny Dreadful', 'Dans le Londres ancien, Vanessa Ives, une jeune femme puissante aux pouvoirs hypnotiques, allie ses forces à celles d’Ethan, un garçon rebelle et violent aux allures de cowboy, et de Sir Malcolm, un vieil homme riche aux ressources inépuisables. Ensemble, ils combattent un ennemi inconnu, presque invisible, qui ne semble pas humain et qui massacre la population.', 'https://m.media-amazon.com/images/M/MV5BNmE5MDE0ZmMtY2I5Mi00Y2RjLWJlYjMtODkxODQ5OWY1ODdkXkEyXkFqcGdeQXVyNjU2NjA5NjM@._V1_SY1000_CR0,0,695,1000_AL_.jpg', 1),
(6, 'Fear The Walking Dead', 'La série se déroule au tout début de l épidémie relatée dans la série-mère The Walking Dead et se passe dans la ville de Los Angeles, et non à Atlanta. Madison est conseillère dans un lycée de Los Angeles. Depuis la mort de son mari, elle élève seule ses deux enfants : Alicia, excellente élève qui découvre les premiers émois amoureux, et son grand frère Nick qui a quitté la fac et a sombré dans la drogue.', 'https://m.media-amazon.com/images/M/MV5BYWNmY2Y1NTgtYTExMS00NGUxLWIxYWQtMjU4MjNkZjZlZjQ3XkEyXkFqcGdeQXVyMzQ2MDI5NjU@._V1_SY1000_CR0,0,666,1000_AL_.jpg', 1);

-- --------------------------------------------------------

--
-- Structure de la table `season`
--

CREATE TABLE `season` (
  `id` int NOT NULL,
  `program_id` int NOT NULL,
  `number` int NOT NULL,
  `year` int NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `season`
--

INSERT INTO `season` (`id`, `program_id`, `number`, `year`, `description`) VALUES
(1, 1, 1, 2005, 'Après avoir été blessé dans l’exercice de ses fonctions, le shérif Rick Grimes se réveille d’un coma de plusieurs semaines et découvre un monde post-apocalyptique où la quasi-totalité de ...'),
(2, 1, 2, 2007, 'A la suite de l’explosion du CDC, Rick et son groupe fuient Atlanta alors que la ville est infestée de zombies. Confrontés à une nouvelle menace, ces derniers trouvent refuge dans la ferme ...'),
(3, 1, 3, 2009, 'Quelques mois après avoir abandonné la ferme d’Hershel, Rick et sa communauté de survivants découvrent une prison abandonnée dans laquelle s’installer. Mais la sécurité du groupe se trouve ...');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `episode`
--
ALTER TABLE `episode`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_DDAA1CDA4EC001D1` (`season_id`);

--
-- Index pour la table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_92ED778412469DE2` (`category_id`);

--
-- Index pour la table `season`
--
ALTER TABLE `season`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_F0E45BA93EB8070A` (`program_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `episode`
--
ALTER TABLE `episode`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `program`
--
ALTER TABLE `program`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `season`
--
ALTER TABLE `season`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `episode`
--
ALTER TABLE `episode`
  ADD CONSTRAINT `FK_DDAA1CDA4EC001D1` FOREIGN KEY (`season_id`) REFERENCES `season` (`id`);

--
-- Contraintes pour la table `program`
--
ALTER TABLE `program`
  ADD CONSTRAINT `FK_92ED778412469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Contraintes pour la table `season`
--
ALTER TABLE `season`
  ADD CONSTRAINT `FK_F0E45BA93EB8070A` FOREIGN KEY (`program_id`) REFERENCES `program` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
