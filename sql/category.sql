/*
Navicat MySQL Data Transfer

Source Server         : 你喜欢的
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : pinduoduo

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2019-04-06 17:32:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` varchar(32) NOT NULL,
  `tag` varchar(6) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('00b3f3b55ae34f4d85b7688cc1f67af0', 'phone', 'http://127.0.0.1:3000/images/search/e9987dd35dae03928838a537bff0efdf.png');
INSERT INTO `category` VALUES ('5b217cee1c6143fbbce03525ba52f85e', 'phone', 'http://127.0.0.1:3000/images/search/90482819c22442541c83bfc229bac9a5.png');
INSERT INTO `category` VALUES ('b83d9af130ac4eebb1039a44eb23a1bb', 'phone', 'http://127.0.0.1:3000/images/search/ad0ddf64dd90d2a52629f4c07f996ab7.png');
INSERT INTO `category` VALUES ('9eb7ac903f254528b498141ed3a5fd31', 'phone', 'http://127.0.0.1:3000/images/search/8b6958224956427dcd9d5089e5c9a5fe.png');
INSERT INTO `category` VALUES ('a3f7c7cb943e46c0adcb7339cfb76ed8', 'phone', 'http://127.0.0.1:3000/images/search/5e2c58d6e43c37708e68ff9c751f4350.png');
INSERT INTO `category` VALUES ('f6a4d8d6c96848a18514d2040ff4b3f9', 'phone', 'http://127.0.0.1:3000/images/search/a02341465c64dd6ded73c435c07852d5.png');
INSERT INTO `category` VALUES ('ba5fc023557c4c7bac7d00ac50bde77e', 'phone', 'http://127.0.0.1:3000/images/search/4cc3fa43dcaeaefe08438700f425c368.png');
INSERT INTO `category` VALUES ('a02ed51e85e243738555a33a396c0df8', 'phone', 'http://127.0.0.1:3000/images/search/10c63beff8c75e43ce86e12bf3eb2b4c.png');
INSERT INTO `category` VALUES ('a49c613ac8944f90a86a08b854c06582', 'phone', 'http://127.0.0.1:3000/images/search/9cb7b68e7dba3c20b63197397d91ce56.png');
