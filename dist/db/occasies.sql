# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.6.35)
# Database: odisee_cwd_labo01
# Generation Time: 2018-02-03 12:35:30 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table bannerphotos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bannerphotos`;

CREATE TABLE `bannerphotos` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) NOT NULL DEFAULT '',
  `page` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `bannerphotos` WRITE;
/*!40000 ALTER TABLE `bannerphotos` DISABLE KEYS */;

INSERT INTO `bannerphotos` (`id`, `filename`, `page`)
VALUES
	(1,'36bis.jpg','occasies'),
	(2,'ATELIER_3_bis_W1000pix.jpg','occasies'),
	(3,'ATELIER_18_bis_W960pix.jpg','occasies'),
	(4,'home_1.jpg','occasies'),
	(5,'contact1.jpg','contact'),
	(6,'contact2.jpg','contact'),
	(7,'DSC_0049.jpg','occasies');

/*!40000 ALTER TABLE `bannerphotos` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table instruments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `instruments`;

CREATE TABLE `instruments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'the real item id (not unique: occurs once for each language)',
  `title` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `sequence` int(10) unsigned NOT NULL COMMENT 'item order within its parent (numbers do not need to follow, ''holes'' may occur)',
  `titel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `instruments` WRITE;
/*!40000 ALTER TABLE `instruments` DISABLE KEYS */;

