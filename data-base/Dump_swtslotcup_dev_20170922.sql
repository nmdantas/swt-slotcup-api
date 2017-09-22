CREATE DATABASE  IF NOT EXISTS `swtslotcup_dev` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;
USE `swtslotcup_dev`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: swtslotcup_dev
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `campeonato`
--

DROP TABLE IF EXISTS `campeonato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campeonato` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(255) COLLATE utf8_bin NOT NULL,
  `Inicio` date DEFAULT NULL,
  `Fim` date DEFAULT NULL,
  `Valor_Ponto_Extra` int(11) DEFAULT '0',
  `Quantidade_Etapas` int(11) DEFAULT '0',
  `Participacao_minima` int(11) DEFAULT '0',
  `Bonus_Participacao_Etapa` int(11) DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campeonato`
--

LOCK TABLES `campeonato` WRITE;
/*!40000 ALTER TABLE `campeonato` DISABLE KEYS */;
INSERT INTO `campeonato` VALUES (1,'Campeonato Paulista Slot-it Grupo C 1/32 - 2016','2016-03-18','2016-12-20',1,6,3,3),(2,'Campeonato Paulista Scaleauto 1/32 - 2017','2017-03-18','2017-12-20',1,8,4,3);
/*!40000 ALTER TABLE `campeonato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campeonato_equipe`
--

DROP TABLE IF EXISTS `campeonato_equipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campeonato_equipe` (
  `Campeonato_Id` bigint(20) NOT NULL,
  `Equipe_Id` bigint(20) NOT NULL,
  `Pontos_Cup` int(11) NOT NULL DEFAULT '0',
  `Posicao` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Campeonato_Id`,`Equipe_Id`),
  KEY `FK_CAMPEONATO_EQUIPE` (`Equipe_Id`),
  CONSTRAINT `FK_CAMPEONATO_EQUIPE` FOREIGN KEY (`Equipe_Id`) REFERENCES `equipe` (`Id`),
  CONSTRAINT `FK_EQUIPE_CAMPEONATO` FOREIGN KEY (`Campeonato_Id`) REFERENCES `campeonato` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campeonato_equipe`
--

LOCK TABLES `campeonato_equipe` WRITE;
/*!40000 ALTER TABLE `campeonato_equipe` DISABLE KEYS */;
INSERT INTO `campeonato_equipe` VALUES (1,1,334,2),(1,2,356,1),(1,3,260,5),(1,4,286,4),(1,5,325,3),(1,6,21,6),(2,1,52,4),(2,2,53,3),(2,3,56,2),(2,4,62,1),(2,5,40,6),(2,6,0,8),(2,7,50,5),(2,8,0,7);
/*!40000 ALTER TABLE `campeonato_equipe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campeonato_pontuacao`
--

DROP TABLE IF EXISTS `campeonato_pontuacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campeonato_pontuacao` (
  `Campeonato_Id` bigint(20) NOT NULL,
  `Posicao` int(11) NOT NULL DEFAULT '0',
  `Pontos` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Campeonato_Id`,`Posicao`),
  CONSTRAINT `FK_CAMPEONATO_PONTUACAO` FOREIGN KEY (`Campeonato_Id`) REFERENCES `campeonato` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campeonato_pontuacao`
--

LOCK TABLES `campeonato_pontuacao` WRITE;
/*!40000 ALTER TABLE `campeonato_pontuacao` DISABLE KEYS */;
INSERT INTO `campeonato_pontuacao` VALUES (1,1,30),(1,2,27),(1,3,25),(1,4,23),(1,5,21),(1,6,20),(1,7,19),(1,8,18),(1,9,17),(1,10,16),(1,11,15),(1,12,14),(1,13,13),(1,14,12),(1,15,11),(1,16,10),(1,17,9),(1,18,8),(1,19,7),(1,20,6),(1,21,5),(1,22,4),(1,23,3),(1,24,2),(1,25,1),(1,26,1),(1,27,1),(1,28,1),(1,29,1),(1,30,1),(2,1,30),(2,2,27),(2,3,25),(2,4,23),(2,5,21),(2,6,20),(2,7,19),(2,8,18),(2,9,17),(2,10,16),(2,11,15),(2,12,14),(2,13,13),(2,14,12),(2,15,11),(2,16,10),(2,17,9),(2,18,8),(2,19,7),(2,20,6),(2,21,5),(2,22,4),(2,23,3),(2,24,2),(2,25,1),(2,26,1),(2,27,1),(2,28,1),(2,29,1),(2,30,1);
/*!40000 ALTER TABLE `campeonato_pontuacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(255) COLLATE utf8_bin NOT NULL,
  `Campeonato_Id` bigint(20) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK_CATEGORIA_CAMPEONATO` (`Campeonato_Id`),
  CONSTRAINT `FK_CATEGORIA_CAMPEONATO` FOREIGN KEY (`Campeonato_Id`) REFERENCES `campeonato` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Light',1),(2,'Semi-B',1),(3,'Semi-A',1),(4,'Pró',1),(5,'Light',2),(6,'Semi-Pró',2),(7,'Pró',2),(8,'Super-Pró',2);
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `classificacao_geral_categoria`
--

DROP TABLE IF EXISTS `classificacao_geral_categoria`;
/*!50001 DROP VIEW IF EXISTS `classificacao_geral_categoria`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `classificacao_geral_categoria` AS SELECT 
 1 AS `Campeonato_Id`,
 1 AS `Campeonato`,
 1 AS `Piloto_Categoria_Id`,
 1 AS `Equipe_Id`,
 1 AS `Equipe`,
 1 AS `Categoria_Id`,
 1 AS `Categoria`,
 1 AS `Piloto_id`,
 1 AS `Piloto`,
 1 AS `posicao_categoria`,
 1 AS `Total_Pontos_Etapas`,
 1 AS `Pontos_Extra_Particip`,
 1 AS `Descarte`,
 1 AS `Total_Pontos_Cup`,
 1 AS `posicao_geral`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `classificacao_geral_equipe`
--

DROP TABLE IF EXISTS `classificacao_geral_equipe`;
/*!50001 DROP VIEW IF EXISTS `classificacao_geral_equipe`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `classificacao_geral_equipe` AS SELECT 
 1 AS `Campeonato_Id`,
 1 AS `Campeonato`,
 1 AS `Equipe_Id`,
 1 AS `Equipe`,
 1 AS `Posicao`,
 1 AS `Pontos_Cup`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `classificacao_geral_etapa`
--

DROP TABLE IF EXISTS `classificacao_geral_etapa`;
/*!50001 DROP VIEW IF EXISTS `classificacao_geral_etapa`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `classificacao_geral_etapa` AS SELECT 
 1 AS `Campeonato_Id`,
 1 AS `Campeonato`,
 1 AS `Etapa_Id`,
 1 AS `Etapa`,
 1 AS `Categoria_Id`,
 1 AS `Categoria`,
 1 AS `Equipe_Id`,
 1 AS `Equipe`,
 1 AS `Equipe_Piloto_Id`,
 1 AS `Piloto_Id`,
 1 AS `Piloto`,
 1 AS `Voltas`,
 1 AS `Zona`,
 1 AS `Voltas_Penalidade`,
 1 AS `Pontos`,
 1 AS `Ponto_Extra`,
 1 AS `Total`,
 1 AS `Posicao_Categoria`,
 1 AS `Posicao_Categoria_Cup`,
 1 AS `Pontos_Cup`,
 1 AS `Situacao`,
 1 AS `Posicao_Geral`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `equipe`
--

DROP TABLE IF EXISTS `equipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipe` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(255) COLLATE utf8_bin NOT NULL,
  `Responsavel` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `Telefone` varchar(12) COLLATE utf8_bin DEFAULT NULL,
  `Endereco` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `Cidade` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipe`
