/*
Navicat MySQL Data Transfer

Source Server         : 你喜欢的
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : pinduoduo

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2019-04-06 17:32:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `id` varchar(32) NOT NULL,
  `thumb_url` varchar(255) NOT NULL,
  `goods_name` varchar(50) NOT NULL,
  `price` varchar(40) NOT NULL,
  `by_count` smallint(11) NOT NULL,
  `short_name` varchar(255) NOT NULL,
  `goods_id` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES ('c5f10e1e7c664ca1adbb9451edfeb479', 'http://t00img.yangkeduo.com/goods/images/2019-03-31/fc4f045ab3d42706bf374ac8904f726c.jpeg', '北航正品蓝牙耳机oppo超长待机华为无线运动触控苹果手机vivo通用', '6890', '2', '北航触控蓝牙耳机', '025f9207d2e146cd890f75d6a38ee49a');
INSERT INTO `cart` VALUES ('da7d77ac909c4c56a09502cc3e9e1a43', 'http://t00img.yangkeduo.com/goods/images/2019-02-15/1e33a63bd358e24e0960bec631bdd852.jpeg', '100%纯棉童装男童春秋儿童长袖短袖t恤夏装中大童新款韩版爆款', '990', '7', '童装男童纯棉短袖春秋儿童长袖', '0163970935f94ad28e56f8b0e1c501d7');
INSERT INTO `cart` VALUES ('e08813ab751d4b75a3cfdf14866e36c8', 'http://t00img.yangkeduo.com/goods/images/2018-12-26/d273e6cc9a744cdb665fb58df795f747.jpeg', '收纳箱塑料特大号小号储物箱衣服被子玩具收纳盒车载家用', '520', '2', '【冲量狂亏】 收纳箱塑料特大号小号储物箱', '034be66f14ec477cab096a04224b4cdb');
INSERT INTO `cart` VALUES ('e7ea320851464989845a3b887694a9c7', 'http://t00img.yangkeduo.com/goods/images/2018-10-11/6d3cc71cef77fb84ae486134b9678960.jpeg', '【4-10斤】语衣甘蓝薰衣草香氛洗衣液 持久留香 低泡易漂家庭装', '990', '3', '4-10斤薰衣草洗衣液', '027a19b275494f21a84140da40f13d4c');
INSERT INTO `cart` VALUES ('ee826452454844e1af2c6ff29d5b47ca', 'http://t00img.yangkeduo.com/goods/images/2018-09-16/a1a7f3946be711d7f62cdc102a67c38e.jpeg', '全自动雨伞一键开合双人三折叠防风防晒男女加固晴雨两用学生大号', '990', '2', '经典商务伞全自动雨伞', '01e20885401a42249701a3ccf50274a5');
