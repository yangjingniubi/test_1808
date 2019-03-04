/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : 1808

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-03-04 16:05:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for brand
-- ----------------------------
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand` (
  `brand_id` int(3) NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(13) NOT NULL,
  `is_show` tinyint(13) NOT NULL,
  `brand_img` varchar(250) NOT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of brand
-- ----------------------------
INSERT INTO `brand` VALUES ('14', '耐克', '1', '20181210\\66c9151fbbe3e1d61b4069c66a96beba.jpg');
INSERT INTO `brand` VALUES ('26', '阿迪', '1', '20181210\\568f9f926f3abb75682ac9dcebdef892.jpg');
INSERT INTO `brand` VALUES ('25', '特步', '2', '20181210\\b1c9073898e3971839145dfdb26b20b1.jpg');
INSERT INTO `brand` VALUES ('23', '乔丹', '1', '20181210\\3e9fb095cdd77486227994c523450008.jpg');
INSERT INTO `brand` VALUES ('24', '彪马', '1', '20181210\\15f17ef39c07e83b70e1065f35933ca3.jpg');
INSERT INTO `brand` VALUES ('27', '新百伦', '1', '20181210\\3f333498ec2eb92bec4b90abf48bd019.jpg');
INSERT INTO `brand` VALUES ('39', '德芙', '1', '20181221\\bb186bb78144039b2c257394c4d092ce.jpg');
INSERT INTO `brand` VALUES ('36', 'Vivo', '1', '20181221\\234f21d0256a3228e5827df2d05ab428.jpg');
INSERT INTO `brand` VALUES ('35', 'Oppo', '1', '20181221\\b64deae43518f4047ff98f34bf6eced9.jpg');
INSERT INTO `brand` VALUES ('33', '华为', '1', '20181221\\9857a2809daa738ad4d755469ba6b3c3.jpg');
INSERT INTO `brand` VALUES ('34', '苹果', '1', '20181221\\6dd6ee965935d35cf79369c0038a1e17.jpg');
INSERT INTO `brand` VALUES ('37', '联想', '1', '20181221\\1041de40068b758097cbcc9091a7e904.jpg');
INSERT INTO `brand` VALUES ('38', '美的', '1', '20181221\\de50a834c88c90a33004481b77bf630d.jpg');
INSERT INTO `brand` VALUES ('40', '红富士', '1', '20181221\\6b081d843296db523b884a905a18027d.PNG');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) DEFAULT NULL,
  `user_id` varchar(20) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cart
-- ----------------------------

-- ----------------------------
-- Table structure for cate
-- ----------------------------
DROP TABLE IF EXISTS `cate`;
CREATE TABLE `cate` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cate
-- ----------------------------
INSERT INTO `cate` VALUES ('1', '手机');
INSERT INTO `cate` VALUES ('2', '电脑');
INSERT INTO `cate` VALUES ('3', '电视机');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `cate_id` int(3) NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(13) NOT NULL,
  `cate_show` varchar(12) NOT NULL,
  `cate_navshow` varchar(13) NOT NULL,
  `pid` int(3) NOT NULL,
  `level` varchar(19) NOT NULL,
  PRIMARY KEY (`cate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '家用电器', '1', '1', '0', '1');
