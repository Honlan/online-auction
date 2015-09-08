/*
 Navicat Premium Data Transfer

 Source Server         : myMac
 Source Server Type    : MySQL
 Source Server Version : 50538
 Source Host           : localhost
 Source Database       : auction

 Target Server Type    : MySQL
 Target Server Version : 50538
 File Encoding         : utf-8

 Date: 09/08/2015 08:38:30 AM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `item`
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thumbnail` varchar(255) NOT NULL,
  `imgs` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `start` int(11) NOT NULL,
  `step` int(11) NOT NULL,
  `highest` int(11) NOT NULL DEFAULT '0',
  `num` int(11) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `deadline` varchar(255) NOT NULL,
  `donator` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `donatorDesc` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `item`
-- ----------------------------
BEGIN;
INSERT INTO `item` VALUES ('3', '/img/item/20.jpg', '/img/item/22.jpg,/img/item/23.jpg,/img/item/24.jpg,/img/item/25.jpg', '三点式蓝牙音箱', 'donation', '0', '200', '0', '3', '', '0', '1441958400', '杭州凸凹工业设计有限公司', '聆听好的声音，属于每个人的权利。这款音箱是为数不多的将声学设计、产品设计、工艺制造完美结合的产品，其设计灵感来源于管道，希望通过这个管道重新连接心世界，体会分享的乐趣。浑然一体的V形造型，让机身更精致。上扬设计使发声单元位于音箱上侧，高中低音区分，高音朝上，有效递送高音，低音向下，底部的低音孔与桌面形成共振，强化低音的厚重感；声域通过V形设计以三点式的形式有效分配，声场更开阔，层次感和空间感更强。', '凸凹设计成立于2003年，是一家设计资源整合机构，致力于研究创新的下一代产品使用方式和深度挖掘设计的商业价值。'), ('4', '/img/item/10.png', '/img/item/12.jpg,/img/item/13.jpg,/img/item/14.jpg,/img/item/15.jpg', '小目智能护眼宝', 'donation', '0', '200', '0', '1', '', '0', '1441958400', '果联科技', '小目智能护眼宝是一款，在平板电脑使用过程中，全环境培养儿童用眼习惯的智能硬件产品。从时间、距离、使用环境，进行用眼习惯的科学引导，并通过云数据上传至微信服务号，联动平板端APP来实现移动管理自动化。让家长随时随地了解孩子的用眼习惯、视力状态，及时进行近视问题的干预。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 产品采用原创好玩的小目造型，符合儿童心理的温馨语音提醒，和精彩好玩的视力测试方式，让孩子从了解视力的危害到认真遵守使用平板的规则，真正从内心接受用眼习惯管理。让家长和孩子们在使用平板的问题上，变得简单亲切，和睦融洽。', '果联科技是属于TMT行业的高科技互联网公司，其相关业务涉及移动互联网、新媒体、O2O、原创独立IP形象、电子商务及社交网络领域。在信息化时代，孩子们每天要和各种各样的电子类产品（平板电脑、电脑、智能电视、手机）密切接触，看到孩子们获取知识的同时，也同样对孩子的视力健康与心理健康感到非常担忧。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;平板时代，与其不断躲避，不如正确面对，正确引导孩子们使用电子产品，不但可以有效控制近视问题的发生，还可以建立和培养孩子们自我管理的能力。于是7个奶爸和1妈妈决定为孩子们做一件事情，创立果联科技，共同研发智能硬件产品来帮助家长与孩子一起培养健康的电子产品使用习惯，保护孩子的身心健康。'), ('5', '/img/item/30.jpg', '/img/item/31.jpg,/img/item/32.jpg', '月熊保温杯', 'donation', '0', '200', '0', '50', '', '0', '1441958400', '多样屋', '针对活熊取胆的残忍现象，TAYOHYA（多样屋）与YANG DESIGN联合亚洲动物基金（AAF），一起加入到拯救月熊的行动中，推出Moonie月熊保温杯，呼吁各位爱心人士共同呵护Moonie熊。许给它们一个没有伤害充满爱的未来。该保温杯选用优良材质，硅胶内圈，安全健康。独特的内按盖设计使出水流畅，又不会四溅。杯体表面采用进口纹漆工艺，防滑实用，不沾指纹。并采用全球领先的抽真空技术，减少热传导，确保保温效果。', '多样屋以“The way to a better life”作为品牌理念，致力于成为全球最受欢迎的家居生活时尚品牌。成立16年来，它已遍布全中国200多个城市，拥有4000多家门店，已成为时尚家居的代名词。'), ('6', '/img/item/40.jpg', '/img/item/42.jpg', '驱动型领导力工作坊', 'ceo', '10000', '500', '0', '1', '', '0', '1441958400', '薛一心女士', '这是一个三个小时的工作坊，由春晖博爱CEO薛一心领导，旨在帮助从高阶主管到大学生各阶段人士更有意义和热情地领导自己和他人。用深入浅出的个人例子和实操演练，带领学员们更深层地认识自己，从而成为更自信的领导。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;这个工作坊所及之处包括百事大中华区高阶销售和市场部主管、台湾百事领导层、台湾和上海的大专院校、BabyBjorn中国、微软中国、sHero国际女性论坛、和春晖博爱/半边天主管培训。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;让每天的生活、工作，和自己生命的意义发送结合。胜利地、开心地，发挥自己和周遭宇宙的潜力。从领导自己开始，再领导他人。它不是由地位而来，而是一种生活态度。', '她是春晖博爱儿童救助公益基金会首席执行官。她曾是百事公司的台湾总经理，大中国区饮料事业负责人。2011年被“全球女性论坛”评为全球十七位“冉冉新星”之一。她倡导并实践“目的驱动型领导力”。2014年她毅然离开从事了20年的企业界，投身非营利事业领域，担任春晖博爱儿童救助公益基金会首席执行官。她相信这是她对于“目的驱动型领导力”最好的实践，能有机会影响中国下一代成长，帮助社会培养爱和建立信任感。'), ('7', '/img/item/50.jpg', '', '《异域女郎》', 'children', '0', '200', '0', '1', '', '0', '1441958400', '武汉福利院儿童 婷婷', '', ''), ('8', '/img/item/60.jpg', '', '《春》', 'children', '0', '200', '0', '1', '', '0', '1441958400', '武汉福利院儿童 玲玲', '', ''), ('9', '/img/item/70.jpg', '', '《在希望的田野上》', 'children', '0', '200', '0', '1', '', '0', '1441958400', '石家庄福利院儿童 梅梅', '', ''), ('10', '/img/item/80.jpg', '', '《花卉》', 'children', '0', '200', '0', '1', '', '0', '1441958400', '武汉福利院儿童 婷婷', '', ''), ('11', '/img/item/90.jpg', '/img/item/91.jpg,/img/item/92.jpg,/img/item/93.jpg', '漆如意', 'donation', '18888', '500', '0', '1', '', '0', '1441958400', '观古楼', '这是中国青年漆艺艺术家，观古楼首席漆艺家王伯杨先生的亲手之作。规格：16厘米*3厘米。王伯杨作品崇尚自然，并在自然主义和复古主义之的道路上寻找二者交点。其作品古意盎然而不流于秾丽，自然纯朴而不流于呆板，表现出清朗疏简，磊落不羁的文人情怀。近年来其作品广受国内外收藏界好评，被一些高端藏家争相收藏。', '观古楼是近年来国内异军突起的一个以岭南古代文物为主题的专项收藏文化和实用型艺术漆器品牌，也是国内让艺术品以实用形式进入家庭收藏的先行者。公司致力于以一种全新的美学观念诠释当代中国文人的生活方式。近年来积极促进了中国文化市场的发展，形成了“观古照今，古为今用”的独特的艺术产业市场。'), ('12', '/img/item/100.jpg', '/img/item/101.jpg,/img/item/102.jpg', '犀皮纹漆杯', 'donation', '18888', '500', '0', '1', '', '0', '1441958400', '观古楼', '这是中国青年漆艺艺术家，观古楼首席漆艺家王伯杨先生的亲手之作。王伯杨作品崇尚自然，并在自然主义和复古主义之的道路上寻找二者交点。其作品古意盎然而不流于秾丽，自然纯朴而不流于呆板，表现出清朗疏简，磊落不羁的文人情怀。近年来其作品广受国内外收藏界好评，被一些高端藏家争相收藏。', '观古楼是近年来国内异军突起的一个以岭南古代文物为主题的专项收藏文化和实用型艺术漆器品牌，也是国内让艺术品以实用形式进入家庭收藏的先行者。公司致力于以一种全新的美学观念诠释当代中国文人的生活方式。近年来积极促进了中国文化市场的发展，形成了“观古照今，古为今用”的独特的艺术产业市场。'), ('13', '/img/item/110.jpg', '/img/item/111.jpg', '唐卡', 'donation', '16666', '500', '0', '1', '', '0', '1441958400', '郝文鑫', '本幅唐卡是噶玛噶举派持有绿宝冠之位，住锡昌都卓智寺的吉仲仁波切赠送给亲近弟子的礼物。唐卡用彩色织锦制成，下部和背后有寺院大堪布用藏文亲笔写成的祈福和开光文字，并由吉仲仁波切加盖卓智寺正式的公章，由寺院全体僧众集体开光加持，来源清净如法，具有殊胜的加持力。每幅唐卡都有寺院堪布亲自书写的开光和祈福文字，加盖寺院的公章，这些绝非一次性印刷而成。愿三界众生同沾法喜，因果各安，阿弥陀佛。', '四川胜界洲文化发展有限公司董事长，云南大学文物与博物馆学研究中心客座教授，资深喜马拉雅艺术收藏家，吉仲仁波切的弟子和亲密朋友。'), ('14', '/img/item/120.jpg', '/img/item/121.jpg', '漆画《送水者》', 'donation', '2500', '500', '0', '1', '', '0', '1441958400', '上海梵诚漆器创意设计有限公司', '漆画之美，美在天然大漆与匠师情感之手的完美融合。《送水者》，以蕴含着“力量”“生命”意义的非洲题材为创作背景，以天然漆树汁液“大漆”为创作原料，经木胎打磨、裱布、上灰、几十遍刷漆后由画师掺入水仙花种子，珍珠母粉调色彩绘，贝壳镶嵌，再经罩漆，最后由匠人赤手数十遍推光打磨，其中非洲女性人物的项链以及手链的画面呈现效果是以贝壳镶嵌完成。整幅漆画创作制作历时三个多月，每一遍上漆后需要自然荫干两至三天再进行下一次刷漆，最终呈现出这幅精美之作。送水者，梵谷借此寓意，以我们诚挚的珍爱之心，向生命致敬，无论身在何处，生命就是力量，生命就是希望。', '这是目前全球唯一一家创意漆器艺术产品的制造商，也是一家以发扬中华漆器文化为使命的集制造、销售和服务一体化公司。其拥有来自法国巴黎的VONGU设计中心的专业设计团队。设计风格兼具中式含蓄古朴与西式的简约潮流，时尚、感性、超然、奢华。');
COMMIT;

-- ----------------------------
--  Table structure for `price`
-- ----------------------------
DROP TABLE IF EXISTS `price`;
CREATE TABLE `price` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemId` int(11) NOT NULL,
  `itemTitle` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(16) NOT NULL,
  `company` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `price` int(11) NOT NULL DEFAULT '0',
  `timestamp` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
