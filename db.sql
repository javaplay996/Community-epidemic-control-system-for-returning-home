/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - yiqingfanxiangguankong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`yiqingfanxiangguankong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `yiqingfanxiangguankong`;

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '所属用户',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='购物车';

/*Data for the table `cart` */

insert  into `cart`(`id`,`yonghu_id`,`shangpin_id`,`buy_number`,`create_time`,`update_time`,`insert_time`) values (1,1,10,1,'2023-04-17 17:02:31',NULL,'2023-04-17 17:02:31');

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '提问用户',
  `chat_issue` varchar(200) DEFAULT NULL COMMENT '问题',
  `issue_time` timestamp NULL DEFAULT NULL COMMENT '问题时间 Search111',
  `chat_reply` varchar(200) DEFAULT NULL COMMENT '回复',
  `reply_time` timestamp NULL DEFAULT NULL COMMENT '回复时间 Search111',
  `zhuangtai_types` int(255) DEFAULT NULL COMMENT '状态',
  `chat_types` int(11) DEFAULT NULL COMMENT '数据类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='投诉';

/*Data for the table `chat` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-04-17 16:57:34'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-04-17 16:57:34'),(3,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-04-17 16:57:34'),(4,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-04-17 16:57:35'),(5,'jiance_types','检测结果',1,'阴性',NULL,NULL,'2023-04-17 16:57:35'),(6,'jiance_types','检测结果',2,'阳性',NULL,NULL,'2023-04-17 16:57:35'),(7,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-04-17 16:57:35'),(8,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-04-17 16:57:35'),(9,'chat_types','数据类型',1,'问题',NULL,NULL,'2023-04-17 16:57:35'),(10,'chat_types','数据类型',2,'回复',NULL,NULL,'2023-04-17 16:57:35'),(11,'zhuangtai_types','状态',1,'未回复',NULL,NULL,'2023-04-17 16:57:35'),(12,'zhuangtai_types','状态',2,'已回复',NULL,NULL,'2023-04-17 16:57:35'),(13,'wangfan_yuyue_yesno_types','申报状态',1,'待审核',NULL,NULL,'2023-04-17 16:57:35'),(14,'wangfan_yuyue_yesno_types','申报状态',2,'同意',NULL,NULL,'2023-04-17 16:57:35'),(15,'wangfan_yuyue_yesno_types','申报状态',3,'拒绝',NULL,NULL,'2023-04-17 16:57:35'),(16,'wangfan_yuyue_types','交通工具',1,'自驾',NULL,NULL,'2023-04-17 16:57:35'),(17,'wangfan_yuyue_types','交通工具',2,'汽车',NULL,NULL,'2023-04-17 16:57:35'),(18,'wangfan_yuyue_types','交通工具',3,'火车',NULL,NULL,'2023-04-17 16:57:35'),(19,'wangfan_yuyue_shenti_types','身体状态',1,'健康',NULL,NULL,'2023-04-17 16:57:35'),(20,'wangfan_yuyue_shenti_types','身体状态',2,'异常',NULL,NULL,'2023-04-17 16:57:35'),(21,'wuzi_types','物资类型',1,'物资类型1',NULL,NULL,'2023-04-17 16:57:35'),(22,'wuzi_types','物资类型',2,'物资类型2',NULL,NULL,'2023-04-17 16:57:35'),(23,'wuzi_types','物资类型',3,'物资类型3',NULL,NULL,'2023-04-17 16:57:35'),(24,'wuzi_types','物资类型',4,'物资类型4',NULL,NULL,'2023-04-17 16:57:35'),(25,'wuzi_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-04-17 16:57:35'),(26,'wuzi_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-04-17 16:57:35'),(27,'wuzi_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-04-17 16:57:35'),(28,'wuzi_order_types','订单类型',101,'已申请',NULL,NULL,'2023-04-17 16:57:35'),(29,'wuzi_order_types','订单类型',102,'已取消申请',NULL,NULL,'2023-04-17 16:57:35'),(30,'wuzi_order_types','订单类型',103,'已发放',NULL,NULL,'2023-04-17 16:57:35'),(31,'wuzi_order_types','订单类型',104,'已领取',NULL,NULL,'2023-04-17 16:57:35'),(32,'wuzi_yuyue_yesno_types','捐赠状态',1,'待审核',NULL,NULL,'2023-04-17 16:57:35'),(33,'wuzi_yuyue_yesno_types','捐赠状态',2,'同意',NULL,NULL,'2023-04-17 16:57:35'),(34,'wuzi_yuyue_yesno_types','捐赠状态',3,'拒绝',NULL,NULL,'2023-04-17 16:57:35'),(35,'shangpin_types','商品类型',1,'商品类型1',NULL,NULL,'2023-04-17 16:57:35'),(36,'shangpin_types','商品类型',2,'商品类型2',NULL,NULL,'2023-04-17 16:57:35'),(37,'shangpin_types','商品类型',3,'商品类型3',NULL,NULL,'2023-04-17 16:57:35'),(38,'shangpin_types','商品类型',4,'商品类型4',NULL,NULL,'2023-04-17 16:57:35'),(39,'shangpin_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-04-17 16:57:35'),(40,'shangpin_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-04-17 16:57:35'),(41,'shangpin_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-04-17 16:57:35'),(42,'shangpin_order_types','订单类型',101,'已代购',NULL,NULL,'2023-04-17 16:57:35'),(43,'shangpin_order_types','订单类型',102,'已取消代购',NULL,NULL,'2023-04-17 16:57:35'),(44,'shangpin_order_types','订单类型',103,'已送达',NULL,NULL,'2023-04-17 16:57:35'),(45,'shangpin_order_types','订单类型',104,'已领取',NULL,NULL,'2023-04-17 16:57:35'),(46,'shangpin_order_types','订单类型',105,'已评价',NULL,NULL,'2023-04-17 16:57:35');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',1,NULL,'发布内容1',140,1,'2023-04-17 16:58:06','2023-04-17 16:58:06','2023-04-17 16:58:06'),(2,'帖子标题2',2,NULL,'发布内容2',133,1,'2023-04-17 16:58:06','2023-04-17 16:58:06','2023-04-17 16:58:06'),(3,'帖子标题3',2,NULL,'发布内容3',42,1,'2023-04-17 16:58:06','2023-04-17 16:58:06','2023-04-17 16:58:06'),(4,'帖子标题4',3,NULL,'发布内容4',254,1,'2023-04-17 16:58:06','2023-04-17 16:58:06','2023-04-17 16:58:06'),(5,'帖子标题5',1,NULL,'发布内容5',245,1,'2023-04-17 16:58:06','2023-04-17 16:58:06','2023-04-17 16:58:06'),(6,'帖子标题6',3,NULL,'发布内容6',391,1,'2023-04-17 16:58:06','2023-04-17 16:58:06','2023-04-17 16:58:06'),(7,'帖子标题7',2,NULL,'发布内容7',82,1,'2023-04-17 16:58:06','2023-04-17 16:58:06','2023-04-17 16:58:06'),(8,'帖子标题8',2,NULL,'发布内容8',194,1,'2023-04-17 16:58:06','2023-04-17 16:58:06','2023-04-17 16:58:06'),(9,'帖子标题9',1,NULL,'发布内容9',489,1,'2023-04-17 16:58:06','2023-04-17 16:58:06','2023-04-17 16:58:06'),(10,'帖子标题10',2,NULL,'发布内容10',172,1,'2023-04-17 16:58:06','2023-04-17 16:58:06','2023-04-17 16:58:06'),(11,'帖子标题11',2,NULL,'发布内容11',361,1,'2023-04-17 16:58:06','2023-04-17 16:58:06','2023-04-17 16:58:06'),(12,'帖子标题12',3,NULL,'发布内容12',298,1,'2023-04-17 16:58:06','2023-04-17 16:58:06','2023-04-17 16:58:06'),(13,'帖子标题13',1,NULL,'发布内容13',367,1,'2023-04-17 16:58:06','2023-04-17 16:58:06','2023-04-17 16:58:06'),(14,'帖子标题14',2,NULL,'发布内容14',408,1,'2023-04-17 16:58:06','2023-04-17 16:58:06','2023-04-17 16:58:06');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',2,'2023-04-17 16:58:06','公告详情1','2023-04-17 16:58:06'),(2,'公告名称2','upload/gonggao2.jpg',2,'2023-04-17 16:58:06','公告详情2','2023-04-17 16:58:06'),(3,'公告名称3','upload/gonggao3.jpg',2,'2023-04-17 16:58:06','公告详情3','2023-04-17 16:58:06'),(4,'公告名称4','upload/gonggao4.jpg',2,'2023-04-17 16:58:06','公告详情4','2023-04-17 16:58:06'),(5,'公告名称5','upload/gonggao5.jpg',2,'2023-04-17 16:58:06','公告详情5','2023-04-17 16:58:06'),(6,'公告名称6','upload/gonggao6.jpg',1,'2023-04-17 16:58:06','公告详情6','2023-04-17 16:58:06'),(7,'公告名称7','upload/gonggao7.jpg',1,'2023-04-17 16:58:06','公告详情7','2023-04-17 16:58:06'),(8,'公告名称8','upload/gonggao8.jpg',2,'2023-04-17 16:58:06','公告详情8','2023-04-17 16:58:06'),(9,'公告名称9','upload/gonggao9.jpg',2,'2023-04-17 16:58:06','公告详情9','2023-04-17 16:58:06'),(10,'公告名称10','upload/gonggao10.jpg',2,'2023-04-17 16:58:06','公告详情10','2023-04-17 16:58:06'),(11,'公告名称11','upload/gonggao11.jpg',1,'2023-04-17 16:58:06','公告详情11','2023-04-17 16:58:06'),(12,'公告名称12','upload/gonggao12.jpg',2,'2023-04-17 16:58:06','公告详情12','2023-04-17 16:58:06'),(13,'公告名称13','upload/gonggao13.jpg',1,'2023-04-17 16:58:06','公告详情13','2023-04-17 16:58:06'),(14,'公告名称14','upload/gonggao14.jpg',2,'2023-04-17 16:58:06','公告详情14','2023-04-17 16:58:06');

/*Table structure for table `hesuanjiance` */

DROP TABLE IF EXISTS `hesuanjiance`;

CREATE TABLE `hesuanjiance` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jiance_time` timestamp NULL DEFAULT NULL COMMENT '检测时间',
  `jiance_types` int(11) NOT NULL COMMENT '检测结果  Search111 ',
  `hesuanjiance_content` longtext COMMENT '备注 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='核酸检测';

