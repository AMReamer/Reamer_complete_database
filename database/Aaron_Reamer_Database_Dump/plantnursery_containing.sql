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
-- Table structure for table `containing`
--

DROP TABLE IF EXISTS `containing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `containing` (
  `tray_id` varchar(8) NOT NULL,
  `pot_id` varchar(8) NOT NULL,
  PRIMARY KEY (`tray_id`,`pot_id`),
  KEY `pot_id` (`pot_id`),
  CONSTRAINT `containing_ibfk_1` FOREIGN KEY (`tray_id`) REFERENCES `tray` (`tray_id`) ON DELETE CASCADE,
  CONSTRAINT `containing_ibfk_2` FOREIGN KEY (`pot_id`) REFERENCES `pots` (`pot_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `containing`
--

LOCK TABLES `containing` WRITE;
/*!40000 ALTER TABLE `containing` DISABLE KEYS */;
INSERT INTO `containing` VALUES ('fedcba00','abcdef00'),('fedcba00','abcdef01'),('fedcba00','abcdef02'),('fedcba00','abcdef03'),('fedcba00','abcdef04'),('fedcba00','abcdef05'),('fedcba01','abcdef06'),('fedcba01','abcdef07'),('fedcba01','abcdef08'),('fedcba01','abcdef09'),('fedcba01','abcdef10'),('fedcba01','abcdef11'),('fedcba01','abcdef12'),('fedcba02','bbcdef00'),('fedcba02','bbcdef01'),('fedcba02','bbcdef02'),('fedcba02','bbcdef03'),('fedcba02','bbcdef04'),('fedcba02','bbcdef05'),('fedcba02','bbcdef06'),('fedcba02','bbcdef07'),('fedcba02','bbcdef08'),('fedcba02','bbcdef09'),('fedcba02','bbcdef10'),('fedcba02','bbcdef11'),('fedcba03','cbcdef00'),('fedcba03','cbcdef01'),('fedcba03','cbcdef02'),('fedcba03','cbcdef03'),('fedcba03','cbcdef04'),('fedcba03','cbcdef05'),('fedcba03','cbcdef06'),('fedcba03','cbcdef07'),('fedcba03','cbcdef08'),('fedcba03','cbcdef09'),('fedcba03','cbcdef10'),('fedcba03','cbcdef11'),('fedcba04','dbcdef00'),('fedcba05','dbcdef01');
/*!40000 ALTER TABLE `containing` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-09 13:18:17
