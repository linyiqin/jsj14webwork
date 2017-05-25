/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50635
Source Host           : localhost:3306
Source Database       : wsgwpt

Target Server Type    : MYSQL
Target Server Version : 50635
File Encoding         : 65001

Date: 2017-05-25 15:44:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `carrieroperator`
-- ----------------------------
DROP TABLE IF EXISTS `carrieroperator`;
CREATE TABLE `carrieroperator` (
  `Carrieroperator_name` varchar(32) NOT NULL,
  `Carrieroperator_pwd` varchar(25) NOT NULL,
  PRIMARY KEY (`Carrieroperator_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of carrieroperator
-- ----------------------------

-- ----------------------------
-- Table structure for `goods_imformation`
-- ----------------------------
DROP TABLE IF EXISTS `goods_imformation`;
CREATE TABLE `goods_imformation` (
  `goods_id` varchar(32) NOT NULL,
  `goods_name` varchar(120) NOT NULL,
  `goods_amount` double(32,0) NOT NULL,
  `goods_type` varchar(16) NOT NULL,
  `good_price` double(32,2) NOT NULL,
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_imformation
-- ----------------------------
INSERT INTO `goods_imformation` VALUES ('1', '零食品大礼包咪咪虾条蟹味粒薯片薯条整箱批发好吃的膨化小吃店', '111222', '零食', '15.40');
INSERT INTO `goods_imformation` VALUES ('2', '辣条零食大礼包1219g馋魔芋亲嘴烧儿时 包邮', '2345', '辣条', '55.78');
INSERT INTO `goods_imformation` VALUES ('3', '宇仔大刀肉辣条280g*4袋装重庆风味8090后怀旧麻辣素零食休闲食品', '45653', '辣条', '22.30');
INSERT INTO `goods_imformation` VALUES ('4', '零食品大礼包咪咪虾条蟹味粒薯片薯条整箱批发', '234567', '零食', '33.40');
INSERT INTO `goods_imformation` VALUES ('5', '秦之恋老襄阳大米手工锅巴400g麻辣味特产好吃的吃货零食小吃批发', '234', '零食', '13.90');
INSERT INTO `goods_imformation` VALUES ('6', '王小二 新鲜苹果水果批发包邮山东烟台栖霞红富士5斤果园平果一箱', '1298', '水果', '65.70');
INSERT INTO `goods_imformation` VALUES ('7', '烟台大樱桃车厘子新鲜水果山东美早樱桃2斤现货现摘现发顺丰包邮', '664400', '水果', '148.00');
INSERT INTO `goods_imformation` VALUES ('8', '夏季新款纯白色V领显瘦短袖t恤女时尚纯棉半袖打底衫女款上衣服潮', '23456', '衣服', '35.00');
INSERT INTO `goods_imformation` VALUES ('9', '短袖t恤女2017夏季新款韩版宽松学生小清新夏装衣服女上衣体恤衫', '23456', '衣服', '49.90');

-- ----------------------------
-- Table structure for `purchase_order`
-- ----------------------------
DROP TABLE IF EXISTS `purchase_order`;
CREATE TABLE `purchase_order` (
  `order_id` varchar(32) NOT NULL,
  `goods_id` varchar(32) NOT NULL,
  `order_amount` double(32,0) NOT NULL,
  `order_state` varchar(32) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `user_tel` varchar(32) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `order_price` double(32,2) NOT NULL,
  `goods_name` varchar(120) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of purchase_order
-- ----------------------------
INSERT INTO `purchase_order` VALUES ('1711111111111', '1', '2', '零食', '黄丽君', '12345678901', '广东省广州市海珠区仲恺路500号', '30.80', '零食品大礼包咪咪虾条蟹味粒薯片薯条整箱批发好吃的膨化小吃店');
INSERT INTO `purchase_order` VALUES ('2017525123552 ', '1', '3', '零食', 'cvtybunim', '09856743281', '宇宙银河系地球亚洲中国广东省广州市', '46.20', '零食品大礼包咪咪虾条蟹味粒薯片薯条整箱批发好吃的膨化小吃店');

-- ----------------------------
-- Table structure for `shop`
-- ----------------------------
DROP TABLE IF EXISTS `shop`;
CREATE TABLE `shop` (
  `shop_name` varchar(32) NOT NULL,
  `shop_pwd` varchar(25) NOT NULL,
  PRIMARY KEY (`shop_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop
-- ----------------------------

-- ----------------------------
-- Table structure for `shopping_cart`
-- ----------------------------
DROP TABLE IF EXISTS `shopping_cart`;
CREATE TABLE `shopping_cart` (
  `thing_id` varchar(32) NOT NULL,
  `thing_name` varchar(120) NOT NULL,
  `goods_amount` double(32,0) NOT NULL,
  `thing_state` varchar(32) NOT NULL,
  `thing_price` double(32,2) NOT NULL,
  `thing_amount` double(32,0) NOT NULL,
  PRIMARY KEY (`thing_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shopping_cart
-- ----------------------------
INSERT INTO `shopping_cart` VALUES ('1', '零食品大礼包咪咪虾条蟹味粒薯片薯条整箱批发好吃的膨化小吃店', '111222', '零食', '15.40', '1');
INSERT INTO `shopping_cart` VALUES ('9', '短袖t恤女2017夏季新款韩版宽松学生小清新夏装衣服女上衣体恤衫', '23456', '衣服', '49.90', '1');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_name` varchar(20) NOT NULL DEFAULT '',
  `user_pwd` varchar(32) NOT NULL,
  `user_tel` varchar(32) DEFAULT NULL,
  `user_truename` varchar(20) DEFAULT NULL,
  `user_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('adfghjkt', '123456', 'asdfgh', '123456', 'asdfg');
INSERT INTO `user` VALUES ('bb', '123456', null, null, null);
INSERT INTO `user` VALUES ('fghjk', '123456789', null, null, null);
INSERT INTO `user` VALUES ('明明', '123456', '12345678901', '黄丽君', '广州市海珠区仲恺路500号');
INSERT INTO `user` VALUES ('更好', '0987654321', '56789012345', '李白', '广东省湛江市湛江市区');
INSERT INTO `user` VALUES ('混合', '0987654321', null, null, null);
INSERT INTO `user` VALUES ('黄丽君', '123456', '12345678909', '黄丽君', '广东省广州市海珠区仲恺路500号仲恺学生公寓');
