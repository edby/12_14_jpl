# Host: localhost  (Version: 5.5.53)
# Date: 2018-12-21 11:30:36
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "ddsc_about"
#

DROP TABLE IF EXISTS `ddsc_about`;
CREATE TABLE `ddsc_about` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `marray` text COMMENT '简介',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Data for table "ddsc_about"
#

/*!40000 ALTER TABLE `ddsc_about` DISABLE KEYS */;
INSERT INTO `ddsc_about` VALUES (1,'游戏规则介绍','<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\">总投资：购268元产品，回报66.5万。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\">需要分享：分享2人即可，并复制2人每人再分享2人来参与。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\">当你建立6层团队，66.5万即可到手。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\">没了！就这么简单</p><p><br/></p>','总投资：购268元产品，回报66.5万。\r\n需要分享：分享2人即可，并复制2人每人再分享2人来参与。\r\n当你建立6层团队，66.5万即可到手。\r\n没了！就这么简单'),(2,NULL,'<h2 style=\"box-sizing: border-box; font-family: &quot;open sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 100; line-height: 1.1; color: rgb(103, 106, 108); margin-top: 5px; margin-bottom: 10px; font-size: 24px; white-space: normal;\">好不好推广?</h2><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(103, 106, 108); font-family: &quot;open sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal;\">总投资268元，一瓶酒撬动66.5万财富，谁不愿意???</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(103, 106, 108); font-family: &quot;open sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal;\">自己分享2人就可以，多了也不需要，如果你连2人都分享不了，那么微信中的所有项目你都不要做了！！！</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(103, 106, 108); font-family: &quot;open sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal;\">定心，定位，定江山！激情代表业绩的行业！</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(103, 106, 108); font-family: &quot;open sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal;\">简单的二二复制模式，不需要太复杂的思维！</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(103, 106, 108); font-family: &quot;open sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal;\">每天给自己定一个小目标！升级才能赚钱</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(103, 106, 108); font-family: &quot;open sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal;\">保持每天完成！</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(103, 106, 108); font-family: &quot;open sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal;\">6级会员就会越来越近！</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(103, 106, 108); font-family: &quot;open sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal;\">敢紧行动下一个奇迹就是你</p><p><br/></p>',NULL),(3,'268元挑战日收入过万，66.5万不是梦！ ','66,5000元',NULL);
/*!40000 ALTER TABLE `ddsc_about` ENABLE KEYS */;

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
INSERT INTO `ddsc_admin` VALUES (1,'admin','8a30ec6807f71bc69d096d8e4d501ade','2018-12-20 08:54:16','2018-12-21 08:53:21','0.0.0.0',0,NULL,NULL);
/*!40000 ALTER TABLE `ddsc_admin` ENABLE KEYS */;

#
# Structure for table "ddsc_apply"
#

DROP TABLE IF EXISTS `ddsc_apply`;
CREATE TABLE `ddsc_apply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) DEFAULT NULL COMMENT '申请人id',
  `p_id` int(11) DEFAULT NULL COMMENT '向谁申请的id',
  `level` int(11) DEFAULT NULL COMMENT '当前会员等级',
  `levels` int(11) DEFAULT NULL COMMENT '会员升级后的等级',
  `money` varchar(255) DEFAULT NULL COMMENT '升级所需金额',
  `time` varchar(255) DEFAULT NULL COMMENT '申请时间',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态 0待审核 1已审核 2系统驳回',
  `q_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='升级申请表';

#
# Data for table "ddsc_apply"
#

/*!40000 ALTER TABLE `ddsc_apply` DISABLE KEYS */;
/*!40000 ALTER TABLE `ddsc_apply` ENABLE KEYS */;

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
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

#
# Data for table "ddsc_carte"
#

