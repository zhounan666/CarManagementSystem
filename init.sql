-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: carmanagement
-- ------------------------------------------------------
-- Server version	8.0.38

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
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car` (
  `carId` int NOT NULL AUTO_INCREMENT,
  `price` double DEFAULT NULL,
  `powerType` varchar(50) DEFAULT NULL,
  `brand` varchar(50) DEFAULT NULL,
  `series` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `number` int DEFAULT NULL,
  PRIMARY KEY (`carId`)
) ENGINE=InnoDB AUTO_INCREMENT=3592 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car`
--

LOCK TABLES `car` WRITE;
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
INSERT INTO `car` VALUES (1,45678,'汽油','AUDI','A4L','SUV',2),(190,2200,'汽油','AUDI','宋L','轿车',3),(191,45678,'汽油','BYD','EH7','跑车',1),(3492,12345,'柴油','AUDI','Q5','SUV',6),(3493,249900,'电动','特斯拉','Model 3','轿车',50),(3494,438000,'汽油','宝马','5系','轿车',35),(3495,359800,'汽油',' 奥迪','   A4L','轿车',42),(3496,129800,'汽油',' 丰田','   卡罗拉','轿车',80),(3497,229800,'汽油',' 比亚迪','   汉EV','轿车',60),(3498,379000,'汽油','  奔驰',' C级','轿车',28),(3499,159800,'汽油','  本田',' 思域','轿车',75),(3500,358000,'汽油','  蔚来','  ES6','轿车',45),(3501,339000,'汽油','  沃尔沃','   S60','轿车',30),(3502,119800,'汽油',' 日产','   S61','轿车',90),(3503,269900,'汽油','  小鹏汽车','   S62','轿车',55),(3504,688000,'汽油',' 保时捷','   S63','  SUV',15),(3505,169800,'汽油',' 吉利','   S64','  SUV',65),(3506,458000,'汽油',' 路虎','   S65','  SUV',20),(3507,338000,'汽油',' 理想汽车','   S66','  SUV',40),(3508,109800,'汽油',' 理想汽车','   S67','  SUV',100),(3509,375000,'汽油',' 理想汽车','   S68','  SUV',25),(3510,375001,'汽油',' 理想汽车','   S69','  SUV',120),(3511,375002,'汽油',' 理想汽车','   S70','  SUV',32),(3512,375003,'汽油',' 理想汽车','   S71','  SUV',58),(3575,1898,'汽油','Byd','宋L','SUV',3),(3576,2298,'纯电动','RedBanner','EH7','轿车',5),(3577,3218,'汽油','AUDI','A4L','轿车',2),(3578,4279,'油电混合','AUDI','A6L','轿车',1),(3579,6328,'汽油','AUDI','Q5','SUV',3),(3580,4399,'汽油','BMW','X5','SUV',8),(3581,4939,'柴油','BMW','Z4','跑车',5),(3582,3539,'汽油','BMW','i3','轿车',4),(3583,2498,'汽油','TOYOTA','汉兰达','SUV',2),(3584,1718,'油电混合','TOYOTA','凯美瑞','轿车',1),(3585,1749,'汽油','Volkswagan','迈腾','轿车',9),(3586,1868,'油电混合','Volkswagan','途观L','SUV',1),(3587,2049,'汽油','Volkswagan','探岳','SUV',2),(3588,1859,'汽油','Honda','CR-V','SUV',6),(3589,1480,'柴油','Nissan','GT-R','跑车',4),(3590,1428,'汽油','LandRover','揽胜','SUV',5),(3591,1198,'油电混合','Ford','福克斯','轿车',3);
/*!40000 ALTER TABLE `car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insurances`
--

DROP TABLE IF EXISTS `insurances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insurances` (
  `insName` varchar(30) NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`insName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurances`
--

LOCK TABLES `insurances` WRITE;
/*!40000 ALTER TABLE `insurances` DISABLE KEYS */;
INSERT INTO `insurances` VALUES ('交强险',1230),('全车盗抢险',100),('无过失责任险',20000),('第三者责任险',10000),('车上人员责任险',200),('车上货物责任险',150),('车损险',123456),('车身划痕损失险',10000),('附加险',12345);
/*!40000 ALTER TABLE `insurances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `orderId` int NOT NULL AUTO_INCREMENT,
  `carId` int DEFAULT NULL,
  `userId` int DEFAULT NULL,
  `cusID` varchar(30) NOT NULL,
  `orderTime` date NOT NULL,
  `cusName` varchar(30) NOT NULL,
  `cusPhone` varchar(30) NOT NULL,
  `hasLicenseServer` varchar(10) NOT NULL,
  `payMethod` varchar(30) DEFAULT NULL,
  `pmtDiscount` int DEFAULT NULL,
  `deposit` int DEFAULT NULL,
  `deliveryTime` date DEFAULT NULL,
  `purchaseTax` int NOT NULL,
  `cusAddress` varchar(50) DEFAULT NULL,
  `isPay` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`orderId`),
  KEY `pk_user` (`userId`),
  KEY `pk_car` (`carId`),
  CONSTRAINT `pk_car` FOREIGN KEY (`carId`) REFERENCES `car` (`carId`),
  CONSTRAINT `pk_user` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,190,1,'1','2024-07-12','周南','18788512731','True','cash',20,30,'2024-07-14',1234,'大连市政府','False'),(2,191,2,'2','2024-07-18','李刚','18788532764','0','全款支付',30,20,'2024-07-03',4567,'大连理工大学','true'),(3,3492,1,'3','2024-07-01','李逵','18388512734','True','cash',10,10,'2024-07-02',4567,'金州区区政府','True'),(4,1,1,'4','2024-07-02','李贵','18588532456','True','cash',15,5,'2024-07-03',4567,'大连市交通规划局','False'),(7,3492,6,'12345','2023-11-11','haha','12434114','1','全款支付',500,300,'2024-07-31',300,'大连理工大学','true'),(8,3492,6,'12345','2023-11-11','haha','12434114','1','全额',500,300,'2033-11-11',300,'大连理工大学','false'),(9,3492,1,'530112200101011234','2024-07-12','张晚意','18577852134','1','全款支付',0,6172500,'2024-07-18',6481675,'北京市朝阳区','true'),(12,190,4,'56','2024-07-01','李梅','15647895','True','分期',10,20,'2024-07-02',20,'大连理工大学','true'),(13,3492,1,'530112200802022786','2024-07-12','杨澜送','15877512431','1',NULL,0,6172500,NULL,6481792,'沈阳市和平区','false'),(14,3492,1,'530112200101012356','2024-07-12','礼貌也','15488795231','1',NULL,0,6172500,NULL,6487347,'山东省淄博市','false'),(15,3492,1,'530112200101014256','2024-07-12','王统绪','15478541236','1','全款支付',0,6172500,'2024-07-23',6481236,'辽宁省沈阳市','true');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purins`
--

DROP TABLE IF EXISTS `purins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purins` (
  `insName` varchar(30) DEFAULT NULL,
  `orderId` int DEFAULT NULL,
  KEY `pk_order` (`orderId`),
  KEY `pk_ins` (`insName`),
  CONSTRAINT `pk_ins` FOREIGN KEY (`insName`) REFERENCES `insurances` (`insName`),
  CONSTRAINT `pk_order` FOREIGN KEY (`orderId`) REFERENCES `order` (`orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purins`
--

LOCK TABLES `purins` WRITE;
/*!40000 ALTER TABLE `purins` DISABLE KEYS */;
INSERT INTO `purins` VALUES ('无过失责任险',1),('交强险',3),('车上人员责任险',4),('交强险',8),('第三者责任险',8),('第三者责任险',9),('车损险',12),('附加险',12),('附加险',13),('第三者责任险',2),('车损险',14),('交强险',7),('第三者责任险',7),('交强险',15);
/*!40000 ALTER TABLE `purins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `userId` int NOT NULL AUTO_INCREMENT,
  `password` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `phoneNumber` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'1111','chenyuan','111','admin'),(2,'222','wangtongxv','2222','manager'),(3,'333','liyaojun','3333','seller'),(4,'444','zhangyuanxin','4444','seller'),(5,'11231413241','chen','12314141','admin'),(6,'11231413241','yang','12314141','manager'),(7,'7777777qwer','seller','18788581111','seller'),(8,'11231413241','chen','12314141','admin'),(9,'11231413241','yang','12314141','admin');
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

-- Dump completed on 2024-07-15 13:59:19
