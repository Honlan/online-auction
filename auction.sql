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

 Date: 08/29/2015 08:03:33 AM
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
  `highest` int(11) NOT NULL DEFAULT '0',
  `owner` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `deadline` varchar(255) NOT NULL,
  `donator` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `donatorDesc` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `item`
-- ----------------------------
BEGIN;
INSERT INTO `item` VALUES ('3', '/img/item/10.png', '/img/item/12.jpg,/img/item/13.jpg,/img/item/14.jpg', '三点式蓝牙音箱', 'donation', '0', '0', '', '0', '1450000000', '杭州凸凹工业设计有限公司', '聆听好的声音，属于每个人的权利。这款音箱是为数不多的将声学设计、产品设计、工艺制造完美结合的产品，其设计灵感来源于管道，希望通过这个管道重新连接心世界，体会分享的乐趣。浑然一体的V形造型，让机身更精致。上扬设计使发声单元位于音箱上侧，高中低音区分，高音朝上，有效递送高音，低音向下，底部的低音孔与桌面形成共振，强化低音的厚重感；声域通过V形设计以三点式的形式有效分配，声场更开阔，层次感和空间感更强。', '凸凹设计成立于2003年，是一家设计资源整合机构，致力于研究创新的下一代产品使用方式和深度挖掘设计的商业价值。'), ('4', '/img/item/20.jpg', '/img/item/22.jpg,/img/item/23.jpg,/img/item/24.jpg,/img/item/25.jpg', '小目护眼卫士', 'donation', '0', '0', '', '0', '1450000000', '上海威曼工业产品设计有限公司', '小目护眼卫士旨在打造一款迄今为止最安全智能的儿童视力保护产品。它具备距离感应检测、定时护眼提醒、云数据上传以及数据同步推送等多项核心功能，妈妈们可以实时微信远程了解宝宝的作息。对于儿童来说，小目是友好、温和的，它萌萌的卡通形象让平板电脑看起来更像一个更酷、更好玩的玩具。对于家长而言，小目能系统分析儿童用眼数据，成为家长的好帮手。小目的陪伴，让宝宝的阅读习惯更健康，妈妈们也更放心。', '作为一家专业的工业设计及咨询公司，威曼设计成立于2003年，致力于打造国际一流设计企业，为全球制造企业提供以品牌为核心的产品设计及相关设计服务。目前分别在上海和宁波设有两家分支机构。'), ('5', '/img/item/30.jpg', '/img/item/31.jpg,/img/item/32.jpg', '月熊保温杯', 'donation', '0', '0', '', '0', '1450000000', '多样屋', '针对活熊取胆的残忍现象，TAYOHYA（多样屋）与YANG DESIGN联合亚洲动物基金（AAF），一起加入到拯救月熊的行动中，推出Moonie月熊保温杯，呼吁各位爱心人士共同呵护Moonie熊。许给它们一个没有伤害充满爱的未来。该保温杯选用优良材质，硅胶内圈，安全健康。独特的内按盖设计使出水流畅，又不会四溅。杯体表面采用进口纹漆工艺，防滑实用，不沾指纹。并采用全球领先的抽真空技术，减少热传导，确保保温效果。', '多样屋以“The way to a better life”作为品牌理念，致力于成为全球最受欢迎的家居生活时尚品牌。成立16年来，它已遍布全中国200多个城市，拥有4000多家门店，已成为时尚家居的代名词。'), ('6', '/img/item/40.jpg', '/img/item/42.jpg', '驱动型领导力工作坊', 'ceo', '0', '0', '', '0', '1450000000', '薛一心', '这是一个三个小时的工作坊，由春晖博爱CEO薛一心领导，旨在帮助从高阶主管到大学生各阶段人士更有意义和热情地领导自己和他人。用深入浅出的个人例子和实操演练，带领学员们更深层地认识自己，从而成为更自信的领导。\r\n这个工作坊所及之处包括百事大中华区高阶销售和市场部主管、台湾百事领导层、台湾和上海的大专院校、BabyBjorn中国、微软中国、sHero国际女性论坛、和春晖博爱/半边天主管培训。\r\n让每天的生活、工作，和自己生命的意义发送结合。胜利地、开心地，发挥自己和周遭宇宙的潜力。从领导自己开始，再领导他人。它不是由地位而来，而是一种生活态度。\r\n', '春晖博爱CEO'), ('7', '/img/item/50.jpg', '', '《异域女郎》', 'children', '0', '0', '', '0', '1450000000', '武汉福利院儿童 婷婷', '', ''), ('8', '/img/item/60.jpg', '', '《春》', 'children', '0', '0', '', '0', '1450000000', '武汉福利院儿童 玲玲', '', ''), ('9', '/img/item/70.jpg', '', '《在希望的田野上》', 'children', '0', '0', '', '0', '1450000000', '石家庄福利院儿童 梅梅', '', ''), ('10', '/img/item/80.jpg', '', '《花卉》', 'children', '0', '0', '', '0', '1450000000', '武汉福利院儿童 婷婷', '', '');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `price`
-- ----------------------------
BEGIN;
INSERT INTO `price` VALUES ('3', '1', '一个测试拍卖品', '张宏伦', '13262669093', '上海交大', '程序员', '13', '1439552545'), ('4', '1', '一个测试拍卖品', '张宏伦', '13262669093', '上海交大', '程序员', '13', '1439553139'), ('5', '1', '一个测试拍卖品', '张宏伦', '13262669093', '上海交大', '程序员', '0', '1439553275'), ('6', '1', '一个测试拍卖品', '张宏伦', '13262669093', '上海交大', '程序员', '0', '1439553400'), ('7', '1', '一个测试拍卖品', '张宏伦呀', '13262669093', '上海交大', '程序员', '19000', '1439553451'), ('8', '1', '一个测试拍卖品', '张宏伦耶', '13262669093', '上海交大', '程序员', '12000', '1439553776'), ('9', '1', '一个测试拍卖品', '张宏伦', '13262669093', '上海交大', '程序员', '13000', '1439553853'), ('10', '1', '一个测试拍卖品', '乖比比', '13262669093', '上海交大', '程序员', '15000', '1439554306'), ('11', '2', '另一个测试', '乖比比', '13262669093', '上海交大', '程序员', '6000', '1439554371'), ('12', '2', '另一个测试', '我是谁', '13262669093', '上海交大', '程序员', '8000', '1439554856');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
