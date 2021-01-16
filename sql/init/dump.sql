-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: bds
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Current Database: `bds`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `bds` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `bds`;

--
-- Table structure for table `bds2018`
--

DROP TABLE IF EXISTS `bds2018`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bds2018` (
  `year` decimal(38,0) NOT NULL,
  `firms` decimal(38,0) NOT NULL,
  `estabs` decimal(38,0) NOT NULL,
  `emp` decimal(38,0) NOT NULL,
  `denom` decimal(38,0) NOT NULL,
  `estabs_entry` decimal(38,0) NOT NULL,
  `estabs_entry_rate` decimal(38,3) NOT NULL,
  `estabs_exit` decimal(38,0) NOT NULL,
  `estabs_exit_rate` decimal(38,3) NOT NULL,
  `job_creation` decimal(38,0) NOT NULL,
  `job_creation_births` decimal(38,0) NOT NULL,
  `job_creation_continuers` decimal(38,0) NOT NULL,
  `job_creation_rate_births` decimal(38,3) NOT NULL,
  `job_creation_rate` decimal(38,3) NOT NULL,
  `job_destruction` decimal(38,0) NOT NULL,
  `job_destruction_deaths` decimal(38,0) NOT NULL,
  `job_destruction_continuers` decimal(38,0) NOT NULL,
  `job_destruction_rate_deaths` decimal(38,3) NOT NULL,
  `job_destruction_rate` decimal(38,3) NOT NULL,
  `net_job_creation` decimal(38,0) NOT NULL,
  `net_job_creation_rate` decimal(38,3) NOT NULL,
  `reallocation_rate` decimal(38,3) NOT NULL,
  `firmdeath_firms` decimal(38,0) NOT NULL,
  `firmdeath_estabs` decimal(38,0) NOT NULL,
  `firmdeath_emp` decimal(38,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bds2018`
--

