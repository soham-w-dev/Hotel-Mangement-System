-- MySQL dump 10.13  Distrib 8.0.39, for Win64 (x86_64)
--
-- Host: localhost    Database: hotelmanagementsystem
-- ------------------------------------------------------
-- Server version	8.0.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `cust_id` int NOT NULL AUTO_INCREMENT,
  `cust_fname` varchar(255) DEFAULT NULL,
  `cust_lname` varchar(255) DEFAULT NULL,
  `cust_address` varchar(255) DEFAULT NULL,
  `cust_ph_no` char(10) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`cust_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (2,'Rajiv','Coudhary','Kolkata','9892849581',1),(3,'Ravi','Chary','Outy','9487449581',1),(4,'Ishan','Yuvi','Rachi','9490219581',0),(5,'Isiwaka','Umar','Jaipur','8531119581',0),(6,'Ushi','Mundhra','Bikaner','9487234581',1),(7,'Hinata','Shoyo','Kanpur','9876219581',0),(8,'Kageyama','Kun','Kanpur','8976519581',0),(9,'Daichi','Shoyo','Tokyo','9765419581',1),(10,'Ushiwaka','Mon','Srinagar','9487519581',0),(12,'Soham','Wayangankar','Panvel','7900011956',0),(13,'Rajiv','Coudhary','Kolkata','9892849581',1),(14,'Ravi','Chary','Outy','9487449581',1),(15,'Ishan','Yuvi','Rachi','9490219581',0),(16,'Isiwaka','Umar','Jaipur','8531119581',0),(17,'Ushi','Mundhra','Bikaner','9487234581',1),(18,'Hinata','Shoyo','Kanpur','9876219581',0),(19,'Kageyama','Kun','Kanpur','8976519581',0),(20,'Daichi','Shoyo','Tokyo','9765419581',1),(21,'Ushiwaka','Mon','Srinagar','9487519581',0),(22,'Sumi','Mai','Jajpur','9490219581',0);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `emp_id` int NOT NULL AUTO_INCREMENT,
  `job_id` int DEFAULT NULL,
  `emp_fname` varchar(255) DEFAULT NULL,
  `emp_lname` varchar(255) DEFAULT NULL,
  `emp_address` varchar(255) DEFAULT NULL,
  `emp_ph_no` char(10) DEFAULT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,1,'Raghav','Bahety','Kolkata','8017797696'),(2,2,'Abhinav','Kumar','Patna','8235484476'),(3,3,'Bhavya','Kumari','Outy','9867843214'),(4,4,'Eren','Yegar','Dispur','9876543212'),(5,4,'Mikasa','Yegar','Dispur','9878794234'),(6,4,'Captain','Levi','Guwahati','9485643298'),(7,4,'Albo','Josai','Rampur','9087643198'),(8,4,'Albedo','Smith','Ranchi','9847566021'),(9,5,'Archon','Zhongli','Liyue','9087465329'),(10,5,'Raiden','Shogan','Delhi','8746509832'),(11,3,'Harish','Shelar','Panvel ','9167478230');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job` (
  `job_id` int NOT NULL AUTO_INCREMENT,
  `job_title` varchar(255) DEFAULT NULL,
  `salary` int DEFAULT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job`
--

LOCK TABLES `job` WRITE;
/*!40000 ALTER TABLE `job` DISABLE KEYS */;
INSERT INTO `job` VALUES (1,'Manager',50000),(2,'Assistant Manager',45000),(3,'Receptionist',30000),(4,'Waiter',20000),(5,'Janitor',15000);
/*!40000 ALTER TABLE `job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation` (
  `res_id` int NOT NULL AUTO_INCREMENT,
  `cust_id` int DEFAULT NULL,
  `room_id` int DEFAULT NULL,
  `transaction_id` varchar(12) DEFAULT NULL,
  `in_date` datetime DEFAULT NULL,
  `out_date` datetime DEFAULT NULL,
  `days` int DEFAULT NULL,
  PRIMARY KEY (`res_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES (1,1,102,'PYTM1234','2022-02-16 00:00:00','2022-02-18 00:00:00',2),(2,7,201,'PYTM7927','2022-02-20 00:00:00','2022-02-22 00:00:00',2),(3,1,204,'PYTM5721','2022-03-02 00:00:00','2022-03-07 00:00:00',5),(4,4,201,'PYTM2171','2022-03-10 00:00:00','2022-03-13 00:00:00',3),(5,5,205,'PYTM5719','2022-03-14 00:00:00','2022-03-28 00:00:00',14);
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `room_id` int NOT NULL,
  `type_id` char(3) DEFAULT NULL,
  `description` text,
  `price` int DEFAULT NULL,
  `occupancy_status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (101,'DXL','Delux Room with maximum capacity of 4 people',2000,1),(102,'SDX','Super Delux Room with amazing window view and capacity of 4 people',3000,0),(103,'SDX','Super Delux Room with amazing window view and capacity of 4 people',3000,1),(104,'DXL','Delux Room with maximum capacity of 4 people',2000,0),(105,'NAC','Normal Room with basic features like TV and AC',1500,1),(201,'NAC','Normal Room with basic features like TV and AC',1500,0),(202,'NAC','Normal Room with basic features like TV and AC',1500,0),(203,'NOL','Normal Room with no AC',1250,1),(204,'NOL','Normal Room with no AC',1250,0),(205,'PRM','Primary Budget rooms for 2 people',1000,1);
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_type`
--

DROP TABLE IF EXISTS `room_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room_type` (
  `type_id` char(3) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `capacity` int DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_type`
--

LOCK TABLES `room_type` WRITE;
/*!40000 ALTER TABLE `room_type` DISABLE KEYS */;
INSERT INTO `room_type` VALUES ('DXL','Delux',4),('NAC','Normal AC',2),('NOL','Normal NON-AC',2),('PRM','Primary',2),('SDX','Super Delux',4);
/*!40000 ALTER TABLE `room_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `transaction_id` varchar(12) NOT NULL,
  `emp_id` int DEFAULT NULL,
  `res_id` int DEFAULT NULL,
  `dated` datetime DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `payment_mode` varchar(255) DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES ('PYTM1234',NULL,1,'2022-02-16 00:00:00',6000,'credit card',1,1),('PYTM2112',5,NULL,'2022-03-28 00:00:00',45000,'Bank Transfer',0,1),('PYTM2171',NULL,4,'2022-03-13 00:00:00',4500,'UPI',1,1),('PYTM2232',2,NULL,'2022-03-15 00:00:00',60000,'Bank Transfer',0,1),('PYTM2461',NULL,4,'2022-03-13 00:00:00',4500,'UPI',1,-1),('PYTM5719',NULL,5,'2022-03-28 00:00:00',14000,'net banking',1,1),('PYTM5721',NULL,3,'2022-02-28 00:00:00',6250,'debit card',1,1),('PYTM765',NULL,6,'2026-04-21 00:00:00',8000,'UPI',1,1),('PYTM7927',NULL,2,'2022-02-20 00:00:00',4000,'credit card',1,1);
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-05 13:46:43
