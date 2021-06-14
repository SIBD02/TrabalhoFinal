-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: companhia_hoteis
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `contacto_hotel`
--

DROP TABLE IF EXISTS `contacto_hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacto_hotel` (
  `nome` varchar(50) NOT NULL,
  `contacto` int(9) unsigned NOT NULL,
  PRIMARY KEY (`nome`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacto_hotel`
--

LOCK TABLES `contacto_hotel` WRITE;
/*!40000 ALTER TABLE `contacto_hotel` DISABLE KEYS */;
INSERT INTO `contacto_hotel` VALUES ('ARCHIPEGALOS Porto',228392019),('ARCHIPEGALOS Madrid',808444666),('ARCHIPEGALOS Paris',331454539),('ARCHIPEGALOS Vaticano',202666136);
/*!40000 ALTER TABLE `contacto_hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contrato_funcionario`
--

DROP TABLE IF EXISTS `contrato_funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contrato_funcionario` (
  `ocupacao` varchar(50) NOT NULL,
  `tipoContrato` varchar(50) NOT NULL,
  `efetividade` varchar(50) NOT NULL,
  PRIMARY KEY (`ocupacao`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contrato_funcionario`
--

LOCK TABLES `contrato_funcionario` WRITE;
/*!40000 ALTER TABLE `contrato_funcionario` DISABLE KEYS */;
INSERT INTO `contrato_funcionario` VALUES ('Empregado','Efetivo','Sim'),('Cozinheiro','Temporário','Não'),('Chefe','Efetivo','Sim');
/*!40000 ALTER TABLE `contrato_funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dados_funcionario`
--

DROP TABLE IF EXISTS `dados_funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dados_funcionario` (
  `nFuncionario` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `nCC` int(8) unsigned NOT NULL,
  PRIMARY KEY (`nFuncionario`)
) ENGINE=MyISAM AUTO_INCREMENT=978 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dados_funcionario`
--

LOCK TABLES `dados_funcionario` WRITE;
/*!40000 ALTER TABLE `dados_funcionario` DISABLE KEYS */;
INSERT INTO `dados_funcionario` VALUES (147,'Ricardo Morais',98293821),(183,'Patricia Santos',28395018),(321,'Daniel Pato',49283921),(482,'John Wick',12345678),(555,'Santa Claus',42018293),(666,'Mario Albuquerque',11741362),(699,'Renata Tinto',77772812),(934,'Charles Bunny',43627471),(977,'João Paulo',11111111);
/*!40000 ALTER TABLE `dados_funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dados_quarto`
--

DROP TABLE IF EXISTS `dados_quarto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dados_quarto` (
  `nQuarto` int(10) unsigned NOT NULL,
  `tipoQuarto` varchar(255) NOT NULL,
  `preco` varchar(50) NOT NULL,
  PRIMARY KEY (`nQuarto`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dados_quarto`
--

LOCK TABLES `dados_quarto` WRITE;
/*!40000 ALTER TABLE `dados_quarto` DISABLE KEYS */;
INSERT INTO `dados_quarto` VALUES (100,'Single','150'),(101,'Casal','300'),(102,'Familiar','400'),(103,'Suite','350'),(104,'Single','150'),(105,'Single','150'),(106,'Suite','350'),(107,'Casal','300'),(108,'Casal','300'),(109,'Single','150');
/*!40000 ALTER TABLE `dados_quarto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionario` (
  `nFuncionario` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ocupação` varchar(50) NOT NULL,
  PRIMARY KEY (`nFuncionario`,`ocupação`)
) ENGINE=MyISAM AUTO_INCREMENT=978 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (147,'Empregado'),(183,'Cozinheiro'),(321,'Empregado'),(482,'Empregado'),(555,'Chefe'),(666,'Empregado'),(699,'Empregado'),(934,'Empregado'),(977,'Empregado');
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospede`
--

DROP TABLE IF EXISTS `hospede`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospede` (
  `nTelefone` int(10) unsigned NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `nCC` int(10) unsigned NOT NULL,
  PRIMARY KEY (`nTelefone`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospede`
--

LOCK TABLES `hospede` WRITE;
/*!40000 ALTER TABLE `hospede` DISABLE KEYS */;
INSERT INTO `hospede` VALUES (913857482,'Ricardo Morales','ricardo.m.morales@gmail.com',48392748),(914930593,'Catherine Chaves','chavescath@gmail.com',84595049),(934059492,'Gonzalo Cartaz','gonzacartz@gmail.com',75604958),(968394834,'Gonzalo Oak','thaoakman@gmail.com',92858392),(919958493,'João Noites','itstimetoparty@gmail.com',62738475),(918293848,'Francisco Teapot','iloveteapothead@gmail.com',63748374),(928394859,'Cristiano Ronaldo','cr7@gmail.com',18493848),(919485949,'Mario Sabados','overwork@gmail.com',93849384),(929483949,'Homer Simpson','donuts@gmail.com',82938481);
/*!40000 ALTER TABLE `hospede` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotel` (
  `nome` varchar(50) NOT NULL,
  `localizacao` varchar(50) NOT NULL,
  `nEstrelas` int(10) unsigned NOT NULL,
  `lotacaoHospede` int(10) unsigned NOT NULL,
  `nFuncionario` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nTelefone` int(9) unsigned NOT NULL,
  PRIMARY KEY (`nome`,`nFuncionario`,`nTelefone`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel`
--

LOCK TABLES `hotel` WRITE;
/*!40000 ALTER TABLE `hotel` DISABLE KEYS */;
INSERT INTO `hotel` VALUES ('ARCHIPELAGOS Porto','Porto',5,200,555,919999999),('ARCHIPELAGOS Madrid','Madrid',3,150,342,919898989),('ARCHIPELAGOS Paris','Paris',4,300,622,912696969),('ARCHIPELAGOS Vaticano','Cidade do Vaticano',5,500,853,915639839);
/*!40000 ALTER TABLE `hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quarto`
--

DROP TABLE IF EXISTS `quarto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quarto` (
  `nQuarto` int(10) unsigned NOT NULL,
  `nTelefone` int(9) unsigned NOT NULL,
  PRIMARY KEY (`nQuarto`,`nTelefone`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quarto`
--

LOCK TABLES `quarto` WRITE;
/*!40000 ALTER TABLE `quarto` DISABLE KEYS */;
INSERT INTO `quarto` VALUES (100,928394859),(101,913857482),(102,918293848),(103,914930593),(104,919958493),(106,968394834),(107,934059492),(108,919485949),(109,929483949);
/*!40000 ALTER TABLE `quarto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reserva`
--

DROP TABLE IF EXISTS `reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reserva` (
  `nReserva` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tipoEstadia` varchar(50) NOT NULL,
  `tipoDiaDaSemana` varchar(50) NOT NULL,
  `preco` varchar(50) NOT NULL,
  `data` varchar(50) NOT NULL,
  `nFuncionario` int(10) unsigned NOT NULL,
  `nTelefone` int(10) unsigned NOT NULL,
  `nQuarto` int(10) unsigned NOT NULL,
  PRIMARY KEY (`nReserva`,`nFuncionario`,`nTelefone`,`nQuarto`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserva`
--

LOCK TABLES `reserva` WRITE;
/*!40000 ALTER TABLE `reserva` DISABLE KEYS */;
INSERT INTO `reserva` VALUES (1,'Meia Pensão','Semana','600','10/05/2021',147,913857482,100),(2,'Pensão Completa','Fim de Semana','1000','14/07/2021',321,914930593,101),(3,'Pensão Pequeno-Almoço','Fim de Semana','900','02/02/2021',482,934059492,102),(4,'Tudo Incluído','Semana','1500','04/03/2021',666,968394834,103),(5,'Meia Pensão','Fim de Semana','700','14/01/2021',699,919958493,104),(6,'Tudo Incluído','Semana','1200','22/06/2021',934,918293848,105),(7,'Pensão Pequeno-Almoço','Fim de Semana','900','01/02/2021',977,928394859,106),(8,'Pensão Completa','Semana','900','31/03/2021',147,919485949,107),(9,'Meia Pensão','Fim de Semana','700','17/07/2021',699,929483949,108),(10,'Pensão Completa','Fim de Semana','1000','11/10/2021',977,918293848,109);
/*!40000 ALTER TABLE `reserva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reserva_quarto`
--

DROP TABLE IF EXISTS `reserva_quarto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reserva_quarto` (
  `nReserva` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nQuarto` int(10) unsigned NOT NULL,
  PRIMARY KEY (`nReserva`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserva_quarto`
--

LOCK TABLES `reserva_quarto` WRITE;
/*!40000 ALTER TABLE `reserva_quarto` DISABLE KEYS */;
INSERT INTO `reserva_quarto` VALUES (1,100),(2,101),(3,102),(4,103),(5,104),(6,105),(7,106),(8,107),(9,108),(10,109);
/*!40000 ALTER TABLE `reserva_quarto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-14 16:53:47
