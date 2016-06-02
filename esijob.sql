/*DROP DATABASE IF EXISTS `esijob`;*/
CREATE DATABASE  IF NOT EXISTS `esijob` /*!40100 DEFAULT CHARACTER SET latin1 */;
GRANT ALL PRIVILEGES ON `esijob`.* TO 'esijob'@'localhost';
USE `esijob`;



-- MySQL dump 10.13  Distrib 5.5.49, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: esijob
-- ------------------------------------------------------
-- Server version	5.5.49-0ubuntu0.14.04.1

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
-- Table structure for table `centro`
--

DROP TABLE IF EXISTS `centro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `centro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `centro`
--

LOCK TABLES `centro` WRITE;
/*!40000 ALTER TABLE `centro` DISABLE KEYS */;
INSERT INTO `centro` VALUES (1,'Universidad de Cádiz'),(2,'Universidad de Sevilla');
/*!40000 ALTER TABLE `centro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contrato`
--

DROP TABLE IF EXISTS `contrato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contrato` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contrato`
--

LOCK TABLES `contrato` WRITE;
/*!40000 ALTER TABLE `contrato` DISABLE KEYS */;
INSERT INTO `contrato` VALUES (1,'Indefinido'),(2,'Temporal'),(3,'Prácticas'),(4,'Obra');
/*!40000 ALTER TABLE `contrato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demandante`
--

DROP TABLE IF EXISTS `demandante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demandante` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(128) NOT NULL,
  `fecNac` date NOT NULL,
  `sexo` varchar(1) NOT NULL DEFAULT 'H' COMMENT 'H: Hombre M: Mujer',
  `direccion` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `telefono` varchar(16) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `resumenTray` varchar(1024) NOT NULL,
  `foto` varchar(64) DEFAULT NULL,
  `trabajosDisp` varchar(2048) NOT NULL,
  `experiencia` varchar(2048) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_DEMUSU` (`idusuario`),
  CONSTRAINT `demandante_ibfk_1` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demandante`
--

LOCK TABLES `demandante` WRITE;
/*!40000 ALTER TABLE `demandante` DISABLE KEYS */;
INSERT INTO `demandante` VALUES (1,'Juan Lopez','1986-05-03','1','C/Jerez','j.lopez@gmail.com','956124578',1,'Es muy largo','mypic.png','Programador, Analista, Diseñador','Mucha'),(2,'Juan','1996-06-11','H','C/Alvarez Nº 30','juan@uca.es','956124578',1,'Programador','','Programador en Java','7 años');
/*!40000 ALTER TABLE `demandante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empresa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(32) NOT NULL,
  `cif` varchar(16) NOT NULL,
  `email` varchar(64) NOT NULL,
  `actProf` varchar(64) NOT NULL,
  `numEmp` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_EMPUSU` (`idusuario`),
  CONSTRAINT `empresa_ibfk_1` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES (2,'Microsoft','32547814L','info@microsoft.com','Tecnologias de la Informacion',1254,1),(3,'Google','78451425M','info@google.com','Tecnologias de la Informacion',86572,2);
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
INSERT INTO `estado` VALUES (1,'En espera'),(2,'Activa'),(3,'Detenida'),(4,'Cancelada'),(5,'En trámite'),(6,'Resuelta');
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado_inscripcion`
--

DROP TABLE IF EXISTS `estado_inscripcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado_inscripcion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_inscripcion`
--

LOCK TABLES `estado_inscripcion` WRITE;
/*!40000 ALTER TABLE `estado_inscripcion` DISABLE KEYS */;
INSERT INTO `estado_inscripcion` VALUES (1,'Recibida'),(2,'Retirada'),(3,'En estudio'),(4,'Descartada'),(5,'Aceptada');
/*!40000 ALTER TABLE `estado_inscripcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experiencia`
--

DROP TABLE IF EXISTS `experiencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `experiencia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idcurriculum` int(11) NOT NULL,
  `fecIni` date NOT NULL,
  `fecFin` date NOT NULL,
  `salario` int(11) NOT NULL,
  `tareas` varchar(2048) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ECCUR` (`idcurriculum`),
  CONSTRAINT `experiencia_ibfk_1` FOREIGN KEY (`idcurriculum`) REFERENCES `demandante` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experiencia`
--

LOCK TABLES `experiencia` WRITE;
/*!40000 ALTER TABLE `experiencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `experiencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formacion`
--

DROP TABLE IF EXISTS `formacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idTipoFormacion` int(11) NOT NULL,
  `titulacion` varchar(128) NOT NULL,
  `nivel` varchar(32) NOT NULL COMMENT 'Solo para idiomas',
  PRIMARY KEY (`id`),
  KEY `FK_FORMTIPO` (`idTipoFormacion`),
  CONSTRAINT `formacion_ibfk_1` FOREIGN KEY (`idTipoFormacion`) REFERENCES `tipoformacion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formacion`
--

LOCK TABLES `formacion` WRITE;
/*!40000 ALTER TABLE `formacion` DISABLE KEYS */;
INSERT INTO `formacion` VALUES (1,1,'Grado en Ingeniería Informática','0');
/*!40000 ALTER TABLE `formacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formaciondemandante`
--

DROP TABLE IF EXISTS `formaciondemandante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formaciondemandante` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idformacion` int(11) NOT NULL,
  `iddemandante` int(11) NOT NULL,
  `idcentro` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `formaciondemandante_demandante_idx` (`iddemandante`),
  KEY `fformaciondemandante_formacion_idx` (`idformacion`),
  KEY `formaciondemandante_centro_idx` (`idcentro`),
  CONSTRAINT `formaciondemandante_centro` FOREIGN KEY (`idcentro`) REFERENCES `centro` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `formaciondemandante_demandante` FOREIGN KEY (`iddemandante`) REFERENCES `demandante` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `formaciondemandante_formacion` FOREIGN KEY (`idformacion`) REFERENCES `formacion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formaciondemandante`
--

LOCK TABLES `formaciondemandante` WRITE;
/*!40000 ALTER TABLE `formaciondemandante` DISABLE KEYS */;
INSERT INTO `formaciondemandante` VALUES (1,1,1,1);
/*!40000 ALTER TABLE `formaciondemandante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inscripcion`
--

DROP TABLE IF EXISTS `inscripcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inscripcion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iddemandante` int(11) NOT NULL,
  `idoferta` int(11) NOT NULL,
  `estado_inscripcion` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inscripcion_demandante_idx` (`iddemandante`),
  KEY `inscripcion_oferta_idx` (`idoferta`),
  KEY `inscripcion_estado_inscripcion_idx` (`estado_inscripcion`),
  CONSTRAINT `inscripcion_demandante` FOREIGN KEY (`iddemandante`) REFERENCES `demandante` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `inscripcion_estado_inscripcion` FOREIGN KEY (`estado_inscripcion`) REFERENCES `estado_inscripcion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `inscripcion_oferta` FOREIGN KEY (`idoferta`) REFERENCES `oferta` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inscripcion`
--

LOCK TABLES `inscripcion` WRITE;
/*!40000 ALTER TABLE `inscripcion` DISABLE KEYS */;
INSERT INTO `inscripcion` VALUES (1,1,1,1);
/*!40000 ALTER TABLE `inscripcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oferta`
--

DROP TABLE IF EXISTS `oferta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oferta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(128) NOT NULL,
  `infoPuesto` varchar(1024) DEFAULT NULL,
  `idformacion` int(11) NOT NULL,
  `idsede` int(11) NOT NULL,
  `tipoContrato` int(11) NOT NULL,
  `salarioBruto` int(11) DEFAULT NULL,
  `fechaInc` date DEFAULT NULL,
  `numVac` int(11) DEFAULT NULL,
  `perfilDem` varchar(1024) DEFAULT NULL,
  `fecIniOferta` date NOT NULL,
  `fecFinOferta` date NOT NULL,
  `estado` int(11) NOT NULL DEFAULT '1' COMMENT '1: En Espera 2:Activa 3:Detenida 4:Cancelada 5:En trámite 6:Resuelta',
  PRIMARY KEY (`id`),
  KEY `FK_OFERSEDE` (`idsede`),
  KEY `titulacionReq` (`idformacion`),
  KEY `oferta_contrato_idx` (`tipoContrato`),
  KEY `oferta_estado_idx` (`estado`),
  CONSTRAINT `fk_oferta_formacion` FOREIGN KEY (`idformacion`) REFERENCES `formacion` (`id`),
  CONSTRAINT `oferta_contrato` FOREIGN KEY (`tipoContrato`) REFERENCES `contrato` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `oferta_estado` FOREIGN KEY (`estado`) REFERENCES `estado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `oferta_ibfk_1` FOREIGN KEY (`idsede`) REFERENCES `sede` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oferta`
--

LOCK TABLES `oferta` WRITE;
/*!40000 ALTER TABLE `oferta` DISABLE KEYS */;
INSERT INTO `oferta` VALUES (1,'Programador C++','Programar mucho',1,1,1,30000,'2016-06-01',2,'Que sea un máquina','2016-06-07','2016-06-22',1);
/*!40000 ALTER TABLE `oferta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `puesto`
--

DROP TABLE IF EXISTS `puesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `puesto` (
  `id` int(11) NOT NULL,
  `iddemandante` int(11) NOT NULL,
  `idoferta` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `puesto_demandante_idx` (`iddemandante`),
  KEY `puesto_oferta_idx` (`idoferta`),
  CONSTRAINT `puesto_demandante` FOREIGN KEY (`iddemandante`) REFERENCES `demandante` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `puesto_oferta` FOREIGN KEY (`idoferta`) REFERENCES `oferta` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puesto`
--

LOCK TABLES `puesto` WRITE;
/*!40000 ALTER TABLE `puesto` DISABLE KEYS */;
/*!40000 ALTER TABLE `puesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sede`
--

DROP TABLE IF EXISTS `sede`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sede` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(32) NOT NULL,
  `idempresa` int(11) NOT NULL,
  `ciudad` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_SEDEMP` (`idempresa`),
  CONSTRAINT `sede_ibfk_1` FOREIGN KEY (`idempresa`) REFERENCES `empresa` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sede`
--

LOCK TABLES `sede` WRITE;
/*!40000 ALTER TABLE `sede` DISABLE KEYS */;
INSERT INTO `sede` VALUES (1,'Microsoft Madrid',2,'Madrid'),(2,'Microsoft Barcelona',2,'Barcelona'),(3,'Google Europa',3,'Amsterdam');
/*!40000 ALTER TABLE `sede` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoformacion`
--

DROP TABLE IF EXISTS `tipoformacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoformacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoformacion`
--

LOCK TABLES `tipoformacion` WRITE;
/*!40000 ALTER TABLE `tipoformacion` DISABLE KEYS */;
INSERT INTO `tipoformacion` VALUES (1,'Universidad'),(2,'Master'),(3,'Doctorado'),(4,'Ciclo Formativo Grado Superior'),(5,'Especializacion'),(6,'Ciclo Formativo Grado Medio'),(7,'Educacion Secundaria'),(8,'Idiomas');
/*!40000 ALTER TABLE `tipoformacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(32) NOT NULL,
  `password` varchar(16) NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1: Empresa, 2: Demandante',
  `rol` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'microsoft','microsoft',1,'ROLE_USER'),(2,'google','google',1,'ROLE_USER'),(3,'admin','admin',1,'ROLE_ADMIN');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-02 15:40:26
