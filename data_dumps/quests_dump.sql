-- MySQL dump 10.13  Distrib 8.0.23, for Linux (x86_64)
--
-- Host: localhost    Database: mhriseDB
-- ------------------------------------------------------
-- Server version	5.5.5-10.5.9-MariaDB

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
-- Dumping data for table `quests`
--

LOCK TABLES `quests` WRITE;
/*!40000 ALTER TABLE `quests` DISABLE KEYS */;
INSERT IGNORE INTO `quests` VALUES (1,'사원 폐허 탐색 투어 ',0,'사원 폐허','촌장',1,'사원 폐허 탐색 ',3,50,NULL),(2,'한랭 군도 탐색 투어 ',0,'한랭 군도','촌장',1,'한랭 군도 탐색 ',3,50,NULL),(3,'모래 평원 탐색 투어 ',0,'모래 평원','촌장',1,'모래 평원 탐색 ',3,50,NULL),(4,'수몰된 숲 탐색 투어 ',0,'수몰된 숲','촌장',1,'수몰된 숲 탐색 ',3,50,NULL),(5,'용암 동굴 탐색 투어 ',0,'용암 동굴','촌장',1,'용암 동굴 탐색 ',3,50,NULL),(6,'꽈리가 대굴대굴 ',0,'사원 폐허','촌장',2,'불덩이 꽈리 8개 납품 ',3,50,NULL),(7,'맛있는 버섯을 주세요 ',0,'사원 폐허','촌장',2,'특산버섯 8개 납품 ',3,50,NULL),(8,'사원에 사는 무법자 ',0,'사원 폐허','촌장',2,'쟈그라스 8마리 토벌 ',3,50,NULL),(9,'정비보단 이즈치 퇴치가 먼저 ',0,'사원 폐허','촌장',2,'이즈치 8마리 토벌 ',3,50,NULL),(10,'배고픈 청웅수 ',0,'사원 폐허','촌장',2,'아오아시라 1마리 사냥 ',3,50,NULL),(11,'탱글탱글 미끌미끌 ',0,'한랭 군도','촌장',2,'뗏목 굴 10개 납품 ',3,50,NULL),(12,'한랭 군도의 황홀함 ',0,'한랭 군도','촌장',2,'바기 10마리 토벌 ',3,50,NULL),(13,'졸음을 이겨라! ',0,'한랭 군도','촌장',2,'도스바기 1마리 사냥 ',3,50,NULL),(14,'백토수야 먹지마 ',0,'한랭 군도','촌장',2,'울크스스 1마리 사냥 ',3,50,NULL),(15,'삼위일체의 큰낫 ',0,'사원 폐허','촌장',3,'오사이즈치 1마리 사냥 ',3,50,NULL),(16,'백충야행 ',0,'사원 폐허','촌장',3,'오르타로스와 브나하브라합계 14마리 토벌 ',3,50,NULL),(17,'잘못 구웠습니다! ',0,'한랭 군도','촌장',3,'포포의 혀 3개 납품 ',3,50,NULL),(18,'다가오는 백룡야행 ',0,'사원 폐허','촌장',3,'최종 관문 방어 ',3,50,NULL),(19,'꿀꺽꿀꺽 하동와 ',0,'한랭 군도','촌장',3,'요츠미와두 1마리 사냥 ',3,50,NULL),(20,'모래 평원의 대도둑 ',0,'모래 평원','촌장',3,'쿠루루야크 1마리 사냥 ',3,50,NULL),(21,'진흙 늪의 토사룡 ',0,'모래 평원','촌장',3,'볼보로스 1마리 사냥 ',3,50,NULL),(22,'독 구름에 젖은 수몰된 숲 ',0,'수몰된 숲','촌장',3,'도스프로기 1마리 사냥 ',3,50,NULL),(23,'해면 소재가 만들 사막의 미래 ',0,'수몰된 숲','촌장',3,'로아루드로스 1마리 사냥 ',3,50,NULL),(24,'변환의 지우산 ',0,'사원 폐허','촌장',3,'아케노시름 1마리 사냥 ',3,50,NULL),(25,'떨어뜨린 짐을 찾아라 편 ',0,'사원 폐허','촌장',3,'전통 경단 소재 6개 납품 ',3,50,NULL),(26,'얼굴 없는 괴물 퇴치? ',0,'한랭 군도','촌장',3,'푸루푸루 1마리 사냥 ',3,50,NULL),(27,'기절초풍! 선인장 다이어트 ',0,'모래 평원','촌장',3,'작은구슬 선인장 10개 납품 ',3,50,NULL),(28,'모래 평원에 있는 의문의 집단 ',0,'모래 평원','촌장',3,'재기와 재기노스합계 14마리 토벌 ',3,50,NULL),(29,'태고의 숨결 ',0,'수몰된 숲','촌장',3,'소박한 수정 10개 납품 ',3,50,NULL),(30,'아름답고 참한 여자 ',0,'수몰된 숲','촌장',4,'루드로스 10마리 토벌 ',3,50,NULL),(31,'특별 허가 시험 1번째 ',0,'사원 폐허','촌장',4,'아케노시름 1마리와리오레이아 1마리 사냥 ',3,50,NULL),(32,'황천길로 손짓하는 노랫소리 ',0,'한랭 군도','촌장',4,'이소네미쿠니 1마리 사냥 ',3,50,NULL),(33,'휘몰아치는 은세계 ',0,'한랭 군도','촌장',4,'벨리오로스 1마리 사냥 ',3,50,NULL),(34,'여왕님의 행차시다 ',0,'모래 평원','촌장',4,'리오레이아 1마리 사냥 ',3,50,NULL),(35,'하늘을 누비는 하얀 그림자 ',0,'수몰된 숲','촌장',4,'토비카가치 1마리 사냥 ',3,50,NULL),(36,'적열의 윤무곡 ',0,'용암 동굴','촌장',4,'랑그로토라 1마리 사냥 ',3,50,NULL),(37,'밤에 우는 바위 ',0,'용암 동굴','촌장',4,'바살모스 1마리 사냥 ',3,50,NULL),(38,'산림의 거친 법사 ',0,'사원 폐허','촌장',4,'비슈텐고 1마리 사냥 ',3,50,NULL),(39,'공포의 짐 찾기! 편 ',0,'용암 동굴','촌장',4,'비전 경단 소재 6개 납품 ',3,50,NULL),(40,'의사의 고독한 독 연구 ',0,'수몰된 숲','촌장',4,'푸케푸케 1마리 사냥 ',3,50,NULL),(41,'술안주는 간이 최고 ',0,'모래 평원','촌장',4,'몬스터의 간 5개 납품 ',3,50,NULL),(42,'철도 녹이는 연석탄 ',0,'용암 동굴','촌장',4,'연석탄 12개 납품 ',3,50,NULL),(43,'가족의 실 ',0,'용암 동굴','촌장',4,'츠케히바키 10마리 토벌 ',3,50,NULL),(44,'삼파전에서 살아남아라 ',0,'격투장','촌장',4,'모든 타겟 사냥 ',3,50,NULL),(45,'특별 허가 시험 2번째 ',0,'사원 폐허','촌장',5,'모든 타겟 사냥 ',3,50,NULL),(46,'질풍신룡 ',0,'사원 폐허','촌장',5,'나르가쿠르가 1마리 사냥 ',3,50,NULL),(47,'대전 뇌랑룡 ',0,'사원 폐허','촌장',5,'진오우거 1마리 사냥 ',3,50,NULL),(48,'한밤에 찾아온 사막의 추적자 ',0,'모래 평원','촌장',5,'안쟈나프 1마리 사냥 ',3,50,NULL),(49,'달밤에 춤추다 ',0,'수몰된 숲','촌장',5,'타마미츠네 1마리 사냥 ',3,50,NULL),(50,'리오레우스 경보 발령 ',0,'용암 동굴','촌장',5,'리오레우스 1마리 사냥 ',3,50,NULL),(51,'악역무도 ',0,'사원 폐허','촌장',5,'마가이마가도 1마리 사냥 ',3,50,NULL),(52,'맛의 비결은 선잠? 편 ',0,'한랭 군도','촌장',5,'이소네미쿠니 1마리 포획 ',3,50,NULL),(53,'찌릿찌릿 or 새근새근? ',0,'한랭 군도','촌장',5,'푸루푸루 1마리와이소네미쿠니 1마리 사냥 ',3,50,NULL),(54,'어수선한 모래 평원 ',0,'모래 평원','촌장',5,'쿠루루야크 1마리와안쟈나프 1마리 사냥 ',3,50,NULL),(55,'작열의 승부 ',0,'용암 동굴','촌장',5,'요츠미와두 1마리와랑그로토라 1마리 사냥 ',3,50,NULL),(56,'특별 허가 시험 3번째 ',0,'사원 폐허','촌장',6,'모든 타겟 사냥 ',3,50,NULL),(57,'진흙에 숨은 것 ',0,'사원 폐허','촌장',6,'오로미도로 1마리 사냥 ',3,50,NULL),(58,'방황하는 설귀수 ',0,'한랭 군도','촌장',6,'고샤하기 1마리 사냥 ',3,50,NULL),(59,'울려 퍼지는 목소리 ',0,'한랭 군도','촌장',6,'티가렉스 1마리 사냥 ',3,50,NULL),(60,'비틀린 욕망 ',0,'모래 평원','촌장',6,'디아블로스 1마리 사냥 ',3,50,NULL),(61,'사원 폐허에서하는 담력 시험 ',0,'사원 폐허','촌장',6,'마가이마가도 1마리와진오우거 1마리 사냥 ',3,50,NULL),(62,'질풍신뢰, 몽환포영 ',0,'수몰된 숲','촌장',6,'토비카가치 1마리와타마미츠네 1마리 사냥 ',3,50,NULL),(63,'하늘의 왕자, 대지의 폭군 ',0,'용암 동굴','촌장',6,'리오레우스 1마리와티가렉스 1마리 사냥 ',3,50,NULL),(64,'사원 폐허 탐색 투어 ',0,'사원 폐허','하위',1,'사원 폐허 탐색 ',3,50,NULL),(65,'한랭 군도 탐색 투어 ',0,'한랭 군도','하위',1,'한랭 군도 탐색 ',3,50,NULL),(66,'모래 평원 탐색 투어 ',0,'모래 평원','하위',1,'모래 평원 탐색 ',3,50,NULL),(67,'수몰된 숲 탐색 투어 ',0,'수몰된 숲','하위',1,'수몰된 숲 탐색 ',3,50,NULL),(68,'용암 동굴 탐색 투어 ',0,'용암 동굴','하위',1,'용암 동굴 탐색 ',3,50,NULL),(69,'다가오는 백룡야행 ',0,'사원 폐허','하위',1,'최종 관문 방어 ',3,50,NULL),(70,'지우산 요괴 ',0,'사원 폐허','하위',1,'아케노시름 1마리 사냥 ',3,50,NULL),(71,'한밤 중의 쿠루루야크 퇴치 ',0,'사원 폐허','하위',1,'쿠루루야크 1마리 사냥 ',3,50,NULL),(72,'한랭 군도에 부는 바람 ',0,'한랭 군도','하위',1,'오사이즈치 1마리 사냥 ',3,50,NULL),(73,'면구룡, 한랭 군도에 나타나다 ',0,'한랭 군도','하위',1,'도스바기 1마리 사냥 ',3,50,NULL),(74,'눈덩이 조심 ',0,'한랭 군도','하위',1,'울크스스 1마리 사냥 ',3,50,NULL),(75,'사원 폐허를 누비는 독구룡 ',0,'사원 폐허','하위',2,'도스프로기 1마리 사냥 ',3,50,NULL),(76,'벌꿀 쟁탈전! ',0,'사원 폐허','하위',2,'아오아시라 1마리 사냥 ',3,50,NULL),(77,'밤의 사원 폐허에 정적을 ',0,'사원 폐허','하위',2,'이즈치와 오르타로스합계 20마리 토벌 ',3,50,NULL),(78,'화제의 훼방꾼 ',0,'한랭 군도','하위',2,'스쿠아길과 브나하브라합계 20마리 토벌 ',3,50,NULL),(79,'꼬리로 빙글빙글 ',0,'수몰된 숲','하위',2,'비슈텐고 1마리 사냥 ',3,50,NULL),(80,'푸케푸케 관찰 ',0,'모래 평원','하위',2,'푸케푸케 1마리 사냥 ',3,50,NULL),(81,'수몰되는 수몰된 숲 ',0,'수몰된 숲','하위',2,'로아루드로스 1마리 사냥 ',3,50,NULL),(82,'머리가 단단한~ 볼보로스 ',0,'모래 평원','하위',2,'볼보로스 1마리 사냥 ',3,50,NULL),(83,'다가오는 하얀 그림자 ',0,'한랭 군도','하위',2,'푸루푸루 1마리 사냥 ',3,50,NULL),(84,'모래 평원을 구르는 적갑수 ',0,'모래 평원','하위',2,'랑그로토라 1마리 사냥 ',3,50,NULL),(85,'뒤돌아보니 바살모스 ',0,'모래 평원','하위',2,'바살모스 1마리 사냥 ',3,50,NULL),(86,'여왕이 되는 방법 ',0,'수몰된 숲','하위',2,'리오레이아 1마리 사냥 ',3,50,NULL),(87,'집어삼키는 천하장사 ',0,'사원 폐허','하위',2,'요츠미와두 1마리 사냥 ',3,50,NULL),(88,'우리 모두 케스토돈? ',0,'모래 평원','하위',2,'케스토돈 15마리 토벌 ',3,50,NULL),(89,'가죽! 가죽! 가죽! ',0,'수몰된 숲','하위',2,'쟈그라스와 루드로스합계 20마리 토벌 ',3,50,NULL),(90,'토끼와 개구리의 싸움 ',0,'한랭 군도','하위',2,'울크스스 1마리와요츠미와두 1마리 사냥 ',3,50,NULL),(91,'수괴수와 자화룡 ',0,'수몰된 숲','하위',3,'모든 타겟 사냥 ',3,50,NULL),(92,'꿈나라로의 초대 ',0,'수몰된 숲','하위',3,'이소네미쿠니 1마리 사냥 ',3,50,NULL),(93,'빙설 파이터 ',0,'한랭 군도','하위',3,'고샤하기 1마리 사냥 ',3,50,NULL),(94,'비뢰, 땅을 박차고 ',0,'사원 폐허','하위',3,'토비카가치 1마리 사냥 ',3,50,NULL),(95,'진흙탕의 오로미도로 ',0,'모래 평원','하위',3,'오로미도로 1마리 사냥 ',3,50,NULL),(96,'용암 동굴의 망나니 ',0,'용암 동굴','하위',3,'안쟈나프 1마리 사냥 ',3,50,NULL),(97,'칠흑 같은 밤을 달리는 두 별 ',0,'사원 폐허','하위',3,'나르가쿠르가 1마리 사냥 ',3,50,NULL),(98,'포호룡에게 매료되어 ',0,'수몰된 숲','하위',3,'타마미츠네 1마리 사냥 ',3,50,NULL),(99,'왕자, 용암 동굴에 내려서다 ',0,'용암 동굴','하위',3,'리오레우스 1마리 사냥 ',3,50,NULL),(100,'물에 비친 달과 천둥 소리 ',0,'수몰된 숲','하위',3,'진오우거 1마리 사냥 ',3,50,NULL),(101,'백기사 vs 사냥꾼 ',0,'한랭 군도','하위',3,'벨리오로스 1마리 사냥 ',3,50,NULL),(102,'친구를 향한 포효 ',0,'용암 동굴','하위',3,'티가렉스 1마리 사냥 ',3,50,NULL),(103,'뿔 조심 ',0,'모래 평원','하위',3,'디아블로스 1마리 사냥 ',3,50,NULL),(104,'귀화 ',0,'용암 동굴','하위',3,'마가이마가도 1마리 사냥 ',3,50,NULL),(105,'테일 × 테일 ',0,'사원 폐허','하위',3,'비슈텐고 1마리와오로미도로 1마리 사냥 ',3,50,NULL),(106,'날뛰는 자들 ',0,'한랭 군도','하위',3,'모든 타겟 사냥 ',3,50,NULL),(107,'재앙 속에서도 아름답게 ',0,'격투장','하위',3,'모든 타겟 사냥 ',3,50,NULL),(108,'사원 폐허 탐색 투어 ',0,'사원 폐허','하위',4,'사원 폐허 탐색(상위) ',3,50,NULL),(109,'한랭 군도 탐색 투어 ',0,'한랭 군도','하위',4,'한랭 군도 탐색(상위) ',3,50,NULL),(110,'모래 평원 탐색 투어 ',0,'모래 평원','하위',4,'모래 평원 탐색(상위) ',3,50,NULL),(111,'수몰된 숲 탐색 투어 ',0,'수몰된 숲','하위',4,'수몰된 숲 탐색(상위) ',3,50,NULL),(112,'용암 동굴 탐색 투어 ',0,'용암 동굴','하위',4,'용암 동굴 탐색(상위) ',3,50,NULL),(113,'파란 주인 ',0,'사원 폐허','하위',4,'주인 아오아시라 1마리 토벌 ',3,50,NULL),(114,'휘몰아치는 회오리 바람 ',0,'사원 폐허','하위',4,'오사이즈치 1마리 사냥 ',3,50,NULL),(115,'미식 몬스터즈 ',0,'사원 폐허','하위',4,'아오아시라 1마리와쿠루루야크 1마리 사냥 ',3,50,NULL),(116,'추운 곳에서 잠들면? ',0,'한랭 군도','하위',4,'도스바기 2마리 사냥 ',3,50,NULL),(117,'산조 원무 ',0,'사원 폐허','하위',4,'아케노시름 1마리 사냥 ',3,50,NULL),(118,'한랭 군도에서의 한판 ',0,'한랭 군도','하위',4,'요츠미와두 1마리 사냥 ',3,50,NULL),(119,'귀여운 것에도 이빨은 있다 ',0,'한랭 군도','하위',4,'울크스스 1마리 사냥 ',3,50,NULL),(120,'독 비단을 두르고 ',0,'사원 폐허','하위',4,'도스프로기 1마리 사냥 ',3,50,NULL),(121,'어느 밤 푸루푸루를 사냥한다 ',0,'한랭 군도','하위',4,'푸루푸루 1마리 사냥 ',3,50,NULL),(122,'토끼 경단을 지켜라 편 ',0,'한랭 군도','하위',4,'이즈치와 바기합계 20마리 토벌 ',3,50,NULL),(123,'알 경단 쟁탈전! 편 ',0,'사원 폐허','하위',4,'쿠루루야크 2마리 사냥 ',3,50,NULL),(124,'터득하라! 한손검의 기술 ',0,'한랭 군도','하위',4,'아케노시름 1마리 포획 ',3,50,NULL),(125,'이해하라! 수렵피리의 기술 ',0,'사원 폐허','하위',4,'모든 타겟 사냥 ',3,50,NULL),(126,'변환하라! 슬래시액스의 기술 ',0,'한랭 군도','하위',4,'울크스스 1마리와푸루푸루 1마리 사냥 ',3,50,NULL),(127,'배워라! 라이트보우건의 기술 ',0,'격투장','상위',5,'도스바기 1마리와도스프로기 1마리 사냥 ',3,50,NULL),(128,'신중파와 돌격파 ',0,'사원 폐허','상위',5,'쟈그라스와 불팽고합계 20마리 토벌 ',3,50,NULL),(129,'파랗고 둥근 사랑스러운 아이 ',0,'사원 폐허','상위',5,'아오아시라 1마리 포획 ',3,50,NULL),(130,'물과 함께 살아가는 것 ',0,'수몰된 숲','상위',5,'로아루드로스 1마리 사냥 ',3,50,NULL),(131,'진흙 속에서도 일어서라 ',0,'모래 평원','상위',5,'볼보로스 1마리 사냥 ',3,50,NULL),(132,'모래 평원의 마구 조심 ',0,'모래 평원','상위',5,'랑그로토라 2마리 사냥 ',3,50,NULL),(133,'혼이 실린 감 ',0,'수몰된 숲','상위',5,'비슈텐고 1마리 사냥 ',3,50,NULL),(134,'그것은 피가 되고 독이 된다 ',0,'사원 폐허','상위',5,'푸케푸케 1마리 사냥 ',3,50,NULL),(135,'바위 위에서도 3년 ',0,'모래 평원','상위',5,'바살모스 1마리 사냥 ',3,50,NULL),(136,'여왕에게 매료되어 ',0,'사원 폐허','상위',5,'리오레이아 1마리 사냥 ',3,50,NULL),(137,'늪의 불온한 그림자 ',0,'수몰된 숲','상위',5,'쥬라토도스 1마리 사냥 ',3,50,NULL),(138,'보아라! 대검의 기술 ',0,'사원 폐허','상위',5,'비슈텐고 2마리 사냥 ',3,50,NULL),(139,'체득하라! 해머의 기술 ',0,'모래 평원','상위',5,'푸케푸케 1마리와볼보로스 1마리 사냥 ',3,50,NULL),(140,'알아내라! 랜스의 기술 ',0,'모래 평원','상위',5,'리오레이아 1마리 포획 ',3,50,NULL),(141,'하나가 돼라! 차지액스의 기술 ',0,'수몰된 숲','상위',5,'모든 타겟 사냥 ',3,50,NULL),(142,'노려라! 헤비보우건의 기술 ',0,'격투장','상위',5,'바살모스 1마리와랑그로토라 1마리 사냥 ',3,50,NULL),(143,'화제의 단단한 녀석들 ',0,'모래 평원','상위',5,'리노프로스와 케스토돈합계 20마리 토벌 ',3,50,NULL),(144,'수몰된 숲의 민폐 집단 ',0,'수몰된 숲','상위',5,'루드로스와 프로기합계 20마리 토벌 ',3,50,NULL),(145,'추운 땅을 삼키는 그림자 ',0,'한랭 군도','상위',6,'푸루푸루 1마리와요츠미와두 1마리 사냥 ',3,50,NULL),(146,'바람의 신 ',0,'사원 폐허','상위',6,'이부시마키히코 1마리 격퇴 ',3,50,NULL),(147,'강산에 번쩍, 울리는 천둥 ',0,'사원 폐허','상위',6,'진오우거 1마리 사냥 ',3,50,NULL),(148,'명계로 이끄는 노랫소리 ',0,'용암 동굴','상위',6,'이소네미쿠니 1마리 사냥 ',3,50,NULL),(149,'호박색 송곳니를 갈다 ',0,'한랭 군도','상위',6,'벨리오로스 1마리 사냥 ',3,50,NULL),(150,'머리 위를 뛰어다니는 위협 ',0,'수몰된 숲','상위',6,'토비카가치 1마리 사냥 ',3,50,NULL),(151,'만악룡의 맹추격 ',0,'용암 동굴','상위',6,'안쟈나프 1마리 사냥 ',3,50,NULL),(152,'붉은 눈동자는 어둠을 가른다 ',0,'수몰된 숲','상위',6,'나르가쿠르가 1마리 사냥 ',3,50,NULL),(153,'천상에 피는 빨간 연꽃 ',0,'용암 동굴','상위',6,'리오레우스 1마리 사냥 ',3,50,NULL),(154,'요염한 춤 ',0,'사원 폐허','상위',6,'타마미츠네 1마리 사냥 ',3,50,NULL),(155,'진흙탕 달리기 대소동! 편 ',0,'수몰된 숲','상위',6,'나르가쿠르가 1마리와쥬라토도스 1마리 사냥 ',3,50,NULL),(156,'갈고닦아라! 태도의 기술 ',0,'수몰된 숲','상위',6,'진오우거 1마리와타마미츠네 1마리 사냥 ',3,50,NULL),(157,'난무하라! 쌍검의 기술 ',0,'모래 평원','상위',6,'안쟈나프 1마리와리오레이아 1마리 사냥 ',3,50,NULL),(158,'연마하라! 건랜스의 기술 ',0,'한랭 군도','상위',6,'벨리오로스 1마리 포획 ',3,50,NULL),(159,'수련하라! 조충곤의 기술 ',0,'한랭 군도','상위',6,'이소네미쿠니 1마리와아케노시름 1마리 사냥 ',3,50,NULL),(160,'단련하라! 활의 기술 ',0,'사원 폐허','상위',6,'토비카가치 2마리 사냥 ',3,50,NULL),(161,'용암 동굴의 소탕전 ',0,'용암 동굴','상위',6,'우로코트르과 츠케히바키합계 20마리 토벌 ',3,50,NULL),(162,'영준호걸 ',0,'격투장','상위',6,'모든 타겟 사냥 ',3,50,NULL),(163,'설귀수가 찾아온다 ',0,'한랭 군도','상위',7,'고샤하기 1마리 사냥 ',3,50,NULL),(164,'귀화를 두른 것 ',0,'사원 폐허','상위',7,'마가이마가도 1마리 사냥 ',3,50,NULL),(165,'진흙탕으로의 초대장 ',0,'수몰된 숲','상위',7,'오로미도로 1마리 사냥 ',3,50,NULL),(166,'땅속을 누비는 각룡 ',0,'모래 평원','상위',7,'디아블로스 1마리 사냥 ',3,50,NULL),(167,'요란한 포효 ',0,'모래 평원','상위',7,'티가렉스 1마리 사냥 ',3,50,NULL),(168,'악귀나찰 ',0,'용암 동굴','상위',7,'라잔 1마리 사냥 ',3,50,NULL),(169,'불길 앞에서 ',0,'용암 동굴','상위',7,'야츠카다키 1마리 사냥 ',3,50,NULL),(170,'천둥의 신 ',0,'용궁성터','상위',7,'나루하타타히메 1마리 토벌 ',3,50,NULL),(171,'불 조심! 불꽃과 불덩이 편 ',0,'용암 동굴','상위',7,'리오레우스 1마리와마가이마가도 1마리 사냥 ',3,50,NULL),(172,'경단을 꿰뚫는 두 쌍의 뿔! 편 ',0,'모래 평원','상위',7,'디아블로스 2마리 사냥 ',3,50,NULL),(173,'사원 폐허의 대소동 ',0,'사원 폐허','상위',7,'오로미도로 1마리와타마미츠네 1마리 사냥 ',3,50,NULL),(174,'샘솟는 힘은 대지와도 같이 ',0,'한랭 군도','상위',7,'고샤하기 1마리와요츠미와두 1마리 사냥 ',3,50,NULL),(175,'격돌, 격렬, 격려의 싸움 ',0,'모래 평원','상위',7,'디아블로스 1마리와안쟈나프 1마리 사냥 ',3,50,NULL),(176,'무법자 조심 ',0,'수몰된 숲','상위',7,'라잔 1마리와진오우거 1마리 사냥 ',3,50,NULL),(177,'사방에서 다가오는 위협 ',0,'용암 동굴','상위',7,'야츠카다키 1마리와푸루푸루 1마리 사냥 ',3,50,NULL),(178,'질풍노도의 대무대 ',0,'격투장','상위',7,'모든 타겟 사냥 ',3,50,NULL),(179,'격투대회 01 ',0,'격투장','격투대회',1,'쿠루루야크 토벌 ',1,50,NULL),(180,'격투대회 02 ',0,'격투장','격투대회',2,'볼보로스 토벌 ',1,50,NULL),(181,'격투대회 03 ',0,'수몰된 숲','격투대회',3,'로아루드로스 1마리와나르가쿠르가 1마리 사냥 ',1,50,NULL),(182,'격투대회 04 ',0,'격투장','격투대회',6,'벨리오로스 토벌 ',1,50,NULL),(183,'격투대회 05 ',0,'격투장','격투대회',7,'라잔 토벌 ',1,50,NULL),(184,'격투대회 06',0,'격투장','격투대회',8,'랑그로토라 1마리와 바살모스 1마리그리고 바젤기우스 1마리 토벌',1,50,NULL),(185,'고대의 환영 ',0,'사원 폐허','상위',8,'오나즈치 1마리 토벌',3,50,NULL),(186,'폭풍 속에서 춤추는 그림자 ',0,'한랭 군도','상위',8,'크샬다오라 1마리 토벌',3,50,NULL),(187,'불꽃의 왕 ',0,'용암 동굴','상위',8,'테오-테스카토르 1마리 토벌',3,50,NULL),(188,'쏟아지는 폭린의 화살 ',0,'모래 평원','상위',8,'바젤기우스 1마리 사냥',3,50,NULL),(189,'폭린룡 다시 날아오르다 ',0,'사원 폐허','상위',8,'바젤기우스 1마리 사냥',3,50,NULL),(190,'폭린룡 다시 날아오르다 ',0,'한랭 군도','상위',8,'바젤기우스 1마리 사냥',3,50,NULL),(191,'폭린룡 다시 날아오르다 ',0,'모래 평원','상위',8,'바젤기우스 1마리 사냥',3,50,NULL),(192,'폭린룡 다시 날아오르다 ',0,'수몰된 숲','상위',8,'바젤기우스 1마리 사냥',3,50,NULL),(193,'폭린룡 다시 날아오르다 ',0,'용암 동굴','상위',8,'바젤기우스 1마리 사냥',3,50,NULL),(194,'우음마식',0,'사원 폐허','상위',8,'주인 아오아시라 1마리 토벌',3,50,NULL),(195,'절세가인',0,'수몰된 숲','상위',8,'주인 리오레이아 1마리 토벌',3,50,NULL),(196,'천자만홍',0,'한랭 군도','상위',8,'주인 타마미츠네 1마리 토벌',3,50,NULL),(197,'우츠시 교관의 도전장 첫 번째 ',0,'수몰된 숲','상위',8,'모든 타겟 사냥 ',3,50,NULL),(198,'우츠시 교관의 도전장 두 번째 ',0,'한랭 군도','상위',8,'모든 타겟 사냥 ',3,50,NULL),(199,'우츠시 교관의 도전장 세 번째 ',0,'사원 폐허','상위',8,'모든 타겟 사냥 ',3,50,NULL);
/*!40000 ALTER TABLE `quests` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-13  4:02:39