INSERT INTO `category` VALUES ('2', '手机', '1', '1', '0', '1');
INSERT INTO `category` VALUES ('3', '电脑', '1', '1', '0', '1');
INSERT INTO `category` VALUES ('4', '男装', '1', '1', '104', '2');
INSERT INTO `category` VALUES ('5', '电视', '1', '1', '1', '2');
INSERT INTO `category` VALUES ('6', '空调', '1', '1', '1', '2');
INSERT INTO `category` VALUES ('7', '洗衣机', '1', '1', '1', '2');
INSERT INTO `category` VALUES ('8', '手机通讯', '1', '1', '2', '2');
INSERT INTO `category` VALUES ('9', '手机配件', '1', '1', '2', '2');
INSERT INTO `category` VALUES ('10', '笔记本', '1', '1', '105', '3');
INSERT INTO `category` VALUES ('11', '游戏本', '1', '1', '105', '3');
INSERT INTO `category` VALUES ('12', '平板电脑', '1', '1', '105', '3');
INSERT INTO `category` VALUES ('13', 'T恤', '1', '1', '4', '3');
INSERT INTO `category` VALUES ('14', '牛仔裤', '1', '1', '4', '3');
INSERT INTO `category` VALUES ('15', '羽绒服', '1', '1', '4', '3');
INSERT INTO `category` VALUES ('16', '曲面电视', '1', '1', '5', '3');
INSERT INTO `category` VALUES ('17', '超薄电视机', '1', '1', '5', '3');
INSERT INTO `category` VALUES ('18', '手机', '1', '1', '8', '3');
INSERT INTO `category` VALUES ('19', '游戏手机', '1', '1', '8', '3');
INSERT INTO `category` VALUES ('38', '图书', '1', '1', '0', '1');
INSERT INTO `category` VALUES ('23', '网络电视', '1', '1', '5', '3');
INSERT INTO `category` VALUES ('24', '衬衫', '1', '1', '4', '2');
INSERT INTO `category` VALUES ('41', '滚筒洗衣机', '1', '1', '7', '3');
INSERT INTO `category` VALUES ('40', '中央空调', '1', '1', '6', '3');
INSERT INTO `category` VALUES ('39', '壁挂式空调', '1', '1', '6', '3');
INSERT INTO `category` VALUES ('37', '食品', '1', '1', '0', '1');
INSERT INTO `category` VALUES ('53', '零食', '1', '1', '48', '3');
INSERT INTO `category` VALUES ('43', '联想笔记本', '1', '1', '10', '3');
INSERT INTO `category` VALUES ('44', '女鞋', '1', '1', '94', '2');
INSERT INTO `category` VALUES ('45', '帆布鞋', '1', '1', '44', '3');
INSERT INTO `category` VALUES ('46', '休闲鞋', '1', '1', '44', '3');
INSERT INTO `category` VALUES ('47', '新鲜水果', '1', '1', '37', '2');
INSERT INTO `category` VALUES ('48', '进口食品', '1', '1', '37', '2');
INSERT INTO `category` VALUES ('49', '苹果', '1', '1', '47', '3');
INSERT INTO `category` VALUES ('50', '香蕉', '1', '1', '47', '3');
INSERT INTO `category` VALUES ('51', '牛奶', '1', '1', '48', '3');
INSERT INTO `category` VALUES ('52', '巧克力', '1', '1', '48', '3');
INSERT INTO `category` VALUES ('54', '文学', '1', '1', '38', '2');
INSERT INTO `category` VALUES ('55', '童书', '1', '1', '38', '2');
INSERT INTO `category` VALUES ('56', '教材教辅', '1', '1', '38', '2');
INSERT INTO `category` VALUES ('57', '励志', '1', '1', '38', '2');
INSERT INTO `category` VALUES ('58', '小说', '1', '1', '54', '3');
INSERT INTO `category` VALUES ('59', '散文随笔', '1', '1', '54', '3');
INSERT INTO `category` VALUES ('60', '青春文学', '1', '1', '54', '3');
INSERT INTO `category` VALUES ('61', '0-2岁', '1', '1', '55', '3');
INSERT INTO `category` VALUES ('62', '3-4岁', '1', '1', '55', '3');
INSERT INTO `category` VALUES ('63', '5-10岁', '1', '1', '55', '3');
INSERT INTO `category` VALUES ('64', '绘本', '1', '1', '55', '3');
INSERT INTO `category` VALUES ('65', '中小学教辅', '1', '1', '56', '3');
INSERT INTO `category` VALUES ('66', '考试', '1', '1', '56', '3');
INSERT INTO `category` VALUES ('67', '外语学习', '1', '1', '56', '3');
INSERT INTO `category` VALUES ('68', '字典词典', '1', '1', '56', '3');
INSERT INTO `category` VALUES ('69', '管理', '1', '1', '57', '3');
INSERT INTO `category` VALUES ('70', '金融', '1', '1', '57', '3');
INSERT INTO `category` VALUES ('71', '经济', '1', '1', '57', '3');
INSERT INTO `category` VALUES ('72', '市场营销', '1', '1', '57', '3');
INSERT INTO `category` VALUES ('73', '领导力', '1', '1', '57', '3');
INSERT INTO `category` VALUES ('74', '股票', '1', '1', '57', '3');
INSERT INTO `category` VALUES ('75', '男鞋', '1', '1', '94', '2');
INSERT INTO `category` VALUES ('76', '正装鞋', '1', '1', '44', '3');
INSERT INTO `category` VALUES ('77', '妈妈鞋', '1', '1', '44', '3');
INSERT INTO `category` VALUES ('78', '雪地靴', '1', '1', '44', '3');
INSERT INTO `category` VALUES ('79', '豆豆鞋', '1', '1', '44', '3');
INSERT INTO `category` VALUES ('80', '中跟鞋', '1', '1', '44', '3');
INSERT INTO `category` VALUES ('81', '高跟鞋', '1', '1', '44', '3');
INSERT INTO `category` VALUES ('82', '皮鞋', '1', '1', '75', '3');
INSERT INTO `category` VALUES ('83', '雨鞋', '1', '1', '75', '3');
INSERT INTO `category` VALUES ('84', '增高鞋', '1', '1', '75', '3');
INSERT INTO `category` VALUES ('85', '精选肉类', '1', '1', '37', '2');
INSERT INTO `category` VALUES ('86', '猪肉', '1', '1', '85', '3');
INSERT INTO `category` VALUES ('87', '牛肉', '1', '1', '85', '3');
INSERT INTO `category` VALUES ('88', '鸡肉', '1', '1', '85', '3');
INSERT INTO `category` VALUES ('89', '鸭肉', '1', '1', '85', '3');
INSERT INTO `category` VALUES ('90', '冷鲜肉', '1', '1', '85', '3');
INSERT INTO `category` VALUES ('91', '4k超清电视', '1', '1', '5', '3');
INSERT INTO `category` VALUES ('92', '中央空调', '1', '1', '6', '3');
INSERT INTO `category` VALUES ('93', '变频空调', '1', '1', '6', '3');
INSERT INTO `category` VALUES ('94', '鞋类', '1', '1', '0', '1');
INSERT INTO `category` VALUES ('95', '手机壳', '1', '1', '9', '3');
INSERT INTO `category` VALUES ('96', '贴膜', '1', '1', '9', '3');
INSERT INTO `category` VALUES ('97', '充电器', '1', '1', '9', '3');
INSERT INTO `category` VALUES ('98', '蓝牙耳机', '1', '1', '9', '3');
INSERT INTO `category` VALUES ('99', '手机挂饰', '1', '1', '9', '3');
INSERT INTO `category` VALUES ('100', '苹果周边', '1', '1', '9', '3');
INSERT INTO `category` VALUES ('101', '手机支架', '1', '1', '8', '3');
INSERT INTO `category` VALUES ('102', '移动电源', '1', '1', '8', '3');
INSERT INTO `category` VALUES ('103', '充电宝', '1', '1', '8', '3');
INSERT INTO `category` VALUES ('104', '服装', '1', '1', '0', '1');
INSERT INTO `category` VALUES ('105', '电脑整机', '1', '1', '3', '2');

