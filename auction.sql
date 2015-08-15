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

 Date: 08/14/2015 17:29:08 PM
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
INSERT INTO `item` VALUES ('1', '/img/item/1.jpg', '/img/item/1.jpg,/img/item/2.jpg', '一个测试拍卖品', 'children', '10000', '0', '0', '1443542399', '伦大锤', '这是一个很屌炸天的拍卖品', '伦大锤是一个很腻害的人'), ('2', '/img/item/2.jpg', '/img/item/2.jpg', '另一个测试', 'children', '5000', '0', '0', '1443542399', '比比', '这是个好东西', '比比是个好人');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
