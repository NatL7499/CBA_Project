-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: store_data
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `store_code` varchar(50) NOT NULL,
  `total_sale` decimal(10,2) NOT NULL,
  `transaction_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1006 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (1,'TX001',937.70,'2023-02-12'),(2,'TX001',1117.77,'2023-03-25'),(3,'TX001',365.68,'2023-02-06'),(4,'TX001',199.44,'2023-02-20'),(5,'TX001',530.48,'2023-03-04'),(6,'TX001',396.33,'2023-03-03'),(7,'TX001',1124.23,'2023-03-04'),(8,'TX001',1162.74,'2023-02-19'),(9,'TX001',609.78,'2023-02-25'),(10,'TX001',716.03,'2023-02-24'),(11,'TX001',202.78,'2023-03-25'),(12,'TX001',868.09,'2023-02-12'),(13,'TX001',342.29,'2023-02-05'),(14,'TX001',1040.44,'2023-03-24'),(15,'TX001',788.88,'2023-03-27'),(16,'TX001',651.61,'2023-02-22'),(17,'TX001',594.75,'2023-03-26'),(18,'TX001',989.10,'2023-02-11'),(19,'TX001',703.35,'2023-03-07'),(20,'TX001',259.32,'2023-02-15'),(21,'TX001',790.32,'2023-02-24'),(22,'TX001',773.75,'2023-03-25'),(23,'TX001',1414.88,'2023-03-18'),(24,'TX001',549.15,'2023-03-09'),(25,'TX001',426.88,'2023-02-18'),(26,'TX001',1138.18,'2023-03-08'),(27,'TX001',1183.84,'2023-03-01'),(28,'TX001',441.72,'2023-02-24'),(29,'TX001',478.33,'2023-02-24'),(30,'TX001',993.15,'2023-03-17'),(31,'TX001',556.66,'2023-02-13'),(32,'TX001',1395.29,'2023-03-02'),(33,'TX001',672.66,'2023-03-10'),(34,'TX001',1235.13,'2023-03-10'),(35,'TX001',1240.59,'2023-02-14'),(36,'TX001',189.25,'2023-02-21'),(37,'TX001',598.98,'2023-03-14'),(38,'TX001',976.46,'2023-03-12'),(39,'TX001',1109.53,'2023-02-03'),(40,'TX001',672.03,'2023-03-09'),(41,'TX001',1094.68,'2023-03-01'),(42,'TX001',722.25,'2023-03-24'),(43,'TX001',160.90,'2023-02-24'),(44,'TX001',327.54,'2023-02-27'),(45,'TX001',531.05,'2023-02-09'),(46,'TX001',798.82,'2023-03-10'),(47,'TX001',967.55,'2023-02-13'),(48,'TX001',225.86,'2023-02-17'),(49,'TX001',274.22,'2023-03-22'),(50,'TX001',1431.45,'2023-03-11'),(51,'TX001',1022.17,'2023-02-11'),(52,'TX001',151.18,'2023-03-07'),(53,'TX001',964.00,'2023-03-24'),(54,'TX001',6.72,'2023-03-09'),(55,'TX001',135.94,'2023-02-04'),(56,'TX001',837.92,'2023-02-02'),(57,'TX001',644.36,'2023-02-17'),(58,'TX001',1250.32,'2023-03-15'),(59,'TX001',113.19,'2023-03-18'),(60,'TX001',304.08,'2023-03-22'),(61,'TX001',435.69,'2023-03-18'),(62,'TX001',664.98,'2023-02-25'),(63,'TX001',1232.80,'2023-03-18'),(64,'TX001',791.64,'2023-02-18'),(65,'TX001',1316.31,'2023-02-23'),(66,'TX001',280.20,'2023-02-24'),(67,'TX001',0.35,'2023-02-13'),(68,'TX001',168.92,'2023-03-04'),(69,'TX001',610.83,'2023-03-01'),(70,'TX001',158.47,'2023-03-14'),(71,'TX001',1344.35,'2023-03-16'),(72,'TX001',1175.34,'2023-02-05'),(73,'TX001',229.18,'2023-02-18'),(74,'TX001',572.47,'2023-03-29'),(75,'TX001',1108.21,'2023-03-24'),(76,'TX001',43.45,'2023-02-16'),(77,'TX001',12.43,'2023-03-03'),(78,'TX001',158.59,'2023-02-18'),(79,'TX001',228.21,'2023-02-07'),(80,'TX001',641.19,'2023-03-27'),(81,'TX001',1242.28,'2023-03-09'),(82,'TX001',43.59,'2023-02-19'),(83,'TX001',633.23,'2023-02-16'),(84,'TX001',889.62,'2023-03-09'),(85,'TX001',229.55,'2023-02-08'),(86,'TX001',561.70,'2023-02-06'),(87,'TX001',343.23,'2023-03-05'),(88,'TX001',906.85,'2023-02-03'),(89,'TX001',658.62,'2023-03-06'),(90,'TX001',1333.75,'2023-02-08'),(91,'TX001',623.67,'2023-02-01'),(92,'TX001',429.51,'2023-02-21'),(93,'TX001',1242.58,'2023-02-21'),(94,'TX001',1199.80,'2023-03-26'),(95,'TX001',869.20,'2023-03-23'),(96,'TX001',160.57,'2023-02-11'),(97,'TX001',770.83,'2023-03-18'),(98,'TX001',640.76,'2023-03-30'),(99,'TX001',875.63,'2023-02-28'),(100,'CO005',683.42,'2023-03-22'),(101,'CO005',281.28,'2023-02-28'),(102,'CO005',600.12,'2023-02-27'),(103,'CO005',148.62,'2023-03-30'),(104,'CO005',759.45,'2023-02-21'),(105,'CO005',1433.66,'2023-02-16'),(106,'CO005',532.68,'2023-03-18'),(107,'CO005',1375.00,'2023-03-05'),(108,'CO005',603.08,'2023-03-19'),(109,'CO005',12.29,'2023-03-28'),(110,'CO005',642.92,'2023-02-23'),(111,'CO005',346.41,'2023-03-04'),(112,'CO005',135.41,'2023-02-19'),(113,'CO005',1346.90,'2023-02-25'),(114,'CO005',865.83,'2023-03-30'),(115,'CO005',1479.19,'2023-02-14'),(116,'CO005',847.63,'2023-03-07'),(117,'CO005',955.04,'2023-02-07'),(118,'CO005',1290.82,'2023-02-03'),(119,'CO005',20.50,'2023-02-13'),(120,'CO005',873.32,'2023-03-18'),(121,'CO005',783.18,'2023-03-13'),(122,'CO005',682.45,'2023-02-03'),(123,'CO005',278.32,'2023-02-16'),(124,'CO005',132.54,'2023-03-21'),(125,'CO005',441.75,'2023-02-15'),(126,'CO005',1388.26,'2023-03-07'),(127,'CO005',910.94,'2023-03-20'),(128,'CO005',275.89,'2023-03-18'),(129,'CO005',1113.21,'2023-02-03'),(130,'CO005',381.61,'2023-02-15'),(131,'CO005',892.72,'2023-03-15'),(132,'CO005',1492.06,'2023-03-05'),(133,'CO005',1043.83,'2023-03-07'),(134,'CO005',823.16,'2023-03-29'),(135,'CO005',425.38,'2023-02-05'),(136,'CO005',976.75,'2023-02-11'),(137,'CO005',1407.44,'2023-02-19'),(138,'CO005',938.61,'2023-03-02'),(139,'CO005',574.84,'2023-03-20'),(140,'CO005',1263.55,'2023-03-05'),(141,'CO005',445.52,'2023-02-05'),(142,'CO005',869.47,'2023-02-21'),(143,'CO005',1387.61,'2023-02-26'),(144,'CO005',976.14,'2023-03-03'),(145,'CO005',1388.62,'2023-03-13'),(146,'CO005',917.75,'2023-02-08'),(147,'CO005',658.60,'2023-03-22'),(148,'CO005',29.37,'2023-03-02'),(149,'CO005',1254.66,'2023-02-10'),(150,'CO005',1032.20,'2023-02-06'),(151,'CO005',376.15,'2023-03-29'),(152,'CO005',1405.76,'2023-03-01'),(153,'CO005',1103.72,'2023-02-03'),(154,'CO005',204.41,'2023-03-21'),(155,'CO005',639.71,'2023-03-19'),(156,'CO005',847.63,'2023-03-30'),(157,'CO005',986.63,'2023-02-02'),(158,'CO005',918.58,'2023-03-09'),(159,'CO005',1408.75,'2023-02-14'),(160,'CO005',1064.05,'2023-03-20'),(161,'CO005',844.66,'2023-03-24'),(162,'CO005',629.50,'2023-02-27'),(163,'CO005',1317.21,'2023-02-18'),(164,'CO005',206.75,'2023-03-06'),(165,'CO005',48.20,'2023-03-23'),(166,'CO005',1213.57,'2023-02-12'),(167,'CO005',579.02,'2023-03-01'),(168,'CO005',696.57,'2023-02-15'),(169,'CO005',1283.12,'2023-03-15'),(170,'CO005',1054.31,'2023-02-19'),(171,'CO005',612.56,'2023-02-22'),(172,'CO005',411.89,'2023-02-04'),(173,'CO005',218.33,'2023-03-09'),(174,'CO005',109.57,'2023-03-07'),(175,'CO005',1229.31,'2023-03-23'),(176,'CO005',231.52,'2023-02-22'),(177,'CO005',946.57,'2023-02-24'),(178,'CO005',283.77,'2023-03-08'),(179,'CO005',1056.28,'2023-02-03'),(180,'CO005',1185.86,'2023-03-19'),(181,'CO005',156.95,'2023-02-05'),(182,'CO005',693.99,'2023-02-14'),(183,'CO005',678.88,'2023-03-26'),(184,'CO005',1319.88,'2023-03-30'),(185,'CO005',279.89,'2023-03-13'),(186,'CO005',1425.62,'2023-02-26'),(187,'CO005',279.72,'2023-02-08'),(188,'CO005',657.04,'2023-02-04'),(189,'CO005',1005.38,'2023-02-28'),(190,'CO005',921.96,'2023-03-24'),(191,'CO005',1126.24,'2023-03-04'),(192,'CO005',1499.27,'2023-02-12'),(193,'CO005',97.36,'2023-02-22'),(194,'CO005',771.21,'2023-03-21'),(195,'CO005',334.70,'2023-03-17'),(196,'CO005',1148.56,'2023-02-17'),(197,'CO005',644.79,'2023-02-07'),(198,'CO005',1135.73,'2023-03-12'),(199,'CO005',237.91,'2023-03-05'),(200,'FL006',518.84,'2023-03-08'),(201,'FL006',1345.54,'2023-03-04'),(202,'FL006',1297.99,'2023-03-20'),(203,'FL006',607.91,'2023-02-18'),(204,'FL006',1150.83,'2023-02-21'),(205,'FL006',475.79,'2023-02-16'),(206,'FL006',9.77,'2023-02-25'),(207,'FL006',285.13,'2023-02-26'),(208,'FL006',454.32,'2023-03-17'),(209,'FL006',1091.77,'2023-02-18'),(210,'FL006',1227.36,'2023-03-25'),(211,'FL006',1411.38,'2023-03-02'),(212,'FL006',755.94,'2023-02-11'),(213,'FL006',1492.91,'2023-02-17'),(214,'FL006',1354.58,'2023-03-28'),(215,'FL006',42.16,'2023-02-12'),(216,'FL006',1217.84,'2023-02-10'),(217,'FL006',1252.45,'2023-03-13'),(218,'FL006',1261.49,'2023-02-21'),(219,'FL006',473.78,'2023-03-30'),(220,'FL006',1337.53,'2023-03-03'),(221,'FL006',1304.41,'2023-03-17'),(222,'FL006',530.67,'2023-03-04'),(223,'FL006',1189.85,'2023-02-18'),(224,'FL006',1071.94,'2023-02-22'),(225,'FL006',1389.55,'2023-03-22'),(226,'FL006',212.84,'2023-02-17'),(227,'FL006',459.77,'2023-02-18'),(228,'FL006',782.06,'2023-02-26'),(229,'FL006',576.94,'2023-03-12'),(230,'FL006',1371.92,'2023-03-04'),(231,'FL006',1044.97,'2023-03-18'),(232,'FL006',613.63,'2023-02-22'),(233,'FL006',302.19,'2023-03-28'),(234,'FL006',479.41,'2023-02-16'),(235,'FL006',256.03,'2023-03-20'),(236,'FL006',543.58,'2023-03-29'),(237,'FL006',17.71,'2023-02-19'),(238,'FL006',930.80,'2023-03-27'),(239,'FL006',638.65,'2023-03-02'),(240,'FL006',412.86,'2023-02-28'),(241,'FL006',912.87,'2023-03-14'),(242,'FL006',1046.88,'2023-02-28'),(243,'FL006',1313.57,'2023-03-03'),(244,'FL006',627.16,'2023-02-20'),(245,'FL006',936.55,'2023-03-27'),(246,'FL006',298.53,'2023-03-06'),(247,'FL006',833.74,'2023-03-17'),(248,'FL006',895.83,'2023-03-10'),(249,'FL006',583.55,'2023-03-01'),(250,'FL006',408.30,'2023-03-03'),(251,'FL006',1251.36,'2023-02-12'),(252,'FL006',1357.05,'2023-03-23'),(253,'FL006',728.11,'2023-03-17'),(254,'FL006',851.15,'2023-03-27'),(255,'FL006',493.59,'2023-03-13'),(256,'FL006',278.46,'2023-02-08'),(257,'FL006',384.44,'2023-03-22'),(258,'FL006',695.99,'2023-03-22'),(259,'FL006',1148.14,'2023-02-14'),(260,'FL006',1101.35,'2023-03-26'),(261,'FL006',118.76,'2023-03-24'),(262,'FL006',606.40,'2023-03-08'),(263,'FL006',872.73,'2023-02-05'),(264,'FL006',1011.68,'2023-03-26'),(265,'FL006',640.08,'2023-03-24'),(266,'FL006',916.66,'2023-03-10'),(267,'FL006',739.59,'2023-03-15'),(268,'FL006',1146.05,'2023-02-27'),(269,'FL006',1133.31,'2023-03-14'),(270,'FL006',1238.29,'2023-03-06'),(271,'FL006',1172.28,'2023-02-11'),(272,'FL006',1480.73,'2023-03-20'),(273,'FL006',943.36,'2023-03-20'),(274,'FL006',556.89,'2023-02-16'),(275,'FL006',1135.62,'2023-02-01'),(276,'FL006',371.57,'2023-02-27'),(277,'FL006',45.20,'2023-02-14'),(278,'FL006',1296.20,'2023-02-25'),(279,'FL006',1208.45,'2023-02-15'),(280,'FL006',881.75,'2023-03-15'),(281,'FL006',916.28,'2023-02-06'),(282,'FL006',208.88,'2023-03-28'),(283,'FL006',1163.04,'2023-02-24'),(284,'FL006',819.84,'2023-03-20'),(285,'FL006',670.71,'2023-02-17'),(286,'FL006',970.16,'2023-03-29'),(287,'FL006',901.57,'2023-02-20'),(288,'FL006',976.04,'2023-02-06'),(289,'FL006',791.31,'2023-03-07'),(290,'FL006',933.29,'2023-03-30'),(291,'FL006',907.85,'2023-03-29'),(292,'FL006',176.03,'2023-02-16'),(293,'FL006',156.22,'2023-03-18'),(294,'FL006',882.24,'2023-03-14'),(295,'FL006',1476.14,'2023-02-21'),(296,'FL006',1443.60,'2023-03-11'),(297,'FL006',653.56,'2023-03-26'),(298,'FL006',865.64,'2023-03-12'),(299,'FL006',190.00,'2023-03-22'),(300,'AZ002',357.96,'2023-02-18'),(301,'AZ002',316.53,'2023-03-01'),(302,'AZ002',122.14,'2023-03-18'),(303,'AZ002',87.59,'2023-02-12'),(304,'AZ002',234.23,'2023-03-19'),(305,'AZ002',1154.77,'2023-02-01'),(306,'AZ002',935.79,'2023-02-25'),(307,'AZ002',469.48,'2023-02-19'),(308,'AZ002',335.82,'2023-02-22'),(309,'AZ002',103.95,'2023-02-20'),(310,'AZ002',1356.65,'2023-03-16'),(311,'AZ002',425.49,'2023-02-15'),(312,'AZ002',469.80,'2023-03-24'),(313,'AZ002',180.04,'2023-02-10'),(314,'AZ002',877.09,'2023-02-03'),(315,'AZ002',971.78,'2023-02-04'),(316,'AZ002',109.27,'2023-02-03'),(317,'AZ002',9.29,'2023-03-03'),(318,'AZ002',885.56,'2023-02-12'),(319,'AZ002',364.19,'2023-03-15'),(320,'AZ002',510.07,'2023-02-18'),(321,'AZ002',1098.19,'2023-02-14'),(322,'AZ002',721.77,'2023-03-03'),(323,'AZ002',1012.85,'2023-02-01'),(324,'AZ002',83.98,'2023-02-01'),(325,'AZ002',352.46,'2023-03-05'),(326,'AZ002',1037.73,'2023-02-22'),(327,'AZ002',485.79,'2023-03-07'),(328,'AZ002',1255.45,'2023-03-01'),(329,'AZ002',1280.66,'2023-02-12'),(330,'AZ002',1078.54,'2023-02-09'),(331,'AZ002',652.16,'2023-03-03'),(332,'AZ002',1122.54,'2023-02-28'),(333,'AZ002',516.20,'2023-02-26'),(334,'AZ002',1136.88,'2023-02-27'),(335,'AZ002',954.54,'2023-02-10'),(336,'AZ002',244.01,'2023-03-02'),(337,'AZ002',431.93,'2023-02-01'),(338,'AZ002',983.46,'2023-03-12'),(339,'AZ002',970.90,'2023-03-28'),(340,'AZ002',1203.44,'2023-02-07'),(341,'AZ002',1481.67,'2023-03-01'),(342,'AZ002',837.70,'2023-02-21'),(343,'AZ002',1342.24,'2023-02-21'),(344,'AZ002',971.92,'2023-03-10'),(345,'AZ002',480.02,'2023-02-10'),(346,'AZ002',104.78,'2023-03-17'),(347,'AZ002',115.29,'2023-03-12'),(348,'AZ002',24.10,'2023-02-20'),(349,'AZ002',389.50,'2023-02-18'),(350,'AZ002',135.16,'2023-02-04'),(351,'AZ002',835.43,'2023-03-30'),(352,'AZ002',1387.43,'2023-02-12'),(353,'AZ002',502.15,'2023-03-18'),(354,'AZ002',1245.59,'2023-03-25'),(355,'AZ002',402.24,'2023-02-09'),(356,'AZ002',6.69,'2023-02-03'),(357,'AZ002',444.32,'2023-02-02'),(358,'AZ002',1248.22,'2023-02-04'),(359,'AZ002',990.28,'2023-02-24'),(360,'AZ002',773.26,'2023-02-18'),(361,'AZ002',1083.61,'2023-03-20'),(362,'AZ002',149.31,'2023-03-20'),(363,'AZ002',814.52,'2023-03-28'),(364,'AZ002',221.47,'2023-02-12'),(365,'AZ002',223.20,'2023-02-28'),(366,'AZ002',737.99,'2023-03-22'),(367,'AZ002',463.33,'2023-03-20'),(368,'AZ002',1285.60,'2023-02-23'),(369,'AZ002',1492.13,'2023-03-18'),(370,'AZ002',887.09,'2023-02-11'),(371,'AZ002',514.04,'2023-03-19'),(372,'AZ002',1397.16,'2023-03-27'),(373,'AZ002',1247.69,'2023-02-18'),(374,'AZ002',891.65,'2023-02-18'),(375,'AZ002',846.78,'2023-03-05'),(376,'AZ002',223.78,'2023-02-02'),(377,'AZ002',309.25,'2023-02-02'),(378,'AZ002',1457.16,'2023-03-03'),(379,'AZ002',164.50,'2023-03-09'),(380,'AZ002',951.66,'2023-02-08'),(381,'AZ002',1226.81,'2023-02-24'),(382,'AZ002',302.05,'2023-03-05'),(383,'AZ002',416.53,'2023-03-26'),(384,'AZ002',996.83,'2023-03-09'),(385,'AZ002',100.40,'2023-02-19'),(386,'AZ002',124.28,'2023-03-14'),(387,'AZ002',245.22,'2023-02-03'),(388,'AZ002',167.85,'2023-03-20'),(389,'AZ002',1175.83,'2023-02-19'),(390,'AZ002',607.05,'2023-02-25'),(391,'AZ002',786.00,'2023-02-05'),(392,'AZ002',517.23,'2023-03-10'),(393,'AZ002',1457.87,'2023-03-24'),(394,'AZ002',462.28,'2023-02-14'),(395,'AZ002',262.74,'2023-02-18'),(396,'AZ002',406.36,'2023-03-04'),(397,'AZ002',683.65,'2023-02-04'),(398,'AZ002',1239.69,'2023-03-21'),(399,'AZ002',1170.25,'2023-02-23'),(400,'PA001',668.01,'2023-02-07'),(401,'PA001',1482.46,'2023-03-08'),(402,'PA001',895.99,'2023-03-28'),(403,'PA001',224.53,'2023-02-21'),(404,'PA001',735.84,'2023-02-23'),(405,'PA001',896.76,'2023-02-11'),(406,'PA001',486.22,'2023-03-02'),(407,'PA001',1456.62,'2023-03-27'),(408,'PA001',341.16,'2023-03-11'),(409,'PA001',990.51,'2023-03-14'),(410,'PA001',733.14,'2023-03-08'),(411,'PA001',1013.07,'2023-03-07'),(412,'PA001',165.17,'2023-02-24'),(413,'PA001',1349.15,'2023-02-16'),(414,'PA001',1122.96,'2023-02-17'),(415,'PA001',548.95,'2023-03-01'),(416,'PA001',75.77,'2023-03-28'),(417,'PA001',939.86,'2023-03-27'),(418,'PA001',538.74,'2023-02-24'),(419,'PA001',184.93,'2023-03-23'),(420,'PA001',1064.92,'2023-02-08'),(421,'PA001',978.39,'2023-02-24'),(422,'PA001',418.35,'2023-02-02'),(423,'PA001',540.13,'2023-02-27'),(424,'PA001',827.37,'2023-03-06'),(425,'PA001',476.34,'2023-02-15'),(426,'PA001',1346.26,'2023-03-12'),(427,'PA001',992.64,'2023-03-24'),(428,'PA001',1415.79,'2023-03-20'),(429,'PA001',566.88,'2023-03-25'),(430,'PA001',1199.16,'2023-03-22'),(431,'PA001',27.32,'2023-02-19'),(432,'PA001',880.54,'2023-02-27'),(433,'PA001',1287.29,'2023-02-03'),(434,'PA001',849.22,'2023-02-09'),(435,'PA001',1235.61,'2023-03-06'),(436,'PA001',1127.74,'2023-02-12'),(437,'PA001',1016.62,'2023-02-26'),(438,'PA001',342.67,'2023-03-14'),(439,'PA001',73.79,'2023-02-23'),(440,'PA001',1103.14,'2023-03-17'),(441,'PA001',1121.62,'2023-02-24'),(442,'PA001',1158.21,'2023-03-29'),(443,'PA001',717.58,'2023-02-02'),(444,'PA001',1128.80,'2023-02-27'),(445,'PA001',190.33,'2023-03-12'),(446,'PA001',705.95,'2023-02-16'),(447,'PA001',650.99,'2023-02-05'),(448,'PA001',67.19,'2023-03-19'),(449,'PA001',1012.87,'2023-03-17'),(450,'PA001',752.23,'2023-02-17'),(451,'PA001',203.23,'2023-03-02'),(452,'PA001',538.50,'2023-03-04'),(453,'PA001',206.67,'2023-02-05'),(454,'PA001',666.47,'2023-02-18'),(455,'PA001',951.52,'2023-03-03'),(456,'PA001',1046.75,'2023-02-07'),(457,'PA001',421.47,'2023-03-22'),(458,'PA001',533.19,'2023-03-07'),(459,'PA001',1247.27,'2023-02-11'),(460,'PA001',1232.69,'2023-03-23'),(461,'PA001',589.99,'2023-02-18'),(462,'PA001',696.92,'2023-02-16'),(463,'PA001',1342.65,'2023-02-21'),(464,'PA001',503.51,'2023-03-12'),(465,'PA001',588.52,'2023-02-01'),(466,'PA001',809.05,'2023-02-17'),(467,'PA001',1299.29,'2023-02-14'),(468,'PA001',272.97,'2023-02-28'),(469,'PA001',1297.52,'2023-02-02'),(470,'PA001',1289.93,'2023-03-15'),(471,'PA001',334.34,'2023-02-20'),(472,'PA001',379.45,'2023-03-25'),(473,'PA001',181.20,'2023-02-03'),(474,'PA001',97.88,'2023-03-07'),(475,'PA001',202.15,'2023-03-11'),(476,'PA001',310.88,'2023-02-12'),(477,'PA001',1489.25,'2023-03-22'),(478,'PA001',1161.22,'2023-03-29'),(479,'PA001',262.62,'2023-03-21'),(480,'PA001',720.43,'2023-03-21'),(481,'PA001',845.11,'2023-03-15'),(482,'PA001',348.41,'2023-03-25'),(483,'PA001',1075.38,'2023-02-24'),(484,'PA001',773.87,'2023-03-22'),(485,'PA001',466.34,'2023-02-03'),(486,'PA001',1062.24,'2023-02-02'),(487,'PA001',93.78,'2023-03-03'),(488,'PA001',1216.66,'2023-02-05'),(489,'PA001',473.92,'2023-02-03'),(490,'PA001',232.48,'2023-02-03'),(491,'PA001',1066.30,'2023-03-24'),(492,'PA001',111.70,'2023-02-13'),(493,'PA001',804.38,'2023-03-10'),(494,'PA001',145.43,'2023-03-20'),(495,'PA001',1031.43,'2023-03-21'),(496,'PA001',373.11,'2023-02-02'),(497,'PA001',1255.26,'2023-02-19'),(498,'PA001',249.08,'2023-02-01'),(499,'PA001',1130.60,'2023-02-22'),(500,'TN010',18.62,'2023-03-23'),(501,'TN010',440.78,'2023-02-13'),(502,'TN010',178.91,'2023-02-01'),(503,'TN010',271.77,'2023-02-13'),(504,'TN010',464.24,'2023-02-13'),(505,'TN010',1351.16,'2023-03-21'),(506,'TN010',494.93,'2023-03-16'),(507,'TN010',659.49,'2023-02-12'),(508,'TN010',1097.73,'2023-03-29'),(509,'TN010',58.03,'2023-02-05'),(510,'TN010',432.78,'2023-02-20'),(511,'TN010',598.22,'2023-03-22'),(512,'TN010',736.33,'2023-03-30'),(513,'TN010',1417.63,'2023-02-27'),(514,'TN010',1337.60,'2023-03-20'),(515,'TN010',1369.23,'2023-03-22'),(516,'TN010',1042.79,'2023-03-23'),(517,'TN010',419.11,'2023-02-12'),(518,'TN010',161.84,'2023-02-03'),(519,'TN010',272.37,'2023-03-22'),(520,'TN010',411.53,'2023-03-22'),(521,'TN010',362.33,'2023-02-25'),(522,'TN010',301.16,'2023-02-15'),(523,'TN010',1171.09,'2023-02-15'),(524,'TN010',1299.18,'2023-03-06'),(525,'TN010',857.97,'2023-03-10'),(526,'TN010',536.89,'2023-03-22'),(527,'TN010',986.05,'2023-02-06'),(528,'TN010',47.85,'2023-02-10'),(529,'TN010',1459.38,'2023-03-24'),(530,'TN010',60.34,'2023-02-03'),(531,'TN010',1189.06,'2023-02-28'),(532,'TN010',636.32,'2023-03-27'),(533,'TN010',491.02,'2023-03-09'),(534,'TN010',1354.43,'2023-03-18'),(535,'TN010',976.89,'2023-03-10'),(536,'TN010',1035.94,'2023-02-22'),(537,'TN010',330.85,'2023-02-25'),(538,'TN010',19.44,'2023-02-16'),(539,'TN010',474.45,'2023-02-26'),(540,'TN010',925.93,'2023-03-15'),(541,'TN010',958.06,'2023-03-16'),(542,'TN010',559.68,'2023-03-30'),(543,'TN010',669.15,'2023-03-29'),(544,'TN010',182.78,'2023-03-22'),(545,'TN010',1325.11,'2023-02-14'),(546,'TN010',886.61,'2023-02-20'),(547,'TN010',93.65,'2023-03-07'),(548,'TN010',0.86,'2023-03-26'),(549,'TN010',1265.88,'2023-03-26'),(550,'TN010',1336.19,'2023-03-08'),(551,'TN010',623.86,'2023-02-01'),(552,'TN010',330.18,'2023-03-12'),(553,'TN010',642.34,'2023-03-11'),(554,'TN010',1354.95,'2023-02-28'),(555,'TN010',313.88,'2023-03-27'),(556,'TN010',99.26,'2023-03-25'),(557,'TN010',1144.00,'2023-02-17'),(558,'TN010',711.68,'2023-03-16'),(559,'TN010',1182.10,'2023-02-01'),(560,'TN010',473.81,'2023-02-12'),(561,'TN010',1306.62,'2023-02-05'),(562,'TN010',1132.36,'2023-03-23'),(563,'TN010',1290.63,'2023-02-02'),(564,'TN010',826.22,'2023-03-04'),(565,'TN010',1034.83,'2023-03-19'),(566,'TN010',609.73,'2023-02-06'),(567,'TN010',130.26,'2023-02-18'),(568,'TN010',959.42,'2023-03-14'),(569,'TN010',772.91,'2023-02-05'),(570,'TN010',440.87,'2023-03-13'),(571,'TN010',878.27,'2023-02-10'),(572,'TN010',976.51,'2023-03-18'),(573,'TN010',918.19,'2023-03-13'),(574,'TN010',318.08,'2023-03-26'),(575,'TN010',1346.47,'2023-03-10'),(576,'TN010',909.77,'2023-03-03'),(577,'TN010',997.80,'2023-03-06'),(578,'TN010',794.35,'2023-03-13'),(579,'TN010',1186.85,'2023-02-16'),(580,'TN010',737.52,'2023-03-18'),(581,'TN010',165.38,'2023-03-28'),(582,'TN010',970.74,'2023-02-24'),(583,'TN010',179.53,'2023-03-14'),(584,'TN010',47.97,'2023-03-21'),(585,'TN010',249.77,'2023-02-20'),(586,'TN010',1085.72,'2023-03-14'),(587,'TN010',941.44,'2023-03-19'),(588,'TN010',124.97,'2023-02-07'),(589,'TN010',987.75,'2023-02-04'),(590,'TN010',1394.16,'2023-03-01'),(591,'TN010',115.91,'2023-03-05'),(592,'TN010',930.73,'2023-03-13'),(593,'TN010',941.39,'2023-03-20'),(594,'TN010',1234.19,'2023-03-28'),(595,'TN010',641.25,'2023-02-18'),(596,'TN010',196.57,'2023-03-21'),(597,'TN010',373.73,'2023-03-14'),(598,'TN010',593.30,'2023-03-09'),(599,'TN010',1446.11,'2023-03-15'),(600,'IA002',1353.76,'2023-03-14'),(601,'IA002',792.05,'2023-02-07'),(602,'IA002',1358.86,'2023-03-16'),(603,'IA002',429.36,'2023-02-01'),(604,'IA002',1115.45,'2023-02-18'),(605,'IA002',881.96,'2023-02-14'),(606,'IA002',1050.87,'2023-03-26'),(607,'IA002',143.85,'2023-02-06'),(608,'IA002',157.75,'2023-03-10'),(609,'IA002',1187.50,'2023-02-23'),(610,'IA002',324.58,'2023-03-17'),(611,'IA002',53.06,'2023-03-20'),(612,'IA002',1410.77,'2023-02-06'),(613,'IA002',1072.38,'2023-02-19'),(614,'IA002',1002.85,'2023-02-25'),(615,'IA002',1401.81,'2023-03-25'),(616,'IA002',1317.62,'2023-03-12'),(617,'IA002',1152.59,'2023-02-08'),(618,'IA002',1232.75,'2023-02-22'),(619,'IA002',1282.07,'2023-02-24'),(620,'IA002',49.60,'2023-02-08'),(621,'IA002',191.06,'2023-02-13'),(622,'IA002',1292.08,'2023-03-19'),(623,'IA002',407.42,'2023-03-24'),(624,'IA002',676.08,'2023-03-16'),(625,'IA002',1336.34,'2023-02-10'),(626,'IA002',154.79,'2023-02-19'),(627,'IA002',241.33,'2023-03-22'),(628,'IA002',381.24,'2023-02-10'),(629,'IA002',816.29,'2023-03-17'),(630,'IA002',238.53,'2023-02-21'),(631,'IA002',234.86,'2023-03-07'),(632,'IA002',1377.31,'2023-03-03'),(633,'IA002',903.62,'2023-02-15'),(634,'IA002',705.33,'2023-03-22'),(635,'IA002',1044.15,'2023-03-24'),(636,'IA002',883.37,'2023-02-25'),(637,'IA002',884.26,'2023-02-22'),(638,'IA002',523.15,'2023-02-16'),(639,'IA002',837.28,'2023-02-07'),(640,'IA002',1294.41,'2023-03-08'),(641,'IA002',675.36,'2023-03-10'),(642,'IA002',1268.30,'2023-03-17'),(643,'IA002',821.72,'2023-03-05'),(644,'IA002',504.81,'2023-03-01'),(645,'IA002',69.03,'2023-03-07'),(646,'IA002',1242.72,'2023-03-19'),(647,'IA002',502.36,'2023-03-07'),(648,'IA002',12.20,'2023-03-12'),(649,'IA002',680.59,'2023-02-27'),(650,'IA002',1136.01,'2023-03-10'),(651,'IA002',601.44,'2023-02-21'),(652,'IA002',1197.39,'2023-02-23'),(653,'IA002',356.52,'2023-03-11'),(654,'IA002',975.61,'2023-03-23'),(655,'IA002',368.06,'2023-02-15'),(656,'IA002',1122.43,'2023-03-11'),(657,'IA002',274.10,'2023-03-29'),(658,'IA002',336.53,'2023-02-23'),(659,'IA002',1480.08,'2023-03-02'),(660,'IA002',1211.82,'2023-03-24'),(661,'IA002',401.10,'2023-02-05'),(662,'IA002',1489.00,'2023-02-07'),(663,'IA002',999.76,'2023-02-25'),(664,'IA002',756.85,'2023-03-30'),(665,'IA002',1010.37,'2023-03-13'),(666,'IA002',935.17,'2023-02-06'),(667,'IA002',427.49,'2023-02-25'),(668,'IA002',222.92,'2023-02-26'),(669,'IA002',1463.56,'2023-02-22'),(670,'IA002',1345.81,'2023-02-05'),(671,'IA002',601.93,'2023-03-06'),(672,'IA002',1103.19,'2023-03-29'),(673,'IA002',181.89,'2023-02-12'),(674,'IA002',1327.06,'2023-03-25'),(675,'IA002',1402.17,'2023-02-13'),(676,'IA002',740.05,'2023-03-30'),(677,'IA002',1356.01,'2023-02-21'),(678,'IA002',232.51,'2023-02-05'),(679,'IA002',960.55,'2023-03-06'),(680,'IA002',110.81,'2023-02-13'),(681,'IA002',607.61,'2023-03-23'),(682,'IA002',721.08,'2023-03-20'),(683,'IA002',1027.91,'2023-02-27'),(684,'IA002',1228.78,'2023-02-17'),(685,'IA002',977.51,'2023-03-23'),(686,'IA002',1318.59,'2023-03-30'),(687,'IA002',535.91,'2023-02-24'),(688,'IA002',184.69,'2023-02-18'),(689,'IA002',88.52,'2023-03-07'),(690,'IA002',790.94,'2023-02-26'),(691,'IA002',1159.33,'2023-03-23'),(692,'IA002',140.30,'2023-02-27'),(693,'IA002',1113.09,'2023-02-13'),(694,'IA002',988.89,'2023-03-30'),(695,'IA002',1085.84,'2023-02-20'),(696,'IA002',849.95,'2023-02-06'),(697,'IA002',1250.06,'2023-03-16'),(698,'IA002',155.30,'2023-03-26'),(699,'IA002',914.31,'2023-02-19'),(700,'CO023',608.34,'2023-03-23'),(701,'CO023',1221.99,'2023-02-06'),(702,'CO023',896.40,'2023-02-26'),(703,'CO023',4.28,'2023-03-10'),(704,'CO023',654.67,'2023-03-08'),(705,'CO023',1093.64,'2023-03-04'),(706,'CO023',738.66,'2023-02-18'),(707,'CO023',586.70,'2023-03-20'),(708,'CO023',1344.80,'2023-03-06'),(709,'CO023',1273.22,'2023-03-06'),(710,'CO023',1144.01,'2023-02-04'),(711,'CO023',595.95,'2023-02-20'),(712,'CO023',530.70,'2023-03-30'),(713,'CO023',373.88,'2023-02-22'),(714,'CO023',1074.08,'2023-03-16'),(715,'CO023',1500.00,'2023-03-01'),(716,'CO023',1208.96,'2023-03-21'),(717,'CO023',1277.75,'2023-02-13'),(718,'CO023',504.34,'2023-02-26'),(719,'CO023',321.95,'2023-03-03'),(720,'CO023',1236.85,'2023-03-10'),(721,'CO023',715.40,'2023-02-03'),(722,'CO023',694.14,'2023-03-03'),(723,'CO023',102.89,'2023-02-25'),(724,'CO023',1147.24,'2023-03-28'),(725,'CO023',1391.12,'2023-03-16'),(726,'CO023',686.23,'2023-03-28'),(727,'CO023',140.97,'2023-03-19'),(728,'CO023',109.92,'2023-02-05'),(729,'CO023',638.67,'2023-02-06'),(730,'CO023',432.41,'2023-02-12'),(731,'CO023',229.74,'2023-03-20'),(732,'CO023',1352.43,'2023-03-08'),(733,'CO023',418.59,'2023-03-25'),(734,'CO023',1397.29,'2023-03-30'),(735,'CO023',1488.29,'2023-02-28'),(736,'CO023',1348.80,'2023-02-22'),(737,'CO023',1409.84,'2023-03-22'),(738,'CO023',1200.38,'2023-02-17'),(739,'CO023',1146.01,'2023-03-09'),(740,'CO023',470.12,'2023-03-27'),(741,'CO023',985.69,'2023-03-03'),(742,'CO023',1452.44,'2023-02-08'),(743,'CO023',266.11,'2023-02-13'),(744,'CO023',1490.19,'2023-03-10'),(745,'CO023',1415.06,'2023-02-08'),(746,'CO023',1230.73,'2023-03-01'),(747,'CO023',1466.05,'2023-03-05'),(748,'CO023',179.53,'2023-03-20'),(749,'CO023',650.67,'2023-03-11'),(750,'CO023',617.78,'2023-03-06'),(751,'CO023',1164.08,'2023-03-23'),(752,'CO023',1204.16,'2023-02-08'),(753,'CO023',1211.29,'2023-03-20'),(754,'CO023',1463.16,'2023-03-28'),(755,'CO023',830.35,'2023-03-26'),(756,'CO023',1318.64,'2023-03-23'),(757,'CO023',20.87,'2023-02-08'),(758,'CO023',1073.20,'2023-03-26'),(759,'CO023',1194.09,'2023-03-20'),(760,'CO023',1260.03,'2023-03-17'),(761,'CO023',729.57,'2023-02-01'),(762,'CO023',279.33,'2023-03-02'),(763,'CO023',1032.93,'2023-03-04'),(764,'CO023',1239.09,'2023-03-29'),(765,'CO023',1074.29,'2023-03-23'),(766,'CO023',1022.99,'2023-02-26'),(767,'CO023',621.96,'2023-03-15'),(768,'CO023',473.66,'2023-03-15'),(769,'CO023',612.62,'2023-02-19'),(770,'CO023',1492.03,'2023-03-01'),(771,'CO023',951.61,'2023-02-16'),(772,'CO023',275.33,'2023-02-02'),(773,'CO023',1298.75,'2023-03-24'),(774,'CO023',1374.35,'2023-03-03'),(775,'CO023',21.06,'2023-03-04'),(776,'CO023',296.71,'2023-03-12'),(777,'CO023',599.35,'2023-03-26'),(778,'CO023',278.37,'2023-02-26'),(779,'CO023',341.44,'2023-02-17'),(780,'CO023',44.26,'2023-03-07'),(781,'CO023',928.80,'2023-03-24'),(782,'CO023',1192.09,'2023-02-14'),(783,'CO023',774.38,'2023-03-29'),(784,'CO023',1386.22,'2023-03-03'),(785,'CO023',1429.95,'2023-03-04'),(786,'CO023',1108.75,'2023-02-03'),(787,'CO023',136.45,'2023-02-16'),(788,'CO023',706.80,'2023-02-02'),(789,'CO023',205.41,'2023-02-08'),(790,'CO023',1443.86,'2023-02-11'),(791,'CO023',161.72,'2023-02-21'),(792,'CO023',1120.16,'2023-03-02'),(793,'CO023',194.37,'2023-02-19'),(794,'CO023',866.06,'2023-03-22'),(795,'CO023',309.31,'2023-03-19'),(796,'CO023',1134.86,'2023-03-07'),(797,'CO023',251.62,'2023-03-13'),(798,'CO023',1370.90,'2023-03-23'),(799,'CO023',1382.54,'2023-03-30'),(800,'TX090',784.33,'2023-03-12'),(801,'TX090',1307.97,'2023-02-23'),(802,'TX090',1402.51,'2023-02-13'),(803,'TX090',1354.31,'2023-02-10'),(804,'TX090',64.96,'2023-02-15'),(805,'TX090',658.42,'2023-03-16'),(806,'TX090',14.75,'2023-02-11'),(807,'TX090',914.58,'2023-02-13'),(808,'TX090',507.76,'2023-02-23'),(809,'TX090',966.58,'2023-03-20'),(810,'TX090',1196.44,'2023-02-18'),(811,'TX090',149.83,'2023-03-18'),(812,'TX090',195.91,'2023-02-15'),(813,'TX090',1478.96,'2023-02-04'),(814,'TX090',619.26,'2023-03-04'),(815,'TX090',473.81,'2023-02-02'),(816,'TX090',253.61,'2023-02-22'),(817,'TX090',1431.88,'2023-02-12'),(818,'TX090',862.38,'2023-02-27'),(819,'TX090',935.44,'2023-03-30'),(820,'TX090',1360.83,'2023-02-09'),(821,'TX090',944.78,'2023-02-23'),(822,'TX090',1047.27,'2023-03-17'),(823,'TX090',808.60,'2023-02-20'),(824,'TX090',606.62,'2023-03-05'),(825,'TX090',810.33,'2023-02-09'),(826,'TX090',146.49,'2023-03-14'),(827,'TX090',510.33,'2023-03-24'),(828,'TX090',1141.61,'2023-02-05'),(829,'TX090',550.62,'2023-02-06'),(830,'TX090',170.28,'2023-02-03'),(831,'TX090',510.35,'2023-02-14'),(832,'TX090',1030.52,'2023-03-17'),(833,'TX090',830.89,'2023-02-14'),(834,'TX090',628.03,'2023-02-11'),(835,'TX090',1261.93,'2023-03-17'),(836,'TX090',1102.94,'2023-02-26'),(837,'TX090',1418.23,'2023-03-16'),(838,'TX090',827.21,'2023-03-01'),(839,'TX090',29.20,'2023-02-09'),(840,'TX090',1431.99,'2023-02-13'),(841,'TX090',94.74,'2023-02-10'),(842,'TX090',1470.39,'2023-02-03'),(843,'TX090',641.49,'2023-03-10'),(844,'TX090',111.78,'2023-03-25'),(845,'TX090',725.36,'2023-03-14'),(846,'TX090',997.75,'2023-02-12'),(847,'TX090',277.57,'2023-02-17'),(848,'TX090',676.92,'2023-03-25'),(849,'TX090',784.98,'2023-03-21'),(850,'TX090',1046.36,'2023-02-16'),(851,'TX090',737.03,'2023-03-22'),(852,'TX090',1348.84,'2023-03-27'),(853,'TX090',1372.41,'2023-03-17'),(854,'TX090',600.27,'2023-02-01'),(855,'TX090',850.64,'2023-02-20'),(856,'TX090',415.41,'2023-03-29'),(857,'TX090',449.28,'2023-03-20'),(858,'TX090',1176.89,'2023-02-21'),(859,'TX090',584.44,'2023-02-09'),(860,'TX090',744.22,'2023-02-05'),(861,'TX090',1474.29,'2023-02-04'),(862,'TX090',442.79,'2023-02-01'),(863,'TX090',727.95,'2023-02-18'),(864,'TX090',328.69,'2023-03-05'),(865,'TX090',662.95,'2023-03-04'),(866,'TX090',907.03,'2023-03-02'),(867,'TX090',217.29,'2023-02-26'),(868,'TX090',48.32,'2023-02-20'),(869,'TX090',1176.17,'2023-02-16'),(870,'TX090',1355.82,'2023-03-05'),(871,'TX090',670.16,'2023-02-10'),(872,'TX090',500.25,'2023-03-28'),(873,'TX090',981.55,'2023-02-21'),(874,'TX090',1068.12,'2023-03-18'),(875,'TX090',195.10,'2023-03-22'),(876,'TX090',331.21,'2023-02-18'),(877,'TX090',60.21,'2023-02-07'),(878,'TX090',754.70,'2023-02-24'),(879,'TX090',338.41,'2023-03-06'),(880,'TX090',39.17,'2023-02-22'),(881,'TX090',726.30,'2023-03-18'),(882,'TX090',203.39,'2023-02-15'),(883,'TX090',1046.22,'2023-02-01'),(884,'TX090',1387.58,'2023-03-03'),(885,'TX090',630.55,'2023-02-01'),(886,'TX090',1451.38,'2023-03-09'),(887,'TX090',723.36,'2023-02-05'),(888,'TX090',889.05,'2023-02-13'),(889,'TX090',333.69,'2023-02-07'),(890,'TX090',178.69,'2023-03-06'),(891,'TX090',691.78,'2023-02-12'),(892,'TX090',1300.64,'2023-02-24'),(893,'TX090',181.79,'2023-02-04'),(894,'TX090',1445.81,'2023-03-03'),(895,'TX090',1387.25,'2023-02-24'),(896,'TX090',274.32,'2023-03-11'),(897,'TX090',1210.77,'2023-02-20'),(898,'TX090',1437.31,'2023-02-06'),(899,'TX090',1440.35,'2023-03-02'),(900,'ID004',831.07,'2023-02-26'),(901,'ID004',648.13,'2023-02-01'),(902,'ID004',701.31,'2023-02-21'),(903,'ID004',800.17,'2023-03-19'),(904,'ID004',477.58,'2023-03-12'),(905,'ID004',902.45,'2023-02-12'),(906,'ID004',496.39,'2023-03-15'),(907,'ID004',292.52,'2023-03-22'),(908,'ID004',677.86,'2023-03-16'),(909,'ID004',798.81,'2023-02-10'),(910,'ID004',418.15,'2023-02-05'),(911,'ID004',149.46,'2023-03-29'),(912,'ID004',697.56,'2023-02-10'),(913,'ID004',76.30,'2023-03-30'),(914,'ID004',758.84,'2023-02-18'),(915,'ID004',404.14,'2023-02-25'),(916,'ID004',63.86,'2023-03-02'),(917,'ID004',458.49,'2023-03-19'),(918,'ID004',155.05,'2023-03-23'),(919,'ID004',413.83,'2023-03-16'),(920,'ID004',464.01,'2023-03-22'),(921,'ID004',326.56,'2023-03-01'),(922,'ID004',785.93,'2023-02-14'),(923,'ID004',499.64,'2023-03-03'),(924,'ID004',1479.33,'2023-02-06'),(925,'ID004',307.18,'2023-03-12'),(926,'ID004',704.87,'2023-03-16'),(927,'ID004',1153.27,'2023-03-18'),(928,'ID004',362.53,'2023-03-15'),(929,'ID004',1286.46,'2023-02-28'),(930,'ID004',380.77,'2023-03-30'),(931,'ID004',957.77,'2023-03-12'),(932,'ID004',277.95,'2023-02-10'),(933,'ID004',1023.13,'2023-03-05'),(934,'ID004',981.81,'2023-02-24'),(935,'ID004',1430.30,'2023-03-07'),(936,'ID004',579.17,'2023-03-29'),(937,'ID004',162.88,'2023-02-02'),(938,'ID004',1067.29,'2023-02-13'),(939,'ID004',332.78,'2023-03-27'),(940,'ID004',184.76,'2023-03-26'),(941,'ID004',269.18,'2023-03-11'),(942,'ID004',778.52,'2023-03-18'),(943,'ID004',262.23,'2023-02-22'),(944,'ID004',863.54,'2023-03-24'),(945,'ID004',710.49,'2023-03-24'),(946,'ID004',1010.94,'2023-03-23'),(947,'ID004',616.23,'2023-03-09'),(948,'ID004',1368.32,'2023-02-24'),(949,'ID004',1486.17,'2023-02-26'),(950,'ID004',1043.52,'2023-03-04'),(951,'ID004',1023.01,'2023-02-13'),(952,'ID004',681.55,'2023-02-24'),(953,'ID004',1419.37,'2023-03-23'),(954,'ID004',568.56,'2023-03-29'),(955,'ID004',1125.92,'2023-02-25'),(956,'ID004',988.52,'2023-03-27'),(957,'ID004',1074.60,'2023-03-27'),(958,'ID004',392.79,'2023-02-14'),(959,'ID004',462.18,'2023-03-06'),(960,'ID004',1372.58,'2023-02-20'),(961,'ID004',782.27,'2023-02-16'),(962,'ID004',1200.45,'2023-03-15'),(963,'ID004',1163.72,'2023-02-06'),(964,'ID004',48.13,'2023-02-23'),(965,'ID004',845.99,'2023-03-11'),(966,'ID004',446.40,'2023-02-21'),(967,'ID004',311.80,'2023-03-03'),(968,'ID004',1080.55,'2023-03-07'),(969,'ID004',1085.69,'2023-03-26'),(970,'ID004',1264.91,'2023-03-21'),(971,'ID004',860.85,'2023-02-01'),(972,'ID004',1312.04,'2023-02-18'),(973,'ID004',1117.94,'2023-02-28'),(974,'ID004',890.26,'2023-03-26'),(975,'ID004',653.39,'2023-02-04'),(976,'ID004',403.68,'2023-03-15'),(977,'ID004',1018.90,'2023-03-20'),(978,'ID004',265.67,'2023-03-26'),(979,'ID004',1288.74,'2023-03-16'),(980,'ID004',1133.31,'2023-03-10'),(981,'ID004',1137.35,'2023-02-11'),(982,'ID004',1359.17,'2023-02-27'),(983,'ID004',641.26,'2023-02-20'),(984,'ID004',763.24,'2023-02-07'),(985,'ID004',764.49,'2023-03-06'),(986,'ID004',1163.72,'2023-02-06'),(987,'ID004',1070.65,'2023-02-01'),(988,'ID004',97.87,'2023-02-14'),(989,'ID004',106.39,'2023-03-06'),(990,'ID004',1341.48,'2023-02-19'),(991,'ID004',459.54,'2023-02-14'),(992,'ID004',450.55,'2023-02-12'),(993,'ID004',679.45,'2023-03-07'),(994,'ID004',529.84,'2023-03-16'),(995,'ID004',551.16,'2023-03-05'),(996,'ID004',415.76,'2023-02-24'),(997,'ID004',1173.57,'2023-02-16'),(998,'ID004',1415.01,'2023-03-05'),(999,'ID004',770.52,'2023-02-21'),(1000,'ID004',921.10,'2023-03-03'),(1001,'TEST',100.10,'2024-04-23'),(1005,'Test2',10000.20,'2025-04-23');
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-24  0:52:00