-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: my_shop
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
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `brands` (
  `brandId` int(11) NOT NULL AUTO_INCREMENT,
  `brandName` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`brandId`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (1,'Bayern München','sp.bm@gmail.com','0969698320'),(2,'Borussia Dortmund','sp.borussiadortmund@gmail.com','0912312121'),(3,'Los Angeles Dodgers','sp@LosAngelesDodgers.com','0897676512'),(4,'Arsenal','sp@arsenal.com','0981123123'),(5,'Manchester United','sp@mu.com','0807777171'),(6,'Real Madrid','sp@realmadrid.com','079809012'),(7,'Liverpool','sp@liverpool.com','0987898799'),(8,'Chelsea','sp@chelsea.com','0981236987'),(18,'Lester','sp@lerter','08549349342'),(19,'Tottenham','sp@tottenham.com','0934324324');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `categories` (
  `categoryId` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`categoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Áo Hoodie'),(2,'Giày'),(3,'Áo cộc tay'),(4,'Áo thu đông'),(6,'Mũ'),(8,'Áo'),(9,'Giày'),(10,'Áo Hoodie trẻ em'),(11,'Áo Len'),(12,'Áo Hoodie Người lớn'),(13,'Dép');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `customers` (
  `customerId` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enabled` bit(1) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `roleId` varchar(255) DEFAULT NULL,
  `createDate` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`customerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES ('admin123','admin@gmail.com',_binary '','Tôi là admin','$2a$10$k.G4fI0RgEhHJ/N..t2.aeG7x3j85dmlDbT.pWS2fxUGLSg1ddnkS','','1',NULL),('dong123','huudong297@gmail.com',_binary '','Trần Hữu Đồng','$2a$10$IDE4k.qiCIsG9VyuNOg6xuwbXhVgUWxmL/.SfTlJDAkr9255d77aS','','0',NULL),('user1','user@gmail.com',_binary '','user1','$2a$10$SPtdBxlm6KlezNspMl4CJ.oI//T8KezTFTrOy/bYV7cvsFm7tosbe','','0',NULL),('user2','user2@gmail.com',_binary '','user2','$2a$10$EZ6Gfb81tiM5NW3LCgcCyeZH88MHCj7KbDuYUqZhWXNPu07Nm1/Yq','','0',NULL),('user3','user3@gmail.com',_binary '','user3','$2a$10$/u.ChRiSn3mib4AO420qZubfV0.vIF0vI2L/bvlgAAYP6klZfd6qW','','0',NULL),('user4','user4@gmail.com',_binary '','Tôi là user4','$2a$10$Jf7UNOWOZQOscFf2rMcAN.jnZts.XEGh0pikVhjlP/Eo7qd2co/86','','0','2021-09-08 18:31:23.670000'),('user5','user5@gmail.com',_binary '','Tôi là user5','$2a$10$j3HPDFAdIYg7Hw8JGO0DFunCJ8L58rFZfCQ8Y6QFH4rXn44prmIoa','','0','2021-09-08 00:00:00.000000'),('user6','user6@gmail.com',_binary '','user6','$2a$10$rtMtZVWN6qCLQam0.jCZDe1Bm/lB5MRlXzsk0C2uHUgnebSt7NOQW','','0','2021-09-09 00:00:00.000000');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (1);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetails`
--

DROP TABLE IF EXISTS `orderdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `orderdetails` (
  `orderDetailId` int(11) NOT NULL AUTO_INCREMENT,
  `discount` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `orderId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  PRIMARY KEY (`orderDetailId`),
  KEY `FK3ohml2o6a85wh1nn65snnaind` (`orderId`),
  KEY `FK5pie1uapfd704usnm2loi3tex` (`productId`),
  CONSTRAINT `FK3ohml2o6a85wh1nn65snnaind` FOREIGN KEY (`orderId`) REFERENCES `orders` (`orderId`),
  CONSTRAINT `FK5pie1uapfd704usnm2loi3tex` FOREIGN KEY (`productId`) REFERENCES `products` (`productId`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetails`
--

LOCK TABLES `orderdetails` WRITE;
/*!40000 ALTER TABLE `orderdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `orders` (
  `orderId` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `orderDate` date DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `receiver` varchar(255) DEFAULT NULL,
  `requireDate` date DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `customerId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`orderId`),
  KEY `FK1bpj2iini89gbon333nm7tvht` (`customerId`),
  CONSTRAINT `FK1bpj2iini89gbon333nm7tvht` FOREIGN KEY (`customerId`) REFERENCES `customers` (`customerId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'TP. Hà Tĩnh',0,'Túi Xách','2021-09-08','0915767465','Trần Hữu Đồng',NULL,368,NULL),(2,'TP. Hà Tĩnh',0,'Túi Xách','2021-09-08','0915767465','Trần Hữu Đồng',NULL,368,NULL),(3,'TP. Hà Tĩnh',0,'Demo mô tả','2021-09-08','0915999999','Trần Hữu Đồng',NULL,368,NULL),(4,'266 Dũng sĩ Thanh Khê -  Đà Nẵng',0,'Demo mô tả','2021-09-08','0915999999','Nguyễn Ngọc Khánh',NULL,650,NULL),(5,'TP. Hà Tĩnh',0,'Demo mô tả','2021-09-08','0915999999','Trần Hoài Nam',NULL,585,'user5'),(6,'TP. Hà Tĩnh',0,'Demo mô tả','2021-09-08','0915999999','Trần Hoài Nam',NULL,675,'user5'),(7,'TP. Hà Tĩnh',0,'Demo mô tả','2021-09-08','0915999999','Trần Hữu Đồng',NULL,585,'dong123'),(8,'TP. Hà Tĩnh',0,'Demo mô tả','2021-09-08','0915999999','Nguyễn Văn Tú',NULL,1575,'user2'),(9,'TP. Hà Tĩnh',0,'Demo mô tả','2021-09-09','0915999999','Trần Hoài Nam',NULL,585,'user1'),(10,'Tp.Huế',0,'Demo mô tả','2021-09-09','0915999999','Nguyễn Thanh Lam',NULL,585,'user6'),(11,'TP. Hà Tĩnh',0,'Demo mô tả','2021-09-10','0915999999','Trần Hoài Nam',NULL,1565.5,'user2'),(12,'Tp.Huế',0,'Demo mô tả','2021-09-10','0915767465','Nguyễn Thanh Lam',NULL,885,'user3'),(13,'TP. Hà Tĩnh',0,'Demo mô tả','2021-09-10','0915767465','Nguyễn Văn Tú',NULL,522.5,'user4');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `products` (
  `productId` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(455) DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `enteredDate` date DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `brandId` int(11) DEFAULT NULL,
  `categoryId` int(11) DEFAULT NULL,
  PRIMARY KEY (`productId`),
  KEY `FKh5l4pix4d0mc61aibdt3gj898` (`brandId`),
  KEY `FKej2ob3ifydf846t2a2tntna4e` (`categoryId`),
  CONSTRAINT `FKej2ob3ifydf846t2a2tntna4e` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`categoryId`),
  CONSTRAINT `FKh5l4pix4d0mc61aibdt3gj898` FOREIGN KEY (`brandId`) REFERENCES `brands` (`brandId`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (46,'Áo bóng đá thể thao áo đá bóng áo đấu cao cấp hoàn hảo nhất mùa giải 2022\r\n- Chúng tôi không cần vạn người đến với chúng tôi\r\n- Chúng tôi chỉ cần bạn đến với chúng tôi vạn lần\r\n- Sản phẩm thật giống hình chụp 100%. \r\n- Đổi trả trong vòng 7 ngày do lỗi nhà sản xuất\r\n- Giao hàng nhanh chóng\r\n- Chất liệu vải cao cấp, thân thiện với người dùng\r\n- Ưu đãi cực lớn cho quý khách hàng khi đặt đội hay công ty số lượng lớn.',10,'2022-02-25','Poster1.jpg','Liver-Hoodie',200000,100,7,1),(47,'Áo bóng đá thể thao áo đá bóng áo đấu cao cấp hoàn hảo nhất mùa giải 2022\r\n- Chúng tôi không cần vạn người đến với chúng tôi\r\n- Chúng tôi chỉ cần bạn đến với chúng tôi vạn lần\r\n- Sản phẩm thật giống hình chụp 100%. \r\n- Đổi trả trong vòng 7 ngày do lỗi nhà sản xuất\r\n- Giao hàng nhanh chóng\r\n- Chất liệu vải cao cấp, thân thiện với người dùng\r\n- Ưu đãi cực lớn cho quý khách hàng khi đặt đội hay công ty số lượng lớn.',10,'2022-02-25','Poster.jpg','Arsenal-Hoodie',200000,100,4,1),(49,'Áo bóng đá thể thao áo đá bóng áo đấu cao cấp hoàn hảo nhất mùa giải 2022\r\n- Chúng tôi không cần vạn người đến với chúng tôi\r\n- Chúng tôi chỉ cần bạn đến với chúng tôi vạn lần\r\n- Sản phẩm thật giống hình chụp 100%. \r\n- Đổi trả trong vòng 7 ngày do lỗi nhà sản xuất\r\n- Giao hàng nhanh chóng\r\n- Chất liệu vải cao cấp, thân thiện với người dùng\r\n- Ưu đãi cực lớn cho quý khách hàng khi đặt đội hay công ty số lượng lớn.',10,'2022-02-26','ars.jpg','Arsenal-Tay ngắn',200000,100,4,3),(50,'Áo bóng đá thể thao áo đá banh  Manchester United MU áo đấu cao cấp hoàn hảo nhất mùa giải 2022\r\n- Chúng tôi không cần vạn người đến với chúng tôi\r\n- Chúng tôi chỉ cần bạn đến với chúng tôi vạn lần\r\n- Sản phẩm thật giống hình chụp 100%. \r\n- Đổi trả trong vòng 7 ngày do lỗi nhà sản xuất\r\n- Giao hàng nhanh chóng\r\n- Chất liệu vải cao cấp, thân thiện với người dùng\r\n- Ưu đãi cực lớn cho quý khách hàng khi đặt đội hay công ty số lượng lớn.',10,'2022-02-26','MU2.jpg','MU-Hoodie',200000,100,5,1),(52,'Áo bóng đá thể thao cao cấp hoàn hảo nhất mùa giải 2022\r\n- Chúng tôi không cần vạn người đến với chúng tôi\r\n- Chúng tôi chỉ cần bạn đến với chúng tôi vạn lần\r\n- Sản phẩm thật giống hình chụp 100%. \r\n- Đổi trả trong vòng 7 ngày do lỗi nhà sản xuất\r\n- Giao hàng nhanh chóng\r\n- Chất liệu vải cao cấp, thân thiện với người dùng\r\n- Ưu đãi cực lớn cho quý khách hàng khi đặt đội hay công ty số lượng lớn.',10,'2022-02-25','ars1.jpg','Arsenal-Hoodie',200000,100,4,1),(53,'Áo bóng đá thể thao cao cấp hoàn hảo nhất mùa giải 2022\r\n- Chúng tôi không cần vạn người đến với chúng tôi\r\n- Chúng tôi chỉ cần bạn đến với chúng tôi vạn lần\r\n- Sản phẩm thật giống hình chụp 100%. \r\n- Đổi trả trong vòng 7 ngày do lỗi nhà sản xuất\r\n- Giao hàng nhanh chóng\r\n- Chất liệu vải cao cấp, thân thiện với người dùng\r\n- Ưu đãi cực lớn cho quý khách hàng khi đặt đội hay công ty số lượng lớn.',10,'2022-02-25','ars3.jpg','Arsenal-Áo len',400000,10,4,11),(55,'Áo bóng đá thể thao cao cấp hoàn hảo nhất mùa giải 2022\r\n- Chúng tôi không cần vạn người đến với chúng tôi\r\n- Chúng tôi chỉ cần bạn đến với chúng tôi vạn lần\r\n- Sản phẩm thật giống hình chụp 100%. \r\n- Đổi trả trong vòng 7 ngày do lỗi nhà sản xuất\r\n- Giao hàng nhanh chóng\r\n- Chất liệu vải cao cấp, thân thiện với người dùng\r\n- Ưu đãi cực lớn cho quý khách hàng khi đặt đội hay công ty số lượng lớn.',10,'2022-02-24','ars6.jpg','Arsenal-Hoodie',200000,100,4,1),(56,'Áo bóng đá thể thao cao cấp hoàn hảo nhất mùa giải 2022\r\n- Chúng tôi không cần vạn người đến với chúng tôi\r\n- Chúng tôi chỉ cần bạn đến với chúng tôi vạn lần\r\n- Sản phẩm thật giống hình chụp 100%. \r\n- Đổi trả trong vòng 7 ngày do lỗi nhà sản xuất\r\n- Giao hàng nhanh chóng\r\n- Chất liệu vải cao cấp, thân thiện với người dùng\r\n- Ưu đãi cực lớn cho quý khách hàng khi đặt đội hay công ty số lượng lớn.',10,NULL,'ars7.png','Arsenal-Áo len',100000,10,4,11),(57,'Áo bóng đá thể thao cao cấp hoàn hảo nhất mùa giải 2022\r\n- Chúng tôi không cần vạn người đến với chúng tôi\r\n- Chúng tôi chỉ cần bạn đến với chúng tôi vạn lần\r\n- Sản phẩm thật giống hình chụp 100%. \r\n- Đổi trả trong vòng 7 ngày do lỗi nhà sản xuất\r\n- Giao hàng nhanh chóng\r\n- Chất liệu vải cao cấp, thân thiện với người dùng\r\n- Ưu đãi cực lớn cho quý khách hàng khi đặt đội hay công ty số lượng lớn.',10,'2022-02-24','ars4.jpg','Arsenal-Áo len',400000,100,4,11),(58,'Áo bóng đá thể thao cao cấp hoàn hảo nhất mùa giải 2022\r\n- Chúng tôi không cần vạn người đến với chúng tôi\r\n- Chúng tôi chỉ cần bạn đến với chúng tôi vạn lần\r\n- Sản phẩm thật giống hình chụp 100%. \r\n- Đổi trả trong vòng 7 ngày do lỗi nhà sản xuất\r\n- Giao hàng nhanh chóng\r\n- Chất liệu vải cao cấp, thân thiện với người dùng\r\n- Ưu đãi cực lớn cho quý khách hàng khi đặt đội hay công ty số lượng lớn.',0,'2022-09-01','by2.jpg','Bayen - Hoodie',400000,100,1,1),(59,'Áo bóng đá thể thao cao cấp hoàn hảo nhất mùa giải 2022\r\n- Chúng tôi không cần vạn người đến với chúng tôi\r\n- Chúng tôi chỉ cần bạn đến với chúng tôi vạn lần\r\n- Sản phẩm thật giống hình chụp 100%. \r\n- Đổi trả trong vòng 7 ngày do lỗi nhà sản xuất\r\n- Giao hàng nhanh chóng\r\n- Chất liệu vải cao cấp, thân thiện với người dùng\r\n- Ưu đãi cực lớn cho quý khách hàng khi đặt đội hay công ty số lượng lớn.',0,'2022-02-22','by1.jpg','Bayen - Hoodie',300000,1000,1,1),(60,'Áo bóng đá thể thao cao cấp hoàn hảo nhất mùa giải 2022\r\n- Chúng tôi không cần vạn người đến với chúng tôi\r\n- Chúng tôi chỉ cần bạn đến với chúng tôi vạn lần\r\n- Sản phẩm thật giống hình chụp 100%. \r\n- Đổi trả trong vòng 7 ngày do lỗi nhà sản xuất\r\n- Giao hàng nhanh chóng\r\n- Chất liệu vải cao cấp, thân thiện với người dùng\r\n- Ưu đãi cực lớn cho quý khách hàng khi đặt đội hay công ty số lượng lớn.',9,'2022-02-22','dm1.jpg','Dortmund- Hoodie',300000,100,2,1),(61,'Áo bóng đá thể thao cao cấp hoàn hảo nhất mùa giải 2022\r\n- Chúng tôi không cần vạn người đến với chúng tôi\r\n- Chúng tôi chỉ cần bạn đến với chúng tôi vạn lần\r\n- Sản phẩm thật giống hình chụp 100%. \r\n- Đổi trả trong vòng 7 ngày do lỗi nhà sản xuất\r\n- Giao hàng nhanh chóng\r\n- Chất liệu vải cao cấp, thân thiện với người dùng\r\n- Ưu đãi cực lớn cho quý khách hàng khi đặt đội hay công ty số lượng lớn.',9,'2022-02-22','dm2.jpg','Dortmund - Áo len',400000,10,2,11),(62,'Áo bóng đá thể thao cao cấp hoàn hảo nhất mùa giải 2022\r\n- Chúng tôi không cần vạn người đến với chúng tôi\r\n- Chúng tôi chỉ cần bạn đến với chúng tôi vạn lần\r\n- Sản phẩm thật giống hình chụp 100%. \r\n- Đổi trả trong vòng 7 ngày do lỗi nhà sản xuất\r\n- Giao hàng nhanh chóng\r\n- Chất liệu vải cao cấp, thân thiện với người dùng\r\n- Ưu đãi cực lớn cho quý khách hàng khi đặt đội hay công ty số lượng lớn.',9,'2022-02-22','C1.jpg','Chelsea- Hoodie',300000,100,8,1),(63,'Áo bóng đá thể thao cao cấp hoàn hảo nhất mùa giải 2022\r\n- Chúng tôi không cần vạn người đến với chúng tôi\r\n- Chúng tôi chỉ cần bạn đến với chúng tôi vạn lần\r\n- Sản phẩm thật giống hình chụp 100%. \r\n- Đổi trả trong vòng 7 ngày do lỗi nhà sản xuất\r\n- Giao hàng nhanh chóng\r\n- Chất liệu vải cao cấp, thân thiện với người dùng\r\n- Ưu đãi cực lớn cho quý khách hàng khi đặt đội hay công ty số lượng lớn.',8,'2022-02-22','C2.jpg','Chelsea- Hoodie',400000,200,8,1),(64,'Áo bóng đá thể thao cao cấp hoàn hảo nhất mùa giải 2022\r\n- Chúng tôi không cần vạn người đến với chúng tôi\r\n- Chúng tôi chỉ cần bạn đến với chúng tôi vạn lần\r\n- Sản phẩm thật giống hình chụp 100%. \r\n- Đổi trả trong vòng 7 ngày do lỗi nhà sản xuất\r\n- Giao hàng nhanh chóng\r\n- Chất liệu vải cao cấp, thân thiện với người dùng\r\n- Ưu đãi cực lớn cho quý khách hàng khi đặt đội hay công ty số lượng lớn.',0,'2022-02-25','Poster.jpg','Lerter - Hoodie',100000,10,18,12),(65,'Real',2,'2022-02-22','re1.jpg','',300000,100,6,1),(66,'Tottenham - Hoodie',0,'2022-02-26','Tot1.jpg','Tottenham - Hoodie',100000,100,19,1),(67,'Tottt',0,'2022-02-23','BC2.jpg','Tottenham - Hoodie',10000,1,19,1);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `roleName` varchar(255) DEFAULT NULL,
  `customerId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKcotftqap7by5m4ibph3ss3xvo` (`customerId`),
  CONSTRAINT `FKcotftqap7by5m4ibph3ss3xvo` FOREIGN KEY (`customerId`) REFERENCES `customers` (`customerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'ROLE_ADMIN','admin123');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'pav_shop'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-06  9:56:17
