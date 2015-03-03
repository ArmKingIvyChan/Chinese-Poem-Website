# SQL-Front 5.1  (Build 4.16)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;


# Host: localhost    Database: weibo
# ------------------------------------------------------
# Server version 5.5.14

#
# Source for table weibo_attention
#

DROP TABLE IF EXISTS `weibo_attention`;
CREATE TABLE `weibo_attention` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `attention_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;

#
# Dumping data for table weibo_attention
#

LOCK TABLES `weibo_attention` WRITE;
/*!40000 ALTER TABLE `weibo_attention` DISABLE KEYS */;
INSERT INTO `weibo_attention` VALUES (1,1,5);
INSERT INTO `weibo_attention` VALUES (2,1,3);
INSERT INTO `weibo_attention` VALUES (3,1,4);
INSERT INTO `weibo_attention` VALUES (28,28,9);
INSERT INTO `weibo_attention` VALUES (29,28,26);
INSERT INTO `weibo_attention` VALUES (30,28,8);
INSERT INTO `weibo_attention` VALUES (31,28,1);
INSERT INTO `weibo_attention` VALUES (32,28,5);
INSERT INTO `weibo_attention` VALUES (33,29,28);
INSERT INTO `weibo_attention` VALUES (34,29,23);
INSERT INTO `weibo_attention` VALUES (35,29,14);
INSERT INTO `weibo_attention` VALUES (48,29,2);
INSERT INTO `weibo_attention` VALUES (49,1,2);
INSERT INTO `weibo_attention` VALUES (50,1,7);
INSERT INTO `weibo_attention` VALUES (54,30,3);
INSERT INTO `weibo_attention` VALUES (55,30,7);
INSERT INTO `weibo_attention` VALUES (56,30,23);
INSERT INTO `weibo_attention` VALUES (57,30,4);
INSERT INTO `weibo_attention` VALUES (58,30,27);
INSERT INTO `weibo_attention` VALUES (60,1,28);
INSERT INTO `weibo_attention` VALUES (61,29,1);
INSERT INTO `weibo_attention` VALUES (62,31,8);
INSERT INTO `weibo_attention` VALUES (63,31,5);
INSERT INTO `weibo_attention` VALUES (64,31,4);
INSERT INTO `weibo_attention` VALUES (65,31,23);
INSERT INTO `weibo_attention` VALUES (66,31,9);
INSERT INTO `weibo_attention` VALUES (67,30,28);
INSERT INTO `weibo_attention` VALUES (68,30,19);
INSERT INTO `weibo_attention` VALUES (69,30,23);
INSERT INTO `weibo_attention` VALUES (70,30,10);
INSERT INTO `weibo_attention` VALUES (71,30,24);
INSERT INTO `weibo_attention` VALUES (72,31,19);
INSERT INTO `weibo_attention` VALUES (73,31,3);
INSERT INTO `weibo_attention` VALUES (74,31,14);
INSERT INTO `weibo_attention` VALUES (75,31,1);
INSERT INTO `weibo_attention` VALUES (76,31,27);
INSERT INTO `weibo_attention` VALUES (77,32,19);
INSERT INTO `weibo_attention` VALUES (78,32,28);
INSERT INTO `weibo_attention` VALUES (79,32,9);
INSERT INTO `weibo_attention` VALUES (80,32,23);
INSERT INTO `weibo_attention` VALUES (81,32,27);
/*!40000 ALTER TABLE `weibo_attention` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table weibo_badword
#

DROP TABLE IF EXISTS `weibo_badword`;
CREATE TABLE `weibo_badword` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `badword` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gb2312;

#
# Dumping data for table weibo_badword
#

LOCK TABLES `weibo_badword` WRITE;
/*!40000 ALTER TABLE `weibo_badword` DISABLE KEYS */;
INSERT INTO `weibo_badword` VALUES (1,'苏伟峰');
INSERT INTO `weibo_badword` VALUES (2,'alex');
/*!40000 ALTER TABLE `weibo_badword` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table weibo_catalog
#

DROP TABLE IF EXISTS `weibo_catalog`;
CREATE TABLE `weibo_catalog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catalog_name` varchar(30) NOT NULL,
  `catalog_desc` varchar(200) DEFAULT NULL,
  `poem_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

