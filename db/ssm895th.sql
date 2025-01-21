-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm895th
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
-- Current Database: `ssm895th`
--

/*!40000 DROP DATABASE IF EXISTS `ssm895th`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ssm895th` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `ssm895th`;

--
-- Table structure for table `caiwutongji`
--

DROP TABLE IF EXISTS `caiwutongji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caiwutongji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tongjibianhao` varchar(200) DEFAULT NULL COMMENT '统计编号',
  `dangyueshouru` float DEFAULT NULL COMMENT '当月收入',
  `dangyuezhichu` float DEFAULT NULL COMMENT '当月支出',
  `chunlirun` float DEFAULT NULL COMMENT '纯利润',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tongjibianhao` (`tongjibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=237 DEFAULT CHARSET=utf8 COMMENT='财务统计';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caiwutongji`
--

LOCK TABLES `caiwutongji` WRITE;
/*!40000 ALTER TABLE `caiwutongji` DISABLE KEYS */;
INSERT INTO `caiwutongji` VALUES (231,'2022-05-09 08:08:24','1111111111',1,1,1,'2022-05-09'),(232,'2022-05-09 08:08:24','2222222222',2,2,2,'2022-05-09'),(233,'2022-05-09 08:08:24','3333333333',3,3,3,'2022-05-09'),(234,'2022-05-09 08:08:24','4444444444',4,4,4,'2022-05-09'),(235,'2022-05-09 08:08:24','5555555555',5,5,5,'2022-05-09'),(236,'2022-05-09 08:08:24','6666666666',6,6,6,'2022-05-09');
/*!40000 ALTER TABLE `caiwutongji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chuangwei`
--

DROP TABLE IF EXISTS `chuangwei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chuangwei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangjianhao` varchar(200) DEFAULT NULL COMMENT '房间号',
  `loufangmingcheng` varchar(200) DEFAULT NULL COMMENT '楼房名称',
  `chuangweihao` varchar(200) NOT NULL COMMENT '床位号',
  `chuangweizhuangtai` varchar(200) DEFAULT NULL COMMENT '床位状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='床位';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chuangwei`
--

LOCK TABLES `chuangwei` WRITE;
/*!40000 ALTER TABLE `chuangwei` DISABLE KEYS */;
INSERT INTO `chuangwei` VALUES (51,'2022-05-09 08:08:23','房间号1','楼房名称1','床位号1','已使用'),(52,'2022-05-09 08:08:23','房间号2','楼房名称2','床位号2','已使用'),(53,'2022-05-09 08:08:23','房间号3','楼房名称3','床位号3','已使用'),(54,'2022-05-09 08:08:23','房间号4','楼房名称4','床位号4','已使用'),(55,'2022-05-09 08:08:23','房间号5','楼房名称5','床位号5','已使用'),(56,'2022-05-09 08:08:23','房间号6','楼房名称6','床位号6','已使用');
/*!40000 ALTER TABLE `chuangwei` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fangjianziliao`
--

DROP TABLE IF EXISTS `fangjianziliao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fangjianziliao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangjianhao` varchar(200) DEFAULT NULL COMMENT '房间号',
  `loufangmingcheng` varchar(200) DEFAULT NULL COMMENT '楼房名称',
  `fangjianmianji` varchar(200) DEFAULT NULL COMMENT '房间面积',
  `fangjiansheshi` longtext COMMENT '房间设施',
  `fangjiantupian` varchar(200) DEFAULT NULL COMMENT '房间图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='房间资料';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fangjianziliao`
--

LOCK TABLES `fangjianziliao` WRITE;
/*!40000 ALTER TABLE `fangjianziliao` DISABLE KEYS */;
INSERT INTO `fangjianziliao` VALUES (41,'2022-05-09 08:08:23','房间号1','楼房名称1','房间面积1','房间设施1','upload/fangjianziliao_fangjiantupian1.jpg'),(42,'2022-05-09 08:08:23','房间号2','楼房名称2','房间面积2','房间设施2','upload/fangjianziliao_fangjiantupian2.jpg'),(43,'2022-05-09 08:08:23','房间号3','楼房名称3','房间面积3','房间设施3','upload/fangjianziliao_fangjiantupian3.jpg'),(44,'2022-05-09 08:08:23','房间号4','楼房名称4','房间面积4','房间设施4','upload/fangjianziliao_fangjiantupian4.jpg'),(45,'2022-05-09 08:08:23','房间号5','楼房名称5','房间面积5','房间设施5','upload/fangjianziliao_fangjiantupian5.jpg'),(46,'2022-05-09 08:08:23','房间号6','楼房名称6','房间面积6','房间设施6','upload/fangjianziliao_fangjiantupian6.jpg');
/*!40000 ALTER TABLE `fangjianziliao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hugong`
--

DROP TABLE IF EXISTS `hugong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hugong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `hugonggonghao` varchar(200) NOT NULL COMMENT '护工工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `hugongxingming` varchar(200) NOT NULL COMMENT '护工姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `hugongzhaopian` varchar(200) DEFAULT NULL COMMENT '护工照片',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `hugongdianhua` varchar(200) DEFAULT NULL COMMENT '护工电话',
  `minzu` varchar(200) DEFAULT NULL COMMENT '民族',
  `xueli` varchar(200) DEFAULT NULL COMMENT '学历',
  `hunfou` varchar(200) DEFAULT NULL COMMENT '婚否',
  `hulijibie` varchar(200) NOT NULL COMMENT '护理级别',
  PRIMARY KEY (`id`),
  UNIQUE KEY `hugonggonghao` (`hugonggonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='护工';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hugong`
--

LOCK TABLES `hugong` WRITE;
/*!40000 ALTER TABLE `hugong` DISABLE KEYS */;
INSERT INTO `hugong` VALUES (11,'2022-05-09 08:08:23','护工工号1','123456','护工姓名1','男','upload/hugong_hugongzhaopian1.jpg',1,'13823888881','民族1','学历1','未婚','特级护理'),(12,'2022-05-09 08:08:23','护工工号2','123456','护工姓名2','男','upload/hugong_hugongzhaopian2.jpg',2,'13823888882','民族2','学历2','未婚','特级护理'),(13,'2022-05-09 08:08:23','护工工号3','123456','护工姓名3','男','upload/hugong_hugongzhaopian3.jpg',3,'13823888883','民族3','学历3','未婚','特级护理'),(14,'2022-05-09 08:08:23','护工工号4','123456','护工姓名4','男','upload/hugong_hugongzhaopian4.jpg',4,'13823888884','民族4','学历4','未婚','特级护理'),(15,'2022-05-09 08:08:23','护工工号5','123456','护工姓名5','男','upload/hugong_hugongzhaopian5.jpg',5,'13823888885','民族5','学历5','未婚','特级护理'),(16,'2022-05-09 08:08:23','护工工号6','123456','护工姓名6','男','upload/hugong_hugongzhaopian6.jpg',6,'13823888886','民族6','学历6','未婚','特级护理');
/*!40000 ALTER TABLE `hugong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hugonggongzi`
--

DROP TABLE IF EXISTS `hugonggongzi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hugonggongzi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fafangshijian` date DEFAULT NULL COMMENT '发放时间',
  `hugonggonghao` varchar(200) DEFAULT NULL COMMENT '护工工号',
  `hugongxingming` varchar(200) DEFAULT NULL COMMENT '护工姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `dixin` int(11) NOT NULL COMMENT '底薪',
  `jixiao` int(11) NOT NULL COMMENT '绩效',
  `jiabangongzi` int(11) NOT NULL COMMENT '加班工资',
  `kouqingjia` int(11) NOT NULL COMMENT '扣请假',
  `kouwuxianyijin` int(11) NOT NULL COMMENT '扣五险一金',
  `qitakoukuan` int(11) NOT NULL COMMENT '其它扣款',
  `qitajiangli` int(11) NOT NULL COMMENT '其它奖励',
  `shifagongzi` int(11) DEFAULT NULL COMMENT '实发工资',
  `gongzibeizhu` varchar(200) DEFAULT NULL COMMENT '工资备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=utf8 COMMENT='护工工资';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hugonggongzi`
--

LOCK TABLES `hugonggongzi` WRITE;
/*!40000 ALTER TABLE `hugonggongzi` DISABLE KEYS */;
INSERT INTO `hugonggongzi` VALUES (221,'2022-05-09 08:08:24','2022-05-09','护工工号1','护工姓名1','性别1',1,1,1,1,1,1,1,1,'工资备注1'),(222,'2022-05-09 08:08:24','2022-05-09','护工工号2','护工姓名2','性别2',2,2,2,2,2,2,2,2,'工资备注2'),(223,'2022-05-09 08:08:24','2022-05-09','护工工号3','护工姓名3','性别3',3,3,3,3,3,3,3,3,'工资备注3'),(224,'2022-05-09 08:08:24','2022-05-09','护工工号4','护工姓名4','性别4',4,4,4,4,4,4,4,4,'工资备注4'),(225,'2022-05-09 08:08:24','2022-05-09','护工工号5','护工姓名5','性别5',5,5,5,5,5,5,5,5,'工资备注5'),(226,'2022-05-09 08:08:24','2022-05-09','护工工号6','护工姓名6','性别6',6,6,6,6,6,6,6,6,'工资备注6');
/*!40000 ALTER TABLE `hugonggongzi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huliqingkuang`
--

DROP TABLE IF EXISTS `huliqingkuang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huliqingkuang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ruzhubianhao` varchar(200) DEFAULT NULL COMMENT '入住编号',
  `laorenxingming` varchar(200) DEFAULT NULL COMMENT '老人姓名',
  `laorenzhaopian` varchar(200) DEFAULT NULL COMMENT '老人照片',
  `jiashuzhanghao` varchar(200) DEFAULT NULL COMMENT '家属账号',
  `jiashuxingming` varchar(200) DEFAULT NULL COMMENT '家属姓名',
  `hugonggonghao` varchar(200) DEFAULT NULL COMMENT '护工工号',
  `hugongxingming` varchar(200) DEFAULT NULL COMMENT '护工姓名',
  `pingjia` int(11) NOT NULL COMMENT '评价',
  `pingjianeirong` longtext COMMENT '评价内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=utf8 COMMENT='护理情况';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huliqingkuang`
--

LOCK TABLES `huliqingkuang` WRITE;
/*!40000 ALTER TABLE `huliqingkuang` DISABLE KEYS */;
INSERT INTO `huliqingkuang` VALUES (241,'2022-05-09 08:08:24','入住编号1','老人姓名1','upload/huliqingkuang_laorenzhaopian1.jpg','家属账号1','家属姓名1','护工工号1','护工姓名1',5,'评价内容1'),(242,'2022-05-09 08:08:24','入住编号2','老人姓名2','upload/huliqingkuang_laorenzhaopian2.jpg','家属账号2','家属姓名2','护工工号2','护工姓名2',5,'评价内容2'),(243,'2022-05-09 08:08:24','入住编号3','老人姓名3','upload/huliqingkuang_laorenzhaopian3.jpg','家属账号3','家属姓名3','护工工号3','护工姓名3',5,'评价内容3'),(244,'2022-05-09 08:08:24','入住编号4','老人姓名4','upload/huliqingkuang_laorenzhaopian4.jpg','家属账号4','家属姓名4','护工工号4','护工姓名4',5,'评价内容4'),(245,'2022-05-09 08:08:24','入住编号5','老人姓名5','upload/huliqingkuang_laorenzhaopian5.jpg','家属账号5','家属姓名5','护工工号5','护工姓名5',5,'评价内容5'),(246,'2022-05-09 08:08:24','入住编号6','老人姓名6','upload/huliqingkuang_laorenzhaopian6.jpg','家属账号6','家属姓名6','护工工号6','护工姓名6',5,'评价内容6');
/*!40000 ALTER TABLE `huliqingkuang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiashu`
--

DROP TABLE IF EXISTS `jiashu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiashu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiashuzhanghao` varchar(200) NOT NULL COMMENT '家属账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiashuxingming` varchar(200) DEFAULT NULL COMMENT '家属姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `jiashushouji` varchar(200) DEFAULT NULL COMMENT '家属手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `jiatingzhuzhi` varchar(200) DEFAULT NULL COMMENT '家庭住址',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiashuzhanghao` (`jiashuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='家属';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiashu`
--

LOCK TABLES `jiashu` WRITE;
/*!40000 ALTER TABLE `jiashu` DISABLE KEYS */;
INSERT INTO `jiashu` VALUES (21,'2022-05-09 08:08:23','家属账号1','123456','家属姓名1','男','13823888881','440300199101010001','家庭住址1','upload/jiashu_touxiang1.jpg'),(22,'2022-05-09 08:08:23','家属账号2','123456','家属姓名2','男','13823888882','440300199202020002','家庭住址2','upload/jiashu_touxiang2.jpg'),(23,'2022-05-09 08:08:23','家属账号3','123456','家属姓名3','男','13823888883','440300199303030003','家庭住址3','upload/jiashu_touxiang3.jpg'),(24,'2022-05-09 08:08:23','家属账号4','123456','家属姓名4','男','13823888884','440300199404040004','家庭住址4','upload/jiashu_touxiang4.jpg'),(25,'2022-05-09 08:08:23','家属账号5','123456','家属姓名5','男','13823888885','440300199505050005','家庭住址5','upload/jiashu_touxiang5.jpg'),(26,'2022-05-09 08:08:23','家属账号6','123456','家属姓名6','男','13823888886','440300199606060006','家庭住址6','upload/jiashu_touxiang6.jpg');
/*!40000 ALTER TABLE `jiashu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laorendangan`
--

DROP TABLE IF EXISTS `laorendangan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `laorendangan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ruzhubianhao` varchar(200) DEFAULT NULL COMMENT '入住编号',
  `laorenxingming` varchar(200) DEFAULT NULL COMMENT '老人姓名',
  `laorenxingbie` varchar(200) DEFAULT NULL COMMENT '老人性别',
  `laorenzhaopian` varchar(200) DEFAULT NULL COMMENT '老人照片',
  `jiashuzhanghao` varchar(200) DEFAULT NULL COMMENT '家属账号',
  `shenghuoxiguan` longtext COMMENT '生活习惯',
  `xingquaihao` longtext COMMENT '兴趣爱好',
  `jiwangbingshi` longtext COMMENT '既往病史',
  `xingweinengli` longtext COMMENT '行为能力',
  `jinjiwupin` longtext COMMENT '禁忌物品',
  `dengjishijian` datetime DEFAULT NULL COMMENT '登记时间',
  `hugonggonghao` varchar(200) DEFAULT NULL COMMENT '护工工号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='老人档案';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laorendangan`
--

LOCK TABLES `laorendangan` WRITE;
/*!40000 ALTER TABLE `laorendangan` DISABLE KEYS */;
INSERT INTO `laorendangan` VALUES (71,'2022-05-09 08:08:23','入住编号1','老人姓名1','老人性别1','upload/laorendangan_laorenzhaopian1.jpg','家属账号1','生活习惯1','兴趣爱好1','既往病史1','行为能力1','禁忌物品1','2022-05-09 16:08:23','护工工号1'),(72,'2022-05-09 08:08:23','入住编号2','老人姓名2','老人性别2','upload/laorendangan_laorenzhaopian2.jpg','家属账号2','生活习惯2','兴趣爱好2','既往病史2','行为能力2','禁忌物品2','2022-05-09 16:08:23','护工工号2'),(73,'2022-05-09 08:08:23','入住编号3','老人姓名3','老人性别3','upload/laorendangan_laorenzhaopian3.jpg','家属账号3','生活习惯3','兴趣爱好3','既往病史3','行为能力3','禁忌物品3','2022-05-09 16:08:23','护工工号3'),(74,'2022-05-09 08:08:23','入住编号4','老人姓名4','老人性别4','upload/laorendangan_laorenzhaopian4.jpg','家属账号4','生活习惯4','兴趣爱好4','既往病史4','行为能力4','禁忌物品4','2022-05-09 16:08:23','护工工号4'),(75,'2022-05-09 08:08:23','入住编号5','老人姓名5','老人性别5','upload/laorendangan_laorenzhaopian5.jpg','家属账号5','生活习惯5','兴趣爱好5','既往病史5','行为能力5','禁忌物品5','2022-05-09 16:08:23','护工工号5'),(76,'2022-05-09 08:08:23','入住编号6','老人姓名6','老人性别6','upload/laorendangan_laorenzhaopian6.jpg','家属账号6','生活习惯6','兴趣爱好6','既往病史6','行为能力6','禁忌物品6','2022-05-09 16:08:23','护工工号6');
/*!40000 ALTER TABLE `laorendangan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laorenruzhu`
--

DROP TABLE IF EXISTS `laorenruzhu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `laorenruzhu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ruzhubianhao` varchar(200) DEFAULT NULL COMMENT '入住编号',
  `fangjianhao` varchar(200) DEFAULT NULL COMMENT '房间号',
  `loufangmingcheng` varchar(200) DEFAULT NULL COMMENT '楼房名称',
  `chuangweihao` varchar(200) DEFAULT NULL COMMENT '床位号',
  `laorenxingming` varchar(200) DEFAULT NULL COMMENT '老人姓名',
  `laorenzhaopian` varchar(200) DEFAULT NULL COMMENT '老人照片',
  `laorenxingbie` varchar(200) DEFAULT NULL COMMENT '老人性别',
  `laorennianling` varchar(200) DEFAULT NULL COMMENT '老人年龄',
  `jiashuzhanghao` varchar(200) DEFAULT NULL COMMENT '家属账号',
  `jiashuxingming` varchar(200) DEFAULT NULL COMMENT '家属姓名',
  `jiashushouji` varchar(200) DEFAULT NULL COMMENT '家属手机',
  `guanxi` varchar(200) DEFAULT NULL COMMENT '关系',
  `hugonggonghao` varchar(200) DEFAULT NULL COMMENT '护工工号',
  `hugongxingming` varchar(200) DEFAULT NULL COMMENT '护工姓名',
  `ruzhushijian` date DEFAULT NULL COMMENT '入住时间',
  `tuifangzhuangtai` varchar(200) DEFAULT NULL COMMENT '退房状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ruzhubianhao` (`ruzhubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='老人入住';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laorenruzhu`
--

LOCK TABLES `laorenruzhu` WRITE;
/*!40000 ALTER TABLE `laorenruzhu` DISABLE KEYS */;
INSERT INTO `laorenruzhu` VALUES (61,'2022-05-09 08:08:23','1111111111','房间号1','楼房名称1','床位号1','老人姓名1','upload/laorenruzhu_laorenzhaopian1.jpg','男','老人年龄1','家属账号1','家属姓名1','家属手机1','关系1','护工工号1','护工姓名1','2022-05-09','已退房'),(62,'2022-05-09 08:08:23','2222222222','房间号2','楼房名称2','床位号2','老人姓名2','upload/laorenruzhu_laorenzhaopian2.jpg','男','老人年龄2','家属账号2','家属姓名2','家属手机2','关系2','护工工号2','护工姓名2','2022-05-09','已退房'),(63,'2022-05-09 08:08:23','3333333333','房间号3','楼房名称3','床位号3','老人姓名3','upload/laorenruzhu_laorenzhaopian3.jpg','男','老人年龄3','家属账号3','家属姓名3','家属手机3','关系3','护工工号3','护工姓名3','2022-05-09','已退房'),(64,'2022-05-09 08:08:23','4444444444','房间号4','楼房名称4','床位号4','老人姓名4','upload/laorenruzhu_laorenzhaopian4.jpg','男','老人年龄4','家属账号4','家属姓名4','家属手机4','关系4','护工工号4','护工姓名4','2022-05-09','已退房'),(65,'2022-05-09 08:08:23','5555555555','房间号5','楼房名称5','床位号5','老人姓名5','upload/laorenruzhu_laorenzhaopian5.jpg','男','老人年龄5','家属账号5','家属姓名5','家属手机5','关系5','护工工号5','护工姓名5','2022-05-09','已退房'),(66,'2022-05-09 08:08:23','6666666666','房间号6','楼房名称6','床位号6','老人姓名6','upload/laorenruzhu_laorenzhaopian6.jpg','男','老人年龄6','家属账号6','家属姓名6','家属手机6','关系6','护工工号6','护工姓名6','2022-05-09','已退房');
/*!40000 ALTER TABLE `laorenruzhu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loufangziliao`
--

DROP TABLE IF EXISTS `loufangziliao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loufangziliao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `loufangmingcheng` varchar(200) DEFAULT NULL COMMENT '楼房名称',
  `zhandimianji` varchar(200) DEFAULT NULL COMMENT '占地面积',
  `zhuangxiuchengdu` varchar(200) DEFAULT NULL COMMENT '装修程度',
  `xiangqing` longtext COMMENT '详情',
  `jianlishijian` datetime DEFAULT NULL COMMENT '建立时间',
  `loufangtupian` varchar(200) DEFAULT NULL COMMENT '楼房图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='楼房资料';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loufangziliao`
--

LOCK TABLES `loufangziliao` WRITE;
/*!40000 ALTER TABLE `loufangziliao` DISABLE KEYS */;
INSERT INTO `loufangziliao` VALUES (31,'2022-05-09 08:08:23','楼房名称1','占地面积1','装修程度1','详情1','2022-05-09 16:08:23','upload/loufangziliao_loufangtupian1.jpg'),(32,'2022-05-09 08:08:23','楼房名称2','占地面积2','装修程度2','详情2','2022-05-09 16:08:23','upload/loufangziliao_loufangtupian2.jpg'),(33,'2022-05-09 08:08:23','楼房名称3','占地面积3','装修程度3','详情3','2022-05-09 16:08:23','upload/loufangziliao_loufangtupian3.jpg'),(34,'2022-05-09 08:08:23','楼房名称4','占地面积4','装修程度4','详情4','2022-05-09 16:08:23','upload/loufangziliao_loufangtupian4.jpg'),(35,'2022-05-09 08:08:23','楼房名称5','占地面积5','装修程度5','详情5','2022-05-09 16:08:23','upload/loufangziliao_loufangtupian5.jpg'),(36,'2022-05-09 08:08:23','楼房名称6','占地面积6','装修程度6','详情6','2022-05-09 16:08:23','upload/loufangziliao_loufangtupian6.jpg');
/*!40000 ALTER TABLE `loufangziliao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `richangjiaofei`
--

DROP TABLE IF EXISTS `richangjiaofei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `richangjiaofei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ruzhubianhao` varchar(200) DEFAULT NULL COMMENT '入住编号',
  `laorenxingming` varchar(200) DEFAULT NULL COMMENT '老人姓名',
  `jiashuzhanghao` varchar(200) DEFAULT NULL COMMENT '家属账号',
  `jiaofeibiaoti` varchar(200) DEFAULT NULL COMMENT '缴费标题',
  `jiaofeineirong` varchar(200) DEFAULT NULL COMMENT '缴费内容',
  `jiaofeijine` float NOT NULL COMMENT '缴费金额',
  `dengjishijian` datetime DEFAULT NULL COMMENT '登记时间',
  `pingzheng` varchar(200) DEFAULT NULL COMMENT '凭证',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8 COMMENT='日常缴费';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `richangjiaofei`
--

LOCK TABLES `richangjiaofei` WRITE;
/*!40000 ALTER TABLE `richangjiaofei` DISABLE KEYS */;
INSERT INTO `richangjiaofei` VALUES (201,'2022-05-09 08:08:24','入住编号1','老人姓名1','家属账号1','缴费标题1','缴费内容1',1,'2022-05-09 16:08:24','upload/richangjiaofei_pingzheng1.jpg','未支付'),(202,'2022-05-09 08:08:24','入住编号2','老人姓名2','家属账号2','缴费标题2','缴费内容2',2,'2022-05-09 16:08:24','upload/richangjiaofei_pingzheng2.jpg','未支付'),(203,'2022-05-09 08:08:24','入住编号3','老人姓名3','家属账号3','缴费标题3','缴费内容3',3,'2022-05-09 16:08:24','upload/richangjiaofei_pingzheng3.jpg','未支付'),(204,'2022-05-09 08:08:24','入住编号4','老人姓名4','家属账号4','缴费标题4','缴费内容4',4,'2022-05-09 16:08:24','upload/richangjiaofei_pingzheng4.jpg','未支付'),(205,'2022-05-09 08:08:24','入住编号5','老人姓名5','家属账号5','缴费标题5','缴费内容5',5,'2022-05-09 16:08:24','upload/richangjiaofei_pingzheng5.jpg','未支付'),(206,'2022-05-09 08:08:24','入住编号6','老人姓名6','家属账号6','缴费标题6','缴费内容6',6,'2022-05-09 16:08:24','upload/richangjiaofei_pingzheng6.jpg','未支付');
/*!40000 ALTER TABLE `richangjiaofei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shentizhuangkuang`
--

DROP TABLE IF EXISTS `shentizhuangkuang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shentizhuangkuang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiashuzhanghao` varchar(200) DEFAULT NULL COMMENT '家属账号',
  `laorenxingming` varchar(200) DEFAULT NULL COMMENT '老人姓名',
  `laorenxingbie` varchar(200) DEFAULT NULL COMMENT '老人性别',
  `laorennianling` varchar(200) DEFAULT NULL COMMENT '老人年龄',
  `laorenzhaopian` varchar(200) DEFAULT NULL COMMENT '老人照片',
  `tiwen` varchar(200) DEFAULT NULL COMMENT '体温',
  `xueya` varchar(200) DEFAULT NULL COMMENT '血压',
  `xintiao` varchar(200) DEFAULT NULL COMMENT '心跳',
  `jianyi` longtext COMMENT '建议',
  `tianjiashijian` date DEFAULT NULL COMMENT '添加时间',
  `hugonggonghao` varchar(200) DEFAULT NULL COMMENT '护工工号',
  `hugongxingming` varchar(200) DEFAULT NULL COMMENT '护工姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='身体状况';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shentizhuangkuang`
--

LOCK TABLES `shentizhuangkuang` WRITE;
/*!40000 ALTER TABLE `shentizhuangkuang` DISABLE KEYS */;
INSERT INTO `shentizhuangkuang` VALUES (81,'2022-05-09 08:08:23','家属账号1','老人姓名1','老人性别1','老人年龄1','upload/shentizhuangkuang_laorenzhaopian1.jpg','体温1','血压1','心跳1','建议1','2022-05-09','护工工号1','护工姓名1'),(82,'2022-05-09 08:08:23','家属账号2','老人姓名2','老人性别2','老人年龄2','upload/shentizhuangkuang_laorenzhaopian2.jpg','体温2','血压2','心跳2','建议2','2022-05-09','护工工号2','护工姓名2'),(83,'2022-05-09 08:08:23','家属账号3','老人姓名3','老人性别3','老人年龄3','upload/shentizhuangkuang_laorenzhaopian3.jpg','体温3','血压3','心跳3','建议3','2022-05-09','护工工号3','护工姓名3'),(84,'2022-05-09 08:08:23','家属账号4','老人姓名4','老人性别4','老人年龄4','upload/shentizhuangkuang_laorenzhaopian4.jpg','体温4','血压4','心跳4','建议4','2022-05-09','护工工号4','护工姓名4'),(85,'2022-05-09 08:08:23','家属账号5','老人姓名5','老人性别5','老人年龄5','upload/shentizhuangkuang_laorenzhaopian5.jpg','体温5','血压5','心跳5','建议5','2022-05-09','护工工号5','护工姓名5'),(86,'2022-05-09 08:08:23','家属账号6','老人姓名6','老人性别6','老人年龄6','upload/shentizhuangkuang_laorenzhaopian6.jpg','体温6','血压6','心跳6','建议6','2022-05-09','护工工号6','护工姓名6');
/*!40000 ALTER TABLE `shentizhuangkuang` ENABLE KEYS */;
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
INSERT INTO `token` VALUES (1,22,'家属账号2','jiashu','家属','ei2z23m5szmb0ikyv1up02jnp4c0swd7','2022-05-09 08:10:44','2022-05-09 09:10:44');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tuifangdengji`
--

DROP TABLE IF EXISTS `tuifangdengji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tuifangdengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangjianhao` varchar(200) DEFAULT NULL COMMENT '房间号',
  `loufangmingcheng` varchar(200) DEFAULT NULL COMMENT '楼房名称',
  `chuangweihao` varchar(200) DEFAULT NULL COMMENT '床位号',
  `ruzhubianhao` varchar(200) DEFAULT NULL COMMENT '入住编号',
  `laorenxingming` varchar(200) DEFAULT NULL COMMENT '老人姓名',
  `laorenzhaopian` varchar(200) DEFAULT NULL COMMENT '老人照片',
  `jiashuzhanghao` varchar(200) DEFAULT NULL COMMENT '家属账号',
  `jiashuxingming` varchar(200) DEFAULT NULL COMMENT '家属姓名',
  `hugonggonghao` varchar(200) DEFAULT NULL COMMENT '护工工号',
  `hugongxingming` varchar(200) DEFAULT NULL COMMENT '护工姓名',
  `ruzhushijian` varchar(200) DEFAULT NULL COMMENT '入住时间',
  `tuifangshijian` date DEFAULT NULL COMMENT '退房时间',
  `tuifangbeizhu` longtext COMMENT '退房备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8 COMMENT='退房登记';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tuifangdengji`
