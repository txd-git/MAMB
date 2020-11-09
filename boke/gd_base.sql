-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: typeidea_db
-- ------------------------------------------------------
-- Server version	5.7.31-0ubuntu0.18.04.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add 分类',1,'add_category'),(2,'Can change 分类',1,'change_category'),(3,'Can delete 分类',1,'delete_category'),(4,'Can view 分类',1,'view_category'),(5,'Can add 文章',2,'add_post'),(6,'Can change 文章',2,'change_post'),(7,'Can delete 文章',2,'delete_post'),(8,'Can view 文章',2,'view_post'),(9,'Can add 标签',3,'add_tag'),(10,'Can change 标签',3,'change_tag'),(11,'Can delete 标签',3,'delete_tag'),(12,'Can view 标签',3,'view_tag'),(13,'Can add 友链',4,'add_link'),(14,'Can change 友链',4,'change_link'),(15,'Can delete 友链',4,'delete_link'),(16,'Can view 友链',4,'view_link'),(17,'Can add 侧边栏',5,'add_sidebar'),(18,'Can change 侧边栏',5,'change_sidebar'),(19,'Can delete 侧边栏',5,'delete_sidebar'),(20,'Can view 侧边栏',5,'view_sidebar'),(21,'Can add 评论',6,'add_comment'),(22,'Can change 评论',6,'change_comment'),(23,'Can delete 评论',6,'delete_comment'),(24,'Can view 评论',6,'view_comment'),(25,'Can add captcha store',7,'add_captchastore'),(26,'Can change captcha store',7,'change_captchastore'),(27,'Can delete captcha store',7,'delete_captchastore'),(28,'Can view captcha store',7,'view_captchastore'),(29,'Can add Bookmark',8,'add_bookmark'),(30,'Can change Bookmark',8,'change_bookmark'),(31,'Can delete Bookmark',8,'delete_bookmark'),(32,'Can view Bookmark',8,'view_bookmark'),(33,'Can add User Setting',9,'add_usersettings'),(34,'Can change User Setting',9,'change_usersettings'),(35,'Can delete User Setting',9,'delete_usersettings'),(36,'Can view User Setting',9,'view_usersettings'),(37,'Can add User Widget',10,'add_userwidget'),(38,'Can change User Widget',10,'change_userwidget'),(39,'Can delete User Widget',10,'delete_userwidget'),(40,'Can view User Widget',10,'view_userwidget'),(41,'Can add log entry',11,'add_log'),(42,'Can change log entry',11,'change_log'),(43,'Can delete log entry',11,'delete_log'),(44,'Can view log entry',11,'view_log'),(45,'Can add log entry',12,'add_logentry'),(46,'Can change log entry',12,'change_logentry'),(47,'Can delete log entry',12,'delete_logentry'),(48,'Can view log entry',12,'view_logentry'),(49,'Can add permission',13,'add_permission'),(50,'Can change permission',13,'change_permission'),(51,'Can delete permission',13,'delete_permission'),(52,'Can view permission',13,'view_permission'),(53,'Can add group',14,'add_group'),(54,'Can change group',14,'change_group'),(55,'Can delete group',14,'delete_group'),(56,'Can view group',14,'view_group'),(57,'Can add user',15,'add_user'),(58,'Can change user',15,'change_user'),(59,'Can delete user',15,'delete_user'),(60,'Can view user',15,'view_user'),(61,'Can add content type',16,'add_contenttype'),(62,'Can change content type',16,'change_contenttype'),(63,'Can delete content type',16,'delete_contenttype'),(64,'Can view content type',16,'view_contenttype'),(65,'Can add session',17,'add_session'),(66,'Can change session',17,'change_session'),(67,'Can delete session',17,'delete_session'),(68,'Can view session',17,'view_session');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$100000$OqUhpUmgEWDT$GsUM3GD0/wr3lUtHds64TYISOwDO9TSLA6fH20t2dzE=','2020-09-21 11:12:58.540904',1,'tarena','','','923644827@qq.com',1,1,'2020-09-17 10:29:19.525324'),(2,'pbkdf2_sha256$100000$N5Gz2k0bZ0OG$ylMS3XlyWxMtdiDnFCQSkIx1AmpwdRRU95wHKxaF3LQ=',NULL,0,'wang','','','',0,1,'2020-09-18 03:50:14.713561');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_category`
--

DROP TABLE IF EXISTS `blog_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `status` int(10) unsigned NOT NULL,
  `is_nav` tinyint(1) NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `owner_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_category_owner_id_96951406_fk_auth_user_id` (`owner_id`),
  CONSTRAINT `blog_category_owner_id_96951406_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_category`
--

