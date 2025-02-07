-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: try
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
-- Table structure for table `clothing_sales`
--

DROP TABLE IF EXISTS `clothing_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clothing_sales` (
  `sale_id` int NOT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `quantity_sold` int DEFAULT NULL,
  `revenue` decimal(10,2) DEFAULT NULL,
  `sale_date` date DEFAULT NULL,
  PRIMARY KEY (`sale_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clothing_sales`
--

LOCK TABLES `clothing_sales` WRITE;
/*!40000 ALTER TABLE `clothing_sales` DISABLE KEYS */;
INSERT INTO `clothing_sales` VALUES (201,'Nike Sneakers',15,4500.00,'2024-01-12'),(202,'T-Shirt',50,2500.00,'2024-01-16'),(203,'Leather Jacket',10,8000.00,'2023-12-05'),(204,'Jeans',30,6000.00,'2023-12-20'),(205,'Winter Coat',12,7200.00,'2023-12-28'),(206,'Men trousers',19,11700.00,'2023-12-16');
/*!40000 ALTER TABLE `clothing_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `electronics_sales`
--

DROP TABLE IF EXISTS `electronics_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `electronics_sales` (
  `sale_id` int NOT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `quantity_sold` int DEFAULT NULL,
  `revenue` decimal(10,2) DEFAULT NULL,
  `sale_date` date DEFAULT NULL,
  PRIMARY KEY (`sale_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `electronics_sales`
--

LOCK TABLES `electronics_sales` WRITE;
/*!40000 ALTER TABLE `electronics_sales` DISABLE KEYS */;
INSERT INTO `electronics_sales` VALUES (101,'iPhone 15',10,12000.00,'2024-01-15'),(102,'MacBook Pro',5,15000.00,'2024-01-20'),(103,'Samsung TV',8,6000.00,'2024-01-25'),(104,'AirPods Pro',20,5000.00,'2023-12-10'),(105,'PlayStation 5',7,3500.00,'2023-12-22'),(106,'Microwave',4,11800.00,'2023-12-27'),(107,'Microwave',4,11800.00,'2023-12-26');
/*!40000 ALTER TABLE `electronics_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `furniture_sales`
--

DROP TABLE IF EXISTS `furniture_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `furniture_sales` (
  `sale_id` int NOT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `quantity_sold` int DEFAULT NULL,
  `revenue` decimal(10,2) DEFAULT NULL,
  `sale_date` date DEFAULT NULL,
  PRIMARY KEY (`sale_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `furniture_sales`
--

LOCK TABLES `furniture_sales` WRITE;
/*!40000 ALTER TABLE `furniture_sales` DISABLE KEYS */;
INSERT INTO `furniture_sales` VALUES (301,'Dining Table',3,9000.00,'2024-01-10'),(302,'Sofa',5,4500.00,'2024-01-17'),(303,'Office Chair',12,3600.00,'2023-12-15'),(304,'Bookshelf',7,4200.00,'2023-12-22'),(305,'King Size Bed',4,11000.00,'2023-12-30'),(306,'queen Size Bed',7,17000.00,'2023-12-20');
/*!40000 ALTER TABLE `furniture_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `monthly_sales_report`
--

DROP TABLE IF EXISTS `monthly_sales_report`;
/*!50001 DROP VIEW IF EXISTS `monthly_sales_report`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `monthly_sales_report` AS SELECT 
 1 AS `month`,
 1 AS `category`,
 1 AS `total_sales`,
 1 AS `total_revenue`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!50001 DROP VIEW IF EXISTS `sales`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `sales` AS SELECT 
 1 AS `sale_id`,
 1 AS `product_name`,
 1 AS `quantity_sold`,
 1 AS `sale_date`,
 1 AS `categories`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `monthly_sales_report`
--

/*!50001 DROP VIEW IF EXISTS `monthly_sales_report`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `monthly_sales_report` AS select date_format(`all_sales`.`sale_date`,'%Y-%m') AS `month`,`all_sales`.`category` AS `category`,sum(`all_sales`.`quantity_sold`) AS `total_sales`,sum(`all_sales`.`revenue`) AS `total_revenue` from (select `electronics_sales`.`sale_date` AS `sale_date`,`electronics_sales`.`quantity_sold` AS `quantity_sold`,`electronics_sales`.`revenue` AS `revenue`,'Electronics' AS `category` from `electronics_sales` union all select `clothing_sales`.`sale_date` AS `sale_date`,`clothing_sales`.`quantity_sold` AS `quantity_sold`,`clothing_sales`.`revenue` AS `revenue`,'Clothing' AS `category` from `clothing_sales` union all select `furniture_sales`.`sale_date` AS `sale_date`,`furniture_sales`.`quantity_sold` AS `quantity_sold`,`furniture_sales`.`revenue` AS `revenue`,'Furniture' AS `category` from `furniture_sales`) `all_sales` group by `month`,`all_sales`.`category` order by `month` desc,`total_revenue` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sales`
--

/*!50001 DROP VIEW IF EXISTS `sales`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sales` AS select `clothing_sales`.`sale_id` AS `sale_id`,`clothing_sales`.`product_name` AS `product_name`,`clothing_sales`.`quantity_sold` AS `quantity_sold`,`clothing_sales`.`sale_date` AS `sale_date`,'clothing' AS `categories` from `clothing_sales` union select `electronics_sales`.`sale_id` AS `sale_id`,`electronics_sales`.`product_name` AS `product_name`,`electronics_sales`.`quantity_sold` AS `quantity_sold`,`electronics_sales`.`sale_date` AS `sale_date`,'electronics' AS `categories` from `electronics_sales` union select `furniture_sales`.`sale_id` AS `sale_id`,`furniture_sales`.`product_name` AS `product_name`,`furniture_sales`.`quantity_sold` AS `quantity_sold`,`furniture_sales`.`sale_date` AS `sale_date`,'furniture' AS `categories` from `furniture_sales` order by `sale_date` */;
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

-- Dump completed on 2025-02-07 16:28:55