-- ----------------------------
-- Table structure for code
-- ----------------------------
DROP TABLE IF EXISTS `code`;
CREATE TABLE `code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `timeout` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of code
-- ----------------------------
INSERT INTO `code` VALUES ('1', '7929', '15311313540', '1550798055', '0');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `goods_id` int(3) NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(34) NOT NULL,
  `goods_img` varchar(250) NOT NULL,
  `goods_price` decimal(13,2) NOT NULL,
  `goods_marketprice` varchar(255) NOT NULL COMMENT '市场价格',
  `goods_desc` varchar(225) NOT NULL COMMENT '详情',
  `goods_score` int(13) NOT NULL COMMENT '积分',
  `goods_num` int(13) NOT NULL,
  `goods_imgs` varchar(225) NOT NULL,
  `goods_hot` varchar(225) NOT NULL COMMENT '推荐',
  `is_sell` varchar(21) NOT NULL,
  `brand_id` int(3) NOT NULL,
  `cate_id` int(3) NOT NULL,
  `goods_new` varchar(32) NOT NULL,
  `goods_thumb` varchar(255) NOT NULL,
  `goods_sn` varchar(30) NOT NULL,
  `goods_img_desc` varchar(255) NOT NULL,
  `editorValue` varchar(255) NOT NULL,
  `is_tell` int(11) DEFAULT '1',
  PRIMARY KEY (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=173 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('27', '超薄24k电视', '20181221\\ef41e478edc56c97af0f0df8871ba6a3.jpg', '1212.00', '2121', '', '2121', '21212', '', '新品,热卖', '1', '37', '17', '2', '', '', '', '', '2');
INSERT INTO `goods` VALUES ('28', '网络超级电视大屏幕', '20181221\\61064cbdc0dd3d021d5cc706776018dd.jpg', '1212.00', '1212', '', '121212', '212', '', '新品,精品', '1', '37', '23', '2', '', '', '', '', '2');
INSERT INTO `goods` VALUES ('26', '联想曲面电视机', '20181221\\a355136922c68d99a2be58908629c98a.jpg', '2132.00', '1212', '', '212', '2212', '', '新品', '1', '37', '16', '2', '', '', '', '', '2');
INSERT INTO `goods` VALUES ('25', '超薄4K电视（枪色）', '20181221\\65b3c8e514d9424d3f2981c36693a99b.jpg', '212.00', '2121', '', '1212', '212', '', '新品', '1', '33', '17', '2', '', '', '', '', '2');
INSERT INTO `goods` VALUES ('24', '4K电视金属机身（枪色）', '20181221\\1d396585b02c31d7ffb0dd2ec6939a76.jpg', '3434.00', '2332', '', '32', '32', '', '新品', '1', '38', '23', '2', '', '', '', '', '2');
INSERT INTO `goods` VALUES ('23', ' 55英寸32核人工智能 ', '20181221\\6f873c45e4303566f0a699b0d167f1b7.jpg', '2121.00', '2233', '', '3232', '232', '', '新品,精品', '1', '33', '16', '2', '', '', '', '', '2');
INSERT INTO `goods` VALUES ('22', '人工智能遥控', '20181221\\8dce9acddd4d5f7ae6ce2a4b31728436.jpg', '2333.00', '2222', '', '2222', '2222', '', '新品,精品', '1', '37', '17', '2', '', '', '', '', '2');
INSERT INTO `goods` VALUES ('21', 'TCL 55A950C 55英寸32核人工智能 HDR曲面超薄4K电', '20181221\\5983dc94941919515edfddfa896a98c4.jpg', '3299.00', '3300', '', '2212', '13333', '', '新品,精品,热卖', '1', '38', '16', '2', '', '', '', '', '2');
INSERT INTO `goods` VALUES ('29', 'Ipone XsMax', '20181221\\81eada78c391914007950988ecd4b9fa.jpg', '9999.00', '9999', '<img src=\"/uploads/20181221\\cb14bf4360ab8243856d44be305d9437.jpg\" alt=\"富文本上传文件\">', '6666', '66', '', '新品,精品,热卖', '1', '34', '19', '2', '', '', '', '', '1');
INSERT INTO `goods` VALUES ('30', 'OppoR15', '20181221\\f8277acd337501e6cce340b4cbd7230f.jpg', '2121.00', '2121', '', '21212', '5', '', '新品,精品,热卖', '1', '35', '18', '1', '', '', '', '', '1');
INSERT INTO `goods` VALUES ('31', 'oppo r15热卖手机精品', '20181221\\9493813286e6e6e8bf36b61802d94758.jpg', '1212.00', '2121', '', '12121', '1212', '', '新品,精品,热卖', '1', '35', '18', '1', '', '', '', '', '1');
INSERT INTO `goods` VALUES ('32', '耐用电源', '20181221\\06438b861facd6bdd9c965e34abfb98a.jpg', '1212.00', '2121', '', '2121', '1212', '', '新品,精品', '1', '35', '102', '1', '', '', '', '', '1');
INSERT INTO `goods` VALUES ('33', '大容量', '20181221\\620f850c0a657e9138326c7418fb4740.jpg', '1212.00', '2121', '', '212', '212', '', '新品,精品,热卖', '1', '36', '97', '1', '', '', '', '', '1');
INSERT INTO `goods` VALUES ('34', '超大容量充电宝', '20181221\\9ea1efe400027d716a808594e80cfa14.jpg', '212.00', '212', '', '212', '2121', '', '新品,精品', '1', '33', '103', '1', '', '', '', '', '1');
INSERT INTO `goods` VALUES ('35', '苹果屏保', '20181221\\68ea95e5b492a71453d26ee852decde3.jpg', '19.00', '12', '', '12', '21', '', '新品', '1', '34', '100', '1', '', '', '', '', '3');
INSERT INTO `goods` VALUES ('36', '手机壳苹果', '20181221\\669805be11c45652abf60de17870fca7.jpg', '121.00', '212', '', '212', '212', '', '新品', '1', '34', '9', '1', '', '', '', '', '3');
INSERT INTO `goods` VALUES ('37', '联想笔记本游戏本', '20181221\\af9968eb6ce823bfc5b2987b29e8e6a8.jpg', '7999.00', '488', '', '232', '333', '', '精品', '1', '37', '11', '1', '', '', '', '', '3');
INSERT INTO `goods` VALUES ('38', '华为大内存电脑商务', '20181221\\2947e61df6d5eef47c210da6b29a7e3c.jpg', '2333.00', '222', '', '222', '222', '', '热卖', '1', '33', '10', '1', '', '', '', '', '3');
INSERT INTO `goods` VALUES ('39', '苹果新版本电脑', '20181221\\e3872e0c4f939a5b843a26a5dce8fca4.jpg', '1223.00', '222', '', '111', '1111', '', '新品,精品,热卖', '1', '34', '2', '1', '', '', '', '', '3');
INSERT INTO `goods` VALUES ('40', '笔记本5G运行', '20181221\\f394368bb87f6aa07c166a81bfe1d40f.jpg', '4444.00', '4444', '', '222', '2222', '', '新品,精品', '1', '37', '43', '1', '', '', '', '', '3');
INSERT INTO `goods` VALUES ('41', '大内存 4G运行', '20181221\\a4d5d9e96d3d13d0e41d29b80c68103c.jpg', '222.00', '222', '', '22', '222', '', '新品', '1', '33', '10', '1', '', '', '', '', '1');
INSERT INTO `goods` VALUES ('42', '二手电脑', '20181221\\0890d7470596f59bafd8871a8e145d5e.jpg', '122.00', '111', '', '1', '1', '', '新品', '1', '37', '11', '1', '', '', '', '', '1');
INSERT INTO `goods` VALUES ('43', '平板新品电脑', '20181221\\9fa74392971c29a86acc6b23764ce6c5.jpg', '444.00', '333', '', '22', '122', '', '新品', '1', '38', '12', '1', '', '', '', '', '1');
INSERT INTO `goods` VALUES ('44', '小型电脑', '20181221\\acbb5a42894445fa26815d574f7f8822.jpg', '888.00', '444', '', '88', '888', '', '新品,精品', '1', '37', '43', '1', '', '', '', '', '1');
INSERT INTO `goods` VALUES ('45', '火龙果', '20181221\\f86f11ea977ee6cc9d8cb1c11e699c72.PNG', '212.00', '212', '', '212', '212', '', '新品,热卖', '1', '40', '47', '1', '', '', '', '', '1');
INSERT INTO `goods` VALUES ('46', '盒装巧克力德芙', '20181221\\a707e3f02e40fa1609e48f57e2684c40.PNG', '33.00', '33', '', '33', '33', '', '新品', '1', '39', '52', '1', '', '', '', '', '1');
INSERT INTO `goods` VALUES ('47', '礼盒装', '20181221\\ee0d6994b23c709715c60967382247df.PNG', '455.00', '555', '', '55', '555', '', '新品,精品', '1', '39', '52', '1', '', '', '', '', '1');
INSERT INTO `goods` VALUES ('48', '生日礼物巧克力', '20181221\\4695c398656b5a7008512a57815d2352.PNG', '322.00', '223', '', '2', '22', '', '新品', '1', '39', '52', '1', '', '', '', '', '1');
INSERT INTO `goods` VALUES ('49', '情人节巧克力情人', '20181221\\ae42aa5f0cffb5057f97ae652b6f357b.PNG', '323.00', '234', '', '32', '32', '', '新品,精品', '1', '39', '52', '1', '', '', '', '', '1');
INSERT INTO `goods` VALUES ('52', '礼物巧克力盒装', '20181221\\41b6d6e9a3d75f5d1b79b79b9c4d5d71.PNG', '212.00', '212', '', '121', '12', '', '新品,精品', '1', '39', '52', '1', '', '', '', '', '1');
INSERT INTO `goods` VALUES ('53', '格林童话', '20181221\\b69f65f7685d73d74673a2b71239141c.PNG', '44.00', '55', '', '55', '55', '', '新品', '1', '37', '63', '1', '', '', '', '', '1');
INSERT INTO `goods` VALUES ('54', '我想去看海', '20181221\\b839ceed631c4a084fbc8f277994db49.PNG', '211.00', '212', '', '21', '21', '', '新品,热卖', '1', '37', '64', '1', '', '', '', '', '1');
INSERT INTO `goods` VALUES ('55', '爸爸的池塘', '20181221\\6fcc8d49c699fe87b9b0301287729511.PNG', '323.00', '23', '', '32', '32', '', '新品,热卖', '1', '37', '63', '1', '', '', '', '', '1');
INSERT INTO `goods` VALUES ('56', '童话绘本', '20181221\\3a02a6596b6fcf69f6635022f02abbd6.PNG', '22.00', '33', '', '33', '33', '', '精品', '1', '37', '64', '1', '', '', '', '', '1');
INSERT INTO `goods` VALUES ('57', '这个东西能吃吗', '20181221\\72a4a151120646713d0d1ea55ff9e0f4.PNG', '55.00', '55', '', '5', '5', '', '新品,精品', '1', '37', '64', '1', '', '', '', '', '1');
INSERT INTO `goods` VALUES ('58', '心理', '20181221\\6802115398fcd4e698c2043d53bdfb1a.PNG', '53.00', '44', '', '55', '55', '', '新品,精品', '1', '37', '60', '1', '', '', '', '', '1');
INSERT INTO `goods` VALUES ('59', '好好吃饭', '20181221\\00440503105976cbb9710994268e0608.PNG', '23.00', '32', '', '32', '32', '', '新品', '1', '37', '62', '2', '', '', '', '', '1');
INSERT INTO `goods` VALUES ('60', '那一年', '20181221\\8c83d7a357c86e082392198530bb9a88.PNG', '44.00', '44', '', '44', '44', '', '新品', '1', '37', '56', '2', '', '', '', '', '1');
INSERT INTO `goods` VALUES ('61', '阿迪正品', '20181221\\33ec8630cd136c0dc866c1d9f6444bbf.jpg', '333.00', '333', '', '333', '333', '', '新品', '1', '26', '46', '2', '', '', '', '', '1');
INSERT INTO `goods` VALUES ('62', '彪马正品', '20181221\\66f130e232b9edee2282c272a8bcb967.jpg', '444.00', '444', '', '444', '444', '', '新品,热卖', '1', '24', '46', '2', '', '', '', '', '1');
INSERT INTO `goods` VALUES ('63', '彪马男', '20181221\\30f5f1e6faeec6e16b1cebeaf078fb11.jpg', '3434.00', '3434', '', '434', '434', '', '新品', '1', '24', '84', '2', '', '', '', '', '1');
INSERT INTO `goods` VALUES ('64', '乔丹旗舰店正品', '20181221\\38cff4512f69d889cac892f96034083d.jpg', '445.00', '545', '', '34', '545', '', '新品,热卖', '1', '23', '75', '2', '', '', '', '', '1');
INSERT INTO `goods` VALUES ('65', '豆豆鞋男皮', '20181221\\ef7d5f53752663fa363f091d426e1765.jpg', '323.00', '32', '', '32', '32', '', '新品,精品', '1', '26', '79', '2', '', '', '', '', '1');
INSERT INTO `goods` VALUES ('66', '正装鞋', '20181221\\da54b67d331b558be097f38f0aef6dbb.jpg', '3232.00', '32323', '', '3223', '32', '', '新品,精品', '1', '14', '76', '2', '', '', '', '', '1');
INSERT INTO `goods` VALUES ('67', '阿迪休闲', '20181221\\eea57913ade23d541f6382cf9ac55d5b.jpg', '334.00', '444', '', '4', '4', '', '精品', '1', '26', '46', '1', '', '', '', '', '2');
INSERT INTO `goods` VALUES ('68', '增高乔丹', '20181221\\4d8673049eb2d223574cb4c3ff319eaa.jpg', '212.00', '212', '', '212', '212', '', '新品', '1', '23', '84', '1', '', '', '', '', '2');
INSERT INTO `goods` VALUES ('69', '休闲裤', '20181221\\03350ed6033c8267217580b8e19a12bd.jpg', '77.00', '77', '', '7', '7', '', '精品,热卖', '1', '26', '4', '1', '', '', '', '', '2');
INSERT INTO `goods` VALUES ('70', '休闲裤清凉', '20181221\\9f2f09d7dad7f106996a7fe5b1b4ab02.jpg', '333.00', '333', '', '33', '33', '', '新品', '1', '25', '4', '2', '', '', '', '', '2');
INSERT INTO `goods` VALUES ('71', '裤子', '20181221\\4b5bb9a646372202d63ce15a3d41f738.jpg', '12.00', '21212', '', '21', '21', '', '精品', '1', '23', '14', '1', '', '', '', '', '2');
INSERT INTO `goods` VALUES ('72', '男T', '20181221\\99034ba51be2f23ae1b4d6b44261754e.jpg', '323.00', '233', '', '323', '332', '', '新品', '1', '24', '13', '2', '', '', '', '', '2');
INSERT INTO `goods` VALUES ('73', '帅', '20181221\\a66113405263c72b6dc6d310abce6230.jpg', '323.00', '323', '', '32', '32', '', '新品', '1', '14', '24', '1', '', '', '', '', '2');
INSERT INTO `goods` VALUES ('74', '超高大上衬衫', '20181221\\4fb97cc84cac1381f17817291b9fe357.jpg', '323.00', '323', '', '32', '23', '', '新品', '1', '23', '24', '1', '', '', '', '', '1');
INSERT INTO `goods` VALUES ('75', 'baiT', '20181221\\c0910dc1e6519a6b53e7c2a675f3b819.jpg', '121.00', '21', '', '21', '21', '', '新品', '1', '27', '13', '1', '', '', '', '', '1');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_no` varchar(30) DEFAULT NULL COMMENT '订单号',
  `user_id` int(4) DEFAULT NULL,
  `order_amount` decimal(10,0) DEFAULT NULL COMMENT '订单总金额',
  `order_pay_type` tinyint(4) DEFAULT NULL COMMENT '1线上支付 2货到付款 ',
  `pay_status` tinyint(4) DEFAULT '1' COMMENT '支付状态 1未支付 2已支付',
  `pay_way` tinyint(4) DEFAULT NULL COMMENT '支付方式 1支付宝 2微信 3网银 4网银支付 5货到付款',
  `status` tinyint(4) DEFAULT '1' COMMENT '订单状态 1未支付  2已支付 3已确认 4备货中 5发货中 6已发货 7订单完成',
  `ctime` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order
