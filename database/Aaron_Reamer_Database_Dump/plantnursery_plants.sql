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
-- Table structure for table `plants`
--

DROP TABLE IF EXISTS `plants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `plants` (
  `common_name` varchar(45) NOT NULL,
  `species` varchar(45) DEFAULT NULL,
  `variety` varchar(45) DEFAULT NULL,
  `p_type` varchar(10) DEFAULT NULL,
  `retention` varchar(10) DEFAULT NULL,
  `germination_days` int(11) DEFAULT NULL,
  `feed` double DEFAULT NULL,
  `water` double DEFAULT NULL,
  `temperature` double DEFAULT NULL,
  `moisture` double DEFAULT NULL,
  `light` double DEFAULT NULL,
  `descript` longtext,
  PRIMARY KEY (`common_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plants`
--

LOCK TABLES `plants` WRITE;
/*!40000 ALTER TABLE `plants` DISABLE KEYS */;
INSERT INTO `plants` VALUES ('2d video game plant','Ludus ametus','2d','flower','1',16,11,15,22.3,110,101,'an overused asset'),('3d video game plant ','Ludus ametus','3d','flower','1',12,15,18,33.1,101,111,'a used asset'),('bigfoot plant','Mystos cryptum','bigfoot','vegetable','annual',236,13,20,22,44,20,'it makes pictures blurry'),('english ivy','Hedera helix','english','herb','perrenial',20,18,16,18,99,88.7,'some common ivy'),('green bell pepper','Capsicum annuum','green','vegetable','annual',21,85,2,25,108,25.2,'a green pepper'),('monster plant','Mystos cryptum','monster','vegetable','annual',236,15,18,33,15,12,'some say it\'s not real'),('petey piranha plant','Malus mordus','boss','flower','perennial',3,1,66,24,88,15.2,'evil'),('piranha plant','Malus mordus','regular','flower','perennial',2,1,60,22,98,19.8,'taste for plumbers'),('plant of knowledge','Magnoliophyta viva','knowledge','herb','annual',360,200.3,25.2,23,102,33.6,'don\'t eat it'),('plant of life','Magnoliophyta viva','life','herb','annual',360,200.4,26.7,21,108,66.3,'don\'t eat this one either'),('red bell pepper','Capsicum annuum','red','vegetable','annual',21,85,2,25,102,23.7,'a red pepper'),('scp-307','Hedera helix','keter','herb','perrenial',20,25,52,17,98,66.6,'some dangerous ivy');
/*!40000 ALTER TABLE `plants` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-09 13:18:15