/*!40000 ALTER TABLE `ddsc_carte` DISABLE KEYS */;
INSERT INTO `ddsc_carte` VALUES (1,'网站设置','Sys','fa-desktop',0,1),(2,'基本信息','seting','',1,50),(3,'网站优化','seo','',1,50),(4,'广告图管理','Lb','fa-picture-o',0,2),(5,'图片列表','lister','',4,50),(6,'广告位','place','',4,50),(13,'菜单管理','Carte','fa-reorder',0,3),(14,'后台模板','lister','',13,50),(15,'数据库管理','Sql','fa-file-text-o',0,13),(16,'管理员管理','User','fa-user',0,4),(17,'管理员列表','lister','',16,50),(18,'备份列表','lister','',15,50),(19,'会员管理','Member','fa-address-book-o',0,5),(20,'会员列表','lister','',19,50),(21,'联盟公告','News','fa-bullhorn',0,6),(22,'公告列表','lister','',21,50),(23,'游戏规则','Game','fa-rocket',0,7),(24,'游戏规则','lister','',23,50),(25,'问题解答','Problem','fa-question-circle',0,8),(26,'问题解答','lister','',25,50),(27,'站内通信','Email','fa-envelope-o',0,9),(28,'邮件列表','lister','',27,50),(29,'级别管理','Level','fa-line-chart',0,10),(30,'级别列表','lister','',29,50),(31,'级别简介','index','',29,50),(32,'申请记录','Apply','fa-level-up',0,11),(33,'申请列表','lister','',32,50),(34,'日志管理','Log','fa-book',0,12),(35,'会员激活日志','lister','',34,50),(36,'后台登录日志','index','',34,50);
/*!40000 ALTER TABLE `ddsc_carte` ENABLE KEYS */;

#
# Structure for table "ddsc_email"
#

DROP TABLE IF EXISTS `ddsc_email`;
CREATE TABLE `ddsc_email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) DEFAULT NULL COMMENT '发送人id',
  `pid` int(11) DEFAULT NULL COMMENT '收件人id',
  `p_name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL COMMENT '主题',
  `time` varchar(255) DEFAULT NULL COMMENT '发送时间',
  `look` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0 未读 1已读',
  `content` text,
  `u_status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '发件人是否删除 0否 1是',
  `p_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '收件人是否删除 0否 1是',
  `u_name` varchar(255) DEFAULT NULL COMMENT '发送人姓名',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='站内信';

#
# Data for table "ddsc_email"
#

/*!40000 ALTER TABLE `ddsc_email` DISABLE KEYS */;
/*!40000 ALTER TABLE `ddsc_email` ENABLE KEYS */;

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
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='广告列表';

#
# Data for table "ddsc_lb"
#

/*!40000 ALTER TABLE `ddsc_lb` DISABLE KEYS */;
INSERT INTO `ddsc_lb` VALUES (16,1,'百度',50,1,'http://www.baidu.com','','/uploads/20181217/342d533ba09dad43850661e5c1e7a8b7.jpg','uploads/thumb/5c175362ac5145.41540861.jpg'),(17,1,'工商银行',50,1,'http://www.baidu.com','','/uploads/20181217/994f16b59e694572ec483eb829719bf4.png','uploads/thumb/5c17538b1bdcb.jpg'),(18,2,'注册协议',50,1,'','<h3 style=\"box-sizing: border-box; font-family: &quot;open sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(103, 106, 108); margin-top: 5px; margin-bottom: 10px; font-size: 16px; white-space: normal;\">注册前请阅读协议</h3><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(103, 106, 108); font-family: &quot;open sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal;\">阅读协议内容阅读协议内容</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(103, 106, 108); font-family: &quot;open sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal;\">阅读协议内容</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(103, 106, 108); font-family: &quot;open sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal;\">阅读协议内容阅读协议内容阅读协议内容</p>',NULL,NULL),(19,3,'填写说明',50,1,'','<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(103, 106, 108); font-family: &quot;open sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal;\">填写说明内容填写说明内容</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(103, 106, 108); font-family: &quot;open sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal;\">填写说明内容</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(103, 106, 108); font-family: &quot;open sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal;\">填写说明内容填写说明内容填写说明内容11111</p><p><br/></p>',NULL,NULL),(20,4,'升级成功提示',50,1,'','<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(103, 106, 108); font-family: &quot;open sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal;\">祝贺你申请成功！</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(103, 106, 108); font-family: &quot;open sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal;\">请及时到银行给上级会员付款，请记住汇款准确时间几时几分，并及时留言。</p><p><br/></p>',NULL,NULL);
/*!40000 ALTER TABLE `ddsc_lb` ENABLE KEYS */;

