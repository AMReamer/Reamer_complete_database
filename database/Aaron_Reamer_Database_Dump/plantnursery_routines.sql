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
-- Temporary view structure for view `holds`
--

DROP TABLE IF EXISTS `holds`;
/*!50001 DROP VIEW IF EXISTS `holds`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `holds` AS SELECT 
 1 AS `pot_id`,
 1 AS `common_name`,
 1 AS `planting_date`,
 1 AS `germination_days`,
 1 AS `germination_date`,
 1 AS `age`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `planted`
--

DROP TABLE IF EXISTS `planted`;
/*!50001 DROP VIEW IF EXISTS `planted`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `planted` AS SELECT 
 1 AS `common_name`,
 1 AS `germination_days`,
 1 AS `pot_id`,
 1 AS `volume`,
 1 AS `height`,
 1 AS `planting_date`,
 1 AS `germination_date`,
 1 AS `age`,
 1 AS `species`,
 1 AS `variety`,
 1 AS `p_type`,
 1 AS `retention`,
 1 AS `feed`,
 1 AS `water`,
 1 AS `temperature`,
 1 AS `moisture`,
 1 AS `light`,
 1 AS `descript`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `holds`
--

/*!50001 DROP VIEW IF EXISTS `holds`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `holds` AS select `holds_data`.`pot_id` AS `pot_id`,`holds_data`.`common_name` AS `common_name`,`holds_data`.`planting_date` AS `planting_date`,`holds_data`.`germination_days` AS `germination_days`,`holds_data`.`germination_date` AS `germination_date`,(to_days(curdate()) - to_days(`holds_data`.`germination_date`)) AS `age` from `holds_data` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `planted`
--

/*!50001 DROP VIEW IF EXISTS `planted`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `planted` AS select `holds`.`common_name` AS `common_name`,`holds`.`germination_days` AS `germination_days`,`pots`.`pot_id` AS `pot_id`,`pots`.`volume` AS `volume`,`pots`.`height` AS `height`,`holds`.`planting_date` AS `planting_date`,`holds`.`germination_date` AS `germination_date`,`holds`.`age` AS `age`,`plants`.`species` AS `species`,`plants`.`variety` AS `variety`,`plants`.`p_type` AS `p_type`,`plants`.`retention` AS `retention`,`plants`.`feed` AS `feed`,`plants`.`water` AS `water`,`plants`.`temperature` AS `temperature`,`plants`.`moisture` AS `moisture`,`plants`.`light` AS `light`,`plants`.`descript` AS `descript` from ((`pots` join `holds` on((`pots`.`pot_id` = `holds`.`pot_id`))) join `plants` on(((`holds`.`common_name` = `plants`.`common_name`) and (`holds`.`germination_days` = `plants`.`germination_days`)))) group by `pots`.`pot_id` */;
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

-- Dump completed on 2019-05-09 13:18:27
