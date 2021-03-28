-- MySQL dump 10.13  Distrib 8.0.23, for Linux (x86_64)
--
-- Host: localhost    Database: mhriseDB
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.18-MariaDB

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
-- Dumping data for table `monsters`
--

LOCK TABLES `monsters` WRITE;
/*!40000 ALTER TABLE `monsters` DISABLE KEYS */;
INSERT INTO `monsters` VALUES (1,'마가이마가도','Magaimagado',1,'원호룡(怨虎竜)','아룡종','그 노기에 가득 찬 무서운 얼굴과 갑옷투구처럼 위엄있는 갑각은 마치 원한으로 가득 찬 망령무사 같다... 다른 몬스터를 잡아먹으면 몸에서 솟아오르는 보라색 가스는 「귀화」라고도 불리며, 그렇지 않아도 압도적인 마가이마가도의 파괴력을 더욱 끌어올린다고 한다.'),(2,'아케노시름','Akenoshirumu',1,'산조(傘鳥)','조룡종','한 개의 다리로 서는 독특한 모습이 우산처럼 보이는 것이 특징인 조룡. 영역 의식이 강해 자신의 영역을 침범 당하면 날개를 크게 펼치거나 눈알처럼 보이는 독특한 볏을 전개하여 위협한다.'),(3,'오사이즈치','Osaizuchi',1,'겸유룡(鎌鼬竜)','조룡종','낫 형태로 발달한 꼬리로 공격을 하는 조룡. \'오사이즈치\'는 소형의 \'이즈치\'를 포함한 무리를 형성하여, 그 중에서도 정예 2마리를 데리고 다니면서 영역을 순회한다. 한 번 먹잇감을 찾으면 삼위일체의 교묘한 연계 공격을 펼친다.'),(4,'요츠미와두','Yotsumiwadou',1,'하동와(河童蛙)','양서종','뚱뚱하고 큰 몸집이 특징인 양서종. 먹는 것에 욕심이 많아 움직이는 것을 발견하면 바닥의 흙과 돌멩이까지 함께 삼켜버린다. 식사를 하면 복부가 부풀어 올라 움직임이 둔해지나, 그만큼 공격에 무게가 실려 파괴력이 높아지기 때문에 주의해야 한다.'),(5,'이소네미쿠니','Isonemikuni',1,'인어룡(人魚竜)','해룡종','달빛에 비친 모습이 여성처럼 보이는 것과, 물속을 우아하게 자유자재로 헤엄치는 모습이 마치 인어같은 몬스터. 사실은 난폭한 성질로, 세력권에 침입하는 자는 가차 없이 공격한다. 사냥감이 나타나면 목에 있는 기관에서 수면가루를 뿌리고, 혼수 상태로 만들어 공격한다.'),(6,'비슈텐고','Bishutengo',1,'천구수(天狗獣)','아수종','발달한 꼬리가 특징적인 몬스터. 잡식성이지만 특히 과일을 좋아해서, 배 주머니에 감을 저장해 두고 있다. 호기심 많고 장난을 좋아하는 면도 있으며, 사냥할 때 꼬리 등을 이용해 사냥감에 감을 내던지는 모습도 목격되고 있다.'),(7,'고샤하기','Goshahagi',1,'설귀수(雪鬼獣)','아수종',''),(8,'야츠카다키','Yatzukadaki',1,'비지주(妃蜘蛛)','협각종','온몸에 실을 두른 하얀 천과 같은 모습이 특징적이며, 「비지주」라고도 한다. 실을 사용해 헌터를 꼼짝 못 하게 만들며, 연소시킨 가스를 내뿜어 공격한다. 또한 거느리고 있는 유체 「츠케히바키」는 작지만, 야츠카다키의 이동을 서포트하거나 사냥감을 잡기도 한다. 야츠카다키와 츠케히바키의 연계 공격을 조심해야 한다.'),(9,'아오아시라','Aoashira',1,'청웅수(青熊獣)','아수종','온난습윤한 지역의 산이나 밀림에 서식하는 아수. 두 발로 서서, 아주 좋아하는 벌꿀을 채집하거나 물가에 있는 물고기를 낚는것이 알려졌다. 예리한 손톱과 두터운 갑각가진 앞다리는 이상할 정도로 발달해 있고 그 일격은 위험하다. 아름다운 파란 털을 가지는 것으로, \'청웅수\'라고 불려진다.'),(10,'로아루드로스','Roarudorosu',1,'수수(水獣)','해룡종','갈기처럼 보이는 해면질의 비늘이 특징적인 \'수수(水獣)\'의 이명을 가지는 해룡종. 이 기관이 대량의 수분을 저장, 유지해 피부 표면의 건조를 막아 주어 해룡종으로서는 비교적 장시간 동안 육상에서의 활동이 가능하다. 수컷끼리는 암컷의 획득을 위해 싸움을 반복한다. 이러한 투쟁에서 이긴 강하고 큰 수컷만이 무리의 리더로서 군림한다. 무리를 지키려는 의식이 매우 강해, 인간이 부주의하게 다가가면 습격당하는 일이 자주 일어난다. 수렵에 성공하면, 특이한 그 소재는 무기의 소재로서 많은 도움이 된다.'),(11,'도스프로기','Dosufurogi',1,'독구룡(毒狗竜)','조룡종','몸에 있는 안개 독을 뱉는 조룡종 프로기.목 주위에 있는 주머니 모양의 기관에서 독을 생성하고, 독을 뱉기 전에는 주머니를 크게 부풀린다.독은 안개 형태임에도 불구하고 대형 초식종을 약하게 하기에 충분한 독성을 지니고 있다. 무리로 행동하는 습성을 지니고 있다.'),(12,'벨리오로스','Beriorosu',1,'빙아룡(氷牙竜)','비룡종','영구동토의 세계에 군림하는 재빠른 비룡. 거대한 이빨과 예리한 가시가 특징, 날개나 꼬리에 난 스파이크형 비늘을 사용해 미끄러지기 쉬운 빙판위를 자유자재로 뛰어다닌다. 그 능력 때문에 벨리오로스의 움직임을 따라가기에는 아주 곤란하다.'),(13,'푸루푸루','Furufuru',1,'기괴룡(奇怪竜)','비룡종',''),(14,'도스바기','Dosubaggi',1,'면구룡(眠狗竜)','조룡종',''),(15,'울크스스','Urukususu',1,'백토수(白兎獣)','아수종','추운 지역의 생활에 적응한 아수. 두꺼운 피하 지방과 보온성이 높은 털을 가졌다. 초식 경향이 강한 잡식성이지만 동물을 잡아먹기도 한다. 그때는 뛰어난 청각으로 사냥감을 찾아내 얼음 위를 활강해 빠르고 조용하게 사냥한다.'),(16,'티가렉스','Tigarekkusu',1,'굉룡(轟竜)','비룡종','원시적인 풍모의 비룡. 극히 포악한 성격에 잘 발달된 사지를 이용한 돌진, 강력한 발톱과 턱의 일격 모두 엄청난 위력을 가지고 있다. 사냥감을 찾아 넓은 지역을 이동하며 빙해에까지 모습을 드러낸다고 한다. 강렬한 포효로 인해 \'굉룡\'이라는 별명을 갖게 되었다.'),(17,'타마미츠네','Mizutsune',1,'포호룡(泡狐竜)','해룡종',''),(18,'토비카가치','Tobikagachi',1,'비뢰룡(飛雷竜)','아룡종','나무 위에 서식하며 나무를 뛰어다니는 아룡종. 나무나 지면에 신체를 문지르며 이동해서 체모에 정전기를 축적하는 성질을 가진 듯하다.'),(19,'리오레이아','Rioreia',1,'자화룡(雌火竜)','비룡종','육지의 여왕으로 불리는 \'자화룡\'. 주로 지상에서 사냥하기 때문에 대지를 달리는 강한 다리와 먹잇감을 잡을 수 있는 맹독성 꼬리를 가졌다. 파트너와 짝을 이루어 함께 사냥하는 모습도 목격되는데 이때 서로 협력하는 듯한 행동을 하기도 한다.'),(20,'리오레우스','Rioreusu',1,'화룡(火竜)','비룡종','하늘의 제왕이자 두려움의 대상으로 불리는 비룡. 자화룡과 함께 둥지를 중심으로 넓은 영역을 형성해 상공에서 감시한다. 침입자가 있으면 뛰어난 비행 능력으로 급강하하여 강력한 독 발톱으로 공격한다. 불을 뿜기 때문에 화룡이라는 별명이 있다.'),(21,'푸케푸케','Pukepuke',1,'독요조(毒妖鳥)','조룡종','체내에 독액을 가진 조룡종. 펑펑호두 등의 식물을 먹어 입안이나 꼬리에 축적하는 성질이 있으며 독액이 섞인 강력한 독 브레스를 뿜는다.'),(22,'안쟈나프','Anjanafu',1,'만악룡(蛮顎竜)','수룡종','포식 대상인 초식종이 서식하는 고대수의 숲을 영역으로 하는 몬스터. 매우 호전적이기에 다른 몬스터들에게도 주저 없이 덤벼든다.'),(23,'쿠루루야크','Kururuyakku',1,'소조(掻鳥)','조룡종','발달한 앞다리로 물체를 잡는 게 특기인 조룡종. 고대수의 숲이나 개밋둑의 황야 등에서 몬스터의 알을 훔쳐가는 모습이 자주 목격되고 있다.'),(24,'쥬라토도스','Jyuratodosu',1,'이어룡(泥魚竜)','어룡종','개밋둑의 황야의 늪지에 서식하는 대형 어룡. 진흙을 이용해 사냥감을 잡거나 몸을 보호한다. 영역을 두고 볼보로스와 다툴 때도 있다.'),(25,'라잔','Rajan',1,'금사자(金獅子)','아수종','매우 공격적인 생물. 자주 목격되지 않는 이유는 엄청난 공격성 때문이다. 그 모습을 보고 무사히 살아남은 자는 극히 드물다. 늘 홀로 행동하며 그 누구와도 함께 하지 않는 고고한 존재라고 한다. 서식지 등은 전혀 알려진 것이 없다.'),(26,'디아블로스','Diaburosu',1,'각룡(角竜)','비룡종','사막의 폭군으로 두려움 받는 비룡. 영역에 대한 집착이 매우 강해 영역을 침범하는 자에게는 이상할 정도의 공격성을 보인다. 또, 자주 모래 속으로 파고 들기 때문인지 청각이 매우 발달하여 소리에 매우 민감하게 반응한다. 주식은 선인장.'),(27,'랑그로토라','Rangurotora',1,'적갑수(赤甲獣)','아수종','마그마의 열기에도 견디는 두터운 갑옷을 지녀 \'적갑수\'라고도 불리는 아수종. 신체를 둥글게 말아 작열하는 지표면 위를 구르듯이 이동한다. 갑충종을 좋아해서, 그 긴 혀를 늘려서 휘감듯이 잡아서 먹는다. 강력한 마비 성분을 지닌 타액을 뱉기도 한다고 알려져 있기 때문에, 주의가 필요하다.'),(28,'오로미도로','Oromidoro',1,'이옹룡 (泥翁竜)','해룡종','「이옹룡」은 보통 깊은 산속에 살지만, 백룡야행의 영향 때문인지 마을 근처로 내려와 헌터를 덮친다. 별명과 같이 진흙을 사용한 공격이 특기이며, 몸을 휘감아 자신을 강화한다. 또한 꼬리에서 분비되는 금색의 특수한 용해액으로 땅을 녹이고, 땅속에 숨어 사냥감을 움직이지 못하게 하여 사냥한다.'),(29,'바살모스','Basarumosu',1,'암룡(岩竜)','비룡종',''),(30,'볼보로스','Boruborosu',1,'토사룡(土沙竜)','수룡종','토사룡이라 불리는 강인한 각력을 가진 수룡의 하나로, 보통 진흙 속에 숨어있다. 전신에 묻어있는 축축한 진흙은, 더움과 직사광선을 약하게 하는 목적을 가지고 있다고 생각된다. 또 이 진흙은 적대자에게 대한 경계나 공격의 수단으로 사용되어, 몸통을 크게 흔들어 진흙을 흩뿌려 상대의 접근을 막는다'),(31,'진오우거','Jinoga',1,'뇌랑룡(雷狼竜)','아룡종','뇌광을 몸에 두른 그 모습 때문에 뇌랑룡이라 불리고 있는 아룡종. 기복이 심한 산림에서 서식하기 때문에 발톱이 날카롭고 사지가 강인하게 발달해있다. 사냥시에는 무수한 뇌광충을 모아 두르고 있는 전력을 비약적으로 높이는 것으로 알려져 있으며, 초대전상태라고 불리우는 모습으로 변화한다.'),(32,'나르가쿠르가','Narugakuruga',1,'신룡(迅竜)','비룡종','나무들이 무성한 토지에 서식하는 독특하게 진화한 비룡. 이명은 신룡(迅竜). 어둠에 몸을 숨기고, 무서울 정도로 빠른 속도로 집요하고 교활하게 먹이를 노리고, 추적한다. 싸우기 위한 무기로서 발달한 꼬리는 매우 유연하고, 파괴력이 강하다.'),(33,'오나즈치','Oonazuchi',1,'하룡(霞龍)','고룡종','목격된 횟수가 극히 적은 고룡. 그 이유가 자유자재로 모습을 감추는 능력 때문이라고 하여, \'하룡\'이라고도 불린다. 모습을 감출 때 안개 같은 입김을 뿜는 모습도 목격되었으며, 그 특이한 능력과 기발한 움직임은 비슷한 예를 찾아볼 수 없다.'),(34,'이부시마키히코','Ibuushi',1,'풍신룡(風神竜)','',''),(35,'나루하타타히메','Naruhata',1,'뇌신룡(雷神竜)','',''),(36,'브나하브라','Bunahabura',0,'','갑충종',''),(37,'오르타로스','Orutarosu',0,'','갑충종',''),(38,'가브라스','Gaburasu',0,'','사룡종',''),(39,'아이루','Airu',0,'','수인종',''),(40,'메라루','Meraru',0,'','수인종',''),(41,'쟈그라스','Jagurasu',0,'','아룡종',''),(42,'분부지나','Bunbujina',0,'','아수종',''),(43,'불팽고','Burufango',0,'','아수종',''),(44,'스쿠아길','Sukuagiru',0,'','양서종',''),(45,'델크스','Derukusu',0,'','어룡종',''),(46,'가쟈우','Gajau',0,'','어류',''),(47,'가구아','Gagua',0,'','조룡종',''),(48,'바기','Baggi',0,'','조룡종',''),(49,'이즈치','Izuchi',0,'','조룡종',''),(50,'재기','Jagii',0,'','조룡종',''),(51,'재기노스','Jagiinosu',0,'','조룡종',''),(52,'프로기','Furogi',0,'','조룡종',''),(53,'가우시카','Gaushika',0,'','초식종',''),(54,'리노프로스','Rinopurosu',0,'','초식종',''),(55,'즈와로포스','Zuwaroposu',0,'','초식종',''),(56,'포포','Popo',0,'','초식종',''),(57,'케스토돈','Kesutodon',0,'','초식종',''),(58,'켈비','Kerubi',0,'','초식종',''),(59,'루드로스','Rudorosu',0,'','해룡종',''),(60,'우로코트르','Urokotoru',0,'','해룡종',''),(61,'츠케히바키','Tsukehibaki',0,'','협각종','');
/*!40000 ALTER TABLE `monsters` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-26  6:36:37