-- ----------------------------

-- ----------------------------
-- Table structure for order_address
-- ----------------------------
DROP TABLE IF EXISTS `order_address`;
CREATE TABLE `order_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `consignee_name` varchar(30) DEFAULT NULL,
  `detailed_address` varchar(30) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `consignee_tel` varchar(30) DEFAULT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `ctime` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `is_del` int(11) DEFAULT '1',
  PRIMARY KEY (`address_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_address
-- ----------------------------

-- ----------------------------
-- Table structure for order_goods
-- ----------------------------
DROP TABLE IF EXISTS `order_goods`;
CREATE TABLE `order_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) DEFAULT NULL,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_name` varchar(120) NOT NULL DEFAULT '',
  `order_no` varchar(60) NOT NULL DEFAULT '',
  `buy_number` smallint(5) unsigned NOT NULL DEFAULT '1',
  `shop_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `order_amount` varchar(255) DEFAULT NULL,
  `goods_img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rec_id`),
  KEY `order_id` (`order_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_goods
-- ----------------------------

-- ----------------------------
-- Table structure for shop
-- ----------------------------
DROP TABLE IF EXISTS `shop`;
CREATE TABLE `shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `c_id` int(11) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `is_hot` tinyint(4) DEFAULT NULL,
  `is_show` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop
-- ----------------------------
INSERT INTO `shop` VALUES ('1', '阿阿', '2', 'sdfsdf', '1', '2');
INSERT INTO `shop` VALUES ('2', 'liddd', '2', 'gtege', '1', '2');
INSERT INTO `shop` VALUES ('3', 'ccccca', '2', 'sda', '1', '2');
INSERT INTO `shop` VALUES ('4', 'bbbb', '2', 'wt', '1', '1');
INSERT INTO `shop` VALUES ('5', 'vvvvv', '2', 'gg', '1', '1');
INSERT INTO `shop` VALUES ('6', 'aaaaaaa', '2', 'shg', '1', '1');
INSERT INTO `shop` VALUES ('9', '杨静', '1', '杨静', '1', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `pwd` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '15311313540', '4297f44b13955235245b2497399d7a93');
