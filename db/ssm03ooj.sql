-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm03ooj
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssm03ooj/upload/1616494778270.jpg'),(2,'picture2','http://localhost:8080/ssm03ooj/upload/1616494787850.jpg'),(3,'picture3','http://localhost:8080/ssm03ooj/upload/1616494899337.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussshipinxinxi`
--

DROP TABLE IF EXISTS `discussshipinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussshipinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616495178461 DEFAULT CHARSET=utf8 COMMENT='视频信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussshipinxinxi`
--

LOCK TABLES `discussshipinxinxi` WRITE;
/*!40000 ALTER TABLE `discussshipinxinxi` DISABLE KEYS */;
INSERT INTO `discussshipinxinxi` VALUES (71,'2021-03-23 10:17:22',1,1,'用户名1','评论内容1','回复内容1'),(72,'2021-03-23 10:17:22',2,2,'用户名2','评论内容2','回复内容2'),(73,'2021-03-23 10:17:22',3,3,'用户名3','评论内容3','回复内容3'),(74,'2021-03-23 10:17:22',4,4,'用户名4','评论内容4','回复内容4'),(75,'2021-03-23 10:17:22',5,5,'用户名5','评论内容5','回复内容5'),(76,'2021-03-23 10:17:22',6,6,'用户名6','评论内容6','回复内容6'),(1616495178460,'2021-03-23 10:26:17',1616495026452,1616495054186,'2','课程讲解得很全面，受益了','1');
/*!40000 ALTER TABLE `discussshipinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoshi`
--

DROP TABLE IF EXISTS `jiaoshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshigonghao` (`jiaoshigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616494952048 DEFAULT CHARSET=utf8 COMMENT='教师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshi`
--

LOCK TABLES `jiaoshi` WRITE;
/*!40000 ALTER TABLE `jiaoshi` DISABLE KEYS */;
INSERT INTO `jiaoshi` VALUES (21,'2021-03-23 10:17:22','教师1','123456','教师姓名1','男','http://localhost:8080/ssm03ooj/upload/jiaoshi_zhaopian1.jpg','职称1','13823888881'),(22,'2021-03-23 10:17:22','教师2','123456','教师姓名2','男','http://localhost:8080/ssm03ooj/upload/jiaoshi_zhaopian2.jpg','职称2','13823888882'),(23,'2021-03-23 10:17:22','教师3','123456','教师姓名3','男','http://localhost:8080/ssm03ooj/upload/jiaoshi_zhaopian3.jpg','职称3','13823888883'),(24,'2021-03-23 10:17:22','教师4','123456','教师姓名4','男','http://localhost:8080/ssm03ooj/upload/jiaoshi_zhaopian4.jpg','职称4','13823888884'),(25,'2021-03-23 10:17:22','教师5','123456','教师姓名5','男','http://localhost:8080/ssm03ooj/upload/jiaoshi_zhaopian5.jpg','职称5','13823888885'),(26,'2021-03-23 10:17:22','教师6','123456','教师姓名6','男','http://localhost:8080/ssm03ooj/upload/jiaoshi_zhaopian6.jpg','职称6','13823888886'),(1616494952047,'2021-03-23 10:22:32','1','1','陈月','女','http://localhost:8080/ssm03ooj/upload/1616494968012.jpg','中级教师','12345678945');
/*!40000 ALTER TABLE `jiaoshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616494931181 DEFAULT CHARSET=utf8 COMMENT='系统公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (61,'2021-03-23 10:17:22','标题1','简介1','http://localhost:8080/ssm03ooj/upload/1616494794206.jpg','<p>内容1</p>'),(62,'2021-03-23 10:17:22','标题2','简介2','http://localhost:8080/ssm03ooj/upload/1616494801342.jpg','<p>内容2</p>'),(63,'2021-03-23 10:17:22','标题3','简介3','http://localhost:8080/ssm03ooj/upload/1616494807789.jpg','<p>内容3</p>'),(64,'2021-03-23 10:17:22','标题4','简介4','http://localhost:8080/ssm03ooj/upload/1616494820636.jpg','<p>内容4</p>'),(65,'2021-03-23 10:17:22','标题5','简介5','http://localhost:8080/ssm03ooj/upload/1616494828937.jpg','<p>内容5</p>'),(66,'2021-03-23 10:17:22','标题6','简介6','http://localhost:8080/ssm03ooj/upload/1616494838216.jpg','<p>内容6</p>'),(1616494931180,'2021-03-23 10:22:11','公告A','公告','http://localhost:8080/ssm03ooj/upload/1616494914886.png','<p>公告内容</p><p><img src=\"http://localhost:8080/ssm03ooj/upload/1616494928273.jpg\"></p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipinfenlei`
--

DROP TABLE IF EXISTS `shipinfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fenlei` (`fenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1616494881365 DEFAULT CHARSET=utf8 COMMENT='视频分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipinfenlei`
--

LOCK TABLES `shipinfenlei` WRITE;
/*!40000 ALTER TABLE `shipinfenlei` DISABLE KEYS */;
INSERT INTO `shipinfenlei` VALUES (31,'2021-03-23 10:17:22','分类1'),(32,'2021-03-23 10:17:22','分类2'),(33,'2021-03-23 10:17:22','分类3'),(34,'2021-03-23 10:17:22','分类4'),(35,'2021-03-23 10:17:22','分类5'),(36,'2021-03-23 10:17:22','分类6'),(1616494875702,'2021-03-23 10:21:15','办公类'),(1616494881364,'2021-03-23 10:21:21','编程类');
/*!40000 ALTER TABLE `shipinfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipinxinxi`
--

DROP TABLE IF EXISTS `shipinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shipinbianhao` varchar(200) DEFAULT NULL COMMENT '视频编号',
  `shipinmingcheng` varchar(200) NOT NULL COMMENT '视频名称',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  `shipinfengmian` varchar(200) DEFAULT NULL COMMENT '视频封面',
  `shipin` varchar(200) DEFAULT NULL COMMENT '视频',
  `shipinjieshao` longtext COMMENT '视频介绍',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shipinbianhao` (`shipinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616495026453 DEFAULT CHARSET=utf8 COMMENT='视频信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipinxinxi`
--

LOCK TABLES `shipinxinxi` WRITE;
/*!40000 ALTER TABLE `shipinxinxi` DISABLE KEYS */;
INSERT INTO `shipinxinxi` VALUES (41,'2021-03-23 10:17:22','视频编号1','视频名称1','分类1','http://localhost:8080/ssm03ooj/upload/1616494721539.jpg','','视频介绍1','2021-03-23','教师工号1','教师姓名1','2021-03-23 18:18:26',2),(42,'2021-03-23 10:17:22','视频编号2','视频名称2','分类2','http://localhost:8080/ssm03ooj/upload/1616494729514.jpg','','视频介绍2','2021-03-23','教师工号2','教师姓名2','2021-03-23 18:18:44',3),(43,'2021-03-23 10:17:22','视频编号3','视频名称3','分类3','http://localhost:8080/ssm03ooj/upload/1616494737495.jpg','','视频介绍3','2021-03-23','教师工号3','教师姓名3','2021-03-23 18:18:52',4),(44,'2021-03-23 10:17:22','视频编号4','视频名称4','分类4','http://localhost:8080/ssm03ooj/upload/1616494746552.jpg','','视频介绍4','2021-03-23','教师工号4','教师姓名4','2021-03-23 18:24:48',12),(45,'2021-03-23 10:17:22','视频编号5','视频名称5','分类5','http://localhost:8080/ssm03ooj/upload/1616494756495.jpg','','视频介绍5','2021-03-23','教师工号5','教师姓名5','2021-03-23 18:19:10',6),(46,'2021-03-23 10:17:22','视频编号6','视频名称6','分类6','http://localhost:8080/ssm03ooj/upload/1616494765811.jpg','','视频介绍6','2021-03-23','教师工号6','教师姓名6','2021-03-23 18:19:20',7),(1616495026452,'2021-03-23 10:23:46','1616494971593','python中级教程','编程类','http://localhost:8080/ssm03ooj/upload/1616494996107.jpg','http://localhost:8080/ssm03ooj/upload/1616495007153.mp4','python中级课程实际应用','2021-03-23','1','陈月','2021-03-23 18:27:13',4);
/*!40000 ALTER TABLE `shipinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616495117529 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1616495117528,'2021-03-23 10:25:17',1616495054186,1616495026452,'shipinxinxi','python中级教程','http://localhost:8080/ssm03ooj/upload/1616494996107.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','a9s6gpxlh403x9w8yieilopktt9y71no','2021-03-23 10:18:21','2021-03-23 12:06:56'),(2,1616494952047,'1','jiaoshi','教师','ymwldk3cd7eixyc48qxa6nazli77ya7e','2021-03-23 10:22:36','2021-03-23 11:26:39'),(3,1616495054186,'2','xuesheng','学生','hzov2v61kn1v6bmfbhjqm9cd5z8f3i5r','2021-03-23 10:24:19','2021-03-23 11:27:09'),(4,13,'学生3','xuesheng','学生','iry4mv5aproarhvkjec7bdwzj1mt1hv5','2021-03-23 11:07:13','2021-03-23 12:07:14');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-23 10:17:22');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616495054187 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (11,'2021-03-23 10:17:22','学生1','123456','学生姓名1','男','http://localhost:8080/ssm03ooj/upload/xuesheng_touxiang1.jpg','13823888881','773890001@qq.com'),(12,'2021-03-23 10:17:22','学生2','123456','学生姓名2','男','http://localhost:8080/ssm03ooj/upload/xuesheng_touxiang2.jpg','13823888882','773890002@qq.com'),(13,'2021-03-23 10:17:22','学生3','123456','学生姓名3','男','http://localhost:8080/ssm03ooj/upload/xuesheng_touxiang3.jpg','13823888883','773890003@qq.com'),(14,'2021-03-23 10:17:22','学生4','123456','学生姓名4','男','http://localhost:8080/ssm03ooj/upload/xuesheng_touxiang4.jpg','13823888884','773890004@qq.com'),(15,'2021-03-23 10:17:22','学生5','123456','学生姓名5','男','http://localhost:8080/ssm03ooj/upload/xuesheng_touxiang5.jpg','13823888885','773890005@qq.com'),(16,'2021-03-23 10:17:22','学生6','123456','学生姓名6','男','http://localhost:8080/ssm03ooj/upload/xuesheng_touxiang6.jpg','13823888886','773890006@qq.com'),(1616495054186,'2021-03-23 10:24:14','2','2','陈一','女','http://localhost:8080/ssm03ooj/upload/1616495068061.jpg','12312312369','258@qq.com');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-24 11:07:16