/*Data for the table `hesuanjiance` */

insert  into `hesuanjiance`(`id`,`yonghu_id`,`jiance_time`,`jiance_types`,`hesuanjiance_content`,`insert_time`,`create_time`) values (1,2,'2023-04-17 16:58:06',1,'备注1','2023-04-17 16:58:06','2023-04-17 16:58:06'),(2,3,'2023-04-17 16:58:06',1,'备注2','2023-04-17 16:58:06','2023-04-17 16:58:06'),(3,2,'2023-04-17 16:58:06',2,'备注3','2023-04-17 16:58:06','2023-04-17 16:58:06'),(4,2,'2023-04-17 16:58:06',1,'备注4','2023-04-17 16:58:06','2023-04-17 16:58:06'),(5,1,'2023-04-17 16:58:06',1,'备注5','2023-04-17 16:58:06','2023-04-17 16:58:06'),(6,1,'2023-04-17 16:58:06',2,'备注6','2023-04-17 16:58:06','2023-04-17 16:58:06'),(7,2,'2023-04-17 16:58:06',2,'备注7','2023-04-17 16:58:06','2023-04-17 16:58:06'),(8,3,'2023-04-17 16:58:06',2,'备注8','2023-04-17 16:58:06','2023-04-17 16:58:06'),(9,1,'2023-04-17 16:58:06',1,'备注9','2023-04-17 16:58:06','2023-04-17 16:58:06'),(10,1,'2023-04-17 16:58:06',2,'备注10','2023-04-17 16:58:06','2023-04-17 16:58:06'),(11,2,'2023-04-17 16:58:06',2,'备注11','2023-04-17 16:58:06','2023-04-17 16:58:06'),(12,3,'2023-04-17 16:58:06',2,'备注12','2023-04-17 16:58:06','2023-04-17 16:58:06'),(13,1,'2023-04-17 16:58:06',2,'备注13','2023-04-17 16:58:06','2023-04-17 16:58:06'),(14,1,'2023-04-17 16:58:06',2,'备注14','2023-04-17 16:58:06','2023-04-17 16:58:06');

