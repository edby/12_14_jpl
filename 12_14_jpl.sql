﻿# Host: localhost  (Version: 5.5.53)
# Date: 2018-12-17 09:48:16
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "ddsc_admin"
#

DROP TABLE IF EXISTS `ddsc_admin`;
CREATE TABLE `ddsc_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `pretime` datetime DEFAULT NULL,
  `curtime` datetime DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL COMMENT '登录IP',
  `level` int(11) NOT NULL DEFAULT '0' COMMENT '管理员类型 0超级管理员 1普通管理员',
  `control` text COMMENT '控制器权限',
  `way` text COMMENT '方法',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "ddsc_admin"
#

/*!40000 ALTER TABLE `ddsc_admin` DISABLE KEYS */;
INSERT INTO `ddsc_admin` VALUES (1,'admin','8a30ec6807f71bc69d096d8e4d501ade','2018-12-14 16:59:25','2018-12-17 09:14:19','0.0.0.0',0,NULL,NULL),(4,'王鹏飞','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,NULL,1,'1,4','2,3,5,6');
/*!40000 ALTER TABLE `ddsc_admin` ENABLE KEYS */;

#
# Structure for table "ddsc_carte"
#

DROP TABLE IF EXISTS `ddsc_carte`;
CREATE TABLE `ddsc_carte` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(255) DEFAULT NULL COMMENT '模块名称',
  `c_modul` varchar(255) DEFAULT NULL COMMENT '控制器',
  `c_icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `pid` int(11) DEFAULT NULL COMMENT '上级id',
  `c_sort` int(11) NOT NULL DEFAULT '50' COMMENT '排序',
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

#
# Data for table "ddsc_carte"
#

/*!40000 ALTER TABLE `ddsc_carte` DISABLE KEYS */;
INSERT INTO `ddsc_carte` VALUES (1,'网站设置','Sys','fa-desktop',0,1),(2,'基本信息','seting','',1,50),(3,'网站优化','seo','',1,50),(4,'广告图管理','Lb','fa-picture-o',0,3),(5,'图片列表','lister','',4,50),(6,'广告位','place','',4,50),(13,'菜单管理','Carte','fa-reorder',0,2),(14,'后台模板','lister','',13,50),(15,'数据库管理','Sql','fa-file-text-o',0,50),(16,'管理员管理','User','fa-user',0,4),(17,'管理员列表','lister','',16,50),(18,'备份列表','lister','',15,50),(19,'会员管理','Member','fa-address-book-o',0,50),(20,'会员列表','lister','',19,50);
/*!40000 ALTER TABLE `ddsc_carte` ENABLE KEYS */;

#
# Structure for table "ddsc_lb"
#

