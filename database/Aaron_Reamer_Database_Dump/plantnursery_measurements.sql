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
-- Table structure for table `measurements`
--

DROP TABLE IF EXISTS `measurements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `measurements` (
  `m_id` varchar(27) NOT NULL,
  `station_id` varchar(8) DEFAULT NULL,
  `location` point DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT NULL,
  `temperature` double DEFAULT NULL,
  `moisture` double DEFAULT NULL,
  `light` double DEFAULT NULL,
  PRIMARY KEY (`m_id`),
  KEY `station_id` (`station_id`),
  CONSTRAINT `measurements_ibfk_1` FOREIGN KEY (`station_id`) REFERENCES `micro_weather_station` (`station_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `measurements`
--

LOCK TABLES `measurements` WRITE;
/*!40000 ALTER TABLE `measurements` DISABLE KEYS */;
INSERT INTO `measurements` VALUES ('hijklm002019-04-23 10:59:58','hijklm00',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\02@','2019-04-23 14:59:58',25,100,28),('hijklm002019-04-24 10:59:58','hijklm00',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\02@','2019-04-24 14:59:58',25,100,28),('hijklm002019-04-25 10:59:58','hijklm00',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\02@','2019-04-25 14:59:58',25,100,28),('hijklm002019-04-26 10:59:58','hijklm00',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\02@','2019-04-26 14:59:58',25,100,28),('hijklm002019-04-27 10:59:58','hijklm00',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\02@','2019-04-27 14:59:58',25,100,28),('hijklm002019-04-28 10:59:58','hijklm00',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\02@','2019-04-28 14:59:58',25,100,28),('hijklm002019-04-29 10:59:58','hijklm00',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\02@','2019-04-29 14:59:58',25,100,28),('hijklm002019-04-30 10:59:58','hijklm00',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\02@','2019-04-30 14:59:58',25,100,28),('hijklm002019-04-30 11:59:58','hijklm00',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\02@','2019-04-30 15:59:58',25,100,28),('hijklm002019-05-01 10:59:58','hijklm00',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\02@','2019-05-01 14:59:58',25,100,90),('hijklm012019-04-23 10:59:58','hijklm01',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\05@\0\0\0\0\0€F@','2019-04-23 14:59:58',25,100,28),('hijklm012019-04-24 10:59:58','hijklm01',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\05@\0\0\0\0\0€F@','2019-04-24 14:59:58',25,100,28),('hijklm012019-04-25 10:59:58','hijklm01',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\05@\0\0\0\0\0€F@','2019-04-25 14:59:58',25,100,28),('hijklm012019-04-26 10:59:58','hijklm01',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\05@\0\0\0\0\0€F@','2019-04-26 14:59:58',25,100,28),('hijklm012019-04-27 10:59:58','hijklm01',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\05@\0\0\0\0\0€F@','2019-04-27 14:59:58',25,100,28),('hijklm012019-04-28 10:59:58','hijklm01',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\05@\0\0\0\0\0€F@','2019-04-28 14:59:58',25,100,28),('hijklm012019-04-29 10:59:58','hijklm01',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\05@\0\0\0\0\0€F@','2019-04-29 14:59:58',25,100,28),('hijklm012019-04-30 10:59:58','hijklm01',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\05@\0\0\0\0\0€F@','2019-04-30 14:59:58',25,100,28),('hijklm012019-04-30 11:59:58','hijklm01',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\05@\0\0\0\0\0€F@','2019-04-30 15:59:58',25,100,28),('hijklm012019-05-01 10:59:58','hijklm01',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\05@\0\0\0\0\0€F@','2019-05-01 14:59:58',25,100,28),('hijklm022019-04-23 10:59:58','hijklm02',_binary '\0\0\0\0\0\0\0\0\0\0\0\0@P@\0\0\0\0\0\0?@','2019-04-23 14:59:58',25,100,28),('hijklm022019-04-24 10:59:58','hijklm02',_binary '\0\0\0\0\0\0\0\0\0\0\0\0@P@\0\0\0\0\0\0?@','2019-04-24 14:59:58',25,100,28),('hijklm022019-04-25 10:59:58','hijklm02',_binary '\0\0\0\0\0\0\0\0\0\0\0\0@P@\0\0\0\0\0\0?@','2019-04-25 14:59:58',25,100,28),('hijklm022019-04-26 10:59:58','hijklm02',_binary '\0\0\0\0\0\0\0\0\0\0\0\0@P@\0\0\0\0\0\0?@','2019-04-26 14:59:58',25,100,28),('hijklm022019-04-27 10:59:58','hijklm02',_binary '\0\0\0\0\0\0\0\0\0\0\0\0@P@\0\0\0\0\0\0?@','2019-04-27 14:59:58',25,100,28),('hijklm022019-04-28 10:59:58','hijklm02',_binary '\0\0\0\0\0\0\0\0\0\0\0\0@P@\0\0\0\0\0\0?@','2019-04-28 14:59:58',25,100,28),('hijklm022019-04-29 10:59:58','hijklm02',_binary '\0\0\0\0\0\0\0\0\0\0\0\0@P@\0\0\0\0\0\0?@','2019-04-29 14:59:58',25,100,28),('hijklm022019-04-30 10:59:58','hijklm02',_binary '\0\0\0\0\0\0\0\0\0\0\0\0@P@\0\0\0\0\0\0?@','2019-04-30 14:59:58',25,100,28),('hijklm022019-04-30 11:59:58','hijklm02',_binary '\0\0\0\0\0\0\0\0\0\0\0\0@P@\0\0\0\0\0\0?@','2019-04-30 15:59:58',25,100,28),('hijklm022019-05-01 10:59:58','hijklm02',_binary '\0\0\0\0\0\0\0\0\0\0\0\0@P@\0\0\0\0\0\0?@','2019-05-01 14:59:58',25,100,28),('hijklm032019-04-23 10:59:58','hijklm03',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0E@\0\0\0\0\0\0>@','2019-04-23 14:59:58',25,100,28),('hijklm032019-04-24 10:59:58','hijklm03',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0E@\0\0\0\0\0\0>@','2019-04-24 14:59:58',25,100,28),('hijklm032019-04-25 10:59:58','hijklm03',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0E@\0\0\0\0\0\0>@','2019-04-25 14:59:58',25,100,28),('hijklm032019-04-26 10:59:58','hijklm03',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0E@\0\0\0\0\0\0>@','2019-04-26 14:59:58',25,100,28),('hijklm032019-04-27 10:59:58','hijklm03',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0E@\0\0\0\0\0\0>@','2019-04-27 14:59:58',25,100,28),('hijklm032019-04-28 10:59:58','hijklm03',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0E@\0\0\0\0\0\0>@','2019-04-28 14:59:58',25,100,28),('hijklm032019-04-29 10:59:58','hijklm03',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0E@\0\0\0\0\0\0>@','2019-04-29 14:59:58',25,100,28),('hijklm032019-04-30 10:59:58','hijklm03',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0E@\0\0\0\0\0\0>@','2019-04-30 14:59:58',25,100,28),('hijklm032019-04-30 11:59:58','hijklm03',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0E@\0\0\0\0\0\0>@','2019-04-30 15:59:58',25,100,28),('hijklm032019-05-01 10:59:58','hijklm03',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0E@\0\0\0\0\0\0>@','2019-05-01 14:59:58',25,100,28);
/*!40000 ALTER TABLE `measurements` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-09 13:18:18
