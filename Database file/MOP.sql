CREATE DATABASE  IF NOT EXISTS `mop` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mop`;
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: mop
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `contact_us`
--

DROP TABLE IF EXISTS `contact_us`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_us` (
  `contact_id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(45) DEFAULT NULL,
  `fname` varchar(45) DEFAULT NULL,
  `lname` varchar(45) DEFAULT NULL,
  `city` int DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `topic` varchar(45) DEFAULT NULL,
  `postal` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `village` varchar(45) DEFAULT NULL,
  `message` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`contact_id`),
  KEY `fk_contact_city_id_idx` (`city`),
  CONSTRAINT `fk_contact_city_id` FOREIGN KEY (`city`) REFERENCES `lu_cities` (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_us`
--

LOCK TABLES `contact_us` WRITE;
/*!40000 ALTER TABLE `contact_us` DISABLE KEYS */;
INSERT INTO `contact_us` VALUES (23,'tal7a.tmam@gmail.com','talha','alshafeai',1,'0791490906','الطاقة المتجددة','123','irbid qasiliy','الحي الشرقي','صيضصيصض'),(28,'sameer@khaled.cm','tt','cs',2,'asdaddsasadsadas','qdwqwdqwdqwd','123','irbid qasiliy','الحي الشرقي','qwewqqweqweeqw'),(29,'kajofostog@gmail.om','talh','cs',1,'qwdqwdqwdqwdq','qweeqwqwe','444444','irbid qasiliy','الحي الشرقي','qweqweqweqweqwe'),(35,'tal7a.tmam@gmail.com','talha','alshafeai',1,'0791490906','الطاقة المتجددة','123','irbid qasiliy','الحي الشرقي','312312312'),(36,'tal7a.tmam@gmail.com','talha','alshafeai',1,'0791490906','الطاقة المتجددة','123','irbid qasiliy','الحي الشرقي','qweqweqwe'),(37,'tal7a.tmam@gmail.com','talha','alshafeai',1,'0791490906','qwe','123','irbid qasiliy','الحي الشرقي','qwe'),(38,'tal7a.tmam@gmail.com','talha','alshafeai',1,'0791490906','الطاقة المتجددة','123','irbid qasiliy','الحي الشرقي','dsfsdfsdfsdf'),(39,'tal7a.tmam@gmail.com','talha','alshafeai',1,'0791490906','ضصيضصيضصيضص','123','irbid qasiliy','qwdwqddwq','ضصثضصثضصث'),(40,'tal7a.tmam@gmail.com','talha','alshafeai',1,'0791490906','الطاقة المتجددة','123','irbid qasiliy','الحي الشرقي','ff'),(41,'tal7a.tmam@gmail.com','talha','alshafeai',1,'0791490906','الطاقة المتجددة','123','irbid qasiliy','الحي الشرقي','qweqwe'),(42,'tal7a.tmam@gmail.com','talha','alshafeai',1,'0791490906','الطاقة المتجددة','123','irbid qasiliy','الحي الشرقي','qweqwe'),(43,'tal7a.tmam@gmail.com','talha','alshafeai',1,'0791490906','qwdqwd','123','irbid qasiliy','الحي الشرقي','qweqwe'),(44,'tal7a.tmam@gmail.com','talha','alshafeai',1,'0791490906','الطاقة المتجددة','21141','irbid qasiliy','الحي الشرقي','qweqweqwe');
/*!40000 ALTER TABLE `contact_us` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_news_letter`
--

DROP TABLE IF EXISTS `es_news_letter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `es_news_letter` (
  `sub_id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`sub_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_news_letter`
--

LOCK TABLES `es_news_letter` WRITE;
/*!40000 ALTER TABLE `es_news_letter` DISABLE KEYS */;
INSERT INTO `es_news_letter` VALUES (1,'sameer@khaled.com'),(2,'kajofostog@gmail.com'),(3,'sameer@khaled.com');
/*!40000 ALTER TABLE `es_news_letter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_students_scholarships`
--

DROP TABLE IF EXISTS `es_students_scholarships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `es_students_scholarships` (
  `stu_scl_id` int NOT NULL AUTO_INCREMENT,
  `nationality` int DEFAULT NULL,
  `fname` varchar(45) DEFAULT NULL,
  `sname` varchar(45) DEFAULT NULL,
  `lname` varchar(45) DEFAULT NULL,
  `scholarship` int DEFAULT NULL,
  `nationalno` varchar(45) DEFAULT NULL,
  `birth_day` varchar(45) DEFAULT NULL,
  `major` varchar(45) DEFAULT NULL,
  `degree` int DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`stu_scl_id`),
  KEY `fk_nat_sch_id_idx` (`nationality`),
  KEY `fk_sch_sch_id_idx` (`scholarship`),
  KEY `fk_deg_sch_id_idx` (`degree`),
  CONSTRAINT `fk_deg_sch_id` FOREIGN KEY (`degree`) REFERENCES `lu_degree` (`degree_id`),
  CONSTRAINT `fk_nat_sch_id` FOREIGN KEY (`nationality`) REFERENCES `lu_nationality` (`nat_id`),
  CONSTRAINT `fk_sch_sch_id` FOREIGN KEY (`scholarship`) REFERENCES `lu_scholarships` (`scholar_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_students_scholarships`
--

LOCK TABLES `es_students_scholarships` WRITE;
/*!40000 ALTER TABLE `es_students_scholarships` DISABLE KEYS */;
INSERT INTO `es_students_scholarships` VALUES (6,1,'سمير','الشافعي','alshafeai',1,'66666','2020-09-04','cs',2,'sameer@sameer.com','0791490906'),(7,1,'سمير','خالد','الشافعي',1,'222','1992-03-27','علم الحاسوب',1,'sameer@khaled.com','0791490906');
/*!40000 ALTER TABLE `es_students_scholarships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_train_students`
--

DROP TABLE IF EXISTS `es_train_students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `es_train_students` (
  `train_id` int NOT NULL AUTO_INCREMENT,
  `nationality` int DEFAULT NULL,
  `nationalno` varchar(45) DEFAULT NULL,
  `birth_day` varchar(45) DEFAULT NULL,
  `city` int DEFAULT NULL,
  `fname` varchar(45) DEFAULT NULL,
  `lname` varchar(45) DEFAULT NULL,
  `year` varchar(45) DEFAULT NULL,
  `university` int DEFAULT NULL,
  `major` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`train_id`),
  KEY `fk_nat_trs_id_idx` (`nationality`),
  KEY `fk_city_trs_id_idx` (`city`),
  KEY `fk_uni_trs_id_idx` (`university`),
  CONSTRAINT `fk_city_trs_id` FOREIGN KEY (`city`) REFERENCES `lu_cities` (`city_id`),
  CONSTRAINT `fk_nat_trs_id` FOREIGN KEY (`nationality`) REFERENCES `lu_nationality` (`nat_id`),
  CONSTRAINT `fk_uni_trs_id` FOREIGN KEY (`university`) REFERENCES `lu_university` (`uni_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_train_students`
--

LOCK TABLES `es_train_students` WRITE;
/*!40000 ALTER TABLE `es_train_students` DISABLE KEYS */;
INSERT INTO `es_train_students` VALUES (19,1,'9981045170','1999-02-08',2,'talha','alshafeai','4',8,'علم الحاسوب','tal7a.tmam@gmail.com','0791490906'),(20,1,'9981045170','1999-05-25',4,'talha','alshafeai','4',7,'علم الحاسوب','tal7a.tmam@gmail.com','0791490906'),(21,1,'9981045170','1999-05-05',1,'talha','alshafeai','4',6,'علم الحاسوب','tal7a.tmam@gmail.com','0791490906'),(22,1,'9981045170','1999-05-05',1,'talha','alshafeai','4',5,'علم الحاسوب','tal7a.tmam@gmail.com','0791490906');
/*!40000 ALTER TABLE `es_train_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_answers`
--

DROP TABLE IF EXISTS `faq_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_answers` (
  `answer_id` int NOT NULL AUTO_INCREMENT,
  `question_id` int DEFAULT NULL,
  `answer_txt` varchar(1100) DEFAULT NULL,
  `answer_bs` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`answer_id`),
  KEY `faq_idx` (`question_id`),
  CONSTRAINT `fk_faq` FOREIGN KEY (`question_id`) REFERENCES `faq_questions` (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_answers`
--

LOCK TABLES `faq_answers` WRITE;
/*!40000 ALTER TABLE `faq_answers` DISABLE KEYS */;
INSERT INTO `faq_answers` VALUES (1,1,'<li>قسم تنمية المحافظات، ويعنى بشكل عام بإعداد ملفات معلوماتية للمحافظات في المملكة وحسب التقسيمات الإدارية فيها، وإعداد برامج تنموية للمحافظات تعمل كوثائق مرجعية لتوجيه جهود القطاعين العام والخاص ومؤسسات المجتمع المدني وفق أولويات تنموية واضحة ومحددة تتضمن مؤشرات لقياس الأداء وآليات لتقييم أثر تنفيذ برامج ومشاريع على مستوى المحافظات.</li><li>قسم تطوير البلديات: ويعنى بشكل عام بمتابعة المشاريع التنموية المتعلقة بقطاع البلديات.</li><li>قسم مؤسسات المجتمع المدني والتمويل الميكروي ويعنى بشكل عام في متابعة وتطوير سياسات وآليات عمل قطاع التمويل الميكروي وتوسيع قاعدة المستفيدين منه</li>','One'),(2,2,'<li>\n                                            كافة الوزارات والمؤسسات الحكومية\n                                        </li>\n                                        <li>\n                                            البلديات.\n                                        </li>\n                                        <li>\n                                            مؤسسات التمويل الميكروي\n                                        </li>\n                                        <li>\n                                            الجهات المانحة تحديداً في مجال دعم مشاريع التنمية المحلية.\n                                        </li>','Two'),(3,3,'                                        <li>\n                                            تنسيق الجهود الوطنية نحو تحقيق التنمية المتوازنة بين مختلف مناطق المملكة من خلال العمل على تضييق الفجوات الاقتصادية والاجتماعية وتحقيق التوازن في توزيع السكان والحد من الهجرات الداخلية باتجاه المراكز الحضارية الكبرى. </li>\n                                        <li>\n                                            المساهمة في تمكين مؤسسات الإدارة المحلية (المحافظات، البلديات) ومؤسسات المجتمع المدني، القطاع الخاص للقيام وبشكل تشاركي بالدور التنموي والمهام والمسؤوليات المناطة بهم من حيث تحديد اولويات واحتياجات مجتمعاتهم المحلية.\n                                        </li>','Three'),(4,4,'<li>تنسيق الجهود الوطنية نحو تحقيق التنمية المتوازنة بين مختلف مناطق المملكة من خلال العمل على تضييق الفجوات الاقتصادية والاجتماعية وتحقيق التوازن في توزيع السكان والحد من الهجرات الداخلية باتجاه المراكز الحضارية الكبرى.</li> <li>المساهمة في تمكين مؤسسات الإدارة المحلية (المحافظات، البلديات) ومؤسسات المجتمع المدني، القطاع الخاص للقيام وبشكل تشاركي بالدور التنموي والمهام والمسؤوليات المناطة بهم من حيث تحديد اولويات واحتياجات مجتمعاتهم المحلية.</li>','Four'),(5,5,'للوزارة دور محوري في وضع الخطط والبرامج التنموية متوسطة وطويلة المدى على المستويين الوطني والمحلي والتأكد من انعكاس آثارها المباشرة وغير المباشرة على المواطنين.','Five'),(6,6,'للوزارة دور محوري في وضع الخطط والبرامج التنموية متوسطة وطويلة المدى على المستويين الوطني والمحلي والتأكد من انعكاس آثارها المباشرة وغير المباشرة على المواطنين.\n<br>\nوفي مجال التنمية المحلية تحديدا فهي تعمل على رسم وتبني مفاهيم وممارسات تنموية على مستوى صناعة السياسات لمعالجة العديد من الاختلالات في مجال التنمية المستدامة وبالتنسيق مع كافة الجهات المعنية، إضافةً إلى تبنيها لبرامج جديدة تنسجم مع مفهومي الإنتاجية والاستدامة في العملية التنموية مع التركيز على المحافظات.','Six');
/*!40000 ALTER TABLE `faq_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_questions`
--

DROP TABLE IF EXISTS `faq_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_questions` (
  `question_id` int NOT NULL AUTO_INCREMENT,
  `question_tit` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_questions`
--

LOCK TABLES `faq_questions` WRITE;
/*!40000 ALTER TABLE `faq_questions` DISABLE KEYS */;
INSERT INTO `faq_questions` VALUES (1,'ما هي أقسم المديرية، وطبيعة عمله /برنامج تعزيز الانتاجية الاقتصادية والاجتماعية؟'),(2,'من هم أبرز عملاء المديرية /برنامج تعزيز الانتاجية الاقتصادية والاجتماعية؟'),(3,'ما هو دور مديرية التنمية المحلية في وزارة التخطيط والتعاون الدولي؟'),(4,'ما هو دور وزارة التخطيط والتعاون الدولي في مجال التنمية المحلية؟'),(5,'ما هو دور وزارة التخطيط والتعاون الدولي في مجال التنمية المحلية؟'),(6,'ما هو تعريف التنمية المحلية؟');
/*!40000 ALTER TABLE `faq_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `file_categories`
--

DROP TABLE IF EXISTS `file_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `file_categories` (
  `file_cat_id` int NOT NULL AUTO_INCREMENT,
  `file_cat` varchar(45) NOT NULL,
  PRIMARY KEY (`file_cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file_categories`
--

LOCK TABLES `file_categories` WRITE;
/*!40000 ALTER TABLE `file_categories` DISABLE KEYS */;
INSERT INTO `file_categories` VALUES (1,'programs'),(2,'reports');
/*!40000 ALTER TABLE `file_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `files` (
  `file_id` int NOT NULL AUTO_INCREMENT,
  `file_name` varchar(45) DEFAULT NULL,
  `file_date` varchar(45) DEFAULT NULL,
  `file_ext` varchar(45) DEFAULT NULL,
  `file_size_KB` varchar(45) DEFAULT NULL,
  `file_url` varchar(45) DEFAULT NULL,
  `file_cat` int DEFAULT NULL,
  PRIMARY KEY (`file_id`),
  KEY `fk_file_cat_idx` (`file_cat`),
  CONSTRAINT `fk_file_cat` FOREIGN KEY (`file_cat`) REFERENCES `file_categories` (`file_cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
INSERT INTO `files` VALUES (1,'دليل الخدمات','2016','pdf','1110','serv_guide.pdf',1),(2,'البرنامج التنموي التنفيذي','2011-2013','pdf','5517','program_2011_2013.pdf',1),(3,'البرنامج التنموي التنفيذي','2016-2018','pdf','14135','program_2016_2018.pdf',1),(4,'برنامج عمل الحكومة','2013-2016','pdf','4903','program_2013_2016.pdf',1),(12,'التقرير السنوي','2006','pdf',NULL,'report_2006.pdf',2),(23,'التقرير السنوي','2007','pdf',NULL,'report_2007.pdf',2),(24,'التقرير السنوي','2008','pdf',NULL,'report_2008.pdf',2),(25,'التقرير السنوي','2009','pdf',NULL,'report_2009.pdf',2),(26,'التقرير السنوي','2010','pdf',NULL,'report_2010.pdf',2),(27,'التقرير السنوي','2011','pdf',NULL,'report_2011.pdf',2),(28,'التقرير السنوي','2012','pdf',NULL,'report_2012.pdf',2),(29,'التقرير السنوي','2013','pdf',NULL,'report_2013.pdf',2),(30,'التقرير السنوي','2014','pdf',NULL,'report_2014.pdf',2),(31,'التقرير السنوي','2015','pdf',NULL,'report_2015.pdf',2),(32,'التقرير السنوي','2016','pdf',NULL,'report_2016.pdf',2),(33,'التقرير السنوي','2017','pdf',NULL,'report_2017.pdf',2),(34,'التقرير السنوي','2018','pdf',NULL,'report_2018.pdf',2);
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hr_directors`
--

DROP TABLE IF EXISTS `hr_directors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hr_directors` (
  `director_id` int NOT NULL AUTO_INCREMENT,
  `dir_name` varchar(45) DEFAULT NULL,
  `dir_email` varchar(45) DEFAULT NULL,
  `dir_tel` varchar(45) DEFAULT NULL,
  `dir_num` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`director_id`),
  UNIQUE KEY `dir_num_UNIQUE` (`dir_num`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hr_directors`
--

LOCK TABLES `hr_directors` WRITE;
/*!40000 ALTER TABLE `hr_directors` DISABLE KEYS */;
INSERT INTO `hr_directors` VALUES (1,'السيد فراس مومني	','Feras_Momani@reformjo.org','301','1'),(2,'عصام المجالي','Issam.Majali@mop.gov.jo','604','2'),(3,'السيد عماد شناعة','Emad.Shanaah@mop.gov.jo',' 310','3'),(4,'السيد عمر نصير','Omar.Nuseir@mop.gov.jo','436','4'),(5,'د. حضرم الفايز','Hadram.Al-Fayez@mop.gov.jo','585','5'),(6,'غير متوفر','غير متوفر',NULL,'6'),(7,'الدكتور نايف المشاقبة	','Nayef.Almashakbeh@mop.gov.jo','315','7'),(8,'السيد رأفت العضايلة','Rafat.Adaileh@mop.gov.jo','457','8'),(9,'المهندسة لمياء الزعبي','Lamia.Alzoabi@mop.gov.jo','307','9'),(10,'المهندسة لمياء الزعبي	','Lamia.Alzoabi@mop.gov.jo','307','10'),(11,'م .فداء جرادات	','Feda.j@mop.gov.jo','541','11'),(12,'السيد محمد مهيار ','Mohammed.Mihyar@MOP.GOV.JO','559','12'),(13,'السيد اشرف محادين	','ashraf.m@mop.gov.jo','343','13'),(14,'المهندس محمد العضايلة	','Mohammad.al-adyleh@mop.gov.jo	','513','14');
/*!40000 ALTER TABLE `hr_directors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hr_gen_pictures`
--

DROP TABLE IF EXISTS `hr_gen_pictures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hr_gen_pictures` (
  `gen_pic_id` int NOT NULL AUTO_INCREMENT,
  `general_id` int DEFAULT NULL,
  `picture_url` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`gen_pic_id`),
  KEY `fk_gen_pic_idx` (`general_id`),
  CONSTRAINT `fk_gen_pic` FOREIGN KEY (`general_id`) REFERENCES `hr_gen_sec` (`general_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hr_gen_pictures`
--

LOCK TABLES `hr_gen_pictures` WRITE;
/*!40000 ALTER TABLE `hr_gen_pictures` DISABLE KEYS */;
INSERT INTO `hr_gen_pictures` VALUES (1,1,'gen_1.png'),(2,2,'gen_2.png'),(3,3,'gen_3.jpg'),(4,4,'gen_4.jpg'),(5,5,'gen_5.jpg'),(6,6,'gen_6.png'),(7,7,'gen_7.jpg'),(8,8,'gen_8.jpg'),(9,9,'gen_9.jpg'),(10,10,'gen_10.jpg'),(11,11,'gen_11.png');
/*!40000 ALTER TABLE `hr_gen_pictures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hr_gen_sec`
--

DROP TABLE IF EXISTS `hr_gen_sec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hr_gen_sec` (
  `general_id` int NOT NULL AUTO_INCREMENT,
  `gen_name` varchar(45) DEFAULT NULL,
  `gen_s_date` varchar(45) DEFAULT NULL,
  `gen_e_date` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`general_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hr_gen_sec`
--

LOCK TABLES `hr_gen_sec` WRITE;
/*!40000 ALTER TABLE `hr_gen_sec` DISABLE KEYS */;
INSERT INTO `hr_gen_sec` VALUES (1,'المهندس محمد العضايلة','اّب/2020','حتى الآن'),(2,'الانسة زينة طوقان','2017','2020'),(3,'الدكتور صالح الخرابشة','2009','2017'),(4,'السيد ناصر شريدة','2007','2009'),(5,'السيد ماهر يوسف المدادحة','2005','2007'),(6,'الدكتور تيسير الصمادي','2004 ','2004 '),(7,'السيدة هالة بسيسو','2002','2004'),(8,'السيد عبد الرزاق بني هاني','2001','2002'),(9,'السيد جمال صلاح','1999','2001'),(10,'السيد عبد الرزاق بني هاني','1998','1999'),(11,'السيد نبيل عماري','1998','1999');
/*!40000 ALTER TABLE `hr_gen_sec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hr_min_pictures`
--

DROP TABLE IF EXISTS `hr_min_pictures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hr_min_pictures` (
  `min_pic_id` int NOT NULL AUTO_INCREMENT,
  `minister_id` int DEFAULT NULL,
  `picture_url` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`min_pic_id`),
  KEY `fk_min_pic_id_idx` (`minister_id`),
  CONSTRAINT `fk_min_pic_id` FOREIGN KEY (`minister_id`) REFERENCES `hr_ministers` (`minister_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hr_min_pictures`
--

LOCK TABLES `hr_min_pictures` WRITE;
/*!40000 ALTER TABLE `hr_min_pictures` DISABLE KEYS */;
INSERT INTO `hr_min_pictures` VALUES (1,22,'min_1.jpg'),(2,21,'min_2.jpg'),(3,20,'min_3.jpg'),(4,19,'min_4.jpg'),(5,18,'min_5.jpg'),(6,17,'min_6.jpg'),(7,16,'min_7.jpg'),(8,15,'min_8.jpg'),(9,14,'min_9.jpg'),(10,13,'min_10.jpg'),(11,12,'min_11.jpg'),(12,11,'min_12.jpg'),(13,10,'min_13.jpg'),(14,9,'min_14.jpg'),(15,8,'min_15.jpg'),(16,7,'min_16.jpeg'),(17,6,'min_17.jpg'),(18,5,'min_18.jpg'),(19,4,'min_19.jpg'),(20,3,'min_20.jpg'),(21,2,'min_21.jpg'),(22,1,'min_22.jpg'),(23,23,'min_23.jpg');
/*!40000 ALTER TABLE `hr_min_pictures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hr_ministers`
--

DROP TABLE IF EXISTS `hr_ministers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hr_ministers` (
  `minister_id` int NOT NULL AUTO_INCREMENT,
  `min_name` varchar(45) DEFAULT NULL,
  `min_s_date` varchar(45) DEFAULT NULL,
  `min_e_date` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`minister_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hr_ministers`
--

LOCK TABLES `hr_ministers` WRITE;
/*!40000 ALTER TABLE `hr_ministers` DISABLE KEYS */;
INSERT INTO `hr_ministers` VALUES (1,'الدكتور عبد الله النسور','1984','26-04-1986'),(2,'الدكتور طاهر كنعان','1986','26-04-1989'),(3,'الدكتور زياد فريز','1989','05-12-1989'),(4,'المهندس عوني المصري','1989','17-06-1990'),(5,'الدكتور خالد أمين عبد الله','1990','18-06-1991'),(6,'الدكتور زياد فريز','1991','08-06-1994'),(7,'الدكتورهشام الخطيب','1994','06-01-1995'),(8,'الدكتورة ريما خلف هنيدي','01-1995','19-08-1998'),(9,'الدكتور نبيل عماري','1998','04-03-1999'),(10,'الدكتورة ريما خلف هنيدي','03-1999','23-02-2000'),(11,'الدكتور محمدالحلايقة/بالوكالة','2000','30-04-2000'),(12,'الدكتور طالب الرفاعي','2000','18-06-2000'),(13,'السيد جواد حديد','2000','27-01-2001'),(14,'الدكتور باسم عوض الله','2001','19-02-2005'),(15,'الدكتور تيسير الصمادي','2005 ','05-04-2005'),(16,'السيدة سهير العلي','2005','09-12-2009'),(17,'الدكتور جعفر حسان','2009','29-3-2013'),(18,'الدكتور إبراهيم سيف','31/03/2013','2/03/2015'),(19,'المهندس عماد نجيب فاخوري','03/03/2015','13/06/2018'),(20,'د. ماري كامل قعوار','14/06/2018','09/05/2019'),(21,'د. محمد العسعس','10/05/2019','6/11/2019'),(22,'د. وسام عدنان الربضي','7/11/2019','تشرين الأول '),(23,'معالي السيد ناصر شريدة','تشرين الأول 2020 ','حتى الآن');
/*!40000 ALTER TABLE `hr_ministers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lu_cities`
--

DROP TABLE IF EXISTS `lu_cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lu_cities` (
  `city_id` int NOT NULL AUTO_INCREMENT,
  `city` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lu_cities`
--

LOCK TABLES `lu_cities` WRITE;
/*!40000 ALTER TABLE `lu_cities` DISABLE KEYS */;
INSERT INTO `lu_cities` VALUES (1,'Irbid'),(2,'Amman'),(3,'Ajlun'),(4,'Al Balqa'),(5,'Jarash'),(6,'Al Mafraq'),(7,'Az Zarqa`'),(8,'Madaba'),(9,'Al Karak'),(10,'At Tafilah'),(11,'Ma\'an'),(12,'Aqaba');
/*!40000 ALTER TABLE `lu_cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lu_degree`
--

DROP TABLE IF EXISTS `lu_degree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lu_degree` (
  `degree_id` int NOT NULL AUTO_INCREMENT,
  `degree` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`degree_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lu_degree`
--

LOCK TABLES `lu_degree` WRITE;
/*!40000 ALTER TABLE `lu_degree` DISABLE KEYS */;
INSERT INTO `lu_degree` VALUES (1,'Bsc'),(2,'Master'),(3,'PHD');
/*!40000 ALTER TABLE `lu_degree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lu_nationality`
--

DROP TABLE IF EXISTS `lu_nationality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lu_nationality` (
  `nat_id` int NOT NULL AUTO_INCREMENT,
  `nationality` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`nat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lu_nationality`
--

LOCK TABLES `lu_nationality` WRITE;
/*!40000 ALTER TABLE `lu_nationality` DISABLE KEYS */;
INSERT INTO `lu_nationality` VALUES (1,'jordanian');
/*!40000 ALTER TABLE `lu_nationality` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lu_scholarships`
--

DROP TABLE IF EXISTS `lu_scholarships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lu_scholarships` (
  `scholar_id` int NOT NULL AUTO_INCREMENT,
  `scholarship` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`scholar_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lu_scholarships`
--

LOCK TABLES `lu_scholarships` WRITE;
/*!40000 ALTER TABLE `lu_scholarships` DISABLE KEYS */;
INSERT INTO `lu_scholarships` VALUES (1,'scholar1'),(2,'scholar2'),(3,'scholar3');
/*!40000 ALTER TABLE `lu_scholarships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lu_university`
--

DROP TABLE IF EXISTS `lu_university`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lu_university` (
  `uni_id` int NOT NULL AUTO_INCREMENT,
  `university` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`uni_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lu_university`
--

LOCK TABLES `lu_university` WRITE;
/*!40000 ALTER TABLE `lu_university` DISABLE KEYS */;
INSERT INTO `lu_university` VALUES (1,'JUST'),(2,'BAU'),(3,'Yarmouk'),(4,'HTU'),(5,'HU'),(6,'JU'),(7,'AABU'),(8,'MUTAH'),(9,'AHU'),(10,'TTU'),(11,'GJU'),(12,'WISE');
/*!40000 ALTER TABLE `lu_university` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `min_units`
--

DROP TABLE IF EXISTS `min_units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `min_units` (
  `unit_id` int NOT NULL AUTO_INCREMENT,
  `unit_name` varchar(45) DEFAULT NULL,
  `phone_ext` varchar(45) DEFAULT NULL,
  `url_address` varchar(45) DEFAULT NULL,
  `director_id` int DEFAULT NULL,
  PRIMARY KEY (`unit_id`),
  KEY `fk_dir_id_idx` (`director_id`),
  CONSTRAINT `fk_dir_id` FOREIGN KEY (`director_id`) REFERENCES `hr_directors` (`director_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `min_units`
--

LOCK TABLES `min_units` WRITE;
/*!40000 ALTER TABLE `min_units` DISABLE KEYS */;
INSERT INTO `min_units` VALUES (1,'وحدة دعم تنفيذ الإصلاحات الإقتصادية',NULL,NULL,1),(2,'وحدةالإعلام والاتصال','','',2),(3,'مديرية التعاون الدولي',NULL,NULL,3),(4,'وحدة تنسيق المساعدات الإنسانية',NULL,NULL,4),(5,'مديرية السياسات و الدراسات',NULL,NULL,5),(6,'وحدة ادارة الاستثمارات الحكومية	',NULL,NULL,6),(7,'مديرية الشؤون المالية والإدارية',NULL,NULL,7),(8,'وحدة الرقابة الداخلية',NULL,NULL,8),(9,'مديرية خطط و برامج التنمية',NULL,NULL,9),(10,'وحدة التطوير المؤسسي و التقييم',NULL,NULL,10),(11,'مديرية المشاريع',NULL,NULL,11),(12,'مديرية الموارد البشرية',NULL,NULL,12),(13,'مديرية تكنولوجيا المعلومات والأرشفة',NULL,NULL,13),(14,'مديرية التنمية المحلية و تعزيز الإنتاجية',NULL,NULL,14);
/*!40000 ALTER TABLE `min_units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sa_media`
--

DROP TABLE IF EXISTS `sa_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sa_media` (
  `media_id` int NOT NULL AUTO_INCREMENT,
  `media_tit` varchar(145) DEFAULT NULL,
  `media_url` varchar(1450) DEFAULT NULL,
  `media_txt` varchar(145) DEFAULT NULL,
  `media_pic` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`media_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sa_media`
--

LOCK TABLES `sa_media` WRITE;
/*!40000 ALTER TABLE `sa_media` DISABLE KEYS */;
INSERT INTO `sa_media` VALUES (1,'متابعة تنفيذ مصفوفة إصلاحات مخرجات مؤتمر لندن','    <p style=\"text-align: justify;\">4/7/2020- افتتح وزير التخطيط والتعاون الاجتماع الثاني لفريق عمل الأردن (Jordan Taskforce) لمتابعة نتائج مبادرة مؤتمر ‏لندن، والذي تم عقده برئاسة أردنية بريطانية مشتركة وعبر تقنية الاتصال المرئي.</p>\n                <div class=\"row albumP\" style=\"text-align: center;\">\n                    <div class=\"col-xs-10 col-sm-6 col-lg-4\"><a href=\"firstimg.jpeg\" target=\"_blanck\"><img src=\"firstimg.jpeg\" alt=\"\"></a></div>\n                    <div class=\"col-xs-10 col-sm-6 col-lg-4\"><a href=\"firstimg2.jpeg\" target=\"_blanck\"><img src=\"firstimg2.jpeg\" alt=\"\"></a></div>\n                </div>','افتتح وزير التخطيط والتعاون الاجتماع الثاني لفريق عمل الأردن (Jordan T...','firstimg.jpeg'),(2,'اعتماد الخطة الاستراتيجية لبرنامج الأغذية العالمي','    <p style=\"text-align: justify;\">26/7/2020 وزارة التخطيط والتعاون الدولي تعتمد الخطة الاستراتيجية لبرنامج الأغذية العالمي بـ (700) مليون دولار أمريكي</p>\n                <div class=\"row albumP\" style=\"text-align: center;\">\n                    <div class=\"col-xs-10 col-sm-6 col-lg-4\"><a href=\"secondimg.jpg\" target=\"_blanck\"><img src=\"secondimg.jpg\" alt=\"\"></a></div>\n                    <div class=\"col-xs-10 col-sm-6 col-lg-4\"><a href=\"secondimg.jpg\" target=\"_blanck\"><img src=\"secondimg2.jpg\" alt=\"\"></a></div>\n                </div>','وزارة التخطيط والتعاون الدولي تعتمد الخطة الاستراتيجية لبرنامج الأغذية...','secondimg.jpg'),(3,'اتفاقية مساعدات طبية صينية لمكافحة جائحة كورونا','    <p style=\"text-align: justify;\">31/5/2020 وقعت الحكومتان الاردنية والصينية على شهادة التسليم والاستلام الخاصة بتقديم الحكومة الصينية شحنة من المستلزمات الطبية الوقائية لمكافحة فيروس كورونا</p>\n                <div class=\"row albumP\" style=\"text-align: center;\">\n                    <div class=\"col-xs-10 col-sm-6 col-lg-4\"><a href=\"thirdimg.jpg\" target=\"_blanck\"><img src=\"thirdimg.jpg\" alt=\"\"></a></div>\n                    <div class=\"col-xs-10 col-sm-6 col-lg-4\"><a href=\"thirdimg2.jpg\" target=\"_blanck\"><img src=\"thirdimg2.jpg\" alt=\"\"></a></div>\n					<div class=\"col-xs-10 col-sm-6 col-lg-4\"><a href=\"thirdimg3.jpg\" target=\"_blanck\"><img src=\"thirdimg3.jpg\" alt=\"\"></a></div>\n                </div>','وقعت الحكومتان الاردنية والصينية على شهادة التسليم والاستلام الخاصة بت...','thirdimg.jpg');
/*!40000 ALTER TABLE `sa_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sa_national_goals`
--

DROP TABLE IF EXISTS `sa_national_goals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sa_national_goals` (
  `goal_id` int NOT NULL AUTO_INCREMENT,
  `goal_txt` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`goal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sa_national_goals`
--

LOCK TABLES `sa_national_goals` WRITE;
/*!40000 ALTER TABLE `sa_national_goals` DISABLE KEYS */;
INSERT INTO `sa_national_goals` VALUES (1,'تحقيق معدلات نمو مستدام لضمان مستوى معيشة جيد لجميع المواطنين.'),(2,'خلق بيئة استثمارية جاذبة قادرة على جذب رؤوس الأموال الأجنبية وتشجيع الإستثمارات المحلية.'),(3,'الحفاظ على الإستقرار المالي والنقدي وضبط عجز الموازنة وبناء نظام مالي كفؤ وقليل المخاطر.'),(4,'خفض مستويات الفقر والبطالة وبناء نظام حماية اجتماعية فعال.'),(5,'تحسين مستوى الخدمات المقدمة للمواطنين والعدالة في توزيعها.'),(6,'بناء جيل قادر على اإلبداع واالبتكار ذو إنتاجية مرتفعة.'),(7,'تحقيق التوازن التنموي بين المحافظات في ضوء تطبيق نهج الالمركزية.'),(8,'رفع كفاءة النظام القضائي وتعزيز استقالليته ونزاهته.');
/*!40000 ALTER TABLE `sa_national_goals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sa_news`
--

DROP TABLE IF EXISTS `sa_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sa_news` (
  `news_id` int NOT NULL AUTO_INCREMENT,
  `news_tit` varchar(100) DEFAULT NULL,
  `news_date` varchar(45) DEFAULT NULL,
  `news_txt` varchar(4400) DEFAULT NULL,
  `news_info` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sa_news`
--

LOCK TABLES `sa_news` WRITE;
/*!40000 ALTER TABLE `sa_news` DISABLE KEYS */;
INSERT INTO `sa_news` VALUES (1,'وزير التخطيط والتعاون الدولي يلتقى ممثلة صندوق الأمم المتحدة للسكان في الأردن','2020-08-25','التقى وزير التخطيط والتعاون الدولي وسام الربضي ممثلة صندوق الأمم المتحدة للسكان في الأردن انشراح أحمد، حيث قدمت ايجازاً عن عمل الصندوق في العالم بشكل عام وفي الأردن بشكل خاص، والتطلعات المستقبلة لعمل الصندوق في الأردن.\n\nواستعرض الدكتور الربضي التحديات التي تواجه المملكة في ظل الظروف الإقليمية الراهنة، والآثار المترتبة على استضافة أعداد كبيرة من اللاجئين السوريين، مثمناً الدور الإنساني الذي يقوم به الصندوق في المجتمعات المتضررة من الأزمة السورية.\n\nكما اوضح الدكتور الربضي آلية إعداد خطة الاستجابة والتي تغطي الأعوام (2020 -2022)، الأمر الذي سيوفر رؤية أطول أمداً وتسهل عملية المراجعة والتحديث المستمر، حيث بين خارطة الطريق والخطوات التي يتم العمل عليها في إعداد هذه الخطة، مؤكداً على التزام الحكومة بالمحافظة على النهج التشاركي وتوسيع دائرة المشاركة لتشمل القطاع الخاص والمجتمعات المحلية، ومشيراً إلى دراسة الهشاشة للقطاعات الرئيسية وربطها بتقييم هشاشة اللاجئين والتي تم الاستناد إلى نتائجهما في تحديد الأولويات للمرحلة القادمة.','التقى وزير التخطيط والتعاون الدولي وسام الربضي ممثلة صندوق الأمم المتحدة للسكان في الأردن انشراح أحمد، حيث قدمت ايجازاً عن عمل الصندوق في العالم بشكل عام وفي الأردن بشكل خاص، والتطلعات المستقبلة لعمل الصندوق في الأردن.'),(2,'تمويل ألماني أوروبي لدعم قطاعات التعليم والمياه','2020-08-30','تتضمن الاتفاقية الأولى منحة إضافية من الاتحاد الأوروبي بقيمة (6) مليون يورو، وهي مقدمة من خلال صندوق مداد الائتماني لتمويل المرحلة الثانية من مشروع دعم إنشاء المدارس لتصبح القيمة الكلية الممولة من هذه المرحلة (36.6) مليون يورو. تهدف هذه المرحلة الى زيادة القدرة الاستيعابية للمدارس لمساعدة الحكومة الأردنية ضمن خطة الاستجابة الاردنية للأزمة السورية، حيث ستساعد أطفال اللاجئين وسكان المجتمعات المستضيفة من الوصول إلى تعليم ابتدائي وثانوي شامل. كما تم وفي هذا السياق الاعلان سابقا عن توقيع اتفاقية ثنائية مع الحكومة الالمانية الشهر الماضي بقيمة (34) مليون يورو.  \n\nوفي قطاع المياه تم التوقيع على ثلاث اتفاقيات تمويل إضافية متضمنة منح لدراسات جدوى وبناء قدرات في قطاع المياه وبقيمة إجمالية (2.2) مليون يورو. تتضمن الاتفاقيات منحة بقيمة (795) الف يورو كإجراءات مساندة في اطار مشروع حماية البيئة في قطاع المياه- المرحلة الخامسة، واتفاقيتين لمنحتين بقيمة (700) ألف يورو لكل منهما، ستهدف الأولى الى تمويل دراسة جدوى لتحديد إمكانيات التخلص من حمأة الصرف الصحي بشكل آمن، وتحديد المواقع المحتملة لبناء مكب نفايات أحادي، وتقييم الأثر البيئي والاجتماعي في إطار برنامج التخلص من حمأة الصرف الصحي، كما وستهدف المنحة الثانية الى استكمال تدابير الاستثمار بعنصر التدريب لدعم قدرات الموظفين التشغيليين في مجال كفاءة الطاقة والعمليات المستدامة، وذلك في إطار المرحلة الثانية من مشروع كفاءة الطاقة في قطاع المياه.','في سياق الجهود التنموية لدعم قطاعات التعليم والمياه، وقع وزير التخطيط والتعاون الدولي الدكتور وسام الربضي اليوم الأحد الموافق 30/8/2020، نيابةً عن حكومة المملكة الأردنية الهاشمية، أربعة اتفاقيات مع بنك الإعمار الألماني (KfW).'),(3,'اتفاقية اردنية سويسرية لتنفيذ برنامج وطني لرسم خرائط الفيضانات','2020-09-08','كما ووقع الاتفاقية نيابة عن الجهة المستفيدة كل من وزير المياه والري المهندس رائد أبو السعود، ومندوب المركز الوطني للأمن وإدارة الأزمات.\n\nوتهدف الاتفاقية الى تعميق التعاون بين وزارة المياه والري والمركز الوطني للأمن وإدارة الأزمات والوكالة السويسرية للتنمية والتعاون، في مجال البرنامج الوطني لرسم خرائط الفيضانات لصالح المملكة الأردنية الهاشمية،\n\n وتحدد هذه الاتفاقية الأهداف العامة للبرنامج الوطني لرسم خرائط الفيضانات والمساهمات المنوي تقديمها من قبل الأطراف الموقعة، والتي سيتم الالتزام بها وتحديدها بمزيد من التفصيل في اتفاقية تنفيذ المشروع التي سيتم صياغتها بشكل مشترك من قبل الأطراف الموقعة لاحقاً.','في سياق الجهود الحكومية للتخفيف من اثار السيول في المملكة'),(4,'وزير التخطيط والتعاون الدولي يفتتح مشروع مركز اتصال زين لخدمات الزبائن في معان','2020-09-10','واستهل وزير التخطيط والتعاون الدولي اللقاء بتقديم الشكر للسفير ياناجي على حسن تعاونه خلال فترة تقديم خدماته في الأردن، كما ثمن الوزير الربضي لحكومة وشعب اليابان الدعم المتواصل للمملكة، وعلى تفهم اليابان للتحديات الاقتصادية والاجتماعية التي تواجه الأردن نتيجة تداعيات الأزمة في المنطقة، مشيراً إلى عمق وتاريخ العلاقات التي تربط الجانبين، والسعي الجاد من قبلهما لتعزيز أواصر التقارب من خلال تطوير آليات التعاون في عدد من المجالات ذات الاهتمام المشترك وعلى مختلف الأصعدة السياسية والاجتماعية والاقتصادية.\n\nمن جانبه أكد السفير الياباني على عمق علاقة الشراكة القوية التي تربط الأردن واليابان، مؤكداً حرص اليابان المستمر في تقديم الدعم للأردن للحفاظ على منعته الاقتصادية وأمنه واستقراره في هذه الظروف الصعبة وخاصة في ظل الأزمة الناجمة عن مواجهة جائحة فيروس كورونا المستجد.\n\nومن الجدير بالذكر بأن اليابان قدمت منذ عام 2009 وحتى أيلول 2020 على ما يقارب (1.7) مليار دولار أمريكي، منها (603.12) مليون دولار على شكل منح للمشاريع ولدعم الموازنة، والباقي على شكل ‏قروض ميسرة بالإضافة إلى المساعدات الفنية المقدمة للأردن من خلال الوكالة اليابانية (جايكا).','معان- افتتح وزير التخطيط والتعاون الدولي د. وسام الربضي اليوم مشروع مركز اتصال زين لخدمات الزبائن في محافظة معان، بتمويل من وزارة التخطيط والتعاون الدولي/ برنامج تعزيز الانتاجية الاقتصادية والاجتماعية.');
/*!40000 ALTER TABLE `sa_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sa_projects`
--

DROP TABLE IF EXISTS `sa_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sa_projects` (
  `project_id` int NOT NULL AUTO_INCREMENT,
  `project_tit` varchar(145) DEFAULT NULL,
  `project_txt` varchar(1450) DEFAULT NULL,
  `project_url` varchar(1450) DEFAULT NULL,
  `project_pic_url` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sa_projects`
--

LOCK TABLES `sa_projects` WRITE;
/*!40000 ALTER TABLE `sa_projects` DISABLE KEYS */;
INSERT INTO `sa_projects` VALUES (1,'مبادرة شراكة الحكومات الشفافة','<p>تعتبر هذه الشراكة مجهوداً عالمياً لتحسين أداء الحكومات، حيث يطمح المواطنون لحكومات أكثر شفافية، وفعالية، وخاضعة للمساءلة، ذات مؤسسات تمكن المواطنين، وتستجيب لطموحاتهم وآمالهم، علماً بأن الوصول إلى هذا الهدف يتطلب: القيادة السياسية، والمعرفة التقنية، ومجهود واستثمار مستدام، كما تستلزم التعاون والشراكة بين الحكومات والمجتمع المدني.</p> <p>; شراكة الحكومات الشفافة هي مبادرة متعددة الأطراف، تهدف إلى تأمين الالتزام الجدي من قبل الحكومات المشاركة للترويج للشفافية، وتمكين المواطنين، ومكافحة الفساد، وتسخير التكنولوجيا لتعزيز الحاكمية، ممن خلال تقديم خطة عمل تتضمن التزامات طوعية.</p>','http://www.pm.gov.jo/content/1405773154/%D9%85%D8%A8%D8%A7%D8%AF%D8%B1%D8%A9-%D8%B4%D8%B1%D8%A7%D9%83%D8%A9-%D8%A7%D9%84%D8%AD%D9%83%D9%88%D9%85%D8%A7%D8%AA-%D8%A7%D9%84%D8%B4%D9%81%D8%A7%D9%81%D8%A9---%D8%A7%D9%84%D9%85%D9%84%D8%AE%D8%B5-%D8%A7%D9%84%D8%AA%D9%86%D9%81%D9%8A%D8%B0%D9%8A.html','ogp.png'),(2,'مبادرة خبر','<p>على مدى العقود الماضية، عمل قادة الحكومة والمسؤولون، والخبراء الدوليون، وخبراء الاقتصاد، والمواطنون الأردنيون على تطوير ثروة من المعلومات حول التحديات التي تواجه الأردن والفرص المتاحة له. وتغطي هذه الخطط والاستراتيجيات كل جوانب تنمية الأردن مثل خفض الفقر وزيادة فرص العمل، والإصلاح الحكومي وبناء بيئة أعمال قوية وممكنة لنمو الأعمال والريادة في المشاريع.</p> <p>قامت وزارة التخطيط والتعاون الدولي بتجميع تلك المعرفة في بوابة مركزية مفتوحة ومتاحة للجميع. ونحن نأمل أن إتاحة هذه المعلومات للجميع – المواطنين، والمسؤولين الحكوميين، وصانعي السياسات، والصحفيين، والطلاب، والمستثمرين والجهات المانحة ورجال الأعمال - سوف تساعد على إثراء النقاش العام ويرفع مستوى عملية صنع القرار في الحكومة وقطاع الأعمال. تفضلوا باستكشاف الموارد التي نظمت هنا لتتفهموا بالتفصيل الحالة الراهنة لاقتصادنا ومجتمعنا ولتتعرفوا على الأفكار والتوصيات التي تم طرحها لتحقيق النمو الاقتصادي وصولاً إلى مجتمع أكثر ازدهارا في الأردن.</p>','http://inform.gov.jo/ar-jo/','inform.jpg'),(3,'جائزة الملك عبدالله الثاني','<p>صدرت الإرادة الملكية السامية بإنشاء جائزة الملك عبدالله الثاني لتميُّز الأداء الحكومي والشفافية يوم ٤ أيلول ٢٠٠٢، بهدف تحسين وتطوير أداء الوزارات والمؤسسات الحكومية في خدمة المواطنين والمستثمرين، عن طريق نشر الوعي بمفاهيم الأداء المتميز والجودة والشفافية، وإبراز الجهود المتميزة لمؤسسات القطاع العام وعرض إنجازاتها في تطوير أنظمتها وخدماتها.</p>\n<p>\nوتهدف الجائزة التي تعدّ أرفع جائزة للتميز في القطاع العام على المستوى الوطني، إلى تجذير ثقافة التميُّز في القطاع العام والتي ترتكز على ثلاثة أسس: التركيز على متلقّي الخدمة، التركيز على النتائج، والشفافية.</p>\n<p>\nوتسعى الجائزة إلى ضمان قيام القطاع الحكومي بالواجبات والمهام الموكلة إليه على أكمل وجه وبمستويات عالية من الجودة والكفاءة والاحتراف، وتوفير مرجعية إرشادية وأسس معيارية لقياس مدى التقدم والتطور في أداء الوزارات والمؤسسات الحكومية، وتعزيز تبادل الخبرات بين الوزارات ومؤسسات القطاع العام ومشاركة قصص النجاح في ما بينها حول الممارسات الإدارية الناجحة.</p>','https://www.kaa.jo/Default.aspx','kingprize.png'),(4,'مرصد التنافسية الوطنية','أتي المرصد الوطني للتنافسية بلورةً لعمل الفريق الوطني للتنافسية الذي بدأ عمله عام 1997م في وزارة التخطيط والتعاون الدولي، من خلال إجراء الدراسات التحليلية والمنهجية ضمن عدد من القطاعات الاقتصادية ودراسة تنافسيتها بما يتواءم والنظرة العالمية للتنافسية وأهميتها سواءً كان على مستوى القطاعات الاقتصادية أم على مستوى الاقتصاد الأردني بشكلٍ عام.',NULL,'mtw.png');
/*!40000 ALTER TABLE `sa_projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sa_useful_links`
--

DROP TABLE IF EXISTS `sa_useful_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sa_useful_links` (
  `link_id` int NOT NULL AUTO_INCREMENT,
  `link_tit` varchar(145) DEFAULT NULL,
  `link_url` varchar(145) DEFAULT NULL,
  `link_tip` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`link_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sa_useful_links`
--

LOCK TABLES `sa_useful_links` WRITE;
/*!40000 ALTER TABLE `sa_useful_links` DISABLE KEYS */;
INSERT INTO `sa_useful_links` VALUES (1,'مركز ايداع الاوراق المالية','http://www.sdc.com.jo/arabic/index.php',''),(2,'نظام معلومات التجارة والاستثمار','http://jorinfo.dos.gov.jo/tiis/%28S%28izf2q1vsgwjnessykcjbrgm2%29%29/HomePage_a.aspx',NULL),(3,'الشركة الأردنية لضمان القروض','http://www.jlgc.com/arabic/index.htm',NULL),(4,'مؤسسة المدن الصناعية الأردنية','https://www.jiec.com/ar',NULL),(5,'المؤسسة الأردنية لتطوير المشاريع الاقتصادية','http://www.jedco.gov.jo/',NULL);
/*!40000 ALTER TABLE `sa_useful_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unit_orga_chart`
--

DROP TABLE IF EXISTS `unit_orga_chart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unit_orga_chart` (
  `chart_id` int NOT NULL AUTO_INCREMENT,
  `unit_id` int DEFAULT NULL,
  `chart_url` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`chart_id`),
  KEY `fk_unit_id_orga_idx` (`unit_id`),
  CONSTRAINT `fk_unit_id_orga` FOREIGN KEY (`unit_id`) REFERENCES `min_units` (`unit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unit_orga_chart`
--

LOCK TABLES `unit_orga_chart` WRITE;
/*!40000 ALTER TABLE `unit_orga_chart` DISABLE KEYS */;
INSERT INTO `unit_orga_chart` VALUES (1,1,NULL),(2,2,'unit_2.jpg'),(3,3,'unit_3.jpg'),(4,4,NULL),(5,5,'unit_5.jpg'),(6,6,NULL),(7,7,'unit_7.jpg'),(8,8,'unit_8.jpg'),(9,9,'unit_9.jpg'),(10,10,'unit_10.jpg'),(11,11,'unit_11.jpg'),(12,12,'unit_12.jpg'),(13,13,'unit_13.jpg'),(14,14,'unit_14.jpg');
/*!40000 ALTER TABLE `unit_orga_chart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unit_responsibilities`
--

DROP TABLE IF EXISTS `unit_responsibilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unit_responsibilities` (
  `res_id` int NOT NULL AUTO_INCREMENT,
  `unit_id` int DEFAULT NULL,
  `res_text` varchar(4209) DEFAULT NULL,
  `res_num` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`res_id`),
  KEY `fk_unit_id_idx` (`unit_id`),
  CONSTRAINT `fk_unit_id_res` FOREIGN KEY (`unit_id`) REFERENCES `min_units` (`unit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unit_responsibilities`
--

LOCK TABLES `unit_responsibilities` WRITE;
/*!40000 ALTER TABLE `unit_responsibilities` DISABLE KEYS */;
INSERT INTO `unit_responsibilities` VALUES (1,1,NULL,'1'),(2,2,'<li>إعداد وتخطيط وإدارة الحملات الإعلامية وكتابة وتوزيع البيانات الصحافية والإعلامية ونشرات الحقائق والمعلومات الخلفية والملخصات والعروض الإخبارية حول الخطط التنفيذية للوزارة وأبرز الانجازات، على وسائل الإعلام والاتصال بهدف إيصالها للرأي العام وفق أسس الشفافية والمساءلة.</li><li> تنظيم وترتيب الأحداث كالمؤتمرات الصحافية.</li><li> الاهتمام بما تنشره وسائل الإعلام ومتابعته والأخذ بجوانبه الايجابية وتوضيح الحقائق والرد على أي معلومات غير دقيقة والتعامل مع الاستفسارات الصحافية وترتيب المقابلات والجلسات الإعلامية للصحافيين مع وزير التخطيط والتعاون الدولي وكبار مسؤولي الوزارة.</li><li> اطلاع وزير التخطيط والتعاون الدولي وكبار مسؤولي الوزارة على ردود الفعل الإعلامية المحتملة للسياسات المقترحة.</li><li>متابعة المعلومات المنشورة في المجلات والصحف المحلية والأجنبية وإعداد الرصد الصحفي اليومي بحيث يضم كافة المقالات الاقتصادية والأخبار التي لها علاقة بوزارة التخطيط والتعاون الدولي.</li><li>إعداد دراسات استقصائية لوسائل الإعلام وتحليل الأخبار الصحفية المتعلقة بالوزارة.\n تحديث الموقع الإلكتروني لوزارة التخطيط والتعاون الدولي بالأخبار والصور والنشاطات المختلفة للوزارة.</li><li>إعداد قاعدة بيانات حول أهم الكتاب والصحفيين والإعلاميين ذوي العلاقة.\nبناء وتطوير نظام أرشفة الكترونية ويدوية للأخبار المتعلقة بالوزارة (المرئية والمسموعة والمقروءة).</li><li>تقديم الدعم اللوجستي لإقامة للندوات والمؤتمرات وورش العمل والاجتماعات والزيارات الميدانية المتعلقة بأعمال الوزارة، والعمل على تأمين تأشيرات السفر وإجراء الحجوزات في الفنادق وتقديم التسهيلات اللازمة لاستقبال الوفود الرسمية.</li>','2'),(3,3,'<li>تطوير آليات تنسيق المساعدات و إدارة عمليات التمويل المقدمة للبرامج والمشاريع التنموية المختلفة ومتابعة التزام المصادر التمويلية ببرامج المساعدات المتفق عليها بروتوكوليا.</li>\n	<li>جمع المعلومات حول احتياجات الأردن من المساعدات والدعم الاقتصادي الخارجي وإعداد الدراسات التحليلية بهذا الخصوص.</li>\n	<li>تطوير ودعم علاقات التعاون مع الجهات الخارجية لتوفير الدعم المالي والفني للمشاريع التنموية من خلال وضع الخطط والبرامج المناسبة والعمل على بناء وتطوير العلاقات الثنائية مع الدول والجهات المانحة بهدف توفير الدعم الفني والمالي للمشاريع التنموية من خلال برامج مساعدات وقروض من هذه الدول أو الجهات.</li>\n	<li>البحث المستمر عن النوافذ والفرص التمويلية المتاحة وآلية وشروط الاستفادة من هذه الفرص وتحديث هذه المعلومات باستمرار وتوفير قاعدة بيانات لهذه الدول والجهات والنوافذ المتاحة من خلالها وكيفية الاستفادة منها.</li>\n	<li>إيجاد المصادر التمويلية المناسبة للمشاريع التنموية مع الأخذ بعين الاعتبار طبيعة المشاريع وتوجهات وشروط المصادر الممولة المختلفة.</li>\n	<li>التحضير لعقد اتفاقيات التمويل و/أو التعاون الاقتصادي والفني ومتابعة كافة الإجراءات الضرورية من أجل وضع الاتفاقيات وبرامج المساعدات السنوية موضع التنفيذ ودراسة وتحليل المشاكل التي تواجه البرامج التمويلية والتي تعيق تنفيذ الاتفاقيات والعمل على حلها.</li>\n	<li>تطوير العلاقات الثقافية مع الجهات الخارجية للاستفادة من الكفاءات والخبرات المتوفرة للعمل على سد الاحتياجات التدريبية للموارد البشرية في القطاع العام بالإضافة إلى إعداد الاتفاقيات الثقافية وتأمين احتياجات القطاع العام من الخبراء الأجانب.</li>','3'),(4,4,'<li>الاشراف على إعداد خطة الاستجابة الأردنية للأزمة السورية</li>\n	<li>مراجعة المشاريع المقدمة من قبل الجهات المنفذة لضمان انسجامها مع الأولويات الحكومية</li>\n	<li>عقد اجتماعات دورية للجنة التنسيقية (التي تعنى بمناقشة طلبات التمويل الخارجي للمشاريع الخاصة بخطة الاستجابة الأردنية و/أو العراقيين)</li>\n	<li>إعداد الكتب الخاصة بقرارات اللجنة التنسيقية لشؤون المساعدات الإنسانية ورفع التوصيات إلى مجلس الوزراء الموقر وإعداد المخاطبات اللازمة للوزارات المعنية والمنظمات غير الحكومية ومنظمات الأمم المتحدة</li>\n	<li>المشاركة في اجتماعات الوزارات ومنظمات الأمم المتحدة والمنظمات غير الحكومية والجهات المانحة</li>\n	<li>متابعة وتحليل تقارير سير العمل في المشاريع والبرامج المنفذة والمقدمة من قبل المنظمات غير الحكومية، وإعداد تقرير تحليلي بذلك</li>\n	<li>متابعة أعمال لجنة العطاءات الخاصة المعنية في البرامج والمشاريع المقدمة للحكومة</li>\n	<li>عقد برامج تدريبية للمعنيين في الوزارات والمنظمات غير الحكومية والبعثات الدبلوماسية ومنظمات الأمم المتحدة على استخدام نظام المعلومات&nbsp;JORISS، وإجراءات الحصول على الموافقات</li>\n	<li>عقد اجتماعات الإطار الأردني للاستجابة للأزمة السورية</li>\n	<li>متابعة نتائج التقارير والدراسات الدولية المتعلقة بشؤون الأزمة السورية والبرامج التي تستهدف أزمة اللجوء في الدول المستضيفة.</li>\n	<li>تحديث قاعدة بيانات&nbsp;JORISS&nbsp; التي تبين أعداد البرامج والمشاريع والفئات المستهدفة وحسب القطاعات والجهة الممولة.</li>\n	<li>اصدار تقرير الوضع التمويلي لخطة الاستجابة</li>\n	<li>تحديد الاحتياجات ومراجعتها مع فرق العمل القطاعية.</li>\n	<li>مخاطبة الجهات المانحة والمنظمات الدولية لتوفير الدعم ضمن خطة الاستجابة.</li>\n	<li>الترويج لخطة الاستجابة الأردنية في المحافل الدولية ومن قبل البعثات الدبلوماسية بهدف استقطاب التمويل</li>\n	<li>تفعيل البريد الالكتروني لارسال المراسلات مع الجهات الحكومية والمنظمات&nbsp; غير الحكومية ومنظمات الأمم المتحدة</li>\n	<li>استخدام النظام الالكتروني&nbsp;JORISS&nbsp;لاعلام الجهات المنفذة والمشرفة بقرارات اللجنة التنسيقية ورئاسة الوزراء واية ملاحظات على الخطط المقدمة</li>','4'),(5,5,'<li>المشاركة في وضع الخطط والبرامج التنموية ومتابعتها والمساعدة في مراجعتها وتحديثها وتطويرها وفقاً للمستجدات والأوضاع الاقتصادية والاجتماعية</li>\n	<li>دراسة الأبعاد الاقتصادية للقوانين والأنظمة التي يتم وضعها أو تعديلها والعمل على إجراء الدراسات والأبحاث حولها ومتابعة التطورات المتعلقة بالمؤشرات الاجتماعية والحسابات القومية والمالية العامة والقطاع النقدي وإعداد التقارير والأبحاث اللازمة لبلورة السياسات المتعلقة بها.</li>\n	<li>إجراء الدراسات والأبحاث المتعلقة بالاقتصاد الخارجي وتطورات التجارة الخارجية وسبل تدعيم التجارة البينية بالإضافة إلى دراسة الموازين السلعية للمنتجات الزراعية والصناعية وحركة الصادرات والواردات وأثرها على النمو الاقتصادي.</li>\n	<li>العمل على تحديد القدرة التنافسية للقطاعات الاقتصادية الأردنية من خلال متابعة الأنشطة الاقتصادية ودراستها بهدف مقارنتها بمثيلاتها على المستوى الإقليمي والدولي, واقتراح السبل لتعزيز تلك القدرة وتحسينها من خلال إعداد الدراسات التحليلية عن تلك القطاعات وتنظيم ورش العمل لمناقشة المواضيع التي تؤثر على الأداء التنافسي والخروج بالتوصيات حولها والعمل على نشر الفكر التنافسي.</li>\n	<li>متابعة تطوير أنظمة المعلومات الإحصائية للأبعاد الاجتماعية والاقتصادية والإشراف على تحديثها وإنشاء بنك معلومات حول البيانات والمتغيرات الاقتصادية المحلية والإقليمية والدولية</li>\n	<li>بناء نظام للإنذار المبكر بناء على المؤشرات الاقتصادية والاجتماعية للإشعار بأي أزمات اقتصادية واجتماعية متوقع حصولها.</li>\n	<li>المساهمة في عملية إعداد الخطط وضمان إدماج أهداف التنمية المستدامة في الخطط الوطنية فضلاً عن دراسة المبادرات الدولية والمؤشرات ذات العلاقة بموضوع التنمية المستدامة وتنسيق الجهود الوطنية للاستفادة من هذه المبادرات.</li>\n	<li>مأسسة دمج منظور النوع الاجتماعي ضمن البرامج والمشاريع التنموية في المملكة وبالتنسيق مع المديريات والوحدات المختلفة داخل الوزارة.</li>\n	<li>التنسيق مع الجهات المعنية الحكومية وغير الحكومية والدولية العاملة بقضايا النوع الاجتماعي/الجندر.</li>','5'),(6,6,'<li>اجراء التحليل الفني و الاقتصادي للمبادرات الاستثمارية العامة</li>\n	<li>انشاء بنك معلومات يشمل كافة البيانات عن المشاريع ذات الأولوية</li>\n	<li>تحديد &nbsp;و بلورة &nbsp;منهجية و معايير اعداد المشاريع و تقييمها و الممارسات الفضلى ذات العلاقة</li>\n	<li>تعريف و تحديث الاسس العامة و التعليمات ذات العلاقة لألية&nbsp; تصنيف المشاريع&nbsp; الاستثمارية ضمن الوحدة</li>\n	<li>ايجاد الية للتكامل بين المشاريع في القطاع الواحد و القطاعات الاخرى</li>\n	<li>اجراء دراسة تحليلية &nbsp;عن الاثر الذي احدثه &nbsp;&nbsp;تنفيذ هذه المشاريع</li>\n	<li>التدريب و بناء القدرات المؤسسية</li>\n	<li>الرصد و التقييم</li>','6'),(7,7,'<li> تنفيذ المهام والأنشطة المتعلقة بالإدارة المالية في وزارة التخطيط والتعاون الدولي وضمان الاستغلال الأمثل للموارد المالية المتاحة</li>\n<li> المشاركة في إعداد مشروع قانون الموازنة السنوي للنفقات الجارية والرأسمالية للوزارة ومناقشة مشاريع موازنات المؤسسات والدوائر الحكومية والإشراف على تنفيذ بنود الموازنة بحسب التشريعات المعتمدة</li>\n<li> متابعة وتنظيم الجوانب المالية في اتفاقيات القروض والمنح وإعادة الإقراض وفروق الفوائد وتدقيقها ومراجعة مسودات الاتفاقيات التمويلية لإبداء الرأي فيها</li>\n<li> تقديم المشورة القانونية للمديريات والأقسام في الوزارة عند طلبها والمبادرة إلى بيان الثغرات في القوانين والأنظمة والتعليمات المعمول بها</li>\n<li> إعداد الصياغة القانونية للقرارات الإدارية والعقود والاتفاقيات ذات العلاقة بعمل وزارة التخطيط والتعاون الدولي</li>\n<li> تأمين كافة احتياجات الوزارة من اللوازم والخدمات والتي تشمل عمليات الصيانة والنظافة لكافة مرافق الوزارة وتنظيم المراسلات وإدارة المستودعات وعمليات الجرد</li>','7'),(8,8,'<li >التأكد من سلامة الإجراءات والمعاملات المالية، وتدقيقها، وإجازتها للصرف، وتصويب أية أخطاء تكتشف.</li>\n	<li >السعي نحو تبسيط الإجراءات المتعلقة بعملية إجازة المستندات تمهيداً لصرفها لأصحاب الاستحقاق، وبما لا يتعارض مع القوانين والأنظمة.</li>\n	<li >التأكد من قيام جميع المديريات والأقسام بالأعمال والإجراءات المالية والإدارية بالشكل الصحيح ووفق القوانين والأنظمة والتشريعات التي تحكم العمل في وزارة التخطيط والتعاون الدولي.</li>\n	<li >متابعة قيام مختلف مديريات وأقسام الوزارة بالإجراءات التصحيحية الواردة بتقارير وحدة الرقابة المالية والإدارية.</li>\n	<li >إجراء أبحاث ودراسات خاصة بعمل الوزارة لتطوير العمل بحيث يتم الكشف عن المخالفات والتجاوزات المالية والإدارية قبل وقوعها ما أمكن والتأكد من تصويبها أو تبريرها حال وقوعها.</li>\n	<li >دراسة القرارات الإدارية والمالية للتأكد من انسجامها مع التشريعات والقوانين المعمول بها.</li>\n	<li >التحقق من أن الموارد قد تم تحصيلها في مواعيدها وتوثيقها بالسجلات الخاصة بها واستخدامها في الأوجه المخطط لها.</li>\n	<li >التحقق والتأكد من صحة أصولية السجلات والوثائق والمستندات والملفات.</li>\n	<li >تطوير أنظمة الرقابة المالية والإدارية والعمل على إدخال وسائل ضبط وتدقيق جديدة ومتطورة</li>\n	<li >رفع التقارير المالية والإدارية بخصوص نتائج أعمال الوحدة لمعالي الوزير بشكل دوري وكلما دعت الحاجة.</li>\n	<li >إجراء الفحص المفاجئ الدوري على امناء الصناديق والمستودعات وحملة السلف المالية في الوزارة.</li>','8'),(9,9,'<li>ترجمة مخرجات الرؤى الاقتصادية والاجتماعية والاستراتيجيات إلى خطط عمل تنفيذية</li>\n	<li>التنسيق لإعداد الخطط والبرامج التنموية المرتبطة بالتنمية الاقتصادية والاجتماعية وبصورة تشاركيه مع الجهات المعنية.</li>\n	<li>دمج الاستراتيجيات والمبادرات والأهداف الإنمائية للألفية في البرامج التنفيذية</li>\n	<li>المشاركة في وضع آلية مبنية على أسس علمية تحدد أولويات القطاع حسب الأهمية بالنسبة إلى النتائج المتوخاة، وبالتالي بناء نموذج رياضي طموح.</li>\n	<li>المساهمة في وضع الاطار الكمي للاقتصاد الكلي</li>\n	<li>تعظيم الاستفادة من الموارد المالية المتاحة وحسب الأولويات التنموية.</li>\n	<li>توجيه التمويل الخارجي حسب الأولويات التنموية الوطنية.</li>\n	<li>المشاركة في اقتراح أهداف بعيدة وقصيرة الأمد قطاعية التي تؤدي إلى تحقيق الأهداف الوطنية.</li>\n	<li>المساهمة في طرح سياسات وإجراءات قطاعية تؤدي إلى تحقيق الأهداف القطاعية</li>\n	<li>تبني آليات وأدوات التخطيط الاستراتيجي والعمل على تعزيز وبناء القدرات للجهات المعنية المختلفة في مجال التخطيط الاستراتيجي للقطاع.</li>\n	<li>توحيد المفاهيم بين الجهات العاملة في القطاع الواحد وبما يعمل على مأسسة التخطيط في القطاع.</li>\n	<li>المساهمة في تشخيص واقع القطاع وتحديد المشاكل والمعوقات والتحديات واقتراح الحلول المناسبة لها لتعزيز تنافسية القطاعات المختلفة اقليمياً ودولياً.</li>\n	<li>المساهمة في تحديد النظرة المستقبلية للقطاع وبما يعظم الفرص ويحد من المخاطر.</li>\n	<li>ضمان التكاملية والترابط ما بين السياسات في القطاع وما بين القطاع والقطاعات الأخرى ارتباطا عامودياً وأفقيا وصولا إلى الربط مع الأهداف الوطنية.</li>\n	<li>بناء القدرات المؤسسية للجهات المعنية في البرنامج التنموي في مجالات التخطيط التنموي والمتابعة والتقييم</li>\n','9'),(10,10,'<li>مأسسة عملية التقييم في الإجراءات المتخذة عند طلب التمويل للمشاريع، من خلال تضمين النماذج والوثائق المعتمدة لهذا الغرض (مثال: الإطار المنطقي للمشروع&nbsp;Logic Framework) في وثائق المشروع المنوي تمويله، بالإضافة إلى منهجية وآلية التقييم المراد اعتمادها خلال فترة تنفيذ المشروع لغايات المتابعة والتقييم.</li>\n	<li>المشاركة بشكل فاعل مع الوزارات والمؤسسات المعنية في مرحلة صياغة وثائق المشروع من خلال المساهمة في بناء الإطار المنطقي للمشروع والذي سيربط الأهداف بالمخرجات والآثار المتوقعة من البرنامج أو المشروع، وبنهج تشاركي مع الوزارات والجهات الحكومية المختلفة.</li>\n	<li>تقييم آثار برامج ومشاريع مختارة بعد مرور فترة زمنية كافية على انتهائها، بحيث يمكن تتبع وقياس آثارها التنموية، ومقارنة الأهداف المحددة في وثائق هذه البرامج والمشاريع في مرحلة التخطيط وقبل البدء بعملية التنفيذ مع المتحقق والمنجز فعلياً.</li>\n	<li>المشاركة الفاعلة مع فريق التقييم الخارجي في وضع ومراجعة منهجية عمليات التقييم ومتابعة تنفيذها في حال وجود جهة تقييمية خارجية.</li>\n	<li>المشاركة الفاعلة مع البعثات الداخلية التي ترسلها الجهات المانحة والممولة لغايات المراجعة متوسطة المدى&nbsp;Mid Term Review&nbsp;والتقييم البعدي&nbsp;Post Evaluation&nbsp;للبرامج والمشاريع التي تمولها، وذلك عبر صياغة منهجية التقييم ومتابعة عملية التنفيذ.</li>\n	<li>بناء القدرات والكفاءات الخاصة بالتقييم في وزارة التخطيط والتعاون الدولي والوزارات الأخرى، وذلك من خلال العمل على الإشراف على إعداد حزم وبرامج تدريبية والمشاركة في تنفيذ عمليات التدريب ضمن برنامج محدد؛</li>\n	<li>وضع برنامج سنوي للتقييم مستند إلى المشاريع المقرة والمعتمدة، وتحديد إطار التقييم الخاص بكل مشروع مع الإشراف على تنفيذ عمليات التقييم استناداً إلى هذا البرنامج.</li>\n	<li>رفع التقارير والتوصيات الخاصة بنتائج التقييم على جميع المستويات وذلك ليتسنى للجهات ذات العلاقة الاستفادة منها في تعديل سياساتها واستراتيجياتها وأولوياتها، وبما يتناسب مع الأهداف والأولويات الوطنية ونتائج تقييم أثر مشاريعها وتدخلاتها وانعكاسها على تحقيق تلك الرؤى والأهداف.</li>','10'),(11,11,'\n	<li >المشاركة في وضع الخطط التنموية والسياسات العامة وتحديد الأولويات ضمن القطاعات المختلفة وتقييم طلبات التمويل ودراسات الجدوى الاقتصادية للمشاريع التنموية في ضوء هذه الأولويات.</li>\n	<li >المشاركة في وضع واعتماد الخطط التنفيذية للمشاريع الممولة ومتابعة سير العمل فيها من خلال دراسة وتحليل تقارير سير العمل والقيام بالزيارات الميدانية وتحديد أية انحرافات عن الجدول الزمني المعتمد والعمل على إيجاد الحلول الكفيلة بتصويب هذه الانحرافات.</li>\n	<li >&nbsp;تقديم المشورة الفنية للجهات المنفذة للمشاريع وتحديد الصعوبات والمعوقات التي تؤثر على سير العمل في المشاريع المختلفة بالتعاون مع الجهات ذات العلاقة ووضع البرامج الكفيلة بتجاوز هذه المعوقات.</li>\n	<li >المشاركة في اعداد مشروع الموازنة السنوية لوزارة التخطيط والتعاون الدولي بما يخص المشاريع الممولة من جهات تمويلية خارجية.&nbsp;</li>\n','11'),(12,12,'<li>إدارة الأنشطة المتعلقة بالموارد البشرية من خلال وضع السياسات وتطوير وتطبيق الأنظمة والأسس والبرامج المتضمنة عمليات التخطيط والتنبؤ، والاستقطاب والتعيين، والتدريب والتطوير، والمكافأة والتحفيز، وعلاقات الموظفين، وقنوات الاتصال.</li>\n	<li>تطبيق الأنظمة والسياسات الخاصة بشؤون الموظفين ومتابعة كافة الإجراءات والأمور المتعلقة بها كالإجازات والمغادرات والترفيعات وغيرها، ومتابعة التزام الموظفين بالقوانين والأنظمة المتبعة.</li>','12'),(13,13,'<li> إعداد خطط العمل السنوية للمديرية بما يضمن الاستخدام الأمثل لموارد تكنولوجيا المعلومات والاتصالات المتاحة، وتحديد الاحتياجات من الأنظمة والأجهزة وملحقاتها والعمل على توفيرها ومتابعة تطويرها حسب الحاجة.</li>\n<li> التنسيق المستمر مع وزارة الاتصالات وتكنولوجيا المعلومات ومركز تكنولوجيا المعلومات الوطني وبرنامج الحكومة الالكترونية وتطبيق الأنظمة والتعليمات بهذا الخصوص.</li>\n<li> وضع ومراجعة إستراتيجية المعرفة وخطط عملها وضمان بناء المعرفة الإلكترونية لدى مختلف مديريات وأقسام الوزارة وتنفيذ برامج نشر الوعي والتدريب لذلك.</li>\n<li> إدامة عمل البنية التحتية لتكنولوجيا المعلومات والاتصالات في الوزارة من شبكات وأجهزة ربط وخطوط اتصال داخلية وخارجية وأجهزة حاسوب شخصية وملحقاتها.</li>','13'),(14,14,NULL,'14');
/*!40000 ALTER TABLE `unit_responsibilities` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-21 12:03:33