#
# Dumping data for table weibo_catalog
#

LOCK TABLES `weibo_catalog` WRITE;
/*!40000 ALTER TABLE `weibo_catalog` DISABLE KEYS */;
/*!40000 ALTER TABLE `weibo_catalog` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table weibo_collection
#

DROP TABLE IF EXISTS `weibo_collection`;
CREATE TABLE `weibo_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(30) DEFAULT '',
  `collection_date` varchar(50) NOT NULL DEFAULT '0000-00-00',
  `poem_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

#
# Dumping data for table weibo_collection
#

LOCK TABLES `weibo_collection` WRITE;
/*!40000 ALTER TABLE `weibo_collection` DISABLE KEYS */;
INSERT INTO `weibo_collection` VALUES (2,'2','2012-04-28 11:59:01',36);
INSERT INTO `weibo_collection` VALUES (3,'1','2012-04-28 12:50:15',6);
INSERT INTO `weibo_collection` VALUES (4,'1','2012-04-28 12:01:08',10);
INSERT INTO `weibo_collection` VALUES (6,'1','2012-05-09 01:18:36',5);
INSERT INTO `weibo_collection` VALUES (7,'1','2012-05-09 01:25:24',31);
INSERT INTO `weibo_collection` VALUES (9,'1','2012-05-13 10:41:42',30);
INSERT INTO `weibo_collection` VALUES (10,'1','2012-05-14 00:56:59',43);
INSERT INTO `weibo_collection` VALUES (11,'1','2012-05-14 01:37:53',32);
INSERT INTO `weibo_collection` VALUES (12,'29','2012-05-14 11:32:20',57);
/*!40000 ALTER TABLE `weibo_collection` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table weibo_comment
#

DROP TABLE IF EXISTS `weibo_comment`;
CREATE TABLE `weibo_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `content` varchar(100) DEFAULT NULL,
  `comment_date` varchar(50) NOT NULL,
  `poem_id` int(11) DEFAULT NULL,
  `user_id2` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=gb2312;

#
# Dumping data for table weibo_comment
#

LOCK TABLES `weibo_comment` WRITE;
/*!40000 ALTER TABLE `weibo_comment` DISABLE KEYS */;
INSERT INTO `weibo_comment` VALUES (1,1,'adsf','2012-04-28 11:59:53',37,5);
INSERT INTO `weibo_comment` VALUES (3,1,'adsf','2012-04-28 11:59:53',6,1);
INSERT INTO `weibo_comment` VALUES (7,29,'好诗歌','2012-05-14 02:11:58',54,1);
INSERT INTO `weibo_comment` VALUES (8,29,'为啥','2012-05-14 02:13:27',14,1);
/*!40000 ALTER TABLE `weibo_comment` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table weibo_fans
#

DROP TABLE IF EXISTS `weibo_fans`;
CREATE TABLE `weibo_fans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `fans_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=gb2312;

#
# Dumping data for table weibo_fans
#

LOCK TABLES `weibo_fans` WRITE;
/*!40000 ALTER TABLE `weibo_fans` DISABLE KEYS */;
INSERT INTO `weibo_fans` VALUES (1,2,1);
INSERT INTO `weibo_fans` VALUES (2,3,1);
INSERT INTO `weibo_fans` VALUES (3,4,1);
INSERT INTO `weibo_fans` VALUES (4,5,1);
INSERT INTO `weibo_fans` VALUES (30,9,28);
INSERT INTO `weibo_fans` VALUES (31,26,28);
INSERT INTO `weibo_fans` VALUES (32,8,28);
INSERT INTO `weibo_fans` VALUES (33,1,28);
INSERT INTO `weibo_fans` VALUES (34,5,28);
INSERT INTO `weibo_fans` VALUES (35,28,29);
INSERT INTO `weibo_fans` VALUES (36,23,29);
INSERT INTO `weibo_fans` VALUES (37,14,29);
INSERT INTO `weibo_fans` VALUES (50,2,29);
INSERT INTO `weibo_fans` VALUES (51,2,1);
INSERT INTO `weibo_fans` VALUES (52,7,1);
INSERT INTO `weibo_fans` VALUES (56,3,30);
INSERT INTO `weibo_fans` VALUES (57,7,30);
INSERT INTO `weibo_fans` VALUES (58,23,30);
INSERT INTO `weibo_fans` VALUES (59,4,30);
INSERT INTO `weibo_fans` VALUES (60,27,30);
INSERT INTO `weibo_fans` VALUES (62,28,1);
INSERT INTO `weibo_fans` VALUES (63,1,29);
INSERT INTO `weibo_fans` VALUES (64,8,31);
INSERT INTO `weibo_fans` VALUES (65,5,31);
INSERT INTO `weibo_fans` VALUES (66,4,31);
INSERT INTO `weibo_fans` VALUES (67,23,31);
INSERT INTO `weibo_fans` VALUES (68,9,31);
INSERT INTO `weibo_fans` VALUES (69,28,30);
INSERT INTO `weibo_fans` VALUES (70,19,30);
INSERT INTO `weibo_fans` VALUES (71,23,30);
INSERT INTO `weibo_fans` VALUES (72,10,30);
INSERT INTO `weibo_fans` VALUES (73,24,30);
INSERT INTO `weibo_fans` VALUES (74,19,31);
INSERT INTO `weibo_fans` VALUES (75,3,31);
INSERT INTO `weibo_fans` VALUES (76,14,31);
INSERT INTO `weibo_fans` VALUES (77,1,31);
INSERT INTO `weibo_fans` VALUES (78,27,31);
INSERT INTO `weibo_fans` VALUES (79,19,32);
INSERT INTO `weibo_fans` VALUES (80,28,32);
INSERT INTO `weibo_fans` VALUES (81,9,32);
INSERT INTO `weibo_fans` VALUES (82,23,32);
INSERT INTO `weibo_fans` VALUES (83,27,32);
/*!40000 ALTER TABLE `weibo_fans` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table weibo_letter
#

DROP TABLE IF EXISTS `weibo_letter`;
CREATE TABLE `weibo_letter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `pl_content` varchar(200) NOT NULL,
  `pl_date` varchar(50) DEFAULT NULL,
  `pl_id` int(11) DEFAULT NULL,
  `record` int(1) DEFAULT '0',
  PRIMARY KEY (`id`,`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=gb2312;

#
# Dumping data for table weibo_letter
#

LOCK TABLES `weibo_letter` WRITE;
/*!40000 ALTER TABLE `weibo_letter` DISABLE KEYS */;
INSERT INTO `weibo_letter` VALUES (1,1,'你好，我是林俊杰','2012-04-28 11:59:01',3,0);
INSERT INTO `weibo_letter` VALUES (2,3,'我是33','2012-04-28 11:59:30',1,1);
INSERT INTO `weibo_letter` VALUES (3,1,'你是一坨大便！','2012-04-28 12:59:01',3,0);
INSERT INTO `weibo_letter` VALUES (4,4,'今年是龙年','2012-04-29 01:01:12',1,1);
/*!40000 ALTER TABLE `weibo_letter` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table weibo_poem
#

DROP TABLE IF EXISTS `weibo_poem`;
CREATE TABLE `weibo_poem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `poem_content` varchar(255) NOT NULL DEFAULT '',
  `public_date` varchar(50) NOT NULL DEFAULT '0000-00-00',
  `photo` varchar(50) DEFAULT '',
  `user_id` int(11) DEFAULT NULL,
  `poem_title` varchar(50) DEFAULT NULL,
  `poem_author` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=gb2312;

#
# Dumping data for table weibo_poem
#

LOCK TABLES `weibo_poem` WRITE;
/*!40000 ALTER TABLE `weibo_poem` DISABLE KEYS */;
INSERT INTO `weibo_poem` VALUES (6,'春眠不觉晓，处处闻啼鸟。\r\n夜来风雨声，花落知多少。','2012-04-27 10:56:23','a',1,'春晓','孟浩然');
INSERT INTO `weibo_poem` VALUES (7,'空山不见人，但闻人语响。\r\n返影入深林，复照青苔上。','2012-04-27 11:03:19','a',1,'鹿柴','王维');
INSERT INTO `weibo_poem` VALUES (8,'红豆生南国，春来发几枝。\r\n愿君多采撷，此物最相思。','2012-04-27 11:45:25','a',1,'相思','王维');
INSERT INTO `weibo_poem` VALUES (9,'君自故乡来，应知故乡事。\r\n来日绮窗前，寒梅著花未。 ','2012-04-27 11:47:23','a',1,'杂诗','王维');
INSERT INTO `weibo_poem` VALUES (10,'终南阴岭秀，积雪浮云端。\r\n林表明霁色，城中增暮寒。','2012-04-27 11:53:42','a',11,'终南望余雪','祖咏');
INSERT INTO `weibo_poem` VALUES (12,'王维桂魄初生秋露微，轻罗已薄未更衣。银筝夜久殷勤弄，心怯空房不忍归。','2012-04-27 13:00:27','a',1,'秋夜曲 ',NULL);
INSERT INTO `weibo_poem` VALUES (13,'贺知章少小离家老大回，乡音无改鬓毛催。儿童相见不相识，笑问客从何处来。\r\n','2012-04-27 18:21:54','a',1,' 回乡偶书 ',NULL);
INSERT INTO `weibo_poem` VALUES (14,'裁剪冰绡，轻叠数重，淡着燕脂匀注。新样靓妆，艳溢香融，羞杀蕊珠宫女。易得凋零，更多少、无情风雨。愁苦，问院落凄凉，几番春暮？','2012-04-27 18:24:21','a',1,'北行见杏花',NULL);
INSERT INTO `weibo_poem` VALUES (15,'ni mei de wei shenm shi null','2012-04-27 18:26:10','a',8,'g8',NULL);
INSERT INTO `weibo_poem` VALUES (16,'ni mei de wei shenm shi null','2012-04-27 18:34:45','a',10,'乱码',NULL);
INSERT INTO `weibo_poem` VALUES (30,'wo shi yun163\r\n','2012-04-28 02:21:51','a',3,NULL,NULL);
INSERT INTO `weibo_poem` VALUES (31,'hah ,zhe shi wo de di er tiao weibo','2012-04-28 02:22:05','a',5,'ads',NULL);
INSERT INTO `weibo_poem` VALUES (32,'zhe shi yige shige weibo','2012-04-28 02:22:16','a',3,NULL,NULL);
INSERT INTO `weibo_poem` VALUES (34,'hahahhahah\r\n','2012-04-28 11:58:34','a',2,NULL,NULL);
INSERT INTO `weibo_poem` VALUES (35,'chao ','2012-04-28 11:58:42','a',2,NULL,NULL);
INSERT INTO `weibo_poem` VALUES (36,'zheshi wo de di san tiao wei bo(chao)','2012-04-28 11:59:01','a',2,NULL,NULL);
INSERT INTO `weibo_poem` VALUES (37,'zhe shi o de wei bo','2012-04-28 11:59:53','a',5,NULL,NULL);
INSERT INTO `weibo_poem` VALUES (38,'ni shi sb','2012-04-28 12:00:03','a',5,NULL,NULL);
INSERT INTO `weibo_poem` VALUES (39,'zhe shi sb de weibo','2012-04-28 12:00:15','a',5,'a5',NULL);
INSERT INTO `weibo_poem` VALUES (40,'wo shi fei zi jia','2012-04-28 12:01:08','a',7,NULL,NULL);
INSERT INTO `weibo_poem` VALUES (41,'zhe shi duan yu jia de weibo','2012-04-28 12:01:17','a',7,NULL,NULL);
INSERT INTO `weibo_poem` VALUES (42,'zhe shi id wei 4de user','2012-04-28 12:02:28','a',4,NULL,NULL);
INSERT INTO `weibo_poem` VALUES (43,'id wei 4de yonghu de di 2 tiao weibo','2012-04-28 12:02:46','a',4,'a4',NULL);
INSERT INTO `weibo_poem` VALUES (45,'asdfads','2012-05-03 21:07:19','a',6,'t6',NULL);
INSERT INTO `weibo_poem` VALUES (48,'adfgdfagadfg','2012-05-04 00:04:11','a',7,'adsf',NULL);
INSERT INTO `weibo_poem` VALUES (52,'天与人体吧','2012-05-04 12:15:25','a',1,NULL,NULL);
INSERT INTO `weibo_poem` VALUES (53,'脚后跟客户即可','2012-05-04 12:15:45','a',1,NULL,NULL);
INSERT INTO `weibo_poem` VALUES (54,'床前明月光，疑是地下霜，举头望明月，低头思故乡。','2012-05-04 12:26:13','a',1,NULL,NULL);
INSERT INTO `weibo_poem` VALUES (55,'我是梁超云','2012-05-07 21:20:19','a',8,NULL,NULL);
INSERT INTO `weibo_poem` VALUES (57,'雨荷还是语荷?','2012-05-14 03:36:22','',1,'语荷',NULL);
INSERT INTO `weibo_poem` VALUES (58,'今天是Database的pre，这是我发的第一首诗：大江东去，惊涛拍案','2012-05-14 11:20:10','',31,'第一首诗',NULL);
INSERT INTO `weibo_poem` VALUES (59,'北爷写代码很厉害！','2012-05-14 11:28:55','',32,'北爷',NULL);
INSERT INTO `weibo_poem` VALUES (60,'最近有点火','2012-05-14 11:33:38','',29,'我是金山找',NULL);
INSERT INTO `weibo_poem` VALUES (61,'什么都是浮云','2012-05-14 11:42:18','',1,'诗歌',NULL);
/*!40000 ALTER TABLE `weibo_poem` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table weibo_transpond
#

DROP TABLE IF EXISTS `weibo_transpond`;
CREATE TABLE `weibo_transpond` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `transpond_date` varchar(50) DEFAULT NULL,
  `poem_id` int(11) DEFAULT NULL,
  `user_id2` int(11) DEFAULT NULL,
  `comment` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=gb2312;

#
# Dumping data for table weibo_transpond
#

LOCK TABLES `weibo_transpond` WRITE;
/*!40000 ALTER TABLE `weibo_transpond` DISABLE KEYS */;
INSERT INTO `weibo_transpond` VALUES (1,1,'2012-05-08 08:12:11',12,1,'转发微博');
INSERT INTO `weibo_transpond` VALUES (2,5,'2012-04-28 11:59:01',12,1,'转发微博');
INSERT INTO `weibo_transpond` VALUES (3,2,'2012-04-28 11:59:01',34,2,'好诗。');
INSERT INTO `weibo_transpond` VALUES (6,6,'2012-04-28 11:59:01',35,2,NULL);
INSERT INTO `weibo_transpond` VALUES (7,1,'2012-05-14 03:28:22',37,5,NULL);
/*!40000 ALTER TABLE `weibo_transpond` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table weibo_user
#

DROP TABLE IF EXISTS `weibo_user`;
CREATE TABLE `weibo_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `nickname` varchar(30) NOT NULL DEFAULT '',
  `gender` varchar(30) DEFAULT '',
  `region` varchar(30) DEFAULT '',
  `school` varchar(30) DEFAULT NULL,
  `real_name` varchar(30) NOT NULL DEFAULT '',
  `introduction` varchar(255) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `nickname` (`nickname`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=gb2312;

#
# Dumping data for table weibo_user
#

LOCK TABLES `weibo_user` WRITE;
/*!40000 ALTER TABLE `weibo_user` DISABLE KEYS */;
INSERT INTO `weibo_user` VALUES (1,'shelvin@uic.com','123456','林俊杰','男','广东','北理工','yun','我喜欢音乐，但是我更喜欢诗歌','img/upload/1336188356401.jpg');
INSERT INTO `weibo_user` VALUES (2,'chao@qq.com','123456','何炅','男','广东','uic','chao','就是今天啦！有笑有泪地走起！','img/upload/1336188487711.jpg');
INSERT INTO `weibo_user` VALUES (3,'yun@163.com','111111','王力宏','男','天津','uic','liang','荒野特别安静','img/upload/1336188623643.jpg');
INSERT INTO `weibo_user` VALUES (4,'qqq@uic.com','111111','杨幂','女','北京','sdf','asdf','这里有一只狐狸，幸福，感恩，知足，爱','img/upload/1336188882435.jpg');
INSERT INTO `weibo_user` VALUES (5,'oo@q.com','222222','李敏镐','女','广东','uci','ac','Hello, this is Minho Lee [Lee Minho]. I\'m a Korean actor. I hope we can share this space to communicate often','img/upload/1336188948170.jpg');
INSERT INTO `weibo_user` VALUES (6,'asdf@af.co','333333','方舟子','男','北京','a','cs','韩寒透过李开复牵线安排，让他得以‘参团’来台','img/upload/1336190120661.jpg');
INSERT INTO `weibo_user` VALUES (7,'duan@qq.com','654321','苍井空','女','天津','uic','yu','大家好！我是苍井空. 有时演电影,唱歌,有时在电视节目中露露脸。','img/upload/1336190274228.jpg');
INSERT INTO `weibo_user` VALUES (8,'bfa@uic.com','123456','李开复','男','广东','adsf','asdf','创新工场CEO','img/upload/1336190737240.jpg');
INSERT INTO `weibo_user` VALUES (9,'adsvcv@uic.com','123456','周立波','男','天津','adsf','adf','老歌听不厌，每每唱起总有岁月的钩沉与往事的浮现。','img/upload/1336221296498.jpg');
INSERT INTO `weibo_user` VALUES (10,'adggdg@uic.com','123456','多福多寿','女','广东','adsf','adsf','adsf','img/upload/1336221458184.jpeg');
INSERT INTO `weibo_user` VALUES (13,'ui@qq.com','123456','张杰','男','北京','uic','张杰',NULL,'img/upload/1336221458184.jpeg');
INSERT INTO `weibo_user` VALUES (14,'op@11.com','654321','姚晨','男','广东','aa','姚晨',NULL,'img/headmodify.jpg');
INSERT INTO `weibo_user` VALUES (19,'chaoyun@uic.com','123456','段誉','男','天津','uic','段没','大家好，刚刚开通了微博，大家来看看','img/headmodify.jpg');
INSERT INTO `weibo_user` VALUES (23,'hahah@uic.com','123456','陈潼','女','广东','uic','陈潼',NULL,'img/upload/1336649317998.jpg');
INSERT INTO `weibo_user` VALUES (24,'bad@uic.com','123456','哈达','男','天津','北京师范大学','哈达',NULL,'img/headmodify.jpg');
INSERT INTO `weibo_user` VALUES (26,'abcc@uic.com','123456','姗姗','女','天津','浸会大学','姗姗',NULL,'img/headmodify.jpg');
INSERT INTO `weibo_user` VALUES (27,'adsf@uic.com','123456','asdf','女','广东','adsf','adsf',NULL,'img/headmodify.jpg');
INSERT INTO `weibo_user` VALUES (28,'ck2@11.com','123456','王值田','男','北京','清华大学','王值田',NULL,'img/headmodify.jpg');
INSERT INTO `weibo_user` VALUES (29,'lijian@uic.com','123456','蔡立健','男','北京','剑桥大学','蔡立健',NULL,'img/headmodify.jpg');
INSERT INTO `weibo_user` VALUES (30,'wen@uic.com','123456','翁杰','男','广东','蓝翔','翁杰',NULL,'img/upload/1336964858388.jpg');
INSERT INTO `weibo_user` VALUES (31,'liu@uic.com','123456','刘军','男','广东','uic','刘军',NULL,'img/headmodify.jpg');
INSERT INTO `weibo_user` VALUES (32,'bei@uic.com','123456','北爷','女','广东','uic','北爷',NULL,'img/headmodify.jpg');
/*!40000 ALTER TABLE `weibo_user` ENABLE KEYS */;
UNLOCK TABLES;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
