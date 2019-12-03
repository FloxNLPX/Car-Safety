-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Час створення: Сер 28 2019 р., 08:51
-- Версія сервера: 10.1.10-MariaDB
-- Версія PHP: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `flex`
--

-- --------------------------------------------------------

--
-- Структура таблиці `aaavehicle`
--

CREATE TABLE `aaavehicle` (
  `id` int(10) NOT NULL,
  `regno` varchar(50) DEFAULT NULL,
  `make` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `bodytype` varchar(50) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `chassis` varchar(50) DEFAULT NULL,
  `colour` varchar(50) DEFAULT NULL,
  `vtype` varchar(50) DEFAULT NULL,
  `assignedto` int(10) DEFAULT NULL,
  `tankcap` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Дамп даних таблиці `aaavehicle`
--

INSERT INTO `aaavehicle` (`id`, `regno`, `make`, `model`, `bodytype`, `year`, `chassis`, `colour`, `vtype`, `assignedto`, `tankcap`) VALUES
(1999, 'AA499', 'Nissan', 'NV200', 'Mobile Workshop', 2017, NULL, NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Структура таблиці `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `userid` int(10) DEFAULT NULL,
  `adate` date DEFAULT NULL,
  `att` int(1) DEFAULT NULL,
  `note` text,
  `checkin` time DEFAULT NULL,
  `checkout` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `attendance`
--

INSERT INTO `attendance` (`id`, `userid`, `adate`, `att`, `note`, `checkin`, `checkout`) VALUES
(1, NULL, '2018-05-01', 1, NULL, '08:30:00', '16:15:00');

-- --------------------------------------------------------

--
-- Структура таблиці `billing`
--

CREATE TABLE `billing` (
  `id` int(10) NOT NULL,
  `sheetid` int(10) NOT NULL,
  `createdon` datetime DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `bstatus` varchar(50) DEFAULT NULL,
  `billto` int(10) DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `vat` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Дамп даних таблиці `billing`
--

INSERT INTO `billing` (`id`, `sheetid`, `createdon`, `createdby`, `bstatus`, `billto`, `amount`, `vat`) VALUES
(2, 2, '2018-05-29 12:46:38', 'Administrator', NULL, 8, '1000', NULL),
(3, 2, '2018-05-29 11:35:50', 'Administrator', NULL, 0, '1000', NULL),
(4, 1, '2018-05-29 13:38:08', 'Administrator', NULL, NULL, '1000', NULL),
(5, 0, '2018-05-29 13:45:45', 'Administrator', NULL, NULL, '5000', '0'),
(6, 3, '2018-05-29 15:38:55', 'Administrator', NULL, 9, '3000', '0'),
(7, 3, '2018-05-29 15:38:55', 'Administrator', NULL, 8, '1000', '0');

-- --------------------------------------------------------

--
-- Структура таблиці `carlist`
--

CREATE TABLE `carlist` (
  `id` int(11) NOT NULL,
  `make` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Дамп даних таблиці `carlist`
--

INSERT INTO `carlist` (`id`, `make`, `model`) VALUES
(1, 'Alfa Romeo', '156'),
(2, 'Alfa Romeo', 'Giulietta'),
(3, 'Alfa Romeo', '146'),
(4, 'Alfa Romeo', '156'),
(5, 'Alfa Romeo', '159'),
(6, 'Alfa Romeo', '165'),
(7, 'Aston Martin', 'DB1'),
(8, 'Aston Martin', 'DB2'),
(9, 'Aston Martin', 'DB3'),
(10, 'Aston Martin', 'DB4'),
(11, 'Aston Martin', 'DB5'),
(12, 'Aston Martin', 'DB6'),
(13, 'Aston Martin', 'DB7'),
(14, 'Aston Martin', 'DB8'),
(15, 'Aston Martin', 'DB9'),
(16, 'Audi', 'A1'),
(17, 'Audi', 'A3'),
(18, 'Audi', 'A4'),
(19, 'Audi', 'A5'),
(20, 'Audi', 'A6'),
(21, 'Audi', 'A7'),
(22, 'Audi', 'A8'),
(23, 'Audi', '80'),
(24, 'BMW', '1 Series'),
(25, 'BMW', '2 Series'),
(26, 'BMW', '3 Series'),
(27, 'BMW', '4 Series'),
(28, 'BMW', '5 Series'),
(29, 'BMW', '6 Series'),
(30, 'BMW', '7 Series'),
(31, 'BMW', '8 Series'),
(32, 'Chevrolet', 'Aveo'),
(33, 'Chevrolet', 'Spark'),
(34, 'Chevrolet', 'Cruze'),
(35, 'Chevrolet', 'Captiva'),
(36, 'Chevrolet', 'Optra'),
(37, 'Chrysler', '300'),
(38, 'Chrysler', 'Crossfire'),
(39, 'Citroen', 'Xsara'),
(40, 'Citroen', 'C1'),
(41, 'Citroen', 'C3'),
(42, 'Citroen', 'C4'),
(43, 'Citroen', 'C5'),
(44, 'Citroen', 'Picasso'),
(45, 'Citroen', 'Saxo'),
(46, 'Citroen', 'Zx'),
(47, 'Fiat', 'Punto'),
(48, 'Fiat', 'Bravo'),
(49, 'Fiat', 'Fiorino'),
(50, 'Ford', 'Focus'),
(51, 'Ford', 'Fiesta'),
(52, 'Ford', 'Ecosport'),
(53, 'Ford', 'Ranger'),
(54, 'Honda', 'CRX'),
(55, 'Honda', 'CRZ'),
(56, 'Honda', 'Civic'),
(57, 'Honda', 'Accord'),
(58, 'Honda', 'CRV'),
(59, 'Honda', 'Insight'),
(60, 'Honda', 'Brio'),
(61, 'Honda', 'City'),
(62, 'Honda', 'Jazz/Fit'),
(63, 'Honda', 'Ballade'),
(64, 'Honda', 'HRV'),
(65, 'Hyundai', 'Elanta'),
(66, 'Hyundai', 'i10'),
(67, 'Hyundai', 'i20'),
(68, 'Hyundai', 'i30'),
(69, 'Hyundai', 'Accent'),
(70, 'Hyundai', 'Atos'),
(71, 'Hyundai', 'Matrix'),
(72, 'Hyundai', 'Santa Fe'),
(73, 'Hyundai', 'Trajet'),
(74, 'Hyundai', 'Tucson'),
(75, 'Infiniti', 'Q50'),
(76, 'Infiniti', 'Q70'),
(77, 'Jaguar', 'X Type'),
(78, 'Jaguar', 'S Type'),
(79, 'Jaguar', 'XF'),
(80, 'Jaguar', 'XJ'),
(81, 'Jeep', 'Compass'),
(82, 'Jeep', 'Cherokee'),
(83, 'Jeep', 'Grand Cherokee'),
(84, 'Jeep', 'Renegade'),
(85, 'Kia', 'Picanto'),
(86, 'Kia', 'Rio'),
(87, 'Kia', 'Cerato Sedan'),
(88, 'Kia', 'Cerato Hatchback'),
(89, 'Kia', 'Soul'),
(90, 'Kia', 'Optima'),
(91, 'Kia', 'Sportage'),
(92, 'Kia', 'Cee''d'),
(93, 'Kia', 'Carnival'),
(94, 'Land Rover', 'Discovery'),
(95, 'Land Rover', 'Freelander'),
(96, 'Lexus', 'L200'),
(97, 'Lexus', 'RX300'),
(98, 'Mazda', 'Demio'),
(99, 'Mazda', '2'),
(100, 'Mazda', '3'),
(101, 'Mazda', '6'),
(102, 'Mazda', 'Familia'),
(103, 'Mazda', '323'),
(104, 'Mazda', '626'),
(105, 'Mazda', '929'),
(106, 'Mazda', 'MX5'),
(107, 'Mazda', 'RX7'),
(108, 'Mazda', 'RX8'),
(109, 'Mercedes-Benz', 'A Class'),
(110, 'Mercedes-Benz', 'C Class'),
(111, 'Mercedes-Benz', 'E Class'),
(112, 'Mercedes-Benz', 'S Class'),
(113, 'Mercedes-Benz', '190E'),
(114, 'MG', 'MG3'),
(115, 'MG', 'MG6'),
(116, 'Mini', 'OLD'),
(117, 'Mini', 'Cooper'),
(118, 'Mini', 'Countryman'),
(119, 'Mini', 'Clubman'),
(120, 'Mini', 'Cooper S'),
(121, 'Mini', 'Cooper John Works'),
(122, 'Mitsubishi', 'Lancer'),
(123, 'Mitsubishi', 'Mirage'),
(124, 'Mitsubishi', 'ASX'),
(125, 'Mitsubishi', 'Colt'),
(126, 'Mitsubishi', 'Pajero'),
(127, 'Mitsubishi', 'Sportero'),
(128, 'Nissan', 'Micra'),
(129, 'Nissan', 'March'),
(130, 'Nissan', 'Almera'),
(131, 'Nissan', 'Bluebird'),
(132, 'Nissan', 'Cefiro'),
(133, 'Nissan', 'Levina'),
(134, 'Nissan', 'Hardbody'),
(135, 'Nissan', 'Juke'),
(136, 'Nissan', 'Navara'),
(137, 'Nissan', 'NV200'),
(138, 'Nissan', 'NP200'),
(139, 'Nissan', 'Primera'),
(140, 'Nissan', 'Qashqai'),
(141, 'Nissan', 'Sentra'),
(142, 'Nissan', 'Sunny'),
(143, 'Nissan', 'Sylphy'),
(144, 'Nissan', 'Teana'),
(145, 'Nissan', 'Tiida'),
(146, 'Nissan', 'Urvan'),
(147, 'Nissan', 'Wingroad'),
(148, 'Nissan', 'X-Trail'),
(149, 'Nissan', 'Pulsar'),
(150, 'Opel', 'Astra'),
(151, 'Opel', 'Kadette'),
(152, 'Opel', 'Insignia'),
(153, 'Opel', 'Corsa'),
(154, 'Peugeot', '106'),
(155, 'Peugeot', '206'),
(156, 'Peugeot', '207'),
(157, 'Peugeot', '208'),
(158, 'Peugeot', '306'),
(159, 'Peugeot', '307'),
(160, 'Peugeot', '308'),
(161, 'Peugeot', '406'),
(162, 'Peugeot', '407'),
(163, 'Peugeot', 'Partner'),
(164, 'Peugeot', 'Bipper'),
(165, 'Porsche', '911'),
(166, 'Porsche', 'Cayenne'),
(167, 'Porsche', 'Macan'),
(168, 'Renault', 'Clio'),
(169, 'Renault', 'Duster'),
(170, 'Renault', 'Captur'),
(171, 'Renault', 'Kangoo'),
(172, 'Renault', 'Megane'),
(173, 'Renault', 'Laguna'),
(174, 'Renault', 'Scenic'),
(175, 'Saab', '93'),
(176, 'Saab', '95'),
(177, 'Skoda', 'Octavia'),
(178, 'SsangYong', 'Musso'),
(179, 'Subaru', 'Impreza'),
(180, 'Subaru', 'J10'),
(181, 'Suzuki', 'Swift'),
(182, 'Suzuki', 'Alto'),
(183, 'Suzuki', 'Celerio'),
(184, 'Suzuki', 'Grand Vitara'),
(185, 'Suzuki', 'Wagon'),
(186, 'Toyota', 'Corolla'),
(187, 'Toyota', 'Yaris Hatchback'),
(188, 'Toyota', 'Yaris Sedan'),
(189, 'Toyota', 'Prius'),
(190, 'Toyota', 'Prius C'),
(191, 'Toyota', 'Hilux'),
(192, 'Toyota', 'Allion'),
(193, 'Toyota', 'Auris'),
(194, 'Toyota', 'Vitz'),
(195, 'Toyota', 'Axio'),
(196, 'Toyota', 'Belta'),
(197, 'Toyota', 'Carina'),
(198, 'Toyota', 'Celica'),
(199, 'Toyota', 'Crown'),
(200, 'Toyota', 'Duet'),
(201, 'Toyota', 'Fielder'),
(202, 'Toyota', 'Glanza'),
(203, 'Toyota', 'Hiace'),
(204, 'Toyota', 'Land Cruiser'),
(205, 'Toyota', 'Passo'),
(206, 'Toyota', 'Platz'),
(207, 'Toyota', 'Prado'),
(208, 'Toyota', 'Premio'),
(209, 'Toyota', 'Rav 4'),
(210, 'Toyota', 'Starlet'),
(211, 'Volkswagen', 'Polo'),
(212, 'Volkswagen', 'Bora'),
(213, 'Volkswagen', 'Passat'),
(214, 'Volkswagen', 'Tiguan'),
(215, 'Volkswagen', 'Touareg'),
(216, 'Volkswagen', 'Golf'),
(217, 'Volkswagen', 'Vento'),
(218, 'Volvo', 'S40');

-- --------------------------------------------------------

--
-- Структура таблиці `citycode`
--

CREATE TABLE `citycode` (
  `id` int(7) NOT NULL,
  `c1` varchar(255) DEFAULT NULL,
  `c2` varchar(255) DEFAULT NULL,
  `pcode` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Дамп даних таблиці `citycode`
--

INSERT INTO `citycode` (`id`, `c1`, `c2`, `pcode`) VALUES
(1, '16eme Mille', 'Cite Anoushka', '52601'),
(2, 'Agalega', 'La Fourche', 'A1101'),
(3, 'Albion', 'Albion', '91001'),
(4, 'Amitie Gokhoola', 'Amitie', '31501'),
(5, 'Arsenal', 'Arsenal', '20101'),
(6, 'Baie Du Cap', 'Baie Du Cap', '60101'),
(7, 'Bambous', 'Allee Tamarin', '90101'),
(8, 'Bambous Virieux', 'Bambous Virieux', '50101'),
(9, 'Bananes ', 'Bananes', '50201'),
(10, 'Beau Bassin ', 'Beau Bassin Center 1', '71501'),
(11, 'Beau Vallon', 'Beau Vallon', '52201'),
(12, 'Bel Air', 'Bel Air', '40101'),
(13, 'Bel Ombre', 'Beau Champ', '61001'),
(14, 'Benares', 'BATIMARAIS', '61101'),
(15, 'Black River', 'Black River', '90601'),
(16, 'Bois Cheri', 'Ahchin', '60201'),
(17, 'Bois Des Amourettes', 'Anse Jonch', '50401'),
(18, 'Bon Accueil', 'Beau Bois', '40206'),
(19, 'Bramsthan', 'Bramsthan', '43201'),
(20, 'Brisee Verdiere', 'Belvedere', '42403'),
(21, 'Britannia', 'BRITANNIA', '61201'),
(22, 'Calebasses', 'Calebasses', '20201'),
(23, 'Camp Carol', 'Camp Carol', '52401'),
(24, 'Camp De Masque', 'Balance John', '40301'),
(25, 'Camp De Masque Pave', 'Camp De Masque Pave', '40401'),
(26, 'Camp Diable', 'CAMP DIABLE', '60304'),
(27, 'Camp Ithier', 'Camp Ithier', '40501'),
(28, 'Cap Malheureux', 'Anse La Raie', '31701'),
(29, 'Cascavelle', 'Beau Songes', '90201'),
(30, 'Case Noyale', 'Carreau Eucalyptus', '90301'),
(31, 'Central Flacq', 'Belle Vue Allendy', '40601'),
(32, 'Chamarel', 'Camp Madras', '90401'),
(33, 'Chamouny', 'Chamouny', '61301'),
(34, 'Chemin Grenier', 'Adventist RD', '60401'),
(35, 'Clemencia', 'Belle Rose', '40701'),
(36, 'Cluny', 'Bemanique', '50501'),
(37, 'Congomah', 'Cite E.D.C', '20302'),
(38, 'Cottage', 'Cite C.H.A', '30201'),
(39, 'Creve Coeur', 'Creve Coeur', '20401'),
(40, 'Curepipe', 'Arcades Currimjee', '74501'),
(41, 'D''Epinay', 'Camp Creole', '20501'),
(42, 'Dagotiere', 'L''Assurance', '80201'),
(43, 'Dubreuil', 'DUBREUIL', '81501'),
(44, 'Eau Coulee , Curepipe', 'Abbe de la caille', '74301'),
(45, 'Ebene', 'Ebene Cybercity', '72201'),
(46, 'Ecroignard', 'Ecroignard', '40801'),
(47, 'Flic en Flac', 'Carriere', '90501'),
(48, 'Fond du Sac', 'Fond du Sac East', '20601'),
(49, 'G.R.S.E', 'ANAHITA IRS HOTEL', '40901'),
(50, 'Goodlands', 'Arya Mandir', '30401'),
(51, 'Grand Bay', 'Aquamarine', '30501'),
(52, 'Grand Bel Air', 'Grand Bel Air', '50301'),
(53, 'Grand Bois', 'Morc SIT', '60509'),
(54, 'Grand Gaube', 'Arya Mandir', '30601'),
(55, 'Grand Sable', 'Camp Balma', '50601'),
(56, 'Grande Retraite', 'Bois d''Oiseaux', '43302'),
(57, 'Gros Cailloux', 'Croisee Chebel', '90701'),
(58, 'L''Avenir', 'Beau Bois', '80401'),
(59, 'L''Escalier', 'All?e Jacques', '61401'),
(60, 'L''Esperance', 'L''Esperance', '80301'),
(61, 'L''Esperance Trebuchet', 'L''Esperance Trebuchet', '30301'),
(62, 'La Flora', 'Bostom Rd', '61701'),
(63, 'La Gaulette', 'Coteau Raffin', '91101'),
(64, 'La Laura / Malenga', 'La Laura', '80501'),
(65, 'Lalmatie', 'Belvedere', '42603'),
(66, 'Laventure', 'Laventure', '41001'),
(67, 'Le Hochet', 'Cite C.H.A', '21801'),
(68, 'Le Morne', 'Dilo Pourie', '91201'),
(69, 'Long Mountain', 'Baillache', '20801'),
(70, 'Mahebourg', 'Allee Gheude', '50801'),
(71, 'Mapou', 'Cite S.I.L.W.F', '31801'),
(72, 'Mare D''Albert', 'Allee Coco', '51001'),
(73, 'Mare La Chaux', 'Camp Creole', '41101'),
(74, 'Mare Tabac', 'Aspral', '51101'),
(75, 'Medine Camp de Masque', 'Bel Etang', '41201'),
(76, 'Melrose', 'Melrose', '80701'),
(77, 'Midlands', 'Midlands', '52501'),
(78, 'Moka', 'Appartment Le Ravin', '80801'),
(79, 'Montagne Blanche', 'Cite Saint Joseph', '80901'),
(80, 'Morc St Andre ', 'Cite Cremation', '20901'),
(81, 'New Grove', 'Astroea Rochecouste', '51201'),
(82, 'Notre Dame', 'Church Square', '22001'),
(83, 'Nouvelle Decouverte', 'Nouvelle Decouverte', '81201'),
(84, 'Nouvelle France', 'Bemanique', '51301'),
(85, 'Old Grand Port', 'Belle Vue /Kenya', '51401'),
(86, 'Olivia', 'Camp Beau Bois', '41401'),
(87, 'Pamplemousses', 'Beau Plan', '21001'),
(88, 'Petit Bel Air', 'Camp Vinson', '52301'),
(89, 'Petit Raffray', 'Camp Mayeux', '30701'),
(90, 'Petite Riviere', 'Camp des Embrevades', '90801'),
(91, 'Phoenix', 'Allee Brillant', '73501'),
(92, 'Piton', 'Beau Sejour', '30801'),
(93, 'Plaine des Papayes', 'Bois Mangue', '21201'),
(94, 'Plaine Magnien', 'Agricultural Extension Office', '51501'),
(95, 'Pointe aux Piments', 'Camp Lilas', '21301'),
(96, 'Pointe aux Sables', 'Camp Firinga', '11101'),
(97, 'Poste de Flacq', 'Bras d''Eau', '41501'),
(98, 'Poudre D''Or Hamlet', 'Forbach Branch', '31001'),
(99, 'Poudre D''Or Village', 'Bois Doiseau', '30901'),
(100, 'Providence', 'Cite Providence', '81601'),
(101, 'Quartier Militaire', 'Betuel', '81101'),
(102, 'QUATRE BORNES', 'BASSIN S.E', '72502'),
(103, 'Quatre Cocos', 'Belle Mare', '41601'),
(104, 'Quatre Soeurs', 'Deux Freres Mountain side', '52701'),
(105, 'Queen Victoria', 'Bonne Mere', '42701'),
(106, 'Reduit', 'Bagatelle Mall', '80832'),
(107, 'Richelieu', 'Allee Tamarin', '91301'),
(108, 'Ripailles', 'Ripailles', '82001'),
(109, 'Riviere des Anguilles', 'BARRACKS', '60608'),
(110, 'Riviere des Creoles', 'Camp Carol', '51601'),
(111, 'Riviere du Poste', 'Camp Rabaud', '60701'),
(112, 'Riviere du Rempart', 'Amaury', '31401'),
(113, 'Roche Terre', 'Calasse', '32001'),
(114, 'Roches Noires', 'Azuri Complex', '31201'),
(115, 'Rodrigues - Grand Montagne', 'Anse Ally/Fumier', 'R641'),
(116, 'Rodrigues - La Ferme', 'Anse Goeland', 'R131'),
(117, 'Rodrigues - Mont Lubin', 'Bassin Gallard', 'R321'),
(118, 'Rodrigues - Port Mathurin', 'Acacia Hauteur', 'R411'),
(119, 'Rodrigues - Riviere Coco', 'Anse Baleine', 'R251'),
(120, 'Rose Belle', 'Balisson', '52101'),
(121, 'Rose- Hill', 'ARAB TOWN', '71301'),
(122, 'Saint Julien d''Hotman', 'Camp Thorel', '80101'),
(123, 'Saint Julien Village', 'Rich Fund', '41902'),
(124, 'Saint Pierre', 'Camp Auguste', '81401'),
(125, 'Sebastopol', 'Cent Gaulettes', '42101'),
(126, 'Souillac', 'Cite Boodhoo', '60801'),
(127, 'St Hubert', 'Beau Site', '51901'),
(128, 'Surinam', 'African Town squatters', '60901'),
(129, 'Tamarin', 'Barachois', '90901'),
(130, 'Terre Rouge', 'Bois Marchand', '21401'),
(131, 'The Vale', 'Lower Vale', '31301'),
(132, 'Tombeau Bay', 'Auberge', '21701'),
(133, 'Triolet', 'Cinema Casse', '21501'),
(134, 'Trois Boutiques', 'Beau Fonds', '52001'),
(135, 'Trou aux Biches', 'Cite EDC Pere Laval', '22301'),
(136, 'Trou D''Eau Douce', 'Beau Rivage', '42201'),
(137, 'Tyack', 'CITE TYACK', '61801'),
(138, 'Union Ducray / St Aubin', 'CITE SAINT AUBIN', '61502'),
(139, 'Union Park', 'Cluny rd', '52104'),
(140, 'Vacoas / Floreal', 'Allee Brillant', '74101'),
(141, 'Verdun', 'Alma', '81801'),
(142, 'Ville Bague', 'Camp Sipaye', '21601'),
(143, '16eme Mille', 'Cite Mon Bois', '52602'),
(144, 'Agalega', 'OIDC (office)', 'A1102'),
(145, 'Albion', 'Camp Creoles', '91002'),
(146, 'Amitie Gokhoola', 'Cite EDC', '31502'),
(147, 'Arsenal', 'Domaine Les Cascades', '20102'),
(148, 'Baie Du Cap', 'Choisy', '60102'),
(149, 'Bambous', 'Bambous', '90102'),
(150, 'Bambous Virieux', 'Debarcadere', '50102'),
(151, 'Bananes ', 'Eau Bleue Reservoir', '50202'),
(152, 'Beau Bassin ', 'Beau Bassin Center 2', '71502'),
(153, 'Beau Vallon', 'Cite CHA', '52202'),
(154, 'Bel Air', 'Caroline', '40102'),
(155, 'Bel Ombre', 'Bel Ombre', '61002'),
(156, 'Benares', 'BENARES', '61103'),
(157, 'Black River', 'Cite Carre D''As', '90602'),
(158, 'Bois Cheri', 'Akla Road', '60202'),
(159, 'Bois Des Amourettes', 'Bois Des Amourettes', '50402'),
(160, 'Bon Accueil', 'Belvedere', '40203'),
(161, 'Brisee Verdiere', 'Brisee Verdiere', '42410'),
(162, 'Britannia', 'CAMP BERTHAUD', '61206'),
(163, 'Calebasses', 'Koyratty', '20202'),
(164, 'Camp Carol', 'Carreau Acacia', '52402'),
(165, 'Camp De Masque', 'Camp De Masque', '40302'),
(166, 'Camp De Masque Pave', 'Mare Goyaves', '40402'),
(167, 'Camp Diable', 'EDC CAMP DIABLE', '60301'),
(168, 'Camp Ithier', 'Isidore Rose', '40502'),
(169, 'Cap Malheureux', 'Bain Boeuf', '31702'),
(170, 'Cascavelle', 'Camp Creoles', '90202'),
(171, 'Case Noyale', 'Case Noyale', '90302'),
(172, 'Central Flacq', 'Boulet Blanc', '40602'),
(173, 'Chamarel', 'Chamarel', '90402'),
(174, 'Chamouny', 'Mare Anguilles', '61302'),
(175, 'Chemin Grenier', 'Camp Barbe', '60402'),
(176, 'Clemencia', 'Clemencia', '40702'),
(177, 'Cluny', 'Camp Bengali', '50502'),
(178, 'Congomah', 'Congomah', '20301'),
(179, 'Cottage', 'Cottage North', '30202'),
(180, 'Creve Coeur', 'Morc.Creve', '20402'),
(181, 'Curepipe', 'B. Sequard', '74503'),
(182, 'D''Epinay', 'Cite C.H.A', '20502'),
(183, 'Dagotiere', 'Lower Dagotiere', '80202'),
(184, 'Dubreuil', 'NHDC DUBREUIL', '81502'),
(185, 'Eau Coulee , Curepipe', 'Abbe Laval', '74202'),
(186, 'Ebene', 'Ebene S.E (Ebene Housing Estate)', '72202'),
(187, 'Flic en Flac', 'Flic en Flac', '90502'),
(188, 'Fond du Sac', 'Fond du Sac West', '20602'),
(189, 'FOREST - SIDE', 'CAMP LAGESSE', '74401'),
(190, 'G.R.S.E', 'Beau Champ', '40902'),
(191, 'Goodlands', 'Astoria', '30402'),
(192, 'Grand Bay', 'Bain Boeuf', '30503'),
(193, 'Grand Bois', 'N.H.D.C Grand Bois', '60510'),
(194, 'Grand Gaube', 'Batie', '30602'),
(195, 'Grand Sable', 'Camp Pierre', '50602'),
(196, 'Grande Retraite', 'Petite retraite', '43303'),
(197, 'Gros Cailloux', 'Gros Cailloux', '90702'),
(198, 'L''Avenir', 'L''Avenir', '80402'),
(199, 'L''Escalier', 'Camp La Hache', '61402'),
(200, 'La Flora', 'Cooperative Rd', '61702'),
(201, 'La Gaulette', 'La Gaulette', '91102'),
(202, 'La Laura / Malenga', 'LA LAURA/Riv Baptiste', '80502'),
(203, 'Lalmatie', 'Grand Bas Fond(southern part)', '42604'),
(204, 'Le Hochet', 'Cite Roma', '21802'),
(205, 'Le Morne', 'La Prairie', '91204'),
(206, 'Long Mountain', 'Boulingrin', '20802'),
(207, 'Mahebourg', 'Blue Bay', '50802'),
(208, 'Mapou', 'Ferret', '31802'),
(209, 'Mare D''Albert', 'Cite EDC', '51002'),
(210, 'Mare La Chaux', 'Mare La Chaux', '41102'),
(211, 'Mare Tabac', 'Camp Francois', '51102'),
(212, 'Medine Camp de Masque', 'Medine', '41202'),
(213, 'Melrose', 'NHDC Melrose', '80702'),
(214, 'Midlands', 'Morc Ferret', '52502'),
(215, 'Moka', 'Baboolall RD', '80802'),
(216, 'Montagne Blanche', 'Montagne Blanche', '80902'),
(217, 'Morc St Andre ', 'Morc St Andre East', '20902'),
(218, 'New Grove', 'Bamboo', '51202'),
(219, 'Notre Dame', 'Montee Jolie', '22002'),
(220, 'Nouvelle France', 'Bissoondoyalrd', '51302'),
(221, 'Old Grand Port', 'Cite NHDC', '51402'),
(222, 'Olivia', 'Camp Jakeeree', '41402'),
(223, 'Pamplemousses', 'Bois Rouge', '21002'),
(224, 'Petit Bel Air', 'Cemetery', '52302'),
(225, 'Petit Raffray', 'Les Charmose', '30702'),
(226, 'Petite Riviere', 'Camp Racket (Benoit)', '90802'),
(227, 'Phoenix', 'Allee Jacques', '73502'),
(228, 'Piton', 'Beau Sejour SE', '30802'),
(229, 'Plaine des Papayes', 'Camp Maraz', '21202'),
(230, 'Plaine Magnien', 'Balance', '51502'),
(231, 'Pointe aux Piments', 'Camp Sada', '21302'),
(232, 'Pointe aux Sables', 'Cite Blanc ( Padco )', '11102'),
(233, 'Poste de Flacq', 'Camp Accacia', '41502'),
(234, 'Poudre D''Or Hamlet', 'Morc VRS A', '31002'),
(235, 'Poudre D''Or Village', 'Cite EDC', '30902'),
(236, 'Providence', 'Providence', '81602'),
(237, 'Quartier Militaire', 'Bonne Veine', '81102'),
(238, 'QUATRE BORNES', 'BASSIN/ PALMA', '72501'),
(239, 'Quatre Cocos', 'Camp Marcelin', '41602'),
(240, 'Quatre Soeurs', 'Deux Freres Seaside', '52702'),
(241, 'Queen Victoria', 'Camp Bonne Mere', '42702'),
(242, 'Reduit', 'Martindale', '80833'),
(243, 'Richelieu', 'Cite Richelieu', '91302'),
(244, 'Riviere des Anguilles', 'BEL AIR SAINT FELIX', '60611'),
(245, 'Riviere des Creoles', 'Cite CHA', '51602'),
(246, 'Riviere du Poste', 'Camp Siajee', '60702'),
(247, 'Riviere du Rempart', 'Amitie (part of)', '31501'),
(248, 'Roche Terre', 'Roche Terre', '32002'),
(249, 'Roches Noires', 'Branch Rd', '31207'),
(250, 'Rodrigues - Grand Montagne', 'Anse Enfer', 'R342'),
(251, 'Rodrigues - La Ferme', 'Anse Nicholas/pointe Nicholas', 'R132'),
(252, 'Rodrigues - Mont Lubin', 'Bati Madame', 'R322'),
(253, 'Rodrigues - Port Mathurin', 'Accacia Grand Bois', 'R412'),
(254, 'Rodrigues - Riviere Coco', 'Anse Quitor (Corail)', 'R152'),
(255, 'Rose Belle', 'Baramia', '51802'),
(256, 'Rose- Hill', 'ARCADES REETOO', '71302'),
(257, 'Saint Julien d''Hotman', 'Saint Julien d''Hotman', '80102'),
(258, 'Saint Julien Village', 'Saint Julien Village', '41901'),
(259, 'Saint Pierre', 'Chantenay', '81401'),
(260, 'Sebastopol', 'Cite Sebastopol', '42102'),
(261, 'Souillac', 'Cite E.D.C Chaline', '60802'),
(262, 'St Hubert', 'Camp Filbert', '51902'),
(263, 'Surinam', 'Balance', '60902'),
(264, 'Tamarin', 'Cap Dal', '90902'),
(265, 'Terre Rouge', 'Bois Pignolet', '21402'),
(266, 'The Vale', 'Upper Vale', '31302'),
(267, 'Tombeau Bay', 'Bay Village', '21702'),
(268, 'Triolet', 'Cite EDC', '21502'),
(269, 'Trois Boutiques', 'Carreau Esnouf', '52002'),
(270, 'Trou aux Biches', 'Morc Asviva', '22302'),
(271, 'Trou D''Eau Douce', 'Camp Nadal', '42202'),
(272, 'Tyack', 'LOWER TYACK', '61802'),
(273, 'Union Ducray / St Aubin', 'MORC St Aubin', '61503'),
(274, 'Union Park', 'Morc Cheminee', '52105'),
(275, 'Vacoas / Floreal', 'Allee Brillant', '73401'),
(276, 'Verdun', 'Cite EDC Verdun', '81802'),
(277, 'Ville Bague', 'Mon Songe', '21602'),
(278, '16eme Mille', 'Coriolis', '52603'),
(279, 'Agalega', 'Ste Rita Village', 'A2101'),
(280, 'Albion', 'La Croisette', '91003'),
(281, 'Amitie Gokhoola', 'Gokhoola', '31503'),
(282, 'Arsenal', 'Morc Poonith', '20103'),
(283, 'Bambous', 'Eaux Bonnes', '90103'),
(284, 'Bambous Virieux', 'Les Mares', '50103'),
(285, 'Beau Bassin ', 'Beau Bassin Center 3', '71503'),
(286, 'Beau Vallon', 'Cite NHDC', '52203'),
(287, 'Bel Air', 'Ernest Florent', '40103'),
(288, 'Bel Ombre', 'Cite EDC Bel Ombre', '61003'),
(289, 'Benares', 'COLMAR', '61102'),
(290, 'Black River', 'Cite EDC', '90603'),
(291, 'Bois Cheri', 'Bois Cheri', '60203'),
(292, 'Bois Des Amourettes', 'Domaine des Chasseur', '50403'),
(293, 'Bon Accueil', 'Bon Accueil', '40205'),
(294, 'Brisee Verdiere', 'Latapie(western side)', '42409'),
(295, 'Britannia', 'CITE RAMPUR', '61202'),
(296, 'Calebasses', 'L''Espoir', '20203'),
(297, 'Camp Carol', 'La Cambuse', '52403'),
(298, 'Camp De Masque', 'Camp Sonar', '40303'),
(299, 'Camp De Masque Pave', 'Petite Cabane', '40403'),
(300, 'Camp Diable', 'ILOT', '60303'),
(301, 'Camp Ithier', 'Isidore Rose Pave', '40503'),
(302, 'Cap Malheureux', 'C.H.A', '31708'),
(303, 'Cascavelle', 'Cascavelle', '90203'),
(304, 'Case Noyale', 'Cite CHA', '90303'),
(305, 'Central Flacq', 'Boulet Rouge', '40603'),
(306, 'Chamarel', 'La Vielle Cheminee', '90403'),
(307, 'Chamouny', 'Mont Blanc', '61303'),
(308, 'Chemin Grenier', 'Camp Charlot', '60403'),
(309, 'Cluny', 'Camp Ramdin', '50503'),
(310, 'Congomah', 'Royal Rd', '20303'),
(311, 'Cottage', 'Cottage South', '30203'),
(312, 'Creve Coeur', 'Ripaille 1/2/3', '20403'),
(313, 'Curepipe', 'Barracks', '74502'),
(314, 'D''Epinay', 'Depinay Village', '20503'),
(315, 'Dagotiere', 'NHDC Dagotiere', '80203'),
(316, 'Dubreuil', 'RISHI DAYANAND', '81503'),
(317, 'Eau Coulee , Curepipe', 'Bougainville', '74203'),
(318, 'Ebene', 'Morc Ebene', '72203'),
(319, 'Flic en Flac', 'Hilton Hotel', '90503'),
(320, 'Fond du Sac', 'Morc Dilchand', '20603'),
(321, 'FOREST - SIDE', 'CAMP LE JUGE', '74402'),
(322, 'G.R.S.E', 'Beau Champ S.E (ALTEO)', '40903'),
(323, 'Goodlands', 'Balkan', '30403'),
(324, 'Grand Bay', 'Bazar', '30502'),
(325, 'Grand Bois', 'N.H.D.C Legrand', '60511'),
(326, 'Grand Gaube', 'Butte a L''Herbe', '30603'),
(327, 'Grand Sable', 'Grand Sable', '50603'),
(328, 'Gros Cailloux', 'Morc Domah', '90703'),
(329, 'L''Escalier', 'Camp Tagore', '61403'),
(330, 'La Flora', 'Kanhye Rd', '61703'),
(331, 'La Gaulette', 'Morc Desveaux', '91103'),
(332, 'La Laura / Malenga', 'Malinga', '80503'),
(333, 'Lalmatie', 'Lalmatie', '42601'),
(334, 'Le Hochet', 'Jumbo', '21803'),
(335, 'Le Morne', 'Le Morne Brabant', '91202'),
(336, 'Long Mountain', 'C.H.A', '20804'),
(337, 'Mahebourg', 'Bois D''oiseaux', '50803'),
(338, 'Mapou', 'Labourdonnais', '31803'),
(339, 'Mare D''Albert', 'Cite Mare D''Albert', '51003'),
(340, 'Mare Tabac', 'Cite CHA', '51103'),
(341, 'Medine Camp de Masque', 'Mont Ida', '41203'),
(342, 'Midlands', 'Morc Ramdanee', '52503'),
(343, 'Moka', 'Bagatelle Mall', '80832'),
(344, 'Montagne Blanche', 'Morc Sans Souci', '80903'),
(345, 'Morc St Andre ', 'Morc St Andre West', '20903'),
(346, 'New Grove', 'Bois DÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢oiseaux', '51203'),
(347, 'Notre Dame', 'Morc L''Amitie', '22004'),
(348, 'Nouvelle France', 'Commelonne', '51303'),
(349, 'Old Grand Port', 'Debarcadere', '51403'),
(350, 'Olivia', 'CHA + (state land)', '41403'),
(351, 'Pamplemousses', 'Botanical Garden', '21003'),
(352, 'Petit Bel Air', 'Petit Bel Air', '52303'),
(353, 'Petit Raffray', 'Mare Seche', '30703'),
(354, 'Petite Riviere', 'Canon Casse', '90803'),
(355, 'Phoenix', 'Bassin', '73603'),
(356, 'Piton', 'Bon Espoir', '30803'),
(357, 'Plaine des Papayes', 'Cite EDC', '21203'),
(358, 'Plaine Magnien', 'Bois D''Oiseau', '51503'),
(359, 'Pointe aux Piments', 'Camp Scipion', '21303'),
(360, 'Pointe aux Sables', 'Cite C.H.A/Cite Debarcadere', '11103'),
(361, 'Poste de Flacq', 'Camp Poorun', '41503'),
(362, 'Poudre D''Or Hamlet', 'Morc VRS B', '31003'),
(363, 'Poudre D''Or Village', 'Debarcadere', '30903'),
(364, 'Providence', 'Providencia 1', '81603'),
(365, 'Quartier Militaire', 'Cite Bonne Veine', '81103'),
(366, 'QUATRE BORNES', 'BEAU SEJOUR 1', '72103'),
(367, 'Quatre Cocos', 'Camp Rannoo', '41603'),
(368, 'Quatre Soeurs', 'Marie Jeanne', '52703'),
(369, 'Queen Victoria', 'NHDC B Mere', '42703'),
(370, 'Reduit', 'MauritIus Examination Syndicate', '80834'),
(371, 'Richelieu', 'Platform', '91303'),
(372, 'Riviere des Anguilles', 'CAMP MARTIN', '60609'),
(373, 'Riviere des Creoles', 'Cite Longtill', '51603'),
(374, 'Riviere du Poste', 'Riv du Poste', '60703'),
(375, 'Riviere du Rempart', 'Antoinette', '30102'),
(376, 'Roches Noires', 'Coastal Side', '31202'),
(377, 'Rodrigues - Grand Montagne', 'Anse Femie', 'R643'),
(378, 'Rodrigues - La Ferme', 'Baie Du Nord', 'R133'),
(379, 'Rodrigues - Mont Lubin', 'Bigarade', 'R223'),
(380, 'Rodrigues - Port Mathurin', 'Allee Tamarin', 'R413'),
(381, 'Rodrigues - Riviere Coco', 'Anse Raffin', 'R253'),
(382, 'Rose Belle', 'Camp Bouvet', '51803'),
(383, 'Rose- Hill', 'BEAU SEJOUR 3', '72101'),
(384, 'Saint Julien Village', 'Union Flacq', '41903'),
(385, 'Saint Pierre', 'Circonstance', '81402'),
(386, 'Sebastopol', 'Clavet', '42103'),
(387, 'Souillac', 'Cite E.D.C Pitot', '60803'),
(388, 'St Hubert', 'Camp Florine', '51903'),
(389, 'Surinam', 'CEMETARY Squatters', '60903'),
(390, 'Tamarin', 'Cite EDC', '90903'),
(391, 'Terre Rouge', 'C.E.B Sq.', '21404'),
(392, 'Tombeau Bay', 'Cite Florida', '21703'),
(393, 'Triolet', 'Huitieme Mile', '21503'),
(394, 'Trois Boutiques', 'Carreau La Paille', '52003'),
(395, 'Trou aux Biches', 'Morc Bassa', '22303'),
(396, 'Trou D''Eau Douce', 'Camp Nowbuth', '42203'),
(397, 'Tyack', 'MORC BLUE PRINT', '61803'),
(398, 'Union Ducray / St Aubin', 'New morc St Aubin (land only)', '61504'),
(399, 'Union Park', 'Morc VRS', '52106'),
(400, 'Vacoas / Floreal', 'Angus', '73402'),
(401, 'Verdun', 'Verdun', '81803'),
(402, 'Ville Bague', 'Monc V.R.S', '21603'),
(403, '16eme Mille', 'Mon Bois(cnt+ubs+laiterie)', '52604'),
(404, 'Agalega', 'Village Vingt-Cinq', 'A1103'),
(405, 'Albion', 'Morc Beerjeeraz', '91004'),
(406, 'Amitie Gokhoola', 'Morc VRS', '31504'),
(407, 'Arsenal', 'Morc Promo Holiday', '20104'),
(408, 'Bambous', 'Geoffroy', '90104'),
(409, 'Bambous Virieux', 'Pointe Bambous', '50104'),
(410, 'Beau Bassin ', 'Beau Bassin Center 4', '71504'),
(411, 'Beau Vallon', 'New Residential Area [Morc]', '52204'),
(412, 'Bel Air', 'La Laura', '40104'),
(413, 'Bel Ombre', 'Cite Longtill Bel Ombre', '61004'),
(414, 'Black River', 'Cite Tamarinier', '90604'),
(415, 'Bois Cheri', 'Building', '60204'),
(416, 'Bois Des Amourettes', 'Providence', '50404'),
(417, 'Bon Accueil', 'Grand Bas Fond (northern part)', '40204'),
(418, 'Brisee Verdiere', 'Mare D''Australia', '42411'),
(419, 'Britannia', 'MORC VRS R.DRAGON', '61205'),
(420, 'Calebasses', 'Old Flacq', '20204'),
(421, 'Camp Carol', 'Le Bouchon', '52404'),
(422, 'Camp De Masque', 'L'' Unite', '40304'),
(423, 'Camp Diable', 'MORC SAVANNAH', '60302'),
(424, 'Cap Malheureux', 'Calodyne', '31703'),
(425, 'Cascavelle', 'Xavier', '90204'),
(426, 'Case Noyale', 'Ilot Fortier', '90304'),
(427, 'Central Flacq', 'Boutique Coco', '40604'),
(428, 'Chamarel', 'La Ville Leon', '90404'),
(429, 'Chemin Grenier', 'Camp Fanny', '60404'),
(430, 'Cluny', 'Cluny', '50504'),
(431, 'Cottage', 'Morc Beau Plateau', '30204'),
(432, 'Creve Coeur', 'Robinson (Right side)', '20404'),
(433, 'Curepipe', 'Charles Lees', '74404'),
(434, 'D''Epinay', 'Domaine de Rosalie', '20504'),
(435, 'Dagotiere', 'Upper Dagotiere', '80204'),
(436, 'Dubreuil', 'SAMLO', '81504'),
(437, 'Eau Coulee , Curepipe', 'Camp Caval', '74504'),
(438, 'Flic en Flac', 'La Pirogue', '90504'),
(439, 'FOREST - SIDE', 'CELICOURT ANTELME', '74403'),
(440, 'G.R.S.E', 'Camp Pecheurs', '40904'),
(441, 'Goodlands', 'Bois Rouge', '30404'),
(442, 'Grand Bay', 'Beau Manguier', '30504'),
(443, 'Grand Bois', 'Old Savanne Rd', '60512'),
(444, 'Grand Gaube', 'Calodyne', '30604'),
(445, 'Grand Sable', 'Petit Sable', '50604'),
(446, 'L''Escalier', 'Charles Rd', '61404'),
(447, 'La Flora', 'La Flora', '61704'),
(448, 'La Gaulette', 'Morc La Fleche', '91104'),
(449, 'Lalmatie', 'Mission Cross', '42602'),
(450, 'Le Hochet', 'La Fontaine 23', '21804'),
(451, 'Le Morne', 'Le Morne Village', '91203'),
(452, 'Long Mountain', 'Camp la Boue/ Vallee du Paradis', '20803'),
(453, 'Mahebourg', 'Carreau Manioc', '50804'),
(454, 'Mapou', 'Mapou', '31804'),
(455, 'Mare D''Albert', 'Gros Bois S.E', '51004'),
(456, 'Mare Tabac', 'Cite Greenwood', '51104'),
(457, 'Midlands', 'Morc St Therese', '52504'),
(458, 'Moka', 'Bocage', '80803'),
(459, 'Montagne Blanche', 'Petit Paquet', '80905'),
(460, 'Morc St Andre ', 'Morc VRS', '20904'),
(461, 'New Grove', 'Business Park', '51204'),
(462, 'Notre Dame', 'Morc Teeluck', '22006'),
(463, 'Nouvelle France', 'Grand Port Rd', '51304'),
(464, 'Old Grand Port', 'Ferney', '51404'),
(465, 'Olivia', 'Deep River S.E', '41404'),
(466, 'Pamplemousses', 'Camp Badamiers', '21006'),
(467, 'Petit Raffray', 'Mont Mascal', '30704'),
(468, 'Petite Riviere', 'Cite Betel', '90804'),
(469, 'Phoenix', 'Belle Terre', '73604'),
(470, 'Piton', 'Cite EDC', '30804'),
(471, 'Plaine des Papayes', 'Cite NHDC', '21204'),
(472, 'Plaine Magnien', 'Cemetry Rd', '51504'),
(473, 'Pointe aux Piments', 'Grande Pointe aux Piments', '21304'),
(474, 'Pointe aux Sables', 'Cite Ilois Phase I & phase II', '11104'),
(475, 'Poste de Flacq', 'Camp Raffia', '41504'),
(476, 'Poudre D''Or Hamlet', 'Morc VRS C', '31004'),
(477, 'Poudre D''Or Village', 'Ile Dambre', '30904'),
(478, 'Providence', 'Providencia 2', '81604'),
(479, 'Quartier Militaire', 'Cite Padco (A.Ravaton)', '81104'),
(480, 'QUATRE BORNES', 'BEAU SEJOUR 2', '72104'),
(481, 'Quatre Cocos', 'Palmar', '41604'),
(482, 'Quatre Soeurs', 'Mr Joly', '52704'),
(483, 'Queen Victoria', 'Queen Victoria', '42704'),
(484, 'Reduit', 'Reduit', '80835'),
(485, 'Richelieu', 'Richelieu', '91304'),
(486, 'Riviere des Anguilles', 'LA VANILLE NHDC', '60610'),
(487, 'Riviere des Creoles', 'Morc. Ferney, VRS', '51604'),
(488, 'Riviere du Poste', 'Terrain Maurice', '60704'),
(489, 'Riviere du Rempart', 'B.V.Maurel (Amitie) part of', '30101'),
(490, 'Roches Noires', 'Domaine du levant', '31203'),
(491, 'Rodrigues - Grand Montagne', 'Bassin Banane', 'R644'),
(492, 'Rodrigues - La Ferme', 'Baie Malgache', 'R234'),
(493, 'Rodrigues - Mont Lubin', 'Camp Baptiste', 'R524'),
(494, 'Rodrigues - Port Mathurin', 'Anse Aux Anglais', 'R514'),
(495, 'Rodrigues - Riviere Coco', 'Bengelique/St Marie', 'R154'),
(496, 'Rose Belle', 'Capitol', '51804'),
(497, 'Rose- Hill', 'BEAU SEJOUR 4', '72102'),
(498, 'Saint Pierre', 'Cite Cote D''Or', '81403'),
(499, 'Sebastopol', 'Etoile', '42104'),
(500, 'Souillac', 'Cite Gris Gris', '60804'),
(501, 'St Hubert', 'Camp Jardin', '51904'),
(502, 'Surinam', 'Cite de Dieu Squatters', '60904'),
(503, 'Tamarin', 'Cite Padco', '90904'),
(504, 'Terre Rouge', 'Camp La Boue', '21403'),
(505, 'Tombeau Bay', 'Cite Illois', '21704'),
(506, 'Triolet', 'Neuvieme Mile', '21504'),
(507, 'Trois Boutiques', 'Cite Ouvri?re', '52004'),
(508, 'Trou aux Biches', 'Morc Choisy', '22304'),
(509, 'Trou D''Eau Douce', 'Camp Toorab', '42204'),
(510, 'Tyack', 'NHDC TYACK', '61804'),
(511, 'Union Ducray / St Aubin', 'UNION DUCRAY S.E/Union St Aubin', '61501'),
(512, 'Union Park', 'School Rd', '52107'),
(513, 'Vacoas / Floreal', 'Beard', '73103'),
(514, 'Ville Bague', 'Nicoliere', '21604'),
(515, '16eme Mille', 'Morc Domah', '52605'),
(516, 'Albion', 'Morc de Chazal', '91005'),
(517, 'Arsenal', 'Morc Ramjan', '20105'),
(518, 'Bambous', 'La Ferme', '90105'),
(519, 'Beau Bassin ', 'Beau Bassin Center 5', '71505'),
(520, 'Beau Vallon', 'Verger', '52205'),
(521, 'Bel Air', 'La Lucie Building', '40106'),
(522, 'Bel Ombre', 'Saint Martin', '61006'),
(523, 'Black River', 'La Balise', '90605'),
(524, 'Bois Cheri', 'Cader Road', '60205'),
(525, 'Bon Accueil', 'Grande Retraite', '43301'),
(526, 'Brisee Verdiere', 'Pont Praslin', '21612'),
(527, 'Britannia', 'RIVIERE DRAGON', '61204'),
(528, 'Camp Carol', 'Mon Desert Mon Tresor', '52405'),
(529, 'Camp Diable', 'NHDC CAMP DIABLE', '60305'),
(530, 'Cap Malheureux', 'Camp Gervaise', '31704'),
(531, 'Case Noyale', 'Morc Multipliants', '90305'),
(532, 'Central Flacq', 'Camp Garreau', '40605'),
(533, 'Chamarel', 'Les Rouleaux', '90405'),
(534, 'Chemin Grenier', 'Camp Fanny Lorquet', '60405'),
(535, 'Cluny', 'Eau Bleue Tostee', '50505'),
(536, 'Cottage', 'Morc Kestrel', '30205'),
(537, 'Creve Coeur', 'Thomassin', '20405'),
(538, 'Curepipe', 'Clos de la tour', '74405'),
(539, 'D''Epinay', 'Grande Rosalie', '20505'),
(540, 'Dagotiere', 'Valetta', '80205'),
(541, 'Eau Coulee , Curepipe', 'Camp Dhoby', '74305'),
(542, 'Flic en Flac', 'Manguiers', '90505'),
(543, 'FOREST - SIDE', 'CITE ATLEE', '74444'),
(544, 'G.R.S.E', 'FOUR SEASONS+HOTEL', '40905'),
(545, 'Goodlands', 'CEB Sq', '30405'),
(546, 'Grand Bay', 'Camp Carol', '30512'),
(547, 'Grand Bois', 'Sewsagur Rd', '60513'),
(548, 'Grand Gaube', 'Camp Corail', '30605'),
(549, 'Grand Sable', 'Plaine Des Roches', '50605'),
(550, 'L''Escalier', 'Chattorgoon', '61405'),
(551, 'La Flora', 'Matoo Rd', '61705'),
(552, 'Le Hochet', 'Le Hochet', '21805'),
(553, 'Le Morne', 'Morc Gambien', '91205'),
(554, 'Long Mountain', 'Cite Social Welfare', '20805'),
(555, 'Mahebourg', 'Cent Gaulettes', '50805'),
(556, 'Mapou', 'Morc B.Plateau', '31805'),
(557, 'Mare D''Albert', 'Les Vergers de Gros Bois', '51005'),
(558, 'Mare Tabac', 'Gros Bois Rd', '51105'),
(559, 'Moka', 'Bois Cheri', '80804'),
(560, 'Montagne Blanche', 'Sans Souci', '80906'),
(561, 'New Grove', 'Cite La Rosa', '51205'),
(562, 'Notre Dame', 'Morc VRS', '22007'),
(563, 'Nouvelle France', 'Kanpur', '51305'),
(564, 'Old Grand Port', 'Le Vallon', '51405'),
(565, 'Olivia', 'EDC', '41405'),
(566, 'Pamplemousses', 'Camp d Embrevades', '21007'),
(567, 'Petit Raffray', 'Morc Bholah', '30705'),
(568, 'Petite Riviere', 'Cite Flamboyant (NHDC)', '90805'),
(569, 'Phoenix', 'Boundary', '73605'),
(570, 'Piton', 'Espe Piton', '30805'),
(571, 'Plaine des Papayes', 'Morc Beau Plan', '21205'),
(572, 'Plaine Magnien', 'Chatgaon (ex Airport)', '51505'),
(573, 'Pointe aux Piments', 'Morc Brizmohun', '21305'),
(574, 'Pointe aux Sables', 'Cite La Lumiere', '11106'),
(575, 'Poste de Flacq', 'Choisy', '41506'),
(576, 'Poudre D''Or Hamlet', 'Morc VRS D', '31005'),
(577, 'Poudre D''Or Village', 'Poudre D''Or Village', '30905'),
(578, 'Providence', 'Providencia 3', '81605'),
(579, 'Quartier Militaire', 'New Road***', '81105'),
(580, 'QUATRE BORNES', 'BELLE ROSE 4', '72208'),
(581, 'Quatre Cocos', 'Quatre Cocos', '41605'),
(582, 'Quatre Soeurs', 'Pointe aux Feuilles', '52705'),
(583, 'Reduit', 'State House', '80836'),
(584, 'Riviere des Anguilles', 'MAISONNETTE', '60605'),
(585, 'Riviere des Creoles', 'Pte Brocus', '51605'),
(586, 'Riviere du Rempart', 'Barlow', '30103'),
(587, 'Roches Noires', 'Haute Rive', '31204'),
(588, 'Rodrigues - Grand Montagne', 'Batatrand', 'R645'),
(589, 'Rodrigues - La Ferme', 'Baie Malgache', 'R434'),
(590, 'Rodrigues - Mont Lubin', 'Camp Paul or Canne paul', 'R325'),
(591, 'Rodrigues - Port Mathurin', 'Baie aux Huitres', 'R415'),
(592, 'Rodrigues - Riviere Coco', 'Cascade Jean Louis*', 'R155'),
(593, 'Rose Belle', 'Chakla', '51805'),
(594, 'Rose- Hill', 'BEAU SEJOUR 5', '72301'),
(595, 'Saint Pierre', 'Cote d''Or VRS 1', '81404'),
(596, 'Sebastopol', 'Lesur', '42105'),
(597, 'Souillac', 'Cite Texamon', '60805'),
(598, 'St Hubert', 'Camp Ramphul', '51905'),
(599, 'Surinam', 'Cite EDC 1 Surinam', '60905'),
(600, 'Tamarin', 'Domaine Mont Calme', '90905'),
(601, 'Terre Rouge', 'Cite Bois Marchand', '21405'),
(602, 'Tombeau Bay', 'Cite La Chaux/State Land', '21705'),
(603, 'Triolet', 'NHDC (Solitude)', '21505'),
(604, 'Trois Boutiques', 'Cite Trois Boutiques', '52005'),
(605, 'Trou aux Biches', 'Morc Elaya', '22305'),
(606, 'Trou D''Eau Douce', 'Debarcadere', '42205'),
(607, 'Tyack', 'UPPER TYACK', '61805'),
(608, 'Union Park', 'U.Park', '52108'),
(609, 'Vacoas / Floreal', 'Berthaud', '74102'),
(610, 'Ville Bague', 'Petite Julie', '21605'),
(611, '16eme Mille', 'morc Sookary', '52606'),
(612, 'Albion', 'Morc Raffray', '91006'),
(613, 'Arsenal', 'Morc Sobrun', '20107'),
(614, 'Bambous', 'Mangues Vert Doux', '90106'),
(615, 'Beau Bassin ', 'Beau Bassin Center 6', '71506'),
(616, 'Bel Air', 'La Lucie Roy', '40105'),
(617, 'Bel Ombre', 'Sainte Marie', '61005'),
(618, 'Black River', 'La Balise Marina', '90606'),
(619, 'Bois Cheri', 'Cite EDC Bois Cheri', '60206'),
(620, 'Bon Accueil', 'Latapie (eastern side)', '40209'),
(621, 'Britannia', 'VRS BRITANNIA (land only)', '61203'),
(622, 'Camp Carol', 'Morc. V.R.S M. Desert', '52406'),
(623, 'Camp Diable', 'RICHE BOIS', '60306'),
(624, 'Cap Malheureux', 'Cap Malheureux', '31706'),
(625, 'Case Noyale', 'Petite Riviere Noire', '90306'),
(626, 'Central Flacq', 'Central Flacq', '40606'),
(627, 'Chamarel', 'Piton', '90406'),
(628, 'Chemin Grenier', 'Camp Galets', '60406'),
(629, 'Cluny', 'Railway', '50506'),
(630, 'Cottage', 'Morc VRS', '30206'),
(631, 'Creve Coeur', 'Upper C. Coeur', '20406'),
(632, 'Curepipe', 'Commerford', '74506'),
(633, 'D''Epinay', 'Ilot', '20506'),
(634, 'Eau Coulee , Curepipe', 'Camp Levieux', '74306'),
(635, 'Flic en Flac', 'Morc Anna 1', '90506'),
(636, 'FOREST - SIDE', 'CITE CAMP LE JUGE', '74405'),
(637, 'G.R.S.E', 'Grande River South East', '40906'),
(638, 'Goodlands', 'Cite Ste Claire', '30406'),
(639, 'Grand Bay', 'Camp Harel', '30505'),
(640, 'Grand Bois', 'Young Tow', '60514'),
(641, 'Grand Gaube', 'Camp Madras', '30606'),
(642, 'Grand Sable', 'Pointe Des Roches', '50606'),
(643, 'L''Escalier', 'Cite EDC', '61406'),
(644, 'La Flora', 'Pamplemousses Rd', '61706'),
(645, 'Le Hochet', 'Morc Manick', '21809'),
(646, 'Long Mountain', 'Descoins', '20806'),
(647, 'Mahebourg', 'Cite La Chaux', '50806'),
(648, 'Mapou', 'Morc BelleVue', '31806'),
(649, 'Mare D''Albert', 'Mare D''Albert', '51006'),
(650, 'Mare Tabac', 'Joli Bois', '51106'),
(651, 'Moka', 'Bon Air(+ villa road)', '80805'),
(652, 'New Grove', 'Cite Mont Fertile', '51206'),
(653, 'Notre Dame', 'Morc. Kitchine', '22003'),
(654, 'Nouvelle France', 'La Peyre', '51306'),
(655, 'Old Grand Port', 'Old Grand Port', '51406'),
(656, 'Olivia', 'Kewal Nagar (Belle Rive)', '41406'),
(657, 'Pamplemousses', 'Canton Belle Eau', '21005'),
(658, 'Petit Raffray', 'Morc Gowreesunkur 1', '30706'),
(659, 'Petite Riviere', 'Morc Goldsmith', '90806'),
(660, 'Phoenix', 'Camp Fouquereaux 1', '73606'),
(661, 'Piton', 'La Paix', '30806'),
(662, 'Plaine des Papayes', 'Morc Blue Nile', '21206'),
(663, 'Plaine Magnien', 'Cite Burrenchobay', '51506'),
(664, 'Pointe aux Piments', 'Petite Pointe aux Piments', '21306'),
(665, 'Pointe aux Sables', 'Cite Lateka', '11105'),
(666, 'Poste de Flacq', 'Cite Perdu', '41505'),
(667, 'Poudre D''Or Hamlet', 'Poudre D''Or Hamlet', '31006'),
(668, 'Quartier Militaire', 'Quartier Militaire', '81106'),
(669, 'QUATRE BORNES', 'BELLE ROSE 5', '72109'),
(670, 'Reduit', 'University of Mauritius', '80837'),
(671, 'Riviere des Anguilles', 'MORC PRUD''HOMME', '60604'),
(672, 'Riviere des Creoles', 'Riviere des Creoles', '51606'),
(673, 'Riviere du Rempart', 'Belle Vue Maurel', '30104'),
(674, 'Roches Noires', 'Lambic', '31205'),
(675, 'Rodrigues - Grand Montagne', 'Bel Air', 'R646'),
(676, 'Rodrigues - La Ferme', 'Baie Topaze', 'R135'),
(677, 'Rodrigues - Mont Lubin', 'Champs', 'R526'),
(678, 'Rodrigues - Port Mathurin', 'Baie Diamant', 'R416'),
(679, 'Rodrigues - Riviere Coco', 'Cite Patate', 'R156'),
(680, 'Rose Belle', 'Chapel', '51806'),
(681, 'Rose- Hill', 'BELLE ROSE 6 CORIOLIS', '72106'),
(682, 'Saint Pierre', 'Helvetia', '81405'),
(683, 'Sebastopol', 'Pellegrin', '42106'),
(684, 'Souillac', 'Lady Barkly', '60806'),
(685, 'St Hubert', 'Cent Gaulettes', '51906'),
(686, 'Surinam', 'Cite EDC 2 Surinam', '60906'),
(687, 'Tamarin', 'La Mivoie', '90906'),
(688, 'Terre Rouge', 'Mamzelle Laure', '21406'),
(689, 'Tombeau Bay', 'Docker''s land', '21706'),
(690, 'Triolet', 'Septieme Mile', '21506'),
(691, 'Trois Boutiques', 'Malakoff', '52006'),
(692, 'Trou aux Biches', 'Morc Future', '22306'),
(693, 'Trou D''Eau Douce', 'Desperoux', '42206'),
(694, 'Vacoas / Floreal', 'Bonne Terre', '73304'),
(695, 'Ville Bague', 'Ville Bague lower', '21607'),
(696, '16eme Mille', 'Morcellement RAMPHUL 1', '52607'),
(697, 'Albion', 'Morc Terre Albion', '91007'),
(698, 'Arsenal', 'Morc. Baie aux Tortues', '21307'),
(699, 'Bambous', 'Mon Repos', '90107'),
(700, 'Beau Bassin ', 'Beau Bassin Center 7', '71507'),
(701, 'Bel Air', 'Morcellement Central', '40107'),
(702, 'Black River', 'La Mivoie', '90607'),
(703, 'Bois Cheri', 'Cooperative', '60207'),
(704, 'Bon Accueil', 'Mission Cross', '40202'),
(705, 'Cap Malheureux', 'Cape Garden', '31705'),
(706, 'Central Flacq', 'Cite Argy', '40607'),
(707, 'Chamarel', 'Societe St Denis', '90407'),
(708, 'Chemin Grenier', 'Camp Goolbar', '60407'),
(709, 'Cottage', 'NHDC', '30207'),
(710, 'Curepipe', 'Commerson', '74407'),
(711, 'D''Epinay', 'Jouvence', '20507'),
(712, 'Eau Coulee , Curepipe', 'Camp Pierrot', '74207'),
(713, 'Flic en Flac', 'Morc Anna 2', '90507'),
(714, 'FOREST - SIDE', 'CITE JOACHIM', '74406'),
(715, 'G.R.S.E', 'Morc VRS', '40907'),
(716, 'Goodlands', 'Domaine du Moulin', '30407'),
(717, 'Grand Bay', 'Camp Huradon', '30509'),
(718, 'Grand Gaube', 'Camp Petrol', '30607'),
(719, 'L''Escalier', 'Cite Longtill', '61407'),
(720, 'La Flora', 'Rioux', '61707'),
(721, 'Le Hochet', 'Morc Motee', '21810'),
(722, 'Long Mountain', 'E.D.C. A', '20807'),
(723, 'Mahebourg', 'Debarcadere', '50807'),
(724, 'Mapou', 'Morc Hiilside', '31807'),
(725, 'Mare D''Albert', 'Morc Gokool', '51007'),
(726, 'Mare Tabac', 'Jugoo Bhunjun', '51107'),
(727, 'Moka', 'Camp Samy', '80806'),
(728, 'New Grove', 'Cite NHDC', '51207'),
(729, 'Notre Dame', 'Morc.La Rochelle', '22005'),
(730, 'Nouvelle France', 'Morc B.Climat', '51307'),
(731, 'Olivia', 'la Nourrice', '41407'),
(732, 'Pamplemousses', 'Canton Nancy', '21004'),
(733, 'Petit Raffray', 'Morc Gowreesunkur 2', '30707'),
(734, 'Petite Riviere', 'Morc Gros Cailloux', '90807'),
(735, 'Phoenix', 'Camp Fouquereaux 2', '73607'),
(736, 'Piton', 'Mon Piton', '30807'),
(737, 'Plaine des Papayes', 'Morc Chummun', '21207'),
(738, 'Plaine Magnien', 'Cite EDC Balance', '51507'),
(739, 'Pointe aux Sables', 'Kensington', '11107'),
(740, 'Poste de Flacq', 'Cremation', '41507'),
(741, 'Quartier Militaire', 'Vuillemin', '81107'),
(742, 'QUATRE BORNES', 'BOUNDARY', '72310'),
(743, 'Riviere des Anguilles', 'MORC ROUNTREE(land)', '60602'),
(744, 'Riviere du Rempart', 'Bois Jacquot', '31402'),
(745, 'Roches Noires', 'Roches Noires Village', '31206'),
(746, 'Rodrigues - Grand Montagne', 'Brul', 'R647'),
(747, 'Rodrigues - La Ferme', 'Bassin Boeuf', 'R136'),
(748, 'Rodrigues - Mont Lubin', 'Chateau D''Eau', 'R627'),
(749, 'Rodrigues - Port Mathurin', 'Baie Lascars', 'R517'),
(750, 'Rodrigues - Riviere Coco', 'Corail vangassaille', 'R158'),
(751, 'Rose Belle', 'Cite Balisson (SILWF)', '52107'),
(752, 'Rose- Hill', 'BELLE ROSE 7', '72107'),
(753, 'Saint Pierre', 'Industrial Zone-Old Post Office', '81406'),
(754, 'Sebastopol', 'Sebastopol', '42107'),
(755, 'Souillac', 'Morc Brise de Mer', '60807'),
(756, 'St Hubert', 'Cite CHA', '51907'),
(757, 'Surinam', 'Coastal/mandir', '60907'),
(758, 'Tamarin', 'La Tourelle', '90907'),
(759, 'Terre Rouge', 'Morc Bussawon', '21407'),
(760, 'Tombeau Bay', 'Elizabethville', '21707'),
(761, 'Triolet', 'Solitude', '21507'),
(762, 'Trois Boutiques', 'Morc Pitchen', '52009'),
(763, 'Trou aux Biches', 'Morc Hossen', '22307'),
(764, 'Trou D''Eau Douce', 'La Pelouse', '42207'),
(765, 'Vacoas / Floreal', 'Camp Belin', '73105'),
(766, 'Ville Bague', 'Ville Bague upper', '21606'),
(767, '16eme Mille', 'Morcellement RAMPHUL 2', '52608'),
(768, 'Albion', 'Splendid View', '91008'),
(769, 'Arsenal', 'Morc. Le Vieux Banian', '21308'),
(770, 'Bambous', 'Morc Eaux Bonnes', '90108'),
(771, 'Beau Bassin ', 'Belle Etoile', '71601'),
(772, 'Bel Air', 'Morcellement La Cheminee', '40108'),
(773, 'Black River', 'La Preneuse', '90608'),
(774, 'Bois Cheri', 'Heerallal Rd', '60208'),
(775, 'Bon Accueil', 'Off Beau Bois/Vrindavan', '43302'),
(776, 'Cap Malheureux', 'Cayeux', '31707'),
(777, 'Central Flacq', 'Cite Hibiscus', '40608'),
(778, 'Chamarel', 'Ste Anne', '90408'),
(779, 'Chemin Grenier', 'Camp Jeannette', '60408'),
(780, 'Curepipe', 'E. Laurent', '74208'),
(781, 'D''Epinay', 'Le Plessis Mount', '20508'),
(782, 'Eau Coulee , Curepipe', 'Camp Rouillard', '74208'),
(783, 'Flic en Flac', 'Morc Bismic', '90508'),
(784, 'FOREST - SIDE', 'CITE LA BRASSERIE', '74508'),
(785, 'G.R.S.E', 'Quartier', '40908'),
(786, 'Goodlands', 'Madame Azor', '30408'),
(787, 'Grand Bay', 'Camp Lamour', '30511'),
(788, 'Grand Gaube', 'Cite EDC', '30609'),
(789, 'L''Escalier', 'Cite Paul & Virginie', '61408'),
(790, 'La Flora', 'Seebaruth Rd', '61708'),
(791, 'Le Hochet', 'Morc. Foondun', '21806'),
(792, 'Long Mountain', 'E.D.C. B', '20808'),
(793, 'Mahebourg', 'Hospital', '50808'),
(794, 'Mapou', 'NHDC', '31808'),
(795, 'Mare D''Albert', 'Morc Grove', '51008'),
(796, 'Mare Tabac', 'Mare Tabac', '51108'),
(797, 'Moka', 'Chantenay', '80807'),
(798, 'New Grove', 'Deux Bras', '51208'),
(799, 'Notre Dame', 'N.H.D.C Baillache', '22009'),
(800, 'Nouvelle France', 'N.France', '51309'),
(801, 'Olivia', 'Louis Renaud', '41408'),
(802, 'Pamplemousses', 'Cite E.D.C', '21008'),
(803, 'Petit Raffray', 'Morc Harrangee', '30708'),
(804, 'Petite Riviere', 'Petite Riviere', '90808'),
(805, 'Phoenix', 'Camp Fouquereaux 3', '73608'),
(806, 'Piton', 'Morc Le Haut Champs', '30808'),
(807, 'Plaine des Papayes', 'Morc Dauhoo', '21208'),
(808, 'Plaine Magnien', 'La Cambuse', '51508'),
(809, 'Pointe aux Sables', 'La Tour Koenig Industrial Zone', '11109'),
(810, 'Poste de Flacq', 'Debarcadere', '41508'),
(811, 'QUATRE BORNES', 'CANDOS', '72211'),
(812, 'Riviere des Anguilles', 'PRUD''HOMME', '60603'),
(813, 'Riviere du Rempart', 'Bois Mourand', '31403'),
(814, 'Roches Noires', 'Sidine', '31208'),
(815, 'Rodrigues - Grand Montagne', 'Carrefour', 'R348'),
(816, 'Rodrigues - La Ferme', 'Camp Pintade', 'R137'),
(817, 'Rodrigues - Mont Lubin', 'Citron Donis', 'R228'),
(818, 'Rodrigues - Port Mathurin', 'Baladirou', 'R518'),
(819, 'Rodrigues - Riviere Coco', 'CorailÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â  Petite Butte', 'R157'),
(820, 'Rose Belle', 'Cite EDC', '51808'),
(821, 'Rose- Hill', 'BELLE ROSE 8', '72108'),
(822, 'Saint Pierre', 'Kendra', '81407'),
(823, 'Souillac', 'Morc GRIS GRIS', '60808'),
(824, 'St Hubert', 'Cite St Hilaire', '51908'),
(825, 'Surinam', 'Katamaraz', '60908'),
(826, 'Tamarin', 'Morc Black Rock', '90908'),
(827, 'Terre Rouge', 'Morc Peerun', '21410'),
(828, 'Tombeau Bay', 'Industrial Zone', '21708'),
(829, 'Triolet', 'Terminus', '21508'),
(830, 'Trois Boutiques', 'Morc. Aspirale', '52007'),
(831, 'Trou aux Biches', 'Morc Jhuboo', '22308'),
(832, 'Trou D''Eau Douce', 'Le Maho', '42208'),
(833, 'Vacoas / Floreal', 'Camp Mapou', '73106'),
(834, '16eme Mille', 'Seizieme mile', '52609'),
(835, 'Albion', 'Splendid Village', '91009'),
(836, 'Arsenal', 'Morc. Royal Park', '20106'),
(837, 'Bambous', 'Vaudagne', '90109'),
(838, 'Beau Bassin ', 'Belvedere', '71602'),
(839, 'Bel Air', 'Morcellement Pont Lardier', '40109'),
(840, 'Black River', 'La Tourelle View', '90609'),
(841, 'Bois Cheri', 'Mambahal', '60209'),
(842, 'Bon Accueil', 'Quatre Bords', '40208'),
(843, 'Cap Malheureux', 'Cite EDC', '31709'),
(844, 'Central Flacq', 'Constance S.E', '40609'),
(845, 'Chamarel', 'Terre 7 Couleurs', '90409'),
(846, 'Chemin Grenier', 'Camp Lilas', '60409'),
(847, 'Curepipe', 'Flat Lotus', '74309'),
(848, 'D''Epinay', 'Mme Cayeux', '20515'),
(849, 'Eau Coulee , Curepipe', 'Castel', '74109'),
(850, 'Flic en Flac', 'Morc de Chazal', '90509'),
(851, 'FOREST - SIDE', 'CITE ST LUC', '74409'),
(852, 'Goodlands', 'Mamzelle Jeanne (Wlk II) & (Wlk III)', '30409'),
(853, 'Grand Bay', 'Chemin Vingt Pied', '30513'),
(854, 'Grand Gaube', 'Citerne', '30608'),
(855, 'L''Escalier', 'L''Escalier', '61412'),
(856, 'Le Hochet', 'Morc. Goolamally 1', '21807'),
(857, 'Long Mountain', 'L''Industrie', '20810'),
(858, 'Mahebourg', 'Ile aux deux cocos', '50809'),
(859, 'Mare D''Albert', 'Morc Piscine', '51009'),
(860, 'Mare Tabac', 'Morc SIT', '51109'),
(861, 'Moka', 'Cite Mahatma Gandhi', '80808'),
(862, 'New Grove', 'Deux Bras S.E', '51209'),
(863, 'Notre Dame', 'N.H.D.C.Church', '22010'),
(864, 'Nouvelle France', 'N.H.D.C N.France', '51308'),
(865, 'Olivia', 'Morc Deep River', '41409'),
(866, 'Pamplemousses', 'La Louisa', '21009'),
(867, 'Petit Raffray', 'Morc Loderchand', '30709'),
(868, 'Phoenix', 'Camp Fouquereaux Bch Rd', '73609'),
(869, 'Piton', 'NHDC', '30809'),
(870, 'Plaine des Papayes', 'Morc Koonjoo', '21209'),
(871, 'Plaine Magnien', 'La Grotte', '51509'),
(872, 'Pointe aux Sables', 'La Tour Koenig Phase I & Phase 2', '11108'),
(873, 'Poste de Flacq', 'Jardin', '41509'),
(874, 'QUATRE BORNES', 'CITE BASSIN', '72512'),
(875, 'Riviere des Anguilles', 'RAILWAY', '60606'),
(876, 'Riviere du Rempart', 'Cite C.H.A', '31101'),
(877, 'Rodrigues - Grand Montagne', 'Cascade Victoire', 'R349'),
(878, 'Rodrigues - La Ferme', 'Cascade Jean Louis /Cite', 'R138'),
(879, 'Rodrigues - Mont Lubin', 'Citron Donis', 'R328'),
(880, 'Rodrigues - Port Mathurin', 'Baladirou', 'R618'),
(881, 'Rodrigues - Riviere Coco', 'Grand La Fouche Corail', 'R159'),
(882, 'Rose Belle', 'Cite Padco', '52109'),
(883, 'Rose- Hill', 'BELLE ROSE 9', '72204'),
(884, 'Saint Pierre', 'L''Agrement', '81408'),
(885, 'Souillac', 'NHDC Brise De Mer', '60809'),
(886, 'St Hubert', 'Hydro Power Station', '51909'),
(887, 'Surinam', 'Martiniere', '60909'),
(888, 'Tamarin', 'Morc Carlos', '90910'),
(889, 'Terre Rouge', 'Morc Soobratty', '21413'),
(890, 'Tombeau Bay', 'Le Goulet (Royal Rd)', '21709'),
(891, 'Triolet', 'Trois Boutiques', '21509'),
(892, 'Trois Boutiques', 'Morc. Les Palmiers', '52008'),
(893, 'Trou aux Biches', 'Morc Mascareign', '22309'),
(894, 'Trou D''Eau Douce', 'Montee Bastille', '42209'),
(895, 'Vacoas / Floreal', 'Camp Roches', '73107'),
(896, 'Arsenal', 'Paul & Virginie', '20108'),
(897, 'Beau Bassin ', 'Brown Sequard Hospital', '71401'),
(898, 'Bel Air', 'Petit Bois', '40110'),
(899, 'Black River', 'Les Salines/Morc. Plateau', '90610'),
(900, 'Bois Cheri', 'Morc VRS', '60210'),
(901, 'Cap Malheureux', 'Jardin du Cap', '31710'),
(902, 'Central Flacq', 'Domaine La Colombe', '40610'),
(903, 'Chemin Grenier', 'Florentina', '60410'),
(904, 'Curepipe', 'Flat Mesnil', '74410'),
(905, 'D''Epinay', 'Mon Gout', '20514'),
(906, 'Eau Coulee , Curepipe', 'Cite du Pavillon', '74310'),
(907, 'Flic en Flac', 'Morc Palmyre', '90514'),
(908, 'FOREST - SIDE', 'FLAT CEZANNE', '74410'),
(909, 'Goodlands', 'Mapon Leclezio', '30410'),
(910, 'Grand Bay', 'Cite CHA', '30507'),
(911, 'Grand Gaube', 'Complex Melville No 1', '30611'),
(912, 'L''Escalier', 'La Barraque S.E', '61409'),
(913, 'Le Hochet', 'Morc. Goolamally 2', '21808'),
(914, 'Long Mountain', 'Les Mariannes', '20809'),
(915, 'Mahebourg', 'Mahebourg', '50810'),
(916, 'Mare D''Albert', 'Morc Samlaul', '51010'),
(917, 'Mare Tabac', 'NHDC Mare Tabac', '51110'),
(918, 'Moka', 'Cite Telfair', '80809'),
(919, 'New Grove', 'Gros Billot', '51210'),
(920, 'Notre Dame', 'N.H.D.C.Valton', '22011'),
(921, 'Nouvelle France', 'Pont Colville', '51310'),
(922, 'Olivia', 'Morc Hamid', '41410'),
(923, 'Pamplemousses', 'Mon Plaisir', '21010'),
(924, 'Petit Raffray', 'Moulin au vent', '30710'),
(925, 'Phoenix', 'Camp Hosany', '73610'),
(926, 'Plaine des Papayes', 'Morc Ramphul', '21210'),
(927, 'Plaine Magnien', 'Le Chaland', '51510'),
(928, 'Pointe aux Sables', 'Marguerite Phase 1', '11110'),
(929, 'Poste de Flacq', 'Kashinath', '41510'),
(930, 'QUATRE BORNES', 'CITE BEAU SEJOUR/Residence', '72313'),
(931, 'Riviere des Anguilles', 'RAILWAY SQUARE', '61802'),
(932, 'Riviere du Rempart', 'Cite EDC', '31102'),
(933, 'Rodrigues - Grand Montagne', 'Coromandel', 'R6410'),
(934, 'Rodrigues - La Ferme', 'Chateau de Fleurs', 'R139'),
(935, 'Rodrigues - Mont Lubin', 'Citronelle', 'R529'),
(936, 'Rodrigues - Port Mathurin', 'Camp Du Roi', 'R419'),
(937, 'Rodrigues - Riviere Coco', 'Grande Var', 'R2510'),
(938, 'Rose Belle', 'Gebert', '51810'),
(939, 'Rose- Hill', 'BELLE ROSE 9', '72109'),
(940, 'Saint Pierre', 'Mont Fleuri', '81409'),
(941, 'Souillac', 'Souillac', '60810'),
(942, 'St Hubert', 'Le Val Nature Park', '51910'),
(943, 'Surinam', 'Morc Dhunputh', '60910'),
(944, 'Tamarin', 'Morc Corail', '90911'),
(945, 'Terre Rouge', 'Morc. Cathan', '21408'),
(946, 'Tombeau Bay', 'Morc Beau Rivage', '21710'),
(947, 'Trois Boutiques', 'Plein Bois', '52010'),
(948, 'Trou aux Biches', 'Morc Moosary', '22310'),
(949, 'Trou D''Eau Douce', 'Palmar Beach', '42210'),
(950, 'Vacoas / Floreal', 'Carreau Lalianne', '73108'),
(951, 'Arsenal', 'Petit Gamin', '20109'),
(952, 'Beau Bassin ', 'Camp Berthelot', '71603'),
(953, 'Bel Air', 'Pont Lardier', '40111'),
(954, 'Black River', 'London Complex', '90611'),
(955, 'Bois Cheri', 'Porida', '60211'),
(956, 'Cap Malheureux', 'La Roue Charette', '31711'),
(957, 'Central Flacq', 'Hermitage', '40611'),
(958, 'Chemin Grenier', 'Jooloom', '60411'),
(959, 'Curepipe', 'Flat St. Antoine', '74311'),
(960, 'D''Epinay', 'Mon Plaisir Mount', '20509'),
(961, 'Eau Coulee , Curepipe', 'Cite Malherbes B', '74311'),
(962, 'Flic en Flac', 'Morc Safeland 1', '90511'),
(963, 'FOREST - SIDE', 'FLAT RAMDENEE', '74511'),
(964, 'Goodlands', 'Morc Petit Village', '30411'),
(965, 'Grand Bay', 'Cite EDC', '30506'),
(966, 'Grand Gaube', 'Complex Melville No 2', '30612'),
(967, 'L''Escalier', 'La Chapelle', '61410'),
(968, 'Le Hochet', 'Morc. Raffray 2', '21812'),
(969, 'Long Mountain', 'Morc. Baillache', '20811'),
(970, 'Mahebourg', 'Maurice st', '50811'),
(971, 'Mare D''Albert', 'Morc Toolsee', '51011'),
(972, 'Moka', 'Gentilly', '80810'),
(973, 'New Grove', 'Gros Billot Branch', '51211'),
(974, 'Notre Dame', 'Notre Dame', '22008'),
(975, 'Nouvelle France', 'Residence U.Park', '51311'),
(976, 'Olivia', 'Morc Louis Renaud', '41411'),
(977, 'Pamplemousses', 'Mon Rocher', '21012'),
(978, 'Petit Raffray', 'Petit Raffray Village 1', '30711'),
(979, 'Phoenix', 'Castel', '73611'),
(980, 'Plaine des Papayes', 'Morc Seebundhun', '21211'),
(981, 'Plaine Magnien', 'Madame Dayla', '51511'),
(982, 'Pointe aux Sables', 'Morcellement D''Hotman', '11111'),
(983, 'Poste de Flacq', 'La Pointe', '41511'),
(984, 'QUATRE BORNES', 'CITE CANDOS/Residence', '72314'),
(985, 'Riviere des Anguilles', 'SENNEVILLE', '60601'),
(986, 'Riviere du Rempart', 'Coquinbourg', '31103'),
(987, 'Rodrigues - Grand Montagne', 'Dans Azie', 'R6411'),
(988, 'Rodrigues - La Ferme', 'Citadelle', 'R2310'),
(989, 'Rodrigues - Mont Lubin', 'Dans Bebe', 'R5210'),
(990, 'Rodrigues - Port Mathurin', 'Camp Du Roi', 'R519'),
(991, 'Rodrigues - Riviere Coco', 'Ile Michel', 'R2511'),
(992, 'Rose Belle', 'Le Vieux Moulin', '51812'),
(993, 'Rose- Hill', 'CAMP LEVIEUX 1', '71203'),
(994, 'Saint Pierre', 'Morc Frangipanne Phase 2', '81410'),
(995, 'Souillac', 'Terracine', '60811'),
(996, 'St Hubert', 'Morc Dussoye', '51911'),
(997, 'Surinam', 'Morc DIDI', '60911'),
(998, 'Tamarin', 'Morc Investors', '90912'),
(999, 'Terre Rouge', 'Morc. Green Park', '21409'),
(1000, 'Tombeau Bay', 'Morc Boucan', '21711'),
(1001, 'Trois Boutiques', 'Trois Boutiques', '52011'),
(1002, 'Trou aux Biches', 'Morc Papin', '22311'),
(1003, 'Trou D''Eau Douce', 'Sept Croisees(inc Montaigu)', '42211'),
(1004, 'Vacoas / Floreal', 'Cite EDC', '74103'),
(1005, 'Arsenal', 'Riviere Citron', '20110'),
(1006, 'Beau Bassin ', 'Cascadella', '71508'),
(1007, 'Bel Air', 'Saint Michel', '40112'),
(1008, 'Black River', 'Martello Complex', '90612'),
(1009, 'Bois Cheri', 'Residence Bois Cheri', '60212'),
(1010, 'Cap Malheureux', 'Mariamen Temple', '31712'),
(1011, 'Central Flacq', 'La Source', '40612'),
(1012, 'Chemin Grenier', 'Jumbo', '60412'),
(1013, 'Curepipe', 'Galeries Y. Palach', '74412'),
(1014, 'D''Epinay', 'Monc V.R.S', '20513'),
(1015, 'Eau Coulee , Curepipe', 'Cite MalherbesA', '74312'),
(1016, 'Flic en Flac', 'Morc Safeland 2', '90512'),
(1017, 'FOREST - SIDE', 'FORST- SIDE 1', '74512'),
(1018, 'Goodlands', 'Morc St Antoine', '30412'),
(1019, 'Grand Bay', 'Cite Lumiere', '30508'),
(1020, 'Grand Gaube', 'Complex Melville No 3', '30613'),
(1021, 'L''Escalier', 'La Sourdine', '61411'),
(1022, 'Le Hochet', 'Morc.Raffray 1', '21811'),
(1023, 'Long Mountain', 'Morc. Nouvelle', '20812'),
(1024, 'Mahebourg', 'Morc. Lorette', '50812'),
(1025, 'Mare D''Albert', 'Rampe Le Moirt', '51012'),
(1026, 'Moka', 'Gentilly Estate (new morc MDA)', '80811'),
(1027, 'New Grove', 'Kalimaye', '51212'),
(1028, 'Notre Dame', 'Platform', '22012'),
(1029, 'Nouvelle France', 'Savanne Rd', '51312'),
(1030, 'Olivia', 'Morc Trois Ilots', '41412'),
(1031, 'Pamplemousses', 'Monc. Ripaille', '21011'),
(1032, 'Petit Raffray', 'Petit Raffray Village 2', '30712'),
(1033, 'Phoenix', 'Cinq Arpents', '73612'),
(1034, 'Plaine des Papayes', 'Morc VRS', '21212'),
(1035, 'Plaine Magnien', 'Mon desert Rd', '51512'),
(1036, 'Pointe aux Sables', 'Morcellement Fon Sing', '11112'),
(1037, 'Poste de Flacq', 'La Porte', '41512'),
(1038, 'QUATRE BORNES', 'CITE KENNEDY/Residence', '72515'),
(1039, 'Riviere du Rempart', 'Desjardins', '30105'),
(1040, 'Rodrigues - Grand Montagne', 'Decide', 'R6412'),
(1041, 'Rodrigues - La Ferme', 'Citrons', 'R2311'),
(1042, 'Rodrigues - Mont Lubin', 'Dans Begue', 'R3211'),
(1043, 'Rodrigues - Port Mathurin', 'Caverne Provert', 'R5110'),
(1044, 'Rodrigues - Riviere Coco', 'Parc Tortue', 'R3512'),
(1045, 'Rose Belle', 'Letord', '51811'),
(1046, 'Rose- Hill', 'CAMP LEVIEUX 2', '72204'),
(1047, 'Saint Pierre', 'Morc Frangipanne Phase 3', '81411'),
(1048, 'Souillac', 'VRS 1 souillac', '60812'),
(1049, 'St Hubert', 'Morc Henry', '51912'),
(1050, 'Surinam', 'Morc Gobin', '60912'),
(1051, 'Tamarin', 'Morc Le Domain', '90913'),
(1052, 'Terre Rouge', 'Morc. Ragoobar', '21412'),
(1053, 'Tombeau Bay', 'Morc Concorde', '21712'),
(1054, 'Trois Boutiques', 'Union Vale', '52012'),
(1055, 'Trou aux Biches', 'Morc Ramdewar', '22312'),
(1056, 'Trou D''Eau Douce', 'Touessrock/Casuarina', '42212'),
(1057, 'Vacoas / Floreal', 'Cite Henriette', '73109'),
(1058, 'Arsenal', 'St Joseph', '20111'),
(1059, 'Beau Bassin ', 'Cascadelle', '71509'),
(1060, 'Black River', 'Matala Villa', '90613'),
(1061, 'Bois Cheri', 'Seeruttun Rd', '60213'),
(1062, 'Cap Malheureux', 'Morc Agnis Ph 2', '31713'),
(1063, 'Central Flacq', 'Morc Argy', '40613'),
(1064, 'Chemin Grenier', 'Lotus', '60413'),
(1065, 'Curepipe', 'Garden', '74213'),
(1066, 'D''Epinay', 'Monc. Juwaheer', '20512');
INSERT INTO `citycode` (`id`, `c1`, `c2`, `pcode`) VALUES
(1067, 'Eau Coulee , Curepipe', 'Cite Rivet', '74313'),
(1068, 'Flic en Flac', 'Morc Safeland 3', '90513'),
(1069, 'FOREST - SIDE', 'FORST- SIDE 2,3,4,5', '74513'),
(1070, 'Goodlands', 'Mosque Sq', '30413'),
(1071, 'Grand Bay', 'Coastal Rd', '30510'),
(1072, 'Grand Gaube', 'Complex Melville No 4', '30614'),
(1073, 'L''Escalier', 'Morc Barbe', '61413'),
(1074, 'Le Hochet', 'Riche Terre', '21813'),
(1075, 'Long Mountain', 'Robinson (Left Side)', '20813'),
(1076, 'Mahebourg', 'Museum', '50813'),
(1077, 'Moka', 'Les Allees d''Helvetia 1', '80840'),
(1078, 'New Grove', 'La Rosa', '51213'),
(1079, 'Nouvelle France', 'Seegoolam Rd', '51313'),
(1080, 'Olivia', 'Morc VRS Kewal Nagar', '41413'),
(1081, 'Pamplemousses', 'Monc.Maison Blanche', '21013'),
(1082, 'Petit Raffray', 'Reunion Maurel', '30713'),
(1083, 'Phoenix', 'Cite 50', '73613'),
(1084, 'Plaine des Papayes', 'P.Papayes East', '21213'),
(1085, 'Plaine Magnien', 'Morc Gobin', '51513'),
(1086, 'Pointe aux Sables', 'Morcellement Fortune', '11113'),
(1087, 'Poste de Flacq', 'Long Beach Hotel(ex Coco)', '41601'),
(1088, 'QUATRE BORNES', 'CITE PERE LAVAL', '72317'),
(1089, 'Riviere du Rempart', 'Haute Rive', '31104'),
(1090, 'Rodrigues - Grand Montagne', 'Grande Montagne', 'R6413'),
(1091, 'Rodrigues - La Ferme', 'Corail', 'R1312'),
(1092, 'Rodrigues - Mont Lubin', 'Deux Goyaves', 'R5212'),
(1093, 'Rodrigues - Port Mathurin', 'Creve Coeur', 'R5111'),
(1094, 'Rodrigues - Riviere Coco', 'Petite Butte', 'R2513'),
(1095, 'Rose Belle', 'Madame Lolo', '51813'),
(1096, 'Rose- Hill', 'CITE CORP DE GARDE', '71205'),
(1097, 'Saint Pierre', 'Morc MDA circonstance', '81412'),
(1098, 'Souillac', 'VRS 2 souillac', '60813'),
(1099, 'St Hubert', 'Riche en Eau', '51913'),
(1100, 'Surinam', 'NHDC Filao', '60913'),
(1101, 'Tamarin', 'Morc Les Alizees', '90914'),
(1102, 'Terre Rouge', 'Morc. Tara', '21414'),
(1103, 'Tombeau Bay', 'Morc Coprim', '21713'),
(1104, 'Trois Boutiques', 'Virginia', '52013'),
(1105, 'Trou aux Biches', 'Morc Ramdhany', '22313'),
(1106, 'Trou D''Eau Douce', 'Victoria', '42213'),
(1107, 'Vacoas / Floreal', 'Cite La Caverne', '73310'),
(1108, 'Beau Bassin ', 'Central Prison', '71402'),
(1109, 'Black River', 'Morc Carlos', '90614'),
(1110, 'Bois Cheri', 'Tivoli', '60214'),
(1111, 'Cap Malheureux', 'Morc Chetty 1', '31714'),
(1112, 'Central Flacq', 'Morc Hospital', '40614'),
(1113, 'Chemin Grenier', 'Mont Carmel', '60414'),
(1114, 'Curepipe', 'Higginson', '74414'),
(1115, 'D''Epinay', 'Monc. Le Plessis', '20510'),
(1116, 'Eau Coulee , Curepipe', 'Cite Souchon', '74314'),
(1117, 'Flic en Flac', 'Mouettes', '90510'),
(1118, 'FOREST - SIDE', 'HENRI ROBERT-north (WARD 2)', '74514'),
(1119, 'Goodlands', 'New Morc Goodlands', '30414'),
(1120, 'Grand Bay', 'Dodo Square', '30514'),
(1121, 'Grand Gaube', 'Complex Paul et Virginie', '30610'),
(1122, 'L''Escalier', 'Morc La Sourdine', '61414'),
(1123, 'Le Hochet', 'Riche Terre Ind Zone', '21814'),
(1124, 'Long Mountain', 'Valton', '20814'),
(1125, 'Mahebourg', 'Pointe Canon', '50814'),
(1126, 'Moka', 'Les Allees d''Helvetia 2', '80838'),
(1127, 'New Grove', 'Mare Chicose', '51214'),
(1128, 'Olivia', 'Olivia', '41414'),
(1129, 'Pamplemousses', 'Pamplemousses', '21014'),
(1130, 'Petit Raffray', 'St Francois', '30714'),
(1131, 'Phoenix', 'Clairfonds 1', '73514'),
(1132, 'Plaine des Papayes', 'P.Papayes West', '21214'),
(1133, 'Plaine Magnien', 'Morc Ithier', '51514'),
(1134, 'Pointe aux Sables', 'Morcellement Ghurburrun Ph 1 Brunes Pailles Phase 2', '11114'),
(1135, 'Poste de Flacq', 'Morc Constance', '41513'),
(1136, 'QUATRE BORNES', 'CITE SAINT JEAN', '72218'),
(1137, 'Riviere du Rempart', 'La Clemence', '31105'),
(1138, 'Rodrigues - Grand Montagne', 'Graviers', 'R6414'),
(1139, 'Rodrigues - La Ferme', 'Dans Samy', 'R2313'),
(1140, 'Rodrigues - Mont Lubin', 'Eau Claire', 'R3213'),
(1141, 'Rodrigues - Port Mathurin', 'Fond Accacia', 'R4112'),
(1142, 'Rodrigues - Riviere Coco', 'Petite Butte', 'R1513'),
(1143, 'Rose Belle', 'Marie Jeannie', '51814'),
(1144, 'Rose- Hill', 'ESPACE CONCORDE (C.levieux)', '71207'),
(1145, 'Saint Pierre', 'Morc Merrytown', '81413'),
(1146, 'St Hubert', 'St Hilaire', '51914'),
(1147, 'Surinam', 'Pomponette', '60914'),
(1148, 'Tamarin', 'Morc Les Salines', '90915'),
(1149, 'Terre Rouge', 'Morc.Poonith', '21411'),
(1150, 'Tombeau Bay', 'Morc Dassagne', '21714'),
(1151, 'Trou aux Biches', 'Morc Residence', '22314'),
(1152, 'Vacoas / Floreal', 'Cite Loiseau', '74104'),
(1153, 'Beau Bassin ', 'Chebel', '71604'),
(1154, 'Black River', 'Morc Filature', '90615'),
(1155, 'Cap Malheureux', 'Morc Chetty 2', '31715'),
(1156, 'Central Flacq', 'Morc Robillard', '40615'),
(1157, 'Chemin Grenier', 'Morc Dunputh', '60415'),
(1158, 'Curepipe', 'Ian Palach', '74415'),
(1159, 'D''Epinay', 'Monc. Mount', '20511'),
(1160, 'Eau Coulee , Curepipe', 'Clement Charoux', '74315'),
(1161, 'Flic en Flac', 'Residence St Jacques', '90515'),
(1162, 'FOREST - SIDE', 'ICERY', '74215'),
(1163, 'Goodlands', 'Petit Village', '30415'),
(1164, 'Grand Bay', 'La Croisette', '30517'),
(1165, 'Grand Gaube', 'Couacaud', '30615'),
(1166, 'L''Escalier', 'Morc Tagore', '61415'),
(1167, 'Le Hochet', 'Terre Rouge (village)', '21815'),
(1168, 'Mahebourg', 'Pointe D''Esny', '50815'),
(1169, 'Moka', 'Les Allees d''Helvetia 3', '80839'),
(1170, 'New Grove', 'Mont Fertille', '51215'),
(1171, 'Olivia', 'Plaines Bananes', '41415'),
(1172, 'Pamplemousses', 'Riviere Citron', '21015'),
(1173, 'Petit Raffray', 'Union Daruty', '30715'),
(1174, 'Phoenix', 'Clairfonds 2', '73516'),
(1175, 'Plaine des Papayes', 'Theo Maigrot Sq', '21215'),
(1176, 'Plaine Magnien', 'NHDC les Palmiers', '51515'),
(1177, 'Pointe aux Sables', 'Morcellement Ibrahim Dawood', '11115'),
(1178, 'Poste de Flacq', 'Morc Janoo', '41514'),
(1179, 'QUATRE BORNES', 'DREAMTON PARK', '72219'),
(1180, 'Riviere du Rempart', 'Maurel', '31106'),
(1181, 'Rodrigues - Grand Montagne', 'Grenade', 'R6415'),
(1182, 'Rodrigues - La Ferme', 'Dans Samy', 'R4313'),
(1183, 'Rodrigues - Mont Lubin', 'Eau Vannee', 'R3214'),
(1184, 'Rodrigues - Port Mathurin', 'Fond La Digue', 'R5113'),
(1185, 'Rodrigues - Riviere Coco', 'Plaine Cite Patate', 'R1515'),
(1186, 'Rose Belle', 'Mon Rose 1', '51816'),
(1187, 'Rose- Hill', 'FLAT ABDOOLAH', '71308'),
(1188, 'Saint Pierre', 'Morc Raffray', '81414'),
(1189, 'St Hubert', 'St Hubert', '51915'),
(1190, 'Surinam', 'Riambel', '60915'),
(1191, 'Tamarin', 'Morc Salt Pan', '90916'),
(1192, 'Terre Rouge', 'St Joseph', '21415'),
(1193, 'Tombeau Bay', 'Morc Filature', '21715'),
(1194, 'Trou aux Biches', 'Morc Sagitaire', '22315'),
(1195, 'Vacoas / Floreal', 'Cite Mangalkhan', '74105'),
(1196, 'Beau Bassin ', 'Cite Barkly', '71403'),
(1197, 'Black River', 'Morc Majo', '90616'),
(1198, 'Cap Malheureux', 'Morc Chetty 3', '31716'),
(1199, 'Central Flacq', 'Nehru Nagar', '40616'),
(1200, 'Chemin Grenier', 'Mosque Rd', '60416'),
(1201, 'Curepipe', 'L.Geoffroy', '74517'),
(1202, 'D''Epinay', 'The Mount', '20516'),
(1203, 'Eau Coulee , Curepipe', 'Couvent De Lorette Road', '74316'),
(1204, 'Flic en Flac', 'Sand Hotel', '90516'),
(1205, 'FOREST - SIDE', 'L''OKANA', '74416'),
(1206, 'Goodlands', 'Plateau', '30416'),
(1207, 'Grand Bay', 'La Mare Ronde', '30518'),
(1208, 'Grand Gaube', 'Germain', '30616'),
(1209, 'L''Escalier', 'Savannah', '61416'),
(1210, 'Mahebourg', 'Pte des Regates', '50816'),
(1211, 'Moka', 'Martindale', '80833'),
(1212, 'New Grove', 'Morc Balance', '51216'),
(1213, 'Olivia', 'Rousset Rd (olivia)', '41416'),
(1214, 'Pamplemousses', 'S.S.R.N.Hospital', '21017'),
(1215, 'Petit Raffray', 'Union Delcourt', '30716'),
(1216, 'Phoenix', 'Clairfonds 3', '73515'),
(1217, 'Plaine Magnien', 'Plaine Magnien', '51516'),
(1218, 'Pointe aux Sables', 'Morcellement Ilois Phase 1 & Phase 2', '11116'),
(1219, 'Poste de Flacq', 'Morc Monet', '41515'),
(1220, 'QUATRE BORNES', 'EBENE VIEWS (after river inc baden powell house)', '72231'),
(1221, 'Riviere du Rempart', 'Mon Loisir', '30107'),
(1222, 'Rodrigues - Grand Montagne', 'Montagne Bois Noir', 'R3416'),
(1223, 'Rodrigues - La Ferme', 'Deux Montagnes', 'R2314'),
(1224, 'Rodrigues - Mont Lubin', 'Lataniers', 'R3215'),
(1225, 'Rodrigues - Port Mathurin', 'Grand Baie', 'R5114'),
(1226, 'Rodrigues - Riviere Coco', 'Plaine Coco', 'R1514'),
(1227, 'Rose Belle', 'Mon Rose 2', '51817'),
(1228, 'Rose- Hill', 'FLAT BADAMIERS', '71309'),
(1229, 'Saint Pierre', 'Morc Traffic Centre', '81415'),
(1230, 'St Hubert', 'Ste Madeleine', '51916'),
(1231, 'Surinam', 'Rochester/Mosque', '60916'),
(1232, 'Tamarin', 'Morc. La Falaise', '90917'),
(1233, 'Terre Rouge', 'Terre Rouge', '21416'),
(1234, 'Tombeau Bay', 'Morc Fong Sing', '21716'),
(1235, 'Trou aux Biches', 'Morc Souvenir', '22316'),
(1236, 'Vacoas / Floreal', 'Clairfonds No.1', '73411'),
(1237, 'Beau Bassin ', 'Cite CHEBEC', '71607'),
(1238, 'Black River', 'Morc Mont Calme', '90617'),
(1239, 'Cap Malheureux', 'Morc Garrib', '31717'),
(1240, 'Central Flacq', 'Plaine De Gersigny', '40617'),
(1241, 'Chemin Grenier', 'New Mosque', '60417'),
(1242, 'Curepipe', 'Les Casernes', '74216'),
(1243, 'Eau Coulee , Curepipe', 'Cpe Rd (Dove st-De sornay st)', '74217'),
(1244, 'Flic en Flac', 'Sofitel Hotel', '90517'),
(1245, 'FOREST - SIDE', 'LA BASSERIE (north)', '74422'),
(1246, 'Goodlands', 'Railway Sq', '30417'),
(1247, 'Grand Bay', 'Les Bougainvilliers', '30516'),
(1248, 'Grand Gaube', 'Grand Gaube', '30617'),
(1249, 'L''Escalier', 'Savannah S.E', '61417'),
(1250, 'Mahebourg', 'Pte Jerome', '50817'),
(1251, 'Moka', 'Mauritius Broadcasting Corporation( M B C )', '80812'),
(1252, 'New Grove', 'Morc Dreepaul', '51217'),
(1253, 'Olivia', 'SILWF - Olivia', '41417'),
(1254, 'Pamplemousses', 'Sixth Mile', '21016'),
(1255, 'Phoenix', 'Closel', '73417'),
(1256, 'Plaine Magnien', 'Rishi dayanand Rd', '51517'),
(1257, 'Pointe aux Sables', 'Morcellement Koenig/sur mer', '11117'),
(1258, 'Poste de Flacq', 'Morc Providence', '41516'),
(1259, 'QUATRE BORNES', 'EMERALD PARK (Residence)', '72222'),
(1260, 'Riviere du Rempart', 'Mon. Allybocus', '30106'),
(1261, 'Rodrigues - Grand Montagne', 'Montagne Cabri Est', 'R6417'),
(1262, 'Rodrigues - La Ferme', 'Eau Verte', 'R1315'),
(1263, 'Rodrigues - Mont Lubin', 'Malabar', 'R5216'),
(1264, 'Rodrigues - Port Mathurin', 'Jardin Mamzelle', 'R4115'),
(1265, 'Rodrigues - Riviere Coco', 'Plaine Corail', 'R1516'),
(1266, 'Rose Belle', 'Mongelard', '51815'),
(1267, 'Rose- Hill', 'FLAT BHUNJUN (village de la montagne)', '71210'),
(1268, 'Saint Pierre', 'Morc VRS 1', '81416'),
(1269, 'St Hubert', 'Ste Philomene', '51917'),
(1270, 'Surinam', 'Saint Louis', '60917'),
(1271, 'Tamarin', 'Morc. Mont Calme', '90909'),
(1272, 'Tombeau Bay', 'Morc Illois', '21717'),
(1273, 'Trou aux Biches', 'Morc Tobago', '22317'),
(1274, 'Vacoas / Floreal', 'Clairfonds No.2', '73412'),
(1275, 'Beau Bassin ', 'Cite Chebel 1', '71605'),
(1276, 'Black River', 'Morc Paul Hein', '90618'),
(1277, 'Cap Malheureux', 'Morc Merven', '31718'),
(1278, 'Central Flacq', 'Riche Mare', '40618'),
(1279, 'Chemin Grenier', 'Plaine des Galets', '60418'),
(1280, 'Curepipe', 'Malartic', '74418'),
(1281, 'Eau Coulee , Curepipe', 'Daruty De Grand Pre 1', '74218'),
(1282, 'Flic en Flac', 'Souffleurs', '90518'),
(1283, 'FOREST - SIDE', 'lA BASSERIE (south)', '74537'),
(1284, 'Goodlands', 'Reservoir', '30418'),
(1285, 'Grand Bay', 'Les Flamants', '30519'),
(1286, 'Grand Gaube', 'John Kennedy', '30618'),
(1287, 'Mahebourg', 'Quartier', '50818'),
(1288, 'Moka', 'Mauritius Examination Syndicate ( M. E. S )', '80834'),
(1289, 'New Grove', 'Morc Ganga', '51218'),
(1290, 'Olivia', 'Trois Ilots', '41418'),
(1291, 'Phoenix', 'Flat River Islands', '73518'),
(1292, 'Plaine Magnien', 'Ruisseau Copeaux', '51518'),
(1293, 'Pointe aux Sables', 'Morcellement Le Prinmtemps', '11118'),
(1294, 'Poste de Flacq', 'One and only (st Geran Hotel)', '41521'),
(1295, 'QUATRE BORNES', 'EMERALD PARK CENTRE', '72262'),
(1296, 'Riviere du Rempart', 'Morc Beauclimat', '31404'),
(1297, 'Rodrigues - Grand Montagne', 'Montagne Cherie', 'R3418'),
(1298, 'Rodrigues - La Ferme', 'Grand La Fouche (Corail)', 'R1316'),
(1299, 'Rodrigues - Mont Lubin', 'Malabar', 'R4216'),
(1300, 'Rodrigues - Port Mathurin', 'Jentac', 'R5116'),
(1301, 'Rodrigues - Riviere Coco', 'Riviere Coco', 'R2517'),
(1302, 'Rose Belle', 'Morc Bakory', '51818'),
(1303, 'Rose- Hill', 'FLAT HOLLYWOOD', '71311'),
(1304, 'Saint Pierre', 'Petit Verger', '81417'),
(1305, 'Surinam', 'Sept Croisees', '60918'),
(1306, 'Tamarin', 'Morc. St. Benoit', '90918'),
(1307, 'Tombeau Bay', 'Morc La Cocheyle', '21718'),
(1308, 'Trou aux Biches', 'Morc Trio', '22318'),
(1309, 'Vacoas / Floreal', 'Clairfonds No.3', '73413'),
(1310, 'Beau Bassin ', 'Cite Chebel 2', '71606'),
(1311, 'Black River', 'Morc Ramdenee', '90619'),
(1312, 'Cap Malheureux', 'Morc Rouillard', '31719'),
(1313, 'Central Flacq', 'Saint Remy', '40619'),
(1314, 'Chemin Grenier', 'PlayGround', '60419'),
(1315, 'Curepipe', 'Malherbes', '74319'),
(1316, 'Eau Coulee , Curepipe', 'Daruty DE Grand Pre 2', '74519'),
(1317, 'Flic en Flac', 'Taj and Mahadhiva Hotel', '90519'),
(1318, 'FOREST - SIDE', 'LA CROIX', '74445'),
(1319, 'Goodlands', 'Soobany Sq', '30419'),
(1320, 'Grand Bay', 'Macumba', '30544'),
(1321, 'Grand Gaube', 'La Lucie Residence', '30619'),
(1322, 'Mahebourg', 'Remy Ollier', '50819'),
(1323, 'Moka', 'Moka Business Centre', '80813'),
(1324, 'New Grove', 'Morc Gaytree', '51219'),
(1325, 'Phoenix', 'Hassen Raffa', '73619'),
(1326, 'Plaine Magnien', 'Solitude', '51519'),
(1327, 'Pointe aux Sables', 'Morcellement Le Vieux', '11119'),
(1328, 'Poste de Flacq', 'Pont Blanc', '41517'),
(1329, 'QUATRE BORNES', 'FLAT RIVER ISLANDS', '72265'),
(1330, 'Riviere du Rempart', 'Mosque Lane', '31107'),
(1331, 'Rodrigues - Grand Montagne', 'Montagne Longue', 'R6419'),
(1332, 'Rodrigues - La Ferme', 'Grand La Fouche (Corail)', 'R2316'),
(1333, 'Rodrigues - Mont Lubin', 'Malartic', 'R4217'),
(1334, 'Rodrigues - Port Mathurin', 'L''Union', 'R4119'),
(1335, 'Rodrigues - Riviere Coco', 'SONGES', 'R3518'),
(1336, 'Rose Belle', 'Morc Boolaky', '51819'),
(1337, 'Rose- Hill', 'FLAT MONMARTRE', '71312'),
(1338, 'Saint Pierre', 'Roselyn Cottage', '81418'),
(1339, 'Surinam', 'Trois Bras', '60919'),
(1340, 'Tamarin', 'Morc. Verojan', '90919'),
(1341, 'Tombeau Bay', 'Morc Le Verger', '21719'),
(1342, 'Trou aux Biches', 'Morc VRS Choisy', '22319'),
(1343, 'Vacoas / Floreal', 'De Burg Edwards', '74106'),
(1344, 'Beau Bassin ', 'Cite De Rosnay', '71510'),
(1345, 'Black River', 'Morc. Diocese', '90620'),
(1346, 'Cap Malheureux', 'Mosque Rd', '31720'),
(1347, 'Chemin Grenier', 'Railway', '60420'),
(1348, 'Curepipe', 'Morc Faucon', '74220'),
(1349, 'Eau Coulee , Curepipe', 'E.Coulee Royal Rd 1', '74220'),
(1350, 'Flic en Flac', 'Tourtereaux', '90520'),
(1351, 'FOREST - SIDE', 'LES AUBINEAUX', '74419'),
(1352, 'Goodlands', 'St Antoine Industrial Zone', '30420'),
(1353, 'Grand Bay', 'Mont Choisy (s.e)', '30525'),
(1354, 'Grand Gaube', 'Morc Agnis Phase 1', '30620'),
(1355, 'Mahebourg', 'Tombeau', '50820'),
(1356, 'Moka', 'MOKA EYE HOSPITAL', '80814'),
(1357, 'New Grove', 'Morc Mauripark', '51220'),
(1358, 'Phoenix', 'Hermitage', '73620'),
(1359, 'Plaine Magnien', 'SSR International Airport', '51520'),
(1360, 'Pointe aux Sables', 'Morcellement Nazroo Phase 1 & Phase 2', '11120'),
(1361, 'Poste de Flacq', 'Poste de Flacq', '41518'),
(1362, 'QUATRE BORNES', 'JACKSON AVE', '72523'),
(1363, 'Riviere du Rempart', 'Panchvati', '31108'),
(1364, 'Rodrigues - Grand Montagne', 'Montagne Malgache', 'R3420'),
(1365, 'Rodrigues - La Ferme', 'Grand La Fouche (Mangue)', 'R1317'),
(1366, 'Rodrigues - Mont Lubin', 'Malartic', 'R3217'),
(1367, 'Rodrigues - Port Mathurin', 'La Bonte', 'R4117'),
(1368, 'Rodrigues - Riviere Coco', 'Tamarin', 'R2519'),
(1369, 'Rose Belle', 'Morc Brito', '51820'),
(1370, 'Rose- Hill', 'FLAT PEM', '71313'),
(1371, 'Saint Pierre', 'Rte Bois Cheri', '81419'),
(1372, 'Tamarin', 'NHDC', '90920'),
(1373, 'Tombeau Bay', 'Morc Madhoo', '21720'),
(1374, 'Trou aux Biches', 'Residence Flebistier', '22320'),
(1375, 'Vacoas / Floreal', 'Diolle', '73114'),
(1376, 'Beau Bassin ', 'Cite Vuillemin', '71511'),
(1377, 'Black River', 'Morc. Villaze', '90621'),
(1378, 'Cap Malheureux', 'NHDC', '31721'),
(1379, 'Chemin Grenier', 'Riviere des Galets', '60421'),
(1380, 'Curepipe', 'Morc Souchon', '74222'),
(1381, 'Eau Coulee , Curepipe', 'E.Coulee Royal Rd 2', '74321'),
(1382, 'Flic en Flac', 'Wolmar', '90521'),
(1383, 'FOREST - SIDE', 'LOCAL GOVT SERVICE COMMISSION', '74420'),
(1384, 'Goodlands', 'Triangle', '30421'),
(1385, 'Grand Bay', 'Mont Choisy Shopping Mall', '30527'),
(1386, 'Grand Gaube', 'Nelson', '30621'),
(1387, 'Mahebourg', 'Ville Noire', '50821'),
(1388, 'Moka', 'Moka Village', '80815'),
(1389, 'New Grove', 'Morc VRS', '51221'),
(1390, 'Phoenix', 'Highlands', '73621'),
(1391, 'Pointe aux Sables', 'Morcellement Rey', '11121'),
(1392, 'Poste de Flacq', 'Poste Lafayette', '41519'),
(1393, 'QUATRE BORNES', 'LA COLLINE COMMERCIAL CENTRE', '72224'),
(1394, 'Riviere du Rempart', 'Pave', '31109'),
(1395, 'Rodrigues - Grand Montagne', 'Montagne Piquant', 'R6421'),
(1396, 'Rodrigues - La Ferme', 'La Ferme', 'R1318'),
(1397, 'Rodrigues - Mont Lubin', 'Mon Plaisir', 'R3222'),
(1398, 'Rodrigues - Port Mathurin', 'Le Chou', 'R4118'),
(1399, 'Rodrigues - Riviere Coco', 'Vingt Tours', 'R1520'),
(1400, 'Rose Belle', 'Morc Domaine', '51821'),
(1401, 'Rose- Hill', 'FLAT POUPINEL DE VALENCE', '71314'),
(1402, 'Saint Pierre', 'SAINT PIERRE 114+162', '81420'),
(1403, 'Tamarin', 'Tamarin', '90921'),
(1404, 'Tombeau Bay', 'Morc Mignot', '21721'),
(1405, 'Trou aux Biches', 'Trou aux Biches I', '22321'),
(1406, 'Vacoas / Floreal', 'E.Anquetil', '73215'),
(1407, 'Beau Bassin ', 'Coromandel', '71608'),
(1408, 'Black River', 'Nautica Complex', '90622'),
(1409, 'Cap Malheureux', 'Pavillon', '31722'),
(1410, 'Chemin Grenier', 'Saint Felix', '60422'),
(1411, 'Curepipe', 'Morc.Senneville', '74221'),
(1412, 'Eau Coulee , Curepipe', 'E.Coulee(Hissandee-C.Cheron', '74222'),
(1413, 'FOREST - SIDE', 'LOUIS PASTERUR', '74421'),
(1414, 'Grand Bay', 'Morc Berth', '30526'),
(1415, 'Grand Gaube', 'Pere Glorieux', '30622'),
(1416, 'Mahebourg', 'Villeneuve', '50822'),
(1417, 'Moka', 'Morc Bagatelle', '80816'),
(1418, 'New Grove', 'New Grove', '51222'),
(1419, 'Phoenix', 'Highlands Branch Rd', '73622'),
(1420, 'Pointe aux Sables', 'Morcellement S.L.D.C', '11123'),
(1421, 'Poste de Flacq', 'Railway', '41520'),
(1422, 'QUATRE BORNES', 'LA FERME Ave', '72425'),
(1423, 'Riviere du Rempart', 'Phoolia Nagar', '30108'),
(1424, 'Rodrigues - Grand Montagne', 'Montagne Ursule', 'R6422'),
(1425, 'Rodrigues - La Ferme', 'La Ferme/Terre Borne', 'R1319'),
(1426, 'Rodrigues - Mont Lubin', 'Mont Lubin', 'R5218'),
(1427, 'Rodrigues - Port Mathurin', 'Montagne Charlot', 'R4120'),
(1428, 'Rose Belle', 'Morc Jac', '51822'),
(1429, 'Rose- Hill', 'FLAT ROBINSON', '71315'),
(1430, 'Saint Pierre', 'Sites and Services', '81421'),
(1431, 'Tamarin', 'Tamarin Golf', '90922'),
(1432, 'Tombeau Bay', 'Morc Rouillard', '21722'),
(1433, 'Trou aux Biches', 'Trou aux Biches II', '22322'),
(1434, 'Vacoas / Floreal', 'Glen Park', '73116'),
(1435, 'Beau Bassin ', 'GOVT BLOCK', '71404'),
(1436, 'Black River', 'Plantation Marguery', '90623'),
(1437, 'Cap Malheureux', 'Pazani Mallaye', '31723'),
(1438, 'Chemin Grenier', 'Satanah', '60423'),
(1439, 'Curepipe', 'Municipality', '74423'),
(1440, 'Eau Coulee , Curepipe', 'Engrais Cathan', '74323'),
(1441, 'FOREST - SIDE', 'MAGNOLIAS FLATS', '74423'),
(1442, 'Grand Bay', 'Morc Boucan', '30529'),
(1443, 'Grand Gaube', 'Quartier des Lauriers', '30623'),
(1444, 'Mahebourg', 'Waterfront', '50823'),
(1445, 'Moka', 'Morc Bega-Ebene', '80817'),
(1446, 'New Grove', 'Parasol', '51223'),
(1447, 'Phoenix', 'Independence', '73423'),
(1448, 'Pointe aux Sables', 'Morcellement Sagittaire', '11122'),
(1449, 'Poste de Flacq', 'The Resort(Belle Mare Plage)', '41602'),
(1450, 'QUATRE BORNES', 'LA LOUISE', '72326'),
(1451, 'Riviere du Rempart', 'Plaines des Roches (Lower)', '31902'),
(1452, 'Rodrigues - Grand Montagne', 'Mourouk', 'R3423'),
(1453, 'Rodrigues - La Ferme', 'Les Salines/P Corail Airport', 'R1320'),
(1454, 'Rodrigues - Mont Lubin', 'Mont Lubin', 'R3218'),
(1455, 'Rodrigues - Port Mathurin', 'Montagne Charlot', 'R5120'),
(1456, 'Rose Belle', 'Morc Orchidee', '51823'),
(1457, 'Rose- Hill', 'FLAT ROCHES BRUNES', '71216'),
(1458, 'Saint Pierre', 'Traffic Commercial centre', '81422'),
(1459, 'Tombeau Bay', 'Morc Ruhomatally', '21723'),
(1460, 'Vacoas / Floreal', 'Glen Park NHDC', '73117'),
(1461, 'Beau Bassin ', 'Harewood Park', '71512'),
(1462, 'Black River', 'River view Com Centre', '90624'),
(1463, 'Cap Malheureux', 'Quartier La Ligne', '31724'),
(1464, 'Chemin Grenier', 'Social Welfare Centre Rd', '60424'),
(1465, 'Curepipe', 'Noelville', '74224'),
(1466, 'Eau Coulee , Curepipe', 'Engrais Martial 1', '74124'),
(1467, 'FOREST - SIDE', 'MAURICE MARTIN', '74424'),
(1468, 'Grand Bay', 'Morc Chetty', '30537'),
(1469, 'Grand Gaube', 'Sin Fat', '30625'),
(1470, 'Moka', 'Morc Bout Du Monde-Ebene', '80818'),
(1471, 'New Grove', 'Siding', '51224'),
(1472, 'Phoenix', 'Jumbo', '73524'),
(1473, 'Pointe aux Sables', 'Morcellement Sohun', '11124'),
(1474, 'QUATRE BORNES', 'LA SOURCE', '72427'),
(1475, 'Riviere du Rempart', 'Plaines des Roches (Upper)', '31903'),
(1476, 'Rodrigues - Grand Montagne', 'Nassola', 'R3424'),
(1477, 'Rodrigues - La Ferme', 'Limon', 'R1321'),
(1478, 'Rodrigues - Mont Lubin', 'Montagne Goyaves', 'R6219'),
(1479, 'Rodrigues - Port Mathurin', 'Montagne Cimetiere', 'R4121'),
(1480, 'Rose Belle', 'Morc Rosiere', '51824'),
(1481, 'Rose- Hill', 'GALERIE ATCHIA', '71317'),
(1482, 'Saint Pierre', 'VIGNOL NHDC', '81423'),
(1483, 'Tombeau Bay', 'Morc Senestra', '21724'),
(1484, 'Vacoas / Floreal', 'Grannum', '73418'),
(1485, 'Beau Bassin ', 'Industrial zone Coromandel', '71625'),
(1486, 'Black River', 'Ruisseau Creole Complex', '90625'),
(1487, 'Curepipe', 'Queen Elizabeth', '74425'),
(1488, 'Eau Coulee , Curepipe', 'Engrais Martial 2', '74225'),
(1489, 'FOREST - SIDE', 'MORC ANTELME', '74425'),
(1490, 'Grand Bay', 'Morc Comty', '30541'),
(1491, 'Grand Gaube', 'St Jean Bosco', '30624'),
(1492, 'Moka', 'Morc Eureka', '80819'),
(1493, 'Phoenix', 'LE Meritt', '73525'),
(1494, 'Pointe aux Sables', 'Morcellement Soobra Phase 1 & Phase 2', '11125'),
(1495, 'QUATRE BORNES', 'LE MERIT (delivery by Phoenix P.O)', '72228'),
(1496, 'Riviere du Rempart', 'Plaines des Roches Aubin', '31901'),
(1497, 'Rodrigues - Grand Montagne', 'Nassola', 'R6424'),
(1498, 'Rodrigues - La Ferme', 'Mangues', 'R1322'),
(1499, 'Rodrigues - Mont Lubin', 'Montagne Goyaves', 'R5219'),
(1500, 'Rodrigues - Port Mathurin', 'Montagne Fanal', 'R5122'),
(1501, 'Rose Belle', 'Morc S.I.T', '51825'),
(1502, 'Rose- Hill', 'GALERIE EVERSHINE', '71318'),
(1503, 'Tombeau Bay', 'Morc Swan', '21725'),
(1504, 'Vacoas / Floreal', 'Gymkhana', '73419'),
(1505, 'Beau Bassin ', 'Jules Koenig H.E', '71513'),
(1506, 'Black River', 'West Island Villa', '90626'),
(1507, 'Curepipe', 'R.Gujadhur', '74426'),
(1508, 'Eau Coulee , Curepipe', 'Flat Bahemia', '74226'),
(1509, 'FOREST - SIDE', 'MORC CARBONEL', '74447'),
(1510, 'Grand Bay', 'Morc Foondun', '30533'),
(1511, 'Grand Gaube', 'St Joseph Roc en Roc', '30626'),
(1512, 'Moka', 'Morc Hein', '80820'),
(1513, 'Phoenix', 'Les Halles', '73526'),
(1514, 'Pointe aux Sables', 'Morcellement Verger Le Bain', '11127'),
(1515, 'QUATRE BORNES', 'LE MERIT 2 (near Pellegrin)', '72263'),
(1516, 'Riviere du Rempart', 'Plaines des Roches Seneck', '31904'),
(1517, 'Rodrigues - Grand Montagne', 'Nouvelle Decouverte', 'R6425'),
(1518, 'Rodrigues - La Ferme', 'Mangues', 'R2322'),
(1519, 'Rodrigues - Mont Lubin', 'Montagne Limon', 'R3220'),
(1520, 'Rodrigues - Port Mathurin', 'Pointe L''Herbe/Accacia', 'R4124'),
(1521, 'Rose Belle', 'Mosque Rd', '51826'),
(1522, 'Rose- Hill', 'GALERIE ROYALE', '71319'),
(1523, 'Tombeau Bay', 'Morc Zenith', '21726'),
(1524, 'Vacoas / Floreal', 'Henrietta', '73120'),
(1525, 'Beau Bassin ', 'Maingard', '71609'),
(1526, 'Curepipe', 'Robinson 1', '74527'),
(1527, 'Eau Coulee , Curepipe', 'Flat Baissac', '74327'),
(1528, 'FOREST - SIDE', 'MORC DEVOYENNE', '74427'),
(1529, 'Grand Bay', 'Morc Honore', '30530'),
(1530, 'Grand Gaube', 'St Michel', '30627'),
(1531, 'Moka', 'Morc Mon Desert', '80821'),
(1532, 'Phoenix', 'Mesnil', '73627'),
(1533, 'Pointe aux Sables', 'Morcellement Verger Mangue', '11126'),
(1534, 'QUATRE BORNES', 'LES HALLES', '72264'),
(1535, 'Riviere du Rempart', 'Pte des Lascars', '31110'),
(1536, 'Rodrigues - Grand Montagne', 'Palissade Ternel', 'R3426'),
(1537, 'Rodrigues - La Ferme', 'Manique', 'R1323'),
(1538, 'Rodrigues - Mont Lubin', 'Montagne Persil', 'R5221'),
(1539, 'Rodrigues - Port Mathurin', 'Pointe la Guele', 'R4123'),
(1540, 'Rose Belle', 'Railway', '51827'),
(1541, 'Rose- Hill', 'GOVINDEN COURT', '71320'),
(1542, 'Tombeau Bay', 'N.H.D.C', '21727'),
(1543, 'Vacoas / Floreal', 'Hollyrood No.1', '73221'),
(1544, 'Beau Bassin ', 'Mare Gravier', '71514'),
(1545, 'Curepipe', 'Robinson 2', '74528'),
(1546, 'Eau Coulee , Curepipe', 'Flat Bonomally', '74328'),
(1547, 'FOREST - SIDE', 'MORC LECLEZIO', '74428'),
(1548, 'Grand Bay', 'Morc Jaulim', '30540'),
(1549, 'Moka', 'Morc Mon Plaisir', '80822'),
(1550, 'Phoenix', 'Morc Blue Print', '73628'),
(1551, 'Pointe aux Sables', 'Morcellement Verger Sur Mer', '11128'),
(1552, 'QUATRE BORNES', 'MORC RIVERSIDE', '72537'),
(1553, 'Riviere du Rempart', 'Railway Lane', '31111'),
(1554, 'Rodrigues - Grand Montagne', 'Palissade Ternel', 'R6426'),
(1555, 'Rodrigues - La Ferme', 'Marechal/Eau Douce', 'R2324'),
(1556, 'Rodrigues - Mont Lubin', 'Oranges', 'R5223'),
(1557, 'Rodrigues - Port Mathurin', 'Pointe Monnier', 'R4125'),
(1558, 'Rose Belle', 'Res Marc Chicose', '51828'),
(1559, 'Rose- Hill', 'HEAVEN HEIGHTS', '71321'),
(1560, 'Tombeau Bay', 'Paille en Queue', '21728'),
(1561, 'Vacoas / Floreal', 'Hollyrood No.2', '73222'),
(1562, 'Beau Bassin ', 'Mare Gravier', '71610'),
(1563, 'Curepipe', 'Robinson 3', '74529'),
(1564, 'Eau Coulee , Curepipe', 'Flat Henessy', '74229'),
(1565, 'FOREST - SIDE', 'MORC PIAT', '74429'),
(1566, 'Grand Bay', 'Morc Jitsing', '30542'),
(1567, 'Moka', 'Morc Noel', '80823'),
(1568, 'Phoenix', 'Morc Boucan', '73529'),
(1569, 'Pointe aux Sables', 'Pointe aux Sables', '11129'),
(1570, 'QUATRE BORNES', 'MORC CERISIER', '72529'),
(1571, 'Riviere du Rempart', 'Railway Line', '31112'),
(1572, 'Rodrigues - Grand Montagne', 'Patate Theophile', 'R6427'),
(1573, 'Rodrigues - La Ferme', 'Mont Cabris', 'R2325'),
(1574, 'Rodrigues - Mont Lubin', 'Oranges', 'R6223'),
(1575, 'Rodrigues - Port Mathurin', 'Port Mathurin', 'R5126'),
(1576, 'Rose Belle', 'Rose Belle', '51829'),
(1577, 'Rose- Hill', 'MANDARIN COURT', '71322'),
(1578, 'Tombeau Bay', 'Pont Bruniquel', '21729'),
(1579, 'Vacoas / Floreal', 'Jackson', '73423'),
(1580, 'Beau Bassin ', 'Meldrum Towers', '71515'),
(1581, 'Curepipe', 'Royal College', '74430'),
(1582, 'Eau Coulee , Curepipe', 'Flat Joomun', '74330'),
(1583, 'FOREST - SIDE', 'MORC PILOT', '74430'),
(1584, 'Grand Bay', 'Morc Le Caleche', '30531'),
(1585, 'Moka', 'Morc Paratian', '80824'),
(1586, 'Phoenix', 'Morc Koenig', '73630'),
(1587, 'Pointe aux Sables', 'Police Flat', '11130'),
(1588, 'QUATRE BORNES', 'MORC DOOKUN 1 ( Mun of Q.Bornes)', '72530'),
(1589, 'Riviere du Rempart', 'Riverside', '31113'),
(1590, 'Rodrigues - Grand Montagne', 'Pate Reynieux', 'R6428'),
(1591, 'Rodrigues - La Ferme', 'Montagne Croupier', 'R1326'),
(1592, 'Rodrigues - Mont Lubin', 'Pas Gerome', 'R3224'),
(1593, 'Rodrigues - Port Mathurin', 'Roseaux', 'R5127'),
(1594, 'Rose- Hill', 'MARKET ROSE HILL', '71323'),
(1595, 'Tombeau Bay', 'Residence St Malo', '21730'),
(1596, 'Vacoas / Floreal', 'John Kennedy', '74107'),
(1597, 'Beau Bassin ', 'Mont Roches', '71405'),
(1598, 'Curepipe', 'Salaffa Region', '74431'),
(1599, 'Eau Coulee , Curepipe', 'Hissandee', '74231'),
(1600, 'FOREST - SIDE', 'MORCELLEMENT DARUTY', '74448'),
(1601, 'Grand Bay', 'Morc Le Corsaire', '30524'),
(1602, 'Moka', 'Mount ORY', '80825'),
(1603, 'Phoenix', 'Morc Lenoir', '73532'),
(1604, 'Pointe aux Sables', 'Residence Coquillage', '11131'),
(1605, 'QUATRE BORNES', 'MORC DOOKUN 2 (Mun of Vac/Phoenix', '73361'),
(1606, 'Riviere du Rempart', 'Riviere du Rempart', '31114'),
(1607, 'Rodrigues - Grand Montagne', 'Petit Brule', 'R6429'),
(1608, 'Rodrigues - La Ferme', 'Montagne Du Sable', 'R1327'),
(1609, 'Rodrigues - Mont Lubin', 'Pavillon', 'R3225'),
(1610, 'Rodrigues - Port Mathurin', 'Solitude', 'R5128'),
(1611, 'Rose- Hill', 'MONT ROYAL', '71324'),
(1612, 'Tombeau Bay', 'Riche Terre', '21731'),
(1613, 'Vacoas / Floreal', 'King George V', '74108'),
(1614, 'Beau Bassin ', 'Morc La Confiance 1', '71614'),
(1615, 'Curepipe', 'Ste Therese', '74432'),
(1616, 'Eau Coulee , Curepipe', 'La Mairee', '74232'),
(1617, 'FOREST - SIDE', 'MORCELLEMENT RAMALINGUM', '74532'),
(1618, 'Grand Bay', 'Morc Martin', '30528'),
(1619, 'Moka', 'Pont Souillac', '80826'),
(1620, 'Phoenix', 'Morc Lonrho', '73631'),
(1621, 'Pointe aux Sables', 'Residence La Tourelle 1 & 2', '11132'),
(1622, 'QUATRE BORNES', 'MORC MEDINE', '72533'),
(1623, 'Riviere du Rempart', 'Schoenfield', '31115'),
(1624, 'Rodrigues - Grand Montagne', 'Petits Graviers', 'R6430'),
(1625, 'Rodrigues - La Ferme', 'Montagne Plate', 'R1328'),
(1626, 'Rodrigues - Mont Lubin', 'Petit Gabriel', 'R2226'),
(1627, 'Rodrigues - Port Mathurin', 'Soupir', 'R4129'),
(1628, 'Rose- Hill', 'MORC GAYA', '71225'),
(1629, 'Tombeau Bay', 'St Malo', '21732'),
(1630, 'Vacoas / Floreal', 'La Caverne No.1', '73324'),
(1631, 'Beau Bassin ', 'Morc Avrillon', '71516'),
(1632, 'Curepipe', 'Stevenson', '74533'),
(1633, 'Eau Coulee , Curepipe', 'Lapeyrouse', '74233'),
(1634, 'FOREST - SIDE', 'PUBLIC SERVICE COMMISSION', '74556'),
(1635, 'Grand Bay', 'Morc Oreb', '30539'),
(1636, 'Moka', 'Railway Square', '80827'),
(1637, 'Phoenix', 'Morc MTMD', '73633'),
(1638, 'Pointe aux Sables', 'Terrasson 1', '11133'),
(1639, 'QUATRE BORNES', 'MORC MIO', '72560'),
(1640, 'Riviere du Rempart', 'Temple', '31116'),
(1641, 'Rodrigues - Grand Montagne', 'Pointe Cotton', 'R6431'),
(1642, 'Rodrigues - La Ferme', 'Montagne Tonnerre', 'R4329'),
(1643, 'Rodrigues - Mont Lubin', 'Petit Gabriel', 'R3226'),
(1644, 'Rodrigues - Port Mathurin', 'Soupir', 'R5129'),
(1645, 'Rose- Hill', 'MORC AH FOUYE', '71126'),
(1646, 'Tombeau Bay', 'Tombeau Bay (Royal Rd)', '21733'),
(1647, 'Vacoas / Floreal', 'La Caverne No.2', '73325'),
(1648, 'Beau Bassin ', 'Morc Clairmont', '71611'),
(1649, 'Curepipe', 'Talipots', '74234'),
(1650, 'Eau Coulee , Curepipe', 'Morc Burtun 111', '74334'),
(1651, 'FOREST - SIDE', 'RESIDENCE LA COLOMBE', '74434'),
(1652, 'Grand Bay', 'Morc Raffray (a)', '30520'),
(1653, 'Moka', 'Reduit', '80835'),
(1654, 'Phoenix', 'Morc Nazroo', '73634'),
(1655, 'Pointe aux Sables', 'U.T.M', '11134'),
(1656, 'QUATRE BORNES', 'MORC NUCKCHEDDY', '72534'),
(1657, 'Rodrigues - Grand Montagne', 'Port Sud Est', 'R3432'),
(1658, 'Rodrigues - La Ferme', 'Papayes', 'R2330'),
(1659, 'Rodrigues - Mont Lubin', 'Petit Gabriel', 'R4226'),
(1660, 'Rodrigues - Port Mathurin', 'Terre Rouge', 'R5130'),
(1661, 'Rose- Hill', 'MORC BALGOBIN', '71327'),
(1662, 'Tombeau Bay', 'Tresor', '21734'),
(1663, 'Vacoas / Floreal', 'La Marie', '73126'),
(1664, 'Beau Bassin ', 'Morc Hart De Keating', '71612'),
(1665, 'Curepipe', 'Thomy D''Arifat', '74335'),
(1666, 'Eau Coulee , Curepipe', 'Morc Nasapen', '74336'),
(1667, 'FOREST - SIDE', 'RESIDENCE LES COLONIES', '74435'),
(1668, 'Grand Bay', 'Morc Raffray (b)', '30521'),
(1669, 'Moka', 'Residence Cybervillage', '80828'),
(1670, 'Phoenix', 'Morc Noel', '73535'),
(1671, 'Pointe aux Sables', 'Verger Mangue', '11135'),
(1672, 'QUATRE BORNES', 'MORC PIERREFONDS', '72435'),
(1673, 'Rodrigues - Grand Montagne', 'Riviere Banane', 'R6433'),
(1674, 'Rodrigues - La Ferme', 'Piments', 'R1331'),
(1675, 'Rodrigues - Mont Lubin', 'Pompee', 'R3227'),
(1676, 'Rodrigues - Port Mathurin', 'Vangar', 'R5131'),
(1677, 'Rose- Hill', 'MORC BERTHAUD', '71128'),
(1678, 'Tombeau Bay', 'Village les cocotiers', '21735'),
(1679, 'Vacoas / Floreal', 'La Vanille', '73227'),
(1680, 'Beau Bassin ', 'Morc Hermitage', '71613'),
(1681, 'Curepipe', 'W. Churchill', '74536'),
(1682, 'Eau Coulee , Curepipe', 'Morc Piat', '74235'),
(1683, 'FOREST - SIDE', 'RESIDENCE LES JASMINS', '74436'),
(1684, 'Grand Bay', 'Morc Raffray (c)', '30522'),
(1685, 'Moka', 'STATE HOUSE', '80836'),
(1686, 'Phoenix', 'Morc Trianon', '73536'),
(1687, 'QUATRE BORNES', 'MORC POONITH', '72436'),
(1688, 'Rodrigues - Grand Montagne', 'Roche Bon Dieu', 'R6434'),
(1689, 'Rodrigues - La Ferme', 'Pistache/plateau Bois Nois', 'R1332'),
(1690, 'Rodrigues - Mont Lubin', 'Saint Famille', 'R3228'),
(1691, 'Rose- Hill', 'MORC Bholah', '71129'),
(1692, 'Vacoas / Floreal', 'Ligne Berthaud', '73328'),
(1693, 'Beau Bassin ', 'Morc La Comete', '71406'),
(1694, 'Eau Coulee , Curepipe', 'Morc. Adam', '74337'),
(1695, 'FOREST - SIDE', 'ROCHECOUSTE', '74437'),
(1696, 'Grand Bay', 'Morc Raffray (d)', '30523'),
(1697, 'Moka', 'Telfair', '80829'),
(1698, 'Phoenix', 'Mosque Rd', '73637'),
(1699, 'QUATRE BORNES', 'MORC SAINT JEAN', '72238'),
(1700, 'Rodrigues - Grand Montagne', 'Saint D''Or', 'R6435'),
(1701, 'Rodrigues - La Ferme', 'plaine Feyane/P Coral', 'R1333'),
(1702, 'Rodrigues - Mont Lubin', 'Saint Gabriel', 'R3229'),
(1703, 'Rose- Hill', 'MORC CHADY', '71230'),
(1704, 'Vacoas / Floreal', 'Modern', '73329'),
(1705, 'Beau Bassin ', 'Morc La Confiance 2', '71615'),
(1706, 'Eau Coulee , Curepipe', 'Morc. Baptiste', '74338'),
(1707, 'FOREST - SIDE', 'Forest Side', '74438'),
(1708, 'Grand Bay', 'Morc Ramdin', '30543'),
(1709, 'Moka', 'University Of Mauritius', '80837'),
(1710, 'Phoenix', 'Nalletamby', '73538'),
(1711, 'QUATRE BORNES', 'N H D C VILLENEUVE', '72241'),
(1712, 'Rodrigues - Grand Montagne', 'Saponnaire', 'R6436'),
(1713, 'Rodrigues - La Ferme', 'Plaine Maho/mt plate', 'R1334'),
(1714, 'Rodrigues - Mont Lubin', 'Sygangue', 'R5230'),
(1715, 'Rose- Hill', 'MORC GOPAL', '71231'),
(1716, 'Vacoas / Floreal', 'Mon Desir', '73330'),
(1717, 'Beau Bassin ', 'Morc Lim Fat', '71616'),
(1718, 'Eau Coulee , Curepipe', 'Morc. Camphriers', '74339'),
(1719, 'Grand Bay', 'Morc Swan', '30532'),
(1720, 'Moka', 'Valory', '80830'),
(1721, 'Phoenix', 'Nehru', '73539'),
(1722, 'QUATRE BORNES', 'N H D C PALM', '72440'),
(1723, 'Rodrigues - Grand Montagne', 'Source Tigomme', 'R6437'),
(1724, 'Rodrigues - La Ferme', 'Pointe/palmiste/mapou', 'R1335'),
(1725, 'Rodrigues - Mont Lubin', 'Vainqueur', 'R5231'),
(1726, 'Rose- Hill', 'MORC NARAIN (terrain)', '71132'),
(1727, 'Vacoas / Floreal', 'Morc Fleuriot', '73431'),
(1728, 'Beau Bassin ', 'Morc Montreal 1', '71617'),
(1729, 'Eau Coulee , Curepipe', 'Morc. Cantin', '74340'),
(1730, 'Grand Bay', 'Morc Toorabally', '30535'),
(1731, 'Moka', 'Vinson', '80831'),
(1732, 'Phoenix', 'Ollier', '73440'),
(1733, 'QUATRE BORNES', 'NEHRU ROAD (from Kingstone Ave to Kalimaye Rd)', '72539'),
(1734, 'Rodrigues - Grand Montagne', 'St Francois', 'R6438'),
(1735, 'Rodrigues - La Ferme', 'Quatre Vents', 'R4336'),
(1736, 'Rodrigues - Mont Lubin', 'Vainqueur', 'R6231'),
(1737, 'Rose- Hill', 'MORC NOUVELLE VILLE', '71233'),
(1738, 'Vacoas / Floreal', 'Morc GIDC', '74109'),
(1739, 'Beau Bassin ', 'Morc Montreal 2', '71618'),
(1740, 'Eau Coulee , Curepipe', 'Morc. Hossenbux', '74341'),
(1741, 'Grand Bay', 'Morc Unicorn', '30534'),
(1742, 'Phoenix', 'Palmerstone', '73541'),
(1743, 'QUATRE BORNES', 'ORCHARD CENTRE', '72242'),
(1744, 'Rodrigues - Grand Montagne', 'Tambes', 'R3439'),
(1745, 'Rodrigues - La Ferme', 'Quatre Vents', 'R2336'),
(1746, 'Rose- Hill', 'MORC SEEBURN', '71234'),
(1747, 'Vacoas / Floreal', 'Morc Medine', '73132'),
(1748, 'Beau Bassin ', 'Morc Montreal 3', '71619'),
(1749, 'Eau Coulee , Curepipe', 'Municipal House', '74342'),
(1750, 'Grand Bay', 'Morc Villa Pereybere', '30538'),
(1751, 'Phoenix', 'Petit Camp', '73542'),
(1752, 'QUATRE BORNES', 'ORCHARD TOWER', '72243'),
(1753, 'Rodrigues - Grand Montagne', 'Tambes', 'R6439'),
(1754, 'Rodrigues - La Ferme', 'Reposoir/ La Boucherie', 'R1337'),
(1755, 'Rose- Hill', 'MORC SOOKIA', '71135'),
(1756, 'Vacoas / Floreal', 'Morc Munbodh', '73233'),
(1757, 'Beau Bassin ', 'Morc Montreal 4 (Chapman Views)', '71620'),
(1758, 'Eau Coulee , Curepipe', 'NHDC Complex', '74343'),
(1759, 'Grand Bay', 'Moulin Casse', '30536'),
(1760, 'Phoenix', 'Pine wood Garden', '73643'),
(1761, 'QUATRE BORNES', 'PAILLOTTE (East)', '73452'),
(1762, 'Rodrigues - Grand Montagne', 'Trefles', 'R6440'),
(1763, 'Rose- Hill', 'MORC ST ANDREWS', '71336'),
(1764, 'Vacoas / Floreal', 'Morc Peerun', '73234'),
(1765, 'Beau Bassin ', 'Morc Newtown', '71407'),
(1766, 'Eau Coulee , Curepipe', 'NHDC Prevert', '74344'),
(1767, 'Grand Bay', 'Oasis 2 (res)', '30545'),
(1768, 'Phoenix', 'Pont Fer', '73544'),
(1769, 'QUATRE BORNES', 'PAILLOTTE (West)', '73360'),
(1770, 'Rodrigues - Grand Montagne', 'Trois Soleils', 'R6441'),
(1771, 'Rose- Hill', 'MORCELLEMENT LARCHER', '71337'),
(1772, 'Vacoas / Floreal', 'Morc Pousson', '73135'),
(1773, 'Beau Bassin ', 'Morc VRS Chebel', '71621'),
(1774, 'Eau Coulee , Curepipe', 'Pope Henessy 1', '74245'),
(1775, 'Grand Bay', 'Pereybere', '30546'),
(1776, 'Phoenix', 'Riverside', '73645'),
(1777, 'QUATRE BORNES', 'PALMA 1', '72444'),
(1778, 'Rose- Hill', 'MORCELLEMENT NARAIN', '71238'),
(1779, 'Vacoas / Floreal', 'Morc Sauba', '73436'),
(1780, 'Beau Bassin ', 'N.H.D.C Vuillemin', '71517'),
(1781, 'Eau Coulee , Curepipe', 'Pope Henessy 2', '74446'),
(1782, 'Grand Bay', 'Pointe D''Azur', '30547'),
(1783, 'Phoenix', 'Robinson 1', '73546'),
(1784, 'QUATRE BORNES', 'PALMA 2', '72445'),
(1785, 'Rose- Hill', 'MORCELLEMENT ROGERS', '71339'),
(1786, 'Vacoas / Floreal', 'Morc Seetaram', '73137'),
(1787, 'Beau Bassin ', 'Palm Plaza', '71518'),
(1788, 'Eau Coulee , Curepipe', 'Quatre Carreaux', '74347'),
(1789, 'Grand Bay', 'Racket', '30549'),
(1790, 'Phoenix', 'Robinson 3', '73547'),
(1791, 'QUATRE BORNES', 'PALMA JUNCTION', '72546'),
(1792, 'Rose- Hill', 'N.P.F BUILDING', '71340'),
(1793, 'Vacoas / Floreal', 'Queen Mary', '74110'),
(1794, 'Beau Bassin ', 'Panorama', '71622'),
(1795, 'Eau Coulee , Curepipe', 'Remono', '74248'),
(1796, 'Grand Bay', 'Richmond Hill', '30548'),
(1797, 'Phoenix', 'Robinson2', '73548'),
(1798, 'QUATRE BORNES', 'PELLEGRIN', '72247'),
(1799, 'Rose- Hill', 'NHDC C LEVIEUX -GERANIUM)', '71241'),
(1800, 'Vacoas / Floreal', 'Quinze Cantons No.1', '73238'),
(1801, 'Beau Bassin ', 'Police Flats 1', '71623'),
(1802, 'Eau Coulee , Curepipe', 'Remono', '74449'),
(1803, 'Grand Bay', 'Sottise', '30550'),
(1804, 'Phoenix', 'Sawmill', '73549'),
(1805, 'QUATRE BORNES', 'PIERREFONDS', '72248'),
(1806, 'Rose- Hill', 'NHDC C LEVIEUX-BEGONIA )', '71242'),
(1807, 'Vacoas / Floreal', 'Quinze Cantons No.2', '73239'),
(1808, 'Beau Bassin ', 'Police Flats 2', '71624'),
(1809, 'Eau Coulee , Curepipe', 'Robinson', '74550'),
(1810, 'Grand Bay', 'Super U', '30551'),
(1811, 'Phoenix', 'Sayed Hossen Highlands Bch', '73650'),
(1812, 'QUATRE BORNES', 'QUATRE BORNES 1', '72249'),
(1813, 'Rose- Hill', 'NHDC C LEVIEUX-CHRYSANTEME )', '71243'),
(1814, 'Vacoas / Floreal', 'Reunion', '73240'),
(1815, 'Beau Bassin ', 'Residence St Daniel', '71408'),
(1816, 'Eau Coulee , Curepipe', 'Royal Rd Shell- Pope Henessy', '74451'),
(1817, 'Phoenix', 'St. Paul', '73551'),
(1818, 'QUATRE BORNES', 'QUATRE BORNES 2', '72350'),
(1819, 'Rose- Hill', 'NHDC C LEVIEUX-DALHIA )', '71244'),
(1820, 'Vacoas / Floreal', 'Riverwalk', '73441'),
(1821, 'Beau Bassin ', 'Roches Brunes', '71409'),
(1822, 'Eau Coulee , Curepipe', 'Sir William Newton', '74252'),
(1823, 'Phoenix', 'Tout Court', '73652'),
(1824, 'QUATRE BORNES', 'QUATRE BORNES 3', '72351'),
(1825, 'Rose- Hill', 'NHDC C LEVIEUX-EGLANTINE )', '71245'),
(1826, 'Vacoas / Floreal', 'Riviere Seche', '74111'),
(1827, 'Beau Bassin ', 'Verger Bissambar', '71410'),
(1828, 'Eau Coulee , Curepipe', 'Terre Coupe', '74553'),
(1829, 'Phoenix', 'Valentina', '73553'),
(1830, 'QUATRE BORNES', 'QUATRE BORNES 4', '72352'),
(1831, 'Rose- Hill', 'NHDC C LEVIEUX-FLAMBOYANT )', '71246'),
(1832, 'Vacoas / Floreal', 'Sadally', '73242'),
(1833, 'Beau Bassin ', 'Vuillemin', '71519'),
(1834, 'Eau Coulee , Curepipe', 'Tout Court', '74354'),
(1835, 'QUATRE BORNES', 'QUATRE BORNES 5', '72253'),
(1836, 'Rose- Hill', 'PLACE MARGEOT', '71347'),
(1837, 'Vacoas / Floreal', 'Simonet', '74112'),
(1838, 'Eau Coulee , Curepipe', 'Trou Aux Cerfs', '74555'),
(1839, 'QUATRE BORNES', 'RESIDENCE D''EPINAY', '72254'),
(1840, 'Rose- Hill', 'PLAISANCE 1', '71348'),
(1841, 'Vacoas / Floreal', 'SMF QTRS', '73443'),
(1842, 'Eau Coulee , Curepipe', 'Villa Chambly', '74356'),
(1843, 'QUATRE BORNES', 'PALMA JUNCTION', '72546'),
(1844, 'Rose- Hill', 'PLAISANCE 2', '71349'),
(1845, 'Vacoas / Floreal', 'Solferino No. 1', '73344'),
(1846, 'QUATRE BORNES', 'RENGANADEN SEENEEVASSSEN AVE', '72455'),
(1847, 'Rose- Hill', 'PLAISANCE H.E', '71350'),
(1848, 'Vacoas / Floreal', 'Solferino No. 2', '73345'),
(1849, 'QUATRE BORNES', 'RESIDENCE TRIANON (delivery by Phoenix P.O)', '72260'),
(1850, 'Rose- Hill', 'QUEEN .COURTS', '71352'),
(1851, 'Vacoas / Floreal', 'Solferino No. 3', '73346'),
(1852, 'QUATRE BORNES', 'SODNAC', '72256'),
(1853, 'Rose- Hill', 'QUEEN ELIZABETH COLLEGE', '71351'),
(1854, 'Vacoas / Floreal', 'Solferino No. 4', '73347'),
(1855, 'QUATRE BORNES', 'TRIANON', '72257'),
(1856, 'Rose- Hill', 'RENOWN BUILDING', '71353'),
(1857, 'Vacoas / Floreal', 'Solferino No. 5', '73348'),
(1858, 'QUATRE BORNES', 'TRIANON SHOPPING CENTRE', '72258'),
(1859, 'Rose- Hill', 'RESIDENCE CLOS VERGER', '71354'),
(1860, 'Vacoas / Floreal', 'St Paul', '73449'),
(1861, 'QUATRE BORNES', 'VICTORIA HOSPITAL', '72259'),
(1862, 'Rose- Hill', 'RESIDENCE LA CONCORDE (NHDC)', '71255'),
(1863, 'Vacoas / Floreal', 'Thompson', '73250'),
(1864, 'Rose-Hill', 'RESIDENCE MALARTIC', '71356'),
(1865, 'Rose-Hill', 'ROCHE BRUNES/ PLAISANCE', '712547'),
(1866, 'Rose-Hill', 'ROCHE BRUNES/ PLAISANCE 1', '71258'),
(1867, 'Rose-Hill', 'ROCHE BRUNES/ PLAISANCE 2', '71259'),
(1868, 'Rose-Hill', 'ROSE HILL CENTRE 1', '71360'),
(1869, 'Rose-Hill', 'ROSE HILL CENTRE 2', '71361'),
(1870, 'Rose-Hill', 'ROSE HILL CENTRE 3', '71362'),
(1871, 'Rose-Hill', 'ROSE HILL CENTRE 4', '71363'),
(1872, 'Rose-Hill', 'ROSE HILL CENTRE 5', '71364'),
(1873, 'Rose-Hill', 'ROSE HILL CENTRE 6', '71365'),
(1874, 'Rose-Hill', 'ROSE HILL CENTRE 7', '71366'),
(1875, 'Rose-Hill', 'ROSE HILL CENTRE 8', '71367'),
(1876, 'Rose-Hill', 'ROSE HILL CENTRE 9', '71368'),
(1877, 'Rose-Hill', 'STANLEY 1', '71170'),
(1878, 'Rose-Hill', 'STANLEY 2', '71171'),
(1879, 'Rose-Hill', 'TEFLES HOUSING ESTATE', '71176'),
(1880, 'Rose-Hill', 'TREFLES 1', '71173'),
(1881, 'Rose-Hill', 'TREFLES 2', '71174'),
(1882, 'Rose-Hill', 'TREFLES 3', '71175'),
(1883, 'Vacoas / Floreal', 'Trait d?Union', '73451'),
(1884, 'Vacoas / Floreal', 'Tres Bon No. 1', '73252'),
(1885, 'Vacoas / Floreal', 'Tres Bon No. 2', '73253'),
(1886, 'Vacoas / Floreal', 'Tres Bon No. 3', '73254'),
(1887, 'Vacoas / Floreal', 'Tres Bon No. 4', '73255'),
(1888, 'Vacoas / Floreal', 'Vingta No. 1', '73356'),
(1889, 'Vacoas / Floreal', 'Vingta No. 2', '73357'),
(1890, 'Vacoas / Floreal', 'Vingta No. 3', '73358'),
(1891, 'Vacoas / Floreal', 'Visitation', '73359'),
(1892, 'Port Louis', 'Anse Courtois', '11201'),
(1893, 'Port Louis', 'Bain des Dames', '11301'),
(1894, 'Port Louis', 'Bangladesh', '11401'),
(1895, 'Port Louis', 'Barracks Region', '11302'),
(1896, 'Port Louis', 'Bell Village', '11202'),
(1897, 'Port Louis', 'Blvd Victoria 1', '11402'),
(1898, 'Port Louis', 'Blvd Victoria 2', '11403'),
(1899, 'Port Louis', 'Borstal', '11203'),
(1900, 'Port Louis', 'Briquetterie', '11701'),
(1901, 'Port Louis', 'Camp Chapelon East', '11204'),
(1902, 'Port Louis', 'De Rosnay Street', '11205'),
(1903, 'Port Louis', 'Camp Firinga', '11101'),
(1904, 'Port Louis', 'Camp Yoloff', '11601'),
(1905, 'Port Louis', 'Canal Dayot (both sides)', '11207'),
(1906, 'Port Louis', 'Carreau Lalo', '11801'),
(1907, 'Port Louis', 'Cassis 1', '11303'),
(1908, 'Port Louis', 'Cassis 2', '11304'),
(1909, 'Port Louis', 'Cassis 3', '11305'),
(1910, 'Port Louis', 'Caudan Street', '11306'),
(1911, 'Port Louis', 'Decaen Street', '11306'),
(1912, 'Port Louis', 'Deconti Street', '11306'),
(1913, 'Port Louis', 'Engineer Street', '11306'),
(1914, 'Port Louis', 'Falcan Street', '11306'),
(1915, 'Port Louis', 'Foncault Street', '11306'),
(1916, 'Port Louis', 'La Fleur Street', '11306'),
(1917, 'Port Louis', 'Motais Street from Maupin Street to Caudan Street', '11306'),
(1918, 'Port Louis', 'Caudan Waterfromt', '11307'),
(1919, 'Port Louis', 'Central Market (Both wings)', '11308'),
(1920, 'Port Louis', 'Champ De Mars', '11404'),
(1921, 'Port Louis', 'China Town', '11602'),
(1922, 'Port Louis', 'Citadelle Region', '11405'),
(1923, 'Port Louis', 'Cite Blanc /Sugar Planters', '11102'),
(1924, 'Port Louis', 'Cite Borstal', '11206'),
(1925, 'Port Louis', 'Cite CHA', '11802'),
(1926, 'Port Louis', 'Cite Debarcadere / CHA', '11103'),
(1927, 'Port Louis', 'Cite Ilois Phase 1 and 2', '11104'),
(1928, 'Port Louis', 'Cite La Cure', '11803'),
(1929, 'Port Louis', 'Cite La Lumiere', '11106'),
(1930, 'Port Louis', 'Cite Lateka', '11105'),
(1931, 'Port Louis', 'Cite Martial', '11501'),
(1932, 'Port Louis', 'Cite Mauvillac', '11208'),
(1933, 'Port Louis', 'Cite Roche Bois', '11603'),
(1934, 'Port Louis', 'Cite Valijee', '11309'),
(1935, 'Port Louis', 'Croisee Vallee Des Pretes', '11804'),
(1936, 'Port Louis', 'Crowland Tory', '11406'),
(1937, 'Port Louis', 'Crownland Robert Scott', '11805'),
(1938, 'Port Louis', 'Mer Rouge', '11604'),
(1939, 'Port Louis', 'Domaine Les Pailles', '11209'),
(1940, 'Port Louis', 'Dr. A. G. Jeetoo Hospital', '11310'),
(1941, 'Port Louis', 'Emmanuel Anquetil Building', '11321'),
(1942, 'Port Louis', 'Enniskillen', '11412'),
(1943, 'Port Louis', 'Font George, Mer Rouge', '11605'),
(1944, 'Port Louis', 'G.M. Tower', '11311'),
(1945, 'Port Louis', 'GRNW', '11210'),
(1946, 'Port Louis', 'Guibies', '11213'),
(1947, 'Port Louis', 'Harbour View 1', '11407'),
(1948, 'Port Louis', 'Harbour View 2', '11408'),
(1949, 'Port Louis', 'Hospice Montfort', '11606'),
(1950, 'Port Louis', 'I.B.L. Complex', '11312'),
(1951, 'Port Louis', 'Informatic Park', '11211'),
(1952, 'Port Louis', 'Intermediate Court', '11313'),
(1953, 'Port Louis', 'Kensington', '11107'),
(1954, 'Port Louis', 'La Butte Region', '11314'),
(1955, 'Port Louis', 'La Cure :La Cure Bus Terminus', '11806'),
(1956, 'Port Louis', 'La Tour Koenig East: Excell Avenue (East)', '11212'),
(1957, 'Port Louis', 'La Tour Koenig Industrial Zone', '11109'),
(1958, 'Port Louis', 'La Tour Koenig Phase 1 and 2', '11108'),
(1959, 'Port Louis', 'Les Salines', '11315'),
(1960, 'Port Louis', 'Line Barracks', '11316'),
(1961, 'Port Louis', 'Lower Valle Des Pretes', '11817'),
(1962, 'Port Louis', 'M.C.F.I , Mer Rouge', '11608'),
(1963, 'Port Louis', 'Marguerite Phase 1', '11110'),
(1964, 'Port Louis', 'Marie Reine de la Paix', '11413'),
(1965, 'Port Louis', 'Mauritius Bulk Sugar Terminal (Building)', '11317'),
(1966, 'Port Louis', 'Mauritius Freeport Authority, Mer Rouge', '11607'),
(1967, 'Port Louis', 'Mer Rouge', '11609'),
(1968, 'Port Louis', 'Mocellement Mohamedally', '11811'),
(1969, 'Port Louis', 'Montebello Industrial Zone', '11217'),
(1970, 'Port Louis', 'Montebello: Western Side of Trunk Road from Ring Road to Pailles Junction', '11216'),
(1971, 'Port Louis', 'Montee S: From P aux Sables Junction to B River Junction (Western Side)', '11218'),
(1972, 'Port Louis', 'Morc Koenig/Verger Sur Mer', '11117'),
(1973, 'Port Louis', 'Morc Le Rock', '11214'),
(1974, 'Port Louis', 'Morc Manna', '11409'),
(1975, 'Port Louis', 'Morc Raffray', '11215'),
(1976, 'Port Louis', 'Morcellement Brunes Pailles', '11114'),
(1977, 'Port Louis', 'Morcellement Agnis /Ramlagun ( lower V.D Pretes)', '11807'),
(1978, 'Port Louis', 'Morcellement Ally /Sekdaur (lower V.D Pretes)', '11808'),
(1979, 'Port Louis', 'Morcellement Almadina', '11809'),
(1980, 'Port Louis', 'Morcellement Ameermeeah', '11810'),
(1981, 'Port Louis', 'Morcellement D''Hotman', '11111'),
(1982, 'Port Louis', 'Morcellement Fon Sing', '11112'),
(1983, 'Port Louis', 'Morcellement Fortune', '11113'),
(1984, 'Port Louis', 'Morcellement Ghurbhurrun', '11122'),
(1985, 'Port Louis', 'Morcellement Ibrahim Dawood', '11115'),
(1986, 'Port Louis', 'Morcellement Ilois Phase 1', '11116'),
(1987, 'Port Louis', 'Morcellement Le Printemps', '11118'),
(1988, 'Port Louis', 'Morcellement Le Vieux', '11119'),
(1989, 'Port Louis', 'Morcellement Nazroo Phase 1/2', '11120'),
(1990, 'Port Louis', 'Morcellement Pitchen', '11812'),
(1991, 'Port Louis', 'Morcellement Rey', '11121'),
(1992, 'Port Louis', 'Morcellement Sagittaire/SLDC', '11123'),
(1993, 'Port Louis', 'Morcellement Sohun', '11124'),
(1994, 'Port Louis', 'Morcellement Soobra Phase 1/2', '11125'),
(1995, 'Port Louis', 'Morcellement Verger Le Bain', '11127'),
(1996, 'Port Louis', 'Morcellement Verger Mangue', '11126'),
(1997, 'Port Louis', 'Moulin De La Concorde, Quay D', '11610'),
(1998, 'Port Louis', 'Municipality of Port Louis', '11318'),
(1999, 'Port Louis', 'New Government Centre', '11319'),
(2000, 'Port Louis', 'NHDC (La Cure )', '11814'),
(2001, 'Port Louis', 'NHDC (Les Cocotiers )', '11815'),
(2002, 'Port Louis', 'NHDC (Media )', '11816'),
(2003, 'Port Louis', 'NHDC Cite La Cure', '11813'),
(2004, 'Port Louis', 'Pailles', '11219'),
(2005, 'Port Louis', 'Pailles East', '11220'),
(2006, 'Port Louis', 'Pailles West', '11221'),
(2007, 'Port Louis', 'Paul Toureau Region', '11702'),
(2008, 'Port Louis', 'Plaine Lauzun Industrial Zone', '11222'),
(2009, 'Port Louis', 'Plaine Verte 1', '11502'),
(2010, 'Port Louis', 'Plaine Verte 2', '11503'),
(2011, 'Port Louis', 'Plaine Verte 3', '11611'),
(2012, 'Port Louis', 'Plaine Verte 4', '11612'),
(2013, 'Port Louis', 'Pointe aux Sables', '11129'),
(2014, 'Port Louis', 'Police Flat-Pointe aux sables', '11130'),
(2015, 'Port Louis', 'Police Flats (Bell Village)', '11223'),
(2016, 'Port Louis', 'Pont St Louis: Trunk Road from St Louis Stream 1 to St Louis Stream 2', '11224'),
(2017, 'Port Louis', 'Port Louis Waterfront (Harbour up to Fish Port)', '11320'),
(2018, 'Port Louis', 'Quay D', '11615'),
(2019, 'Port Louis', 'Renganaden Seeneevassen', '11613'),
(2020, 'Port Louis', 'Residence Coquillage', '11131'),
(2021, 'Port Louis', 'Residence La Tourelle 1/2', '11132'),
(2022, 'Port Louis', 'Roche Bois 1', '11614'),
(2023, 'Port Louis', 'Roche Bois 2', '11703'),
(2024, 'Port Louis', 'Royal College', '11322'),
(2025, 'Port Louis', 'Ruisseau des Creoles', '11323'),
(2026, 'Port Louis', 'Soreze', '11225'),
(2027, 'Port Louis', 'St Croix 1', '11704'),
(2028, 'Port Louis', 'St Croix 2', '11705'),
(2029, 'Port Louis', 'St Croix 3', '11706'),
(2030, 'Port Louis', 'St Croix 4', '11707'),
(2031, 'Port Louis', 'St Croix 5', '11708'),
(2032, 'Port Louis', 'St Denis', '11411'),
(2033, 'Port Louis', 'St Georges', '11324'),
(2034, 'Port Louis', 'Supreme Court', '11325'),
(2035, 'Port Louis', 'SVICC', '11226'),
(2036, 'Port Louis', 'Terrason 1 (west)', '11133'),
(2037, 'Port Louis', 'Terrasson Lower', '11227'),
(2038, 'Port Louis', 'The Peninsula (Tower)', '11326'),
(2039, 'Port Louis', 'Tranquebar', '11410'),
(2040, 'Port Louis', 'U.T.M', '11134'),
(2041, 'Port Louis', 'Upper Vallee Des Pretes', '11818'),
(2042, 'Port Louis', 'Vallee Pitot 1', '11504'),
(2043, 'Port Louis', 'Vallee Pitot 2', '11505'),
(2044, 'Port Louis', 'Vallee Pitot 3', '11506'),
(2045, 'Port Louis', 'Verger Mangue', '11135'),
(2046, 'Port Louis', 'Victoria Square', '11327'),
(2047, 'Port Louis', 'William Newton Region', '11328');

-- --------------------------------------------------------

--
-- Структура таблиці `client`
--

CREATE TABLE `client` (
  `id` int(10) NOT NULL,
  `ctype` char(1) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `iscompany` char(1) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `brn` varchar(50) DEFAULT NULL,
  `vat` varchar(50) DEFAULT NULL,
  `nic` varchar(14) DEFAULT NULL,
  `con` datetime DEFAULT NULL,
  `cby` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `client`
--

INSERT INTO `client` (`id`, `ctype`, `title`, `fname`, `lname`, `iscompany`, `address`, `city`, `phone`, `mobile`, `email`, `brn`, `vat`, `nic`, `con`, `cby`) VALUES
(3, NULL, NULL, NULL, NULL, '0', 'Street Name', 'Rose Hill', '4561230', '5612300', NULL, NULL, NULL, 'S0123250A000', NULL, NULL),
(4, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, NULL, NULL, NULL, NULL, '0', 'qbornes', 'qbornes', '4561230', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, NULL, NULL, NULL, NULL, '0', 'Bassin Rd', 'QBornes', '2069917', '52508980', 'bhimal@hotmail.com', NULL, NULL, 'l154646464', NULL, NULL),
(8, NULL, NULL, 'Test', 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-29 11:57:50', 'Administrator'),
(9, 'a', NULL, 'FLEETLEADER LTD', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-29 15:33:12', 'Administrator'),
(10, 'n', 'mr', 'John', 'Smith', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-28 12:52:37', 'Administrator'),
(11, 'n', 'mr', 'John', 'Smith', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-28 12:52:37', 'Administrator'),
(12, 'n', 'mr', 'John', 'Smith', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-28 12:52:37', 'Administrator'),
(13, 'n', 'mrs', 'Jane', 'Doe', '0', 'Street Name', 'Beau Bassin', '4561230', '4561230', NULL, NULL, NULL, NULL, '2018-06-28 12:54:55', 'Administrator');

-- --------------------------------------------------------

--
-- Структура таблиці `cvim`
--

CREATE TABLE `cvim` (
  `id` int(10) NOT NULL,
  `clientid` int(10) DEFAULT NULL,
  `regno` varchar(50) DEFAULT NULL,
  `memno` varchar(50) DEFAULT NULL,
  `insuranceno` varchar(50) DEFAULT NULL,
  `active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `cvim`
--

INSERT INTO `cvim` (`id`, `clientid`, `regno`, `memno`, `insuranceno`, `active`) VALUES
(2, 1, 't115', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблиці `fotoproof`
--

CREATE TABLE `fotoproof` (
  `id` int(11) NOT NULL,
  `interventionid` int(11) DEFAULT NULL,
  `fotocheck` longblob,
  `comment` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблиці `fuelcheck`
--

CREATE TABLE `fuelcheck` (
  `id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `mileage` int(10) DEFAULT NULL,
  `festimate` decimal(10,2) DEFAULT NULL,
  `tankcap` decimal(10,2) DEFAULT NULL,
  `con` datetime DEFAULT NULL,
  `cby` varchar(50) DEFAULT NULL,
  `aaavehicle` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Дамп даних таблиці `fuelcheck`
--

INSERT INTO `fuelcheck` (`id`, `date`, `mileage`, `festimate`, `tankcap`, `con`, `cby`, `aaavehicle`) VALUES
(1, '2018-06-01 00:00:00', 13000, '0.25', '20.00', '2018-06-01 13:24:39', 'Administrator', 'AA499');

-- --------------------------------------------------------

--
-- Структура таблиці `fuellog`
--

CREATE TABLE `fuellog` (
  `id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `amtl` decimal(10,2) DEFAULT NULL,
  `amtrs` decimal(10,2) DEFAULT NULL,
  `mileage` int(10) DEFAULT NULL,
  `con` datetime DEFAULT NULL,
  `cby` varchar(50) DEFAULT NULL,
  `aaavehicle` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `fuellog`
--

INSERT INTO `fuellog` (`id`, `date`, `amtl`, `amtrs`, `mileage`, `con`, `cby`, `aaavehicle`) VALUES
(1, '2018-05-15 00:00:00', '25.00', '1200.00', 12000, '2018-05-29 14:35:22', 'Administrator', 'AA499'),
(2, NULL, '2.00', '250.00', 20202, '2018-05-29 14:54:46', 'Administrator', 'AA499'),
(3, '2018-05-29 00:00:00', '4.00', '200.00', 12005, '2018-05-29 15:43:41', 'Administrator', 'AA499');

-- --------------------------------------------------------

--
-- Структура таблиці `fuelprice`
--

CREATE TABLE `fuelprice` (
  `id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `fueltype` char(10) DEFAULT NULL,
  `pricelitre` decimal(10,2) DEFAULT NULL,
  `active` int(1) DEFAULT NULL,
  `con` datetime DEFAULT NULL,
  `cby` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Дамп даних таблиці `fuelprice`
--

INSERT INTO `fuelprice` (`id`, `date`, `fueltype`, `pricelitre`, `active`, `con`, `cby`) VALUES
(1, '2018-06-01 00:00:00', 'diesel', '41.10', 1, '2018-06-01 13:37:49', 'Administrator'),
(2, '2018-06-01 00:00:00', 'petrol', '52.10', 1, '2018-06-01 13:37:58', 'Administrator'),
(3, '2019-05-01 00:00:00', 'petrol', '51.10', 1, '2018-06-22 12:31:50', 'Administrator'),
(4, '2018-05-01 00:00:00', 'diesel', '41.10', 1, '2018-06-22 12:32:12', 'Administrator');

-- --------------------------------------------------------

--
-- Дублююча структура для представлення `incbill`
--
CREATE TABLE `incbill` (
`interid` int(10)
,`ticketid` int(10)
,`invoiceid` int(10)
);

-- --------------------------------------------------------

--
-- Дублююча структура для представлення `inciregi`
--
CREATE TABLE `inciregi` (
`ticketid` int(10)
,`id` int(10)
,`regno` varchar(50)
,`address1` varchar(50)
,`district` varchar(50)
,`city` varchar(50)
,`residence` char(1)
,`issue` varchar(50)
,`status` varchar(50)
,`assignedto` varchar(50)
,`assignedv` varchar(50)
);

-- --------------------------------------------------------

--
-- Дублююча структура для представлення `insint`
--
CREATE TABLE `insint` (
`ticket` int(10)
,`enteredon` datetime
,`enteredby` varchar(50)
,`tickettype` varchar(50)
,`tixstatus` varchar(50)
,`issuetype` varchar(50)
,`insurance` varchar(50)
,`poholder` varchar(50)
,`pono` varchar(50)
,`startdate` date
,`enddate` date
,`covertype` varchar(50)
,`insref` varchar(50)
,`regno` varchar(50)
,`status` varchar(50)
,`issue` varchar(50)
,`resolution` varchar(50)
,`intervention` int(10)
);

-- --------------------------------------------------------

--
-- Структура таблиці `insuranceco`
--

CREATE TABLE `insuranceco` (
  `id` int(10) NOT NULL,
  `company` varchar(50) DEFAULT NULL,
  `code` char(50) DEFAULT NULL,
  `active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Дамп даних таблиці `insuranceco`
--

INSERT INTO `insuranceco` (`id`, `company`, `code`, `active`) VALUES
(1, 'Mauritius Union', 'MUA', 1),
(2, 'Good Harvest', 'GH', 1),
(3, 'Jubilee', 'JBL', 1);

-- --------------------------------------------------------

--
-- Дублююча структура для представлення `insuredv`
--
CREATE TABLE `insuredv` (
`regno` varchar(50)
,`make` varchar(50)
,`model` varchar(50)
,`colour` varchar(50)
,`aaacover` varchar(50)
,`poholder` varchar(50)
,`startdate` date
,`enddate` date
,`covertype` varchar(50)
,`insurance` varchar(50)
);

-- --------------------------------------------------------

--
-- Структура таблиці `insuredvehicle`
--

CREATE TABLE `insuredvehicle` (
  `id` int(11) NOT NULL,
  `regno` varchar(50) DEFAULT NULL,
  `insref` varchar(50) DEFAULT NULL,
  `insurance` varchar(50) DEFAULT NULL,
  `poholder` varchar(50) DEFAULT NULL,
  `pono` varchar(50) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `covertype` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Дублююча структура для представлення `intertix`
--
CREATE TABLE `intertix` (
`ticketid` int(10)
,`tixtatus` varchar(50)
,`intid` int(10)
,`regno` varchar(50)
,`phone2` int(8)
,`contactname2` varchar(50)
,`city` varchar(50)
,`assignedto` varchar(50)
);

-- --------------------------------------------------------

--
-- Структура таблиці `intervention`
--

CREATE TABLE `intervention` (
  `id` int(10) NOT NULL,
  `ticketid` int(10) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `issue` varchar(50) DEFAULT NULL,
  `resolution` varchar(50) DEFAULT NULL,
  `assignee` varchar(50) DEFAULT NULL,
  `comment` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `intervention`
--

INSERT INTO `intervention` (`id`, `ticketid`, `createdon`, `createdby`, `status`, `issue`, `resolution`, `assignee`, `comment`) VALUES
(1, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'test'),
(3, 7, '2018-04-28 11:57:46', '-1', '1', 'ACCIDENT', NULL, NULL, 'TEST'),
(4, 8, '2018-05-15 23:50:01', '-1', NULL, NULL, NULL, NULL, NULL),
(5, 9, '2018-05-22 15:11:47', '-1', NULL, NULL, NULL, NULL, 'tow to \r\ndrop at'),
(6, 13, '2018-05-29 11:23:33', '-1', NULL, NULL, NULL, NULL, 'test'),
(7, 8, '2018-05-29 13:53:30', '-1', NULL, NULL, NULL, NULL, NULL),
(8, 13, '2018-05-29 15:15:07', '-1', NULL, NULL, NULL, NULL, NULL),
(9, 14, '2018-05-29 15:35:46', '-1', NULL, NULL, NULL, NULL, NULL),
(10, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 16, NULL, NULL, NULL, NULL, NULL, NULL, 'Test'),
(14, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблиці `intervention2`
--

CREATE TABLE `intervention2` (
  `id` int(10) NOT NULL,
  `ticketid` int(10) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `assignedtime` datetime DEFAULT NULL,
  `acceptedtime` datetime DEFAULT NULL,
  `enroutetime` datetime DEFAULT NULL,
  `onsitetime` datetime DEFAULT NULL,
  `closedtime` datetime DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `regno` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `issue` varchar(50) DEFAULT NULL,
  `resolution` varchar(50) DEFAULT NULL,
  `assignedto` varchar(50) DEFAULT NULL,
  `assignedv` varchar(50) DEFAULT NULL,
  `comment` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Дамп даних таблиці `intervention2`
--

INSERT INTO `intervention2` (`id`, `ticketid`, `createdon`, `assignedtime`, `acceptedtime`, `enroutetime`, `onsitetime`, `closedtime`, `createdby`, `regno`, `status`, `issue`, `resolution`, `assignedto`, `assignedv`, `comment`) VALUES
(14, 7, '2018-07-17 14:07:41', '2018-07-24 23:44:57', '2018-07-24 23:45:03', '2018-07-24 23:45:07', '2018-07-20 10:30:06', '2018-07-20 10:30:12', 'manager', NULL, 'ENROUTE', NULL, NULL, 'manager', NULL, NULL),
(15, 3, '2018-07-16 14:20:34', '2018-07-16 15:04:37', NULL, NULL, NULL, '2018-07-25 13:59:41', NULL, NULL, 'CLOSED', NULL, NULL, NULL, NULL, NULL),
(16, 13, '2018-07-17 12:04:43', '2018-07-24 23:21:25', '2018-07-17 12:10:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 17, '2018-07-24 23:05:10', NULL, NULL, NULL, NULL, NULL, 'manager', NULL, 'NOT ASSIGNED', NULL, NULL, NULL, NULL, NULL),
(18, 16, '2018-07-24 23:05:23', NULL, NULL, NULL, NULL, NULL, 'manager', NULL, 'NOT ASSIGNED', NULL, NULL, NULL, NULL, NULL),
(19, 3, '2018-07-24 23:06:14', '2018-07-24 23:29:15', NULL, NULL, '2018-07-25 14:00:07', NULL, 'manager', NULL, 'ONSITE', NULL, NULL, NULL, NULL, NULL),
(20, 15, '2018-07-24 23:12:38', '2018-07-24 23:29:23', NULL, '2018-07-25 13:59:59', NULL, NULL, 'manager', NULL, 'ENROUTE', NULL, NULL, '12', NULL, NULL),
(22, 17, '2018-07-24 23:29:40', '2018-07-24 23:30:29', NULL, NULL, NULL, NULL, 'manager', NULL, 'NOT ASSIGNED', NULL, NULL, NULL, NULL, NULL),
(23, 16, '2018-07-25 14:25:39', '2018-07-24 23:39:04', '2018-07-24 23:38:49', '2018-07-24 23:38:53', '2018-07-24 23:38:56', '2018-07-24 23:39:01', 'manager', NULL, 'ASSIGNED', 'RS', NULL, NULL, NULL, NULL),
(24, 19, '2018-07-25 10:43:31', '2018-07-25 10:52:36', '2018-07-25 13:59:52', NULL, NULL, NULL, 'manager', NULL, 'ACCEPTED', 'RA', NULL, 'tech', 'AA499', NULL),
(25, 19, '2018-07-25 13:46:12', NULL, NULL, NULL, NULL, NULL, 'manager', NULL, 'NOT ASSIGNED', NULL, NULL, NULL, NULL, NULL),
(26, 15, '2018-07-25 13:48:53', '2018-09-13 22:14:51', NULL, NULL, NULL, NULL, 'manager', NULL, 'ASSIGNED', NULL, NULL, 'tech', 'AA499', NULL),
(27, 13, '2018-07-25 14:00:34', NULL, NULL, NULL, NULL, '2018-07-27 13:15:32', 'manager', NULL, 'CLOSED', 'RA', NULL, NULL, NULL, NULL),
(28, 18, '2018-07-29 12:21:46', '2018-09-13 21:30:17', '2018-09-13 21:30:22', '2018-09-13 21:30:26', '2018-09-13 21:30:33', NULL, 'manager', NULL, 'ONSITE', NULL, NULL, 'tech', 'AA499', NULL),
(29, 20, '2018-07-31 10:44:08', '2018-09-03 14:36:37', '2018-09-03 14:36:42', NULL, NULL, '2018-09-04 16:20:42', 'manager', NULL, 'CLOSED', 'RA', NULL, 'tech', 'AA499', NULL),
(30, 21, '2018-09-19 11:57:40', '2018-09-19 11:58:26', '2018-09-19 11:58:37', '2018-09-19 11:58:48', '2018-09-19 11:58:56', '2018-09-19 11:59:49', 'Administrator', NULL, 'CLOSED', 'RA', 'cancelled', 'tech', 'AA499', NULL),
(31, 21, '2018-09-19 12:00:30', '2018-09-19 12:00:43', '2018-09-19 12:00:50', '2018-09-19 12:00:53', '2018-09-19 12:01:31', '2018-09-19 12:01:45', 'Administrator', NULL, 'CLOSED', 'RS', NULL, 'tech', 'AA499', NULL),
(34, 22, '2018-09-19 12:22:01', NULL, NULL, NULL, NULL, NULL, 'Administrator', NULL, 'NOT ASSIGNED', NULL, NULL, NULL, NULL, NULL),
(35, 14, '2018-09-19 12:29:41', '2018-10-12 14:57:09', '2018-10-12 14:58:35', '2018-10-12 14:59:21', '2018-10-12 15:00:41', '2018-10-12 15:00:59', 'Administrator', NULL, 'CLOSED', 'RA', NULL, 'tech', 'AA499', NULL),
(36, 22, '2018-10-12 14:55:54', NULL, NULL, NULL, NULL, NULL, 'Administrator', NULL, 'NOT ASSIGNED', NULL, NULL, NULL, NULL, NULL),
(37, 23, '2019-01-22 14:11:00', '2019-01-22 14:11:20', '2019-01-22 14:11:26', NULL, NULL, NULL, 'Administrator', NULL, 'ACCEPTED', 'RS', NULL, 'tech', 'AA499', NULL);

-- --------------------------------------------------------

--
-- Структура таблиці `invoice`
--

CREATE TABLE `invoice` (
  `id` int(10) NOT NULL,
  `createdon` datetime DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `interventionid` int(10) DEFAULT NULL,
  `billto` varchar(50) DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `tech` varchar(50) DEFAULT NULL,
  `regno` varchar(50) DEFAULT NULL,
  `istatus` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `invoice`
--

INSERT INTO `invoice` (`id`, `createdon`, `createdby`, `interventionid`, `billto`, `duedate`, `tech`, `regno`, `istatus`) VALUES
(1, '2018-05-22 00:00:00', '-1', 9, NULL, NULL, NULL, NULL, NULL),
(2, '2018-05-29 11:35:50', '-1', 6, NULL, NULL, NULL, NULL, NULL),
(3, '2018-05-29 15:38:55', '-1', 9, NULL, NULL, NULL, NULL, NULL),
(4, '2018-06-13 11:35:58', '-1', NULL, NULL, NULL, NULL, NULL, NULL),
(5, '2018-06-13 11:36:23', '-1', NULL, NULL, NULL, NULL, NULL, NULL),
(6, '2018-06-28 13:56:03', '-1', 13, NULL, NULL, 'manager', 'W101010', 'open'),
(7, '2018-07-05 00:00:00', '', 0, '', '2018-07-31', '', '', ''),
(8, NULL, '', 0, '', NULL, '', '', ''),
(9, NULL, NULL, 16, NULL, NULL, NULL, NULL, NULL),
(10, '2018-07-29 13:25:04', 'manager', 28, NULL, NULL, NULL, NULL, 'OPEN'),
(11, '2018-08-13 16:41:33', 'Administrator', NULL, NULL, NULL, NULL, NULL, NULL),
(12, '2018-09-05 14:32:10', 'Administrator', 29, NULL, NULL, NULL, NULL, 'OPEN'),
(13, '2018-09-19 12:04:05', 'Administrator', 31, NULL, NULL, 'Administrator', NULL, 'OPEN'),
(14, '2018-09-19 12:56:44', 'Administrator', NULL, NULL, NULL, 'Administrator', NULL, 'OPEN'),
(15, '2018-09-19 13:04:55', 'Administrator', NULL, NULL, NULL, 'Administrator', NULL, 'OPEN'),
(16, '2018-09-19 13:07:03', 'Administrator', NULL, NULL, NULL, 'Administrator', NULL, 'OPEN'),
(17, '2018-09-19 13:08:31', 'Administrator', NULL, NULL, NULL, 'Administrator', NULL, 'OPEN'),
(18, '2018-09-19 13:10:53', 'Administrator', NULL, NULL, NULL, 'Administrator', NULL, 'OPEN'),
(19, '2018-09-19 13:16:17', 'Administrator', NULL, NULL, NULL, 'Administrator', NULL, 'OPEN'),
(20, '2018-09-19 13:19:43', 'Administrator', NULL, NULL, NULL, 'Administrator', NULL, 'OPEN'),
(21, '2018-10-12 15:02:42', 'Administrator', 35, NULL, NULL, 'Administrator', NULL, 'OPEN');

-- --------------------------------------------------------

--
-- Структура таблиці `invoiceitem`
--

CREATE TABLE `invoiceitem` (
  `id` int(10) NOT NULL,
  `invoiceid` int(10) DEFAULT NULL,
  `productcode` varchar(50) DEFAULT NULL,
  `product` varchar(50) DEFAULT NULL,
  `qty` decimal(10,2) DEFAULT NULL,
  `unitprice` decimal(10,2) DEFAULT NULL,
  `itotal` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `invoiceitem`
--

INSERT INTO `invoiceitem` (`id`, `invoiceid`, `productcode`, `product`, `qty`, `unitprice`, `itotal`) VALUES
(1, 1, '101', 'Battery NS2011', '1.00', '2500.00', NULL),
(2, 2, '101', 'Battery NS2011', NULL, '2500.00', NULL),
(3, 3, 'OF111115', 'MF95D31R', '1.00', '2500.00', NULL),
(4, 3, 'RA', 'ROADSIDE', '1.00', '1800.00', NULL),
(5, 8, '101', NULL, NULL, NULL, NULL),
(6, 8, NULL, NULL, NULL, NULL, NULL),
(7, 8, NULL, NULL, NULL, NULL, NULL),
(8, 8, NULL, NULL, NULL, NULL, NULL),
(9, 11, '101010', 'Test Product 10', '1.00', '1000.00', NULL),
(10, 12, '101010', 'Test Product 10', '1.00', '1000.00', '1000.00'),
(11, 13, '101010', 'Test Product 10', '1.00', '1000.00', '1000.00'),
(12, 14, '101010', 'Test Product 10', '1.00', '1000.00', '1000.00'),
(13, 15, '101010', 'Test Product 10', '1.00', '1000.00', '1000.00'),
(14, 16, '101010', 'Test Product 10', '1.00', '1000.00', '1000.00'),
(15, 17, '101010', 'Test Product 10', '1.00', '1000.00', '1000.00'),
(16, 18, '101010', 'Test Product 10', '0.00', '1000.00', '0.00'),
(17, 19, '101010', 'Test Product 10', '1.00', '1000.00', '1000.00'),
(18, 20, '101010', 'Test Product 10', '1.00', '1000.00', '1000.00');

-- --------------------------------------------------------

--
-- Структура таблиці `jaccept`
--

CREATE TABLE `jaccept` (
  `id` int(15) NOT NULL,
  `interventionid` int(10) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `decision` varchar(50) DEFAULT NULL,
  `comment` text,
  `step` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Дамп даних таблиці `jaccept`
--

INSERT INTO `jaccept` (`id`, `interventionid`, `createdon`, `createdby`, `decision`, `comment`, `step`) VALUES
(1, 12, '2018-06-15 13:17:14', 'Administrator', 'ACCEPT', NULL, NULL),
(2, 13, '2018-06-28 13:14:57', 'Administrator', 'ACCEPT', 'test', NULL),
(3, 13, '2018-06-28 13:25:27', 'Administrator', 'ACCEPT', 'test', NULL),
(4, 14, '2018-07-20 15:57:56', 'Administrator', 'ACCEPT', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблиці `jassign`
--

CREATE TABLE `jassign` (
  `id` int(15) NOT NULL,
  `interventionid` int(10) DEFAULT NULL,
  `assignto` varchar(50) DEFAULT NULL,
  `aaavehicle` varchar(50) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `jobstatus` varchar(50) DEFAULT NULL,
  `assignto2` varchar(50) DEFAULT NULL,
  `aaavehicle2` varchar(50) DEFAULT NULL,
  `servicetype` varchar(50) DEFAULT NULL,
  `comment` text,
  `step` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Дамп даних таблиці `jassign`
--

INSERT INTO `jassign` (`id`, `interventionid`, `assignto`, `aaavehicle`, `createdon`, `createdby`, `jobstatus`, `assignto2`, `aaavehicle2`, `servicetype`, `comment`, `step`) VALUES
(41, 11, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 12, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 13, 'Tech', 'AA499', '2018-06-28 13:11:32', 'Administrator', NULL, NULL, NULL, NULL, NULL, NULL),
(44, 13, 'manager', 'AA499', '2018-06-28 13:24:50', 'Administrator', NULL, NULL, NULL, NULL, 're-assigned', NULL),
(45, 14, 'manager', 'AA499', '2018-07-20 15:53:17', 'Administrator', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблиці `jclose`
--

CREATE TABLE `jclose` (
  `id` int(15) NOT NULL,
  `interventionid` int(10) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `ovnwh` char(10) DEFAULT NULL,
  `servicetype` varchar(50) DEFAULT NULL,
  `odometer` int(15) DEFAULT NULL,
  `comment` text,
  `step` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Дамп даних таблиці `jclose`
--

INSERT INTO `jclose` (`id`, `interventionid`, `createdon`, `createdby`, `location`, `ovnwh`, `servicetype`, `odometer`, `comment`, `step`) VALUES
(41, 11, '2018-06-13 13:13:36', 'Administrator', NULL, NULL, NULL, NULL, NULL, NULL),
(42, 11, '2018-06-13 13:15:04', 'Administrator', NULL, NULL, NULL, NULL, NULL, NULL),
(43, 12, '2018-06-15 13:17:36', 'Administrator', NULL, 'NORMAL', 'RA', NULL, 'test', NULL),
(44, 12, '2018-06-28 11:53:55', 'Administrator', NULL, NULL, NULL, NULL, NULL, NULL),
(45, 13, '2018-06-28 13:29:48', 'Administrator', NULL, 'NORMAL', 'RA', NULL, NULL, NULL),
(46, 13, '2018-06-28 13:33:59', 'Administrator', NULL, 'OVERTIME', 'RA', NULL, NULL, NULL),
(47, 14, '2018-07-20 15:58:43', 'Administrator', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблиці `jenroute`
--

CREATE TABLE `jenroute` (
  `id` int(15) NOT NULL,
  `interventionid` int(10) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `comment` text,
  `step` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Дамп даних таблиці `jenroute`
--

INSERT INTO `jenroute` (`id`, `interventionid`, `createdon`, `createdby`, `location`, `comment`, `step`) VALUES
(1, 12, '2018-06-15 13:17:20', 'Administrator', NULL, 'test', NULL),
(2, 13, '2018-06-28 13:15:29', 'Administrator', NULL, 'test', NULL),
(3, 13, '2018-06-28 13:26:29', 'Administrator', NULL, NULL, NULL),
(4, 14, '2018-07-20 15:58:08', 'Administrator', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблиці `job`
--

CREATE TABLE `job` (
  `id` int(15) NOT NULL,
  `interventionid` int(10) DEFAULT NULL,
  `assignto` varchar(50) DEFAULT NULL,
  `aaavehicle` varchar(50) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `jobstatus` varchar(50) DEFAULT NULL,
  `ovnwh` char(10) DEFAULT NULL,
  `assignto2` varchar(50) DEFAULT NULL,
  `aaavehicle2` varchar(50) DEFAULT NULL,
  `servicetype` varchar(50) DEFAULT NULL,
  `comment` text,
  `step` int(2) DEFAULT NULL,
  `odometer` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `job`
--

INSERT INTO `job` (`id`, `interventionid`, `assignto`, `aaavehicle`, `createdon`, `createdby`, `jobstatus`, `ovnwh`, `assignto2`, `aaavehicle2`, `servicetype`, `comment`, `step`, `odometer`) VALUES
(1, 1, 'user1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 1, NULL, NULL, NULL, NULL, 'accepted', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 1, NULL, NULL, NULL, NULL, 'enroute', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 3, 'JOHN', 'TECH', '2018-04-28 12:01:43', '-1', 'OPEN', NULL, NULL, NULL, NULL, NULL, 1, NULL),
(5, 3, 'JOHN', 'TECH', '2018-04-28 12:03:38', '-1', 'ACCEPTED', NULL, NULL, NULL, NULL, NULL, 2, NULL),
(6, 3, NULL, NULL, '2018-04-28 12:04:03', '-1', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL),
(7, 3, NULL, NULL, '2018-04-28 12:05:21', '-1', NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL),
(8, 3, NULL, NULL, '2018-04-28 12:05:34', '-1', NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL),
(9, NULL, 'TEEDESH', NULL, '2018-05-09 16:02:35', '-1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 1, NULL, NULL, '2018-05-15 16:18:56', '-1', 'ENROUTE', NULL, NULL, NULL, NULL, NULL, 3, NULL),
(11, 1, NULL, NULL, '2018-05-15 23:27:22', '-1', NULL, NULL, NULL, NULL, NULL, 'tew', 1, NULL),
(13, 5, 'teedesh', 'team1', '2018-05-22 15:11:47', '-1', 'ASSIGNED', NULL, NULL, NULL, NULL, NULL, 1, NULL),
(14, 5, 'gino', 't1', '2018-05-22 15:16:37', '-1', NULL, NULL, NULL, NULL, NULL, 'due to traffic', 1, NULL),
(15, 5, NULL, NULL, '2018-05-22 15:17:49', '-1', NULL, NULL, NULL, NULL, NULL, 'accept late', 2, NULL),
(16, 5, NULL, NULL, '2018-05-22 15:18:25', '-1', NULL, NULL, NULL, NULL, NULL, 'leaving now', 3, NULL),
(17, 5, NULL, NULL, '2018-05-22 15:18:51', '-1', NULL, NULL, NULL, NULL, NULL, 'customer not with car\r\nwaiting for customer', 4, NULL),
(18, 5, NULL, NULL, '2018-05-22 15:21:19', '-1', NULL, NULL, NULL, NULL, NULL, 'work done', 5, NULL),
(19, 6, 'TEEDESH', 'TECH', '2018-05-29 11:24:44', '-1', 'ASSIGNED', NULL, NULL, NULL, NULL, 'test', NULL, NULL),
(20, 6, 'Christopher', 'TECH', '2018-05-29 11:25:09', '-1', 'ASSIGNED', NULL, NULL, NULL, NULL, NULL, 1, NULL),
(21, 6, NULL, NULL, '2018-05-29 11:25:36', '-1', 'ACCEPTED', NULL, NULL, NULL, NULL, NULL, 2, NULL),
(22, 6, NULL, NULL, '2018-05-29 11:25:46', '-1', 'ENROUTE', NULL, NULL, NULL, NULL, NULL, 3, NULL),
(23, 6, NULL, NULL, '2018-05-29 11:25:54', '-1', NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL),
(24, 4, NULL, NULL, '2018-05-29 13:24:25', '-1', 'ASSIGNED', NULL, NULL, NULL, NULL, NULL, 1, NULL),
(27, 6, NULL, NULL, '2018-05-29 14:54:05', '-1', NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL),
(28, 8, NULL, NULL, '2018-05-29 15:15:53', '-1', 'ASSIGNED', NULL, NULL, NULL, NULL, NULL, 1, NULL),
(29, 9, 'TEEDESH', 'TECH', '2018-05-29 15:36:09', '-1', 'ASSIGNED', NULL, NULL, NULL, NULL, NULL, 1, NULL),
(30, 9, NULL, NULL, '2018-05-29 15:36:22', '-1', NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL),
(31, 9, NULL, NULL, '2018-05-29 15:36:31', '-1', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL),
(32, 9, NULL, NULL, '2018-05-29 15:36:37', '-1', NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL),
(33, 9, NULL, NULL, '2018-05-29 15:36:53', '-1', NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL),
(34, 10, 'Tech', NULL, '2018-06-04 14:07:14', '-1', NULL, 'overtime', NULL, NULL, NULL, NULL, 1, NULL),
(35, 10, NULL, NULL, '2018-06-04 14:07:49', '-1', NULL, 'normal', NULL, NULL, NULL, NULL, 2, NULL),
(36, 10, NULL, NULL, '2018-06-04 14:07:58', '-1', NULL, 'normal', NULL, NULL, NULL, NULL, 3, NULL),
(37, 10, NULL, NULL, '2018-06-04 14:08:06', '-1', NULL, 'normal', NULL, NULL, NULL, NULL, 4, NULL),
(38, 10, NULL, NULL, '2018-06-04 14:08:21', '-1', NULL, 'normal', NULL, NULL, NULL, NULL, 5, NULL),
(39, 1, NULL, NULL, '2018-06-06 11:37:14', '-1', NULL, 'normal', NULL, NULL, NULL, NULL, 2, NULL),
(40, 1, NULL, NULL, '2018-06-06 11:37:26', '-1', NULL, 'normal', NULL, NULL, NULL, NULL, 2, NULL);

-- --------------------------------------------------------

--
-- Структура таблиці `jonsite`
--

CREATE TABLE `jonsite` (
  `id` int(15) NOT NULL,
  `interventionid` int(10) DEFAULT NULL,
  `aaavehicle` varchar(50) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `comment` text,
  `step` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Дамп даних таблиці `jonsite`
--

INSERT INTO `jonsite` (`id`, `interventionid`, `aaavehicle`, `createdon`, `createdby`, `comment`, `step`) VALUES
(1, 12, NULL, '2018-06-15 13:17:26', 'Administrator', 'test', NULL),
(2, 13, NULL, '2018-06-28 13:16:13', 'Administrator', 'tst', NULL),
(3, 13, NULL, '2018-06-28 13:27:13', 'Administrator', NULL, NULL),
(4, 14, NULL, '2018-07-20 15:58:30', 'Administrator', NULL, NULL);

-- --------------------------------------------------------

--
-- Дублююча структура для представлення `jtime`
--
CREATE TABLE `jtime` (
`tixid` int(10)
,`intid` int(10)
,`regno` varchar(50)
,`assignedto` varchar(50)
,`assignedaaa` varchar(50)
,`assignedon` varchar(19)
,`assignedby` varchar(50)
,`acceptby` varchar(50)
,`accepton` varchar(19)
,`enrouteon` varchar(19)
,`enrouteby` varchar(50)
,`onsiteon` varchar(19)
,`onsiteby` varchar(50)
,`closedon` varchar(19)
,`closedby` varchar(50)
,`servicetype` varchar(50)
);

-- --------------------------------------------------------

--
-- Структура таблиці `member`
--

CREATE TABLE `member` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `password_hash` varchar(256) NOT NULL,
  `salt` varchar(256) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп даних таблиці `member`
--

INSERT INTO `member` (`user_id`, `username`, `full_name`, `password_hash`, `salt`, `created_date`) VALUES
(1, 'flox6375', 'DIma', '$2y$10$av/0/dzM6cSVei7op6jgT.tma8NSTNws2JlxqxsbykbkYC.tzToua', '16c8ec9b549ad705900e09bb22c912e6f1dd1e88baf358893e59189781a953e0', '2019-08-01 12:39:19'),
(2, 'flox', 'Alex', '$2y$10$B0552ljdjL8BMJkW9qrxT.8LRqRUgXbrVhwjIP7cRaQgbeCR3tO22', 'eff4c70c7b384675393406778ac2be1a31390b9b7fce6b2aa32c32922aaf74db', '2019-08-01 12:40:50');

-- --------------------------------------------------------

--
-- Структура таблиці `membership`
--

CREATE TABLE `membership` (
  `id` int(10) NOT NULL,
  `memno` varchar(50) DEFAULT NULL,
  `regno` varchar(50) DEFAULT NULL,
  `clientid` int(10) DEFAULT NULL,
  `mplan` varchar(50) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `createdon` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Дамп даних таблиці `membership`
--

INSERT INTO `membership` (`id`, `memno`, `regno`, `clientid`, `mplan`, `startdate`, `enddate`, `status`, `createdby`, `createdon`) VALUES
(1, 'AAA000000000001', '1024FB18', 5, 'RoadSURE', '2018-04-26', '2019-04-26', 'Active', '-1', '2018-04-26'),
(2, 'O-00000000000002', '5653SP11', NULL, 'RoadSAFE', '2018-04-01', '2019-04-01', 'Active', '-1', '2018-04-28'),
(3, 'O-00000000000003', 'Test02', NULL, 'RoadSAFE', '2018-05-22', '2018-05-21', 'Active', '-1', '2018-05-22'),
(4, 'O-00000000000004', 'R1135', NULL, NULL, '2018-05-29', '2018-05-29', NULL, '-1', '2018-05-29');

-- --------------------------------------------------------

--
-- Структура таблиці `mileage`
--

CREATE TABLE `mileage` (
  `id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `amt` decimal(10,2) DEFAULT NULL,
  `con` datetime DEFAULT NULL,
  `cby` varchar(50) DEFAULT NULL,
  `aaavehicle` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Структура таблиці `mplan`
--

CREATE TABLE `mplan` (
  `id` int(10) NOT NULL,
  `mplan` varchar(50) DEFAULT NULL,
  `fee` decimal(10,2) DEFAULT NULL,
  `nofint` int(2) DEFAULT NULL,
  `description` text,
  `active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `mplan`
--

INSERT INTO `mplan` (`id`, `mplan`, `fee`, `nofint`, `description`, `active`) VALUES
(1, 'RoadSAFE', '100.00', 2, NULL, 1),
(2, 'RoadSMART', '200.00', 3, NULL, 1),
(3, 'RoadSURE', '500.00', 5, NULL, 1);

-- --------------------------------------------------------

--
-- Дублююча структура для представлення `myintervention`
--
CREATE TABLE `myintervention` (
`id` int(10)
,`status` varchar(50)
,`issue` varchar(50)
,`resolution` varchar(50)
,`assignedto` varchar(50)
,`ticketid` int(10)
);

-- --------------------------------------------------------

--
-- Структура таблиці `payment`
--

CREATE TABLE `payment` (
  `id` int(10) NOT NULL,
  `sheetid` int(10) NOT NULL,
  `createdon` datetime DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `bstatus` varchar(50) DEFAULT NULL,
  `billto` int(10) DEFAULT NULL,
  `amountpaid` decimal(10,0) DEFAULT NULL,
  `vat` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Структура таблиці `planserv`
--

CREATE TABLE `planserv` (
  `id` int(11) NOT NULL,
  `planid` int(10) DEFAULT NULL,
  `serviceid` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `planserv`
--

INSERT INTO `planserv` (`id`, `planid`, `serviceid`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 2, 1),
(7, 2, 2),
(8, 2, 3),
(9, 2, 4),
(10, 2, 5),
(11, 2, 6),
(12, 2, 7),
(13, 3, 1),
(14, 3, 2),
(15, 3, 3),
(16, 3, 4),
(17, 3, 5),
(18, 3, 6),
(19, 3, 7),
(20, 3, 8),
(21, 3, 9);

-- --------------------------------------------------------

--
-- Структура таблиці `pmt_rep1`
--

CREATE TABLE `pmt_rep1` (
  `APP_UID` varchar(32) NOT NULL,
  `APP_NUMBER` int(11) NOT NULL,
  `APP_STATUS` varchar(10) NOT NULL,
  `TEST` bigint(20) DEFAULT NULL,
  `DROPDOWNVAR002` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `pmt_rep1`
--

INSERT INTO `pmt_rep1` (`APP_UID`, `APP_NUMBER`, `APP_STATUS`, `TEST`, `DROPDOWNVAR002`) VALUES
('2142028805b336394e01412043932539', 11, 'COMPLETED', NULL, NULL),
('7586975095b3369a307f915092330493', 12, 'COMPLETED', NULL, NULL),
('7940673825b34a8763f7ce6093398954', 14, 'DRAFT', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблиці `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `shortdesc` varchar(500) NOT NULL,
  `rating` float NOT NULL,
  `price` double NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп даних таблиці `products`
--

INSERT INTO `products` (`id`, `title`, `shortdesc`, `rating`, `price`, `image`) VALUES
(1, 'Tu Sobaka', '13.3 inch, Silver, 1.35 kg', 4.7, 56990, 'https://www.laptopmag.com/images/uploads/4427/g/apple-macbook-air-13inch-w-g03.jpg'),
(2, 'Dell Inspiron 7000 Core i5 7th Gen - (8 GB/1 TB HDD/Windows 10 Home)', '14 inch, Gray, 1.659 kg', 4.3, 60990, 'https://www.laptopmag.com/images/uploads/4442/g/dell-inspiron-15-7000-w-g02.jpg'),
(3, 'Microsoft Surface Pro 4 Core m3 6th Gen - (4 GB/128 GB SSD/Windows 10)', '12.3 inch, Silver, 0.76 kg', 4.2, 54999, 'https://images-na.ssl-images-amazon.com/images/I/41JOpEMJsDL.jpg');

-- --------------------------------------------------------

--
-- Структура таблиці `quota`
--

CREATE TABLE `quota` (
  `id` int(15) NOT NULL,
  `intid` int(10) NOT NULL,
  `createdon` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createdby` varchar(50) DEFAULT NULL,
  `vehicle` varchar(50) DEFAULT NULL,
  `covertype` varchar(50) DEFAULT NULL,
  `quota` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Структура таблиці `quotatype`
--

CREATE TABLE `quotatype` (
  `id` int(15) NOT NULL,
  `createdon` datetime DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `covertype` varchar(50) DEFAULT NULL,
  `quota` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Дамп даних таблиці `quotatype`
--

INSERT INTO `quotatype` (`id`, `createdon`, `createdby`, `covertype`, `quota`) VALUES
(4, NULL, NULL, 'insurance', 3),
(5, NULL, NULL, 'group', 3);

-- --------------------------------------------------------

--
-- Структура таблиці `rat`
--

CREATE TABLE `rat` (
  `id` int(10) NOT NULL,
  `brief` varchar(50) NOT NULL DEFAULT '0',
  `type1` varchar(50) NOT NULL DEFAULT '0',
  `type2` varchar(50) NOT NULL DEFAULT '0',
  `type3` varchar(50) NOT NULL DEFAULT '0',
  `resolution` varchar(50) NOT NULL DEFAULT '0',
  `issuetype` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Дамп даних таблиці `rat`
--

INSERT INTO `rat` (`id`, `brief`, `type1`, `type2`, `type3`, `resolution`, `issuetype`) VALUES
(1, 'ACCIDENT', 'CAN BE DRIVEN / SAFE TO DRIVE', 'NONE', 'NONE', ' PERSON TO DRIVE VEHICLE TO WORKSHOP OR RA', 'ACCIDENT'),
(2, 'ACCIDENT', 'CAN BE DRIVEN / BUT UNSAFE', 'NONE', 'NONE', ' TOWING', 'ACCIDENT'),
(3, 'ACCIDENT', 'HEAVY DAMAGE', 'VEHICLE IS NOT OFFROAD / 4 WHEELS INTACT', 'NONE', ' TOWING', 'ACCIDENT'),
(4, 'ACCIDENT', 'HEAVY DAMAGE', 'VEHICLE OFFROAD / DITCHED', 'NONE', ' DESPATCH CALL TO COORDINATOR', 'ACCIDENT'),
(5, 'ACCIDENT', 'HEAVY DAMAGE', 'VEHICLE UPSIDE DOWN', 'NONE', ' DESPATCH CALL TO COORDINATOR', 'ACCIDENT'),
(6, 'ACCIDENT', 'HEAVY DAMAGE', 'LOST ONE OR MORE WHEELS', 'NONE', ' DESPATCH CALL TO COORDINATOR', 'ACCIDENT'),
(7, 'VEHICLE OVERHEAT', 'NONE', 'NONE', 'NONE', ' TOWING', 'OVERHEAT'),
(8, 'NOT MOVING', 'ENGINE STARTS AND HOLDS', 'GEAR NOT IN PROPERLY', 'NONE', ' CAN BE RESOLVED BY CUSTOMER', 'OVERHEAT'),
(9, 'NOT MOVING', 'ENGINE STARTS AND HOLDS', 'GEAR IN PROPERLY', 'NONE', ' TOWING', 'MECHANICAL'),
(10, 'NOT MOVING', 'FUEL ISSUE', 'NO FUEL', 'NONE', ' RA', 'FUEL'),
(11, 'NOT MOVING', 'FUEL ISSUE', 'DIFFERENT FUEL USED', 'NONE', ' TOWING', 'FUEL'),
(12, 'NOT MOVING', 'FUEL ISSUE', 'DON''T KNOW', 'NONE', ' DESPATCH CALL TO COORDINATOR', 'FUEL'),
(13, 'NOT MOVING', 'NO IGNITION / KEY TURNING', 'AUTOMATIC', 'GEAR NOT ON P', ' CAN BE RESOLVED BY CUSTOMER', 'TBC'),
(14, 'NOT MOVING', 'NO IGNITION / KEY TURNING', 'AUTOMATIC', 'GEAR ON P', ' DESPATCH CALL TO COORDINATOR', 'TBC'),
(15, 'NOT MOVING', 'NO IGNITION / KEY TURNING', 'MANUAL', 'NONE', ' DESPATCH CALL TO COORDINATOR', 'TBC'),
(16, 'NOT MOVING', 'NO IGNITION / KEY TURNING', 'DON''T KNOW', 'NONE', ' DESPATCH CALL TO COORDINATOR', 'TBC'),
(17, 'NOT MOVING', 'KEY NOT TURNING / STUCK', 'DON''T KNOW', 'NONE', ' DESPATCH CALL TO COORDINATOR', 'TBC'),
(18, 'NOT MOVING', 'DON''T KNOW', 'NONE', 'NONE', ' DESPATCH CALL TO COORDINATOR', 'TBC'),
(19, 'ABNORMAL NOISE', 'SUSPENSION LEVEL', ' CAN BE DRIVEN / SAFE', ' SMALL', ' PERSON TO DRIVE VEHICLE TO WORKSHOP OR TW', 'NOISE'),
(20, 'ABNORMAL NOISE', 'SUSPENSION LEVEL', ' CAN BE DRIVEN / SAFE', ' LOUD', ' TOWING', 'NOISE'),
(21, 'ABNORMAL NOISE', 'SUSPENSION LEVEL', ' CAN''T BE DRIVEN', 'NONE', ' TOWING', 'NOISE'),
(22, 'ABNORMAL NOISE', ' TYRE LEVEL', ' FLAT', 'NONE', ' REFER TO TYRES SECTION', 'TYRE'),
(23, 'ABNORMAL NOISE', ' TYRE LEVEL', ' NOT FLAT', ' CAN BE DRIVEN', ' PERSON TO DRIVE VEHICLE TO WORKSHOP OR TW', 'NOISE'),
(24, 'ABNORMAL NOISE', ' TYRE LEVEL', ' NOT FLAT', ' CAN''T BE DRIVEN', ' TOWING', 'NOISE'),
(25, 'ABNORMAL NOISE', ' ENGINE', ' SMALL', ' CAN BE DRIVEN', ' PERSON TO DRIVE VEHICLE TO WORKSHOP OR TW', 'NOISE'),
(26, 'ABNORMAL NOISE', ' ENGINE', ' SMALL', ' CAN''T BE DRIVEN', ' TOWING', 'NOISE'),
(27, 'ABNORMAL NOISE', ' ENGINE', ' LOUD', 'NONE', ' TOWING', 'NOISE'),
(28, 'ABNORMAL NOISE', ' DON''T KNOW', ' CAN BE DRIVEN', 'NONE', ' PERSON TO DRIVE VEHICLE TO WORKSHOP OR TW', 'NOISE'),
(29, 'ABNORMAL NOISE', ' DON''T KNOW', ' CAN''T BE DRIVEN', 'NONE', ' TOWING', 'NOISE'),
(30, ' TYRES', ' 1 FLAT TYRE', ' SPARE WHEEL AVAILABLE', 'NONE', ' RA', 'TYRE'),
(31, ' TYRES', ' 1 FLAT TYRE', ' SPW NOT AVAILABLE', ' EXPLODED', ' TOWING', 'TYRE'),
(32, ' TYRES', ' 1 FLAT TYRE', ' SPW NOT AVAILABLE', ' PUNCTURE ON SIDE WALL', ' TOWING', 'TYRE'),
(33, ' TYRES', ' 1 FLAT TYRE', ' SPW NOT AVAILABLE', ' PUNCTURE ON THREADS', ' RA', 'TYRE'),
(34, ' TYRES', ' 1 FLAT TYRE', ' SPW NOT AVAILABLE', ' DON''T KNOW', ' DESPATCH CALL TO COORDINATOR', 'TYRE'),
(35, ' TYRES', ' 2 FLAT TYRES', ' BOTH PUNCTURE ON THREADS', 'NONE', ' RA', 'TYRE'),
(36, ' TYRES', ' 2 FLAT TYRES', ' BOTH PUNCTURE ON SIDE WALLS', 'NONE', ' TOWING', 'TYRE'),
(37, ' TYRES', ' 2 FLAT TYRES', ' 1 ON THREADS, 1 ON SIDE WALLS', ' SPARE WHEEL AVAILABLE', ' RA', 'TYRE'),
(38, ' TYRES', ' 2 FLAT TYRES', ' 1 ON THREADS, 1 ON SIDE WALLS', ' SPW NOT AVAILABLE', ' TOWING', 'TYRE'),
(39, ' TYRES', ' 2 FLAT TYRES', ' DON''T KNOW', 'NONE', ' TOWING', 'TYRE'),
(40, ' TYRES', ' MORE THAN 2', 'NONE', 'NONE', ' TOWING', 'TYRE'),
(41, ' KEY ISSUES', ' FORGOT KEY INSIDE VEHICLE', 'NONE', 'NONE', ' RA', 'LOCKOUT'),
(42, ' KEY ISSUES', ' LOST KEY', ' SPARE AVAILABLE', 'NONE', ' RA', 'LOCKOUT'),
(43, ' KEY ISSUES', ' LOST KEY', ' SPARE NOT AVAILABLE', 'NONE', ' TOWING', 'LOCKOUT'),
(44, ' KEY ISSUES', ' KEY NOT WORKING', ' REMOTE WORKS', 'NONE', ' TOWING', 'LOCKOUT'),
(45, ' KEY ISSUES', ' KEY NOT WORKING', ' REMOTE DOES NOT WORK', 'NONE', ' DESPATCH CALL TO COORDINATOR', 'LOCKOUT'),
(46, ' DON''T KNOW', 'NONE', 'NONE', 'NONE', ' DESPATCH CALL TO COORDINATOR', 'TBC');

-- --------------------------------------------------------

--
-- Структура таблиці `reqloc`
--

CREATE TABLE `reqloc` (
  `id` int(11) NOT NULL,
  `ticketid` int(10) DEFAULT NULL,
  `locurl` varchar(255) DEFAULT NULL,
  `gps` varchar(255) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблиці `rhelp`
--

CREATE TABLE `rhelp` (
  `id` int(15) NOT NULL,
  `interventionid` int(10) DEFAULT NULL,
  `assignto` varchar(50) DEFAULT NULL,
  `aaavehicle` varchar(50) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `requestedby` varchar(50) DEFAULT NULL,
  `servicetype` varchar(50) DEFAULT NULL,
  `comment` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Структура таблиці `sec_usersapps`
--

CREATE TABLE `sec_usersapps` (
  `app_name` varchar(128) NOT NULL,
  `app_type` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `sec_usersapps`
--

INSERT INTO `sec_usersapps` (`app_name`, `app_type`, `description`) VALUES
('app_change_pswd', 'contr', 'Security Application'),
('app_form_add_users', 'form', 'Security Application'),
('app_form_edit_users', 'form', 'Security Application'),
('app_form_sec_apps', 'form', 'Security Application'),
('app_form_sec_groups', '', NULL),
('app_form_sec_groups_apps', '', NULL),
('app_form_sec_users_apps', 'form', 'Security Application'),
('app_grid_sec_apps', 'cons', 'Security Application'),
('app_grid_sec_groups', '', NULL),
('app_grid_sec_users', 'cons', 'Security Application'),
('app_grid_sec_users_apps', 'cons', 'Security Application'),
('app_grid_sec_users_groups', '', NULL),
('app_logged', 'contr', 'Security Application'),
('app_logged_users', 'cons', 'Security Application'),
('app_Login', 'contr', 'Security Application'),
('app_retrieve_pswd', 'contr', 'Security Application'),
('app_search_sec_groups', '', NULL),
('app_search_sec_users', 'contr', 'Security Application'),
('app_sync_apps', 'contr', 'Security Application'),
('dashboard', 'container', ''),
('form_aaavehicle', 'form', ''),
('form_attendance', 'form', ''),
('form_billing', 'form', ''),
('form_carlist', 'form', ''),
('form_citycode', 'form', ''),
('form_client', 'form', ''),
('form_cvim', 'form', ''),
('form_fuelcheck', 'form', ''),
('form_fuellog', 'form', ''),
('form_fuelprice', 'form', ''),
('form_insuranceco', 'form', ''),
('form_insuredvehicle', 'form', ''),
('form_intervention', 'form', ''),
('form_intervention_inline', '', NULL),
('form_invoice', 'form', ''),
('form_invoiceitem', 'form', ''),
('form_jaccept', 'form', ''),
('form_jassign', 'form', ''),
('form_jclose', 'form', ''),
('form_jenroute', 'form', ''),
('form_job', 'form', ''),
('form_jonsite', 'form', ''),
('form_membership', 'form', ''),
('form_mileage', 'form', ''),
('form_mplan', 'form', ''),
('form_payment', 'form', ''),
('form_planserv', 'form', ''),
('form_quota', 'form', ''),
('form_quotatype', 'form', ''),
('form_rat', 'form', ''),
('form_rhelp', 'form', ''),
('form_service', 'form', ''),
('form_status', 'form', ''),
('form_stepcase', 'form', ''),
('form_stock', 'form', ''),
('form_ticket', 'form', ''),
('form_user', 'form', ''),
('form_userlevelpermissions', 'form', ''),
('form_userlevels', 'form', ''),
('form_vehicle', 'form', ''),
('form_workshop', 'form', ''),
('grid_aaavehicle', 'cons', ''),
('grid_attendance', 'cons', ''),
('grid_billing', 'cons', ''),
('grid_carlist', 'cons', ''),
('grid_citycode', 'cons', ''),
('grid_client', 'cons', ''),
('grid_cvim', 'cons', ''),
('grid_fuelcheck', 'cons', ''),
('grid_fuellog', 'cons', ''),
('grid_fuelprice', 'cons', ''),
('grid_insuranceco', 'cons', ''),
('grid_insuredv', 'cons', ''),
('grid_insuredvehicle', 'cons', ''),
('grid_insuredv_1', 'cons', ''),
('grid_intertix', 'cons', ''),
('grid_intervention', 'cons', ''),
('grid_invoice', 'cons', ''),
('grid_invoiceitem', 'cons', ''),
('grid_jaccept', 'cons', ''),
('grid_jassign', 'cons', ''),
('grid_jclose', 'cons', ''),
('grid_jenroute', 'cons', ''),
('grid_job', 'cons', ''),
('grid_jonsite', 'cons', ''),
('grid_jtime', 'cons', ''),
('grid_membership', 'cons', ''),
('grid_mileage', 'cons', ''),
('grid_mplan', 'cons', ''),
('grid_payment', 'cons', ''),
('grid_planserv', 'cons', ''),
('grid_quota', 'cons', ''),
('grid_quotatype', 'cons', ''),
('grid_rat', 'cons', ''),
('grid_rhelp', 'cons', ''),
('grid_service', 'cons', ''),
('grid_status', 'cons', ''),
('grid_stepcase', 'cons', ''),
('grid_stock', 'cons', ''),
('grid_test', 'cons', ''),
('grid_ticket', 'cons', ''),
('grid_user', 'cons', ''),
('grid_userlevelpermissions', 'cons', ''),
('grid_userlevels', 'cons', ''),
('grid_vdetails', 'cons', ''),
('grid_vehicle', 'cons', ''),
('grid_vehinter', 'cons', ''),
('grid_vehowner', 'cons', ''),
('grid_vhistory', 'cons', ''),
('grid_vintsheet', 'cons', ''),
('grid_vti', 'cons', ''),
('grid_workshop', 'cons', ''),
('menu', 'menu', '');

-- --------------------------------------------------------

--
-- Структура таблиці `sec_userslogged`
--

CREATE TABLE `sec_userslogged` (
  `login` varchar(255) NOT NULL,
  `date_login` varchar(128) DEFAULT NULL,
  `sc_session` varchar(32) DEFAULT NULL,
  `ip` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `sec_userslogged`
--

INSERT INTO `sec_userslogged` (`login`, `date_login`, `sc_session`, `ip`) VALUES
('test', '1531399016.409', 'd8sn7cmte1a3rfncaqq5bcmjo4', '127.0.0.1');

-- --------------------------------------------------------

--
-- Структура таблиці `sec_usersusers`
--

CREATE TABLE `sec_usersusers` (
  `login` varchar(255) NOT NULL,
  `pswd` varchar(255) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `active` varchar(1) DEFAULT NULL,
  `activation_code` varchar(32) DEFAULT NULL,
  `priv_admin` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `sec_usersusers`
--

INSERT INTO `sec_usersusers` (`login`, `pswd`, `name`, `email`, `active`, `activation_code`, `priv_admin`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin', 'admin@admin.com', 'Y', NULL, 'Y'),
('test', '098f6bcd4621d373cade4e832627b4f6', 'Test User', 'test@test.mu', 'Y', '', '');

-- --------------------------------------------------------

--
-- Структура таблиці `sec_usersusers_apps`
--

CREATE TABLE `sec_usersusers_apps` (
  `login` varchar(255) NOT NULL,
  `app_name` varchar(128) NOT NULL,
  `priv_access` varchar(1) DEFAULT NULL,
  `priv_insert` varchar(1) DEFAULT NULL,
  `priv_delete` varchar(1) DEFAULT NULL,
  `priv_update` varchar(1) DEFAULT NULL,
  `priv_export` varchar(1) DEFAULT NULL,
  `priv_print` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `sec_usersusers_apps`
--

INSERT INTO `sec_usersusers_apps` (`login`, `app_name`, `priv_access`, `priv_insert`, `priv_delete`, `priv_update`, `priv_export`, `priv_print`) VALUES
('admin', 'app_change_pswd', 'Y', 'N', 'N', 'N', 'N', 'N'),
('admin', 'app_form_add_users', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('admin', 'app_form_edit_users', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('admin', 'app_form_sec_apps', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('admin', 'app_form_sec_groups', NULL, NULL, NULL, NULL, NULL, NULL),
('admin', 'app_form_sec_groups_apps', NULL, NULL, NULL, NULL, NULL, NULL),
('admin', 'app_form_sec_users_apps', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('admin', 'app_grid_sec_apps', 'Y', 'N', 'N', 'N', 'Y', 'Y'),
('admin', 'app_grid_sec_groups', NULL, NULL, NULL, NULL, NULL, NULL),
('admin', 'app_grid_sec_users', 'Y', 'N', 'N', 'N', 'Y', 'Y'),
('admin', 'app_grid_sec_users_apps', 'Y', 'N', 'N', 'N', 'Y', 'Y'),
('admin', 'app_grid_sec_users_groups', NULL, NULL, NULL, NULL, NULL, NULL),
('admin', 'app_logged', 'Y', 'N', 'N', 'N', 'N', 'N'),
('admin', 'app_logged_users', 'Y', 'N', 'N', 'N', 'Y', 'Y'),
('admin', 'app_Login', 'Y', 'N', 'N', 'N', 'N', 'N'),
('admin', 'app_retrieve_pswd', 'Y', 'N', 'N', 'N', 'N', 'N'),
('admin', 'app_search_sec_groups', NULL, NULL, NULL, NULL, NULL, NULL),
('admin', 'app_search_sec_users', 'Y', 'N', 'N', 'N', 'N', 'N'),
('admin', 'app_sync_apps', 'Y', 'N', 'N', 'N', 'N', 'N'),
('admin', 'dashboard', 'Y', 'N', 'N', 'N', 'N', 'N'),
('admin', 'form_aaavehicle', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('admin', 'form_attendance', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('admin', 'form_billing', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('admin', 'form_carlist', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('admin', 'form_citycode', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('admin', 'form_client', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('admin', 'form_cvim', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('admin', 'form_fuelcheck', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('admin', 'form_fuellog', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('admin', 'form_fuelprice', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('admin', 'form_insuranceco', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('admin', 'form_insuredvehicle', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('admin', 'form_intervention', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('admin', 'form_intervention_inline', NULL, NULL, NULL, NULL, NULL, NULL),
('admin', 'form_invoice', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('admin', 'form_invoiceitem', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('admin', 'form_jaccept', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('admin', 'form_jassign', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('admin', 'form_jclose', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('admin', 'form_jenroute', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('admin', 'form_job', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('admin', 'form_jonsite', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('admin', 'form_membership', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('admin', 'form_mileage', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('admin', 'form_mplan', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('admin', 'form_payment', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('admin', 'form_planserv', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('admin', 'form_quota', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('admin', 'form_quotatype', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('admin', 'form_rat', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('admin', 'form_rhelp', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('admin', 'form_service', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('admin', 'form_status', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('admin', 'form_stepcase', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('admin', 'form_stock', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('admin', 'form_ticket', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('admin', 'form_user', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('admin', 'form_userlevelpermissions', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('admin', 'form_userlevels', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('admin', 'form_vehicle', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('admin', 'form_workshop', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('admin', 'grid_aaavehicle', 'Y', 'N', 'N', 'N', 'Y', 'Y'),
('admin', 'grid_attendance', 'Y', 'N', 'N', 'N', 'Y', 'Y'),
('admin', 'grid_billing', 'Y', 'N', 'N', 'N', 'Y', 'Y'),
('admin', 'grid_carlist', 'Y', 'N', 'N', 'N', 'Y', 'Y'),
('admin', 'grid_citycode', 'Y', 'N', 'N', 'N', 'Y', 'Y'),
('admin', 'grid_client', 'Y', 'N', 'N', 'N', 'Y', 'Y'),
('admin', 'grid_cvim', 'Y', 'N', 'N', 'N', 'Y', 'Y'),
('admin', 'grid_fuelcheck', 'Y', 'N', 'N', 'N', 'Y', 'Y'),
('admin', 'grid_fuellog', 'Y', 'N', 'N', 'N', 'Y', 'Y'),
('admin', 'grid_fuelprice', 'Y', 'N', 'N', 'N', 'Y', 'Y'),
('admin', 'grid_insuranceco', 'Y', 'N', 'N', 'N', 'Y', 'Y'),
('admin', 'grid_insuredv', 'Y', 'N', 'N', 'N', 'Y', 'Y'),
('admin', 'grid_insuredvehicle', 'Y', 'N', 'N', 'N', 'Y', 'Y'),
('admin', 'grid_insuredv_1', 'Y', 'N', 'N', 'N', 'Y', 'Y'),
('admin', 'grid_intertix', 'Y', 'N', 'N', 'N', 'Y', 'Y'),
('admin', 'grid_intervention', 'Y', 'N', 'N', 'N', 'Y', 'Y'),
('admin', 'grid_invoice', 'Y', 'N', 'N', 'N', 'Y', 'Y'),
('admin', 'grid_invoiceitem', 'Y', 'N', 'N', 'N', 'Y', 'Y'),
('admin', 'grid_jaccept', 'Y', 'N', 'N', 'N', 'Y', 'Y'),
('admin', 'grid_jassign', 'Y', 'N', 'N', 'N', 'Y', 'Y'),
('admin', 'grid_jclose', 'Y', 'N', 'N', 'N', 'Y', 'Y'),
('admin', 'grid_jenroute', 'Y', 'N', 'N', 'N', 'Y', 'Y'),
('admin', 'grid_job', 'Y', 'N', 'N', 'N', 'Y', 'Y'),
('admin', 'grid_jonsite', 'Y', 'N', 'N', 'N', 'Y', 'Y'),
('admin', 'grid_jtime', 'Y', 'N', 'N', 'N', 'Y', 'Y'),
('admin', 'grid_membership', 'Y', 'N', 'N', 'N', 'Y', 'Y'),
('admin', 'grid_mileage', 'Y', 'N', 'N', 'N', 'Y', 'Y'),
('admin', 'grid_mplan', 'Y', 'N', 'N', 'N', 'Y', 'Y'),
('admin', 'grid_payment', 'Y', 'N', 'N', 'N', 'Y', 'Y'),
('admin', 'grid_planserv', 'Y', 'N', 'N', 'N', 'Y', 'Y'),
('admin', 'grid_quota', 'Y', 'N', 'N', 'N', 'Y', 'Y'),
('admin', 'grid_quotatype', 'Y', 'N', 'N', 'N', 'Y', 'Y'),
('admin', 'grid_rat', 'Y', 'N', 'N', 'N', 'Y', 'Y'),
('admin', 'grid_rhelp', 'Y', 'N', 'N', 'N', 'Y', 'Y'),
('admin', 'grid_service', 'Y', 'N', 'N', 'N', 'Y', 'Y'),
('admin', 'grid_status', 'Y', 'N', 'N', 'N', 'Y', 'Y'),
('admin', 'grid_stepcase', 'Y', 'N', 'N', 'N', 'Y', 'Y'),
('admin', 'grid_stock', 'Y', 'N', 'N', 'N', 'Y', 'Y'),
('admin', 'grid_test', 'Y', 'N', 'N', 'N', 'Y', 'Y'),
('admin', 'grid_ticket', 'Y', 'N', 'N', 'N', 'Y', 'Y'),
('admin', 'grid_user', 'Y', 'N', 'N', 'N', 'Y', 'Y'),
('admin', 'grid_userlevelpermissions', 'Y', 'N', 'N', 'N', 'Y', 'Y'),
('admin', 'grid_userlevels', 'Y', 'N', 'N', 'N', 'Y', 'Y'),
('admin', 'grid_vdetails', 'Y', 'N', 'N', 'N', 'N', 'N'),
('admin', 'grid_vehicle', 'Y', 'N', 'N', 'N', 'Y', 'Y'),
('admin', 'grid_vehinter', 'Y', 'N', 'N', 'N', 'Y', 'Y'),
('admin', 'grid_vehowner', 'Y', 'N', 'N', 'N', 'Y', 'Y'),
('admin', 'grid_vhistory', 'Y', 'N', 'N', 'N', 'Y', 'Y'),
('admin', 'grid_vintsheet', 'Y', 'N', 'N', 'N', 'Y', 'Y'),
('admin', 'grid_vti', 'Y', 'N', 'N', 'N', 'Y', 'Y'),
('admin', 'grid_workshop', 'Y', 'N', 'N', 'N', 'Y', 'Y'),
('admin', 'menu', 'Y', 'N', 'N', 'N', 'N', 'N'),
('test', 'app_change_pswd', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'app_form_add_users', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'app_form_edit_users', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'app_form_sec_apps', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'app_form_sec_groups', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'app_form_sec_groups_apps', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'app_form_sec_users_apps', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'app_grid_sec_apps', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'app_grid_sec_groups', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'app_grid_sec_users', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'app_grid_sec_users_apps', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'app_grid_sec_users_groups', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'app_logged', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'app_logged_users', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'app_Login', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'app_retrieve_pswd', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'app_search_sec_groups', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'app_search_sec_users', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'app_sync_apps', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'dashboard', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'form_aaavehicle', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'form_attendance', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'form_billing', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'form_carlist', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'form_citycode', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'form_client', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'form_cvim', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'form_fuelcheck', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'form_fuellog', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'form_fuelprice', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'form_insuranceco', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'form_insuredvehicle', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'form_intervention', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'form_intervention_inline', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'form_invoice', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'form_invoiceitem', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'form_jaccept', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'form_jassign', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'form_jclose', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'form_jenroute', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'form_job', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'form_jonsite', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'form_membership', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'form_mileage', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'form_mplan', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'form_payment', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'form_planserv', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'form_quota', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'form_quotatype', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'form_rat', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'form_rhelp', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'form_service', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'form_status', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'form_stepcase', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'form_stock', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'form_ticket', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'form_user', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'form_userlevelpermissions', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'form_userlevels', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'form_vehicle', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'form_workshop', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'grid_aaavehicle', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'grid_attendance', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'grid_billing', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'grid_carlist', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'grid_citycode', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'grid_client', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'grid_cvim', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'grid_fuelcheck', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'grid_fuellog', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'grid_fuelprice', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'grid_insuranceco', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'grid_insuredv', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'grid_insuredvehicle', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'grid_insuredv_1', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'grid_intertix', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'grid_intervention', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'grid_invoice', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'grid_invoiceitem', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'grid_jaccept', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'grid_jassign', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'grid_jclose', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'grid_jenroute', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'grid_job', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'grid_jonsite', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'grid_jtime', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'grid_membership', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'grid_mileage', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'grid_mplan', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'grid_payment', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'grid_planserv', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'grid_quota', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'grid_quotatype', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'grid_rat', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'grid_rhelp', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'grid_service', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'grid_status', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'grid_stepcase', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'grid_stock', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'grid_test', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'grid_ticket', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'grid_user', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'grid_userlevelpermissions', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'grid_userlevels', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'grid_vdetails', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'grid_vehicle', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'grid_vehinter', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'grid_vehowner', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'grid_vhistory', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'grid_vintsheet', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'grid_vti', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'grid_workshop', NULL, NULL, NULL, NULL, NULL, NULL),
('test', 'menu', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблиці `service`
--

CREATE TABLE `service` (
  `id` int(10) NOT NULL,
  `service` varchar(50) DEFAULT NULL,
  `active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `service`
--

INSERT INTO `service` (`id`, `service`, `active`) VALUES
(1, '24/7 Breakdown Assistance', 1),
(2, 'Battery Assist', 1),
(3, 'Fuel-out Service', 1),
(4, 'Tyre Repair Service', 1),
(5, 'Lock-Out Service', 1),
(6, 'Recovery Service', 1),
(7, 'Drop-Off Service', 1),
(8, 'Replacement Vehicle for 24hrs', 1),
(9, 'Battery Replacement (upto MUR5000)', 1);

-- --------------------------------------------------------

--
-- Структура таблиці `status`
--

CREATE TABLE `status` (
  `id` int(10) NOT NULL,
  `flow` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `status`
--

INSERT INTO `status` (`id`, `flow`, `status`, `active`) VALUES
(1, 'membership', 'Draft', 1),
(2, 'membership', 'Active', 1),
(3, 'membership', 'Cancelled', 1),
(4, 'membership', 'Expired', 1),
(7, 'ticket', 'Open', 1),
(8, 'ticket', 'Closed', 1);

-- --------------------------------------------------------

--
-- Структура таблиці `stepcase`
--

CREATE TABLE `stepcase` (
  `id` int(10) NOT NULL,
  `stepno` int(2) DEFAULT NULL,
  `flow` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `stepcase`
--

INSERT INTO `stepcase` (`id`, `stepno`, `flow`, `status`) VALUES
(1, 1, 'JOB', 'ASSIGNED'),
(2, 2, 'JOB', 'ACCEPTED'),
(3, 3, 'JOB', 'ENROUTE'),
(4, 4, 'JOB', 'ONSITE'),
(5, 5, 'JOB', 'CLOSED');

-- --------------------------------------------------------

--
-- Структура таблиці `stock`
--

CREATE TABLE `stock` (
  `id` int(10) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `productcode` varchar(50) DEFAULT NULL,
  `product` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `dnno` varchar(50) DEFAULT NULL,
  `qtyonhnd` decimal(10,2) DEFAULT NULL,
  `sellingprice` decimal(10,2) DEFAULT NULL,
  `costprice` decimal(10,2) DEFAULT NULL,
  `active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Дамп даних таблиці `stock`
--

INSERT INTO `stock` (`id`, `category`, `productcode`, `product`, `location`, `dnno`, `qtyonhnd`, `sellingprice`, `costprice`, `active`) VALUES
(1, NULL, '101', 'Battery NS2011', 'AAA HQ', NULL, '5.00', '2500.00', NULL, NULL),
(2, 'N80', 'OF111115', 'MF95D31R', 'AAA HQ', '23630', '1.00', '2500.00', '2000.00', NULL),
(3, 'SERVICE', 'RA', 'ROADSIDE', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Test Category', 'TC001', 'Test Product', 'AA499', NULL, '12.00', '100.00', '20.00', NULL),
(5, 'Test Category', 'TC001', 'Test Product', 'AA499', NULL, '12.00', '100.00', '20.00', NULL),
(6, 'Test Category', '101010', 'Test Product 10', 'AA499', '123045', '0.00', '1000.00', '200.00', NULL);

-- --------------------------------------------------------

--
-- Структура таблиці `tasks`
--

CREATE TABLE `tasks` (
  `id` int(10) NOT NULL,
  `ticketid` int(10) NOT NULL DEFAULT '0',
  `enteredon` datetime DEFAULT NULL,
  `enteredby` varchar(50) DEFAULT NULL,
  `expirytime` datetime DEFAULT NULL,
  `regno` varchar(50) DEFAULT NULL,
  `taskstatus` varchar(50) DEFAULT NULL,
  `description` text,
  `issuetype` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Дублююча структура для представлення `test`
--
CREATE TABLE `test` (
`intid` int(10)
,`assignedon` varchar(19)
,`accepton` varchar(19)
,`enrouteon` varchar(19)
,`onsiteon` varchar(19)
,`closedon` varchar(19)
);

-- --------------------------------------------------------

--
-- Структура таблиці `ticket`
--

CREATE TABLE `ticket` (
  `id` int(10) NOT NULL,
  `enteredon` datetime DEFAULT NULL,
  `enteredby` varchar(50) DEFAULT NULL,
  `expirydate` datetime DEFAULT NULL,
  `tickettype` varchar(50) DEFAULT NULL,
  `membershipid` varchar(50) DEFAULT NULL,
  `clientid` int(10) DEFAULT NULL,
  `regno` varchar(50) DEFAULT NULL,
  `tixstatus` varchar(50) DEFAULT NULL,
  `contactname2` varchar(50) DEFAULT NULL,
  `phone2` int(8) DEFAULT NULL,
  `emerlevel` int(8) DEFAULT NULL,
  `address1` varchar(50) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `postalcode` varchar(50) DEFAULT NULL,
  `landmark` varchar(50) DEFAULT NULL,
  `residence` char(1) DEFAULT NULL,
  `vmake` varchar(50) DEFAULT NULL,
  `vmodel` varchar(50) DEFAULT NULL,
  `vyear` int(4) DEFAULT NULL,
  `vcolour` varchar(50) DEFAULT NULL,
  `passengers` int(4) DEFAULT NULL,
  `odometer` int(10) DEFAULT NULL,
  `issuedesc` text,
  `brief` varchar(50) DEFAULT NULL,
  `type1` varchar(50) DEFAULT NULL,
  `type2` varchar(50) DEFAULT NULL,
  `type3` varchar(50) DEFAULT NULL,
  `resolution` varchar(100) DEFAULT NULL,
  `issuetype` varchar(50) DEFAULT NULL,
  `callsource` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Дамп даних таблиці `ticket`
--

INSERT INTO `ticket` (`id`, `enteredon`, `enteredby`, `expirydate`, `tickettype`, `membershipid`, `clientid`, `regno`, `tixstatus`, `contactname2`, `phone2`, `emerlevel`, `address1`, `district`, `city`, `postalcode`, `landmark`, `residence`, `vmake`, `vmodel`, `vyear`, `vcolour`, `passengers`, `odometer`, `issuedesc`, `brief`, `type1`, `type2`, `type3`, `resolution`, `issuetype`, `callsource`) VALUES
(3, '2018-07-25 13:30:40', 'manager', NULL, 'walkin', NULL, 0, 'h', 'CLOSED', NULL, 0, 0, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'phone'),
(7, '2018-04-28 11:55:19', 'Administrator', NULL, 'membership', 'O-00000000000002, 5653SP11, Active', NULL, '5653SP11', 'Open', 'JOHN', 4561200, NULL, 'PORTLOUIS', 'QUATRE BORNES', 'BASSIN/ PALMA', NULL, NULL, '0', 'Kia', 'Cerato Sedan', 2011, 'BROWN', 1, NULL, NULL, 'ACCIDENT', 'CAN BE DRIVEN / SAFE TO DRIVE', 'NONE', 'NONE', 'PERSON TO DRIVE VEHICLE TO WORKSHOP OR RA', 'ACCIDENT', 'phone'),
(8, '2018-05-15 18:59:45', 'Administrator', NULL, NULL, NULL, NULL, NULL, 'Open', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'phone'),
(9, '2018-06-01 13:40:13', 'Administrator', NULL, 'insurance', 'AAA000000000001, 1024FB18, Active', 7, '5653SP11', 'Open', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kia', 'Cerato', 0, NULL, NULL, NULL, NULL, 'NOT MOVING', 'DON''T KNOW', 'NONE', 'NONE', 'PERSON TO DRIVE VEHICLE TO WORKSHOP OR RA', 'ACCIDENT', 'phone'),
(10, '2018-06-01 13:40:13', 'Administrator', NULL, 'insurance', 'AAA000000000001, 1024FB18, Active', 7, '5653SP11', 'Open', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kia', 'Cerato', 0, NULL, NULL, NULL, NULL, 'NOT MOVING', 'DON''T KNOW', 'NONE', 'NONE', 'PERSON TO DRIVE VEHICLE TO WORKSHOP OR RA', 'ACCIDENT', 'phone'),
(11, '2018-07-28 18:29:52', 'manager', NULL, NULL, 'AAA000000000001, 1024FB18, Active', 7, '5653SP11', 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kia', 'Cerato', 0, NULL, NULL, NULL, NULL, 'NOT MOVING', 'DON''T KNOW', 'NONE', 'NONE', 'PERSON TO DRIVE VEHICLE TO WORKSHOP OR RA', 'ACCIDENT', 'phone'),
(12, '2018-07-28 18:29:44', 'manager', NULL, NULL, 'AAA000000000001, 1024FB18, Active', 7, '5653SP11', 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kia', 'Cerato', 0, NULL, NULL, NULL, NULL, 'NOT MOVING', 'DON''T KNOW', 'NONE', 'NONE', 'PERSON TO DRIVE VEHICLE TO WORKSHOP OR RA', 'ACCIDENT', 'phone'),
(13, '2018-05-29 11:20:53', 'Administrator', NULL, NULL, NULL, NULL, 'R1135', 'CLOSED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Audi', 'A6', 2002, 'BLACK', NULL, NULL, NULL, 'ACCIDENT', 'CAN BE DRIVEN / SAFE TO DRIVE', 'NONE', 'NONE', 'PERSON TO DRIVE VEHICLE TO WORKSHOP OR RA', 'ACCIDENT', 'phone'),
(14, '2018-07-25 13:30:30', 'manager', NULL, 'group', NULL, 9, '4169JU13', 'CLOSED', 'SALIM', 2069900, NULL, NULL, 'Phoenix', NULL, NULL, 'ABC GALLERY', '0', 'Nissan', 'Hardbody', 2013, NULL, NULL, NULL, NULL, 'ACCIDENT', 'HEAVY DAMAGE', 'VEHICLE OFFROAD / DITCHED', 'NONE', 'PERSON TO DRIVE VEHICLE TO WORKSHOP OR RA', 'ACCIDENT', 'phone'),
(15, '2018-06-06 11:54:19', 'Administrator', NULL, 'insurance', NULL, NULL, '1016CZ13', 'ATTENDING', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Toyota', 'Vitz', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'phone'),
(16, '2018-07-25 14:17:42', 'manager', NULL, 'pfu', NULL, 13, 'W101010', 'ATTENDING', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'Nissan', 'Bluebird', 2012, NULL, NULL, NULL, NULL, 'DON''T KNOW', NULL, NULL, NULL, NULL, NULL, 'phone'),
(17, '2018-07-20 15:52:48', 'Administrator', NULL, 'insurance', NULL, NULL, '10', 'ATTENDING', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MERCEDES BENZ C180 K', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'phone'),
(18, '2018-07-25 09:06:19', 'manager', NULL, NULL, NULL, NULL, NULL, 'ATTENDING', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, '2018-07-25 09:08:15', 'manager', NULL, NULL, NULL, NULL, NULL, 'ATTENDING', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, '2018-07-30 16:49:27', 'manager', NULL, 'insurance', NULL, NULL, 'A1584', 'CLOSED', NULL, NULL, NULL, '7, Avenue Seeneevassen', 'Quatre Bornes', 'Quatre Bornes', NULL, 'Other', 'n', 'Nissan', 'Note', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PHONE'),
(21, '2018-09-19 11:54:53', 'Administrator', NULL, 'insurance', NULL, NULL, 'A1005', 'CLOSED', 'Test', 4564511, NULL, 'test', NULL, 'Quatre Bornes', NULL, 'Other', 'n', 'Nissan', 'Qashqai', 0, NULL, 0, NULL, 'test', 'NOT MOVING', 'ENGINE STARTS AND HOLDS', 'GEAR NOT IN PROPERLY', 'NONE', 'PERSON TO DRIVE VEHICLE TO WORKSHOP OR RA', 'ACCIDENT', 'PHONE'),
(22, '2018-09-19 12:11:00', 'Administrator', NULL, 'insurance', NULL, NULL, 'A114', 'ATTENDING', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'n', 'Kia', 'Sportage', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PHONE'),
(23, '2019-01-22 14:10:42', 'Administrator', NULL, 'insurance', NULL, NULL, '2000MR14', 'ATTENDING', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'n', 'Toyota', 'RAV4', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PHONE');

-- --------------------------------------------------------

--
-- Структура таблиці `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `efullname` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `ephone` int(8) DEFAULT NULL,
  `emobile` int(8) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `utype` varchar(50) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `gender` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Дамп даних таблиці `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `efullname`, `email`, `ephone`, `emobile`, `department`, `position`, `utype`, `level`, `gender`) VALUES
(1, 'agent', 'test123**', 'Agent', 'gnmooroogan@gmail.com', NULL, NULL, NULL, 'agent', NULL, 1, ''),
(2, 'tech', 'Demo123*', 'Tech', NULL, NULL, NULL, 'TECH', 'technical', NULL, 2, ''),
(3, 'manager', 'test', 'manager', NULL, NULL, NULL, NULL, 'manager', NULL, 3, ''),
(4, 'flox', '7f5efcfa4057f1647ee0df7da995b857', NULL, 'flox@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 'Female'),
(5, 'Ghios', '827ccb0eea8a706c4c34a16891f84e7b', NULL, 'lubomir@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 'Male'),
(6, 'Dima', '827ccb0eea8a706c4c34a16891f84e7b', NULL, 'templerun124@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 'Male');

-- --------------------------------------------------------

--
-- Структура таблиці `userlevelpermissions`
--

CREATE TABLE `userlevelpermissions` (
  `userlevelid` int(11) NOT NULL,
  `tablename` varchar(255) NOT NULL,
  `permission` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `userlevelpermissions`
--

INSERT INTO `userlevelpermissions` (`userlevelid`, `tablename`, `permission`) VALUES
(-2, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}carlist', 0),
(-2, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}client', 0),
(-2, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}cvim', 0),
(-2, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}insuredvehicle', 0),
(-2, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}intervention', 0),
(-2, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}job', 0),
(-2, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}membership', 0),
(-2, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}rat', 0),
(-2, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}stepcase', 0),
(-2, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}ticket', 0),
(-2, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}user', 0),
(-2, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}userlevelpermissions', 0),
(-2, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}userlevels', 0),
(-2, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}vehicle', 0),
(1, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}carlist', 0),
(1, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}citycode', 0),
(1, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}client', 0),
(1, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}cvim', 0),
(1, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}fuellog', 0),
(1, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}insuranceco', 0),
(1, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}insuredvehicle', 0),
(1, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}intervention', 0),
(1, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}invoice', 0),
(1, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}invoiceitem', 0),
(1, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}job', 0),
(1, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}main.php', 0),
(1, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}membership', 0),
(1, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}mplan', 0),
(1, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}planserv', 0),
(1, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}rat', 0),
(1, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}service', 0),
(1, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}status', 0),
(1, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}stepcase', 0),
(1, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}ticket', 109),
(1, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}user', 0),
(1, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}userlevelpermissions', 0),
(1, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}userlevels', 0),
(1, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}vehicle', 0),
(1, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}vehinter', 0),
(1, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}vehowner', 0),
(2, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}aaastyle.css', 0),
(2, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}carlist', 0),
(2, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}citycode', 0),
(2, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}client', 0),
(2, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}cvim', 0),
(2, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}fuellog', 0),
(2, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}insuranceco', 0),
(2, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}insuredvehicle', 0),
(2, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}intertix', 105),
(2, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}intervention', 105),
(2, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}invoice', 105),
(2, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}invoiceitem', 105),
(2, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}job', 105),
(2, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}main.php', 0),
(2, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}membership', 0),
(2, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}mplan', 0),
(2, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}planserv', 0),
(2, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}rat', 0),
(2, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}service', 0),
(2, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}status', 0),
(2, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}stepcase', 0),
(2, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}ticket', 0),
(2, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}user', 0),
(2, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}userlevelpermissions', 0),
(2, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}userlevels', 0),
(2, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}vehicle', 0),
(2, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}vehinter', 0),
(2, '{0A11B7FD-CCEB-4DA7-89C3-FFBCC050101A}vehowner', 0);

-- --------------------------------------------------------

--
-- Структура таблиці `userlevels`
--

CREATE TABLE `userlevels` (
  `userlevelid` int(11) NOT NULL,
  `userlevelname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `userlevels`
--

INSERT INTO `userlevels` (`userlevelid`, `userlevelname`) VALUES
(-2, 'Anonymous'),
(-1, 'Administrator'),
(0, 'Default'),
(1, 'BPO'),
(2, 'Tech');

-- --------------------------------------------------------

--
-- Дублююча структура для представлення `vaccept`
--
CREATE TABLE `vaccept` (
`id` int(10)
,`acceptedtime` datetime
);

-- --------------------------------------------------------

--
-- Дублююча структура для представлення `vassign`
--
CREATE TABLE `vassign` (
`id` int(10)
,`assignedtime` datetime
,`assignedto` varchar(50)
,`assignedv` varchar(50)
);

-- --------------------------------------------------------

--
-- Дублююча структура для представлення `vclosed`
--
CREATE TABLE `vclosed` (
`id` int(10)
,`closedtime` datetime
,`issue` varchar(50)
,`resolution` varchar(50)
,`ticketid` int(10)
);

-- --------------------------------------------------------

--
-- Дублююча структура для представлення `vdetails`
--
CREATE TABLE `vdetails` (
`regno` varchar(50)
,`make` varchar(50)
,`model` varchar(50)
,`bodytype` varchar(50)
,`year` int(4)
,`colour` varchar(50)
,`aaacover` varchar(50)
,`quota` int(2)
);

-- --------------------------------------------------------

--
-- Структура таблиці `vehicle`
--

CREATE TABLE `vehicle` (
  `id` int(10) NOT NULL,
  `regno` varchar(50) DEFAULT NULL,
  `make` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `bodytype` varchar(50) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `chassis` varchar(50) DEFAULT NULL,
  `colour` varchar(50) DEFAULT NULL,
  `clientid` int(10) DEFAULT NULL,
  `aaacover` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Дублююча структура для представлення `vehinter`
--
CREATE TABLE `vehinter` (
`id` int(10)
,`id1` int(10)
,`regno1` varchar(50)
);

-- --------------------------------------------------------

--
-- Дублююча структура для представлення `vehowner`
--
CREATE TABLE `vehowner` (
`regno` varchar(50)
,`make` varchar(50)
,`model` varchar(50)
,`bodytype` varchar(50)
,`year` int(4)
,`chassis` varchar(50)
,`colour` varchar(50)
,`vclientid` int(10)
,`aaacover` varchar(50)
,`fname` varchar(50)
,`lname` varchar(50)
);

-- --------------------------------------------------------

--
-- Дублююча структура для представлення `venroute`
--
CREATE TABLE `venroute` (
`id` int(10)
,`enroutetime` datetime
,`assignedv` varchar(50)
);

-- --------------------------------------------------------

--
-- Дублююча структура для представлення `vhistory`
--
CREATE TABLE `vhistory` (
`regno` varchar(50)
,`tickettype` varchar(50)
,`tixstatus` varchar(50)
,`enteredon` datetime
,`intstatus` varchar(50)
,`issue` varchar(50)
,`resolution` varchar(50)
,`billto` varchar(50)
,`tech` varchar(50)
,`invstatus` varchar(50)
,`product` varchar(50)
,`itotal` decimal(10,2)
,`history` varchar(511)
);

-- --------------------------------------------------------

--
-- Дублююча структура для представлення `vhistory2`
--
CREATE TABLE `vhistory2` (
`regno` varchar(50)
,`id` int(10)
,`enteredon` datetime
,`tixstatus` varchar(50)
,`status` varchar(50)
,`issue` varchar(50)
,`tickettype` varchar(50)
);

-- --------------------------------------------------------

--
-- Дублююча структура для представлення `vintsheet`
--
CREATE TABLE `vintsheet` (
`id` int(10)
,`id1` int(10)
,`status` varchar(50)
,`regno` varchar(50)
,`tickettype` varchar(50)
,`clientid` int(10)
,`membershipid` varchar(50)
,`city` varchar(50)
,`resolution` varchar(100)
,`issuetype` varchar(50)
,`callsource` varchar(50)
,`billto` varchar(50)
,`tech` varchar(50)
,`productcode` varchar(50)
,`qty` decimal(10,2)
,`unitprice` decimal(10,2)
,`itotal` decimal(10,2)
,`billto1` int(10)
,`amount` decimal(10,0)
,`vat` decimal(10,0)
);

-- --------------------------------------------------------

--
-- Дублююча структура для представлення `vonsite`
--
CREATE TABLE `vonsite` (
`id` int(10)
,`onsitetime` datetime
);

-- --------------------------------------------------------

--
-- Дублююча структура для представлення `vti`
--
CREATE TABLE `vti` (
`id` int(10)
,`regno` varchar(50)
,`clientid` int(10)
,`intid` int(10)
,`createdon` datetime
);

-- --------------------------------------------------------

--
-- Структура таблиці `workshop`
--

CREATE TABLE `workshop` (
  `id` int(10) NOT NULL,
  `location` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `assignedto` int(10) DEFAULT NULL,
  `wtype` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Дамп даних таблиці `workshop`
--

INSERT INTO `workshop` (`id`, `location`, `address`, `assignedto`, `wtype`) VALUES
(1999, 'AAA HQ', NULL, NULL, 1),
(2000, 'AAA Store', NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Структура для представлення `incbill`
--
DROP TABLE IF EXISTS `incbill`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `incbill`  AS  select `intervention2`.`id` AS `interid`,`intervention2`.`ticketid` AS `ticketid`,`invoice`.`id` AS `invoiceid` from (`invoice` join `intervention2` on((`intervention2`.`id` = `invoice`.`interventionid`))) ;

-- --------------------------------------------------------

--
-- Структура для представлення `inciregi`
--
DROP TABLE IF EXISTS `inciregi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `inciregi`  AS  select `intervention2`.`ticketid` AS `ticketid`,`intervention2`.`id` AS `id`,`ticket`.`regno` AS `regno`,`ticket`.`address1` AS `address1`,`ticket`.`district` AS `district`,`ticket`.`city` AS `city`,`ticket`.`residence` AS `residence`,`intervention2`.`issue` AS `issue`,`intervention2`.`status` AS `status`,`intervention2`.`assignedto` AS `assignedto`,`intervention2`.`assignedv` AS `assignedv` from (`ticket` join `intervention2` on((`ticket`.`id` = `intervention2`.`ticketid`))) where (`intervention2`.`status` <> 'CLOSED') ;

-- --------------------------------------------------------

--
-- Структура для представлення `insint`
--
DROP TABLE IF EXISTS `insint`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `insint`  AS  select `ticket`.`id` AS `ticket`,`ticket`.`enteredon` AS `enteredon`,`ticket`.`enteredby` AS `enteredby`,`ticket`.`tickettype` AS `tickettype`,`ticket`.`tixstatus` AS `tixstatus`,`ticket`.`issuetype` AS `issuetype`,`insuredvehicle`.`insurance` AS `insurance`,`insuredvehicle`.`poholder` AS `poholder`,`insuredvehicle`.`pono` AS `pono`,`insuredvehicle`.`startdate` AS `startdate`,`insuredvehicle`.`enddate` AS `enddate`,`insuredvehicle`.`covertype` AS `covertype`,`insuredvehicle`.`insref` AS `insref`,`insuredvehicle`.`regno` AS `regno`,`intervention2`.`status` AS `status`,`intervention2`.`issue` AS `issue`,`intervention2`.`resolution` AS `resolution`,`intervention2`.`id` AS `intervention` from ((`ticket` join `insuredvehicle` on((`ticket`.`regno` = `insuredvehicle`.`regno`))) join `intervention2` on((`ticket`.`id` = `intervention2`.`ticketid`))) ;

-- --------------------------------------------------------

--
-- Структура для представлення `insuredv`
--
DROP TABLE IF EXISTS `insuredv`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `insuredv`  AS  select `vehicle`.`regno` AS `regno`,`vehicle`.`make` AS `make`,`vehicle`.`model` AS `model`,`vehicle`.`colour` AS `colour`,`vehicle`.`aaacover` AS `aaacover`,`insuredvehicle`.`poholder` AS `poholder`,`insuredvehicle`.`startdate` AS `startdate`,`insuredvehicle`.`enddate` AS `enddate`,`insuredvehicle`.`covertype` AS `covertype`,`insuredvehicle`.`insurance` AS `insurance` from (`vehicle` join `insuredvehicle` on((`vehicle`.`regno` = `insuredvehicle`.`regno`))) ;

-- --------------------------------------------------------

--
-- Структура для представлення `intertix`
--
DROP TABLE IF EXISTS `intertix`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `intertix`  AS  select `ticket`.`id` AS `ticketid`,`ticket`.`tixstatus` AS `tixtatus`,`intervention`.`id` AS `intid`,`ticket`.`regno` AS `regno`,`ticket`.`phone2` AS `phone2`,`ticket`.`contactname2` AS `contactname2`,`ticket`.`city` AS `city`,`jassign`.`assignto` AS `assignedto` from ((`ticket` join `intervention` on((`ticket`.`id` = `intervention`.`ticketid`))) join `jassign` on((`intervention`.`id` = `jassign`.`interventionid`))) group by `ticket`.`id`,`ticket`.`tixstatus`,`intervention`.`id`,`ticket`.`regno`,`ticket`.`phone2`,`ticket`.`contactname2`,`ticket`.`city`,`jassign`.`assignto` order by `ticket`.`id` desc,`intervention`.`id` desc ;

-- --------------------------------------------------------

--
-- Структура для представлення `jtime`
--
DROP TABLE IF EXISTS `jtime`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `jtime`  AS  select `intertix`.`ticketid` AS `tixid`,`intertix`.`intid` AS `intid`,`intertix`.`regno` AS `regno`,coalesce(`jassign`.`assignto`,0) AS `assignedto`,coalesce(`jassign`.`aaavehicle`,0) AS `assignedaaa`,coalesce(`jassign`.`createdon`,0) AS `assignedon`,coalesce(`jassign`.`createdby`,0) AS `assignedby`,coalesce(`jaccept`.`createdby`,0) AS `acceptby`,coalesce(`jaccept`.`createdon`,0) AS `accepton`,coalesce(`jenroute`.`createdon`,0) AS `enrouteon`,coalesce(`jenroute`.`createdby`,0) AS `enrouteby`,coalesce(`jonsite`.`createdon`,0) AS `onsiteon`,coalesce(`jonsite`.`createdby`,0) AS `onsiteby`,coalesce(`jclose`.`createdon`,0) AS `closedon`,coalesce(`jclose`.`createdby`,0) AS `closedby`,`jclose`.`servicetype` AS `servicetype` from (((((`intertix` join `jassign` on((`intertix`.`intid` = `jassign`.`interventionid`))) join `jaccept` on((`intertix`.`intid` = `jaccept`.`interventionid`))) join `jenroute` on((`intertix`.`intid` = `jenroute`.`interventionid`))) join `jonsite` on((`intertix`.`intid` = `jonsite`.`interventionid`))) join `jclose` on((`intertix`.`intid` = `jclose`.`interventionid`))) ;

-- --------------------------------------------------------

--
-- Структура для представлення `myintervention`
--
DROP TABLE IF EXISTS `myintervention`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `myintervention`  AS  select `intervention2`.`id` AS `id`,`intervention2`.`status` AS `status`,`intervention2`.`issue` AS `issue`,`intervention2`.`resolution` AS `resolution`,`intervention2`.`assignedto` AS `assignedto`,`intervention2`.`ticketid` AS `ticketid` from `intervention2` ;

-- --------------------------------------------------------

--
-- Структура для представлення `test`
--
DROP TABLE IF EXISTS `test`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `test`  AS  select `intertix`.`intid` AS `intid`,coalesce(`jassign`.`createdon`,0) AS `assignedon`,coalesce(`jaccept`.`createdon`,0) AS `accepton`,coalesce(`jenroute`.`createdon`,0) AS `enrouteon`,coalesce(`jonsite`.`createdon`,0) AS `onsiteon`,coalesce(`jclose`.`createdon`,0) AS `closedon` from (((((`intertix` join `jassign` on((`intertix`.`intid` = `jassign`.`interventionid`))) join `jaccept` on((`intertix`.`intid` = `jaccept`.`interventionid`))) join `jenroute` on((`intertix`.`intid` = `jenroute`.`interventionid`))) join `jonsite` on((`intertix`.`intid` = `jonsite`.`interventionid`))) join `jclose` on((`intertix`.`intid` = `jclose`.`interventionid`))) ;

-- --------------------------------------------------------

--
-- Структура для представлення `vaccept`
--
DROP TABLE IF EXISTS `vaccept`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vaccept`  AS  select `intervention2`.`id` AS `id`,`intervention2`.`acceptedtime` AS `acceptedtime` from `intervention2` ;

-- --------------------------------------------------------

--
-- Структура для представлення `vassign`
--
DROP TABLE IF EXISTS `vassign`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vassign`  AS  select `intervention2`.`id` AS `id`,`intervention2`.`assignedtime` AS `assignedtime`,`intervention2`.`assignedto` AS `assignedto`,`intervention2`.`assignedv` AS `assignedv` from `intervention2` ;

-- --------------------------------------------------------

--
-- Структура для представлення `vclosed`
--
DROP TABLE IF EXISTS `vclosed`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vclosed`  AS  select `intervention2`.`id` AS `id`,`intervention2`.`closedtime` AS `closedtime`,`intervention2`.`issue` AS `issue`,`intervention2`.`resolution` AS `resolution`,`intervention2`.`ticketid` AS `ticketid` from `intervention2` ;

-- --------------------------------------------------------

--
-- Структура для представлення `vdetails`
--
DROP TABLE IF EXISTS `vdetails`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vdetails`  AS  select `vehicle`.`regno` AS `regno`,`vehicle`.`make` AS `make`,`vehicle`.`model` AS `model`,`vehicle`.`bodytype` AS `bodytype`,`vehicle`.`year` AS `year`,`vehicle`.`colour` AS `colour`,`vehicle`.`aaacover` AS `aaacover`,`quotatype`.`quota` AS `quota` from (`vehicle` join `quotatype` on((`vehicle`.`aaacover` = `quotatype`.`covertype`))) ;

-- --------------------------------------------------------

--
-- Структура для представлення `vehinter`
--
DROP TABLE IF EXISTS `vehinter`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vehinter`  AS  select `ticket`.`id` AS `id`,`intervention`.`id` AS `id1`,`ticket`.`regno` AS `regno1` from (`intervention` join `ticket` on((`ticket`.`id` = `intervention`.`ticketid`))) ;

-- --------------------------------------------------------

--
-- Структура для представлення `vehowner`
--
DROP TABLE IF EXISTS `vehowner`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vehowner`  AS  select `vehicle`.`regno` AS `regno`,`vehicle`.`make` AS `make`,`vehicle`.`model` AS `model`,`vehicle`.`bodytype` AS `bodytype`,`vehicle`.`year` AS `year`,`vehicle`.`chassis` AS `chassis`,`vehicle`.`colour` AS `colour`,`vehicle`.`clientid` AS `vclientid`,`vehicle`.`aaacover` AS `aaacover`,`client`.`fname` AS `fname`,`client`.`lname` AS `lname` from (`vehicle` join `client` on((`client`.`id` = `vehicle`.`clientid`))) ;

-- --------------------------------------------------------

--
-- Структура для представлення `venroute`
--
DROP TABLE IF EXISTS `venroute`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `venroute`  AS  select `intervention2`.`id` AS `id`,`intervention2`.`enroutetime` AS `enroutetime`,`intervention2`.`assignedv` AS `assignedv` from `intervention2` ;

-- --------------------------------------------------------

--
-- Структура для представлення `vhistory`
--
DROP TABLE IF EXISTS `vhistory`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vhistory`  AS  select `ticket`.`regno` AS `regno`,`ticket`.`tickettype` AS `tickettype`,`ticket`.`tixstatus` AS `tixstatus`,`ticket`.`enteredon` AS `enteredon`,`intervention`.`status` AS `intstatus`,`intervention`.`issue` AS `issue`,`intervention`.`resolution` AS `resolution`,`invoice`.`billto` AS `billto`,`invoice`.`tech` AS `tech`,`invoice`.`istatus` AS `invstatus`,`invoiceitem`.`product` AS `product`,`invoiceitem`.`itotal` AS `itotal`,concat_ws(' , ',`ticket`.`tickettype`,`ticket`.`tixstatus`,`ticket`.`enteredon`,`intervention`.`status`,`intervention`.`issue`,`intervention`.`resolution`,`invoice`.`billto`,`invoice`.`tech`,`invoice`.`istatus`,`invoiceitem`.`product`,`invoiceitem`.`itotal`) AS `history` from (((`intervention` join `ticket` on((`ticket`.`id` = `intervention`.`ticketid`))) join `invoice` on((`intervention`.`id` = `invoice`.`interventionid`))) join `invoiceitem` on((`invoice`.`id` = `invoiceitem`.`invoiceid`))) ;

-- --------------------------------------------------------

--
-- Структура для представлення `vhistory2`
--
DROP TABLE IF EXISTS `vhistory2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vhistory2`  AS  select `ticket`.`regno` AS `regno`,`ticket`.`id` AS `id`,`ticket`.`enteredon` AS `enteredon`,`ticket`.`tixstatus` AS `tixstatus`,`intervention2`.`status` AS `status`,`intervention2`.`issue` AS `issue`,`ticket`.`tickettype` AS `tickettype` from (`intervention2` join `ticket` on((`ticket`.`id` = `intervention2`.`ticketid`))) ;

-- --------------------------------------------------------

--
-- Структура для представлення `vintsheet`
--
DROP TABLE IF EXISTS `vintsheet`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vintsheet`  AS  select `ticket`.`id` AS `id`,`intervention`.`id` AS `id1`,`intervention`.`status` AS `status`,`ticket`.`regno` AS `regno`,`ticket`.`tickettype` AS `tickettype`,`ticket`.`clientid` AS `clientid`,`ticket`.`membershipid` AS `membershipid`,`ticket`.`city` AS `city`,`ticket`.`resolution` AS `resolution`,`ticket`.`issuetype` AS `issuetype`,`ticket`.`callsource` AS `callsource`,`invoice`.`billto` AS `billto`,`invoice`.`tech` AS `tech`,`invoiceitem`.`productcode` AS `productcode`,`invoiceitem`.`qty` AS `qty`,`invoiceitem`.`unitprice` AS `unitprice`,`invoiceitem`.`itotal` AS `itotal`,`billing`.`billto` AS `billto1`,`billing`.`amount` AS `amount`,`billing`.`vat` AS `vat` from ((((`intervention` join `ticket` on((`ticket`.`id` = `intervention`.`ticketid`))) join `invoice` on((`invoice`.`interventionid` = `intervention`.`id`))) join `invoiceitem` on((`invoice`.`id` = `invoiceitem`.`invoiceid`))) join `billing` on((`invoice`.`id` = `billing`.`sheetid`))) ;

-- --------------------------------------------------------

--
-- Структура для представлення `vonsite`
--
DROP TABLE IF EXISTS `vonsite`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vonsite`  AS  select `intervention2`.`id` AS `id`,`intervention2`.`onsitetime` AS `onsitetime` from `intervention2` ;

-- --------------------------------------------------------

--
-- Структура для представлення `vti`
--
DROP TABLE IF EXISTS `vti`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vti`  AS  select `ticket`.`id` AS `id`,`ticket`.`regno` AS `regno`,`ticket`.`clientid` AS `clientid`,`intervention`.`id` AS `intid`,`intervention`.`createdon` AS `createdon` from (`ticket` join `intervention` on((`ticket`.`id` = `intervention`.`ticketid`))) ;

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `aaavehicle`
--
ALTER TABLE `aaavehicle`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `regno` (`regno`);

--
-- Індекси таблиці `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `carlist`
--
ALTER TABLE `carlist`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `citycode`
--
ALTER TABLE `citycode`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `cvim`
--
ALTER TABLE `cvim`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `fotoproof`
--
ALTER TABLE `fotoproof`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `fuelcheck`
--
ALTER TABLE `fuelcheck`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `fuellog`
--
ALTER TABLE `fuellog`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `fuelprice`
--
ALTER TABLE `fuelprice`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `insuranceco`
--
ALTER TABLE `insuranceco`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `insuredvehicle`
--
ALTER TABLE `insuredvehicle`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `regno` (`regno`);

--
-- Індекси таблиці `intervention`
--
ALTER TABLE `intervention`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `intervention2`
--
ALTER TABLE `intervention2`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `invoiceitem`
--
ALTER TABLE `invoiceitem`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `jaccept`
--
ALTER TABLE `jaccept`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `jassign`
--
ALTER TABLE `jassign`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `jclose`
--
ALTER TABLE `jclose`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `jenroute`
--
ALTER TABLE `jenroute`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `jonsite`
--
ALTER TABLE `jonsite`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Індекси таблиці `membership`
--
ALTER TABLE `membership`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `memno` (`memno`),
  ADD UNIQUE KEY `regno` (`regno`);

--
-- Індекси таблиці `mileage`
--
ALTER TABLE `mileage`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `mplan`
--
ALTER TABLE `mplan`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `planserv`
--
ALTER TABLE `planserv`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `pmt_rep1`
--
ALTER TABLE `pmt_rep1`
  ADD PRIMARY KEY (`APP_UID`),
  ADD KEY `indexTable` (`APP_UID`);

--
-- Індекси таблиці `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `quota`
--
ALTER TABLE `quota`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `quotatype`
--
ALTER TABLE `quotatype`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `rat`
--
ALTER TABLE `rat`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `reqloc`
--
ALTER TABLE `reqloc`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `rhelp`
--
ALTER TABLE `rhelp`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `sec_usersapps`
--
ALTER TABLE `sec_usersapps`
  ADD PRIMARY KEY (`app_name`);

--
-- Індекси таблиці `sec_usersusers`
--
ALTER TABLE `sec_usersusers`
  ADD PRIMARY KEY (`login`);

--
-- Індекси таблиці `sec_usersusers_apps`
--
ALTER TABLE `sec_usersusers_apps`
  ADD PRIMARY KEY (`login`,`app_name`),
  ADD KEY `sec_usersusers_apps_ibfk_2` (`app_name`);

--
-- Індекси таблиці `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `stepcase`
--
ALTER TABLE `stepcase`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `userlevelpermissions`
--
ALTER TABLE `userlevelpermissions`
  ADD PRIMARY KEY (`userlevelid`,`tablename`);

--
-- Індекси таблиці `userlevels`
--
ALTER TABLE `userlevels`
  ADD PRIMARY KEY (`userlevelid`);

--
-- Індекси таблиці `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `regno` (`regno`);

--
-- Індекси таблиці `workshop`
--
ALTER TABLE `workshop`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `aaavehicle`
--
ALTER TABLE `aaavehicle`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2000;
--
-- AUTO_INCREMENT для таблиці `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблиці `billing`
--
ALTER TABLE `billing`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблиці `carlist`
--
ALTER TABLE `carlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;
--
-- AUTO_INCREMENT для таблиці `citycode`
--
ALTER TABLE `citycode`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2048;
--
-- AUTO_INCREMENT для таблиці `client`
--
ALTER TABLE `client`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблиці `cvim`
--
ALTER TABLE `cvim`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблиці `fotoproof`
--
ALTER TABLE `fotoproof`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблиці `fuelcheck`
--
ALTER TABLE `fuelcheck`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблиці `fuellog`
--
ALTER TABLE `fuellog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблиці `fuelprice`
--
ALTER TABLE `fuelprice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблиці `insuranceco`
--
ALTER TABLE `insuranceco`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблиці `insuredvehicle`
--
ALTER TABLE `insuredvehicle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблиці `intervention`
--
ALTER TABLE `intervention`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT для таблиці `intervention2`
--
ALTER TABLE `intervention2`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT для таблиці `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT для таблиці `invoiceitem`
--
ALTER TABLE `invoiceitem`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT для таблиці `jaccept`
--
ALTER TABLE `jaccept`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблиці `jassign`
--
ALTER TABLE `jassign`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT для таблиці `jclose`
--
ALTER TABLE `jclose`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT для таблиці `jenroute`
--
ALTER TABLE `jenroute`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблиці `job`
--
ALTER TABLE `job`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT для таблиці `jonsite`
--
ALTER TABLE `jonsite`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблиці `member`
--
ALTER TABLE `member`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблиці `membership`
--
ALTER TABLE `membership`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблиці `mileage`
--
ALTER TABLE `mileage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблиці `mplan`
--
ALTER TABLE `mplan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблиці `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблиці `planserv`
--
ALTER TABLE `planserv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT для таблиці `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблиці `quota`
--
ALTER TABLE `quota`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблиці `quotatype`
--
ALTER TABLE `quotatype`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблиці `rat`
--
ALTER TABLE `rat`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT для таблиці `reqloc`
--
ALTER TABLE `reqloc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблиці `rhelp`
--
ALTER TABLE `rhelp`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблиці `service`
--
ALTER TABLE `service`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблиці `status`
--
ALTER TABLE `status`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблиці `stepcase`
--
ALTER TABLE `stepcase`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблиці `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблиці `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблиці `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT для таблиці `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблиці `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблиці `workshop`
--
ALTER TABLE `workshop`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2001;
--
-- Обмеження зовнішнього ключа збережених таблиць
--

--
-- Обмеження зовнішнього ключа таблиці `sec_usersusers_apps`
--
ALTER TABLE `sec_usersusers_apps`
  ADD CONSTRAINT `sec_usersusers_apps_ibfk_1` FOREIGN KEY (`login`) REFERENCES `sec_usersusers` (`login`) ON DELETE CASCADE,
  ADD CONSTRAINT `sec_usersusers_apps_ibfk_2` FOREIGN KEY (`app_name`) REFERENCES `sec_usersapps` (`app_name`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
