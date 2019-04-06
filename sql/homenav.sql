/*
Navicat MySQL Data Transfer

Source Server         : 你喜欢的
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : pinduoduo

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2019-04-06 17:32:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for homenav
-- ----------------------------
DROP TABLE IF EXISTS `homenav`;
CREATE TABLE `homenav` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `iconurl` varchar(255) NOT NULL,
  `icontitle` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of homenav
-- ----------------------------
INSERT INTO `homenav` VALUES ('1', 'http://t07img.yangkeduo.com/images/2018-05-16/26c916947489c6b2ddd188ecdb54fd8d.png?imageMogr2/format/webp/quality/50', '限时秒杀');
INSERT INTO `homenav` VALUES ('2', 'http://t00img.yangkeduo.com/goods/images/2018-12-22/b9851773573d1d682aa46d896de7f4fa.png?imageMogr2/format/webp/quality/50', '限时秒杀');
INSERT INTO `homenav` VALUES ('3', 'http://t00img.yangkeduo.com/goods/images/2019-04-01/94ffdc0e10789059ea7fd773b593b036.png?imageMogr2/format/webp/quality/50', '品牌管');
INSERT INTO `homenav` VALUES ('4', 'http://t00img.yangkeduo.com/goods/images/2019-04-01/94ffdc0e10789059ea7fd773b593b036.png?imageMogr2/format/webp/quality/50', '品牌管');
INSERT INTO `homenav` VALUES ('5', 'http://t00img.yangkeduo.com/goods/images/2019-01-30/5667b3f1eaa8bb379303afb3934d1bc8.png?imageMogr2/format/webp/quality/50', '多多家园');
INSERT INTO `homenav` VALUES ('6', 'http://t00img.yangkeduo.com/goods/images/2018-10-07/c671f2c49805658697cc0f72fff87eb3.png?imageMogr2/format/webp/quality/50', '九块九特卖');
INSERT INTO `homenav` VALUES ('7', 'http://t05img.yangkeduo.com/images/2018-05-16/801ae189938526cdaf40935d07034c5e.png?imageMogr2/format/webp/quality/50', '充值中心');
INSERT INTO `homenav` VALUES ('8', 'http://t01img.yangkeduo.com/images/2018-05-16/c2ba677bcd16ecad6c335e5e04a1cf1e.png?imageMogr2/format/webp/quality/50', '现金签到');
INSERT INTO `homenav` VALUES ('9', 'http://t00img.yangkeduo.com/goods/images/2019-02-05/1351e256a0319a6885761b937d06d581.png?imageMogr2/format/webp/quality/50', '金猪钻大钱');
INSERT INTO `homenav` VALUES ('10', 'http://t00img.yangkeduo.com/goods/images/2018-08-31/2068a85245f512000d78325876d23ae3.png?imageMogr2/format/webp/quality/50', '电城器');
INSERT INTO `homenav` VALUES ('11', 'http://t00img.yangkeduo.com/goods/images/2019-01-30/5667b3f1eaa8bb379303afb3934d1bc8.png?imageMogr2/format/webp/quality/50', '多多家园');
INSERT INTO `homenav` VALUES ('12', 'http://t00img.yangkeduo.com/goods/images/2018-10-07/c671f2c49805658697cc0f72fff87eb3.png?imageMogr2/format/webp/quality/50', '九块九特卖');
INSERT INTO `homenav` VALUES ('13', 'http://t00img.yangkeduo.com/goods/images/2019-02-15/b329c4673337e18030f1211df38a543b.png?imageMogr2/format/webp/quality/50', '主力想免单');
INSERT INTO `homenav` VALUES ('14', 'http://t10img.yangkeduo.com/images/2018-05-16/712fc1e7f4f7b0572257ef162b5185a9.png?imageMogr2/format/webp/quality/50', '天天领现金');
INSERT INTO `homenav` VALUES ('15', 'http://t05img.yangkeduo.com/images/2018-05-04/c71c9acd8b48203a704f6c0951caddc0.png?imageMogr2/format/webp/quality/50', '美日好店');
INSERT INTO `homenav` VALUES ('16', 'http://t00img.yangkeduo.com/goods/images/2019-01-20/d36b7af30da354cb2c8ad4ea7bd819cd.png?imageMogr2/format/webp/quality/50', '一分抽大奖');
INSERT INTO `homenav` VALUES ('17', 'http://t00img.yangkeduo.com/goods/images/2019-02-05/1351e256a0319a6885761b937d06d581.png?imageMogr2/format/webp/quality/50', '进猪赚大钱');
INSERT INTO `homenav` VALUES ('18', 'http://t00img.yangkeduo.com/goods/images/2019-01-20/d36b7af30da354cb2c8ad4ea7bd819cd.png?imageMogr2/format/webp/quality/50', '美日好店');
INSERT INTO `homenav` VALUES ('19', 'http://t00img.yangkeduo.com/goods/images/2019-01-20/d36b7af30da354cb2c8ad4ea7bd819cd.png?imageMogr2/format/webp/quality/50', '美日好店');
INSERT INTO `homenav` VALUES ('20', 'http://t00img.yangkeduo.com/goods/images/2019-01-20/d36b7af30da354cb2c8ad4ea7bd819cd.png?imageMogr2/format/webp/quality/50', '美日好店');
