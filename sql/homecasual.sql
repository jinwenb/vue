/*
Navicat MySQL Data Transfer

Source Server         : 你喜欢的
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : pinduoduo

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2019-04-06 17:32:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for homecasual
-- ----------------------------
DROP TABLE IF EXISTS `homecasual`;
CREATE TABLE `homecasual` (
  `id` varchar(32) NOT NULL,
  `imgurl` varchar(255) NOT NULL,
  `detail` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of homecasual
-- ----------------------------
INSERT INTO `homecasual` VALUES ('fffsfsfffffsjfjfs', 'http://t16img.yangkeduo.com/pdd_oms/2019-04-02/ed65e29d746eefce47e70596058b3f3b.jpeg?imageMogr2/format/webp/quality/50', null);
INSERT INTO `homecasual` VALUES ('fffsfsfffsjfjfs', 'http://t16img.yangkeduo.com/pdd_oms/2019-04-01/69917e3d0cb139e153dbbc7b51bb3ce5.jpg?imageMogr2/format/webp/quality/50', null);
INSERT INTO `homecasual` VALUES ('fffsfsfsjfjfs', 'http://t00img.yangkeduo.com/goods/images/2019-04-01/d25c3ba62510312c4abf4e60a41d6e98.jpeg?imageMogr2/format/webp/quality/50', null);
