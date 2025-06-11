CREATE DATABASE  IF NOT EXISTS `instamartsql` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `instamartsql`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: instamartsql
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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `street` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `country` varchar(45) NOT NULL,
  `pincode` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `address_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,1,'1st main','Bangalore','Karnataka','India',577221),(2,2,'2nd main','Chennai','Tamilnadu','India',577001),(3,3,'3rd main','Trivindrum','Kerala','India',597201),(4,4,'4th main','Chennai','Karnataka','India',517208),(5,5,'5th main','Bihar','Patna','India',377201),(6,6,'6th main','Bangalore','Karnataka','India',587201),(7,7,'7th main','Bangalore','Karnataka','India',176201),(8,8,'8th main','Hydrabad','AndraPradesh','India',174201),(9,9,'9th main','Bangalore','Karnataka','India',677201),(10,10,'10th main','Bangalore','Karnataka','India',577201),(11,11,'12st main','Belguam','Karnataka','India',575631),(12,12,'41nd main','Chennai','Tamilnadu','India',582501),(13,2,'15 Main','Chennai','TamilNadu','India',577001),(14,3,'15 Main','Chennai','TamilNadu','India',577001);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES (1,'Bosch'),(2,'Samsung'),(3,'LG'),(4,'Whirlpool'),(5,'Onida'),(6,'Stanley'),(7,'Mintwud'),(8,'Philips');
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_service_area`
--

DROP TABLE IF EXISTS `catalog_service_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalog_service_area` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT NULL,
  `catalog_service_sector_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `catalog_service_sector_id` (`catalog_service_sector_id`),
  CONSTRAINT `catalog_service_area_ibfk_1` FOREIGN KEY (`catalog_service_sector_id`) REFERENCES `catalog_service_sector` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalog_service_area`
--

