/*
 Navicat Premium Data Transfer

 Source Server         : localhost连接
 Source Server Type    : MySQL
 Source Server Version : 50737
 Source Host           : localhost:3306
 Source Schema         : python_fitness

 Target Server Type    : MySQL
 Target Server Version : 50737
 File Encoding         : 65001

 Date: 25/01/2024 18:50:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 65 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add classification', 7, 'add_classification');
INSERT INTO `auth_permission` VALUES (26, 'Can change classification', 7, 'change_classification');
INSERT INTO `auth_permission` VALUES (27, 'Can delete classification', 7, 'delete_classification');
INSERT INTO `auth_permission` VALUES (28, 'Can view classification', 7, 'view_classification');
INSERT INTO `auth_permission` VALUES (29, 'Can add error log', 8, 'add_errorlog');
INSERT INTO `auth_permission` VALUES (30, 'Can change error log', 8, 'change_errorlog');
INSERT INTO `auth_permission` VALUES (31, 'Can delete error log', 8, 'delete_errorlog');
INSERT INTO `auth_permission` VALUES (32, 'Can view error log', 8, 'view_errorlog');
INSERT INTO `auth_permission` VALUES (33, 'Can add login log', 9, 'add_loginlog');
INSERT INTO `auth_permission` VALUES (34, 'Can change login log', 9, 'change_loginlog');
INSERT INTO `auth_permission` VALUES (35, 'Can delete login log', 9, 'delete_loginlog');
INSERT INTO `auth_permission` VALUES (36, 'Can view login log', 9, 'view_loginlog');
INSERT INTO `auth_permission` VALUES (37, 'Can add op log', 10, 'add_oplog');
INSERT INTO `auth_permission` VALUES (38, 'Can change op log', 10, 'change_oplog');
INSERT INTO `auth_permission` VALUES (39, 'Can delete op log', 10, 'delete_oplog');
INSERT INTO `auth_permission` VALUES (40, 'Can view op log', 10, 'view_oplog');
INSERT INTO `auth_permission` VALUES (41, 'Can add tag', 11, 'add_tag');
INSERT INTO `auth_permission` VALUES (42, 'Can change tag', 11, 'change_tag');
INSERT INTO `auth_permission` VALUES (43, 'Can delete tag', 11, 'delete_tag');
INSERT INTO `auth_permission` VALUES (44, 'Can view tag', 11, 'view_tag');
INSERT INTO `auth_permission` VALUES (45, 'Can add user', 12, 'add_user');
INSERT INTO `auth_permission` VALUES (46, 'Can change user', 12, 'change_user');
INSERT INTO `auth_permission` VALUES (47, 'Can delete user', 12, 'delete_user');
INSERT INTO `auth_permission` VALUES (48, 'Can view user', 12, 'view_user');
INSERT INTO `auth_permission` VALUES (49, 'Can add thing', 13, 'add_thing');
INSERT INTO `auth_permission` VALUES (50, 'Can change thing', 13, 'change_thing');
INSERT INTO `auth_permission` VALUES (51, 'Can delete thing', 13, 'delete_thing');
INSERT INTO `auth_permission` VALUES (52, 'Can view thing', 13, 'view_thing');
INSERT INTO `auth_permission` VALUES (53, 'Can add member', 14, 'add_member');
INSERT INTO `auth_permission` VALUES (54, 'Can change member', 14, 'change_member');
INSERT INTO `auth_permission` VALUES (55, 'Can delete member', 14, 'delete_member');
INSERT INTO `auth_permission` VALUES (56, 'Can view member', 14, 'view_member');
INSERT INTO `auth_permission` VALUES (57, 'Can add course', 15, 'add_course');
INSERT INTO `auth_permission` VALUES (58, 'Can change course', 15, 'change_course');
INSERT INTO `auth_permission` VALUES (59, 'Can delete course', 15, 'delete_course');
INSERT INTO `auth_permission` VALUES (60, 'Can view course', 15, 'view_course');
INSERT INTO `auth_permission` VALUES (61, 'Can add equipment', 16, 'add_equipment');
INSERT INTO `auth_permission` VALUES (62, 'Can change equipment', 16, 'change_equipment');
INSERT INTO `auth_permission` VALUES (63, 'Can delete equipment', 16, 'delete_equipment');
INSERT INTO `auth_permission` VALUES (64, 'Can view equipment', 16, 'view_equipment');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for b_classification
-- ----------------------------
DROP TABLE IF EXISTS `b_classification`;
CREATE TABLE `b_classification`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_classification
-- ----------------------------
INSERT INTO `b_classification` VALUES (1, '华清大厦2层', '2024-01-25 18:30:06.432503');
INSERT INTO `b_classification` VALUES (2, '中关村大厦10楼', '2024-01-25 18:30:19.923678');
INSERT INTO `b_classification` VALUES (3, '中关村大厦11楼', '2024-01-25 18:30:30.607504');

-- ----------------------------
-- Table structure for b_course
-- ----------------------------
DROP TABLE IF EXISTS `b_course`;
CREATE TABLE `b_course`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `course_type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `desc` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `duration` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_course
-- ----------------------------
INSERT INTO `b_course` VALUES (1, '上肢肌肉练习计划', '周课', '利用一些器材进行练习', '10天', '288', '2024-01-25 18:40:01.613190');
INSERT INTO `b_course` VALUES (2, '腹部肌肉练习计划', '周三课程', '利用练习肌肉测试', '40天', '499', '2024-01-25 18:40:37.929757');
INSERT INTO `b_course` VALUES (3, '腿部肌肉练习计划', '周课', '通过跑步练习', '20天', '399', '2024-01-25 18:41:05.028739');

-- ----------------------------
-- Table structure for b_equipment
-- ----------------------------
DROP TABLE IF EXISTS `b_equipment`;
CREATE TABLE `b_equipment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_equipment
-- ----------------------------
INSERT INTO `b_equipment` VALUES (1, '20公斤哑铃', '使用中', '2024-01-25 18:45:22.004614');
INSERT INTO `b_equipment` VALUES (2, '30公斤哑铃', '空闲', '2024-01-25 18:45:30.338926');
INSERT INTO `b_equipment` VALUES (3, '举重杆', '使用中', '2024-01-25 18:45:47.841183');
INSERT INTO `b_equipment` VALUES (4, '跑步机', '空闲', '2024-01-25 18:45:55.467105');
INSERT INTO `b_equipment` VALUES (5, '跑步机B', '空闲', '2024-01-25 18:46:03.356576');

-- ----------------------------
-- Table structure for b_error_log
-- ----------------------------
DROP TABLE IF EXISTS `b_error_log`;
CREATE TABLE `b_error_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_error_log
-- ----------------------------

-- ----------------------------
-- Table structure for b_login_log
-- ----------------------------
DROP TABLE IF EXISTS `b_login_log`;
CREATE TABLE `b_login_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_login_log
-- ----------------------------
INSERT INTO `b_login_log` VALUES (1, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '2024-01-25 18:28:41.907395');
INSERT INTO `b_login_log` VALUES (2, 'admin123', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '2024-01-25 18:46:20.446740');
INSERT INTO `b_login_log` VALUES (3, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '2024-01-25 18:47:12.923902');
INSERT INTO `b_login_log` VALUES (4, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '2024-01-25 18:48:22.808659');

-- ----------------------------
-- Table structure for b_member
-- ----------------------------
DROP TABLE IF EXISTS `b_member`;
CREATE TABLE `b_member`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `score` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_member
-- ----------------------------
INSERT INTO `b_member` VALUES (1, '王小明', '18977776666', '22', '99', '2024-01-25 18:41:39.527870');
INSERT INTO `b_member` VALUES (2, '周先生', '18977776666', '43', '66', '2024-01-25 18:41:51.133862');
INSERT INTO `b_member` VALUES (3, '李女士', '18977776611', '32', '90', '2024-01-25 18:42:03.442841');

-- ----------------------------
-- Table structure for b_op_log
-- ----------------------------
DROP TABLE IF EXISTS `b_op_log`;
CREATE TABLE `b_op_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `re_ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_time` datetime(6) NULL DEFAULT NULL,
  `re_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `access_time` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 251 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_op_log
-- ----------------------------
INSERT INTO `b_op_log` VALUES (1, '127.0.0.1', '2024-01-25 18:26:58.403223', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (2, '127.0.0.1', '2024-01-25 18:26:58.401239', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (3, '127.0.0.1', '2024-01-25 18:26:58.398251', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (4, '127.0.0.1', '2024-01-25 18:27:03.901883', '/myapp/admin/user/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (5, '127.0.0.1', '2024-01-25 18:27:11.987906', '/myapp/admin/user/create', 'POST', NULL, '19');
INSERT INTO `b_op_log` VALUES (6, '127.0.0.1', '2024-01-25 18:27:25.819091', '/myapp/admin/user/create', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (7, '127.0.0.1', '2024-01-25 18:27:25.848326', '/myapp/admin/user/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (8, '127.0.0.1', '2024-01-25 18:28:41.914054', '/myapp/admin/adminLogin', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (9, '127.0.0.1', '2024-01-25 18:28:41.991365', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (10, '127.0.0.1', '2024-01-25 18:28:42.004045', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (11, '127.0.0.1', '2024-01-25 18:28:42.007672', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (12, '127.0.0.1', '2024-01-25 18:28:43.214941', '/myapp/admin/user/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (13, '127.0.0.1', '2024-01-25 18:28:48.864394', '/myapp/admin/user/create', 'POST', NULL, '56');
INSERT INTO `b_op_log` VALUES (14, '127.0.0.1', '2024-01-25 18:28:48.930994', '/myapp/admin/user/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (15, '127.0.0.1', '2024-01-25 18:28:57.260822', '/myapp/admin/user/create', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (16, '127.0.0.1', '2024-01-25 18:28:57.304803', '/myapp/admin/user/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (17, '127.0.0.1', '2024-01-25 18:29:03.493063', '/myapp/admin/user/update', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (18, '127.0.0.1', '2024-01-25 18:29:03.573789', '/myapp/admin/user/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (19, '127.0.0.1', '2024-01-25 18:29:09.621873', '/myapp/admin/user/update', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (20, '127.0.0.1', '2024-01-25 18:29:09.673038', '/myapp/admin/user/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (21, '127.0.0.1', '2024-01-25 18:29:14.645754', '/myapp/admin/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (22, '127.0.0.1', '2024-01-25 18:29:48.663911', '/myapp/admin/member/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (23, '127.0.0.1', '2024-01-25 18:29:48.662896', '/myapp/admin/member/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (24, '127.0.0.1', '2024-01-25 18:29:48.664970', '/myapp/admin/member/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (25, '127.0.0.1', '2024-01-25 18:29:49.075963', '/myapp/admin/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (26, '127.0.0.1', '2024-01-25 18:30:06.437639', '/myapp/admin/classification/create', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (27, '127.0.0.1', '2024-01-25 18:30:06.477859', '/myapp/admin/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (28, '127.0.0.1', '2024-01-25 18:30:19.937757', '/myapp/admin/classification/create', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (29, '127.0.0.1', '2024-01-25 18:30:19.980482', '/myapp/admin/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (30, '127.0.0.1', '2024-01-25 18:30:30.620717', '/myapp/admin/classification/create', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (31, '127.0.0.1', '2024-01-25 18:30:30.642632', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (32, '127.0.0.1', '2024-01-25 18:30:33.358503', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (33, '127.0.0.1', '2024-01-25 18:30:33.360012', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (34, '127.0.0.1', '2024-01-25 18:30:33.361543', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (35, '127.0.0.1', '2024-01-25 18:33:38.224408', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (36, '127.0.0.1', '2024-01-25 18:33:38.225405', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (37, '127.0.0.1', '2024-01-25 18:33:38.230389', '/myapp/admin/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (38, '127.0.0.1', '2024-01-25 18:34:01.174066', '/myapp/admin/thing/create', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (39, '127.0.0.1', '2024-01-25 18:34:01.199326', '/myapp/admin/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (40, '127.0.0.1', '2024-01-25 18:34:13.460933', '/myapp/admin/thing/create', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (41, '127.0.0.1', '2024-01-25 18:34:13.514645', '/myapp/admin/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (42, '127.0.0.1', '2024-01-25 18:34:30.682326', '/myapp/admin/thing/create', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (43, '127.0.0.1', '2024-01-25 18:34:30.710580', '/myapp/admin/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (44, '127.0.0.1', '2024-01-25 18:34:47.248982', '/myapp/admin/thing/create', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (45, '127.0.0.1', '2024-01-25 18:34:47.299140', '/myapp/admin/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (46, '127.0.0.1', '2024-01-25 18:36:04.960674', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (47, '127.0.0.1', '2024-01-25 18:36:04.967683', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (48, '127.0.0.1', '2024-01-25 18:36:04.971635', '/myapp/admin/tag/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (49, '127.0.0.1', '2024-01-25 18:36:05.563278', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (50, '127.0.0.1', '2024-01-25 18:36:05.564292', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (51, '127.0.0.1', '2024-01-25 18:36:05.566267', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (52, '127.0.0.1', '2024-01-25 18:38:17.925134', '/myapp/admin/course/list', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (53, '127.0.0.1', '2024-01-25 18:38:17.926119', '/myapp/admin/course/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (54, '127.0.0.1', '2024-01-25 18:38:17.932108', '/myapp/admin/course/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (55, '127.0.0.1', '2024-01-25 18:40:01.618202', '/myapp/admin/course/create', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (56, '127.0.0.1', '2024-01-25 18:40:01.640077', '/myapp/admin/course/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (57, '127.0.0.1', '2024-01-25 18:40:37.942208', '/myapp/admin/course/create', 'POST', NULL, '16');
INSERT INTO `b_op_log` VALUES (58, '127.0.0.1', '2024-01-25 18:40:37.960757', '/myapp/admin/course/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (59, '127.0.0.1', '2024-01-25 18:41:05.042760', '/myapp/admin/course/create', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (60, '127.0.0.1', '2024-01-25 18:41:05.088005', '/myapp/admin/course/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (61, '127.0.0.1', '2024-01-25 18:41:12.095178', '/myapp/admin/course/update', 'POST', NULL, '19');
INSERT INTO `b_op_log` VALUES (62, '127.0.0.1', '2024-01-25 18:41:12.137816', '/myapp/admin/course/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (63, '127.0.0.1', '2024-01-25 18:41:21.135467', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (64, '127.0.0.1', '2024-01-25 18:41:21.136463', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (65, '127.0.0.1', '2024-01-25 18:41:21.152935', '/myapp/admin/tag/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (66, '127.0.0.1', '2024-01-25 18:41:39.543924', '/myapp/admin/member/create', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (67, '127.0.0.1', '2024-01-25 18:41:39.563940', '/myapp/admin/member/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (68, '127.0.0.1', '2024-01-25 18:41:51.139784', '/myapp/admin/member/create', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (69, '127.0.0.1', '2024-01-25 18:41:51.182290', '/myapp/admin/member/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (70, '127.0.0.1', '2024-01-25 18:42:03.449931', '/myapp/admin/member/create', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (71, '127.0.0.1', '2024-01-25 18:42:03.487363', '/myapp/admin/member/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (72, '127.0.0.1', '2024-01-25 18:42:05.014349', '/myapp/admin/classification/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (73, '127.0.0.1', '2024-01-25 18:42:06.214796', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (74, '127.0.0.1', '2024-01-25 18:42:06.219766', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (75, '127.0.0.1', '2024-01-25 18:42:06.229724', '/myapp/admin/tag/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (76, '127.0.0.1', '2024-01-25 18:42:07.055594', '/myapp/admin/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (77, '127.0.0.1', '2024-01-25 18:42:07.609309', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (78, '127.0.0.1', '2024-01-25 18:42:07.607314', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (79, '127.0.0.1', '2024-01-25 18:42:07.632126', '/myapp/admin/tag/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (80, '127.0.0.1', '2024-01-25 18:42:08.447353', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (81, '127.0.0.1', '2024-01-25 18:42:08.450360', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (82, '127.0.0.1', '2024-01-25 18:42:08.469288', '/myapp/admin/tag/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (83, '127.0.0.1', '2024-01-25 18:43:44.148589', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (84, '127.0.0.1', '2024-01-25 18:43:44.152406', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (85, '127.0.0.1', '2024-01-25 18:43:44.156948', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (86, '127.0.0.1', '2024-01-25 18:45:03.802874', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (87, '127.0.0.1', '2024-01-25 18:45:03.808854', '/myapp/admin/equipment/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (88, '127.0.0.1', '2024-01-25 18:45:03.813838', '/myapp/admin/equipment/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (89, '127.0.0.1', '2024-01-25 18:45:22.018194', '/myapp/admin/equipment/create', 'POST', NULL, '21');
INSERT INTO `b_op_log` VALUES (90, '127.0.0.1', '2024-01-25 18:45:22.074999', '/myapp/admin/equipment/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (91, '127.0.0.1', '2024-01-25 18:45:30.354284', '/myapp/admin/equipment/create', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (92, '127.0.0.1', '2024-01-25 18:45:30.401969', '/myapp/admin/equipment/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (93, '127.0.0.1', '2024-01-25 18:45:47.856552', '/myapp/admin/equipment/create', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (94, '127.0.0.1', '2024-01-25 18:45:47.902188', '/myapp/admin/equipment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (95, '127.0.0.1', '2024-01-25 18:45:55.484342', '/myapp/admin/equipment/create', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (96, '127.0.0.1', '2024-01-25 18:45:55.527892', '/myapp/admin/equipment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (97, '127.0.0.1', '2024-01-25 18:46:03.372106', '/myapp/admin/equipment/create', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (98, '127.0.0.1', '2024-01-25 18:46:03.417027', '/myapp/admin/equipment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (99, '127.0.0.1', '2024-01-25 18:46:06.524629', '/myapp/admin/equipment/update', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (100, '127.0.0.1', '2024-01-25 18:46:06.569958', '/myapp/admin/equipment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (101, '127.0.0.1', '2024-01-25 18:46:10.579679', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (102, '127.0.0.1', '2024-01-25 18:46:10.610579', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (103, '127.0.0.1', '2024-01-25 18:46:10.612592', '/myapp/admin/tag/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (104, '127.0.0.1', '2024-01-25 18:46:11.458046', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (105, '127.0.0.1', '2024-01-25 18:46:11.461706', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (106, '127.0.0.1', '2024-01-25 18:46:11.463011', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (107, '127.0.0.1', '2024-01-25 18:46:12.521317', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (108, '127.0.0.1', '2024-01-25 18:46:12.524297', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (109, '127.0.0.1', '2024-01-25 18:46:12.527298', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (110, '127.0.0.1', '2024-01-25 18:46:20.452485', '/myapp/admin/adminLogin', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (111, '127.0.0.1', '2024-01-25 18:46:20.539517', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (112, '127.0.0.1', '2024-01-25 18:46:20.545005', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (113, '127.0.0.1', '2024-01-25 18:46:20.547521', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (114, '127.0.0.1', '2024-01-25 18:46:22.422252', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (115, '127.0.0.1', '2024-01-25 18:46:23.440953', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (116, '127.0.0.1', '2024-01-25 18:46:23.442762', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (117, '127.0.0.1', '2024-01-25 18:46:23.445939', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (118, '127.0.0.1', '2024-01-25 18:46:23.978171', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (119, '127.0.0.1', '2024-01-25 18:46:23.982158', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (120, '127.0.0.1', '2024-01-25 18:46:23.989126', '/myapp/admin/tag/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (121, '127.0.0.1', '2024-01-25 18:46:25.458695', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (122, '127.0.0.1', '2024-01-25 18:46:25.462692', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (123, '127.0.0.1', '2024-01-25 18:46:25.464685', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (124, '127.0.0.1', '2024-01-25 18:46:26.678838', '/myapp/admin/user/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (125, '127.0.0.1', '2024-01-25 18:46:28.693955', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1052');
INSERT INTO `b_op_log` VALUES (126, '127.0.0.1', '2024-01-25 18:46:30.221824', '/myapp/admin/loginLog/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (127, '127.0.0.1', '2024-01-25 18:46:31.085521', '/myapp/admin/opLog/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (128, '127.0.0.1', '2024-01-25 18:46:32.067636', '/myapp/admin/errorLog/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (129, '127.0.0.1', '2024-01-25 18:46:32.840778', '/myapp/admin/loginLog/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (130, '127.0.0.1', '2024-01-25 18:46:33.894274', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (131, '127.0.0.1', '2024-01-25 18:46:33.898025', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (132, '127.0.0.1', '2024-01-25 18:46:33.911895', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (133, '127.0.0.1', '2024-01-25 18:46:35.243674', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (134, '127.0.0.1', '2024-01-25 18:46:36.292802', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (135, '127.0.0.1', '2024-01-25 18:46:36.298270', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (136, '127.0.0.1', '2024-01-25 18:46:36.303966', '/myapp/admin/tag/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (137, '127.0.0.1', '2024-01-25 18:46:37.437975', '/myapp/admin/classification/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (138, '127.0.0.1', '2024-01-25 18:46:38.318645', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (139, '127.0.0.1', '2024-01-25 18:46:38.323620', '/myapp/admin/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (140, '127.0.0.1', '2024-01-25 18:46:38.328614', '/myapp/admin/tag/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (141, '127.0.0.1', '2024-01-25 18:46:39.193090', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (142, '127.0.0.1', '2024-01-25 18:46:39.618877', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (143, '127.0.0.1', '2024-01-25 18:46:39.620789', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (144, '127.0.0.1', '2024-01-25 18:46:39.645608', '/myapp/admin/classification/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (145, '127.0.0.1', '2024-01-25 18:46:40.324365', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (146, '127.0.0.1', '2024-01-25 18:46:40.328351', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (147, '127.0.0.1', '2024-01-25 18:46:40.332329', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (148, '127.0.0.1', '2024-01-25 18:46:40.916270', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (149, '127.0.0.1', '2024-01-25 18:46:40.921251', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (150, '127.0.0.1', '2024-01-25 18:46:40.931218', '/myapp/admin/tag/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (151, '127.0.0.1', '2024-01-25 18:46:41.528356', '/myapp/admin/user/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (152, '127.0.0.1', '2024-01-25 18:46:42.753168', '/myapp/admin/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (153, '127.0.0.1', '2024-01-25 18:46:43.665314', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (154, '127.0.0.1', '2024-01-25 18:46:43.671838', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (155, '127.0.0.1', '2024-01-25 18:46:43.684856', '/myapp/admin/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (156, '127.0.0.1', '2024-01-25 18:47:05.669985', '/myapp/admin/thing/create', 'POST', NULL, '9');
INSERT INTO `b_op_log` VALUES (157, '127.0.0.1', '2024-01-25 18:47:08.785563', '/myapp/admin/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (158, '127.0.0.1', '2024-01-25 18:47:09.223292', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (159, '127.0.0.1', '2024-01-25 18:47:09.225283', '/myapp/admin/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (160, '127.0.0.1', '2024-01-25 18:47:09.236020', '/myapp/admin/tag/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (161, '127.0.0.1', '2024-01-25 18:47:12.928486', '/myapp/admin/adminLogin', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (162, '127.0.0.1', '2024-01-25 18:47:12.994525', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (163, '127.0.0.1', '2024-01-25 18:47:12.995521', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (164, '127.0.0.1', '2024-01-25 18:47:13.005046', '/myapp/admin/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (165, '127.0.0.1', '2024-01-25 18:47:23.205341', '/myapp/admin/thing/create', 'POST', NULL, '17');
INSERT INTO `b_op_log` VALUES (166, '127.0.0.1', '2024-01-25 18:47:23.255615', '/myapp/admin/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (167, '127.0.0.1', '2024-01-25 18:47:25.747447', '/myapp/admin/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (168, '127.0.0.1', '2024-01-25 18:47:26.620957', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (169, '127.0.0.1', '2024-01-25 18:47:26.626936', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (170, '127.0.0.1', '2024-01-25 18:47:26.634900', '/myapp/admin/tag/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (171, '127.0.0.1', '2024-01-25 18:47:28.589295', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (172, '127.0.0.1', '2024-01-25 18:47:29.455543', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (173, '127.0.0.1', '2024-01-25 18:47:29.456528', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (174, '127.0.0.1', '2024-01-25 18:47:29.477438', '/myapp/admin/tag/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (175, '127.0.0.1', '2024-01-25 18:47:30.820517', '/myapp/admin/course/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (176, '127.0.0.1', '2024-01-25 18:47:30.823501', '/myapp/admin/course/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (177, '127.0.0.1', '2024-01-25 18:47:30.827497', '/myapp/admin/course/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (178, '127.0.0.1', '2024-01-25 18:47:31.863899', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (179, '127.0.0.1', '2024-01-25 18:47:31.867531', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (180, '127.0.0.1', '2024-01-25 18:47:31.891337', '/myapp/admin/classification/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (181, '127.0.0.1', '2024-01-25 18:47:33.070891', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (182, '127.0.0.1', '2024-01-25 18:47:33.072886', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (183, '127.0.0.1', '2024-01-25 18:47:33.075874', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (184, '127.0.0.1', '2024-01-25 18:47:34.893009', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (185, '127.0.0.1', '2024-01-25 18:47:34.913097', '/myapp/admin/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (186, '127.0.0.1', '2024-01-25 18:47:34.915616', '/myapp/admin/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (187, '127.0.0.1', '2024-01-25 18:47:36.671795', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (188, '127.0.0.1', '2024-01-25 18:47:36.673789', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (189, '127.0.0.1', '2024-01-25 18:47:36.675782', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (190, '127.0.0.1', '2024-01-25 18:47:37.610239', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (191, '127.0.0.1', '2024-01-25 18:47:37.614219', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (192, '127.0.0.1', '2024-01-25 18:47:37.637261', '/myapp/admin/classification/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (193, '127.0.0.1', '2024-01-25 18:47:38.196802', '/myapp/admin/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (194, '127.0.0.1', '2024-01-25 18:47:38.737396', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (195, '127.0.0.1', '2024-01-25 18:47:38.749355', '/myapp/admin/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (196, '127.0.0.1', '2024-01-25 18:47:38.752347', '/myapp/admin/classification/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (197, '127.0.0.1', '2024-01-25 18:47:41.429734', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1041');
INSERT INTO `b_op_log` VALUES (198, '127.0.0.1', '2024-01-25 18:47:42.454993', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (199, '127.0.0.1', '2024-01-25 18:47:42.458976', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (200, '127.0.0.1', '2024-01-25 18:47:42.473851', '/myapp/admin/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (201, '127.0.0.1', '2024-01-25 18:47:43.902683', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (202, '127.0.0.1', '2024-01-25 18:47:44.996602', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (203, '127.0.0.1', '2024-01-25 18:47:44.998602', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (204, '127.0.0.1', '2024-01-25 18:47:45.005579', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (205, '127.0.0.1', '2024-01-25 18:48:22.814223', '/myapp/admin/adminLogin', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (206, '127.0.0.1', '2024-01-25 18:48:22.876842', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (207, '127.0.0.1', '2024-01-25 18:48:22.877841', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (208, '127.0.0.1', '2024-01-25 18:48:22.885151', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (209, '127.0.0.1', '2024-01-25 18:48:24.072306', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (210, '127.0.0.1', '2024-01-25 18:48:24.074298', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (211, '127.0.0.1', '2024-01-25 18:48:24.092839', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (212, '127.0.0.1', '2024-01-25 18:48:24.588097', '/myapp/admin/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (213, '127.0.0.1', '2024-01-25 18:48:25.090951', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (214, '127.0.0.1', '2024-01-25 18:48:25.105359', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (215, '127.0.0.1', '2024-01-25 18:48:25.109301', '/myapp/admin/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (216, '127.0.0.1', '2024-01-25 18:48:40.535777', '/myapp/admin/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (217, '127.0.0.1', '2024-01-25 18:48:40.932446', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (218, '127.0.0.1', '2024-01-25 18:48:40.953391', '/myapp/admin/tag/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (219, '127.0.0.1', '2024-01-25 18:48:40.955677', '/myapp/admin/tag/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (220, '127.0.0.1', '2024-01-25 18:48:41.333755', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (221, '127.0.0.1', '2024-01-25 18:48:41.338739', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (222, '127.0.0.1', '2024-01-25 18:48:41.348713', '/myapp/admin/tag/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (223, '127.0.0.1', '2024-01-25 18:48:42.243657', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (224, '127.0.0.1', '2024-01-25 18:48:42.245938', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (225, '127.0.0.1', '2024-01-25 18:48:42.255163', '/myapp/admin/tag/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (226, '127.0.0.1', '2024-01-25 18:48:44.195491', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (227, '127.0.0.1', '2024-01-25 18:48:44.203729', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (228, '127.0.0.1', '2024-01-25 18:48:44.211825', '/myapp/admin/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (229, '127.0.0.1', '2024-01-25 18:48:44.943098', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (230, '127.0.0.1', '2024-01-25 18:48:44.946187', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (231, '127.0.0.1', '2024-01-25 18:48:44.950273', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (232, '127.0.0.1', '2024-01-25 18:48:45.379981', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (233, '127.0.0.1', '2024-01-25 18:48:45.381984', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (234, '127.0.0.1', '2024-01-25 18:48:45.384964', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (235, '127.0.0.1', '2024-01-25 18:48:45.738874', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (236, '127.0.0.1', '2024-01-25 18:48:46.137865', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (237, '127.0.0.1', '2024-01-25 18:48:46.141852', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (238, '127.0.0.1', '2024-01-25 18:48:46.154340', '/myapp/admin/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (239, '127.0.0.1', '2024-01-25 18:48:47.844243', '/myapp/admin/user/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (240, '127.0.0.1', '2024-01-25 18:48:48.909156', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (241, '127.0.0.1', '2024-01-25 18:48:48.912136', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (242, '127.0.0.1', '2024-01-25 18:48:48.915125', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (243, '127.0.0.1', '2024-01-25 18:48:49.398965', '/myapp/admin/tag/list', 'GET', NULL, '496');
INSERT INTO `b_op_log` VALUES (244, '127.0.0.1', '2024-01-25 18:48:49.921571', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (245, '127.0.0.1', '2024-01-25 18:48:49.925129', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (246, '127.0.0.1', '2024-01-25 18:48:49.925283', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (247, '127.0.0.1', '2024-01-25 18:48:50.345107', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (248, '127.0.0.1', '2024-01-25 18:48:50.719725', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (249, '127.0.0.1', '2024-01-25 18:48:50.731342', '/myapp/admin/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (250, '127.0.0.1', '2024-01-25 18:48:50.734239', '/myapp/admin/classification/list', 'GET', NULL, '27');

-- ----------------------------
-- Table structure for b_tag
-- ----------------------------
DROP TABLE IF EXISTS `b_tag`;
CREATE TABLE `b_tag`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_tag
-- ----------------------------

-- ----------------------------
-- Table structure for b_thing
-- ----------------------------
DROP TABLE IF EXISTS `b_thing`;
CREATE TABLE `b_thing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `classification_id` bigint(20) NULL DEFAULT NULL,
  `sex` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `major` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_thing_classification_id_47675ac4_fk_b_classification_id`(`classification_id`) USING BTREE,
  CONSTRAINT `b_thing_classification_id_47675ac4_fk_b_classification_id` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing
-- ----------------------------
INSERT INTO `b_thing` VALUES (1, '2024-01-25 18:34:01.158152', 3, '男', '23', '上肢肌肉力量', '刘德华');
INSERT INTO `b_thing` VALUES (2, '2024-01-25 18:34:13.443289', 2, '男', '33', '举重', '周杰伦');
INSERT INTO `b_thing` VALUES (3, '2024-01-25 18:34:30.665978', 1, '男', '21', '腹部增肌', '王明');
INSERT INTO `b_thing` VALUES (4, '2024-01-25 18:34:47.234164', 2, '女', '43', '瑜伽', '王菲');
INSERT INTO `b_thing` VALUES (5, '2024-01-25 18:47:23.199024', 3, '男', '33', '举重', '马云');

-- ----------------------------
-- Table structure for b_user
-- ----------------------------
DROP TABLE IF EXISTS `b_user`;
CREATE TABLE `b_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `score` int(11) NULL DEFAULT NULL,
  `push_email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `push_switch` tinyint(1) NULL DEFAULT NULL,
  `admin_token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_user
-- ----------------------------
INSERT INTO `b_user` VALUES (1, 'admin', '78aafd3207ec4ef6d16f9fc07e95ebc3', '1', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-01-25 18:27:25.816101', 0, NULL, 0, '21232f297a57a5a743894a0e4a801fc3', NULL);
INSERT INTO `b_user` VALUES (2, 'admin123', '0192023a7bbd73250516f069df18b500', '3', '0', NULL, '', '12222', NULL, NULL, NULL, '2024-01-25 18:28:48.845420', 0, NULL, 0, '0192023a7bbd73250516f069df18b500', NULL);
INSERT INTO `b_user` VALUES (3, 'test', '098f6bcd4621d373cade4e832627b4f6', '3', '0', NULL, '', '12333444', NULL, NULL, NULL, '2024-01-25 18:28:57.257280', 0, NULL, 0, NULL, NULL);

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (7, 'myapp', 'classification');
INSERT INTO `django_content_type` VALUES (15, 'myapp', 'course');
INSERT INTO `django_content_type` VALUES (16, 'myapp', 'equipment');
INSERT INTO `django_content_type` VALUES (8, 'myapp', 'errorlog');
INSERT INTO `django_content_type` VALUES (9, 'myapp', 'loginlog');
INSERT INTO `django_content_type` VALUES (14, 'myapp', 'member');
INSERT INTO `django_content_type` VALUES (10, 'myapp', 'oplog');
INSERT INTO `django_content_type` VALUES (11, 'myapp', 'tag');
INSERT INTO `django_content_type` VALUES (13, 'myapp', 'thing');
INSERT INTO `django_content_type` VALUES (12, 'myapp', 'user');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2024-01-25 17:27:33.446985');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2024-01-25 17:27:33.692979');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2024-01-25 17:27:33.755937');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2024-01-25 17:27:33.763984');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2024-01-25 17:27:33.772618');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2024-01-25 17:27:33.840886');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2024-01-25 17:27:33.884828');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2024-01-25 17:27:33.931581');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2024-01-25 17:27:33.937648');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2024-01-25 17:27:33.974938');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2024-01-25 17:27:33.978343');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2024-01-25 17:27:33.985931');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2024-01-25 17:27:34.031462');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2024-01-25 17:27:34.087774');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2024-01-25 17:27:34.135360');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2024-01-25 17:27:34.144325');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2024-01-25 17:27:34.189412');
INSERT INTO `django_migrations` VALUES (18, 'myapp', '0001_initial', '2024-01-25 17:27:34.874412');
INSERT INTO `django_migrations` VALUES (19, 'myapp', '0002_auto_20230526_2255', '2024-01-25 17:27:34.971243');
INSERT INTO `django_migrations` VALUES (20, 'myapp', '0003_auto_20230527_1411', '2024-01-25 17:27:35.067578');
INSERT INTO `django_migrations` VALUES (21, 'myapp', '0004_thing_raw', '2024-01-25 17:27:35.102295');
INSERT INTO `django_migrations` VALUES (22, 'myapp', '0005_auto_20230808_1739', '2024-01-25 17:27:35.597788');
INSERT INTO `django_migrations` VALUES (23, 'myapp', '0006_thing_remark', '2024-01-25 17:27:35.633538');
INSERT INTO `django_migrations` VALUES (24, 'myapp', '0007_auto_20230809_1840', '2024-01-25 17:27:36.150468');
INSERT INTO `django_migrations` VALUES (25, 'myapp', '0008_auto_20230810_1836', '2024-01-25 17:27:36.268286');
INSERT INTO `django_migrations` VALUES (26, 'myapp', '0009_auto_20240115_1002', '2024-01-25 17:27:36.741802');
INSERT INTO `django_migrations` VALUES (27, 'myapp', '0010_park_create_time', '2024-01-25 17:27:36.785518');
INSERT INTO `django_migrations` VALUES (28, 'myapp', '0011_auto_20240116_1859', '2024-01-25 17:27:37.065295');
INSERT INTO `django_migrations` VALUES (29, 'myapp', '0012_auto_20240118_1714', '2024-01-25 17:27:37.350711');
INSERT INTO `django_migrations` VALUES (30, 'myapp', '0013_auto_20240119_1713', '2024-01-25 17:27:37.666576');
INSERT INTO `django_migrations` VALUES (31, 'myapp', '0014_auto_20240122_1613', '2024-01-25 17:27:38.031460');
INSERT INTO `django_migrations` VALUES (32, 'myapp', '0015_auto_20240125_1727', '2024-01-25 17:27:38.188589');
INSERT INTO `django_migrations` VALUES (33, 'sessions', '0001_initial', '2024-01-25 17:27:38.235282');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
