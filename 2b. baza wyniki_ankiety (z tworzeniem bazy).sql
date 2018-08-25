CREATE DATABASE  IF NOT EXISTS `wyniki_ankiety` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `wyniki_ankiety`;
-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: wyniki_ankiety
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `druzyny`
--

DROP TABLE IF EXISTS `druzyny`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `druzyny` (
  `id_druzyny` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `odpowiedz` varchar(100) NOT NULL,
  PRIMARY KEY (`id_druzyny`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `druzyny`
--

LOCK TABLES `druzyny` WRITE;
/*!40000 ALTER TABLE `druzyny` DISABLE KEYS */;
INSERT INTO `druzyny` VALUES (1,'Miałbym/miałabym całą drużynę do Counter-Strike: Global Offensive'),(2,'Miałbym/miałabym całą drużynę do Dota 2'),(3,'Miałbym/miałabym całą drużynę do H1Z1: King of the Kill'),(4,'Miałbym/miałabym całą drużynę do Heroes of Might and Magic 3'),(5,'Miałbym/miałabym całą drużynę do Heroes of Might and Magic 5'),(6,'Miałbym/miałabym całą drużynę do League of legends'),(7,'Miałbym/miałabym całą drużynę do Overwatch'),(8,'Miałbym/miałabym całą drużynę do Rocket League'),(9,'Miałbym/miałabym całą drużynę do World of Warcraft'),(10,'Miałbym/miałabym część drużyny do Counter-Strike: Global Offensive'),(11,'Miałbym/miałabym część drużyny do Dota 2'),(12,'Miałbym/miałabym część drużyny do League of legends'),(13,'Miałbym/miałabym część drużyny do Overwatch'),(14,'Miałbym/miałabym część drużyny do Rocket League'),(15,'Miałbym/miałabym część drużyny do Tom Clancy’s Rainbow Six Siege'),(16,'Nie dotyczy'),(17,'Nie miałabym/miałabym drużyny do Heroes of the Storm'),(18,'Nie miałbym/miałabym drużyny do Battlefield'),(19,'Nie miałbym/miałabym drużyny do Call of Duty'),(20,'Nie miałbym/miałabym drużyny do Counter-Strike: Global Offensive'),(21,'Nie miałbym/miałabym drużyny do Dota 2'),(22,'Nie miałbym/miałabym drużyny do Heros of the Storm'),(23,'Nie miałbym/miałabym drużyny do League of legends'),(24,'Nie miałbym/miałabym drużyny do Overwatch'),(25,'Nie miałbym/miałabym drużyny do Team Fortress 2'),(26,'Nie miałbym/miałabym drużyny do Tekken Tag Tournament 2');
/*!40000 ALTER TABLE `druzyny` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `gry regularne`
--

DROP TABLE IF EXISTS `gry regularne`;
/*!50001 DROP VIEW IF EXISTS `gry regularne`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `gry regularne` AS SELECT 
 1 AS `ID`,
 1 AS `Tytuł gry regularnej`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `gry turniejowe`
--

DROP TABLE IF EXISTS `gry turniejowe`;
/*!50001 DROP VIEW IF EXISTS `gry turniejowe`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `gry turniejowe` AS SELECT 
 1 AS `ID`,
 1 AS `Tytuł gry turniejowej`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `gry_regularne`
--

DROP TABLE IF EXISTS `gry_regularne`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `gry_regularne` (
  `id_gry_regularne` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `tytul_gry` varchar(50) NOT NULL,
  PRIMARY KEY (`id_gry_regularne`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gry_regularne`
--

LOCK TABLES `gry_regularne` WRITE;
/*!40000 ALTER TABLE `gry_regularne` DISABLE KEYS */;
INSERT INTO `gry_regularne` VALUES (1,'Assetto Corsa'),(2,'Battlefield'),(3,'Call of Duty'),(4,'Counter-Strike: Global Offensive'),(5,'Crypt of Necrodancer'),(6,'Diablo III'),(7,'Dota 2'),(8,'F1 2016'),(9,'FIFA'),(10,'Factorio'),(11,'Gran Turismo'),(12,'Gwint'),(13,'H1Z1: King of the Kill'),(14,'Hearthstone'),(15,'Heroes of Might and Magic 3'),(16,'Heroes of the Storm'),(17,'League of legends'),(18,'Mortal Kombat'),(19,'NFS'),(20,'NHL'),(21,'Nie gram w nic regularnie'),(22,'Overwatch'),(23,'PES'),(24,'Paladins  '),(25,'Quake Live'),(26,'Rocket League'),(27,'Star Wars Battlefront'),(28,'Starcraft 2'),(29,'Team Fortress 2'),(30,'The Elder Scrolls V: Skyrim'),(31,'Tom Clancy’s Rainbow Six Siege'),(32,'TrackMania Nations Forever'),(33,'Warhammer 40000: Dawn of War II'),(34,'Wiedźmin'),(35,'World of Tanks'),(36,'World of Warcraft'),(37,'XCOM');
/*!40000 ALTER TABLE `gry_regularne` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gry_turniejowe`
--

DROP TABLE IF EXISTS `gry_turniejowe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `gry_turniejowe` (
  `id_gry_turniejowe` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `tytul_gry` varchar(50) NOT NULL,
  PRIMARY KEY (`id_gry_turniejowe`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gry_turniejowe`
--

LOCK TABLES `gry_turniejowe` WRITE;
/*!40000 ALTER TABLE `gry_turniejowe` DISABLE KEYS */;
INSERT INTO `gry_turniejowe` VALUES (1,'Call of Duty'),(2,'Battlefield'),(3,'Counter-Strike: Global Offensive'),(4,'FIFA'),(5,'Gran Turismo'),(6,'Assetto Corsa'),(7,'Quake Live'),(8,'Rocket League'),(9,'Dota 2'),(10,'F1 2016'),(11,'Tom Clancy’s Rainbow Six Siege'),(12,'Gwint'),(13,'H1Z1: King of the Kill'),(14,'Hearthstone'),(15,'League of legends'),(16,'Heroes of Might and Magic 3'),(17,'Heroes of Might and Magic 5'),(18,'Heroes of the Storm'),(19,'StarCraft 2'),(20,'Mortal Kombat'),(21,'Nie dotyczy'),(22,'Overwatch'),(23,'PES'),(24,'Starcraft 2'),(25,'Team Fortress 2'),(26,'Tekken Tag Tournament 2'),(27,'TrackMania Nations Forever'),(28,'Wiedźmin'),(29,'Star Wars Battlefront'),(30,'World of Tanks'),(31,'World of Warcraft');
/*!40000 ALTER TABLE `gry_turniejowe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `odpowiedzi`
--

DROP TABLE IF EXISTS `odpowiedzi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `odpowiedzi` (
  `id_odp` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_plec` tinyint(3) unsigned NOT NULL,
  `id_wydzial` tinyint(3) unsigned NOT NULL,
  `wiek` tinyint(3) unsigned NOT NULL,
  `czy_udzial` tinyint(4) NOT NULL,
  `czy_mail` tinyint(4) NOT NULL,
  PRIMARY KEY (`id_odp`),
  KEY `id_plec` (`id_plec`),
  KEY `id_wydzial` (`id_wydzial`),
  CONSTRAINT `odpowiedzi_ibfk_1` FOREIGN KEY (`id_plec`) REFERENCES `plec` (`id_plec`),
  CONSTRAINT `odpowiedzi_ibfk_2` FOREIGN KEY (`id_wydzial`) REFERENCES `wydzial` (`id_wydzial`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `odpowiedzi`
--

LOCK TABLES `odpowiedzi` WRITE;
/*!40000 ALTER TABLE `odpowiedzi` DISABLE KEYS */;
INSERT INTO `odpowiedzi` VALUES (1,2,11,18,0,0),(2,2,19,18,1,0),(3,2,6,19,1,0),(4,2,7,19,0,0),(5,2,12,19,1,1),(6,2,19,19,1,0),(7,2,19,19,1,1),(8,2,19,19,1,0),(9,2,19,19,1,0),(10,2,19,19,1,0),(11,2,19,19,1,1),(12,2,19,19,0,1),(13,2,19,19,1,0),(14,2,19,19,1,0),(15,2,20,19,0,0),(16,2,20,19,1,0),(17,1,22,19,0,0),(18,2,22,19,1,0),(19,1,26,19,0,0),(20,1,26,19,0,0),(21,1,31,19,1,1),(22,2,31,19,1,0),(23,1,33,19,0,0),(24,2,33,19,1,0),(25,2,33,19,1,0),(26,1,1,20,0,0),(27,2,6,20,1,0),(28,2,6,20,0,0),(29,1,7,20,0,0),(30,2,8,20,1,1),(31,2,8,20,0,0),(32,1,9,20,1,1),(33,2,9,20,1,0),(34,2,11,20,1,0),(35,1,14,20,1,1),(36,1,15,20,1,0),(37,1,16,20,1,1),(38,1,17,20,1,0),(39,2,19,20,1,1),(40,2,19,20,1,0),(41,2,19,20,1,0),(42,2,19,20,1,0),(43,2,19,20,1,1),(44,2,19,20,0,0),(45,2,19,20,0,0),(46,2,19,20,1,0),(47,2,19,20,1,0),(48,2,19,20,0,0),(49,2,19,20,1,0),(50,2,19,20,1,0),(51,2,19,20,1,0),(52,2,19,20,1,0),(53,2,19,20,1,1),(54,1,21,20,0,0),(55,2,21,20,1,1),(56,2,21,20,1,0),(57,2,21,20,0,0),(58,2,21,20,1,1),(59,2,21,20,1,0),(60,1,21,20,0,0),(61,1,22,20,0,0),(62,2,22,20,1,1),(63,2,22,20,1,0),(64,2,23,20,0,0),(65,1,11,20,0,1),(66,2,25,20,1,1),(67,2,27,20,1,0),(68,2,28,20,0,0),(69,2,28,20,0,0),(70,1,29,20,0,0),(71,1,29,20,1,0),(72,2,29,20,1,1),(73,1,29,20,0,0),(74,2,29,20,1,1),(75,2,33,20,1,0),(76,2,33,20,1,1),(77,2,33,20,1,0),(78,1,33,20,0,1),(79,2,33,20,1,1),(80,2,33,20,1,1),(81,2,33,20,1,0),(82,2,33,20,1,0),(83,2,33,20,1,0),(84,2,33,20,1,1),(85,1,33,20,0,0),(86,2,33,20,1,1),(87,2,33,20,1,0),(88,2,33,20,0,0),(89,2,33,20,1,0),(90,2,33,20,1,0),(91,2,33,20,0,1),(92,2,33,20,1,1),(93,2,4,21,1,1),(94,1,5,21,0,0),(95,1,5,21,1,1),(96,1,6,21,0,0),(97,2,7,21,1,0),(98,1,18,21,1,1),(99,2,18,21,1,0),(100,1,19,21,1,0),(101,2,19,21,0,0),(102,2,19,21,0,0),(103,2,19,21,1,1),(104,2,19,21,1,1),(105,2,19,21,1,1),(106,2,19,21,0,0),(107,2,19,21,1,1),(108,2,19,21,1,0),(109,2,20,21,1,0),(110,2,21,21,1,1),(111,1,21,21,0,0),(112,2,21,21,1,0),(113,2,21,21,1,1),(114,2,21,21,1,1),(115,2,22,21,1,1),(116,1,22,21,0,1),(117,2,22,21,1,1),(118,2,22,21,0,0),(119,2,25,21,1,1),(120,1,26,21,0,0),(121,2,28,21,1,0),(122,2,28,21,0,0),(123,2,28,21,1,1),(124,2,28,21,1,1),(125,2,29,21,0,0),(126,2,29,21,1,0),(127,2,29,21,1,1),(128,2,30,21,1,0),(129,2,31,21,1,0),(130,2,33,21,1,0),(131,2,33,21,1,1),(132,2,33,21,1,0),(133,2,33,21,1,0),(134,2,33,21,0,1),(135,2,33,21,1,1),(136,2,33,21,0,0),(137,2,33,21,1,1),(138,2,33,21,1,1),(139,2,33,21,1,0),(140,2,2,22,0,0),(141,2,3,22,1,0),(142,2,5,22,1,1),(143,2,5,22,1,0),(144,2,5,22,1,0),(145,1,5,22,1,0),(146,2,7,22,1,0),(147,1,17,22,0,0),(148,2,19,22,1,1),(149,2,19,22,1,0),(150,2,19,22,1,0),(151,2,19,22,1,1),(152,2,19,22,1,0),(153,2,19,22,1,0),(154,2,19,22,0,0),(155,2,19,22,1,1),(156,2,21,22,1,1),(157,2,22,22,0,0),(158,1,23,22,0,1),(159,2,24,22,1,1),(160,1,26,22,0,0),(161,2,33,22,0,0),(162,2,33,22,1,1),(163,2,33,22,1,0),(164,1,33,22,0,0),(165,2,33,22,1,0),(166,2,5,23,1,0),(167,2,8,23,1,0),(168,1,10,23,0,0),(169,2,13,23,1,1),(170,2,13,23,1,0),(171,2,14,23,1,0),(172,1,19,23,0,0),(173,2,19,23,1,1),(174,2,19,23,0,0),(175,2,19,23,0,0),(176,2,21,23,1,0),(177,2,22,23,0,0),(178,2,22,23,1,0),(179,2,28,23,1,1),(180,1,29,23,0,0),(181,2,33,23,1,0),(182,2,8,24,1,1),(183,1,14,24,0,0),(184,2,19,24,1,1),(185,2,19,24,1,1),(186,2,19,24,1,0),(187,2,19,24,1,0),(188,2,19,24,1,0),(189,2,29,24,1,1),(190,2,19,25,0,0),(191,2,19,25,1,1),(192,1,33,25,1,0),(193,2,33,25,1,1),(194,2,19,26,1,0),(195,2,29,26,1,1),(196,1,29,28,1,0),(197,2,33,28,0,0),(198,1,33,28,1,0),(199,1,32,37,0,0);
/*!40000 ALTER TABLE `odpowiedzi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `odpowiedzi ankietowanych`
--

DROP TABLE IF EXISTS `odpowiedzi ankietowanych`;
/*!50001 DROP VIEW IF EXISTS `odpowiedzi ankietowanych`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `odpowiedzi ankietowanych` AS SELECT 
 1 AS `ID`,
 1 AS `Płeć`,
 1 AS `Wydział`,
 1 AS `Wiek`,
 1 AS `Czy bierze udział`,
 1 AS `Czy zostawił maila`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `plec`
--

DROP TABLE IF EXISTS `plec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `plec` (
  `id_plec` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `plec` varchar(30) NOT NULL,
  PRIMARY KEY (`id_plec`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plec`
--

LOCK TABLES `plec` WRITE;
/*!40000 ALTER TABLE `plec` DISABLE KEYS */;
INSERT INTO `plec` VALUES (1,'Kobieta'),(2,'Mężczyzna');
/*!40000 ALTER TABLE `plec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `przech_odp_druzyny`
--

DROP TABLE IF EXISTS `przech_odp_druzyny`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `przech_odp_druzyny` (
  `id_przech_odp_druzyny` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_odp` int(10) unsigned NOT NULL,
  `id_druzyny` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_przech_odp_druzyny`),
  KEY `id_odp` (`id_odp`),
  KEY `id_druzyny` (`id_druzyny`),
  CONSTRAINT `przech_odp_druzyny_ibfk_1` FOREIGN KEY (`id_odp`) REFERENCES `odpowiedzi` (`id_odp`),
  CONSTRAINT `przech_odp_druzyny_ibfk_2` FOREIGN KEY (`id_druzyny`) REFERENCES `druzyny` (`id_druzyny`)
) ENGINE=InnoDB AUTO_INCREMENT=232 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `przech_odp_druzyny`
--

LOCK TABLES `przech_odp_druzyny` WRITE;
/*!40000 ALTER TABLE `przech_odp_druzyny` DISABLE KEYS */;
INSERT INTO `przech_odp_druzyny` VALUES (1,1,20),(2,2,23),(3,3,12),(4,3,10),(5,3,20),(6,4,16),(7,5,12),(8,6,20),(9,7,23),(10,8,16),(11,9,23),(12,9,20),(13,10,21),(14,11,24),(15,12,12),(16,13,4),(17,13,5),(18,14,21),(19,15,16),(20,16,23),(21,17,16),(22,18,16),(23,19,16),(24,20,16),(25,21,12),(26,22,23),(27,23,16),(28,24,6),(29,24,1),(30,25,10),(31,26,16),(32,27,12),(33,28,1),(34,29,16),(35,30,20),(36,31,16),(37,32,17),(38,33,20),(39,34,24),(40,34,20),(41,35,12),(42,36,16),(43,37,23),(44,38,23),(45,39,12),(46,39,10),(47,40,10),(48,41,1),(49,42,2),(50,43,10),(51,44,16),(52,45,16),(53,46,9),(54,47,22),(55,48,16),(56,49,16),(57,50,20),(58,51,24),(59,51,23),(60,52,1),(61,53,11),(62,54,16),(63,55,23),(64,56,24),(65,57,12),(66,58,24),(67,59,20),(68,60,16),(69,61,16),(70,62,1),(71,63,16),(72,64,16),(73,65,16),(74,66,12),(75,67,16),(76,68,16),(77,69,20),(78,70,16),(79,71,16),(80,72,13),(81,72,20),(82,73,16),(83,74,16),(84,75,6),(85,75,1),(86,76,6),(87,76,1),(88,77,12),(89,77,10),(90,78,13),(91,78,12),(92,78,10),(93,79,16),(94,80,12),(95,81,12),(96,82,12),(97,82,10),(98,83,16),(99,84,12),(100,85,16),(101,86,1),(102,87,16),(103,88,16),(104,89,16),(105,90,12),(106,90,23),(107,91,16),(108,92,20),(109,93,10),(110,94,16),(111,95,22),(112,96,16),(113,97,20),(114,98,12),(115,99,16),(116,100,16),(117,101,16),(118,102,16),(119,103,7),(120,104,6),(121,104,1),(122,105,13),(123,106,16),(124,107,8),(125,108,16),(126,109,23),(127,110,23),(128,111,16),(129,112,16),(130,113,7),(131,113,6),(132,114,20),(133,115,24),(134,115,1),(135,116,13),(136,117,15),(137,118,16),(138,119,24),(139,120,16),(140,121,16),(141,122,16),(142,123,12),(143,124,16),(144,125,16),(145,126,19),(146,126,18),(147,127,12),(148,128,3),(149,129,25),(150,129,26),(151,130,6),(152,131,6),(153,131,1),(154,132,24),(155,133,6),(156,134,16),(157,135,10),(158,136,16),(159,137,12),(160,137,10),(161,138,10),(162,139,12),(163,140,16),(164,141,23),(165,142,10),(166,142,14),(167,143,6),(168,143,10),(169,144,16),(170,145,16),(171,146,12),(172,146,10),(173,147,16),(174,148,13),(175,149,19),(176,150,16),(177,151,16),(178,152,2),(179,153,7),(180,153,6),(181,153,20),(182,154,16),(183,155,6),(184,156,10),(185,157,16),(186,158,16),(187,159,13),(188,159,12),(189,159,10),(190,160,16),(191,161,16),(192,162,23),(193,163,16),(194,164,16),(195,165,23),(196,166,20),(197,167,20),(198,168,16),(199,169,16),(200,170,24),(201,171,23),(202,172,16),(203,173,2),(204,174,16),(205,175,16),(206,176,16),(207,177,16),(208,178,16),(209,179,6),(210,180,16),(211,181,1),(212,181,10),(213,182,1),(214,183,16),(215,184,16),(216,185,23),(217,186,2),(218,187,2),(219,188,23),(220,188,10),(221,189,12),(222,190,20),(223,191,16),(224,192,16),(225,193,23),(226,194,20),(227,195,23),(228,196,12),(229,197,16),(230,198,20),(231,199,16);
/*!40000 ALTER TABLE `przech_odp_druzyny` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `przech_odp_gry_regularne`
--

DROP TABLE IF EXISTS `przech_odp_gry_regularne`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `przech_odp_gry_regularne` (
  `id_przech_odp_regularne_gry` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_odp` int(10) unsigned NOT NULL,
  `id_gry_regularne` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id_przech_odp_regularne_gry`),
  KEY `id_odp` (`id_odp`),
  KEY `id_gry_regularne` (`id_gry_regularne`),
  CONSTRAINT `przech_odp_gry_regularne_ibfk_1` FOREIGN KEY (`id_odp`) REFERENCES `odpowiedzi` (`id_odp`),
  CONSTRAINT `przech_odp_gry_regularne_ibfk_2` FOREIGN KEY (`id_gry_regularne`) REFERENCES `gry_regularne` (`id_gry_regularne`)
) ENGINE=InnoDB AUTO_INCREMENT=281 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `przech_odp_gry_regularne`
--

LOCK TABLES `przech_odp_gry_regularne` WRITE;
/*!40000 ALTER TABLE `przech_odp_gry_regularne` DISABLE KEYS */;
INSERT INTO `przech_odp_gry_regularne` VALUES (1,1,4),(2,2,14),(3,2,17),(4,3,14),(5,3,17),(6,3,4),(7,3,28),(8,4,21),(9,5,14),(10,5,17),(11,6,25),(12,7,17),(13,7,4),(14,7,15),(15,8,15),(16,9,21),(17,10,7),(18,11,22),(19,11,14),(20,11,4),(21,12,17),(22,13,15),(23,14,7),(24,15,21),(25,16,17),(26,16,28),(27,17,21),(28,18,21),(29,19,21),(30,20,21),(31,21,17),(32,21,4),(33,22,17),(34,23,21),(35,24,17),(36,25,4),(37,26,21),(38,27,14),(39,27,17),(40,28,14),(41,29,21),(42,30,4),(43,31,9),(44,32,28),(45,32,16),(46,33,4),(47,34,22),(48,35,17),(49,36,34),(50,37,14),(51,38,17),(52,39,21),(53,40,4),(54,41,4),(55,42,7),(56,42,24),(57,43,4),(58,44,21),(59,45,21),(60,46,36),(61,47,16),(62,48,21),(63,49,21),(64,50,4),(65,50,28),(66,51,22),(67,51,17),(68,51,37),(69,51,33),(70,52,4),(71,53,7),(72,54,21),(73,55,17),(74,56,22),(75,57,21),(76,58,22),(77,58,14),(78,59,4),(79,60,21),(80,61,21),(81,62,4),(82,63,21),(83,64,28),(84,64,30),(85,65,34),(86,65,27),(87,66,17),(88,67,12),(89,68,21),(90,69,4),(91,70,21),(92,71,21),(93,72,22),(94,72,4),(95,73,21),(96,74,14),(97,74,36),(98,74,12),(99,75,14),(100,75,17),(101,75,4),(102,76,21),(103,77,17),(104,77,4),(105,78,22),(106,78,17),(107,78,4),(108,79,14),(109,80,14),(110,81,17),(111,81,3),(112,81,9),(113,81,18),(114,82,21),(115,83,12),(116,84,17),(117,84,4),(118,85,21),(119,86,4),(120,87,9),(121,88,21),(122,89,21),(123,90,17),(124,91,17),(125,92,2),(126,92,34),(127,92,3),(128,92,19),(129,93,4),(130,93,9),(131,94,17),(132,95,16),(133,96,21),(134,97,4),(135,98,17),(136,99,32),(137,100,21),(138,101,14),(139,102,21),(140,103,22),(141,103,14),(142,104,17),(143,104,4),(144,105,22),(145,106,10),(146,107,26),(147,108,14),(148,109,14),(149,109,17),(150,110,14),(151,110,17),(152,111,21),(153,112,14),(154,112,9),(155,113,22),(156,113,14),(157,114,4),(158,114,11),(159,114,1),(160,115,22),(161,115,14),(162,115,4),(163,116,22),(164,116,14),(165,116,7),(166,116,6),(167,117,9),(168,117,31),(169,118,4),(170,119,22),(171,120,21),(172,121,9),(173,121,8),(174,121,20),(175,122,16),(176,123,17),(177,124,23),(178,125,21),(179,126,14),(180,126,17),(181,126,4),(182,126,3),(183,126,2),(184,126,9),(185,127,17),(186,128,4),(187,128,13),(188,129,22),(189,129,14),(190,129,29),(191,130,17),(192,131,14),(193,131,17),(194,131,4),(195,132,22),(196,133,14),(197,133,17),(198,134,14),(199,135,4),(200,136,21),(201,137,17),(202,137,4),(203,138,4),(204,139,22),(205,139,14),(206,139,17),(207,140,21),(208,141,17),(209,142,4),(210,142,26),(211,143,26),(212,143,31),(213,144,14),(214,145,21),(215,146,14),(216,146,7),(217,147,21),(218,148,22),(219,149,3),(220,150,21),(221,151,14),(222,152,7),(223,153,22),(224,154,21),(225,155,17),(226,156,14),(227,156,4),(228,157,21),(229,158,21),(230,159,14),(231,159,17),(232,160,21),(233,161,21),(234,162,17),(235,163,14),(236,164,21),(237,165,17),(238,166,4),(239,167,14),(240,167,4),(241,168,21),(242,169,14),(243,169,2),(244,170,22),(245,170,14),(246,170,16),(247,171,22),(248,171,17),(249,172,5),(250,173,7),(251,174,21),(252,175,21),(253,176,12),(254,177,21),(255,178,21),(256,179,17),(257,180,21),(258,181,4),(259,182,4),(260,183,21),(261,184,14),(262,185,17),(263,186,7),(264,187,7),(265,188,17),(266,188,4),(267,189,17),(268,190,21),(269,191,28),(270,192,21),(271,193,22),(272,193,14),(273,193,17),(274,194,21),(275,195,17),(276,196,17),(277,197,35),(278,198,4),(279,198,16),(280,199,21);
/*!40000 ALTER TABLE `przech_odp_gry_regularne` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `przech_odp_gry_turniejowe`
--

DROP TABLE IF EXISTS `przech_odp_gry_turniejowe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `przech_odp_gry_turniejowe` (
  `id_przech_odp_gry_turniejowe` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_odp` int(10) unsigned NOT NULL,
  `id_gry_turniejowe` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id_przech_odp_gry_turniejowe`),
  KEY `id_odp` (`id_odp`),
  KEY `id_gry_turniejowe` (`id_gry_turniejowe`),
  CONSTRAINT `przech_odp_gry_turniejowe_ibfk_1` FOREIGN KEY (`id_odp`) REFERENCES `odpowiedzi` (`id_odp`),
  CONSTRAINT `przech_odp_gry_turniejowe_ibfk_2` FOREIGN KEY (`id_gry_turniejowe`) REFERENCES `gry_turniejowe` (`id_gry_turniejowe`)
) ENGINE=InnoDB AUTO_INCREMENT=261 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `przech_odp_gry_turniejowe`
--

LOCK TABLES `przech_odp_gry_turniejowe` WRITE;
/*!40000 ALTER TABLE `przech_odp_gry_turniejowe` DISABLE KEYS */;
INSERT INTO `przech_odp_gry_turniejowe` VALUES (1,1,3),(2,2,15),(3,3,15),(4,3,3),(5,4,21),(6,5,14),(7,5,15),(8,6,3),(9,6,7),(10,7,15),(11,7,16),(12,8,16),(13,9,15),(14,9,3),(15,10,9),(16,11,22),(17,11,14),(18,12,15),(19,12,3),(20,13,16),(21,13,17),(22,14,9),(23,15,21),(24,16,24),(25,17,21),(26,18,4),(27,19,21),(28,20,21),(29,21,15),(30,21,3),(31,22,15),(32,23,21),(33,24,15),(34,24,3),(35,25,3),(36,26,21),(37,27,15),(38,28,22),(39,28,14),(40,29,21),(41,30,3),(42,31,4),(43,32,18),(44,32,24),(45,33,3),(46,34,22),(47,34,3),(48,35,15),(49,36,12),(50,37,14),(51,38,15),(52,39,15),(53,39,3),(54,40,3),(55,41,3),(56,42,9),(57,43,3),(58,44,21),(59,45,21),(60,46,31),(61,47,18),(62,48,21),(63,49,21),(64,50,24),(65,51,22),(66,51,15),(67,52,3),(68,53,9),(69,54,21),(70,55,15),(71,56,22),(72,57,15),(73,58,22),(74,58,14),(75,59,22),(76,59,3),(77,60,21),(78,61,21),(79,62,3),(80,63,21),(81,64,21),(82,65,28),(83,65,29),(84,66,15),(85,67,12),(86,68,21),(87,69,3),(88,70,21),(89,71,21),(90,72,22),(91,72,3),(92,73,21),(93,74,14),(94,74,12),(95,75,15),(96,75,3),(97,76,4),(98,77,15),(99,77,3),(100,78,15),(101,78,3),(102,79,14),(103,80,14),(104,80,15),(105,81,15),(106,81,1),(107,81,4),(108,81,20),(109,82,15),(110,82,3),(111,83,14),(112,83,12),(113,84,15),(114,85,21),(115,86,3),(116,87,4),(117,88,21),(118,89,21),(119,90,15),(120,91,21),(121,92,3),(122,92,2),(123,93,3),(124,93,4),(125,94,21),(126,95,18),(127,96,21),(128,97,3),(129,98,15),(130,99,27),(131,100,21),(132,101,21),(133,102,21),(134,103,22),(135,103,14),(136,104,15),(137,104,3),(138,105,22),(139,106,21),(140,107,8),(141,108,14),(142,109,14),(143,109,15),(144,110,15),(145,111,22),(146,111,3),(147,112,14),(148,112,4),(149,113,14),(150,113,15),(151,114,3),(152,114,5),(153,114,6),(154,115,22),(155,115,3),(156,116,22),(157,116,14),(158,117,4),(159,117,11),(160,118,21),(161,119,22),(162,120,21),(163,121,4),(164,121,10),(165,122,21),(166,123,15),(167,124,23),(168,125,21),(169,126,1),(170,126,2),(171,127,15),(172,128,13),(173,129,25),(174,129,26),(175,130,15),(176,131,15),(177,131,3),(178,132,22),(179,133,14),(180,133,15),(181,134,21),(182,135,3),(183,136,21),(184,137,15),(185,137,3),(186,138,3),(187,139,14),(188,139,15),(189,140,4),(190,141,15),(191,142,3),(192,142,8),(193,143,15),(194,143,3),(195,143,8),(196,144,14),(197,145,21),(198,146,14),(199,146,15),(200,146,3),(201,147,21),(202,148,22),(203,149,1),(204,150,21),(205,151,14),(206,152,9),(207,153,22),(208,153,15),(209,154,21),(210,155,15),(211,156,14),(212,156,3),(213,157,21),(214,158,21),(215,159,15),(216,159,3),(217,160,21),(218,161,21),(219,162,15),(220,163,14),(221,164,21),(222,165,15),(223,166,3),(224,167,14),(225,167,3),(226,168,21),(227,169,14),(228,170,22),(229,170,14),(230,171,15),(231,172,21),(232,173,9),(233,174,21),(234,175,21),(235,176,12),(236,177,21),(237,178,30),(238,179,15),(239,180,21),(240,181,3),(241,182,3),(242,183,21),(243,184,14),(244,185,15),(245,186,9),(246,187,9),(247,188,15),(248,188,3),(249,189,15),(250,190,3),(251,191,24),(252,192,21),(253,193,14),(254,193,15),(255,194,4),(256,195,15),(257,196,15),(258,197,21),(259,198,3),(260,199,21);
/*!40000 ALTER TABLE `przech_odp_gry_turniejowe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `przech_odp_zainteresowanie_esport`
--

DROP TABLE IF EXISTS `przech_odp_zainteresowanie_esport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `przech_odp_zainteresowanie_esport` (
  `id_przech_odp_zainteresowanie_esport` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_odp` int(10) unsigned NOT NULL,
  `id_zainteresowanie_esport` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id_przech_odp_zainteresowanie_esport`),
  KEY `id_odp` (`id_odp`),
  KEY `id_zainteresowanie_esport` (`id_zainteresowanie_esport`),
  CONSTRAINT `przech_odp_zainteresowanie_esport_ibfk_1` FOREIGN KEY (`id_odp`) REFERENCES `odpowiedzi` (`id_odp`),
  CONSTRAINT `przech_odp_zainteresowanie_esport_ibfk_2` FOREIGN KEY (`id_zainteresowanie_esport`) REFERENCES `zainteresowanie_esport` (`id_zainteresowanie_esport`)
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `przech_odp_zainteresowanie_esport`
--

LOCK TABLES `przech_odp_zainteresowanie_esport` WRITE;
/*!40000 ALTER TABLE `przech_odp_zainteresowanie_esport` DISABLE KEYS */;
INSERT INTO `przech_odp_zainteresowanie_esport` VALUES (1,1,4),(2,2,4),(3,3,5),(4,3,4),(5,4,1),(6,5,4),(7,6,1),(8,7,4),(9,8,1),(10,9,3),(11,10,4),(12,11,3),(13,12,3),(14,13,1),(15,14,1),(16,15,1),(17,16,3),(18,17,2),(19,18,3),(20,19,2),(21,20,1),(22,21,5),(23,21,4),(24,22,4),(25,23,2),(26,24,3),(27,25,5),(28,26,4),(29,27,5),(30,27,4),(31,28,3),(32,29,1),(33,30,5),(34,30,4),(35,31,1),(36,32,3),(37,33,5),(38,33,4),(39,34,5),(40,34,4),(41,35,3),(42,36,3),(43,37,5),(44,37,4),(45,38,4),(46,39,3),(47,40,5),(48,40,4),(49,41,5),(50,42,3),(51,43,5),(52,44,1),(53,45,1),(54,46,3),(55,47,5),(56,47,4),(57,48,3),(58,48,1),(59,49,4),(60,50,5),(61,50,4),(62,51,5),(63,51,4),(64,52,3),(65,53,5),(66,53,4),(67,54,1),(68,55,4),(69,56,1),(70,57,4),(71,58,3),(72,59,5),(73,60,3),(74,61,1),(75,62,4),(76,63,1),(77,64,3),(78,65,3),(79,66,5),(80,66,4),(81,67,3),(82,68,1),(83,69,5),(84,69,4),(85,70,1),(86,71,1),(87,72,5),(88,72,4),(89,73,2),(90,74,4),(91,75,4),(92,76,3),(93,77,5),(94,78,3),(95,79,5),(96,79,4),(97,80,4),(98,81,3),(99,82,3),(100,83,3),(101,84,5),(102,84,4),(103,85,3),(104,86,5),(105,87,3),(106,88,2),(107,89,1),(108,90,5),(109,90,4),(110,91,3),(111,92,3),(112,93,5),(113,94,4),(114,95,5),(115,95,4),(116,96,2),(117,97,3),(118,98,5),(119,98,4),(120,99,1),(121,100,1),(122,101,3),(123,102,1),(124,103,3),(125,104,4),(126,105,3),(127,106,3),(128,107,4),(129,108,4),(130,109,3),(131,110,5),(132,111,3),(133,112,4),(134,113,3),(135,114,3),(136,115,5),(137,115,4),(138,116,4),(139,117,3),(140,118,3),(141,119,4),(142,120,2),(143,121,3),(144,122,5),(145,122,4),(146,123,4),(147,124,1),(148,125,1),(149,126,4),(150,127,5),(151,127,4),(152,128,5),(153,128,4),(154,129,3),(155,130,4),(156,131,4),(157,131,3),(158,132,3),(159,133,4),(160,134,3),(161,135,4),(162,136,1),(163,137,4),(164,138,5),(165,138,4),(166,139,3),(167,140,1),(168,141,3),(169,142,5),(170,142,4),(171,143,4),(172,144,3),(173,145,2),(174,146,5),(175,146,4),(176,147,2),(177,148,5),(178,148,4),(179,149,3),(180,150,5),(181,150,4),(182,151,1),(183,152,5),(184,152,4),(185,153,4),(186,153,3),(187,154,3),(188,155,4),(189,156,5),(190,156,4),(191,157,1),(192,158,2),(193,159,3),(194,160,1),(195,160,2),(196,161,1),(197,162,5),(198,162,4),(199,163,5),(200,163,4),(201,164,1),(202,164,2),(203,165,1),(204,166,5),(205,167,5),(206,168,1),(207,168,2),(208,169,1),(209,170,4),(210,171,4),(211,172,3),(212,173,5),(213,173,4),(214,174,1),(215,175,1),(216,176,5),(217,176,3),(218,177,1),(219,178,3),(220,179,3),(221,180,1),(222,181,4),(223,182,5),(224,182,4),(225,183,2),(226,184,4),(227,185,5),(228,185,4),(229,186,4),(230,187,5),(231,188,4),(232,189,5),(233,189,4),(234,190,5),(235,190,4),(236,191,5),(237,191,4),(238,192,2),(239,193,5),(240,193,4),(241,194,3),(242,195,3),(243,196,3),(244,197,1),(245,198,4),(246,199,2);
/*!40000 ALTER TABLE `przech_odp_zainteresowanie_esport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `przech_odp_zainteresowanie_turniej`
--

DROP TABLE IF EXISTS `przech_odp_zainteresowanie_turniej`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `przech_odp_zainteresowanie_turniej` (
  `id_przech_odp_zainteresowanie_turniej` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_odp` int(10) unsigned NOT NULL,
  `id_zainteresowanie_turniej` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id_przech_odp_zainteresowanie_turniej`),
  KEY `id_odp` (`id_odp`),
  KEY `id_zainteresowanie_turniej` (`id_zainteresowanie_turniej`),
  CONSTRAINT `przech_odp_zainteresowanie_turniej_ibfk_1` FOREIGN KEY (`id_odp`) REFERENCES `odpowiedzi` (`id_odp`),
  CONSTRAINT `przech_odp_zainteresowanie_turniej_ibfk_2` FOREIGN KEY (`id_zainteresowanie_turniej`) REFERENCES `zainteresowanie_turniej` (`id_zainteresowanie_turniej`)
) ENGINE=InnoDB AUTO_INCREMENT=302 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `przech_odp_zainteresowanie_turniej`
--

LOCK TABLES `przech_odp_zainteresowanie_turniej` WRITE;
/*!40000 ALTER TABLE `przech_odp_zainteresowanie_turniej` DISABLE KEYS */;
INSERT INTO `przech_odp_zainteresowanie_turniej` VALUES (1,1,3),(2,1,1),(3,2,1),(4,3,4),(5,3,3),(6,3,1),(7,4,2),(8,5,1),(9,6,3),(10,6,1),(11,7,4),(12,7,3),(13,7,1),(14,8,2),(15,9,3),(16,9,1),(17,10,4),(18,11,1),(19,12,4),(20,13,4),(21,13,1),(22,14,1),(23,15,2),(24,16,3),(25,17,2),(26,18,2),(27,19,2),(28,20,2),(29,21,4),(30,21,3),(31,21,1),(32,22,1),(33,23,2),(34,24,1),(35,25,3),(36,26,4),(37,27,4),(38,27,3),(39,27,1),(40,28,1),(41,29,2),(42,30,4),(43,30,3),(44,30,1),(45,31,1),(46,32,4),(47,32,3),(48,33,1),(49,34,4),(50,34,3),(51,34,1),(52,35,4),(53,35,3),(54,36,3),(55,37,4),(56,37,3),(57,37,1),(58,38,3),(59,38,1),(60,39,4),(61,39,3),(62,39,1),(63,40,1),(64,41,1),(65,42,1),(66,43,1),(67,44,2),(68,45,2),(69,46,4),(70,46,3),(71,46,1),(72,47,3),(73,47,1),(74,48,2),(75,49,4),(76,50,4),(77,50,3),(78,50,1),(79,51,3),(80,51,1),(81,52,4),(82,52,1),(83,53,1),(84,54,2),(85,55,1),(86,56,4),(87,56,3),(88,56,1),(89,57,2),(90,58,1),(91,59,4),(92,59,3),(93,59,1),(94,60,3),(95,61,2),(96,62,1),(97,63,2),(98,64,4),(99,65,1),(100,66,4),(101,66,3),(102,66,1),(103,67,4),(104,67,3),(105,68,2),(106,69,2),(107,70,2),(108,71,1),(109,72,4),(110,72,3),(111,72,1),(112,73,2),(113,74,4),(114,74,3),(115,74,1),(116,75,1),(117,76,1),(118,77,1),(119,78,4),(120,79,4),(121,79,3),(122,80,1),(123,81,1),(124,82,1),(125,83,4),(126,83,3),(127,84,4),(128,84,3),(129,84,1),(130,85,2),(131,86,1),(132,87,1),(133,88,2),(134,89,2),(135,90,1),(136,91,1),(137,92,1),(138,93,1),(139,94,3),(140,95,4),(141,95,3),(142,95,1),(143,96,2),(144,97,3),(145,98,4),(146,98,3),(147,98,1),(148,99,1),(149,100,2),(150,101,4),(151,102,2),(152,103,1),(153,104,4),(154,104,3),(155,104,1),(156,105,1),(157,106,4),(158,107,4),(159,107,3),(160,107,1),(161,108,4),(162,108,3),(163,108,1),(164,109,3),(165,109,1),(166,110,4),(167,110,1),(168,111,2),(169,112,1),(170,113,1),(171,114,1),(172,115,1),(173,116,4),(174,116,3),(175,116,1),(176,117,1),(177,118,3),(178,119,1),(179,120,2),(180,121,1),(181,122,4),(182,122,3),(183,123,4),(184,123,3),(185,123,1),(186,124,1),(187,125,2),(188,126,1),(189,127,4),(190,127,1),(191,128,4),(192,128,3),(193,128,1),(194,129,1),(195,130,1),(196,131,4),(197,131,3),(198,131,1),(199,132,3),(200,132,1),(201,133,1),(202,134,4),(203,134,3),(204,134,1),(205,135,1),(206,136,1),(207,137,1),(208,138,1),(209,139,4),(210,139,3),(211,139,1),(212,140,2),(213,141,1),(214,142,1),(215,143,4),(216,143,3),(217,143,1),(218,144,4),(219,145,2),(220,146,4),(221,146,3),(222,146,1),(223,147,2),(224,148,4),(225,148,3),(226,148,1),(227,149,1),(228,150,4),(229,150,3),(230,150,1),(231,151,1),(232,152,4),(233,152,3),(234,152,1),(235,153,4),(236,153,3),(237,153,1),(238,154,1),(239,155,1),(240,156,4),(241,156,1),(242,157,2),(243,158,2),(244,159,1),(245,160,2),(246,161,2),(247,162,1),(248,163,4),(249,163,3),(250,163,1),(251,164,2),(252,165,1),(253,166,1),(254,167,4),(255,168,3),(256,169,1),(257,170,4),(258,170,3),(259,170,1),(260,171,1),(261,172,4),(262,173,4),(263,173,3),(264,173,1),(265,174,2),(266,175,2),(267,176,1),(268,177,2),(269,178,1),(270,179,4),(271,179,3),(272,179,1),(273,180,2),(274,181,1),(275,182,4),(276,182,3),(277,182,1),(278,183,2),(279,184,1),(280,185,1),(281,186,4),(282,186,1),(283,187,1),(284,188,1),(285,189,4),(286,189,3),(287,189,1),(288,190,1),(289,191,4),(290,191,3),(291,191,1),(292,192,2),(293,193,4),(294,193,1),(295,194,3),(296,195,4),(297,195,3),(298,196,1),(299,197,2),(300,198,3),(301,199,2);
/*!40000 ALTER TABLE `przech_odp_zainteresowanie_turniej` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `stan drużyn`
--

DROP TABLE IF EXISTS `stan drużyn`;
/*!50001 DROP VIEW IF EXISTS `stan drużyn`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `stan drużyn` AS SELECT 
 1 AS `ID`,
 1 AS `Stan drużyny`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `wydzial`
--

DROP TABLE IF EXISTS `wydzial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wydzial` (
  `id_wydzial` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `nazwa_wydzialu` varchar(100) NOT NULL,
  PRIMARY KEY (`id_wydzial`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wydzial`
--

LOCK TABLES `wydzial` WRITE;
/*!40000 ALTER TABLE `wydzial` DISABLE KEYS */;
INSERT INTO `wydzial` VALUES (1,'Biologii'),(2,'Centrum Studiów Latynoamerykańskich '),(3,'Chemii'),(4,'Dziennikarstwa i Nauk Politycznych'),(5,'Dziennikarstwa, Informacji i Bibliologii'),(6,'Filozofii i Socjologii'),(7,'Fizyki'),(8,'Geografii i Studiów Regionalnych'),(9,'Geologii'),(10,'Germanistyki'),(11,'Instytut Anglistyki'),(12,'Instytut Archeologii '),(13,'Instytut Historyczny'),(14,'Instytut Komunikacji Specjalistycznej i Interkulturowej'),(15,'Instytut Lingwistyki Stosowanej'),(16,'Instytut Nauk Politycznych'),(17,'Instytut Profilaktyki Społecznej i Resocjalizacji'),(18,'Lingwistyki Stosowanej'),(19,'Matematyki, Informatyki i Mechaniki'),(20,'Międzywydziałowe Indywidualne Studia Matematyczno-Przyrodnicze'),(21,'Nauk Ekonomicznych'),(22,'Nauk Politycznych i Stosunków Międzynarodowych'),(23,'Neofilologii'),(24,'Orientalistyczny'),(25,'Ośrodek Studiów Amerykańskich'),(26,'Pedagogiczny'),(27,'Polonistyki'),(28,'Prawa i Administracji'),(29,'Psychologii'),(30,'Stosowanych Nauk Społecznych i Resocjalizacji'),(31,'Uniwersyteckie Kolegium Kształcenia Nauczycieli Języka Angielskiego'),(32,'Uniwersyteckie Kolegium Kształcenia Nauczycieli Języka Francuskiego'),(33,'Zarządzania');
/*!40000 ALTER TABLE `wydzial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `zainteresowanie e-sportem`
--

DROP TABLE IF EXISTS `zainteresowanie e-sportem`;
/*!50001 DROP VIEW IF EXISTS `zainteresowanie e-sportem`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `zainteresowanie e-sportem` AS SELECT 
 1 AS `ID`,
 1 AS `Zainteresowanie e-sportem`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `zainteresowanie turniejem`
--

DROP TABLE IF EXISTS `zainteresowanie turniejem`;
/*!50001 DROP VIEW IF EXISTS `zainteresowanie turniejem`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `zainteresowanie turniejem` AS SELECT 
 1 AS `ID`,
 1 AS `Zainteresowanie turniejem`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `zainteresowanie_esport`
--

DROP TABLE IF EXISTS `zainteresowanie_esport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `zainteresowanie_esport` (
  `id_zainteresowanie_esport` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `odpowiedz` varchar(100) NOT NULL,
  PRIMARY KEY (`id_zainteresowanie_esport`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zainteresowanie_esport`
--

LOCK TABLES `zainteresowanie_esport` WRITE;
/*!40000 ALTER TABLE `zainteresowanie_esport` DISABLE KEYS */;
INSERT INTO `zainteresowanie_esport` VALUES (1,'Nie interesuje się e-sportem'),(2,'Nie wiem co to e-sport'),(3,'Nie śledzę za często wyników lub livestreamów z rozgrywek ale wiem co to esport'),(4,'Tak oglądam livestreamy z rozgrywek'),(5,'Tak śledzę wyniki drużyn e-sportowych');
/*!40000 ALTER TABLE `zainteresowanie_esport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zainteresowanie_turniej`
--

DROP TABLE IF EXISTS `zainteresowanie_turniej`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `zainteresowanie_turniej` (
  `id_zainteresowanie_turniej` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `odpowiedz` varchar(100) NOT NULL,
  PRIMARY KEY (`id_zainteresowanie_turniej`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zainteresowanie_turniej`
--

LOCK TABLES `zainteresowanie_turniej` WRITE;
/*!40000 ALTER TABLE `zainteresowanie_turniej` DISABLE KEYS */;
INSERT INTO `zainteresowanie_turniej` VALUES (1,'Chciałbym/chciałabym uczestniczyć w imprezie (np. na Auli) gdzie prowadzone byłby rozgrywki'),(2,'Nie interesowałoby mnie to'),(3,'Oglądałbym/oglądałabym livestream z rozgrywek'),(4,'Śledziłbym/śledziłabym wyniki');
/*!40000 ALTER TABLE `zainteresowanie_turniej` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `gry regularne`
--

/*!50001 DROP VIEW IF EXISTS `gry regularne`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `gry regularne` AS select `przech_odp_gry_regularne`.`id_odp` AS `ID`,`gry_regularne`.`tytul_gry` AS `Tytuł gry regularnej` from (`przech_odp_gry_regularne` join `gry_regularne` on((`przech_odp_gry_regularne`.`id_gry_regularne` = `gry_regularne`.`id_gry_regularne`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `gry turniejowe`
--

/*!50001 DROP VIEW IF EXISTS `gry turniejowe`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `gry turniejowe` AS select `przech_odp_gry_turniejowe`.`id_odp` AS `ID`,`gry_turniejowe`.`tytul_gry` AS `Tytuł gry turniejowej` from (`przech_odp_gry_turniejowe` join `gry_turniejowe` on((`przech_odp_gry_turniejowe`.`id_gry_turniejowe` = `gry_turniejowe`.`id_gry_turniejowe`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `odpowiedzi ankietowanych`
--

/*!50001 DROP VIEW IF EXISTS `odpowiedzi ankietowanych`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `odpowiedzi ankietowanych` AS select `odpowiedzi`.`id_odp` AS `ID`,`plec`.`plec` AS `Płeć`,`wydzial`.`nazwa_wydzialu` AS `Wydział`,`odpowiedzi`.`wiek` AS `Wiek`,`odpowiedzi`.`czy_udzial` AS `Czy bierze udział`,`odpowiedzi`.`czy_mail` AS `Czy zostawił maila` from ((`odpowiedzi` join `plec` on((`odpowiedzi`.`id_plec` = `plec`.`id_plec`))) join `wydzial` on((`odpowiedzi`.`id_wydzial` = `wydzial`.`id_wydzial`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `stan drużyn`
--

/*!50001 DROP VIEW IF EXISTS `stan drużyn`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `stan drużyn` AS select `przech_odp_druzyny`.`id_odp` AS `ID`,`druzyny`.`odpowiedz` AS `Stan drużyny` from (`przech_odp_druzyny` join `druzyny` on((`przech_odp_druzyny`.`id_druzyny` = `druzyny`.`id_druzyny`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `zainteresowanie e-sportem`
--

/*!50001 DROP VIEW IF EXISTS `zainteresowanie e-sportem`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `zainteresowanie e-sportem` AS select `przech_odp_zainteresowanie_esport`.`id_odp` AS `ID`,`zainteresowanie_esport`.`odpowiedz` AS `Zainteresowanie e-sportem` from (`przech_odp_zainteresowanie_esport` join `zainteresowanie_esport` on((`przech_odp_zainteresowanie_esport`.`id_zainteresowanie_esport` = `zainteresowanie_esport`.`id_zainteresowanie_esport`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `zainteresowanie turniejem`
--

/*!50001 DROP VIEW IF EXISTS `zainteresowanie turniejem`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `zainteresowanie turniejem` AS select `przech_odp_zainteresowanie_turniej`.`id_odp` AS `ID`,`zainteresowanie_turniej`.`odpowiedz` AS `Zainteresowanie turniejem` from (`przech_odp_zainteresowanie_turniej` join `zainteresowanie_turniej` on((`przech_odp_zainteresowanie_turniej`.`id_zainteresowanie_turniej` = `zainteresowanie_turniej`.`id_zainteresowanie_turniej`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-25 14:15:06
