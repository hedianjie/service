/*
Navicat MySQL Data Transfer

Source Server         : api_project
Source Server Version : 80013
Source Host           : localhost:3306
Source Database       : api

Target Server Type    : MYSQL
Target Server Version : 80013
File Encoding         : 65001

Date: 2019-11-21 16:53:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `api`
-- ----------------------------
DROP TABLE IF EXISTS `api`;
CREATE TABLE `api` (
  `id` bigint(25) NOT NULL AUTO_INCREMENT,
  `api_url` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '鎺ュ彛鍦板潃',
  `api_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '接口描述',
  `api_methods` varchar(2) COLLATE utf8mb4_bin DEFAULT '' COMMENT '璇锋眰鏂瑰紡',
  `request` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `response` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `project_id` bigint(25) NOT NULL COMMENT '项目ID',
  `headers` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '请求头',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of api
-- ----------------------------
INSERT INTO `api` VALUES ('1', '/api/login', '这是一个登陆接口', '1', '{\"sample\":\"\",\"form_data_sample\":[],\"request_type\":\"2\",\"filed\":[]}', '{\"sample\":\"{}\",\"filed\":[]}', '6', '[]');
INSERT INTO `api` VALUES ('2', '/api/login', '这是一个登陆接口', '1', '{\"sample\":\"\",\"form_data_sample\":[],\"request_type\":\"2\",\"filed\":[]}', '{\"sample\":\"{}\",\"filed\":[]}', '6', '[]');
INSERT INTO `api` VALUES ('3', '/api/login', '这是一个登陆接口', '1', '{\"sample\":\"\",\"form_data_sample\":[],\"request_type\":\"2\",\"filed\":[]}', '{\"sample\":\"{}\",\"filed\":[]}', '6', '[]');
INSERT INTO `api` VALUES ('4', '/api/login', '这是一个登陆接口', '1', '{\"sample\":\"\",\"form_data_sample\":[],\"request_type\":\"2\",\"filed\":[]}', '{\"sample\":\"{}\",\"filed\":[]}', '6', '[]');
