/*
Navicat MySQL Data Transfer

Source Server         : 你喜欢的
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : pinduoduo

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2019-04-06 17:33:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for shoplist
-- ----------------------------
DROP TABLE IF EXISTS `shoplist`;
CREATE TABLE `shoplist` (
  `id` varchar(32) NOT NULL,
  `thumb_url` varchar(255) NOT NULL,
  `goods_name` varchar(50) DEFAULT NULL,
  `sales_tip` varchar(20) DEFAULT NULL,
  `price` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shoplist
-- ----------------------------
INSERT INTO `shoplist` VALUES ('039c5c1041a74a1c87db9f0eb819bf55', 'http://t00img.yangkeduo.com/goods/images/2019-03-17/3a050b25b3eae41baebfeeb6fb34d440.jpeg', '100%纯棉刺绣花大码文艺范七分袖衬衫女打底衫衬衣春夏中长款上衣', '已拼3713件', '2990');
INSERT INTO `shoplist` VALUES ('0be4a70a757b47f89f9fa5d9dd29d149', 'http://t00img.yangkeduo.com/goods/images/2019-02-11/d4a8640bc3daba173251e4d144f34bc5.jpeg', '雪纺衫女长袖2019春装新款韩版立领上衣百搭大码宽松灯笼袖打底衫', '已拼1.4万件', '2980');
INSERT INTO `shoplist` VALUES ('1571106d02814eba9b22226296e26573', 'http://t00img.yangkeduo.com/t01img/images/2018-06-19/ceafe0583b3ac14c332fafac96f57a80.jpeg', '温州时尚爆款凉鞋女中跟鱼嘴鞋2018新款韩版网纱女鞋子粗跟高跟鞋', '已拼4.7万件', '3590');
INSERT INTO `shoplist` VALUES ('242a50f963c94de79ec091dc1c84dad1', 'http://omsproductionimg.yangkeduo.com/images/2018-01-10/2eabc07f28fc84fc4e65ef284c66beb9.jpeg', '【2斤装108颗】花生牛轧糖休闲牛扎糖果奶糖喜糖批发200g/1斤3斤', '已拼10万+件', '494');
INSERT INTO `shoplist` VALUES ('266a4bdf2c2846e6bf78d321c398e62d', 'http://t00img.yangkeduo.com/goods/images/2019-03-19/e2aac193f3a5814b009660679f0c4571.jpeg', '2019春季新品经典条纹衬衫女士上衣长袖休闲百搭韩版衬衣女打底衫', '已拼1729件', '2392');
INSERT INTO `shoplist` VALUES ('2f7f6c47d240464b9cbf04bd790a33c3', 'http://t00img.yangkeduo.com/goods/images/2018-09-21/c12f227b9ab7972a78961652c4a06ba5.jpeg', '真巧 酱芯曲奇饼干 1000G独立散装早餐糕点夹心饼干零食500G可选', '已拼10万+件', '1390');
INSERT INTO `shoplist` VALUES ('3567341e2fff4c8794b7fe5c01915d54', 'http://t00img.yangkeduo.com/goods/images/2019-02-16/a3b3ffea253978daab0d7ce3b316b977.jpeg', '正品长虹7.5/8/10KG全自动洗衣机家用波轮热烘干大容量3KG带洗漂', '已拼3.3万件', '31800');
INSERT INTO `shoplist` VALUES ('38a7dad12bd946c1b4068770989c2227', 'http://t00img.yangkeduo.com/goods/images/2018-08-11/49047356a6859532c2d5d20a6db57b3a.jpeg', '2019新款早春宽松大码上衣服百搭长袖t恤女打底衫韩版春季女装', '已拼10万+件', '1990');
INSERT INTO `shoplist` VALUES ('3c0b5cbff76c4ff3bbda46a16b534483', 'http://t00img.yangkeduo.com/goods/images/2019-03-13/afbae1973d8de89ce9f21a75c88f77a3.jpeg', '【10-20双装】丝袜女春夏棉底防滑袜子女肉色黑色薄款短袜女', '已拼7.2万件', '972');
INSERT INTO `shoplist` VALUES ('46874d9f93594d05a18e8ceb5ea5dba5', 'http://t00img.yangkeduo.com/goods/images/2018-09-13/9ea863507dd1e024d53f56c5f38eb927.jpeg', '赠送汤勺漏勺鸳鸯锅家用火锅盆加厚电磁炉专用锅不锈钢汤火锅锅', '已拼6.8万件', '1090');
INSERT INTO `shoplist` VALUES ('47d241c7251f4867925c276960b5bb35', 'http://t00img.yangkeduo.com/goods/images/2018-10-29/59ac9dc8e6f210fa492d0f7341e9c2d3.jpeg', '北极绒【100%好羊毛被】纯羊毛被子单双人秋冬被芯保暖加厚冬被', '已拼10万+件', '5990');
INSERT INTO `shoplist` VALUES ('515636ac11c04de6b1a064cf79ed081a', 'http://t00img.yangkeduo.com/goods/images/2018-11-09/831b67d31e4b2a1772a2f116432a8787.jpeg', '艾贝熙纯棉春季女套装2019新款休闲运动套装女韩版宽松大码两件套', '已拼10万+件', '6990');
INSERT INTO `shoplist` VALUES ('54c62ffb1fca434cb84b1ce7c1719019', 'http://t00img.yangkeduo.com/goods/images/2019-03-13/ef0ce068a75254edde16b06a8dcb1f26.jpeg', '金东尼春季板鞋潮流男鞋休闲时尚韩版运动男2019鞋子男潮鞋皮鞋', '已拼10万+件', '3990');
INSERT INTO `shoplist` VALUES ('58b42ee33185497d9e325c58073f4b11', 'http://t00img.yangkeduo.com/goods/images/2019-02-14/81b1e9d412d0385b51b888c82d1558f1.jpeg', '童装春装男女童2019新款儿童外套中小童连帽夹克春款风衣宝宝上衣', '已拼9.8万件', '2690');
INSERT INTO `shoplist` VALUES ('823e772c94b14af6aa2ad8957c171eaf', 'http://t00img.yangkeduo.com/goods/images/2019-03-17/da5be673593a292d5823714684cd0828.jpeg', '【仟新】儿童运动鞋新款透气女童鞋男童鞋中大休闲鞋单鞋双网可选', '已拼10万+件', '2790');
INSERT INTO `shoplist` VALUES ('83b0f1fff0014288aaf34c0f1043b4a6', 'http://t00img.yangkeduo.com/goods/images/2019-03-19/c9bddbfddff29b9719836e0435ea6d08.jpeg', '【10-20双装】袜子女士防勾丝肉色包芯丝钢丝面膜袜子薄款短丝袜', '已拼6万件', '475');
INSERT INTO `shoplist` VALUES ('8feb0fcb7ebf4dce9037b7bd5127ab3d', 'http://t00img.yangkeduo.com/goods/images/2019-02-27/13df30d750e287ba6060af28b5902033.jpeg', '韩版双边床裙卡帝乐鳄鱼床罩单件席梦思保护罩不起球不缩水', '已拼4万件', '1500');
INSERT INTO `shoplist` VALUES ('9f912d34d9f64956a9e551d57127c739', 'http://omsproductionimg.yangkeduo.com/images/2018-05-14/0cf55a4fe638eafd39f9ba679ebd3411.jpeg', '加厚化妆品收纳盒大号折叠储物箱无纺布衣服整理箱儿童玩具收纳箱', '已拼1.9万件', '748');
INSERT INTO `shoplist` VALUES ('a14300841346428ba8a8ddcaa3b807da', 'http://t00img.yangkeduo.com/goods/images/2019-03-05/5824524066c4f07407588c2dcc72e3b8.jpeg', '2019春新款【花花公子贵宾】男女同款潮休闲运动鞋学生跑步鞋子', '已拼10万+件', '1990');
INSERT INTO `shoplist` VALUES ('a6738027724d449ebf36b2e721a28829', 'http://t00img.yangkeduo.com/goods/images/2019-01-24/fc14732728e6e5c74bb4adf04c3ff015.jpeg', '四川高山脐橙橙子眉山长虹脐橙3/5/8斤装单果(60-90mm)', '已拼10万+件', '1250');
INSERT INTO `shoplist` VALUES ('baca2800c8414f5d829c7699d351579a', 'http://t00img.yangkeduo.com/goods/images/2019-03-24/0142d4fc71763e4c833cf1aec1970257.jpeg', '工作服套装男工作裤汽修电焊工厂工地耐磨防烫纯棉迷彩劳保工作服', '已拼4480件', '2870');
INSERT INTO `shoplist` VALUES ('c2dec8dbd1d14330b5acc646dfc1c9de', 'http://t00img.yangkeduo.com/goods/images/2019-03-07/f1eae93c1572c46b45cf879ef0717862.jpeg', '【19年新货】涪陵榨菜去皮榨菜丝50包40包不辣鲜香嫩脆下饭菜批发', '已拼10万+件', '1450');
INSERT INTO `shoplist` VALUES ('ce50566817cc4a609fe126a0d6d9810f', 'http://t00img.yangkeduo.com/goods/images/2019-02-24/c8d9387325acfa4fd2fca488e7cb3e44.jpeg', '新款透气运动鞋女2019韩版百搭跑步鞋高跟鞋休闲鞋女时尚潮', '已拼10万+件', '2690');
INSERT INTO `shoplist` VALUES ('e8e25dc42dde4651b3dad0f46ae3f5b4', 'http://t00img.yangkeduo.com/goods/images/2019-03-19/5edc10f4a7ce8a81b57c29051a8c8e4f.jpeg', '四条装多款式青年男士内裤舒适透气四角裤大红纯色本命年', '已拼4313件', '841');
INSERT INTO `shoplist` VALUES ('e91fc97252f14047a1b56e708e7e3fa2', 'http://t00img.yangkeduo.com/goods/images/2019-01-18/cbfa5cd7da17bf1cf841283b8370d6fb.jpeg', '【2斤120颗】台湾口味花生牛轧糖休闲牛轧糖奶糖喜糖批发 2斤/5斤', '已拼10万+件', '630');
INSERT INTO `shoplist` VALUES ('fcfb6267a6c44f7998bc8d1d658c2613', 'http://t00img.yangkeduo.com/goods/images/2019-02-10/6204ce66559d1c885de8e601fc75a045.jpeg', '真皮绣花豆豆鞋女单鞋平底女鞋妈妈鞋一脚蹬懒人鞋牛筋软底孕妇鞋', '已拼4.6万件', '3960');