LOCK TABLES `blog_category` WRITE;
/*!40000 ALTER TABLE `blog_category` DISABLE KEYS */;
INSERT INTO `blog_category` VALUES (1,'python',1,1,'2020-09-17 11:25:24.377969',1),(2,'西部联赛',1,1,'2020-09-21 00:52:53.206415',1);
/*!40000 ALTER TABLE `blog_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_post`
--

DROP TABLE IF EXISTS `blog_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `desc` varchar(1024) NOT NULL,
  `content` longtext NOT NULL,
  `status` int(10) unsigned NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `category_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `pv` int(10) unsigned NOT NULL,
  `uv` int(10) unsigned NOT NULL,
  `content_html` longtext NOT NULL,
  `is_md` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_post_category_id_c326dbf8_fk_blog_category_id` (`category_id`),
  KEY `blog_post_owner_id_ff7c9277_fk_auth_user_id` (`owner_id`),
  CONSTRAINT `blog_post_category_id_c326dbf8_fk_blog_category_id` FOREIGN KEY (`category_id`) REFERENCES `blog_category` (`id`),
  CONSTRAINT `blog_post_owner_id_ff7c9277_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_post`
--

LOCK TABLES `blog_post` WRITE;
/*!40000 ALTER TABLE `blog_post` DISABLE KEYS */;
INSERT INTO `blog_post` VALUES (1,'数据结构与算法-Day01','数据结构与算法-Day01','# **数据结构与算法-Day01**\r\n\r\n## **算法概述**\r\n\r\n- **算法-前序**\r\n\r\n  ```python\r\n  【1】Everybody!全场动作必须跟我整齐划一，来，我们一起来做一道题\r\n      若n1+n2+n3=1000,且n1^2+n2^2=n3^2(n1,n2,n3为自然数),求出所有n1、n2、n3可能的组合\r\n  \r\n  【2】解题思路\r\n      n1 = 0\r\n      n2 = 0\r\n      n3 = 0\r\n      判断n1+n2+n3是否等于1000,之后变n3=1,n3=2,n3=3,... 然后再变n2\r\n  \r\n  【3】代码实现\r\n      import time\r\n  \r\n      start_time = time.time()\r\n      for n1 in range(0,1001):\r\n          for n2 in range(0,1001):\r\n              for n3 in range(0,1001):\r\n                  if n1 + n2 + n3 == 1000 and n1**2 + n2**2 == n3**2:\r\n                      print(\'[%d,%d,%d]\' % (n1,n2,n3))\r\n      end_time = time.time()\r\n      print(\'执行时间:%.2f\' % (end_time-start_time))\r\n      \r\n  【4】算法概念\r\n      4.1) 解决问题的方法，是指解题方案的准确而完整的描述，是一系列解决问题的清晰指令\r\n      4.2) 算法代表着用系统的方法描述解决问题的策略机制\r\n  ```\r\n\r\n\r\n## **时间复杂度概述**\r\n\r\n- **时间复杂度 - 前序**\r\n\r\n  ```python\r\n  【1】各位，一万年太久，只争朝夕，来提升一下上题的效率吧！！！\r\n      for n1 in range(0,1001):\r\n          for n2 in range(0,1001):\r\n              n3 = 1000 - n1 - n2\r\n              if n1**2 + n2**2 == n3**2:\r\n                  print(\'[%d,%d,%d]\'%(n1,n2,n3))\r\n  \r\n  【2】总结与思考 : 解决同一个问题有多种算法,但是效率有区别,那么如何衡量呢？\r\n      2.1) 执行时间反应算法效率 - 绝对靠谱吗？\r\n           不是绝对靠谱: 因机器配置有高有低,不能冒然绝对去做衡量\r\n    \r\n      2.2) 那如何衡量更靠谱？？？\r\n           运算数量 - 执行步骤的数量\r\n         \r\n  【4】时间复杂度概念\r\n      4.1) 同一个算法，由于机器配置差异,每台机器执行的总时间不同,但是执行基本运算的数量大体相同，所以把算法执行步骤的数量称为时间复杂度\r\n  ```\r\n\r\n- **时间复杂度 - 大O表示法前序**\r\n\r\n  ```python\r\n  ################################################################\r\n  【1】计算此算法的时间复杂度\r\n      for n1 in range(0,1001):\r\n          for n2 in range(0,1001):\r\n              for n3 in range(0,1001):\r\n                  if n1 + n2 + n3 == 1000 and n1**2 + n2**2 == n3**2:\r\n                      print(\'[%d,%d,%d]\' % (n1,n2,n3))\r\n  ################################################################\r\n  【2】计算步骤                \r\n      T = 1000 * 1000 * 1000 * 2\r\n      T = n * n * n * 2\r\n      T(n) = n ** 3 * 2  即时间复杂度为: T(n)=n**3 * 2\r\n  \r\n  【3】时间复杂度T(n)的 大O表示法\r\n      3.1) 函数1: T(n)=k * n**3 + c\r\n      3.2) 函数2: g(n)=n**3\r\n      3.3) 特点: 在趋向无穷的极限意义下，函数T(n)的增长速度受到函数g(n)的约束，也为函数T(n)与函数g(n)的特征相似，则称 g(n) 是 T(n) 的渐近函数，大O表示法则使用渐近函数来表示\r\n          即: O(g(n)) \r\n          即: O(n^3)\r\n          即: 上述时间复杂度为 O(n^3)\r\n  \r\n  【4】时间复杂度总结           \r\n      4.1) 假设存在函数g，使得算法A处理规模为n的问题所用时间为T(n)=O(g(n))，则称O(g(n))为算法A的渐近时间复杂度，简称时间复杂度，记为T(n)\r\n      4.2） 对算法进行特别具体细致分析虽然好，但实践中实际价值有限。对我们来说算法的时间性质和空间性质最重要的是数量级和趋势，这些是分析算法效率的主要部分。所以忽略系数，忽略常数，比如5*n^2 和 100*n^2属于一个量级，时间复杂度为O(n^2)\r\n  ```\r\n\r\n- **时间复杂度分类**\r\n\r\n  ```python\r\n  【1】最优时间复杂度 - 最少需要多少个步骤\r\n  【2】最坏时间复杂度 - 最多需要多少个步骤\r\n  【3】平均时间复杂度 - 平均需要多少个步骤\r\n  \r\n  我们平时所说的时间复杂度,指的是最坏时间复杂度\r\n  ```\r\n\r\n## **时间复杂度 - 计算规则**\r\n\r\n- **计算原则**\r\n\r\n  ```python\r\n  【1】基本操作,只有常系数，认为其时间复杂度为O(1)\r\n      顺序 - 基本步骤之间的累加\r\n      print(\'abc\') -> O(1)\r\n      print(\'abc\') -> O(1)\r\n  \r\n  【2】循环: 时间复杂度按乘法进行计算\r\n      \r\n  【3】分支: 时间复杂度取最大值(哪个分支执行次数多算哪个)\r\n  \r\n  【4】练习:请计算如下代码的时间复杂度\r\n      for n1 in range(0,1001):\r\n          for n2 in range(0,1001):\r\n              n3 = 1000 - n1 - n2\r\n              if n1**2 + n2**2 == n3**2:\r\n                  print(\'[%d,%d,%d]\'%(n1,n2,n3))\r\n              \r\n  T(n) = n * n * (1+1+max(1,0))\r\n  T(n) = n**2 * 3\r\n  T(n) = n**2\r\n  T(n) = O(n**2)\r\n  用大O表示法表示为 Tn = O(n^2)\r\n  ```\r\n\r\n- **常见时间复杂度**\r\n\r\n  | 执行次数           | 时间复杂度 | 阶     |\r\n  | ------------------ | ---------- | ------ |\r\n  | 20（20个基本步骤） | O(1)       | 常数阶 |\r\n  | 8n+6               | O(n)       | 线性阶 |\r\n  | 2n^2 + 4n + 2      | O(n^2)     | 平方阶 |\r\n  | 8logn + 16         | O(logn)    | 对数阶 |\r\n  | 4n + 3nlogn + 22   | O(nlog(n)) | nlog阶 |\r\n  | 2n^3 + 2n^2 + 4    | O(n^3)     | 立方阶 |\r\n  | 2 ^ n              | O(2^n)     | 指数阶 |\r\n\r\n- **O(1)**\r\n\r\n  ```python\r\n  【1】O(1)\r\n      print(\'全场动作必须跟我整齐划一\')\r\n  \r\n  【2】O(1)\r\n      print(\'左边跟我一起画个龙\')\r\n      print(\'在你右边画一道彩虹\')\r\n      print(\'走起\')\r\n      print(\'左边跟我一起画彩虹\')\r\n      print(\'在你右边再画一条龙\')\r\n  ```\r\n\r\n- **O(n)**\r\n\r\n  ```python\r\n  for i in range(n):\r\n    print(\'在胸口比划一个郭富城\')\r\n  ```\r\n\r\n- **O(n^2)**\r\n\r\n  ```python\r\n  【1】O(n^2)\r\n      for i in range(n):\r\n          for j in range(n):\r\n              print(\'左边右边摇摇头\')\r\n      \r\n  【2】O(n^2)\r\n      for i in range(n):\r\n          print(\'两根手指就像两个窜天猴\')\r\n          for j in range(n):\r\n              print(\'指向闪耀的灯球\')\r\n  ```\r\n  \r\n- **O(n^3)**\r\n\r\n  ```python\r\n  for i in range(n):\r\n      for j in range(n):\r\n          for k in range(n):\r\n              print(\'走你\')\r\n  ```\r\n\r\n- **O(logn)**\r\n\r\n  ```python\r\n  n = 64\r\n  while n > 1:\r\n      print(n)\r\n      n = n // 2\r\n  \r\n  【解释】\r\n  2的6次方 等于 64，log264 = 6，所以循环减半的时间复杂度为O(log2n)，即O(logn)\r\n  如果是循环减半的过程，时间复杂度为O(logn)或O(log2n)\r\n  ```\r\n\r\n- **O(nlogn)**\r\n\r\n  ```python\r\n  n = 64\r\n  while n > 1:\r\n    	for i in range(n):\r\n      	print(\'哪里有彩虹告诉我\')\r\n      n = n // 2\r\n  ```\r\n\r\n- **常见时间复杂度排序**\r\n\r\n  ```python\r\n  O(1)<O(logn)<O(n)<O(nlogn)<O(n2)<O(n2logn)<O(n3)\r\n  ```\r\n\r\n- **练习: 写出如下的时间复杂度**\r\n\r\n  ```python\r\n  O(5)          --> O(1)\r\n  O(2n+1)       --> O(n)\r\n  O(n**2+n+1)   --> O(n**2)\r\n  O(3n**3+1)    --> O(n**3)\r\n  ```\r\n\r\n- **终极总结两句话**\r\n\r\n  ```python\r\n  【1】时间复杂度是多少： T(n) = O(???)\r\n  【2】去掉系数、去掉常数、去掉低次幂，最终得到时间复杂度\r\n  ```\r\n\r\n## **数据结构概述**\r\n\r\n- **数据结构描述**\r\n\r\n  ```python\r\n  【1】概述\r\n      1.1) 在工作中，我们为了解决问题，需要将数据保存下来，然后根据数据存储方式设计算法进行处理，根据数据的存储方式我们使用不同的算法处理，而我们现在需要考虑算法解决问题的效率问题，所以需要考虑数据究竟如何保存，这就是数据结构\r\n    \r\n  【2】概念\r\n      2.1) 数据是一个抽象的概念，将其进行分类后得到程序设计语言中的基本类型，如：list、tuple等。数据元素之间不是独立的，存在特定的关系，这些关系便是结构。数据结构指数据对象中数据元素之间的关系\r\n      2.2) Python提供了很多现成的数据结构类型，如列表、元组、字典等，无须我们自己去定义，而Python没有定义的，就需要我们自己去定义实现这些数据的组织方式，称为Python扩展数据结构，如：栈、队列等\r\n  \r\n  【3】为什么学习数据结构\r\n     在真正的项目开发中，大部分时间都是从数据库取数据 -> 数据操作和结构化 -> 返回给前端，在数据操作过程中需要合理地抽象，组织、处理数据，如果选用了错误的数据结构，就会造成代码运行低效\r\n  ```\r\n  \r\n- **数据结构分类**\r\n\r\n  ```python\r\n  【1】线性结构 : n个数据元素的有序集合\r\n      1.2) 顺序表 : 将数据结构中各元素按照其逻辑顺序存放于存储器一片连续的存储空间中\r\n      1.3) 链表   : 将数据结构中各元素分布到存储器的不同点，用记录下一个结点位置的方式建立它们之间的联系\r\n      1.4) 栈 : 后进先出\r\n      1.5) 队列 : 先进先出\r\n      \r\n  【2】非线性结构\r\n      2.1) 树形结构\r\n      2.2) 图状结构\r\n  ```\r\n\r\n- **数据结构+算法总结**\r\n\r\n  ```python\r\n  【1】数据结构只是静态描述了数据元素之间的关系\r\n  【2】高效的程序需要在数据结构的基础上设计和选择算法\r\n  【3】程序 = 数据结构 + 算法\r\n  【4】算法是为了解决实际问题而设计的，数据结构是算法需要处理的问题载体\r\n  ```\r\n\r\n## **抽象数据类型**\r\n\r\n- **概念**\r\n\r\n  ```python\r\n  【1】定义\r\n      抽象数据类型是指一个数学模型以及定义在此数学模型上的一组操作，及把数据类型和数据类型上的运算捆在一起进行封装。引入抽象数据类型的目的是把数据类型的表示和数据类型上的运算的实现与这些数据类型和运算在程序中的引用隔开，使他们相互独立\r\n  \r\n  【2】描述\r\n      把原有的基本数据和这个数据所支持的操作放到一起，形成一个整体\r\n  \r\n  【3】最常用的数据运算\r\n      3.1) 插入\r\n      3.2) 删除\r\n      3.3) 修改\r\n      3.4) 查找\r\n      3.5) 排序\r\n  ```\r\n\r\n## **线性表 - 顺序表**\r\n\r\n\r\n- **顺序表的基本形式**\r\n\r\n  ```python\r\n  【1】特点 : 内存连续\r\n  【2】分类\r\n      2.1) 基本形式: 数据元素本身连续存储,每个元素所占存储单元大小固定相同\r\n      2.2) 元素外置: 数据元素不连续存储，地址单元连续存储\r\n  ```\r\n\r\n## **线性表 - 链表**\r\n\r\n- **定义**\r\n\r\n  ```python\r\n  【1】特点:\r\n      1.1) 内存不连续的，而是一个个串起来的，需要每个链表的节点保存一个指向下一个节点的指针\r\n    \r\n  【2】和顺序表的对比\r\n      2.1) 顺序表的构建需要预先知道数据大小来申请连续的存储空间，而在进行扩充时又需要进行数据的搬迁，使用起来不灵活，而链表结构可以充分利用计算机的内存空间，实现灵活的内存动态管理\r\n  ```\r\n\r\n- **示例 - 强化理解**\r\n\r\n  ```python\r\n  将线性表L=(a0,a1,……,an-1)中各元素分布在存储器的不同存储块，称为结点，每个结点（尾节点除外）中都持有一个指向下一个节点的引用，这样所得到的存储结构为链表结构\r\n  ```\r\n\r\n  ![链表结构](./img/data1.png)\r\n\r\n- **单链表 - 代码实现**\r\n\r\n  ```python\r\n  \"\"\"\r\n  创建单链表的数据结构：\r\n  1、节点类 - 数据区、链接区\r\n  2、单链表类(数学模型): 增加、删除... ...\r\n  \"\"\"\r\n  \r\n  class Node:\r\n      \"\"\"节点类\"\"\"\r\n      def __init__(self, value):\r\n          self.value = value\r\n          self.next = None\r\n  \r\n  class SingleLinkList:\r\n      \"\"\"单链表类\"\"\"\r\n      def __init__(self, node=None):\r\n          \"\"\"创建链表时: s=SingleLinkList()表示空链表,s=SingleLinkList(Node(100)) 表示有1个节点的单链表\"\"\"\r\n          self.head = node\r\n  \r\n      def is_empty(self):\r\n          \"\"\"判断链表是否为空\"\"\"\r\n          return self.head == None\r\n  \r\n      def lengh(self):\r\n          \"\"\"获取链表长度\"\"\"\r\n          # 游标：从头节点开始,一直往后移动,移动一次,+1\r\n          current = self.head\r\n          count = 0\r\n          while current is not None:\r\n              count += 1\r\n              current = current.next\r\n  \r\n          return count\r\n  \r\n      def travel(self):\r\n          \"\"\"遍历整个链表\"\"\"\r\n          current = self.head\r\n          while current is not None:\r\n              print(current.value,end=\" \")\r\n              current = current.next\r\n          # 因为上面是end=\" \",所以此处打印一个换行\r\n          print()\r\n  \r\n      def add(self, item):\r\n          \"\"\"链表头部添加1个节点\"\"\"\r\n          node = Node(item)\r\n          # 1、把新添加的节点指针指向原来头节点\r\n          node.next = self.head\r\n          # 2、添加的节点设置为新的头\r\n          self.head = node\r\n  \r\n      def append(self, item):\r\n          \"\"\"链表尾部添加1个节点,考虑空链表特殊情况\"\"\"\r\n          node = Node(item)\r\n          if self.is_empty():\r\n              self.head = node\r\n          else:\r\n              current = self.head\r\n              while current.next is not None:\r\n                  current = current.next\r\n              # 循环结束后,current指向尾节点\r\n              current.next = node\r\n              node.next = None\r\n  \r\n      def search(self, item):\r\n          \"\"\"查看在链表中是否存在\"\"\"\r\n          current = self.head\r\n          while current != None:\r\n              if current.value == item:\r\n                  return True\r\n              else:\r\n                  current = current.next\r\n  \r\n          return False\r\n  \r\n      def insert(self, pos, item):\r\n          \"\"\"在指定索引添加一个节点,索引值从0开始\"\"\"\r\n          if pos < 0:\r\n              self.add(item)\r\n          elif pos > self.lengh() - 1:\r\n              self.append(item)\r\n          else:\r\n              pre = self.head\r\n              count = 0\r\n              while count < (pos - 1):\r\n                  count += 1\r\n                  pre = pre.next\r\n  \r\n              # 循环结束后,pos指向(pos-1)位置\r\n              node = Node(item)\r\n              node.next = pre.next\r\n              pre.next = node\r\n  \r\n  if __name__ == \'__main__\':\r\n      s = SingleLinkList()\r\n      # 终端1：True\r\n      print(s.is_empty())\r\n      # 链表：Node(100) -> Node(200) -> Node(300)\r\n      s.add(200)\r\n      s.add(100)\r\n      s.append(300)\r\n      # 终端2：3\r\n      print(s.lengh())\r\n      # 终端3：100 200 300\r\n      s.travel()\r\n      # 100 666 200 300\r\n      s.insert(1, 666)\r\n      # 终端4: 100 666 200 300\r\n      s.travel()\r\n      # 终端5: True\r\n      print(s.search(666))\r\n  ```\r\n  \r\n\r\n### **链表练习一**\r\n\r\n- **题目**\r\n\r\n  ```python\r\n  【1】题目描述\r\n      输入一个链表，按链表值从尾到头的顺序返回一个 ArrayList\r\n   \r\n  【2】试题解析\r\n      将链表的每个值取出来然后存放到一个列表 ArrayList 中\r\n    	解题思路1: 将链表中从头节点开始依次取出节点元素，append到array_list中，并进行最终反转\r\n      解题思路2: 将链表中从头节点开始依次取出节点元素，insert到array_list中的第1个位置\r\n  ```\r\n\r\n- **代码实现**\r\n\r\n  ```python\r\n  \"\"\"\r\n  输入一个链表，按链表值从尾到头的顺序返回一个 ArrayList\r\n  \"\"\"\r\n  \r\n  class Node:\r\n      \"\"\"链表节点类\"\"\"\r\n      def __init__(self,x):\r\n          self.val = x\r\n          self.next = None\r\n  \r\n  class Solution:\r\n      # 返回从尾部到头部的序列，node为头节点\r\n      def get_list_from_tail_to_head(self,node):\r\n          array_list = []\r\n          while node:\r\n              array_list.insert(0,node.val)\r\n              node = node.next\r\n  \r\n          return array_list\r\n  \r\n  if __name__ == \'__main__\':\r\n  	s = Solution()\r\n  	head = Node(100)\r\n  	head.next = Node(200)\r\n  	head.next.next = Node(300)\r\n  	print(s.get_list_from_tail_to_head(head))\r\n  ```\r\n\r\n### **链表练习二**\r\n\r\n- **题目**\r\n\r\n  ```python\r\n  【1】题目描述\r\n      输入一个链表，反转链表后，输出新链表的表头\r\n    \r\n  【2】试题解析\r\n      可以将链表的每一个节点取出来，插入到新的链表表头，同时要保存原链表的下一个节点\r\n  ```\r\n\r\n- **代码实现**\r\n\r\n  ```python\r\n  \"\"\"\r\n  输入一个链表，反转链表后，输出新链表的表头\r\n  思路:\r\n      1、创建2个游标,代表要进行反转操作的节点 和 上一个节点\r\n      2、代码逻辑:\r\n         当前节点指针指向上一个节点\r\n         两个游标同时往后移动\r\n         结束标准: 当要操作的节点为None时,结束! 此时pre代表的是新链表的头节点\r\n  \"\"\"\r\n  class Node:\r\n      def __init__(self, value):\r\n          self.value = value\r\n          self.next = None\r\n  \r\n  class Solution:\r\n      def reverse_link_list(self, head):\r\n          # 1、空链表情况\r\n          if head == None:\r\n              return\r\n          # 2、非空链表情况\r\n          pre = None\r\n          cur = head\r\n          while cur:\r\n              # 记录下一个要操作反转的节点\r\n              next_node = cur.next\r\n              # 反转节点cur,并移动两个游标\r\n              cur.next = pre\r\n              pre = cur\r\n              cur = next_node\r\n  \r\n          return pre.value\r\n  \r\n  if __name__ == \'__main__\':\r\n      s = Solution()\r\n      # 1、空链表情况\r\n      head = None\r\n      print(s.reverse_link_list(head))\r\n      # 2、只有1个节点情况\r\n      head = Node(100)\r\n      print(s.reverse_link_list(head))\r\n      # 3、有多个节点情况\r\n      head = Node(100)\r\n      head.next = Node(200)\r\n      head.next.next = Node(300)\r\n      print(s.reverse_link_list(head))\r\n  ```\r\n\r\n## **线性表 - 栈（LIFO)**\r\n\r\n- **定义**\r\n\r\n  ```python\r\n  栈是限制在一端进行插入操作和删除操作的线性表（俗称堆栈），允许进行操作的一端称为\"栈顶\"，另一固定端称为\"栈底\"，当栈中没有元素时称为\"空栈\"\r\n  ```\r\n\r\n- **特点**\r\n\r\n  ```python\r\n  【1】栈只能在一端进行数据操作\r\n  【2】栈模型具有后进先出的规律（LIFO）\r\n  ```\r\n\r\n![栈](./img/data2.png)\r\n\r\n- **栈的代码实现**\r\n\r\n  ```python\r\n  # 栈的操作有入栈（压栈），出栈（弹栈），判断栈是否为空等操作\r\n  \"\"\"\r\n  sstack.py  栈模型的顺序存储\r\n  重点代码\r\n  \r\n  思路:\r\n  1. 利用列表完成顺序存储,但是列表功能多,不符合栈模型特点\r\n  2. 使用类将列表封装,提供符合栈特点的接口方法\r\n  \"\"\"\r\n  \r\n  # 顺序栈模型\r\n  class Stack(object):\r\n      def __init__(self):\r\n          # 开辟一个顺序存储的模型空间\r\n          # 列表的尾部表示栈顶\r\n          self.elems = []\r\n  \r\n      def is_empty(self):\r\n          \"\"\"判断栈是否为空\"\"\"\r\n          return self.elems == []\r\n  \r\n      def push(self,val):\r\n          \"\"\"入栈\"\"\"\r\n          self.elems.append(val)\r\n  \r\n      def pop(self):\r\n          \"\"\"出栈\"\"\"\r\n          if self.is_empty():\r\n              raise StackError(\"pop from empty stack\")\r\n          # 弹出一个值并返回\r\n          return self.elems.pop()\r\n  \r\n      def top(self):\r\n          \"\"\"查看栈顶元素\"\"\"\r\n          if self.is_empty():\r\n              raise StackError(\"Stack is empty\")\r\n          return self.elems[0]\r\n  \r\n  \r\n  if __name__ == \'__main__\':\r\n      st = Stack()\r\n      st.push(1)\r\n      st.push(3)\r\n      st.push(5)\r\n      print(st.top())\r\n      while not st.is_empty():\r\n          print(st.pop())\r\n  ```\r\n\r\n## **线性表 - 队列（FIFO）**\r\n\r\n- **定义**\r\n\r\n  ```python\r\n  队列是限制在两端进行插入操作和删除操作的线性表，允许进行存入操作的一端称为\"队尾\"，允许进行删除操作的一端称为\"队头\"\r\n  ```\r\n\r\n- **特点**\r\n\r\n  ```python\r\n  1) 队列只能在队头和队尾进行数据操作\r\n  2) 队列模型具有先进先出规律（FIFO）\r\n  ```\r\n\r\n![队列](./img/data3.png)\r\n\r\n- **队列的代码实现** \r\n\r\n  ```python\r\n  # 队列的操作有入队，出队，判断队列的空满等操作\r\n  \"\"\"\r\n  思路分析:\r\n  1. 基于列表完成数据的存储\r\n  2. 通过封装功能完成队列的基本行为\r\n  3. 无论那边做对头/队尾 都会在操作中有内存移动\r\n  \"\"\"\r\n  \r\n  # 队列操作\r\n  class SQueue:\r\n      def __init__(self):\r\n          self.elems = []\r\n  \r\n      # 判断队列是否为空\r\n      def is_empty(self):\r\n          return self.elems == []\r\n  \r\n      # 入队\r\n      def enqueue(self,val):\r\n          self.elems.append(val)\r\n  \r\n      # 出队\r\n      def dequeue(self):\r\n          if not self._elems:\r\n              raise Exception(\"Queue is empty\")\r\n          return self.elems.pop(0) # 弹出第一个数据\r\n  \r\n  \r\n  if __name__ == \'__main__\':\r\n      sq = SQueue()\r\n      sq.enqueue(10)\r\n      sq.enqueue(20)\r\n      sq.enqueue(30)\r\n      while not sq.is_empty():\r\n          print(sq.dequeue())\r\n  ```\r\n\r\n  ## **今日作业**\r\n\r\n  ```python\r\n    【1】手写单链表\r\n  【2】输入一个链表，输出该链表中倒数第 k 个节点\r\n  【3】输入两个单调递增的链表，输出两个链表合成后的链表，当然我们需要合成后的链表满足单调不减规则\r\n  【4】使用链式存储方式实现栈\r\n  【5】使用链式存储方式实现队列\r\n  ```',1,'2020-09-18 03:18:56.369445',1,1,9,4,'<h1><strong>数据结构与算法-Day01</strong></h1>\n<h2><strong>算法概述</strong></h2>\n<ul>\n<li><p><strong>算法-前序</strong></p>\n<pre><code class=\"lang-python\">【1】Everybody!全场动作必须跟我整齐划一，来，我们一起来做一道题\n    若n1+n2+n3=1000,且n1^2+n2^2=n3^2(n1,n2,n3为自然数),求出所有n1、n2、n3可能的组合\n\n【2】解题思路\n    n1 = 0\n    n2 = 0\n    n3 = 0\n    判断n1+n2+n3是否等于1000,之后变n3=1,n3=2,n3=3,... 然后再变n2\n\n【3】代码实现\n    import time\n\n    start_time = time.time()\n    for n1 in range(0,1001):\n        for n2 in range(0,1001):\n            for n3 in range(0,1001):\n                if n1 + n2 + n3 == 1000 and n1**2 + n2**2 == n3**2:\n                    print(&#39;[%d,%d,%d]&#39; % (n1,n2,n3))\n    end_time = time.time()\n    print(&#39;执行时间:%.2f&#39; % (end_time-start_time))\n\n【4】算法概念\n    4.1) 解决问题的方法，是指解题方案的准确而完整的描述，是一系列解决问题的清晰指令\n    4.2) 算法代表着用系统的方法描述解决问题的策略机制\n</code></pre>\n</li>\n</ul>\n<h2><strong>时间复杂度概述</strong></h2>\n<ul>\n<li><p><strong>时间复杂度 - 前序</strong></p>\n<pre><code class=\"lang-python\">【1】各位，一万年太久，只争朝夕，来提升一下上题的效率吧！！！\n    for n1 in range(0,1001):\n        for n2 in range(0,1001):\n            n3 = 1000 - n1 - n2\n            if n1**2 + n2**2 == n3**2:\n                print(&#39;[%d,%d,%d]&#39;%(n1,n2,n3))\n\n【2】总结与思考 : 解决同一个问题有多种算法,但是效率有区别,那么如何衡量呢？\n    2.1) 执行时间反应算法效率 - 绝对靠谱吗？\n         不是绝对靠谱: 因机器配置有高有低,不能冒然绝对去做衡量\n\n    2.2) 那如何衡量更靠谱？？？\n         运算数量 - 执行步骤的数量\n\n【4】时间复杂度概念\n    4.1) 同一个算法，由于机器配置差异,每台机器执行的总时间不同,但是执行基本运算的数量大体相同，所以把算法执行步骤的数量称为时间复杂度\n</code></pre>\n</li>\n<li><p><strong>时间复杂度 - 大O表示法前序</strong></p>\n<pre><code class=\"lang-python\">################################################################\n【1】计算此算法的时间复杂度\n    for n1 in range(0,1001):\n        for n2 in range(0,1001):\n            for n3 in range(0,1001):\n                if n1 + n2 + n3 == 1000 and n1**2 + n2**2 == n3**2:\n                    print(&#39;[%d,%d,%d]&#39; % (n1,n2,n3))\n################################################################\n【2】计算步骤                \n    T = 1000 * 1000 * 1000 * 2\n    T = n * n * n * 2\n    T(n) = n ** 3 * 2  即时间复杂度为: T(n)=n**3 * 2\n\n【3】时间复杂度T(n)的 大O表示法\n    3.1) 函数1: T(n)=k * n**3 + c\n    3.2) 函数2: g(n)=n**3\n    3.3) 特点: 在趋向无穷的极限意义下，函数T(n)的增长速度受到函数g(n)的约束，也为函数T(n)与函数g(n)的特征相似，则称 g(n) 是 T(n) 的渐近函数，大O表示法则使用渐近函数来表示\n        即: O(g(n)) \n        即: O(n^3)\n        即: 上述时间复杂度为 O(n^3)\n\n【4】时间复杂度总结           \n    4.1) 假设存在函数g，使得算法A处理规模为n的问题所用时间为T(n)=O(g(n))，则称O(g(n))为算法A的渐近时间复杂度，简称时间复杂度，记为T(n)\n    4.2） 对算法进行特别具体细致分析虽然好，但实践中实际价值有限。对我们来说算法的时间性质和空间性质最重要的是数量级和趋势，这些是分析算法效率的主要部分。所以忽略系数，忽略常数，比如5*n^2 和 100*n^2属于一个量级，时间复杂度为O(n^2)\n</code></pre>\n</li>\n<li><p><strong>时间复杂度分类</strong></p>\n<pre><code class=\"lang-python\">【1】最优时间复杂度 - 最少需要多少个步骤\n【2】最坏时间复杂度 - 最多需要多少个步骤\n【3】平均时间复杂度 - 平均需要多少个步骤\n\n我们平时所说的时间复杂度,指的是最坏时间复杂度\n</code></pre>\n</li>\n</ul>\n<h2><strong>时间复杂度 - 计算规则</strong></h2>\n<ul>\n<li><p><strong>计算原则</strong></p>\n<pre><code class=\"lang-python\">【1】基本操作,只有常系数，认为其时间复杂度为O(1)\n    顺序 - 基本步骤之间的累加\n    print(&#39;abc&#39;) -&gt; O(1)\n    print(&#39;abc&#39;) -&gt; O(1)\n\n【2】循环: 时间复杂度按乘法进行计算\n\n【3】分支: 时间复杂度取最大值(哪个分支执行次数多算哪个)\n\n【4】练习:请计算如下代码的时间复杂度\n    for n1 in range(0,1001):\n        for n2 in range(0,1001):\n            n3 = 1000 - n1 - n2\n            if n1**2 + n2**2 == n3**2:\n                print(&#39;[%d,%d,%d]&#39;%(n1,n2,n3))\n\nT(n) = n * n * (1+1+max(1,0))\nT(n) = n**2 * 3\nT(n) = n**2\nT(n) = O(n**2)\n用大O表示法表示为 Tn = O(n^2)\n</code></pre>\n</li>\n<li><p><strong>常见时间复杂度</strong></p>\n<p>| 执行次数           | 时间复杂度 | 阶     |\n| ------------------ | ---------- | ------ |\n| 20（20个基本步骤） | O(1)       | 常数阶 |\n| 8n+6               | O(n)       | 线性阶 |\n| 2n^2 + 4n + 2      | O(n^2)     | 平方阶 |\n| 8logn + 16         | O(logn)    | 对数阶 |\n| 4n + 3nlogn + 22   | O(nlog(n)) | nlog阶 |\n| 2n^3 + 2n^2 + 4    | O(n^3)     | 立方阶 |\n| 2 ^ n              | O(2^n)     | 指数阶 |</p>\n</li>\n<li><p><strong>O(1)</strong></p>\n<pre><code class=\"lang-python\">【1】O(1)\n    print(&#39;全场动作必须跟我整齐划一&#39;)\n\n【2】O(1)\n    print(&#39;左边跟我一起画个龙&#39;)\n    print(&#39;在你右边画一道彩虹&#39;)\n    print(&#39;走起&#39;)\n    print(&#39;左边跟我一起画彩虹&#39;)\n    print(&#39;在你右边再画一条龙&#39;)\n</code></pre>\n</li>\n<li><p><strong>O(n)</strong></p>\n<pre><code class=\"lang-python\">for i in range(n):\n  print(&#39;在胸口比划一个郭富城&#39;)\n</code></pre>\n</li>\n<li><p><strong>O(n^2)</strong></p>\n<pre><code class=\"lang-python\">【1】O(n^2)\n    for i in range(n):\n        for j in range(n):\n            print(&#39;左边右边摇摇头&#39;)\n\n【2】O(n^2)\n    for i in range(n):\n        print(&#39;两根手指就像两个窜天猴&#39;)\n        for j in range(n):\n            print(&#39;指向闪耀的灯球&#39;)\n</code></pre>\n</li>\n<li><p><strong>O(n^3)</strong></p>\n<pre><code class=\"lang-python\">for i in range(n):\n    for j in range(n):\n        for k in range(n):\n            print(&#39;走你&#39;)\n</code></pre>\n</li>\n<li><p><strong>O(logn)</strong></p>\n<pre><code class=\"lang-python\">n = 64\nwhile n &gt; 1:\n    print(n)\n    n = n // 2\n\n【解释】\n2的6次方 等于 64，log264 = 6，所以循环减半的时间复杂度为O(log2n)，即O(logn)\n如果是循环减半的过程，时间复杂度为O(logn)或O(log2n)\n</code></pre>\n</li>\n<li><p><strong>O(nlogn)</strong></p>\n<pre><code class=\"lang-python\">n = 64\nwhile n &gt; 1:\n      for i in range(n):\n      print(&#39;哪里有彩虹告诉我&#39;)\n    n = n // 2\n</code></pre>\n</li>\n<li><p><strong>常见时间复杂度排序</strong></p>\n<pre><code class=\"lang-python\">O(1)&lt;O(logn)&lt;O(n)&lt;O(nlogn)&lt;O(n2)&lt;O(n2logn)&lt;O(n3)\n</code></pre>\n</li>\n<li><p><strong>练习: 写出如下的时间复杂度</strong></p>\n<pre><code class=\"lang-python\">O(5)          --&gt; O(1)\nO(2n+1)       --&gt; O(n)\nO(n**2+n+1)   --&gt; O(n**2)\nO(3n**3+1)    --&gt; O(n**3)\n</code></pre>\n</li>\n<li><p><strong>终极总结两句话</strong></p>\n<pre><code class=\"lang-python\">【1】时间复杂度是多少： T(n) = O(???)\n【2】去掉系数、去掉常数、去掉低次幂，最终得到时间复杂度\n</code></pre>\n</li>\n</ul>\n<h2><strong>数据结构概述</strong></h2>\n<ul>\n<li><p><strong>数据结构描述</strong></p>\n<pre><code class=\"lang-python\">【1】概述\n    1.1) 在工作中，我们为了解决问题，需要将数据保存下来，然后根据数据存储方式设计算法进行处理，根据数据的存储方式我们使用不同的算法处理，而我们现在需要考虑算法解决问题的效率问题，所以需要考虑数据究竟如何保存，这就是数据结构\n\n【2】概念\n    2.1) 数据是一个抽象的概念，将其进行分类后得到程序设计语言中的基本类型，如：list、tuple等。数据元素之间不是独立的，存在特定的关系，这些关系便是结构。数据结构指数据对象中数据元素之间的关系\n    2.2) Python提供了很多现成的数据结构类型，如列表、元组、字典等，无须我们自己去定义，而Python没有定义的，就需要我们自己去定义实现这些数据的组织方式，称为Python扩展数据结构，如：栈、队列等\n\n【3】为什么学习数据结构\n   在真正的项目开发中，大部分时间都是从数据库取数据 -&gt; 数据操作和结构化 -&gt; 返回给前端，在数据操作过程中需要合理地抽象，组织、处理数据，如果选用了错误的数据结构，就会造成代码运行低效\n</code></pre>\n</li>\n<li><p><strong>数据结构分类</strong></p>\n<pre><code class=\"lang-python\">【1】线性结构 : n个数据元素的有序集合\n    1.2) 顺序表 : 将数据结构中各元素按照其逻辑顺序存放于存储器一片连续的存储空间中\n    1.3) 链表   : 将数据结构中各元素分布到存储器的不同点，用记录下一个结点位置的方式建立它们之间的联系\n    1.4) 栈 : 后进先出\n    1.5) 队列 : 先进先出\n\n【2】非线性结构\n    2.1) 树形结构\n    2.2) 图状结构\n</code></pre>\n</li>\n<li><p><strong>数据结构+算法总结</strong></p>\n<pre><code class=\"lang-python\">【1】数据结构只是静态描述了数据元素之间的关系\n【2】高效的程序需要在数据结构的基础上设计和选择算法\n【3】程序 = 数据结构 + 算法\n【4】算法是为了解决实际问题而设计的，数据结构是算法需要处理的问题载体\n</code></pre>\n</li>\n</ul>\n<h2><strong>抽象数据类型</strong></h2>\n<ul>\n<li><p><strong>概念</strong></p>\n<pre><code class=\"lang-python\">【1】定义\n    抽象数据类型是指一个数学模型以及定义在此数学模型上的一组操作，及把数据类型和数据类型上的运算捆在一起进行封装。引入抽象数据类型的目的是把数据类型的表示和数据类型上的运算的实现与这些数据类型和运算在程序中的引用隔开，使他们相互独立\n\n【2】描述\n    把原有的基本数据和这个数据所支持的操作放到一起，形成一个整体\n\n【3】最常用的数据运算\n    3.1) 插入\n    3.2) 删除\n    3.3) 修改\n    3.4) 查找\n    3.5) 排序\n</code></pre>\n</li>\n</ul>\n<h2><strong>线性表 - 顺序表</strong></h2>\n<ul>\n<li><p><strong>顺序表的基本形式</strong></p>\n<pre><code class=\"lang-python\">【1】特点 : 内存连续\n【2】分类\n    2.1) 基本形式: 数据元素本身连续存储,每个元素所占存储单元大小固定相同\n    2.2) 元素外置: 数据元素不连续存储，地址单元连续存储\n</code></pre>\n</li>\n</ul>\n<h2><strong>线性表 - 链表</strong></h2>\n<ul>\n<li><p><strong>定义</strong></p>\n<pre><code class=\"lang-python\">【1】特点:\n    1.1) 内存不连续的，而是一个个串起来的，需要每个链表的节点保存一个指向下一个节点的指针\n\n【2】和顺序表的对比\n    2.1) 顺序表的构建需要预先知道数据大小来申请连续的存储空间，而在进行扩充时又需要进行数据的搬迁，使用起来不灵活，而链表结构可以充分利用计算机的内存空间，实现灵活的内存动态管理\n</code></pre>\n</li>\n<li><p><strong>示例 - 强化理解</strong></p>\n<pre><code class=\"lang-python\">将线性表L=(a0,a1,……,an-1)中各元素分布在存储器的不同存储块，称为结点，每个结点（尾节点除外）中都持有一个指向下一个节点的引用，这样所得到的存储结构为链表结构\n</code></pre>\n<p><img src=\"./img/data1.png\" alt=\"链表结构\"></p>\n</li>\n<li><p><strong>单链表 - 代码实现</strong></p>\n<pre><code class=\"lang-python\">&quot;&quot;&quot;\n创建单链表的数据结构：\n1、节点类 - 数据区、链接区\n2、单链表类(数学模型): 增加、删除... ...\n&quot;&quot;&quot;\n\nclass Node:\n    &quot;&quot;&quot;节点类&quot;&quot;&quot;\n    def __init__(self, value):\n        self.value = value\n        self.next = None\n\nclass SingleLinkList:\n    &quot;&quot;&quot;单链表类&quot;&quot;&quot;\n    def __init__(self, node=None):\n        &quot;&quot;&quot;创建链表时: s=SingleLinkList()表示空链表,s=SingleLinkList(Node(100)) 表示有1个节点的单链表&quot;&quot;&quot;\n        self.head = node\n\n    def is_empty(self):\n        &quot;&quot;&quot;判断链表是否为空&quot;&quot;&quot;\n        return self.head == None\n\n    def lengh(self):\n        &quot;&quot;&quot;获取链表长度&quot;&quot;&quot;\n        # 游标：从头节点开始,一直往后移动,移动一次,+1\n        current = self.head\n        count = 0\n        while current is not None:\n            count += 1\n            current = current.next\n\n        return count\n\n    def travel(self):\n        &quot;&quot;&quot;遍历整个链表&quot;&quot;&quot;\n        current = self.head\n        while current is not None:\n            print(current.value,end=&quot; &quot;)\n            current = current.next\n        # 因为上面是end=&quot; &quot;,所以此处打印一个换行\n        print()\n\n    def add(self, item):\n        &quot;&quot;&quot;链表头部添加1个节点&quot;&quot;&quot;\n        node = Node(item)\n        # 1、把新添加的节点指针指向原来头节点\n        node.next = self.head\n        # 2、添加的节点设置为新的头\n        self.head = node\n\n    def append(self, item):\n        &quot;&quot;&quot;链表尾部添加1个节点,考虑空链表特殊情况&quot;&quot;&quot;\n        node = Node(item)\n        if self.is_empty():\n            self.head = node\n        else:\n            current = self.head\n            while current.next is not None:\n                current = current.next\n            # 循环结束后,current指向尾节点\n            current.next = node\n            node.next = None\n\n    def search(self, item):\n        &quot;&quot;&quot;查看在链表中是否存在&quot;&quot;&quot;\n        current = self.head\n        while current != None:\n            if current.value == item:\n                return True\n            else:\n                current = current.next\n\n        return False\n\n    def insert(self, pos, item):\n        &quot;&quot;&quot;在指定索引添加一个节点,索引值从0开始&quot;&quot;&quot;\n        if pos &lt; 0:\n            self.add(item)\n        elif pos &gt; self.lengh() - 1:\n            self.append(item)\n        else:\n            pre = self.head\n            count = 0\n            while count &lt; (pos - 1):\n                count += 1\n                pre = pre.next\n\n            # 循环结束后,pos指向(pos-1)位置\n            node = Node(item)\n            node.next = pre.next\n            pre.next = node\n\nif __name__ == &#39;__main__&#39;:\n    s = SingleLinkList()\n    # 终端1：True\n    print(s.is_empty())\n    # 链表：Node(100) -&gt; Node(200) -&gt; Node(300)\n    s.add(200)\n    s.add(100)\n    s.append(300)\n    # 终端2：3\n    print(s.lengh())\n    # 终端3：100 200 300\n    s.travel()\n    # 100 666 200 300\n    s.insert(1, 666)\n    # 终端4: 100 666 200 300\n    s.travel()\n    # 终端5: True\n    print(s.search(666))\n</code></pre>\n</li>\n</ul>\n<h3><strong>链表练习一</strong></h3>\n<ul>\n<li><p><strong>题目</strong></p>\n<pre><code class=\"lang-python\">【1】题目描述\n    输入一个链表，按链表值从尾到头的顺序返回一个 ArrayList\n\n【2】试题解析\n    将链表的每个值取出来然后存放到一个列表 ArrayList 中\n      解题思路1: 将链表中从头节点开始依次取出节点元素，append到array_list中，并进行最终反转\n    解题思路2: 将链表中从头节点开始依次取出节点元素，insert到array_list中的第1个位置\n</code></pre>\n</li>\n<li><p><strong>代码实现</strong></p>\n<pre><code class=\"lang-python\">&quot;&quot;&quot;\n输入一个链表，按链表值从尾到头的顺序返回一个 ArrayList\n&quot;&quot;&quot;\n\nclass Node:\n    &quot;&quot;&quot;链表节点类&quot;&quot;&quot;\n    def __init__(self,x):\n        self.val = x\n        self.next = None\n\nclass Solution:\n    # 返回从尾部到头部的序列，node为头节点\n    def get_list_from_tail_to_head(self,node):\n        array_list = []\n        while node:\n            array_list.insert(0,node.val)\n            node = node.next\n\n        return array_list\n\nif __name__ == &#39;__main__&#39;:\n  s = Solution()\n  head = Node(100)\n  head.next = Node(200)\n  head.next.next = Node(300)\n  print(s.get_list_from_tail_to_head(head))\n</code></pre>\n</li>\n</ul>\n<h3><strong>链表练习二</strong></h3>\n<ul>\n<li><p><strong>题目</strong></p>\n<pre><code class=\"lang-python\">【1】题目描述\n    输入一个链表，反转链表后，输出新链表的表头\n\n【2】试题解析\n    可以将链表的每一个节点取出来，插入到新的链表表头，同时要保存原链表的下一个节点\n</code></pre>\n</li>\n<li><p><strong>代码实现</strong></p>\n<pre><code class=\"lang-python\">&quot;&quot;&quot;\n输入一个链表，反转链表后，输出新链表的表头\n思路:\n    1、创建2个游标,代表要进行反转操作的节点 和 上一个节点\n    2、代码逻辑:\n       当前节点指针指向上一个节点\n       两个游标同时往后移动\n       结束标准: 当要操作的节点为None时,结束! 此时pre代表的是新链表的头节点\n&quot;&quot;&quot;\nclass Node:\n    def __init__(self, value):\n        self.value = value\n        self.next = None\n\nclass Solution:\n    def reverse_link_list(self, head):\n        # 1、空链表情况\n        if head == None:\n            return\n        # 2、非空链表情况\n        pre = None\n        cur = head\n        while cur:\n            # 记录下一个要操作反转的节点\n            next_node = cur.next\n            # 反转节点cur,并移动两个游标\n            cur.next = pre\n            pre = cur\n            cur = next_node\n\n        return pre.value\n\nif __name__ == &#39;__main__&#39;:\n    s = Solution()\n    # 1、空链表情况\n    head = None\n    print(s.reverse_link_list(head))\n    # 2、只有1个节点情况\n    head = Node(100)\n    print(s.reverse_link_list(head))\n    # 3、有多个节点情况\n    head = Node(100)\n    head.next = Node(200)\n    head.next.next = Node(300)\n    print(s.reverse_link_list(head))\n</code></pre>\n</li>\n</ul>\n<h2><strong>线性表 - 栈（LIFO)</strong></h2>\n<ul>\n<li><p><strong>定义</strong></p>\n<pre><code class=\"lang-python\">栈是限制在一端进行插入操作和删除操作的线性表（俗称堆栈），允许进行操作的一端称为&quot;栈顶&quot;，另一固定端称为&quot;栈底&quot;，当栈中没有元素时称为&quot;空栈&quot;\n</code></pre>\n</li>\n<li><p><strong>特点</strong></p>\n<pre><code class=\"lang-python\">【1】栈只能在一端进行数据操作\n【2】栈模型具有后进先出的规律（LIFO）\n</code></pre>\n</li>\n</ul>\n<p><img src=\"./img/data2.png\" alt=\"栈\"></p>\n<ul>\n<li><p><strong>栈的代码实现</strong></p>\n<p>```python\n# 栈的操作有入栈（压栈），出栈（弹栈），判断栈是否为空等操作\n\"\"\"\nsstack.py  栈模型的顺序存储\n重点代码</p>\n<p>思路:</p>\n<ol>\n<li>利用列表完成顺序存储,但是列表功能多,不符合栈模型特点</li>\n<li>使用类将列表封装,提供符合栈特点的接口方法\n\"\"\"</li>\n</ol>\n<p># 顺序栈模型\nclass Stack(object):</p>\n<pre><code>def __init__(self):\n    # 开辟一个顺序存储的模型空间\n    # 列表的尾部表示栈顶\n    self.elems = []\n\ndef is_empty(self):\n    \"\"\"判断栈是否为空\"\"\"\n    return self.elems == []\n\ndef push(self,val):\n    \"\"\"入栈\"\"\"\n    self.elems.append(val)\n\ndef pop(self):\n    \"\"\"出栈\"\"\"\n    if self.is_empty():\n        raise StackError(\"pop from empty stack\")\n    # 弹出一个值并返回\n    return self.elems.pop()\n\ndef top(self):\n    \"\"\"查看栈顶元素\"\"\"\n    if self.is_empty():\n        raise StackError(\"Stack is empty\")\n    return self.elems[0]\n</code></pre>\n</li>\n</ul>\n<p>if <strong>name</strong> == \'<strong>main</strong>\':\n      st = Stack()\n      st.push(1)\n      st.push(3)\n      st.push(5)\n      print(st.top())\n      while not st.is_empty():\n          print(st.pop())</p>\n<pre><code>\n## **线性表 - 队列（FIFO）**\n\n- **定义**\n\n  ```python\n  队列是限制在两端进行插入操作和删除操作的线性表，允许进行存入操作的一端称为\"队尾\"，允许进行删除操作的一端称为\"队头\"\n</code></pre>\n<ul>\n<li><p><strong>特点</strong></p>\n<pre><code class=\"lang-python\">1) 队列只能在队头和队尾进行数据操作\n2) 队列模型具有先进先出规律（FIFO）\n</code></pre>\n</li>\n</ul>\n<p><img src=\"./img/data3.png\" alt=\"队列\"></p>\n<ul>\n<li><p><strong>队列的代码实现</strong></p>\n<p>```python\n# 队列的操作有入队，出队，判断队列的空满等操作\n\"\"\"\n思路分析:</p>\n<ol>\n<li>基于列表完成数据的存储</li>\n<li>通过封装功能完成队列的基本行为</li>\n<li>无论那边做对头/队尾 都会在操作中有内存移动\n\"\"\"</li>\n</ol>\n<p># 队列操作\nclass SQueue:</p>\n<pre><code>def __init__(self):\n    self.elems = []\n\n# 判断队列是否为空\ndef is_empty(self):\n    return self.elems == []\n\n# 入队\ndef enqueue(self,val):\n    self.elems.append(val)\n\n# 出队\ndef dequeue(self):\n    if not self._elems:\n        raise Exception(\"Queue is empty\")\n    return self.elems.pop(0) # 弹出第一个数据\n</code></pre>\n</li>\n</ul>\n<p>if <strong>name</strong> == \'<strong>main</strong>\':\n      sq = SQueue()\n      sq.enqueue(10)\n      sq.enqueue(20)\n      sq.enqueue(30)\n      while not sq.is_empty():\n          print(sq.dequeue())</p>\n<pre><code>\n  ## **今日作业**\n\n  ```python\n    【1】手写单链表\n  【2】输入一个链表，输出该链表中倒数第 k 个节点\n  【3】输入两个单调递增的链表，输出两个链表合成后的链表，当然我们需要合成后的链表满足单调不减规则\n  【4】使用链式存储方式实现栈\n  【5】使用链式存储方式实现队列\n</code></pre>\n',1),(2,'王永琪','dsadsadsa','<p>sadsad</p>',1,'2020-09-19 10:24:06.319231',1,1,1,1,'<p>sadsad</p>',0),(3,'1.雷-阿伦忆与乔丹的第一场比赛：我害怕极了，非常不真实','虎扑9月15日讯 近日，前NBA球员雷-阿伦做客前NBA球员詹姆斯-波西的播客节目，回忆起了当年与迈克尔-乔丹的第一场比赛。','虎扑9月15日讯 近日，前NBA球员雷-阿伦做客前NBA球员詹姆斯-波西的播客节目，回忆起了当年与迈克尔-乔丹的第一场比赛。\r\n\r\n“我记得我菜鸟赛季的季前赛第二场比赛，对手就是公牛。所以，你能想象一个21岁的孩子在场上面对迈克尔-乔丹时的场面吗？我当时真是害怕的要死（scared to death）。尤其是当时是1997年，想象一下听着当他走向球场时球馆里播放的那些主题音乐，和所有人都在等待着看他的比赛时那些期盼的眼神，那种场面简直不可思议。”雷-阿伦在节目中表示。\r\n\r\n“我记得我当时站在场上紧张的要命，然后乔丹走下了球场，所以我不得不抬头看了一眼。当时的感受我依然记忆犹新，一些都是那么的不真实，就好像我是当时坐在球馆里的观众，我过去十年在电视里不断重复看到的画面突然出现在我面前一样。我当时的感觉就好像我是来支持乔丹击败我在的这一队的。”',1,'2020-09-21 00:53:57.004756',2,1,6,3,'<p>虎扑9月15日讯 近日，前NBA球员雷-阿伦做客前NBA球员詹姆斯-波西的播客节目，回忆起了当年与迈克尔-乔丹的第一场比赛。</p>\n<p>“我记得我菜鸟赛季的季前赛第二场比赛，对手就是公牛。所以，你能想象一个21岁的孩子在场上面对迈克尔-乔丹时的场面吗？我当时真是害怕的要死（scared to death）。尤其是当时是1997年，想象一下听着当他走向球场时球馆里播放的那些主题音乐，和所有人都在等待着看他的比赛时那些期盼的眼神，那种场面简直不可思议。”雷-阿伦在节目中表示。</p>\n<p>“我记得我当时站在场上紧张的要命，然后乔丹走下了球场，所以我不得不抬头看了一眼。当时的感受我依然记忆犹新，一些都是那么的不真实，就好像我是当时坐在球馆里的观众，我过去十年在电视里不断重复看到的画面突然出现在我面前一样。我当时的感觉就好像我是来支持乔丹击败我在的这一队的。”</p>\n',1);
/*!40000 ALTER TABLE `blog_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_post_tag`
--

DROP TABLE IF EXISTS `blog_post_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_post_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_post_tag_post_id_tag_id_ba2a5f83_uniq` (`post_id`,`tag_id`),
  KEY `blog_post_tag_tag_id_2bbd31e4_fk_blog_tag_id` (`tag_id`),
  CONSTRAINT `blog_post_tag_post_id_a5c00319_fk_blog_post_id` FOREIGN KEY (`post_id`) REFERENCES `blog_post` (`id`),
  CONSTRAINT `blog_post_tag_tag_id_2bbd31e4_fk_blog_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `blog_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_post_tag`
--

LOCK TABLES `blog_post_tag` WRITE;
/*!40000 ALTER TABLE `blog_post_tag` DISABLE KEYS */;
INSERT INTO `blog_post_tag` VALUES (1,1,1),(2,2,1),(3,3,2);
/*!40000 ALTER TABLE `blog_post_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_tag`
--

DROP TABLE IF EXISTS `blog_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `status` int(10) unsigned NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `owner_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_tag_owner_id_3c8290ca_fk_auth_user_id` (`owner_id`),
  CONSTRAINT `blog_tag_owner_id_3c8290ca_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_tag`
--

LOCK TABLES `blog_tag` WRITE;
/*!40000 ALTER TABLE `blog_tag` DISABLE KEYS */;
INSERT INTO `blog_tag` VALUES (1,'1',1,'2020-09-17 11:27:04.414217',1),(2,'詹姆斯-波西',1,'2020-09-21 00:53:16.943028',1);
/*!40000 ALTER TABLE `blog_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `captcha_captchastore`
--

DROP TABLE IF EXISTS `captcha_captchastore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `captcha_captchastore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) NOT NULL,
  `response` varchar(32) NOT NULL,
  `hashkey` varchar(40) NOT NULL,
  `expiration` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hashkey` (`hashkey`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `captcha_captchastore`
--

LOCK TABLES `captcha_captchastore` WRITE;
/*!40000 ALTER TABLE `captcha_captchastore` DISABLE KEYS */;
INSERT INTO `captcha_captchastore` VALUES (1,'PZXW','pzxw','6cfbb864878d6ac2f70b9ace1b8131df13d6e9b7','2020-09-18 03:51:18.838825'),(2,'YDJS','ydjs','3ffa589e719cce041cf7cff15332f6abbd94295e','2020-09-18 03:51:46.139883'),(3,'BOIS','bois','2686766f0c739482578083c3226ff5b68496d117','2020-09-18 03:54:09.087001'),(4,'JUFU','jufu','0f70504500c18134a9210849e69f9422372a7f96','2020-09-18 03:55:47.888872'),(5,'VHEV','vhev','495b39bb40086b2eb2d826a5797d7863caca40a7','2020-09-18 04:02:19.371219'),(6,'UKGZ','ukgz','7596927512276401b5979cbd706f45f658f25ee9','2020-09-18 04:07:35.114977'),(7,'GIEQ','gieq','6d3077588b4fb0e34ab2589268c0cf1d848ab013','2020-09-18 04:08:41.784875'),(8,'KMAG','kmag','3ec30e1d3c1f9f8efe05a1901a2ed6220e6d6cca','2020-09-18 04:09:18.283178'),(9,'SPSQ','spsq','af3abfb45a5786af35c6e879d7b2fe7958c76c4d','2020-09-18 04:09:34.696385'),(10,'HMTI','hmti','31bfec0b305362bb4c1256805d4df46f23de3a77','2020-09-18 04:09:36.678358'),(11,'EUMQ','eumq','62e910c56cad262ccc570bc4478c60d0bed49c95','2020-09-18 04:09:37.765407'),(12,'EIMT','eimt','f20955cac434938a210267698067f893b2383152','2020-09-18 04:09:59.777284'),(13,'AKLT','aklt','3ee0dadddbd4501c971b4ae764e92bef1d546f3d','2020-09-18 04:10:12.633675'),(14,'VFJI','vfji','600d911fa0d2ddf01988b18b0efbd96ba1e13075','2020-09-18 04:10:18.232637'),(15,'PWOC','pwoc','262f3dbcf85b6e26a5c888e53b5ee76dea861c07','2020-09-21 01:00:34.734032'),(16,'NNNW','nnnw','7cb7586bd01dd965268d98d7143858b93a0c9a91','2020-09-21 01:02:12.595649'),(17,'HSBX','hsbx','75e3ec406f402997d559b814cb290a365f84f7f3','2020-09-21 01:02:13.099709'),(18,'IFWO','ifwo','766a0eb4c2a126d0bcc6f1ddb7c9523edff7abfb','2020-09-21 01:02:13.521974'),(19,'OIYO','oiyo','82f6df038db839a8335be6fcbc13509052d4254b','2020-09-21 01:02:13.991615'),(20,'GWJB','gwjb','1c8bdb5ffe1b6aff1b9d8282b06709bb7922edaa','2020-09-21 01:02:14.442958'),(21,'QIQP','qiqp','8ae1ef8c80a21d948db3ee315154bdd185ea5d16','2020-09-21 01:02:14.874127'),(22,'FHXF','fhxf','706a4638e9ae227bf3d4d457e27a57e58255869c','2020-09-21 01:02:45.612975'),(23,'FLAT','flat','9642b307090181fc6c4b83c437a7a08a3c7da512','2020-09-21 01:04:10.842464'),(24,'CBIL','cbil','df3a7ed239e37112b0bdd0f8fb3b7a20c6ab3187','2020-09-21 01:04:34.889864'),(25,'YTFJ','ytfj','2747f9caa1c7204a4e9782fc870d48d6d73efa76','2020-09-21 10:18:49.925523'),(26,'XLQO','xlqo','ffab43ad16950f3ffd2cc8efe3f1d6d8d53998e4','2020-09-21 11:42:07.966577'),(27,'MOMG','momg','36b7158c4e936f2e56358023b595540d8b5b2a5a','2020-09-22 04:37:59.349714'),(29,'YGKH','ygkh','c06c87ca234ce4185ec184e78af5f2a244ef777a','2020-09-22 04:39:37.214229'),(30,'ELHK','elhk','729c5f89273b90c0d0aeec31d5eff21221109895','2020-09-22 04:41:16.932243'),(31,'UELU','uelu','a2b23c11d18b29b71a6017a4ac2d2227f5640c79','2020-09-22 04:42:32.483817'),(32,'NZDW','nzdw','7c6c7fb9ffe0bfb933fe9758483b3e940341ee46','2020-09-22 04:42:46.358542'),(33,'IEIZ','ieiz','5ebd56162eaddcc903da44299cdafea0bcfd3cd1','2020-09-22 04:43:19.972232');
/*!40000 ALTER TABLE `captcha_captchastore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_comment`
--

DROP TABLE IF EXISTS `comment_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(2000) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `website` varchar(200) NOT NULL,
  `email` varchar(254) NOT NULL,
  `status` int(10) unsigned NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `target` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_comment`
--

LOCK TABLES `comment_comment` WRITE;
/*!40000 ALTER TABLE `comment_comment` DISABLE KEYS */;
INSERT INTO `comment_comment` VALUES (1,'123456','他人啊\\','http://127.0.0.1:8000/post/1.html','923644827@qq.com',1,'2020-09-18 04:04:12.057534','1'),(2,'<p>121221222121</p>\n','他人啊\\','http://127.0.0.1:8000/post/1.html','923644827@qq.com',1,'2020-09-22 04:34:36.661115','/post/1.html');
/*!40000 ALTER TABLE `comment_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config_link`
--

DROP TABLE IF EXISTS `config_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `href` varchar(200) NOT NULL,
  `status` int(10) unsigned NOT NULL,
  `weight` int(10) unsigned NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `owner_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `config_link_owner_id_5d54ab6d_fk_auth_user_id` (`owner_id`),
  CONSTRAINT `config_link_owner_id_5d54ab6d_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_link`
--

LOCK TABLES `config_link` WRITE;
/*!40000 ALTER TABLE `config_link` DISABLE KEYS */;
INSERT INTO `config_link` VALUES (1,'商城','http://127.0.0.1:5000/index.html',1,2,'2020-09-21 00:57:06.878491',1);
/*!40000 ALTER TABLE `config_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config_sidebar`
--

DROP TABLE IF EXISTS `config_sidebar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config_sidebar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `display_type` int(10) unsigned NOT NULL,
  `content` varchar(500) NOT NULL,
  `status` int(10) unsigned NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `owner_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `config_sidebar_owner_id_29edf5c5_fk_auth_user_id` (`owner_id`),
  CONSTRAINT `config_sidebar_owner_id_29edf5c5_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_sidebar`
--

LOCK TABLES `config_sidebar` WRITE;
/*!40000 ALTER TABLE `config_sidebar` DISABLE KEYS */;
INSERT INTO `config_sidebar` VALUES (1,'python',2,'123456',1,'2020-09-18 04:02:22.728792',1);
/*!40000 ALTER TABLE `config_sidebar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (12,'admin','logentry'),(14,'auth','group'),(13,'auth','permission'),(15,'auth','user'),(1,'blog','category'),(2,'blog','post'),(3,'blog','tag'),(7,'captcha','captchastore'),(6,'comment','comment'),(4,'config','link'),(5,'config','sidebar'),(16,'contenttypes','contenttype'),(17,'sessions','session'),(8,'xadmin','bookmark'),(11,'xadmin','log'),(9,'xadmin','usersettings'),(10,'xadmin','userwidget');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-09-17 10:27:44.186862'),(2,'auth','0001_initial','2020-09-17 10:27:46.796847'),(3,'admin','0001_initial','2020-09-17 10:27:54.372856'),(4,'admin','0002_logentry_remove_auto_add','2020-09-17 10:27:55.930798'),(5,'admin','0003_logentry_add_action_flag_choices','2020-09-17 10:27:55.982117'),(6,'contenttypes','0002_remove_content_type_name','2020-09-17 10:27:57.351655'),(7,'auth','0002_alter_permission_name_max_length','2020-09-17 10:28:00.759963'),(8,'auth','0003_alter_user_email_max_length','2020-09-17 10:28:01.679839'),(9,'auth','0004_alter_user_username_opts','2020-09-17 10:28:01.740103'),(10,'auth','0005_alter_user_last_login_null','2020-09-17 10:28:02.499511'),(11,'auth','0006_require_contenttypes_0002','2020-09-17 10:28:02.539602'),(12,'auth','0007_alter_validators_add_error_messages','2020-09-17 10:28:02.674696'),(13,'auth','0008_alter_user_username_max_length','2020-09-17 10:28:03.819563'),(14,'auth','0009_alter_user_last_name_max_length','2020-09-17 10:28:05.270190'),(15,'auth','0010_alter_group_name_max_length','2020-09-17 10:28:06.614133'),(16,'auth','0011_update_proxy_permissions','2020-09-17 10:28:06.683375'),(17,'blog','0001_initial','2020-09-17 10:28:09.199650'),(18,'blog','0002_auto_20180310_1505','2020-09-17 10:28:17.261227'),(19,'blog','0003_auto_20180325_1737','2020-09-17 10:28:18.570341'),(20,'blog','0004_post_content_html','2020-09-17 10:28:19.314734'),(21,'blog','0005_auto_20180502_1730','2020-09-17 10:28:20.082860'),(22,'captcha','0001_initial','2020-09-17 10:28:20.524051'),(23,'comment','0001_initial','2020-09-17 10:28:20.945158'),(24,'comment','0002_auto_20180410_1922','2020-09-17 10:28:22.655570'),(25,'config','0001_initial','2020-09-17 10:28:23.409736'),(26,'config','0002_auto_20180410_1922','2020-09-17 10:28:24.906152'),(27,'sessions','0001_initial','2020-09-17 10:28:25.223778'),(28,'xadmin','0001_initial','2020-09-17 10:28:27.199117'),(29,'xadmin','0002_log','2020-09-17 10:28:33.547361'),(30,'xadmin','0003_auto_20160715_0100','2020-09-17 10:28:37.320602'),(31,'blog','0006_auto_20200917_2118','2020-09-17 13:18:47.074052'),(32,'config','0003_auto_20200917_2118','2020-09-17 13:18:48.604657');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('csba4dur0qn489gfeptra24e5xflbyng','OTAzZWFiZmQ2YjA2MDE5YzkxNjhmOGRkYTQxZWYxZDc4NDUyN2MxYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMjU2ZDY0NzE1MTM5ODAxY2YzYWYyYjRmMzdmNjcxYzYwNTc4ZTAzIiwiTElTVF9RVUVSWSI6W1siY29uZmlnIiwibGluayJdLCIiXX0=','2020-10-05 10:16:57.285556'),('n5ucsudtk95cl5sdevknvlcr9p5wplrk','M2IwNWM0YmNkMmJkZjAzNTgyYmJhNDNjNDJhZGE5MTJhZTliNzcwYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2Zjk1OWNjYzhlMjI0NTNkNDcyZGYzNzViYWIzM2JlNWFiMTA1MGQwIiwiTElTVF9RVUVSWSI6W1siYXV0aCIsInBlcm1pc3Npb24iXSwiIl19','2020-10-01 11:02:26.081242'),('q3vcorbea8eqxd6m21gderd1cxa5apgt','YzNkMjYzZjVjOGE2NDhlMzY1Mjg3N2QyNzE3MDNiMTI0NzIwYTM2Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMjU2ZDY0NzE1MTM5ODAxY2YzYWYyYjRmMzdmNjcxYzYwNTc4ZTAzIiwiTElTVF9RVUVSWSI6W1siYmxvZyIsInBvc3QiXSwiIl19','2020-10-06 06:19:39.016844'),('ytsll5k96aro5758c9opt3ts5tu7uatq','ZDZhOTRmYTYxMWRjODhlZWE0ZmZlZTg5OWJlMWE2OTk2OGM4MDNjZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2Zjk1OWNjYzhlMjI0NTNkNDcyZGYzNzViYWIzM2JlNWFiMTA1MGQwIiwiTElTVF9RVUVSWSI6W1siYmxvZyIsInBvc3QiXSwiIl0sIndpemFyZF94YWRtaW51c2Vyd2lkZ2V0X2FkbWluX3dpemFyZF9mb3JtX3BsdWdpbiI6eyJzdGVwIjpudWxsLCJzdGVwX2RhdGEiOnt9LCJzdGVwX2ZpbGVzIjp7fSwiZXh0cmFfZGF0YSI6e319fQ==','2020-10-02 05:09:03.470410');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_bookmark`
--

DROP TABLE IF EXISTS `xadmin_bookmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `url_name` varchar(64) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookmark_content_type_id_60941679_fk_django_co` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc_fk_auth_user_id` (`user_id`),
  CONSTRAINT `xadmin_bookmark_content_type_id_60941679_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_bookmark`
--

LOCK TABLES `xadmin_bookmark` WRITE;
/*!40000 ALTER TABLE `xadmin_bookmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `xadmin_bookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_log`
--

DROP TABLE IF EXISTS `xadmin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` varchar(32) NOT NULL,
  `message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_log_user_id_bb16a176_fk_auth_user_id` (`user_id`),
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_log`
--

LOCK TABLES `xadmin_log` WRITE;
/*!40000 ALTER TABLE `xadmin_log` DISABLE KEYS */;
INSERT INTO `xadmin_log` VALUES (1,'2020-09-17 11:25:24.378537','127.0.0.1','1','python','create','已添加',1,1),(2,'2020-09-17 11:27:04.442659','127.0.0.1','1','1','create','已添加',3,1),(3,'2020-09-18 03:18:56.522868','127.0.0.1','1','王永琪','create','已添加',2,1),(4,'2020-09-18 03:50:14.871938','127.0.0.1','2','wang','create','已添加',15,1),(5,'2020-09-18 03:51:18.925691','127.0.0.1','1','王永琪','change','修改 desc',2,1),(6,'2020-09-18 04:02:22.773254','127.0.0.1','1','python','create','已添加',5,1),(7,'2020-09-18 04:04:12.105876','127.0.0.1','1','Comment object (1)','create','已添加',6,1),(8,'2020-09-18 04:04:54.474461','127.0.0.1','1','王永琪数据结构与算法-Day01','change','修改 title',2,1),(9,'2020-09-18 04:05:08.541837','127.0.0.1','1','数据结构与算法-Day01','change','修改 title',2,1),(10,'2020-09-19 10:24:06.347486','127.0.0.1','2','王永琪','create','已添加',2,1),(11,'2020-09-21 00:52:53.346463','127.0.0.1','2','西部','create','已添加',1,1),(12,'2020-09-21 00:53:16.949182','127.0.0.1','2','詹姆斯-波西','create','已添加',3,1),(13,'2020-09-21 00:53:57.019149','127.0.0.1','3','1.雷-阿伦忆与乔丹的第一场比赛：我害怕极了，非常不真实','create','已添加',2,1),(14,'2020-09-21 00:54:25.945758','127.0.0.1','2','西部联赛','change','修改 name',1,1),(15,'2020-09-21 00:54:52.504697','127.0.0.1','3','1.雷-阿伦忆与乔丹的第一场比赛：我害怕极了，非常不真实','change','没有数据变化',2,1),(16,'2020-09-21 00:57:06.882740','127.0.0.1','1','商城','create','已添加',4,1),(17,'2020-09-21 10:16:42.234735','127.0.0.1','2','论坛','create','已添加',4,1),(18,'2020-09-21 10:16:51.122701','127.0.0.1','2','论坛','change','修改 weight',4,1),(19,'2020-09-21 10:16:56.724502','127.0.0.1','1','商城','change','修改 weight',4,1),(20,'2020-09-21 11:17:38.098017','127.0.0.1','2','论坛','delete','',4,1),(21,'2020-09-21 11:19:07.044369','127.0.0.1','1','商城','change','修改 href',4,1);
/*!40000 ALTER TABLE `xadmin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_usersettings`
--

DROP TABLE IF EXISTS `xadmin_usersettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_user_id_edeabe4a_fk_auth_user_id` (`user_id`),
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_usersettings`
--

LOCK TABLES `xadmin_usersettings` WRITE;
/*!40000 ALTER TABLE `xadmin_usersettings` DISABLE KEYS */;
INSERT INTO `xadmin_usersettings` VALUES (1,'dashboard:home:pos','1',1),(2,'blog_post_editform_portal',',',1);
/*!40000 ALTER TABLE `xadmin_usersettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_userwidget`
--

DROP TABLE IF EXISTS `xadmin_userwidget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_userwidget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) NOT NULL,
  `widget_type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_user_id_c159233a_fk_auth_user_id` (`user_id`),
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_userwidget`
--

LOCK TABLES `xadmin_userwidget` WRITE;
/*!40000 ALTER TABLE `xadmin_userwidget` DISABLE KEYS */;
INSERT INTO `xadmin_userwidget` VALUES (1,'home','list','{\"title\": \"文章\", \"model\": \"blog.post\"}',1);
/*!40000 ALTER TABLE `xadmin_userwidget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'typeidea_db'
--

--
-- Dumping routines for database 'typeidea_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-22 14:20:54
