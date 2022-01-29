/*
Navicat MySQL Data Transfer

Source Server         : server connection
Source Server Version : 50505
Source Host           : 10.0.0.28:3306
Source Database       : db_sanisidro

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2021-07-25 21:12:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tbl_categories
-- ----------------------------
DROP TABLE IF EXISTS `tbl_categories`;
CREATE TABLE `tbl_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tittle` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `datecreated` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tbl_categories
-- ----------------------------
INSERT INTO `tbl_categories` VALUES ('9', 'announcement', 'Post for Announcements', '2021-07-13 08:11:28', '0');
INSERT INTO `tbl_categories` VALUES ('10', 'Health Services', 'Post for Health Services', '2021-06-28 06:28:21', '0');
INSERT INTO `tbl_categories` VALUES ('11', 'News', 'Post for News', '2021-06-28 06:28:33', '0');
INSERT INTO `tbl_categories` VALUES ('12', 'Banner', 'Post for Banner', '2021-06-28 06:29:02', '0');

-- ----------------------------
-- Table structure for tbl_employee
-- ----------------------------
DROP TABLE IF EXISTS `tbl_employee`;
CREATE TABLE `tbl_employee` (
  `emp_id` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(255) DEFAULT NULL,
  `MiddleName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `ExtensionName` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `createddate` datetime DEFAULT NULL,
  PRIMARY KEY (`emp_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tbl_employee
-- ----------------------------
INSERT INTO `tbl_employee` VALUES ('1', 'GREGG DONNEL', 'S', 'GASPAR', null, 'codeygreggy@gmail.com', '0', '2021-03-08 11:26:32');
INSERT INTO `tbl_employee` VALUES ('2', 'JOHN KENNEDY', 'A', 'PUNZALAN', null, 'example@gmail.com', '0', '2021-03-09 11:26:32');
INSERT INTO `tbl_employee` VALUES ('3', 'John ', 'M ', 'DOe', '0', 'johndoe@gmail.com', '0', '2021-07-24 08:25:25');
INSERT INTO `tbl_employee` VALUES ('4', 'Romel', 'a', 'Valdez', '0', 'romel.valdez@gmail.com', '0', '2021-07-24 08:50:32');
INSERT INTO `tbl_employee` VALUES ('5', 's', 's', 's', '0', 's@s.com', '0', '2021-07-24 09:13:52');
INSERT INTO `tbl_employee` VALUES ('6', 'romel', 'a', 'valdez', '0', 'romel.valdez@gmail.com', '0', '2021-07-25 07:37:00');

-- ----------------------------
-- Table structure for tbl_officials
-- ----------------------------
DROP TABLE IF EXISTS `tbl_officials`;
CREATE TABLE `tbl_officials` (
  `officialid` int(11) NOT NULL AUTO_INCREMENT,
  `position` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `datecreated` varchar(255) DEFAULT NULL,
  `pathimage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`officialid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tbl_officials
-- ----------------------------
INSERT INTO `tbl_officials` VALUES ('1', 'Vice Mayor', 'Leticia Cruz', '<h4>&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-family: Arial;\"><u style=\"\"><b>Lorem ipsum dolor sit amet, consectetur adipiscing elit,</b> sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in</u></span></h4><h4>&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-family: Arial;\"><u style=\"\"> voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. sdapo lorem.</u></span><span style=\"font-family: Arial;\">﻿</span></h4>', '0', '2021-07-24 09:07:14am', 'assets/profilepic/1627135634_30ab7e092139f3415fb2.png');
INSERT INTO `tbl_officials` VALUES ('2', 'Mayor', 'Gregg Bravo', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: rgb(123, 136, 152); font-family: &quot;Mercury SSm A&quot;, &quot;Mercury SSm B&quot;, Georgia, Times, &quot;Times New Roman&quot;, &quot;Microsoft YaHei New&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, SimSun, STXihei, 华文细黑, serif; font-size: 26px; letter-spacing: normal; background-color: rgb(247, 247, 247);\"><b style=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</b></span><br></p>', '0', '2021-07-24 09:01:29am', 'assets/profilepic/1627135289_054b2e42e018f32b3e62.jpg');

-- ----------------------------
-- Table structure for tbl_postarticle
-- ----------------------------
DROP TABLE IF EXISTS `tbl_postarticle`;
CREATE TABLE `tbl_postarticle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) DEFAULT NULL,
  `tittle` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `pathimage` varchar(255) DEFAULT NULL,
  `datecreated` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2041 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tbl_postarticle
-- ----------------------------
INSERT INTO `tbl_postarticle` VALUES ('16', '9', 'DOJ: No  Test', '<ol><li><span style=\"letter-spacing: 0.7px;\">&nbsp; &nbsp;&nbsp;</span><span style=\"letter-spacing: 0.7px;\">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\"letter-spacing: 0.7px;\">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\"letter-spacing: 0.7px;\">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\"letter-spacing: 0.7px; color: rgb(42, 47, 91); text-align: justify;\"><span style=\"font-weight: 600;\">Metro Manila (CNN Philippines, June 22)</span>&nbsp;— Justice Secretary Menardo Guevarra believes President Rodrigo Duterte \"merely used strong words\" when he warned people that they will face jail time if they refuse to get vaccinated. \"I believe that the President merely used strong words to drive home the need for us to get vaccinated and reach herd immunity as soon as possible,\" Guevarra said in a statement on Tuesday. Duterte earlier threatened to arrest Filipinos who decline the coronavirus shot in the middle of a national emergency. \"Mamili kayo, magpabakuna kayo o ipakulong ko kayo sa selda? (You choose, get vaccinated, or I send you to jail?)\" Duterte said in his public address on Monday.</span><br></li></ol>', '0', '', '2021-07-24 08:54:07am');
INSERT INTO `tbl_postarticle` VALUES ('17', '9', 'Gamaleya seeks to extend interval between Sputnik V doses', '<p><span style=\"color: rgb(42, 47, 91); letter-spacing: 0.7px; text-align: justify; background-color: rgb(221, 221, 221);\">MANILA – Russia\'s Gamaleya Institute, manufacturer of the Sputnik V, is seeking to amend the vaccine\'s emergency use authorization (EUA) to extend the interval between the two doses, Food and Drug Administration (FDA) Director General Eric Domingo said Monday. The current interval between the first and second doses for the Russian-made vaccine is 21 days, the shortest among all adenovirus-vector vaccines allowed for emergency use. “\'Yung Sputnik vaccine, ito po ‘yong two-dose vaccine na adenoviral vector na magkaiba (this is the two-dose vaccine adenoviral vector that is different). They have already written us to say that they might be amending the EUA to lengthen the time --- time interval between the two doses,” Domingo said during a briefing with President Rodrigo Duterte.</span><br></p>', '0', null, '2021-07-08 08:18:16am');
INSERT INTO `tbl_postarticle` VALUES ('18', '9', 'Gamaleya seeks to extend interval between Sputnik V doses', '<p><span style=\"color: rgb(42, 47, 91); letter-spacing: 0.7px; text-align: justify; background-color: rgb(221, 221, 221);\">MANILA – Russia\'s Gamaleya Institute, manufacturer of the Sputnik V, is seeking to amend the vaccine\'s emergency use authorization (EUA) to extend the interval between the two doses, Food and Drug Administration (FDA) Director General Eric Domingo said Monday. The current interval between the first and second doses for the Russian-made vaccine is 21 days, the shortest among all adenovirus-vector vaccines allowed for emergency use. “\'Yung Sputnik vaccine, ito po ‘yong two-dose vaccine na adenoviral vector na magkaiba (this is the two-dose vaccine adenoviral vector that is different). They have already written us to say that they might be amending the EUA to lengthen the time --- time interval between the two doses,” Domingo said during a briefing with President Rodrigo Duterte.</span><br></p>', '0', null, '2021-07-08 08:18:16am');
INSERT INTO `tbl_postarticle` VALUES ('2029', '12', 'banner 1', '<p><b>pash pash lorem ipsum 8 ballin</b></p>', '0', 'assets/postarticle/1627135200_88b80535418fd744ced5.jpg', '2021-07-24 09:00:00am');
INSERT INTO `tbl_postarticle` VALUES ('2032', '11', 'Construction o', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; letter-spacing: normal;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse porta dignissim venenatis. Nam porttitor, leo interdum consectetur volutpat, libero odio pulvinar neque, et luctus augue magna sit amet felis. Ut ultrices sagittis maximus. Vestibulum lectus purus, tempus convallis dictum tempor, aliquam sit amet tortor. Sed convallis ornare felis ac convallis. Donec accumsan massa eget massa scelerisque, et tempor lorem sagittis. In sed ullamcorper nisl. Ut quis velit ut nisl volutpat ultrices. Donec scelerisque tellus at risus sodales gravida. Donec scelerisque eu erat sit amet aliquet. Donec nec sem quis leo semper suscipit. Donec vitae augue mauris. Sed arcu dui, lobortis ac neque a, convallis porta odio. Phasellus quis mollis leo. Nunc ultricies laoreet nibh pulvinar dapibus.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; letter-spacing: normal;\">Etiam dictum quam id massa dictum, quis tincidunt sapien placerat. Nullam gravida scelerisque sem non sagittis. Mauris auctor libero nunc, id aliquam nibh ultricies eu. Quisque vitae orci diam. Suspendisse eget neque eget erat gravida venenatis. Donec tempor vulputate ante a dignissim. Mauris ullamcorper turpis enim, ut cursus eros finibus eget. Fusce vitae pharetra nulla, in gravida odio. Vivamus sem dui, pretium sed malesuada ut, ultricies in nulla. Quisque non odio ut tellus elementum aliquam id sed ante. Proin feugiat hendrerit nunc, in elementum metus congue a. Pellentesque luctus et ipsum eu auctor.</p>', '0', 'assets/postarticle/1625754139_d0b18759f767e2000e88.jpg', '2021-07-08 09:22:19am');
INSERT INTO `tbl_postarticle` VALUES ('2033', '11', 'Evacuation Center of San Isidro,', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; letter-spacing: normal;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse porta dignissim venenatis. Nam porttitor, leo interdum consectetur volutpat, libero odio pulvinar neque, et luctus augue magna sit amet felis. Ut ultrices sagittis maximus. Vestibulum lectus purus, tempus convallis dictum tempor, aliquam sit amet tortor. Sed convallis ornare felis ac convallis. Donec accumsan massa eget massa scelerisque, et tempor lorem sagittis. In sed ullamcorper nisl. Ut quis velit ut nisl volutpat ultrices. Donec scelerisque tellus at risus sodales gravida. Donec scelerisque eu erat sit amet aliquet. Donec nec sem quis leo semper suscipit. Donec vitae augue mauris. Sed arcu dui, lobortis ac neque a, convallis porta odio. Phasellus quis mollis leo. Nunc ultricies laoreet nibh pulvinar dapibus.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; letter-spacing: normal;\">Etiam dictum quam id massa dictum, quis tincidunt sapien placerat. Nullam gravida scelerisque sem non sagittis. Mauris auctor libero nunc, id aliquam nibh ultricies eu. Quisque vitae orci diam. Suspendisse eget neque eget erat gravida venenatis. Donec tempor vulputate ante a dignissim. Mauris ullamcorper turpis enim, ut cursus eros finibus eget. Fusce vitae pharetra nulla, in gravida odio. Vivamus sem dui, pretium sed malesuada ut, ultricies in nulla. Quisque non odio ut tellus elementum aliquam id sed ante. Proin feugiat hendrerit nunc, in elementum metus congue a. Pellentesque luctus et ipsum eu auctor.</p>', '0', 'assets/postarticle/1625754204_18b9b76836427f2fc060.jpg', '2021-07-08 09:23:24am');
INSERT INTO `tbl_postarticle` VALUES ('2034', '11', '  ALS and High Schools from LGU San Isidro ', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; letter-spacing: normal;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse porta dignissim venenatis. Nam porttitor, leo interdum consectetur volutpat, libero odio pulvinar neque, et luctus augue magna sit amet felis. Ut ultrices sagittis maximus. Vestibulum lectus purus, tempus convallis dictum tempor, aliquam sit amet tortor. Sed convallis ornare felis ac convallis. Donec accumsan massa eget massa scelerisque, et tempor lorem sagittis. In sed ullamcorper nisl. Ut quis velit ut nisl volutpat ultrices. Donec scelerisque tellus at risus sodales gravida. Donec scelerisque eu erat sit amet aliquet. Donec nec sem quis leo semper suscipit. Donec vitae augue mauris. Sed arcu dui, lobortis ac neque a, convallis porta odio. Phasellus quis mollis leo. Nunc ultricies laoreet nibh pulvinar dapibus.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; letter-spacing: normal;\">Etiam dictum quam id massa dictum, quis tincidunt sapien placerat. Nullam gravida scelerisque sem non sagittis. Mauris auctor libero nunc, id aliquam nibh ultricies eu. Quisque vitae orci diam. Suspendisse eget neque eget erat gravida venenatis. Donec tempor vulputate ante a dignissim. Mauris ullamcorper turpis enim, ut cursus eros finibus eget. Fusce vitae pharetra nulla, in gravida odio. Vivamus sem dui, pretium sed malesuada ut, ultricies in nulla. Quisque non odio ut tellus elementum aliquam id sed ante. Proin feugiat hendrerit nunc, in elementum metus congue a. Pellentesque luctus et ipsum eu auctor.</p>', '0', 'assets/postarticle/1625754266_342f8588c4107a83ba1c.jpg', '2021-07-08 09:24:27am');
INSERT INTO `tbl_postarticle` VALUES ('2035', '11', 'January 30, 2021  Tulong Panghanap Buhay', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; letter-spacing: normal;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse porta dignissim venenatis. Nam porttitor, leo interdum consectetur volutpat, libero odio pulvinar neque, et luctus augue magna sit amet felis. Ut ultrices sagittis maximus. Vestibulum lectus purus, tempus convallis dictum tempor, aliquam sit amet tortor. Sed convallis ornare felis ac convallis. Donec accumsan massa eget massa scelerisque, et tempor lorem sagittis. In sed ullamcorper nisl. Ut quis velit ut nisl volutpat ultrices. Donec scelerisque tellus at risus sodales gravida. Donec scelerisque eu erat sit amet aliquet. Donec nec sem quis leo semper suscipit. Donec vitae augue mauris. Sed arcu dui, lobortis ac neque a, convallis porta odio. Phasellus quis mollis leo. Nunc ultricies laoreet nibh pulvinar dapibus.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; letter-spacing: normal;\">Etiam dictum quam id massa dictum, quis tincidunt sapien placerat. Nullam gravida scelerisque sem non sagittis. Mauris auctor libero nunc, id aliquam nibh ultricies eu. Quisque vitae orci diam. Suspendisse eget neque eget erat gravida venenatis. Donec tempor vulputate ante a dignissim. Mauris ullamcorper turpis enim, ut cursus eros finibus eget. Fusce vitae pharetra nulla, in gravida odio. Vivamus sem dui, pretium sed malesuada ut, ultricies in nulla. Quisque non odio ut tellus elementum aliquam id sed ante. Proin feugiat hendrerit nunc, in elementum metus congue a. Pellentesque luctus et ipsum eu auctor.</p>', '0', 'assets/postarticle/1625754341_f392b22e7192d9ba564d.jpg', '2021-07-08 09:25:41am');
INSERT INTO `tbl_postarticle` VALUES ('2036', '12', 'Kendong', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; letter-spacing: normal;\">Lorem ipsum dolor sit amet,</p>', '0', 'assets/postarticle/1627135122_92a85dcfe290de47631c.jpg', '2021-07-24 08:58:42am');
INSERT INTO `tbl_postarticle` VALUES ('2037', '9', 'joyuj wenoiuf', '<p style=\"text-align: center; font-family: &quot;Times New Roman&quot;; font-size: medium; letter-spacing: normal;\"><b>boooooo</b></p><p style=\"font-family: &quot;Times New Roman&quot;; font-size: medium; letter-spacing: normal;\">If you want the image to scale both up and down on responsiveness, set the CSS width property to 100% and height to auto.</p><p style=\"font-family: &quot;Times New Roman&quot;; font-size: medium; letter-spacing: normal;\">Resize the browser window to see the effect.</p>', '1', '', '2021-07-24 08:56:07am');
INSERT INTO `tbl_postarticle` VALUES ('2038', '9', 'test1', '<p>asdasdsadasdasdsad</p>', '1', '', '2021-07-24 08:55:48am');
INSERT INTO `tbl_postarticle` VALUES ('2039', '9', 'test', '<p>asdasdsadasdasdsad</p>', '1', '', '2021-07-24 08:55:56am');
INSERT INTO `tbl_postarticle` VALUES ('2040', '0', 'Gregg Gaspar', '<p>test test</p>', '0', 'assets/postarticle/1626477044_0ca7cdf33f3dc6ee5469.jpg', '2021-07-16 06:10:45pm');

-- ----------------------------
-- Table structure for tbl_useraccount
-- ----------------------------
DROP TABLE IF EXISTS `tbl_useraccount`;
CREATE TABLE `tbl_useraccount` (
  `acc_id` int(11) NOT NULL AUTO_INCREMENT,
  `Employee_id` int(11) DEFAULT NULL,
  `Username` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `usertype` varchar(255) DEFAULT NULL,
  `datecreated` date DEFAULT NULL,
  PRIMARY KEY (`acc_id`) USING BTREE,
  KEY `Employee_id` (`Employee_id`) USING BTREE,
  CONSTRAINT `tbl_useraccount_ibfk_1` FOREIGN KEY (`Employee_id`) REFERENCES `tbl_employee` (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tbl_useraccount
-- ----------------------------
INSERT INTO `tbl_useraccount` VALUES ('1', '1', 'admin', '89ce3b1d6c3ff3d7f064686b2f5b7592', '0', 'Admin', '2021-03-08');
INSERT INTO `tbl_useraccount` VALUES ('2', '2', 'admin2', '89ce3b1d6c3ff3d7f064686b2f5b7592', '0', 'User', '2021-03-08');
INSERT INTO `tbl_useraccount` VALUES ('3', '3', 'test', '89ce3b1d6c3ff3d7f064686b2f5b7592', '0', 'User', null);
INSERT INTO `tbl_useraccount` VALUES ('4', '4', 'test123', '89ce3b1d6c3ff3d7f064686b2f5b7592', '0', 'Admin', null);
INSERT INTO `tbl_useraccount` VALUES ('5', '5', 'test21321', '68358d5d9cbbf39fe571ba41f26524b6', '0', 'Admin', null);
INSERT INTO `tbl_useraccount` VALUES ('6', '6', '123', '6116afedcb0bc31083935c1c262ff4c9', '0', 'Admin', null);