/*Table structure for table `shangpin` */

DROP TABLE IF EXISTS `shangpin`;

CREATE TABLE `shangpin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangpin_name` varchar(200) DEFAULT NULL COMMENT '商品名称  Search111 ',
  `shangpin_uuid_number` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpin_photo` varchar(200) DEFAULT NULL COMMENT '商品照片',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `shangpin_types` int(11) DEFAULT NULL COMMENT '商品类型 Search111',
  `shangpin_kucun_number` int(11) DEFAULT NULL COMMENT '商品库存',
  `shangpin_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价/积分 ',
  `shangpin_clicknum` int(11) DEFAULT NULL COMMENT '商品热度',
  `shangpin_content` longtext COMMENT '商品介绍 ',
  `shangpin_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='商品';

/*Data for the table `shangpin` */

insert  into `shangpin`(`id`,`shangpin_name`,`shangpin_uuid_number`,`shangpin_photo`,`zan_number`,`cai_number`,`shangpin_types`,`shangpin_kucun_number`,`shangpin_new_money`,`shangpin_clicknum`,`shangpin_content`,`shangpin_delete`,`insert_time`,`create_time`) values (1,'商品名称1','1681721887002','upload/shangpin1.jpg',443,201,3,101,'256.32',288,'商品介绍1',1,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(2,'商品名称2','1681721886989','upload/shangpin2.jpg',346,159,1,102,'442.21',85,'商品介绍2',1,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(3,'商品名称3','1681721887046','upload/shangpin3.jpg',105,443,2,103,'220.28',377,'商品介绍3',1,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(4,'商品名称4','1681721887003','upload/shangpin4.jpg',465,401,4,104,'280.94',267,'商品介绍4',1,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(5,'商品名称5','1681721887023','upload/shangpin5.jpg',274,397,4,105,'80.18',56,'商品介绍5',1,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(6,'商品名称6','1681721886964','upload/shangpin6.jpg',374,312,4,106,'319.43',4,'商品介绍6',1,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(7,'商品名称7','1681721887056','upload/shangpin7.jpg',275,388,3,107,'189.86',220,'商品介绍7',1,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(8,'商品名称8','1681721886973','upload/shangpin8.jpg',249,372,1,108,'80.99',82,'商品介绍8',1,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(9,'商品名称9','1681721886976','upload/shangpin9.jpg',39,347,1,109,'492.54',387,'商品介绍9',1,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(10,'商品名称10','1681721887011','upload/shangpin10.jpg',175,385,3,1009,'300.00',467,'商品介绍10',1,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(11,'商品名称11','1681721886973','upload/shangpin11.jpg',398,159,2,1011,'463.12',468,'商品介绍11',1,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(12,'商品名称12','1681721887018','upload/shangpin12.jpg',323,231,1,1012,'203.64',195,'商品介绍12',1,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(13,'商品名称13','1681721887008','upload/shangpin13.jpg',251,296,4,1013,'34.21',196,'商品介绍13',1,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(14,'商品名称14','1681721886977','upload/shangpin14.jpg',485,265,4,1014,'281.86',68,'商品介绍14',1,'2023-04-17 16:58:06','2023-04-17 16:58:06');

/*Table structure for table `shangpin_collection` */

DROP TABLE IF EXISTS `shangpin_collection`;

CREATE TABLE `shangpin_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangpin_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='商品收藏';

