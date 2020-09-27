-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le :  Dim 27 sep. 2020 à 21:50
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `streaming`
--

-- --------------------------------------------------------

--
-- Structure de la table `CATEGORIE_MEDIA`
--

CREATE TABLE `CATEGORIE_MEDIA` (
  `id_category` int(255) NOT NULL,
  `name_category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `CATEGORIE_MEDIA`
--

INSERT INTO `CATEGORIE_MEDIA` (`id_category`, `name_category`) VALUES
(1, 'series'),
(2, 'movies');

-- --------------------------------------------------------

--
-- Structure de la table `MEDIAS`
--

CREATE TABLE `MEDIAS` (
  `id_movie` int(11) NOT NULL,
  `title_movie` varchar(255) NOT NULL,
  `description_movie` varchar(255) NOT NULL,
  `url_image_movie` varchar(255) NOT NULL,
  `release_year` datetime NOT NULL,
  `id_category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `MEDIAS`
--

INSERT INTO `MEDIAS` (`id_movie`, `title_movie`, `description_movie`, `url_image_movie`, `release_year`, `id_category`) VALUES
(1, 'Avengers', 'Un an après avoir été exilé d\'Asgard, Loki, le frère de Thor, s’allie avec « l\'Autre », le chef d\'une race extra-terrestre : les Chitauris. L\'Autre souhaite s\'emparer du Tesseract, qui est actuellement sur la Terre...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/ntpxTsTg3BsIRkMkNLffNjwftUf.jpg', '2012-09-16 00:00:00', 2),
(2, 'Sherlock Holmes', 'Sherlock est une série télévisée policière britannique créée par Mark Gatiss et Steven Moffat et diffusée depuis le 25 juillet 2010 sur BBC One. Produite par Hartswood Films et ', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/aguWVR8xNilvw7t4X03UvG1hRJr.jpg', '2010-07-25 00:00:00', 1),
(3, 'Hard Kill', 'Le travail du PDG de la technologie et milliardaire Donovan Chalmers est si précieux qu\'il engage des mercenaires pour le protéger, et un groupe terroriste kidnappe sa fille juste pour l\'obtenir...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/pAXWmzH1kEuvlssx6zlc49JiZLf.jpg', '2020-10-10 00:00:00', 2),
(4, 'The Boys', 'Dans un monde fictif où les super-héros se sont laissés corrompre par la célébrité et la gloire, une équipe de justiciers qui se fait appeler The Boys décide...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/dzOxNbbz1liFzHU1IPvdgUR647b.jpg', '2019-01-01 00:00:00', 1),
(5, 'Les 100', 'Après une apocalypse causée par l\'Homme lors d\'une troisième guerre mondiale, les 318 survivants recensés se réfugient dans des stations spatiales...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/1ePsCN6vpduAX1LxEdqfbwfS4nf.jpg', '2014-01-01 00:00:00', 1),
(6, 'Raised By Wolves', 'Alors que les êtres humains se déchirent, sur fond de guerres de religion, les robots apprennent...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/mTvSVKMn2Npf6zvYNbGMJnYLtvp.jpg', '2020-01-01 00:00:00', 1),
(7, 'Cobra Kai', 'Trente ans après le tournoi qui a changé leur vie, Johnny et Daniel voient leur rivalité ravivée dans cette suite de la saga Karaté Kid...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/eTMMU2rKpZRbo9ERytyhwatwAjz.jpg', '2018-01-01 00:00:00', 1),
(8, 'Supernatural', 'Deux frères, Sam et Dean Winchester, chasseurs de créatures surnaturelles, sillonnent les États-Unis à bord d\'une Chevrolet Impala noire de 1967 et enquêtent sur des phénomènes paranormaux...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/KoYWXbnYuS3b0GyQPkbuexlVK9.jpg', '2005-01-01 00:00:00', 1),
(9, 'Game of Thrones', 'Il y a très longtemps, à une époque oubliée, une force a détruit l\'équilibre des saisons. Dans un pays où l\'été peut durer plusieurs années et l\'hiver toute une vie, des forces sinistres et surnaturelles se pressent aux portes du Royaume des...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/3YSdxdhhdCDlMs88RhvjhDLX4CA.jpg', '2011-01-01 00:00:00', 1),
(10, 'Flash', 'Jeune expert de la police scientifique de Central City, Barry Allen se retrouve doté d\'une vitesse extraordinaire après avoir été frappé par la foudre...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/wHa6KOJAoNTFLFtp7wguUJKSnju.jpg', '2014-01-01 00:00:00', 1),
(11, 'Umbrella Academy', 'À la mort de leur père, des frères et sœurs aux pouvoirs extraordinaires découvrent des secrets de famille traumatisants et une menace terrible qui plane sur l\'humanité...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/2IDcscTfAhDVWmbpy3cXgvryxt5.jpg', '2019-01-01 00:00:00', 1),
(12, 'Les Simpson', 'Les Simpson, famille américaine moyenne, vivent à Springfield. Homer, le père, a deux passions : regarder la télé et boire des bières. Mais son quotidien est rarement reposant, entre son fils Bart...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/reKFmynUd2VpFToo3rLTGk8zVSN.jpg', '1989-01-01 00:00:00', 1),
(13, 'La casa de papel', 'Huit voleurs font une prise d\'otages dans la Maison royale de la Monnaie d\'Espagne, tandis qu\'un génie du crime manipule la police pour mettre son plan à exécution...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/eDlCaXdC5Z8elYuRto7pPNDb3ho.jpg', '2017-01-01 00:00:00', 1),
(14, 'New York, unité spéciale', 'Dans le système judiciaire, les crimes sexuels sont considérés comme particulièrement monstrueux. À New York, les inspecteurs qui enquêtent...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/4eJTm7F2U2CcKaw1yfJ9IaE9JUE.jpg', '1999-01-01 00:00:00', 1),
(15, 'The Walking Dead', 'Après une apocalypse ayant transformé la quasi-totalité de la population en zombies, un groupe d\'hommes et de femmes mené par l\'officier Rick Grimes tente de survivre...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/ukpIzOrGVU6qOmJOFiHWdfxRPSu.jpg', '2010-01-01 00:00:00', 1),
(16, 'Smallville', 'Dans une petite bourgade qui a connu une pluie de météorites quelques années plus tôt, le jeune Clark Kent est élevé par une famille de fermiers...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/dc9a9n4g9Ibs485t5eBtyNG0mcr.jpg', '2001-01-01 00:00:00', 1),
(17, 'Stranger Things', 'Quand un jeune garçon disparaît, une petite ville découvre une affaire mystérieuse, des expériences secrètes, des forces surnaturelles terrifiantes...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/g3nzhHBDTrJ7RWhzozFTYFjvRbd.jpg', '2016-01-01 00:00:00', 1),
(18, 'Mulan', 'Lorsque l’Empereur de Chine publie un décret stipulant qu’un homme de chaque famille du pays doit intégrer l’armée impériale pour combattre des envahisseurs venus...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/mxTqWTzLPpi4hjiF8qT5MfPwmjJ.jpg', '2020-01-01 00:00:00', 2),
(19, 'Project Power', 'Dans les rues de La Nouvelle-Orléans, la rumeur commence à circuler à propos d\'une pilule mystérieuse qui confère des super-pouvoirs différents selon chaque personne. Le problème?...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/apJzCGGgfj4l30Ric6OwLUmIgFm.jpg', '2020-01-01 00:00:00', 2),
(20, 'Battlefield 2025', 'Des campeurs du week-end, un condamné évadé, un couple de jeunes amoureux et un policier expérimentent une nuit de terreur lorsqu\'un visiteur hostile d\'un autre monde...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/w6e0XZreiyW4mGlLRHEG8ipff7b.jpg', '2020-01-01 00:00:00', 2),
(21, 'Le Seigneur des anneaux : Le Retour du roi', 'Les armées de Sauron ont attaqué Minas Tirith, la capitale de Gondor. Jamais ce royaume autrefois puissant n\'a eu autant besoin de son roi. Mais Aragorn trouvera-t-il en lui la volonté...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/4fcgHdNryRuvEpsldjYifFEVX2i.jpg', '2003-01-01 00:00:00', 2),
(22, 'The Dark Knight : Le Chevalier noir', 'Dans ce nouveau volet, Batman augmente les mises dans sa guerre contre le crime. Avec l\'appui du lieutenant de police Jim Gordon et du procureur de Gotham, Harvey Dent...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/pyNXnq8QBWoK3b37RS6C3axwUOy.jpg', '2008-01-01 00:00:00', 2),
(23, 'Peninsula', 'La péninsule se déroule quatre ans après Train to Busan, alors que les personnages se battent pour fuir un pays en ruine à la suite d\'un désastre sans précédent...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/eFQDY2GcVRhWl0hYJw55iP1JKYn.jpg', '2020-01-01 00:00:00', 2),
(24, 'Harry Potter à l\'école des sorciers', 'Orphelin, Harry Potter a été recueilli en bas âge par sa tante Pétunia et son oncle Vernon, deux abominables créatures qui, depuis dix ans, prennent un malin plaisir à...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/fbxQ44VRdM2PVzHSNajUseUteem.jpg', '2001-01-01 00:00:00', 2),
(25, 'Harry Potter et la Coupe de feu', 'La quatrième année à l\'école de Poudlard est marquée par le \'Tournoi des trois sorciers\'. Les participants sont choisis par la fameuse \'Coupe de feu\' qui est à l\'origine...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/hBak1pn5pbI4ycAbrgMMn1YI7P1.jpg', '2005-01-01 00:00:00', 2),
(26, 'Avatar', 'Malgré sa paralysie, Jake Sully, un ancien marine immobilisé dans un fauteuil roulant, est resté un combattant au plus profond de son être. Il est recruté pour se rendre à...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/3npygfmEhqnmNTmDWhHLz1LPcbA.jpg', '2009-01-01 00:00:00', 2),
(27, 'Iron Man', 'Tony Stark, inventeur de génie, vendeur d\'armes et playboy milliardaire, est kidnappé. Forcé par ses ravisseurs de fabriquer une arme redoutable, il construit en secret...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/dMc96Rn0XutMaIYJNwkJ5yO9oTh.jpg', '2008-01-01 00:00:00', 2),
(28, 'Le Roi lion', 'Le lion Mufasa, roi des animaux, et son épouse Sarabi donnent naissance à Simba, un futur héritier. Mais Scar, le frère de Mufasa, voyant diminuer ses chances d\'accéder au trône...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/Akd4qXv32iCoYRUAuShXKAlY6OL.jpg', '1994-01-01 00:00:00', 2),
(29, 'Twilight, chapitre 1 : Fascination', 'Isabella Swan, 17 ans, déménage à Forks, petite ville pluvieuse dans l\'État de Washington, pour vivre avec son père. Elle s\'attend à ce que sa nouvelle vie soit aussi ennuyeuse...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/8phJ4i9m1tBDJbOwwQPvdeWhN2h.jpg', '2008-01-01 00:00:00', 2),
(30, 'La Guerre des étoiles', 'Il y a bien longtemps, dans une galaxie très lointaine... La guerre civile fait rage entre l\'Empire galactique et l\'Alliance rebelle. Capturée par les troupes de choc de l\'Empereur...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/qelTNHrBSYjPvwdzsDBPVsqnNzc.jpg', '1977-01-01 00:00:00', 2),
(31, 'Dragon Ball Z - Broly, Le Super Guerrier', 'Un jour, une mystérieuse armée arrive sur Terre. A sa tête, un dénommé Paragus propose à Vegeta de devenir le nouveau Roi de la nouvelle planète Vegeta et de vaincre le légendaire guerrier ...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/lGcTDElHglWUzgjb0TBcAF6L4MU.jpg', '1993-01-01 00:00:00', 2),
(32, 'Pirates des Caraïbes : Jusqu\'au bout du monde', 'L\'âge d\'or de la piraterie touche à sa fin. Même le terrifiant Vaisseau Fantôme et son capitaine maudit servent Lord Cutler Beckett. Il écume désormais les sept mers, massacrant sans pitié...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/3JjceHUzbtgJ4fJs6x2ow4ckH89.jpg', '2007-01-01 00:00:00', 2),
(33, 'Karaté Kid', 'Daniel quitte le New Jersey pour s\'installer avec sa mère en Californie. A l\'école, ses nouveaux camarades de classe l\'isolent et le persécutent. Comment faire face ?...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/sEW4T43qyGIvFXwX8b1QbCVOHbS.jpg', '1984-01-01 00:00:00', 2),
(34, 'Retour vers le futur', '1985. Le jeune Marty McFly mène une existence anonyme auprès de sa petite amie Jennifer, seulement troublée par sa famille en crise et un proviseur qui serait ravi de l\'expulser...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/y9bs2N5rEM51YBXbU7N5PaXJc6W.jpg', '1985-01-01 00:00:00', 2),
(35, 'Matrix', 'Programmeur anonyme dans un service administratif le jour, Thomas Anderson devient Neo la nuit venue. Sous ce pseudonyme, il est l\'un des pirates les plus recherchés du cyber-espace...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/pEoqbqtLc4CcwDUDqxmEDSWpWTZ.jpg', '1999-01-01 00:00:00', 2),
(36, 'Le Seigneur des anneaux : La Communauté de l\'anneau', 'Le jeune et timide Hobbit, Frodon Sacquet, hérite d\'un anneau. Bien loin d\'être une simple babiole, il s\'agit de l\'Anneau Unique, un instrument de pouvoir absolu qui permettrait à Sauron...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/5OPg6M0yHr21Ovs1fni2H1xpKuF.jpg', '2001-01-01 00:00:00', 2),
(37, 'Titanic', 'Southampton, 10 avril 1912. Le paquebot le plus grand et le plus moderne du monde, réputé pour son insubmersibilité, le « Titanic », appareille pour son premier voyage...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/vpsvHLkoeKUjceIMeNSqCp3xEyY.jpg', '1997-01-01 00:00:00', 2),
(38, 'Scooby-Doo', 'Deux ans après s\'être résolus à fermer la Mystère & Cie, le super-chien Scooby-Doo et ses amis Fred, Daphné, Sammy et Véra se retrouvent sur Spooky Island. Les 5 limiers au flair inimitable ont été...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/hNER9ZurlRPmcM2uqkLNXXgJzFk.jpg', '2002-01-01 00:00:00', 2),
(39, 'Le Seigneur des anneaux : Les Deux Tours', 'Après la mort de Boromir et la disparition de Gandalf, la Communauté s\'est scindée en trois. Perdus dans les collines d\'Emyn Muil, Frodon et Sam découvrent qu\'ils sont suivis par Gollum...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/qVHBqQYLDRs7ESjP9q6o9iPHLWj.jpg', '2002-01-01 00:00:00', 2),
(40, 'Full Metal Jacket', 'Pendant la guerre du Vietnam, la préparation et l\'entrainement d\'un groupe de jeunes marines, jusqu\'au terrible baptême du feu et la sanglante offensive du Tet à Hue, en 1968...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/cShwwkz4gBBIRj8yFy8TP2tEWZ4.jpg', '1987-01-01 00:00:00', 2),
(41, 'Spider-Man', 'Orphelin, Peter Parker est élevé par sa tante May et son oncle Ben dans le quartier Queens de New York. Tout en poursuivant ses études de biophysique à l\'université, il trouve un emploi de photographe...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/gh4cZbhZxyTbgxQPxD0dOudNPTn.jpg', '2002-01-01 00:00:00', 2),
(42, 'Naruto Shippuden Film 1 : Un funeste présage', 'Il y a bien longtemps Môryô, un puissant démon, qui avait mené le monde au bord de la destruction, est aujourd\'hui ramené à la vie par un être malfaisant. La nouvelle mission de Naruto est...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/vaEX9f8ud7iF0G7EoyGxAyRNV1p.jpg', '2007-01-01 00:00:00', 2),
(43, 'Naruto Shippuden Film 3 : La Flamme de la Volonté', 'Parmi les cinq grandes nations ninja, les ninjas de Kumo, Iwa, Kiri, Suna, possédant un Kekkei Genkai disparaissent les uns après les autres !! Le seul pays non ébranlé est le pays du feu...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/zenbG1YRXC2Fs4UusjqZw5T4lNr.jpg', '2009-01-01 00:00:00', 2),
(44, 'L\'Âge de glace', 'Vingt mille ans avant notre ère, lorsque Scrat, un rongeur obstiné, fend la banquise et déclenche un nouvel Âge de Glace, une vaste cohorte de mammifères s\'assemble et commence à émigrer vers...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/ecgLEPhlpEloh58OireixHvEhur.jpg', '2002-01-01 00:00:00', 2),
(45, 'Le Voyage de Chihiro', 'Chihiro, 10 ans, a tout d\'une petite fille capricieuse. Elle s\'apprête à emménager avec ses parents dans une nouvelle demeure. Sur la route, la petite famille se retrouve face à un immense...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/12TAqK0AUgdcYE9ZYZ9r7ASbH5Q.jpg', '2001-01-01 00:00:00', 2),
(46, 'Terminator 2 : Le jugement dernier', 'En 2029, après leur échec pour éliminer Sarah Connor, les robots de Skynet programment un nouveau Terminator, le T-1000, pour retourner dans le passé et éliminer son fils John Connor...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/mKCG5N5gDjDmxg07PXWsrPVrdCg.jpg', '1991-01-01 00:00:00', 2),
(47, 'Dragons', 'L\'histoire d\'Harold, jeune Viking peu à son aise dans sa tribu où combattre les dragons est le sport national. Sa vie va être bouleversée par sa rencontre avec un dragon qui va...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/aUbSLWM2RC428PWudMrvBP2kv56.jpg', '2010-01-01 00:00:00', 2),
(48, 'Naruto Shippuden Film 2 : Les Liens', 'Un mystérieux groupe de ninja attaque par surprise le village de Konoha et provoque de grands dommages. Le cauchemar d\'une autre guerre mondiale ninja pourrait bien devenir réalité..', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/3JGx8nRdsMWB6crJtIqRBteK5V3.jpg', '2008-01-01 00:00:00', 2),
(49, 'Gladiator', 'Le général romain Maximus est le plus fidèle soutien de l\'empereur Marc Aurèle, qu\'il a conduit de victoire en victoire avec une bravoure et un dévouement exemplaires. Jaloux du prestige de...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/5gJOu3t2QrznuJqjCG7FQDMI76t.jpg', '2000-01-01 00:00:00', 2),
(50, 'Spider-Man 3', 'Peter Parker a retrouvé un équilibre de vie et il veut se marier avec Mary Jane. Pendant une nuit au parc, alors que Peter et Mary Jane sont ensemble, une petite météorite...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/2jLxKF73SAPkyhIWrnv67IH7kJ1.jpg', '2007-01-01 00:00:00', 2),
(51, 'Batman Begins', 'Comment un homme seul peut-il changer le monde ? Telle est la question qui hante Bruce Wayne depuis cette nuit tragique où ses parents furent abattus sous ses yeux...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/taKcn26BMWnsUcMFSlr5RfGDtFB.jpg', '2005-01-01 00:00:00', 2),
(52, 'John Rambo', 'John Rambo s\'est retiré dans le nord de la Thaïlande, où il mène une existence simple dans les montagnes et se tient à l\'écart de la guerre civile qui fait rage non loin de là, sur la frontière...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/45YC86aMjWlcPkvgWwqdI6Clq7b.jpg', '2008-01-01 00:00:00', 2),
(53, 'L\'Incroyable Hulk', 'Le scientifique Bruce Banner cherche désespérément un antidote aux radiations gamma qui ont créé Hulk. Il vit dans l\'ombre, toujours amoureux de la belle Betty Ross et parcourt la planète à la recherche d\'un...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/7zEWoMDAgvgHlv1D11vF3Br3ZTd.jpg', '2008-01-01 00:00:00', 2),
(54, 'Terminator', 'À Los Angeles en 1984, un Terminator, cyborg surgi du futur, a pour mission d\'exécuter Sarah Connor, une jeune femme dont l\'enfant à naître doit sauver l\'humanité. Kyle Reese, un résistant humain, débarque lui aussi pour combattre le...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/z9nwlPCvMpgxDwQ9JQ3zRAPpEjd.jpg', '1984-01-01 00:00:00', 2),
(55, 'RoboCop', 'À l\'aube de l\'an 2000, Détroit est, comme toujours dans cette sorte d\'histoire, la proie du crime et de la corruption. Pour pallier ce terrible état, les services de police...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/4wYAfXPb3srrXwURVfEnySCS5JQ.jpg', '1987-01-01 00:00:00', 2),
(56, 'Independence Day', 'Une immense soucoupe volante envahit le ciel terrestre, libérant un nombre infini de plus petites soucoupes qui prennent position au-dessus des plus grandes villes du monde...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/uKKikO9Rec7dkk29ob8BrqLCV8q.jpg', '1996-01-01 00:00:00', 2),
(57, '2012', 'Les Mayas, l\'une des plus fascinantes civilisations que la Terre ait portées, nous ont transmis une prophétie : leur calendrier prend fin en 2012, et notre monde aussi...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/8i1xFqcItT6GKEbY6VDbFnxe7sJ.jpg', '2009-01-01 00:00:00', 2),
(58, 'Je suis une légende', 'Robert Neville était un savant de haut niveau et de réputation mondiale, mais il en aurait fallu plus pour stopper les ravages de cet incurable et terrifiant virus d\'origine humaine...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/wCcC0oAsM1YHfO4sBFLSUtqCQZx.jpg', '2007-01-01 00:00:00', 2),
(59, 'Rambo II : La mission', 'John Rambo purge une peine de prison lorsque le Colonel Trautman lui donne la possibilité de sortir pour une mission délicate : avoir la preuve qu\'il reste bel et bien des prisonniers...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/jPMoYbpY8faABzeE8dRAfprlfTW.jpg', '1985-01-01 00:00:00', 2),
(60, 'Le Retour de la momie', 'En 1935, Rick O\'Connell et sa femme Evelyn mènent une vie paisible à Londres avec Alex, leur fils talentueux. Mais une nouvelle catastrophe se prépare dans les profondeurs ...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/msgAHQVkFpSgBkslCsu3gy14Dwm.jpg', '2001-01-01 00:00:00', 2),
(61, 'Dernier train pour Busan', 'Un virus inconnu se répand en Corée du Sud, l\'état d\'urgence est décrété. Les passagers du train KTX se livrent à une lutte sans merci afin de survivre jusqu\'à Busan...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/wK1Pv21V8NkUM89ZlWlugrnCcnf.jpg', '2016-01-01 00:00:00', 2),
(62, 'Joker', 'Dans les années 1980, à Gotham City, Arthur Fleck, un humoriste de stand-up raté, bascule dans la folie et devient le Joker...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/eULKKOWsO6z3m8RBhIuGNp9xsWT.jpg', '2019-01-01 00:00:00', 2),
(63, 'Pinocchio', 'Geppetto, un pauvre menuisier, fabrique dans un morceau de bois un pantin qu’il prénomme Pinocchio. Le pantin va miraculeusement prendre vie et traverser de nombreuses aventures...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/xoYcb037L7JQw6MZo1fhM16mfJ7.jpg', '2019-01-01 00:00:00', 2),
(64, 'Avengers : Infinity War', 'Les Avengers et leurs alliés devront être prêts à tout sacrifier pour neutraliser le redoutable Thanos avant que son attaque éclair ne conduise à la destruction complète de l’univers...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/hSfuKPtyEryeFzapZ8UgZd4aESu.jpg', '2018-01-01 00:00:00', 2),
(65, 'Avengers : Endgame', 'Après leur défaite face au Titan Thanos qui dans le film précédent s\'est approprié toutes les pierres du Gant de l\'infini , les Avengers et les Gardiens de la Galaxie...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/qXekTarZKRrVfnBwhS6xevt6BGU.jpg', '2019-01-01 00:00:00', 2),
(66, 'Geostorm', 'Le jour où des satellites chargés de contrôler le climat se mettent à défaillir, un designer doit travailler main dans la main avec son frère pour sauver le monde d\'une terrible tempête...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/5GD8watFIK3vXRPsPirPfz99kPT.jpg', '2017-01-01 00:00:00', 2),
(67, 'Black Panther', 'Black Panther suit T’Challa qui, après les événements de Captain America : Civil War, retourne chez lui, dans la nation africaine isolée et technologiquement avancée du Wakanda...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/g94IcdzPswTYl1ISdgn2EwvaZtt.jpg', '2018-01-01 00:00:00', 2),
(68, 'Venom', 'Des symbiotes débarquent sur la Terre, parmi eux, Venom, qui va s\'allier avec Eddie Brock. De son côté, un puissant scientifique tente de faire évoluer l\'humanité...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/vVusHIRlyyFVS42XnqZso2wGKr.jpg', '2018-01-01 00:00:00', 2),
(69, 'Justice League', 'Après avoir retrouvé foi en l\'humanité, Bruce Wayne, inspiré par l\'altruisme de Superman, sollicite l\'aide de sa nouvelle alliée, Diana Prince, pour affronter un ennemi plus redoutable...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/eMlVBnd5NPHDJ3DkhMzokfnymAB.jpg', '2017-01-01 00:00:00', 2),
(70, 'Spider-Man : Homecoming', 'Après ses spectaculaires débuts dans Captain America : Civil War, le jeune Peter Parker découvre peu à peu sa nouvelle identité, celle de Spider-Man, le super-héros lanceur...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/lXYMJ5YP5hxcCazDtPtCcxsrrQZ.jpg', '2017-01-01 00:00:00', 2),
(71, 'Deadpool 2', 'Deadpool se voit contraint de rejoindre les X-Men : après une tentative ratée de sauver un jeune mutant au pouvoir destructeur, il est jeté en prison anti-mutants...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/8ObduE7XIXwBS7sxuWPdyQBhTm0.jpg', '2018-01-01 00:00:00', 2),
(72, 'Ad Astra', 'L’astronaute Roy McBride s’aventure jusqu’aux confins du système solaire à la recherche de son père disparu et pour résoudre un mystère qui menace la survie de notre planète...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/cJ0wqaQ9KPzs3fROXUuaWgRg9Pj.jpg', '2019-01-01 00:00:00', 2),
(73, 'Aquaman', 'Personnage légendaire depuis 70 ans, Aquaman est le Roi des Sept Mers, régnant à contrecœur sur Atlantis. Pris en étau entre les Terriens qui détruisent constamment la mer et les habitants d\'Atlantis prêts à...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/ghbBIweVDjTyx983GQmnCPGlE3U.jpg', '2018-01-01 00:00:00', 2),
(74, 'Le Labyrinthe', 'Thomas, 16 ans, se réveille dans un ascenseur. Il ne sait plus qui il est ni d\'où il vient, et ne semble se rappeler que de son prénom. Lorsque l\'ascenseur s\'ouvre, il est accueilli par...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/ac4kzUSaIqt97bT44bh4JS0aIXW.jpg', '2014-01-01 00:00:00', 2),
(75, 'Bumblebee', '1987 - Alors qu\'il est en fuite, l\'Autobot Bumblebee trouve refuge dans la décharge d\'une petite ville balnéaire de Californie. Il est découvert, brisé et couvert de blessures de guerre...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/jAWcwnGUhDn9SGSjhDFAbWmh9A7.jpg', '2018-01-01 00:00:00', 2),
(76, 'Wonder Woman', 'Avant d\'être Wonder Woman, elle s\'appelait Diana, princesse des Amazones, entraînée pour être une guerrière impossible à conquérir. Elle est élevée sur une île isolée...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/oomdTdke7dqffdDoDV1fFBV4fJY.jpg', '2017-01-01 00:00:00', 2),
(77, 'Mortal Engines', 'Des centaines d’années après qu’un événement apocalyptique ait détruit la Terre, l’humanité s’est adaptée pour survivre en trouvant un nouveau mode de vie. Ainsi, de gigantesques villes mobiles...', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/3bWRzSRlnhoJJRURlMN5HZnfdZC.jpg', '2018-01-01 00:00:00', 2);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `CATEGORIE_MEDIA`
--
ALTER TABLE `CATEGORIE_MEDIA`
  ADD PRIMARY KEY (`id_category`);

--
-- Index pour la table `MEDIAS`
--
ALTER TABLE `MEDIAS`
  ADD PRIMARY KEY (`id_movie`),
  ADD KEY `MEDIAS_fk0` (`id_category`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `CATEGORIE_MEDIA`
--
ALTER TABLE `CATEGORIE_MEDIA`
  MODIFY `id_category` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `MEDIAS`
--
ALTER TABLE `MEDIAS`
  MODIFY `id_movie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `MEDIAS`
--
ALTER TABLE `MEDIAS`
  ADD CONSTRAINT `MEDIAS_fk0` FOREIGN KEY (`id_category`) REFERENCES `CATEGORIE_MEDIA` (`id_category`);
