-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: kakarot
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `anime`
--

DROP TABLE IF EXISTS `anime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anime` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `studio` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anime`
--

LOCK TABLES `anime` WRITE;
/*!40000 ALTER TABLE `anime` DISABLE KEYS */;
INSERT INTO `anime` VALUES (1,'Anime - Dragon Ball','si','Dragon Ball','26 de febrero de 1986','Toei Animation',NULL),(2,'Anime - Dragon Ball Z',NULL,'Dragon Ball Z','26 de abril de 1989','Toei Animation',NULL),(3,'Anime - Dragon Ball GT',NULL,'Dragon Ball GT','7 de febrero de 1996','Toei Animation',NULL),(4,'Anime - Dragon Ball Kai',NULL,'Dragon Ball Kai','5 de abril de 2009','Toei Animation',NULL),(5,'Anime - Dragon Ball Super',NULL,'Dragon Ball Super','5  de julio de 2015','Toei Animation',NULL);
/*!40000 ALTER TABLE `anime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `answer`
--

DROP TABLE IF EXISTS `answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question_id` int NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iscorrect` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_DADD4A251E27F6BF` (`question_id`),
  CONSTRAINT `FK_DADD4A251E27F6BF` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answer`
--

LOCK TABLES `answer` WRITE;
/*!40000 ALTER TABLE `answer` DISABLE KEYS */;
INSERT INTO `answer` VALUES (1,1,'1984',1),(2,1,'1983',0),(3,1,'1995',0),(4,1,'1981',0),(5,2,'Akira Toriyama',1),(6,2,'Hideo Kojima',0),(7,2,'Tetsuya Nomura',0),(8,2,'Eiichiro Oda',0),(9,3,'Toyotaro',1),(10,3,'Hiro Mashima',0),(11,3,'Masashi Kishimoto ',0),(12,3,'Shigeru Miyamoto',0),(13,4,'Ninguno',1),(14,4,'64',0),(15,4,'36',0),(16,4,'42',0),(17,5,'Weekly Shonen Jump ',1),(18,5,'Weekly Shonen Magazine',0),(19,5,'Coro Coro Comic',0),(20,5,'Marvel',0),(21,6,'En el episodio 1 de Dragon Ball Z',1),(22,6,'En el episodio 153 de Dragon Ball',0),(23,6,'En el episodio 2 de Dragon Ball Z',0),(24,6,'En el episodio 131 de Dragon Ball',0),(25,7,'El Toreno del Poder',1),(26,7,'El final de Dragon Ball Z',0),(27,7,'Dragon Ball Super: Broly',0),(28,7,'Dragon Ball Super: Super Hero',0),(29,8,'Zenosama',1),(30,8,'Goku',0),(31,8,'Trunks del Futuro',0),(32,8,'Beerus',0),(33,11,'Dragon Ball Super: Broly',1),(34,11,'Dragon Ball Z: La Batalla de los Dioses',0),(35,11,'Dragon Ball Z: La Resurrección de Freezer',0),(36,11,'Dragon Ball Z: ¡El Renacer de la Fusión!',0),(37,12,'Dragon Ball Super: Super Hero',1),(38,12,'Dragon Ball Z: Super Hero',0),(39,12,'Dragon Ball Super: Hero',0),(40,12,'Dragon Ball SuperheroDragon(NULL)(NULL)',0),(41,13,'Gogeta vs Janemba',1),(42,13,'Broly vs Gogeta',0),(43,13,'Vegetto vs Janemba',0),(44,13,'Gotenks vs Gogeta',0),(45,14,'A Trunks',1),(46,14,'A Goten',0),(47,14,'A Bulma',0),(48,14,'A Goku',0),(49,9,'A Goku',1),(50,9,'A Vegeta',0),(51,9,'A Vegetto',0),(52,9,'A Jiren',0),(53,10,'En 1996 y 2018',1),(54,10,'En 1995 y 2017',0),(55,10,'En 1994 y 2019',0),(56,10,'En 1997 y 2018',0),(57,15,'El Androide Nº13',1),(58,15,'Vegeta',0),(59,15,'El Androide Nº15',0),(60,15,'Boujack',0),(61,16,'Tarble',1),(62,16,'Turles',0),(63,16,'Pan',0),(64,16,'Raditz',0),(65,17,'Por la muerte de Gohan',1),(66,17,'Por la muerte de su familia',0),(67,17,'Por la muerte de Goku',0),(68,17,'Por la muerte de Krilin',0),(69,18,'Goku Jr.',1),(70,18,'Gohan',0),(71,18,'Vegeta Jr.',0),(72,18,'Gohan Jr.',0),(73,19,'Con One Piece, Toriko y Arale',1),(78,19,'Con Naruto y One Piece',0),(79,19,'Con Dr. Slump',0),(80,19,'Con Dr. Slump y One Piece',0),(81,20,'Solid State Scouter',1),(82,20,'Star Platinum Over Heaven',0),(83,20,'Overtaken',0),(84,20,'The Raising Fighting Spirit',0),(85,21,'Son Gohan',1),(86,21,'El Rey Demonio Piccolo',0),(87,21,'Tambourine',0),(88,21,'Freezer',0),(89,22,'Yajirobe',1),(90,22,'Krilin',0),(91,22,'Puar',0),(92,22,'Se la corta él mismo',0),(93,23,'Trunks del Futuro',1),(94,23,'Goku',0),(95,23,'Vegeta',0),(96,23,'Cell',0),(97,24,'Son Gohan Definitivo',1),(98,24,'Goku SSJ3',0),(99,24,'Majin Vegeta',0),(100,24,'Super Buu',0),(101,25,'Jiren El Gris',1),(102,25,'Jiren El Coloso',0),(103,25,'Jiren El Emperador del Universo',0),(104,25,'Jiren Puño de Fuego',0),(105,26,'Le atraviesa el pecho de un puñetazo',1),(106,26,'Le corta el cuello',0),(107,26,'De un Kamehameha',0),(108,26,'No lo mata él',0),(109,27,'A Krilin',1),(110,27,'A Yajirobe',0),(111,27,'Goku no impide a nadie matarlo',0),(112,27,'A Gohan',0),(113,28,'Regenerando sus células después de intentar destruir la Tierra',1),(114,28,'Absorbiendo a los Androides 17 y 18',0),(115,28,'Con la muerte de Krilin',0),(116,28,'Absorbiendo al Androide Nº16',0),(117,29,'Contra Freezer',1),(118,29,'Contra Goku',0),(119,29,'Se sacrifica contra Majin Buu',0),(120,29,'Contra Cell',0),(121,30,'3',1),(122,30,'4',0),(123,30,'5',0),(124,30,'6',0),(125,31,'Los Tsufur',1),(126,31,'Los Saiyan',0),(127,31,'Los Plantianos',0),(128,31,'Los Demonios del Frío',0),(129,32,'Del Planeta Sadala',1),(130,32,'Del Planeta Vegeta',0),(131,32,'Del Planeta Plant',0),(132,32,'Del Planeta Tsufur',0),(133,33,'3',1),(134,33,'4',0),(135,33,'5',0),(136,33,'2',0),(137,34,'Los Namekianos',1),(138,34,'Los Humanos',0),(139,34,'Los Saiyan',0),(140,34,'Los Tsufur',0),(141,35,'A los Saiyan',1),(142,35,'A los Namekianos',0),(143,35,'A los Tsufur',0),(144,35,'Se desconoce',0),(145,36,'El creador de las Súper Bolas de Dragón',1),(146,36,'El creador del Universo',0),(147,36,'Un namekiano',0),(148,36,'El padre de Bardock',0),(149,37,'Contra unos Saiyan malignos',1),(150,37,'Contra Beerus',0),(151,37,'Contra Freezer',0),(152,37,'Se muere de viejo',0),(153,38,'Paragus',1),(154,38,'Bardock',0),(155,38,'Vegeta III',0),(156,38,'Dr. Gero',0),(157,39,'Gine',1),(158,39,'Videl',0),(159,39,'Chi-Chi',0),(160,39,'Selypar',0),(161,40,'A Goku, a Broly, a Bardock y a Yamoshi',1),(162,40,'A Broly',0),(163,40,'A Goku y a Broly',0),(164,40,'A Broly y a Bardock',0);
/*!40000 ALTER TABLE `answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `battles`
--

