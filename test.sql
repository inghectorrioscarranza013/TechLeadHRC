-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: test
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Messages`
--

DROP TABLE IF EXISTS `Messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `message` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Messages`
--

LOCK TABLES `Messages` WRITE;
/*!40000 ALTER TABLE `Messages` DISABLE KEYS */;
INSERT INTO `Messages` VALUES (30,'es Message','2021-08-04 16:24:52','2021-08-04 16:24:52');
/*!40000 ALTER TABLE `Messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `body` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'title','body','2021-08-04 07:10:27','2021-08-04 07:10:27'),(2,'title','body','2021-08-04 07:10:31','2021-08-04 07:10:31'),(3,'title','body','2021-08-04 07:10:32','2021-08-04 07:10:32'),(4,'title222','body3312','2021-08-04 07:11:44','2021-08-04 07:11:44'),(5,NULL,NULL,'2021-08-04 07:35:09','2021-08-04 07:35:09'),(6,NULL,NULL,'2021-08-04 07:46:49','2021-08-04 07:46:49'),(7,NULL,NULL,'2021-08-04 07:48:21','2021-08-04 07:48:21'),(8,'prueba','prueba','2021-08-04 07:49:05','2021-08-04 07:49:05'),(9,'prueba','prueba','2021-08-04 07:50:02','2021-08-04 07:50:02'),(10,'prueba','prueba','2021-08-04 07:50:47','2021-08-04 07:50:47'),(11,'req.body.title','eq.body.body','2021-08-04 07:56:01','2021-08-04 07:56:01'),(12,'req.body.title','eq.body.body','2021-08-04 07:56:03','2021-08-04 07:56:03'),(13,'req.body.title','eq.body.body','2021-08-04 07:56:30','2021-08-04 07:56:30'),(14,'req.body.title','eq.body.body','2021-08-04 07:56:32','2021-08-04 07:56:32'),(15,NULL,'cuerpo','2021-08-04 08:15:25','2021-08-04 08:15:25'),(16,NULL,'cuerpo','2021-08-04 08:17:50','2021-08-04 08:17:50'),(17,'Hola','cuerpo','2021-08-04 08:21:18','2021-08-04 08:21:18'),(18,'Hola','cuerpo','2021-08-04 08:21:46','2021-08-04 08:21:46'),(19,'Hola','cuerpo','2021-08-04 08:22:30','2021-08-04 08:22:30'),(20,'Hola','cuerpo','2021-08-04 08:23:27','2021-08-04 08:23:27'),(21,'Lorem Ipsum is simpl','cuerpo','2021-08-04 08:24:22','2021-08-04 08:24:22'),(22,'Lorem Ipsum is simpl','cuerpo','2021-08-04 08:25:43','2021-08-04 08:25:43'),(23,'Lorem Ipsum is simpl','cuerpo','2021-08-04 08:27:55','2021-08-04 08:27:55'),(24,'Lorem Ipsum is simpl','cuerpo','2021-08-04 08:28:26','2021-08-04 08:28:26'),(25,'ESTO ES UNA PRUEBA','cuerpo','2021-08-04 08:28:56','2021-08-04 08:28:56'),(26,'This is a new messag','cuerpo','2021-08-04 14:28:09','2021-08-04 14:28:09');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'test'
--

--
-- Dumping routines for database 'test'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-04 11:38:31
