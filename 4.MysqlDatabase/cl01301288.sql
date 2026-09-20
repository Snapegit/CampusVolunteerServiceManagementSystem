-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: cl01301288
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
-- Current Database: `cl01301288`
--

/*!40000 DROP DATABASE IF EXISTS `cl01301288`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cl01301288` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `cl01301288`;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'swiper1','file/swiperPicture1.jpg'),(2,'swiper2','file/swiperPicture2.jpg'),(3,'swiper3','file/swiperPicture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusszhiyuanzhehuodong`
--

DROP TABLE IF EXISTS `discusszhiyuanzhehuodong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusszhiyuanzhehuodong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='志愿者活动评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusszhiyuanzhehuodong`
--

LOCK TABLES `discusszhiyuanzhehuodong` WRITE;
/*!40000 ALTER TABLE `discusszhiyuanzhehuodong` DISABLE KEYS */;
/*!40000 ALTER TABLE `discusszhiyuanzhehuodong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huodongcanjia`
--

DROP TABLE IF EXISTS `huodongcanjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huodongcanjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongbianhao` varchar(200) DEFAULT NULL COMMENT '活动编号',
  `huodongmingcheng` varchar(200) DEFAULT NULL COMMENT '活动名称',
  `huodongtupian` longtext COMMENT '活动图片',
  `huodongrenshu` int(11) DEFAULT NULL COMMENT '活动人数',
  `huodongtiaojian` varchar(200) DEFAULT NULL COMMENT '活动条件',
  `huodongshijian` date DEFAULT NULL COMMENT '活动时间',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='活动参加';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huodongcanjia`
--

LOCK TABLES `huodongcanjia` WRITE;
/*!40000 ALTER TABLE `huodongcanjia` DISABLE KEYS */;
INSERT INTO `huodongcanjia` VALUES (61,'2024-03-25 14:31:09','活动编号1','活动名称1','file/huodongcanjiaHuodongtupian1.jpg,file/huodongcanjiaHuodongtupian2.jpg,file/huodongcanjiaHuodongtupian3.jpg',1,'活动条件1','2024-03-25','2024-03-25 22:31:09','教师工号1','教师姓名1','学号1','学生姓名1'),(62,'2024-03-25 14:31:09','活动编号2','活动名称2','file/huodongcanjiaHuodongtupian2.jpg,file/huodongcanjiaHuodongtupian3.jpg,file/huodongcanjiaHuodongtupian4.jpg',2,'活动条件2','2024-03-25','2024-03-25 22:31:09','教师工号2','教师姓名2','学号2','学生姓名2'),(63,'2024-03-25 14:31:09','活动编号3','活动名称3','file/huodongcanjiaHuodongtupian3.jpg,file/huodongcanjiaHuodongtupian4.jpg,file/huodongcanjiaHuodongtupian5.jpg',3,'活动条件3','2024-03-25','2024-03-25 22:31:09','教师工号3','教师姓名3','学号3','学生姓名3'),(64,'2024-03-25 14:31:09','活动编号4','活动名称4','file/huodongcanjiaHuodongtupian4.jpg,file/huodongcanjiaHuodongtupian5.jpg,file/huodongcanjiaHuodongtupian6.jpg',4,'活动条件4','2024-03-25','2024-03-25 22:31:09','教师工号4','教师姓名4','学号4','学生姓名4'),(65,'2024-03-25 14:31:09','活动编号5','活动名称5','file/huodongcanjiaHuodongtupian5.jpg,file/huodongcanjiaHuodongtupian6.jpg,file/huodongcanjiaHuodongtupian7.jpg',5,'活动条件5','2024-03-25','2024-03-25 22:31:09','教师工号5','教师姓名5','学号5','学生姓名5'),(66,'2024-03-25 14:31:09','活动编号6','活动名称6','file/huodongcanjiaHuodongtupian6.jpg,file/huodongcanjiaHuodongtupian7.jpg,file/huodongcanjiaHuodongtupian8.jpg',6,'活动条件6','2024-03-25','2024-03-25 22:31:09','教师工号6','教师姓名6','学号6','学生姓名6');
/*!40000 ALTER TABLE `huodongcanjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiajifen`
--

DROP TABLE IF EXISTS `jiajifen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiajifen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `jifen` varchar(200) DEFAULT NULL COMMENT '积分',
  `liyou` longtext COMMENT '理由',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `sfsh` varchar(200) DEFAULT NULL COMMENT '是否审核',
  `shhf` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='加积分';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiajifen`
--

LOCK TABLES `jiajifen` WRITE;
/*!40000 ALTER TABLE `jiajifen` DISABLE KEYS */;
INSERT INTO `jiajifen` VALUES (71,'2024-03-25 14:31:09','学号1','学生姓名1','积分1','理由1','2024-03-25','是',''),(72,'2024-03-25 14:31:09','学号2','学生姓名2','积分2','理由2','2024-03-25','是',''),(73,'2024-03-25 14:31:09','学号3','学生姓名3','积分3','理由3','2024-03-25','是',''),(74,'2024-03-25 14:31:09','学号4','学生姓名4','积分4','理由4','2024-03-25','是',''),(75,'2024-03-25 14:31:09','学号5','学生姓名5','积分5','理由5','2024-03-25','是',''),(76,'2024-03-25 14:31:09','学号6','学生姓名6','积分6','理由6','2024-03-25','是','');
/*!40000 ALTER TABLE `jiajifen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jianjifen`
--

DROP TABLE IF EXISTS `jianjifen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jianjifen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `jifen` varchar(200) DEFAULT NULL COMMENT '积分',
  `liyou` longtext COMMENT '理由',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `sfsh` varchar(200) DEFAULT NULL COMMENT '是否审核',
  `shhf` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='减积分';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jianjifen`
--

LOCK TABLES `jianjifen` WRITE;
/*!40000 ALTER TABLE `jianjifen` DISABLE KEYS */;
INSERT INTO `jianjifen` VALUES (81,'2024-03-25 14:31:09','学号1','学生姓名1','积分1','理由1','2024-03-25','是',''),(82,'2024-03-25 14:31:09','学号2','学生姓名2','积分2','理由2','2024-03-25','是',''),(83,'2024-03-25 14:31:09','学号3','学生姓名3','积分3','理由3','2024-03-25','是',''),(84,'2024-03-25 14:31:09','学号4','学生姓名4','积分4','理由4','2024-03-25','是',''),(85,'2024-03-25 14:31:09','学号5','学生姓名5','积分5','理由5','2024-03-25','是',''),(86,'2024-03-25 14:31:09','学号6','学生姓名6','积分6','理由6','2024-03-25','是','');
/*!40000 ALTER TABLE `jianjifen` ENABLE KEYS */;
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
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshigonghao` (`jiaoshigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='教师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshi`
--

