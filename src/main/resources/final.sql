/*
 Navicat Premium Data Transfer

 Source Server         : JDBC
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : localhost:3306
 Source Schema         : final

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 02/04/2020 10:26:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for administrator
-- ----------------------------
DROP TABLE IF EXISTS `administrator`;
CREATE TABLE `administrator`  (
  `id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of administrator
-- ----------------------------
INSERT INTO `administrator` VALUES ('123', '123');
INSERT INTO `administrator` VALUES ('admin01', '123');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('111', '111');
INSERT INTO `course` VALUES ('c900002112', '离散数学');
INSERT INTO `course` VALUES ('c900002123', '高等数学');
INSERT INTO `course` VALUES ('c900002221', '线性代数');
INSERT INTO `course` VALUES ('c900003212', '平面几何');
INSERT INTO `course` VALUES ('c900004325', '大学数学');
INSERT INTO `course` VALUES ('c900005422', '微分方程');
INSERT INTO `course` VALUES ('c900005431', '积分学');
INSERT INTO `course` VALUES ('c900005442', '物理应用');
INSERT INTO `course` VALUES ('c900005554', ' 导数与微分');
INSERT INTO `course` VALUES ('c900008783', '多元函数微分学');

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department`  (
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`, `name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('信息工程学院', 1);
INSERT INTO `department` VALUES ('软件工程学院', 2);
INSERT INTO `department` VALUES ('数学学院', 3);
INSERT INTO `department` VALUES ('小学教育学院', 4);
INSERT INTO `department` VALUES ('音乐学院', 5);
INSERT INTO `department` VALUES ('舞蹈学院', 6);

-- ----------------------------
-- Table structure for evaluation
-- ----------------------------
DROP TABLE IF EXISTS `evaluation`;
CREATE TABLE `evaluation`  (
  `student_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `score` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `term` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`student_id`, `course_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of evaluation
-- ----------------------------
INSERT INTO `evaluation` VALUES ('16132201', 'c906168465', '优', '2200');
INSERT INTO `evaluation` VALUES ('20140087', 'c900002123', '优', '2014春');
INSERT INTO `evaluation` VALUES ('20140087', 'c900002221', '良', '2014春');
INSERT INTO `evaluation` VALUES ('20140543', 'c900002123', '良', '2014秋');
INSERT INTO `evaluation` VALUES ('20140544', 'c900002221', '差', '2016春');
INSERT INTO `evaluation` VALUES ('20145626', 'c900003212', '良', '2015秋');
INSERT INTO `evaluation` VALUES ('20145643', 'c900004325', '良', '2015春');
INSERT INTO `evaluation` VALUES ('20145776', 'c900005422', '良', '2017春');
INSERT INTO `evaluation` VALUES ('20145776', 'c900005431', '良', '2016春');
INSERT INTO `evaluation` VALUES ('20147869', 'c900005442', '优', '2015春');
INSERT INTO `evaluation` VALUES ('20148765', 'c900005442', '优', '2014春');
INSERT INTO `evaluation` VALUES ('20149879', 'c900005554', '良', '2017春');

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `parameter` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `time` datetime NULL DEFAULT NULL,
  `length` int(11) NULL DEFAULT NULL,
  `module` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `result` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `message` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5415 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES (5427, 'admin01', '127.0.0.1', '/index.do', '', '2020-04-01 11:03:43', 0, '后台', '登陆成功', 'success', '');
INSERT INTO `log` VALUES (5428, 'admin01', '127.0.0.1', '/index.do', '', '2020-04-01 11:03:43', 0, '后台', '登陆失败', 'success', '');
INSERT INTO `log` VALUES (5429, NULL, '127.0.0.1', '/index.do', '{id: admin01, password: 123, }', '2020-04-01 11:03:43', 593, '后台', '登陆', 'success', NULL);
INSERT INTO `log` VALUES (5430, 'admin01', '127.0.0.1', '/admin/admin_index.do', '{}', '2020-04-01 11:03:43', 6, '管理员后台', '管理员后台', 'success', NULL);
INSERT INTO `log` VALUES (5431, 'admin01', '127.0.0.1', '/admin/welcome.do', '{}', '2020-04-01 11:03:44', 0, '管理员后台', '欢迎页面', 'success', NULL);
INSERT INTO `log` VALUES (5432, 'admin01', '127.0.0.1', '/admin/select_welcome.do', '{administratorId: admin01, }', '2020-04-01 11:03:44', 136, '管理员后台', '获取欢迎数据', 'success', NULL);
INSERT INTO `log` VALUES (5433, 'admin01', '127.0.0.1', '/admin/student_list.do', '{}', '2020-04-01 11:03:46', 4, '管理员后台', '学生列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5434, 'admin01', '127.0.0.1', '/admin/select_student_list.do', '{page: 1, limit: 10, }', '2020-04-01 11:03:46', 103, '管理员后台', '获取学生列表', 'success', NULL);
INSERT INTO `log` VALUES (5435, 'admin01', '127.0.0.1', '/admin/teacher_course_list.do', '{}', '2020-04-01 11:06:24', 6, '管理员后台', '老师课程列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5436, 'admin01', '127.0.0.1', '/admin/select_teacher_course_list.do', '{page: 1, limit: 10, }', '2020-04-01 11:06:24', 9, '管理员后台', '获取老师课程列表', 'success', NULL);
INSERT INTO `log` VALUES (5437, 'admin01', '127.0.0.1', '/admin/course_list.do', '{}', '2020-04-01 11:06:25', 5, '管理员后台', '课程列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5438, 'admin01', '127.0.0.1', '/admin/select_course_list.do', '{page: 1, limit: 10, }', '2020-04-01 11:06:25', 7, '管理员后台', '获取课程列表', 'success', NULL);
INSERT INTO `log` VALUES (5439, 'admin01', '127.0.0.1', '/admin/student_course_list.do', '{}', '2020-04-01 11:06:26', 5, '管理员后台', '学生课程列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5440, 'admin01', '127.0.0.1', '/admin/select_student_course_list.do', '{page: 1, limit: 10, }', '2020-04-01 11:06:26', 12, '管理员后台', '获取学生课程列表', 'success', NULL);
INSERT INTO `log` VALUES (5441, 'admin01', '127.0.0.1', '/admin/student_course_list.do', '{}', '2020-04-01 11:06:33', 0, '管理员后台', '学生课程列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5442, 'admin01', '127.0.0.1', '/admin/select_student_course_list.do', '{page: 1, limit: 10, }', '2020-04-01 11:06:33', 6, '管理员后台', '获取学生课程列表', 'success', NULL);
INSERT INTO `log` VALUES (5443, 'admin01', '127.0.0.1', '/admin/evaluation_list.do', '{}', '2020-04-01 11:06:33', 6, '管理员后台', '评价列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5444, 'admin01', '127.0.0.1', '/admin/select_evaluation_list.do', '{page: 1, limit: 10, }', '2020-04-01 11:06:34', 10, '管理员后台', '获取评价列表', 'success', NULL);
INSERT INTO `log` VALUES (5445, 'admin01', '127.0.0.1', '/admin/student_list.do', '{}', '2020-04-01 11:06:34', 0, '管理员后台', '学生列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5446, 'admin01', '127.0.0.1', '/admin/select_student_list.do', '{page: 1, limit: 10, }', '2020-04-01 11:06:34', 5, '管理员后台', '获取学生列表', 'success', NULL);
INSERT INTO `log` VALUES (5447, 'admin01', '127.0.0.1', '/admin/student_course_list.do', '{}', '2020-04-01 11:08:16', 0, '管理员后台', '学生课程列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5448, 'admin01', '127.0.0.1', '/admin/select_student_course_list.do', '{page: 1, limit: 10, }', '2020-04-01 11:08:16', 4, '管理员后台', '获取学生课程列表', 'success', NULL);
INSERT INTO `log` VALUES (5449, 'admin01', '127.0.0.1', '/admin/student_list.do', '{}', '2020-04-01 11:08:19', 0, '管理员后台', '学生列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5450, 'admin01', '127.0.0.1', '/admin/select_student_list.do', '{page: 1, limit: 10, }', '2020-04-01 11:08:19', 5, '管理员后台', '获取学生列表', 'success', NULL);
INSERT INTO `log` VALUES (5451, 'admin01', '127.0.0.1', '/admin/student_course_list.do', '{}', '2020-04-01 11:08:21', 0, '管理员后台', '学生课程列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5452, 'admin01', '127.0.0.1', '/admin/select_student_course_list.do', '{page: 1, limit: 10, }', '2020-04-01 11:08:21', 6, '管理员后台', '获取学生课程列表', 'success', NULL);
INSERT INTO `log` VALUES (5453, 'admin01', '127.0.0.1', '/admin/score_list.do', '{}', '2020-04-01 11:08:41', 5, '管理员后台', '成绩列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5454, 'admin01', '127.0.0.1', '/admin/select_score_list.do', '{page: 1, limit: 10, }', '2020-04-01 11:08:41', 10, '管理员后台', '获取成绩列表', 'success', NULL);
INSERT INTO `log` VALUES (5455, 'admin01', '127.0.0.1', '/admin/evaluation_list.do', '{}', '2020-04-01 11:08:42', 0, '管理员后台', '评价列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5456, 'admin01', '127.0.0.1', '/admin/select_evaluation_list.do', '{page: 1, limit: 10, }', '2020-04-01 11:08:42', 6, '管理员后台', '获取评价列表', 'success', NULL);
INSERT INTO `log` VALUES (5457, 'admin01', '127.0.0.1', '/admin/score_list.do', '{}', '2020-04-01 11:08:44', 1, '管理员后台', '成绩列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5458, 'admin01', '127.0.0.1', '/admin/select_score_list.do', '{page: 1, limit: 10, }', '2020-04-01 11:08:44', 6, '管理员后台', '获取成绩列表', 'success', NULL);
INSERT INTO `log` VALUES (5459, 'admin01', '127.0.0.1', '/admin/evaluation_list.do', '{}', '2020-04-01 11:08:45', 0, '管理员后台', '评价列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5460, 'admin01', '127.0.0.1', '/admin/select_evaluation_list.do', '{page: 1, limit: 10, }', '2020-04-01 11:08:45', 4, '管理员后台', '获取评价列表', 'success', NULL);
INSERT INTO `log` VALUES (5461, 'admin01', '127.0.0.1', '/admin/score_list.do', '{}', '2020-04-01 11:08:46', 0, '管理员后台', '成绩列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5462, 'admin01', '127.0.0.1', '/admin/select_score_list.do', '{page: 1, limit: 10, }', '2020-04-01 11:08:46', 4, '管理员后台', '获取成绩列表', 'success', NULL);
INSERT INTO `log` VALUES (5463, 'admin01', '127.0.0.1', '/admin/evaluation_list.do', '{}', '2020-04-01 11:08:46', 0, '管理员后台', '评价列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5464, 'admin01', '127.0.0.1', '/admin/select_evaluation_list.do', '{page: 1, limit: 10, }', '2020-04-01 11:08:46', 4, '管理员后台', '获取评价列表', 'success', NULL);
INSERT INTO `log` VALUES (5465, 'admin01', '127.0.0.1', '/admin/admin_index.do', '{}', '2020-04-01 11:10:01', 0, '管理员后台', '管理员后台', 'success', NULL);
INSERT INTO `log` VALUES (5466, 'admin01', '127.0.0.1', '/admin/welcome.do', '{}', '2020-04-01 11:10:01', 0, '管理员后台', '欢迎页面', 'success', NULL);
INSERT INTO `log` VALUES (5467, 'admin01', '127.0.0.1', '/admin/select_welcome.do', '{administratorId: admin01, }', '2020-04-01 11:10:01', 3, '管理员后台', '获取欢迎数据', 'success', NULL);
INSERT INTO `log` VALUES (5468, 'admin01', '127.0.0.1', '/admin/student_course_list.do', '{}', '2020-04-01 11:10:03', 0, '管理员后台', '学生课程列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5469, 'admin01', '127.0.0.1', '/admin/select_student_course_list.do', '{page: 1, limit: 10, }', '2020-04-01 11:10:03', 4, '管理员后台', '获取学生课程列表', 'success', NULL);
INSERT INTO `log` VALUES (5470, 'admin01', '127.0.0.1', '/admin/score_list.do', '{}', '2020-04-01 11:10:12', 0, '管理员后台', '成绩列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5471, 'admin01', '127.0.0.1', '/admin/select_score_list.do', '{page: 1, limit: 10, }', '2020-04-01 11:10:12', 4, '管理员后台', '获取成绩列表', 'success', NULL);
INSERT INTO `log` VALUES (5472, 'admin01', '127.0.0.1', '/admin/admin_index.do', '{}', '2020-04-01 11:11:58', 0, '管理员后台', '管理员后台', 'success', NULL);
INSERT INTO `log` VALUES (5473, 'admin01', '127.0.0.1', '/admin/welcome.do', '{}', '2020-04-01 11:11:59', 0, '管理员后台', '欢迎页面', 'success', NULL);
INSERT INTO `log` VALUES (5474, 'admin01', '127.0.0.1', '/admin/select_welcome.do', '{administratorId: admin01, }', '2020-04-01 11:11:59', 2, '管理员后台', '获取欢迎数据', 'success', NULL);
INSERT INTO `log` VALUES (5475, 'admin01', '127.0.0.1', '/admin/student_course_list.do', '{}', '2020-04-01 11:11:59', 0, '管理员后台', '学生课程列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5476, 'admin01', '127.0.0.1', '/admin/select_student_course_list.do', '{page: 1, limit: 10, }', '2020-04-01 11:11:59', 4, '管理员后台', '获取学生课程列表', 'success', NULL);
INSERT INTO `log` VALUES (5477, 'admin01', '127.0.0.1', '/admin/teacher_course_list.do', '{}', '2020-04-01 11:12:01', 0, '管理员后台', '老师课程列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5478, 'admin01', '127.0.0.1', '/admin/select_teacher_course_list.do', '{page: 1, limit: 10, }', '2020-04-01 11:12:01', 5, '管理员后台', '获取老师课程列表', 'success', NULL);
INSERT INTO `log` VALUES (5479, 'admin01', '127.0.0.1', '/admin/student_course_list.do', '{}', '2020-04-01 11:12:09', 0, '管理员后台', '学生课程列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5480, 'admin01', '127.0.0.1', '/admin/select_student_course_list.do', '{page: 1, limit: 10, }', '2020-04-01 11:12:09', 4, '管理员后台', '获取学生课程列表', 'success', NULL);
INSERT INTO `log` VALUES (5481, 'admin01', '127.0.0.1', '/admin/student_list.do', '{}', '2020-04-01 11:12:17', 0, '管理员后台', '学生列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5482, 'admin01', '127.0.0.1', '/admin/select_student_list.do', '{page: 1, limit: 10, }', '2020-04-01 11:12:17', 4, '管理员后台', '获取学生列表', 'success', NULL);
INSERT INTO `log` VALUES (5483, 'admin01', '127.0.0.1', '/admin/course_list.do', '{}', '2020-04-01 11:12:18', 0, '管理员后台', '课程列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5484, 'admin01', '127.0.0.1', '/admin/select_course_list.do', '{page: 1, limit: 10, }', '2020-04-01 11:12:18', 5, '管理员后台', '获取课程列表', 'success', NULL);
INSERT INTO `log` VALUES (5485, 'admin01', '127.0.0.1', '/admin/student_course_list.do', '{}', '2020-04-01 11:12:22', 0, '管理员后台', '学生课程列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5486, 'admin01', '127.0.0.1', '/admin/select_student_course_list.do', '{page: 1, limit: 10, }', '2020-04-01 11:12:22', 5, '管理员后台', '获取学生课程列表', 'success', NULL);
INSERT INTO `log` VALUES (5487, 'admin01', '127.0.0.1', '/admin/teacher_course_list.do', '{}', '2020-04-01 11:12:22', 0, '管理员后台', '老师课程列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5488, 'admin01', '127.0.0.1', '/admin/select_teacher_course_list.do', '{page: 1, limit: 10, }', '2020-04-01 11:12:22', 4, '管理员后台', '获取老师课程列表', 'success', NULL);
INSERT INTO `log` VALUES (5489, 'admin01', '127.0.0.1', '/admin/student_course_list.do', '{}', '2020-04-01 11:12:23', 0, '管理员后台', '学生课程列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5490, 'admin01', '127.0.0.1', '/admin/select_student_course_list.do', '{page: 1, limit: 10, }', '2020-04-01 11:12:23', 4, '管理员后台', '获取学生课程列表', 'success', NULL);
INSERT INTO `log` VALUES (5491, 'admin01', '127.0.0.1', '/admin/score_list.do', '{}', '2020-04-01 11:12:31', 0, '管理员后台', '成绩列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5492, 'admin01', '127.0.0.1', '/admin/select_score_list.do', '{page: 1, limit: 10, }', '2020-04-01 11:12:31', 4, '管理员后台', '获取成绩列表', 'success', NULL);
INSERT INTO `log` VALUES (5493, 'admin01', '127.0.0.1', '/admin/student_course_list.do', '{}', '2020-04-01 11:12:36', 0, '管理员后台', '学生课程列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5494, 'admin01', '127.0.0.1', '/admin/select_student_course_list.do', '{page: 1, limit: 10, }', '2020-04-01 11:12:36', 5, '管理员后台', '获取学生课程列表', 'success', NULL);
INSERT INTO `log` VALUES (5495, 'admin01', '127.0.0.1', '/admin/insert_student_course.do', '{studentId: 16132201, courseId: c900008783, term: 2020年秋, information: 每天1-8, }', '2020-04-01 11:13:21', 392, '管理员后台', '添加学生课程', 'success', NULL);
INSERT INTO `log` VALUES (5496, 'admin01', '127.0.0.1', '/admin/select_student_course_list.do', '{page: 1, limit: 10, }', '2020-04-01 11:13:21', 6, '管理员后台', '获取学生课程列表', 'success', NULL);
INSERT INTO `log` VALUES (5497, 'admin01', '127.0.0.1', '/admin/student_course_list.do', '{}', '2020-04-01 11:13:26', 0, '管理员后台', '学生课程列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5498, 'admin01', '127.0.0.1', '/admin/select_student_course_list.do', '{page: 1, limit: 10, }', '2020-04-01 11:13:26', 4, '管理员后台', '获取学生课程列表', 'success', NULL);
INSERT INTO `log` VALUES (5499, 'admin01', '127.0.0.1', '/admin/teacher_course_list.do', '{}', '2020-04-01 11:13:42', 0, '管理员后台', '老师课程列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5500, 'admin01', '127.0.0.1', '/admin/select_teacher_course_list.do', '{page: 1, limit: 10, }', '2020-04-01 11:13:42', 5, '管理员后台', '获取老师课程列表', 'success', NULL);
INSERT INTO `log` VALUES (5501, 'admin01', '127.0.0.1', '/admin/course_list.do', '{}', '2020-04-01 11:17:08', 0, '管理员后台', '课程列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5502, 'admin01', '127.0.0.1', '/admin/select_course_list.do', '{page: 1, limit: 10, }', '2020-04-01 11:17:08', 3, '管理员后台', '获取课程列表', 'success', NULL);
INSERT INTO `log` VALUES (5503, 'admin01', '127.0.0.1', '/admin/student_course_list.do', '{}', '2020-04-01 11:17:08', 0, '管理员后台', '学生课程列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5504, 'admin01', '127.0.0.1', '/admin/select_student_course_list.do', '{page: 1, limit: 10, }', '2020-04-01 11:17:09', 4, '管理员后台', '获取学生课程列表', 'success', NULL);
INSERT INTO `log` VALUES (5505, 'admin01', '127.0.0.1', '/admin/score_list.do', '{}', '2020-04-01 11:24:08', 0, '管理员后台', '成绩列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5506, 'admin01', '127.0.0.1', '/admin/select_score_list.do', '{page: 1, limit: 10, }', '2020-04-01 11:24:08', 4, '管理员后台', '获取成绩列表', 'success', NULL);
INSERT INTO `log` VALUES (5507, 'admin01', '127.0.0.1', '/admin/evaluation_list.do', '{}', '2020-04-01 11:24:09', 0, '管理员后台', '评价列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5508, 'admin01', '127.0.0.1', '/admin/select_evaluation_list.do', '{page: 1, limit: 10, }', '2020-04-01 11:24:09', 4, '管理员后台', '获取评价列表', 'success', NULL);
INSERT INTO `log` VALUES (5509, '16132201', '127.0.0.1', '/index.do', '', '2020-04-02 00:52:28', 0, '后台', '登陆成功', 'success', '');
INSERT INTO `log` VALUES (5510, '16132201', '127.0.0.1', '/index.do', '', '2020-04-02 00:52:28', 0, '后台', '登陆失败', 'success', '');
INSERT INTO `log` VALUES (5511, NULL, '127.0.0.1', '/index.do', '{id: 16132201, password: 123456, }', '2020-04-02 00:52:27', 793, '后台', '登陆', 'success', NULL);
INSERT INTO `log` VALUES (5512, '16132201', '127.0.0.1', '/student/student_index.do', '{}', '2020-04-02 00:52:28', 7, '学生后台', '学生后台', 'success', NULL);
INSERT INTO `log` VALUES (5513, '16132201', '127.0.0.1', '/student/welcome.do', '{}', '2020-04-02 00:52:29', 0, '学生后台', '欢迎页面', 'success', NULL);
INSERT INTO `log` VALUES (5514, '16132201', '127.0.0.1', '/student/select_welcome.do', '{studentId: 16132201, }', '2020-04-02 00:52:29', 170, '学生后台', '获取欢迎数据', 'success', NULL);
INSERT INTO `log` VALUES (5515, '16132201', '127.0.0.1', '/student/course_list.do', '{}', '2020-04-02 00:52:32', 5, '学生后台', '课程列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5516, '16132201', '127.0.0.1', '/student/select_course_list.do', '{page: 1, limit: 10, studentId: 16132201, }', '2020-04-02 00:52:32', 223, '学生后台', '获取课程列表', 'success', NULL);
INSERT INTO `log` VALUES (5517, '16132201', '127.0.0.1', '/student/score_list.do', '{}', '2020-04-02 00:52:51', 4, '学生后台', '成绩列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5518, '16132201', '127.0.0.1', '/student/select_score_list.do', '{page: 1, limit: 10, studentId: 16132201, }', '2020-04-02 00:52:51', 11, '学生后台', '获取成绩列表', 'success', NULL);
INSERT INTO `log` VALUES (5519, '16132201', '127.0.0.1', '/student/course_list.do', '{}', '2020-04-02 00:52:53', 0, '学生后台', '课程列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5520, '16132201', '127.0.0.1', '/student/select_course_list.do', '{page: 1, limit: 10, studentId: 16132201, }', '2020-04-02 00:52:53', 7, '学生后台', '获取课程列表', 'success', NULL);
INSERT INTO `log` VALUES (5521, '16132201', '127.0.0.1', '/student/score_list.do', '{}', '2020-04-02 00:52:54', 0, '学生后台', '成绩列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5522, '16132201', '127.0.0.1', '/student/select_score_list.do', '{page: 1, limit: 10, studentId: 16132201, }', '2020-04-02 00:52:54', 5, '学生后台', '获取成绩列表', 'success', NULL);
INSERT INTO `log` VALUES (5523, '16132201', '127.0.0.1', '/student/course_list.do', '{}', '2020-04-02 00:52:55', 0, '学生后台', '课程列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5524, '16132201', '127.0.0.1', '/student/select_course_list.do', '{page: 1, limit: 10, studentId: 16132201, }', '2020-04-02 00:52:55', 7, '学生后台', '获取课程列表', 'success', NULL);
INSERT INTO `log` VALUES (5525, '16132201', '127.0.0.1', '/student/score_list.do', '{}', '2020-04-02 00:52:57', 0, '学生后台', '成绩列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5526, '16132201', '127.0.0.1', '/student/select_score_list.do', '{page: 1, limit: 10, studentId: 16132201, }', '2020-04-02 00:52:57', 6, '学生后台', '获取成绩列表', 'success', NULL);
INSERT INTO `log` VALUES (5527, '16132201', '127.0.0.1', '/student/evaluation_list.do', '{}', '2020-04-02 00:52:58', 5, '学生后台', '评价列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5528, '16132201', '127.0.0.1', '/student/select_evaluation_list.do', '{page: 1, limit: 10, studentId: 16132201, }', '2020-04-02 00:52:58', 9, '学生后台', '获取评价列表', 'success', NULL);
INSERT INTO `log` VALUES (5529, '16132201', '127.0.0.1', '/student/score_list.do', '{}', '2020-04-02 00:53:02', 0, '学生后台', '成绩列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5530, '16132201', '127.0.0.1', '/student/select_score_list.do', '{page: 1, limit: 10, studentId: 16132201, }', '2020-04-02 00:53:02', 7, '学生后台', '获取成绩列表', 'success', NULL);
INSERT INTO `log` VALUES (5531, '16132201', '127.0.0.1', '/student/course_list.do', '{}', '2020-04-02 00:53:06', 0, '学生后台', '课程列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5532, '16132201', '127.0.0.1', '/student/select_course_list.do', '{page: 1, limit: 10, studentId: 16132201, }', '2020-04-02 00:53:06', 8, '学生后台', '获取课程列表', 'success', NULL);
INSERT INTO `log` VALUES (5533, '16132201', '127.0.0.1', '/logout.do', '{}', '2020-04-02 00:53:30', 0, '后台', '登出', 'success', NULL);
INSERT INTO `log` VALUES (5534, 'admin01', '127.0.0.1', '/index.do', '', '2020-04-02 00:53:35', 0, '后台', '登陆成功', 'success', '');
INSERT INTO `log` VALUES (5535, 'admin01', '127.0.0.1', '/index.do', '', '2020-04-02 00:53:35', 0, '后台', '登陆失败', 'success', '');
INSERT INTO `log` VALUES (5536, NULL, '127.0.0.1', '/index.do', '{id: admin01, password: 123, }', '2020-04-02 00:53:35', 193, '后台', '登陆', 'success', NULL);
INSERT INTO `log` VALUES (5537, 'admin01', '127.0.0.1', '/admin/admin_index.do', '{}', '2020-04-02 00:53:35', 6, '管理员后台', '管理员后台', 'success', NULL);
INSERT INTO `log` VALUES (5538, 'admin01', '127.0.0.1', '/admin/welcome.do', '{}', '2020-04-02 00:53:35', 0, '管理员后台', '欢迎页面', 'success', NULL);
INSERT INTO `log` VALUES (5539, 'admin01', '127.0.0.1', '/admin/select_welcome.do', '{administratorId: admin01, }', '2020-04-02 00:53:36', 3, '管理员后台', '获取欢迎数据', 'success', NULL);
INSERT INTO `log` VALUES (5540, 'admin01', '127.0.0.1', '/admin/evaluation_list.do', '{}', '2020-04-02 00:53:36', 4, '管理员后台', '评价列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5541, 'admin01', '127.0.0.1', '/admin/select_evaluation_list.do', '{page: 1, limit: 10, }', '2020-04-02 00:53:37', 56, '管理员后台', '获取评价列表', 'success', NULL);
INSERT INTO `log` VALUES (5542, 'admin01', '127.0.0.1', '/index.do', '', '2020-04-02 01:32:01', 0, '后台', '登陆成功', 'success', '');
INSERT INTO `log` VALUES (5543, 'admin01', '127.0.0.1', '/index.do', '', '2020-04-02 01:32:01', 0, '后台', '登陆失败', 'success', '');
INSERT INTO `log` VALUES (5544, NULL, '127.0.0.1', '/index.do', '{id: admin01, password: 123, }', '2020-04-02 01:32:00', 540, '后台', '登陆', 'success', NULL);
INSERT INTO `log` VALUES (5545, 'admin01', '127.0.0.1', '/admin/admin_index.do', '{}', '2020-04-02 01:32:01', 5, '管理员后台', '管理员后台', 'success', NULL);
INSERT INTO `log` VALUES (5546, 'admin01', '127.0.0.1', '/admin/welcome.do', '{}', '2020-04-02 01:32:01', 0, '管理员后台', '欢迎页面', 'success', NULL);
INSERT INTO `log` VALUES (5547, 'admin01', '127.0.0.1', '/admin/select_welcome.do', '{administratorId: admin01, }', '2020-04-02 01:32:02', 122, '管理员后台', '获取欢迎数据', 'success', NULL);
INSERT INTO `log` VALUES (5548, 'admin01', '127.0.0.1', '/admin/admin_list.do', '{}', '2020-04-02 01:32:03', 0, '管理员后台', '管理员列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5549, 'admin01', '127.0.0.1', '/admin/select_admin_list.do', '{page: 1, limit: 10, }', '2020-04-02 01:32:03', 81, '管理员后台', '获取管理员列表', 'success', NULL);
INSERT INTO `log` VALUES (5550, 'admin01', '127.0.0.1', '/admin/course_list.do', '{}', '2020-04-02 01:32:07', 6, '管理员后台', '课程列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5551, 'admin01', '127.0.0.1', '/admin/select_course_list.do', '{page: 1, limit: 10, }', '2020-04-02 01:32:07', 9, '管理员后台', '获取课程列表', 'success', NULL);
INSERT INTO `log` VALUES (5552, 'admin01', '127.0.0.1', '/admin/student_list.do', '{}', '2020-04-02 01:32:12', 4, '管理员后台', '学生列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5553, 'admin01', '127.0.0.1', '/admin/select_student_list.do', '{page: 1, limit: 10, }', '2020-04-02 01:32:12', 11, '管理员后台', '获取学生列表', 'success', NULL);
INSERT INTO `log` VALUES (5554, 'admin01', '127.0.0.1', '/admin/course_list.do', '{}', '2020-04-02 01:33:18', 0, '管理员后台', '课程列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5555, 'admin01', '127.0.0.1', '/admin/select_course_list.do', '{page: 1, limit: 10, }', '2020-04-02 01:33:18', 5, '管理员后台', '获取课程列表', 'success', NULL);
INSERT INTO `log` VALUES (5556, 'admin01', '127.0.0.1', '/admin/teacher_course_list.do', '{}', '2020-04-02 01:33:28', 5, '管理员后台', '老师课程列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5557, 'admin01', '127.0.0.1', '/admin/select_teacher_course_list.do', '{page: 1, limit: 10, }', '2020-04-02 01:33:28', 40, '管理员后台', '获取老师课程列表', 'success', NULL);
INSERT INTO `log` VALUES (5558, 'admin01', '127.0.0.1', '/admin/course_list.do', '{}', '2020-04-02 01:33:39', 0, '管理员后台', '课程列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5559, 'admin01', '127.0.0.1', '/admin/select_course_list.do', '{page: 1, limit: 10, }', '2020-04-02 01:33:39', 5, '管理员后台', '获取课程列表', 'success', NULL);
INSERT INTO `log` VALUES (5560, 'admin01', '127.0.0.1', '/admin/student_course_list.do', '{}', '2020-04-02 01:33:40', 5, '管理员后台', '学生课程列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5561, 'admin01', '127.0.0.1', '/admin/select_student_course_list.do', '{page: 1, limit: 10, }', '2020-04-02 01:33:41', 10, '管理员后台', '获取学生课程列表', 'success', NULL);
INSERT INTO `log` VALUES (5562, 'admin01', '127.0.0.1', '/admin/teacher_list.do', '{}', '2020-04-02 01:34:28', 6, '管理员后台', '老师列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5563, 'admin01', '127.0.0.1', '/admin/select_teacher_list.do', '{page: 1, limit: 10, }', '2020-04-02 01:34:28', 7, '管理员后台', '获取老师列表', 'success', NULL);
INSERT INTO `log` VALUES (5564, 'admin01', '127.0.0.1', '/admin/score_list.do', '{}', '2020-04-02 01:34:49', 5, '管理员后台', '成绩列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5565, 'admin01', '127.0.0.1', '/admin/select_score_list.do', '{page: 1, limit: 10, }', '2020-04-02 01:34:50', 8, '管理员后台', '获取成绩列表', 'success', NULL);
INSERT INTO `log` VALUES (5566, 'admin01', '127.0.0.1', '/admin/student_course_list.do', '{}', '2020-04-02 01:34:55', 0, '管理员后台', '学生课程列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5567, 'admin01', '127.0.0.1', '/admin/select_student_course_list.do', '{page: 1, limit: 10, }', '2020-04-02 01:34:55', 5, '管理员后台', '获取学生课程列表', 'success', NULL);
INSERT INTO `log` VALUES (5568, 'admin01', '127.0.0.1', '/admin/score_list.do', '{}', '2020-04-02 01:34:58', 0, '管理员后台', '成绩列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5569, 'admin01', '127.0.0.1', '/admin/select_score_list.do', '{page: 1, limit: 10, }', '2020-04-02 01:34:58', 5, '管理员后台', '获取成绩列表', 'success', NULL);
INSERT INTO `log` VALUES (5570, 'admin01', '127.0.0.1', '/admin/student_course_list.do', '{}', '2020-04-02 01:35:04', 0, '管理员后台', '学生课程列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5571, 'admin01', '127.0.0.1', '/admin/select_student_course_list.do', '{page: 1, limit: 10, }', '2020-04-02 01:35:04', 7, '管理员后台', '获取学生课程列表', 'success', NULL);
INSERT INTO `log` VALUES (5572, 'admin01', '127.0.0.1', '/admin/evaluation_list.do', '{}', '2020-04-02 01:36:04', 4, '管理员后台', '评价列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5573, 'admin01', '127.0.0.1', '/admin/select_evaluation_list.do', '{page: 1, limit: 10, }', '2020-04-02 01:36:04', 8, '管理员后台', '获取评价列表', 'success', NULL);
INSERT INTO `log` VALUES (5574, 'admin01', '127.0.0.1', '/admin/evaluation_list.do', '{}', '2020-04-02 01:36:14', 0, '管理员后台', '评价列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5575, 'admin01', '127.0.0.1', '/admin/select_evaluation_list.do', '{page: 1, limit: 10, }', '2020-04-02 01:36:15', 7, '管理员后台', '获取评价列表', 'success', NULL);
INSERT INTO `log` VALUES (5576, 'admin01', '127.0.0.1', '/admin/score_list.do', '{}', '2020-04-02 01:36:15', 0, '管理员后台', '成绩列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5577, 'admin01', '127.0.0.1', '/admin/select_score_list.do', '{page: 1, limit: 10, }', '2020-04-02 01:36:15', 5, '管理员后台', '获取成绩列表', 'success', NULL);
INSERT INTO `log` VALUES (5578, 'admin01', '127.0.0.1', '/admin/student_course_list.do', '{}', '2020-04-02 01:36:39', 0, '管理员后台', '学生课程列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5579, 'admin01', '127.0.0.1', '/admin/select_student_course_list.do', '{page: 1, limit: 10, }', '2020-04-02 01:36:39', 5, '管理员后台', '获取学生课程列表', 'success', NULL);
INSERT INTO `log` VALUES (5580, 'admin01', '127.0.0.1', '/admin/score_list.do', '{}', '2020-04-02 01:37:37', 1, '管理员后台', '成绩列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5581, 'admin01', '127.0.0.1', '/admin/select_score_list.do', '{page: 1, limit: 10, }', '2020-04-02 01:37:37', 5, '管理员后台', '获取成绩列表', 'success', NULL);
INSERT INTO `log` VALUES (5582, 'admin01', '127.0.0.1', '/admin/student_course_list.do', '{}', '2020-04-02 01:39:35', 0, '管理员后台', '学生课程列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5583, 'admin01', '127.0.0.1', '/admin/select_student_course_list.do', '{page: 1, limit: 10, }', '2020-04-02 01:39:35', 5, '管理员后台', '获取学生课程列表', 'success', NULL);
INSERT INTO `log` VALUES (5584, 'admin01', '127.0.0.1', '/admin/teacher_course_list.do', '{}', '2020-04-02 01:39:36', 0, '管理员后台', '老师课程列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5585, 'admin01', '127.0.0.1', '/admin/select_teacher_course_list.do', '{page: 1, limit: 10, }', '2020-04-02 01:39:36', 6, '管理员后台', '获取老师课程列表', 'success', NULL);
INSERT INTO `log` VALUES (5586, 'admin01', '127.0.0.1', '/admin/student_course_list.do', '{}', '2020-04-02 01:39:36', 0, '管理员后台', '学生课程列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5587, 'admin01', '127.0.0.1', '/admin/select_student_course_list.do', '{page: 1, limit: 10, }', '2020-04-02 01:39:36', 5, '管理员后台', '获取学生课程列表', 'success', NULL);
INSERT INTO `log` VALUES (5588, 'admin01', '127.0.0.1', '/admin/teacher_course_list.do', '{}', '2020-04-02 01:39:37', 0, '管理员后台', '老师课程列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5589, 'admin01', '127.0.0.1', '/admin/select_teacher_course_list.do', '{page: 1, limit: 10, }', '2020-04-02 01:39:37', 4, '管理员后台', '获取老师课程列表', 'success', NULL);
INSERT INTO `log` VALUES (5590, 'admin01', '127.0.0.1', '/admin/student_course_list.do', '{}', '2020-04-02 01:39:37', 0, '管理员后台', '学生课程列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5591, 'admin01', '127.0.0.1', '/admin/select_student_course_list.do', '{page: 1, limit: 10, }', '2020-04-02 01:39:37', 4, '管理员后台', '获取学生课程列表', 'success', NULL);
INSERT INTO `log` VALUES (5592, 'admin01', '127.0.0.1', '/admin/teacher_course_list.do', '{}', '2020-04-02 01:39:37', 0, '管理员后台', '老师课程列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5593, 'admin01', '127.0.0.1', '/admin/select_teacher_course_list.do', '{page: 1, limit: 10, }', '2020-04-02 01:39:38', 5, '管理员后台', '获取老师课程列表', 'success', NULL);
INSERT INTO `log` VALUES (5594, 'admin01', '127.0.0.1', '/admin/student_course_list.do', '{}', '2020-04-02 01:39:38', 0, '管理员后台', '学生课程列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5595, 'admin01', '127.0.0.1', '/admin/select_student_course_list.do', '{page: 1, limit: 10, }', '2020-04-02 01:39:38', 5, '管理员后台', '获取学生课程列表', 'success', NULL);
INSERT INTO `log` VALUES (5596, 'admin01', '127.0.0.1', '/admin/teacher_course_list.do', '{}', '2020-04-02 01:39:38', 0, '管理员后台', '老师课程列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5597, 'admin01', '127.0.0.1', '/admin/select_teacher_course_list.do', '{page: 1, limit: 10, }', '2020-04-02 01:39:38', 4, '管理员后台', '获取老师课程列表', 'success', NULL);
INSERT INTO `log` VALUES (5598, 'admin01', '127.0.0.1', '/admin/student_course_list.do', '{}', '2020-04-02 01:39:40', 0, '管理员后台', '学生课程列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5599, 'admin01', '127.0.0.1', '/admin/select_student_course_list.do', '{page: 1, limit: 10, }', '2020-04-02 01:39:40', 3, '管理员后台', '获取学生课程列表', 'success', NULL);
INSERT INTO `log` VALUES (5600, 'admin01', '127.0.0.1', '/admin/teacher_course_list.do', '{}', '2020-04-02 01:39:40', 0, '管理员后台', '老师课程列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5601, 'admin01', '127.0.0.1', '/admin/select_teacher_course_list.do', '{page: 1, limit: 10, }', '2020-04-02 01:39:41', 5, '管理员后台', '获取老师课程列表', 'success', NULL);
INSERT INTO `log` VALUES (5602, 'admin01', '127.0.0.1', '/admin/course_list.do', '{}', '2020-04-02 01:39:41', 0, '管理员后台', '课程列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5603, 'admin01', '127.0.0.1', '/admin/select_course_list.do', '{page: 1, limit: 10, }', '2020-04-02 01:39:41', 4, '管理员后台', '获取课程列表', 'success', NULL);
INSERT INTO `log` VALUES (5604, 'admin01', '127.0.0.1', '/admin/teacher_course_list.do', '{}', '2020-04-02 01:39:41', 0, '管理员后台', '老师课程列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5605, 'admin01', '127.0.0.1', '/admin/select_teacher_course_list.do', '{page: 1, limit: 10, }', '2020-04-02 01:39:41', 5, '管理员后台', '获取老师课程列表', 'success', NULL);
INSERT INTO `log` VALUES (5606, 'admin01', '127.0.0.1', '/admin/student_course_list.do', '{}', '2020-04-02 01:39:41', 0, '管理员后台', '学生课程列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5607, 'admin01', '127.0.0.1', '/admin/select_student_course_list.do', '{page: 1, limit: 10, }', '2020-04-02 01:39:42', 4, '管理员后台', '获取学生课程列表', 'success', NULL);
INSERT INTO `log` VALUES (5608, 'admin01', '127.0.0.1', '/admin/teacher_course_list.do', '{}', '2020-04-02 01:39:42', 0, '管理员后台', '老师课程列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5609, 'admin01', '127.0.0.1', '/admin/select_teacher_course_list.do', '{page: 1, limit: 10, }', '2020-04-02 01:39:42', 5, '管理员后台', '获取老师课程列表', 'success', NULL);
INSERT INTO `log` VALUES (5610, 'admin01', '127.0.0.1', '/admin/course_list.do', '{}', '2020-04-02 01:39:42', 0, '管理员后台', '课程列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5611, 'admin01', '127.0.0.1', '/admin/select_course_list.do', '{page: 1, limit: 10, }', '2020-04-02 01:39:42', 3, '管理员后台', '获取课程列表', 'success', NULL);
INSERT INTO `log` VALUES (5612, 'admin01', '127.0.0.1', '/admin/admin_list.do', '{}', '2020-04-02 01:39:44', 0, '管理员后台', '管理员列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5613, 'admin01', '127.0.0.1', '/admin/select_admin_list.do', '{page: 1, limit: 10, }', '2020-04-02 01:39:44', 4, '管理员后台', '获取管理员列表', 'success', NULL);
INSERT INTO `log` VALUES (5614, 'admin01', '127.0.0.1', '/admin/teacher_list.do', '{}', '2020-04-02 01:39:44', 0, '管理员后台', '老师列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5615, 'admin01', '127.0.0.1', '/admin/select_teacher_list.do', '{page: 1, limit: 10, }', '2020-04-02 01:39:44', 4, '管理员后台', '获取老师列表', 'success', NULL);
INSERT INTO `log` VALUES (5616, 'admin01', '127.0.0.1', '/admin/student_list.do', '{}', '2020-04-02 01:39:45', 1, '管理员后台', '学生列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5617, 'admin01', '127.0.0.1', '/admin/select_student_list.do', '{page: 1, limit: 10, }', '2020-04-02 01:39:45', 5, '管理员后台', '获取学生列表', 'success', NULL);
INSERT INTO `log` VALUES (5618, 'admin01', '127.0.0.1', '/admin/teacher_list.do', '{}', '2020-04-02 01:39:46', 0, '管理员后台', '老师列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5619, 'admin01', '127.0.0.1', '/admin/select_teacher_list.do', '{page: 1, limit: 10, }', '2020-04-02 01:39:46', 4, '管理员后台', '获取老师列表', 'success', NULL);
INSERT INTO `log` VALUES (5620, 'admin01', '127.0.0.1', '/admin/admin_list.do', '{}', '2020-04-02 01:39:46', 0, '管理员后台', '管理员列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5621, 'admin01', '127.0.0.1', '/admin/select_admin_list.do', '{page: 1, limit: 10, }', '2020-04-02 01:39:46', 3, '管理员后台', '获取管理员列表', 'success', NULL);
INSERT INTO `log` VALUES (5622, 'admin01', '127.0.0.1', '/admin/teacher_list.do', '{}', '2020-04-02 01:39:46', 0, '管理员后台', '老师列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5623, 'admin01', '127.0.0.1', '/admin/select_teacher_list.do', '{page: 1, limit: 10, }', '2020-04-02 01:39:46', 4, '管理员后台', '获取老师列表', 'success', NULL);
INSERT INTO `log` VALUES (5624, 'admin01', '127.0.0.1', '/admin/student_list.do', '{}', '2020-04-02 01:39:47', 0, '管理员后台', '学生列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5625, 'admin01', '127.0.0.1', '/admin/select_student_list.do', '{page: 1, limit: 10, }', '2020-04-02 01:39:47', 5, '管理员后台', '获取学生列表', 'success', NULL);
INSERT INTO `log` VALUES (5626, 'admin01', '127.0.0.1', '/admin/teacher_list.do', '{}', '2020-04-02 01:39:47', 0, '管理员后台', '老师列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5627, 'admin01', '127.0.0.1', '/admin/select_teacher_list.do', '{page: 1, limit: 10, }', '2020-04-02 01:39:47', 4, '管理员后台', '获取老师列表', 'success', NULL);
INSERT INTO `log` VALUES (5628, 'admin01', '127.0.0.1', '/admin/admin_list.do', '{}', '2020-04-02 01:39:48', 0, '管理员后台', '管理员列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5629, 'admin01', '127.0.0.1', '/admin/select_admin_list.do', '{page: 1, limit: 10, }', '2020-04-02 01:39:48', 4, '管理员后台', '获取管理员列表', 'success', NULL);
INSERT INTO `log` VALUES (5630, 'admin01', '127.0.0.1', '/admin/teacher_list.do', '{}', '2020-04-02 01:40:11', 0, '管理员后台', '老师列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5631, 'admin01', '127.0.0.1', '/admin/select_teacher_list.do', '{page: 1, limit: 10, }', '2020-04-02 01:40:11', 3, '管理员后台', '获取老师列表', 'success', NULL);
INSERT INTO `log` VALUES (5632, 'admin01', '127.0.0.1', '/admin/student_course_list.do', '{}', '2020-04-02 01:45:18', 0, '管理员后台', '学生课程列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5633, 'admin01', '127.0.0.1', '/admin/select_student_course_list.do', '{page: 1, limit: 10, }', '2020-04-02 01:45:18', 4, '管理员后台', '获取学生课程列表', 'success', NULL);
INSERT INTO `log` VALUES (5634, 'admin01', '127.0.0.1', '/admin/score_list.do', '{}', '2020-04-02 01:45:23', 0, '管理员后台', '成绩列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5635, 'admin01', '127.0.0.1', '/admin/select_score_list.do', '{page: 1, limit: 10, }', '2020-04-02 01:45:23', 5, '管理员后台', '获取成绩列表', 'success', NULL);
INSERT INTO `log` VALUES (5636, 'admin01', '127.0.0.1', '/admin/student_course_list.do', '{}', '2020-04-02 01:45:24', 0, '管理员后台', '学生课程列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5637, 'admin01', '127.0.0.1', '/admin/select_student_course_list.do', '{page: 1, limit: 10, }', '2020-04-02 01:45:25', 6, '管理员后台', '获取学生课程列表', 'success', NULL);
INSERT INTO `log` VALUES (5638, 'admin01', '127.0.0.1', '/admin/insert_student_course.do', '{studentId: 16132201, courseId: 111, term: 111, information: 111, }', '2020-04-02 01:45:35', 147, '管理员后台', '添加学生课程', 'success', NULL);
INSERT INTO `log` VALUES (5639, 'admin01', '127.0.0.1', '/admin/select_student_course_list.do', '{page: 1, limit: 10, }', '2020-04-02 01:45:35', 6, '管理员后台', '获取学生课程列表', 'success', NULL);
INSERT INTO `log` VALUES (5640, 'admin01', '127.0.0.1', '/admin/score_list.do', '{}', '2020-04-02 01:45:36', 0, '管理员后台', '成绩列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5641, 'admin01', '127.0.0.1', '/admin/select_score_list.do', '{page: 1, limit: 10, }', '2020-04-02 01:45:37', 7, '管理员后台', '获取成绩列表', 'success', NULL);
INSERT INTO `log` VALUES (5642, 'admin01', '127.0.0.1', '/admin/student_course_list.do', '{}', '2020-04-02 01:45:55', 0, '管理员后台', '学生课程列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5643, 'admin01', '127.0.0.1', '/admin/select_student_course_list.do', '{page: 1, limit: 10, }', '2020-04-02 01:45:56', 6, '管理员后台', '获取学生课程列表', 'success', NULL);
INSERT INTO `log` VALUES (5644, 'admin01', '127.0.0.1', '/admin/score_list.do', '{}', '2020-04-02 01:46:13', 0, '管理员后台', '成绩列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5645, 'admin01', '127.0.0.1', '/admin/select_score_list.do', '{page: 1, limit: 10, }', '2020-04-02 01:46:13', 5, '管理员后台', '获取成绩列表', 'success', NULL);
INSERT INTO `log` VALUES (5646, 'admin01', '127.0.0.1', '/admin/evaluation_list.do', '{}', '2020-04-02 01:47:24', 0, '管理员后台', '评价列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5647, 'admin01', '127.0.0.1', '/admin/select_evaluation_list.do', '{page: 1, limit: 10, }', '2020-04-02 01:47:25', 4, '管理员后台', '获取评价列表', 'success', NULL);
INSERT INTO `log` VALUES (5648, 'admin01', '127.0.0.1', '/admin/student_course_list.do', '{}', '2020-04-02 01:47:40', 0, '管理员后台', '学生课程列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5649, 'admin01', '127.0.0.1', '/admin/select_student_course_list.do', '{page: 1, limit: 10, }', '2020-04-02 01:47:40', 5, '管理员后台', '获取学生课程列表', 'success', NULL);
INSERT INTO `log` VALUES (5650, 'admin01', '127.0.0.1', '/logout.do', '{}', '2020-04-02 01:48:36', 0, '后台', '登出', 'success', NULL);
INSERT INTO `log` VALUES (5651, 'admin01', '127.0.0.1', '/index.do', '', '2020-04-02 01:48:40', 0, '后台', '登陆成功', 'success', '');
INSERT INTO `log` VALUES (5652, 'admin01', '127.0.0.1', '/index.do', '', '2020-04-02 01:48:40', 0, '后台', '登陆失败', 'success', '');
INSERT INTO `log` VALUES (5653, NULL, '127.0.0.1', '/index.do', '{id: admin01, password: 123, }', '2020-04-02 01:48:40', 189, '后台', '登陆', 'success', NULL);
INSERT INTO `log` VALUES (5654, 'admin01', '127.0.0.1', '/admin/admin_index.do', '{}', '2020-04-02 01:48:40', 0, '管理员后台', '管理员后台', 'success', NULL);
INSERT INTO `log` VALUES (5655, 'admin01', '127.0.0.1', '/admin/welcome.do', '{}', '2020-04-02 01:48:41', 0, '管理员后台', '欢迎页面', 'success', NULL);
INSERT INTO `log` VALUES (5656, 'admin01', '127.0.0.1', '/admin/select_welcome.do', '{administratorId: admin01, }', '2020-04-02 01:48:41', 3, '管理员后台', '获取欢迎数据', 'success', NULL);
INSERT INTO `log` VALUES (5657, 'admin01', '127.0.0.1', '/admin/evaluation_list.do', '{}', '2020-04-02 01:50:55', 0, '管理员后台', '评价列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5658, 'admin01', '127.0.0.1', '/admin/select_evaluation_list.do', '{page: 1, limit: 10, }', '2020-04-02 01:50:55', 5, '管理员后台', '获取评价列表', 'success', NULL);
INSERT INTO `log` VALUES (5659, 'admin01', '127.0.0.1', '/admin/insert_evaluation.do', '{studentId: 16132201, courseId: c906168465, score: 优, term: 2200, }', '2020-04-02 01:51:35', 127, '管理员后台', '添加评价', 'success', NULL);
INSERT INTO `log` VALUES (5660, 'admin01', '127.0.0.1', '/admin/select_evaluation_list.do', '{page: 1, limit: 10, }', '2020-04-02 01:51:35', 4, '管理员后台', '获取评价列表', 'success', NULL);
INSERT INTO `log` VALUES (5661, 'admin01', '127.0.0.1', '/logout.do', '{}', '2020-04-02 01:51:38', 0, '后台', '登出', 'success', NULL);
INSERT INTO `log` VALUES (5662, '16132201', '127.0.0.1', '/index.do', '', '2020-04-02 01:51:44', 0, '后台', '登陆成功', 'success', '');
INSERT INTO `log` VALUES (5663, '16132201', '127.0.0.1', '/index.do', '', '2020-04-02 01:51:44', 0, '后台', '登陆失败', 'success', '');
INSERT INTO `log` VALUES (5664, NULL, '127.0.0.1', '/index.do', '{id: 16132201, password: 123456, }', '2020-04-02 01:51:44', 174, '后台', '登陆', 'success', NULL);
INSERT INTO `log` VALUES (5665, '16132201', '127.0.0.1', '/student/student_index.do', '{}', '2020-04-02 01:51:44', 6, '学生后台', '学生后台', 'success', NULL);
INSERT INTO `log` VALUES (5666, '16132201', '127.0.0.1', '/student/welcome.do', '{}', '2020-04-02 01:51:44', 0, '学生后台', '欢迎页面', 'success', NULL);
INSERT INTO `log` VALUES (5667, '16132201', '127.0.0.1', '/student/select_welcome.do', '{studentId: 16132201, }', '2020-04-02 01:51:45', 2, '学生后台', '获取欢迎数据', 'success', NULL);
INSERT INTO `log` VALUES (5668, '16132201', '127.0.0.1', '/student/evaluation_list.do', '{}', '2020-04-02 01:51:45', 4, '学生后台', '评价列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5669, '16132201', '127.0.0.1', '/student/select_evaluation_list.do', '{page: 1, limit: 10, studentId: 16132201, }', '2020-04-02 01:51:45', 12, '学生后台', '获取评价列表', 'fail', NULL);
INSERT INTO `log` VALUES (5670, '16132201', '127.0.0.1', '/student/evaluation_list.do', '{}', '2020-04-02 01:54:02', 0, '学生后台', '评价列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5671, '16132201', '127.0.0.1', '/student/select_evaluation_list.do', '{page: 1, limit: 10, studentId: 16132201, }', '2020-04-02 01:54:02', 4, '学生后台', '获取评价列表', 'fail', NULL);
INSERT INTO `log` VALUES (5672, '16132201', '127.0.0.1', '/student/evaluation_list.do', '{}', '2020-04-02 01:55:22', 0, '学生后台', '评价列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5673, '16132201', '127.0.0.1', '/student/select_evaluation_list.do', '{page: 1, limit: 10, studentId: 16132201, }', '2020-04-02 01:55:22', 2, '学生后台', '获取评价列表', 'fail', NULL);
INSERT INTO `log` VALUES (5674, '16132201', '127.0.0.1', '/logout.do', '{}', '2020-04-02 01:55:59', 1, '后台', '登出', 'success', NULL);
INSERT INTO `log` VALUES (5675, '16132201', '127.0.0.1', '/index.do', '', '2020-04-02 01:56:18', 0, '后台', '登陆成功', 'success', '');
INSERT INTO `log` VALUES (5676, '16132201', '127.0.0.1', '/index.do', '', '2020-04-02 01:56:18', 0, '后台', '登陆失败', 'success', '');
INSERT INTO `log` VALUES (5677, NULL, '127.0.0.1', '/index.do', '{id: 16132201, password: 12314256345, }', '2020-04-02 01:56:18', 101, '后台', '登陆', 'success', NULL);
INSERT INTO `log` VALUES (5678, '16132201', '127.0.0.1', '/index.do', '', '2020-04-02 01:56:24', 0, '后台', '登陆成功', 'success', '');
INSERT INTO `log` VALUES (5679, '16132201', '127.0.0.1', '/index.do', '', '2020-04-02 01:56:24', 0, '后台', '登陆失败', 'success', '');
INSERT INTO `log` VALUES (5680, NULL, '127.0.0.1', '/index.do', '{id: 16132201, password: 123456, }', '2020-04-02 01:56:24', 92, '后台', '登陆', 'success', NULL);
INSERT INTO `log` VALUES (5681, '16132201', '127.0.0.1', '/student/student_index.do', '{}', '2020-04-02 01:56:24', 0, '学生后台', '学生后台', 'success', NULL);
INSERT INTO `log` VALUES (5682, '16132201', '127.0.0.1', '/student/welcome.do', '{}', '2020-04-02 01:56:24', 0, '学生后台', '欢迎页面', 'success', NULL);
INSERT INTO `log` VALUES (5683, '16132201', '127.0.0.1', '/student/select_welcome.do', '{studentId: 16132201, }', '2020-04-02 01:56:24', 3, '学生后台', '获取欢迎数据', 'success', NULL);
INSERT INTO `log` VALUES (5684, '16132201', '127.0.0.1', '/student/evaluation_list.do', '{}', '2020-04-02 01:56:26', 0, '学生后台', '评价列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5685, '16132201', '127.0.0.1', '/student/select_evaluation_list.do', '{page: 1, limit: 10, studentId: 16132201, }', '2020-04-02 01:56:26', 4, '学生后台', '获取评价列表', 'fail', NULL);
INSERT INTO `log` VALUES (5686, '16132201', '127.0.0.1', '/student/score_list.do', '{}', '2020-04-02 01:56:29', 3, '学生后台', '成绩列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5687, '16132201', '127.0.0.1', '/student/select_score_list.do', '{page: 1, limit: 10, studentId: 16132201, }', '2020-04-02 01:56:29', 5, '学生后台', '获取成绩列表', 'success', NULL);
INSERT INTO `log` VALUES (5688, '16132201', '127.0.0.1', '/student/evaluation_list.do', '{}', '2020-04-02 01:56:30', 0, '学生后台', '评价列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5689, '16132201', '127.0.0.1', '/student/select_evaluation_list.do', '{page: 1, limit: 10, studentId: 16132201, }', '2020-04-02 01:56:30', 5, '学生后台', '获取评价列表', 'fail', NULL);
INSERT INTO `log` VALUES (5690, '16132201', '127.0.0.1', '/student/course_list.do', '{}', '2020-04-02 01:56:54', 3, '学生后台', '课程列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5691, '16132201', '127.0.0.1', '/student/select_course_list.do', '{page: 1, limit: 10, studentId: 16132201, }', '2020-04-02 01:56:54', 11, '学生后台', '获取课程列表', 'success', NULL);
INSERT INTO `log` VALUES (5692, '16132201', '127.0.0.1', '/logout.do', '{}', '2020-04-02 01:59:43', 1, '后台', '登出', 'success', NULL);
INSERT INTO `log` VALUES (5693, 'admin01', '127.0.0.1', '/index.do', '', '2020-04-02 01:59:48', 0, '后台', '登陆成功', 'success', '');
INSERT INTO `log` VALUES (5694, 'admin01', '127.0.0.1', '/index.do', '', '2020-04-02 01:59:48', 0, '后台', '登陆失败', 'success', '');
INSERT INTO `log` VALUES (5695, NULL, '127.0.0.1', '/index.do', '{id: admin01, password: 123, }', '2020-04-02 01:59:48', 154, '后台', '登陆', 'success', NULL);
INSERT INTO `log` VALUES (5696, 'admin01', '127.0.0.1', '/admin/admin_index.do', '{}', '2020-04-02 01:59:48', 0, '管理员后台', '管理员后台', 'success', NULL);
INSERT INTO `log` VALUES (5697, 'admin01', '127.0.0.1', '/admin/welcome.do', '{}', '2020-04-02 01:59:48', 0, '管理员后台', '欢迎页面', 'success', NULL);
INSERT INTO `log` VALUES (5698, 'admin01', '127.0.0.1', '/admin/select_welcome.do', '{administratorId: admin01, }', '2020-04-02 01:59:48', 7, '管理员后台', '获取欢迎数据', 'success', NULL);
INSERT INTO `log` VALUES (5699, 'admin01', '127.0.0.1', '/logout.do', '{}', '2020-04-02 02:00:50', 1, '后台', '登出', 'success', NULL);
INSERT INTO `log` VALUES (5700, '109611', '127.0.0.1', '/index.do', '', '2020-04-02 02:01:06', 0, '后台', '登陆成功', 'success', '');
INSERT INTO `log` VALUES (5701, '109611', '127.0.0.1', '/index.do', '', '2020-04-02 02:01:06', 0, '后台', '登陆失败', 'success', '');
INSERT INTO `log` VALUES (5702, NULL, '127.0.0.1', '/index.do', '{id: 109611, password: 543343, }', '2020-04-02 02:01:06', 154, '后台', '登陆', 'success', NULL);
INSERT INTO `log` VALUES (5703, '109611', '127.0.0.1', '/teacher/teacher_index.do', '{}', '2020-04-02 02:01:06', 4, '老师后台', '老师后台', 'success', NULL);
INSERT INTO `log` VALUES (5704, '109611', '127.0.0.1', '/teacher/welcome.do', '{}', '2020-04-02 02:01:06', 0, '老师后台', '欢迎页面', 'success', NULL);
INSERT INTO `log` VALUES (5705, '109611', '127.0.0.1', '/teacher/select_welcome.do', '{teacherId: 109611, }', '2020-04-02 02:01:06', 3, '老师后台', '获取欢迎数据', 'success', NULL);
INSERT INTO `log` VALUES (5706, '109611', '127.0.0.1', '/teacher/evaluation_list.do', '{}', '2020-04-02 02:01:07', 4, '老师后台', '评价列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5707, '109611', '127.0.0.1', '/teacher/select_evaluation_list.do', '{page: 1, limit: 10, teacherId: 109611, }', '2020-04-02 02:01:07', 4, '老师后台', '获取评价列表', 'fail', NULL);
INSERT INTO `log` VALUES (5708, '109611', '127.0.0.1', '/teacher/modify_password.do', '{}', '2020-04-02 02:01:59', 0, '老师后台', '修改密码页面', 'success', NULL);
INSERT INTO `log` VALUES (5709, '109611', '127.0.0.1', '/logout.do', '{}', '2020-04-02 02:02:00', 0, '后台', '登出', 'success', NULL);
INSERT INTO `log` VALUES (5710, 'admin01', '127.0.0.1', '/index.do', '', '2020-04-02 02:02:04', 0, '后台', '登陆成功', 'success', '');
INSERT INTO `log` VALUES (5711, 'admin01', '127.0.0.1', '/index.do', '', '2020-04-02 02:02:04', 0, '后台', '登陆失败', 'success', '');
INSERT INTO `log` VALUES (5712, NULL, '127.0.0.1', '/index.do', '{id: admin01, password: 123, }', '2020-04-02 02:02:04', 192, '后台', '登陆', 'success', NULL);
INSERT INTO `log` VALUES (5713, 'admin01', '127.0.0.1', '/admin/admin_index.do', '{}', '2020-04-02 02:02:04', 0, '管理员后台', '管理员后台', 'success', NULL);
INSERT INTO `log` VALUES (5714, 'admin01', '127.0.0.1', '/admin/welcome.do', '{}', '2020-04-02 02:02:04', 0, '管理员后台', '欢迎页面', 'success', NULL);
INSERT INTO `log` VALUES (5715, 'admin01', '127.0.0.1', '/admin/select_welcome.do', '{administratorId: admin01, }', '2020-04-02 02:02:04', 3, '管理员后台', '获取欢迎数据', 'success', NULL);
INSERT INTO `log` VALUES (5716, 'admin01', '127.0.0.1', '/admin/evaluation_list.do', '{}', '2020-04-02 02:02:06', 0, '管理员后台', '评价列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5717, 'admin01', '127.0.0.1', '/admin/select_evaluation_list.do', '{page: 1, limit: 10, }', '2020-04-02 02:02:06', 3, '管理员后台', '获取评价列表', 'success', NULL);
INSERT INTO `log` VALUES (5718, 'admin01', '127.0.0.1', '/logout.do', '{}', '2020-04-02 02:02:41', 0, '后台', '登出', 'success', NULL);
INSERT INTO `log` VALUES (5719, NULL, '127.0.0.1', '/login.do', '{}', '2020-04-02 02:03:05', 0, '前台', '登陆页面', 'success', NULL);
INSERT INTO `log` VALUES (5720, 'admin01', '127.0.0.1', '/index.do', '', '2020-04-02 02:03:10', 0, '后台', '登陆成功', 'success', '');
INSERT INTO `log` VALUES (5721, 'admin01', '127.0.0.1', '/index.do', '', '2020-04-02 02:03:10', 0, '后台', '登陆失败', 'success', '');
INSERT INTO `log` VALUES (5722, NULL, '127.0.0.1', '/index.do', '{id: admin01, password: 123, }', '2020-04-02 02:03:10', 95, '后台', '登陆', 'success', NULL);
INSERT INTO `log` VALUES (5723, 'admin01', '127.0.0.1', '/admin/admin_index.do', '{}', '2020-04-02 02:03:10', 0, '管理员后台', '管理员后台', 'success', NULL);
INSERT INTO `log` VALUES (5724, 'admin01', '127.0.0.1', '/admin/welcome.do', '{}', '2020-04-02 02:03:10', 0, '管理员后台', '欢迎页面', 'success', NULL);
INSERT INTO `log` VALUES (5725, 'admin01', '127.0.0.1', '/admin/select_welcome.do', '{administratorId: admin01, }', '2020-04-02 02:03:10', 3, '管理员后台', '获取欢迎数据', 'success', NULL);
INSERT INTO `log` VALUES (5726, 'admin01', '127.0.0.1', '/index.do', '', '2020-04-02 02:03:25', 0, '后台', '登陆成功', 'success', '');
INSERT INTO `log` VALUES (5727, 'admin01', '127.0.0.1', '/index.do', '', '2020-04-02 02:03:25', 0, '后台', '登陆失败', 'success', '');
INSERT INTO `log` VALUES (5728, NULL, '127.0.0.1', '/index.do', '{id: admin01, password: 123, }', '2020-04-02 02:03:25', 185, '后台', '登陆', 'success', NULL);
INSERT INTO `log` VALUES (5729, 'admin01', '127.0.0.1', '/admin/admin_index.do', '{}', '2020-04-02 02:03:25', 0, '管理员后台', '管理员后台', 'success', NULL);
INSERT INTO `log` VALUES (5730, 'admin01', '127.0.0.1', '/admin/welcome.do', '{}', '2020-04-02 02:03:25', 0, '管理员后台', '欢迎页面', 'success', NULL);
INSERT INTO `log` VALUES (5731, 'admin01', '127.0.0.1', '/admin/select_welcome.do', '{administratorId: admin01, }', '2020-04-02 02:03:26', 3, '管理员后台', '获取欢迎数据', 'success', NULL);
INSERT INTO `log` VALUES (5732, 'admin01', '127.0.0.1', '/admin/teacher_course_list.do', '{}', '2020-04-02 02:03:27', 0, '管理员后台', '老师课程列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5733, 'admin01', '127.0.0.1', '/admin/select_teacher_course_list.do', '{page: 1, limit: 10, }', '2020-04-02 02:03:27', 5, '管理员后台', '获取老师课程列表', 'success', NULL);
INSERT INTO `log` VALUES (5734, 'admin01', '127.0.0.1', '/logout.do', '{}', '2020-04-02 02:03:48', 0, '后台', '登出', 'success', NULL);
INSERT INTO `log` VALUES (5735, '109673', '127.0.0.1', '/index.do', '', '2020-04-02 02:04:03', 0, '后台', '登陆成功', 'success', '');
INSERT INTO `log` VALUES (5736, '109673', '127.0.0.1', '/index.do', '', '2020-04-02 02:04:03', 0, '后台', '登陆失败', 'success', '');
INSERT INTO `log` VALUES (5737, NULL, '127.0.0.1', '/index.do', '{id: 109673, password: 554321, }', '2020-04-02 02:04:03', 180, '后台', '登陆', 'success', NULL);
INSERT INTO `log` VALUES (5738, '109673', '127.0.0.1', '/teacher/teacher_index.do', '{}', '2020-04-02 02:04:04', 0, '老师后台', '老师后台', 'success', NULL);
INSERT INTO `log` VALUES (5739, '109673', '127.0.0.1', '/teacher/welcome.do', '{}', '2020-04-02 02:04:04', 0, '老师后台', '欢迎页面', 'success', NULL);
INSERT INTO `log` VALUES (5740, '109673', '127.0.0.1', '/teacher/select_welcome.do', '{teacherId: 109673, }', '2020-04-02 02:04:04', 3, '老师后台', '获取欢迎数据', 'success', NULL);
INSERT INTO `log` VALUES (5741, '109673', '127.0.0.1', '/teacher/evaluation_list.do', '{}', '2020-04-02 02:04:05', 0, '老师后台', '评价列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5742, '109673', '127.0.0.1', '/teacher/select_evaluation_list.do', '{page: 1, limit: 10, teacherId: 109673, }', '2020-04-02 02:04:05', 4, '老师后台', '获取评价列表', 'fail', NULL);
INSERT INTO `log` VALUES (5743, '109673', '127.0.0.1', '/teacher/course_list.do', '{}', '2020-04-02 02:10:00', 5, '老师后台', '课程列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5744, '109673', '127.0.0.1', '/teacher/score_list.do', '{}', '2020-04-02 02:10:01', 4, '老师后台', '成绩列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5745, '109673', '127.0.0.1', '/teacher/select_score_list.do', '{page: 1, limit: 10, teacherId: 109673, }', '2020-04-02 02:10:01', 7, '老师后台', '获取成绩列表', 'success', NULL);
INSERT INTO `log` VALUES (5746, '109673', '127.0.0.1', '/logout.do', '{}', '2020-04-02 02:11:10', 0, '后台', '登出', 'success', NULL);
INSERT INTO `log` VALUES (5747, '109611', '127.0.0.1', '/index.do', '', '2020-04-02 02:11:36', 0, '后台', '登陆成功', 'success', '');
INSERT INTO `log` VALUES (5748, '109611', '127.0.0.1', '/index.do', '', '2020-04-02 02:11:37', 0, '后台', '登陆失败', 'success', '');
INSERT INTO `log` VALUES (5749, NULL, '127.0.0.1', '/index.do', '{id: 109611, password: 543343, }', '2020-04-02 02:11:36', 172, '后台', '登陆', 'success', NULL);
INSERT INTO `log` VALUES (5750, '109611', '127.0.0.1', '/teacher/teacher_index.do', '{}', '2020-04-02 02:11:37', 0, '老师后台', '老师后台', 'success', NULL);
INSERT INTO `log` VALUES (5751, '109611', '127.0.0.1', '/teacher/welcome.do', '{}', '2020-04-02 02:11:37', 0, '老师后台', '欢迎页面', 'success', NULL);
INSERT INTO `log` VALUES (5752, '109611', '127.0.0.1', '/teacher/select_welcome.do', '{teacherId: 109611, }', '2020-04-02 02:11:37', 2, '老师后台', '获取欢迎数据', 'success', NULL);
INSERT INTO `log` VALUES (5753, '109611', '127.0.0.1', '/teacher/score_list.do', '{}', '2020-04-02 02:11:38', 0, '老师后台', '成绩列表页面', 'success', NULL);
INSERT INTO `log` VALUES (5754, '109611', '127.0.0.1', '/teacher/select_score_list.do', '{page: 1, limit: 10, teacherId: 109611, }', '2020-04-02 02:11:38', 7, '老师后台', '获取成绩列表', 'success', NULL);

-- ----------------------------
-- Table structure for score
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score`  (
  `student_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `score` int(11) NULL DEFAULT NULL,
  `term` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`course_id`, `student_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO `score` VALUES ('16132201', 'c900002112', 85, '2014春');
INSERT INTO `score` VALUES ('16132202', 'c900002123', 92, '2014秋');
INSERT INTO `score` VALUES ('16132203', 'c900002221', 80, '2014春');
INSERT INTO `score` VALUES ('16132204', 'c900003212', 70, '2016春');
INSERT INTO `score` VALUES ('16132205', 'c900004325', 86, '2015秋');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `clazz` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `departmentid` int(10) NOT NULL,
  PRIMARY KEY (`id`, `departmentid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('16132201', '123456', '小邓', '软转1', 1);
INSERT INTO `student` VALUES ('16132202', '123456', '小赵', '数学1', 3);
INSERT INTO `student` VALUES ('16132203', '123456', '小延', 'java10', 5);
INSERT INTO `student` VALUES ('16132204', '123456', '小6', '数学2', 3);
INSERT INTO `student` VALUES ('16132205', '123456', '小彭', '幼师1', 4);
INSERT INTO `student` VALUES ('16132206', '123456', '小基', '软工1', 2);
INSERT INTO `student` VALUES ('16132207', '123456', '小狗', '幼师1', 4);
INSERT INTO `student` VALUES ('16132208', '123456', '小胖子', '舞蹈2', 6);
INSERT INTO `student` VALUES ('16132209', '123456', '张三', '舞蹈1', 6);
INSERT INTO `student` VALUES ('16132210', '123456', '李四', '软转2', 1);

-- ----------------------------
-- Table structure for student_course
-- ----------------------------
DROP TABLE IF EXISTS `student_course`;
CREATE TABLE `student_course`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `course_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `term` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `information` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student_course
-- ----------------------------
INSERT INTO `student_course` VALUES (8, '16132201', 'c900002112', '2014春', '1');
INSERT INTO `student_course` VALUES (9, '16132202', 'c900002123', '2014秋', '1-9周星期三1-4节     10-18周星期二1.2节、星期五1.2节');
INSERT INTO `student_course` VALUES (10, '16132203', 'c900002221', '2016春', '1-18周星期三3.4节、星期四1.2节');
INSERT INTO `student_course` VALUES (11, '16132204', 'c900003212', '2015秋', '1-9周星期一1-4节 10-18周星期二5.6节  1-18周单周星期三1.2节');
INSERT INTO `student_course` VALUES (12, '16132205', 'c900004325', '2015春', '1-18周星期一7.8节、星期二9.10节');
INSERT INTO `student_course` VALUES (20, '16132201', 'c900008783', '2020年秋', '每天1-8');
INSERT INTO `student_course` VALUES (21, '16132201', '111', '111', '111');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `departmentid` int(10) NOT NULL,
  PRIMARY KEY (`id`, `departmentid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('109611', '123456', '老师1号', 2);
INSERT INTO `teacher` VALUES ('109612', '123456', '老师2号', 1);
INSERT INTO `teacher` VALUES ('109621', '123456', '老师3号', 3);
INSERT INTO `teacher` VALUES ('109622', '123456', '老师4号', 2);
INSERT INTO `teacher` VALUES ('109625', '123456', '老师5号', 1);
INSERT INTO `teacher` VALUES ('109633', '123456', '老师6号', 2);
INSERT INTO `teacher` VALUES ('109644', '123456', '老师7号', 2);
INSERT INTO `teacher` VALUES ('109653', '123456', '老师8号', 1);
INSERT INTO `teacher` VALUES ('109668', '123456', '老师9号', 6);
INSERT INTO `teacher` VALUES ('109673', '123456', '老师10号', 5);
INSERT INTO `teacher` VALUES ('109678', '123456', '老师11号', 4);
INSERT INTO `teacher` VALUES ('109688', '123456', '老师12号', 6);
INSERT INTO `teacher` VALUES ('109698', '123456', '老师13号', 4);
INSERT INTO `teacher` VALUES ('109699', '123456', '老师14号', 4);

-- ----------------------------
-- Table structure for teacher_course
-- ----------------------------
DROP TABLE IF EXISTS `teacher_course`;
CREATE TABLE `teacher_course`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `course_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `term` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `information` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher_course
-- ----------------------------
INSERT INTO `teacher_course` VALUES (8, '109612', 'c900003212', '2016春', '1-18周星期三1.2节、星期五5.6节');
INSERT INTO `teacher_course` VALUES (9, '109621', 'c900002221', '2015秋', '1-18周星期二1.2节、星期四1.2、3.4节');
INSERT INTO `teacher_course` VALUES (10, '109622', 'c900005442', '2016春', '1-18周星期一5.6节、星期二3.4节、单周星期三7.8节');
INSERT INTO `teacher_course` VALUES (11, '109633', 'c900008783', '2016秋', '1-9周星期一1.2节、星期二5.6节、10-18周星期三7.8节');
INSERT INTO `teacher_course` VALUES (12, '109644', 'c900005431', '2017春', '1-18周星期一7.8节、星期五1-4节');
INSERT INTO `teacher_course` VALUES (13, '109653', 'c900002112', '2014秋', '1-18周星期三5.6节、星期四5.6节');
INSERT INTO `teacher_course` VALUES (14, '109668', 'c900005422', '2014春', '1-18周星期二5.6节、星期四9.10节');
INSERT INTO `teacher_course` VALUES (15, '109625', 'c900005554', '2016秋', '1-16周星期四1-4节、星期五7.8节、17-18周星期一1-4节、星期二5-8节');
INSERT INTO `teacher_course` VALUES (16, '109673', 'c900002123', '2017秋', '1-18周星期五1-8节');
INSERT INTO `teacher_course` VALUES (17, '109611', 'c900002123', '2014春', '1-18周星期四3.4节、7.8节');
INSERT INTO `teacher_course` VALUES (18, '109611', 'c900005422', '2015春', '1-18周星期一3.4节、星期三3.4节   双周星期二1.2节');

SET FOREIGN_KEY_CHECKS = 1;