DROP TABLE IF EXISTS `ddsc_lb`;
CREATE TABLE `ddsc_lb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) DEFAULT NULL COMMENT '父类id',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态0关闭 1开启',
  `url` varchar(255) DEFAULT NULL,
  `desc` text COMMENT '简介',
  `image` varchar(255) DEFAULT NULL COMMENT '图片',
  `thumb` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='广告列表';

#
# Data for table "ddsc_lb"
#

/*!40000 ALTER TABLE `ddsc_lb` DISABLE KEYS */;
INSERT INTO `ddsc_lb` VALUES (16,1,'测试',50,1,'','','/uploads/20181213/da04ad298ea97397fc62846de906b4d3.jpg','uploads/thumb/5c122b1d8e3bd.jpg');
/*!40000 ALTER TABLE `ddsc_lb` ENABLE KEYS */;

#
# Structure for table "ddsc_lb_place"
#

DROP TABLE IF EXISTS `ddsc_lb_place`;
CREATE TABLE `ddsc_lb_place` (
  `pl_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '轮播id',
  `pl_name` varchar(255) DEFAULT NULL COMMENT '位置名称',
  PRIMARY KEY (`pl_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='广告位';

#
# Data for table "ddsc_lb_place"
#

/*!40000 ALTER TABLE `ddsc_lb_place` DISABLE KEYS */;
INSERT INTO `ddsc_lb_place` VALUES (1,'友情链接');
/*!40000 ALTER TABLE `ddsc_lb_place` ENABLE KEYS */;

#
# Structure for table "ddsc_seo"
#

DROP TABLE IF EXISTS `ddsc_seo`;
CREATE TABLE `ddsc_seo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '首页标题',
  `keywords` varchar(255) DEFAULT NULL COMMENT 'seo关键词',
  `description` text COMMENT 'seo描述',
  `copy` text COMMENT '版权信息',
  `code` text COMMENT '统计代码',
  `support` varchar(255) DEFAULT NULL COMMENT '技术支持',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='网站优化';

#
# Data for table "ddsc_seo"
#

/*!40000 ALTER TABLE `ddsc_seo` DISABLE KEYS */;
INSERT INTO `ddsc_seo` VALUES (1,'测试8','','','','','');
/*!40000 ALTER TABLE `ddsc_seo` ENABLE KEYS */;

#
# Structure for table "ddsc_sql"
#

DROP TABLE IF EXISTS `ddsc_sql`;
CREATE TABLE `ddsc_sql` (
  `sql_id` int(11) NOT NULL AUTO_INCREMENT,
  `sql_name` varchar(255) DEFAULT NULL,
  `create_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sql_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='数据库备份';

#
# Data for table "ddsc_sql"
#

/*!40000 ALTER TABLE `ddsc_sql` DISABLE KEYS */;
/*!40000 ALTER TABLE `ddsc_sql` ENABLE KEYS */;

#
# Structure for table "ddsc_sys"
#

DROP TABLE IF EXISTS `ddsc_sys`;
CREATE TABLE `ddsc_sys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '公司名称',
  `username` varchar(255) DEFAULT NULL COMMENT '负责人',
  `url` varchar(255) DEFAULT NULL COMMENT '网站域名',
  `qq` char(20) DEFAULT NULL COMMENT '客服QQ',
  `icp` varchar(255) DEFAULT NULL COMMENT 'icp备案号',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `tel` varchar(255) DEFAULT NULL COMMENT '固定电话',
  `phone` char(11) DEFAULT NULL COMMENT '手机号码',
  `longs` varchar(255) DEFAULT NULL COMMENT '经度',
  `lats` varchar(255) DEFAULT NULL COMMENT '纬度',
  `addr` varchar(255) DEFAULT NULL COMMENT '公司地址',
  `content` text COMMENT '公司简介',
  `pclogo` varchar(255) DEFAULT NULL COMMENT '电脑端logo',
  `waplogo` varchar(255) DEFAULT NULL COMMENT '手机端logo',
  `qrcode` varchar(255) DEFAULT NULL COMMENT '微信二维码',
  `wx` varchar(255) DEFAULT NULL COMMENT '微信公众号',
  `fax` varchar(255) DEFAULT NULL COMMENT '公司传真',
  `telphone` varchar(255) DEFAULT NULL COMMENT '400电话',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='网站基本信息';

#
# Data for table "ddsc_sys"
#

/*!40000 ALTER TABLE `ddsc_sys` DISABLE KEYS */;
INSERT INTO `ddsc_sys` VALUES (1,'金柏丽创业联盟平台','admin','','','','','','','','','','',NULL,NULL,NULL,NULL,'','');
/*!40000 ALTER TABLE `ddsc_sys` ENABLE KEYS */;

#
# Structure for table "ddsc_sys_log"
#

DROP TABLE IF EXISTS `ddsc_sys_log`;
CREATE TABLE `ddsc_sys_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL COMMENT '类型',
  `time` datetime DEFAULT NULL COMMENT '操作时间',
  `admin` varchar(255) DEFAULT NULL COMMENT '操作账号',
  `ip` varchar(255) DEFAULT NULL COMMENT 'IP地址',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='系统日志';

#
# Data for table "ddsc_sys_log"
#

/*!40000 ALTER TABLE `ddsc_sys_log` DISABLE KEYS */;
INSERT INTO `ddsc_sys_log` VALUES (1,'后台登录','2018-11-28 18:01:28','admin','127.0.0.1'),(2,'后台登录','2018-11-29 08:54:20','admin','0.0.0.0'),(3,'后台登录','2018-11-29 09:26:17','admin','0.0.0.0'),(4,'后台登录','2018-11-30 14:04:09','admin','0.0.0.0'),(5,'后台登录','2018-11-30 14:55:34','admin','0.0.0.0'),(6,'后台登录','2018-11-30 15:13:35','admin','0.0.0.0'),(9,'添加店铺','2018-11-30 16:23:01','admin','0.0.0.0'),(10,'添加店铺','2018-11-30 16:24:23','admin','0.0.0.0'),(11,'添加店铺','2018-11-30 16:34:47','admin','0.0.0.0'),(12,'添加店铺','2018-11-30 17:21:59','admin','0.0.0.0'),(13,'添加店铺','2018-11-30 17:31:44','admin','0.0.0.0'),(14,'后台登录','2018-12-03 08:53:45','admin','0.0.0.0'),(15,'后台登录','2018-12-05 09:26:53','admin','0.0.0.0'),(16,'后台登录','2018-12-06 10:24:36','admin','0.0.0.0'),(17,'后台登录','2018-12-06 16:36:20','admin','0.0.0.0'),(18,'后台登录','2018-12-08 10:00:30','admin','0.0.0.0'),(19,'后台登录','2018-12-10 09:22:04','admin','0.0.0.0'),(20,'后台登录','2018-12-10 18:05:06','admin','0.0.0.0'),(21,'后台登录','2018-12-11 11:37:45','admin','0.0.0.0'),(22,'后台登录','2018-12-11 11:46:40','admin','0.0.0.0'),(23,'后台登录','2018-12-11 11:58:25','admin','0.0.0.0'),(24,'后台登录','2018-12-12 10:32:58','admin','0.0.0.0'),(25,'后台登录','2018-12-13 08:53:34','admin','0.0.0.0'),(26,'后台登录','2018-12-13 11:00:21','王鹏飞','0.0.0.0'),(27,'后台登录','2018-12-14 08:54:17','admin','0.0.0.0'),(28,'后台登录','2018-12-14 14:42:46','admin','0.0.0.0'),(29,'后台登录','2018-12-14 16:57:58','admin','0.0.0.0'),(30,'后台登录','2018-12-14 16:59:25','admin','0.0.0.0'),(31,'后台登录','2018-12-17 09:14:19','admin','0.0.0.0');
/*!40000 ALTER TABLE `ddsc_sys_log` ENABLE KEYS */;

#
# Structure for table "ddsc_user"
#

DROP TABLE IF EXISTS `ddsc_user`;
CREATE TABLE `ddsc_user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '会员id',
  `u_code` char(8) DEFAULT NULL COMMENT '会员编码',
  `u_name` varchar(255) DEFAULT NULL COMMENT '会员名',
  `u_wx` varchar(255) DEFAULT NULL COMMENT '微信号',
  `u_alipay` varchar(255) DEFAULT NULL COMMENT '支付宝号',
  `u_phone` char(11) DEFAULT NULL COMMENT '手机号码',
  `u_pwd` char(32) DEFAULT NULL COMMENT '登录密码',
  `u_pwds` char(32) DEFAULT NULL COMMENT '二级密码',
  `pid` int(11) DEFAULT NULL COMMENT '推荐人id',
  `u_status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否激活 0否 1是',
  `u_ztime` varchar(255) DEFAULT NULL COMMENT '注册时间',
  `u_jtime` varchar(255) DEFAULT NULL COMMENT '激活时间',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='会员列表';

#
# Data for table "ddsc_user"
#

/*!40000 ALTER TABLE `ddsc_user` DISABLE KEYS */;
INSERT INTO `ddsc_user` VALUES (37,'123456','王鹏飞','15939590207','15939590207','15939590207','15939590207','15939590207',1,0,'1541831843','1541831843'),(38,'123456','王鹏飞','15939590207','15939590207','15939590207','15939590207','15939590207',1,0,'1541831843','1541831843'),(39,'123456','王鹏飞','15939590207','15939590207','15939590207','15939590207','15939590207',1,0,'1541831843','1541831843'),(40,'123456','王鹏飞','15939590207','15939590207','15939590207','15939590207','15939590207',1,0,'1541831843','1541831843'),(41,'123456','王鹏飞','15939590207','15939590207','15939590207','15939590207','15939590207',1,0,'1541831843','1541831843'),(42,'123456','王鹏飞','15939590207','15939590207','15939590207','15939590207','15939590207',1,0,'1541831843','1541831843'),(43,'123456','王鹏飞','15939590207','15939590207','15939590207','15939590207','15939590207',1,0,'1541831843','1541831843'),(44,'123456','王鹏飞','15939590207','15939590207','15939590207','15939590207','15939590207',1,0,'1541831843','1541831843'),(45,'123456','王鹏飞','15939590207','15939590207','15939590207','15939590207','15939590207',1,0,'1541831843','1541831843'),(46,'123456','王鹏飞','15939590207','15939590207','15939590207','15939590207','15939590207',1,0,'1541831843','1541831843'),(47,'123456','王鹏飞','15939590207','15939590207','15939590207','15939590207','15939590207',1,0,'1541831843','1541831843'),(48,'123456','王鹏飞','15939590207','15939590207','15939590207','15939590207','15939590207',1,0,'1541831843','1541831843'),(49,'123456','王鹏飞','15939590207','15939590207','15939590207','15939590207','15939590207',1,0,'1541831843','1541831843'),(50,'123456','王鹏飞','15939590207','15939590207','15939590207','15939590207','15939590207',1,0,'1541831843','1541831843'),(51,'123456','王鹏飞','15939590207','15939590207','15939590207','15939590207','15939590207',1,0,'1541831843','1541831843'),(52,'123456','王鹏飞','15939590207','15939590207','15939590207','15939590207','15939590207',1,0,'1541831843','1541831843'),(53,'123456','王鹏飞','15939590207','15939590207','15939590207','15939590207','15939590207',1,0,'1541831843','1541831843'),(54,'123456','王鹏飞','15939590207','15939590207','15939590207','15939590207','15939590207',1,0,'1541831843','1541831843'),(55,'123456','王鹏飞','15939590207','15939590207','15939590207','15939590207','15939590207',1,0,'1541831843','1541831843'),(56,'123456','王鹏飞','15939590207','15939590207','15939590207','15939590207','15939590207',1,0,'1541831843','1541831843'),(57,'123456','王鹏飞','15939590207','15939590207','15939590207','15939590207','15939590207',1,0,'1541831843','1541831843'),(58,'123456','王鹏飞','15939590207','15939590207','15939590207','15939590207','15939590207',1,0,'1541831843','1541831843'),(59,'123456','王鹏飞','15939590207','15939590207','15939590207','15939590207','15939590207',1,0,'1541831843','1541831843'),(60,'123456','王鹏飞','15939590207','15939590207','15939590207','15939590207','15939590207',1,0,'1541831843','1541831843'),(61,'123456','王鹏飞','15939590207','15939590207','15939590207','15939590207','15939590207',1,0,'1541831843','1541831843'),(62,'123456','王鹏飞','15939590207','15939590207','15939590207','15939590207','15939590207',1,0,'1541831843','1541831843'),(63,'123456','王鹏飞','15939590207','15939590207','15939590207','15939590207','15939590207',1,0,'1541831843','1541831843'),(64,'123456','王鹏飞','15939590207','15939590207','15939590207','15939590207','15939590207',1,0,'1541831843','1541831843'),(65,'123456','王鹏飞','15939590207','15939590207','15939590207','15939590207','15939590207',1,0,'1541831843','1541831843'),(66,'123456','王鹏飞','15939590207','15939590207','15939590207','15939590207','15939590207',1,0,'1541831843','1541831843'),(67,'123456','王鹏飞','15939590207','15939590207','15939590207','15939590207','15939590207',1,0,'1541831843','1541831843'),(68,'123456','王鹏飞','15939590207','15939590207','15939590207','15939590207','15939590207',1,0,'1541831843','1541831843'),(69,'123456','王鹏飞','15939590207','15939590207','15939590207','15939590207','15939590207',1,0,'1541831843','1541831843'),(70,'123456','王鹏飞','15939590207','15939590207','15939590207','15939590207','15939590207',1,0,'1541831843','1541831843'),(71,'123456','王鹏飞','15939590207','15939590207','15939590207','15939590207','15939590207',1,0,'1541831843','1541831843'),(72,'123456','王鹏飞','15939590207','15939590207','15939590207','15939590207','15939590207',1,0,'1541831843','1541831843'),(73,'123456','王鹏飞','15939590207','15939590207','15939590207','15939590207','15939590207',1,0,'1541831843','1541831843'),(74,'123456','王鹏飞','15939590207','15939590207','15939590207','15939590207','15939590207',1,0,'1541831843','1541831843'),(75,'123456','王鹏飞','15939590207','15939590207','15939590207','15939590207','15939590207',1,0,'1541831843','1541831843'),(76,'123456','王鹏飞','15939590207','15939590207','15939590207','15939590207','15939590207',1,0,'1541831843','1541831843');
/*!40000 ALTER TABLE `ddsc_user` ENABLE KEYS */;