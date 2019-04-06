/*
Navicat MySQL Data Transfer

Source Server         : 你喜欢的
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : pinduoduo

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2019-04-06 17:33:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(32) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('d142625ef96f4164a30ad966ffa81a95', 'zseee', 'c33367701511b4f6020ec61ded352059');