--

LOCK TABLES `equipe` WRITE;
/*!40000 ALTER TABLE `equipe` DISABLE KEYS */;
INSERT INTO `equipe` VALUES (1,'Espaço Formula','Fernando','19 2121-2121','Chácara','Piracicaba'),(2,'DG Slot','Del','11 2121-2121','Rua Venâncio Aires 456','São Paulo'),(3,'Slot Club São Paulo','Jeferson','11 2121-2121','Rua ','São Paulo'),(4,'Slot Car Jundiaí','Fábio','11 2121-2121','Rua ','Jundiaí'),(5,'Rato Raceway','Rato','19 2121-2121','Rua ','Mogi Mirim'),(6,'Monza','Toninho','11 2121-2121','Rua ','São Paulo'),(7,'Rocco Racer','Rocco','11 2121-2121','Rua ','Valinhos'),(8,'Puts Slot Racer','Puts','11 2121-2121','Rua ','Verificar');
/*!40000 ALTER TABLE `equipe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipe_piloto`
--

DROP TABLE IF EXISTS `equipe_piloto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipe_piloto` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Equipe_Id` bigint(20) NOT NULL,
  `Piloto_Id` bigint(20) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK_EQUIPE_PILOTO` (`Equipe_Id`),
  KEY `FK_PILOTO_EQUIPE` (`Piloto_Id`),
  CONSTRAINT `FK_EQUIPE_PILOTO` FOREIGN KEY (`Equipe_Id`) REFERENCES `equipe` (`Id`),
  CONSTRAINT `FK_PILOTO_EQUIPE` FOREIGN KEY (`Piloto_Id`) REFERENCES `piloto` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipe_piloto`
--

LOCK TABLES `equipe_piloto` WRITE;
/*!40000 ALTER TABLE `equipe_piloto` DISABLE KEYS */;
INSERT INTO `equipe_piloto` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,2,11),(12,2,12),(13,2,13),(14,2,14),(15,2,15),(16,2,16),(17,2,17),(18,2,18),(19,2,19),(20,2,20),(21,2,21),(22,2,22),(23,3,23),(24,3,24),(25,3,25),(26,3,26),(27,3,27),(28,3,28),(29,3,29),(30,3,30),(31,4,31),(32,4,32),(33,4,33),(34,4,34),(35,5,35),(36,5,36),(37,5,37),(38,5,38),(39,5,39),(40,5,40),(41,5,41),(42,5,42),(43,6,43),(44,7,44),(45,7,45),(46,4,46),(47,4,47),(48,4,48),(49,4,49),(50,4,50),(51,4,51);
/*!40000 ALTER TABLE `equipe_piloto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `etapa`
--

DROP TABLE IF EXISTS `etapa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `etapa` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Campeonato_Id` bigint(20) NOT NULL,
  `Equipe_Id` bigint(20) DEFAULT NULL,
  `Data` date DEFAULT NULL,
  `Nome` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK_ETAPA_CAMPEONATO` (`Campeonato_Id`),
  CONSTRAINT `FK_ETAPA_CAMPEONATO` FOREIGN KEY (`Campeonato_Id`) REFERENCES `campeonato` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etapa`
--

LOCK TABLES `etapa` WRITE;
/*!40000 ALTER TABLE `etapa` DISABLE KEYS */;
INSERT INTO `etapa` VALUES (1,1,3,'2017-02-27','Slot Club São Paulo'),(2,1,2,'2017-04-16','DG Slot Racer'),(3,1,5,'2017-05-14','Rato Raceway'),(4,1,4,'2017-07-16','Slot Club Jundiaí'),(5,1,1,'2017-09-17','Espaço Formula'),(6,1,6,'2017-11-26','Monza'),(7,2,4,'2017-03-18','Slot Club Jundiaí'),(8,2,2,'2017-04-01','DG Slot Racer');
/*!40000 ALTER TABLE `etapa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piloto`
--

DROP TABLE IF EXISTS `piloto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piloto` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(255) COLLATE utf8_bin NOT NULL,
  `Telefone` varchar(13) COLLATE utf8_bin DEFAULT NULL,
  `cpf` varchar(14) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `cpf` (`cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piloto`
--

LOCK TABLES `piloto` WRITE;
/*!40000 ALTER TABLE `piloto` DISABLE KEYS */;
INSERT INTO `piloto` VALUES (1,'Thiago Ito','19 99878-4044','344.412.388-43'),(2,'Fernando Schwlle','19 90000-0000','000.000.000-00'),(3,'Renata Ito','11 99810-2010','100.000.000-00'),(4,'Gelson','11 90000-0000','200.000.000-00'),(5,'Ricardo','11 90000-0000','300.000.000-00'),(6,'Emerson','11 90000-0000','300.100.000-00'),(7,'João Victor','11 90000-0000','300.200.000-00'),(8,'Balinha','11 90000-0000','300.300.000-00'),(9,'Mau Stock','11 90000-0000','300.400.000-00'),(10,'Radar','11 90000-0000','300.410.000-00'),(11,'Del','11 90000-0000','400.000.000-00'),(12,'Cassiano','11 90000-0000','500.000.000-00'),(13,'Felipe','11 90000-0000','060.000.000-00'),(14,'Zé Horn','11 90000-0000','090.000.000-00'),(15,'Giba','11 90000-0000','140.000.000-00'),(16,'Edu','11 90000-0000','150.000.000-00'),(17,'Tilt','11 90000-0000','160.000.000-00'),(18,'Aloísio','11 90000-0000','170.000.000-00'),(19,'Dida','11 90000-0000','170.500.000-00'),(20,'Reno','11 90000-0000','170.600.000-00'),(21,'Cid','11 90000-0000','170.700.000-00'),(22,'João','11 90000-0000','170.900.000-00'),(23,'Jeff','11 90000-0000','130.000.000-00'),(24,'Joel','11 90000-0000','180.000.000-00'),(25,'Marcelo','11 90000-0000','190.000.000-00'),(26,'Pezão','11 90000-0000','190.120.000-00'),(27,'Simões','11 90000-0000','190.130.000-00'),(28,'Fernando','11 90000-0000','190.250.000-00'),(29,'Victor','11 90000-0000','190.260.000-00'),(30,'Charles','11 90000-0000','190.270.000-00'),(31,'Fábio','11 90000-0000','141.000.000-00'),(32,'Beto','11 90000-0000','142.000.000-00'),(33,'Barbosa','11 90000-0000','143.000.000-00'),(34,'Augusto','11 90000-0000','143.300.000-00'),(35,'Rato','11 90000-0000','143.310.000-00'),(36,'Neto','11 90000-0000','143.320.000-00'),(37,'Márcio','11 90000-0000','143.330.000-00'),(38,'Bernardi','11 90000-0000','143.340.000-00'),(39,'Júlio','11 90000-0000','143.350.000-00'),(40,'Dias','11 90000-0000','143.360.000-00'),(41,'Gerson','11 90000-0000','143.370.000-00'),(42,'Evaldo','11 90000-0000','143.380.000-00'),(43,'P. Santana','11 90000-0000','143.390.000-00'),(44,'Eduardo Traldi','11 90000-0000','143.391.200-00'),(45,'Rocco','11 90000-0000','143.300.140-00'),(46,'Atílio','11 90000-0000','143.300.110-00'),(47,'Marquinhos','11 90000-0000','143.300.120-00'),(48,'Plínio','11 90000-0000','143.300.130-00'),(49,'Rinaldo','11 90000-0000','143.300.160-00'),(50,'Bernardi','11 90000-0000','143.300.150-00'),(51,'Rodrigo','11 90000-0000','143.300.170-00');
/*!40000 ALTER TABLE `piloto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piloto_categoria`
--

DROP TABLE IF EXISTS `piloto_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piloto_categoria` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Equipe_Piloto_Id` bigint(20) NOT NULL,
  `Categoria_Id` bigint(20) NOT NULL,
  `Situacao` bigint(20) NOT NULL DEFAULT '1',
  `Pontos_Categoria` bigint(20) NOT NULL DEFAULT '0',
  `Descarte` bigint(20) NOT NULL DEFAULT '0',
  `Pontos_Extra_Particip` bigint(20) NOT NULL DEFAULT '0',
  `Pontos_Cup` bigint(20) NOT NULL DEFAULT '0',
  `Posicao_Categoria` bigint(20) NOT NULL DEFAULT '0',
  `Posicao_Geral` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`),
  KEY `FK_PILOTO_CATEGORIA` (`Equipe_Piloto_Id`),
  KEY `FK_CATEG_PILOTO_CATEGORIA` (`Categoria_Id`),
  CONSTRAINT `FK_CATEG_PILOTO_CATEGORIA` FOREIGN KEY (`Categoria_Id`) REFERENCES `categoria` (`Id`),
  CONSTRAINT `FK_PILOTO_CATEGORIA` FOREIGN KEY (`Equipe_Piloto_Id`) REFERENCES `equipe_piloto` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piloto_categoria`
--

LOCK TABLES `piloto_categoria` WRITE;
/*!40000 ALTER TABLE `piloto_categoria` DISABLE KEYS */;
INSERT INTO `piloto_categoria` VALUES (1,3,1,1,155,23,18,150,3,9),(2,6,1,0,47,0,0,47,5,20),(3,7,1,0,24,0,0,24,7,27),(4,14,1,1,139,0,15,154,2,6),(5,16,1,1,143,0,15,158,1,4),(6,39,1,0,44,0,0,44,6,21),(7,40,1,0,21,0,0,21,9,31),(8,41,1,0,20,0,0,20,10,36),(9,42,1,0,21,0,0,21,8,32),(10,26,1,1,107,0,12,119,4,16),(11,4,2,1,169,25,18,162,1,2),(12,5,2,1,117,0,15,132,5,15),(13,8,2,0,20,0,0,20,7,34),(14,15,2,1,138,0,15,153,2,8),(15,19,2,0,20,0,0,20,8,35),(16,33,2,1,153,23,18,148,3,10),(17,27,2,0,42,0,0,42,6,23),(18,38,2,1,141,21,18,138,4,13),(19,1,3,1,160,23,18,155,2,5),(20,35,3,1,168,26,18,160,1,3),(21,36,3,1,150,21,18,147,3,11),(22,37,3,0,39,0,0,39,6,24),(23,44,3,0,0,0,0,0,13,42),(24,31,3,1,97,0,12,109,5,18),(25,32,3,0,21,0,0,21,10,33),(26,34,3,1,124,0,15,139,4,12),(27,20,3,0,38,0,0,38,7,25),(28,21,3,0,19,0,0,19,11,39),(29,25,3,0,38,0,0,38,8,26),(30,28,3,0,21,0,0,21,9,30),(31,29,3,0,17,0,0,17,12,41),(32,2,4,1,159,23,18,154,2,7),(33,11,4,1,175,25,18,168,1,1),(34,24,4,1,121,0,15,136,3,14),(35,22,4,1,102,0,12,114,4,17),(36,23,4,1,95,0,12,107,5,19),(37,18,4,0,43,0,0,43,6,22),(38,12,4,0,19,0,0,19,11,40),(39,9,4,0,22,0,0,22,7,28),(40,30,4,0,20,0,0,20,9,37),(41,10,4,0,20,0,0,20,10,38),(42,43,4,0,21,0,0,21,8,29),(43,39,5,1,20,0,0,20,7,20),(44,47,5,1,31,0,0,31,1,3),(45,48,5,1,28,0,0,28,2,7),(46,45,5,1,26,0,0,26,3,10),(47,49,5,1,24,0,0,24,4,15),(48,51,5,1,22,0,0,22,5,19),(49,17,5,1,20,0,0,20,6,24),(50,33,6,1,30,0,0,30,1,4),(51,46,6,1,28,0,0,28,2,5),(52,29,6,1,25,0,0,25,3,11),(53,44,6,1,24,0,0,24,4,13),(54,5,6,1,22,0,0,22,5,17),(55,14,6,1,20,0,0,20,6,21),(56,38,6,1,19,0,0,19,7,25),(57,32,6,1,18,0,0,18,8,27),(58,31,7,1,31,0,0,31,1,1),(59,4,7,1,28,0,0,28,2,6),(60,15,7,1,26,0,0,26,3,9),(61,25,7,1,23,0,0,23,4,16),(62,1,7,1,22,0,0,22,5,18),(63,35,7,1,20,0,0,20,6,22),(64,24,7,1,20,0,0,20,7,23),(65,36,7,1,18,0,0,18,8,28),(66,34,7,1,18,0,0,18,9,26),(67,23,8,1,31,0,0,31,1,2),(68,13,8,1,27,0,0,27,2,8),(69,18,8,1,25,0,0,25,3,12),(70,2,8,1,24,0,0,24,4,14);
/*!40000 ALTER TABLE `piloto_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resultado_etapa`
--

DROP TABLE IF EXISTS `resultado_etapa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resultado_etapa` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Etapa_Id` bigint(20) NOT NULL,
  `Piloto_Categoria_Id` bigint(20) NOT NULL,
  `Voltas` int(11) NOT NULL DEFAULT '0',
  `Voltas_Cup` int(11) NOT NULL DEFAULT '0',
  `Voltas_Penalidade` int(11) NOT NULL DEFAULT '0',
  `Zona` int(11) NOT NULL DEFAULT '0',
  `Pontos` int(11) DEFAULT '0',
  `Pontos_Cup` int(11) DEFAULT '0',
  `Ponto_Extra` int(11) DEFAULT '0',
  `Total` int(11) DEFAULT '0',
  `Posicao_Geral` int(11) DEFAULT '0',
  `Posicao_Categoria` int(11) DEFAULT '0',
  `Posicao_Categoria_Cup` int(11) DEFAULT '0',
  PRIMARY KEY (`Id`),
  KEY `FK_PILOTO_RESULTADO` (`Piloto_Categoria_Id`),
  KEY `FK_ETAPA_RESULTADO` (`Etapa_Id`),
  CONSTRAINT `FK_ETAPA_RESULTADO` FOREIGN KEY (`Etapa_Id`) REFERENCES `etapa` (`Id`),
  CONSTRAINT `FK_PILOTO_RESULTADO` FOREIGN KEY (`Piloto_Categoria_Id`) REFERENCES `piloto_categoria` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resultado_etapa`
--

LOCK TABLES `resultado_etapa` WRITE;
/*!40000 ALTER TABLE `resultado_etapa` DISABLE KEYS */;
INSERT INTO `resultado_etapa` VALUES (1,1,33,251,251,0,0,30,30,0,30,1,1,1),(2,1,32,241,241,0,0,23,26,1,24,4,4,3),(3,1,11,230,230,0,9,30,31,1,31,11,1,1),(4,1,20,239,239,0,0,30,31,1,31,5,1,1),(5,1,19,230,230,0,24,21,25,0,21,10,5,3),(6,1,21,219,219,0,0,17,21,0,17,19,9,5),(7,1,16,214,214,0,0,23,25,0,23,20,4,3),(8,1,35,235,235,0,42,21,24,1,22,6,5,4),(9,1,26,224,224,0,0,19,23,0,19,17,7,4),(10,1,18,194,194,0,0,21,23,0,21,22,5,4),(11,1,12,225,225,0,0,25,27,0,25,16,3,2),(12,1,34,244,244,0,0,25,27,0,25,3,3,2),(13,1,24,231,231,0,0,23,28,1,24,9,4,2),(14,1,36,226,226,0,40,20,21,0,20,14,6,5),(15,1,1,175,175,0,0,25,27,0,25,24,3,2),(16,1,10,227,227,0,0,30,31,1,31,13,1,1),(17,1,27,232,0,0,0,25,18,0,25,8,3,8),(18,1,40,246,0,0,0,27,20,0,27,2,2,6),(19,1,29,235,0,0,12,27,19,0,27,7,2,7),(20,1,17,230,0,0,4,27,22,1,28,12,2,5),(21,1,30,226,0,0,29,20,21,1,21,15,6,6),(22,1,2,199,0,0,0,27,25,0,27,21,2,3),(23,1,31,222,0,0,0,18,17,0,18,18,8,9),(24,1,15,186,0,0,0,20,20,0,20,23,6,6),(25,2,33,270,270,0,0,27,30,0,27,2,2,1),(26,2,32,254,254,0,77,21,23,0,21,8,5,4),(27,2,11,242,242,0,0,25,25,0,25,15,3,3),(28,2,20,254,254,0,1,25,28,1,26,9,3,2),(29,2,14,269,269,0,18,30,31,1,31,4,1,1),(30,2,19,246,246,0,0,20,23,0,20,14,6,4),(31,2,21,269,269,0,74,30,31,1,31,3,1,1),(32,2,16,247,247,0,0,27,27,0,27,13,2,2),(33,2,35,258,258,0,0,23,26,1,24,7,4,3),(34,2,26,235,235,0,0,19,21,0,19,17,7,5),(35,2,5,253,253,0,0,30,31,1,31,10,1,1),(36,2,18,227,227,0,71,23,23,0,23,18,4,4),(37,2,34,71,71,0,0,20,21,0,20,22,6,5),(38,2,24,248,248,0,0,21,25,0,21,12,5,3),(39,2,36,265,265,0,0,25,27,0,25,5,3,2),(40,2,4,226,226,0,77,25,25,0,25,19,3,3),(41,2,37,271,0,0,0,30,20,0,30,1,1,6),(42,2,1,201,201,0,0,23,23,0,23,20,4,4),(43,2,10,241,241,0,0,27,27,0,27,16,2,2),(44,2,27,252,0,0,0,23,20,0,23,11,4,6),(45,2,29,71,0,0,0,18,19,0,18,23,8,7),(46,2,28,261,0,0,0,27,19,1,28,6,2,8),(47,2,2,200,0,0,0,21,22,1,22,21,5,5),(48,3,33,285,285,0,0,30,30,0,30,2,1,1),(49,3,32,246,246,0,0,25,25,0,25,17,3,3),(50,3,11,275,275,0,0,27,28,1,28,6,2,2),(51,3,20,288,288,0,0,30,30,0,30,1,1,1),(52,3,14,270,270,0,0,25,25,0,25,8,3,3),(53,3,19,269,269,0,0,23,24,1,24,9,4,4),(54,3,21,283,283,0,0,27,27,0,27,3,2,2),(55,3,16,266,266,0,0,23,23,0,23,10,4,4),(56,3,35,272,272,0,0,27,27,0,27,7,2,2),(57,3,26,279,279,0,0,25,25,0,25,5,3,3),(58,3,5,262,262,0,10,25,31,1,26,15,3,1),(59,3,18,280,280,0,0,30,30,0,30,4,1,1),(60,3,12,262,262,0,47,21,21,0,21,13,5,5),(61,3,24,265,265,0,9,21,21,0,21,12,5,5),(62,3,4,227,227,0,0,21,27,0,21,18,5,2),(63,3,1,222,222,0,0,20,26,1,21,19,6,3),(64,3,22,130,0,0,0,20,20,0,20,20,6,6),(65,3,6,265,0,0,41,30,23,0,30,11,1,4),(66,3,7,262,0,0,25,27,21,0,27,14,2,5),(67,3,8,254,0,0,0,23,20,0,23,16,4,6),(68,4,33,251,251,0,0,30,30,0,30,1,1,1),(69,4,32,250,250,0,0,27,27,0,27,2,2,2),(70,4,11,237,237,0,0,27,28,1,28,9,2,2),(71,4,20,233,233,0,0,23,26,1,24,10,4,3),(72,4,14,232,232,0,0,25,25,0,25,11,3,3),(73,4,19,239,239,0,0,25,28,1,26,7,3,2),(74,4,21,228,228,0,42,19,21,0,19,14,7,5),(75,4,16,241,241,0,20,30,30,0,30,5,1,1),(76,4,35,240,240,0,0,25,25,0,25,6,3,3),(77,4,26,241,241,0,24,27,30,0,27,4,2,1),(78,4,5,224,224,0,10,27,28,1,28,19,2,2),(79,4,18,227,227,0,0,23,23,0,23,16,4,4),(80,4,12,226,226,0,0,21,21,0,21,17,5,5),(81,4,34,224,224,0,31,21,21,0,21,18,5,5),(82,4,24,231,231,0,0,21,23,0,21,12,5,4),(83,4,36,238,238,0,0,23,24,1,24,8,4,4),(84,4,4,228,228,0,10,30,31,1,31,15,1,1),(85,4,1,220,220,0,0,25,25,0,25,20,3,3),(86,4,10,211,211,0,0,23,24,1,24,21,4,4),(87,4,25,243,0,0,0,30,21,1,31,3,1,6),(88,4,22,229,0,0,0,20,19,0,20,13,6,7),(89,4,6,204,0,0,0,21,21,0,21,22,5,5),(90,5,33,233,233,0,0,20,25,0,20,17,6,3),(91,5,32,283,283,0,0,23,31,1,24,7,4,1),(92,5,11,297,297,0,0,30,30,0,30,2,1,1),(93,5,20,119,119,0,0,25,26,1,26,20,3,3),(94,5,14,279,279,0,0,27,27,0,27,10,2,2),(95,5,19,284,284,0,0,30,30,0,30,6,1,1),(96,5,21,280,280,0,0,27,27,0,27,9,2,2),(97,5,16,263,263,0,0,23,23,0,23,13,4,4),(98,5,5,285,285,0,0,30,30,0,30,5,1,1),(99,5,18,260,260,0,0,20,21,0,20,15,6,5),(100,5,12,278,278,0,0,25,25,0,25,11,3,3),(101,5,34,258,258,0,0,21,27,0,21,16,5,2),(102,5,36,125,125,0,0,19,23,0,19,19,7,4),(103,5,4,226,226,0,0,23,25,0,23,18,4,3),(104,5,1,282,282,0,0,27,27,0,27,8,2,2),(105,5,38,311,0,0,0,30,19,0,30,1,1,7),(106,5,39,290,0,0,0,27,22,1,28,3,2,5),(107,5,41,287,0,0,0,25,20,0,25,4,3,6),(108,5,3,265,0,0,0,25,24,1,26,12,3,4),(109,5,13,262,0,0,0,21,20,0,21,14,5,6),(110,6,33,300,300,0,0,30,30,0,30,1,1,1),(111,6,32,296,296,0,67,27,27,0,27,2,2,2),(112,6,11,289,289,0,72,27,27,0,27,7,2,2),(113,6,20,274,274,0,0,27,27,0,27,15,2,2),(114,6,14,296,296,0,18,30,30,0,30,4,1,1),(115,6,19,294,294,0,35,30,30,0,30,6,1,1),(116,6,21,265,265,0,0,23,23,0,23,18,4,4),(117,6,16,289,289,0,27,25,25,0,25,8,3,3),(118,6,26,273,273,0,0,25,25,0,25,16,3,3),(119,6,5,269,269,0,0,23,23,0,23,17,4,4),(120,6,18,275,275,0,28,21,21,0,21,14,5,5),(121,6,12,280,280,0,0,23,23,0,23,11,4,4),(122,6,34,277,277,0,0,21,25,0,21,12,5,3),(123,6,4,294,294,0,49,30,31,1,31,5,1,1),(124,6,37,296,0,0,55,25,23,0,25,3,3,4),(125,6,1,288,288,0,0,27,27,0,27,9,2,2),(126,6,10,275,275,0,64,25,25,0,25,13,3,3),(127,6,17,259,0,0,0,20,20,0,20,19,6,6),(128,6,42,284,0,0,0,23,21,0,23,10,4,5),(129,6,9,238,0,0,0,21,21,0,21,20,5,5),(130,7,50,242,242,0,0,30,30,0,30,1,1,1),(131,7,58,241,241,0,0,30,31,1,31,2,1,1),(132,7,59,235,235,0,0,27,28,1,28,3,2,2),(133,7,67,233,233,0,0,30,31,1,31,4,1,1),(134,7,60,231,231,0,0,25,26,1,26,5,3,3),(135,7,51,230,230,0,10,27,28,1,28,6,2,2),(136,7,61,230,230,0,8,23,23,0,23,7,4,4),(137,7,52,229,229,0,0,25,25,0,25,8,3,3),(138,7,62,227,227,0,0,21,22,1,22,9,5,5),(139,7,63,226,226,0,31,20,20,0,20,10,6,6),(140,7,68,226,226,0,4,27,27,0,27,11,2,2),(141,7,53,225,225,0,0,23,24,1,24,12,4,4),(142,7,44,222,222,0,41,30,31,1,31,13,1,1),(143,7,64,222,222,0,23,19,20,1,20,14,7,7),(144,7,45,220,220,0,0,27,28,1,28,15,2,2),(145,7,69,219,219,0,33,25,25,0,25,16,3,3),(146,7,54,219,219,0,13,21,22,1,22,17,5,5),(147,7,70,219,219,0,4,23,24,1,24,18,4,4),(148,7,55,218,218,0,0,20,20,0,20,19,6,6),(149,7,46,215,215,0,0,25,26,1,26,20,3,3),(150,7,56,214,214,0,0,19,19,0,19,21,7,7),(151,7,47,210,210,0,0,23,24,1,24,22,4,4),(152,7,48,209,209,0,39,21,22,1,22,23,5,5),(153,7,65,209,209,0,16,18,18,0,18,24,8,8),(154,7,57,204,204,0,0,18,18,0,18,25,8,8),(155,7,43,196,196,0,0,20,20,0,20,26,6,6),(156,7,49,186,186,0,0,19,20,1,20,27,7,7),(157,7,66,148,148,0,0,17,18,1,18,28,9,9);
/*!40000 ALTER TABLE `resultado_etapa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'swtslotcup_dev'
--
/*!50003 DROP PROCEDURE IF EXISTS `atualizar_classificacao_campeonato` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `atualizar_classificacao_campeonato`(IN _campeonato_id BIGINT, IN _etapa_id BIGINT)
BEGIN

	/*
     * Atualiza classificação geral do campeonato, posição por etapa, posição no campeonato e classificação por equipe
     */

	DECLARE _quantidade_etapas INT;
    DECLARE _participacao_minima INT; 
    DECLARE _etapas_realizadas INT;
    DECLARE _pontos_extra INT;

	/*DECLARE EXIT HANDLER FOR SQLEXCEPTION ROLLBACK;
	DECLARE EXIT HANDLER FOR SQLWARNING ROLLBACK;

	START TRANSACTION;*/
    
    SET _etapas_realizadas   = (SELECT COUNT(DISTINCT re.etapa_id) FROM resultado_etapa re LEFT OUTER JOIN etapa e ON re.etapa_id = e.id WHERE e.Campeonato_Id = _campeonato_id);
    SET _quantidade_etapas   = (select Quantidade_Etapas        from campeonato where id = _campeonato_id);
    SET _participacao_minima = (select Participacao_minima      from campeonato where id = _campeonato_id);
    
    -- Verifica se deve atualizar a classificação de todas as etapas ou apenas a informada
    IF _etapa_id = 0 THEN
		CALL atualizar_etapa_classificacao_cup(_campeonato_id);
	ELSE
		CALL atualizar_etapa_classificacao(_campeonato_id, _etapa_id);
    END IF;
    
    -- Iguala voltas na etapa com voltas consideradas para o campeonato
	update 
		resultado_etapa re 
		inner join etapa e on re.Etapa_Id = e.id
        inner join piloto_categoria pc on re.Piloto_Categoria_Id = pc.id
    set 
		re.Voltas_Cup = re.Voltas,
		re.Pontos_Cup = 0,
        re.Posicao_Categoria_Cup = 0
    where 
		e.Campeonato_Id = _campeonato_id;
        
	-- Desclassifica pilotos
    IF _etapas_realizadas > _participacao_minima THEN
		
        -- Desclassifica os pilotos que não participaram do mínimo para o campeonato
        UPDATE 
			piloto_categoria as pc
			inner join (select
							pc.Id as id,
							COALESCE(count(re.id),0) as Participacoes
						from 
							piloto_categoria pc
							left outer join resultado_etapa re on pc.Id = re.Piloto_Categoria_Id
							left outer join categoria c on pc.Categoria_Id = c.id
						where 
							c.Campeonato_Id = _campeonato_id 
						group by
							pc.Id
						HAVING Participacoes < _participacao_minima) as src on pc.Id = src.id
            
		SET 
			situacao = 0;
            
    END IF ;
        
	/* 
     * Zera as voltas consideradas para o campeonato para os pilotos desclassificados
	 */ 
    update 
		resultado_etapa re 
		inner join etapa e on re.Etapa_Id = e.id
        inner join piloto_categoria pc on re.Piloto_Categoria_Id = pc.id
    set 
		re.Voltas_Cup = 0
    where 
		e.Campeonato_Id = _campeonato_id and
        pc.Situacao = 0;
    
    /* 
	 * Atualiza posicao e pontos a considerar para o campeonato, os desclassificados nesse momento já estão com as voltas zeradas.
     */
	CALL atualizar_etapa_campeonato(_campeonato_id);
    
    /*
     * Final de Campeonato
     * Atualizar pontuação de Descarte
     * Atualizar pontuação extra por participar de todas as etapas
	 */
    IF _etapas_realizadas = _quantidade_etapas THEN
    
		-- Zera ponto de descarte
		UPDATE 
			piloto_categoria pc 
			inner join categoria c on pc.Categoria_Id = c.Id 
		SET 
			pc.descarte = 0,
            pc.Pontos_Extra_Particip = 0
		where 
			c.Campeonato_Id = _campeonato_id ; 

		-- Atualiza ponto de descarte com menor pontuação no campeonato
		UPDATE 
			piloto_categoria as pc
			inner join (select
						pc.Id as Piloto_Categoria_Id,
						COALESCE(MIN(re.Pontos_Cup), 0) as Descarte,
						COALESCE(COUNT(re.Id), 0) as Participacoes
					from 
						piloto_categoria pc
						left outer join resultado_etapa re on pc.Id = re.Piloto_Categoria_Id
						left outer join categoria c on pc.Categoria_Id = c.id
					where 
						c.Campeonato_Id = _campeonato_id 
					group by
						pc.Id
					having Participacoes = _quantidade_etapas) as src on pc.Id = src.Piloto_Categoria_Id
		SET 
			pc.Descarte = src.Descarte;
    
		-- Pilotos que participaram do minimo de etapas ganham bonus de 'Bonus_Participacao_Etapa' pontos por etapas participadas
        SET _pontos_extra = (select Bonus_Participacao_Etapa from campeonato where id = _campeonato_id);
		UPDATE 
			piloto_categoria as pc
			inner join (select
							pc.Id as Piloto_Categoria_Id,
							COALESCE(COUNT(re.Id), 0) as Participacoes,
							(COALESCE(COUNT(re.Id), 0) * _pontos_extra) as Pontos_Extra_Particip
						from 
							piloto_categoria pc
							left outer join resultado_etapa re on pc.Id = re.Piloto_Categoria_Id
							left outer join categoria c on pc.Categoria_Id = c.id
						where 
							c.Campeonato_Id = _campeonato_id
						group by
							pc.Id
						having Participacoes >= _participacao_minima) as src on pc.Id = src.Piloto_Categoria_Id
		SET 
			pc.Pontos_Extra_Particip = src.Pontos_Extra_Particip;
            
    END IF;
    
    /*
     * Totalizar pontuação dos pilotos no campeonato
	 */
	UPDATE piloto_categoria pc inner join categoria c on pc.Categoria_Id = c.Id 
	SET pc.Pontos_Categoria = 0, pc.Pontos_Cup = 0
	where c.Campeonato_Id = _campeonato_id;
    
	UPDATE 
		piloto_categoria as pc
		inner join (select
						pc.Id as Piloto_Categoria_Id,
						COALESCE(SUM(re.Pontos_Cup),0) as Total_Pontos_Cup, 
                        COALESCE(pc.Pontos_Extra_Particip,0) as Pontos_Extra_Particip
					from 
						piloto_categoria pc
						left outer join resultado_etapa re on pc.Id = re.Piloto_Categoria_Id
						left outer join categoria c on pc.Categoria_Id = c.id
					where 
						c.Campeonato_Id = _campeonato_id
					group by
						pc.Id) as src on pc.Id = src.Piloto_Categoria_Id
		
	SET 
		pc.Pontos_Categoria = src.Total_Pontos_Cup,
        pc.Pontos_Cup = (src.Total_Pontos_Cup + src.Pontos_Extra_Particip - pc.Descarte);
    
    /*
     * Atualizar posição do piloto no campeonato e na categoria
	 */
    CALL atualizar_classificacao_piloto(_campeonato_id);
    
    /*
     * Atualizar pontuação e posição da equipe no campeonato
	 */
    CALL atualizar_geral_equipe(_campeonato_id);
    
    -- COMMIT;
        
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `atualizar_classificacao_piloto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `atualizar_classificacao_piloto`(IN _campeonato_id BIGINT)
BEGIN

	/* 
	 * Atualiza posicao geral e por categoria dos pilotos
     */

    DECLARE categoria INTEGER;
	DECLARE v_finished INTEGER DEFAULT 0;
    
	DECLARE cur CURSOR FOR 
		SELECT 
			c.Id
		FROM 
			categoria c
		WHERE
			c.Campeonato_Id = _campeonato_id;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_finished = 1;
    
    OPEN cur;
    
		loopCur: LOOP
    
			FETCH cur INTO categoria;
            
			IF v_finished = 1 THEN 
				LEAVE loopCur;
			END IF;
            
            UPDATE 
				piloto_categoria AS pc
				INNER JOIN (
					SELECT @rn:=@rn+1 AS Posicao, t1.id
					FROM (
						SELECT pc.id, COUNT(*) AS ordercount
						FROM 
							piloto_categoria AS pc
						WHERE 
							pc.Categoria_Id = categoria
						GROUP BY
							pc.Id
						ORDER BY pontos_cup DESC
					) t1, (SELECT @rn:=0) t2
				) AS src ON pc.id = src.id
			SET 
				pc.posicao_categoria = src.posicao;
    
		END LOOP loopCur;
    
    CLOSE cur;
    
    /* Atualiza classificação geral de pilotos
     */
    UPDATE 
		piloto_categoria AS pc
		INNER JOIN (
			SELECT @rn:=@rn+1 AS Posicao, t1.id
			FROM (
				SELECT pc.id, COUNT(*) AS ordercount
				FROM 
					piloto_categoria AS pc
                    inner join categoria c on pc.Categoria_Id = c.Id
				WHERE 
					c.Campeonato_Id = _campeonato_id
				GROUP BY
					pc.Id
				ORDER BY pontos_cup DESC
			) t1, (SELECT @rn:=0) t2
		) AS src ON pc.id = src.id
	SET 
		pc.posicao_geral = src.posicao;
        
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `atualizar_etapa_campeonato` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `atualizar_etapa_campeonato`(IN _campeonato_id BIGINT)
BEGIN

	/* 
	 * Atualiza posicao e pontos a considerar para o campeonato, os desclassificados nesse momento já estão com as voltas zeradas.
     */

	DECLARE etapa INTEGER;
    DECLARE categoria INTEGER;
	DECLARE v_finished INTEGER DEFAULT 0;
    
	DECLARE cur CURSOR FOR 
		SELECT 
			re.Etapa_Id,
			pc.Categoria_Id
		FROM 
			resultado_etapa re 
			INNER JOIN piloto_categoria pc ON re.Piloto_Categoria_Id = pc.id
            INNER JOIN etapa e ON re.Etapa_Id = e.id
		WHERE
			e.Campeonato_Id = _campeonato_id
		GROUP BY re.Etapa_Id, pc.Categoria_Id;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_finished = 1;
    
    OPEN cur;
    
		loopCur: LOOP
    
			FETCH cur INTO etapa, categoria;
            
			IF v_finished = 1 THEN 
				LEAVE loopCur;
			END IF;
            
            UPDATE 
				resultado_etapa AS re
				INNER JOIN (
					SELECT @rn:=@rn+1 AS Posicao, t1.id
					FROM (
						SELECT re.id, COUNT(*) AS ordercount
						FROM 
							resultado_etapa AS re
							INNER JOIN piloto_categoria pc ON re.Piloto_Categoria_Id = pc.id
						WHERE 
							re.Etapa_Id = etapa AND pc.categoria_id = categoria
						GROUP BY id
						ORDER BY voltas_cup DESC, zona DESC
					) t1, (SELECT @rn:=0) t2 
				) AS src ON re.id = src.id
			SET 
				re.posicao_categoria_cup = src.posicao,
				re.pontos_cup = (SELECT pontos FROM campeonato_pontuacao WHERE Campeonato_Id = _campeonato_id AND posicao = src.posicao) + re.ponto_extra;
    
		END LOOP loopCur;
    
    CLOSE cur;
        
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `atualizar_etapa_classificacao` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `atualizar_etapa_classificacao`(IN _campeonato_id BIGINT, IN _etapa_id BIGINT)
BEGIN

	/* 
	 * Atualiza posicao e pontos da etapa.
     */

    DECLARE categoria INTEGER;
	DECLARE v_finished INTEGER DEFAULT 0;
    
	DECLARE cur CURSOR FOR 
		SELECT
			pc.Categoria_Id
		FROM 
			resultado_etapa re 
			INNER JOIN piloto_categoria pc ON re.Piloto_Categoria_Id = pc.id
            INNER JOIN etapa e ON re.Etapa_Id = e.id
		WHERE
			e.Id = _etapa_id
		GROUP BY re.Etapa_Id, pc.Categoria_Id;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_finished = 1;
    
    -- Atualiza posição geral da etapa
	UPDATE 
		resultado_etapa AS re
		INNER JOIN (
			SELECT @rn:=@rn+1 AS Posicao, t1.id
			FROM (
				SELECT
					re.id
				FROM 
					resultado_etapa re 
				WHERE 
					re.etapa_id = _etapa_id 
				ORDER BY re.voltas DESC, re.zona DESC
			) t1, (SELECT @rn:=0) t2
		) AS src ON re.id = src.id
	SET 
		re.posicao_geral = src.posicao;
    
    OPEN cur;
    
		loopCur: LOOP
    
			FETCH cur INTO categoria;
            
			IF v_finished = 1 THEN 
				LEAVE loopCur;
			END IF;
            
            -- Atualiza pontuações e posicao por categoria
            SET @pontos_cup = 0;
            UPDATE 
				resultado_etapa AS re
				INNER JOIN (
					SELECT @rn:=@rn+1 AS Posicao, t1.id
					FROM (
						SELECT re.id, COUNT(*) AS ordercount
						FROM 
							resultado_etapa AS re
							INNER JOIN piloto_categoria pc ON re.Piloto_Categoria_Id = pc.id
						WHERE 
							re.Etapa_Id = _etapa_id AND pc.categoria_id = categoria
						GROUP BY id
						ORDER BY voltas DESC, zona DESC
					) t1, (SELECT @rn:=0) t2 
				) AS src ON re.id = src.id
			SET 
				re.posicao_categoria = src.posicao,
				re.pontos = @pontos_cup := (SELECT pontos FROM campeonato_pontuacao WHERE Campeonato_Id = _campeonato_id AND posicao = src.posicao),
                re.total = (@pontos_cup + re.ponto_extra);
    
		END LOOP loopCur;
    
    CLOSE cur;
        
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `atualizar_etapa_classificacao_cup` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `atualizar_etapa_classificacao_cup`(IN _campeonato_id BIGINT)
BEGIN

	/* 
	 * Atualiza posicao e pontos de TODAS as etapas do campeonato.
     */
     
    DECLARE etapa INTEGER;
	DECLARE v_finished INTEGER DEFAULT 0;
    
	DECLARE cur CURSOR FOR 
		SELECT 
			re.Etapa_Id
		FROM 
			resultado_etapa re 
			INNER JOIN piloto_categoria pc ON re.Piloto_Categoria_Id = pc.id
            INNER JOIN etapa e ON re.Etapa_Id = e.id
		WHERE
			e.Campeonato_Id = _campeonato_id
		GROUP BY re.Etapa_Id;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_finished = 1;
    
    OPEN cur;
    
		loopCur: LOOP
    
			FETCH cur INTO etapa;
            
			IF v_finished = 1 THEN 
				LEAVE loopCur;
			END IF;
            
            CALL atualizar_etapa_classificacao(_campeonato_id, etapa);
    
		END LOOP loopCur;
    
    CLOSE cur;
        
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `atualizar_geral_equipe` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `atualizar_geral_equipe`(IN _campeonato_id BIGINT)
BEGIN

	/* 
	 * Atualiza pontuação geral da equipe
     */

	DECLARE etapa INTEGER;
    DECLARE equipe INTEGER;
    DECLARE total_etapa INTEGER;
	DECLARE v_finished INTEGER DEFAULT 0;
    
	DECLARE cur CURSOR FOR 
		SELECT 
			re.Etapa_Id,
			ep.Equipe_Id
		FROM 
			resultado_etapa re 
			INNER JOIN piloto_categoria pc ON re.Piloto_Categoria_Id = pc.id
            INNER JOIN equipe_piloto ep ON pc.Equipe_Piloto_Id = ep.id
            INNER JOIN etapa e on re.Etapa_Id = e.id
		WHERE
			e.Campeonato_Id = _campeonato_id
		GROUP BY re.Etapa_Id, ep.Equipe_Id;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_finished = 1;
    
    /*
	 * Zera pontuações das equipes para atualizar calculo
	 */
	UPDATE campeonato_equipe SET pontos_cup = 0 WHERE Campeonato_Id = _campeonato_id;
    
    OPEN cur;
    
		loopCur: LOOP
    
			FETCH cur INTO etapa, equipe;
            
			IF v_finished = 1 THEN 
				LEAVE loopCur;
			END IF;
            
            /*
             * Soma as duas melhores pontuações da equipe na etapa
             */
            SET @total_etapa = (SELECT COALESCE(SUM(t1.pontos_cup),0) AS pontos_cup 
				FROM (
					select
						eq.Piloto_Id,
						p.nome,
						re.pontos_cup
					from resultado_etapa re 
						 left outer join piloto_categoria pc on re.Piloto_Categoria_Id = pc.id
						 left outer join equipe_piloto eq on pc.Equipe_Piloto_Id = eq.id
						 left outer join piloto p on eq.Piloto_Id = p.Id
					where
						re.Etapa_Id = etapa and eq.Equipe_Id = equipe 
					group by eq.Equipe_Id, eq.Piloto_Id
					order by re.pontos_cup desc
					limit 2
				) AS t1);
            
            /*
             * Atualiza pontuação total da equipe
             */
            UPDATE 
				campeonato_equipe ce 
			SET 
				ce.pontos_cup = (ce.Pontos_Cup + @total_etapa) 
			WHERE 
				ce.Campeonato_Id = _campeonato_id AND 
                ce.Equipe_Id = equipe;
    
		END LOOP loopCur;
    
    CLOSE cur;
    
    /* Atualiza classificação geral de pilotos select * from campeonato_equipe
     */
    UPDATE 
		campeonato_equipe AS ce
		INNER JOIN (
			SELECT @rn:=@rn+1 AS Posicao, t1.Campeonato_Id, t1.Equipe_Id
			FROM (
				SELECT ce.Campeonato_Id, ce.Equipe_Id, COUNT(*) AS ordercount
				FROM 
					campeonato_equipe AS ce
				WHERE 
					ce.Campeonato_Id = _campeonato_id
				GROUP BY
					ce.Campeonato_Id, ce.Equipe_Id
				ORDER BY pontos_cup DESC
			) t1, (SELECT @rn:=0) t2
		) AS src ON ce.Campeonato_Id = src.Campeonato_Id AND ce.Equipe_Id = src.Equipe_Id
	SET 
		ce.posicao = src.posicao;
        
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `classificacao_geral_categoria`
--

/*!50001 DROP VIEW IF EXISTS `classificacao_geral_categoria`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `classificacao_geral_categoria` AS select `cp`.`Id` AS `Campeonato_Id`,`cp`.`Nome` AS `Campeonato`,`pc`.`Id` AS `Piloto_Categoria_Id`,`e`.`Id` AS `Equipe_Id`,`e`.`Nome` AS `Equipe`,`c`.`Id` AS `Categoria_Id`,`c`.`Nome` AS `Categoria`,`p`.`Id` AS `Piloto_id`,`p`.`Nome` AS `Piloto`,`pc`.`Posicao_Categoria` AS `posicao_categoria`,`pc`.`Pontos_Categoria` AS `Total_Pontos_Etapas`,`pc`.`Pontos_Extra_Particip` AS `Pontos_Extra_Particip`,`pc`.`Descarte` AS `Descarte`,`pc`.`Pontos_Cup` AS `Total_Pontos_Cup`,`pc`.`Posicao_Geral` AS `posicao_geral` from (((((`piloto_categoria` `pc` join `categoria` `c` on((`pc`.`Categoria_Id` = `c`.`Id`))) join `campeonato` `cp` on((`c`.`Campeonato_Id` = `cp`.`Id`))) join `equipe_piloto` `ep` on((`pc`.`Equipe_Piloto_Id` = `ep`.`Id`))) join `equipe` `e` on((`ep`.`Equipe_Id` = `e`.`Id`))) join `piloto` `p` on((`ep`.`Piloto_Id` = `p`.`Id`))) group by `c`.`Id`,`pc`.`Id` order by `c`.`Id`,`pc`.`Posicao_Categoria` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `classificacao_geral_equipe`
--

/*!50001 DROP VIEW IF EXISTS `classificacao_geral_equipe`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `classificacao_geral_equipe` AS select `c`.`Id` AS `Campeonato_Id`,`c`.`Nome` AS `Campeonato`,`e`.`Id` AS `Equipe_Id`,`e`.`Nome` AS `Equipe`,`ce`.`Posicao` AS `Posicao`,`ce`.`Pontos_Cup` AS `Pontos_Cup` from ((`campeonato_equipe` `ce` join `campeonato` `c` on((`ce`.`Campeonato_Id` = `c`.`Id`))) join `equipe` `e` on((`ce`.`Equipe_Id` = `e`.`Id`))) order by `c`.`Id`,`ce`.`Posicao` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `classificacao_geral_etapa`
--

/*!50001 DROP VIEW IF EXISTS `classificacao_geral_etapa`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `classificacao_geral_etapa` AS select `cp`.`Id` AS `Campeonato_Id`,`cp`.`Nome` AS `Campeonato`,`re`.`Etapa_Id` AS `Etapa_Id`,`et`.`Nome` AS `Etapa`,`c`.`Id` AS `Categoria_Id`,`c`.`Nome` AS `Categoria`,`e`.`Id` AS `Equipe_Id`,`e`.`Nome` AS `Equipe`,`ep`.`Id` AS `Equipe_Piloto_Id`,`p`.`Id` AS `Piloto_Id`,`p`.`Nome` AS `Piloto`,`re`.`Voltas` AS `Voltas`,`re`.`Zona` AS `Zona`,`re`.`Voltas_Penalidade` AS `Voltas_Penalidade`,`re`.`Pontos` AS `Pontos`,`re`.`Ponto_Extra` AS `Ponto_Extra`,`re`.`Total` AS `Total`,`re`.`Posicao_Categoria` AS `Posicao_Categoria`,`re`.`Posicao_Categoria_Cup` AS `Posicao_Categoria_Cup`,`re`.`Pontos_Cup` AS `Pontos_Cup`,`pc`.`Situacao` AS `Situacao`,`re`.`Posicao_Geral` AS `Posicao_Geral` from (((((((`resultado_etapa` `re` join `etapa` `et` on((`re`.`Etapa_Id` = `et`.`Id`))) join `campeonato` `cp` on((`et`.`Campeonato_Id` = `cp`.`Id`))) join `piloto_categoria` `pc` on((`re`.`Piloto_Categoria_Id` = `pc`.`Id`))) join `categoria` `c` on((`pc`.`Categoria_Id` = `c`.`Id`))) join `equipe_piloto` `ep` on((`pc`.`Equipe_Piloto_Id` = `ep`.`Id`))) join `piloto` `p` on((`ep`.`Piloto_Id` = `p`.`Id`))) join `equipe` `e` on((`ep`.`Equipe_Id` = `e`.`Id`))) group by `re`.`Etapa_Id`,`pc`.`Categoria_Id`,`ep`.`Id` order by `re`.`Etapa_Id`,`c`.`Id`,`re`.`Posicao_Categoria` */;
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

-- Dump completed on 2017-09-22  9:41:31
