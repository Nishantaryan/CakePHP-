/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50631
 Source Host           : localhost
 Source Database       : logistic_v1

 Target Server Type    : MySQL
 Target Server Version : 50631
 File Encoding         : utf-8

 Date: 08/17/2019 13:32:34 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `location_types`
-- ----------------------------
DROP TABLE IF EXISTS `location_types`;
CREATE TABLE `location_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `location_types`
-- ----------------------------
BEGIN;
INSERT INTO `location_types` VALUES ('1', 'store', '2019-08-17 12:23:54', null), ('2', 'Warehouse', '2019-08-17 12:23:57', null), ('3', 'ADC', '2019-08-17 12:24:02', null);
COMMIT;

-- ----------------------------
--  Table structure for `locations`
-- ----------------------------
DROP TABLE IF EXISTS `locations`;
CREATE TABLE `locations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `zipcode` varchar(10) DEFAULT NULL,
  `location_number` varchar(10) DEFAULT NULL,
  `region_id` int(10) unsigned NOT NULL,
  `trailer_bays` int(11) DEFAULT NULL,
  `location_type_id` int(10) unsigned NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `locations`
-- ----------------------------
BEGIN;
INSERT INTO `locations` VALUES ('1', 'gpstore', 'khamla', 'nagpur', 'mh', '440025', '1', '1', '5', '1', '2019-08-17 11:28:34', '2019-08-17 11:28:34');
COMMIT;

-- ----------------------------
--  Table structure for `regions`
-- ----------------------------
DROP TABLE IF EXISTS `regions`;
CREATE TABLE `regions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `regions`
-- ----------------------------
BEGIN;
INSERT INTO `regions` VALUES ('1', 'Outlets&Transportation', '2019-08-17 11:26:46', '2019-08-17 11:26:46'), ('2', 'Region 01', '2019-08-17 11:26:54', '2019-08-17 11:26:54'), ('3', 'Florida', '2019-08-17 11:27:03', '2019-08-17 11:27:03'), ('4', 'Alabama', '2019-08-17 11:27:12', '2019-08-17 11:27:12');
COMMIT;

-- ----------------------------
--  Table structure for `roles`
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `roles`
-- ----------------------------
BEGIN;
INSERT INTO `roles` VALUES ('1', 'Admin', '2019-08-17 11:50:03', null), ('2', 'Supervisor', '2019-08-17 11:50:25', null), ('3', 'Manager', '2019-08-17 11:50:31', null), ('4', 'User', '2019-08-17 11:50:36', null), ('5', 'Driver', '2019-08-17 11:50:42', null);
COMMIT;

-- ----------------------------
--  Table structure for `roles_users`
-- ----------------------------
DROP TABLE IF EXISTS `roles_users`;
CREATE TABLE `roles_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `roles_users`
-- ----------------------------
BEGIN;
INSERT INTO `roles_users` VALUES ('1', '1', '1', '2019-08-17 11:56:50', null), ('2', '2', '1', '2019-08-17 11:56:50', null), ('3', '3', '1', '2019-08-17 11:56:50', null);
COMMIT;

-- ----------------------------
--  Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `users`
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES ('1', 'ashish', 'ashish', 'ashish', 'patel', 'ashish.onmobile@gmail.com', '9860677800', '0', '2019-08-17 11:56:50', '2019-08-17 11:56:50');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
