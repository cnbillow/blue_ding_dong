/*
Navicat MySQL Data Transfer

Source Server         : 192.168.234.128_3306
Source Server Version : 50644
Source Host           : 192.168.234.128:3306
Source Database       : store

Target Server Type    : MYSQL
Target Server Version : 50644
File Encoding         : 65001

Date: 2019-06-19 15:15:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for about_us_advertising
-- ----------------------------
DROP TABLE IF EXISTS `about_us_advertising`;
CREATE TABLE `about_us_advertising` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `id_show` varchar(100) NOT NULL,
  `order` varchar(100) NOT NULL,
  `time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of about_us_advertising
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
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

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('5', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('8', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('9', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('11', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('12', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('13', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('14', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('16', 'Can view user', '4', 'view_user');
INSERT INTO `auth_permission` VALUES ('17', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('18', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('19', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('20', 'Can view content type', '5', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('21', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('22', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('24', 'Can view session', '6', 'view_session');
INSERT INTO `auth_permission` VALUES ('25', 'Can add about us', '7', 'add_aboutus');
INSERT INTO `auth_permission` VALUES ('26', 'Can change about us', '7', 'change_aboutus');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete about us', '7', 'delete_aboutus');
INSERT INTO `auth_permission` VALUES ('28', 'Can view about us', '7', 'view_aboutus');
INSERT INTO `auth_permission` VALUES ('29', 'Can add advertising', '8', 'add_advertising');
INSERT INTO `auth_permission` VALUES ('30', 'Can change advertising', '8', 'change_advertising');
INSERT INTO `auth_permission` VALUES ('31', 'Can delete advertising', '8', 'delete_advertising');
INSERT INTO `auth_permission` VALUES ('32', 'Can view advertising', '8', 'view_advertising');
INSERT INTO `auth_permission` VALUES ('33', 'Can add business cooperation', '9', 'add_businesscooperation');
INSERT INTO `auth_permission` VALUES ('34', 'Can change business cooperation', '9', 'change_businesscooperation');
INSERT INTO `auth_permission` VALUES ('35', 'Can delete business cooperation', '9', 'delete_businesscooperation');
INSERT INTO `auth_permission` VALUES ('36', 'Can view business cooperation', '9', 'view_businesscooperation');
INSERT INTO `auth_permission` VALUES ('37', 'Can add contact us', '10', 'add_contactus');
INSERT INTO `auth_permission` VALUES ('38', 'Can change contact us', '10', 'change_contactus');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete contact us', '10', 'delete_contactus');
INSERT INTO `auth_permission` VALUES ('40', 'Can view contact us', '10', 'view_contactus');
INSERT INTO `auth_permission` VALUES ('41', 'Can add corporate culture', '11', 'add_corporateculture');
INSERT INTO `auth_permission` VALUES ('42', 'Can change corporate culture', '11', 'change_corporateculture');
INSERT INTO `auth_permission` VALUES ('43', 'Can delete corporate culture', '11', 'delete_corporateculture');
INSERT INTO `auth_permission` VALUES ('44', 'Can view corporate culture', '11', 'view_corporateculture');
INSERT INTO `auth_permission` VALUES ('45', 'Can add development history', '12', 'add_developmenthistory');
INSERT INTO `auth_permission` VALUES ('46', 'Can change development history', '12', 'change_developmenthistory');
INSERT INTO `auth_permission` VALUES ('47', 'Can delete development history', '12', 'delete_developmenthistory');
INSERT INTO `auth_permission` VALUES ('48', 'Can view development history', '12', 'view_developmenthistory');
INSERT INTO `auth_permission` VALUES ('49', 'Can add firm', '13', 'add_firm');
INSERT INTO `auth_permission` VALUES ('50', 'Can change firm', '13', 'change_firm');
INSERT INTO `auth_permission` VALUES ('51', 'Can delete firm', '13', 'delete_firm');
INSERT INTO `auth_permission` VALUES ('52', 'Can view firm', '13', 'view_firm');
INSERT INTO `auth_permission` VALUES ('53', 'Can add partner brand', '14', 'add_partnerbrand');
INSERT INTO `auth_permission` VALUES ('54', 'Can change partner brand', '14', 'change_partnerbrand');
INSERT INTO `auth_permission` VALUES ('55', 'Can delete partner brand', '14', 'delete_partnerbrand');
INSERT INTO `auth_permission` VALUES ('56', 'Can view partner brand', '14', 'view_partnerbrand');
INSERT INTO `auth_permission` VALUES ('57', 'Can add scope of service', '15', 'add_scopeofservice');
INSERT INTO `auth_permission` VALUES ('58', 'Can change scope of service', '15', 'change_scopeofservice');
INSERT INTO `auth_permission` VALUES ('59', 'Can delete scope of service', '15', 'delete_scopeofservice');
INSERT INTO `auth_permission` VALUES ('60', 'Can view scope of service', '15', 'view_scopeofservice');
INSERT INTO `auth_permission` VALUES ('61', 'Can add text', '16', 'add_text');
INSERT INTO `auth_permission` VALUES ('62', 'Can change text', '16', 'change_text');
INSERT INTO `auth_permission` VALUES ('63', 'Can delete text', '16', 'delete_text');
INSERT INTO `auth_permission` VALUES ('64', 'Can view text', '16', 'view_text');
INSERT INTO `auth_permission` VALUES ('65', 'Can add advertising', '17', 'add_advertising');
INSERT INTO `auth_permission` VALUES ('66', 'Can change advertising', '17', 'change_advertising');
INSERT INTO `auth_permission` VALUES ('67', 'Can delete advertising', '17', 'delete_advertising');
INSERT INTO `auth_permission` VALUES ('68', 'Can view advertising', '17', 'view_advertising');
INSERT INTO `auth_permission` VALUES ('69', 'Can add news', '18', 'add_news');
INSERT INTO `auth_permission` VALUES ('70', 'Can change news', '18', 'change_news');
INSERT INTO `auth_permission` VALUES ('71', 'Can delete news', '18', 'delete_news');
INSERT INTO `auth_permission` VALUES ('72', 'Can view news', '18', 'view_news');
INSERT INTO `auth_permission` VALUES ('73', 'Can add advertising', '19', 'add_advertising');
INSERT INTO `auth_permission` VALUES ('74', 'Can change advertising', '19', 'change_advertising');
INSERT INTO `auth_permission` VALUES ('75', 'Can delete advertising', '19', 'delete_advertising');
INSERT INTO `auth_permission` VALUES ('76', 'Can view advertising', '19', 'view_advertising');
INSERT INTO `auth_permission` VALUES ('77', 'Can add advertising', '20', 'add_advertising');
INSERT INTO `auth_permission` VALUES ('78', 'Can change advertising', '20', 'change_advertising');
INSERT INTO `auth_permission` VALUES ('79', 'Can delete advertising', '20', 'delete_advertising');
INSERT INTO `auth_permission` VALUES ('80', 'Can view advertising', '20', 'view_advertising');
INSERT INTO `auth_permission` VALUES ('81', 'Can add advertising', '21', 'add_advertising');
INSERT INTO `auth_permission` VALUES ('82', 'Can change advertising', '21', 'change_advertising');
INSERT INTO `auth_permission` VALUES ('83', 'Can delete advertising', '21', 'delete_advertising');
INSERT INTO `auth_permission` VALUES ('84', 'Can view advertising', '21', 'view_advertising');
INSERT INTO `auth_permission` VALUES ('85', 'Can add project case', '22', 'add_projectcase');
INSERT INTO `auth_permission` VALUES ('86', 'Can change project case', '22', 'change_projectcase');
INSERT INTO `auth_permission` VALUES ('87', 'Can delete project case', '22', 'delete_projectcase');
INSERT INTO `auth_permission` VALUES ('88', 'Can view project case', '22', 'view_projectcase');
INSERT INTO `auth_permission` VALUES ('89', 'Can add advertising', '23', 'add_advertising');
INSERT INTO `auth_permission` VALUES ('90', 'Can change advertising', '23', 'change_advertising');
INSERT INTO `auth_permission` VALUES ('91', 'Can delete advertising', '23', 'delete_advertising');
INSERT INTO `auth_permission` VALUES ('92', 'Can view advertising', '23', 'view_advertising');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('1', 'pbkdf2_sha256$150000$fkLYUPqABF5w$mUHCWWkZgtpnnWDnk8+wwS+YAOBegl22xvKyighNgbE=', '2019-06-14 09:40:17.273016', '1', 'admin', '', '', 'wanhua.sha@foxmail.com', '1', '1', '2019-06-14 09:39:52.491750');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
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

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
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

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for cooperation_advertising
-- ----------------------------
DROP TABLE IF EXISTS `cooperation_advertising`;
CREATE TABLE `cooperation_advertising` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `id_show` varchar(100) NOT NULL,
  `order` varchar(100) NOT NULL,
  `time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cooperation_advertising
-- ----------------------------

-- ----------------------------
-- Table structure for df_cart_cartinfo
-- ----------------------------
DROP TABLE IF EXISTS `df_cart_cartinfo`;
CREATE TABLE `df_cart_cartinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `count` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `df_cart_cartinfo_goods_id_4357294f_fk_df_goods_goodsinfo_id` (`goods_id`),
  KEY `df_cart_cartinfo_user_id_db76e708_fk_df_user_userinfo_id` (`user_id`),
  CONSTRAINT `df_cart_cartinfo_goods_id_4357294f_fk_df_goods_goodsinfo_id` FOREIGN KEY (`goods_id`) REFERENCES `df_goods_goodsinfo` (`id`),
  CONSTRAINT `df_cart_cartinfo_user_id_db76e708_fk_df_user_userinfo_id` FOREIGN KEY (`user_id`) REFERENCES `df_user_userinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of df_cart_cartinfo
-- ----------------------------
INSERT INTO `df_cart_cartinfo` VALUES ('61', '1', '9', '33');
INSERT INTO `df_cart_cartinfo` VALUES ('63', '4', '14', '33');

-- ----------------------------
-- Table structure for df_goods_goodsinfo
-- ----------------------------
DROP TABLE IF EXISTS `df_goods_goodsinfo`;
CREATE TABLE `df_goods_goodsinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isDelete` tinyint(1) NOT NULL,
  `gtitle` varchar(20) NOT NULL,
  `gpic` varchar(100) DEFAULT NULL,
  `gprice` decimal(5,2) NOT NULL,
  `gunit` varchar(20) NOT NULL,
  `gclick` int(11) NOT NULL,
  `gjianjie` varchar(200) NOT NULL,
  `gkucun` int(11) NOT NULL,
  `gcontent` longtext NOT NULL,
  `gtype_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `df_goods_goodsinfo_gtitle_8ec0f32b_uniq` (`gtitle`),
  KEY `df_goods_goodsinfo_gtype_id_63a02cef_fk_df_goods_typeinfo_id` (`gtype_id`),
  CONSTRAINT `df_goods_goodsinfo_gtype_id_63a02cef_fk_df_goods_typeinfo_id` FOREIGN KEY (`gtype_id`) REFERENCES `df_goods_typeinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of df_goods_goodsinfo
-- ----------------------------
INSERT INTO `df_goods_goodsinfo` VALUES ('1', '0', '水晶葡萄', 'df_goods/image/2019/05/goods002_MDWYzFU.jpg', '20.00', '500g', '35', '好吃好吃真好吃', '50', '<p>好吃好吃真好吃&nbsp;好呀好呀真是好吃&nbsp;&nbsp;</p>', '1');
INSERT INTO `df_goods_goodsinfo` VALUES ('2', '0', '坷拉苹果', 'df_goods/image/2019/05/goods010_sCLUSfI.jpg', '20.00', '500g', '59', '好吃好吃真好吃', '44', '<h2 style=\"text-align: left;\">好吃</h2>', '1');
INSERT INTO `df_goods_goodsinfo` VALUES ('3', '0', '奔跑的奇异果', 'df_goods/image/2019/05/goods012_fUad9Io.jpg', '100.00', '500g', '13', '好吃好吃真好吃', '49', '<p>好久啊啥的积分来扩大事件发酵速度；老放假；三闾大夫健康绿色的肌肤卡死机的；发就考虑对方</p>', '1');
INSERT INTO `df_goods_goodsinfo` VALUES ('5', '0', '酸死你柠檬', 'df_goods/image/2019/05/goods001_gxe2R45.jpg', '20.00', '500g', '55', '好吃好吃真好吃那是真好吃', '100', '<p>撒旦发生的范德萨阿阿迪发地方阿&nbsp; &nbsp;阿道夫阿萨德发的撒旦法阿斯蒂芬但是该打给发个&nbsp;</p>', '1');
INSERT INTO `df_goods_goodsinfo` VALUES ('6', '0', '花果山猕猴桃', 'df_goods/image/2019/05/goods012_YqqLqZ2.jpg', '15.00', '500g', '61', '孙悟空吃了拉肚子', '11', '<p>来自东升傲来国的神奇水果，花果山百年孕育而成，孙悟空吃了七十三变，长生养颜。</p>', '1');
INSERT INTO `df_goods_goodsinfo` VALUES ('7', '0', '香蕉大香蕉', 'df_goods/image/2019/05/goods009_2qlBjR9.jpg', '16.00', '500g', '1275', '来自东升傲来国的神奇水果，花果山百年孕育而成，孙悟空吃了七十三变，长生养颜。', '120', '<p>来自东升傲来国的神奇水果，花果山百年孕育而成，孙悟空吃了七十三变，长生养颜。</p>', '1');
INSERT INTO `df_goods_goodsinfo` VALUES ('8', '0', '橘子的诱惑', 'df_goods/image/2019/05/goods013_3Nynaeh.jpg', '26.00', '500g', '234', '来自东升傲来国的神奇水果，花果山百年孕育而成，孙悟空吃了七十三变，长生养颜。', '51', '<p>来自东升傲来国的神奇水果，花果山百年孕育而成，孙悟空吃了七十三变，长生养颜。</p>', '1');
INSERT INTO `df_goods_goodsinfo` VALUES ('9', '0', '大龙大龙虾', 'df_goods/image/2019/05/goods018_5ezSBcV.jpg', '50.00', '500g', '68', '海贼王强烈推荐', '89', '<p>吃了保证不拉肚子&nbsp;</p>', '2');
INSERT INTO `df_goods_goodsinfo` VALUES ('10', '0', '扇贝', 'df_goods/image/2019/05/goods019_KWeEVX7.jpg', '34.00', '500g', '148', '小龙女强烈推荐', '19', '<p>阿达那你还什么很尴尬身份个数是对方公司刚发的发</p>', '2');
INSERT INTO `df_goods_goodsinfo` VALUES ('11', '0', '濒危刀鱼', 'df_goods/image/2019/05/goods020_SmRaQgj.jpg', '100.00', '10g', '150', '这个贵', '8', '<p>撒地方撒打算大三大四的风</p>', '2');
INSERT INTO `df_goods_goodsinfo` VALUES ('12', '0', '基围虾', 'df_goods/image/2019/05/goods021_HMsKKDV.jpg', '45.00', '500g', '70', '好吃好吃不上火', '29', '<p>嘎多吧反革命活动每天发生的 你</p>', '2');
INSERT INTO `df_goods_goodsinfo` VALUES ('13', '0', '大红草莓', 'df_goods/image/2019/05/goods003_QjVxM2e.jpg', '20.00', '500g', '109', '又大又红又好吃', '62', '<p><span style=\"color: #e4393c; font-family: tahoma, arial, \'Microsoft YaHei\', \'Hiragino Sans GB\', u5b8bu4f53, sans-serif; font-size: 12px;\">爱你&ldquo;莓&rdquo;商量，鲜美红嫩，个大饱满，肉质细腻，轻咬一口，汁水充盈整个口腔</span></p>', '1');
INSERT INTO `df_goods_goodsinfo` VALUES ('14', '0', '樱桃', 'df_goods/image/2019/05/goods005_HkX6imN.jpg', '22.00', '500g', '282', '好吃好吃真好吃', '58', '<p><span style=\"color: #e4393c; font-family: tahoma, arial, \'Microsoft YaHei\', \'Hiragino Sans GB\', u5b8bu4f53, sans-serif; font-size: 12px;\">鲜美红嫩，个大饱满，肉质细腻，轻咬一口，汁水充盈整个口腔，给你初恋般的美妙感觉！</span></p>', '1');
INSERT INTO `df_goods_goodsinfo` VALUES ('15', '0', '新鲜草莓', 'df_goods/image/2019/05/goods_detail_MMB8vJ4.jpg', '20.00', '500g', '271', '好吃到上heaven', '285', '<p>一口进医院，两口救活难</p>', '1');
INSERT INTO `df_goods_goodsinfo` VALUES ('16', '0', '海南香蕉', 'df_goods/image/2019/05/goods009_ECGyaM2.jpg', '100.00', '500g', '0', '海南香蕉海南香蕉', '0', '<p>海南香蕉海南香蕉海南香蕉海南香蕉海南香蕉</p>', '1');
INSERT INTO `df_goods_goodsinfo` VALUES ('17', '0', '来自海南的香蕉', 'df_goods/image/2019/05/goods009_Jq7Dk5Y_S2Psj5b.jpg', '89.00', '500g', '3', '海南香蕉海南香蕉', '31', '<p>来自海南的香蕉</p>', '1');
INSERT INTO `df_goods_goodsinfo` VALUES ('18', '0', '牛奶草莓', 'df_goods/image/2019/05/goods_detail.jpg', '12.00', '500g', '3', '阿萨德', '32', '<p>阿斯蒂芬阿三的说法</p>', '1');

-- ----------------------------
-- Table structure for df_goods_typeinfo
-- ----------------------------
DROP TABLE IF EXISTS `df_goods_typeinfo`;
CREATE TABLE `df_goods_typeinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isDelete` tinyint(1) NOT NULL,
  `ttitle` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of df_goods_typeinfo
-- ----------------------------
INSERT INTO `df_goods_typeinfo` VALUES ('1', '0', '新鲜水果');
INSERT INTO `df_goods_typeinfo` VALUES ('2', '0', '海鲜水产');
INSERT INTO `df_goods_typeinfo` VALUES ('3', '0', '猪羊牛肉');
INSERT INTO `df_goods_typeinfo` VALUES ('4', '0', '禽类蛋品');
INSERT INTO `df_goods_typeinfo` VALUES ('5', '0', '新鲜蔬菜');
INSERT INTO `df_goods_typeinfo` VALUES ('6', '0', '速冻食品');

-- ----------------------------
-- Table structure for df_order_orderdetailinfo
-- ----------------------------
DROP TABLE IF EXISTS `df_order_orderdetailinfo`;
CREATE TABLE `df_order_orderdetailinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(6,2) NOT NULL,
  `count` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `order_id` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `df_order_orderdetail_goods_id_d0acef4d_fk_df_goods_` (`goods_id`),
  KEY `df_order_orderdetail_order_id_b91dcf67_fk_df_order_` (`order_id`),
  CONSTRAINT `df_order_orderdetail_goods_id_d0acef4d_fk_df_goods_` FOREIGN KEY (`goods_id`) REFERENCES `df_goods_goodsinfo` (`id`),
  CONSTRAINT `df_order_orderdetail_order_id_b91dcf67_fk_df_order_` FOREIGN KEY (`order_id`) REFERENCES `df_order_orderinfo` (`oid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of df_order_orderdetailinfo
-- ----------------------------
INSERT INTO `df_order_orderdetailinfo` VALUES ('1', '26.00', '1', '8', '2018122009332333');
INSERT INTO `df_order_orderdetailinfo` VALUES ('2', '22.00', '1', '14', '2018122009345533');
INSERT INTO `df_order_orderdetailinfo` VALUES ('3', '20.00', '1', '13', '2018122009352733');
INSERT INTO `df_order_orderdetailinfo` VALUES ('4', '45.00', '9', '12', '2018122009415333');
INSERT INTO `df_order_orderdetailinfo` VALUES ('5', '20.00', '3', '15', '2019042720141632');
INSERT INTO `df_order_orderdetailinfo` VALUES ('6', '12.00', '2', '18', '2019050121492832');
INSERT INTO `df_order_orderdetailinfo` VALUES ('7', '89.00', '3', '17', '2019050121492832');

-- ----------------------------
-- Table structure for df_order_orderinfo
-- ----------------------------
DROP TABLE IF EXISTS `df_order_orderinfo`;
CREATE TABLE `df_order_orderinfo` (
  `oid` varchar(20) NOT NULL,
  `odate` datetime(6) NOT NULL,
  `oIsPay` tinyint(1) NOT NULL,
  `ototal` decimal(8,2) NOT NULL,
  `oaddress` varchar(150) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`oid`),
  KEY `df_order_orderinfo_user_id_2d705949_fk_df_user_userinfo_id` (`user_id`),
  CONSTRAINT `df_order_orderinfo_user_id_2d705949_fk_df_user_userinfo_id` FOREIGN KEY (`user_id`) REFERENCES `df_user_userinfo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of df_order_orderinfo
-- ----------------------------
INSERT INTO `df_order_orderinfo` VALUES ('2018122009332333', '2018-12-20 09:33:23.769712', '0', '36.00', '', '33');
INSERT INTO `df_order_orderinfo` VALUES ('2018122009345533', '2018-12-20 09:34:55.063443', '0', '32.00', '', '33');
INSERT INTO `df_order_orderinfo` VALUES ('2018122009352733', '2018-12-20 09:35:27.226788', '0', '30.00', '', '33');
INSERT INTO `df_order_orderinfo` VALUES ('2018122009415333', '2018-12-20 09:41:53.530804', '0', '415.00', '', '33');
INSERT INTO `df_order_orderinfo` VALUES ('2019042720141632', '2019-04-27 20:14:16.245991', '0', '70.00', '', '32');
INSERT INTO `df_order_orderinfo` VALUES ('2019050121492832', '2019-05-01 21:49:28.106780', '0', '301.00', '', '32');

-- ----------------------------
-- Table structure for df_user_goodsbrowser
-- ----------------------------
DROP TABLE IF EXISTS `df_user_goodsbrowser`;
CREATE TABLE `df_user_goodsbrowser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `good_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `browser_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `df_user_goodsbrowser_good_id_81bbd6f5_fk_df_goods_goodsinfo_id` (`good_id`),
  KEY `df_user_goodsbrowser_user_id_b7a661a4_fk_df_user_userinfo_id` (`user_id`),
  CONSTRAINT `df_user_goodsbrowser_good_id_81bbd6f5_fk_df_goods_goodsinfo_id` FOREIGN KEY (`good_id`) REFERENCES `df_goods_goodsinfo` (`id`),
  CONSTRAINT `df_user_goodsbrowser_user_id_b7a661a4_fk_df_user_userinfo_id` FOREIGN KEY (`user_id`) REFERENCES `df_user_userinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of df_user_goodsbrowser
-- ----------------------------
INSERT INTO `df_user_goodsbrowser` VALUES ('17', '14', '33', '2018-12-23 20:46:05.525349');
INSERT INTO `df_user_goodsbrowser` VALUES ('18', '12', '33', '2018-12-20 09:41:32.140375');
INSERT INTO `df_user_goodsbrowser` VALUES ('19', '13', '33', '2018-12-20 09:35:19.361044');
INSERT INTO `df_user_goodsbrowser` VALUES ('20', '9', '33', '2018-12-20 09:43:13.196705');
INSERT INTO `df_user_goodsbrowser` VALUES ('21', '15', '33', '2018-12-23 20:48:52.036342');
INSERT INTO `df_user_goodsbrowser` VALUES ('22', '15', '32', '2019-04-05 18:22:13.755243');
INSERT INTO `df_user_goodsbrowser` VALUES ('23', '14', '32', '2019-04-05 17:01:35.847788');
INSERT INTO `df_user_goodsbrowser` VALUES ('24', '5', '32', '2019-05-01 21:47:30.869756');
INSERT INTO `df_user_goodsbrowser` VALUES ('25', '17', '32', '2019-05-01 21:49:19.037944');
INSERT INTO `df_user_goodsbrowser` VALUES ('26', '18', '32', '2019-05-01 21:49:11.835061');

-- ----------------------------
-- Table structure for df_user_userinfo
-- ----------------------------
DROP TABLE IF EXISTS `df_user_userinfo`;
CREATE TABLE `df_user_userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) NOT NULL,
  `upwd` varchar(40) NOT NULL,
  `uemail` varchar(254) NOT NULL,
  `ushou` varchar(20) NOT NULL,
  `uaddress` varchar(100) NOT NULL,
  `uyoubian` varchar(6) NOT NULL,
  `uphone` varchar(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `df_user_userinfo_uemail_da079075_uniq` (`uemail`),
  UNIQUE KEY `df_user_userinfo_uname_feb27ea0_uniq` (`uname`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of df_user_userinfo
-- ----------------------------
INSERT INTO `df_user_userinfo` VALUES ('32', '111111', '3d4f2bf07dc1be38b20cd6e46949a1071f9d0e3d', '123123@163.com', '散人', '河南理工大学南校区', '477100', '13323232332');
INSERT INTO `df_user_userinfo` VALUES ('33', 'sanren', '4569416a6a60a85332f52e25b096bec0be49060a', '1231231@163.com', '散人', '112', '112', '112');
INSERT INTO `df_user_userinfo` VALUES ('34', 'root2', '7b21848ac9af35be0ddb2d6b9fc3851934db8420', 'weilanhanf@163.com', '', '', '', '');
INSERT INTO `df_user_userinfo` VALUES ('35', '11111', '7b21848ac9af35be0ddb2d6b9fc3851934db8420', 'weilanhanf1@163.com', '', '', '', '');
INSERT INTO `df_user_userinfo` VALUES ('36', '22222', '1a9b9508b6003b68ddfe03a9c8cbc4bd4388339b', 'weilaanf@163.com', '', '', '', '');
INSERT INTO `df_user_userinfo` VALUES ('37', '33333', '403d9917c3e950798601addf7ba82cd3c83f344b', 'weilanhanf2@163.com', '', '', '', '');
INSERT INTO `df_user_userinfo` VALUES ('38', 'login', '2736fab291f04e69b62d490c3c09361f5b82461a', '111111@qq.com', '', '', '', '');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
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

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('19', 'about_us', 'advertising');
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('23', 'cooperation', 'advertising');
INSERT INTO `django_content_type` VALUES ('20', 'funeng', 'advertising');
INSERT INTO `django_content_type` VALUES ('7', 'index', 'aboutus');
INSERT INTO `django_content_type` VALUES ('8', 'index', 'advertising');
INSERT INTO `django_content_type` VALUES ('9', 'index', 'businesscooperation');
INSERT INTO `django_content_type` VALUES ('10', 'index', 'contactus');
INSERT INTO `django_content_type` VALUES ('11', 'index', 'corporateculture');
INSERT INTO `django_content_type` VALUES ('12', 'index', 'developmenthistory');
INSERT INTO `django_content_type` VALUES ('13', 'index', 'firm');
INSERT INTO `django_content_type` VALUES ('14', 'index', 'partnerbrand');
INSERT INTO `django_content_type` VALUES ('15', 'index', 'scopeofservice');
INSERT INTO `django_content_type` VALUES ('16', 'index', 'text');
INSERT INTO `django_content_type` VALUES ('17', 'news', 'advertising');
INSERT INTO `django_content_type` VALUES ('18', 'news', 'news');
INSERT INTO `django_content_type` VALUES ('21', 'service', 'advertising');
INSERT INTO `django_content_type` VALUES ('22', 'service', 'projectcase');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'about_us', '0001_initial', '2019-06-13 15:38:09.239474');
INSERT INTO `django_migrations` VALUES ('2', 'contenttypes', '0001_initial', '2019-06-13 15:38:09.295327');
INSERT INTO `django_migrations` VALUES ('3', 'auth', '0001_initial', '2019-06-13 15:38:09.367133');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0001_initial', '2019-06-13 15:38:09.542664');
INSERT INTO `django_migrations` VALUES ('5', 'admin', '0002_logentry_remove_auto_add', '2019-06-13 15:38:09.589567');
INSERT INTO `django_migrations` VALUES ('6', 'admin', '0003_logentry_add_action_flag_choices', '2019-06-13 15:38:09.597518');
INSERT INTO `django_migrations` VALUES ('7', 'contenttypes', '0002_remove_content_type_name', '2019-06-13 15:38:09.631428');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0002_alter_permission_name_max_length', '2019-06-13 15:38:09.647385');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0003_alter_user_email_max_length', '2019-06-13 15:38:09.680296');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0004_alter_user_username_opts', '2019-06-13 15:38:09.686281');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0005_alter_user_last_login_null', '2019-06-13 15:38:09.702239');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0006_require_contenttypes_0002', '2019-06-13 15:38:09.704234');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0007_alter_validators_add_error_messages', '2019-06-13 15:38:09.711214');
INSERT INTO `django_migrations` VALUES ('14', 'auth', '0008_alter_user_username_max_length', '2019-06-13 15:38:09.732157');
INSERT INTO `django_migrations` VALUES ('15', 'auth', '0009_alter_user_last_name_max_length', '2019-06-13 15:38:09.749112');
INSERT INTO `django_migrations` VALUES ('16', 'auth', '0010_alter_group_name_max_length', '2019-06-13 15:38:09.766067');
INSERT INTO `django_migrations` VALUES ('17', 'auth', '0011_update_proxy_permissions', '2019-06-13 15:38:09.774046');
INSERT INTO `django_migrations` VALUES ('18', 'funeng', '0001_initial', '2019-06-13 15:38:09.785017');
INSERT INTO `django_migrations` VALUES ('19', 'index', '0001_initial', '2019-06-13 15:38:09.865825');
INSERT INTO `django_migrations` VALUES ('20', 'news', '0001_initial', '2019-06-13 15:38:09.885746');
INSERT INTO `django_migrations` VALUES ('21', 'service', '0001_initial', '2019-06-13 15:38:09.906690');
INSERT INTO `django_migrations` VALUES ('22', 'sessions', '0001_initial', '2019-06-13 15:38:09.915666');
INSERT INTO `django_migrations` VALUES ('23', 'about_us', '0002_auto_20190614_1131', '2019-06-14 11:31:34.518416');
INSERT INTO `django_migrations` VALUES ('24', 'cooperation', '0001_initial', '2019-06-14 11:31:34.537336');
INSERT INTO `django_migrations` VALUES ('25', 'funeng', '0002_auto_20190614_1131', '2019-06-14 11:31:34.550302');
INSERT INTO `django_migrations` VALUES ('26', 'index', '0002_auto_20190614_1131', '2019-06-14 11:31:34.672475');
INSERT INTO `django_migrations` VALUES ('27', 'news', '0002_auto_20190614_1131', '2019-06-14 11:31:34.712468');
INSERT INTO `django_migrations` VALUES ('28', 'news', '0003_auto_20190617_1424', '2019-06-17 14:25:11.872832');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('lyhib4fwvln8v1y0035v9j976exm1shw', 'YzEwNzUzYTkyZTY0OTliZmFhOTMwYjZhMDEzNGI4YmI0NGJmOTFmYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhNzBjYjAzNDgzN2NiODNmODg0MTJmZDcxODYyMjQwNzkzZThkYWRmIn0=', '2019-06-28 09:40:17.283987');

-- ----------------------------
-- Table structure for funeng_advertising
-- ----------------------------
DROP TABLE IF EXISTS `funeng_advertising`;
CREATE TABLE `funeng_advertising` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `id_show` varchar(100) NOT NULL,
  `order` varchar(100) NOT NULL,
  `time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of funeng_advertising
-- ----------------------------

-- ----------------------------
-- Table structure for index_aboutus
-- ----------------------------
DROP TABLE IF EXISTS `index_aboutus`;
CREATE TABLE `index_aboutus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(8) NOT NULL,
  `video` varchar(255) NOT NULL,
  `video_show` varchar(100) NOT NULL,
  `content` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_aboutus
-- ----------------------------
INSERT INTO `index_aboutus` VALUES ('1', '关于我们', '/static/assets/ldd/video/video.mp4', '1', '蓝叮咚-以让天下没有难做的服务为使命，链接人与服务为宗旨，线上线下融合为途径，通过网络信息技术应用，匹配行业一流资源，让居家服务产业信息化，集约化，规范化，品牌化，为千万家庭提供优质可信赖的到家服务；通过输出品牌管理，信息系统，供应链，标准化赋能中小家政服务公司及服务人员，终结游击队，建立生态圈，解决百万就业；实现专业到家服务，信赖信息平台，优质商品销售的互联互通，为千万家庭提供更健康，更环保，更便利，更舒适的品质生活体验。');

-- ----------------------------
-- Table structure for index_advertising
-- ----------------------------
DROP TABLE IF EXISTS `index_advertising`;
CREATE TABLE `index_advertising` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `id_show` varchar(100) NOT NULL,
  `order` varchar(100) NOT NULL,
  `time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_advertising
-- ----------------------------
INSERT INTO `index_advertising` VALUES ('1', '/static/media/images/ff5081f26e20bfe1f5ba52c22a25c5e1.png', null, '1', '1', '2019-06-14 08:25:17.000000');

-- ----------------------------
-- Table structure for index_businesscooperation
-- ----------------------------
DROP TABLE IF EXISTS `index_businesscooperation`;
CREATE TABLE `index_businesscooperation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `u_name` varchar(20) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `site` varchar(255) NOT NULL,
  `time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_businesscooperation
-- ----------------------------

-- ----------------------------
-- Table structure for index_contactus
-- ----------------------------
DROP TABLE IF EXISTS `index_contactus`;
CREATE TABLE `index_contactus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `winxi` varchar(255) DEFAULT NULL,
  `phone` varchar(100) NOT NULL,
  `e_mail` varchar(50) DEFAULT NULL,
  `weibo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_contactus
-- ----------------------------
INSERT INTO `index_contactus` VALUES ('1', 'lx01.jpg', '400-180-0707', null, null);

-- ----------------------------
-- Table structure for index_corporateculture
-- ----------------------------
DROP TABLE IF EXISTS `index_corporateculture`;
CREATE TABLE `index_corporateculture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(8) NOT NULL,
  `title_logo` varchar(255) NOT NULL,
  `title_logo_show` varchar(100) NOT NULL,
  `content` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_corporateculture
-- ----------------------------
INSERT INTO `index_corporateculture` VALUES ('1', '定位', 'text01.png', '1', '让千百万到家服务\r\n小微企业活的更好');
INSERT INTO `index_corporateculture` VALUES ('2', '愿景', 'text02.png', '1', '创综合到家服务领导品牌\r\n建立互相赋能的大服务业生态圈');
INSERT INTO `index_corporateculture` VALUES ('3', '价值观', 'text03.png', '1', '客户至上 团队合作\r\n诚信正直 拥抱变化\r\n久久为功 追求卓越');

-- ----------------------------
-- Table structure for index_developmenthistory
-- ----------------------------
DROP TABLE IF EXISTS `index_developmenthistory`;
CREATE TABLE `index_developmenthistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` varchar(8) NOT NULL,
  `content` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_developmenthistory
-- ----------------------------
INSERT INTO `index_developmenthistory` VALUES ('1', '2009', '家电设备清洗行业拓荒者');
INSERT INTO `index_developmenthistory` VALUES ('2', '2012', '启动嵌入式家电专业清洗');
INSERT INTO `index_developmenthistory` VALUES ('3', '2014', '启动大型商用设备清洁保养业务');
INSERT INTO `index_developmenthistory` VALUES ('4', '2016', '介入高端精品保洁业务');
INSERT INTO `index_developmenthistory` VALUES ('5', '2017', '推出综合清洁业务品牌洗当家');
INSERT INTO `index_developmenthistory` VALUES ('6', '2018', '启动“服务+网络+商品”新模式');
INSERT INTO `index_developmenthistory` VALUES ('7', '2019', '发布新品牌蓝叮咚');

-- ----------------------------
-- Table structure for index_firm
-- ----------------------------
DROP TABLE IF EXISTS `index_firm`;
CREATE TABLE `index_firm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firm_name` varchar(255) NOT NULL,
  `firm_site` varchar(255) NOT NULL,
  `firm_map` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_firm
-- ----------------------------
INSERT INTO `index_firm` VALUES ('1', '青岛蓝叮咚信息科技有限公司', '青岛高新区火炬路100号盘谷空间c幢', '/static/assets/ldd/images/index/bg01.jpg');
INSERT INTO `index_firm` VALUES ('2', '杭州洗当家', '杭州萧山绿都港汇中心2号楼北商业大堂三楼308', '/static/assets/ldd/images/index/bg02.jpg');

-- ----------------------------
-- Table structure for index_partnerbrand
-- ----------------------------
DROP TABLE IF EXISTS `index_partnerbrand`;
CREATE TABLE `index_partnerbrand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(11) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `Brand_show` varchar(100) NOT NULL,
  `order` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_partnerbrand
-- ----------------------------
INSERT INTO `index_partnerbrand` VALUES ('1', 'YORK', '09827b020ba63c27b34a2a1fd121bdf4.png', null, '1', '1');
INSERT INTO `index_partnerbrand` VALUES ('2', 'Carrier', '59e5f65f4d685bfbd44a58244bd9791e.png', null, '1', '2');
INSERT INTO `index_partnerbrand` VALUES ('3', 'SE', '4f60fd58d9dae2ab797aa1774aae7543.png', null, '1', '3');
INSERT INTO `index_partnerbrand` VALUES ('4', '斯米克', 'c5eedeb28577e86823ea81ffa3da6045.png', null, '1', '4');
INSERT INTO `index_partnerbrand` VALUES ('5', '国家电网公司', '80046962124e38a758cccb5d0a75ff27.png', null, '1', '5');
INSERT INTO `index_partnerbrand` VALUES ('6', '中国建筑科学研究院', '4f7f328b2fd083584385cb2b090f54e0.png', null, '1', '6');
INSERT INTO `index_partnerbrand` VALUES ('7', '海信', 'efba152ae4de10493600e4445fc4b725.png', null, '1', '7');
INSERT INTO `index_partnerbrand` VALUES ('8', '美的', '37de4f1e64fb0cbda1daab119b0dfdc6.png', null, '1', '8');
INSERT INTO `index_partnerbrand` VALUES ('9', 'BOSCH', 'b06bedc77d92bc93415ebcdcee9b1bd7.png', null, '1', '9');
INSERT INTO `index_partnerbrand` VALUES ('10', 'SIEMENS', '7826ad51a0713ccd04ac6ac7d8ce6cfb.png', null, '1', '10');

-- ----------------------------
-- Table structure for index_scopeofservice
-- ----------------------------
DROP TABLE IF EXISTS `index_scopeofservice`;
CREATE TABLE `index_scopeofservice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_name` varchar(8) NOT NULL,
  `service_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_scopeofservice
-- ----------------------------
INSERT INTO `index_scopeofservice` VALUES ('1', '电器清洁', '');
INSERT INTO `index_scopeofservice` VALUES ('2', '空气治理', null);
INSERT INTO `index_scopeofservice` VALUES ('3', '商用服务', null);
INSERT INTO `index_scopeofservice` VALUES ('4', '家政服务', null);
INSERT INTO `index_scopeofservice` VALUES ('5', '安装售后', null);
INSERT INTO `index_scopeofservice` VALUES ('6', '项目案例', null);

-- ----------------------------
-- Table structure for index_text
-- ----------------------------
DROP TABLE IF EXISTS `index_text`;
CREATE TABLE `index_text` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(8) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `use_place` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_text
-- ----------------------------
INSERT INTO `index_text` VALUES ('1', '市场分析', '国民经济发展到人均8000-10000美金，服务业发展就会进入新的阶段--来源《恒大研究院》\r\n2013年中国家政市场规模达9600亿元，2014年市场规模达11300亿元，而2015年中国家政市场规模就达到13500亿元，按照最近几年中国家政行业发展速度，中国家政市场年产值在2017年左右就能达到2万亿规模，市值超过10亿美金的公司屈指可数。--来源《中国商务部2016年家政服务行业发展报告》', 'index');
INSERT INTO `index_text` VALUES ('2', '叮咚赋能', null, 'index');
INSERT INTO `index_text` VALUES ('3', '价值呈现', '轻松创业，顺利转型，加速发展；让合作伙伴活下去，活的好，活的久。', null);
INSERT INTO `index_text` VALUES ('4', '解决方案', '品牌共享，结合新时代的用户习惯，全方位整合营销，覆盖央视访谈，卫视广告，网络媒体等，综合物料大礼包支持；', null);
INSERT INTO `index_text` VALUES ('5', '系统共享', '用信息化规范各项服务细节，确保用户服务体验；', null);
INSERT INTO `index_text` VALUES ('6', '服务标准', '超过200项具体服务规范细节，辅助信息化，实现标准化规范作业；', null);
INSERT INTO `index_text` VALUES ('7', '供应资源', '权威机构认证资质，让效率更高，质量更好；', null);
INSERT INTO `index_text` VALUES ('8', '订单支持', '支援生态圈层内合作企业；', null);
INSERT INTO `index_text` VALUES ('9', '经营帮扶', '提供从前期考察到后续获单全流程经营帮扶，解决合作伙伴后顾之忧。', null);
INSERT INTO `index_text` VALUES ('10', '行业痛点', null, 'index');
INSERT INTO `index_text` VALUES ('11', '用户抱怨', '找服务很容易，找专业的可信赖的优质服务很难。', null);
INSERT INTO `index_text` VALUES ('12', '行业现状', '规范化不够，如何能统一服务品质，统一操作流程，提升用户体验。信息化不够，互联网+服务发展迅速，服务与网络可以进一步融合。集约化不够，行业大多属于“小散弱”，具有引领能力的优服务企业少。', null);
INSERT INTO `index_text` VALUES ('13', '从业群体', '收益弱。', null);
INSERT INTO `index_text` VALUES ('14', '服务人员', '没方向，没资金，没技术，没规范', null);
INSERT INTO `index_text` VALUES ('15', '小微公司', '支援生态圈层内合作企业；缺品牌，缺系统，缺供应，缺工人，缺管理，缺标准，缺订单，缺帮扶。', null);

-- ----------------------------
-- Table structure for news_advertising
-- ----------------------------
DROP TABLE IF EXISTS `news_advertising`;
CREATE TABLE `news_advertising` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `id_show` varchar(100) NOT NULL,
  `order` varchar(100) NOT NULL,
  `time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news_advertising
-- ----------------------------

-- ----------------------------
-- Table structure for news_news
-- ----------------------------
DROP TABLE IF EXISTS `news_news`;
CREATE TABLE `news_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_type` varchar(8) NOT NULL,
  `news_title` varchar(50) NOT NULL,
  `news_intro` longtext NOT NULL,
  `news_content` text NOT NULL,
  `news_cover` varchar(255) DEFAULT NULL,
  `news_show` varchar(100) NOT NULL,
  `news_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news_news
-- ----------------------------
INSERT INTO `news_news` VALUES ('1', '企业新闻', '错过了淘宝，错过了房地产投资，今天绝不能再错过它！', '	优质到家服务，就选蓝叮咚！', '随着国民经济水平的提高\r\n\r\n与之增长的是国民的物质需求\r\n\r\n在这样的经济大形势下\r\n\r\n家政产业巨大的市场潜力和\r\n\r\n发展空间日益凸显', '853f01849e6f1258061ab65928478503.jpg', '1', '2019-06-17 14:19:28.000000');

-- ----------------------------
-- Table structure for service_advertising
-- ----------------------------
DROP TABLE IF EXISTS `service_advertising`;
CREATE TABLE `service_advertising` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `id_show` varchar(100) NOT NULL,
  `order` varchar(100) NOT NULL,
  `time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of service_advertising
-- ----------------------------

-- ----------------------------
-- Table structure for service_projectcase
-- ----------------------------
DROP TABLE IF EXISTS `service_projectcase`;
CREATE TABLE `service_projectcase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photo` varchar(255) NOT NULL,
  `order` varchar(100) NOT NULL,
  `time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of service_projectcase
-- ----------------------------
