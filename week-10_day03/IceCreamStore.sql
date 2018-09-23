DROP TABLE IF EXISTS `icecreamstore`;
CREATE TABLE `icecreamstore` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Flavors` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Quantities` int(11) DEFAULT NULL,
  `Price` decimal(65,2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `icecreamstore` WRITE;
INSERT INTO `icecreamstore` VALUES (1,'Vanilla',100,1.00),(2,'Chocolate',150,1.25),(3,'Strawberry',95,1.25),(4,'Rocky Road',50,1.50),(5,'Cookie Dough',75,1.50),(25,'testflavor',5,0.25);
UNLOCK TABLES;
