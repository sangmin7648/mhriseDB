-- MySQL dump 10.13  Distrib 8.0.23, for Linux (x86_64)
--
-- Host: localhost    Database: mhriseDB
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.17-MariaDB

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
-- Table structure for table `alembic_version`
--

DROP TABLE IF EXISTS `alembic_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alembic_version` (
  `version_num` varchar(32) NOT NULL,
  PRIMARY KEY (`version_num`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alembic_version`
--

LOCK TABLES `alembic_version` WRITE;
/*!40000 ALTER TABLE `alembic_version` DISABLE KEYS */;
INSERT INTO `alembic_version` VALUES ('143ec5b9752d');
/*!40000 ALTER TABLE `alembic_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fields`
--

DROP TABLE IF EXISTS `fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `eng_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fields`
--

LOCK TABLES `fields` WRITE;
/*!40000 ALTER TABLE `fields` DISABLE KEYS */;
INSERT INTO `fields` VALUES (1,'용암 동굴','lava_caverns','거대한 암석 동굴 속은 용암이 흐르는 뜨거운 구역과 아름답고 맑은 물이 흐르는 구역으로 나누어져 있다. 몬스터만 없다면 창홍이 반짝이는 신비로운 광경이지만...'),(2,'모래 평원','sandy_plains','혈육에 굶주린 몬스터들이 이빨을 드러내는 불모의 벌판. 햇볕이 사정없이 내리쬐는 낮과 달빛이 비치는 밤은 분위기가 아주 다르다.'),(3,'한랭 군도','frost_islands','극한의 한랭 군도는 한때 거대한 용이 소굴로 삼았던 곳. 수많은 강자가 그 용에 도전한 후 사라졌다는 죽음의 장소이다. 섬 한가운데에는 그 격렬한 전투를 말해주는 거대한 용뼈와 썩어버린 격룡선이 눈바람에 드러나 있다.'),(4,'수몰된 숲','flooded_forest','울창한 나무가 우거진 심록의 비경. 항상 물줄기가 끊기는 일이 없으며, 대부분이 물에 잠겨 있다. 한눈에도 눈길을 끄는 거대한 유적은 밧줄벌레를 사용하면 등정할 수 있을 것 같다.'),(5,'사원 폐허','shrine_ruins','진호의 기도를 드리는 사원이 있던 자리도 지금은 썩어 문드러져 낮밤을 가리지 않고 몬스터의 포효가 울려 퍼진다. 그러나 성스러운 장소의 모습은 아직 짙게 남아 있어, 신비로운 분위기에 싸여있다.');
/*!40000 ALTER TABLE `fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hit_data`
--

DROP TABLE IF EXISTS `hit_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hit_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `monster_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `part` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slash` int(11) DEFAULT NULL,
  `impact` int(11) DEFAULT NULL,
  `shot` int(11) DEFAULT NULL,
  `fire` int(11) DEFAULT NULL,
  `water` int(11) DEFAULT NULL,
  `thunder` int(11) DEFAULT NULL,
  `ice` int(11) DEFAULT NULL,
  `dragon` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `monster_name` (`monster_name`),
  CONSTRAINT `hit_data_ibfk_1` FOREIGN KEY (`monster_name`) REFERENCES `monsters` (`name`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hit_data`
--

LOCK TABLES `hit_data` WRITE;
/*!40000 ALTER TABLE `hit_data` DISABLE KEYS */;
INSERT INTO `hit_data` VALUES (1,'마가이마가도','머리',10,11,12,13,14,15,16,17),(2,'마가이마가도','몸통',11,12,13,14,15,16,17,18),(3,'마가이마가도','꼬리',12,13,14,15,16,17,18,19),(4,'마가이마가도','앞발',13,14,15,16,17,18,19,20),(5,'아케노시름','머리',20,21,22,23,24,25,26,27),(6,'아케노시름','몸통',21,22,23,24,25,26,27,28),(7,'아케노시름','꼬리',22,23,24,25,26,27,28,29),(8,'아케노시름','앞발',23,24,25,26,27,28,29,30),(9,'오사이즈치','머리',30,31,32,33,34,35,36,37),(10,'오사이즈치','몸통',31,32,33,34,35,36,37,38),(11,'오사이즈치','꼬리',32,33,34,35,36,37,38,39),(12,'오사이즈치','앞발',33,34,35,36,37,38,39,40),(13,'요츠미와두','머리',40,41,42,43,44,45,46,47),(14,'요츠미와두','몸통',41,42,43,44,45,46,47,48),(15,'요츠미와두','꼬리',42,43,44,45,46,47,48,49),(16,'요츠미와두','앞발',43,44,45,46,47,48,49,50),(17,'이소네미쿠니','머리',50,51,52,53,54,55,56,57),(18,'이소네미쿠니','몸통',50,51,52,53,54,55,56,57),(19,'이소네미쿠니','꼬리',51,52,53,54,55,56,57,58),(20,'이소네미쿠니','앞발',52,53,54,55,56,57,58,59);
/*!40000 ALTER TABLE `hit_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materials`
--

DROP TABLE IF EXISTS `materials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rarity` int(11) DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materials`
--

LOCK TABLES `materials` WRITE;
/*!40000 ALTER TABLE `materials` DISABLE KEYS */;
INSERT INTO `materials` VALUES (1,'테스트 소재 1',1,'테스트 중이다'),(2,'테스트 소재 2',1,'테스트 중이다'),(3,'테스트 소재 3',1,'테스트 중이다'),(4,'테스트 소재 4',1,'테스트 중이다'),(5,'테스트 소재 5',1,'테스트 중이다'),(6,'테스트 소재 6',1,'테스트 중이다'),(7,'테스트 소재 7',2,'테스트 중이다'),(8,'테스트 소재 8',2,'테스트 중이다'),(9,'테스트 소재 9',2,'테스트 중이다'),(10,'테스트 소재 10',2,'테스트 중이다'),(11,'테스트 소재 11',3,'테스트 중이다'),(12,'테스트 소재 12',3,'테스트 중이다'),(13,'테스트 소재 13',3,'테스트 중이다'),(14,'테스트 소재 14',3,'테스트 중이다'),(15,'테스트 소재 15',3,'테스트 중이다'),(16,'테스트 소재 16',6,'테스트 중이다'),(17,'테스트 소재 17',6,'테스트 중이다'),(18,'테스트 소재 18',6,'테스트 중이다'),(19,'테스트 소재 19',6,'테스트 중이다'),(20,'테스트 소재 20',6,'테스트 중이다'),(21,'테스트 소재 21',6,'테스트 중이다'),(22,'테스트 소재 22',6,'테스트 중이다'),(23,'테스트 소재 23',6,'테스트 중이다'),(24,'테스트 소재 24',6,'테스트 중이다'),(25,'테스트 소재 25',6,'테스트 중이다'),(26,'테스트 소재 26',6,'테스트 중이다');
/*!40000 ALTER TABLE `materials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materials_from_field`
--

DROP TABLE IF EXISTS `materials_from_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materials_from_field` (
  `field_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `material_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `rank` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`field_name`,`material_name`),
  KEY `material_name` (`material_name`),
  CONSTRAINT `materials_from_field_ibfk_1` FOREIGN KEY (`field_name`) REFERENCES `fields` (`name`) ON DELETE CASCADE,
  CONSTRAINT `materials_from_field_ibfk_2` FOREIGN KEY (`material_name`) REFERENCES `materials` (`name`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materials_from_field`
--

LOCK TABLES `materials_from_field` WRITE;
/*!40000 ALTER TABLE `materials_from_field` DISABLE KEYS */;
INSERT INTO `materials_from_field` VALUES ('모래 평원','테스트 소재 10',4,12,'상위'),('모래 평원','테스트 소재 11',3,13,'하위'),('모래 평원','테스트 소재 12',4,14,'상위'),('모래 평원','테스트 소재 13',5,15,'하위'),('모래 평원','테스트 소재 14',3,16,'상위'),('모래 평원','테스트 소재 15',4,17,'하위'),('모래 평원','테스트 소재 16',5,18,'상위'),('모래 평원','테스트 소재 17',4,19,'하위'),('모래 평원','테스트 소재 18',5,20,'상위'),('모래 평원','테스트 소재 19',6,21,'하위'),('모래 평원','테스트 소재 20',4,22,'상위'),('용암 동굴','테스트 소재 1',1,1,'하위'),('용암 동굴','테스트 소재 2',2,2,'상위'),('용암 동굴','테스트 소재 3',3,3,'하위'),('용암 동굴','테스트 소재 4',1,4,'상위'),('용암 동굴','테스트 소재 5',2,5,'하위'),('한랭 군도','테스트 소재 1',2,7,'하위'),('한랭 군도','테스트 소재 2',3,8,'상위'),('한랭 군도','테스트 소재 3',4,9,'하위'),('한랭 군도','테스트 소재 6',3,6,'상위'),('한랭 군도','테스트 소재 8',2,10,'상위'),('한랭 군도','테스트 소재 9',3,11,'하위');
/*!40000 ALTER TABLE `materials_from_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materials_from_monster`
--

DROP TABLE IF EXISTS `materials_from_monster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materials_from_monster` (
  `monster_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `material_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `monster_part` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `drop_rate` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `rank` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`monster_name`,`material_name`),
  KEY `material_name` (`material_name`),
  CONSTRAINT `materials_from_monster_ibfk_1` FOREIGN KEY (`material_name`) REFERENCES `materials` (`name`) ON DELETE CASCADE,
  CONSTRAINT `materials_from_monster_ibfk_2` FOREIGN KEY (`monster_name`) REFERENCES `monsters` (`name`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materials_from_monster`
--

LOCK TABLES `materials_from_monster` WRITE;
/*!40000 ALTER TABLE `materials_from_monster` DISABLE KEYS */;
INSERT INTO `materials_from_monster` VALUES ('고샤하기','테스트 소재 19','몸통',10,19,'상위'),('고샤하기','테스트 소재 20','꼬리',10,20,'하위'),('마가이마가도','테스트 소재 1','몸통',5,1,'하위'),('마가이마가도','테스트 소재 2','꼬리',5,2,'하위'),('마가이마가도','테스트 소재 3','몸통',5,3,'상위'),('비슈텐고','테스트 소재 17','몸통',50,17,'상위'),('비슈텐고','테스트 소재 18','꼬리',10,18,'하위'),('아오아시라','테스트 소재 24','꼬리',10,24,'하위'),('아케노시름','테스트 소재 4','꼬리',10,4,'하위'),('아케노시름','테스트 소재 5','몸통',10,5,'상위'),('야츠카다키','테스트 소재 21','몸통',10,21,'상위'),('야츠카다키','테스트 소재 22','꼬리',10,22,'하위'),('야츠카다키','테스트 소재 23','몸통',10,23,'상위'),('오사이즈치','테스트 소재 6','꼬리',10,6,'하위'),('오사이즈치','테스트 소재 7','몸통',30,7,'상위'),('오사이즈치','테스트 소재 8','꼬리',30,8,'하위'),('요츠미와두','테스트 소재 10','꼬리',100,10,'하위'),('요츠미와두','테스트 소재 11','몸통',100,11,'상위'),('요츠미와두','테스트 소재 12','꼬리',100,12,'하위'),('요츠미와두','테스트 소재 13','몸통',30,13,'상위'),('요츠미와두','테스트 소재 9','몸통',30,9,'상위'),('이소네미쿠니','테스트 소재 14','꼬리',30,14,'하위'),('이소네미쿠니','테스트 소재 15','몸통',20,15,'상위'),('이소네미쿠니','테스트 소재 16','꼬리',50,16,'하위');
/*!40000 ALTER TABLE `materials_from_monster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materials_from_quest`
--

DROP TABLE IF EXISTS `materials_from_quest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materials_from_quest` (
  `quest_id` int(11) NOT NULL,
  `material_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `material_count` int(11) DEFAULT NULL,
  `drop_rate` int(11) DEFAULT NULL,
  PRIMARY KEY (`quest_id`,`material_name`),
  KEY `material_name` (`material_name`),
  CONSTRAINT `materials_from_quest_ibfk_1` FOREIGN KEY (`material_name`) REFERENCES `materials` (`name`) ON DELETE CASCADE,
  CONSTRAINT `materials_from_quest_ibfk_2` FOREIGN KEY (`quest_id`) REFERENCES `quests` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materials_from_quest`
--

LOCK TABLES `materials_from_quest` WRITE;
/*!40000 ALTER TABLE `materials_from_quest` DISABLE KEYS */;
INSERT INTO `materials_from_quest` VALUES (1,'테스트 소재 1',1,50),(1,'테스트 소재 2',2,100),(1,'테스트 소재 3',1,20),(2,'테스트 소재 4',2,5),(2,'테스트 소재 5',1,20),(3,'테스트 소재 6',2,100),(3,'테스트 소재 7',1,10),(3,'테스트 소재 8',2,10),(3,'테스트 소재 9',1,5),(4,'테스트 소재 10',2,5),(4,'테스트 소재 11',1,5),(5,'테스트 소재 12',2,10),(6,'테스트 소재 13',1,10),(7,'테스트 소재 14',2,50),(8,'테스트 소재 15',1,100),(9,'테스트 소재 16',2,70),(10,'테스트 소재 17',1,50);
/*!40000 ALTER TABLE `materials_from_quest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mhr_news`
--

DROP TABLE IF EXISTS `mhr_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mhr_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mhr_news`
--

LOCK TABLES `mhr_news` WRITE;
/*!40000 ALTER TABLE `mhr_news` DISABLE KEYS */;
INSERT INTO `mhr_news` VALUES (1,'스위치 신작 몬스터 헌터 라이즈, 내년 PC로도 출시된다','2021.02.26','게임메카','https://www.gamemeca.com/view.php?gid=1655694'),(2,'\'몬스터 헌터 라이즈\' 프로모션 영상 5','2021.03.08','IGN Korea','https://kr.ign.com/monster-hunter-rise/10304/video/monseuteo-heonteo-raijeu-peuromosyeon-yeongsang-5'),(3,'\'몬스터 헌터 라이즈\' - 헌팅 가이드','2021.03.10','IGN Korea','https://kr.ign.com/monster-hunter-rise/10315/video/monseuteo-heonteo-raijeu-heonting-gaideu'),(4,'몬헌 라이즈 간판몬 마가이마가도, 못 잡았습니다','2021.03.12','게임메카','https://www.gamemeca.com/view.php?gid=1656309');
/*!40000 ALTER TABLE `mhr_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monsters`
--

DROP TABLE IF EXISTS `monsters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monsters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jap_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_large` int(11) DEFAULT NULL,
  `alias` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monster_class` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monsters`
--

LOCK TABLES `monsters` WRITE;
/*!40000 ALTER TABLE `monsters` DISABLE KEYS */;
INSERT INTO `monsters` VALUES (1,'마가이마가도','Magaimagado',1,'원호룡(怨虎竜)','아룡종','그 노기에 가득 찬 무서운 얼굴과 갑옷투구처럼 위엄있는 갑각은 마치 원한으로 가득 찬 망령무사 같다... 다른 몬스터를 잡아먹으면 몸에서 솟아오르는 보라색 가스는 「귀화」라고도 불리며, 그렇지 않아도 압도적인 마가이마가도의 파괴력을 더욱 끌어올린다고 한다.'),(2,'아케노시름','Akenoshirumu',1,'산조(傘鳥)','조룡종','한 개의 다리로 서는 독특한 모습이 우산처럼 보이는 것이 특징인 조룡. 영역 의식이 강해 자신의 영역을 침범 당하면 날개를 크게 펼치거나 눈알처럼 보이는 독특한 볏을 전개하여 위협한다.'),(3,'오사이즈치','Osaizuchi',1,'겸유룡(鎌鼬竜)','조룡종','낫 형태로 발달한 꼬리로 공격을 하는 조룡. \'오사이즈치\'는 소형의 \'이즈치\'를 포함한 무리를 형성하여, 그 중에서도 정예 2마리를 데리고 다니면서 영역을 순회한다. 한 번 먹잇감을 찾으면 삼위일체의 교묘한 연계 공격을 펼친다.'),(4,'요츠미와두','Yotsumiwadou',1,'하동와(河童蛙)','양서종','뚱뚱하고 큰 몸집이 특징인 양서종. 먹는 것에 욕심이 많아 움직이는 것을 발견하면 바닥의 흙과 돌멩이까지 함께 삼켜버린다. 식사를 하면 복부가 부풀어 올라 움직임이 둔해지나, 그만큼 공격에 무게가 실려 파괴력이 높아지기 때문에 주의해야 한다.'),(5,'이소네미쿠니','Isonemikuni',1,'인어룡(人魚竜)','해룡종','달빛에 비친 모습이 여성처럼 보이는 것과, 물속을 우아하게 자유자재로 헤엄치는 모습이 마치 인어같은 몬스터. 사실은 난폭한 성질로, 세력권에 침입하는 자는 가차 없이 공격한다. 사냥감이 나타나면 목에 있는 기관에서 수면가루를 뿌리고, 혼수 상태로 만들어 공격한다.'),(6,'비슈텐고','Bishutengo',1,'천구수(天狗獣)','아수종','발달한 꼬리가 특징적인 몬스터. 잡식성이지만 특히 과일을 좋아해서, 배 주머니에 감을 저장해 두고 있다. 호기심 많고 장난을 좋아하는 면도 있으며, 사냥할 때 꼬리 등을 이용해 사냥감에 감을 내던지는 모습도 목격되고 있다.'),(7,'고샤하기','Goshahagi',1,'설귀수(雪鬼獣)','아수종',''),(8,'야츠카다키','Yatzukadaki',1,'비지주(妃蜘蛛)','협각종','온몸에 실을 두른 하얀 천과 같은 모습이 특징적이며, 「비지주」라고도 한다. 실을 사용해 헌터를 꼼짝 못 하게 만들며, 연소시킨 가스를 내뿜어 공격한다. 또한 거느리고 있는 유체 「츠케히바키」는 작지만, 야츠카다키의 이동을 서포트하거나 사냥감을 잡기도 한다. 야츠카다키와 츠케히바키의 연계 공격을 조심해야 한다.'),(9,'아오아시라','Aoashira',1,'청웅수(青熊獣)','아수종','온난습윤한 지역의 산이나 밀림에 서식하는 아수. 두 발로 서서, 아주 좋아하는 벌꿀을 채집하거나 물가에 있는 물고기를 낚는것이 알려졌다. 예리한 손톱과 두터운 갑각가진 앞다리는 이상할 정도로 발달해 있고 그 일격은 위험하다. 아름다운 파란 털을 가지는 것으로, \'청웅수\'라고 불려진다.'),(10,'로아루드로스','Roarudorosu',1,'수수(水獣)','해룡종','갈기처럼 보이는 해면질의 비늘이 특징적인 \'수수(水獣)\'의 이명을 가지는 해룡종. 이 기관이 대량의 수분을 저장, 유지해 피부 표면의 건조를 막아 주어 해룡종으로서는 비교적 장시간 동안 육상에서의 활동이 가능하다. 수컷끼리는 암컷의 획득을 위해 싸움을 반복한다. 이러한 투쟁에서 이긴 강하고 큰 수컷만이 무리의 리더로서 군림한다. 무리를 지키려는 의식이 매우 강해, 인간이 부주의하게 다가가면 습격당하는 일이 자주 일어난다. 수렵에 성공하면, 특이한 그 소재는 무기의 소재로서 많은 도움이 된다.'),(11,'도스프로기','Dosufurogi',1,'독구룡(毒狗竜)','조룡종','몸에 있는 안개 독을 뱉는 조룡종 프로기.목 주위에 있는 주머니 모양의 기관에서 독을 생성하고, 독을 뱉기 전에는 주머니를 크게 부풀린다.독은 안개 형태임에도 불구하고 대형 초식종을 약하게 하기에 충분한 독성을 지니고 있다. 무리로 행동하는 습성을 지니고 있다.'),(12,'벨리오로스','Beriorosu',1,'빙아룡(氷牙竜)','비룡종','영구동토의 세계에 군림하는 재빠른 비룡. 거대한 이빨과 예리한 가시가 특징, 날개나 꼬리에 난 스파이크형 비늘을 사용해 미끄러지기 쉬운 빙판위를 자유자재로 뛰어다닌다. 그 능력 때문에 벨리오로스의 움직임을 따라가기에는 아주 곤란하다.'),(13,'푸루푸루','Furufuru',1,'기괴룡(奇怪竜)','비룡종',''),(14,'도스바기','Dosubaggi',1,'면구룡(眠狗竜)','조룡종',''),(15,'울크스스','Urukususu',1,'백토수(白兎獣)','아수종','추운 지역의 생활에 적응한 아수. 두꺼운 피하 지방과 보온성이 높은 털을 가졌다. 초식 경향이 강한 잡식성이지만 동물을 잡아먹기도 한다. 그때는 뛰어난 청각으로 사냥감을 찾아내 얼음 위를 활강해 빠르고 조용하게 사냥한다.'),(16,'티가렉스','Tigarekkusu',1,'굉룡(轟竜)','비룡종','원시적인 풍모의 비룡. 극히 포악한 성격에 잘 발달된 사지를 이용한 돌진, 강력한 발톱과 턱의 일격 모두 엄청난 위력을 가지고 있다. 사냥감을 찾아 넓은 지역을 이동하며 빙해에까지 모습을 드러낸다고 한다. 강렬한 포효로 인해 \'굉룡\'이라는 별명을 갖게 되었다.'),(17,'타마미츠네','Mizutsune',1,'포호룡(泡狐竜)','해룡종',''),(18,'토비카가치','Tobikagachi',1,'비뢰룡(飛雷竜)','아룡종','나무 위에 서식하며 나무를 뛰어다니는 아룡종. 나무나 지면에 신체를 문지르며 이동해서 체모에 정전기를 축적하는 성질을 가진 듯하다.'),(19,'리오레이아','Rioreia',1,'자화룡(雌火竜)','비룡종','육지의 여왕으로 불리는 \'자화룡\'. 주로 지상에서 사냥하기 때문에 대지를 달리는 강한 다리와 먹잇감을 잡을 수 있는 맹독성 꼬리를 가졌다. 파트너와 짝을 이루어 함께 사냥하는 모습도 목격되는데 이때 서로 협력하는 듯한 행동을 하기도 한다.'),(20,'리오레우스','Rioreusu',1,'화룡(火竜)','비룡종','하늘의 제왕이자 두려움의 대상으로 불리는 비룡. 자화룡과 함께 둥지를 중심으로 넓은 영역을 형성해 상공에서 감시한다. 침입자가 있으면 뛰어난 비행 능력으로 급강하하여 강력한 독 발톱으로 공격한다. 불을 뿜기 때문에 화룡이라는 별명이 있다.'),(21,'푸케푸케','Pukepuke',1,'독요조(毒妖鳥)','조룡종','체내에 독액을 가진 조룡종. 펑펑호두 등의 식물을 먹어 입안이나 꼬리에 축적하는 성질이 있으며 독액이 섞인 강력한 독 브레스를 뿜는다.'),(22,'안쟈나프','Anjanafu',1,'만악룡(蛮顎竜)','수룡종','포식 대상인 초식종이 서식하는 고대수의 숲을 영역으로 하는 몬스터. 매우 호전적이기에 다른 몬스터들에게도 주저 없이 덤벼든다.'),(23,'쿠루루야크','Kururuyakku',1,'소조(掻鳥)','조룡종','발달한 앞다리로 물체를 잡는 게 특기인 조룡종. 고대수의 숲이나 개밋둑의 황야 등에서 몬스터의 알을 훔쳐가는 모습이 자주 목격되고 있다.'),(24,'쥬라토도스','Jyuratodosu',1,'이어룡(泥魚竜)','어룡종','개밋둑의 황야의 늪지에 서식하는 대형 어룡. 진흙을 이용해 사냥감을 잡거나 몸을 보호한다. 영역을 두고 볼보로스와 다툴 때도 있다.'),(25,'라잔','Rajan',1,'금사자(金獅子)','아수종','매우 공격적인 생물. 자주 목격되지 않는 이유는 엄청난 공격성 때문이다. 그 모습을 보고 무사히 살아남은 자는 극히 드물다. 늘 홀로 행동하며 그 누구와도 함께 하지 않는 고고한 존재라고 한다. 서식지 등은 전혀 알려진 것이 없다.'),(26,'디아블로스','Diaburosu',1,'각룡(角竜)','비룡종','사막의 폭군으로 두려움 받는 비룡. 영역에 대한 집착이 매우 강해 영역을 침범하는 자에게는 이상할 정도의 공격성을 보인다. 또, 자주 모래 속으로 파고 들기 때문인지 청각이 매우 발달하여 소리에 매우 민감하게 반응한다. 주식은 선인장.'),(27,'랑그로토라','Rangurotora',1,'적갑수(赤甲獣)','아수종','마그마의 열기에도 견디는 두터운 갑옷을 지녀 \'적갑수\'라고도 불리는 아수종. 신체를 둥글게 말아 작열하는 지표면 위를 구르듯이 이동한다. 갑충종을 좋아해서, 그 긴 혀를 늘려서 휘감듯이 잡아서 먹는다. 강력한 마비 성분을 지닌 타액을 뱉기도 한다고 알려져 있기 때문에, 주의가 필요하다.'),(28,'오로미도로','Oromidoro',1,'이옹룡 (泥翁竜)','해룡종','「이옹룡」은 보통 깊은 산속에 살지만, 백룡야행의 영향 때문인지 마을 근처로 내려와 헌터를 덮친다. 별명과 같이 진흙을 사용한 공격이 특기이며, 몸을 휘감아 자신을 강화한다. 또한 꼬리에서 분비되는 금색의 특수한 용해액으로 땅을 녹이고, 땅속에 숨어 사냥감을 움직이지 못하게 하여 사냥한다.'),(29,'바살모스','Basarumosu',1,'암룡(岩竜)','비룡종',''),(30,'볼보로스','Boruborosu',1,'토사룡(土沙竜)','수룡종','토사룡이라 불리는 강인한 각력을 가진 수룡의 하나로, 보통 진흙 속에 숨어있다. 전신에 묻어있는 축축한 진흙은, 더움과 직사광선을 약하게 하는 목적을 가지고 있다고 생각된다. 또 이 진흙은 적대자에게 대한 경계나 공격의 수단으로 사용되어, 몸통을 크게 흔들어 진흙을 흩뿌려 상대의 접근을 막는다'),(31,'진오우거','Jinoga',1,'뇌랑룡(雷狼竜)','아룡종','뇌광을 몸에 두른 그 모습 때문에 뇌랑룡이라 불리고 있는 아룡종. 기복이 심한 산림에서 서식하기 때문에 발톱이 날카롭고 사지가 강인하게 발달해있다. 사냥시에는 무수한 뇌광충을 모아 두르고 있는 전력을 비약적으로 높이는 것으로 알려져 있으며, 초대전상태라고 불리우는 모습으로 변화한다.'),(32,'나르가쿠르가','Narugakuruga',1,'신룡(迅竜)','비룡종','나무들이 무성한 토지에 서식하는 독특하게 진화한 비룡. 이명은 신룡(迅竜). 어둠에 몸을 숨기고, 무서울 정도로 빠른 속도로 집요하고 교활하게 먹이를 노리고, 추적한다. 싸우기 위한 무기로서 발달한 꼬리는 매우 유연하고, 파괴력이 강하다.'),(33,'오나즈치','Oonazuchi',1,'하룡(霞龍)','고룡종','목격된 횟수가 극히 적은 고룡. 그 이유가 자유자재로 모습을 감추는 능력 때문이라고 하여, \'하룡\'이라고도 불린다. 모습을 감출 때 안개 같은 입김을 뿜는 모습도 목격되었으며, 그 특이한 능력과 기발한 움직임은 비슷한 예를 찾아볼 수 없다.'),(34,'브나하브라','Bunahabura',0,'','갑충종',''),(35,'오르타로스','Orutarosu',0,'','갑충종',''),(36,'가브라스','Gaburasu',0,'','사룡종',''),(37,'아이루','Airu',0,'','수인종',''),(38,'메라루','Meraru',0,'','수인종',''),(39,'쟈그라스','Jagurasu',0,'','아룡종',''),(40,'분부지나','Bunbujina',0,'','아수종',''),(41,'불팽고','Burufango',0,'','아수종',''),(42,'스쿠아길','Sukuagiru',0,'','양서종',''),(43,'델크스','Derukusu',0,'','어룡종',''),(44,'가쟈우','Gajau',0,'','어류',''),(45,'가구아','Gagua',0,'','조룡종',''),(46,'바기','Baggi',0,'','조룡종',''),(47,'이즈치','Izuchi',0,'','조룡종',''),(48,'재기','Jagii',0,'','조룡종',''),(49,'재기노스','Jagiinosu',0,'','조룡종',''),(50,'프로기','Furogi',0,'','조룡종',''),(51,'가우시카','Gaushika',0,'','초식종',''),(52,'리노프로스','Rinopurosu',0,'','초식종',''),(53,'즈와로포스','Zuwaroposu',0,'','초식종',''),(54,'포포','Popo',0,'','초식종',''),(55,'케스토돈','Kesutodon',0,'','초식종',''),(56,'켈비','Kerubi',0,'','초식종',''),(57,'루드로스','Rudorosu',0,'','해룡종',''),(58,'우로코트르','Urokotoru',0,'','해룡종',''),(59,'츠케히바키','Tsukehibaki',0,'','협각종','');
/*!40000 ALTER TABLE `monsters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quest_monsters`
--

DROP TABLE IF EXISTS `quest_monsters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quest_monsters` (
  `quest_id` int(11) NOT NULL,
  `monster_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `monster_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`quest_id`,`monster_name`),
  KEY `monster_name` (`monster_name`),
  CONSTRAINT `quest_monsters_ibfk_1` FOREIGN KEY (`monster_name`) REFERENCES `monsters` (`name`) ON DELETE CASCADE,
  CONSTRAINT `quest_monsters_ibfk_2` FOREIGN KEY (`quest_id`) REFERENCES `quests` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quest_monsters`
--

LOCK TABLES `quest_monsters` WRITE;
/*!40000 ALTER TABLE `quest_monsters` DISABLE KEYS */;
INSERT INTO `quest_monsters` VALUES (1,'마가이마가도',3),(1,'아케노시름',2),(1,'오사이즈치',1),(2,'요츠미와두',3),(2,'이소네미쿠니',2),(3,'비슈텐고',1),(4,'고샤하기',3),(5,'야츠카다키',2),(6,'마가이마가도',1),(7,'아케노시름',3),(8,'오사이즈치',2),(9,'요츠미와두',1),(10,'이소네미쿠니',3),(11,'비슈텐고',2),(12,'고샤하기',1),(13,'야츠카다키',3),(14,'마가이마가도',2),(15,'아케노시름',1),(16,'오사이즈치',3),(17,'요츠미와두',2),(18,'이소네미쿠니',1),(19,'비슈텐고',2),(20,'고샤하기',3);
/*!40000 ALTER TABLE `quest_monsters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quests`
--

DROP TABLE IF EXISTS `quests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_key` int(11) DEFAULT NULL,
  `source` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source_star` int(11) DEFAULT NULL,
  `goal` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_limit` int(11) DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_name` (`field_name`),
  CONSTRAINT `quests_ibfk_1` FOREIGN KEY (`field_name`) REFERENCES `fields` (`name`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quests`
--

LOCK TABLES `quests` WRITE;
/*!40000 ALTER TABLE `quests` DISABLE KEYS */;
INSERT INTO `quests` VALUES (1,'테스트 퀘 1',1,'촌장',1,'포획',30,'설명충','용암 동굴'),(2,'테스트 퀘 2',0,'촌장',1,'포획',31,'설명충','용암 동굴'),(3,'테스트 퀘 3',0,'촌장',2,'수렵',32,'설명충','용암 동굴'),(4,'테스트 퀘 4',1,'촌장',2,'포획',33,'설명충','용암 동굴'),(5,'테스트 퀘 5',0,'촌장',3,'수렵',34,'설명충','용암 동굴'),(6,'테스트 퀘 6',1,'촌장',4,'포획',35,'설명충','용암 동굴'),(7,'테스트 퀘 7',0,'촌장',5,'수렵',36,'설명충','모래 평원'),(8,'테스트 퀘 8',0,'하위',1,'포획',37,'설명충','모래 평원'),(9,'테스트 퀘 9',0,'하위',2,'수렵',38,'설명충','모래 평원'),(10,'테스트 퀘 10',0,'하위',3,'포획',39,'설명충','모래 평원'),(11,'테스트 퀘 11',0,'하위',4,'수렵',40,'설명충','모래 평원'),(12,'테스트 퀘 12',0,'하위',5,'포획',41,'설명충','모래 평원'),(13,'테스트 퀘 13',0,'하위',6,'수렵',50,'설명충','수몰된 숲'),(14,'테스트 퀘 14',0,'하위',7,'포획',51,'설명충','수몰된 숲'),(15,'테스트 퀘 15',0,'하위',8,'수렵',52,'설명충','수몰된 숲'),(16,'테스트 퀘 16',0,'상위',1,'포획',53,'설명충','수몰된 숲'),(17,'테스트 퀘 17',0,'상위',2,'수렵',54,'설명충','수몰된 숲'),(18,'테스트 퀘 18',0,'상위',3,'포획',55,'설명충','수몰된 숲'),(19,'테스트 퀘 19',0,'상위',4,'수렵',56,'설명충','사원 폐허'),(20,'테스트 퀘 20',0,'상위',5,'포획',57,'설명충','사원 폐허');
/*!40000 ALTER TABLE `quests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weak_elements`
--

DROP TABLE IF EXISTS `weak_elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weak_elements` (
  `monster_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `effectiveness` int(11) DEFAULT NULL,
  PRIMARY KEY (`monster_name`,`element`),
  CONSTRAINT `weak_elements_ibfk_1` FOREIGN KEY (`monster_name`) REFERENCES `monsters` (`name`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weak_elements`
--

LOCK TABLES `weak_elements` WRITE;
/*!40000 ALTER TABLE `weak_elements` DISABLE KEYS */;
INSERT INTO `weak_elements` VALUES ('고샤하기','빙',6),('나르가쿠르가','화',31),('도스바기','화',13),('도스프로기','용',10),('디아블로스','용',25),('라잔','수',24),('랑그로토라','빙',26),('로아루드로스','수',9),('리오레우스','수',19),('리오레이아','화',18),('마가이마가도','수',2),('마가이마가도','용',3),('마가이마가도','화',1),('바살모스','화',28),('벨리오로스','빙',11),('볼보로스','수',29),('비슈텐고','용',5),('아오아시라','화',8),('아케노시름','빙',1),('안쟈나프','빙',21),('야츠카다키','뇌',7),('오나즈치','수',32),('오로미도로','뇌',27),('오사이즈치','뇌',2),('요츠미와두','화',3),('울크스스','수',14),('이소네미쿠니','수',4),('쥬라토도스','화',23),('진오우거','용',30),('쿠루루야크','뇌',22),('타마미츠네','빙',16),('토비카가치','뇌',17),('티가렉스','용',15),('푸루푸루','뇌',12),('푸케푸케','용',20);
/*!40000 ALTER TABLE `weak_elements` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-21 17:45:31