#
# Structure for table "ddsc_lb_place"
#

DROP TABLE IF EXISTS `ddsc_lb_place`;
CREATE TABLE `ddsc_lb_place` (
  `pl_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '轮播id',
  `pl_name` varchar(255) DEFAULT NULL COMMENT '位置名称',
  PRIMARY KEY (`pl_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='广告位';

#
# Data for table "ddsc_lb_place"
#

/*!40000 ALTER TABLE `ddsc_lb_place` DISABLE KEYS */;
INSERT INTO `ddsc_lb_place` VALUES (1,'友情链接'),(2,'注册协议'),(3,'填写说明'),(4,'温馨提示');
/*!40000 ALTER TABLE `ddsc_lb_place` ENABLE KEYS */;

#
# Structure for table "ddsc_level"
#

DROP TABLE IF EXISTS `ddsc_level`;
CREATE TABLE `ddsc_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` int(11) NOT NULL DEFAULT '1' COMMENT '级别',
  `money` varchar(255) DEFAULT NULL COMMENT '金额',
  `content` text COMMENT '简介',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='级别详情';

#
# Data for table "ddsc_level"
#

/*!40000 ALTER TABLE `ddsc_level` DISABLE KEYS */;
INSERT INTO `ddsc_level` VALUES (1,1,'200','<p><span style=\"font-family: \" microsoft=\"\" font-size:=\"\" background-color:=\"\">2人,合格0至1级:200X2人=400元</span></p>'),(2,2,'400','<p><span style=\"font-family: \" microsoft=\"\" font-size:=\"\" background-color:=\"\">4人,合格1至2级:400X4人=1600元</span></p>'),(3,3,'800','<p><span style=\"font-family: \" microsoft=\"\" font-size:=\"\" background-color:=\"\">8人,合格2至3级:800X8人=6400元</span></p>'),(4,4,'2000','<p><span style=\"font-family: \" microsoft=\"\" font-size:=\"\" background-color:=\"\">16人,合格3至4级:2000X16人=32000元</span></p>'),(5,5,'4000','<p><span style=\"font-family: \" microsoft=\"\" font-size:=\"\" background-color:=\"\">32人,合格4至5级:4000X32人=128000元</span></p>'),(6,6,'8000','<p><span style=\"font-family: \" microsoft=\"\" font-size:=\"\" background-color:=\"\">64人,合格5至6级:8000X64人=512000元</span></p>');
/*!40000 ALTER TABLE `ddsc_level` ENABLE KEYS */;

#
# Structure for table "ddsc_news"
#

DROP TABLE IF EXISTS `ddsc_news`;
CREATE TABLE `ddsc_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `source` varchar(255) DEFAULT NULL COMMENT '来源',
  `writer` varchar(255) DEFAULT NULL COMMENT '作者',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态',
  `time` char(20) DEFAULT NULL COMMENT '发表时间',
  `image` varchar(255) DEFAULT NULL COMMENT '图片',
  `content` text COMMENT '新闻内容',
  `browse` int(11) NOT NULL DEFAULT '0' COMMENT '浏览量',
  `groom` tinyint(1) NOT NULL DEFAULT '0' COMMENT '推荐',
  `marray` text COMMENT '简介',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "ddsc_news"
#

/*!40000 ALTER TABLE `ddsc_news` DISABLE KEYS */;
INSERT INTO `ddsc_news` VALUES (13,'测试8','','管理员',2,1,'1545041248','','<p><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">总投资268元，一瓶酒撬动66.5万财富，谁不愿意做? ? ?</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">自己分享2人就可以，多了也不需要，如果你连2人都分享不了，那么微信中的所有项目你都不要做了！！！</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">定心，定位，定江山！激情代表业绩的行业！</span></p>',0,1,'关于平台模式优化的最新公告关于平台模式优化的最新公告'),(14,'测试8','','管理员',1,1,'1545041248','','<p><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">总投资268元，一瓶酒撬动66.5万财富，谁不愿意做? ? ?</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">自己分享2人就可以，多了也不需要，如果你连2人都分享不了，那么微信中的所有项目你都不要做了！！！</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">定心，定位，定江山！激情代表业绩的行业！</span></p>',0,1,'关于平台模式优化的最新公告关于平台模式优化的最新公告'),(15,'测试8','','管理员',50,1,'1545041248','','<p><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">总投资268元，一瓶酒撬动66.5万财富，谁不愿意做? ? ?</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">自己分享2人就可以，多了也不需要，如果你连2人都分享不了，那么微信中的所有项目你都不要做了！！！</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">定心，定位，定江山！激情代表业绩的行业！</span></p>',0,1,'关于平台模式优化的最新公告关于平台模式优化的最新公告'),(16,'测试8','','管理员',50,1,'1545041248','','<p><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">总投资268元，一瓶酒撬动66.5万财富，谁不愿意做? ? ?</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">自己分享2人就可以，多了也不需要，如果你连2人都分享不了，那么微信中的所有项目你都不要做了！！！</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">定心，定位，定江山！激情代表业绩的行业！</span></p>',0,1,'关于平台模式优化的最新公告关于平台模式优化的最新公告'),(17,'测试8','','管理员',50,1,'1545041248','','<p><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">总投资268元，一瓶酒撬动66.5万财富，谁不愿意做? ? ?</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">自己分享2人就可以，多了也不需要，如果你连2人都分享不了，那么微信中的所有项目你都不要做了！！！</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">定心，定位，定江山！激情代表业绩的行业！</span></p>',0,1,'关于平台模式优化的最新公告关于平台模式优化的最新公告'),(18,'dd','','管理员',50,1,'1545041248','','<p><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">总投资268元，一瓶酒撬动66.5万财富，谁不愿意做? ? ?</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">自己分享2人就可以，多了也不需要，如果你连2人都分享不了，那么微信中的所有项目你都不要做了！！！</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">定心，定位，定江山！激情代表业绩的行业！</span></p>',0,1,'关于平台模式优化的最新公告关于平台模式优化的最新公告'),(19,'ddd','','管理员',50,1,'1545041248','','<p><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">总投资268元，一瓶酒撬动66.5万财富，谁不愿意做? ? ?</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">自己分享2人就可以，多了也不需要，如果你连2人都分享不了，那么微信中的所有项目你都不要做了！！！</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">定心，定位，定江山！激情代表业绩的行业！</span></p>',0,1,'关于平台模式优化的最新公告关于平台模式优化的最新公告'),(20,'ddd','','管理员',50,1,'1545041248','','<p><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">总投资268元，一瓶酒撬动66.5万财富，谁不愿意做? ? ?</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">自己分享2人就可以，多了也不需要，如果你连2人都分享不了，那么微信中的所有项目你都不要做了！！！</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">定心，定位，定江山！激情代表业绩的行业！</span></p>',0,1,'关于平台模式优化的最新公告关于平台模式优化的最新公告'),(21,'测试8','','管理员',2,1,'1545041248','','<p><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">总投资268元，一瓶酒撬动66.5万财富，谁不愿意做? ? ?</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">自己分享2人就可以，多了也不需要，如果你连2人都分享不了，那么微信中的所有项目你都不要做了！！！</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">定心，定位，定江山！激情代表业绩的行业！</span></p>',0,1,'关于平台模式优化的最新公告关于平台模式优化的最新公告'),(22,'测试8','','管理员',1,1,'1545041248','','<p><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">总投资268元，一瓶酒撬动66.5万财富，谁不愿意做? ? ?</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">自己分享2人就可以，多了也不需要，如果你连2人都分享不了，那么微信中的所有项目你都不要做了！！！</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">定心，定位，定江山！激情代表业绩的行业！</span></p>',0,1,'关于平台模式优化的最新公告关于平台模式优化的最新公告'),(23,'测试8','','管理员',50,1,'1545041248','','<p><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">总投资268元，一瓶酒撬动66.5万财富，谁不愿意做? ? ?</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">自己分享2人就可以，多了也不需要，如果你连2人都分享不了，那么微信中的所有项目你都不要做了！！！</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">定心，定位，定江山！激情代表业绩的行业！</span></p>',0,1,'关于平台模式优化的最新公告关于平台模式优化的最新公告'),(24,'测试8','','管理员',50,1,'1545041248','','<p><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">总投资268元，一瓶酒撬动66.5万财富，谁不愿意做? ? ?</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">自己分享2人就可以，多了也不需要，如果你连2人都分享不了，那么微信中的所有项目你都不要做了！！！</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">定心，定位，定江山！激情代表业绩的行业！</span></p>',0,1,'关于平台模式优化的最新公告关于平台模式优化的最新公告'),(25,'测试8','','管理员',50,1,'1545041248','','<p><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">总投资268元，一瓶酒撬动66.5万财富，谁不愿意做? ? ?</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">自己分享2人就可以，多了也不需要，如果你连2人都分享不了，那么微信中的所有项目你都不要做了！！！</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">定心，定位，定江山！激情代表业绩的行业！</span></p>',0,1,'关于平台模式优化的最新公告关于平台模式优化的最新公告'),(26,'dd','','管理员',50,1,'1545041248','','<p><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">总投资268元，一瓶酒撬动66.5万财富，谁不愿意做? ? ?</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">自己分享2人就可以，多了也不需要，如果你连2人都分享不了，那么微信中的所有项目你都不要做了！！！</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">定心，定位，定江山！激情代表业绩的行业！</span></p>',0,1,'关于平台模式优化的最新公告关于平台模式优化的最新公告'),(27,'ddd','','管理员',50,1,'1545041248','','<p><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">总投资268元，一瓶酒撬动66.5万财富，谁不愿意做? ? ?</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">自己分享2人就可以，多了也不需要，如果你连2人都分享不了，那么微信中的所有项目你都不要做了！！！</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">定心，定位，定江山！激情代表业绩的行业！</span></p>',0,1,'关于平台模式优化的最新公告关于平台模式优化的最新公告'),(28,'ddd','','管理员',50,1,'1545041248','','<p><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">总投资268元，一瓶酒撬动66.5万财富，谁不愿意做? ? ?</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">自己分享2人就可以，多了也不需要，如果你连2人都分享不了，那么微信中的所有项目你都不要做了！！！</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">定心，定位，定江山！激情代表业绩的行业！</span></p>',0,1,'关于平台模式优化的最新公告关于平台模式优化的最新公告'),(29,'测试8','','管理员',2,1,'1545041248','','<p><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">总投资268元，一瓶酒撬动66.5万财富，谁不愿意做? ? ?</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">自己分享2人就可以，多了也不需要，如果你连2人都分享不了，那么微信中的所有项目你都不要做了！！！</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">定心，定位，定江山！激情代表业绩的行业！</span></p>',0,1,'关于平台模式优化的最新公告关于平台模式优化的最新公告'),(30,'测试8','','管理员',1,1,'1545041248','','<p><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">总投资268元，一瓶酒撬动66.5万财富，谁不愿意做? ? ?</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">自己分享2人就可以，多了也不需要，如果你连2人都分享不了，那么微信中的所有项目你都不要做了！！！</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">定心，定位，定江山！激情代表业绩的行业！</span></p>',0,1,'关于平台模式优化的最新公告关于平台模式优化的最新公告'),(31,'测试8','','管理员',50,1,'1545041248','','<p><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">总投资268元，一瓶酒撬动66.5万财富，谁不愿意做? ? ?</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">自己分享2人就可以，多了也不需要，如果你连2人都分享不了，那么微信中的所有项目你都不要做了！！！</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">定心，定位，定江山！激情代表业绩的行业！</span></p>',0,1,'关于平台模式优化的最新公告关于平台模式优化的最新公告'),(32,'测试8','','管理员',50,1,'1545041248','','<p><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">总投资268元，一瓶酒撬动66.5万财富，谁不愿意做? ? ?</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">自己分享2人就可以，多了也不需要，如果你连2人都分享不了，那么微信中的所有项目你都不要做了！！！</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">定心，定位，定江山！激情代表业绩的行业！</span></p>',0,1,'关于平台模式优化的最新公告关于平台模式优化的最新公告'),(33,'测试8','','管理员',50,1,'1545041248','','<p><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">总投资268元，一瓶酒撬动66.5万财富，谁不愿意做? ? ?</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">自己分享2人就可以，多了也不需要，如果你连2人都分享不了，那么微信中的所有项目你都不要做了！！！</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">定心，定位，定江山！激情代表业绩的行业！</span></p>',0,1,'关于平台模式优化的最新公告关于平台模式优化的最新公告'),(34,'dd','','管理员',50,1,'1545041248','','<p><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">总投资268元，一瓶酒撬动66.5万财富，谁不愿意做? ? ?</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">自己分享2人就可以，多了也不需要，如果你连2人都分享不了，那么微信中的所有项目你都不要做了！！！</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">定心，定位，定江山！激情代表业绩的行业！</span></p>',0,1,'关于平台模式优化的最新公告关于平台模式优化的最新公告'),(35,'ddd','','管理员',50,1,'1545041248','','<p><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">总投资268元，一瓶酒撬动66.5万财富，谁不愿意做? ? ?</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">自己分享2人就可以，多了也不需要，如果你连2人都分享不了，那么微信中的所有项目你都不要做了！！！</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">定心，定位，定江山！激情代表业绩的行业！</span></p>',0,1,'关于平台模式优化的最新公告关于平台模式优化的最新公告'),(36,'ddd','','管理员',50,1,'1545041248','','<p><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">总投资268元，一瓶酒撬动66.5万财富，谁不愿意做? ? ?</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">自己分享2人就可以，多了也不需要，如果你连2人都分享不了，那么微信中的所有项目你都不要做了！！！</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">定心，定位，定江山！激情代表业绩的行业！</span></p>',0,1,'关于平台模式优化的最新公告关于平台模式优化的最新公告'),(37,'测试8','','管理员',2,1,'1545041248','','<p><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">总投资268元，一瓶酒撬动66.5万财富，谁不愿意做? ? ?</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">自己分享2人就可以，多了也不需要，如果你连2人都分享不了，那么微信中的所有项目你都不要做了！！！</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">定心，定位，定江山！激情代表业绩的行业！</span></p>',0,1,'关于平台模式优化的最新公告关于平台模式优化的最新公告'),(38,'测试8','','管理员',1,1,'1545041248','','<p><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">总投资268元，一瓶酒撬动66.5万财富，谁不愿意做? ? ?</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">自己分享2人就可以，多了也不需要，如果你连2人都分享不了，那么微信中的所有项目你都不要做了！！！</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">定心，定位，定江山！激情代表业绩的行业！</span></p>',0,1,'关于平台模式优化的最新公告关于平台模式优化的最新公告'),(39,'测试8','','管理员',50,1,'1545041248','','<p><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">总投资268元，一瓶酒撬动66.5万财富，谁不愿意做? ? ?</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">自己分享2人就可以，多了也不需要，如果你连2人都分享不了，那么微信中的所有项目你都不要做了！！！</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">定心，定位，定江山！激情代表业绩的行业！</span></p>',0,1,'关于平台模式优化的最新公告关于平台模式优化的最新公告'),(40,'测试8','','管理员',50,1,'1545041248','','<p><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">总投资268元，一瓶酒撬动66.5万财富，谁不愿意做? ? ?</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">自己分享2人就可以，多了也不需要，如果你连2人都分享不了，那么微信中的所有项目你都不要做了！！！</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">定心，定位，定江山！激情代表业绩的行业！</span></p>',0,1,'关于平台模式优化的最新公告关于平台模式优化的最新公告'),(41,'测试8','','管理员',50,1,'1545041248','','<p><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">总投资268元，一瓶酒撬动66.5万财富，谁不愿意做? ? ?</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">自己分享2人就可以，多了也不需要，如果你连2人都分享不了，那么微信中的所有项目你都不要做了！！！</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">定心，定位，定江山！激情代表业绩的行业！</span></p>',0,1,'关于平台模式优化的最新公告关于平台模式优化的最新公告'),(42,'dd','','管理员',50,1,'1545041248','','<p><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">总投资268元，一瓶酒撬动66.5万财富，谁不愿意做? ? ?</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">自己分享2人就可以，多了也不需要，如果你连2人都分享不了，那么微信中的所有项目你都不要做了！！！</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">定心，定位，定江山！激情代表业绩的行业！</span></p>',0,1,'关于平台模式优化的最新公告关于平台模式优化的最新公告'),(43,'ddd','','管理员',50,1,'1545041248','','<p><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">总投资268元，一瓶酒撬动66.5万财富，谁不愿意做? ? ?</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">自己分享2人就可以，多了也不需要，如果你连2人都分享不了，那么微信中的所有项目你都不要做了！！！</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">定心，定位，定江山！激情代表业绩的行业！</span></p>',0,1,'关于平台模式优化的最新公告关于平台模式优化的最新公告'),(44,'ddd','','管理员',50,1,'1545041248','','<p><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">总投资268元，一瓶酒撬动66.5万财富，谁不愿意做? ? ?</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">自己分享2人就可以，多了也不需要，如果你连2人都分享不了，那么微信中的所有项目你都不要做了！！！</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">定心，定位，定江山！激情代表业绩的行业！</span></p>',0,1,'关于平台模式优化的最新公告关于平台模式优化的最新公告'),(45,'测试8','','管理员',2,1,'1545041248','','<p><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">总投资268元，一瓶酒撬动66.5万财富，谁不愿意做? ? ?</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">自己分享2人就可以，多了也不需要，如果你连2人都分享不了，那么微信中的所有项目你都不要做了！！！</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">定心，定位，定江山！激情代表业绩的行业！</span></p>',0,1,'关于平台模式优化的最新公告关于平台模式优化的最新公告'),(46,'测试8','','管理员',1,1,'1545041248','','<p><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">总投资268元，一瓶酒撬动66.5万财富，谁不愿意做? ? ?</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">自己分享2人就可以，多了也不需要，如果你连2人都分享不了，那么微信中的所有项目你都不要做了！！！</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">定心，定位，定江山！激情代表业绩的行业！</span></p>',0,1,'关于平台模式优化的最新公告关于平台模式优化的最新公告'),(47,'测试8','','管理员',50,1,'1545041248','','<p><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">总投资268元，一瓶酒撬动66.5万财富，谁不愿意做? ? ?</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">自己分享2人就可以，多了也不需要，如果你连2人都分享不了，那么微信中的所有项目你都不要做了！！！</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">定心，定位，定江山！激情代表业绩的行业！</span></p>',0,1,'关于平台模式优化的最新公告关于平台模式优化的最新公告'),(48,'测试8','','管理员',50,1,'1545041248','','<p><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">总投资268元，一瓶酒撬动66.5万财富，谁不愿意做? ? ?</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">自己分享2人就可以，多了也不需要，如果你连2人都分享不了，那么微信中的所有项目你都不要做了！！！</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">定心，定位，定江山！激情代表业绩的行业！</span></p>',0,1,'关于平台模式优化的最新公告关于平台模式优化的最新公告'),(49,'测试8','','管理员',50,1,'1545041248','','<p><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">总投资268元，一瓶酒撬动66.5万财富，谁不愿意做? ? ?</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">自己分享2人就可以，多了也不需要，如果你连2人都分享不了，那么微信中的所有项目你都不要做了！！！</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">定心，定位，定江山！激情代表业绩的行业！</span></p>',0,1,'关于平台模式优化的最新公告关于平台模式优化的最新公告'),(50,'dd','','管理员',50,1,'1545041248','','<p><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">总投资268元，一瓶酒撬动66.5万财富，谁不愿意做? ? ?</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">自己分享2人就可以，多了也不需要，如果你连2人都分享不了，那么微信中的所有项目你都不要做了！！！</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">定心，定位，定江山！激情代表业绩的行业！</span></p>',0,1,'关于平台模式优化的最新公告关于平台模式优化的最新公告'),(51,'ddd','','管理员',50,1,'1545041248','','<p><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">总投资268元，一瓶酒撬动66.5万财富，谁不愿意做? ? ?</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">自己分享2人就可以，多了也不需要，如果你连2人都分享不了，那么微信中的所有项目你都不要做了！！！</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">定心，定位，定江山！激情代表业绩的行业！</span></p>',0,1,'关于平台模式优化的最新公告关于平台模式优化的最新公告'),(52,'ddd','','管理员',50,1,'1545041248','','<p><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">总投资268元，一瓶酒撬动66.5万财富，谁不愿意做? ? ?</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">自己分享2人就可以，多了也不需要，如果你连2人都分享不了，那么微信中的所有项目你都不要做了！！！</span><br style=\"box-sizing: border-box; color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"/><span style=\"color: rgb(103, 106, 108); font-family: \" open=\"\" helvetica=\"\" font-size:=\"\" background-color:=\"\">定心，定位，定江山！激情代表业绩的行业！</span></p>',0,1,'关于平台模式优化的最新公告关于平台模式优化的最新公告');
/*!40000 ALTER TABLE `ddsc_news` ENABLE KEYS */;

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
# Structure for table "ddsc_sms_code"
#

DROP TABLE IF EXISTS `ddsc_sms_code`;
CREATE TABLE `ddsc_sms_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) DEFAULT NULL COMMENT '手机号码',
  `code` varchar(255) DEFAULT NULL COMMENT '验证码',
  `time` varchar(255) DEFAULT NULL COMMENT '发送时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='手机验证码';

