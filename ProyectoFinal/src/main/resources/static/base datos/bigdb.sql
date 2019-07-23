CREATE DATABASE  IF NOT EXISTS `bigdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `bigdb`;
-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bigdb
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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `account` (
  `idaccount` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(80) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`idaccount`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'Luyo','diego.luyo.27@unsch.edu.pe','abc',NULL,1),(2,NULL,'diegoluyoquispe@gmail.com','123',NULL,1),(3,NULL,'juan@gmail.com','1234',NULL,1),(4,'juan','juan@gmail.com','1234',NULL,1),(5,'diego armando','diegoluyoquispe@hotmail.com','123',NULL,1);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_profile`
--

DROP TABLE IF EXISTS `account_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `account_profile` (
  `idaccountprofile` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(4) DEFAULT NULL,
  `idaccount` int(11) NOT NULL,
  `idprofile` int(11) NOT NULL,
  PRIMARY KEY (`idaccountprofile`),
  KEY `fk_accountprofile_account_idx` (`idaccount`),
  KEY `fk_accountprofile_profile_idx` (`idprofile`),
  CONSTRAINT `fk_accountprofile_account` FOREIGN KEY (`idaccount`) REFERENCES `account` (`idaccount`),
  CONSTRAINT `fk_accountprofile_profile` FOREIGN KEY (`idprofile`) REFERENCES `profile` (`idprofile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_profile`
--

LOCK TABLES `account_profile` WRITE;
/*!40000 ALTER TABLE `account_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `brand` (
  `idbrand` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idbrand`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES (1,'Gloria'),(2,'Coca-Cola');
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `category` (
  `idcategory` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `parentid` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcategory`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Cocina',1,0),(2,'Bebidas',1,1),(3,'Frutas ',1,1),(4,'Verduras',1,1),(5,'Cocina',1,1),(6,'Cereales',1,1),(7,'Aperitivos',1,1),(8,'Galletas',1,1),(9,'Condimentos',1,1),(10,'Infusiones',1,1),(11,'Comida Instantanea',1,1),(12,'Cuidado personal',1,0),(13,'Cuidado del bebé',1,12),(14,'Productos cosméticos',1,12),(15,'Perfumes',1,12),(16,'Cuidado del cabello',1,12),(17,'Cuidado bucal',1,12),(18,'Higiene personal',1,12),(19,'Cuidado de la piel',1,12),(20,'Necesidades de afeitar',1,12),(21,'Necesidades sanitarias',1,12);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `customer` (
  `idcustomer` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcustomer`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Diego','Luyo','1994-07-07','Av.Mariscal Cáceres 498'),(2,'Armando','Quispe','1995-06-07','Av.El Ejercito 498');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module`
--

DROP TABLE IF EXISTS `module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `module` (
  `idmodule` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `icon` varchar(20) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`idmodule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module`
--

LOCK TABLES `module` WRITE;
/*!40000 ALTER TABLE `module` DISABLE KEYS */;
/*!40000 ALTER TABLE `module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `options`
--

DROP TABLE IF EXISTS `options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `options` (
  `idoptions` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `idsubmodule` int(11) NOT NULL,
  PRIMARY KEY (`idoptions`),
  KEY `fk_option_submodule_idx` (`idsubmodule`),
  CONSTRAINT `fk_option_submodule` FOREIGN KEY (`idsubmodule`) REFERENCES `submodule` (`idsubmodule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `options`
--

LOCK TABLES `options` WRITE;
/*!40000 ALTER TABLE `options` DISABLE KEYS */;
/*!40000 ALTER TABLE `options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `orders` (
  `idorders` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `datecreation` date NOT NULL,
  `status` tinyint(4) NOT NULL,
  `idaccount` int(11) NOT NULL,
  PRIMARY KEY (`idorders`),
  KEY `fk_orders_account` (`idaccount`),
  CONSTRAINT `fk_orders_account` FOREIGN KEY (`idaccount`) REFERENCES `account` (`idaccount`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (2,'New order','1899-12-31',0,5),(3,'New order','1899-12-31',0,5),(4,'New order','1899-12-31',0,5),(5,'New order','1899-12-31',0,5),(6,'New order','2019-07-23',0,5),(7,'New order','2019-07-23',0,5),(8,'New order','2019-07-23',0,5),(9,'New order','2019-07-23',0,5),(10,'New order','2019-07-23',0,5),(11,'New order','2019-07-23',0,5),(12,'New order','2019-07-23',0,5),(13,'New order','2019-07-23',0,5),(14,'New order','2019-07-23',0,1);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordersdetail`
--

DROP TABLE IF EXISTS `ordersdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ordersdetail` (
  `idordersdetail` int(11) NOT NULL AUTO_INCREMENT,
  `idproduct` int(11) NOT NULL,
  `idorders` int(11) NOT NULL,
  `price` decimal(18,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`idordersdetail`),
  KEY `fk_ordersdetail_product` (`idproduct`),
  KEY `fk_ordersdetail_orders` (`idorders`),
  CONSTRAINT `fk_ordersdetail_orders` FOREIGN KEY (`idorders`) REFERENCES `orders` (`idorders`),
  CONSTRAINT `fk_ordersdetail_product` FOREIGN KEY (`idproduct`) REFERENCES `product` (`idproduct`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordersdetail`
--

LOCK TABLES `ordersdetail` WRITE;
/*!40000 ALTER TABLE `ordersdetail` DISABLE KEYS */;
INSERT INTO `ordersdetail` VALUES (3,3,2,3.50,1),(4,2,5,4.50,1),(5,3,7,3.50,1),(6,3,9,3.50,1),(7,2,12,4.50,1),(8,3,13,3.50,1),(9,1,13,6.00,1),(10,3,14,3.50,1);
/*!40000 ALTER TABLE `ordersdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product` (
  `idproduct` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` decimal(18,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `urlimage` varchar(100) DEFAULT NULL,
  `feature` tinyint(4) NOT NULL,
  `idcategory` int(11) NOT NULL,
  `idcustomer` int(11) NOT NULL,
  `idbrand` int(11) NOT NULL,
  PRIMARY KEY (`idproduct`),
  KEY `fk_product_customer` (`idcustomer`),
  KEY `fk_product_brand` (`idbrand`),
  KEY `fk_product_category` (`idcategory`),
  CONSTRAINT `fk_product_brand` FOREIGN KEY (`idbrand`) REFERENCES `brand` (`idbrand`),
  CONSTRAINT `fk_product_category` FOREIGN KEY (`idcategory`) REFERENCES `category` (`idcategory`),
  CONSTRAINT `fk_product_customer` FOREIGN KEY (`idcustomer`) REFERENCES `customer` (`idcustomer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Wheat(500 g)',6.00,25,'There are many variations of passages of Lorem Ipsum available.','of24.png',1,6,1,1),(2,'Durazno partidos(250 g)',4.50,45,'There are many variations of passages of Lorem Ipsum available.','of25.png',1,3,1,1),(3,'Platano 1Kg',3.50,15,'There are many variations of passages of Lorem Ipsum available.','of26.png',1,3,1,1),(4,'Arroz(500 g)',3.80,65,'There are many variations of passages of Lorem Ipsum available.','of27.png',1,1,1,1);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `profile` (
  `idprofile` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idprofile`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile`
--

LOCK TABLES `profile` WRITE;
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_option`
--

DROP TABLE IF EXISTS `profile_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `profile_option` (
  `idprofileoption` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(4) DEFAULT NULL,
  `idprofile` int(11) NOT NULL,
  `idoptions` int(11) NOT NULL,
  PRIMARY KEY (`idprofileoption`),
  KEY `fk_profileoption_profile_idx` (`idprofile`),
  KEY `fk_profileoption_option_idx` (`idoptions`),
  CONSTRAINT `fk_profileoption_option` FOREIGN KEY (`idoptions`) REFERENCES `options` (`idoptions`),
  CONSTRAINT `fk_profileoption_profile` FOREIGN KEY (`idprofile`) REFERENCES `profile` (`idprofile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_option`
--

LOCK TABLES `profile_option` WRITE;
/*!40000 ALTER TABLE `profile_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submodule`
--

DROP TABLE IF EXISTS `submodule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `submodule` (
  `idsubmodule` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `url` varchar(45) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `idmodule` int(11) NOT NULL,
  PRIMARY KEY (`idsubmodule`),
  KEY `fk_submodule_module_idx` (`idmodule`),
  CONSTRAINT `fk_submodule_module` FOREIGN KEY (`idmodule`) REFERENCES `module` (`idmodule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submodule`
--

LOCK TABLES `submodule` WRITE;
/*!40000 ALTER TABLE `submodule` DISABLE KEYS */;
/*!40000 ALTER TABLE `submodule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'bigdb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-23  9:01:20
