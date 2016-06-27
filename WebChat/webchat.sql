/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : webchat

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2016-06-27 20:20:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `privaterecord`
-- ----------------------------
DROP TABLE IF EXISTS `privaterecord`;
CREATE TABLE `privaterecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fromid` varchar(20) NOT NULL,
  `fromname` varchar(20) NOT NULL,
  `content` text,
  `time` varchar(20) NOT NULL,
  `toid` varchar(20) NOT NULL,
  `toname` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of privaterecord
-- ----------------------------

-- ----------------------------
-- Table structure for `publicrecord`
-- ----------------------------
DROP TABLE IF EXISTS `publicrecord`;
CREATE TABLE `publicrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `content` text,
  `time` varchar(50) NOT NULL,
  `code` varchar(2) NOT NULL DEFAULT '5',
  PRIMARY KEY (`id`,`u_id`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of publicrecord
-- ----------------------------

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `code` varchar(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
