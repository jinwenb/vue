/*
Navicat MySQL Data Transfer

Source Server         : 你喜欢的
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : pinduoduo

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2019-04-06 17:32:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for search
-- ----------------------------
DROP TABLE IF EXISTS `search`;
CREATE TABLE `search` (
  `id` varchar(32) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `name` varchar(6) NOT NULL,
  `tag` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of search
-- ----------------------------
INSERT INTO `search` VALUES ('0d83c9cca0654b33be673a36c75dba15', 'http://127.0.0.1:3000/images/search/2548fb09335f9cb9e14978a897e9e377.jpg', '食品', null);
INSERT INTO `search` VALUES ('13370021884f4467b7fef810729c1458', 'http://127.0.0.1:3000/images/search/4a581f7b6f6d55f5afdef7de5487a2bd.png', '服饰', null);
INSERT INTO `search` VALUES ('18f779dbfc6e44118b6bba08d99034cd', 'http://127.0.0.1:3000/images/search/da0de61057cb9697f56b0ce17dd709f6.png', '海淘', null);
INSERT INTO `search` VALUES ('21c09fd331464c3c89158cdfa5b678fb', 'http://127.0.0.1:3000/images/search/45a23db862739d083c768331696c2604.jpg', '手机', 'phone');
INSERT INTO `search` VALUES ('311c14fb808247c9b82ca436d9377358', 'http://127.0.0.1:3000/images/search/f7bd831b71565891a66b4149a8f0ed7d.png', '内衣', null);
INSERT INTO `search` VALUES ('38f8a2056a224d5f991cdc85b78bd1a6', 'http://127.0.0.1:3000/images/search/2a2a8fe77f59f2ce5c8db08b1fd6906a.png', '电器', null);
INSERT INTO `search` VALUES ('4ef1ea4e672347dfa8ac1c742f6c4bc5', 'http://127.0.0.1:3000/images/search/f0b2c21938d3bc3b99100bd9b84f12e6.jpg', '电脑', null);
INSERT INTO `search` VALUES ('70011d15a4a5436cbf07b836c753d695', 'http://127.0.0.1:3000/images/search/b5792b7538e9a9580de59424df9e116f.jpg', '家纺', null);
INSERT INTO `search` VALUES ('72aab886f7fe4c778859f44b16f3f1b4', 'http://127.0.0.1:3000/images/search/c60a121d6d0dd20c9ab50f9d29ff3311.png', '母婴', null);
INSERT INTO `search` VALUES ('8d39bd2beffc495199c71d1763fa43c4', 'http://127.0.0.1:3000/images/search/e3eb82ea4b01b12e45f034a643e42349.png', '美妆', null);
INSERT INTO `search` VALUES ('a59aa98d68a542f1b8dcf3026eaaa95a', 'http://127.0.0.1:3000/images/search/163857a02c69fae18f2f2e5f79d6d65a.png', '男装', null);
INSERT INTO `search` VALUES ('a94a1999c49245e3b41307af4490c951', 'http://127.0.0.1:3000/images/search/c8f4c0935fa91a8595ed789a3f2e1a05.png', '水果', null);
INSERT INTO `search` VALUES ('af5c9b08bc254d398a5920893be65d3b', 'http://127.0.0.1:3000/images/search/e99c260bf65d8a0654e363e20df146cf.jpg', '家装', null);
INSERT INTO `search` VALUES ('bb7c0fad1b1245b78c0c333fd9b214a6', 'http://127.0.0.1:3000/images/search/ccc2baf4cad5665c3164d86558f7c8ee.png', '百货', null);
INSERT INTO `search` VALUES ('be5a4a8b99a84323b003659844dbcd27', 'http://127.0.0.1:3000/images/search/1f8ac68713ba19c0e28d4ac918d79e8a.jpg', '汽车', null);
INSERT INTO `search` VALUES ('d10f9bf67ac9488fb5c9963ec16491c1', 'http://127.0.0.1:3000/images/search/789adda54a190562a33fe8b1965f7e3d.png', '充值', null);
INSERT INTO `search` VALUES ('da77b9cf3b3c464c9f934c6afbdc7f3c', 'http://127.0.0.1:3000/images/search/83dd933ea9c7f99235d9085956471653.jpg', '运动', null);
INSERT INTO `search` VALUES ('ddc8d804ed4040ce9f25c56e06280270', 'http://127.0.0.1:3000/images/search/4ca61ccafb3388b900d0bf51fd51b363.jpg', '鞋包', null);
