CREATE DATABASE  IF NOT EXISTS `little_lemon_dm` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_bin */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `little_lemon_dm`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: little_lemon_dm
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `booking_id` int NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `table_number` int NOT NULL,
  `customer_id` int NOT NULL,
  PRIMARY KEY (`booking_id`),
  UNIQUE KEY `booking_id_UNIQUE` (`booking_id`),
  KEY `customer_id_fk_idx` (`customer_id`),
  CONSTRAINT `customer_id_fk` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `bookings_view`
--

DROP TABLE IF EXISTS `bookings_view`;
/*!50001 DROP VIEW IF EXISTS `bookings_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `bookings_view` AS SELECT 
 1 AS `booking_id`,
 1 AS `date`,
 1 AS `table_number`,
 1 AS `customer_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(45) COLLATE utf8mb3_bin NOT NULL,
  `contact_phone` int NOT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `customer_id_UNIQUE` (`customer_id`),
  UNIQUE KEY `contact_phone_UNIQUE` (`contact_phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `customer_view`
--

DROP TABLE IF EXISTS `customer_view`;
/*!50001 DROP VIEW IF EXISTS `customer_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `customer_view` AS SELECT 
 1 AS `customer_id`,
 1 AS `customer_name`,
 1 AS `contact_phone`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `delivery_status`
--

DROP TABLE IF EXISTS `delivery_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery_status` (
  `delivery_id` int NOT NULL AUTO_INCREMENT,
  `delivery_date` datetime NOT NULL,
  `status` varchar(45) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`delivery_id`),
  UNIQUE KEY `delivery_id_UNIQUE` (`delivery_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `delivery_status_view`
--

DROP TABLE IF EXISTS `delivery_status_view`;
/*!50001 DROP VIEW IF EXISTS `delivery_status_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `delivery_status_view` AS SELECT 
 1 AS `delivery_id`,
 1 AS `delivery_date`,
 1 AS `status`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `filtered_item_quantity_view`
--

DROP TABLE IF EXISTS `filtered_item_quantity_view`;
/*!50001 DROP VIEW IF EXISTS `filtered_item_quantity_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `filtered_item_quantity_view` AS SELECT 
 1 AS `item_name`,
 1 AS `quantity`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `filtered_order_cost_view`
--

DROP TABLE IF EXISTS `filtered_order_cost_view`;
/*!50001 DROP VIEW IF EXISTS `filtered_order_cost_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `filtered_order_cost_view` AS SELECT 
 1 AS `customer_id`,
 1 AS `customer_name`,
 1 AS `order_id`,
 1 AS `total_cost`,
 1 AS `item_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `joined_all`
--

DROP TABLE IF EXISTS `joined_all`;
/*!50001 DROP VIEW IF EXISTS `joined_all`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `joined_all` AS SELECT 
 1 AS `customer_id`,
 1 AS `customer_name`,
 1 AS `contact_phone`,
 1 AS `booking_id`,
 1 AS `date`,
 1 AS `table_number`,
 1 AS `order_id`,
 1 AS `order_date`,
 1 AS `quantity`,
 1 AS `total_cost`,
 1 AS `item_id`,
 1 AS `item_type`,
 1 AS `item_name`,
 1 AS `item_price`,
 1 AS `staff_id`,
 1 AS `role`,
 1 AS `salary`,
 1 AS `delivery_id`,
 1 AS `delivery_date`,
 1 AS `status`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `joined_customer_bookings_view`
--

DROP TABLE IF EXISTS `joined_customer_bookings_view`;
/*!50001 DROP VIEW IF EXISTS `joined_customer_bookings_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `joined_customer_bookings_view` AS SELECT 
 1 AS `customer_id`,
 1 AS `customer_name`,
 1 AS `contact_phone`,
 1 AS `booking_id`,
 1 AS `date`,
 1 AS `table_number`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `joined_orders_menu_staff_delivery`
--

DROP TABLE IF EXISTS `joined_orders_menu_staff_delivery`;
/*!50001 DROP VIEW IF EXISTS `joined_orders_menu_staff_delivery`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `joined_orders_menu_staff_delivery` AS SELECT 
 1 AS `order_id`,
 1 AS `order_date`,
 1 AS `quantity`,
 1 AS `total_cost`,
 1 AS `booking_id`,
 1 AS `item_id`,
 1 AS `item_type`,
 1 AS `item_name`,
 1 AS `item_price`,
 1 AS `staff_id`,
 1 AS `role`,
 1 AS `salary`,
 1 AS `delivery_id`,
 1 AS `delivery_date`,
 1 AS `status`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `item_id` int NOT NULL AUTO_INCREMENT,
  `item_type` varchar(45) COLLATE utf8mb3_bin NOT NULL,
  `item_name` varchar(45) COLLATE utf8mb3_bin NOT NULL,
  `item_price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`item_id`),
  UNIQUE KEY `item_id_UNIQUE` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `menu_view`
--

DROP TABLE IF EXISTS `menu_view`;
/*!50001 DROP VIEW IF EXISTS `menu_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `menu_view` AS SELECT 
 1 AS `item_id`,
 1 AS `item_type`,
 1 AS `item_name`,
 1 AS `item_price`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `order_date` datetime NOT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `total_cost` decimal(10,2) NOT NULL,
  `booking_id` int NOT NULL,
  `item_id` int DEFAULT NULL,
  `staff_id` int DEFAULT NULL,
  `delivery_id` int DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `order_id_UNIQUE` (`order_id`),
  UNIQUE KEY `delivery_id_UNIQUE` (`delivery_id`),
  KEY `booking_id_fk_idx` (`booking_id`),
  KEY `item_id_fk_idx` (`item_id`),
  KEY `staff_fk_idx` (`staff_id`),
  CONSTRAINT `booking_id_fk` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`booking_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `delivery_id_fk` FOREIGN KEY (`delivery_id`) REFERENCES `delivery_status` (`delivery_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `item_id_fk` FOREIGN KEY (`item_id`) REFERENCES `menu` (`item_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `staff_fk` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `orders_view`
--

DROP TABLE IF EXISTS `orders_view`;
/*!50001 DROP VIEW IF EXISTS `orders_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `orders_view` AS SELECT 
 1 AS `order_id`,
 1 AS `order_date`,
 1 AS `quantity`,
 1 AS `total_cost`,
 1 AS `booking_id`,
 1 AS `item_id`,
 1 AS `staff_id`,
 1 AS `delivery_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `staff_id` int NOT NULL AUTO_INCREMENT,
  `role` varchar(45) COLLATE utf8mb3_bin NOT NULL,
  `salary` decimal(10,2) NOT NULL,
  PRIMARY KEY (`staff_id`),
  UNIQUE KEY `staff_id_UNIQUE` (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `staff_view`
--

DROP TABLE IF EXISTS `staff_view`;
/*!50001 DROP VIEW IF EXISTS `staff_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `staff_view` AS SELECT 
 1 AS `staff_id`,
 1 AS `role`,
 1 AS `salary`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'little_lemon_dm'
--

--
-- Dumping routines for database 'little_lemon_dm'
--
/*!50003 DROP PROCEDURE IF EXISTS `CancelOrder` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`capstone_user`@`%` PROCEDURE `CancelOrder`(IN order_id INT, OUT confirmation_message VARCHAR(100))
BEGIN
    UPDATE status AS ds
    INNER JOIN orders o ON ds.delivery_id = o.delivery_id
    SET ds.status_column = 'Canceled'
    WHERE o.order_id = order_id;
    
    SET confirmation_message = CONCAT('Your order id ', order_id, ' is Canceled');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetMaxQuantity` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`capstone_user`@`%` PROCEDURE `GetMaxQuantity`(OUT filtered_item_quantity_view INT)
BEGIN
SELECT MAX(quantity) AS MaxQuantity
FROM joined_orders_menu_staff_delivery;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `bookings_view`
--

/*!50001 DROP VIEW IF EXISTS `bookings_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`capstone_user`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `bookings_view` AS select `bookings`.`booking_id` AS `booking_id`,`bookings`.`date` AS `date`,`bookings`.`table_number` AS `table_number`,`bookings`.`customer_id` AS `customer_id` from `bookings` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `customer_view`
--

/*!50001 DROP VIEW IF EXISTS `customer_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`capstone_user`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `customer_view` AS select `customer`.`customer_id` AS `customer_id`,`customer`.`customer_name` AS `customer_name`,`customer`.`contact_phone` AS `contact_phone` from `customer` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `delivery_status_view`
--

/*!50001 DROP VIEW IF EXISTS `delivery_status_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`capstone_user`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `delivery_status_view` AS select `delivery_status`.`delivery_id` AS `delivery_id`,`delivery_status`.`delivery_date` AS `delivery_date`,`delivery_status`.`status` AS `status` from `delivery_status` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `filtered_item_quantity_view`
--

/*!50001 DROP VIEW IF EXISTS `filtered_item_quantity_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`capstone_user`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `filtered_item_quantity_view` AS select `joined_orders_menu_staff_delivery`.`item_name` AS `item_name`,`joined_orders_menu_staff_delivery`.`quantity` AS `quantity` from `joined_orders_menu_staff_delivery` where (`joined_orders_menu_staff_delivery`.`quantity` > 2) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `filtered_order_cost_view`
--

/*!50001 DROP VIEW IF EXISTS `filtered_order_cost_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`capstone_user`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `filtered_order_cost_view` AS select `joined_all`.`customer_id` AS `customer_id`,`joined_all`.`customer_name` AS `customer_name`,`joined_all`.`order_id` AS `order_id`,`joined_all`.`total_cost` AS `total_cost`,`joined_all`.`item_name` AS `item_name` from `joined_all` where (`joined_all`.`total_cost` > 150) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `joined_all`
--

/*!50001 DROP VIEW IF EXISTS `joined_all`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`capstone_user`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `joined_all` AS select `jcbv`.`customer_id` AS `customer_id`,`jcbv`.`customer_name` AS `customer_name`,`jcbv`.`contact_phone` AS `contact_phone`,`jcbv`.`booking_id` AS `booking_id`,`jcbv`.`date` AS `date`,`jcbv`.`table_number` AS `table_number`,`jomsd`.`order_id` AS `order_id`,`jomsd`.`order_date` AS `order_date`,`jomsd`.`quantity` AS `quantity`,`jomsd`.`total_cost` AS `total_cost`,`jomsd`.`item_id` AS `item_id`,`jomsd`.`item_type` AS `item_type`,`jomsd`.`item_name` AS `item_name`,`jomsd`.`item_price` AS `item_price`,`jomsd`.`staff_id` AS `staff_id`,`jomsd`.`role` AS `role`,`jomsd`.`salary` AS `salary`,`jomsd`.`delivery_id` AS `delivery_id`,`jomsd`.`delivery_date` AS `delivery_date`,`jomsd`.`status` AS `status` from (`joined_customer_bookings_view` `jcbv` join `joined_orders_menu_staff_delivery` `jomsd` on((`jcbv`.`booking_id` = `jomsd`.`booking_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `joined_customer_bookings_view`
--

/*!50001 DROP VIEW IF EXISTS `joined_customer_bookings_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`capstone_user`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `joined_customer_bookings_view` AS select `cv`.`customer_id` AS `customer_id`,`cv`.`customer_name` AS `customer_name`,`cv`.`contact_phone` AS `contact_phone`,`bv`.`booking_id` AS `booking_id`,`bv`.`date` AS `date`,`bv`.`table_number` AS `table_number` from (`customer_view` `cv` join `bookings_view` `bv` on((`cv`.`customer_id` = `bv`.`customer_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `joined_orders_menu_staff_delivery`
--

/*!50001 DROP VIEW IF EXISTS `joined_orders_menu_staff_delivery`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`capstone_user`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `joined_orders_menu_staff_delivery` AS select `ov`.`order_id` AS `order_id`,`ov`.`order_date` AS `order_date`,`ov`.`quantity` AS `quantity`,`ov`.`total_cost` AS `total_cost`,`ov`.`booking_id` AS `booking_id`,`ov`.`item_id` AS `item_id`,`mv`.`item_type` AS `item_type`,`mv`.`item_name` AS `item_name`,`mv`.`item_price` AS `item_price`,`ov`.`staff_id` AS `staff_id`,`sv`.`role` AS `role`,`sv`.`salary` AS `salary`,`ov`.`delivery_id` AS `delivery_id`,`dsv`.`delivery_date` AS `delivery_date`,`dsv`.`status` AS `status` from (((`orders_view` `ov` join `menu_view` `mv` on((`ov`.`item_id` = `mv`.`item_id`))) join `staff_view` `sv` on((`ov`.`staff_id` = `sv`.`staff_id`))) join `delivery_status_view` `dsv` on((`ov`.`delivery_id` = `dsv`.`delivery_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `menu_view`
--

/*!50001 DROP VIEW IF EXISTS `menu_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`capstone_user`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `menu_view` AS select `menu`.`item_id` AS `item_id`,`menu`.`item_type` AS `item_type`,`menu`.`item_name` AS `item_name`,`menu`.`item_price` AS `item_price` from `menu` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `orders_view`
--

/*!50001 DROP VIEW IF EXISTS `orders_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`capstone_user`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `orders_view` AS select `orders`.`order_id` AS `order_id`,`orders`.`order_date` AS `order_date`,`orders`.`quantity` AS `quantity`,`orders`.`total_cost` AS `total_cost`,`orders`.`booking_id` AS `booking_id`,`orders`.`item_id` AS `item_id`,`orders`.`staff_id` AS `staff_id`,`orders`.`delivery_id` AS `delivery_id` from `orders` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `staff_view`
--

/*!50001 DROP VIEW IF EXISTS `staff_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`capstone_user`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `staff_view` AS select `staff`.`staff_id` AS `staff_id`,`staff`.`role` AS `role`,`staff`.`salary` AS `salary` from `staff` */;
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

-- Dump completed on 2024-01-27  0:04:59
