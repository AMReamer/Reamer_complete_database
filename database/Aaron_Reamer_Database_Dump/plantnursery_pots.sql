-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: plantnursery
-- ------------------------------------------------------
-- Server version	8.0.15

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
-- Table structure for table `pots`
--

DROP TABLE IF EXISTS `pots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pots` (
  `pot_id` varchar(8) NOT NULL,
  `volume` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  PRIMARY KEY (`pot_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pots`
--

LOCK TABLES `pots` WRITE;
/*!40000 ALTER TABLE `pots` DISABLE KEYS */;
INSERT INTO `pots` VALUES ('abcdef00',7,7),('abcdef01',7,7),('abcdef02',7,7),('abcdef03',7,7),('abcdef04',7,7),('abcdef05',7,7),('abcdef06',7,7),('abcdef07',7,7),('abcdef08',7,7),('abcdef09',7,7),('abcdef10',7,7),('abcdef11',7,7),('abcdef12',7,7),('bbcdef00',7,12),('bbcdef01',7,12),('bbcdef02',7,12),('bbcdef03',7,12),('bbcdef04',7,12),('bbcdef05',7,12),('bbcdef06',7,12),('bbcdef07',7,12),('bbcdef08',7,12),('bbcdef09',7,12),('bbcdef10',7,12),('bbcdef11',7,12),('cbcdef00',15,8),('cbcdef01',15,8),('cbcdef02',15,8),('cbcdef03',15,8),('cbcdef04',15,8),('cbcdef05',15,8),('cbcdef06',15,8),('cbcdef07',15,8),('cbcdef08',15,8),('cbcdef09',15,8),('cbcdef10',15,8),('cbcdef11',15,8),('dbcdef00',25,14),('dbcdef01',25,14);
/*!40000 ALTER TABLE `pots` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-09 13:18:21
