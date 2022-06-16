-- MySQL dump 10.13  Distrib 8.0.28, for macos11 (arm64)
--
-- Host: localhost    Database: archive_section_development
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2022-06-15 13:24:59.226964','2022-06-15 13:24:59.226964');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `archive_types`
--

DROP TABLE IF EXISTS `archive_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `archive_types` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `archive_type` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `ancestry` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_archive_types_on_ancestry` (`ancestry`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archive_types`
--

LOCK TABLES `archive_types` WRITE;
/*!40000 ALTER TABLE `archive_types` DISABLE KEYS */;
INSERT INTO `archive_types` VALUES (1,'Paper','2022-06-15 13:28:47.427701','2022-06-15 13:28:47.427701',NULL),(2,'Photos','2022-06-15 13:28:47.431670','2022-06-15 13:28:47.431670',NULL),(3,'References','2022-06-15 13:28:47.434313','2022-06-15 13:28:47.434313',NULL),(4,'Other collections','2022-06-15 13:28:47.435557','2022-06-15 13:28:47.435557',NULL),(5,'Philip guston','2022-06-15 13:29:34.934905','2022-06-15 13:29:34.934905','1'),(6,'Musa Mckim','2022-06-15 13:29:34.937069','2022-06-15 13:29:34.937069','1'),(7,'Musa Mayer ','2022-06-15 13:29:34.938677','2022-06-15 13:29:34.938677','1'),(8,'Buisness Correspondance','2022-06-15 13:29:43.784569','2022-06-15 13:29:43.784569','1/5'),(9,'Personal Correspondance','2022-06-15 13:29:43.789701','2022-06-15 13:29:43.789701','1/5'),(10,'Buisness Correspondance','2022-06-15 13:30:13.442848','2022-06-15 13:30:13.442848','1/6'),(11,'Personal Correspondance','2022-06-15 13:30:13.444618','2022-06-15 13:30:13.444618','1/6'),(12,'Writing','2022-06-15 13:30:13.445880','2022-06-15 13:30:13.445880','1/6'),(13,'CR Correspondance - Collector','2022-06-15 13:30:27.090645','2022-06-15 13:30:27.090645','1/7'),(14,'CR Correspondance - Miscellenous','2022-06-15 13:30:27.094584','2022-06-15 13:30:27.094584','1/7'),(15,'Artwork photos','2022-06-15 20:21:40.473888','2022-06-15 20:21:40.473888','2'),(16,'Philip Guston Personal photos','2022-06-15 20:21:40.485346','2022-06-15 20:21:40.485346','2'),(17,'Musa Mckim Photos','2022-06-15 20:21:40.488901','2022-06-15 20:21:40.488901','2'),(18,'Musa Mayer Personal Photos','2022-06-15 20:21:40.490594','2022-06-15 20:21:40.490594','2'),(19,'Installation Photos','2022-06-15 20:21:40.492591','2022-06-15 20:21:40.492591','2'),(20,'Undetermined','2022-06-15 20:21:40.495163','2022-06-15 20:21:40.495163','2'),(21,'Events, Etc','2022-06-15 20:21:40.497087','2022-06-15 20:21:40.497087','2'),(22,'Painting','2022-06-15 20:21:50.358985','2022-06-15 20:21:50.358985','2/15'),(23,'Drawing','2022-06-15 20:21:50.363389','2022-06-15 20:21:50.363389','2/15'),(24,'Lithograph','2022-06-15 20:21:50.366871','2022-06-15 20:21:50.366871','2/15'),(25,'Mural','2022-06-15 20:21:50.372802','2022-06-15 20:21:50.372802','2/15'),(26,'Ephemera','2022-06-15 20:21:50.377140','2022-06-15 20:21:50.377140','2/15'),(27,'Sketch','2022-06-15 20:21:50.378876','2022-06-15 20:21:50.378876','2/15'),(28,'Artwork','2022-06-15 20:22:03.070761','2022-06-15 20:22:03.070761','2/17'),(29,'Personal Photographs','2022-06-15 20:22:03.073277','2022-06-15 20:22:03.073277','2/17'),(30,'Events','2022-06-15 20:22:17.292807','2022-06-15 20:22:17.292807','2/21'),(31,'Art Fairs/Auctions','2022-06-15 20:22:17.296915','2022-06-15 20:22:17.296915','2/21'),(32,'Undetermined','2022-06-15 20:22:17.304872','2022-06-15 20:22:17.304872','2/21');
/*!40000 ALTER TABLE `archive_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `archives`
--

DROP TABLE IF EXISTS `archives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `archives` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `archive_type_id` bigint NOT NULL,
  `archive_data` json DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_archives_on_archive_type_id` (`archive_type_id`),
  CONSTRAINT `fk_rails_6b96b481d0` FOREIGN KEY (`archive_type_id`) REFERENCES `archive_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archives`
--

LOCK TABLES `archives` WRITE;
/*!40000 ALTER TABLE `archives` DISABLE KEYS */;
INSERT INTO `archives` VALUES (1,'title',11,NULL,'2022-06-15 22:26:58.670349','2022-06-15 22:26:58.670349'),(2,'Post with nested json data and strong params',11,'{\"value_1\": \"sample 3\"}','2022-06-15 22:42:55.390553','2022-06-15 22:42:55.390553'),(3,'sfsfsf',11,NULL,'2022-06-15 22:46:55.568568','2022-06-15 22:46:55.568568'),(4,'ssffsdf',11,'{\"value_1\": \"sdfsf\"}','2022-06-15 22:56:00.513332','2022-06-15 22:56:00.513332'),(5,'sdfdsf',11,'{\"size\": \"big\", \"color\": \"red\"}','2022-06-15 22:59:17.823416','2022-06-15 22:59:17.823416'),(6,'asdasd',11,'{\"value_1\": \"sample 1\", \"value_2\": \"sample 2\", \"value_3\": \"sample 3\"}','2022-06-15 23:00:04.523950','2022-06-15 23:00:04.523950');
/*!40000 ALTER TABLE `archives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20220615131143'),('20220615131255'),('20220615132737');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-15 20:04:01
