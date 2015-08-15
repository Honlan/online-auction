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

 Date: 08/15/2015 16:15:42 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `item`
-- ----------------------------
BEGIN;
INSERT INTO `item` VALUES ('1', '/img/item/1.jpg', '/img/item/1.jpg,/img/item/2.jpg', '一个测试拍卖品', 'children', '10000', '15000', '乖比比', '0', '1443542399', '伦大锤', '这是一个很屌炸天的拍卖品', '伦大锤是一个很腻害的人'), ('2', '/img/item/2.jpg', '/img/item/2.jpg', '另一个测试', 'children', '5000', '8000', '我是谁', '0', '1443542399', '比比', '这是个好东西', '比比是个好人');
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