INSERT INTO `instruments` (`id`, `title`, `sequence`, `titel`, `description`, `type`, `subtype`, `picture`)
VALUES
	(1,'Euphonium The Martin Handcraft Double Bell',34,'Euphonium The Martin Handcraft Double Bell','<p>\r\n	Collector\'s item.</p>\r\n<p>\r\n	Prachtig instrument in uitmuntende staat.</p>\r\n','koperblazer','Euphonium','Euphonium_The_Martin_Handcraft_double_bell_2.JPG'),
	(3,'Fagot Artia',10,'Fagot Artia','<p>\r\n	Studie-instrument in goede staat.</p>\r\n<p>\r\n	Ideaal voor een beginner!</p>\r\n','houtblazer','Fagot','Fagot_Artia_1.JPG'),
	(6,'Altsax King Cleveland',2,'Altsax King Cleveland','<p>\r\n	Echte Amerikaanse vintage.</p>\r\n<p>\r\n	Fantastisch geluid.</p>\r\n<p>\r\n	&nbsp;</p>\r\n','houtblazer','Altsax','Altsax_King_Cleveland_1.JPG'),
	(10,'Bastuba Besson in Bb',24,'Bastuba Besson in Bb','<p>\r\n	Prachtige verzilverde bastuba met 3 ventielen.</p>\r\n<p>\r\n	Gecompenseerd.</p>\r\n<p>\r\n	Goede intonatie.</p>\r\n<p>\r\n	Uitstekende staat, amper blutsen.</p>\r\n<p>\r\n	Zilver voor 95% aanwezig.</p>\r\n','koperblazer','Bastuba','Bastuba_Besson_Bb_1.JPG'),
	(16,'Altklarinet Selmer',1,'Altklarinet Selmer','<p>\r\n	Altklarinet Selmer van de jaren\' 50.</p>\r\n','houtblazer','Altklarinet','Altklarinet_Selmer_1_3.JPG'),
	(20,'Alto Kings Excellent',22,'Alto Kings Excellent','<p>\r\n	Althoorn</p>\r\n','koperblazer','Alto','Alto_Kings_Excellent_1.JPG'),
	(25,'Sopraansax Borgani',16,'Sopraansax Borgani','<p>\r\n	Italiaanse makelij.</p>\r\n','houtblazer','Sopraansax','Sopraansax_Borgani_1.JPG'),
	(29,'Alto Willson',23,'Alto Willson','<p>\r\n	Verzilverde alto Willson</p>\r\n<p>\r\n	Ouder model en goede staat.</p>\r\n','koperblazer','Alto','Alto_Willson_1.JPG'),
	(34,'Basklarinet Selmer Bundy',3,'Basklarinet Selmer Bundy','<p>\r\n	Kunststof basklarinet Bundy</p>\r\n<p>\r\n	Tot lage Eb.</p>\r\n','houtblazer','Basklarinet','Basklarinet_Bundy_1.JPG'),
	(40,'Basklarinet Vito',4,'Basklarinet Vito','<p>\r\n	Kunststof basklarinet Vito.</p>\r\n<p>\r\n	Amper bespeeld, in nieuwstaat.</p>\r\n<p>\r\n	Tot lage Eb.</p>\r\n','houtblazer','Basklarinet','Basklarinet_Vito_1.JPG'),
	(49,'Bastrompet Kanstul Custom Class',43,'Bastrompet Kanstul Custom Class','<p>\r\n	Verzilverde bastrompet Kanstul</p>\r\n<p>\r\n	Zeer goede staat.</p>\r\n<p>\r\n	&nbsp;</p>\r\n','koperblazer','Trompet','Bastrompet_Kanstul_1.JPG'),
	(54,'Bastuba Besson Sovereign in Eb',25,'Bastuba Besson Sovereign in Eb','<p>\r\n	Verzilverde bastuba Besson Sovereign in Eb.</p>\r\n<p>\r\n	3 + 1.</p>\r\n<p>\r\n	Gecompenseerd.</p>\r\n<p>\r\n	Uitmuntende staat, amper blutsen.</p>\r\n<p>\r\n	Zilver voor 90% aanwezig.</p>\r\n','koperblazer','Bastuba','Bastuba_Baesson_Sovering_Eb_1.JPG'),
	(59,'Bastuba Couesnon in Eb',26,'Bastuba Couesnon in Eb','<p>\r\n	Verzilverde bastuba Couesnon.</p>\r\n<p>\r\n	3 ventielen.</p>\r\n<p>\r\n	Vernikkeld.</p>\r\n','koperblazer','Bastuba','Bastuba_Couesnon_1.JPG'),
	(65,'Bastuba Weltklan in Bb',27,'Bastuba Weltklan in Bb','<p>\r\n	Bastuba Weltklang.</p>\r\n<p>\r\n	3 ventielen.</p>\r\n<p>\r\n	Vernikkeld.</p>\r\n<p>\r\n	Heel wat blutsen.</p>\r\n','koperblazer','Bastuba','Bastuba_Weltklang_1_1.JPG'),
	(71,'Bastuba Yamaha in Bb',28,'Bastuba Yamaha in Bb','<p>\r\n	Bastuba Yamaha in Bb.</p>\r\n<p>\r\n	Frontaction.</p>\r\n<p>\r\n	4 ventielen.</p>\r\n<p>\r\n	Goudlak.</p>\r\n<p>\r\n	Uitmuntende staat.</p>\r\n','koperblazer','Bastuba','Bastuba_Yamaha_1.JPG'),
	(77,'Bugel Getzen Eterna',29,'Bugel Getzen Eterna','<p>\r\n	Bugel Getzen Eterna.</p>\r\n<p>\r\n	4 pistons.</p>\r\n<p>\r\n	Verzilverd.</p>\r\n<p>\r\n	Goede staat.</p>\r\n','koperblazer','Bugel','Bugel_Getzen_Eterna_1.JPG'),
	(83,'Bugel Selmer',30,'Bugel Selmer','<p>\r\n	Professionele bugel Selmer.</p>\r\n<p>\r\n	Goudlak.</p>\r\n<p>\r\n	Goede staat.</p>\r\n','koperblazer','Bugel','Bugel_Selmer_1.JPG'),
	(97,'Cornet Besson Sovereign',31,'Cornet Besson Sovereign','<p>\r\n	Cornet Besson Sovereign.</p>\r\n<p>\r\n	Goudlak.</p>\r\n<p>\r\n	Uitmutende staat.</p>\r\n<p>\r\n	Klein blutsje in leadpipe.</p>\r\n','koperblazer','Cornet','Cornet_Besson_Sovereign_1.JPG'),
	(102,'Cornet King Cleveland',32,'Cornet King Cleveland','<p>\r\n	Cornet King Cleveland</p>\r\n<p>\r\n	Verzilverd.</p>\r\n<p>\r\n	&nbsp;</p>\r\n','koperblazer','Cornet','Cornet_King_Cleveland_1.JPG'),
	(106,'Dwarsfluit Artley',5,'Dwarsfluit Artley','<p>\r\n	Dwarsfluit Artley</p>\r\n<p>\r\n	Open kleppen.</p>\r\n<p>\r\n	Inline.</p>\r\n<p>\r\n	B-voet.</p>\r\n<p>\r\n	Volledig massief zilver.</p>\r\n','houtblazer','Dwarsfluit','Dwarsfluit_Artley_1.JPG'),
	(110,'Dwarsluit Haynes',6,'Dwarsluit Haynes','<p>\r\n	Dwarsfluit Haynes</p>\r\n<p>\r\n	Handmade.</p>\r\n<p>\r\n	Gesloten kleppen.</p>\r\n<p>\r\n	Offset sol.</p>\r\n<p>\r\n	E-mechaniek.</p>\r\n<p>\r\n	Volledig massief zilver.</p>\r\n','houtblazer','Dwarsfluit','Dwarsfluit_Haynes_Handmade_1.JPG'),
	(116,'Dwarsluit Haynes',7,'Dwarsluit Haynes','<p>\r\n	Dwarsfluit Haynes</p>\r\n<p>\r\n	Volledig massief zilver.</p>\r\n<p>\r\n	Gesloten kleppen.</p>\r\n<p>\r\n	Offset sol.</p>\r\n','houtblazer','Dwarsfluit','Dwarsfluit_Haynes_1.JPG'),
	(119,'Dwarsfluit Hofinger',8,'Dwarsfluit Hofinger','<p>\r\n	Dwarsfluit Hofinger</p>\r\n<p>\r\n	Gesloten kleppen.</p>\r\n<p>\r\n	Offset sol.</p>\r\n','houtblazer','Dwarsfluit','Dwarsfluit_Hofinger_1.JPG'),
	(125,'Dwarsfluit Miyazawa',9,'Dwarsfluit Miyazawa','<p>\r\n	Dwarsfluit Miyazawa</p>\r\n<p>\r\n	Massief zilveren kopstuk.</p>\r\n<p>\r\n	Gesloten kleppen.</p>\r\n<p>\r\n	Offset sol.</p>\r\n<p>\r\n	E-mechaniek.</p>\r\n','houtblazer','Dwarsfluit','Dwarsfluit_Miyazawa_1.JPG'),
	(129,'Euphonium Blasom',33,'Euphonium Blasom','<p>\r\n	Euphonium Blasom</p>\r\n<p>\r\n	4 ventielen inline.</p>\r\n<p>\r\n	Verzilverd.</p>\r\n','koperblazer','Euphonium','Euphonium_Blasom_1.JPG'),
	(135,'Hobo Hans Kreul',11,'Hobo Hans Kreul','<p>\r\n	Hobo Hans Kreul.</p>\r\n<p>\r\n	Hout in goede staat.</p>\r\n<p>\r\n	&nbsp;</p>\r\n','houtblazer','Hobo','Hobo_Hans_Kreul_1.JPG'),
	(138,'Klarinet Buffet Crampon E11',12,'Klarinet Buffet Crampon E11','<p>\r\n	Klarinet Buffet Crampon E11 in Bb.</p>\r\n<p>\r\n	Zo goed als nieuw, amper bespeeld.</p>\r\n<p>\r\n	Inclusief Vandoren mondstuk.</p>\r\n','houtblazer','Klarinet','Klarinet_Buffet_Crampon_E11_1.JPG'),
	(144,'Klarinet Buffet Crampon E11 in A',13,'Klarinet Buffet Crampon E11 in A','<p>\r\n	Klarinet Buffet Crampon E11 in A.</p>\r\n<p>\r\n	&nbsp;</p>\r\n','houtblazer','Klarinet','Klarinet_Buffet_Crampon_E11_A_1.JPG'),
	(149,'Klarinet Leblanc',14,'Klarinet Leblanc','<p>\r\n	Klarinet Leblanc.</p>\r\n<p>\r\n	Professionele klarinet.</p>\r\n','houtblazer','Klarinet','Klarinet_Leblanc_1.JPG'),
	(154,'Klarinet Leblanc Noblet',15,'Klarinet Leblanc Noblet','<p>\r\n	Klarinet Leblanc Noblet.</p>\r\n<p>\r\n	Extra gat in klankbeker voor betere intonatie.</p>\r\n','houtblazer','Klarinet','Klarinet_Leblanc_Noblet_1.JPG'),
	(159,'Klarinet Selmer Serie 9',17,'Klarinet Selmer Serie 9','<p>\r\n	Klarinet Selmer Serie 9.</p>\r\n<p>\r\n	Goede klarinet, ideaal voor Jazz en lichte muziek.</p>\r\n','houtblazer','Klarinet','Klarinet_Selmer_Serie_9_1.JPG'),
	(162,'Pistitrombone Maheu',35,'Pistitrombone Maheu','<p>\r\n	Pistontrombone Maheu.</p>\r\n<p>\r\n	Goudlak.</p>\r\n','koperblazer','Trombone','Pistontrombone_Maheu_1.JPG'),
	(166,'Pistontrombone Ruyssinck',36,'Pistontrombone Ruyssinck','<p>\r\n	Pistontrombone Ruyssinck.</p>\r\n<p>\r\n	Vernikkeld.</p>\r\n<p>\r\n	&nbsp;</p>\r\n','koperblazer','Trombone','Pistontrombone_Ruyssinck_2.JPG'),
	(169,'Tenorsax Buescher',18,'Tenorsax Buescher','<p>\r\n	Tenorsax Buescher.</p>\r\n<p>\r\n	Echte Amerikaanse vintage.</p>\r\n<p>\r\n	Geen originele hals.</p>\r\n<p>\r\n	Fantastisch geluid.</p>\r\n','houtblazer','Tenorsax','Tenorsax_Buescher_1_3.JPG'),
	(174,'Tenorsax Hohner President',20,'Tenorsax Hohner President','<p>\r\n	Tenorsax Hohner President.</p>\r\n<p>\r\n	Verzilverd.</p>\r\n<p>\r\n	Goede Duitse kwaliteit.</p>\r\n','houtblazer','Tenorsax','Tenorsax_Hohner_President_1.JPG'),
	(178,'Tenorsax Hopf',21,'Tenorsax Hopf','<p>\r\n	Tenorsax Hopf.</p>\r\n<p>\r\n	Stencil Julius Keilwerth.</p>\r\n<p>\r\n	Goudlak met vernikkelde kleppen.</p>\r\n','houtblazer','Tenorsax','Tenorsax_Hopf_1.JPG'),
	(182,'Tenorsax Conn 10M',19,'Tenorsax Conn 10M','<p>\r\n	Tenorsax Conn 10M.</p>\r\n<p>\r\n	Octaafsysteem met underslung.</p>\r\n<p>\r\n	Goede Amerikaanse Vintage.</p>\r\n<p>\r\n	Fantastisch geluid.</p>\r\n','houtblazer','Tenorsax','Tenrosax_Conn_10M_1.JPG'),
	(189,'Trombone Conn Director',37,'Trombone Conn Director','<p>\r\n	Trombone Conn Director.</p>\r\n<p>\r\n	Goede conditie.</p>\r\n<p>\r\n	Schuif in perfecte staat.</p>\r\n','koperblazer','Trombone','Trombone_Conn_Director_1.JPG'),
	(195,'Trombone King 2B',38,'Trombone King 2B','<p>\r\n	Trombone King 2B.</p>\r\n<p>\r\n	Model 2102 Legend.</p>\r\n<p>\r\n	Roodkoperen beker.</p>\r\n<p>\r\n	Schuif in perfecte staat.</p>\r\n','koperblazer','Trombone','Trombone_King_2B_1.JPG'),
	(202,'Trombone King 3B',39,'Trombone King 3B','<p>\r\n	Trombone King 3B.</p>\r\n<p>\r\n	Model 2103 Legend.</p>\r\n<p>\r\n	Roodkoperen beker.</p>\r\n<p>\r\n	Schuif in nieuwstaat.</p>\r\n','koperblazer','Trombone','Trombone_King_3B_1.JPG'),
	(209,'Trombone King 4B',40,'Trombone King 4B','<p>\r\n	Trombone King 4B.</p>\r\n<p>\r\n	Geen kwartventiel.</p>\r\n<p>\r\n	Verzilvering voor 99% aanwezig.</p>\r\n<p>\r\n	Schuif in nieuwstaat.</p>\r\n','koperblazer','Trombone','Trombone_King_4B_1.JPG'),
	(216,'Trombone Meinl',41,'Trombone Meinl','<p>\r\n	Trombone Meinl.</p>\r\n<p>\r\n	Duitse makelij.</p>\r\n','koperblazer','Trombone','Trombone_Meinl_1_1.JPG'),
	(221,'Trombone Yamaha',42,'Trombone Yamaha','<p>\r\n	Trombone Yamaha model YSL 354.</p>\r\n<p>\r\n	Kwartventiel.</p>\r\n<p>\r\n	Amper bespeeld.</p>\r\n','koperblazer','Trombone','Trombone_Yamaha_5.JPG'),
	(227,'Trompet Julius Keilwerth Toneking Special',44,'Trompet Julius Keilwerth Toneking Special','<p>\r\n	Trompet Julius Keilwerth Toneking Special.</p>\r\n<p>\r\n	Prachtige trompet.</p>\r\n<p>\r\n	Fantastisch geluid.</p>\r\n<p>\r\n	Ideaal voor Jazz en lichte muziek.</p>\r\n','koperblazer','Trompet','Trompet_Keilwerth_Toneking_Special_1.JPG'),
	(233,'Trompet Olds Recording',45,'Trompet Olds Recording','<p>\r\n	Trompet Olds Recording.</p>\r\n<p>\r\n	Verzilvering voor 95% aanwezig.</p>\r\n<p>\r\n	Pistons niet in lijn.</p>\r\n<p>\r\n	Collectors item.</p>\r\n','koperblazer','Trompet','Trompet_Olds_Recording_1.JPG'),
	(239,'Trompet SML',46,'Trompet SML','<p>\r\n	Trompet SML model TP500.</p>\r\n<p>\r\n	Amper bespeeld.</p>\r\n<p>\r\n	Nieuwstaat.</p>\r\n<p>\r\n	&nbsp;</p>\r\n','koperblazer','Trompet','Trompet_SML_1_2.JPG'),
	(243,'Trompet Yamaha',47,'Trompet Yamaha','<p>\r\n	Trompet Yamaha YTR 4435.</p>\r\n<p>\r\n	Stemcoulisse in C en in Bb.</p>\r\n<p>\r\n	&nbsp;</p>\r\n','koperblazer','Trompet','Trompet_Yamaha_1.JPG'),
	(247,'Trompet Yamaha Custom',48,'Trompet Yamaha Custom','<p>\r\n	Trompet Yamaha model YTR 934.</p>\r\n<p>\r\n	&nbsp;</p>\r\n','koperblazer','Trompet','Trompet_Yamaha_Custom_1.JPG');