DROP TABLE IF EXISTS `battles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `battles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `saga` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `battles`
--

LOCK TABLES `battles` WRITE;
/*!40000 ALTER TABLE `battles` DISABLE KEYS */;
INSERT INTO `battles` VALUES (1,'Batalla - Goku vs Vegeta','si','Goku vs Vegeta','Saga Saiyan',NULL),(2,'Batalla - Goku vs Freezer',NULL,'Goku vs Freezer','Saga de Freezer',NULL),(3,'Batalla - Gohan vs Cell',NULL,'Gohan vs Cell','Saga de Cell',NULL),(4,'Batalla - Vegetto vs Super Buu',NULL,'Vegetto vs Super Buu','Saga de Buu',NULL);
/*!40000 ALTER TABLE `battles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `breeds`
--

DROP TABLE IF EXISTS `breeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `breeds` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `origin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `breeds`
--

LOCK TABLES `breeds` WRITE;
/*!40000 ALTER TABLE `breeds` DISABLE KEYS */;
INSERT INTO `breeds` VALUES (1,'Raza - Saiyan','si','Saiyan','Planeta Sadala',NULL),(2,'Raza - Raza de Freezer',NULL,'Raza de Freezer','Desconocida',NULL),(3,'Raza - Androide',NULL,'Androide','Planeta Tierra',NULL),(4,'Raza - Namekiano',NULL,'Namekiano','Planeta Namek',NULL);
/*!40000 ALTER TABLE `breeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `characters`
--

DROP TABLE IF EXISTS `characters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `characters` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_character` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breed` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `characters`
--

LOCK TABLES `characters` WRITE;
/*!40000 ALTER TABLE `characters` DISABLE KEYS */;
INSERT INTO `characters` VALUES (1,'Personaje - Son Goku','si','Son Goku','Familia Son','Saiyan',NULL);
/*!40000 ALTER TABLE `characters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctrine_migration_versions`
--

LOCK TABLES `doctrine_migration_versions` WRITE;
/*!40000 ALTER TABLE `doctrine_migration_versions` DISABLE KEYS */;
INSERT INTO `doctrine_migration_versions` VALUES ('DoctrineMigrations\\Version20220518081914','2022-05-25 17:29:15',833),('DoctrineMigrations\\Version20220518084646','2022-05-25 17:29:16',54),('DoctrineMigrations\\Version20220519075940','2022-05-25 17:29:16',37),('DoctrineMigrations\\Version20220520103031','2022-05-25 17:29:16',31),('DoctrineMigrations\\Version20220523090501','2022-05-25 17:29:16',32),('DoctrineMigrations\\Version20220524073926','2022-05-25 17:29:16',36),('DoctrineMigrations\\Version20220601070322','2022-06-01 14:54:36',397),('DoctrineMigrations\\Version20220601080355','2022-06-01 14:54:37',40),('DoctrineMigrations\\Version20220601085356','2022-06-01 14:54:37',17),('DoctrineMigrations\\Version20220601095422','2022-06-01 14:54:37',105);
/*!40000 ALTER TABLE `doctrine_migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manga`
--

DROP TABLE IF EXISTS `manga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manga` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manga`
--

LOCK TABLES `manga` WRITE;
/*!40000 ALTER TABLE `manga` DISABLE KEYS */;
INSERT INTO `manga` VALUES (1,'Manga - Dragon Ball','si','Dragon Ball',NULL,NULL,'dbmanga.jpg'),(2,'Manga - Dragon Ball Super','si','Dragon Ball Super',NULL,NULL,'dbsmanga.jpeg');
/*!40000 ALTER TABLE `manga` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messenger_messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messenger_messages`
--

LOCK TABLES `messenger_messages` WRITE;
/*!40000 ALTER TABLE `messenger_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messenger_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `studio` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'Película - Dragon Ball Z: La Batalla de los Dioses','si','Dragon Ball Z: La Batalla de los Dioses','30 de marzo de 2013','Toei Animation',NULL),(2,'Película - Dragon Ball Z: La Resurrección de \'F\'',NULL,'Dragon Ball Z: La Resurrección de \'F\'','18 de abril de 2015','Toei Animation',NULL),(3,'Película - Dragon Ball Super: Broly',NULL,'Dragon Ball Super: Broly','14 de diciembre de 2018','Toei Animation',NULL);
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quiz_id` int NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_B6F7494E853CD175` (`quiz_id`),
  CONSTRAINT `FK_B6F7494E853CD175` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (1,1,'¿En qué año se publicó el primer tomo de Dragon Ball?'),(2,1,'¿Quién es el creador del Manga de Dragon Ball?'),(3,1,'¿Quién es la persona que dibuja en el nuevo manga de Dragon Ball Super?'),(4,1,'¿Cuántos volúmenes tiene el manga de Dragon Ball GT?'),(5,1,'¿En qué revista se publica Dragon Ball?'),(6,2,'¿En qué episodio conocemos al hijo de Goku, Gohan?'),(7,2,'¿Qué acontecimientos transcurren antes?'),(8,2,'¿Quién mata definitivamente a Zamasu, a diferencia del manga, en el Anime?'),(9,2,'¿A quién se enfrenta Kefla, a diferencia del manga, en el Anime?'),(10,2,'¿En qué año se emitieron los últimos episodios de Dragon Ball Z y Super en Japón?'),(11,3,'¿Cuál ha sido la película que más dinero ha recaudado de Dragon Ball?'),(12,3,'¿Cómo se llama la nueva película de 2022 de Dragon Ball?'),(13,3,'¿Qué pelea transcurre en el Infierno en la película de \"¡El Renacer de la Fusión!\"?'),(14,3,'¿A quién le da Tapion su espada?'),(15,3,'¿Quién le da un puñetazo en las partes nobles a Goku?'),(16,4,'¿Cómo se llama el hermano de Vegeta?'),(17,4,'¿Cómo se transforma en Super Saiyan Trunks del futuro?'),(18,4,'¿Cómo se llama el tataranieto del Pan en el especial de \"100 Años Después\"?'),(19,4,'¿Con qué animes hace Dragon Ball un crossover?'),(20,4,'¿Cómo se llama el tema de Bardock?'),(21,5,'¿Quién es la primera víctima a la que mata Goku?'),(22,5,'¿Quién le corta la cola a Vegeta?'),(23,5,'¿Quién mata a Freezer por primera vez?'),(24,5,'¿Quién es el personaje único (no fusiones) que tiene más nivel de poder hasta Dragon Ball Z?'),(25,5,'¿Cuál es el apodo de Jiren?'),(26,6,'¿De qué manera mata Goku al Rey Demonio Piccolo?'),(27,6,'¿A quién impide Goku matar a Vegeta?'),(28,6,'¿Cómo se transforma Cell en su última forma?'),(29,6,'¿Contra quién muere Vegeta por primera vez?'),(30,6,'¿Cuántas veces ha muerto Krilin (presente) de manera canónica?'),(31,7,'¿Cómo se llama la raza nativa del Planeta Vegeta?'),(32,7,'¿De qué planeta provienen los Saiyan?'),(33,7,'¿Cuántos personajes de la raza de Freezer se conocen de manera canónica?'),(34,7,'¿Qué raza es la creadora de las Bolas de Dragón?'),(35,7,'¿A qué raza pertenece Yamoshi?'),(36,8,'¿Quién es Zalama?'),(37,8,'¿Cómo muere Yamoshi?'),(38,8,'¿Quién es el padre de Broly?'),(39,8,'¿Cómo se llama la madre de Goku?'),(40,8,'¿A qué personaje se ha denominado como el Super Saiyan Legendario (canon y no canon)?');
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz`
--

DROP TABLE IF EXISTS `quiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quiz` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz`
--

LOCK TABLES `quiz` WRITE;
/*!40000 ALTER TABLE `quiz` DISABLE KEYS */;
INSERT INTO `quiz` VALUES (1,'Manga','Activo',''),(2,'Anime','Activo',''),(3,'Películas','Activo',''),(4,'Especiales/OVAs','Activo',''),(5,'Sagas','Activo',''),(6,'Batallas','Activo',''),(7,'Razas','Activo',''),(8,'Personajes','Activo','');
/*!40000 ALTER TABLE `quiz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reset_password_request`
--

DROP TABLE IF EXISTS `reset_password_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reset_password_request` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `selector` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hashed_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requested_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `expires_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_7CE748AA76ED395` (`user_id`),
  CONSTRAINT `FK_7CE748AA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reset_password_request`
--

LOCK TABLES `reset_password_request` WRITE;
/*!40000 ALTER TABLE `reset_password_request` DISABLE KEYS */;
INSERT INTO `reset_password_request` VALUES (1,1,'elAUdq3wNPqK0fA5DslG','jlzH8jSeQHVRH+PCTg/Qki923gwIHT58maPI1lXjU9E=','2022-05-31 19:16:53','2022-05-31 20:16:53');
/*!40000 ALTER TABLE `reset_password_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reward`
--

DROP TABLE IF EXISTS `reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reward` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quiz_id` int NOT NULL,
  `reward` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_4ED17253853CD175` (`quiz_id`),
  CONSTRAINT `FK_4ED17253853CD175` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reward`
--

LOCK TABLES `reward` WRITE;
/*!40000 ALTER TABLE `reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sagas`
--

DROP TABLE IF EXISTS `sagas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sagas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `episodes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sagas`
--

LOCK TABLES `sagas` WRITE;
/*!40000 ALTER TABLE `sagas` DISABLE KEYS */;
INSERT INTO `sagas` VALUES (1,'Saga - Saga Saiyan','si','Saga Saiyan','36',NULL),(2,'Saga - Saga de Freezer',NULL,'Saga de Freezer','71',NULL),(3,'Saga - Saga de Cell',NULL,'Saga de Cell','76',NULL),(4,'Saga - Saga de Buu',NULL,'Saga de Buu','86',NULL);
/*!40000 ALTER TABLE `sagas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specials`
--

DROP TABLE IF EXISTS `specials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `specials` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `studio` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specials`
--

LOCK TABLES `specials` WRITE;
/*!40000 ALTER TABLE `specials` DISABLE KEYS */;
INSERT INTO `specials` VALUES (1,'Especial - Bardock El Padre de Goku','si','Bardock El Padre de Goku','17 de octubre de 1990','Toei Animation',NULL),(2,'Especial - Un Futuro Diferente: Gohan y Trunks',NULL,'Un Futuro Diferente: Gohan y Trunks','24 de febrero de 1993','Toei Animation',NULL),(3,'Especial - El Episodio de Bardock',NULL,'El Episodio de Bardock','21 de junio de 2011','Toei Animation',NULL),(4,'OVA - ¡Buenas! ¡Son Goku y sus Amigos Regresan!',NULL,'¡Buenas! ¡Son Goku y sus Amigos Regresan!','21 de septiembre de 2008','Toei Animation',NULL),(5,'Crossover - Toriko x One Piece x Dragon Ball',NULL,'Toriko x One Piece x Dragon Ball','7 de abril de 2013','Toei Animation',NULL);
/*!40000 ALTER TABLE `specials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_verified` tinyint(1) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deactivated` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'javier2@pk.com','[\"ROLE_ADMIN\"]','$2y$13$F2oJm0D/P.PEaXeA33gRrOKePMGDfQJxEiOUu0Vh55Zd/G4C4XvFW',0,'javi','warty-final-ubuntu-resized-62979f3cbb7a6.png',0,'2022-05-31 17:05:58','2022-06-01 19:17:48');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_quiz`
--

DROP TABLE IF EXISTS `user_quiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_quiz` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `quiz_id` int NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_DE93B65BA76ED395` (`user_id`),
  KEY `IDX_DE93B65B853CD175` (`quiz_id`),
  CONSTRAINT `FK_DE93B65B853CD175` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`id`),
  CONSTRAINT `FK_DE93B65BA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_quiz`
--

LOCK TABLES `user_quiz` WRITE;
/*!40000 ALTER TABLE `user_quiz` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_quiz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_response`
--

DROP TABLE IF EXISTS `user_response`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_response` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_quiz_id` int NOT NULL,
  `question_id` int NOT NULL,
  `answer_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_DEF6EFFBDD31CF7F` (`user_quiz_id`),
  KEY `IDX_DEF6EFFB1E27F6BF` (`question_id`),
  KEY `IDX_DEF6EFFBAA334807` (`answer_id`),
  CONSTRAINT `FK_DEF6EFFB1E27F6BF` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`),
  CONSTRAINT `FK_DEF6EFFBAA334807` FOREIGN KEY (`answer_id`) REFERENCES `answer` (`id`),
  CONSTRAINT `FK_DEF6EFFBDD31CF7F` FOREIGN KEY (`user_quiz_id`) REFERENCES `user_quiz` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_response`
--

LOCK TABLES `user_response` WRITE;
/*!40000 ALTER TABLE `user_response` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_response` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_reward`
--

DROP TABLE IF EXISTS `user_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_reward` (
  `id` int NOT NULL AUTO_INCREMENT,
  `reward_id` int NOT NULL,
  `user_id` int NOT NULL,
  `acquired` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_2B83696EE466ACA1` (`reward_id`),
  KEY `IDX_2B83696EA76ED395` (`user_id`),
  CONSTRAINT `FK_2B83696EA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK_2B83696EE466ACA1` FOREIGN KEY (`reward_id`) REFERENCES `reward` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_reward`
--

LOCK TABLES `user_reward` WRITE;
/*!40000 ALTER TABLE `user_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_reward` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-02  0:01:23
