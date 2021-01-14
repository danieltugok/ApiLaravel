-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: laravelapi
-- ------------------------------------------------------
-- Server version	8.0.22-0ubuntu0.20.04.3

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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2021_01_11_203617_create_all_tables',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `postcomments`
--

DROP TABLE IF EXISTS `postcomments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `postcomments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_post` int NOT NULL,
  `id_user` int NOT NULL,
  `created_at` datetime NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `postcomments`
--

LOCK TABLES `postcomments` WRITE;
/*!40000 ALTER TABLE `postcomments` DISABLE KEYS */;
/*!40000 ALTER TABLE `postcomments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `postlikes`
--

DROP TABLE IF EXISTS `postlikes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `postlikes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_post` int NOT NULL,
  `id_user` int NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `postlikes`
--

LOCK TABLES `postlikes` WRITE;
/*!40000 ALTER TABLE `postlikes` DISABLE KEYS */;
/*!40000 ALTER TABLE `postlikes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_user` int NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userrelations`
--

DROP TABLE IF EXISTS `userrelations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userrelations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_from` int NOT NULL,
  `user_to` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userrelations`
--

LOCK TABLES `userrelations` WRITE;
/*!40000 ALTER TABLE `userrelations` DISABLE KEYS */;
/*!40000 ALTER TABLE `userrelations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthdate` date NOT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `cover` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'cover.jpg',
  `token` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'teste@gmail.com','1234','Daniel kogut','1986-03-01',NULL,NULL,'default.jpg','cover.jpg',NULL,NULL,NULL),(2,'teste1@gmail.com','1234','Daniel kogut1','1986-03-02',NULL,NULL,'default.jpg','cover.jpg',NULL,NULL,NULL),(3,'teste13@gmail.com','1234','Daniel kogut13','1913-03-02',NULL,NULL,'default.jpg','cover.jpg',NULL,NULL,NULL),(4,'test3@gmail.com','1234','Daniel','1913-03-02',NULL,NULL,'default.jpg','cover.jpg',NULL,NULL,NULL),(5,'testee3@gmail.com','1234','Daniel','1913-03-02',NULL,NULL,'default.jpg','cover.jpg',NULL,NULL,NULL),(6,'testee03@gmail.com','$2y$10$rlTI/JlsVuTsQUFVH40WM.fJEMB/ZmStHGtUZQOH2sNShPCUTijPC','Daniel0000','1913-03-02',NULL,NULL,'default.jpg','cover.jpg',NULL,NULL,NULL),(7,'testee013@gmail.com','$2y$10$O40pC8/wogyxWmqf.A9GheM2Af3/cfZ7Dj/ckmwJsCzKE.A9irszK','Daniel0000','1913-03-02',NULL,NULL,'default.jpg','cover.jpg',NULL,NULL,NULL),(8,'te123@gmail.com','$2y$10$.4l7s.YoDQH70Dk8a9xiCOhXSQMZZ3NmmwOTUd4A3UcDRHC6k.fMW','Dk','1900-01-01',NULL,NULL,'default.jpg','cover.jpg',NULL,NULL,NULL),(9,'te1234@gmail.com','$2y$10$EzwehnCOd6JNEuvnoesMv.fxPKkH7cQbJiBFincVUGjodrV0aeSO.','Dk','1900-01-01',NULL,NULL,'default.jpg','cover.jpg',NULL,NULL,NULL),(10,'te12345@gmail.com','$2y$10$B3HQ7ie4KM.fdv9X6AKtfO3z7.fCqTiZ2hBRZbnDy6VKYjaoJe2XW','Dk','1900-01-01',NULL,NULL,'default.jpg','cover.jpg',NULL,NULL,NULL),(11,'te123455@gmail.com','$2y$10$zvSStyp16sAE7vgw8HEwQONa2.5yaH.sPYlFoqELDiJ4k5CQV7S5i','Dk','1900-01-01',NULL,NULL,'default.jpg','cover.jpg',NULL,NULL,NULL),(12,'te1234555@gmail.com','$2y$10$7Q4ReqdVa/1tEqNfD8TnAeHyAGseWqzEC8XJosgb0vwha32I9077S','Dk','1900-01-01',NULL,NULL,'default.jpg','cover.jpg',NULL,NULL,NULL),(13,'te12364555@gmail.com','$2y$10$67q6Wdnoe11JX9t/wTn.Z.FFBaA7k1uNmtK9CtsF6/MP/iGRSG.8a','Dk','1900-01-01',NULL,NULL,'default.jpg','cover.jpg',NULL,NULL,NULL),(14,'te123645557@gmail.com','$2y$10$vOe/yzvc0EklQRHN0l8rEe9WJ.EIaNPNwMhKh6d0wgzoojgNPIjp2','Dk','1900-01-01',NULL,NULL,'default.jpg','cover.jpg',NULL,NULL,NULL),(15,'te1236458557@gmail.com','$2y$10$X6w5L0bsl6VIAgrqAIn6/OEryJP82YzxbsEncDj9ggroW/5qrbKSa','Dk','1900-01-01',NULL,NULL,'default.jpg','cover.jpg',NULL,NULL,NULL),(16,'te7@gmail.com','$2y$10$32NhAe00dZbcrpJXi0L0IOL8ZEfDLjDYzKmAr54arrx.2C.FIWHEa','Dk','1900-01-01',NULL,NULL,'default.jpg','cover.jpg',NULL,NULL,NULL),(17,'te78@gmail.com','$2y$10$znc8U6XQ5uxJ/GRcYwnizeDBducCO0ck6zjiDYB0zPB1PDwj3CC3q','Dk','1900-01-01',NULL,NULL,'default.jpg','cover.jpg',NULL,NULL,NULL),(18,'te789@gmail.com','$2y$10$iENdPH3qZuPxVo9TPJWmYusfkgmLoOFNVLakibAz5pn7Afd9MhcyO','Dk','1900-01-01',NULL,NULL,'default.jpg','cover.jpg',NULL,NULL,NULL),(19,'te7879@gmail.com','$2y$10$TgYn.4RMFMmnbnGYG58sZeTPpiJzeygCRZSWofc4cZn1LKYsCgj2O','Dk','1900-01-01',NULL,NULL,'default.jpg','cover.jpg',NULL,NULL,NULL),(20,'te17879@gmail.com','$2y$10$saOy77H6Wr1ZyDw9f0TWOOWYw2ESuZHmsOxbCr/scsqo1fbQlWiBa','Dk','1900-01-01',NULL,NULL,'default.jpg','cover.jpg',NULL,NULL,NULL),(21,'7878@gmail.com','$2y$10$12uDdfxLHFrcLJqkkCepK.IyAznQmuJ0qN4FHr6.bBuqsKF8gzHdO','Dk','1900-01-01',NULL,NULL,'default.jpg','cover.jpg',NULL,NULL,NULL),(22,'78178@gmail.com','$2y$10$3z14Y83xB.TA0R/gFFrTbO6D4xaBQ3NZp3fPj86tt2UDJa/t9iVMm','Dk','1900-01-01',NULL,NULL,'default.jpg','cover.jpg',NULL,NULL,NULL),(23,'781788@gmail.com','$2y$10$61YTeKTzMmYQIWnvIzuBEOzluDWtzN1D3dtXuDVi4h6uGjkhSiHku','Dk','1900-01-01',NULL,NULL,'default.jpg','cover.jpg',NULL,NULL,NULL),(24,'7817878@gmail.com','$2y$10$UL2eha.l50D4hTNsr.eIc.fRe.PF3nhtynANbV7vYC.MkOe658CCK','Dk','1900-01-01',NULL,NULL,'default.jpg','cover.jpg',NULL,NULL,NULL),(25,'78178878@gmail.com','$2y$10$RygbivxJN1dljtkcVVY0A.whxhemH.WFk2X13bf2J3y8H4X5MA4ti','Dk','1900-01-01',NULL,NULL,'default.jpg','cover.jpg',NULL,NULL,NULL),(26,'7978@gmail.com','$2y$10$AodaAwJi/I14Ya8EU5t/UemRqez4b.nltTqV3N8bAJteowRMNmAQu','Dk','1900-01-01',NULL,NULL,'default.jpg','cover.jpg',NULL,NULL,NULL),(27,'79787@gmail.com','$2y$10$NOXKsZY28I1nzySyuSdufOJhImiaP4QkkWL6XL5mFC8gXUZrwIxFq','Dk','1900-01-01',NULL,NULL,'default.jpg','cover.jpg',NULL,NULL,NULL),(28,'daniel@gmail.com','$2y$10$yp50ht0Fwf68hy.iVg0F4.QNH32g51ulBxilluS0yDZn7fGfv31h6','Daniel','1986-03-01',NULL,NULL,'default.jpg','cover.jpg',NULL,NULL,NULL),(29,'daniel1@gmail.com','$2y$10$DB0cln/cSTkjP4PYGS7K5u6LmeMiiVitV6d1OFh/DYBUSMhAZxNpe','Daniel','1986-03-01',NULL,NULL,'default.jpg','cover.jpg',NULL,NULL,NULL);
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

-- Dump completed on 2021-01-14 14:26:00