LOCK TABLES `bds2018` WRITE;
/*!40000 ALTER TABLE `bds2018` DISABLE KEYS */;
/*!40000 ALTER TABLE `bds2018` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bds2018_cty`
--

DROP TABLE IF EXISTS `bds2018_cty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bds2018_cty` (
  `year` decimal(38,0) NOT NULL,
  `st` decimal(38,0) NOT NULL,
  `cty` decimal(38,0) NOT NULL,
  `firms` varchar(6) NOT NULL,
  `estabs` varchar(6) NOT NULL,
  `emp` varchar(7) NOT NULL,
  `denom` varchar(7) NOT NULL,
  `estabs_entry` varchar(5) NOT NULL,
  `estabs_entry_rate` varchar(7) DEFAULT NULL,
  `estabs_exit` varchar(5) NOT NULL,
  `estabs_exit_rate` varchar(7) DEFAULT NULL,
  `job_creation` varchar(6) NOT NULL,
  `job_creation_births` varchar(6) NOT NULL,
  `job_creation_continuers` varchar(6) NOT NULL,
  `job_creation_rate_births` varchar(7) DEFAULT NULL,
  `job_creation_rate` varchar(7) DEFAULT NULL,
  `job_destruction` varchar(6) NOT NULL,
  `job_destruction_deaths` varchar(6) NOT NULL,
  `job_destruction_continuers` varchar(6) NOT NULL,
  `job_destruction_rate_deaths` varchar(7) DEFAULT NULL,
  `job_destruction_rate` varchar(7) DEFAULT NULL,
  `net_job_creation` varchar(7) NOT NULL,
  `net_job_creation_rate` varchar(8) DEFAULT NULL,
  `reallocation_rate` varchar(7) DEFAULT NULL,
  `firmdeath_firms` varchar(5) NOT NULL,
  `firmdeath_estabs` varchar(5) NOT NULL,
  `firmdeath_emp` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bds2018_cty`
--

LOCK TABLES `bds2018_cty` WRITE;
/*!40000 ALTER TABLE `bds2018_cty` DISABLE KEYS */;
/*!40000 ALTER TABLE `bds2018_cty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bds2018_eage`
--

DROP TABLE IF EXISTS `bds2018_eage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bds2018_eage` (
  `year` decimal(38,0) NOT NULL,
  `eage` varchar(16) NOT NULL,
  `firms` varchar(7) NOT NULL,
  `estabs` varchar(7) NOT NULL,
  `emp` varchar(8) NOT NULL,
  `denom` varchar(8) NOT NULL,
  `estabs_entry` varchar(6) NOT NULL,
  `estabs_entry_rate` varchar(18) DEFAULT NULL,
  `estabs_exit` varchar(6) NOT NULL,
  `estabs_exit_rate` varchar(18) DEFAULT NULL,
  `job_creation` varchar(7) NOT NULL,
  `job_creation_births` varchar(7) NOT NULL,
  `job_creation_continuers` varchar(7) NOT NULL,
  `job_creation_rate_births` varchar(7) DEFAULT NULL,
  `job_creation_rate` varchar(7) DEFAULT NULL,
  `job_destruction` varchar(7) NOT NULL,
  `job_destruction_deaths` varchar(7) NOT NULL,
  `job_destruction_continuers` decimal(38,0) NOT NULL,
  `job_destruction_rate_deaths` varchar(6) DEFAULT NULL,
  `job_destruction_rate` varchar(6) DEFAULT NULL,
  `net_job_creation` decimal(38,0) NOT NULL,
  `net_job_creation_rate` decimal(38,3) DEFAULT NULL,
  `reallocation_rate` varchar(6) DEFAULT NULL,
  `firmdeath_firms` varchar(6) NOT NULL,
  `firmdeath_estabs` varchar(6) NOT NULL,
  `firmdeath_emp` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bds2018_eage`
--

LOCK TABLES `bds2018_eage` WRITE;
/*!40000 ALTER TABLE `bds2018_eage` DISABLE KEYS */;
/*!40000 ALTER TABLE `bds2018_eage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bds2018_esize`
--

DROP TABLE IF EXISTS `bds2018_esize`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bds2018_esize` (
  `year` decimal(38,0) NOT NULL,
  `esize` varchar(13) NOT NULL,
  `firms` decimal(38,0) NOT NULL,
  `estabs` decimal(38,0) NOT NULL,
  `emp` decimal(38,0) NOT NULL,
  `denom` decimal(38,0) NOT NULL,
  `estabs_entry` decimal(38,0) NOT NULL,
  `estabs_entry_rate` decimal(38,16) NOT NULL,
  `estabs_exit` decimal(38,0) NOT NULL,
  `estabs_exit_rate` decimal(38,16) NOT NULL,
  `job_creation` decimal(38,0) NOT NULL,
  `job_creation_births` decimal(38,0) NOT NULL,
  `job_creation_continuers` decimal(38,0) NOT NULL,
  `job_creation_rate_births` decimal(38,16) NOT NULL,
  `job_creation_rate` decimal(38,16) NOT NULL,
  `job_destruction` decimal(38,0) NOT NULL,
  `job_destruction_deaths` decimal(38,0) NOT NULL,
  `job_destruction_continuers` varchar(7) NOT NULL,
  `job_destruction_rate_deaths` decimal(38,16) NOT NULL,
  `job_destruction_rate` decimal(38,16) NOT NULL,
  `net_job_creation` decimal(38,0) NOT NULL,
  `net_job_creation_rate` decimal(38,17) NOT NULL,
  `reallocation_rate` decimal(38,15) NOT NULL,
  `firmdeath_firms` varchar(6) NOT NULL,
  `firmdeath_estabs` varchar(6) NOT NULL,
  `firmdeath_emp` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bds2018_esize`
--

LOCK TABLES `bds2018_esize` WRITE;
/*!40000 ALTER TABLE `bds2018_esize` DISABLE KEYS */;
/*!40000 ALTER TABLE `bds2018_esize` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bds2018_fage`
--

DROP TABLE IF EXISTS `bds2018_fage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bds2018_fage` (
  `year` decimal(38,0) NOT NULL,
  `fage` varchar(16) NOT NULL,
  `firms` varchar(7) NOT NULL,
  `estabs` varchar(7) NOT NULL,
  `emp` varchar(8) NOT NULL,
  `denom` varchar(8) NOT NULL,
  `estabs_entry` varchar(6) NOT NULL,
  `estabs_entry_rate` varchar(19) DEFAULT NULL,
  `estabs_exit` varchar(6) NOT NULL,
  `estabs_exit_rate` varchar(18) DEFAULT NULL,
  `job_creation` varchar(8) NOT NULL,
  `job_creation_births` decimal(38,0) NOT NULL,
  `job_creation_continuers` varchar(7) NOT NULL,
  `job_creation_rate_births` decimal(38,3) DEFAULT NULL,
  `job_creation_rate` varchar(7) DEFAULT NULL,
  `job_destruction` varchar(7) NOT NULL,
  `job_destruction_deaths` varchar(7) NOT NULL,
  `job_destruction_continuers` varchar(7) NOT NULL,
  `job_destruction_rate_deaths` varchar(6) DEFAULT NULL,
  `job_destruction_rate` varchar(6) DEFAULT NULL,
  `net_job_creation` decimal(38,0) NOT NULL,
  `net_job_creation_rate` decimal(38,3) DEFAULT NULL,
  `reallocation_rate` varchar(6) DEFAULT NULL,
  `firmdeath_firms` varchar(6) NOT NULL,
  `firmdeath_estabs` varchar(6) NOT NULL,
  `firmdeath_emp` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bds2018_fage`
--

LOCK TABLES `bds2018_fage` WRITE;
/*!40000 ALTER TABLE `bds2018_fage` DISABLE KEYS */;
/*!40000 ALTER TABLE `bds2018_fage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bds2018_fsize`
--

DROP TABLE IF EXISTS `bds2018_fsize`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bds2018_fsize` (
  `year` decimal(38,0) NOT NULL,
  `fsize` varchar(15) NOT NULL,
  `firms` decimal(38,0) NOT NULL,
  `estabs` decimal(38,0) NOT NULL,
  `emp` decimal(38,0) NOT NULL,
  `denom` decimal(38,0) NOT NULL,
  `estabs_entry` decimal(38,0) NOT NULL,
  `estabs_entry_rate` decimal(38,16) NOT NULL,
  `estabs_exit` decimal(38,0) NOT NULL,
  `estabs_exit_rate` decimal(38,16) NOT NULL,
  `job_creation` decimal(38,0) NOT NULL,
  `job_creation_births` decimal(38,0) NOT NULL,
  `job_creation_continuers` decimal(38,0) NOT NULL,
  `job_creation_rate_births` decimal(38,16) NOT NULL,
  `job_creation_rate` decimal(38,15) NOT NULL,
  `job_destruction` decimal(38,0) NOT NULL,
  `job_destruction_deaths` decimal(38,0) NOT NULL,
  `job_destruction_continuers` decimal(38,0) NOT NULL,
  `job_destruction_rate_deaths` decimal(38,16) NOT NULL,
  `job_destruction_rate` decimal(38,15) NOT NULL,
  `net_job_creation` decimal(38,0) NOT NULL,
  `net_job_creation_rate` decimal(38,18) NOT NULL,
  `reallocation_rate` decimal(38,15) NOT NULL,
  `firmdeath_firms` varchar(6) NOT NULL,
  `firmdeath_estabs` varchar(6) NOT NULL,
  `firmdeath_emp` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bds2018_fsize`
--

LOCK TABLES `bds2018_fsize` WRITE;
/*!40000 ALTER TABLE `bds2018_fsize` DISABLE KEYS */;
/*!40000 ALTER TABLE `bds2018_fsize` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bds2018_iesize`
--

DROP TABLE IF EXISTS `bds2018_iesize`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bds2018_iesize` (
  `year` decimal(38,0) NOT NULL,
  `iesize` varchar(13) NOT NULL,
  `firms` decimal(38,0) NOT NULL,
  `estabs` decimal(38,0) NOT NULL,
  `emp` decimal(38,0) NOT NULL,
  `denom` decimal(38,0) NOT NULL,
  `estabs_entry` decimal(38,0) NOT NULL,
  `estabs_entry_rate` decimal(38,16) NOT NULL,
  `estabs_exit` decimal(38,0) NOT NULL,
  `estabs_exit_rate` decimal(38,16) NOT NULL,
  `job_creation` decimal(38,0) NOT NULL,
  `job_creation_births` decimal(38,0) NOT NULL,
  `job_creation_continuers` decimal(38,0) NOT NULL,
  `job_creation_rate_births` decimal(38,16) NOT NULL,
  `job_creation_rate` decimal(38,16) NOT NULL,
  `job_destruction` decimal(38,0) NOT NULL,
  `job_destruction_deaths` decimal(38,0) NOT NULL,
  `job_destruction_continuers` varchar(7) NOT NULL,
  `job_destruction_rate_deaths` decimal(38,16) NOT NULL,
  `job_destruction_rate` decimal(38,16) NOT NULL,
  `net_job_creation` decimal(38,0) NOT NULL,
  `net_job_creation_rate` decimal(38,17) NOT NULL,
  `reallocation_rate` decimal(38,15) NOT NULL,
  `firmdeath_firms` decimal(38,0) NOT NULL,
  `firmdeath_estabs` decimal(38,0) NOT NULL,
  `firmdeath_emp` decimal(38,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bds2018_iesize`
--

LOCK TABLES `bds2018_iesize` WRITE;
/*!40000 ALTER TABLE `bds2018_iesize` DISABLE KEYS */;
/*!40000 ALTER TABLE `bds2018_iesize` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bds2018_ifsize`
--

DROP TABLE IF EXISTS `bds2018_ifsize`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bds2018_ifsize` (
  `year` decimal(38,0) NOT NULL,
  `ifsize` varchar(15) NOT NULL,
  `firms` decimal(38,0) NOT NULL,
  `estabs` decimal(38,0) NOT NULL,
  `emp` decimal(38,0) NOT NULL,
  `denom` decimal(38,0) NOT NULL,
  `estabs_entry` decimal(38,0) NOT NULL,
  `estabs_entry_rate` decimal(38,16) NOT NULL,
  `estabs_exit` decimal(38,0) NOT NULL,
  `estabs_exit_rate` decimal(38,16) NOT NULL,
  `job_creation` decimal(38,0) NOT NULL,
  `job_creation_births` decimal(38,0) NOT NULL,
  `job_creation_continuers` decimal(38,0) NOT NULL,
  `job_creation_rate_births` decimal(38,16) NOT NULL,
  `job_creation_rate` decimal(38,15) NOT NULL,
  `job_destruction` decimal(38,0) NOT NULL,
  `job_destruction_deaths` decimal(38,0) NOT NULL,
  `job_destruction_continuers` decimal(38,0) NOT NULL,
  `job_destruction_rate_deaths` decimal(38,16) NOT NULL,
  `job_destruction_rate` decimal(38,15) NOT NULL,
  `net_job_creation` decimal(38,0) NOT NULL,
  `net_job_creation_rate` decimal(38,18) NOT NULL,
  `reallocation_rate` decimal(38,15) NOT NULL,
  `firmdeath_firms` varchar(6) NOT NULL,
  `firmdeath_estabs` varchar(6) NOT NULL,
  `firmdeath_emp` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bds2018_ifsize`
--

LOCK TABLES `bds2018_ifsize` WRITE;
/*!40000 ALTER TABLE `bds2018_ifsize` DISABLE KEYS */;
/*!40000 ALTER TABLE `bds2018_ifsize` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bds2018_metro`
--

DROP TABLE IF EXISTS `bds2018_metro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bds2018_metro` (
  `year` decimal(38,0) NOT NULL,
  `metro` varchar(2) NOT NULL,
  `firms` decimal(38,0) NOT NULL,
  `estabs` decimal(38,0) NOT NULL,
  `emp` decimal(38,0) NOT NULL,
  `denom` decimal(38,0) NOT NULL,
  `estabs_entry` decimal(38,0) NOT NULL,
  `estabs_entry_rate` decimal(38,3) NOT NULL,
  `estabs_exit` decimal(38,0) NOT NULL,
  `estabs_exit_rate` decimal(38,3) NOT NULL,
  `job_creation` decimal(38,0) NOT NULL,
  `job_creation_births` decimal(38,0) NOT NULL,
  `job_creation_continuers` decimal(38,0) NOT NULL,
  `job_creation_rate_births` decimal(38,3) NOT NULL,
  `job_creation_rate` decimal(38,3) NOT NULL,
  `job_destruction` decimal(38,0) NOT NULL,
  `job_destruction_deaths` decimal(38,0) NOT NULL,
  `job_destruction_continuers` decimal(38,0) NOT NULL,
  `job_destruction_rate_deaths` decimal(38,3) NOT NULL,
  `job_destruction_rate` decimal(38,3) NOT NULL,
  `net_job_creation` decimal(38,0) NOT NULL,
  `net_job_creation_rate` decimal(38,3) NOT NULL,
  `reallocation_rate` decimal(38,3) NOT NULL,
  `firmdeath_firms` decimal(38,0) NOT NULL,
  `firmdeath_estabs` decimal(38,0) NOT NULL,
  `firmdeath_emp` decimal(38,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bds2018_metro`
--

LOCK TABLES `bds2018_metro` WRITE;
/*!40000 ALTER TABLE `bds2018_metro` DISABLE KEYS */;
/*!40000 ALTER TABLE `bds2018_metro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bds2018_msa`
--

DROP TABLE IF EXISTS `bds2018_msa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bds2018_msa` (
  `year` decimal(38,0) NOT NULL,
  `msa` decimal(38,0) NOT NULL,
  `firms` decimal(38,0) NOT NULL,
  `estabs` decimal(38,0) NOT NULL,
  `emp` varchar(7) NOT NULL,
  `denom` varchar(7) NOT NULL,
  `estabs_entry` varchar(5) NOT NULL,
  `estabs_entry_rate` varchar(18) NOT NULL,
  `estabs_exit` varchar(5) NOT NULL,
  `estabs_exit_rate` varchar(18) NOT NULL,
  `job_creation` varchar(7) NOT NULL,
  `job_creation_births` varchar(6) NOT NULL,
  `job_creation_continuers` varchar(6) NOT NULL,
  `job_creation_rate_births` varchar(19) NOT NULL,
  `job_creation_rate` varchar(18) NOT NULL,
  `job_destruction` varchar(7) NOT NULL,
  `job_destruction_deaths` varchar(6) NOT NULL,
  `job_destruction_continuers` varchar(6) NOT NULL,
  `job_destruction_rate_deaths` varchar(18) NOT NULL,
  `job_destruction_rate` varchar(18) NOT NULL,
  `net_job_creation` varchar(7) NOT NULL,
  `net_job_creation_rate` varchar(21) NOT NULL,
  `reallocation_rate` varchar(18) NOT NULL,
  `firmdeath_firms` varchar(5) NOT NULL,
  `firmdeath_estabs` varchar(5) NOT NULL,
  `firmdeath_emp` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bds2018_msa`
--

LOCK TABLES `bds2018_msa` WRITE;
/*!40000 ALTER TABLE `bds2018_msa` DISABLE KEYS */;
/*!40000 ALTER TABLE `bds2018_msa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bds2018_sector`
--

DROP TABLE IF EXISTS `bds2018_sector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bds2018_sector` (
  `year` decimal(38,0) NOT NULL,
  `sector` varchar(5) NOT NULL,
  `firms` decimal(38,0) NOT NULL,
  `estabs` decimal(38,0) NOT NULL,
  `emp` decimal(38,0) NOT NULL,
  `denom` decimal(38,0) NOT NULL,
  `estabs_entry` decimal(38,0) NOT NULL,
  `estabs_entry_rate` decimal(38,16) NOT NULL,
  `estabs_exit` decimal(38,0) NOT NULL,
  `estabs_exit_rate` decimal(38,16) NOT NULL,
  `job_creation` decimal(38,0) NOT NULL,
  `job_creation_births` decimal(38,0) NOT NULL,
  `job_creation_continuers` varchar(7) NOT NULL,
  `job_creation_rate_births` decimal(38,16) NOT NULL,
  `job_creation_rate` decimal(38,16) NOT NULL,
  `job_destruction` varchar(7) NOT NULL,
  `job_destruction_deaths` varchar(6) NOT NULL,
  `job_destruction_continuers` varchar(7) NOT NULL,
  `job_destruction_rate_deaths` varchar(20) NOT NULL,
  `job_destruction_rate` varchar(18) NOT NULL,
  `net_job_creation` varchar(8) NOT NULL,
  `net_job_creation_rate` decimal(38,18) NOT NULL,
  `reallocation_rate` varchar(18) NOT NULL,
  `firmdeath_firms` varchar(5) NOT NULL,
  `firmdeath_estabs` varchar(5) NOT NULL,
  `firmdeath_emp` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bds2018_sector`
--

LOCK TABLES `bds2018_sector` WRITE;
/*!40000 ALTER TABLE `bds2018_sector` DISABLE KEYS */;
/*!40000 ALTER TABLE `bds2018_sector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bds2018_st`
--

DROP TABLE IF EXISTS `bds2018_st`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bds2018_st` (
  `year` decimal(38,0) NOT NULL,
  `st` decimal(38,0) NOT NULL,
  `firms` decimal(38,0) NOT NULL,
  `estabs` decimal(38,0) NOT NULL,
  `emp` decimal(38,0) NOT NULL,
  `denom` decimal(38,0) NOT NULL,
  `estabs_entry` decimal(38,0) NOT NULL,
  `estabs_entry_rate` decimal(38,16) NOT NULL,
  `estabs_exit` varchar(5) NOT NULL,
  `estabs_exit_rate` varchar(6) NOT NULL,
  `job_creation` decimal(38,0) NOT NULL,
  `job_creation_births` varchar(6) NOT NULL,
  `job_creation_continuers` decimal(38,0) NOT NULL,
  `job_creation_rate_births` varchar(18) NOT NULL,
  `job_creation_rate` decimal(38,15) NOT NULL,
  `job_destruction` decimal(38,0) NOT NULL,
  `job_destruction_deaths` varchar(6) NOT NULL,
  `job_destruction_continuers` varchar(7) NOT NULL,
  `job_destruction_rate_deaths` varchar(6) NOT NULL,
  `job_destruction_rate` decimal(38,16) NOT NULL,
  `net_job_creation` decimal(38,0) NOT NULL,
  `net_job_creation_rate` decimal(38,18) NOT NULL,
  `reallocation_rate` decimal(38,15) NOT NULL,
  `firmdeath_firms` varchar(5) NOT NULL,
  `firmdeath_estabs` varchar(5) NOT NULL,
  `firmdeath_emp` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bds2018_st`
--

LOCK TABLES `bds2018_st` WRITE;
/*!40000 ALTER TABLE `bds2018_st` DISABLE KEYS */;
/*!40000 ALTER TABLE `bds2018_st` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bds2018_vcnaics3`
--

DROP TABLE IF EXISTS `bds2018_vcnaics3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bds2018_vcnaics3` (
  `year` decimal(38,0) NOT NULL,
  `vcnaics3` decimal(38,0) NOT NULL,
  `firms` decimal(38,0) NOT NULL,
  `estabs` decimal(38,0) NOT NULL,
  `emp` decimal(38,0) NOT NULL,
  `denom` decimal(38,0) NOT NULL,
  `estabs_entry` varchar(6) NOT NULL,
  `estabs_entry_rate` varchar(6) NOT NULL,
  `estabs_exit` varchar(5) NOT NULL,
  `estabs_exit_rate` varchar(6) NOT NULL,
  `job_creation` decimal(38,0) NOT NULL,
  `job_creation_births` varchar(6) NOT NULL,
  `job_creation_continuers` decimal(38,0) NOT NULL,
  `job_creation_rate_births` varchar(7) NOT NULL,
  `job_creation_rate` decimal(38,3) NOT NULL,
  `job_destruction` decimal(38,0) NOT NULL,
  `job_destruction_deaths` varchar(6) NOT NULL,
  `job_destruction_continuers` decimal(38,0) NOT NULL,
  `job_destruction_rate_deaths` varchar(6) NOT NULL,
  `job_destruction_rate` decimal(38,3) NOT NULL,
  `net_job_creation` decimal(38,0) NOT NULL,
  `net_job_creation_rate` decimal(38,3) NOT NULL,
  `reallocation_rate` decimal(38,3) NOT NULL,
  `firmdeath_firms` varchar(5) NOT NULL,
  `firmdeath_estabs` varchar(5) NOT NULL,
  `firmdeath_emp` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bds2018_vcnaics3`
--

LOCK TABLES `bds2018_vcnaics3` WRITE;
/*!40000 ALTER TABLE `bds2018_vcnaics3` DISABLE KEYS */;
/*!40000 ALTER TABLE `bds2018_vcnaics3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bds2018_vcnaics4`
--

DROP TABLE IF EXISTS `bds2018_vcnaics4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bds2018_vcnaics4` (
  `year` decimal(38,0) NOT NULL,
  `vcnaics4` decimal(38,0) NOT NULL,
  `firms` decimal(38,0) NOT NULL,
  `estabs` decimal(38,0) NOT NULL,
  `emp` decimal(38,0) NOT NULL,
  `denom` decimal(38,0) NOT NULL,
  `estabs_entry` varchar(5) NOT NULL,
  `estabs_entry_rate` varchar(6) NOT NULL,
  `estabs_exit` varchar(5) NOT NULL,
  `estabs_exit_rate` varchar(7) NOT NULL,
  `job_creation` decimal(38,0) NOT NULL,
  `job_creation_births` varchar(6) NOT NULL,
  `job_creation_continuers` varchar(6) NOT NULL,
  `job_creation_rate_births` varchar(7) NOT NULL,
  `job_creation_rate` decimal(38,3) NOT NULL,
  `job_destruction` decimal(38,0) NOT NULL,
  `job_destruction_deaths` varchar(6) NOT NULL,
  `job_destruction_continuers` varchar(7) NOT NULL,
  `job_destruction_rate_deaths` varchar(7) NOT NULL,
  `job_destruction_rate` decimal(38,3) NOT NULL,
  `net_job_creation` decimal(38,0) NOT NULL,
  `net_job_creation_rate` decimal(38,3) NOT NULL,
  `reallocation_rate` decimal(38,3) NOT NULL,
  `firmdeath_firms` varchar(5) NOT NULL,
  `firmdeath_estabs` varchar(5) NOT NULL,
  `firmdeath_emp` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bds2018_vcnaics4`
--

LOCK TABLES `bds2018_vcnaics4` WRITE;
/*!40000 ALTER TABLE `bds2018_vcnaics4` DISABLE KEYS */;
/*!40000 ALTER TABLE `bds2018_vcnaics4` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-16  0:53:28