/*Data for the table `shangpin_collection` */

insert  into `shangpin_collection`(`id`,`shangpin_id`,`yonghu_id`,`shangpin_collection_types`,`insert_time`,`create_time`) values (1,1,1,1,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(2,2,2,1,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(3,3,2,1,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(4,4,3,1,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(5,5,3,1,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(6,6,2,1,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(7,7,3,1,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(8,8,3,1,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(9,9,2,1,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(10,10,3,1,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(11,11,3,1,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(12,12,1,1,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(13,13,3,1,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(14,14,3,1,'2023-04-17 16:58:06','2023-04-17 16:58:06');

/*Table structure for table `shangpin_commentback` */

DROP TABLE IF EXISTS `shangpin_commentback`;

CREATE TABLE `shangpin_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangpin_commentback_text` longtext COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='商品评价';

/*Data for the table `shangpin_commentback` */

insert  into `shangpin_commentback`(`id`,`shangpin_id`,`yonghu_id`,`shangpin_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,1,'评价内容1','2023-04-17 16:58:06','回复信息1','2023-04-17 16:58:06','2023-04-17 16:58:06'),(2,2,3,'评价内容2','2023-04-17 16:58:06','回复信息2','2023-04-17 16:58:06','2023-04-17 16:58:06'),(3,3,3,'评价内容3','2023-04-17 16:58:06','回复信息3','2023-04-17 16:58:06','2023-04-17 16:58:06'),(4,4,3,'评价内容4','2023-04-17 16:58:06','回复信息4','2023-04-17 16:58:06','2023-04-17 16:58:06'),(5,5,2,'评价内容5','2023-04-17 16:58:06','回复信息5','2023-04-17 16:58:06','2023-04-17 16:58:06'),(6,6,2,'评价内容6','2023-04-17 16:58:06','回复信息6','2023-04-17 16:58:06','2023-04-17 16:58:06'),(7,7,3,'评价内容7','2023-04-17 16:58:06','回复信息7','2023-04-17 16:58:06','2023-04-17 16:58:06'),(8,8,2,'评价内容8','2023-04-17 16:58:06','回复信息8','2023-04-17 16:58:06','2023-04-17 16:58:06'),(9,9,2,'评价内容9','2023-04-17 16:58:06','回复信息9','2023-04-17 16:58:06','2023-04-17 16:58:06'),(10,10,3,'评价内容10','2023-04-17 16:58:06','回复信息10','2023-04-17 16:58:06','2023-04-17 16:58:06'),(11,11,2,'评价内容11','2023-04-17 16:58:06','回复信息11','2023-04-17 16:58:06','2023-04-17 16:58:06'),(12,12,1,'评价内容12','2023-04-17 16:58:06','回复信息12','2023-04-17 16:58:06','2023-04-17 16:58:06'),(13,13,3,'评价内容13','2023-04-17 16:58:06','回复信息13','2023-04-17 16:58:06','2023-04-17 16:58:06'),(14,14,3,'评价内容14','2023-04-17 16:58:06','回复信息14','2023-04-17 16:58:06','2023-04-17 16:58:06');

/*Table structure for table `shangpin_order` */

DROP TABLE IF EXISTS `shangpin_order`;

CREATE TABLE `shangpin_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `shangpin_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `shangpin_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='商品订单';

/*Data for the table `shangpin_order` */

insert  into `shangpin_order`(`id`,`shangpin_order_uuid_number`,`shangpin_id`,`yonghu_id`,`buy_number`,`shangpin_order_true_price`,`shangpin_order_types`,`insert_time`,`create_time`) values (1,'1681722174382',10,1,1,'300.00',101,'2023-04-17 17:02:54','2023-04-17 17:02:54');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '儿童id',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','0b1gcdf316d906n9op1x035wmyxqvg7z','2023-04-17 17:00:49','2023-04-17 18:00:49'),(2,1,'admin','users','管理员','i7wlmky4rf2aigc1oc39pvvtl9kpde5s','2023-04-17 17:06:27','2023-04-17 18:06:27');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-04-17 16:57:34');

/*Table structure for table `wangfan_yuyue` */

DROP TABLE IF EXISTS `wangfan_yuyue`;

CREATE TABLE `wangfan_yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `wangfan_yuyue_text` text COMMENT '申请理由',
  `wangfan_yuyue_types` int(11) DEFAULT NULL COMMENT '交通工具 Search111',
  `wangfan_yuyue_mudidi` varchar(200) DEFAULT NULL COMMENT '去哪里',
  `wangfan_yuyue_chufadi` varchar(200) DEFAULT NULL COMMENT '地址',
  `wangfan_yuyue_shenti_types` int(11) DEFAULT NULL COMMENT '身体状态 Search111',
  `wangfan_yuyue_chufa_time` date DEFAULT NULL COMMENT '出发时间',
  `wangfan_yuyue_daoda_time` date DEFAULT NULL COMMENT '到达时间',
  `wangfan_yuyue_yesno_types` int(11) DEFAULT NULL COMMENT '申报状态 Search111 ',
  `wangfan_yuyue_yesno_text` text COMMENT '审核回复',
  `wangfan_yuyue_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '活动报名时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='出行信息';

/*Data for the table `wangfan_yuyue` */

insert  into `wangfan_yuyue`(`id`,`yonghu_id`,`wangfan_yuyue_text`,`wangfan_yuyue_types`,`wangfan_yuyue_mudidi`,`wangfan_yuyue_chufadi`,`wangfan_yuyue_shenti_types`,`wangfan_yuyue_chufa_time`,`wangfan_yuyue_daoda_time`,`wangfan_yuyue_yesno_types`,`wangfan_yuyue_yesno_text`,`wangfan_yuyue_shenhe_time`,`insert_time`,`create_time`) values (1,2,'申请理由1',1,'去哪里1','地址1',1,'2023-04-17','2023-04-17',1,NULL,NULL,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(2,2,'申请理由2',1,'去哪里2','地址2',1,'2023-04-17','2023-04-17',1,NULL,NULL,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(3,3,'申请理由3',3,'去哪里3','地址3',1,'2023-04-17','2023-04-17',1,NULL,NULL,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(4,2,'申请理由4',1,'去哪里4','地址4',1,'2023-04-17','2023-04-17',1,NULL,NULL,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(5,1,'申请理由5',1,'去哪里5','地址5',2,'2023-04-17','2023-04-17',1,NULL,NULL,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(6,2,'申请理由6',3,'去哪里6','地址6',1,'2023-04-17','2023-04-17',1,NULL,NULL,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(7,1,'申请理由7',2,'去哪里7','地址7',2,'2023-04-17','2023-04-17',1,NULL,NULL,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(8,2,'申请理由8',2,'去哪里8','地址8',1,'2023-04-17','2023-04-17',1,NULL,NULL,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(9,1,'申请理由9',1,'去哪里9','地址9',1,'2023-04-17','2023-04-17',1,NULL,NULL,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(10,1,'申请理由10',1,'去哪里10','地址10',2,'2023-04-17','2023-04-17',1,NULL,NULL,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(11,1,'申请理由11',3,'去哪里11','地址11',2,'2023-04-17','2023-04-17',1,NULL,NULL,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(12,3,'申请理由12',3,'去哪里12','地址12',1,'2023-04-17','2023-04-17',1,NULL,NULL,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(13,1,'申请理由13',3,'去哪里13','地址13',2,'2023-04-17','2023-04-17',1,NULL,NULL,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(14,1,'申请理由14',2,'去哪里14','地址14',1,'2023-04-17','2023-04-17',1,NULL,NULL,'2023-04-17 16:58:06','2023-04-17 16:58:06');

/*Table structure for table `wuzi` */

DROP TABLE IF EXISTS `wuzi`;

CREATE TABLE `wuzi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `wuzi_name` varchar(200) DEFAULT NULL COMMENT '物资名称  Search111 ',
  `wuzi_uuid_number` varchar(200) DEFAULT NULL COMMENT '物资编号',
  `wuzi_photo` varchar(200) DEFAULT NULL COMMENT '物资照片',
  `wuzi_address` varchar(200) DEFAULT NULL COMMENT '物资地点',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `wuzi_types` int(11) DEFAULT NULL COMMENT '物资类型 Search111',
  `wuzi_kucun_number` int(11) DEFAULT NULL COMMENT '物资数量',
  `wuzi_clicknum` int(11) DEFAULT NULL COMMENT '物资热度',
  `wuzi_content` longtext COMMENT '物资介绍 ',
  `wuzi_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='物资';

/*Data for the table `wuzi` */

insert  into `wuzi`(`id`,`wuzi_name`,`wuzi_uuid_number`,`wuzi_photo`,`wuzi_address`,`zan_number`,`cai_number`,`wuzi_types`,`wuzi_kucun_number`,`wuzi_clicknum`,`wuzi_content`,`wuzi_delete`,`insert_time`,`create_time`) values (1,'物资名称1','1681721887037','upload/wuzi1.jpg','物资地点1',353,340,4,101,92,'物资介绍1',1,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(2,'物资名称2','1681721887043','upload/wuzi2.jpg','物资地点2',500,249,3,102,42,'物资介绍2',1,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(3,'物资名称3','1681721886974','upload/wuzi3.jpg','物资地点3',41,377,3,103,421,'物资介绍3',1,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(4,'物资名称4','1681721886970','upload/wuzi4.jpg','物资地点4',79,489,4,104,282,'物资介绍4',1,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(5,'物资名称5','1681721887032','upload/wuzi5.jpg','物资地点5',273,177,2,105,344,'物资介绍5',1,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(6,'物资名称6','1681721887032','upload/wuzi6.jpg','物资地点6',346,491,3,106,251,'物资介绍6',1,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(7,'物资名称7','1681721886979','upload/wuzi7.jpg','物资地点7',107,397,3,107,278,'物资介绍7',1,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(8,'物资名称8','1681721886982','upload/wuzi8.jpg','物资地点8',437,172,4,108,267,'物资介绍8',1,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(9,'物资名称9','1681721887024','upload/wuzi9.jpg','物资地点9',273,426,4,109,136,'物资介绍9',1,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(10,'物资名称10','1681721886983','upload/wuzi10.jpg','物资地点10',79,355,2,1010,131,'物资介绍10',1,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(11,'物资名称11','1681721886973','upload/wuzi11.jpg','物资地点11',164,341,4,1011,175,'物资介绍11',1,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(12,'物资名称12','1681721886978','upload/wuzi12.jpg','物资地点12',19,121,2,1012,445,'物资介绍12',1,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(13,'物资名称13','1681721887002','upload/wuzi13.jpg','物资地点13',248,244,1,1013,136,'物资介绍13',1,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(14,'物资名称14','1681721887049','upload/wuzi14.jpg','物资地点14',129,327,1,1014,31,'物资介绍14',1,'2023-04-17 16:58:06','2023-04-17 16:58:06');

/*Table structure for table `wuzi_collection` */

DROP TABLE IF EXISTS `wuzi_collection`;

CREATE TABLE `wuzi_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `wuzi_id` int(11) DEFAULT NULL COMMENT '物资',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `wuzi_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='物资收藏';

/*Data for the table `wuzi_collection` */

insert  into `wuzi_collection`(`id`,`wuzi_id`,`yonghu_id`,`wuzi_collection_types`,`insert_time`,`create_time`) values (1,1,2,1,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(2,2,2,1,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(3,3,1,1,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(4,4,1,1,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(5,5,3,1,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(6,6,1,1,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(7,7,1,1,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(8,8,2,1,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(9,9,2,1,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(10,10,3,1,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(11,11,2,1,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(12,12,3,1,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(13,13,1,1,'2023-04-17 16:58:06','2023-04-17 16:58:06'),(14,14,3,1,'2023-04-17 16:58:06','2023-04-17 16:58:06');

/*Table structure for table `wuzi_liuyan` */

DROP TABLE IF EXISTS `wuzi_liuyan`;

CREATE TABLE `wuzi_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `wuzi_id` int(11) DEFAULT NULL COMMENT '物资',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `wuzi_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='物资留言';

/*Data for the table `wuzi_liuyan` */

insert  into `wuzi_liuyan`(`id`,`wuzi_id`,`yonghu_id`,`wuzi_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,3,'留言内容1','2023-04-17 16:58:06','回复信息1','2023-04-17 16:58:06','2023-04-17 16:58:06'),(2,2,1,'留言内容2','2023-04-17 16:58:06','回复信息2','2023-04-17 16:58:06','2023-04-17 16:58:06'),(3,3,3,'留言内容3','2023-04-17 16:58:06','回复信息3','2023-04-17 16:58:06','2023-04-17 16:58:06'),(4,4,3,'留言内容4','2023-04-17 16:58:06','回复信息4','2023-04-17 16:58:06','2023-04-17 16:58:06'),(5,5,2,'留言内容5','2023-04-17 16:58:06','回复信息5','2023-04-17 16:58:06','2023-04-17 16:58:06'),(6,6,3,'留言内容6','2023-04-17 16:58:06','回复信息6','2023-04-17 16:58:06','2023-04-17 16:58:06'),(7,7,2,'留言内容7','2023-04-17 16:58:06','回复信息7','2023-04-17 16:58:06','2023-04-17 16:58:06'),(8,8,2,'留言内容8','2023-04-17 16:58:06','回复信息8','2023-04-17 16:58:06','2023-04-17 16:58:06'),(9,9,1,'留言内容9','2023-04-17 16:58:06','回复信息9','2023-04-17 16:58:06','2023-04-17 16:58:06'),(10,10,2,'留言内容10','2023-04-17 16:58:06','回复信息10','2023-04-17 16:58:06','2023-04-17 16:58:06'),(11,11,2,'留言内容11','2023-04-17 16:58:06','回复信息11','2023-04-17 16:58:06','2023-04-17 16:58:06'),(12,12,3,'留言内容12','2023-04-17 16:58:06','回复信息12','2023-04-17 16:58:06','2023-04-17 16:58:06'),(13,13,1,'留言内容13','2023-04-17 16:58:06','回复信息13','2023-04-17 16:58:06','2023-04-17 16:58:06'),(14,14,2,'留言内容14','2023-04-17 16:58:06','回复信息14','2023-04-17 16:58:06','2023-04-17 16:58:06');

/*Table structure for table `wuzi_order` */

DROP TABLE IF EXISTS `wuzi_order`;

CREATE TABLE `wuzi_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `wuzi_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `wuzi_id` int(11) DEFAULT NULL COMMENT '物资',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `wuzi_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='物资申请';

/*Data for the table `wuzi_order` */

/*Table structure for table `wuzi_yuyue` */

DROP TABLE IF EXISTS `wuzi_yuyue`;

CREATE TABLE `wuzi_yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `wuzi_yuyue_uuid_number` varchar(200) DEFAULT NULL COMMENT '捐赠编号 Search111 ',
  `wuzi_id` int(11) DEFAULT NULL COMMENT '物资',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `wuzi_yuyue_text` longtext COMMENT '理由',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '物资捐赠',
  `wuzi_shuliang` int(11) DEFAULT NULL COMMENT '捐赠数量 ',
  `wuzi_yuyue_yesno_types` int(11) DEFAULT NULL COMMENT '捐赠状态 Search111 ',
  `wuzi_yuyue_yesno_text` longtext COMMENT '审核回复',
  `wuzi_yuyue_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='物资捐赠';

/*Data for the table `wuzi_yuyue` */

insert  into `wuzi_yuyue`(`id`,`wuzi_yuyue_uuid_number`,`wuzi_id`,`yonghu_id`,`wuzi_yuyue_text`,`insert_time`,`wuzi_shuliang`,`wuzi_yuyue_yesno_types`,`wuzi_yuyue_yesno_text`,`wuzi_yuyue_shenhe_time`,`create_time`) values (1,'1681721886980',1,2,'理由1','2023-04-17 16:58:06',394,1,NULL,NULL,'2023-04-17 16:58:06'),(2,'1681721887009',2,1,'理由2','2023-04-17 16:58:06',242,1,NULL,NULL,'2023-04-17 16:58:06'),(3,'1681721886975',3,1,'理由3','2023-04-17 16:58:06',379,1,NULL,NULL,'2023-04-17 16:58:06'),(4,'1681721887019',4,3,'理由4','2023-04-17 16:58:06',237,1,NULL,NULL,'2023-04-17 16:58:06'),(5,'1681721887019',5,3,'理由5','2023-04-17 16:58:06',99,1,NULL,NULL,'2023-04-17 16:58:06'),(6,'1681721887005',6,2,'理由6','2023-04-17 16:58:06',282,1,NULL,NULL,'2023-04-17 16:58:06'),(7,'1681721887044',7,3,'理由7','2023-04-17 16:58:06',419,1,NULL,NULL,'2023-04-17 16:58:06'),(8,'1681721887071',8,2,'理由8','2023-04-17 16:58:06',69,1,NULL,NULL,'2023-04-17 16:58:06'),(9,'1681721887029',9,2,'理由9','2023-04-17 16:58:06',249,1,NULL,NULL,'2023-04-17 16:58:06'),(10,'1681721887030',10,2,'理由10','2023-04-17 16:58:06',116,1,NULL,NULL,'2023-04-17 16:58:06'),(11,'1681721887006',11,2,'理由11','2023-04-17 16:58:06',391,1,NULL,NULL,'2023-04-17 16:58:06'),(12,'1681721886975',12,2,'理由12','2023-04-17 16:58:06',471,1,NULL,NULL,'2023-04-17 16:58:06'),(13,'1681721887052',13,1,'理由13','2023-04-17 16:58:06',215,1,NULL,NULL,'2023-04-17 16:58:06'),(14,'1681721887015',14,1,'理由14','2023-04-17 16:58:06',500,1,NULL,NULL,'2023-04-17 16:58:06');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`new_money`,`yonghu_email`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',2,'313.38','1@qq.com','2023-04-17 16:58:06'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',1,'385.49','2@qq.com','2023-04-17 16:58:06'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',1,'404.91','3@qq.com','2023-04-17 16:58:06');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
