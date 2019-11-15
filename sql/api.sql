/*
Navicat MySQL Data Transfer

Source Server         : api_project
Source Server Version : 80013
Source Host           : localhost:3306
Source Database       : api

Target Server Type    : MYSQL
Target Server Version : 80013
File Encoding         : 65001

Date: 2019-11-15 16:51:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `api`
-- ----------------------------
DROP TABLE IF EXISTS `api`;
CREATE TABLE `api` (
  `id` bigint(25) NOT NULL AUTO_INCREMENT,
  `api` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '接口地址',
  `api_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '接口描述',
  `method` int(2) DEFAULT NULL COMMENT '请求方式',
  `request` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `response` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of api
-- ----------------------------
