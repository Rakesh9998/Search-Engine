-- MySQL dump 10.13  Distrib 5.7.11, for Win32 (AMD64)
--
-- Host: localhost    Database: search
-- ------------------------------------------------------
-- Server version	5.7.11

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
-- Table structure for table `sites`
--

DROP TABLE IF EXISTS `sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sites` (
  `site_id` int(10) NOT NULL AUTO_INCREMENT,
  `site_title` varchar(100) NOT NULL,
  `site_link` varchar(100) NOT NULL,
  `site_keyword` varchar(100) NOT NULL,
  `site_desc` text NOT NULL,
  `site_image` text NOT NULL,
  PRIMARY KEY (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sites`
--

LOCK TABLES `sites` WRITE;
/*!40000 ALTER TABLE `sites` DISABLE KEYS */;
INSERT INTO `sites` VALUES (1,'Facebook - Log In or Sign Up','https://www.facebook.com/','facebook, fb, face','Create an account or log into Facebook. Connect with friends, family and other people you know. Share photos and videos, send messages and get updates.','fb.png'),(2,'Google','https://www.google.com/','google, goo, Google','Google is % an American multinational technology company specializing in Internet-related services and products that include online advertising technologies, search, cloud computing, and software.','GOOGLE.jpg'),(3,'Yahoo','https://login.yahoo.com/','yahoo, search engine, yahoo india','Yahoo! Philippines was the localized website of Yahoo! primarily catering to the Philippine market. It was launched in April 25, 2006. The Yahoo! Philippines homepage redirection to Yahoo! Singapore was scheduled on June 2, 2015.','yahoo.jpg'),(4,'edX | Free online courses from the world\'s best universities','https://www.edx.org/','edx, online learning, tutorials','EdX offers free online courses and classes. Find the latest MOOC from the world\'s best universities including MIT, Harvard, Berkeley, UT and others. Topics ...','edx.jpeg'),(12,'Udacity - Free Online Classes & Nanodegrees','https://www.udacity.com/','Udacity, online learning, tutorials','Find free online courses, make a career change, or get a new job by completing a Nanodegree program. Self paced online learning with code reviews.','udacity.png'),(6,'Gmail','https://www.gmail.com/','Google, gmail, email','Gmail is email that\'s intuitive, efficient, and useful. 15 GB of storage, less spam, and mobile access.','gmail-2014.png'),(13,'Twitter. It\'s what\'s happening.','https://twitter.com/?lang=en','twitter, twit, social','Twitter is an online social networking service that enables users to send and read short 140-character messages called \"tweets\". Registered users can read and post tweets, but those who are unregistered can only read them.','twit.jpg'),(8,'Sign In | LinkedIn','https://www.linkedin.com/uas/login','linkedin, link, linked,social','LinkedIn is a business and employment-oriented social networking service that operates via websites. ','link.png'),(9,'Quora - The best answer to any question','https://www.quora.com/','question,quora,answer, social','Quora is a question-and-answer site where questions are asked, answered, edited and organized by its community of users. Its publisher, Quora, Inc., is based in Mountain View, California.','quora.png'),(10,'er1shivam Â· GitHub','https://github.com/er1shivam','er1shivam, shivam, shiv','SHIVAM SRIVASTAVA. er1shivam. Follow. 0 Followers. 1 Starred. 1 Following. Popular repositories. 0. er1shivam/er1shivam.github.io Â· 0. er1shivam/hello-world.','shiv.png'),(11,'Shivam Srivastava (er1shivam)\'s Developer Profile | HackerEarth','https://www.hackerearth.com/@er1shivam','er1shivam, shivam, shiv','View developer profile of Shivam Srivastava (er1shivam) on HackerEarth. HackerEarth is a network of top developers across the world. Developers participate in ...','shiv.png'),(14,'Quora - The best answer to any question','https://www.quora.com/','question,quora,answer, social','Quora is a question-and-answer site where questions are asked, answered, edited and organized by its community of users. Its publisher, Quora, Inc., is based in Mountain View, California.','quora.png'),(15,'YouTube','https://www.youtube.com/','video, youtube, movie','YouTube is an American video-sharing website headquartered in San Bruno, California, United States. The service was created by three former PayPal employees in February 2005. In November 2006, it was bought by Google for US$1.65 billion.','youthube.png'),(16,'RAKESH GUPTA | HackerEarth','https://www.hackerearth.com/@rakeshg679/followers/','rakesh, gupta, rkg','LEARN; JOBS. LOGIN; SIGN UP. Code Monk Â· Notes Â· Job Listings Â· Companies. Comment permalink. rakeshg679 Â· RAKESH GUPTA. Follow. Followers (0).','natural.png'),(17,'Harvard University','www.harvard.edu/','Harvard,university,cambridge','Harvard University is a private, Ivy League research university in Cambridge, Massachusetts, established in 1636, whose history, influence, and wealth have made it one of the world\'s most prestigious universities.','harvard-university.jpg');
/*!40000 ALTER TABLE `sites` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-12 16:28:29
