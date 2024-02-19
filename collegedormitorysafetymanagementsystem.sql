/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : collegedormitorysafetymanagementsystem

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 30/03/2022 11:58:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for access_record
-- ----------------------------
DROP TABLE IF EXISTS `access_record`;
CREATE TABLE `access_record`  (
  `ar_user_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `in_record` tinyint NULL DEFAULT NULL,
  `out_record` tinyint NULL DEFAULT NULL,
  `in_time` datetime NULL DEFAULT NULL,
  `out_time` datetime NULL DEFAULT NULL,
  `ar_quipment_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `in_photo_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `out_photo_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` int NULL DEFAULT NULL,
  `ar_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`ar_id`) USING BTREE,
  INDEX `ar_user_id`(`ar_user_id`) USING BTREE,
  INDEX `ar_quipment_id`(`ar_quipment_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of access_record
-- ----------------------------
INSERT INTO `access_record` VALUES ('8002118045', 1, NULL, '2022-03-22 23:01:37', NULL, '17df21bc08f8049e227a240e8034c5b0', 'F:\\myImage\\9d4f41b77ebb4991b934eb4dda992dcf.jpg', NULL, 0, '1f2c251a349229caac96a9763b15dfcc');
INSERT INTO `access_record` VALUES ('8002118045', 1, NULL, '2022-03-20 20:51:41', NULL, '7cb0fcbc982736f8009463a4193cb81e', 'F:\\myVideo\\90e6ecd08554446aa2954d743d1c10b5.jpg', NULL, 3, '6155bd0bef147dd9bf764cf71ed82223');
INSERT INTO `access_record` VALUES ('8002118047', 1, NULL, '2022-02-18 23:01:13', NULL, '17df21bc08f8049e227a240e8034c5b0', 'F:\\myImage\\913d21d9249144c29e871c5b3f51c848.jpg', NULL, 0, '76870a9a4acde75abb03ca2c6e6ac654');
INSERT INTO `access_record` VALUES ('8002118045', 1, NULL, '2022-03-21 23:28:02', NULL, '7cb0fcbc982736f8009463a4193cb81e', 'F:\\myVideo\\2aad539a056945449b0711a8930c1dcd.jpg', NULL, 3, '9d83a7dab5fbab5df55f8464374acfb7');
INSERT INTO `access_record` VALUES ('8002118046', 1, NULL, '2022-03-21 23:00:34', NULL, '17df21bc08f8049e227a240e8034c5b0', 'F:\\myImage\\a5fe86533c0948e0ac4aa64f5bc6c712.jpg', NULL, 0, 'a2653dbdaa9c7bd618480b649e93f927');
INSERT INTO `access_record` VALUES ('-1', 1, NULL, '2022-03-20 20:42:07', NULL, '7cb0fcbc982736f8009463a4193cb81e', 'F:\\myVideo\\c616e0a34d89448790838da764f477e7.jpg', NULL, -1, 'a7ae553d1dc18e316babbb255191e6a3');
INSERT INTO `access_record` VALUES ('-1', 1, NULL, '2022-03-20 20:51:22', NULL, '7cb0fcbc982736f8009463a4193cb81e', 'F:\\myVideo\\3ecdf3a09c0e49f5aca19e8214e38416.jpg', NULL, -1, 'ab268c3f1ecc4f0b37e4fdb7473393d4');
INSERT INTO `access_record` VALUES ('8002118045', 1, NULL, '2022-03-20 20:48:58', NULL, '7cb0fcbc982736f8009463a4193cb81e', 'F:\\myVideo\\47e836a94751410c812cbf7b233b6236.jpg', NULL, 3, 'acc0b0e51aa95e28e9eb81335c31fae9');
INSERT INTO `access_record` VALUES ('-1', 1, NULL, '2022-03-20 20:49:22', NULL, '7cb0fcbc982736f8009463a4193cb81e', 'F:\\myVideo\\7290e35cb2574b9ba7abeba1e47d2fc2.jpg', NULL, -1, 'c5f36eb15ed73b7b7b4394404d5fed28');

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class`  (
  `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `college_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '班级' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES ('1', '软件工程1802班', '1');
INSERT INTO `class` VALUES ('10', '软件工程1901班', '1');
INSERT INTO `class` VALUES ('11', '软件工程1902班', '1');
INSERT INTO `class` VALUES ('12', '机械与自动化工程1801', '2');
INSERT INTO `class` VALUES ('13', '机械与自动化工程1802', '2');
INSERT INTO `class` VALUES ('14', '机械工程1801班', '2');
INSERT INTO `class` VALUES ('15', '机械工程1802班', '2');
INSERT INTO `class` VALUES ('2', '软件工程1803班', '1');
INSERT INTO `class` VALUES ('3', '软件工程1804班', '1');
INSERT INTO `class` VALUES ('4', '软件工程1801班', '1');
INSERT INTO `class` VALUES ('5', '软件工程1805班', '1');
INSERT INTO `class` VALUES ('6', '信息安全1801班', '1');
INSERT INTO `class` VALUES ('7', '信息安全1802班', '1');
INSERT INTO `class` VALUES ('8', '信息安全1901班', '1');
INSERT INTO `class` VALUES ('9', '信息安全1902班', '1');

-- ----------------------------
-- Table structure for college
-- ----------------------------
DROP TABLE IF EXISTS `college`;
CREATE TABLE `college`  (
  `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '学院' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of college
-- ----------------------------
INSERT INTO `college` VALUES ('1', '软件学院');
INSERT INTO `college` VALUES ('2', '机械学院');

-- ----------------------------
-- Table structure for equipment
-- ----------------------------
DROP TABLE IF EXISTS `equipment`;
CREATE TABLE `equipment`  (
  `equipment_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '设备id',
  `equipment_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '设备安装位置',
  `equipment_ip` varchar(21) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '设备IP',
  `equipment_software_version` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '设备软件版本',
  `equipment_status` int NOT NULL COMMENT '设备在线状态',
  PRIMARY KEY (`equipment_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of equipment
-- ----------------------------
INSERT INTO `equipment` VALUES ('1', '9001栋', '111.111.111.111', '1.1.1', 1);
INSERT INTO `equipment` VALUES ('10', '7002栋', '111.112.111.114', '1.1.1', 1);
INSERT INTO `equipment` VALUES ('11', '7002栋', '111.112.111.113', '1.1.1', 1);
INSERT INTO `equipment` VALUES ('12', '7002栋', '111.112.111.112', '1.1.1', 1);
INSERT INTO `equipment` VALUES ('2', '1005栋', '222.222.222.221', '1.1.1', 1);
INSERT INTO `equipment` VALUES ('3', '8002栋', '111.112.111.111', '1.1.1', 1);
INSERT INTO `equipment` VALUES ('4', '6002栋', '111.112.111.120', '1.1.1', 1);
INSERT INTO `equipment` VALUES ('5', '5002栋', '111.112.111.119', '1.1.1', 1);
INSERT INTO `equipment` VALUES ('6', '6003栋', '111.112.111.118', '1.1.1', 1);
INSERT INTO `equipment` VALUES ('7', '5002栋', '111.112.111.117', '1.1.1', 0);
INSERT INTO `equipment` VALUES ('7cb0fcbc982736f8009463a4193cb81e', '9001æ ', '192.168.217.178', '1.1.1', 0);
INSERT INTO `equipment` VALUES ('8', '7010栋', '111.112.111.116', '1.1.1', 0);
INSERT INTO `equipment` VALUES ('9', '7002栋', '111.112.111.115', '1.1.1', 1);
INSERT INTO `equipment` VALUES ('a1c3a289623984d6c0cca127f0e84e80', '9001æ ', '192.168.217.178', '1.1.1', 0);

-- ----------------------------
-- Table structure for equipment_user_info
-- ----------------------------
DROP TABLE IF EXISTS `equipment_user_info`;
CREATE TABLE `equipment_user_info`  (
  `equipment_user_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `equipment_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` varchar(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`equipment_user_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `equipment_id`(`equipment_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of equipment_user_info
-- ----------------------------
INSERT INTO `equipment_user_info` VALUES ('54d282b499cd25ebcf3532290ae587c8', '12', '8002118045');
INSERT INTO `equipment_user_info` VALUES ('a15c8dedef7ac55e7a4d2b7bfd8e84b6', '11', '8002118045');

-- ----------------------------
-- Table structure for path_permission
-- ----------------------------
DROP TABLE IF EXISTS `path_permission`;
CREATE TABLE `path_permission`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `permission_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` datetime NULL DEFAULT NULL,
  `update_date` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of path_permission
-- ----------------------------
INSERT INTO `path_permission` VALUES ('1', '21', '/cs/equipment/update', '设备更新', '2022-03-30 10:10:40', '2022-03-30 10:10:42');
INSERT INTO `path_permission` VALUES ('10', '18', '/cs/access/selectRecord', NULL, NULL, NULL);
INSERT INTO `path_permission` VALUES ('11', '18', '/cs/access/selectAccessAfter11', NULL, NULL, NULL);
INSERT INTO `path_permission` VALUES ('12', '18', '/cs/access/selectNoAccess', NULL, NULL, NULL);
INSERT INTO `path_permission` VALUES ('13', '5', '/admin/role/getRole', NULL, NULL, NULL);
INSERT INTO `path_permission` VALUES ('14', '5', '/admin/role/getAllRole', NULL, NULL, NULL);
INSERT INTO `path_permission` VALUES ('15', '3', '/admin/role/save', NULL, NULL, NULL);
INSERT INTO `path_permission` VALUES ('16', '6', '/admin/role/delete/**', NULL, NULL, NULL);
INSERT INTO `path_permission` VALUES ('17', '11', '/admin/user/save', NULL, NULL, NULL);
INSERT INTO `path_permission` VALUES ('18', '4', '/admin/user/delete', NULL, NULL, NULL);
INSERT INTO `path_permission` VALUES ('19', '10', '/admin/user/getUserTarget', NULL, NULL, NULL);
INSERT INTO `path_permission` VALUES ('2', '23', '/cs/equipment/delete/**', NULL, NULL, NULL);
INSERT INTO `path_permission` VALUES ('20', '10', '/admin/user/getUserById', NULL, NULL, NULL);
INSERT INTO `path_permission` VALUES ('21', '11', '/admin/user/save1', NULL, NULL, NULL);
INSERT INTO `path_permission` VALUES ('3', '15', '/cs/equipment/deleteUser', NULL, NULL, NULL);
INSERT INTO `path_permission` VALUES ('4', '15', '/cs/equipment/insertUser', NULL, NULL, NULL);
INSERT INTO `path_permission` VALUES ('5', '27', '/cs/equipment/selectUser/**', NULL, NULL, NULL);
INSERT INTO `path_permission` VALUES ('6', NULL, '/cs/faceRecognition/register/**', NULL, NULL, NULL);
INSERT INTO `path_permission` VALUES ('7', NULL, '/cs/faceRecognition/delete/**', NULL, NULL, NULL);
INSERT INTO `path_permission` VALUES ('8', '2', '/admin/permission/doAssign', NULL, NULL, NULL);
INSERT INTO `path_permission` VALUES ('9', '5', '/admin/permission/toAssign/**', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission`  (
  `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '编号',
  `pid` varchar(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '所属上级',
  `permission_value` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '权限值',
  `create_date` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `modified_date` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '名字',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `type` int NULL DEFAULT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_pid`(`pid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '权限' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('1', '0', 'role_management', '2022-03-28 15:43:17', '2022-03-28 15:43:19', '角色管理', 'Sys/Role', 1, 'el-icon-setting');
INSERT INTO `permission` VALUES ('10', '8', 'sys:user:view', '2022-03-28 16:15:14', '2022-03-28 16:15:17', '查找用户', NULL, 2, 'el-icon-service');
INSERT INTO `permission` VALUES ('11', '8', 'sys:user:edit', '2022-03-28 16:15:20', '2022-03-28 16:15:22', '修改用户', NULL, 2, 'el-icon-service');
INSERT INTO `permission` VALUES ('12', '8', 'sys:user:delete', '2022-03-28 16:15:24', '2022-03-28 16:15:25', '删除用户', NULL, 2, 'el-icon-service');
INSERT INTO `permission` VALUES ('13', '0', 'equipment_management', '2022-03-28 16:15:27', '2022-03-28 16:16:29', '设备管理', 'Sys/Equipment', 1, 'el-icon-setting');
INSERT INTO `permission` VALUES ('15', '13', 'sys:equipmentUser:add', '2022-03-28 16:15:30', '2022-03-28 16:16:28', '分配用户', NULL, 2, 'el-icon-service');
INSERT INTO `permission` VALUES ('17', '0', 'data_management', '2022-03-28 16:15:33', '2022-03-28 16:16:26', '数据管理', 'Sys/Record', 1, 'el-icon-service');
INSERT INTO `permission` VALUES ('18', '17', 'sys:record:view', '2022-03-28 16:15:35', '2022-03-28 16:16:25', '查看数据', NULL, 2, 'el-icon-service');
INSERT INTO `permission` VALUES ('2', '1', 'sys:permission:edit', '2022-03-28 16:15:37', '2022-03-28 16:16:23', '修改权限', '', 2, 'el-icon-service');
INSERT INTO `permission` VALUES ('20', '0', 'person_management', '2022-03-28 16:15:39', '2022-03-28 16:16:21', '个人中心', 'Sys/Person', 1, 'el-icon-service');
INSERT INTO `permission` VALUES ('21', '13', 'sys:equipment:edit', '2022-03-28 16:15:41', '2022-03-28 16:16:20', '修改设备', NULL, 2, 'el-icon-service');
INSERT INTO `permission` VALUES ('22', '13', 'sys:equipment:add', '2022-03-28 16:15:44', '2022-03-28 16:16:18', '添加设备', NULL, 2, 'el-icon-service');
INSERT INTO `permission` VALUES ('23', '13', 'sys:equipment:view', '2022-03-28 16:15:48', '2022-03-28 16:16:16', '查看设备', NULL, 2, 'el-icon-service');
INSERT INTO `permission` VALUES ('24', '17', 'sys:data:headmaster', '2022-03-28 16:33:17', '2022-03-28 16:33:19', '数据权限-班主任', NULL, 2, 'el-icon-service');
INSERT INTO `permission` VALUES ('25', '17', 'sys:data:dean', '2022-03-28 16:33:52', '2022-03-28 16:33:54', '数据权限-院长', NULL, 2, 'el-icon-service');
INSERT INTO `permission` VALUES ('26', '17', 'sys:data:admin', '2022-03-28 16:33:56', '2022-03-28 16:33:58', '数据权限-管理员', NULL, 2, 'el-icon-service');
INSERT INTO `permission` VALUES ('27', '13', 'sys:equipment:delete', '2022-03-30 10:37:49', '2022-03-30 10:37:51', '删除设备', NULL, 2, 'el-icon-service');
INSERT INTO `permission` VALUES ('3', '1', 'sys:role:add', '2022-03-28 16:15:50', '2022-03-28 16:16:15', '添加角色', NULL, 2, 'el-icon-service');
INSERT INTO `permission` VALUES ('4', '1', 'sys:role:view', '2022-03-28 16:15:52', '2022-03-28 16:16:10', '查找角色', NULL, 2, 'el-icon-service');
INSERT INTO `permission` VALUES ('5', '1', 'sys:role:edit', '2022-03-28 16:15:55', '2022-03-28 16:16:08', '修改角色', NULL, 2, 'el-icon-service');
INSERT INTO `permission` VALUES ('6', '1', 'sys:role:delete', '2022-03-28 16:15:57', '2022-03-28 16:16:06', '删除角色', NULL, 2, 'el-icon-service');
INSERT INTO `permission` VALUES ('8', '0', 'user_management', '2022-03-28 16:15:59', '2022-03-28 16:16:04', '用户管理', 'Sys/User', 1, 'el-icon-service');
INSERT INTO `permission` VALUES ('9', '8', 'sys:user:add', '2022-03-28 16:16:01', '2022-03-28 16:16:03', '添加用户', NULL, 2, 'el-icon-service');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '角色id',
  `role_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '角色名称',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `modified_date` datetime NOT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'admin', '2022-03-28 16:03:02', '2022-03-28 16:03:04', '管理员权限');
INSERT INTO `role` VALUES ('81febe9b93faa3cdca1e25cc173e4e62', 'dataManagement', '2022-03-28 08:20:50', '2022-03-28 08:20:50', '数据管理所有权限');

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission`  (
  `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `role_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `permission_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `modified_date` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_role_id`(`role_id`) USING BTREE,
  INDEX `idx_permission_id`(`permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色权限' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES ('1', '1', '27', '2022-03-28 16:03:45', '2022-03-28 16:03:47');
INSERT INTO `role_permission` VALUES ('10', '1', '11', '2022-03-28 16:06:04', '2022-03-28 16:06:06');
INSERT INTO `role_permission` VALUES ('11', '1', '12', '2022-03-28 16:06:11', '2022-03-28 16:06:14');
INSERT INTO `role_permission` VALUES ('12', '1', '13', '2022-03-28 16:06:19', '2022-03-28 16:06:22');
INSERT INTO `role_permission` VALUES ('13', '1', '15', '2022-03-28 16:06:33', '2022-03-28 16:06:36');
INSERT INTO `role_permission` VALUES ('14', '1', '17', '2022-03-28 16:06:45', '2022-03-28 16:06:47');
INSERT INTO `role_permission` VALUES ('15', '1', '18', '2022-03-28 16:06:55', '2022-03-28 16:06:58');
INSERT INTO `role_permission` VALUES ('16', '1', '20', '2022-03-28 16:07:04', '2022-03-28 16:07:06');
INSERT INTO `role_permission` VALUES ('17', '1', '21', '2022-03-28 16:07:13', '2022-03-28 16:07:16');
INSERT INTO `role_permission` VALUES ('18', '1', '22', '2022-03-28 16:07:22', '2022-03-28 16:07:25');
INSERT INTO `role_permission` VALUES ('19', '1', '23', '2022-03-28 16:07:31', '2022-03-28 16:07:33');
INSERT INTO `role_permission` VALUES ('2', '1', '2', '2022-03-28 16:03:56', '2022-03-28 16:03:59');
INSERT INTO `role_permission` VALUES ('22', '1', '26', '2022-03-28 16:35:11', '2022-03-28 16:35:12');
INSERT INTO `role_permission` VALUES ('23', '1', '27', '2022-03-30 10:40:26', '2022-03-30 10:40:28');
INSERT INTO `role_permission` VALUES ('2d52fcdcbb378edc1405420e5e2941cb', '81febe9b93faa3cdca1e25cc173e4e62', '17', '2022-03-30 03:25:36', '2022-03-30 03:25:36');
INSERT INTO `role_permission` VALUES ('3', '1', '3', '2022-03-28 16:04:44', '2022-03-28 16:04:46');
INSERT INTO `role_permission` VALUES ('4', '1', '4', '2022-03-28 16:05:08', '2022-03-28 16:05:10');
INSERT INTO `role_permission` VALUES ('5', '1', '5', '2022-03-28 16:05:18', '2022-03-28 16:05:22');
INSERT INTO `role_permission` VALUES ('6', '1', '6', '2022-03-28 16:05:28', '2022-03-28 16:05:31');
INSERT INTO `role_permission` VALUES ('6159d95552778f0e633d8061f30be762', '81febe9b93faa3cdca1e25cc173e4e62', '20', '2022-03-30 03:25:36', '2022-03-30 03:25:36');
INSERT INTO `role_permission` VALUES ('69254b3c8b48842739fa8bc322b6687a', '81febe9b93faa3cdca1e25cc173e4e62', '11', '2022-03-30 03:25:36', '2022-03-30 03:25:36');
INSERT INTO `role_permission` VALUES ('7', '1', '8', '2022-03-28 16:05:37', '2022-03-28 16:05:39');
INSERT INTO `role_permission` VALUES ('8', '1', '9', '2022-03-28 16:05:44', '2022-03-28 16:05:47');
INSERT INTO `role_permission` VALUES ('9', '1', '10', '2022-03-28 16:05:54', '2022-03-28 16:05:56');
INSERT INTO `role_permission` VALUES ('a504558ab4df96badcad4f619f4a6682', '81febe9b93faa3cdca1e25cc173e4e62', '10', '2022-03-30 03:25:36', '2022-03-30 03:25:36');
INSERT INTO `role_permission` VALUES ('d25f8ced06661dd0f2f9029a2d93f5a2', '81febe9b93faa3cdca1e25cc173e4e62', '8', '2022-03-30 03:25:36', '2022-03-30 03:25:36');
INSERT INTO `role_permission` VALUES ('e37a519e0a6ff0e3423399e6a41a679e', '81febe9b93faa3cdca1e25cc173e4e62', '18', '2022-03-30 03:25:36', '2022-03-30 03:25:36');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_Id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学生学号',
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '学生姓名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '密码',
  `user_college` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学生学院',
  `user_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学生班级',
  `photo_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学生证件照保存地址',
  `face_feature` blob NOT NULL COMMENT '学生人脸特征',
  `sex` int NOT NULL DEFAULT 0 COMMENT '性别',
  `type` int NOT NULL DEFAULT 0 COMMENT '身份类型（0正常，1黑名单，2临时访客）',
  `effective_time` datetime NULL DEFAULT NULL COMMENT '临时访客有效时间',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `modified_date` datetime NOT NULL COMMENT '更新时间',
  `photo_path1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '访问路径',
  PRIMARY KEY (`user_Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('8002118045', 'hxl', '$2a$10$cIOa3tZUsuGJynMsfH4o1OVhf2ipkNe7nJxrA6GCxdRLMNksxCYji', '1', '1', 'G:\\image\\0a19e70f93f4410684014fc3239f796f.jpg', 0x0080FA440000A0415BBD873DFCCAC2BD15103BBEAC6EAFBDDDEF9B3DF56EF83CEC37D23CF4D51F3DD88721BD00CFF4BC8B4376BDF4A736BDB0ECF13CE7E91ABDE5E62E3D0D8AA7BD4D3F27BDB7C655BD5E830CBD47CD34BDE087323D0E7F1C3D03EADC3DF5ABBC3CDB80CB3DB5F5A73B7C09F5BC46E30E3CBDF10E3E320CECBD8D1E13BDBC1C943C72EEAC3B62D194BD9C4C15BD74FC953C0887133D9DA2B43D7CFDA8BDD5B664BD2412DABCBB859A3DFB23CDBCBDBFCCBD566E5FBDD2E25B3DB9A99E3D1A21AD3CC17DA43C140E0CBD005B71BD3CFACDBC367331BAB01A073DFC314B3E7ED5A7BD37498A3C5D135D3DA5CF57BDAB1CDDBCCB1A903D1BB0DDBAD077143C5D71463DEE5274BD583C33BDCEAD58BDC1DAA73D68D8B2BC06D25FBDA0488B39BC10963DC588E4BDA3BA05BDCBB0C33D714B923B3449DC3DA7DCDC3C886B833DC5172A3C6908E9399A6757BDF4F12EBDBB28D9BD5897D5BC65A08C3D4417543CAE2069BD287B1A3D04E3EFBC12E0D4BDE658013EA0E1E7BC516A4CBAFB35FFBCC465B53C5171A8BCC21F383DDC7612BD5C65863DECBAA9BA8842CC3D999FE93C60B2283B369A3E3D7E1768BDFE6FB2BD9146073D301ADF3D200E593D2C0C933C60B9D1BBE7AEF93DDD68D2BCE05E3A3DEE6D893CA427933D1062A13DCCAFA9BDBC7E8F3D5226C7BDE812C13CD9A97FBD500D113DD1DE04BEA160BDBDF0D5B43C897E803D25ADEFBB28F5B0BDC0FFF93D2389C8BDD4AD09BDF21B18BD93F7353D8BC2B1BD8496B73D4B34E23C898C863DE0C5D53D05951F3EE9FE263D8532E2BC9C768E3D288093BC540B733C9A6F383D15595FBDD9257E3D1EDFA1BC302FFCBB5B5872BDC44E35BD79594DBD53C643BD7C83E63DF5AF2E3DB30B87BD2B3B9A3D1F109A3DE04238BD55F6863D072C353DE5D10E3DA41812BDBBE456BDF1759CBC878F7C3D4609853C5BBF2FBEFDFFDEBD10102D3E0F0B883DA4CE8E3D044298BD4268ED3C96A7E1BC6B65093E3EF61E3CD4B44C3D829DF3BD8CEB8FBCC48867BD4D7D60BD2C25D53BBF72003DA4E6B8BDBFE854BC84DF973D17D6773DA05DA63C872F5FBAF0852A3D6703263D3FCD9C3D33C98ABD4827A3BC04AAFA3DC9C6AE3BC315C7BC5A51B13D4DECA93B8DA4CC3D54E9BF3AF4D584BD38523ABD83153FBD49BFF9BD1B1120BC2BD9A1BD95DF66BDB378853AC2F2573DEC6216BD5499493C2515EBBD2C8ECB3D10C115BE6115BB3CB8C8843DBEC889BD725C0E3CECA9AABDA55643BDDD43593C7EF281BC1332C6BC4B19993C7F2F863DB074C9BBD1AD8BBDE4FAD2BC8C0BB43C3A06443D1BE6B4BBA0158F3B841F9ABDBCFD9D3DDD1485BD470CFBBC5DEA19BD5E73803DCCE9C9BD19EC353DE1D5B23B85BF9CBCBE6E4BBD74B9F0BDFDAF28BCDD1EDC3D27EEA63D98C79F3C826C79BDBE858FBD34DA11BC757AE73D, 0, 0, NULL, '2022-03-28 08:17:50', '2022-03-30 03:26:12', 'http://100.71.3.133:8089/photo/0a19e70f93f4410684014fc3239f796f.jpg');
INSERT INTO `user` VALUES ('admin', 'admin', '$2a$10$DOqlwEf8o2nmSOUFjUBBHevcXDncUWY4hi0WZBrAxHhfUYwymJujS', '2', '13', '', '', 0, 0, NULL, '2022-03-28 16:10:42', '2022-03-28 16:10:44', NULL);

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role`  (
  `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '主键id',
  `role_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '角色id',
  `user_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '用户id',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `modified_date` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_role_id`(`role_id`) USING BTREE,
  INDEX `idx_user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1', '1', 'admin', '2022-03-28 16:11:01', '2022-03-28 16:11:03');
INSERT INTO `user_role` VALUES ('efdcbd3d0ba52e1b21f31af5a9083604', '81febe9b93faa3cdca1e25cc173e4e62', '8002118045', '2022-03-30 03:26:12', '2022-03-30 03:26:12');

-- ----------------------------
-- Table structure for wx_user
-- ----------------------------
DROP TABLE IF EXISTS `wx_user`;
CREATE TABLE `wx_user`  (
  `user_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `wx_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` int NOT NULL COMMENT '(0:班主任，1：院长，2：管理员，3：本人)',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '微信公众号与用户关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wx_user
-- ----------------------------
INSERT INTO `wx_user` VALUES ('8002118045', 'ok1f35_33q4OentNLeDM832Ffsug', 2);

SET FOREIGN_KEY_CHECKS = 1;
