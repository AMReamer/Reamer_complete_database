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
-- Table structure for table `holds_data`
--

DROP TABLE IF EXISTS `holds_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `holds_data` (
  `pot_id` varchar(8) NOT NULL,
  `common_name` varchar(45) NOT NULL,
  `planting_date` date DEFAULT NULL,
  `germination_days` int(11) DEFAULT NULL,
  `germination_date` date GENERATED ALWAYS AS ((`planting_date` + interval `germination_days` day)) VIRTUAL,
  PRIMARY KEY (`common_name`,`pot_id`),
  KEY `pot_id` (`pot_id`),
  CONSTRAINT `holds_data_ibfk_1` FOREIGN KEY (`common_name`) REFERENCES `plants` (`common_name`) ON DELETE CASCADE,
  CONSTRAINT `holds_data_ibfk_2` FOREIGN KEY (`pot_id`) REFERENCES `pots` (`pot_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `holds_data`
--

LOCK TABLES `holds_data` WRITE;
/*!40000 ALTER TABLE `holds_data` DISABLE KEYS */;
INSERT INTO `holds_data` (`pot_id`, `common_name`, `planting_date`, `germination_days`) VALUES ('abcdef00','green bell pepper','2019-04-02',21),('abcdef01','green bell pepper','2019-04-02',21),('abcdef02','green bell pepper','2019-04-03',21),('abcdef03','green bell pepper','2019-04-04',21),('abcdef04','green bell pepper','2019-04-05',21),('abcdef05','green bell pepper','2019-04-05',21),('cbcdef00','monster plant','2019-04-30',236),('cbcdef01','monster plant','2019-04-30',236),('cbcdef02','monster plant','2019-04-30',236),('cbcdef03','monster plant','2019-04-30',236),('cbcdef04','monster plant','2019-04-30',236),('cbcdef05','monster plant','2019-04-30',236),('cbcdef06','monster plant','2019-04-30',236),('cbcdef07','monster plant','2019-04-30',236),('cbcdef08','monster plant','2019-04-30',236),('cbcdef09','monster plant','2019-04-30',236),('cbcdef10','monster plant','2019-04-30',236),('cbcdef11','monster plant','2019-04-30',236),('dbcdef00','piranha plant','2019-02-27',2),('dbcdef01','piranha plant','2019-02-27',2),('bbcdef00','plant of knowledge','2018-03-06',360),('bbcdef01','plant of knowledge','2018-03-06',360),('bbcdef02','plant of knowledge','2018-03-06',360),('bbcdef03','plant of knowledge','2018-03-06',360),('bbcdef04','plant of knowledge','2018-03-06',360),('bbcdef05','plant of knowledge','2018-03-06',360),('bbcdef06','plant of life','2018-03-06',360),('bbcdef07','plant of life','2018-03-06',360),('bbcdef08','plant of life','2018-03-06',360),('bbcdef09','plant of life','2018-03-06',360),('bbcdef10','plant of life','2018-03-06',360),('bbcdef11','plant of life','2018-03-06',360),('abcdef06','red bell pepper','2019-03-06',21),('abcdef07','red bell pepper','2019-03-06',21),('abcdef08','red bell pepper','2019-03-06',21),('abcdef09','red bell pepper','2019-03-06',21),('abcdef10','red bell pepper','2019-03-06',21),('abcdef11','red bell pepper','2019-03-06',21),('abcdef12','red bell pepper','2019-03-06',21);
/*!40000 ALTER TABLE `holds_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-09 13:18:19