LOCK TABLES `jiaoshi` WRITE;
/*!40000 ALTER TABLE `jiaoshi` DISABLE KEYS */;
INSERT INTO `jiaoshi` VALUES (41,'2024-03-25 14:31:09','教师工号1','123456','教师姓名1','19819881111','男'),(42,'2024-03-25 14:31:09','教师工号2','123456','教师姓名2','19819881112','男'),(43,'2024-03-25 14:31:09','教师工号3','123456','教师姓名3','19819881113','男'),(44,'2024-03-25 14:31:09','教师工号4','123456','教师姓名4','19819881114','男'),(45,'2024-03-25 14:31:09','教师工号5','123456','教师姓名5','19819881115','男'),(46,'2024-03-25 14:31:09','教师工号6','123456','教师姓名6','19819881116','男');
/*!40000 ALTER TABLE `jiaoshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `liuyanfankui`
--

DROP TABLE IF EXISTS `liuyanfankui`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `liuyanfankui` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `fankuibiaoti` varchar(200) NOT NULL COMMENT '反馈标题',
  `fankuineirong` longtext NOT NULL COMMENT '反馈内容',
  `fankuishijian` datetime DEFAULT NULL COMMENT '反馈时间',
  `sfsh` varchar(200) DEFAULT NULL COMMENT '是否审核',
  `shhf` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='留言反馈';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `liuyanfankui`
--

LOCK TABLES `liuyanfankui` WRITE;
/*!40000 ALTER TABLE `liuyanfankui` DISABLE KEYS */;
INSERT INTO `liuyanfankui` VALUES (91,'2024-03-25 14:31:09','学号1','学生姓名1','反馈标题1','反馈内容1','2024-03-25 22:31:09','是',''),(92,'2024-03-25 14:31:09','学号2','学生姓名2','反馈标题2','反馈内容2','2024-03-25 22:31:09','是',''),(93,'2024-03-25 14:31:09','学号3','学生姓名3','反馈标题3','反馈内容3','2024-03-25 22:31:09','是',''),(94,'2024-03-25 14:31:09','学号4','学生姓名4','反馈标题4','反馈内容4','2024-03-25 22:31:09','是',''),(95,'2024-03-25 14:31:09','学号5','学生姓名5','反馈标题5','反馈内容5','2024-03-25 22:31:09','是',''),(96,'2024-03-25 14:31:09','学号6','学生姓名6','反馈标题6','反馈内容6','2024-03-25 22:31:09','是','');
/*!40000 ALTER TABLE `liuyanfankui` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `menujson` longtext COMMENT '菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'2024-03-25 14:31:10','[{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-link\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"轮播图\",\"menuJump\":\"列表\",\"tableName\":\"config\"}],\"fontClass\":\"icon-common15\",\"menu\":\"轮播图管理\",\"unicode\":\"&#xedfc;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"管理员\",\"menuJump\":\"列表\",\"tableName\":\"users\"}],\"fontClass\":\"icon-common41\",\"menu\":\"管理员管理\",\"unicode\":\"&#xeede;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-cardboard\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"教师\",\"menuJump\":\"列表\",\"tableName\":\"jiaoshi\"}],\"fontClass\":\"icon-user5\",\"menu\":\"教师管理\",\"unicode\":\"&#xef9b;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-addressbook\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\"],\"menu\":\"学生\",\"menuJump\":\"列表\",\"tableName\":\"xuesheng\"}],\"fontClass\":\"icon-user5\",\"menu\":\"学生管理\",\"unicode\":\"&#xef9b;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-circle\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"查看评论\"],\"menu\":\"志愿者活动\",\"menuJump\":\"列表\",\"tableName\":\"zhiyuanzhehuodong\"}],\"fontClass\":\"icon-common10\",\"menu\":\"志愿者活动管理\",\"unicode\":\"&#xedd1;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-goods\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\"],\"menu\":\"活动参加\",\"menuJump\":\"列表\",\"tableName\":\"huodongcanjia\"}],\"fontClass\":\"icon-common37\",\"menu\":\"活动参加管理\",\"unicode\":\"&#xeea4;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-link\",\"buttons\":[\"审核\",\"查看\",\"删除\"],\"menu\":\"加积分\",\"menuJump\":\"列表\",\"tableName\":\"jiajifen\"},{\"appFrontIcon\":\"cuIcon-medal\",\"buttons\":[\"审核\",\"查看\",\"删除\"],\"menu\":\"减积分\",\"menuJump\":\"列表\",\"tableName\":\"jianjifen\"}],\"fontClass\":\"icon-common15\",\"menu\":\"积分管理\",\"unicode\":\"&#xedfc;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-shop\",\"buttons\":[\"审核\",\"查看\",\"删除\"],\"menu\":\"留言反馈\",\"menuJump\":\"列表\",\"tableName\":\"liuyanfankui\"}],\"fontClass\":\"icon-common45\",\"menu\":\"留言反馈管理\",\"unicode\":\"&#xef3b;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"查看\",\"参加\",\"报名参加\",\"查看评论\"],\"menu\":\"志愿者活动\",\"menuJump\":\"列表\",\"tableName\":\"zhiyuanzhehuodong\"}],\"menu\":\"志愿者活动管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-discover\",\"buttons\":[\"新增\",\"查看\"],\"menu\":\"留言反馈\",\"menuJump\":\"列表\",\"tableName\":\"liuyanfankui\"}],\"menu\":\"留言反馈管理\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"管理员\",\"tableName\":\"users\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-goods\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"活动参加\",\"menuJump\":\"列表\",\"tableName\":\"huodongcanjia\"}],\"fontClass\":\"icon-common37\",\"menu\":\"活动参加管理\",\"unicode\":\"&#xeea4;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-link\",\"buttons\":[\"查看\"],\"menu\":\"加积分\",\"menuJump\":\"列表\",\"tableName\":\"jiajifen\"},{\"appFrontIcon\":\"cuIcon-medal\",\"buttons\":[\"查看\"],\"menu\":\"减积分\",\"menuJump\":\"列表\",\"tableName\":\"jianjifen\"}],\"fontClass\":\"icon-common15\",\"menu\":\"积分管理\",\"unicode\":\"&#xedfc;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-shop\",\"buttons\":[\"修改\",\"查看\",\"删除\"],\"menu\":\"留言反馈\",\"menuJump\":\"列表\",\"tableName\":\"liuyanfankui\"}],\"fontClass\":\"icon-common45\",\"menu\":\"留言反馈管理\",\"unicode\":\"&#xef3b;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"查看\",\"参加\",\"报名参加\",\"查看评论\"],\"menu\":\"志愿者活动\",\"menuJump\":\"列表\",\"tableName\":\"zhiyuanzhehuodong\"}],\"menu\":\"志愿者活动管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-discover\",\"buttons\":[\"新增\",\"查看\"],\"menu\":\"留言反馈\",\"menuJump\":\"列表\",\"tableName\":\"liuyanfankui\"}],\"menu\":\"留言反馈管理\"}],\"hasBackLogin\":\"否\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"是\",\"hasFrontRegister\":\"是\",\"roleName\":\"学生\",\"tableName\":\"xuesheng\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-addressbook\",\"buttons\":[\"查看\",\"加积分\",\"减积分\"],\"menu\":\"学生\",\"menuJump\":\"列表\",\"tableName\":\"xuesheng\"}],\"fontClass\":\"icon-user5\",\"menu\":\"学生管理\",\"unicode\":\"&#xef9b;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-circle\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"查看评论\"],\"menu\":\"志愿者活动\",\"menuJump\":\"列表\",\"tableName\":\"zhiyuanzhehuodong\"}],\"fontClass\":\"icon-common10\",\"menu\":\"志愿者活动管理\",\"unicode\":\"&#xedd1;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-goods\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"活动参加\",\"menuJump\":\"列表\",\"tableName\":\"huodongcanjia\"}],\"fontClass\":\"icon-common37\",\"menu\":\"活动参加管理\",\"unicode\":\"&#xeea4;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-link\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"加积分\",\"menuJump\":\"列表\",\"tableName\":\"jiajifen\"},{\"appFrontIcon\":\"cuIcon-medal\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"减积分\",\"menuJump\":\"列表\",\"tableName\":\"jianjifen\"}],\"fontClass\":\"icon-common15\",\"menu\":\"积分管理\",\"unicode\":\"&#xedfc;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"查看\",\"参加\",\"报名参加\",\"查看评论\"],\"menu\":\"志愿者活动\",\"menuJump\":\"列表\",\"tableName\":\"zhiyuanzhehuodong\"}],\"menu\":\"志愿者活动管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-discover\",\"buttons\":[\"新增\",\"查看\"],\"menu\":\"留言反馈\",\"menuJump\":\"列表\",\"tableName\":\"liuyanfankui\"}],\"menu\":\"留言反馈管理\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"是\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"教师\",\"tableName\":\"jiaoshi\"}]');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'admin','users','管理员','jcqco7o1267waou9ddrdqvwe8zbpabe5','2024-03-25 15:03:31','2024-03-25 16:03:32');
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
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `password` varchar(200) NOT NULL COMMENT '密码',
  `role` varchar(200) DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2024-03-25 14:31:10','admin','admin','管理员');
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
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `jifen` double DEFAULT NULL COMMENT '积分',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (31,'2024-03-25 14:31:09','学号1','123456','学生姓名1','男','19819881111',1),(32,'2024-03-25 14:31:09','学号2','123456','学生姓名2','男','19819881112',2),(33,'2024-03-25 14:31:09','学号3','123456','学生姓名3','男','19819881113',3),(34,'2024-03-25 14:31:09','学号4','123456','学生姓名4','男','19819881114',4),(35,'2024-03-25 14:31:09','学号5','123456','学生姓名5','男','19819881115',5),(36,'2024-03-25 14:31:09','学号6','123456','学生姓名6','男','19819881116',6);
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhiyuanzhehuodong`
--

DROP TABLE IF EXISTS `zhiyuanzhehuodong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhiyuanzhehuodong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongbianhao` varchar(200) DEFAULT NULL COMMENT '活动编号',
  `huodongmingcheng` varchar(200) DEFAULT NULL COMMENT '活动名称',
  `huodongtupian` longtext COMMENT '活动图片',
  `huodongrenshu` int(11) DEFAULT NULL COMMENT '活动人数',
  `huodongtiaojian` varchar(200) DEFAULT NULL COMMENT '活动条件',
  `huodongshijian` date DEFAULT NULL COMMENT '活动时间',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `sfsh` varchar(200) DEFAULT NULL COMMENT '是否审核',
  `shhf` longtext COMMENT '回复内容',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `huodongbianhao` (`huodongbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='志愿者活动';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhiyuanzhehuodong`
--

LOCK TABLES `zhiyuanzhehuodong` WRITE;
/*!40000 ALTER TABLE `zhiyuanzhehuodong` DISABLE KEYS */;
INSERT INTO `zhiyuanzhehuodong` VALUES (51,'2024-03-25 14:31:09','1111111111','活动名称1','file/zhiyuanzhehuodongHuodongtupian1.jpg,file/zhiyuanzhehuodongHuodongtupian2.jpg,file/zhiyuanzhehuodongHuodongtupian3.jpg',1,'活动条件1','2024-03-25','2024-03-25 22:31:09','是','','教师工号1','教师姓名1'),(52,'2024-03-25 14:31:09','2222222222','活动名称2','file/zhiyuanzhehuodongHuodongtupian2.jpg,file/zhiyuanzhehuodongHuodongtupian3.jpg,file/zhiyuanzhehuodongHuodongtupian4.jpg',2,'活动条件2','2024-03-25','2024-03-25 22:31:09','是','','教师工号2','教师姓名2'),(53,'2024-03-25 14:31:09','3333333333','活动名称3','file/zhiyuanzhehuodongHuodongtupian3.jpg,file/zhiyuanzhehuodongHuodongtupian4.jpg,file/zhiyuanzhehuodongHuodongtupian5.jpg',3,'活动条件3','2024-03-25','2024-03-25 22:31:09','是','','教师工号3','教师姓名3'),(54,'2024-03-25 14:31:09','4444444444','活动名称4','file/zhiyuanzhehuodongHuodongtupian4.jpg,file/zhiyuanzhehuodongHuodongtupian5.jpg,file/zhiyuanzhehuodongHuodongtupian6.jpg',4,'活动条件4','2024-03-25','2024-03-25 22:31:09','是','','教师工号4','教师姓名4'),(55,'2024-03-25 14:31:09','5555555555','活动名称5','file/zhiyuanzhehuodongHuodongtupian5.jpg,file/zhiyuanzhehuodongHuodongtupian6.jpg,file/zhiyuanzhehuodongHuodongtupian7.jpg',5,'活动条件5','2024-03-25','2024-03-25 22:31:09','是','','教师工号5','教师姓名5'),(56,'2024-03-25 14:31:09','6666666666','活动名称6','file/zhiyuanzhehuodongHuodongtupian6.jpg,file/zhiyuanzhehuodongHuodongtupian7.jpg,file/zhiyuanzhehuodongHuodongtupian8.jpg',6,'活动条件6','2024-03-25','2024-03-25 22:31:09','是','','教师工号6','教师姓名6');
/*!40000 ALTER TABLE `zhiyuanzhehuodong` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-26  9:57:45
