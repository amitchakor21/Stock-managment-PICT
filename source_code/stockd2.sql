-- MySQL dump 10.13  Distrib 5.5.60, for Win32 (AMD64)
--
-- Host: localhost    Database: stockd2
-- ------------------------------------------------------
-- Server version	5.5.60

-- CREATE USER 'root99'@'localhost' IDENTIFIED BY '';
-- GRANT ALL PRIVILEGES ON * . * TO 'root99'@'localhost';

-- create database stockd2;
-- use stockd2;
-- SET GLOBAL time_zone = '+5:30';
-- SELECT now();

-- select * from user;


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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `cat` varchar(500) DEFAULT NULL,
  `sub_cat` varchar(500) DEFAULT NULL,
  `type` varchar(500) NOT NULL,
  `dept_name` varchar(100) DEFAULT NULL,
  `mech` varchar(500) DEFAULT NULL,
  `spec` varchar(3000) DEFAULT NULL,
  PRIMARY KEY (`type`),
  KEY `dept_name` (`dept_name`),
  CONSTRAINT `category_ibfk_1` FOREIGN KEY (`dept_name`) REFERENCES `dept` (`dept_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES ('Printer','DotMatrix','136COL/9PIN','Computer Engineering','M5','Spec5'),('Printer','DotMatrix','80COL/9PIN','Computer Engineering','M4','Spec4'),('Furniture','Fan','Ceiling Fan','Information Technology','M1','S1'),('NETWORKING','Router','DLINK','Information Technology','M1','S1'),('NETWORKING','SWITCH','DLINK 10/100 MBPS','Computer Engineering','M1','Spec1'),('IC1','IS2','g1','Information Technology','m88','s88'),('IC1','IS2','gg4','Information Technology','mm66','sp66'),('IC1','IS1','IT1','Information Technology','mmmmmmmmmmm','sssssssssssssssssss'),('Printer','InkJet','P/S/C','Computer Engineering','M6','Spec6'),('Furniture','Chair','Plastic','Information Technology','M3','S3'),('CC1','CS1','r1','Computer Engineering','m1','s1'),('CC1','CS2','r2','Computer Engineering','m2','s2'),('CC1','CS1','r3','Computer Engineering','m2','s2'),('CC1','CS2','r4','Computer Engineering','m3','s4'),('CC1','CS1','r5','Computer Engineering','m2','s2'),('CC1','CS1','r6','Computer Engineering','mk','sp'),('Furniture','Chair','Rolling Chair','Information Technology','M1','S1'),('IC1','IS1','t2','Information Technology','m2','s2'),('Furniture','Fan','Table Fan','Information Technology','M5','S1'),('NETWORKING','Router','TPLINK','Information Technology','M2','S2'),('NETWORKING','SWITCH','TPLINK 10/100 MBPS','Computer Engineering','M3','Spec3'),('NETWORKING','SWITCH','TPLINK 100/1000MBPS','Computer Engineering','M2','Spec2'),('IC1','IS1','tt3','Information Technology','m4','s4');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dept`
--

DROP TABLE IF EXISTS `dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dept` (
  `dept_id` int(11) DEFAULT NULL,
  `dept_name` varchar(100) NOT NULL,
  PRIMARY KEY (`dept_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dept`
--

LOCK TABLES `dept` WRITE;
/*!40000 ALTER TABLE `dept` DISABLE KEYS */;
INSERT INTO `dept` VALUES (2,'Computer Engineering'),(1,'Information Technology'),(0,'None');
/*!40000 ALTER TABLE `dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itemlog`
--

DROP TABLE IF EXISTS `itemlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `itemlog` (
  `type` varchar(500) DEFAULT NULL,
  `dsrno` varchar(200) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `lab_id` varchar(100) DEFAULT NULL,
  `extra` varchar(2000) DEFAULT NULL,
  `repair` int(11) DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `purchase_num` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemlog`
--

LOCK TABLES `itemlog` WRITE;
/*!40000 ALTER TABLE `itemlog` DISABLE KEYS */;
INSERT INTO `itemlog` VALUES ('DLINK 10/100 MBPS','DSR101','Not working','C-301','Rmk1',0,'2018-10-10','2018-10-10');
/*!40000 ALTER TABLE `itemlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items` (
  `type` varchar(500) DEFAULT NULL,
  `dsrno` varchar(500) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `lab_id` varchar(100) DEFAULT NULL,
  `extra` varchar(2000) DEFAULT NULL,
  `repair` int(11) DEFAULT '0',
  `purchase_date` date DEFAULT NULL,
  `purchase_num` varchar(20) DEFAULT NULL,
  `dept_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`dsrno`),
  KEY `type` (`type`),
  KEY `lab_id` (`lab_id`),
  KEY `dept_name` (`dept_name`),
  CONSTRAINT `items_ibfk_1` FOREIGN KEY (`type`) REFERENCES `category` (`type`),
  CONSTRAINT `items_ibfk_2` FOREIGN KEY (`lab_id`) REFERENCES `labs` (`lab_id`),
  CONSTRAINT `items_ibfk_3` FOREIGN KEY (`dept_name`) REFERENCES `dept` (`dept_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES ('r1','DC101','working','C-301','r',0,'2018-10-23','pn1','Computer Engineering'),('r3','DC102','Not working','C-301','r2',0,'2018-10-11','pn8','Computer Engineering'),('r5','DC103','working','C-302','rmk',0,'2018-10-17','pkl','Computer Engineering'),('r6','DC104','Not working','C-301','j',0,'2018-10-11','xn','Computer Engineering'),('r5','DC105','working','C-301','l',0,'2018-10-12','poi','Computer Engineering'),('DLINK','DC106','working','A-301','hg',0,'2018-10-04','iuy','Computer Engineering'),('tt3','DC107','working','A-301','klp',0,'2018-10-22','pkkk','Information Technology'),('t2','DC108','working','A-302','rmk',0,'2018-10-10','plk','Information Technology'),('IT1','DC109','Not working','A-301','mk',0,'2018-10-11','jh','Information Technology'),('tt3','DC110','working','A-301','vb',0,'2018-10-15','jhg','Information Technology'),('Ceiling Fan','DC112','working','A-301','h',0,'2018-10-18','po','Information Technology'),('Table Fan','DC113','Not working','A-301','kljl',0,'2018-10-23','lk','Information Technology'),('Ceiling Fan','DC114','Not working','A-302','jk',0,'2018-10-16','kjkj','Information Technology'),('Table Fan','DC115','working','A-302','j',0,'2018-10-09','kbkc','Information Technology'),('136COL/9PIN','DSR101','working','C-301','R1',0,'2018-10-11','P1','Computer Engineering'),('Rolling Chair','DSR102','working','A-302','Rmk2',0,'2018-10-23','PN102','Information Technology');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lablog`
--

DROP TABLE IF EXISTS `lablog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lablog` (
  `lab_id` varchar(100) DEFAULT NULL,
  `dept_name` varchar(100) DEFAULT NULL,
  `lab_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lablog`
--

LOCK TABLES `lablog` WRITE;
/*!40000 ALTER TABLE `lablog` DISABLE KEYS */;
INSERT INTO `lablog` VALUES ('1','Noooo','None'),('10','Info Tech','None'),('C-301','Info Tech','Database Lab'),('C-303','Info Tech','Operating system lab'),('C-309','Info Tech','Project Lab'),('l1','Info Tech','ln1'),('l2','Info Tech','ln2'),('l3','Comp','ln3');
/*!40000 ALTER TABLE `lablog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `labs`
--

DROP TABLE IF EXISTS `labs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `labs` (
  `lab_id` varchar(100) NOT NULL,
  `dept_name` varchar(100) DEFAULT NULL,
  `lab_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`lab_id`),
  KEY `dept_name` (`dept_name`),
  CONSTRAINT `labs_ibfk_1` FOREIGN KEY (`dept_name`) REFERENCES `dept` (`dept_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `labs`
--

LOCK TABLES `labs` WRITE;
/*!40000 ALTER TABLE `labs` DISABLE KEYS */;
INSERT INTO `labs` VALUES ('1','None','None'),('10','Information Technology','None'),('20','Computer Engineering','None'),('A-301','Information Technology','Network Lab'),('A-302','Information Technology','OS Lab'),('C-301','Computer Engineering','Project Lab'),('C-302','Computer Engineering','Database Lab');
/*!40000 ALTER TABLE `labs` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger labl before delete on labs
for each row
begin
delete from transfer where from_lab=old.lab_id or to_lab=old.lab_id;
delete from user where lab_id=old.lab_id;
delete from items where lab_id=old.lab_id;
insert into lablog values(old.lab_id,old.dept_name,old.lab_name);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `maintainance`
--

DROP TABLE IF EXISTS `maintainance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maintainance` (
  `description` varchar(1000) DEFAULT NULL,
  `problem` varchar(1000) DEFAULT NULL,
  `given_rep` varchar(20) DEFAULT NULL,
  `received_rep` varchar(20) DEFAULT NULL,
  `remark` varchar(1000) DEFAULT NULL,
  `dsr_no` varchar(50) DEFAULT NULL,
  KEY `dsr_no` (`dsr_no`),
  CONSTRAINT `maintainance_ibfk_1` FOREIGN KEY (`dsr_no`) REFERENCES `items` (`dsrno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maintainance`
--

LOCK TABLES `maintainance` WRITE;
/*!40000 ALTER TABLE `maintainance` DISABLE KEYS */;
INSERT INTO `maintainance` VALUES ('des','prob','2018-10-10','2018-10-17','good','DC102'),('df','pb','2018-10-17','2018-10-17','good','DC102');
/*!40000 ALTER TABLE `maintainance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transfer`
--

DROP TABLE IF EXISTS `transfer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transfer` (
  `dsrno` varchar(200) DEFAULT NULL,
  `user_d` varchar(200) DEFAULT NULL,
  `dt` date DEFAULT NULL,
  `tt` time DEFAULT NULL,
  `from_lab` varchar(100) DEFAULT NULL,
  `to_lab` varchar(100) DEFAULT NULL,
  KEY `dsrno` (`dsrno`),
  KEY `from_lab` (`from_lab`),
  KEY `to_lab` (`to_lab`),
  CONSTRAINT `transfer_ibfk_1` FOREIGN KEY (`dsrno`) REFERENCES `items` (`dsrno`),
  CONSTRAINT `transfer_ibfk_2` FOREIGN KEY (`from_lab`) REFERENCES `labs` (`lab_id`),
  CONSTRAINT `transfer_ibfk_3` FOREIGN KEY (`to_lab`) REFERENCES `labs` (`lab_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transfer`
--

LOCK TABLES `transfer` WRITE;
/*!40000 ALTER TABLE `transfer` DISABLE KEYS */;
INSERT INTO `transfer` VALUES ('DSR101','A101','2018-10-31','19:12:28','C-302','C-301'),('DC102','A101','2018-10-31','23:24:22','C-302','C-301');
/*!40000 ALTER TABLE `transfer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` varchar(100) NOT NULL,
  `dept_name` varchar(100) DEFAULT NULL,
  `lab_id` varchar(100) DEFAULT NULL,
  `uname` varchar(200) DEFAULT NULL,
  `ucategory` varchar(100) DEFAULT NULL,
  `passwd` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `dept_name` (`dept_name`),
  KEY `lab_id` (`lab_id`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`dept_name`) REFERENCES `dept` (`dept_name`),
  CONSTRAINT `user_ibfk_2` FOREIGN KEY (`lab_id`) REFERENCES `labs` (`lab_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('A101','None','1','ADMIN','Admin','admin@123'),('CE101','Computer Engineering','20','CEDI','Department Incharge','admin@123'),('HODIT1','Information Technology','10','HODIT','HOD','Admin@123'),('IT101','Information Technology','10','ITDI','Department Incharge','admin@123'),('LAIT101','Information Technology','A-301','LAIT','Lab Assistent','Admin@123');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userlog`
--

DROP TABLE IF EXISTS `userlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userlog` (
  `user_id` varchar(100) DEFAULT NULL,
  `dept_name` varchar(100) DEFAULT NULL,
  `lab_id` varchar(100) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `ucategory` varchar(200) DEFAULT NULL,
  `passwd` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userlog`
--

LOCK TABLES `userlog` WRITE;
/*!40000 ALTER TABLE `userlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `userlog` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-31 23:38:27
