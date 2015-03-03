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
INSERT INTO `weibo_badword` VALUES (1,'��ΰ��');
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
INSERT INTO `weibo_comment` VALUES (7,29,'��ʫ��','2012-05-14 02:11:58',54,1);
INSERT INTO `weibo_comment` VALUES (8,29,'Ϊɶ','2012-05-14 02:13:27',14,1);
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
INSERT INTO `weibo_letter` VALUES (1,1,'��ã������ֿ���','2012-04-28 11:59:01',3,0);
INSERT INTO `weibo_letter` VALUES (2,3,'����33','2012-04-28 11:59:30',1,1);
INSERT INTO `weibo_letter` VALUES (3,1,'����һ���㣡','2012-04-28 12:59:01',3,0);
INSERT INTO `weibo_letter` VALUES (4,4,'����������','2012-04-29 01:01:12',1,1);
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
INSERT INTO `weibo_poem` VALUES (6,'���߲�����������������\r\nҹ��������������֪���١�','2012-04-27 10:56:23','a',1,'����','�Ϻ�Ȼ');
INSERT INTO `weibo_poem` VALUES (7,'��ɽ�����ˣ����������졣\r\n��Ӱ�����֣�������̦�ϡ�','2012-04-27 11:03:19','a',1,'¹��','��ά');
INSERT INTO `weibo_poem` VALUES (8,'�춹���Ϲ�����������֦��\r\nԸ�����ߢ����������˼��','2012-04-27 11:45:25','a',1,'��˼','��ά');
INSERT INTO `weibo_poem` VALUES (9,'���Թ�������Ӧ֪�����¡�\r\n����粴�ǰ����÷����δ�� ','2012-04-27 11:47:23','a',1,'��ʫ','��ά');
INSERT INTO `weibo_poem` VALUES (10,'���������㣬��ѩ���ƶˡ�\r\n�ֱ�����ɫ��������ĺ����','2012-04-27 11:53:42','a',11,'��������ѩ','��ӽ');
INSERT INTO `weibo_poem` VALUES (12,'��ά���ǳ�����¶΢�������ѱ�δ���¡�����ҹ������Ū�����ӿշ����̹顣','2012-04-27 13:00:27','a',1,'��ҹ�� ',NULL);
INSERT INTO `weibo_poem` VALUES (13,'��֪����С����ϴ�أ������޸���ë�ߡ���ͯ�������ʶ��Ц�ʿʹӺδ�����\r\n','2012-04-27 18:21:54','a',1,' ����ż�� ',NULL);
INSERT INTO `weibo_poem` VALUES (14,'�ü���篣�������أ�������֬��ע��������ױ���������ڣ���ɱ���鹬Ů���׵õ��㣬�����١�������ꡣ��࣬��Ժ��������������ĺ��','2012-04-27 18:24:21','a',1,'���м��ӻ�',NULL);
INSERT INTO `weibo_poem` VALUES (15,'ni mei de wei shenm shi null','2012-04-27 18:26:10','a',8,'g8',NULL);
INSERT INTO `weibo_poem` VALUES (16,'ni mei de wei shenm shi null','2012-04-27 18:34:45','a',10,'����',NULL);
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
INSERT INTO `weibo_poem` VALUES (52,'���������','2012-05-04 12:15:25','a',1,NULL,NULL);
INSERT INTO `weibo_poem` VALUES (53,'�ź���ͻ�����','2012-05-04 12:15:45','a',1,NULL,NULL);
INSERT INTO `weibo_poem` VALUES (54,'��ǰ���¹⣬���ǵ���˪����ͷ�����£���ͷ˼���硣','2012-05-04 12:26:13','a',1,NULL,NULL);
INSERT INTO `weibo_poem` VALUES (55,'����������','2012-05-07 21:20:19','a',8,NULL,NULL);
INSERT INTO `weibo_poem` VALUES (57,'��ɻ������?','2012-05-14 03:36:22','',1,'���',NULL);
INSERT INTO `weibo_poem` VALUES (58,'������Database��pre�������ҷ��ĵ�һ��ʫ���󽭶�ȥ�������İ�','2012-05-14 11:20:10','',31,'��һ��ʫ',NULL);
INSERT INTO `weibo_poem` VALUES (59,'��үд�����������','2012-05-14 11:28:55','',32,'��ү',NULL);
INSERT INTO `weibo_poem` VALUES (60,'����е��','2012-05-14 11:33:38','',29,'���ǽ�ɽ��',NULL);
INSERT INTO `weibo_poem` VALUES (61,'ʲô���Ǹ���','2012-05-14 11:42:18','',1,'ʫ��',NULL);
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
INSERT INTO `weibo_transpond` VALUES (1,1,'2012-05-08 08:12:11',12,1,'ת��΢��');
INSERT INTO `weibo_transpond` VALUES (2,5,'2012-04-28 11:59:01',12,1,'ת��΢��');
INSERT INTO `weibo_transpond` VALUES (3,2,'2012-04-28 11:59:01',34,2,'��ʫ��');
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
INSERT INTO `weibo_user` VALUES (1,'shelvin@uic.com','123456','�ֿ���','��','�㶫','����','yun','��ϲ�����֣������Ҹ�ϲ��ʫ��','img/upload/1336188356401.jpg');
INSERT INTO `weibo_user` VALUES (2,'chao@qq.com','123456','����','��','�㶫','uic','chao','���ǽ���������Ц���������','img/upload/1336188487711.jpg');
INSERT INTO `weibo_user` VALUES (3,'yun@163.com','111111','������','��','���','uic','liang','��Ұ�ر𰲾�','img/upload/1336188623643.jpg');
INSERT INTO `weibo_user` VALUES (4,'qqq@uic.com','111111','����','Ů','����','sdf','asdf','������һֻ���꣬�Ҹ����ж���֪�㣬��','img/upload/1336188882435.jpg');
INSERT INTO `weibo_user` VALUES (5,'oo@q.com','222222','������','Ů','�㶫','uci','ac','Hello, this is Minho Lee [Lee Minho]. I\'m a Korean actor. I hope we can share this space to communicate often','img/upload/1336188948170.jpg');
INSERT INTO `weibo_user` VALUES (6,'asdf@af.co','333333','������','��','����','a','cs','����͸�����ǣ�߰��ţ��������ԡ����š���̨','img/upload/1336190120661.jpg');
INSERT INTO `weibo_user` VALUES (7,'duan@qq.com','654321','�Ծ���','Ů','���','uic','yu','��Һã����ǲԾ���. ��ʱ�ݵ�Ӱ,����,��ʱ�ڵ��ӽ�Ŀ��¶¶����','img/upload/1336190274228.jpg');
INSERT INTO `weibo_user` VALUES (8,'bfa@uic.com','123456','���','��','�㶫','adsf','asdf','���¹���CEO','img/upload/1336190737240.jpg');
INSERT INTO `weibo_user` VALUES (9,'adsvcv@uic.com','123456','������','��','���','adsf','adf','�ϸ������ᣬÿÿ�����������µĹ��������µĸ��֡�','img/upload/1336221296498.jpg');
INSERT INTO `weibo_user` VALUES (10,'adggdg@uic.com','123456','�ร����','Ů','�㶫','adsf','adsf','adsf','img/upload/1336221458184.jpeg');
INSERT INTO `weibo_user` VALUES (13,'ui@qq.com','123456','�Ž�','��','����','uic','�Ž�',NULL,'img/upload/1336221458184.jpeg');
INSERT INTO `weibo_user` VALUES (14,'op@11.com','654321','Ҧ��','��','�㶫','aa','Ҧ��',NULL,'img/headmodify.jpg');
INSERT INTO `weibo_user` VALUES (19,'chaoyun@uic.com','123456','����','��','���','uic','��û','��Һã��ոտ�ͨ��΢�������������','img/headmodify.jpg');
INSERT INTO `weibo_user` VALUES (23,'hahah@uic.com','123456','����','Ů','�㶫','uic','����',NULL,'img/upload/1336649317998.jpg');
INSERT INTO `weibo_user` VALUES (24,'bad@uic.com','123456','����','��','���','����ʦ����ѧ','����',NULL,'img/headmodify.jpg');
INSERT INTO `weibo_user` VALUES (26,'abcc@uic.com','123456','��','Ů','���','�����ѧ','��',NULL,'img/headmodify.jpg');
INSERT INTO `weibo_user` VALUES (27,'adsf@uic.com','123456','asdf','Ů','�㶫','adsf','adsf',NULL,'img/headmodify.jpg');
INSERT INTO `weibo_user` VALUES (28,'ck2@11.com','123456','��ֵ��','��','����','�廪��ѧ','��ֵ��',NULL,'img/headmodify.jpg');
INSERT INTO `weibo_user` VALUES (29,'lijian@uic.com','123456','������','��','����','���Ŵ�ѧ','������',NULL,'img/headmodify.jpg');
INSERT INTO `weibo_user` VALUES (30,'wen@uic.com','123456','�̽�','��','�㶫','����','�̽�',NULL,'img/upload/1336964858388.jpg');
INSERT INTO `weibo_user` VALUES (31,'liu@uic.com','123456','����','��','�㶫','uic','����',NULL,'img/headmodify.jpg');
INSERT INTO `weibo_user` VALUES (32,'bei@uic.com','123456','��ү','Ů','�㶫','uic','��ү',NULL,'img/headmodify.jpg');
/*!40000 ALTER TABLE `weibo_user` ENABLE KEYS */;
UNLOCK TABLES;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