#
# Data for table "ddsc_sms_code"
#

/*!40000 ALTER TABLE `ddsc_sms_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `ddsc_sms_code` ENABLE KEYS */;

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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统日志';

#
# Data for table "ddsc_sys_log"
#

/*!40000 ALTER TABLE `ddsc_sys_log` DISABLE KEYS */;
INSERT INTO `ddsc_sys_log` VALUES (1,'后台登录','2018-12-21 08:53:21','admin','0.0.0.0');
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
  `level` tinyint(3) NOT NULL DEFAULT '1' COMMENT '等级',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COMMENT='会员列表';

#
# Data for table "ddsc_user"
#

/*!40000 ALTER TABLE `ddsc_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `ddsc_user` ENABLE KEYS */;

#
# Structure for table "ddsc_user_log"
#

DROP TABLE IF EXISTS `ddsc_user_log`;
CREATE TABLE `ddsc_user_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) DEFAULT NULL COMMENT '操作人id',
  `p_id` int(11) DEFAULT NULL COMMENT '被激活人id',
  `time` varchar(255) DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户激活日志';

#
# Data for table "ddsc_user_log"
#

/*!40000 ALTER TABLE `ddsc_user_log` DISABLE KEYS */;
INSERT INTO `ddsc_user_log` VALUES (1,0,1,'1545362387');
/*!40000 ALTER TABLE `ddsc_user_log` ENABLE KEYS */;