--

LOCK TABLES `tuifangdengji` WRITE;
/*!40000 ALTER TABLE `tuifangdengji` DISABLE KEYS */;
INSERT INTO `tuifangdengji` VALUES (181,'2022-05-09 08:08:24','房间号1','楼房名称1','床位号1','入住编号1','老人姓名1','upload/tuifangdengji_laorenzhaopian1.jpg','家属账号1','家属姓名1','护工工号1','护工姓名1','入住时间1','2022-05-09','退房备注1'),(182,'2022-05-09 08:08:24','房间号2','楼房名称2','床位号2','入住编号2','老人姓名2','upload/tuifangdengji_laorenzhaopian2.jpg','家属账号2','家属姓名2','护工工号2','护工姓名2','入住时间2','2022-05-09','退房备注2'),(183,'2022-05-09 08:08:24','房间号3','楼房名称3','床位号3','入住编号3','老人姓名3','upload/tuifangdengji_laorenzhaopian3.jpg','家属账号3','家属姓名3','护工工号3','护工姓名3','入住时间3','2022-05-09','退房备注3'),(184,'2022-05-09 08:08:24','房间号4','楼房名称4','床位号4','入住编号4','老人姓名4','upload/tuifangdengji_laorenzhaopian4.jpg','家属账号4','家属姓名4','护工工号4','护工姓名4','入住时间4','2022-05-09','退房备注4'),(185,'2022-05-09 08:08:24','房间号5','楼房名称5','床位号5','入住编号5','老人姓名5','upload/tuifangdengji_laorenzhaopian5.jpg','家属账号5','家属姓名5','护工工号5','护工姓名5','入住时间5','2022-05-09','退房备注5'),(186,'2022-05-09 08:08:24','房间号6','楼房名称6','床位号6','入住编号6','老人姓名6','upload/tuifangdengji_laorenzhaopian6.jpg','家属账号6','家属姓名6','护工工号6','护工姓名6','入住时间6','2022-05-09','退房备注6');
/*!40000 ALTER TABLE `tuifangdengji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tuifangfeiyong`
--

DROP TABLE IF EXISTS `tuifangfeiyong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tuifangfeiyong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ruzhubianhao` varchar(200) DEFAULT NULL COMMENT '入住编号',
  `laorenxingming` varchar(200) DEFAULT NULL COMMENT '老人姓名',
  `jiashuzhanghao` varchar(200) DEFAULT NULL COMMENT '家属账号',
  `jiashuxingming` varchar(200) DEFAULT NULL COMMENT '家属姓名',
  `laorenzhaopian` varchar(200) DEFAULT NULL COMMENT '老人照片',
  `ruzhufeiyong` float NOT NULL COMMENT '入住费用',
  `hulifeiyong` float NOT NULL COMMENT '护理费用',
  `qitafeiyong` float NOT NULL COMMENT '其他费用',
  `hejifeiyong` float DEFAULT NULL COMMENT '合计费用',
  `dengjishijian` datetime DEFAULT NULL COMMENT '登记时间',
  `shuoming` longtext COMMENT '说明',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8 COMMENT='退房费用';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tuifangfeiyong`
--

LOCK TABLES `tuifangfeiyong` WRITE;
/*!40000 ALTER TABLE `tuifangfeiyong` DISABLE KEYS */;
INSERT INTO `tuifangfeiyong` VALUES (211,'2022-05-09 08:08:24','入住编号1','老人姓名1','家属账号1','家属姓名1','upload/tuifangfeiyong_laorenzhaopian1.jpg',1,1,1,1,'2022-05-09 16:08:24','说明1','未支付'),(212,'2022-05-09 08:08:24','入住编号2','老人姓名2','家属账号2','家属姓名2','upload/tuifangfeiyong_laorenzhaopian2.jpg',2,2,2,2,'2022-05-09 16:08:24','说明2','未支付'),(213,'2022-05-09 08:08:24','入住编号3','老人姓名3','家属账号3','家属姓名3','upload/tuifangfeiyong_laorenzhaopian3.jpg',3,3,3,3,'2022-05-09 16:08:24','说明3','未支付'),(214,'2022-05-09 08:08:24','入住编号4','老人姓名4','家属账号4','家属姓名4','upload/tuifangfeiyong_laorenzhaopian4.jpg',4,4,4,4,'2022-05-09 16:08:24','说明4','未支付'),(215,'2022-05-09 08:08:24','入住编号5','老人姓名5','家属账号5','家属姓名5','upload/tuifangfeiyong_laorenzhaopian5.jpg',5,5,5,5,'2022-05-09 16:08:24','说明5','未支付'),(216,'2022-05-09 08:08:24','入住编号6','老人姓名6','家属账号6','家属姓名6','upload/tuifangfeiyong_laorenzhaopian6.jpg',6,6,6,6,'2022-05-09 16:08:24','说明6','未支付');
/*!40000 ALTER TABLE `tuifangfeiyong` ENABLE KEYS */;
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-05-09 08:08:24');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waichudengji`
--

