-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: project
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `bookingid` int NOT NULL AUTO_INCREMENT,
  `bookingdate` date DEFAULT NULL,
  `rid` int NOT NULL,
  `checkin` date DEFAULT NULL,
  `checkout` date DEFAULT NULL,
  `uid` int NOT NULL,
  `totalcost` double DEFAULT NULL,
  `status` varchar(45) DEFAULT 'pending',
  `no_of_rooms` int DEFAULT NULL,
  PRIMARY KEY (`bookingid`),
  KEY `uid_idx` (`uid`),
  KEY `rid_idx` (`rid`),
  CONSTRAINT `rid` FOREIGN KEY (`rid`) REFERENCES `room` (`rid`),
  CONSTRAINT `uid` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=3052 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (3001,'2022-03-21',1001,'2022-03-22','2022-03-25',1,700,'confirm',1),(3002,'2022-03-22',1002,'2022-03-22','2022-03-25',2,500,'confirm',1),(3003,'2022-03-20',1001,'2022-03-21','2022-03-24',1,4200,'confirm',2),(3039,'2022-04-14',1001,'2022-04-15','2022-04-17',1,2800,NULL,2),(3040,'2022-04-15',1001,'2022-04-15','2022-04-17',1,11200,NULL,8),(3041,'2022-04-15',1001,'2022-04-17','2022-04-17',1,0,NULL,1),(3042,'2022-04-15',1001,'2022-04-15','2022-04-18',1,4200,NULL,2),(3043,'2022-04-15',1001,'2022-04-16','2022-04-18',1,4200,NULL,3),(3044,'2022-04-15',1001,'2022-04-16','2022-04-18',1,4200,NULL,3),(3045,'2022-04-15',1001,'2022-04-16','2022-04-17',1,2100,NULL,3),(3046,'2022-04-15',1001,'2022-04-16','2022-04-23',1,4900,NULL,1),(3047,'2022-04-15',1001,'2022-04-16','2022-04-18',1,1400,NULL,1),(3048,'2022-04-15',1001,'2022-04-16','2022-04-18',1,2800,NULL,2),(3049,'2022-04-15',1001,'2022-04-16','2022-04-20',1,2800,NULL,1),(3050,'2022-04-15',1001,'2022-04-16','2022-04-19',1,4200,NULL,2),(3051,'2022-04-16',1001,'2022-04-14','2022-04-15',1,700000,NULL,1000);
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city` (
  `cityid` int NOT NULL,
  `cityname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cityid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (101,'pune'),(102,'mumbai'),(103,'latur');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotel` (
  `hotelid` int NOT NULL AUTO_INCREMENT,
  `hotelregno` int DEFAULT NULL,
  `hname` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `contact_no` double DEFAULT NULL,
  `ac_room` int DEFAULT NULL,
  `non_ac_room` int DEFAULT NULL,
  `uid` int NOT NULL,
  `cityname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`hotelid`),
  KEY `userid_idx` (`uid`),
  CONSTRAINT `u_id` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel`
--

LOCK TABLES `hotel` WRITE;
/*!40000 ALTER TABLE `hotel` DISABLE KEYS */;
INSERT INTO `hotel` VALUES (1,14523,'Oberoi hotel','shivajinagar','oberoi@gmail.com',7894561230,40,40,2,'pune'),(3,14526,'Taj Hotel','Colaba','taj@gmail.com',7895641230,100,50,2,'mumbai'),(4,25634,'JW Hotel','SB Road','jw@gmail.com',9856321470,60,60,2,'pune'),(5,14526,'Ashok Hotel','Ramnagar','ashok@gmail.com',8759641230,30,40,2,'latur'),(37,77777,'pranav hotel','satavwadi hadapsar','sanjay@gmail.com',0,0,0,2,'pune'),(38,14523,'Oberoi hotel','ram nagar','sanjay@gmail.com',0,0,0,2,'latur');
/*!40000 ALTER TABLE `hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `paymentid` int NOT NULL AUTO_INCREMENT,
  `paymentmode` varchar(45) DEFAULT NULL,
  `bookingid` int NOT NULL,
  `uid` int NOT NULL,
  `cvv` varchar(45) DEFAULT NULL,
  `expiry` varchar(45) DEFAULT NULL,
  `cardno` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`paymentid`),
  KEY `uid_idx` (`uid`),
  KEY `bookingid_idx` (`bookingid`),
  CONSTRAINT `bookingid` FOREIGN KEY (`bookingid`) REFERENCES `booking` (`bookingid`),
  CONSTRAINT `u_i_d` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (121,'online',3001,1,NULL,NULL,NULL),(122,'online',3002,2,NULL,NULL,NULL),(123,'online',3003,3,'123','12/2020','123456789'),(124,'online',3003,3,'123','22/2020','123456789'),(132,'online',3040,1,'896','02/2023','888888888'),(133,'online',3041,1,'123','02/2023','123456'),(134,'online',3047,1,'842','02/2023','7894561230'),(135,'online',3048,1,'986','02/2023','123456789'),(136,'online',3049,1,'123','02/2023','7894561230'),(137,'online',3050,1,'985','02/2023','123456789'),(138,'online',3051,1,'963','02/2023','123456789');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `rid` int NOT NULL AUTO_INCREMENT,
  `roomtype` varchar(45) DEFAULT NULL,
  `rateperday` double DEFAULT NULL,
  `hotelid` int NOT NULL,
  PRIMARY KEY (`rid`),
  KEY `hotelid_idx` (`hotelid`)
) ENGINE=InnoDB AUTO_INCREMENT=1016 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (1001,'ac',700,1),(1002,'nonac',500,1),(1003,'ac',700,9),(1004,'ac',1000,13),(1005,'ac',1500,4);
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `uid` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(45) DEFAULT NULL,
  `lname` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `contact_no` varchar(10) DEFAULT NULL,
  `aadhar_no` varchar(12) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `usertype` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'sanjay','mundhe','sanjay@gmail.com','sanjay123','8830144747','384589819439','pune','customer'),(2,'pranav','madlapure','pranav@gmail.com','pranav@123','9404463645','987456123123','pune','service'),(3,'darshan','todkar','darshan@gmail.com','darshan123','8479561230','7984561230','latur','admin'),(4,'shubham','jawak','shubham@gmail.com','shubham123','7985461230','384759126301','pune','customer'),(5,'ram','jawak','ram@gmail.com','ram123','9856231470','879456231014','pune','customer');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-17 21:35:54