LOCK TABLES `catalog_service_area` WRITE;
/*!40000 ALTER TABLE `catalog_service_area` DISABLE KEYS */;
INSERT INTO `catalog_service_area` VALUES (1,'Living Room',1),(2,'Conference Room',2),(3,'Private Office',2),(4,'Dining Room',1),(5,'Laundry Room',1),(6,'Bed Room',1),(7,'Kitchen',1);
/*!40000 ALTER TABLE `catalog_service_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_service_sector`
--

DROP TABLE IF EXISTS `catalog_service_sector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalog_service_sector` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalog_service_sector`
--

LOCK TABLES `catalog_service_sector` WRITE;
/*!40000 ALTER TABLE `catalog_service_sector` DISABLE KEYS */;
INSERT INTO `catalog_service_sector` VALUES (1,'Home'),(2,'Office');
/*!40000 ALTER TABLE `catalog_service_sector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
  `id` int NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'H-9, Block B-1, Tughlaqabad Extension, Mohan Cooperative Industrial Estate, Tughlakabad, New Delhi, Delhi 110044','Cloudtail Pvt. Ltd.'),(2,'Kattoor Rd, P N Palayam, Coimbatore, Tamil Nadu 641037','Maark Grand'),(3,'290, Bharathiyar Rd, P N Palayam, Coimbatore, Tamil Nadu 641037','Marvel Furniture / Interiors'),(4,'Shop No.24, Kattoor Rd, P N Palayam, Coimbatore, Tamil Nadu 641037','Modern Commercial Kitchen Equipments'),(5,'700, Avinashi Rd, P N Palayam, Coimbatore, Tamil Nadu 641037','Royal Agencies'),(6,'No. 150-151, Bharathiyar Rd, NG Narayanasamy St, Siddhapudur, New Siddhapudur, Coimbatore, Tamil Nadu 641044','Bloom Electronics Private Limited'),(7,'10, Sathy Rd, C.K.Colony, B.K.R Nagar, Gandhipuram, Coimbatore, Tamil Nadu 641012','Securico Electronics I Ltd'),(8,'S-26, 2nd Floor, No 61-71, Brooke Fields Plaza, Dr Krishnasamy Mudaliyar Rd, Coimbatore, Tamil Nadu 641001','Reliance Digital');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discount`
--

DROP TABLE IF EXISTS `discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discount` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tenure` int NOT NULL,
  `percentage` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount`
--

LOCK TABLES `discount` WRITE;
/*!40000 ALTER TABLE `discount` DISABLE KEYS */;
INSERT INTO `discount` VALUES (1,6,4),(2,9,6),(3,12,10);
/*!40000 ALTER TABLE `discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material`
--

DROP TABLE IF EXISTS `material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `material` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material`
--

LOCK TABLES `material` WRITE;
/*!40000 ALTER TABLE `material` DISABLE KEYS */;
INSERT INTO `material` VALUES (1,'Wood'),(2,'Steel'),(3,'Leather'),(4,'Metal'),(5,'Ceramic'),(6,'Glass');
/*!40000 ALTER TABLE `material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `contact_no` varchar(255) NOT NULL,
  `ordered_date` date NOT NULL,
  `delivery_date` date NOT NULL,
  `delivery_time` varchar(255) NOT NULL,
  `address_id` int NOT NULL,
  `cost_per_month` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `address_id` (`address_id`),
  CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail`
--

LOCK TABLES `order_detail` WRITE;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
INSERT INTO `order_detail` VALUES (1,2,'Tina','7845547896','2020-03-20','2020-03-31','10.00 AM',2,2000),(2,3,'Andy','8974563214','2020-04-16','2020-04-21','12.30 PM',2,3000),(3,5,'Jasmin','7845412365','2020-03-02','2020-03-11','6.00 PM',5,2500),(4,4,'Edward','9874563214','2019-11-10','2020-03-18','4.50 PM',4,5000),(5,2,'kiran','2589631470','2019-08-14','2019-08-17','2:45 PM',2,74080),(6,2,'Harry','5896471230','2019-05-12','2019-05-13','10:45 PM',13,15000),(7,3,'Kiran','8796543210','2019-08-12','2019-08-13','10:45 PM',14,74080),(8,3,'Jeeva','9876543210','2019-06-13','2019-06-13','6:00 PM',14,21000);
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_detail_product`
--

DROP TABLE IF EXISTS `order_detail_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_detail_product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_detail_id` int NOT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_detail_id` (`order_detail_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `order_detail_product_ibfk_1` FOREIGN KEY (`order_detail_id`) REFERENCES `order_detail` (`id`),
  CONSTRAINT `order_detail_product_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail_product`
--

LOCK TABLES `order_detail_product` WRITE;
/*!40000 ALTER TABLE `order_detail_product` DISABLE KEYS */;
INSERT INTO `order_detail_product` VALUES (1,1,3),(2,3,5),(3,6,3),(4,8,3),(5,8,6);
/*!40000 ALTER TABLE `order_detail_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_detail_rental_package`
--

DROP TABLE IF EXISTS `order_detail_rental_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_detail_rental_package` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_detail_id` int NOT NULL,
  `package_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_detail_id` (`order_detail_id`),
  KEY `package_id` (`package_id`),
  CONSTRAINT `order_detail_rental_package_ibfk_1` FOREIGN KEY (`order_detail_id`) REFERENCES `order_detail` (`id`),
  CONSTRAINT `order_detail_rental_package_ibfk_2` FOREIGN KEY (`package_id`) REFERENCES `rental_package` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail_rental_package`
--

LOCK TABLES `order_detail_rental_package` WRITE;
/*!40000 ALTER TABLE `order_detail_rental_package` DISABLE KEYS */;
INSERT INTO `order_detail_rental_package` VALUES (1,2,1),(2,4,2),(3,5,2),(4,5,3),(5,7,2),(6,7,3);
/*!40000 ALTER TABLE `order_detail_rental_package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `o_id` int NOT NULL AUTO_INCREMENT,
  `p_id` int NOT NULL,
  `u_id` int NOT NULL,
  `o_quantity` int NOT NULL,
  `o_date` varchar(450) NOT NULL,
  PRIMARY KEY (`o_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,1,4,'2024-10-25'),(2,3,1,1,'2024-10-28'),(3,1,1,1,'2025-01-11'),(4,3,1,1,'2025-01-14'),(5,3,1,1,'2025-02-21'),(10,4,1,1,'2025-03-08');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `color` varchar(255) DEFAULT NULL,
  `dimensions` varchar(255) DEFAULT NULL,
  `is_available` bit(1) DEFAULT NULL,
  `is_visible` bit(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `brand_id` int DEFAULT NULL,
  `catalog_service_area_id` int DEFAULT NULL,
  `catalog_service_sector_id` int DEFAULT NULL,
  `company_id` int DEFAULT NULL,
  `material_id` int DEFAULT NULL,
  `product_category_id` int DEFAULT NULL,
  `product_type_id` int DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `catalog_service_area_id` (`catalog_service_area_id`),
  KEY `brand_id` (`brand_id`),
  KEY `product_category_id` (`product_category_id`),
  KEY `catalog_service_sector_id` (`catalog_service_sector_id`),
  KEY `product_type_id` (`product_type_id`),
  KEY `material_id` (`material_id`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`catalog_service_area_id`) REFERENCES `catalog_service_area` (`id`),
  CONSTRAINT `product_ibfk_2` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`),
  CONSTRAINT `product_ibfk_3` FOREIGN KEY (`product_category_id`) REFERENCES `product_category` (`id`),
  CONSTRAINT `product_ibfk_4` FOREIGN KEY (`catalog_service_sector_id`) REFERENCES `catalog_service_sector` (`id`),
  CONSTRAINT `product_ibfk_5` FOREIGN KEY (`product_type_id`) REFERENCES `product_type` (`id`),
  CONSTRAINT `product_ibfk_6` FOREIGN KEY (`material_id`) REFERENCES `material` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Brown','121 X 121',_binary '',_binary '','Designer chair',1,1,1,1,1,1,1,'Bangalore','resources/images/products/p1.png'),(2,'Red','121 X 121',_binary '',_binary '','Recliner',1,1,1,5,1,1,1,'Coimbatore','resources/images/products/p2.png'),(3,'Blue','90 X 60 cm',_binary '',_binary '','Bosch 6.5Kg Washing Machines',1,5,1,2,2,16,4,'Chennai','resources/images/products/p3.png'),(4,'Dark Brown','H 29 x W 57 x D 33',_binary '',_binary '','Momoko 6 Seater Dining Set',6,4,1,6,2,3,11,'Trivindrum','resources/images/products/p4.png'),(5,'white','60 x 78',_binary '',_binary '','Takai Queen Size Beds',2,6,1,4,2,9,6,'Hydrabad','resources/images/products/p5.png'),(6,'Black','52 x 40.2 x 35.6 cm',_binary '',_binary '','Philips 25-Litre Digital Oven',8,7,1,4,2,12,7,'Chennai','resources/images/products/p6.png'),(7,'Brown','80 cm (w)  x 192 cm (h)',_binary '',_binary '\0','Ebony Wardrobe',8,6,1,3,1,9,6,'Chennai','resources/images/products/p7.png'),(8,'Black','14 inch',_binary '\0',_binary '','Lenovo Ideapad Core i3',8,2,2,8,2,6,10,'Chennai','resources/images/products/p8.png');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category` varchar(255) NOT NULL,
  `catalog_service_area_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catalog_service_area_id` (`catalog_service_area_id`),
  CONSTRAINT `product_category_ibfk_1` FOREIGN KEY (`catalog_service_area_id`) REFERENCES `catalog_service_area` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category`
--

LOCK TABLES `product_category` WRITE;
/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
INSERT INTO `product_category` VALUES (1,'Furniture',1),(2,'Electronics',1),(3,'Furniture',4),(4,'Electronics',7),(5,'Furniture',7),(6,'Electronics',2),(7,'Furniture',2),(8,'Electronics',6),(9,'Furniture',6),(10,'Appliances',1),(11,'Appliances',4),(12,'Appliances',7),(13,'Appliances',2),(15,'Appliances',6),(16,'Appliances',6);
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_rate`
--

DROP TABLE IF EXISTS `product_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_rate` (
  `id` int NOT NULL AUTO_INCREMENT,
  `end_date` datetime DEFAULT NULL,
  `rate` varchar(255) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `product_rate_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_rate`
--

LOCK TABLES `product_rate` WRITE;
/*!40000 ALTER TABLE `product_rate` DISABLE KEYS */;
INSERT INTO `product_rate` VALUES (1,NULL,'1500','2019-10-22 09:37:36',1),(2,NULL,'1540','2019-10-22 11:11:11',2),(3,NULL,'15000.0','2019-10-22 12:13:45',3),(4,NULL,'28000.0','2019-10-22 12:20:34',4),(5,NULL,'12500.0','2019-10-22 12:27:58',5),(6,NULL,'6000.0','2019-10-22 12:35:30',6),(7,NULL,'7000.0','2019-10-22 12:35:30',7),(8,NULL,'27000.0','2019-10-22 12:35:30',8);
/*!40000 ALTER TABLE `product_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_type`
--

DROP TABLE IF EXISTS `product_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `product_category_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_category_id` (`product_category_id`),
  CONSTRAINT `product_type_ibfk_1` FOREIGN KEY (`product_category_id`) REFERENCES `product_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_type`
--

LOCK TABLES `product_type` WRITE;
/*!40000 ALTER TABLE `product_type` DISABLE KEYS */;
INSERT INTO `product_type` VALUES (1,'Chair',1),(2,'TV',2),(3,'Sofa',1),(4,'Washing Machine',16),(5,'Table',1),(6,'Bed',9),(7,'Oven',12),(8,'Desk',7),(9,'Mic',6),(10,'Laptop',6),(11,'Dinning Table',3);
/*!40000 ALTER TABLE `product_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(450) NOT NULL,
  `category` varchar(450) NOT NULL,
  `price` double NOT NULL,
  `image` varchar(450) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Designer chair','Living Room',1200,'p1_imresizer_imresizer.jpg'),(2,'Recliner','Bed Room',14000.99,'p2_imresizer_imresizer.jpg'),(3,'Bosch 6.5Kg Washing Machine','Washing Machines',10570,'p3_imresizer.jpg'),(4,'Momoko 6 Seater Dining Set','Dining Room',19500.99,'p4_imresizer.jpg'),(5,'Takai Queen Size Beds','Bed Room',17000,'p5_imresizer.jpg'),(6,'Philips 25-Litre Digital Oven','Kitchen',7999.5,'p6_imresizer.jpg'),(7,'Refrigerator','Electronic',20100,'Refg_imresizer.jpg'),(8,'Large Almirah','Bed Room',15700.99,'Almirah_imresizer.jpg');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rental_agreement`
--

DROP TABLE IF EXISTS `rental_agreement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rental_agreement` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_detail_id` int NOT NULL,
  `agreement_number` varchar(255) NOT NULL,
  `company_id` int NOT NULL,
  `tenure` int NOT NULL,
  `booked_date` date NOT NULL,
  `delivery_date` date NOT NULL,
  `renewal_date` date NOT NULL,
  `expiry_date` date NOT NULL,
  `discount_id` int NOT NULL,
  `total_cost` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_detail_id` (`order_detail_id`),
  KEY `discount_id` (`discount_id`),
  KEY `company_id` (`company_id`),
  CONSTRAINT `rental_agreement_ibfk_1` FOREIGN KEY (`order_detail_id`) REFERENCES `order_detail` (`id`),
  CONSTRAINT `rental_agreement_ibfk_2` FOREIGN KEY (`discount_id`) REFERENCES `discount` (`id`),
  CONSTRAINT `rental_agreement_ibfk_3` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental_agreement`
--

LOCK TABLES `rental_agreement` WRITE;
/*!40000 ALTER TABLE `rental_agreement` DISABLE KEYS */;
INSERT INTO `rental_agreement` VALUES (1,5,'INS5U2V0',1,9,'2019-08-14','2019-08-17','2020-05-18','2020-05-17',2,626717),(2,6,'INS6U2V0',1,6,'2019-05-12','2019-05-13','2019-11-14','2019-11-13',1,86400),(3,7,'INS7U3V0',1,12,'2019-08-12','2019-08-13','2020-08-14','2020-08-13',3,800064),(4,8,'INS8U3V0',1,9,'2019-06-13','2019-06-13','2020-03-14','2020-03-13',2,177660),(5,1,'INS1U2V0',1,6,'2019-06-13','2019-06-13','2020-03-14','2020-03-13',2,157660),(6,2,'INS2U3V0',1,9,'2019-06-13','2019-06-13','2020-03-14','2020-03-13',2,167660),(7,3,'INS3U5V0',1,12,'2019-06-13','2019-06-13','2020-03-14','2020-03-13',2,147660),(8,4,'INS4U4V0',1,9,'2019-06-13','2019-06-13','2020-03-14','2020-03-13',2,189000);
/*!40000 ALTER TABLE `rental_agreement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rental_package`
--

DROP TABLE IF EXISTS `rental_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rental_package` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(25) DEFAULT NULL,
  `is_visible` bit(1) NOT NULL,
  `is_available` bit(1) NOT NULL,
  `created_date` date NOT NULL,
  `city` varchar(50) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental_package`
--

LOCK TABLES `rental_package` WRITE;
/*!40000 ALTER TABLE `rental_package` DISABLE KEYS */;
INSERT INTO `rental_package` VALUES (1,'Pacakge1',_binary '',_binary '','2018-11-11','Bengaluru','resources/images/packages/r1.png'),(2,'Pacakge2',_binary '',_binary '','2018-08-25','Chennai','resources/images/packages/r2.png'),(3,'Pacakge3',_binary '',_binary '','2018-08-25','Chennai','resources/images/packages/r3.png');
/*!40000 ALTER TABLE `rental_package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rental_package_product`
--

DROP TABLE IF EXISTS `rental_package_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rental_package_product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `package_id` int NOT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `package_id` (`package_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `rental_package_product_ibfk_1` FOREIGN KEY (`package_id`) REFERENCES `rental_package` (`id`),
  CONSTRAINT `rental_package_product_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental_package_product`
--

LOCK TABLES `rental_package_product` WRITE;
/*!40000 ALTER TABLE `rental_package_product` DISABLE KEYS */;
INSERT INTO `rental_package_product` VALUES (1,1,1),(2,1,3),(3,1,6),(4,2,2),(5,2,4),(6,2,5),(7,3,7),(8,3,8);
/*!40000 ALTER TABLE `rental_package_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rental_package_rate`
--

DROP TABLE IF EXISTS `rental_package_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rental_package_rate` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rental_package_id` int NOT NULL,
  `rate` int NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rental_package_id` (`rental_package_id`),
  CONSTRAINT `rental_package_rate_ibfk_1` FOREIGN KEY (`rental_package_id`) REFERENCES `rental_package` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental_package_rate`
--

LOCK TABLES `rental_package_rate` WRITE;
/*!40000 ALTER TABLE `rental_package_rate` DISABLE KEYS */;
INSERT INTO `rental_package_rate` VALUES (1,1,22500,'2016-12-12',NULL),(2,2,42040,'2018-09-10',NULL),(3,3,32040,'2018-10-10',NULL);
/*!40000 ALTER TABLE `rental_package_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `active` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'Manager',_binary ''),(2,'Customer',_binary '');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule_pickup`
--

DROP TABLE IF EXISTS `schedule_pickup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedule_pickup` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rental_agreement_id` int NOT NULL,
  `pickup_date` date NOT NULL,
  `pickup_time` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rental_agreement_id` (`rental_agreement_id`),
  CONSTRAINT `schedule_pickup_ibfk_1` FOREIGN KEY (`rental_agreement_id`) REFERENCES `rental_agreement` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule_pickup`
--

LOCK TABLES `schedule_pickup` WRITE;
/*!40000 ALTER TABLE `schedule_pickup` DISABLE KEYS */;
/*!40000 ALTER TABLE `schedule_pickup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `age` int DEFAULT NULL,
  `contact_no` varchar(15) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'David','Ross','1985-02-24',34,'9535476863','david12@gmail.com','david12@gmail.com','david12@gmail.com',1),(2,'Tina','Foster','1973-06-08',46,'7845547896','tina7@gmail.com','tina7@gmail.com','tina7@gmail.com',2),(3,'Andy','Myers','1978-02-24',41,'8974563214','andy@redif.com','andy@redif.com','andy@redif.com',2),(4,'Edward','Sanders','1975-03-19',44,'9874563214','edward123@gmail.com','edward123@gmail.com','edward123@gmail.com',2),(5,'Jasmin','Castillo','1988-12-12',31,'7845412365','jasmin45@yahoo.com','jasmin45@yahoo.com','jasmin45@yahoo.com',1),(6,'Eliphaz','Alvarez','1984-01-14',35,'8523563214','eliphaz96@gmail.com','eliphaz96@gmail.com','eliphaz96@gmail.com',2),(7,'Dylan','Ruiz','1970-08-06',49,'7525412365','dylan@gmail.com','dylan@gmail.com','dylan@gmail.com',2),(8,'Sean','Mendoza','1968-11-11',51,'6589563214','sean45@gmail.com','sean45@gmail.com','sean45@gmail.com',2),(9,'Vincent','Gray','1969-05-19',50,'7865412365','gray@gmail.com','gray@gmail.com','gray@gmail.com',2),(10,'Xavier','Bennet','1994-12-31',25,'9876544381','bennet@redif.com','bennet@redif.com','bennet@redif.com',2),(11,'Aana','James','1988-01-17',31,'8976544381','james@gmail.com','james@gmail.com','james@gmail.com',2),(12,'Eadmer','Wood','1993-02-15',26,'7896544381','wood@gmail.com','wood@gmail.com','wood@gmail.com',2);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'David','davil12@mail.com','davil12@mail.com'),(2,'Tina','tina7@gmail.com','tina7@gmail.com'),(3,'Andy','andy@redif.com','andy@redif.com'),(4,'Edward','edward123@gmail.com','edward123@gmail.com'),(5,'Jasmin','jasmin45@yahoo.com','jasmin45@yahoo.com'),(6,'Eliphaz','eliphaz96@gmail.com','eliphaz96@gmail.com'),(7,'Dylan','dylan@gmail.com','dylan@gmail.com'),(8,'Sean','sean45@gmail.com','sean45@gmail.com'),(9,'Vincent','gray@gmail.com','gray@gmail.com'),(10,'Xavier','bennet@redif.com','bennet@redif.com'),(11,'Aana','james@gmail.com','james@gmail.com'),(12,'Eadmer','wood@gmail.com','wood@gmail.com'),(13,'krishna','krishna99@gmail.com','123456'),(14,'Ram','ram89@gmail.com','12345');
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

-- Dump completed on 2025-03-08 22:47:54