DROP TABLE IF EXISTS `waichudengji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `waichudengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiashuzhanghao` varchar(200) DEFAULT NULL COMMENT '家属账号',
  `laorenxingming` varchar(200) DEFAULT NULL COMMENT '老人姓名',
  `laorenzhaopian` varchar(200) DEFAULT NULL COMMENT '老人照片',
  `hugonggonghao` varchar(200) DEFAULT NULL COMMENT '护工工号',
  `hugongxingming` varchar(200) DEFAULT NULL COMMENT '护工姓名',
  `waichudidian` varchar(200) NOT NULL COMMENT '外出地点',
  `waichushijian` datetime DEFAULT NULL COMMENT '外出时间',
  `huilaishijian` datetime DEFAULT NULL COMMENT '回来时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='外出登记';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waichudengji`
--

LOCK TABLES `waichudengji` WRITE;
/*!40000 ALTER TABLE `waichudengji` DISABLE KEYS */;
INSERT INTO `waichudengji` VALUES (111,'2022-05-09 08:08:23','家属账号1','老人姓名1','upload/waichudengji_laorenzhaopian1.jpg','护工工号1','护工姓名1','外出地点1','2022-05-09 16:08:23','2022-05-09 16:08:23'),(112,'2022-05-09 08:08:23','家属账号2','老人姓名2','upload/waichudengji_laorenzhaopian2.jpg','护工工号2','护工姓名2','外出地点2','2022-05-09 16:08:23','2022-05-09 16:08:23'),(113,'2022-05-09 08:08:23','家属账号3','老人姓名3','upload/waichudengji_laorenzhaopian3.jpg','护工工号3','护工姓名3','外出地点3','2022-05-09 16:08:23','2022-05-09 16:08:23'),(114,'2022-05-09 08:08:23','家属账号4','老人姓名4','upload/waichudengji_laorenzhaopian4.jpg','护工工号4','护工姓名4','外出地点4','2022-05-09 16:08:23','2022-05-09 16:08:23'),(115,'2022-05-09 08:08:23','家属账号5','老人姓名5','upload/waichudengji_laorenzhaopian5.jpg','护工工号5','护工姓名5','外出地点5','2022-05-09 16:08:23','2022-05-09 16:08:23'),(116,'2022-05-09 08:08:23','家属账号6','老人姓名6','upload/waichudengji_laorenzhaopian6.jpg','护工工号6','护工姓名6','外出地点6','2022-05-09 16:08:23','2022-05-09 16:08:23');
/*!40000 ALTER TABLE `waichudengji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wupinchuku`
--

DROP TABLE IF EXISTS `wupinchuku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wupinchuku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chukubianhao` varchar(200) DEFAULT NULL COMMENT '出库编号',
  `wupinbianhao` varchar(200) DEFAULT NULL COMMENT '物品编号',
  `wupinmingcheng` varchar(200) DEFAULT NULL COMMENT '物品名称',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `hugonggonghao` varchar(200) DEFAULT NULL COMMENT '护工工号',
  `hugongxingming` varchar(200) DEFAULT NULL COMMENT '护工姓名',
  `chukushijian` datetime DEFAULT NULL COMMENT '出库时间',
  `chukubeizhu` longtext COMMENT '出库备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `chukubianhao` (`chukubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8 COMMENT='物品出库';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wupinchuku`
--

LOCK TABLES `wupinchuku` WRITE;
/*!40000 ALTER TABLE `wupinchuku` DISABLE KEYS */;
INSERT INTO `wupinchuku` VALUES (171,'2022-05-09 08:08:23','1111111111','物品编号1','物品名称1',1,'护工工号1','护工姓名1','2022-05-09 16:08:23','出库备注1'),(172,'2022-05-09 08:08:23','2222222222','物品编号2','物品名称2',2,'护工工号2','护工姓名2','2022-05-09 16:08:23','出库备注2'),(173,'2022-05-09 08:08:23','3333333333','物品编号3','物品名称3',3,'护工工号3','护工姓名3','2022-05-09 16:08:23','出库备注3'),(174,'2022-05-09 08:08:23','4444444444','物品编号4','物品名称4',4,'护工工号4','护工姓名4','2022-05-09 16:08:23','出库备注4'),(175,'2022-05-09 08:08:23','5555555555','物品编号5','物品名称5',5,'护工工号5','护工姓名5','2022-05-09 16:08:23','出库备注5'),(176,'2022-05-09 08:08:23','6666666666','物品编号6','物品名称6',6,'护工工号6','护工姓名6','2022-05-09 16:08:23','出库备注6');
/*!40000 ALTER TABLE `wupinchuku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wupinruku`
--

DROP TABLE IF EXISTS `wupinruku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wupinruku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `rukubianhao` varchar(200) DEFAULT NULL COMMENT '入库编号',
  `wupinbianhao` varchar(200) DEFAULT NULL COMMENT '物品编号',
  `wupinmingcheng` varchar(200) DEFAULT NULL COMMENT '物品名称',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `hugonggonghao` varchar(200) DEFAULT NULL COMMENT '护工工号',
  `hugongxingming` varchar(200) DEFAULT NULL COMMENT '护工姓名',
  `rukushijian` datetime DEFAULT NULL COMMENT '入库时间',
  `rukubeizhu` longtext COMMENT '入库备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `rukubianhao` (`rukubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8 COMMENT='物品入库';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wupinruku`
--

LOCK TABLES `wupinruku` WRITE;
/*!40000 ALTER TABLE `wupinruku` DISABLE KEYS */;
INSERT INTO `wupinruku` VALUES (161,'2022-05-09 08:08:23','1111111111','物品编号1','物品名称1',1,'护工工号1','护工姓名1','2022-05-09 16:08:23','入库备注1'),(162,'2022-05-09 08:08:23','2222222222','物品编号2','物品名称2',2,'护工工号2','护工姓名2','2022-05-09 16:08:23','入库备注2'),(163,'2022-05-09 08:08:23','3333333333','物品编号3','物品名称3',3,'护工工号3','护工姓名3','2022-05-09 16:08:23','入库备注3'),(164,'2022-05-09 08:08:23','4444444444','物品编号4','物品名称4',4,'护工工号4','护工姓名4','2022-05-09 16:08:23','入库备注4'),(165,'2022-05-09 08:08:23','5555555555','物品编号5','物品名称5',5,'护工工号5','护工姓名5','2022-05-09 16:08:23','入库备注5'),(166,'2022-05-09 08:08:23','6666666666','物品编号6','物品名称6',6,'护工工号6','护工姓名6','2022-05-09 16:08:23','入库备注6');
/*!40000 ALTER TABLE `wupinruku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wupinxinxi`
--

DROP TABLE IF EXISTS `wupinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wupinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wupinbianhao` varchar(200) DEFAULT NULL COMMENT '物品编号',
  `wupinmingcheng` varchar(200) NOT NULL COMMENT '物品名称',
  `wupintupian` varchar(200) DEFAULT NULL COMMENT '物品图片',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `xinghao` varchar(200) DEFAULT NULL COMMENT '型号',
  `wupinshuoming` longtext COMMENT '物品说明',
  PRIMARY KEY (`id`),
  UNIQUE KEY `wupinbianhao` (`wupinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COMMENT='物品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wupinxinxi`
--

LOCK TABLES `wupinxinxi` WRITE;
/*!40000 ALTER TABLE `wupinxinxi` DISABLE KEYS */;
INSERT INTO `wupinxinxi` VALUES (151,'2022-05-09 08:08:23','1111111111','物品名称1','upload/wupinxinxi_wupintupian1.jpg','品牌1',1,'型号1','物品说明1'),(152,'2022-05-09 08:08:23','2222222222','物品名称2','upload/wupinxinxi_wupintupian2.jpg','品牌2',2,'型号2','物品说明2'),(153,'2022-05-09 08:08:23','3333333333','物品名称3','upload/wupinxinxi_wupintupian3.jpg','品牌3',3,'型号3','物品说明3'),(154,'2022-05-09 08:08:23','4444444444','物品名称4','upload/wupinxinxi_wupintupian4.jpg','品牌4',4,'型号4','物品说明4'),(155,'2022-05-09 08:08:23','5555555555','物品名称5','upload/wupinxinxi_wupintupian5.jpg','品牌5',5,'型号5','物品说明5'),(156,'2022-05-09 08:08:23','6666666666','物品名称6','upload/wupinxinxi_wupintupian6.jpg','品牌6',6,'型号6','物品说明6');
/*!40000 ALTER TABLE `wupinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yaopinchuku`
--

DROP TABLE IF EXISTS `yaopinchuku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yaopinchuku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chukubianhao` varchar(200) DEFAULT NULL COMMENT '出库编号',
  `yaopinbianhao` varchar(200) DEFAULT NULL COMMENT '药品编号',
  `yaopinmingcheng` varchar(200) DEFAULT NULL COMMENT '药品名称',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `hugonggonghao` varchar(200) DEFAULT NULL COMMENT '护工工号',
  `hugongxingming` varchar(200) DEFAULT NULL COMMENT '护工姓名',
  `chukushijian` datetime DEFAULT NULL COMMENT '出库时间',
  `chukubeizhu` longtext COMMENT '出库备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `chukubianhao` (`chukubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='药品出库';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaopinchuku`
--

LOCK TABLES `yaopinchuku` WRITE;
/*!40000 ALTER TABLE `yaopinchuku` DISABLE KEYS */;
INSERT INTO `yaopinchuku` VALUES (141,'2022-05-09 08:08:23','1111111111','药品编号1','药品名称1',1,'护工工号1','护工姓名1','2022-05-09 16:08:23','出库备注1'),(142,'2022-05-09 08:08:23','2222222222','药品编号2','药品名称2',2,'护工工号2','护工姓名2','2022-05-09 16:08:23','出库备注2'),(143,'2022-05-09 08:08:23','3333333333','药品编号3','药品名称3',3,'护工工号3','护工姓名3','2022-05-09 16:08:23','出库备注3'),(144,'2022-05-09 08:08:23','4444444444','药品编号4','药品名称4',4,'护工工号4','护工姓名4','2022-05-09 16:08:23','出库备注4'),(145,'2022-05-09 08:08:23','5555555555','药品编号5','药品名称5',5,'护工工号5','护工姓名5','2022-05-09 16:08:23','出库备注5'),(146,'2022-05-09 08:08:23','6666666666','药品编号6','药品名称6',6,'护工工号6','护工姓名6','2022-05-09 16:08:23','出库备注6');
/*!40000 ALTER TABLE `yaopinchuku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yaopinruku`
--

DROP TABLE IF EXISTS `yaopinruku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yaopinruku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `rukubianhao` varchar(200) DEFAULT NULL COMMENT '入库编号',
  `yaopinbianhao` varchar(200) DEFAULT NULL COMMENT '药品编号',
  `yaopinmingcheng` varchar(200) DEFAULT NULL COMMENT '药品名称',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `hugonggonghao` varchar(200) DEFAULT NULL COMMENT '护工工号',
  `hugongxingming` varchar(200) DEFAULT NULL COMMENT '护工姓名',
  `rukushijian` datetime DEFAULT NULL COMMENT '入库时间',
  `rukubeizhu` longtext COMMENT '入库备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `rukubianhao` (`rukubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='药品入库';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaopinruku`
--

LOCK TABLES `yaopinruku` WRITE;
/*!40000 ALTER TABLE `yaopinruku` DISABLE KEYS */;
INSERT INTO `yaopinruku` VALUES (131,'2022-05-09 08:08:23','1111111111','药品编号1','药品名称1',1,'护工工号1','护工姓名1','2022-05-09 16:08:23','入库备注1'),(132,'2022-05-09 08:08:23','2222222222','药品编号2','药品名称2',2,'护工工号2','护工姓名2','2022-05-09 16:08:23','入库备注2'),(133,'2022-05-09 08:08:23','3333333333','药品编号3','药品名称3',3,'护工工号3','护工姓名3','2022-05-09 16:08:23','入库备注3'),(134,'2022-05-09 08:08:23','4444444444','药品编号4','药品名称4',4,'护工工号4','护工姓名4','2022-05-09 16:08:23','入库备注4'),(135,'2022-05-09 08:08:23','5555555555','药品编号5','药品名称5',5,'护工工号5','护工姓名5','2022-05-09 16:08:23','入库备注5'),(136,'2022-05-09 08:08:23','6666666666','药品编号6','药品名称6',6,'护工工号6','护工姓名6','2022-05-09 16:08:23','入库备注6');
/*!40000 ALTER TABLE `yaopinruku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yaopinxinxi`
--

DROP TABLE IF EXISTS `yaopinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yaopinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yaopinbianhao` varchar(200) NOT NULL COMMENT '药品编号',
  `yaopinmingcheng` varchar(200) NOT NULL COMMENT '药品名称',
  `jixing` varchar(200) DEFAULT NULL COMMENT '剂型',
  `yaopinshuoming` longtext COMMENT '药品说明',
  `shengchandanwei` varchar(200) DEFAULT NULL COMMENT '生产单位',
  `yaopintupian` varchar(200) DEFAULT NULL COMMENT '药品图片',
  `yaopinjiage` float NOT NULL COMMENT '药品价格',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yaopinbianhao` (`yaopinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='药品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaopinxinxi`
--

LOCK TABLES `yaopinxinxi` WRITE;
/*!40000 ALTER TABLE `yaopinxinxi` DISABLE KEYS */;
INSERT INTO `yaopinxinxi` VALUES (121,'2022-05-09 08:08:23','1111111111','药品名称1','颗粒','药品说明1','生产单位1','upload/yaopinxinxi_yaopintupian1.jpg',1,1),(122,'2022-05-09 08:08:23','2222222222','药品名称2','颗粒','药品说明2','生产单位2','upload/yaopinxinxi_yaopintupian2.jpg',2,2),(123,'2022-05-09 08:08:23','3333333333','药品名称3','颗粒','药品说明3','生产单位3','upload/yaopinxinxi_yaopintupian3.jpg',3,3),(124,'2022-05-09 08:08:23','4444444444','药品名称4','颗粒','药品说明4','生产单位4','upload/yaopinxinxi_yaopintupian4.jpg',4,4),(125,'2022-05-09 08:08:23','5555555555','药品名称5','颗粒','药品说明5','生产单位5','upload/yaopinxinxi_yaopintupian5.jpg',5,5),(126,'2022-05-09 08:08:23','6666666666','药品名称6','颗粒','药品说明6','生产单位6','upload/yaopinxinxi_yaopintupian6.jpg',6,6);
/*!40000 ALTER TABLE `yaopinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yongyaoqingkuang`
--

DROP TABLE IF EXISTS `yongyaoqingkuang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yongyaoqingkuang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiashuzhanghao` varchar(200) DEFAULT NULL COMMENT '家属账号',
  `laorenxingming` varchar(200) DEFAULT NULL COMMENT '老人姓名',
  `laorenzhaopian` varchar(200) DEFAULT NULL COMMENT '老人照片',
  `yaopinmingcheng` varchar(200) DEFAULT NULL COMMENT '药品名称',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  `hugonggonghao` varchar(200) DEFAULT NULL COMMENT '护工工号',
  `hugongxingming` varchar(200) DEFAULT NULL COMMENT '护工姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='用药情况';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yongyaoqingkuang`
--

LOCK TABLES `yongyaoqingkuang` WRITE;
/*!40000 ALTER TABLE `yongyaoqingkuang` DISABLE KEYS */;
INSERT INTO `yongyaoqingkuang` VALUES (91,'2022-05-09 08:08:23','家属账号1','老人姓名1','upload/yongyaoqingkuang_laorenzhaopian1.jpg','药品名称1','2022-05-09','护工工号1','护工姓名1'),(92,'2022-05-09 08:08:23','家属账号2','老人姓名2','upload/yongyaoqingkuang_laorenzhaopian2.jpg','药品名称2','2022-05-09','护工工号2','护工姓名2'),(93,'2022-05-09 08:08:23','家属账号3','老人姓名3','upload/yongyaoqingkuang_laorenzhaopian3.jpg','药品名称3','2022-05-09','护工工号3','护工姓名3'),(94,'2022-05-09 08:08:23','家属账号4','老人姓名4','upload/yongyaoqingkuang_laorenzhaopian4.jpg','药品名称4','2022-05-09','护工工号4','护工姓名4'),(95,'2022-05-09 08:08:23','家属账号5','老人姓名5','upload/yongyaoqingkuang_laorenzhaopian5.jpg','药品名称5','2022-05-09','护工工号5','护工姓名5'),(96,'2022-05-09 08:08:23','家属账号6','老人姓名6','upload/yongyaoqingkuang_laorenzhaopian6.jpg','药品名称6','2022-05-09','护工工号6','护工姓名6');
/*!40000 ALTER TABLE `yongyaoqingkuang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yujiaofei`
--

DROP TABLE IF EXISTS `yujiaofei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yujiaofei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ruzhubianhao` varchar(200) DEFAULT NULL COMMENT '入住编号',
  `laorenxingming` varchar(200) DEFAULT NULL COMMENT '老人姓名',
  `jiashuzhanghao` varchar(200) DEFAULT NULL COMMENT '家属账号',
  `jiashuxingming` varchar(200) DEFAULT NULL COMMENT '家属姓名',
  `pingzheng` varchar(200) DEFAULT NULL COMMENT '凭证',
  `yujiaofei` float NOT NULL COMMENT '预交费',
  `shuoming` longtext COMMENT '说明',
  `dengjishijian` datetime DEFAULT NULL COMMENT '登记时间',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8 COMMENT='预交费';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yujiaofei`
--

LOCK TABLES `yujiaofei` WRITE;
/*!40000 ALTER TABLE `yujiaofei` DISABLE KEYS */;
INSERT INTO `yujiaofei` VALUES (191,'2022-05-09 08:08:24','入住编号1','老人姓名1','家属账号1','家属姓名1','upload/yujiaofei_pingzheng1.jpg',1,'说明1','2022-05-09 16:08:24','未支付'),(192,'2022-05-09 08:08:24','入住编号2','老人姓名2','家属账号2','家属姓名2','upload/yujiaofei_pingzheng2.jpg',2,'说明2','2022-05-09 16:08:24','未支付'),(193,'2022-05-09 08:08:24','入住编号3','老人姓名3','家属账号3','家属姓名3','upload/yujiaofei_pingzheng3.jpg',3,'说明3','2022-05-09 16:08:24','未支付'),(194,'2022-05-09 08:08:24','入住编号4','老人姓名4','家属账号4','家属姓名4','upload/yujiaofei_pingzheng4.jpg',4,'说明4','2022-05-09 16:08:24','未支付'),(195,'2022-05-09 08:08:24','入住编号5','老人姓名5','家属账号5','家属姓名5','upload/yujiaofei_pingzheng5.jpg',5,'说明5','2022-05-09 16:08:24','未支付'),(196,'2022-05-09 08:08:24','入住编号6','老人姓名6','家属账号6','家属姓名6','upload/yujiaofei_pingzheng6.jpg',6,'说明6','2022-05-09 16:08:24','未支付');
/*!40000 ALTER TABLE `yujiaofei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhuanfangdengji`
--

DROP TABLE IF EXISTS `zhuanfangdengji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhuanfangdengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiashuzhanghao` varchar(200) DEFAULT NULL COMMENT '家属账号',
  `fangjianhao` varchar(200) DEFAULT NULL COMMENT '房间号',
  `loufangmingcheng` varchar(200) DEFAULT NULL COMMENT '楼房名称',
  `ruzhubianhao` varchar(200) DEFAULT NULL COMMENT '入住编号',
  `laorenzhaopian` varchar(200) DEFAULT NULL COMMENT '老人照片',
  `laorenxingming` varchar(200) DEFAULT NULL COMMENT '老人姓名',
  `dengjishijian` date DEFAULT NULL COMMENT '登记时间',
  `xinfangjianhao` varchar(200) DEFAULT NULL COMMENT '新房间号',
  `hugonggonghao` varchar(200) DEFAULT NULL COMMENT '护工工号',
  `hugongxingming` varchar(200) DEFAULT NULL COMMENT '护工姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='转房登记';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhuanfangdengji`
--

LOCK TABLES `zhuanfangdengji` WRITE;
/*!40000 ALTER TABLE `zhuanfangdengji` DISABLE KEYS */;
INSERT INTO `zhuanfangdengji` VALUES (101,'2022-05-09 08:08:23','家属账号1','房间号1','楼房名称1','入住编号1','upload/zhuanfangdengji_laorenzhaopian1.jpg','老人姓名1','2022-05-09','新房间号1','护工工号1','护工姓名1'),(102,'2022-05-09 08:08:23','家属账号2','房间号2','楼房名称2','入住编号2','upload/zhuanfangdengji_laorenzhaopian2.jpg','老人姓名2','2022-05-09','新房间号2','护工工号2','护工姓名2'),(103,'2022-05-09 08:08:23','家属账号3','房间号3','楼房名称3','入住编号3','upload/zhuanfangdengji_laorenzhaopian3.jpg','老人姓名3','2022-05-09','新房间号3','护工工号3','护工姓名3'),(104,'2022-05-09 08:08:23','家属账号4','房间号4','楼房名称4','入住编号4','upload/zhuanfangdengji_laorenzhaopian4.jpg','老人姓名4','2022-05-09','新房间号4','护工工号4','护工姓名4'),(105,'2022-05-09 08:08:23','家属账号5','房间号5','楼房名称5','入住编号5','upload/zhuanfangdengji_laorenzhaopian5.jpg','老人姓名5','2022-05-09','新房间号5','护工工号5','护工姓名5'),(106,'2022-05-09 08:08:23','家属账号6','房间号6','楼房名称6','入住编号6','upload/zhuanfangdengji_laorenzhaopian6.jpg','老人姓名6','2022-05-09','新房间号6','护工工号6','护工姓名6');
/*!40000 ALTER TABLE `zhuanfangdengji` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-10 15:01:16