/*!40000 ALTER TABLE `instruments` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table photos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `photos`;

CREATE TABLE `photos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'the real item id (not unique: occurs once for each language)',
  `title` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `sequence` int(10) unsigned NOT NULL COMMENT 'item order within its parent (numbers do not need to follow, ''holes'' may occur)',
  `instrument_id` int(10) unsigned NOT NULL DEFAULT '0',
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `photos_instruments` (`instrument_id`),
  CONSTRAINT `photos_instruments` FOREIGN KEY (`instrument_id`) REFERENCES `instruments` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;

INSERT INTO `photos` (`id`, `title`, `sequence`, `instrument_id`, `filename`)
VALUES
	(2,'double bell 2',2,1,'Euphonium_The_Martin_Handcraft_double_bell_2.JPG'),
	(4,'fgt2',3,3,'Fagot_Artia_2.JPG'),
	(5,'fgt3',4,3,'Fagot_Artia_3.JPG'),
	(7,'Altsax Cleveland_01',4,6,'Altsax_King_Cleveland_1.JPG'),
	(9,'E1',1,1,'Euphonium_The_Martin_Handcraft_double_bell_1.JPG'),
	(11,'B2',5,10,'Bastuba_Besson_Bb_2.JPG'),
	(12,'B3',5,10,'Bastuba_Besson_Bb_3.JPG'),
	(14,'b5',5,10,'Bastuba_Besson_Bb_5.JPG'),
	(15,'b6',5,10,'Bastuba_Besson_Bb_6.JPG'),
	(17,'A2',2,16,'Altklarinet_Selmer_2.JPG'),
	(18,'A3',1,16,'Altklarinet_Selmer_7.JPG'),
	(19,'A1',3,16,'Altklarinet_Selmer_1.JPG'),
	(21,'A1',7,20,'Alto_Kings_Excellent_1.JPG'),
	(22,'A2',7,20,'Alto_Kings_Excellent_2.JPG'),
	(23,'A3',7,20,'Alto_Kings_Excellent_3.JPG'),
	(24,'A4',7,20,'Alto_Kings_Excellent_4.JPG'),
	(26,'S1',8,25,'Sopraansax_Borgani_1.JPG'),
	(28,'s3',8,25,'Sopraansax_Borgani_3.JPG'),
	(30,'A1',9,29,'Alto_Willson_1.JPG'),
	(31,'A2',9,29,'Alto_Willson_2.JPG'),
	(32,'A3',9,29,'Alto_Willson_3.JPG'),
	(33,'A4',9,29,'Alto_Willson_4.JPG'),
	(35,'b1',10,34,'Basklarinet_Bundy_1.JPG'),
	(36,'b2',10,34,'Basklarinet_Bundy_2.JPG'),
	(39,'b5',10,34,'Basklarinet_Bundy_5.JPG'),
	(41,'b1',11,40,'Basklarinet_Vito_1.JPG'),
	(42,'b2',11,40,'Basklarinet_Vito_2.JPG'),
	(43,'b3',11,40,'Basklarinet_Vito_3.JPG'),
	(44,'b4',11,40,'Basklarinet_Vito_4.JPG'),
	(45,'b5',11,40,'Basklarinet_Vito_5.JPG'),
	(46,'b6',11,40,'Basklarinet_Vito_6.JPG'),
	(47,'b7',11,40,'Basklarinet_Vito_7.JPG'),
	(48,'b8',11,40,'Basklarinet_Vito_8.JPG'),
	(50,'b1',12,49,'Bastrompet_Kanstul_1.JPG'),
	(51,'b2',12,49,'Bastrompet_Kanstul_2.JPG'),
	(52,'b3',12,49,'Bastrompet_Kanstul_3.JPG'),
	(53,'b4',12,49,'Bastrompet_Kanstul_4.JPG'),
	(55,'b1',13,54,'Bastuba_Baesson_Sovering_Eb_1.JPG'),
	(56,'b2',13,54,'Bastuba_Baesson_Sovering_Eb_2.JPG'),
	(57,'b3',13,54,'Bastuba_Baesson_Sovering_Eb_3.JPG'),
	(58,'b4',13,54,'Bastuba_Baesson_Sovering_Eb_4.JPG'),
	(60,'b1',2,59,'Bastuba_Couesnon_1.JPG'),
	(62,'b3',4,59,'Bastuba_Couesnon_3.JPG'),
	(63,'b5',3,59,'Bastuba_Couesnon_5.JPG'),
	(64,'b6',1,59,'Bastuba_Couesnon_6.JPG'),
	(66,'b1',15,65,'Bastuba_Weltklang_1_1.JPG'),
	(67,'b2',15,65,'BAstuba_Weltklang_2_1.JPG'),
	(68,'b3',15,65,'Bastuba_Weltklang_3.JPG'),
	(69,'b4',15,65,'Bastuba_Weltklang_4.JPG'),
	(70,'b5',15,65,'Bastuba_Weltklang_5.JPG'),
	(72,'b1',16,71,'Bastuba_Yamaha_1.JPG'),
	(73,'b2',16,71,'Bastuba_Yamaha_2.JPG'),
	(74,'b3',16,71,'Bastuba_Yamaha_3.JPG'),
	(75,'b4',16,71,'BAstuba_Yamaha_4.JPG'),
	(76,'b5',16,71,'Bastuba_Yamaha_5.JPG'),
	(78,'b1',17,77,'Bugel_Getzen_Eterna_1.JPG'),
	(79,'b2',17,77,'Bugel_Getzen_Eterna_2.JPG'),
	(81,'b4',17,77,'Bugel_Getzen_Eterna_4_1.JPG'),
	(82,'b3',17,77,'Bugel_Getzen_Eterna_3.JPG'),
	(85,'b1',18,83,'Bugel_Selmer_1_1.JPG'),
	(86,'b2',18,83,'Bugel_Selmer_2.JPG'),
	(87,'b3',18,83,'Bugel_Selmer_3.JPG'),
	(88,'b4',18,83,'Bugel_Selmer_4.JPG'),
	(89,'a2',18,6,'Altsax_King_Cleveland_2.JPG'),
	(90,'a3',18,6,'Altsax_King_Cleveland_3.JPG'),
	(91,'a4',18,6,'Altsax_King_Cleveland_4.JPG'),
	(92,'f1',2,3,'Fagot_Artia_1.JPG'),
	(93,'f4',5,3,'Fagot_Artia_4.JPG'),
	(94,'f5',6,3,'Fagot_Artia_5.JPG'),
	(95,'f6',7,3,'Fagot_Artia_6.JPG'),
	(96,'f8',1,3,'Fagot_Artia.JPG'),
	(98,'c1',19,97,'Cornet_Besson_Sovereign_1.JPG'),
	(99,'c2',19,97,'Cornet_Besson_Sovereign_2.JPG'),
	(100,'c3',19,97,'Cornet_Besson_Sovereign_3.JPG'),
	(101,'c4',19,97,'Cornet_Besson_Sovereign_4.JPG'),
	(103,'c1',20,102,'Cornet_King_Cleveland_1.JPG'),
	(104,'c2',20,102,'Cornet_King_Cleveland_2.JPG'),
	(105,'c3',20,102,'Cornet_King_Cleveland_3.JPG'),
	(107,'d1',21,106,'Dwarsfluit_Artley_1.JPG'),
	(108,'d2',21,106,'Dwarsfluit_Artley_3.JPG'),
	(109,'d3',21,106,'Dwarsfluit_Artley_4.JPG'),
	(111,'d2',2,110,'Dwarsfluit_Haynes_Handmade_3.JPG'),
	(112,'d1',1,110,'Dwarsfluit_Haynes_Handmade_1.JPG'),
	(113,'d3',22,110,'Dwarsfluit_Haynes_Handmade_4.JPG'),
	(114,'d4',22,110,'Dwarsfluit_Haynes_Handmade_5.JPG'),
	(115,'d5',22,110,'Dwarsfluit_Haynes_Handmade_6.JPG'),
	(117,'d1',23,116,'Dwarsfluit_Haynes_1.JPG'),
	(118,'d2',23,116,'Dwarsfluit_Haynes_2.JPG'),
	(120,'d1',24,119,'Dwarsfluit_Hofinger_1.JPG'),
	(121,'d2',24,119,'Dwarsfluit_Hofinger_3.JPG'),
	(122,'d3',24,119,'Dwarsfluit_Hofinger_4.JPG'),
	(123,'d4',24,119,'Dwarsfluit_Hofinger_5.JPG'),
	(124,'d5',24,119,'Dwarsfluit_Hofinger_6.JPG'),
	(126,'d1',25,125,'Dwarsfluit_Miyazawa_1.JPG'),
	(127,'d2',25,125,'Dwarsfluit_Miyazawa_2.JPG'),
	(128,'d3',25,125,'Dwarsfluit_Miyazawa_3.JPG'),
	(130,'e1',26,129,'Euphonium_Blasom_1.JPG'),
	(131,'e2',26,129,'Euphonium_Blasom_2.JPG'),
	(132,'e3',26,129,'Euphonium_Blasom_4.JPG'),
	(133,'e4',26,129,'Euphonium_Blasom_5.JPG'),
	(134,'e5',26,129,'Euphonium_Blasom_6.JPG'),
	(136,'h1',27,135,'Hobo_Hans_Kreul_1.JPG'),
	(137,'h2',27,135,'Hobo_Hans_Kreul_2.JPG'),
	(139,'k1',28,138,'Klarinet_Buffet_Crampon_E11_1.JPG'),
	(140,'k2',28,138,'Klarinet_Buffet_Crampon_E11_2.JPG'),
	(141,'k3',28,138,'Klarinet_Buffet_Crampon_E11_3.JPG'),
	(142,'k4',28,138,'Klarinet_Buffet_Crampon_E11_4.JPG'),
	(143,'s2',28,25,'Sopraansax_Borgani_2.JPG'),
	(145,'k1',29,144,'Klarinet_Buffet_Crampon_E11_A_1.JPG'),
	(146,'k2',29,144,'Klarinet_Buffet_Crampon_E11_2_1.JPG'),
	(147,'k6',29,144,'Klarinet_Buffet_Crampon_E11_A_6.JPG'),
	(148,'k3',29,144,'Klarinet_Buffet_Crampon_E11_A_2.JPG'),
	(150,'k1',30,149,'Klarinet_Leblanc_1.JPG'),
	(151,'k2',30,149,'Klarinet_Leblanc_2.JPG'),
	(152,'k3',30,149,'Klarinet_Leblanc_3.JPG'),
	(153,'k4',30,149,'Klarinet_Leblanc_4.JPG'),
	(155,'k1',31,154,'Klarinet_Leblanc_Noblet_1.JPG'),
	(156,'k2',31,154,'Klarinet_Leblanc_Noblet_2.JPG'),
	(157,'k3',31,154,'Klarinet_Leblanc_Noblet_3.JPG'),
	(158,'k4',31,154,'Klarinet_Leblanc_Noblet_4.JPG'),
	(160,'k1',32,159,'Klarinet_Selmer_Serie_9_1.JPG'),
	(161,'k2',32,159,'Klarinet_Selmer_Serie_9_2.JPG'),
	(163,'t1',33,162,'Pistontrombone_Maheu_1.JPG'),
	(164,'p2',33,162,'Pistontrombone_Maheu_2.JPG'),
	(165,'p3',33,162,'Pistontrombone_Maheu_3.JPG'),
	(167,'p1',34,166,'Pistontrombone_Ruyssinck_2.JPG'),
	(168,'p2',34,166,'Pistontrombone_Ruyssinck_3.JPG'),
	(170,'t1',35,169,'Tenorsax_Buescher_1.JPG'),
	(171,'t2',35,169,'Tenorsax_Buescher_2.JPG'),
	(172,'t3',35,169,'Tenorsax_Buescher_3.JPG'),
	(173,'t4',35,169,'Tenorsax_Buescher_4.JPG'),
	(175,'t1',36,174,'Tenorsax_Hohner_President_1.JPG'),
	(176,'t2',36,174,'Tenorsax_Hohner_President_2.JPG'),
	(177,'t3',36,174,'Tenorsax_Hohner_President_3.JPG'),
	(179,'t1',37,178,'Tenorsax_Hopf_1.JPG'),
	(180,'t2',37,178,'Tenorsax_Hopf_2.JPG'),
	(181,'t3',37,178,'Tenorsax_Hopf_3.JPG'),
	(183,'t1',38,182,'Tenrosax_Conn_10M_1.JPG'),
	(184,'t2',38,182,'Tenrosax_Conn_10M_2.JPG'),
	(185,'t3',38,182,'Tenrosax_Conn_10M_3.JPG'),
	(186,'t4',38,182,'Tenrosax_Conn_10M_4.JPG'),
	(187,'t5',38,182,'Tenrosax_Conn_10M_5.JPG'),
	(188,'t6',38,182,'Tenrosax_Conn_10M_6.JPG'),
	(190,'t1',39,189,'Trombone_Conn_Director_1.JPG'),
	(191,'t2',39,189,'Trombone_Conn_Director_3.JPG'),
	(192,'t3',39,189,'Trombone_Conn_Director_5.JPG'),
	(193,'t4',39,189,'Trombone_Conn_Director_6.JPG'),
	(194,'t5',39,189,'Trombone_Conn_Director_8.JPG'),
	(196,'t1',40,195,'Trombone_King_2B_1.JPG'),
	(197,'t2',40,195,'Trombone_King_2B_2.JPG'),
	(198,'t3',40,195,'Trombone_King_2B_3.JPG'),
	(199,'t4',40,195,'Trombone_King_2B_4.JPG'),
	(200,'t5',40,195,'Trombone_King_2B_5.JPG'),
	(201,'t6',40,195,'Trombone_King_2B_6.JPG'),
	(203,'t1',41,202,'Trombone_King_3B_1.JPG'),
	(204,'t2',41,202,'Trombone_King_3B_2.JPG'),
	(205,'t3',41,202,'Trombone_King_3B_3.JPG'),
	(206,'t4',41,202,'Trombone_King_3B_4.JPG'),
	(207,'t5',41,202,'Trombone_King_2B_5_1.JPG'),
	(208,'t6',41,202,'Trombone_King_2B_6_1.JPG'),
	(210,'t1',42,209,'Trombone_King_4B_1.JPG'),
	(211,'t2',42,209,'Trombone_King_4B_2.JPG'),
	(212,'t3',42,209,'Trombone_King_4B_3.JPG'),
	(213,'t4',42,209,'Trombone_King_4B_4.JPG'),
	(214,'t5',42,209,'Trombone_King_4B_5.JPG'),
	(215,'t6',42,209,'Trombone_King_4B_6.JPG'),
	(217,'t1',43,216,'Trombone_Meinl_1.JPG'),
	(218,'t2',43,216,'Trombone_Meinl_1_1.JPG'),
	(219,'t3',43,216,'Trombone_Meinl_2.JPG'),
	(220,'t4',43,216,'Trombone_Meinl_4.JPG'),
	(222,'t1',44,221,'Trombone_Yamaha_5.JPG'),
	(223,'t2',44,221,'Trombone_YAmaha_1.JPG'),
	(224,'t3',44,221,'Trombone_YAmaha_2.JPG'),
	(225,'t4',44,221,'Trombone_Yamaha_3.JPG'),
	(226,'t5',44,221,'Trombone_Yamaha_4.JPG'),
	(228,'t1',45,227,'Trompet_Keilwerth_Toneking_Special_1.JPG'),
	(229,'t2',45,227,'Trompet_Keilwerth_Toneking_Special_2.JPG'),
	(230,'t3',45,227,'Trompet_Keilwerth_Toneking_Special_3.JPG'),
	(231,'t4',45,227,'Trompet_Keilwerth_Toneking_Special_4.JPG'),
	(232,'t5',45,227,'Trompet_Keilwerth_Toneking_Special_5.JPG'),
	(235,'t2',1,233,'Trompet_Olds_Recording_3_1.JPG'),
	(236,'t3',4,233,'Trompet_Olds_Recording_1.JPG'),
	(237,'t4',2,233,'Trompet_Olds_Recording_2_2.JPG'),
	(238,'t5',3,233,'Trompet_Olds_Recording_2.JPG'),
	(240,'t1',47,239,'Trompet_SML_1_2.JPG'),
	(241,'t2',47,239,'Trompet_SML_2_2.JPG'),
	(242,'t3',47,239,'Trompet_SML_3.JPG'),
	(244,'t1',48,243,'Trompet_Yamaha_1.JPG'),
	(245,'t2',48,243,'Trompet_Yamaha_2.JPG'),
	(246,'t3',48,243,'Trompet_Yamaha_3.JPG'),
	(248,'t1',49,247,'Trompet_Yamaha_Custom_3.JPG'),
	(249,'t2',49,247,'Trompet_Yamaha_Custom_1.JPG');

/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
