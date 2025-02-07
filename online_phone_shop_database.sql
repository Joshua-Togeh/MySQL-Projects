-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: phone_shop
-- ------------------------------------------------------
-- Server version	8.0.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `above_avg_phones`
--

DROP TABLE IF EXISTS `above_avg_phones`;
/*!50001 DROP VIEW IF EXISTS `above_avg_phones`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `above_avg_phones` AS SELECT 
 1 AS `model`,
 1 AS `manufacturer`,
 1 AS `price`,
 1 AS `release_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `discounted_phones`
--

DROP TABLE IF EXISTS `discounted_phones`;
/*!50001 DROP VIEW IF EXISTS `discounted_phones`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `discounted_phones` AS SELECT 
 1 AS `model`,
 1 AS `manufacturer`,
 1 AS `price`,
 1 AS `release_date`,
 1 AS `discounted_price`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `manufacturer_summary`
--

DROP TABLE IF EXISTS `manufacturer_summary`;
/*!50001 DROP VIEW IF EXISTS `manufacturer_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `manufacturer_summary` AS SELECT 
 1 AS `manufacturer`,
 1 AS `model_count`,
 1 AS `avg_price`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `phones`
--

DROP TABLE IF EXISTS `phones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phones` (
  `id` int NOT NULL AUTO_INCREMENT,
  `model` varchar(100) NOT NULL,
  `manufacturer` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phones`
--

LOCK TABLES `phones` WRITE;
/*!40000 ALTER TABLE `phones` DISABLE KEYS */;
INSERT INTO `phones` VALUES (1,'Galaxy S21','Samsung',799.99,'2021-01-29'),(2,'iPhone 12','Apple',699.99,'2020-10-23'),(3,'Pixel 5','Google',599.99,'2020-09-30'),(4,'Galaxy S21','Samsung',799.99,'2021-01-29'),(5,'iPhone 12','Apple',699.99,'2020-10-23'),(6,'Pixel 5','Google',599.99,'2020-09-30'),(7,'OnePlus 9 Pro','OnePlus',969.99,'2021-03-23'),(8,'Moto G Power','Motorola',249.99,'2021-02-15'),(9,'Nokia 8.3','Nokia',479.99,'2020-09-15'),(10,'Xperia 1 III','Sony',1299.99,'2021-08-19'),(11,'Redmi Note 10','Xiaomi',199.99,'2021-03-04'),(12,'Oppo Find X3 Pro','Oppo',1199.99,'2021-03-11'),(13,'LG Velvet','LG',599.99,'2020-05-07'),(14,'Huawei P40 Pro','Huawei',999.99,'2020-04-07'),(15,'Realme 8 Pro','Realme',279.99,'2021-03-17'),(16,'Vivo X60 Pro','Vivo',799.99,'2021-03-22'),(17,'Galaxy S21','Samsung',799.99,'2021-01-29'),(18,'iPhone 12','Apple',699.99,'2020-10-23'),(19,'Pixel 5','Google',599.99,'2020-09-30'),(20,'OnePlus 9 Pro','OnePlus',969.99,'2021-03-23'),(21,'Moto G Power','Motorola',249.99,'2021-02-15'),(22,'Nokia 8.3','Nokia',479.99,'2020-09-15'),(23,'Xperia 1 III','Sony',1299.99,'2021-08-19'),(24,'Redmi Note 10','Xiaomi',199.99,'2021-03-04'),(25,'Oppo Find X3 Pro','Oppo',1199.99,'2021-03-11'),(26,'LG Velvet','LG',599.99,'2020-05-07'),(27,'Huawei P40 Pro','Huawei',999.99,'2020-04-07'),(28,'Realme 8 Pro','Realme',279.99,'2021-03-17'),(29,'Vivo X60 Pro','Vivo',799.99,'2021-03-22'),(30,'iPhone 13','Apple',899.99,'2021-09-24'),(31,'Galaxy Note 20','Samsung',999.99,'2020-08-21'),(32,'Pixel 6','Google',599.00,'2021-10-19'),(33,'OnePlus 8T','OnePlus',749.99,'2020-10-14'),(34,'Moto G Stylus','Motorola',299.99,'2021-02-01'),(35,'Nokia X20','Nokia',549.99,'2021-03-15'),(36,'Xperia 5 III','Sony',999.99,'2021-04-01'),(37,'Redmi Note 11','Xiaomi',229.99,'2021-11-04'),(38,'Oppo Reno 6 Pro','Oppo',749.99,'2021-05-31'),(39,'LG Wing','LG',999.99,'2020-10-15'),(40,'iphone','hello',56.70,'2024-10-12'),(41,'iphone','hello',56.70,'2024-10-12'),(42,'iphone','hello',56.70,'2024-10-12'),(43,'Galaxy Z Fold3','Samsung',1799.99,'2021-08-27');
/*!40000 ALTER TABLE `phones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `recent_releases`
--

DROP TABLE IF EXISTS `recent_releases`;
/*!50001 DROP VIEW IF EXISTS `recent_releases`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `recent_releases` AS SELECT 
 1 AS `model`,
 1 AS `manufacturer`,
 1 AS `price`,
 1 AS `release_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `above_avg_phones`
--

/*!50001 DROP VIEW IF EXISTS `above_avg_phones`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `above_avg_phones` AS select `phones`.`model` AS `model`,`phones`.`manufacturer` AS `manufacturer`,`phones`.`price` AS `price`,`phones`.`release_date` AS `release_date` from `phones` where (`phones`.`price` > (select avg(`phones`.`price`) from `phones`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `discounted_phones`
--

/*!50001 DROP VIEW IF EXISTS `discounted_phones`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `discounted_phones` AS select `phones`.`model` AS `model`,`phones`.`manufacturer` AS `manufacturer`,`phones`.`price` AS `price`,`phones`.`release_date` AS `release_date`,(case when (`phones`.`release_date` <= (curdate() - interval 2 year)) then (`phones`.`price` * 0.9) else `phones`.`price` end) AS `discounted_price` from `phones` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `manufacturer_summary`
--

/*!50001 DROP VIEW IF EXISTS `manufacturer_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `manufacturer_summary` AS select `phones`.`manufacturer` AS `manufacturer`,count(0) AS `model_count`,avg(`phones`.`price`) AS `avg_price` from `phones` group by `phones`.`manufacturer` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `recent_releases`
--

/*!50001 DROP VIEW IF EXISTS `recent_releases`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `recent_releases` AS select `phones`.`model` AS `model`,`phones`.`manufacturer` AS `manufacturer`,`phones`.`price` AS `price`,`phones`.`release_date` AS `release_date` from `phones` where (`phones`.`release_date` >= (curdate() - interval 1 year)) */;
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

-- Dump completed on 2025-02-07 16:27:16
