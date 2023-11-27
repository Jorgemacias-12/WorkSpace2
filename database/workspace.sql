-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: workspace
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addresses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Street` varchar(50) NOT NULL,
  `Number` varchar(5) NOT NULL,
  `Neighborhoods_id` int NOT NULL,
  `States_id` int NOT NULL,
  `Cities_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Addresses_States1_idx` (`States_id`),
  KEY `fk_Addresses_Cities1_idx` (`Cities_id`),
  KEY `fk_Addresses_Neighborhoods1_idx` (`Neighborhoods_id`),
  CONSTRAINT `fk_Addresses_Cities1` FOREIGN KEY (`Cities_id`) REFERENCES `cities` (`id`),
  CONSTRAINT `fk_Addresses_Neighborhoods1` FOREIGN KEY (`Neighborhoods_id`) REFERENCES `neighborhoods` (`id`),
  CONSTRAINT `fk_Addresses_States1` FOREIGN KEY (`States_id`) REFERENCES `states` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `Quantity` varchar(45) NOT NULL,
  `Price` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articles_has_sales`
--

DROP TABLE IF EXISTS `articles_has_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articles_has_sales` (
  `Article_id` int NOT NULL,
  `Sale_id` int NOT NULL,
  PRIMARY KEY (`Article_id`,`Sale_id`),
  KEY `fk_Articles_has_Sales_Sales1_idx` (`Sale_id`),
  KEY `fk_Articles_has_Sales_Articles1_idx` (`Article_id`),
  CONSTRAINT `fk_Articles_has_Sales_Articles1` FOREIGN KEY (`Article_id`) REFERENCES `articles` (`id`),
  CONSTRAINT `fk_Articles_has_Sales_Sales1` FOREIGN KEY (`Sale_id`) REFERENCES `sales` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles_has_sales`
--

LOCK TABLES `articles_has_sales` WRITE;
/*!40000 ALTER TABLE `articles_has_sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `articles_has_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `City` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'La Paz'),(2,'Baja California'),(3,'Guadalajara'),(4,'Morelia'),(5,'Tepic'),(6,'Puerto Vallarta'),(7,'San José'),(8,'Porvenir');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Code` varchar(5) NOT NULL,
  `Name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'VTS01','Ventas'),(2,'ALM02','Almacen'),(3,'LMP03','Limpieza');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_has_incidents`
--

DROP TABLE IF EXISTS `employee_has_incidents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_has_incidents` (
  `Employee_id` int NOT NULL,
  `Incident_id` int NOT NULL,
  PRIMARY KEY (`Employee_id`,`Incident_id`),
  KEY `fk_Employee_has_Incidents_Incidents1_idx` (`Incident_id`),
  KEY `fk_Employee_has_Incidents_Employee1_idx` (`Employee_id`),
  CONSTRAINT `fk_Employee_has_Incidents_Employee1` FOREIGN KEY (`Employee_id`) REFERENCES `employees` (`id`),
  CONSTRAINT `fk_Employee_has_Incidents_Incidents1` FOREIGN KEY (`Incident_id`) REFERENCES `incidents` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_has_incidents`
--

LOCK TABLES `employee_has_incidents` WRITE;
/*!40000 ALTER TABLE `employee_has_incidents` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_has_incidents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `id` int NOT NULL AUTO_INCREMENT,
  `User_id` int NOT NULL,
  `Role` varchar(20) NOT NULL,
  `HireDate` date NOT NULL,
  `Salary` decimal(10,2) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `PhoneNumber` varchar(10) NOT NULL,
  `Addresses_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Employee_Users1_idx` (`User_id`),
  KEY `fk_Employee_Addresses1_idx` (`Addresses_id`),
  CONSTRAINT `fk_Employee_Addresses1` FOREIGN KEY (`Addresses_id`) REFERENCES `addresses` (`id`),
  CONSTRAINT `fk_Employee_Users1` FOREIGN KEY (`User_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incidents`
--

DROP TABLE IF EXISTS `incidents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `incidents` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(45) NOT NULL,
  `Description` varchar(45) NOT NULL,
  `Timestamp` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incidents`
--

LOCK TABLES `incidents` WRITE;
/*!40000 ALTER TABLE `incidents` DISABLE KEYS */;
/*!40000 ALTER TABLE `incidents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `neighborhoods`
--

DROP TABLE IF EXISTS `neighborhoods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `neighborhoods` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Neighborhood` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `neighborhoods`
--

LOCK TABLES `neighborhoods` WRITE;
/*!40000 ALTER TABLE `neighborhoods` DISABLE KEYS */;
INSERT INTO `neighborhoods` VALUES (1,'Juárez'),(2,'Roma'),(3,'Polanco'),(4,'Tlatelolco'),(5,'Coyoacán'),(6,'Narvarte'),(7,'Tlalpan'),(8,'Condesa');
/*!40000 ALTER TABLE `neighborhoods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Role` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Administrador'),(2,'Usuario');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Date` date NOT NULL,
  `Folio` varchar(12) NOT NULL,
  `TotalSales` decimal(10,2) NOT NULL,
  `Employees_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Sales_Employees1_idx` (`Employees_id`),
  CONSTRAINT `fk_Sales_Employees1` FOREIGN KEY (`Employees_id`) REFERENCES `employees` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` int NOT NULL AUTO_INCREMENT,
  `State` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'Aguascalientes'),(2,'Baja California'),(3,'Campeche'),(4,'Coahuila'),(5,'Colima'),(6,'Jalisco'),(7,'México'),(8,'Nayarit');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Password` char(60) NOT NULL,
  `Role_id` int NOT NULL,
  `Department_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Users_Roles_idx` (`Role_id`),
  KEY `fk_Users_Departments1_idx` (`Department_id`),
  CONSTRAINT `fk_Users_Departments1` FOREIGN KEY (`Department_id`) REFERENCES `departments` (`id`),
  CONSTRAINT `fk_Users_Roles` FOREIGN KEY (`Role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-27  2:56:26
