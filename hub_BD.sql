-- MySQL dump 10.13  Distrib 5.7.16, for Linux (x86_64)
--
-- Host: localhost    Database: hub_development
-- ------------------------------------------------------
-- Server version	5.7.16-0ubuntu0.16.04.1

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
-- Table structure for table `conta`
--

DROP TABLE IF EXISTS `conta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_criacao` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `pai_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100011 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conta`
--

LOCK TABLES `conta` WRITE;
/*!40000 ALTER TABLE `conta` DISABLE KEYS */;
INSERT INTO `conta` VALUES (100000,'Conta editada','ATIVA','2016-11-10 20:59:38','2016-11-10 20:59:38','2016-11-10 21:47:58',NULL),(100001,'Conta 2','ATIVA','2016-11-10 21:40:46','2016-11-10 21:40:46','2016-11-10 21:40:46',NULL),(100002,'Conta 3','ATIVA','2016-11-10 21:44:42','2016-11-10 21:44:42','2016-11-10 21:44:42',NULL),(100003,'Conta 4','ATIVA','2016-11-10 23:16:37','2016-11-10 23:16:37','2016-11-10 23:16:37',NULL),(100004,'Conta 5','ATIVA','2016-11-10 23:18:33','2016-11-10 23:18:33','2016-11-10 23:18:33',NULL),(100005,'Conta 6','ATIVA','2016-11-11 10:22:56','2016-11-11 10:22:56','2016-11-11 10:22:56',100000),(100006,'Conta 7 editada','ATIVA','2016-11-11 10:30:15','2016-11-11 10:30:15','2016-11-11 12:46:29',100001),(100007,'Conta 8','ATIVA','2016-11-11 10:30:52','2016-11-11 10:30:52','2016-11-11 10:30:52',NULL),(100009,'Conta com pai removido','ATIVA','2016-11-11 10:58:43','2016-11-11 10:58:43','2016-11-11 11:49:40',NULL),(100010,'conta web','ATIVA','2016-11-13 14:20:44','2016-11-13 14:20:44','2016-11-13 14:20:44',100004);
/*!40000 ALTER TABLE `conta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fisica`
--

DROP TABLE IF EXISTS `fisica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fisica` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CPF` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_nascimento` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fisica`
--

LOCK TABLES `fisica` WRITE;
/*!40000 ALTER TABLE `fisica` DISABLE KEYS */;
/*!40000 ALTER TABLE `fisica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `juridica`
--

DROP TABLE IF EXISTS `juridica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `juridica` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CNPJ` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `razao_social` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `juridica`
--

LOCK TABLES `juridica` WRITE;
/*!40000 ALTER TABLE `juridica` DISABLE KEYS */;
/*!40000 ALTER TABLE `juridica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoa`
--

DROP TABLE IF EXISTS `pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pessoa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa`
--

LOCK TABLES `pessoa` WRITE;
/*!40000 ALTER TABLE `pessoa` DISABLE KEYS */;
/*!40000 ALTER TABLE `pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20161110011230'),('20161110120928'),('20161110134541'),('20161113163036'),('20161113163127'),('20161113163133');
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

-- Dump completed on 2016-11-13 15:42:33
-- MySQL dump 10.13  Distrib 5.7.16, for Linux (x86_64)
--
-- Host: localhost    Database: hub_test
-- ------------------------------------------------------
-- Server version	5.7.16-0ubuntu0.16.04.1

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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-13 15:42:33
