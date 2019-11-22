/*
Navicat MySQL Data Transfer

Source Server         : api_project
Source Server Version : 80013
Source Host           : localhost:3306
Source Database       : api

Target Server Type    : MYSQL
Target Server Version : 80013
File Encoding         : 65001

Date: 2019-11-22 16:58:17
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
  `request` varchar(10000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `response` varchar(10000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `project_id` bigint(25) NOT NULL COMMENT '项目ID',
  `headers` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '请求头',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of api
-- ----------------------------
INSERT INTO `api` VALUES ('1', '/api/login', '这是一个登陆接口', '1', '{\"sample\":\"{\\n                        title: \'parent 1\',\\n                        expand: true,\\n                        children: [\\n                            {\\n                                title: \'parent 1-1\',\\n                                expand: true,\\n                                children: [\\n                                    {\\n                                        title: \'leaf 1-1-1\'\\n                                    },\\n                                    {\\n                                        title: \'leaf 1-1-2\'\\n                                    }\\n                                ]\\n                            },\\n                            {\\n                                title: \'parent 1-2\',\\n                                expand: true,\\n                                children: [\\n                                    {\\n                                        title: \'leaf 1-2-1\'\\n                                    },\\n                                    {\\n                                        title: \'leaf 1-2-1\'\\n                                    }\\n                                ]\\n                            }\\n                        ]\\n                    }\",\"form_data_sample\":[],\"request_type\":\"2\",\"filed\":[{\"name\":\"title\",\"type_name\":\"String\",\"type\":\"1\",\"is_required\":\"0\",\"def\":\"\\\"\\\"\",\"desc\":\"\"},{\"name\":\"expand\",\"type_name\":\"Boolean\",\"type\":\"2\",\"is_required\":\"0\",\"def\":\"false\",\"desc\":\"\"},{\"name\":\"children[0].title\",\"type_name\":\"String\",\"type\":\"1\",\"is_required\":\"0\",\"def\":\"\\\"\\\"\",\"desc\":\"\"},{\"name\":\"children[0].expand\",\"type_name\":\"Boolean\",\"type\":\"2\",\"is_required\":\"0\",\"def\":\"false\",\"desc\":\"\"},{\"name\":\"children[0].children[0].title\",\"type_name\":\"String\",\"type\":\"1\",\"is_required\":\"0\",\"def\":\"\\\"\\\"\",\"desc\":\"\"},{\"name\":\"children[0].children[1].title\",\"type_name\":\"String\",\"type\":\"1\",\"is_required\":\"0\",\"def\":\"\\\"\\\"\",\"desc\":\"\"},{\"name\":\"children[1].title\",\"type_name\":\"String\",\"type\":\"1\",\"is_required\":\"0\",\"def\":\"\\\"\\\"\",\"desc\":\"\"},{\"name\":\"children[1].expand\",\"type_name\":\"Boolean\",\"type\":\"2\",\"is_required\":\"0\",\"def\":\"false\",\"desc\":\"\"},{\"name\":\"children[1].children[0].title\",\"type_name\":\"String\",\"type\":\"1\",\"is_required\":\"0\",\"def\":\"\\\"\\\"\",\"desc\":\"\"},{\"name\":\"children[1].children[1].title\",\"type_name\":\"String\",\"type\":\"1\",\"is_required\":\"0\",\"def\":\"\\\"\\\"\",\"desc\":\"\"}]}', '{\"sample\":\"{\\n                        title: \'parent 1\',\\n                        expand: true,\\n                        children: [\\n                            {\\n                                title: \'parent 1-1\',\\n                                expand: true,\\n                                children: [\\n                                    {\\n                                        title: \'leaf 1-1-1\'\\n                                    },\\n                                    {\\n                                        title: \'leaf 1-1-2\'\\n                                    }\\n                                ]\\n                            },\\n                            {\\n                                title: \'parent 1-2\',\\n                                expand: true,\\n                                children: [\\n                                    {\\n                                        title: \'leaf 1-2-1\'\\n                                    },\\n                                    {\\n                                        title: \'leaf 1-2-1\'\\n                                    }\\n                                ]\\n                            }\\n                        ]\\n                    }\",\"filed\":[{\"name\":\"title\",\"type_name\":\"String\",\"type\":\"1\",\"is_required\":\"0\",\"def\":\"\\\"\\\"\",\"desc\":\"\"},{\"name\":\"expand\",\"type_name\":\"Boolean\",\"type\":\"2\",\"is_required\":\"0\",\"def\":\"false\",\"desc\":\"\"},{\"name\":\"children[0].title\",\"type_name\":\"String\",\"type\":\"1\",\"is_required\":\"0\",\"def\":\"\\\"\\\"\",\"desc\":\"\"},{\"name\":\"children[0].expand\",\"type_name\":\"Boolean\",\"type\":\"2\",\"is_required\":\"0\",\"def\":\"false\",\"desc\":\"\"},{\"name\":\"children[0].children[0].title\",\"type_name\":\"String\",\"type\":\"1\",\"is_required\":\"0\",\"def\":\"\\\"\\\"\",\"desc\":\"\"},{\"name\":\"children[0].children[1].title\",\"type_name\":\"String\",\"type\":\"1\",\"is_required\":\"0\",\"def\":\"\\\"\\\"\",\"desc\":\"\"},{\"name\":\"children[1].title\",\"type_name\":\"String\",\"type\":\"1\",\"is_required\":\"0\",\"def\":\"\\\"\\\"\",\"desc\":\"\"},{\"name\":\"children[1].expand\",\"type_name\":\"Boolean\",\"type\":\"2\",\"is_required\":\"0\",\"def\":\"false\",\"desc\":\"\"},{\"name\":\"children[1].children[0].title\",\"type_name\":\"String\",\"type\":\"1\",\"is_required\":\"0\",\"def\":\"\\\"\\\"\",\"desc\":\"\"},{\"name\":\"children[1].children[1].title\",\"type_name\":\"String\",\"type\":\"1\",\"is_required\":\"0\",\"def\":\"\\\"\\\"\",\"desc\":\"\"}]}', '6', '[]');
INSERT INTO `api` VALUES ('2', '/api/login', '这是一个登陆接口', '1', '{\"sample\":\"\",\"form_data_sample\":[],\"request_type\":\"2\",\"filed\":[]}', '{\"sample\":\"{}\",\"filed\":[]}', '6', '[]');
INSERT INTO `api` VALUES ('3', '/api/login', '这是一个登陆接口', '1', '{\"sample\":\"\",\"form_data_sample\":[],\"request_type\":\"2\",\"filed\":[]}', '{\"sample\":\"{}\",\"filed\":[]}', '6', '[]');
