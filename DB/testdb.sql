-- MySQL dump 10.13  Distrib 5.7.18, for Linux (x86_64)
--
-- Host: localhost    Database: testdb
-- ------------------------------------------------------
-- Server version	5.7.18-0ubuntu0.16.04.1

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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (26,'2014_10_12_000000_create_users_table',1),(27,'2014_10_12_100000_create_password_resets_table',1),(28,'2017_02_15_105523_create_students_table',1),(29,'2017_02_19_121021_create_teachers_table',1),(30,'2017_04_02_113817_create_questions_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `question_text` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (2,'a100001','Do you Speak English Fluently?','2017-04-02 06:45:44','2017-04-02 06:45:44'),(3,'a100002','What is your living situation?','2017-04-02 06:46:18','2017-04-02 06:46:18'),(4,'a100003','Which best describes your ethnicity?','2017-04-02 06:46:31','2017-04-02 06:46:31'),(5,'a100004','Do you have a computer with reliable internet access in your home?','2017-04-02 06:46:46','2017-04-02 06:46:46'),(6,'a100005','Do you share this computer with other members of your household?','2017-04-02 06:46:58','2017-04-02 06:46:58'),(7,'a100006','How many hours of time do you have to commit to Good University per week?','2017-04-02 06:47:12','2017-04-02 06:47:12'),(8,'a100007','What is your highest level of education?','2017-04-02 06:47:25','2017-04-02 06:47:25'),(9,'a100008','Are you willing to get more education?','2017-04-02 06:48:01','2017-04-02 06:48:01'),(10,'b100001','What is your current employment status?','2017-04-02 06:48:29','2017-04-02 06:48:29'),(11,'b100002','Are you currently looking for a job?','2017-04-02 06:49:02','2017-04-02 06:49:02'),(12,'b100003','Do you have a LinkedIn profile?','2017-04-02 06:49:15','2017-04-02 06:49:15'),(13,'b100004','Do you have a Facebook profile?','2017-04-02 06:49:36','2017-04-02 06:49:36'),(14,'b100005','Tuition Type (Admin Only - Pipe in from HubSpot)','2017-04-02 06:50:14','2017-04-02 06:50:14'),(15,'c100001','I am an artistic and creative person.','2017-04-02 06:50:35','2017-04-02 06:50:35'),(16,'c100002','I am interested in understanding how a company functions.','2017-04-02 06:50:49','2017-04-02 06:50:49'),(17,'c100003','I like to be involved in big-picture decision-making.','2017-04-02 06:51:05','2017-04-02 06:51:05'),(18,'c100004','I like helping others learn new skills.','2017-04-02 06:51:21','2017-04-02 06:51:21'),(19,'c100005','I am detail-oriented.','2017-04-02 06:51:34','2017-04-02 06:51:34'),(20,'c100006','I am a leader.','2017-04-02 06:51:49','2017-04-02 06:51:49'),(21,'c100007','I enjoy working alone.','2017-04-02 06:52:03','2017-04-02 06:52:03'),(22,'c100008','I prefer to work with a team.','2017-04-02 06:52:21','2017-04-02 06:52:21'),(23,'c100009','I like working toward a deadline.','2017-04-02 06:52:41','2017-04-02 06:52:41'),(24,'c100010','I have a passion for photography.','2017-04-02 06:53:05','2017-04-02 06:53:05'),(25,'c100011','I am interested in marketing.','2017-04-02 06:53:22','2017-04-02 06:53:22'),(26,'c100012','I am interested in web development.','2017-04-02 06:53:38','2017-04-02 06:53:38'),(27,'c100013','I enjoy video games.','2017-04-02 06:53:50','2017-04-02 06:53:50'),(28,'c100014','I am interested in computer animation.','2017-04-02 06:54:10','2017-04-02 06:54:10'),(29,'c100015','I wish I was my company’s IT expert.','2017-04-02 06:54:37','2017-04-02 06:54:37'),(30,'c100016','I like digital marketing.','2017-04-02 06:54:51','2017-04-02 06:54:51'),(31,'c100017','I like projects where design is important.','2017-04-02 06:55:06','2017-04-02 06:55:06'),(32,'c100018','I am an entrepreneur.','2017-04-02 06:55:41','2017-04-02 06:55:41'),(33,'c100019','I enjoy bookkeeping.','2017-04-02 06:55:56','2017-04-02 06:55:56'),(34,'c100020','Math is fun for me.','2017-04-02 06:56:16','2017-04-02 06:56:16'),(35,'c100021','I like working with my hands.','2017-04-02 06:56:26','2017-04-02 06:56:26'),(36,'c100022','I enjoy putting things together.','2017-04-02 06:56:50','2017-04-02 06:56:50'),(37,'c100023','I love playing with gadgets.','2017-04-02 06:57:00','2017-04-02 06:57:00'),(38,'c100024','I like planning and scheduling.','2017-04-02 06:57:10','2017-04-02 06:57:10'),(39,'c100025','I enjoy managing projects.','2017-04-02 06:57:26','2017-04-02 06:57:26'),(40,'c100026','Mixing music sounds interesting.','2017-04-02 06:57:45','2017-04-02 06:57:45'),(41,'c100027','I enjoy writing songs or lyrics.','2017-04-02 06:57:58','2017-04-02 06:57:58'),(42,'c100028','I like traveling for work.','2017-04-02 06:58:12','2017-04-02 06:58:12'),(43,'c100029','I like working from home.','2017-04-02 06:58:25','2017-04-02 06:58:25'),(44,'c100030','I\'d enjoy writing computer programs.','2017-04-02 06:58:38','2017-04-02 06:58:38'),(45,'c100031','I\'d enjoy designing software apps.','2017-04-02 06:58:50','2017-04-02 06:58:50'),(46,'d100001','Your computer is broken. How would you typically respond?','2017-04-02 06:59:13','2017-04-02 06:59:13'),(47,'d100002','IF I was working in design I would rather:','2017-04-02 06:59:28','2017-04-02 06:59:28'),(48,'d100003','IF I was in the film business I would rather:','2017-04-02 06:59:46','2017-04-02 06:59:46'),(49,'d100004','IF I was in the music business I would rather:','2017-04-02 07:00:03','2017-04-02 07:00:03'),(50,'d100005','IF I was working in photography I would rather:','2017-04-02 07:00:21','2017-04-02 07:00:21'),(51,'e100001','Describe your ideal day.','2017-04-02 07:00:42','2017-04-02 07:00:42'),(52,'e100002','Describe what is most important to you.','2017-04-02 07:01:14','2017-04-02 07:01:14'),(53,'e100003','Describe your dream job.','2017-04-02 07:01:28','2017-04-02 07:01:28'),(54,'e100004','If you weren’t worried about getting paid, what would you do with your time?','2017-04-02 07:02:03','2017-04-02 07:02:03'),(55,'e100005','What keeps you up at night?','2017-04-02 07:02:15','2017-04-02 07:02:15'),(56,'e100006','In your life, what are you most proud of?','2017-04-02 07:02:26','2017-04-02 07:02:26'),(57,'e100007','What is your current financial situation?','2017-04-02 07:02:43','2017-04-02 07:02:43'),(58,'e100008','What do you wish you knew how to do?','2017-04-02 07:02:59','2017-04-02 07:02:59'),(59,'e100009','What do you want your legacy to be?','2017-04-02 07:03:11','2017-04-02 07:03:11');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teachers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `teacher_id` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `teacher_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `teacher_bday` date NOT NULL,
  `password` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Mehedi Hasan Muaz','mehedihasan2760@gmail.com','$2y$10$nHwI36x.EIFNKfuds2nr3.SDc3Hj2Q7LS0OKQ0S3Bp3izNuWHlQ66','tSonKEWXvtRtJs4Iq0UWriD5gz0vKGIhaQOXwriuHaZYcITNuwcxNNud3stt','2017-05-12 12:03:35','2017-05-12 12:04:52');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-13 10:55:09
