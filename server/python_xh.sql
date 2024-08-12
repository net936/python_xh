/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50744
 Source Host           : localhost:3306
 Source Schema         : python_xh

 Target Server Type    : MySQL
 Target Server Version : 50744
 File Encoding         : 65001

 Date: 15/06/2024 18:06:58
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
) ENGINE = InnoDB AUTO_INCREMENT = 73 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `auth_permission` VALUES (25, 'Can add ad', 7, 'add_ad');
INSERT INTO `auth_permission` VALUES (26, 'Can change ad', 7, 'change_ad');
INSERT INTO `auth_permission` VALUES (27, 'Can delete ad', 7, 'delete_ad');
INSERT INTO `auth_permission` VALUES (28, 'Can view ad', 7, 'view_ad');
INSERT INTO `auth_permission` VALUES (29, 'Can add classification', 8, 'add_classification');
INSERT INTO `auth_permission` VALUES (30, 'Can change classification', 8, 'change_classification');
INSERT INTO `auth_permission` VALUES (31, 'Can delete classification', 8, 'delete_classification');
INSERT INTO `auth_permission` VALUES (32, 'Can view classification', 8, 'view_classification');
INSERT INTO `auth_permission` VALUES (33, 'Can add error log', 9, 'add_errorlog');
INSERT INTO `auth_permission` VALUES (34, 'Can change error log', 9, 'change_errorlog');
INSERT INTO `auth_permission` VALUES (35, 'Can delete error log', 9, 'delete_errorlog');
INSERT INTO `auth_permission` VALUES (36, 'Can view error log', 9, 'view_errorlog');
INSERT INTO `auth_permission` VALUES (37, 'Can add login log', 10, 'add_loginlog');
INSERT INTO `auth_permission` VALUES (38, 'Can change login log', 10, 'change_loginlog');
INSERT INTO `auth_permission` VALUES (39, 'Can delete login log', 10, 'delete_loginlog');
INSERT INTO `auth_permission` VALUES (40, 'Can view login log', 10, 'view_loginlog');
INSERT INTO `auth_permission` VALUES (41, 'Can add notice', 11, 'add_notice');
INSERT INTO `auth_permission` VALUES (42, 'Can change notice', 11, 'change_notice');
INSERT INTO `auth_permission` VALUES (43, 'Can delete notice', 11, 'delete_notice');
INSERT INTO `auth_permission` VALUES (44, 'Can view notice', 11, 'view_notice');
INSERT INTO `auth_permission` VALUES (45, 'Can add op log', 12, 'add_oplog');
INSERT INTO `auth_permission` VALUES (46, 'Can change op log', 12, 'change_oplog');
INSERT INTO `auth_permission` VALUES (47, 'Can delete op log', 12, 'delete_oplog');
INSERT INTO `auth_permission` VALUES (48, 'Can view op log', 12, 'view_oplog');
INSERT INTO `auth_permission` VALUES (49, 'Can add user', 13, 'add_user');
INSERT INTO `auth_permission` VALUES (50, 'Can change user', 13, 'change_user');
INSERT INTO `auth_permission` VALUES (51, 'Can delete user', 13, 'delete_user');
INSERT INTO `auth_permission` VALUES (52, 'Can view user', 13, 'view_user');
INSERT INTO `auth_permission` VALUES (53, 'Can add thing', 14, 'add_thing');
INSERT INTO `auth_permission` VALUES (54, 'Can change thing', 14, 'change_thing');
INSERT INTO `auth_permission` VALUES (55, 'Can delete thing', 14, 'delete_thing');
INSERT INTO `auth_permission` VALUES (56, 'Can view thing', 14, 'view_thing');
INSERT INTO `auth_permission` VALUES (57, 'Can add record', 15, 'add_record');
INSERT INTO `auth_permission` VALUES (58, 'Can change record', 15, 'change_record');
INSERT INTO `auth_permission` VALUES (59, 'Can delete record', 15, 'delete_record');
INSERT INTO `auth_permission` VALUES (60, 'Can view record', 15, 'view_record');
INSERT INTO `auth_permission` VALUES (61, 'Can add order', 16, 'add_order');
INSERT INTO `auth_permission` VALUES (62, 'Can change order', 16, 'change_order');
INSERT INTO `auth_permission` VALUES (63, 'Can delete order', 16, 'delete_order');
INSERT INTO `auth_permission` VALUES (64, 'Can view order', 16, 'view_order');
INSERT INTO `auth_permission` VALUES (65, 'Can add comment', 17, 'add_comment');
INSERT INTO `auth_permission` VALUES (66, 'Can change comment', 17, 'change_comment');
INSERT INTO `auth_permission` VALUES (67, 'Can delete comment', 17, 'delete_comment');
INSERT INTO `auth_permission` VALUES (68, 'Can view comment', 17, 'view_comment');
INSERT INTO `auth_permission` VALUES (69, 'Can add feedback', 18, 'add_feedback');
INSERT INTO `auth_permission` VALUES (70, 'Can change feedback', 18, 'change_feedback');
INSERT INTO `auth_permission` VALUES (71, 'Can delete feedback', 18, 'delete_feedback');
INSERT INTO `auth_permission` VALUES (72, 'Can view feedback', 18, 'view_feedback');

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
-- Table structure for b_ad
-- ----------------------------
DROP TABLE IF EXISTS `b_ad`;
CREATE TABLE `b_ad`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_ad
-- ----------------------------
INSERT INTO `b_ad` VALUES (1, 'ad/1718445563484.jpeg', 'http://www.baidu.com/', '2024-06-15 17:59:26.158565');
INSERT INTO `b_ad` VALUES (2, 'ad/1718445572277.jpeg', 'http://www.baidu.com/', '2024-06-15 17:59:35.057385');

-- ----------------------------
-- Table structure for b_classification
-- ----------------------------
DROP TABLE IF EXISTS `b_classification`;
CREATE TABLE `b_classification`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_classification
-- ----------------------------
INSERT INTO `b_classification` VALUES (1, '友情类', '2024-06-15 17:24:15.471936');
INSERT INTO `b_classification` VALUES (2, '爱情类', '2024-06-15 17:24:20.608283');
INSERT INTO `b_classification` VALUES (3, '婚庆类', '2024-06-15 17:24:35.006292');
INSERT INTO `b_classification` VALUES (4, '生日类', '2024-06-15 17:24:49.808909');
INSERT INTO `b_classification` VALUES (5, '商务类', '2024-06-15 17:24:55.029221');

-- ----------------------------
-- Table structure for b_comment
-- ----------------------------
DROP TABLE IF EXISTS `b_comment`;
CREATE TABLE `b_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comment_time` datetime(6) NULL DEFAULT NULL,
  `like_count` int(11) NOT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_comment_thing_id_57ab492b_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_comment_user_id_46f0670f_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_comment_thing_id_57ab492b_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_comment_user_id_46f0670f_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_comment
