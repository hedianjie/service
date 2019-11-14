/*
Navicat MySQL Data Transfer

Source Server         : api_project
Source Server Version : 80013
Source Host           : localhost:3306
Source Database       : api

Target Server Type    : MYSQL
Target Server Version : 80013
File Encoding         : 65001

Date: 2019-11-14 16:53:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `project`
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project` (
  `id` bigint(255) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `project_name` char(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '项目名称',
  `project_port` int(5) DEFAULT '80' COMMENT '缂佹棏鍨拌ぐ娑㈠矗?',
  `project_url` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '1270.0.01' COMMENT '閸︽澘娼?',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of project
-- ----------------------------
INSERT INTO `project` VALUES ('3', 'API接口管理系统', '7455', 'http://127.0.0.1');
INSERT INTO `project` VALUES ('6', 'API2接口文档', '7453', 'http://127.1.1.1');