-- ----------------------------
INSERT INTO `b_comment` VALUES (1, '111', '2024-06-15 17:57:54.627181', 0, 7, 2);
INSERT INTO `b_comment` VALUES (2, '2222', '2024-06-15 17:57:56.040796', 0, 7, 2);
INSERT INTO `b_comment` VALUES (3, '322', '2024-06-15 17:59:04.770523', 0, 10, 2);
INSERT INTO `b_comment` VALUES (4, '112345', '2024-06-15 17:59:07.034992', 0, 10, 2);

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
-- Table structure for b_feedback
-- ----------------------------
DROP TABLE IF EXISTS `b_feedback`;
CREATE TABLE `b_feedback`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_feedback
-- ----------------------------
INSERT INTO `b_feedback` VALUES (1, '测试反馈221111', '啊啊啊啊啊', '刘德华', '333011@gmail.com', '3221534', '2024-06-15 18:00:39.831161');
INSERT INTO `b_feedback` VALUES (2, '测试反馈23333', '哈哈哈哈哈哈8888', '雯雯', '33333@gmail.com', '33331651534', '2024-06-15 18:00:57.176892');

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
INSERT INTO `b_login_log` VALUES (1, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-15 17:20:26.683658');
INSERT INTO `b_login_log` VALUES (2, 'ddd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-15 17:45:45.326303');
INSERT INTO `b_login_log` VALUES (3, 'admin123', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-15 18:01:10.249641');
INSERT INTO `b_login_log` VALUES (4, 'admin123', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-15 18:05:27.880526');

-- ----------------------------
-- Table structure for b_notice
-- ----------------------------
DROP TABLE IF EXISTS `b_notice`;
CREATE TABLE `b_notice`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_notice
-- ----------------------------
INSERT INTO `b_notice` VALUES (1, '测试通知', '哈哈哈哈哈哈哈123', '2024-06-15 17:59:49.045054');
INSERT INTO `b_notice` VALUES (2, '测试新品', '哈哈哈哈887776', '2024-06-15 18:00:00.811670');

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
) ENGINE = InnoDB AUTO_INCREMENT = 748 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_op_log
-- ----------------------------
INSERT INTO `b_op_log` VALUES (1, '127.0.0.1', '2024-06-15 17:18:24.309798', '/myapp/index/classification/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (2, '127.0.0.1', '2024-06-15 17:18:24.324916', '/myapp/index/classification/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (3, '127.0.0.1', '2024-06-15 17:18:24.347854', '/myapp/index/classification/list', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (4, '127.0.0.1', '2024-06-15 17:18:29.777166', '/myapp/index/classification/list', 'GET', NULL, '5507');
INSERT INTO `b_op_log` VALUES (5, '127.0.0.1', '2024-06-15 17:19:53.313720', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (6, '127.0.0.1', '2024-06-15 17:19:53.313720', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (7, '127.0.0.1', '2024-06-15 17:20:26.693788', '/myapp/admin/adminLogin', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (8, '127.0.0.1', '2024-06-15 17:20:27.009820', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (9, '127.0.0.1', '2024-06-15 17:20:27.015137', '/myapp/admin/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (10, '127.0.0.1', '2024-06-15 17:23:56.454573', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (11, '127.0.0.1', '2024-06-15 17:23:56.451905', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (12, '127.0.0.1', '2024-06-15 17:23:57.333670', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (13, '127.0.0.1', '2024-06-15 17:23:58.037889', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (14, '127.0.0.1', '2024-06-15 17:23:58.039230', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (15, '127.0.0.1', '2024-06-15 17:24:09.735378', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (16, '127.0.0.1', '2024-06-15 17:24:15.490810', '/myapp/admin/classification/create', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (17, '127.0.0.1', '2024-06-15 17:24:15.563506', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (18, '127.0.0.1', '2024-06-15 17:24:20.626184', '/myapp/admin/classification/create', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (19, '127.0.0.1', '2024-06-15 17:24:20.660844', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (20, '127.0.0.1', '2024-06-15 17:24:35.023206', '/myapp/admin/classification/create', 'POST', NULL, '56');
INSERT INTO `b_op_log` VALUES (21, '127.0.0.1', '2024-06-15 17:24:35.075373', '/myapp/admin/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (22, '127.0.0.1', '2024-06-15 17:24:49.824775', '/myapp/admin/classification/create', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (23, '127.0.0.1', '2024-06-15 17:24:49.886188', '/myapp/admin/classification/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (24, '127.0.0.1', '2024-06-15 17:24:55.037245', '/myapp/admin/classification/create', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (25, '127.0.0.1', '2024-06-15 17:24:55.098642', '/myapp/admin/classification/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (26, '127.0.0.1', '2024-06-15 17:25:05.562489', '/myapp/admin/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (27, '127.0.0.1', '2024-06-15 17:25:05.565837', '/myapp/admin/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (28, '127.0.0.1', '2024-06-15 17:28:50.304909', '/myapp/admin/thing/create', 'POST', NULL, '633');
INSERT INTO `b_op_log` VALUES (29, '127.0.0.1', '2024-06-15 17:28:50.444651', '/myapp/admin/thing/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (30, '127.0.0.1', '2024-06-15 17:30:40.404514', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (31, '127.0.0.1', '2024-06-15 17:30:41.171256', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (32, '127.0.0.1', '2024-06-15 17:30:41.310999', '/myapp/admin/classification/list', 'GET', NULL, '151');
INSERT INTO `b_op_log` VALUES (33, '127.0.0.1', '2024-06-15 17:31:04.623767', '/upload/cover/1718443681189.jpeg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (34, '127.0.0.1', '2024-06-15 17:31:11.222860', '/myapp/admin/thing/update', 'POST', NULL, '53');
INSERT INTO `b_op_log` VALUES (35, '127.0.0.1', '2024-06-15 17:31:11.513002', '/myapp/admin/thing/list', 'GET', NULL, '198');
INSERT INTO `b_op_log` VALUES (36, '127.0.0.1', '2024-06-15 17:31:42.193170', '/myapp/admin/thing/update', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (37, '127.0.0.1', '2024-06-15 17:31:42.431392', '/myapp/admin/thing/list', 'GET', NULL, '168');
INSERT INTO `b_op_log` VALUES (38, '127.0.0.1', '2024-06-15 17:32:11.358752', '/myapp/admin/thing/update', 'POST', NULL, '60');
INSERT INTO `b_op_log` VALUES (39, '127.0.0.1', '2024-06-15 17:32:11.631332', '/myapp/admin/thing/list', 'GET', NULL, '202');
INSERT INTO `b_op_log` VALUES (40, '127.0.0.1', '2024-06-15 17:32:31.791254', '/myapp/admin/thing/update', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (41, '127.0.0.1', '2024-06-15 17:32:32.057890', '/myapp/admin/thing/list', 'GET', NULL, '170');
INSERT INTO `b_op_log` VALUES (42, '127.0.0.1', '2024-06-15 17:32:54.723372', '/myapp/admin/thing/update', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (43, '127.0.0.1', '2024-06-15 17:32:54.951839', '/myapp/admin/thing/list', 'GET', NULL, '135');
INSERT INTO `b_op_log` VALUES (44, '127.0.0.1', '2024-06-15 17:33:15.486213', '/myapp/admin/thing/update', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (45, '127.0.0.1', '2024-06-15 17:33:15.746264', '/myapp/admin/thing/list', 'GET', NULL, '188');
INSERT INTO `b_op_log` VALUES (46, '127.0.0.1', '2024-06-15 17:33:43.012976', '/myapp/admin/thing/update', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (47, '127.0.0.1', '2024-06-15 17:33:43.240375', '/myapp/admin/thing/list', 'GET', NULL, '144');
INSERT INTO `b_op_log` VALUES (48, '127.0.0.1', '2024-06-15 17:33:50.245454', '/myapp/admin/thing/update', 'POST', NULL, '65');
INSERT INTO `b_op_log` VALUES (49, '127.0.0.1', '2024-06-15 17:33:50.479613', '/myapp/admin/thing/list', 'GET', NULL, '162');
INSERT INTO `b_op_log` VALUES (50, '127.0.0.1', '2024-06-15 17:34:01.059071', '/myapp/admin/thing/update', 'POST', NULL, '53');
INSERT INTO `b_op_log` VALUES (51, '127.0.0.1', '2024-06-15 17:34:01.340448', '/myapp/admin/thing/list', 'GET', NULL, '214');
INSERT INTO `b_op_log` VALUES (52, '127.0.0.1', '2024-06-15 17:34:14.946599', '/myapp/admin/thing/update', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (53, '127.0.0.1', '2024-06-15 17:34:15.128913', '/myapp/admin/thing/list', 'GET', NULL, '134');
INSERT INTO `b_op_log` VALUES (54, '127.0.0.1', '2024-06-15 17:34:25.658033', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (55, '127.0.0.1', '2024-06-15 17:34:27.404123', '/myapp/admin/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (56, '127.0.0.1', '2024-06-15 17:34:27.529717', '/myapp/admin/classification/list', 'GET', NULL, '146');
INSERT INTO `b_op_log` VALUES (57, '127.0.0.1', '2024-06-15 17:35:37.156425', '/myapp/admin/thing/update', 'POST', NULL, '66');
INSERT INTO `b_op_log` VALUES (58, '127.0.0.1', '2024-06-15 17:35:37.407665', '/myapp/admin/thing/list', 'GET', NULL, '156');
INSERT INTO `b_op_log` VALUES (59, '127.0.0.1', '2024-06-15 17:35:41.430407', '/myapp/admin/thing/update', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (60, '127.0.0.1', '2024-06-15 17:35:41.662676', '/myapp/admin/thing/list', 'GET', NULL, '142');
INSERT INTO `b_op_log` VALUES (61, '127.0.0.1', '2024-06-15 17:35:48.744662', '/myapp/admin/thing/update', 'POST', NULL, '68');
INSERT INTO `b_op_log` VALUES (62, '127.0.0.1', '2024-06-15 17:35:49.004258', '/myapp/admin/thing/list', 'GET', NULL, '186');
INSERT INTO `b_op_log` VALUES (63, '127.0.0.1', '2024-06-15 17:35:52.564269', '/myapp/admin/thing/update', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (64, '127.0.0.1', '2024-06-15 17:35:52.865445', '/myapp/admin/thing/list', 'GET', NULL, '200');
INSERT INTO `b_op_log` VALUES (65, '127.0.0.1', '2024-06-15 17:35:56.145996', '/myapp/admin/thing/update', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (66, '127.0.0.1', '2024-06-15 17:35:56.436493', '/myapp/admin/thing/list', 'GET', NULL, '168');
INSERT INTO `b_op_log` VALUES (67, '127.0.0.1', '2024-06-15 17:35:59.048931', '/myapp/admin/thing/update', 'POST', NULL, '56');
INSERT INTO `b_op_log` VALUES (68, '127.0.0.1', '2024-06-15 17:35:59.254109', '/myapp/admin/thing/list', 'GET', NULL, '150');
INSERT INTO `b_op_log` VALUES (69, '127.0.0.1', '2024-06-15 17:36:01.809029', '/myapp/admin/thing/update', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (70, '127.0.0.1', '2024-06-15 17:36:02.079747', '/myapp/admin/thing/list', 'GET', NULL, '186');
INSERT INTO `b_op_log` VALUES (71, '127.0.0.1', '2024-06-15 17:36:05.198449', '/myapp/admin/thing/update', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (72, '127.0.0.1', '2024-06-15 17:36:05.434525', '/myapp/admin/thing/list', 'GET', NULL, '162');
INSERT INTO `b_op_log` VALUES (73, '127.0.0.1', '2024-06-15 17:36:08.449346', '/myapp/admin/thing/update', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (74, '127.0.0.1', '2024-06-15 17:36:08.716237', '/myapp/admin/thing/list', 'GET', NULL, '186');
INSERT INTO `b_op_log` VALUES (75, '127.0.0.1', '2024-06-15 17:36:11.608893', '/myapp/admin/thing/update', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (76, '127.0.0.1', '2024-06-15 17:36:11.851634', '/myapp/admin/thing/list', 'GET', NULL, '150');
INSERT INTO `b_op_log` VALUES (77, '127.0.0.1', '2024-06-15 17:36:15.863398', '/myapp/admin/thing/update', 'POST', NULL, '66');
INSERT INTO `b_op_log` VALUES (78, '127.0.0.1', '2024-06-15 17:36:16.085821', '/myapp/admin/thing/list', 'GET', NULL, '175');
INSERT INTO `b_op_log` VALUES (79, '127.0.0.1', '2024-06-15 17:36:18.762014', '/myapp/admin/thing/update', 'POST', NULL, '59');
INSERT INTO `b_op_log` VALUES (80, '127.0.0.1', '2024-06-15 17:36:18.970933', '/myapp/admin/thing/list', 'GET', NULL, '149');
INSERT INTO `b_op_log` VALUES (81, '127.0.0.1', '2024-06-15 17:36:25.465019', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (82, '127.0.0.1', '2024-06-15 17:36:25.479566', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (83, '127.0.0.1', '2024-06-15 17:36:25.563460', '/myapp/index/thing/list', 'GET', NULL, '111');
INSERT INTO `b_op_log` VALUES (84, '127.0.0.1', '2024-06-15 17:36:25.629802', '/upload/cover/1718443681189.jpeg', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (85, '127.0.0.1', '2024-06-15 17:36:25.661889', '/upload/cover/1718443681189.jpeg', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (86, '127.0.0.1', '2024-06-15 17:36:34.662736', '/myapp/admin/thing/update', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (87, '127.0.0.1', '2024-06-15 17:36:34.905517', '/myapp/admin/thing/list', 'GET', NULL, '163');
INSERT INTO `b_op_log` VALUES (88, '127.0.0.1', '2024-06-15 17:36:40.900641', '/myapp/admin/thing/update', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (89, '127.0.0.1', '2024-06-15 17:36:41.146418', '/myapp/admin/thing/list', 'GET', NULL, '156');
INSERT INTO `b_op_log` VALUES (90, '127.0.0.1', '2024-06-15 17:36:48.995109', '/myapp/admin/thing/update', 'POST', NULL, '69');
INSERT INTO `b_op_log` VALUES (91, '127.0.0.1', '2024-06-15 17:36:49.208402', '/myapp/admin/thing/list', 'GET', NULL, '146');
INSERT INTO `b_op_log` VALUES (92, '127.0.0.1', '2024-06-15 17:36:55.106063', '/myapp/admin/thing/update', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (93, '127.0.0.1', '2024-06-15 17:36:55.315367', '/myapp/admin/thing/list', 'GET', NULL, '150');
INSERT INTO `b_op_log` VALUES (94, '127.0.0.1', '2024-06-15 17:37:02.037419', '/myapp/admin/thing/update', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (95, '127.0.0.1', '2024-06-15 17:37:02.254913', '/myapp/admin/thing/list', 'GET', NULL, '147');
INSERT INTO `b_op_log` VALUES (96, '127.0.0.1', '2024-06-15 17:37:10.330994', '/myapp/admin/thing/update', 'POST', NULL, '51');
INSERT INTO `b_op_log` VALUES (97, '127.0.0.1', '2024-06-15 17:37:10.558453', '/myapp/admin/thing/list', 'GET', NULL, '158');
INSERT INTO `b_op_log` VALUES (98, '127.0.0.1', '2024-06-15 17:37:16.641573', '/myapp/admin/thing/update', 'POST', NULL, '51');
INSERT INTO `b_op_log` VALUES (99, '127.0.0.1', '2024-06-15 17:37:16.867563', '/myapp/admin/thing/list', 'GET', NULL, '141');
INSERT INTO `b_op_log` VALUES (100, '127.0.0.1', '2024-06-15 17:37:23.558362', '/myapp/admin/thing/update', 'POST', NULL, '76');
INSERT INTO `b_op_log` VALUES (101, '127.0.0.1', '2024-06-15 17:37:23.836073', '/myapp/admin/thing/list', 'GET', NULL, '201');
INSERT INTO `b_op_log` VALUES (102, '127.0.0.1', '2024-06-15 17:37:31.258478', '/myapp/admin/thing/update', 'POST', NULL, '54');
INSERT INTO `b_op_log` VALUES (103, '127.0.0.1', '2024-06-15 17:37:31.480187', '/myapp/admin/thing/list', 'GET', NULL, '151');
INSERT INTO `b_op_log` VALUES (104, '127.0.0.1', '2024-06-15 17:37:40.123094', '/myapp/admin/thing/update', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (105, '127.0.0.1', '2024-06-15 17:37:40.366488', '/myapp/admin/thing/list', 'GET', NULL, '199');
INSERT INTO `b_op_log` VALUES (106, '127.0.0.1', '2024-06-15 17:37:43.120999', '/myapp/index/thing/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (107, '127.0.0.1', '2024-06-15 17:37:43.220968', '/upload/cover/1718444229000.jpeg', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (108, '127.0.0.1', '2024-06-15 17:37:43.248675', '/upload/cover/1718444229000.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (109, '127.0.0.1', '2024-06-15 17:37:43.248675', '/upload/cover/1718444229000.jpeg', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (110, '127.0.0.1', '2024-06-15 17:37:43.250521', '/upload/cover/1718444229000.jpeg', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (111, '127.0.0.1', '2024-06-15 17:37:43.251807', '/upload/cover/1718444229000.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (112, '127.0.0.1', '2024-06-15 17:37:43.270305', '/upload/cover/1718444235606.jpeg', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (113, '127.0.0.1', '2024-06-15 17:37:43.287146', '/upload/cover/1718444229000.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (114, '127.0.0.1', '2024-06-15 17:37:43.322883', '/upload/cover/1718444250088.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (115, '127.0.0.1', '2024-06-15 17:37:43.326092', '/upload/cover/1718444250088.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (116, '127.0.0.1', '2024-06-15 17:37:43.338382', '/upload/cover/1718444259145.jpeg', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (117, '127.0.0.1', '2024-06-15 17:37:58.155443', '/myapp/admin/thing/list', 'GET', NULL, '146');
INSERT INTO `b_op_log` VALUES (118, '127.0.0.1', '2024-06-15 17:38:02.180627', '/myapp/admin/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (119, '127.0.0.1', '2024-06-15 17:38:05.191615', '/myapp/admin/thing/list', 'GET', NULL, '146');
INSERT INTO `b_op_log` VALUES (120, '127.0.0.1', '2024-06-15 17:38:12.979846', '/myapp/admin/thing/update', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (121, '127.0.0.1', '2024-06-15 17:38:13.214441', '/myapp/admin/thing/list', 'GET', NULL, '154');
INSERT INTO `b_op_log` VALUES (122, '127.0.0.1', '2024-06-15 17:38:52.013144', '/myapp/index/thing/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (123, '127.0.0.1', '2024-06-15 17:38:52.596443', '/myapp/index/thing/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (124, '127.0.0.1', '2024-06-15 17:38:53.081878', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (125, '127.0.0.1', '2024-06-15 17:38:53.544042', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (126, '127.0.0.1', '2024-06-15 17:38:54.004641', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (127, '127.0.0.1', '2024-06-15 17:38:55.411904', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (128, '127.0.0.1', '2024-06-15 17:38:55.463777', '/upload/cover/1718444242371.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (129, '127.0.0.1', '2024-06-15 17:38:55.466144', '/upload/cover/1718444242371.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (130, '127.0.0.1', '2024-06-15 17:38:56.299441', '/myapp/index/thing/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (131, '127.0.0.1', '2024-06-15 17:38:56.364053', '/upload/cover/1718444220973.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (132, '127.0.0.1', '2024-06-15 17:38:56.364053', '/upload/cover/1718444220973.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (133, '127.0.0.1', '2024-06-15 17:38:56.364053', '/upload/cover/1718444220973.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (134, '127.0.0.1', '2024-06-15 17:38:56.395890', '/upload/cover/1718444220973.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (135, '127.0.0.1', '2024-06-15 17:38:56.395890', '/upload/cover/1718444220973.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (136, '127.0.0.1', '2024-06-15 17:38:56.395890', '/upload/cover/1718444220973.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (137, '127.0.0.1', '2024-06-15 17:38:56.408407', '/upload/cover/1718444199808.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (138, '127.0.0.1', '2024-06-15 17:38:56.412566', '/upload/cover/1718444199808.jpeg', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (139, '127.0.0.1', '2024-06-15 17:38:57.265194', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (140, '127.0.0.1', '2024-06-15 17:38:58.781064', '/myapp/index/thing/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (141, '127.0.0.1', '2024-06-15 17:40:07.881882', '/myapp/index/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (142, '127.0.0.1', '2024-06-15 17:40:07.889576', '/myapp/index/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (143, '127.0.0.1', '2024-06-15 17:40:07.942306', '/myapp/index/classification/list', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (144, '127.0.0.1', '2024-06-15 17:40:07.995915', '/myapp/index/classification/list', 'GET', NULL, '125');
INSERT INTO `b_op_log` VALUES (145, '127.0.0.1', '2024-06-15 17:40:21.724495', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (146, '127.0.0.1', '2024-06-15 17:40:21.724495', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (147, '127.0.0.1', '2024-06-15 17:40:21.791797', '/myapp/index/user/info', 'GET', NULL, '85');
INSERT INTO `b_op_log` VALUES (148, '127.0.0.1', '2024-06-15 17:40:21.850548', '/myapp/index/user/info', 'GET', NULL, '126');
INSERT INTO `b_op_log` VALUES (149, '127.0.0.1', '2024-06-15 17:40:49.968147', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (150, '127.0.0.1', '2024-06-15 17:40:49.968147', '/myapp/index/user/info', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (151, '127.0.0.1', '2024-06-15 17:40:50.041313', '/myapp/index/user/info', 'GET', NULL, '94');
INSERT INTO `b_op_log` VALUES (152, '127.0.0.1', '2024-06-15 17:40:50.118747', '/myapp/index/user/info', 'GET', NULL, '173');
INSERT INTO `b_op_log` VALUES (153, '127.0.0.1', '2024-06-15 17:41:44.719783', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (154, '127.0.0.1', '2024-06-15 17:41:44.753540', '/myapp/index/user/info', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (155, '127.0.0.1', '2024-06-15 17:41:44.802304', '/myapp/index/user/info', 'GET', NULL, '95');
INSERT INTO `b_op_log` VALUES (156, '127.0.0.1', '2024-06-15 17:41:44.880414', '/myapp/index/user/info', 'GET', NULL, '173');
INSERT INTO `b_op_log` VALUES (157, '127.0.0.1', '2024-06-15 17:43:14.592645', '/myapp/index/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (158, '127.0.0.1', '2024-06-15 17:43:14.629877', '/myapp/index/classification/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (159, '127.0.0.1', '2024-06-15 17:43:14.681076', '/myapp/index/classification/list', 'GET', NULL, '102');
INSERT INTO `b_op_log` VALUES (160, '127.0.0.1', '2024-06-15 17:43:14.749304', '/myapp/index/classification/list', 'GET', NULL, '169');
INSERT INTO `b_op_log` VALUES (161, '127.0.0.1', '2024-06-15 17:43:16.124718', '/myapp/index/thing/list', 'GET', NULL, '154');
INSERT INTO `b_op_log` VALUES (162, '127.0.0.1', '2024-06-15 17:43:16.839691', '/myapp/index/thing/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (163, '127.0.0.1', '2024-06-15 17:43:17.443653', '/myapp/index/thing/list', 'GET', NULL, '115');
INSERT INTO `b_op_log` VALUES (164, '127.0.0.1', '2024-06-15 17:43:18.029971', '/myapp/index/thing/list', 'GET', NULL, '164');
INSERT INTO `b_op_log` VALUES (165, '127.0.0.1', '2024-06-15 17:43:18.677945', '/myapp/index/thing/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (166, '127.0.0.1', '2024-06-15 17:43:37.282166', '/myapp/admin/thing/update', 'POST', NULL, '60');
INSERT INTO `b_op_log` VALUES (167, '127.0.0.1', '2024-06-15 17:43:37.506248', '/myapp/admin/thing/list', 'GET', NULL, '144');
INSERT INTO `b_op_log` VALUES (168, '127.0.0.1', '2024-06-15 17:43:38.726680', '/upload/cover/1718444193559.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (169, '127.0.0.1', '2024-06-15 17:43:41.961987', '/myapp/admin/thing/update', 'POST', NULL, '62');
INSERT INTO `b_op_log` VALUES (170, '127.0.0.1', '2024-06-15 17:43:42.193079', '/myapp/admin/thing/list', 'GET', NULL, '143');
INSERT INTO `b_op_log` VALUES (171, '127.0.0.1', '2024-06-15 17:43:43.430285', '/upload/cover/1718444199808.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (172, '127.0.0.1', '2024-06-15 17:43:46.777764', '/myapp/admin/thing/update', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (173, '127.0.0.1', '2024-06-15 17:43:47.011051', '/myapp/admin/thing/list', 'GET', NULL, '155');
INSERT INTO `b_op_log` VALUES (174, '127.0.0.1', '2024-06-15 17:43:48.458839', '/upload/cover/1718444213995.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (175, '127.0.0.1', '2024-06-15 17:43:54.528581', '/myapp/admin/thing/update', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (176, '127.0.0.1', '2024-06-15 17:43:54.766415', '/myapp/admin/thing/list', 'GET', NULL, '165');
INSERT INTO `b_op_log` VALUES (177, '127.0.0.1', '2024-06-15 17:43:56.617887', '/upload/cover/1718444220973.jpeg', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (178, '127.0.0.1', '2024-06-15 17:43:59.248013', '/myapp/admin/thing/update', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (179, '127.0.0.1', '2024-06-15 17:43:59.507536', '/myapp/admin/thing/list', 'GET', NULL, '173');
INSERT INTO `b_op_log` VALUES (180, '127.0.0.1', '2024-06-15 17:44:00.986460', '/upload/cover/1718444229000.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (181, '127.0.0.1', '2024-06-15 17:44:04.223462', '/myapp/admin/thing/update', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (182, '127.0.0.1', '2024-06-15 17:44:04.427579', '/myapp/admin/thing/list', 'GET', NULL, '131');
INSERT INTO `b_op_log` VALUES (183, '127.0.0.1', '2024-06-15 17:44:05.978378', '/upload/cover/1718444250088.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (184, '127.0.0.1', '2024-06-15 17:44:10.216531', '/myapp/admin/thing/update', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (185, '127.0.0.1', '2024-06-15 17:44:10.490278', '/myapp/admin/thing/list', 'GET', NULL, '182');
INSERT INTO `b_op_log` VALUES (186, '127.0.0.1', '2024-06-15 17:44:16.480368', '/upload/cover/1718443681189.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (187, '127.0.0.1', '2024-06-15 17:44:20.347228', '/myapp/admin/thing/update', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (188, '127.0.0.1', '2024-06-15 17:44:20.549159', '/myapp/admin/thing/list', 'GET', NULL, '142');
INSERT INTO `b_op_log` VALUES (189, '127.0.0.1', '2024-06-15 17:44:21.716012', '/upload/cover/1718444259145.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (190, '127.0.0.1', '2024-06-15 17:44:24.881185', '/myapp/admin/thing/update', 'POST', NULL, '62');
INSERT INTO `b_op_log` VALUES (191, '127.0.0.1', '2024-06-15 17:44:25.123346', '/myapp/admin/thing/list', 'GET', NULL, '184');
INSERT INTO `b_op_log` VALUES (192, '127.0.0.1', '2024-06-15 17:44:30.463235', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (193, '127.0.0.1', '2024-06-15 17:44:31.021883', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (194, '127.0.0.1', '2024-06-15 17:44:31.168846', '/myapp/admin/classification/list', 'GET', NULL, '167');
INSERT INTO `b_op_log` VALUES (195, '127.0.0.1', '2024-06-15 17:44:35.009317', '/myapp/index/thing/getRecommend', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (196, '127.0.0.1', '2024-06-15 17:44:35.097652', '/myapp/index/thing/getRecommend', 'GET', NULL, '98');
INSERT INTO `b_op_log` VALUES (197, '127.0.0.1', '2024-06-15 17:44:35.164075', '/myapp/index/thing/getRecommend', 'GET', NULL, '155');
INSERT INTO `b_op_log` VALUES (198, '127.0.0.1', '2024-06-15 17:44:35.566348', '/myapp/index/classification/list', 'GET', NULL, '87');
INSERT INTO `b_op_log` VALUES (199, '127.0.0.1', '2024-06-15 17:44:35.614233', '/myapp/index/classification/list', 'GET', NULL, '131');
INSERT INTO `b_op_log` VALUES (200, '127.0.0.1', '2024-06-15 17:44:35.653619', '/myapp/index/classification/list', 'GET', NULL, '172');
INSERT INTO `b_op_log` VALUES (201, '127.0.0.1', '2024-06-15 17:44:35.729048', '/myapp/index/classification/list', 'GET', NULL, '250');
INSERT INTO `b_op_log` VALUES (202, '127.0.0.1', '2024-06-15 17:44:36.449173', '/myapp/index/thing/list', 'GET', NULL, '195');
INSERT INTO `b_op_log` VALUES (203, '127.0.0.1', '2024-06-15 17:44:37.000963', '/myapp/index/thing/list', 'GET', NULL, '157');
INSERT INTO `b_op_log` VALUES (204, '127.0.0.1', '2024-06-15 17:44:37.618313', '/myapp/index/thing/list', 'GET', NULL, '166');
INSERT INTO `b_op_log` VALUES (205, '127.0.0.1', '2024-06-15 17:44:40.269534', '/myapp/index/thing/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (206, '127.0.0.1', '2024-06-15 17:45:02.389427', '/myapp/index/thing/getRecommend', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (207, '127.0.0.1', '2024-06-15 17:45:02.442221', '/myapp/index/thing/getRecommend', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (208, '127.0.0.1', '2024-06-15 17:45:02.612820', '/myapp/index/thing/getRecommend', 'GET', NULL, '239');
INSERT INTO `b_op_log` VALUES (209, '127.0.0.1', '2024-06-15 17:45:02.997174', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (210, '127.0.0.1', '2024-06-15 17:45:03.023262', '/myapp/index/thing/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (211, '127.0.0.1', '2024-06-15 17:45:03.053990', '/myapp/index/thing/list', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (212, '127.0.0.1', '2024-06-15 17:45:03.095574', '/myapp/index/thing/list', 'GET', NULL, '115');
INSERT INTO `b_op_log` VALUES (213, '127.0.0.1', '2024-06-15 17:45:03.798031', '/myapp/index/thing/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (214, '127.0.0.1', '2024-06-15 17:45:04.303856', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (215, '127.0.0.1', '2024-06-15 17:45:05.086231', '/myapp/index/thing/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (216, '127.0.0.1', '2024-06-15 17:45:05.887818', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (217, '127.0.0.1', '2024-06-15 17:45:06.418171', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (218, '127.0.0.1', '2024-06-15 17:45:07.305908', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (219, '127.0.0.1', '2024-06-15 17:45:07.785664', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (220, '127.0.0.1', '2024-06-15 17:45:08.726879', '/myapp/index/thing/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (221, '127.0.0.1', '2024-06-15 17:45:09.351881', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (222, '127.0.0.1', '2024-06-15 17:45:09.902014', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (223, '127.0.0.1', '2024-06-15 17:45:10.884365', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (224, '127.0.0.1', '2024-06-15 17:45:10.951756', '/upload/cover/1718444207716.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (225, '127.0.0.1', '2024-06-15 17:45:10.968023', '/upload/cover/1718444199808.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (226, '127.0.0.1', '2024-06-15 17:45:10.968023', '/upload/cover/1718444199808.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (227, '127.0.0.1', '2024-06-15 17:45:10.968023', '/upload/cover/1718444199808.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (228, '127.0.0.1', '2024-06-15 17:45:11.889058', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (229, '127.0.0.1', '2024-06-15 17:45:12.470631', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (230, '127.0.0.1', '2024-06-15 17:45:12.952323', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (231, '127.0.0.1', '2024-06-15 17:45:13.334352', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (232, '127.0.0.1', '2024-06-15 17:45:14.138160', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (233, '127.0.0.1', '2024-06-15 17:45:14.174025', '/upload/cover/1718444213995.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (234, '127.0.0.1', '2024-06-15 17:45:17.818577', '/myapp/index/thing/list', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (235, '127.0.0.1', '2024-06-15 17:45:17.871198', '/upload/cover/1718444235606.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (236, '127.0.0.1', '2024-06-15 17:45:17.873535', '/upload/cover/1718444235606.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (237, '127.0.0.1', '2024-06-15 17:45:29.466247', '/myapp/admin/ad/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (238, '127.0.0.1', '2024-06-15 17:45:29.506712', '/myapp/admin/ad/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (239, '127.0.0.1', '2024-06-15 17:45:29.524613', '/myapp/admin/ad/list', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (240, '127.0.0.1', '2024-06-15 17:45:29.536804', '/myapp/admin/ad/list', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (241, '127.0.0.1', '2024-06-15 17:45:29.652409', '/myapp/admin/ad/list', 'GET', NULL, '191');
INSERT INTO `b_op_log` VALUES (242, '127.0.0.1', '2024-06-15 17:45:29.667451', '/myapp/admin/ad/list', 'GET', NULL, '191');
INSERT INTO `b_op_log` VALUES (243, '127.0.0.1', '2024-06-15 17:45:32.810187', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (244, '127.0.0.1', '2024-06-15 17:45:32.837943', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (245, '127.0.0.1', '2024-06-15 17:45:32.882969', '/myapp/index/thing/list', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (246, '127.0.0.1', '2024-06-15 17:45:32.902179', '/upload/cover/1718444229000.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (247, '127.0.0.1', '2024-06-15 17:45:41.741703', '/myapp/index/user/register', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (248, '127.0.0.1', '2024-06-15 17:45:45.334738', '/myapp/index/user/login', 'POST', NULL, '65');
INSERT INTO `b_op_log` VALUES (249, '127.0.0.1', '2024-06-15 17:45:45.387382', '/myapp/index/notice/list_api', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (250, '127.0.0.1', '2024-06-15 17:45:45.412866', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (251, '127.0.0.1', '2024-06-15 17:45:45.420797', '/myapp/index/user/info', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (252, '127.0.0.1', '2024-06-15 17:45:45.454433', '/myapp/index/user/info', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (253, '127.0.0.1', '2024-06-15 17:45:46.587805', '/myapp/index/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (254, '127.0.0.1', '2024-06-15 17:45:46.594073', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (255, '127.0.0.1', '2024-06-15 17:45:46.595127', '/myapp/index/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (256, '127.0.0.1', '2024-06-15 17:45:46.604410', '/myapp/index/comment/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (257, '127.0.0.1', '2024-06-15 17:45:46.655184', '/myapp/index/comment/list', 'GET', NULL, '95');
INSERT INTO `b_op_log` VALUES (258, '127.0.0.1', '2024-06-15 17:45:46.687956', '/myapp/index/comment/list', 'GET', NULL, '128');
INSERT INTO `b_op_log` VALUES (259, '127.0.0.1', '2024-06-15 17:45:48.160069', '/myapp/index/thing/addWishUser', 'POST', NULL, '81');
INSERT INTO `b_op_log` VALUES (260, '127.0.0.1', '2024-06-15 17:45:48.254987', '/myapp/index/thing/detail', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (261, '127.0.0.1', '2024-06-15 17:45:48.815117', '/myapp/index/thing/addCollectUser', 'POST', NULL, '59');
INSERT INTO `b_op_log` VALUES (262, '127.0.0.1', '2024-06-15 17:45:48.890918', '/myapp/index/thing/detail', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (263, '127.0.0.1', '2024-06-15 17:47:17.952131', '/myapp/index/thing/rate', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (264, '127.0.0.1', '2024-06-15 17:47:57.237386', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (265, '127.0.0.1', '2024-06-15 17:47:57.237386', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (266, '127.0.0.1', '2024-06-15 17:47:57.251333', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (267, '127.0.0.1', '2024-06-15 17:47:57.297880', '/myapp/index/thing/list', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (268, '127.0.0.1', '2024-06-15 17:47:57.352822', '/upload/cover/1718444235606.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (269, '127.0.0.1', '2024-06-15 17:47:57.356844', '/upload/cover/1718444235606.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (270, '127.0.0.1', '2024-06-15 17:47:57.364463', '/upload/cover/1718444242371.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (271, '127.0.0.1', '2024-06-15 17:47:57.371086', '/upload/cover/1718444250088.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (272, '127.0.0.1', '2024-06-15 17:47:57.373026', '/upload/cover/1718444242371.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (273, '127.0.0.1', '2024-06-15 17:47:57.383433', '/upload/cover/1718444250088.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (274, '127.0.0.1', '2024-06-15 17:48:57.220901', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (275, '127.0.0.1', '2024-06-15 17:48:57.237418', '/myapp/index/user/info', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (276, '127.0.0.1', '2024-06-15 17:48:57.245039', '/myapp/index/user/info', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (277, '127.0.0.1', '2024-06-15 17:48:57.280657', '/myapp/index/user/info', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (278, '127.0.0.1', '2024-06-15 17:48:57.322267', '/upload/cover/1718443681189.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (279, '127.0.0.1', '2024-06-15 17:48:57.323781', '/upload/cover/1718443681189.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (280, '127.0.0.1', '2024-06-15 17:48:57.339184', '/upload/cover/1718443681189.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (281, '127.0.0.1', '2024-06-15 17:48:57.355267', '/upload/cover/1718444207716.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (282, '127.0.0.1', '2024-06-15 17:48:57.356269', '/upload/cover/1718444259145.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (283, '127.0.0.1', '2024-06-15 17:48:58.284420', '/myapp/index/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (284, '127.0.0.1', '2024-06-15 17:48:58.285204', '/myapp/index/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (285, '127.0.0.1', '2024-06-15 17:48:58.288179', '/myapp/index/comment/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (286, '127.0.0.1', '2024-06-15 17:48:58.304869', '/myapp/index/comment/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (287, '127.0.0.1', '2024-06-15 17:48:58.324355', '/myapp/index/comment/list', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (288, '127.0.0.1', '2024-06-15 17:48:58.360668', '/myapp/index/comment/list', 'GET', NULL, '106');
INSERT INTO `b_op_log` VALUES (289, '127.0.0.1', '2024-06-15 17:49:08.105470', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (290, '127.0.0.1', '2024-06-15 17:49:08.108830', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (291, '127.0.0.1', '2024-06-15 17:49:08.122529', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (292, '127.0.0.1', '2024-06-15 17:49:34.058969', '/myapp/admin/ad/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (293, '127.0.0.1', '2024-06-15 17:49:34.063361', '/myapp/admin/ad/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (294, '127.0.0.1', '2024-06-15 17:49:34.076607', '/myapp/admin/ad/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (295, '127.0.0.1', '2024-06-15 17:49:34.081067', '/myapp/admin/ad/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (296, '127.0.0.1', '2024-06-15 17:49:34.123526', '/myapp/admin/ad/list', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (297, '127.0.0.1', '2024-06-15 17:49:34.141224', '/myapp/admin/ad/list', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (298, '127.0.0.1', '2024-06-15 17:49:36.811348', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (299, '127.0.0.1', '2024-06-15 17:49:36.817587', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (300, '127.0.0.1', '2024-06-15 17:49:36.825285', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (301, '127.0.0.1', '2024-06-15 17:49:36.880421', '/myapp/index/thing/list', 'GET', NULL, '92');
INSERT INTO `b_op_log` VALUES (302, '127.0.0.1', '2024-06-15 17:49:36.943261', '/upload/cover/1718444220973.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (303, '127.0.0.1', '2024-06-15 17:49:36.943261', '/upload/cover/1718444220973.jpeg', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (304, '127.0.0.1', '2024-06-15 17:49:36.957559', '/upload/cover/1718444220973.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (305, '127.0.0.1', '2024-06-15 17:49:36.943261', '/upload/cover/1718444220973.jpeg', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (306, '127.0.0.1', '2024-06-15 17:49:36.957559', '/upload/cover/1718444220973.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (307, '127.0.0.1', '2024-06-15 17:49:36.960858', '/upload/cover/1718444220973.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (308, '127.0.0.1', '2024-06-15 17:49:39.126645', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (309, '127.0.0.1', '2024-06-15 17:49:39.129557', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (310, '127.0.0.1', '2024-06-15 17:49:39.173568', '/myapp/index/user/info', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (311, '127.0.0.1', '2024-06-15 17:49:42.545076', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (312, '127.0.0.1', '2024-06-15 17:49:42.548214', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (313, '127.0.0.1', '2024-06-15 17:49:42.559481', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (314, '127.0.0.1', '2024-06-15 17:49:42.610177', '/myapp/index/thing/list', 'GET', NULL, '86');
INSERT INTO `b_op_log` VALUES (315, '127.0.0.1', '2024-06-15 17:49:47.810827', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (316, '127.0.0.1', '2024-06-15 17:49:47.826407', '/myapp/index/user/info', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (317, '127.0.0.1', '2024-06-15 17:49:47.826407', '/myapp/index/user/info', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (318, '127.0.0.1', '2024-06-15 17:49:57.228153', '/myapp/index/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (319, '127.0.0.1', '2024-06-15 17:49:57.238390', '/myapp/index/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (320, '127.0.0.1', '2024-06-15 17:49:57.238390', '/myapp/index/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (321, '127.0.0.1', '2024-06-15 17:49:57.269715', '/myapp/index/comment/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (322, '127.0.0.1', '2024-06-15 17:49:57.317413', '/myapp/index/comment/list', 'GET', NULL, '105');
INSERT INTO `b_op_log` VALUES (323, '127.0.0.1', '2024-06-15 17:49:57.342149', '/myapp/index/comment/list', 'GET', NULL, '132');
INSERT INTO `b_op_log` VALUES (324, '127.0.0.1', '2024-06-15 17:49:58.497296', '/myapp/index/thing/addWishUser', 'POST', NULL, '62');
INSERT INTO `b_op_log` VALUES (325, '127.0.0.1', '2024-06-15 17:49:58.607665', '/myapp/index/thing/detail', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (326, '127.0.0.1', '2024-06-15 17:49:58.891807', '/myapp/index/thing/addCollectUser', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (327, '127.0.0.1', '2024-06-15 17:49:58.946809', '/myapp/index/thing/detail', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (328, '127.0.0.1', '2024-06-15 17:50:02.156246', '/myapp/index/thing/addWishUser', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (329, '127.0.0.1', '2024-06-15 17:50:02.227044', '/myapp/index/thing/detail', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (330, '127.0.0.1', '2024-06-15 17:50:02.516836', '/myapp/index/thing/addCollectUser', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (331, '127.0.0.1', '2024-06-15 17:50:02.606513', '/myapp/index/thing/detail', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (332, '127.0.0.1', '2024-06-15 17:50:05.264564', '/myapp/index/thing/getWishThingList', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (333, '127.0.0.1', '2024-06-15 17:50:05.275191', '/myapp/index/thing/getWishThingList', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (334, '127.0.0.1', '2024-06-15 17:50:05.299634', '/myapp/index/thing/getWishThingList', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (335, '127.0.0.1', '2024-06-15 17:50:05.309620', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (336, '127.0.0.1', '2024-06-15 17:50:05.314966', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (337, '127.0.0.1', '2024-06-15 17:50:05.342843', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (338, '127.0.0.1', '2024-06-15 17:50:06.258592', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (339, '127.0.0.1', '2024-06-15 17:50:06.870154', '/myapp/index/thing/getWishThingList', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (340, '127.0.0.1', '2024-06-15 17:50:43.995990', '/myapp/index/thing/getWishThingList', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (341, '127.0.0.1', '2024-06-15 17:50:45.756132', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (342, '127.0.0.1', '2024-06-15 17:50:45.785817', '/upload/cover/1718444199808.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (343, '127.0.0.1', '2024-06-15 17:50:45.793846', '/upload/cover/1718444199808.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (344, '127.0.0.1', '2024-06-15 17:50:46.291488', '/myapp/index/thing/getWishThingList', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (345, '127.0.0.1', '2024-06-15 17:50:48.229181', '/myapp/index/thing/detail', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (346, '127.0.0.1', '2024-06-15 17:50:48.236684', '/myapp/index/thing/detail', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (347, '127.0.0.1', '2024-06-15 17:50:48.244719', '/myapp/index/thing/detail', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (348, '127.0.0.1', '2024-06-15 17:50:48.262873', '/myapp/index/thing/detail', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (349, '127.0.0.1', '2024-06-15 17:50:48.298767', '/myapp/index/thing/detail', 'GET', NULL, '96');
INSERT INTO `b_op_log` VALUES (350, '127.0.0.1', '2024-06-15 17:50:48.331260', '/myapp/index/thing/detail', 'GET', NULL, '129');
INSERT INTO `b_op_log` VALUES (351, '127.0.0.1', '2024-06-15 17:50:48.398030', '/upload/cover/1718444207716.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (352, '127.0.0.1', '2024-06-15 17:50:49.582672', '/myapp/index/thing/removeWishUser', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (353, '127.0.0.1', '2024-06-15 17:50:49.619863', '/myapp/index/thing/getWishThingList', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (354, '127.0.0.1', '2024-06-15 17:50:51.130096', '/myapp/index/thing/listUserThing', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (355, '127.0.0.1', '2024-06-15 17:50:51.131950', '/myapp/index/thing/listUserThing', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (356, '127.0.0.1', '2024-06-15 17:50:51.588937', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (357, '127.0.0.1', '2024-06-15 17:50:53.552113', '/myapp/admin/ad/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (358, '127.0.0.1', '2024-06-15 17:50:53.570420', '/myapp/admin/ad/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (359, '127.0.0.1', '2024-06-15 17:50:53.613623', '/myapp/admin/ad/list', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (360, '127.0.0.1', '2024-06-15 17:50:53.633864', '/myapp/admin/ad/list', 'GET', NULL, '91');
INSERT INTO `b_op_log` VALUES (361, '127.0.0.1', '2024-06-15 17:50:53.647020', '/myapp/admin/ad/list', 'GET', NULL, '107');
INSERT INTO `b_op_log` VALUES (362, '127.0.0.1', '2024-06-15 17:50:53.671815', '/myapp/admin/ad/list', 'GET', NULL, '128');
INSERT INTO `b_op_log` VALUES (363, '127.0.0.1', '2024-06-15 17:50:58.887670', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (364, '127.0.0.1', '2024-06-15 17:50:58.899089', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (365, '127.0.0.1', '2024-06-15 17:50:58.915758', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (366, '127.0.0.1', '2024-06-15 17:50:58.951145', '/myapp/index/thing/list', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (367, '127.0.0.1', '2024-06-15 17:50:59.014070', '/upload/cover/1718444229000.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (368, '127.0.0.1', '2024-06-15 17:50:59.015395', '/upload/cover/1718444229000.jpeg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (369, '127.0.0.1', '2024-06-15 17:50:59.015395', '/upload/cover/1718444229000.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (370, '127.0.0.1', '2024-06-15 17:50:59.015395', '/upload/cover/1718444229000.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (371, '127.0.0.1', '2024-06-15 17:50:59.015395', '/upload/cover/1718444229000.jpeg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (372, '127.0.0.1', '2024-06-15 17:50:59.015395', '/upload/cover/1718444229000.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (373, '127.0.0.1', '2024-06-15 17:50:59.046469', '/upload/cover/1718444259145.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (374, '127.0.0.1', '2024-06-15 17:50:59.046469', '/upload/cover/1718444259145.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (375, '127.0.0.1', '2024-06-15 17:51:01.118190', '/myapp/index/comment/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (376, '127.0.0.1', '2024-06-15 17:51:01.147665', '/myapp/index/comment/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (377, '127.0.0.1', '2024-06-15 17:51:01.164295', '/myapp/index/comment/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (378, '127.0.0.1', '2024-06-15 17:51:01.182603', '/myapp/index/comment/list', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (379, '127.0.0.1', '2024-06-15 17:51:01.199870', '/myapp/index/comment/list', 'GET', NULL, '95');
INSERT INTO `b_op_log` VALUES (380, '127.0.0.1', '2024-06-15 17:51:01.232602', '/myapp/index/comment/list', 'GET', NULL, '126');
INSERT INTO `b_op_log` VALUES (381, '127.0.0.1', '2024-06-15 17:51:03.364053', '/myapp/index/thing/addWishUser', 'POST', NULL, '55');
INSERT INTO `b_op_log` VALUES (382, '127.0.0.1', '2024-06-15 17:51:03.403815', '/myapp/index/thing/detail', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (383, '127.0.0.1', '2024-06-15 17:51:03.847064', '/myapp/index/thing/addCollectUser', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (384, '127.0.0.1', '2024-06-15 17:51:03.904531', '/myapp/index/thing/detail', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (385, '127.0.0.1', '2024-06-15 17:51:45.937854', '/myapp/index/thing/getRecommend', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (386, '127.0.0.1', '2024-06-15 17:51:45.950884', '/myapp/index/thing/getRecommend', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (387, '127.0.0.1', '2024-06-15 17:51:45.957914', '/myapp/index/thing/getRecommend', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (388, '127.0.0.1', '2024-06-15 17:51:45.965384', '/myapp/index/thing/getRecommend', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (389, '127.0.0.1', '2024-06-15 17:51:46.012664', '/myapp/index/thing/getRecommend', 'GET', NULL, '88');
INSERT INTO `b_op_log` VALUES (390, '127.0.0.1', '2024-06-15 17:51:46.042331', '/myapp/index/thing/getRecommend', 'GET', NULL, '125');
INSERT INTO `b_op_log` VALUES (391, '127.0.0.1', '2024-06-15 17:51:49.034847', '/myapp/index/thing/rate', 'POST', NULL, '8');
INSERT INTO `b_op_log` VALUES (392, '127.0.0.1', '2024-06-15 17:51:50.669700', '/myapp/index/thing/getRecommend', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (393, '127.0.0.1', '2024-06-15 17:51:50.669700', '/myapp/index/thing/getRecommend', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (394, '127.0.0.1', '2024-06-15 17:51:50.677809', '/myapp/index/thing/getRecommend', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (395, '127.0.0.1', '2024-06-15 17:51:50.684257', '/myapp/index/thing/getRecommend', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (396, '127.0.0.1', '2024-06-15 17:51:50.725815', '/myapp/index/thing/getRecommend', 'GET', NULL, '77');
INSERT INTO `b_op_log` VALUES (397, '127.0.0.1', '2024-06-15 17:51:50.740832', '/myapp/index/thing/getRecommend', 'GET', NULL, '92');
INSERT INTO `b_op_log` VALUES (398, '127.0.0.1', '2024-06-15 17:52:56.094369', '/myapp/index/order/create', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (399, '127.0.0.1', '2024-06-15 17:52:56.640030', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (400, '127.0.0.1', '2024-06-15 17:52:56.642309', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (401, '127.0.0.1', '2024-06-15 17:53:15.046899', '/myapp/index/order/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (402, '127.0.0.1', '2024-06-15 17:53:15.059407', '/myapp/index/order/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (403, '127.0.0.1', '2024-06-15 17:53:15.118864', '/myapp/index/user/info', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (404, '127.0.0.1', '2024-06-15 17:53:15.122793', '/myapp/index/user/info', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (405, '127.0.0.1', '2024-06-15 17:53:15.126470', '/myapp/index/user/info', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (406, '127.0.0.1', '2024-06-15 17:53:15.132647', '/myapp/index/user/info', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (407, '127.0.0.1', '2024-06-15 17:53:42.208028', '/myapp/index/comment/listMyComments', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (408, '127.0.0.1', '2024-06-15 17:53:42.521370', '/myapp/index/order/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (409, '127.0.0.1', '2024-06-15 17:54:03.275180', '/myapp/index/order/cancel_order', 'POST', NULL, '53');
INSERT INTO `b_op_log` VALUES (410, '127.0.0.1', '2024-06-15 17:54:03.323247', '/myapp/index/order/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (411, '127.0.0.1', '2024-06-15 17:54:14.831579', '/myapp/index/thing/getRecommend', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (412, '127.0.0.1', '2024-06-15 17:54:14.841002', '/myapp/index/thing/getRecommend', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (413, '127.0.0.1', '2024-06-15 17:54:14.847027', '/myapp/index/thing/getRecommend', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (414, '127.0.0.1', '2024-06-15 17:54:14.863246', '/myapp/index/thing/getRecommend', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (415, '127.0.0.1', '2024-06-15 17:54:14.913861', '/myapp/index/thing/getRecommend', 'GET', NULL, '88');
INSERT INTO `b_op_log` VALUES (416, '127.0.0.1', '2024-06-15 17:54:14.930802', '/upload/cover/1718443681189.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (417, '127.0.0.1', '2024-06-15 17:54:14.933129', '/upload/cover/1718443681189.jpeg', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (418, '127.0.0.1', '2024-06-15 17:54:14.994567', '/upload/cover/1718444207716.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (419, '127.0.0.1', '2024-06-15 17:54:14.997192', '/upload/cover/1718444207716.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (420, '127.0.0.1', '2024-06-15 17:54:14.998414', '/upload/cover/1718444207716.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (421, '127.0.0.1', '2024-06-15 17:54:26.768186', '/myapp/admin/order/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (422, '127.0.0.1', '2024-06-15 17:54:37.599004', '/myapp/admin/user/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (423, '127.0.0.1', '2024-06-15 17:54:37.781086', '/myapp/admin/order/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (424, '127.0.0.1', '2024-06-15 17:54:54.188918', '/myapp/admin/order/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (425, '127.0.0.1', '2024-06-15 17:55:06.897363', '/myapp/admin/order/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (426, '127.0.0.1', '2024-06-15 17:55:16.592770', '/myapp/admin/order/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (427, '127.0.0.1', '2024-06-15 17:55:51.155566', '/myapp/admin/order/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (428, '127.0.0.1', '2024-06-15 17:55:55.291038', '/myapp/admin/user/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (429, '127.0.0.1', '2024-06-15 17:55:55.822262', '/myapp/admin/order/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (430, '127.0.0.1', '2024-06-15 17:55:58.931510', '/myapp/index/thing/getRecommend', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (431, '127.0.0.1', '2024-06-15 17:55:58.932867', '/myapp/index/thing/getRecommend', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (432, '127.0.0.1', '2024-06-15 17:55:58.969748', '/myapp/index/thing/getRecommend', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (433, '127.0.0.1', '2024-06-15 17:55:59.032910', '/upload/cover/1718444242371.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (434, '127.0.0.1', '2024-06-15 17:55:59.039047', '/upload/cover/1718444242371.jpeg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (435, '127.0.0.1', '2024-06-15 17:55:59.041067', '/upload/cover/1718444242371.jpeg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (436, '127.0.0.1', '2024-06-15 17:55:59.041067', '/upload/cover/1718444242371.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (437, '127.0.0.1', '2024-06-15 17:55:59.041067', '/upload/cover/1718444242371.jpeg', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (438, '127.0.0.1', '2024-06-15 17:55:59.052476', '/upload/cover/1718444242371.jpeg', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (439, '127.0.0.1', '2024-06-15 17:55:59.075379', '/upload/cover/1718444259145.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (440, '127.0.0.1', '2024-06-15 17:55:59.075379', '/upload/cover/1718444259145.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (441, '127.0.0.1', '2024-06-15 17:56:04.525976', '/myapp/index/comment/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (442, '127.0.0.1', '2024-06-15 17:56:04.545889', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (443, '127.0.0.1', '2024-06-15 17:56:04.566589', '/myapp/index/comment/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (444, '127.0.0.1', '2024-06-15 17:56:04.574830', '/myapp/index/comment/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (445, '127.0.0.1', '2024-06-15 17:56:04.625010', '/myapp/index/comment/list', 'GET', NULL, '103');
INSERT INTO `b_op_log` VALUES (446, '127.0.0.1', '2024-06-15 17:56:04.639201', '/myapp/index/comment/list', 'GET', NULL, '117');
INSERT INTO `b_op_log` VALUES (447, '127.0.0.1', '2024-06-15 17:56:04.719866', '/upload/cover/1718444199808.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (448, '127.0.0.1', '2024-06-15 17:56:04.725222', '/upload/cover/1718444199808.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (449, '127.0.0.1', '2024-06-15 17:56:05.875456', '/myapp/index/thing/addWishUser', 'POST', NULL, '51');
INSERT INTO `b_op_log` VALUES (450, '127.0.0.1', '2024-06-15 17:56:05.956979', '/myapp/index/thing/detail', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (451, '127.0.0.1', '2024-06-15 17:56:06.370053', '/myapp/index/thing/addCollectUser', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (452, '127.0.0.1', '2024-06-15 17:56:06.434491', '/myapp/index/thing/detail', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (453, '127.0.0.1', '2024-06-15 17:56:07.239195', '/myapp/index/notice/list_api', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (454, '127.0.0.1', '2024-06-15 17:56:07.257867', '/myapp/index/notice/list_api', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (455, '127.0.0.1', '2024-06-15 17:56:07.263344', '/myapp/index/notice/list_api', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (456, '127.0.0.1', '2024-06-15 17:56:07.287289', '/myapp/index/notice/list_api', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (457, '127.0.0.1', '2024-06-15 17:56:07.319878', '/myapp/index/notice/list_api', 'GET', NULL, '96');
INSERT INTO `b_op_log` VALUES (458, '127.0.0.1', '2024-06-15 17:56:07.350955', '/myapp/index/notice/list_api', 'GET', NULL, '113');
INSERT INTO `b_op_log` VALUES (459, '127.0.0.1', '2024-06-15 17:56:30.075864', '/myapp/index/order/create', 'POST', NULL, '57');
INSERT INTO `b_op_log` VALUES (460, '127.0.0.1', '2024-06-15 17:56:30.497572', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (461, '127.0.0.1', '2024-06-15 17:56:30.502296', '/myapp/index/user/info', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (462, '127.0.0.1', '2024-06-15 17:56:32.808534', '/myapp/admin/user/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (463, '127.0.0.1', '2024-06-15 17:56:33.304966', '/myapp/admin/order/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (464, '127.0.0.1', '2024-06-15 17:56:37.986174', '/myapp/index/thing/getRecommend', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (465, '127.0.0.1', '2024-06-15 17:56:37.992849', '/myapp/index/thing/getRecommend', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (466, '127.0.0.1', '2024-06-15 17:56:38.055334', '/myapp/index/thing/getRecommend', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (467, '127.0.0.1', '2024-06-15 17:56:41.097849', '/myapp/index/thing/detail', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (468, '127.0.0.1', '2024-06-15 17:56:41.111731', '/myapp/index/thing/detail', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (469, '127.0.0.1', '2024-06-15 17:56:41.117685', '/myapp/index/thing/detail', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (470, '127.0.0.1', '2024-06-15 17:56:41.161112', '/myapp/index/thing/detail', 'GET', NULL, '77');
INSERT INTO `b_op_log` VALUES (471, '127.0.0.1', '2024-06-15 17:56:41.194807', '/myapp/index/thing/detail', 'GET', NULL, '110');
INSERT INTO `b_op_log` VALUES (472, '127.0.0.1', '2024-06-15 17:56:41.219397', '/myapp/index/thing/detail', 'GET', NULL, '135');
INSERT INTO `b_op_log` VALUES (473, '127.0.0.1', '2024-06-15 17:56:42.259033', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (474, '127.0.0.1', '2024-06-15 17:56:42.276268', '/myapp/index/user/info', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (475, '127.0.0.1', '2024-06-15 17:56:42.291718', '/myapp/index/user/info', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (476, '127.0.0.1', '2024-06-15 17:56:42.295765', '/myapp/index/user/info', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (477, '127.0.0.1', '2024-06-15 17:56:42.340028', '/myapp/index/user/info', 'GET', NULL, '103');
INSERT INTO `b_op_log` VALUES (478, '127.0.0.1', '2024-06-15 17:56:42.353581', '/myapp/index/user/info', 'GET', NULL, '119');
INSERT INTO `b_op_log` VALUES (479, '127.0.0.1', '2024-06-15 17:57:02.743230', '/myapp/index/order/create', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (480, '127.0.0.1', '2024-06-15 17:57:02.854608', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (481, '127.0.0.1', '2024-06-15 17:57:02.861450', '/myapp/index/user/info', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (482, '127.0.0.1', '2024-06-15 17:57:04.846093', '/myapp/admin/user/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (483, '127.0.0.1', '2024-06-15 17:57:05.296517', '/myapp/admin/order/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (484, '127.0.0.1', '2024-06-15 17:57:20.562077', '/myapp/index/order/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (485, '127.0.0.1', '2024-06-15 17:57:20.588226', '/myapp/index/order/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (486, '127.0.0.1', '2024-06-15 17:57:20.633112', '/myapp/index/user/info', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (487, '127.0.0.1', '2024-06-15 17:57:20.650196', '/myapp/index/user/info', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (488, '127.0.0.1', '2024-06-15 17:57:20.661239', '/myapp/index/user/info', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (489, '127.0.0.1', '2024-06-15 17:57:20.683297', '/myapp/index/user/info', 'GET', NULL, '91');
INSERT INTO `b_op_log` VALUES (490, '127.0.0.1', '2024-06-15 17:57:29.069643', '/myapp/admin/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (491, '127.0.0.1', '2024-06-15 17:57:29.184579', '/myapp/admin/thing/list', 'GET', NULL, '132');
INSERT INTO `b_op_log` VALUES (492, '127.0.0.1', '2024-06-15 17:57:29.883512', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (493, '127.0.0.1', '2024-06-15 17:57:42.888319', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (494, '127.0.0.1', '2024-06-15 17:57:43.059341', '/myapp/admin/classification/list', 'GET', NULL, '187');
INSERT INTO `b_op_log` VALUES (495, '127.0.0.1', '2024-06-15 17:57:43.455360', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (496, '127.0.0.1', '2024-06-15 17:57:44.567443', '/myapp/admin/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (497, '127.0.0.1', '2024-06-15 17:57:45.881084', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (498, '127.0.0.1', '2024-06-15 17:57:50.560521', '/myapp/index/thing/detail', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (499, '127.0.0.1', '2024-06-15 17:57:50.556362', '/myapp/index/thing/detail', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (500, '127.0.0.1', '2024-06-15 17:57:50.564736', '/myapp/index/thing/detail', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (501, '127.0.0.1', '2024-06-15 17:57:50.597098', '/myapp/index/thing/detail', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (502, '127.0.0.1', '2024-06-15 17:57:50.649636', '/myapp/index/thing/detail', 'GET', NULL, '104');
INSERT INTO `b_op_log` VALUES (503, '127.0.0.1', '2024-06-15 17:57:50.664856', '/myapp/index/thing/detail', 'GET', NULL, '115');
INSERT INTO `b_op_log` VALUES (504, '127.0.0.1', '2024-06-15 17:57:50.699300', '/upload/cover/1718443681189.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (505, '127.0.0.1', '2024-06-15 17:57:54.649789', '/myapp/index/comment/create', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (506, '127.0.0.1', '2024-06-15 17:57:54.709886', '/myapp/index/comment/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (507, '127.0.0.1', '2024-06-15 17:57:56.055700', '/myapp/index/comment/create', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (508, '127.0.0.1', '2024-06-15 17:57:56.099362', '/myapp/index/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (509, '127.0.0.1', '2024-06-15 17:57:57.598883', '/myapp/index/comment/create', 'POST', NULL, '0');
INSERT INTO `b_op_log` VALUES (510, '127.0.0.1', '2024-06-15 17:58:00.113740', '/myapp/admin/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (511, '127.0.0.1', '2024-06-15 17:58:01.013238', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (512, '127.0.0.1', '2024-06-15 17:58:01.616267', '/myapp/admin/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (513, '127.0.0.1', '2024-06-15 17:58:15.084537', '/myapp/admin/comment/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (514, '127.0.0.1', '2024-06-15 17:58:18.017610', '/myapp/admin/user/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (515, '127.0.0.1', '2024-06-15 17:58:29.643476', '/myapp/admin/user/create', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (516, '127.0.0.1', '2024-06-15 17:58:29.696988', '/myapp/admin/user/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (517, '127.0.0.1', '2024-06-15 17:58:45.370150', '/myapp/admin/user/create', 'POST', NULL, '55');
INSERT INTO `b_op_log` VALUES (518, '127.0.0.1', '2024-06-15 17:58:45.441175', '/myapp/admin/user/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (519, '127.0.0.1', '2024-06-15 17:58:51.453144', '/myapp/admin/user/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (520, '127.0.0.1', '2024-06-15 17:58:52.601857', '/myapp/admin/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (521, '127.0.0.1', '2024-06-15 17:58:53.251948', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (522, '127.0.0.1', '2024-06-15 17:58:59.341559', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (523, '127.0.0.1', '2024-06-15 17:58:59.353599', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (524, '127.0.0.1', '2024-06-15 17:58:59.375002', '/myapp/index/comment/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (525, '127.0.0.1', '2024-06-15 17:58:59.413221', '/myapp/index/comment/list', 'GET', NULL, '92');
INSERT INTO `b_op_log` VALUES (526, '127.0.0.1', '2024-06-15 17:58:59.445383', '/myapp/index/comment/list', 'GET', NULL, '116');
INSERT INTO `b_op_log` VALUES (527, '127.0.0.1', '2024-06-15 17:58:59.481477', '/upload/cover/1718444250088.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (528, '127.0.0.1', '2024-06-15 17:58:59.490972', '/upload/cover/1718444250088.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (529, '127.0.0.1', '2024-06-15 17:58:59.545646', '/upload/cover/1718444220973.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (530, '127.0.0.1', '2024-06-15 17:58:59.545646', '/upload/cover/1718444220973.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (531, '127.0.0.1', '2024-06-15 17:58:59.545646', '/upload/cover/1718444220973.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (532, '127.0.0.1', '2024-06-15 17:59:04.786006', '/myapp/index/comment/create', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (533, '127.0.0.1', '2024-06-15 17:59:04.822203', '/myapp/index/comment/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (534, '127.0.0.1', '2024-06-15 17:59:07.037402', '/myapp/index/comment/create', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (535, '127.0.0.1', '2024-06-15 17:59:07.084599', '/myapp/index/comment/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (536, '127.0.0.1', '2024-06-15 17:59:09.156365', '/myapp/admin/comment/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (537, '127.0.0.1', '2024-06-15 17:59:13.777681', '/myapp/admin/user/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (538, '127.0.0.1', '2024-06-15 17:59:14.255354', '/myapp/admin/order/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (539, '127.0.0.1', '2024-06-15 17:59:15.899865', '/myapp/admin/ad/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (540, '127.0.0.1', '2024-06-15 17:59:26.182077', '/myapp/admin/ad/create', 'POST', NULL, '329');
INSERT INTO `b_op_log` VALUES (541, '127.0.0.1', '2024-06-15 17:59:26.250477', '/myapp/admin/ad/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (542, '127.0.0.1', '2024-06-15 17:59:26.337033', '/upload/ad/1718445563484.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (543, '127.0.0.1', '2024-06-15 17:59:35.073196', '/myapp/admin/ad/create', 'POST', NULL, '59');
INSERT INTO `b_op_log` VALUES (544, '127.0.0.1', '2024-06-15 17:59:35.130300', '/myapp/admin/ad/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (545, '127.0.0.1', '2024-06-15 17:59:35.264982', '/upload/ad/1718445572277.jpeg', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (546, '127.0.0.1', '2024-06-15 17:59:37.187440', '/myapp/admin/notice/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (547, '127.0.0.1', '2024-06-15 17:59:49.060344', '/myapp/admin/notice/create', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (548, '127.0.0.1', '2024-06-15 17:59:49.101805', '/myapp/admin/notice/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (549, '127.0.0.1', '2024-06-15 18:00:00.825938', '/myapp/admin/notice/create', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (550, '127.0.0.1', '2024-06-15 18:00:00.861052', '/myapp/admin/notice/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (551, '127.0.0.1', '2024-06-15 18:00:04.499812', '/myapp/admin/ad/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (552, '127.0.0.1', '2024-06-15 18:00:07.176797', '/myapp/admin/loginLog/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (553, '127.0.0.1', '2024-06-15 18:00:08.108286', '/myapp/admin/opLog/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (554, '127.0.0.1', '2024-06-15 18:00:09.386059', '/myapp/admin/errorLog/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (555, '127.0.0.1', '2024-06-15 18:00:10.074707', '/myapp/admin/opLog/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (556, '127.0.0.1', '2024-06-15 18:00:12.919586', '/myapp/admin/overview/count', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (557, '127.0.0.1', '2024-06-15 18:00:15.512050', '/myapp/admin/feedback/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (558, '127.0.0.1', '2024-06-15 18:00:24.136479', '/myapp/index/thing/getRecommend', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (559, '127.0.0.1', '2024-06-15 18:00:24.153242', '/myapp/index/thing/getRecommend', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (560, '127.0.0.1', '2024-06-15 18:00:24.192058', '/myapp/index/thing/getRecommend', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (561, '127.0.0.1', '2024-06-15 18:00:24.234558', '/upload/cover/1718444242371.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (562, '127.0.0.1', '2024-06-15 18:00:24.237266', '/upload/cover/1718444242371.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (563, '127.0.0.1', '2024-06-15 18:00:24.237266', '/upload/cover/1718444242371.jpeg', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (564, '127.0.0.1', '2024-06-15 18:00:24.240188', '/upload/cover/1718444242371.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (565, '127.0.0.1', '2024-06-15 18:00:24.243095', '/upload/cover/1718444242371.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (566, '127.0.0.1', '2024-06-15 18:00:27.118787', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (567, '127.0.0.1', '2024-06-15 18:00:27.131740', '/myapp/index/user/info', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (568, '127.0.0.1', '2024-06-15 18:00:39.831161', '/myapp/index/feedback/create', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (569, '127.0.0.1', '2024-06-15 18:00:41.861859', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (570, '127.0.0.1', '2024-06-15 18:00:41.863696', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (571, '127.0.0.1', '2024-06-15 18:00:57.186088', '/myapp/index/feedback/create', 'POST', NULL, '25');
INSERT INTO `b_op_log` VALUES (572, '127.0.0.1', '2024-06-15 18:01:00.160256', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (573, '127.0.0.1', '2024-06-15 18:01:00.165132', '/myapp/index/user/info', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (574, '127.0.0.1', '2024-06-15 18:01:01.494380', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1130');
INSERT INTO `b_op_log` VALUES (575, '127.0.0.1', '2024-06-15 18:01:02.029698', '/myapp/admin/feedback/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (576, '127.0.0.1', '2024-06-15 18:01:04.372137', '/myapp/admin/overview/count', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (577, '127.0.0.1', '2024-06-15 18:01:06.203038', '/myapp/admin/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (578, '127.0.0.1', '2024-06-15 18:01:06.348985', '/myapp/admin/thing/list', 'GET', NULL, '151');
INSERT INTO `b_op_log` VALUES (579, '127.0.0.1', '2024-06-15 18:01:10.261542', '/myapp/admin/adminLogin', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (580, '127.0.0.1', '2024-06-15 18:01:10.496182', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (581, '127.0.0.1', '2024-06-15 18:01:10.621408', '/myapp/admin/classification/list', 'GET', NULL, '143');
INSERT INTO `b_op_log` VALUES (582, '127.0.0.1', '2024-06-15 18:01:11.873144', '/upload/cover/1718443681189.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (583, '127.0.0.1', '2024-06-15 18:01:12.928011', '/myapp/admin/thing/update', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (584, '127.0.0.1', '2024-06-15 18:01:17.502537', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (585, '127.0.0.1', '2024-06-15 18:01:18.441366', '/myapp/admin/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (586, '127.0.0.1', '2024-06-15 18:01:18.566379', '/myapp/admin/thing/list', 'GET', NULL, '138');
INSERT INTO `b_op_log` VALUES (587, '127.0.0.1', '2024-06-15 18:01:19.370472', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (588, '127.0.0.1', '2024-06-15 18:01:20.495819', '/myapp/admin/comment/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (589, '127.0.0.1', '2024-06-15 18:01:21.299970', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (590, '127.0.0.1', '2024-06-15 18:01:21.447324', '/myapp/admin/classification/list', 'GET', NULL, '155');
INSERT INTO `b_op_log` VALUES (591, '127.0.0.1', '2024-06-15 18:01:24.355979', '/myapp/admin/order/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (592, '127.0.0.1', '2024-06-15 18:01:26.330197', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (593, '127.0.0.1', '2024-06-15 18:01:26.451575', '/myapp/admin/classification/list', 'GET', NULL, '139');
INSERT INTO `b_op_log` VALUES (594, '127.0.0.1', '2024-06-15 18:02:17.183239', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (595, '127.0.0.1', '2024-06-15 18:02:17.218822', '/myapp/index/user/info', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (596, '127.0.0.1', '2024-06-15 18:02:17.249214', '/myapp/index/user/info', 'GET', NULL, '77');
INSERT INTO `b_op_log` VALUES (597, '127.0.0.1', '2024-06-15 18:02:17.298329', '/upload/cover/1718444250088.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (598, '127.0.0.1', '2024-06-15 18:02:17.299860', '/upload/cover/1718444250088.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (599, '127.0.0.1', '2024-06-15 18:02:17.301873', '/upload/cover/1718444250088.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (600, '127.0.0.1', '2024-06-15 18:02:17.303374', '/upload/cover/1718444250088.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (601, '127.0.0.1', '2024-06-15 18:02:17.307589', '/upload/cover/1718444250088.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (602, '127.0.0.1', '2024-06-15 18:02:19.811837', '/myapp/index/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (603, '127.0.0.1', '2024-06-15 18:02:19.817932', '/myapp/index/classification/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (604, '127.0.0.1', '2024-06-15 18:02:19.823126', '/myapp/index/classification/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (605, '127.0.0.1', '2024-06-15 18:02:19.878517', '/myapp/index/classification/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (606, '127.0.0.1', '2024-06-15 18:03:04.502194', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (607, '127.0.0.1', '2024-06-15 18:03:04.507498', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (608, '127.0.0.1', '2024-06-15 18:03:04.513843', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (609, '127.0.0.1', '2024-06-15 18:03:04.562008', '/myapp/index/thing/list', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (610, '127.0.0.1', '2024-06-15 18:03:04.638619', '/upload/cover/1718444242371.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (611, '127.0.0.1', '2024-06-15 18:03:04.642445', '/upload/cover/1718444242371.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (612, '127.0.0.1', '2024-06-15 18:03:04.642445', '/upload/cover/1718444242371.jpeg', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (613, '127.0.0.1', '2024-06-15 18:03:04.642445', '/upload/cover/1718444213995.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (614, '127.0.0.1', '2024-06-15 18:03:04.642445', '/upload/cover/1718444242371.jpeg', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (615, '127.0.0.1', '2024-06-15 18:03:05.288955', '/myapp/admin/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (616, '127.0.0.1', '2024-06-15 18:03:05.401124', '/myapp/admin/classification/list', 'GET', NULL, '133');
INSERT INTO `b_op_log` VALUES (617, '127.0.0.1', '2024-06-15 18:03:20.018924', '/myapp/admin/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (618, '127.0.0.1', '2024-06-15 18:03:46.320159', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (619, '127.0.0.1', '2024-06-15 18:03:48.004391', '/myapp/index/thing/getRecommend', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (620, '127.0.0.1', '2024-06-15 18:03:48.010830', '/myapp/index/thing/getRecommend', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (621, '127.0.0.1', '2024-06-15 18:03:48.057292', '/myapp/index/thing/getRecommend', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (622, '127.0.0.1', '2024-06-15 18:03:48.596148', '/myapp/index/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (623, '127.0.0.1', '2024-06-15 18:03:48.601394', '/myapp/index/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (624, '127.0.0.1', '2024-06-15 18:03:48.604872', '/myapp/index/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (625, '127.0.0.1', '2024-06-15 18:03:48.654338', '/myapp/index/classification/list', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (626, '127.0.0.1', '2024-06-15 18:03:50.499267', '/myapp/index/notice/list_api', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (627, '127.0.0.1', '2024-06-15 18:03:50.511378', '/myapp/index/notice/list_api', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (628, '127.0.0.1', '2024-06-15 18:03:50.551917', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (629, '127.0.0.1', '2024-06-15 18:03:50.554900', '/myapp/index/user/info', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (630, '127.0.0.1', '2024-06-15 18:03:50.560911', '/myapp/index/user/info', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (631, '127.0.0.1', '2024-06-15 18:03:50.582926', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (632, '127.0.0.1', '2024-06-15 18:04:12.674193', '/myapp/index/thing/getWishThingList', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (633, '127.0.0.1', '2024-06-15 18:04:12.679752', '/myapp/index/thing/getWishThingList', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (634, '127.0.0.1', '2024-06-15 18:04:12.757893', '/myapp/index/user/info', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (635, '127.0.0.1', '2024-06-15 18:04:12.757893', '/myapp/index/user/info', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (636, '127.0.0.1', '2024-06-15 18:04:12.757893', '/myapp/index/user/info', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (637, '127.0.0.1', '2024-06-15 18:04:12.793806', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (638, '127.0.0.1', '2024-06-15 18:04:13.147806', '/myapp/admin/classification/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (639, '127.0.0.1', '2024-06-15 18:04:22.839440', '/myapp/index/user/update', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (640, '127.0.0.1', '2024-06-15 18:04:24.274110', '/myapp/index/thing/getWishThingList', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (641, '127.0.0.1', '2024-06-15 18:04:24.291777', '/myapp/index/thing/getWishThingList', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (642, '127.0.0.1', '2024-06-15 18:04:24.343531', '/myapp/index/user/info', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (643, '127.0.0.1', '2024-06-15 18:04:24.341434', '/myapp/index/user/info', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (644, '127.0.0.1', '2024-06-15 18:04:24.358516', '/myapp/index/user/info', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (645, '127.0.0.1', '2024-06-15 18:04:24.366252', '/myapp/index/user/info', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (646, '127.0.0.1', '2024-06-15 18:04:24.388659', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (647, '127.0.0.1', '2024-06-15 18:04:25.779505', '/myapp/index/thing/getWishThingList', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (648, '127.0.0.1', '2024-06-15 18:04:25.798766', '/upload/cover/1718443681189.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (649, '127.0.0.1', '2024-06-15 18:04:26.522327', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (650, '127.0.0.1', '2024-06-15 18:04:27.655851', '/myapp/index/order/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (651, '127.0.0.1', '2024-06-15 18:04:29.422674', '/myapp/index/comment/listMyComments', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (652, '127.0.0.1', '2024-06-15 18:04:29.916727', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (653, '127.0.0.1', '2024-06-15 18:04:32.020585', '/myapp/index/notice/list_api', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (654, '127.0.0.1', '2024-06-15 18:04:33.265316', '/myapp/index/notice/list_api', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (655, '127.0.0.1', '2024-06-15 18:04:36.675412', '/myapp/index/order/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (656, '127.0.0.1', '2024-06-15 18:04:38.560695', '/myapp/index/comment/listMyComments', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (657, '127.0.0.1', '2024-06-15 18:04:39.377393', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (658, '127.0.0.1', '2024-06-15 18:04:41.235112', '/myapp/index/notice/list_api', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (659, '127.0.0.1', '2024-06-15 18:04:48.525058', '/myapp/index/notice/list_api', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (660, '127.0.0.1', '2024-06-15 18:04:49.166457', '/myapp/index/user/info', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (661, '127.0.0.1', '2024-06-15 18:04:49.702991', '/myapp/index/comment/listMyComments', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (662, '127.0.0.1', '2024-06-15 18:04:50.373463', '/myapp/index/order/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (663, '127.0.0.1', '2024-06-15 18:04:50.407500', '/upload/cover/1718444259145.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (664, '127.0.0.1', '2024-06-15 18:05:05.550333', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (665, '127.0.0.1', '2024-06-15 18:05:05.556861', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (666, '127.0.0.1', '2024-06-15 18:05:05.557996', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (667, '127.0.0.1', '2024-06-15 18:05:05.596192', '/myapp/index/thing/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (668, '127.0.0.1', '2024-06-15 18:05:05.629195', '/upload/cover/1718444199808.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (669, '127.0.0.1', '2024-06-15 18:05:05.643564', '/upload/cover/1718444250088.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (670, '127.0.0.1', '2024-06-15 18:05:07.126511', '/myapp/admin/ad/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (671, '127.0.0.1', '2024-06-15 18:05:07.157846', '/myapp/admin/ad/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (672, '127.0.0.1', '2024-06-15 18:05:07.159621', '/myapp/admin/ad/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (673, '127.0.0.1', '2024-06-15 18:05:07.192815', '/myapp/admin/ad/list', 'GET', NULL, '92');
INSERT INTO `b_op_log` VALUES (674, '127.0.0.1', '2024-06-15 18:05:07.209743', '/myapp/admin/ad/list', 'GET', NULL, '109');
INSERT INTO `b_op_log` VALUES (675, '127.0.0.1', '2024-06-15 18:05:07.261204', '/upload/ad/1718445563484.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (676, '127.0.0.1', '2024-06-15 18:05:07.269948', '/upload/ad/1718445563484.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (677, '127.0.0.1', '2024-06-15 18:05:07.294966', '/upload/ad/1718445563484.jpeg', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (678, '127.0.0.1', '2024-06-15 18:05:27.892252', '/myapp/admin/adminLogin', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (679, '127.0.0.1', '2024-06-15 18:05:28.245176', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (680, '127.0.0.1', '2024-06-15 18:05:28.379342', '/myapp/admin/classification/list', 'GET', NULL, '143');
INSERT INTO `b_op_log` VALUES (681, '127.0.0.1', '2024-06-15 18:05:30.025918', '/upload/cover/1718444193559.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (682, '127.0.0.1', '2024-06-15 18:05:31.192891', '/myapp/admin/thing/update', 'POST', NULL, '14');
INSERT INTO `b_op_log` VALUES (683, '127.0.0.1', '2024-06-15 18:05:34.243470', '/myapp/admin/user/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (684, '127.0.0.1', '2024-06-15 18:05:45.127954', '/myapp/admin/order/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (685, '127.0.0.1', '2024-06-15 18:05:46.794531', '/myapp/admin/user/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (686, '127.0.0.1', '2024-06-15 18:05:47.948390', '/myapp/admin/order/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (687, '127.0.0.1', '2024-06-15 18:05:48.801351', '/myapp/admin/user/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (688, '127.0.0.1', '2024-06-15 18:05:49.595699', '/myapp/admin/order/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (689, '127.0.0.1', '2024-06-15 18:05:54.797448', '/myapp/admin/user/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (690, '127.0.0.1', '2024-06-15 18:05:55.648080', '/myapp/admin/comment/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (691, '127.0.0.1', '2024-06-15 18:05:56.502280', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (692, '127.0.0.1', '2024-06-15 18:05:57.526588', '/myapp/admin/user/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (693, '127.0.0.1', '2024-06-15 18:05:58.693895', '/myapp/admin/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (694, '127.0.0.1', '2024-06-15 18:05:59.427177', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (695, '127.0.0.1', '2024-06-15 18:06:00.194637', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (696, '127.0.0.1', '2024-06-15 18:06:00.316782', '/myapp/admin/classification/list', 'GET', NULL, '131');
INSERT INTO `b_op_log` VALUES (697, '127.0.0.1', '2024-06-15 18:06:01.039808', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (698, '127.0.0.1', '2024-06-15 18:06:15.688397', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (699, '127.0.0.1', '2024-06-15 18:06:15.694997', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (700, '127.0.0.1', '2024-06-15 18:06:15.714230', '/myapp/index/thing/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (701, '127.0.0.1', '2024-06-15 18:06:15.746076', '/myapp/index/thing/list', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (702, '127.0.0.1', '2024-06-15 18:06:15.807632', '/upload/cover/1718444242371.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (703, '127.0.0.1', '2024-06-15 18:06:15.807632', '/upload/cover/1718444242371.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (704, '127.0.0.1', '2024-06-15 18:06:15.807632', '/upload/cover/1718444242371.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (705, '127.0.0.1', '2024-06-15 18:06:15.813355', '/upload/cover/1718444242371.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (706, '127.0.0.1', '2024-06-15 18:06:15.823675', '/upload/cover/1718444242371.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (707, '127.0.0.1', '2024-06-15 18:06:16.558091', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (708, '127.0.0.1', '2024-06-15 18:06:16.562994', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (709, '127.0.0.1', '2024-06-15 18:06:16.614124', '/myapp/index/user/info', 'GET', NULL, '77');
INSERT INTO `b_op_log` VALUES (710, '127.0.0.1', '2024-06-15 18:06:18.914393', '/myapp/admin/ad/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (711, '127.0.0.1', '2024-06-15 18:06:18.936173', '/myapp/admin/ad/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (712, '127.0.0.1', '2024-06-15 18:06:18.936173', '/myapp/admin/ad/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (713, '127.0.0.1', '2024-06-15 18:06:18.945145', '/myapp/admin/ad/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (714, '127.0.0.1', '2024-06-15 18:06:19.011810', '/upload/avatar/1718445856075.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (715, '127.0.0.1', '2024-06-15 18:06:19.015158', '/upload/avatar/1718445856075.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (716, '127.0.0.1', '2024-06-15 18:06:19.025158', '/upload/avatar/1718445856075.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (717, '127.0.0.1', '2024-06-15 18:06:19.047231', '/upload/avatar/1718445856075.jpeg', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (718, '127.0.0.1', '2024-06-15 18:06:19.065826', '/upload/avatar/1718445856075.jpeg', 'GET', NULL, '87');
INSERT INTO `b_op_log` VALUES (719, '127.0.0.1', '2024-06-15 18:06:19.126527', '/upload/cover/1718444220973.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (720, '127.0.0.1', '2024-06-15 18:06:20.945157', '/myapp/index/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (721, '127.0.0.1', '2024-06-15 18:06:20.957679', '/myapp/index/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (722, '127.0.0.1', '2024-06-15 18:06:20.963022', '/myapp/index/classification/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (723, '127.0.0.1', '2024-06-15 18:06:21.015487', '/myapp/index/classification/list', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (724, '127.0.0.1', '2024-06-15 18:06:21.695990', '/myapp/index/thing/getRecommend', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (725, '127.0.0.1', '2024-06-15 18:06:21.712697', '/myapp/index/thing/getRecommend', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (726, '127.0.0.1', '2024-06-15 18:06:21.712697', '/myapp/index/thing/getRecommend', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (727, '127.0.0.1', '2024-06-15 18:06:21.729618', '/myapp/index/thing/getRecommend', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (728, '127.0.0.1', '2024-06-15 18:06:21.788124', '/myapp/index/thing/getRecommend', 'GET', NULL, '111');
INSERT INTO `b_op_log` VALUES (729, '127.0.0.1', '2024-06-15 18:06:21.814872', '/myapp/index/thing/getRecommend', 'GET', NULL, '137');
INSERT INTO `b_op_log` VALUES (730, '127.0.0.1', '2024-06-15 18:06:24.640529', '/myapp/admin/ad/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (731, '127.0.0.1', '2024-06-15 18:06:24.659731', '/myapp/admin/ad/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (732, '127.0.0.1', '2024-06-15 18:06:24.713030', '/myapp/admin/ad/list', 'GET', NULL, '95');
INSERT INTO `b_op_log` VALUES (733, '127.0.0.1', '2024-06-15 18:06:24.745450', '/myapp/admin/ad/list', 'GET', NULL, '120');
INSERT INTO `b_op_log` VALUES (734, '127.0.0.1', '2024-06-15 18:06:27.746146', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (735, '127.0.0.1', '2024-06-15 18:06:27.746146', '/myapp/index/user/info', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (736, '127.0.0.1', '2024-06-15 18:06:27.781153', '/myapp/index/user/info', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (737, '127.0.0.1', '2024-06-15 18:06:27.813208', '/myapp/index/user/info', 'GET', NULL, '86');
INSERT INTO `b_op_log` VALUES (738, '127.0.0.1', '2024-06-15 18:06:28.923557', '/myapp/admin/ad/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (739, '127.0.0.1', '2024-06-15 18:06:28.947579', '/myapp/admin/ad/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (740, '127.0.0.1', '2024-06-15 18:06:28.963507', '/myapp/admin/ad/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (741, '127.0.0.1', '2024-06-15 18:06:28.980243', '/myapp/admin/ad/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (742, '127.0.0.1', '2024-06-15 18:06:29.030706', '/myapp/admin/ad/list', 'GET', NULL, '111');
INSERT INTO `b_op_log` VALUES (743, '127.0.0.1', '2024-06-15 18:06:29.064230', '/myapp/admin/ad/list', 'GET', NULL, '151');
INSERT INTO `b_op_log` VALUES (744, '127.0.0.1', '2024-06-15 18:06:30.552775', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (745, '127.0.0.1', '2024-06-15 18:06:30.560455', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (746, '127.0.0.1', '2024-06-15 18:06:30.565257', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (747, '127.0.0.1', '2024-06-15 18:06:30.616018', '/myapp/index/thing/list', 'GET', NULL, '80');

-- ----------------------------
-- Table structure for b_order
-- ----------------------------
DROP TABLE IF EXISTS `b_order`;
CREATE TABLE `b_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_number` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `count` int(11) NOT NULL,
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_time` datetime(6) NULL DEFAULT NULL,
  `receiver_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_order_thing_id_4e345e2c_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_order_user_id_64854046_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_order_thing_id_4e345e2c_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_order_user_id_64854046_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_order
-- ----------------------------
INSERT INTO `b_order` VALUES (1, '1718445176071', 3, '2', '2024-06-15 17:52:56.075804', '刘德华', '北京市朝阳路99号', '132222211', '', 1, 2);
INSERT INTO `b_order` VALUES (2, '1718445390049', 1, '1', '2024-06-15 17:56:30.058033', '王雯雯', '济南市文化西路88号', '13533332222', 'aa', 6, 2);
INSERT INTO `b_order` VALUES (3, '1718445422713', 2, '1', '2024-06-15 17:57:02.727343', '韩梅梅', '广州市牡丹区99号', '132111112222', '', 12, 2);

-- ----------------------------
-- Table structure for b_record
-- ----------------------------
DROP TABLE IF EXISTS `b_record`;
CREATE TABLE `b_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `score` int(11) NOT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_record_thing_id_d8e773c0_fk_b_thing_id`(`thing_id`) USING BTREE,
  CONSTRAINT `b_record_thing_id_d8e773c0_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_record
-- ----------------------------
INSERT INTO `b_record` VALUES (1, 2, 10, '127.0.0.1');
INSERT INTO `b_record` VALUES (2, 3, 6, '127.0.0.1');
INSERT INTO `b_record` VALUES (3, 1, 8, '127.0.0.1');
INSERT INTO `b_record` VALUES (4, 6, 4, '127.0.0.1');
INSERT INTO `b_record` VALUES (5, 12, 2, '127.0.0.1');
INSERT INTO `b_record` VALUES (6, 7, 1, '127.0.0.1');
INSERT INTO `b_record` VALUES (7, 10, 1, '127.0.0.1');

-- ----------------------------
-- Table structure for b_thing
-- ----------------------------
DROP TABLE IF EXISTS `b_thing`;
CREATE TABLE `b_thing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cover` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `price` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `baozhuang` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zhishu` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `pv` int(11) NOT NULL,
  `recommend_count` int(11) NOT NULL,
  `wish_count` int(11) NOT NULL,
  `collect_count` int(11) NOT NULL,
  `classification_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `cailiao` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rate` int(11) NOT NULL,
  `yanse` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_thing_classification_id_47675ac4_fk_b_classification_id`(`classification_id`) USING BTREE,
  INDEX `b_thing_user_id_9918a633_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_classification_id_47675ac4_fk_b_classification_id` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_user_id_9918a633_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing
-- ----------------------------
INSERT INTO `b_thing` VALUES (1, '星河璀璨', 'cover/1718443681189.jpeg', '本花属于蔷薇科植物，是一种美丽而香气迷人的花朵。玫瑰花的品种繁多，有数千种不同颜色和形态的玫瑰品种，每种玫瑰都有其独特的花形、花色和花香。\r\n\r\n玫瑰花在文化中象征着爱情、美丽、纯洁和浪漫。它常常被用于表达爱意、祝福和感激之情。玫瑰花也常被用作鲜花束、花环或装饰，用于各种场合，如婚礼、庆祝活动、纪念日等。\r\n\r\n玫瑰花还被广泛用于制作花茶、玫瑰花糖水、玫瑰花露等食品和美容用品，具有一定的药用价值，被用于中药和芳香疗法中。\r\n\r\n总的来说，玫瑰花是一种备受喜爱的花卉，不仅因为其美丽的外表和迷人的香气，还因为其所代表的爱与美好。', '25', '蓝色人造纸5张', '9', '0', '2024-06-15 17:28:50.271692', 8, 0, 1, 1, 4, NULL, '香槟玫瑰、蓝绣球、向日葵、白色洋桔梗', 4, '彩色');
INSERT INTO `b_thing` VALUES (2, '深情挚爱', 'cover/1718444193559.jpeg', '本花属于蔷薇科植物，是一种美丽而香气迷人的花朵。玫瑰花的品种繁多，有数千种不同颜色和形态的玫瑰品种，每种玫瑰都有其独特的花形、花色和花香。\r\n\r\n玫瑰花在文化中象征着爱情、美丽、纯洁和浪漫。它常常被用于表达爱意、祝福和感激之情。玫瑰花也常被用作鲜花束、花环或装饰，用于各种场合，如婚礼、庆祝活动、纪念日等。\r\n\r\n玫瑰花还被广泛用于制作花茶、玫瑰花糖水、玫瑰花露等食品和美容用品，具有一定的药用价值，被用于中药和芳香疗法中。\r\n\r\n总的来说，玫瑰花是一种备受喜爱的花卉，不仅因为其美丽的外表和迷人的香气，还因为其所代表的爱与美好。', '25', '蓝色人造纸5张', '9', '0', '2024-06-15 17:28:50.271692', 10, 0, 1, 1, 2, NULL, '香槟玫瑰、蓝绣球、向日葵、白色洋桔梗', 4, '彩色');
INSERT INTO `b_thing` VALUES (3, '不变的承诺', 'cover/1718444199808.jpeg', '本花属于蔷薇科植物，是一种美丽而香气迷人的花朵。玫瑰花的品种繁多，有数千种不同颜色和形态的玫瑰品种，每种玫瑰都有其独特的花形、花色和花香。\r\n\r\n玫瑰花在文化中象征着爱情、美丽、纯洁和浪漫。它常常被用于表达爱意、祝福和感激之情。玫瑰花也常被用作鲜花束、花环或装饰，用于各种场合，如婚礼、庆祝活动、纪念日等。\r\n\r\n玫瑰花还被广泛用于制作花茶、玫瑰花糖水、玫瑰花露等食品和美容用品，具有一定的药用价值，被用于中药和芳香疗法中。\r\n\r\n总的来说，玫瑰花是一种备受喜爱的花卉，不仅因为其美丽的外表和迷人的香气，还因为其所代表的爱与美好。', '55', '蓝色人造纸5张', '11', '0', '2024-06-15 17:28:50.271692', 6, 0, 0, 1, 3, NULL, '香槟玫瑰、蓝绣球、向日葵、白色洋桔梗', 3, '彩色');
INSERT INTO `b_thing` VALUES (4, '紫因有你', 'cover/1718444207716.jpeg', '本花属于蔷薇科植物，是一种美丽而香气迷人的花朵。玫瑰花的品种繁多，有数千种不同颜色和形态的玫瑰品种，每种玫瑰都有其独特的花形、花色和花香。\r\n\r\n玫瑰花在文化中象征着爱情、美丽、纯洁和浪漫。它常常被用于表达爱意、祝福和感激之情。玫瑰花也常被用作鲜花束、花环或装饰，用于各种场合，如婚礼、庆祝活动、纪念日等。\r\n\r\n玫瑰花还被广泛用于制作花茶、玫瑰花糖水、玫瑰花露等食品和美容用品，具有一定的药用价值，被用于中药和芳香疗法中。\r\n\r\n总的来说，玫瑰花是一种备受喜爱的花卉，不仅因为其美丽的外表和迷人的香气，还因为其所代表的爱与美好。', '66', '蓝色人造纸5张', '11', '0', '2024-06-15 17:28:50.271692', 0, 0, 0, 0, 1, NULL, '香槟玫瑰、蓝绣球、向日葵、白色洋桔梗', 3, '绿色');
INSERT INTO `b_thing` VALUES (5, '健康喜乐', 'cover/1718444213995.jpeg', '本花属于蔷薇科植物，是一种美丽而香气迷人的花朵。玫瑰花的品种繁多，有数千种不同颜色和形态的玫瑰品种，每种玫瑰都有其独特的花形、花色和花香。\r\n\r\n玫瑰花在文化中象征着爱情、美丽、纯洁和浪漫。它常常被用于表达爱意、祝福和感激之情。玫瑰花也常被用作鲜花束、花环或装饰，用于各种场合，如婚礼、庆祝活动、纪念日等。\r\n\r\n玫瑰花还被广泛用于制作花茶、玫瑰花糖水、玫瑰花露等食品和美容用品，具有一定的药用价值，被用于中药和芳香疗法中。\r\n\r\n总的来说，玫瑰花是一种备受喜爱的花卉，不仅因为其美丽的外表和迷人的香气，还因为其所代表的爱与美好。', '88', '蓝色人造纸5张', '99', '0', '2024-06-15 17:28:50.271692', 0, 0, 0, 0, 5, NULL, '香槟玫瑰、蓝绣球、向日葵、白色洋桔梗', 3, '彩色');
INSERT INTO `b_thing` VALUES (6, 'Best Wishes', 'cover/1718444220973.jpeg', '本花属于蔷薇科植物，是一种美丽而香气迷人的花朵。玫瑰花的品种繁多，有数千种不同颜色和形态的玫瑰品种，每种玫瑰都有其独特的花形、花色和花香。\r\n\r\n玫瑰花在文化中象征着爱情、美丽、纯洁和浪漫。它常常被用于表达爱意、祝福和感激之情。玫瑰花也常被用作鲜花束、花环或装饰，用于各种场合，如婚礼、庆祝活动、纪念日等。\r\n\r\n玫瑰花还被广泛用于制作花茶、玫瑰花糖水、玫瑰花露等食品和美容用品，具有一定的药用价值，被用于中药和芳香疗法中。\r\n\r\n总的来说，玫瑰花是一种备受喜爱的花卉，不仅因为其美丽的外表和迷人的香气，还因为其所代表的爱与美好。', '88', '蓝色人造纸5张', '11', '0', '2024-06-15 17:28:50.271692', 4, 0, 1, 1, 3, NULL, '香槟玫瑰、蓝绣球、向日葵、白色洋桔梗', 3, '彩色');
INSERT INTO `b_thing` VALUES (7, '星河璀璨', 'cover/1718444229000.jpeg', '本花属于蔷薇科植物，是一种美丽而香气迷人的花朵。玫瑰花的品种繁多，有数千种不同颜色和形态的玫瑰品种，每种玫瑰都有其独特的花形、花色和花香。\r\n\r\n玫瑰花在文化中象征着爱情、美丽、纯洁和浪漫。它常常被用于表达爱意、祝福和感激之情。玫瑰花也常被用作鲜花束、花环或装饰，用于各种场合，如婚礼、庆祝活动、纪念日等。\r\n\r\n玫瑰花还被广泛用于制作花茶、玫瑰花糖水、玫瑰花露等食品和美容用品，具有一定的药用价值，被用于中药和芳香疗法中。\r\n\r\n总的来说，玫瑰花是一种备受喜爱的花卉，不仅因为其美丽的外表和迷人的香气，还因为其所代表的爱与美好。', '25', '蓝色人造纸5张', '9', '0', '2024-06-15 17:28:50.271692', 1, 0, 0, 0, 4, NULL, '香槟玫瑰、蓝绣球、向日葵、白色洋桔梗', 3, '彩色');
INSERT INTO `b_thing` VALUES (8, '真心相伴', 'cover/1718444235606.jpeg', '本花属于蔷薇科植物，是一种美丽而香气迷人的花朵。玫瑰花的品种繁多，有数千种不同颜色和形态的玫瑰品种，每种玫瑰都有其独特的花形、花色和花香。\r\n\r\n玫瑰花在文化中象征着爱情、美丽、纯洁和浪漫。它常常被用于表达爱意、祝福和感激之情。玫瑰花也常被用作鲜花束、花环或装饰，用于各种场合，如婚礼、庆祝活动、纪念日等。\r\n\r\n玫瑰花还被广泛用于制作花茶、玫瑰花糖水、玫瑰花露等食品和美容用品，具有一定的药用价值，被用于中药和芳香疗法中。\r\n\r\n总的来说，玫瑰花是一种备受喜爱的花卉，不仅因为其美丽的外表和迷人的香气，还因为其所代表的爱与美好。', '88', '蓝色人造纸5张', '22', '0', '2024-06-15 17:28:50.271692', 0, 0, 0, 0, 2, NULL, '香槟玫瑰、蓝绣球、向日葵、白色洋桔梗', 3, '彩色');
INSERT INTO `b_thing` VALUES (9, '粉玫瑰香水百合', 'cover/1718444242371.jpeg', '本花属于蔷薇科植物，是一种美丽而香气迷人的花朵。玫瑰花的品种繁多，有数千种不同颜色和形态的玫瑰品种，每种玫瑰都有其独特的花形、花色和花香。\r\n\r\n玫瑰花在文化中象征着爱情、美丽、纯洁和浪漫。它常常被用于表达爱意、祝福和感激之情。玫瑰花也常被用作鲜花束、花环或装饰，用于各种场合，如婚礼、庆祝活动、纪念日等。\r\n\r\n玫瑰花还被广泛用于制作花茶、玫瑰花糖水、玫瑰花露等食品和美容用品，具有一定的药用价值，被用于中药和芳香疗法中。\r\n\r\n总的来说，玫瑰花是一种备受喜爱的花卉，不仅因为其美丽的外表和迷人的香气，还因为其所代表的爱与美好。', '33', '蓝色人造纸5张', '22', '0', '2024-06-15 17:28:50.271692', 0, 0, 0, 0, 5, NULL, '香槟玫瑰、蓝绣球、向日葵、白色洋桔梗', 3, '彩色');
INSERT INTO `b_thing` VALUES (10, '星河璀璨22', 'cover/1718444250088.jpeg', '本花属于蔷薇科植物，是一种美丽而香气迷人的花朵。玫瑰花的品种繁多，有数千种不同颜色和形态的玫瑰品种，每种玫瑰都有其独特的花形、花色和花香。\r\n\r\n玫瑰花在文化中象征着爱情、美丽、纯洁和浪漫。它常常被用于表达爱意、祝福和感激之情。玫瑰花也常被用作鲜花束、花环或装饰，用于各种场合，如婚礼、庆祝活动、纪念日等。\r\n\r\n玫瑰花还被广泛用于制作花茶、玫瑰花糖水、玫瑰花露等食品和美容用品，具有一定的药用价值，被用于中药和芳香疗法中。\r\n\r\n总的来说，玫瑰花是一种备受喜爱的花卉，不仅因为其美丽的外表和迷人的香气，还因为其所代表的爱与美好。', '25', '蓝色人造纸5张', '11', '0', '2024-06-15 17:28:50.271692', 1, 0, 0, 0, 4, NULL, '香槟玫瑰、蓝绣球、向日葵、白色洋桔梗', 3, '彩色');
INSERT INTO `b_thing` VALUES (11, '测试鲜花111', 'cover/1718443681189.jpeg', '本花属于蔷薇科植物，是一种美丽而香气迷人的花朵。玫瑰花的品种繁多，有数千种不同颜色和形态的玫瑰品种，每种玫瑰都有其独特的花形、花色和花香。\r\n\r\n玫瑰花在文化中象征着爱情、美丽、纯洁和浪漫。它常常被用于表达爱意、祝福和感激之情。玫瑰花也常被用作鲜花束、花环或装饰，用于各种场合，如婚礼、庆祝活动、纪念日等。\r\n\r\n玫瑰花还被广泛用于制作花茶、玫瑰花糖水、玫瑰花露等食品和美容用品，具有一定的药用价值，被用于中药和芳香疗法中。\r\n\r\n总的来说，玫瑰花是一种备受喜爱的花卉，不仅因为其美丽的外表和迷人的香气，还因为其所代表的爱与美好。', '25', '蓝色人造纸5张', '11', '0', '2024-06-15 17:28:50.271692', 0, 0, 0, 0, 4, NULL, '香槟玫瑰、蓝绣球、向日葵、白色洋桔梗', 3, '彩色');
INSERT INTO `b_thing` VALUES (12, '玫瑰花', 'cover/1718444259145.jpeg', '本花属于蔷薇科植物，是一种美丽而香气迷人的花朵。玫瑰花的品种繁多，有数千种不同颜色和形态的玫瑰品种，每种玫瑰都有其独特的花形、花色和花香。\r\n\r\n玫瑰花在文化中象征着爱情、美丽、纯洁和浪漫。它常常被用于表达爱意、祝福和感激之情。玫瑰花也常被用作鲜花束、花环或装饰，用于各种场合，如婚礼、庆祝活动、纪念日等。\r\n\r\n玫瑰花还被广泛用于制作花茶、玫瑰花糖水、玫瑰花露等食品和美容用品，具有一定的药用价值，被用于中药和芳香疗法中。\r\n\r\n总的来说，玫瑰花是一种备受喜爱的花卉，不仅因为其美丽的外表和迷人的香气，还因为其所代表的爱与美好。', '33', '蓝色人造纸5张', '11', '0', '2024-06-15 17:28:50.271692', 2, 0, 0, 0, 4, NULL, '香槟玫瑰、蓝绣球、向日葵、白色洋桔梗', 3, '彩色');

-- ----------------------------
-- Table structure for b_thing_collect
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_collect`;
CREATE TABLE `b_thing_collect`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_collect_thing_id_user_id_45b9f252_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_collect_user_id_e5d69968_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_collect_thing_id_8edce8b3_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_collect_user_id_e5d69968_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_collect
-- ----------------------------
INSERT INTO `b_thing_collect` VALUES (3, 1, 2);
INSERT INTO `b_thing_collect` VALUES (1, 2, 2);
INSERT INTO `b_thing_collect` VALUES (2, 3, 2);
INSERT INTO `b_thing_collect` VALUES (4, 6, 2);

-- ----------------------------
-- Table structure for b_thing_wish
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_wish`;
CREATE TABLE `b_thing_wish`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_wish_thing_id_user_id_9d647bbb_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_wish_user_id_e2d94f6c_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_wish_thing_id_f0864b16_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_wish_user_id_e2d94f6c_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_wish
-- ----------------------------
INSERT INTO `b_thing_wish` VALUES (3, 1, 2);
INSERT INTO `b_thing_wish` VALUES (1, 2, 2);
INSERT INTO `b_thing_wish` VALUES (4, 6, 2);

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
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_user
-- ----------------------------
INSERT INTO `b_user` VALUES (1, 'admin', '78aafd3207ec4ef6d16f9fc07e95ebc3', '1', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-05-04 16:37:10.143202', 0, NULL, 0, '21232f297a57a5a743894a0e4a801fc3', NULL);
INSERT INTO `b_user` VALUES (2, 'ddd', '77963b7a931377ad4ab5ad6a9cd718aa', '2', '0', '哈哈哈哈99', 'avatar/1718445856075.jpeg', '1233', NULL, NULL, NULL, '2024-06-15 17:45:41.725992', 0, NULL, 0, NULL, '77963b7a931377ad4ab5ad6a9cd718aa');
INSERT INTO `b_user` VALUES (3, 'admin123', '0192023a7bbd73250516f069df18b500', '3', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-06-15 17:58:29.625544', 0, NULL, 0, '0192023a7bbd73250516f069df18b500', NULL);
INSERT INTO `b_user` VALUES (4, 'ccc', '9df62e693988eb4e1e1444ece0578579', '2', '0', 'ccc', '', '123', NULL, NULL, NULL, '2024-06-15 17:58:45.352972', 0, NULL, 0, NULL, NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (7, 'myapp', 'ad');
INSERT INTO `django_content_type` VALUES (8, 'myapp', 'classification');
INSERT INTO `django_content_type` VALUES (17, 'myapp', 'comment');
INSERT INTO `django_content_type` VALUES (9, 'myapp', 'errorlog');
INSERT INTO `django_content_type` VALUES (18, 'myapp', 'feedback');
INSERT INTO `django_content_type` VALUES (10, 'myapp', 'loginlog');
INSERT INTO `django_content_type` VALUES (11, 'myapp', 'notice');
INSERT INTO `django_content_type` VALUES (12, 'myapp', 'oplog');
INSERT INTO `django_content_type` VALUES (16, 'myapp', 'order');
INSERT INTO `django_content_type` VALUES (15, 'myapp', 'record');
INSERT INTO `django_content_type` VALUES (14, 'myapp', 'thing');
INSERT INTO `django_content_type` VALUES (13, 'myapp', 'user');
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
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2024-06-15 17:14:48.884336');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2024-06-15 17:14:49.488513');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2024-06-15 17:14:49.604356');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2024-06-15 17:14:49.619884');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2024-06-15 17:14:49.638883');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2024-06-15 17:14:49.791943');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2024-06-15 17:14:49.895367');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2024-06-15 17:14:49.980151');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2024-06-15 17:14:49.998183');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2024-06-15 17:14:50.101968');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2024-06-15 17:14:50.110490');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2024-06-15 17:14:50.127495');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2024-06-15 17:14:50.194827');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2024-06-15 17:14:50.278777');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2024-06-15 17:14:50.362793');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2024-06-15 17:14:50.382800');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2024-06-15 17:14:50.472145');
INSERT INTO `django_migrations` VALUES (18, 'myapp', '0001_initial', '2024-06-15 17:14:51.926087');
INSERT INTO `django_migrations` VALUES (19, 'myapp', '0002_thing_user', '2024-06-15 17:14:52.024757');
INSERT INTO `django_migrations` VALUES (20, 'myapp', '0003_auto_20240504_1643', '2024-06-15 17:14:52.378898');
INSERT INTO `django_migrations` VALUES (21, 'myapp', '0004_auto_20240504_1700', '2024-06-15 17:14:52.546357');
INSERT INTO `django_migrations` VALUES (22, 'myapp', '0005_auto_20240615_1714', '2024-06-15 17:14:53.421335');
INSERT INTO `django_migrations` VALUES (23, 'sessions', '0001_initial', '2024-06-15 17:14:53.498284');

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
