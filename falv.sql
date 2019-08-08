/*
Navicat MySQL Data Transfer

Source Server         : locahost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : falv

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-08-08 08:12:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tp_admin
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin`;
CREATE TABLE `tp_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of tp_admin
-- ----------------------------
INSERT INTO `tp_admin` VALUES ('1', 'yuanlu', '460bc8fb94253aac4a323e3433e6a1f0', '1');
INSERT INTO `tp_admin` VALUES ('6', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '1');
INSERT INTO `tp_admin` VALUES ('7', 'SuperAdmin', 'e10adc3949ba59abbe56e057f20f883e', '1');

-- ----------------------------
-- Table structure for tp_admin_comment
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin_comment`;
CREATE TABLE `tp_admin_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `desc` varchar(255) DEFAULT NULL,
  `ip` varchar(20) NOT NULL,
  `location` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `type` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `top` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_admin_comment
-- ----------------------------

-- ----------------------------
-- Table structure for tp_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin_log`;
CREATE TABLE `tp_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '操作人',
  `uname` varchar(20) NOT NULL,
  `os` varchar(20) NOT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `browser` varchar(20) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `module` varchar(20) DEFAULT NULL,
  `controller` varchar(20) DEFAULT NULL,
  `action` varchar(20) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `method` varchar(10) DEFAULT NULL,
  `time` int(11) NOT NULL COMMENT '操作时间',
  `desc` varchar(20) NOT NULL,
  PRIMARY KEY (`id`,`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_admin_log
-- ----------------------------
INSERT INTO `tp_admin_log` VALUES ('1', '7', 'SuperAdmin', 'Windows 10', '127.0.0.1', '本机地址 本机地址  ', 'Chrome(74.0.3729.131', 'http://falv.com/admin/article/lst.html', 'admin', 'Article', 'lst', 'a:1:{s:23:\"/admin/article/lst_html\";s:0:\"\";}', 'GET', '1564753356', '内容列表');
INSERT INTO `tp_admin_log` VALUES ('2', '7', 'SuperAdmin', 'Windows 10', '127.0.0.1', '本机地址 本机地址  ', 'Chrome(74.0.3729.131', 'http://falv.com/admin/article/edit/id/9.html', 'admin', 'Article', 'edit', 'a:2:{s:29:\"/admin/article/edit/id/9_html\";s:0:\"\";s:2:\"id\";s:1:\"9\";}', 'GET', '1564753364', '内容修改');
INSERT INTO `tp_admin_log` VALUES ('3', '7', 'SuperAdmin', 'Windows 10', '127.0.0.1', '本机地址 本机地址  ', 'Chrome(74.0.3729.131', 'http://falv.com/admin/cate/lst.html', 'admin', 'Cate', 'lst', 'a:1:{s:20:\"/admin/cate/lst_html\";s:0:\"\";}', 'GET', '1564836528', '栏目管理');
INSERT INTO `tp_admin_log` VALUES ('4', '7', 'SuperAdmin', 'Windows 10', '127.0.0.1', '本机地址 本机地址  ', 'Chrome(74.0.3729.131', 'http://falv.com/admin/cate/add.html', 'admin', 'Cate', 'add', 'a:1:{s:20:\"/admin/cate/add_html\";s:0:\"\";}', 'GET', '1564836529', '栏目添加');

-- ----------------------------
-- Table structure for tp_advert
-- ----------------------------
DROP TABLE IF EXISTS `tp_advert`;
CREATE TABLE `tp_advert` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `thumb2` varchar(255) DEFAULT NULL,
  `link` varchar(255) NOT NULL COMMENT '链接',
  `desc` varchar(255) DEFAULT NULL,
  `cate_id` tinyint(10) NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`,`cate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='广告表';

-- ----------------------------
-- Records of tp_advert
-- ----------------------------
INSERT INTO `tp_advert` VALUES ('1', '轮播1', '/uploads/cate/20190614\\8a7a3b546a04dfa91ff2a3c3f23e6eb2.png', '/uploads/cate/20190422\\dc428ca573856151345a59c6ea076925.jpg', 'http://www.baidu.com', '          ', '0', '1', 'banner');
INSERT INTO `tp_advert` VALUES ('2', '轮播2', '/uploads/cate/20190614\\26338f6437abca833da11e14697974cc.png', '/uploads/cate/20190422\\ce4617921db35a9a9396ed41f5d9afec.jpg', 'http://www.baidu.com', '          我是轮播i二在后台可以添加和修改我', '0', '1', 'banner');

-- ----------------------------
-- Table structure for tp_advisory_article
-- ----------------------------
DROP TABLE IF EXISTS `tp_advisory_article`;
CREATE TABLE `tp_advisory_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `desc` varchar(500) DEFAULT NULL,
  `content` text,
  `author` varchar(50) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `look` int(11) NOT NULL DEFAULT '0',
  `pid` int(11) DEFAULT NULL,
  `cpid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_advisory_article
-- ----------------------------
INSERT INTO `tp_advisory_article` VALUES ('1', '幼儿园营业执照办理流程', '现在独生子女特别多，每个都是家中宝，所以在小孩子的教育中家长会格外的重视，而且现在幼儿园出现的特别多，家长都挑花了眼，然而幼儿老师虐童事件持续发酵，导致家长们人心惶惶，不过没关系看看幼儿园注册的时候都有哪些证件，才能选对。', '<p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">现在独生子女特别多，每个都是家中宝，所以在小孩子的教育中家长会格外的重视，而且现在幼儿园出现的特别多，家长都挑花了眼，然而幼儿老师虐童事件持续发酵，导致家长们人心惶惶，不过没关系看看幼儿园注册的时候都有哪些证件，才能选对。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px;\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　开办幼儿园的基本条件：</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px;\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　1、有必要的场所、教育设备、有规范的名称</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px;\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　2、有与其业务活动相适应的从业人员</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px;\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　3、有与其业务活动相适应的合法财产</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px;\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　4、申请举办民办幼儿园的社会组织，应当具有法人资格。举办民办幼儿园的个人，应当具有政治权利和完全民事行为能力。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px;\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　需办理的证件和材料：</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px;\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　1.营业执照、税务登记证、卫生许可证、消防安全证等等一系列办幼儿园的证件齐全。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px;\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　2.寻找一个足够大的室内场所加上大的室外空间。如果你要招收60名幼儿，请保证室内总面积达150平方米，室外面积200平方米。如果刚开始只是招收一小部分的话，室内面积不改，室外面积也要150平方米为好。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px;\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　3.桌椅、玩具、餐具、水杯、大型床铺、书本、黑板及文具一应俱全。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px;\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　4.良好素质的幼师，干净的厨师，是非常关键的。同时最好离医院比较近，并且安装两部或以上电话，以便随意联系家长处理紧急情况。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px;\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　5.制定合理的收费政策，并向家长展示你的幼儿园优势。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px;\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　一、设置民办幼儿园应具备下述基本条件</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px;\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　（一）申请举办民办幼儿园的社会组织，应当具有法人资格。举办民办幼儿园的个人，应当具有政治权利和完全民事行为能力。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px;\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　（二）基本办学规模不低于100人。幼儿园办学条件达到《XX市幼儿园等级标准》规定的二级幼儿园标准。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px;\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　（三）有稳定可靠的经费来源，办学启动资金不少于20万（包括教学设施和教学仪器设备等），注册资金10万元以上，并提供有法律效力的资信证明。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px;\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　二、民办幼儿园申报程序</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px;\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　（一）申请人向拟建幼儿园所在街道办事处（或镇政府）提出书面申请，提供相关资料，由街道办事处（或镇政府）对拟办幼儿园（班）进行办园基本条件初审，写出初审意见并盖章。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px;\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　（二）申请人将签署初审意见后的书面申请和申报材料提交大渡口区教委.申报材料</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px;\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　（三）考察:区教委联同区卫生局和区消防支队等相关部门对申报程序符合规定、申报材料齐备、基本办学条件达到要求的，组织专家进行实地考察；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px;\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　（四）发证:以审批同意举办的民办幼儿园，由区教委颁发《中华人民共和国民办教育办学许可证》和《XX市幼儿园等级证》。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px;\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　幼儿是脆弱的，不有摧残，忍受不了就不要接触这个行业，幼师是教儿育人的不要做违背道德的事情。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">推荐阅读：</span><a href=\"http://www.lvzheng.com/biangeng/\" target=\"_self\" title=\"公司变更\" style=\"padding: 0px; margin: 0px; cursor: pointer; color: rgb(102, 102, 102); font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><span style=\"padding: 0px; margin: 0px;\">公司变更</span></a></p><ul style=\"list-style-type: none;\" class=\" list-paddingleft-2\"></ul><p><br/></p>', '远路', '1564929814', '55', '22', null);
INSERT INTO `tp_advisory_article` VALUES ('2', '营业演出许可证办理流程', '现在人们在闲暇之余都希望精神上得到满足，所以演唱会才会那么火，不仅有演唱会还有相声会、歌舞会、话剧等等，满足了广大消费者观感体验，但是要知道他们这种盈利性的演出是要有营业演出许可证的，接下来我们就看看这个营业演出许可证怎么办理吧。', '<p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　现在人们在闲暇之余都希望精神上得到满足，所以演唱会才会那么火，不仅有演唱会还有相声会、歌舞会、话剧等等，满足了广大消费者观感体验，但是要知道他们这种盈利性的演出是要有营业演出许可证的，接下来我们就看看这个营业演出许可证怎么办理吧。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　一、营业性演出许可证办理流程</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　1、向文化局提出申请，递交相关申请材料；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　2、窗口查验申请材料；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　3、申请材料若不符合要求、退回补正材料；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　4、申请材料符合要求后，窗口正式受理；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　5、审核申请材料；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　6、材料不合格，退回，重新提出申请；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　7、材料合格，批准决定，颁发证件。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　二、营业性演出许可证办理要求</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　1、三名经纪人证书（注：中国演出行业协会颁发的演出经纪人资格证）</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　2．固定的办公地点；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　3．与演出经纪机构经营活动相适应的资金。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　三、营业性演出许可证办理材料</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　1、公司营业执照副本；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　2）法人或主要负责人的身份证；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　3）3名以上专职演出经纪人员的资格证明（注：中国演出行业协会颁发的演出经纪人资格证）及身份证；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　内资演出经纪机构设立：（1）《北京市演出经纪机构设立申请登记表》（加盖公章）；（2）企业法人提交营业执照副本复印件（营业执照经营范围中应增加“演出经纪”）；其他法人或社会组织提交事业单位法人证书或民办非企业单位登记证书（加盖公章）。（3）法定代表人或主要负责人身份证明复印件（加盖公章）（营业执照（事业单位法人证书或民办非企业单位登记证书）已载明姓名及身份证明编号的，可以不用提供。（特殊情况除外）；（4）至少3名专职演出经纪人员的资格证书原件及复印件(中国演出行业协会颁发的演出经纪人资格证)（加盖公章)；（外地证件需写说明）（5）非法定代表人前来办理，应下载并填写申请行政许可委托书及代理人身份证明复印件（加盖公章）。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　没事多看看这种能提高文化素养的演出节目也挺好现在人们追星的力度不愁门票卖不出去。</span></p><p><br/></p>', '小微律政', '1564929902', '3', '22', null);
INSERT INTO `tp_advisory_article` VALUES ('3', '注册公司地址要求是什么？', '公司注册地址是一个很麻烦的事，因为有的公司类型对地址要求特别严格，而且地址也是有很多的类型，比如商业和工业用地、有的住宅满足法律规定也是可以商用的，还有一些是使用孵化器的。而且绝大部分都是租的房子，自有房屋占少部分，不同的房源也是要准备不同的材料的。今天我们就学习一下注册地址的知识点。', '<p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　公司注册地址是一个很麻烦的事，因为有的公司类型对地址要求特别严格，而且地址也是有很多的类型，比如商业和工业用地、有的住宅满足法律规定也是可以商用的，还有一些是使用孵化器的。而且绝大部分都是租的房子，自有房屋占少部分，不同的房源也是要准备不同的材料的。今天我们就学习一下注册地址的知识点。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　首先我们要知道住宅楼及住宅楼底层规划为商业用途的房屋不得从事餐饮服务、歌舞娱乐、提供互联网上网服务场所、生产加工和制造、经营危险化学品等涉及国家安全、存在严重安全生产隐患、影响人民身体健康、污染环境、影响人民生命财产安全的生产经营活动。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　公司注册地址要求是什么</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　注册一家公司需要确定公司住所，租房后要签订租房合同，并且一般要求必须用工商局的同一制式租房协议，并让房东提供房产证的复印件，房东身份证复印件。房屋提供者应根据房屋权属情况，分别出具以下证明:民房可以注册公司吗,住宅可以注册公司吗?</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　(1)房屋提供者如有房产证应另附房产证复印件并在复印件上加盖产权单位公章或由产权人签字。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　(2)无产权证的由产权单位的上级或房产证发放单位在“需要证明情况”栏内说明情况并盖章确认;地处农村地区的也可由当地政府在“需要证明情况”栏内签署同意在该地点从事经营的意见，并加盖公章。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　(3)产权为军队房产，应提交加盖中国人民解放军房地产管理局专用章的“军队房地产租赁许可证”复印件。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　(4)房屋为新购置的商品房又未办理产权登记的，应提交由购房人签字或购房单位盖章的购房合同复印件及购房发票复印件、加盖房地产开发商公章的预售房许可证的复印件。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　(5)房屋提供者为经工商行政管理机关核准具有出租经营权的企业，可直接在“房屋提供者证明”栏内加盖公章，同时应出具加盖本企业公章的营业执照复印件，不再要求提供产权证。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　因为住所是公司开展各种业务的中心场所，因此公司不能没有住所，这就像国家不能没有领土一样。各国和地区公司法均明确规定，公司注册地址为公司设立的条件，是公司章程的绝对必要记载事项。所以要想注册公司注册地址必须重视起来，如有问题请找小微律政。</span></p><p><br/></p>', '远路', '1564932155', '21', '34', null);
INSERT INTO `tp_advisory_article` VALUES ('4', '北京没有注册地址怎么注册公司', '北京是人才汇聚之所，是创业的梦想之乡，但却有一大难点，让许多人都为之痛心，那就是办公场所。无地址注册是真的不需要地址吗？\r\n\r\n       其实小编这里所说的主要是虚拟地址注册，到底该怎么办理呢？和小编一起来了解一下吧。', '<p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　北京是人才汇聚之所，是创业的梦想之乡，但却有一大难点，让许多人都为之痛心，那就是办公场所。无地址注册是真的不需要地址吗？<br style=\"padding: 0px; margin: 0px;\"/></span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其实小编这里所说的主要是虚拟地址注册，到底该怎么办理呢？和小编一起来了解一下吧。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　一、“无地址”注册公司怎么办理</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　放宽住所(经营场所)登记手续的权限放给了各省、区、市人民政府。各地办理过程，申请材料各不相同，可以咨询各地工商、政府部门。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　国家对于地址登记上的放宽政策，使创业者在创业之处减少租房的费用，实现资金的有效使用，等到后期人员不断增长再进行住所的变更，同时及时完成地址变更登记就可以了。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　二、北京注册公司虚拟地址合法可靠吗?</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　虚拟注册地址是国家为了扶持中小企业创业而批准的、虚拟注册地址提供的注册地址在工商税务等部门已经备案、可让使用虚拟注册地址注册的公司企业放心经营、不需要担心工商税务上门检查及担心营业执照注册地址和办公地点不一致等事宜、外地企业在北京注册公司后也可以放心的在异地经营、当然你公司要是办理一些涉及特别审批的项目就另说了、也就是说不是什么企业都适合使用虚拟注册地址办理公司注册、</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　所以大家放心就好，经过工商授权肯定是合法的。以上内容就是关于注册北京公司无址注册公司的资料。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　三、在北京无地址注册北京公司的流程</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　1、填写入驻商务秘书企业申报表;</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　2、提供公司名称预先核准通知书;</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　3、提供公司所有股东身份证复印件、法定代表人的身份证明复印件及U盾;</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　4、与代理公司签定办公住所托管使用协议书;</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　5、提供地址证明。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　提示：租注册地址一定要选择正规的公司，要选择集中办公区的地址或企业孵化器的地址，不要图便宜否则会给企业在以后的经营中带来不必要的麻烦。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;以上就是小编整理的内容，如果您在创业的过程中遇到任何疑惑，欢迎到小微律政咨询。</span></p><p><br/></p>', '是的', '1564932204', '29', '34', null);
INSERT INTO `tp_advisory_article` VALUES ('5', '注册外资企业所需的条件和材料', '不知道您是否和小编一样，在以前就常听人说，从外地来的和尚念的经更好。在企业的注册方面也是有这样的体现的，外资企业往往能够得到较为优惠的税收政策，既方便提升企业的形象，又方便引资，好处多多。因此，吸引了许多创业人员，今天小编就来梳理一下注册外资公司的的相关内容。', '<p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">&nbsp;&nbsp;不知道您是否和小编一样，在以前就常听人说，从外地来的和尚念的经更好。在企业的注册方面也是有这样的体现的，外资企业往往能够得到较为优惠的税收政策，既方便提升企业的形象，又方便引资，好处多多。因此，吸引了许多创业人员，今天小编就来梳理一下注册外资公司的的相关内容。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一、注册外资企业的材料<br style=\"padding: 0px; margin: 0px;\"/></span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1、拟任法定代表人签署的《外资分公司登记(备案)申请书》;</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　2、《指定代表或者共同委托代理人授权委托书》及指定代表或委托代理人的身份证件复印件，授权委托书(如非法定代表人签署文件时);</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　3、《关于设立分公司的申请报告》(合资企业提供合资意向书及项目建议书)</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　4、《外国投资者法律文件送达授权委托书》;</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　5、投资者的主体资格证明或自然人身份证明;</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　6、境内/外投资者(非自然人)主体资格审核申报表(投资者为自然人的不需要提供);</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　7、涉及国有资产投入的，需提供国资管理部门确认文件;</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　8、可行性研究报告(非工业项目)或项目申请报告(工业项目);</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　9、章程(合资、合作企业还需提供合同)，多个外方共同出资时需再出具合资协议书;</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　10、监事、董事及经理的名单、任命文件及身份证明复印件(董事、监事和经理的产生应符合《公司法》和公司章程的规定。依据《公司法》和公司章程规定有职工董事和职工监事的，提交职工民主选举的证明。);</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　二、外资公司注册流程</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　1. 企业名称预核准通知书;</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　2. 授权委托书;</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　3. 外资企业设立登记申请书(一式两份原件);</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　4. 项目申请报告书(内附提纲供参考，需由法定代表人或持有授权委托书的代理人签字);</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　5. 企业章程(需由投资方法定代表人或持有授权委托书的代理人签字);</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　6. 董事会成员名单;</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　7. 法定代表人及董事会成员委派书(附法定代表人及董事会成员有效合法的护照或身份证件复印件);</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　8. 法定代表人委派书(不设董事会的提交此项, 附法定代表人有效合法的护照或身份证件复印件);</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　9. 投资者的合法开业证明复印件，需附法定代表人证明函(原件)及其身份证明复印件; 外方投资者为自然人的需提供身份证明复印件，台湾客商需提供台胞证复印件;</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　10. 投资者开户银行出具的资信证明;</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　11. 环保部门审批意见 请申请者提前持投资计划书、场地或土地使用证明、授权委托书以及申请书前往环保局申请批复，但本批复不能代替新公司取得营业执照后须完成的〈环境影响评估报告〉(由新公司邀请专门的评估公司根据项目量身制定);</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　12. 企业场地落实证明或厂房租赁合同(需提供出租方产权证明、营业执照及法定代表人身份证明复印件);</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　13. 涉及照前行业许可的其它有关文件或者证件。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;以上就是小编梳理的外资企业注册的相关内容了，希望能够对您有所帮助，如果您还有其他疑惑，欢迎您到小微律政咨询。</span></p><p><br/></p>', '远路', '1564932244', '9', '34', null);
INSERT INTO `tp_advisory_article` VALUES ('6', '小心陷阱！外资股东慎减持', '实行改革开放以后，我们迎来一个激情四射的时代，外国资金的流入，让中外合资经营企业不断出现。1991年，为了让内外资合作发展的友谊再升华一下，全国人大公布了《外商投资企业和外国企业所得税法》，并在该法及其实施细则中规定给外资企业减税，其中就包括“两免三减半”政策。', '<p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">实行改革开放以后，我们迎来一个激情四射的时代，外国资金的流入，让<a href=\"http://www.lvzheng.com/xiaoweishuo/gongsifl_1.html\" target=\"_blank\" title=\"合资公司\" style=\"padding: 0px; margin: 0px; text-decoration-line: none; cursor: pointer; color: rgb(102, 102, 102);\">中外合资经营企业</a>不断出现。1991年，为了让内外资合作发展的友谊再升华一下，全国人大公布了《外商投资企业和外国企业所得税法》，并在该法及其实施细则中规定给外资企业减税，其中就包括“两免三减半”政策。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">享受甜头的条件</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">热情好客是美德，但机智的天朝人民不会被哗啦啦涌进来的美刀冲昏了脑袋。为了避免外国资本来吃完优惠蛋糕就跑，享受“两免三减半”的<a href=\"http://www.lvzheng.com/xiaoweishuo/waizi_15.html\" target=\"_blank\" title=\"外资企业组织形式\" style=\"padding: 0px; margin: 0px; text-decoration-line: none; cursor: pointer; color: rgb(102, 102, 102);\">外资企业</a>必须符合两个条件：</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">◆经营期在10年以上</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">◆外资比例达到25%以上</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">（依据：《外商投资企业和外国企业所得税法》第八条、外经贸法发[2002]575号文第二条）</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">如果一个外资企业实际经营不满10年就注销，或10年内外资持股比例低于25%，那它必须把吃进去的减免税款吐出来！</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">2008年新企业所得税法颁布后，外资所得税法被废止，但上述优惠和制约规定仍继续执行。根据国发[2007]39号文规定，所有在2007年3月16日前登记设立的外资企业都在2008年1月1日起开始享受“两免三减半”，而10年之期犹在，如果外资企业的外资股东主动减持触及25%的红线，就可能踩到陷阱！</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">躺着中枪的例子</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">根据创业板上市公司——锦富新材（300128）2016年1月6日发布的公告，该公司作为外资企业于2004年成立，并在当年起享受企业所得税“两免三减半”优惠。该<a href=\"http://www.lvzheng.com/xiaoweishuo/gudong_9.html\" target=\"_blank\" title=\"股东大会\" style=\"padding: 0px; margin: 0px; text-decoration-line: none; cursor: pointer; color: rgb(102, 102, 102);\">公司外资股东</a>自2013年初开始在二级市场减持公司股份，截至2013年12月31日，其外资股东持股比例为17.24%。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><a href=\"http://www.lvzheng.com/xiaoweishuo/shuiwu_1.html\" target=\"_blank\" title=\"房产税务\" style=\"padding: 0px; margin: 0px; cursor: pointer; color: rgb(102, 102, 102); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\"><span style=\"padding: 0px; margin: 0px;\">税务</span></a><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">机关认定该公司作为<a href=\"http://www.lvzheng.com/xiaoweishuo/waizi_15.html\" target=\"_blank\" title=\"外资企业\" style=\"padding: 0px; margin: 0px; text-decoration-line: none; cursor: pointer; color: rgb(102, 102, 102);\">外资企业</a>经营期限未满10年，需补缴“两免三减半”期间享受税收优惠合计10,961,954.84元并加收滞纳金3,200,890.81元。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">假如锦富新材在2015年后才让进行外资股东减持，满足了10年实际经营期的条件，那这1400万的补税款和滞纳金就可以避免，实在是一失足成千古恨！</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">从这个悲伤的案例中可以知道，所有在2007年3月16日前登记设立、享受了企业所得税“两面三减半”优惠的外资企业，如果实际经营期未达10年，在外资股东想主动减持股份时要注意了，一旦减持后外资比例低于25%就踩上这补税陷阱！</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">主动与被动的区别</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">上面的案例和分析都是说外资股东“主动减持”至低于25%，那如果是外资股权“被动稀释”呢？</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">对于外资股份有限公司来说，股份公司因为增资扩股或IPO原因导致外资股权被动稀释后低于25%，不需要补税；但如果稀释后外资股东主动减持，那就必须将被动稀释的因素还原后看外资减持后是否触及25%红线，当发现减持过线，企业又未经营满10年的话，sorry。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">（依据：外经贸法发[2002]575号 第三条）</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">对于普通的<a href=\"http://www.lvzheng.com/xiaoweishuo/wzgszc/\" target=\"_blank\" title=\"外资公司注册\" style=\"padding: 0px; margin: 0px; text-decoration-line: none; cursor: pointer; color: rgb(102, 102, 102);\">外资公司</a>来说，公司因重组业务导致被动稀释外资持股比例的情况，曾经的国税发[1997]71号文说可不补，但该文在2010年全文废止了。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">所以，吃完“两免三减半”蛋糕的没上市的外资公司，如果<a href=\"http://www.lvzheng.com/xiaoweishuo/waizigongsizhuce.html\" target=\"_blank\" title=\"注册外资\" style=\"padding: 0px; margin: 0px; text-decoration-line: none; cursor: pointer; color: rgb(102, 102, 102);\">外资股东</a>想减持，请慎重，忍过10年就好！</span></p><p><br/></p>', '远路', '1564932277', '3', '34', null);
INSERT INTO `tp_advisory_article` VALUES ('7', '小心陷阱！外资股东慎减持', '实行改革开放以后，我们迎来一个激情四射的时代，外国资金的流入，让中外合资经营企业不断出现。1991年，为了让内外资合作发展的友谊再升华一下，全国人大公布了《外商投资企业和外国企业所得税法》，并在该法及其实施细则中规定给外资企业减税，其中就包括“两免三减半”政策。', '<p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">实行改革开放以后，我们迎来一个激情四射的时代，外国资金的流入，让<a href=\"http://www.lvzheng.com/xiaoweishuo/gongsifl_1.html\" target=\"_blank\" title=\"合资公司\" style=\"padding: 0px; margin: 0px; text-decoration-line: none; cursor: pointer; color: rgb(102, 102, 102);\">中外合资经营企业</a>不断出现。1991年，为了让内外资合作发展的友谊再升华一下，全国人大公布了《外商投资企业和外国企业所得税法》，并在该法及其实施细则中规定给外资企业减税，其中就包括“两免三减半”政策。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">享受甜头的条件</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">热情好客是美德，但机智的天朝人民不会被哗啦啦涌进来的美刀冲昏了脑袋。为了避免外国资本来吃完优惠蛋糕就跑，享受“两免三减半”的<a href=\"http://www.lvzheng.com/xiaoweishuo/waizi_15.html\" target=\"_blank\" title=\"外资企业组织形式\" style=\"padding: 0px; margin: 0px; text-decoration-line: none; cursor: pointer; color: rgb(102, 102, 102);\">外资企业</a>必须符合两个条件：</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">◆经营期在10年以上</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">◆外资比例达到25%以上</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">（依据：《外商投资企业和外国企业所得税法》第八条、外经贸法发[2002]575号文第二条）</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">如果一个外资企业实际经营不满10年就注销，或10年内外资持股比例低于25%，那它必须把吃进去的减免税款吐出来！</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">2008年新企业所得税法颁布后，外资所得税法被废止，但上述优惠和制约规定仍继续执行。根据国发[2007]39号文规定，所有在2007年3月16日前登记设立的外资企业都在2008年1月1日起开始享受“两免三减半”，而10年之期犹在，如果外资企业的外资股东主动减持触及25%的红线，就可能踩到陷阱！</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">躺着中枪的例子</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">根据创业板上市公司——锦富新材（300128）2016年1月6日发布的公告，该公司作为外资企业于2004年成立，并在当年起享受企业所得税“两免三减半”优惠。该<a href=\"http://www.lvzheng.com/xiaoweishuo/gudong_9.html\" target=\"_blank\" title=\"股东大会\" style=\"padding: 0px; margin: 0px; text-decoration-line: none; cursor: pointer; color: rgb(102, 102, 102);\">公司外资股东</a>自2013年初开始在二级市场减持公司股份，截至2013年12月31日，其外资股东持股比例为17.24%。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><a href=\"http://www.lvzheng.com/xiaoweishuo/shuiwu_1.html\" target=\"_blank\" title=\"房产税务\" style=\"padding: 0px; margin: 0px; cursor: pointer; color: rgb(102, 102, 102); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\"><span style=\"padding: 0px; margin: 0px;\">税务</span></a><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">机关认定该公司作为<a href=\"http://www.lvzheng.com/xiaoweishuo/waizi_15.html\" target=\"_blank\" title=\"外资企业\" style=\"padding: 0px; margin: 0px; text-decoration-line: none; cursor: pointer; color: rgb(102, 102, 102);\">外资企业</a>经营期限未满10年，需补缴“两免三减半”期间享受税收优惠合计10,961,954.84元并加收滞纳金3,200,890.81元。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">假如锦富新材在2015年后才让进行外资股东减持，满足了10年实际经营期的条件，那这1400万的补税款和滞纳金就可以避免，实在是一失足成千古恨！</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">从这个悲伤的案例中可以知道，所有在2007年3月16日前登记设立、享受了企业所得税“两面三减半”优惠的外资企业，如果实际经营期未达10年，在外资股东想主动减持股份时要注意了，一旦减持后外资比例低于25%就踩上这补税陷阱！</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">主动与被动的区别</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">上面的案例和分析都是说外资股东“主动减持”至低于25%，那如果是外资股权“被动稀释”呢？</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">对于外资股份有限公司来说，股份公司因为增资扩股或IPO原因导致外资股权被动稀释后低于25%，不需要补税；但如果稀释后外资股东主动减持，那就必须将被动稀释的因素还原后看外资减持后是否触及25%红线，当发现减持过线，企业又未经营满10年的话，sorry。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">（依据：外经贸法发[2002]575号 第三条）</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">对于普通的<a href=\"http://www.lvzheng.com/xiaoweishuo/wzgszc/\" target=\"_blank\" title=\"外资公司注册\" style=\"padding: 0px; margin: 0px; text-decoration-line: none; cursor: pointer; color: rgb(102, 102, 102);\">外资公司</a>来说，公司因重组业务导致被动稀释外资持股比例的情况，曾经的国税发[1997]71号文说可不补，但该文在2010年全文废止了。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">所以，吃完“两免三减半”蛋糕的没上市的外资公司，如果<a href=\"http://www.lvzheng.com/xiaoweishuo/waizigongsizhuce.html\" target=\"_blank\" title=\"注册外资\" style=\"padding: 0px; margin: 0px; text-decoration-line: none; cursor: pointer; color: rgb(102, 102, 102);\">外资股东</a>想减持，请慎重，忍过10年就好！</span></p><p><br/></p>', '远路', '1564932303', '5', '22', null);
INSERT INTO `tp_advisory_article` VALUES ('8', '深圳外资公司注册的好处有哪些？', '最近有很多朋友咨询关于注册外资公司的相关问题，总结一下大概分为三类：外资公司注册条件、外资公司注册资金以及外资公司注册所需材料。\r\n\r\n首先我们需要知道，外资企业包括：中外合资、中外合作和外商独资三种形式。\r\n\r\n中外合资经营企业：外商在企业注册资本中的比例有法定要求；企业采取有限责任公司的组织形式。故此种合营称为股权式合营。', '<p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">最近有很多朋友咨询关于注册外资公司的相关问题，总结一下大概分为三类：外资公司注册条件、外资公司注册资金以及外资公司注册所需材料。<br style=\"padding: 0px; margin: 0px;\"/></span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">首先我们需要知道，外资企业包括：中外合资、中外合作和外商独资三种形式。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">中外合资经营企业：外商在企业注册资本中的比例有法定要求；企业采取有限责任公司的组织形式。故此种合营称为股权式合营。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">中外合作经营企业：外商在企业注册资本中的份无强制性要求；企业采取灵活的组织管理、利润分配、风险负担方式。故此种合营称为契约式合营。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">外商独资：企业全部资本均为外商拥有。海外的法人或自然人（一个股东以上）均能注册。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">了解清楚外资企业的三种类型之后，再来详细介绍这外资公司注册的条件。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><strong style=\"padding: 0px; margin: 0px;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">中外合资企业注册外资公司所需条件：</span></strong></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">1、股东人数为50人以下；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">2、投资外方至少投入暂册资本的 25% ，一般对投资外方的投资没有最高上限；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">3、中方投资主体应为企业、其他经济组织，事业单位法人、社团法人，民办非企业法人经审批机关批准可作为中方投资主体进行投资；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">4、经营场所和共同设定的公司章程；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">5、协商确定董事长和副董事长，中外合营者一方担任董事长的，由外方担任副董事长。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><strong style=\"padding: 0px; margin: 0px;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">中外合作经营企业注册外资公司所需条件：</span></strong></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">1、必须是产品出口的生产型合作企业（是指企业产品主要用于出口创汇的生产型合作企业）</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">2、必须是技术先进的生产型合作企业（是指外国合作者提供先进技术，从事新产品的开发，实现产品升级换代，以增加出口创汇或者替代进口的生产型合作企业）。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">外商独资企业注册外资公司所需条件：以海外的法人或自然人（一个股东以上）均能注册。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><strong style=\"padding: 0px; margin: 0px;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">中外合资企业注册资金问题：</span></strong></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">1、中外合资经营企业的投资总额在300万美元以下(含300万美元)的，其注册资本至少应占投资总额的7/10。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">2、中外合资经营企业的投资总额在 300 万美元以上至 1000 万美元(含1000万美元)的 ，其注册资本至少应占投资总额的1/2 ，其中投资总额在420万美元以下的，注册资本不得低于210万美元。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">3、中外合资经营企业的投资总额在 1000万美元以上至 3000万美元(含3000万美元)的，其注册资本至少应占投资总额的2/5，其中投资总额在1250万美元以下的，注册资本不得低于500万美元。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">4、中外合资经营企业的投资总额在3000万美元以上的，其注册资本至少应占投资总额的1/3，其中投资总额在3600万美元以上的，注册资本不得低于1200万美元。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><strong style=\"padding: 0px; margin: 0px;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">注册外资公司所需申办材料：</span></strong></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">1、法定代表人签署的《外商投资企业登记申请书》（原件）</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">2、企业名称核准通知书（原件）</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">3、合同、章程（原件）</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">4、批准证书副本（一）（原件）</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">5、审批部门关于合同、章程的批复（复印件）</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">6、外方投资者的银行资信证明（原件）</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">7、董事会成员任职文件（原件）</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">8、董事签字及总经理登记备案表（原件）</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">9、董事身份证明（复印件）</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">10、住所使用证明或租赁协议（原件）</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><strong style=\"padding: 0px; margin: 0px;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">外资公司注册申办流程：</span></strong></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">深圳工商局办理查名、工商营业执照、组织机构代码证、税务登记证——深圳技术监督局办理企业代码——深圳工贸局办理批准证书——深圳环保局办理环保批文（据公司性质而定）——深圳消防局办理消防批文（据公司性质而定）——深圳公安局办理刻章——深圳外汇管理局办理外汇批文——深圳国税地税局办理税务登记——深圳海关办理海关注册、备案</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><strong style=\"padding: 0px; margin: 0px;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">注册外资企业的优势：</span></strong></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">1、独立操控，容易管理，操作上、管理上、在未来的发展上都具有更高效率；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">2、享受三减两免优惠政策；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">3、有能力正式开展业务，而无须像办事处一样有诸多限制；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">4、向用户开人民币发票，并以人民币作为收入；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">5、用人民币利润转化成美元向境外母公司汇付；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">6、直接在中国雇佣员工；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 15px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 1.75em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">7、保护知识产权，专有技术</span></p><p><br/></p>', '远路', '1564932366', '4', '22', null);
INSERT INTO `tp_advisory_article` VALUES ('9', '中外合资企业增资流程', '大家都知道企业增资是一件值得高兴的事，就是步骤有些许的繁琐，外资更是，中外合资企业增资有一定的条件和要求，如果中外合资企业增加投资总额，注册资本是不是按比例同时要增加呢？带着疑问阅读今天的文章。', '<p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">大家都知道企业增资是一件值得高兴的事，就是步骤有些许的繁琐，外资更是，中外合资企业增资有一定的条件和要求，如果中外合资企业增加投资总额，注册资本是不是按比例同时要增加呢？带着疑问阅读今天的文章。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　一、外资企业增资流程：</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　拟订有关增资的董事会决议-&gt;广州市对外贸易经济合作局核准补充增资章程-&gt;外汇管理局办理外汇业务核准件变更登记-&gt;投入增资资金-&gt;聘请会计师事务所出具验资报告-&gt;办理工商、税务等系列变更登记</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　二、出资注意事项:</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　1.货币资金出资注意事项</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　a.外商投资企业外方投资者出资比例不得不低于注册资本的25%</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　b.出资人必须为章程所规定的股东,中英文拼写与章程一致,不得由他人代垫出资</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　c.外汇登记证及外汇业务核准件中须由开户银行加盖业务专用章及填写帐号</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　d.投入资本金时须在银行单据“用途/款项来源/摘要/备注”一栏中注明“投资款”或“资本金”</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　2.以实物、（工业产权、非专利技术、土地使用权以下简称无形资产）出资注意事项</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　a.用于投资的实物为投资人所有,且未做担保或抵押；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　b.以工业产权、非专利技术出资的，股东或者发起人应当对其拥有所有权；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　c.以土地使用权出资的，股东或者发起人应当拥有土地使用权；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　d.公司章程应当就上述出资的转移事宜作出规定，并于投资后公司成立后六个月内依照有关规定办理转移过户手续，报公司登记机关备案；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　e.注册资本中以无形资产作价出资的，其所占注册资本的比例应当符合国家有关规定。无形资产中属于国家规定的高新技术成果，其作价金额超过公司注册资本20%的，应当经省级以上科技主管部门认定。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　f.用于投资的实物资产不得超过公司注册资本的50%。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　g.以实物或无形资产出资的业经评估,并提供评估报告</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　h.委托会计师事务所出具增资报告需要提供的资料清单</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　一、中外合资企业增资办理地税税务变更所需资料：</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　1、工商营业执照、批准证书、批复原件、复印件</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　2、税务登记变更表</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　3、公章、财务章</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　4、税务登记证原件</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　二、中外合资企业增资办理国税税务变更所需资料：</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　1、工商营业执照、批准证书、批复原件、复印件</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　2、税务登记变更表</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　三、中外合资企业增资办理公安局变更所需资料：</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　1、备案簿变更申请书</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　2、法人身份证明复印件</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　3、工商营业执照、批准证书、批复复印件</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　4、备案登记簿原件</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　四、中外合资企业增资办理统计变更所需资料：</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　1、工商营业执照、批准证书、批复原件、复印件</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　2、统计变更表</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　3、统计登记证原件</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　没有看懂没关系，直接找代理公司就可以了。</span></p><p><br/></p>', '呀ui你', '1564932467', '6', '22', null);
INSERT INTO `tp_advisory_article` VALUES ('10', '注册网贷公司的流程', '　P2P的意思就是个人对个人的借款，刚好您有多余的钱准备投资，他正好需要钱，就通过网贷平台进行交易，随着P2P网贷平台的日益火爆，注册网贷公司的人越来越多，那他们究竟是怎么注册成功的呢？', '<p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　P2P的意思就是个人对个人的借款，刚好您有多余的钱准备投资，他正好需要钱，就通过网贷平台进行交易，随着P2P网贷平台的日益火爆，注册网贷公司的人越来越多，那他们究竟是怎么注册成功的呢？</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　现在开一家Ｐ２Ｐ网络借贷公司和开普通的公司手续大同小异，一般只需根据《公司登记管理条例》在工商管理部门进行注册，根据《互联网信息服务管理办法》及《互联网站管理工作细则》的规定在通信管理部门进行备案即可。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　要提醒的是，Ｐ２Ｐ借贷平台属于软件类公司，所以注册时需要进行计算机软件专项审批，企业营业执照经营范围里会涉及到。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　开Ｐ２Ｐ网贷公司需符合５大条件：１、股东符合法定人数；２、股东出资达到法定资本最低限额；３、股东共同制定公司章程；４、有公司名称，建立符合有限公司要求的组织机构；５、有公司办公场所。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　同时需提交这些注册手续材料：</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　１、法定代表人签署的《企业设立登记申请书》原件１份；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　２、经办人身份证明复印件１份；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　３、指定联系人身份证明复印件１份；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　４、《企业名称预先核准通知书》１份；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　５、全体股东（发起人）签署的章程原件１份；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　６、股东（发起人）的主体资格证明（复印件１份，自然人身份证明验原件，单位资格证明加盖公章，注明“与原件一致”）；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　７、法定代表人、执行董事／董事长、董事、监事、经理的任职文件（原件１份）及其身份证明（复印件１份）（法定代表人身份证明验原件）；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　８、住所（经营场所）信息申报材料（在申请书中填写）；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　９、同时申请实收资本备案的，有限责任公司提交公司出具的注明验资证明编号的《出资证明书》（原件１份）；股份有限公司提交会计师事务所出具的验资报告或银行询证函原件１份；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　１０、法律、行政法规和国务院决定规定设立公司必须报经批准的，提交有关的批准文件或者许可证书（复印件１份，核对原件）。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　申请设立网络借贷公司应同时具备以下条件：</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　（一）股东、发起人信誉良好，无重大违法记录；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　（二）注册资本不得低于人民币1000万元；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　（三）公司章程符合有关规定；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　（四）董事长、执行董事和高级管理人员符合本规定的任职资格条件；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　（五）具备健全的组织机构和管理制度；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　（六）有与业务规模相适应的固定住所；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　（七）有与开展业务相适应的业务、财务等计算机软硬件设施；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　（八）领取营业执照后，10个工作日以内携带有关材料向地方金融监管部门备案登记。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　（九）申请相应的电信业务经营许可；未按规定申请电信业务经营许可的，不得开展网络借贷信息中介业务。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">　　有关开网贷公司的信息可以上小微律政咨询，小微律政帮助您创业成功。</span></p><p><br/></p>', '源路', '1564932547', '17', '34', null);
INSERT INTO `tp_advisory_article` VALUES ('11', '北京税务股权变更流程', '在设立之初或者在持续经营的途中，任何企业都难免会遇到资本架构调整、股权结构变动的情况。有许多创业者，遇到股权的问题就会感到困惑，更别说还要变更了。', '<p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">&nbsp; 在设立之初或者在持续经营的途中，任何企业都难免会遇到资本架构调整、股权结构变动的情况。有许多创业者，遇到股权的问题就会感到困惑，更别说还要变更了。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;今天小编就来为您介绍股权变动的流程和所需准备的资料。希望能够对您有所帮助。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　一、股权变更流程</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　1、领取《公司变更登记申请表》(工商局办证大厅窗口领取)</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　2、变更营业执照(填写公司变更表格，加盖公章，整理公司章程修正案、股东会决议、股权转让协议、公司营业执照正副本原件到工商局办证大厅办理)</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　3、变更组织机构代码证(填写企业代码证变更表格，加盖公章，整理公司变更通知书、营业执照副本复印件、企业法人身份证复印件、老的代码证原件到质量技术监督局办理)</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　4、变更税务登记证(拿着税务变更通知单到税务局办理)</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　5、变更银行信息(拿着银行变更通知单基本户开户银行办理)</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　二、公司股权变更所需资料</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　1、《公司变更登记申请表》</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　2、公司章程修正案(全体股东签字、盖公章)</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　3、股东会决议(全体股东签字、盖公章)</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　4、公司执照正副本(原件)</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　5、全体股东身份证复印件(原件核对)</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　6、股权转让协议原件(注明股权由谁转让给谁，股权、债权债务一并转让，转让人与被转让人签字)</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;以上就是小编整理的内容，如果您在创业的过程中遇到任何疑惑，欢迎到小微律政咨询。</span></p><p><br/></p>', 'sd', '1565013391', '3', '35', null);
INSERT INTO `tp_advisory_article` VALUES ('12', '北京税务股权变更流程', '在设立之初或者在持续经营的途中，任何企业都难免会遇到资本架构调整、股权结构变动的情况。有许多创业者，遇到股权的问题就会感到困惑，更别说还要变更了。', '<p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">&nbsp; 在设立之初或者在持续经营的途中，任何企业都难免会遇到资本架构调整、股权结构变动的情况。有许多创业者，遇到股权的问题就会感到困惑，更别说还要变更了。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;今天小编就来为您介绍股权变动的流程和所需准备的资料。希望能够对您有所帮助。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　一、股权变更流程</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　1、领取《公司变更登记申请表》(工商局办证大厅窗口领取)</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　2、变更营业执照(填写公司变更表格，加盖公章，整理公司章程修正案、股东会决议、股权转让协议、公司营业执照正副本原件到工商局办证大厅办理)</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　3、变更组织机构代码证(填写企业代码证变更表格，加盖公章，整理公司变更通知书、营业执照副本复印件、企业法人身份证复印件、老的代码证原件到质量技术监督局办理)</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　4、变更税务登记证(拿着税务变更通知单到税务局办理)</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　5、变更银行信息(拿着银行变更通知单基本户开户银行办理)</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　二、公司股权变更所需资料</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　1、《公司变更登记申请表》</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　2、公司章程修正案(全体股东签字、盖公章)</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　3、股东会决议(全体股东签字、盖公章)</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　4、公司执照正副本(原件)</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　5、全体股东身份证复印件(原件核对)</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　6、股权转让协议原件(注明股权由谁转让给谁，股权、债权债务一并转让，转让人与被转让人签字)</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;以上就是小编整理的内容，如果您在创业的过程中遇到任何疑惑，欢迎到小微律政咨询。</span></p><p><br/></p>', 'sd', '1565013391', '1', '35', null);
INSERT INTO `tp_advisory_article` VALUES ('13', '工商登记续期截止日延长', '阿尔及利亚官方通讯社《阿新社》7月28日发布题为《进口商：工商登记续期截止日期延长至10月15日》的报道，全文摘编如下：', '<p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-size: 13px; line-height: 1.5;\">阿尔及利亚官方通讯社《阿新社》7月28日发布题为《进口商：工商登记续期截止日期延长至10月15日》的报道，全文摘编如下：</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-size: 13px; line-height: 1.5;\"><br/></span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">　　根据政府公报(第43号)发布的政令，进口原材料、直接转销商品领域的进口商的工商登记续期期限延长至2019年10月15日。</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">　　该政令对2017年11月2日的政令进行了修订，该政令规定，进口原材料、直接转销商品领域的进口经营者工商登记的有效期为2年，可更新。</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">　　根据旧命令，有关经营商有六个月的时间来满足规定要求，但这一期限延长了多次。最后一次设定的最后期限是2019年4月15日。</p><p><br/></p>', 'yuanlu', '1565101291', '0', null, '5');
INSERT INTO `tp_advisory_article` VALUES ('14', '个体工商执照代办', '工商注册的流程是复杂的，对于第一次去工商注册，这些流程必须得提前去了解，这会为后续办理节约很多时间，那么个体工商执照代办流程有哪些呢?下面小微律政小编为您详细解析。', '<p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">工商注册的流程是复杂的，对于第一次去工商注册，这些流程必须得提前去了解，这会为后续办理节约很多时间，那么个体工商执照代办流程有哪些呢?下面小微律政小编为您详细解析。</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-weight: bold;\">　　工商注册流程：</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-weight: bold;\"><br/></span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">　　1、核准商局的名称</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">　　企业的名称，2个中文字以上，如果是相同行业，只要有两个字相同就不能注册，所以最好是确定3到5个字更为合适。</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">　　2、租办公室</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">　　租办公室，必须是专门的商业用途或者是办公用途的，并且租房合同必须是一年以上的，提交时需要租房合同的原件和租房的房产证复印件。</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">　　3、开设账户入资</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">　　上述完成之后需要去银行开设账户，先是开设验资账户，用于会计师事务所查询注册资金是否到位，再是开设公司基本账户，这样注册资金就可以自然转到基本账户了。</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">　　4、登记</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">　　登录北京市工商局网，然后进行企业网上登记，把公司注册的所有信息全部登记完成。</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">　　5、去工商局领取营业执照</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">　　严格按照公司规定，把公司材料我们按照指定的时间把公司材料交给工商登记人员之后，领取工商受理单，受理单上也写明5个工作日领取营业执照，所以到时间去取照窗口领取即可。</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">　　6、组织机构代码的办理</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">　　带着领取的营业执照以及相应的资料到去技术监督局办理组织机构代码。</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">　　7、去国地税办理登记</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">　　领取营业执照以后，必须尽早去国地税登记，在以后的每一个月都要去申报。</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">　　8、办理开户许可</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">　　把营业执照、代码证、国地税原件带到银行办理开户许可。</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">　　9、税务工作的开展</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">　　公司注册完成后，必须按照规定每月进行报税。</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">　　以上就是工商注册的流程，想要了解更多关于工商注册的资讯，欢迎继续关注小微律政!</p><p><br/></p>', 'yuanlu', '1565101777', '0', null, '5');

-- ----------------------------
-- Table structure for tp_advisory_cate
-- ----------------------------
DROP TABLE IF EXISTS `tp_advisory_cate`;
CREATE TABLE `tp_advisory_cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `cate_name` varchar(50) NOT NULL,
  `sort` tinyint(4) DEFAULT '50' COMMENT '50',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_advisory_cate
-- ----------------------------
INSERT INTO `tp_advisory_cate` VALUES ('1', '0', '公司注册', '50', '1');
INSERT INTO `tp_advisory_cate` VALUES ('22', '1', '注册流程', '50', '1');
INSERT INTO `tp_advisory_cate` VALUES ('2', '0', '公司变更', '50', '1');
INSERT INTO `tp_advisory_cate` VALUES ('3', '0', '财税知识', '50', '1');
INSERT INTO `tp_advisory_cate` VALUES ('4', '0', '商标', '50', '1');
INSERT INTO `tp_advisory_cate` VALUES ('5', '0', '版权登记', '50', '1');
INSERT INTO `tp_advisory_cate` VALUES ('6', '0', '行政许可证', '50', '1');
INSERT INTO `tp_advisory_cate` VALUES ('7', '0', '焦点资讯', '50', '1');
INSERT INTO `tp_advisory_cate` VALUES ('8', '0', '小微问答', '50', '1');
INSERT INTO `tp_advisory_cate` VALUES ('34', '1', '注册地址', '50', '1');
INSERT INTO `tp_advisory_cate` VALUES ('35', '2', '股权转让', '50', '1');
INSERT INTO `tp_advisory_cate` VALUES ('36', '2', '法人变更', '50', '1');
INSERT INTO `tp_advisory_cate` VALUES ('37', '2', '名称变更', '50', '1');
INSERT INTO `tp_advisory_cate` VALUES ('38', '2', '分公司变更', '50', '1');
INSERT INTO `tp_advisory_cate` VALUES ('39', '2', '公司注销', '50', '1');
INSERT INTO `tp_advisory_cate` VALUES ('999', '0', '关联分类咨询', '1', '1');
INSERT INTO `tp_advisory_cate` VALUES ('1000', '0', '关联分类咨询', '50', '1');

-- ----------------------------
-- Table structure for tp_article
-- ----------------------------
DROP TABLE IF EXISTS `tp_article`;
CREATE TABLE `tp_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_title` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL COMMENT '标题',
  `author` varchar(50) NOT NULL DEFAULT '远路' COMMENT '作者',
  `desc` varchar(500) DEFAULT NULL COMMENT '描述',
  `thumb` varchar(255) NOT NULL COMMENT '压缩图',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  `thumb_list` text NOT NULL COMMENT '相册',
  `cate_id` tinyint(10) NOT NULL COMMENT '栏目id',
  `content` longtext COMMENT '内容',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `qq` varchar(12) NOT NULL,
  `tel` varchar(13) DEFAULT NULL,
  `uid` int(11) NOT NULL,
  `click` int(11) NOT NULL DEFAULT '0',
  `look` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL DEFAULT '0',
  `type_upload` tinyint(1) NOT NULL DEFAULT '0' COMMENT '上传文件类型 0：图片 1： 文件 ',
  `file_link` varchar(255) NOT NULL DEFAULT '' COMMENT '文件链接',
  `thumbs` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `content1` longtext COMMENT '内容',
  PRIMARY KEY (`id`,`cate_id`,`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='文章表';

-- ----------------------------
-- Records of tp_article
-- ----------------------------
INSERT INTO `tp_article` VALUES ('1', '有限责任公司', '内资有限公司注册（默认）', '远路', '', '/uploads/cate/20190611\\6536407ceb0d02c2d1c71f029e24da38.jpg', '1560267360', '', '5', '', '1', '', null, '0', '0', '0', '0', '0', '', null, null, null, null);
INSERT INTO `tp_article` VALUES ('2', '分支机构', ' 内资分支机构注册（默认）', '远路', '', '/uploads/cate/20190611\\28ddf34b82f3943aa305d8c4ca816bd4.jpg', '1560267426', '', '5', '', '1', '', null, '0', '0', '0', '0', '0', '', null, null, null, null);
INSERT INTO `tp_article` VALUES ('3', '股份有限公司', '内资合伙企业注册（默认）', '远路', '', '/uploads/cate/20190611\\8f5588e252cc81f0bcf10af4da0485f0.jfif', '1560267481', '', '5', '', '1', '', null, '0', '0', '0', '0', '0', '', null, null, null, null);
INSERT INTO `tp_article` VALUES ('4', '合伙企业', '营 企业法人代表（负责人）及董监事经理变更（集团公司）', '远路', '', '/uploads/cate/20190611\\6c0d9cd96d544a84358f2b005c1b9390.jpg', '1560267523', '', '7', '', '1', '', null, '0', '0', '0', '0', '0', '', null, null, null, null);
INSERT INTO `tp_article` VALUES ('5', '法人及董监事变更', ' 营业执照简易注销（一年）', '远路', '', '/uploads/cate/20190611\\96b7c7a7b9ae2c929635285422ac2a50.jfif', '1560267578', '', '8', '', '1', '', null, '0', '0', '0', '0', '0', '', null, null, null, null);
INSERT INTO `tp_article` VALUES ('6', '简易注销', '证照补办、换发、增加证照（内资有限公司）', '远路', '', '/uploads/cate/20190611\\9b1d4c829fa734d674d342bfd859b4a3.jpg', '1560267636', '', '9', '', '1', '', null, '0', '0', '0', '0', '0', '', null, null, null, null);
INSERT INTO `tp_article` VALUES ('7', '住所异常修复', '住所异常修复', '远路', '', '/uploads/cate/20190611\\aecb3bdb2391b87fbf32fdbe2d30f9a4.jpg', '1560268168', '', '9', '', '1', '', null, '0', '0', '0', '0', '0', '', null, null, null, null);
INSERT INTO `tp_article` VALUES ('8', '代理记账（一般人）', ' 代理记账（内资小规模,一年,0申报含20张票据以内）', '远路', '', '/uploads/cate/20190611\\8919c864188b4b8ab72b5ee8255bd702.jpg', '1560268214', '', '10', '', '1', '', null, '0', '0', '0', '0', '0', '', null, null, null, null);
INSERT INTO `tp_article` VALUES ('9', ' 代理记账', ' 代理记账（内资小规模,一年,0申报含20张票据以内）', '远路', '', '/uploads/cate/20190611\\dab49cb73d799b57a3fbec36cda26cc3.jpg', '1560268260', '', '10', '', '1', '', null, '0', '0', '0', '0', '0', '', null, null, null, null);

-- ----------------------------
-- Table structure for tp_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `tp_auth_group`;
CREATE TABLE `tp_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL DEFAULT '' COMMENT '用户组中文名称',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT ' 状态：为1正常，为0禁用',
  `rules` varchar(380) NOT NULL DEFAULT '' COMMENT '用户组拥有的规则id',
  `desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='用户组表';

-- ----------------------------
-- Records of tp_auth_group
-- ----------------------------
INSERT INTO `tp_auth_group` VALUES ('1', '超级管理员', '1', '5,7,6,69,70,11,31,32,33,105,8,9,102,34,36,37,19,20,75,76,78,84,80,81,82,83,100,2,3,4,39,40,41,89,103,42,43,44,45,46,71,72,73,74,104,110,13,14,47,108,109,87,23,24,48,49,50,51,52,25,27,28,53,55,56,26,29,30,35,58,59,60,77,67,64,63,65,66,68,85,86,106,107,88,95,96,97,98,99,118,113,114,115,116,117,128,119,121,130,129,131,132,120,122,134,135,136', '所有权限');
INSERT INTO `tp_auth_group` VALUES ('3', '大内总管', '1', '5,19,20,75,76,13,14,47,108,109,87', '');

-- ----------------------------
-- Table structure for tp_auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `tp_auth_group_access`;
CREATE TABLE `tp_auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL COMMENT '用户id',
  `group_id` mediumint(8) unsigned NOT NULL COMMENT '用户组id',
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户组明细表';

-- ----------------------------
-- Records of tp_auth_group_access
-- ----------------------------
INSERT INTO `tp_auth_group_access` VALUES ('1', '1');
INSERT INTO `tp_auth_group_access` VALUES ('1', '3');
INSERT INTO `tp_auth_group_access` VALUES ('1', '5');
INSERT INTO `tp_auth_group_access` VALUES ('5', '3');
INSERT INTO `tp_auth_group_access` VALUES ('6', '1');
INSERT INTO `tp_auth_group_access` VALUES ('6', '3');
INSERT INTO `tp_auth_group_access` VALUES ('7', '1');

-- ----------------------------
-- Table structure for tp_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `tp_auth_rule`;
CREATE TABLE `tp_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(20) NOT NULL DEFAULT '' COMMENT '规则中文名称',
  `name` char(80) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态：为1正常，为0禁用',
  `pid` tinyint(5) DEFAULT '0',
  `level` tinyint(1) DEFAULT NULL,
  `sort` tinyint(5) DEFAULT '50',
  `icon` varchar(50) DEFAULT NULL,
  `type` tinyint(1) DEFAULT '1',
  `condition` char(100) NOT NULL,
  `types` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='规则表';

-- ----------------------------
-- Records of tp_auth_rule
-- ----------------------------
INSERT INTO `tp_auth_rule` VALUES ('5', '系统设置', 'system', '1', '0', '0', '1', '', '1', '', '1');
INSERT INTO `tp_auth_rule` VALUES ('2', '栏目管理', 'cate', '1', '0', '0', '2', '', '1', '', '1');
INSERT INTO `tp_auth_rule` VALUES ('3', '栏目管理', 'cate/lst', '1', '2', '1', '1', '&#xe6bf;', '1', '', '2');
INSERT INTO `tp_auth_rule` VALUES ('4', '栏目添加', 'cate/add', '1', '3', null, '50', '', '1', '', '3');
INSERT INTO `tp_auth_rule` VALUES ('6', '配置页', 'System/page', '1', '7', '2', '1', '', '1', '', '3');
INSERT INTO `tp_auth_rule` VALUES ('7', '配置列表', 'system/lst', '1', '5', '3', '3', '&#xe63c;', '1', '', '2');
INSERT INTO `tp_auth_rule` VALUES ('8', '广告轮播', 'Advert', '1', '5', '1', '4', '', '1', '', '2');
INSERT INTO `tp_auth_rule` VALUES ('9', '广告编辑', 'Advert/edit', '1', '8', null, '50', '', '1', '', '0');
INSERT INTO `tp_auth_rule` VALUES ('102', '广告列表', 'Advert/lst', '1', '8', '2', '50', '', '1', '', '3');
INSERT INTO `tp_auth_rule` VALUES ('11', '配置添加', 'system/add', '1', '7', '2', '50', '', '1', '', '3');
INSERT INTO `tp_auth_rule` VALUES ('13', '留言管理', 'message', '1', '0', '0', '51', '', '1', '', '1');
INSERT INTO `tp_auth_rule` VALUES ('14', '留言列表', 'message/lst', '1', '13', '1', '50', '', '1', '', '2');
INSERT INTO `tp_auth_rule` VALUES ('87', '后台留言', 'Message/add', '0', '13', '1', '50', '', '1', '', '0');
INSERT INTO `tp_auth_rule` VALUES ('19', '首页', 'index/index', '1', '5', '1', '6', '', '1', '', '2');
INSERT INTO `tp_auth_rule` VALUES ('20', '欢迎页面', 'Index/welcome', '1', '19', '2', '50', '', '1', '', '3');
INSERT INTO `tp_auth_rule` VALUES ('23', '管理员管理', 'admin', '1', '0', '0', '3', '', '1', '', '1');
INSERT INTO `tp_auth_rule` VALUES ('24', '管理员列表', 'admin/lst', '1', '23', '1', '50', '&#xe62d;', '1', '', '2');
INSERT INTO `tp_auth_rule` VALUES ('25', '角色管理', 'AuthGroup/lst', '1', '23', '1', '50', '&#xe62b;', '1', '', '2');
INSERT INTO `tp_auth_rule` VALUES ('26', '规则列表', 'AuthRule/lst', '1', '23', '1', '50', '&#xe6c6;', '1', '', '2');
INSERT INTO `tp_auth_rule` VALUES ('27', '添加角色', 'AuthGroup/add', '1', '25', '2', '50', '', '1', '', '3');
INSERT INTO `tp_auth_rule` VALUES ('28', '编辑角色', 'AuthGroup/edit', '1', '25', '2', '50', '', '1', '', '0');
INSERT INTO `tp_auth_rule` VALUES ('29', '添加规则', 'AuthRule/add', '1', '26', '2', '50', '', '1', '', '3');
INSERT INTO `tp_auth_rule` VALUES ('30', '编辑规则', 'AuthRule/edit', '1', '26', null, '50', null, '1', '', '0');
INSERT INTO `tp_auth_rule` VALUES ('31', '修改状态', 'System/changestatus', '0', '7', null, '50', '', '1', '', '0');
INSERT INTO `tp_auth_rule` VALUES ('32', '删除配置', 'System/del', '0', '7', null, '50', '', '1', '', '0');
INSERT INTO `tp_auth_rule` VALUES ('33', '配置修改', 'System/edit', '0', '7', null, '50', '', '1', '', '0');
INSERT INTO `tp_auth_rule` VALUES ('34', '广告添加', 'Advert/add', '1', '8', '2', '50', '', '1', '', '3');
INSERT INTO `tp_auth_rule` VALUES ('35', '规则删除', 'AuthRule/del', '1', '26', null, '50', '', '1', '', '0');
INSERT INTO `tp_auth_rule` VALUES ('36', '广告状态', 'Advert/changestatus', '1', '8', null, '50', '', '1', '', '0');
INSERT INTO `tp_auth_rule` VALUES ('37', '广告删除', 'Advert/del', '1', '8', null, '50', '', '1', '', '0');
INSERT INTO `tp_auth_rule` VALUES ('75', '字体图标', 'Index/fonts', '1', '19', '2', '50', '', '1', '', '3');
INSERT INTO `tp_auth_rule` VALUES ('39', '栏目修改', 'cate/edit', '1', '3', null, '50', '', '1', '', '0');
INSERT INTO `tp_auth_rule` VALUES ('40', '栏目状态', 'Cate/changestatus', '1', '3', null, '50', '', '1', '', '0');
INSERT INTO `tp_auth_rule` VALUES ('41', '栏目删除', 'Cate/del', '1', '3', null, '50', '', '1', '', '0');
INSERT INTO `tp_auth_rule` VALUES ('42', '内容列表', 'Article/lst', '1', '2', '1', '2', '&#xe616;', '1', '', '2');
INSERT INTO `tp_auth_rule` VALUES ('43', '内容修改', 'Article/edit', '1', '42', null, '50', '', '1', '', '0');
INSERT INTO `tp_auth_rule` VALUES ('44', '内容状态', 'Article/changestatus', '1', '42', null, '50', '', '1', '', '0');
INSERT INTO `tp_auth_rule` VALUES ('45', '内容删除', 'Article/del', '1', '42', null, '50', '', '1', '', '0');
INSERT INTO `tp_auth_rule` VALUES ('46', '内容添加', 'Article/add', '1', '42', '2', '50', '', '1', '', '3');
INSERT INTO `tp_auth_rule` VALUES ('47', '留言删除', 'Message/del', '1', '14', '2', '50', '', '1', '', '0');
INSERT INTO `tp_auth_rule` VALUES ('48', '管理员列表', 'Admin/lst', '1', '24', '2', '50', '', '1', '', '3');
INSERT INTO `tp_auth_rule` VALUES ('49', '管理员修改', 'Admin/edit', '1', '24', null, '50', '', '1', '', '0');
INSERT INTO `tp_auth_rule` VALUES ('50', '管理员状态', 'Admin/changestatus', '1', '24', null, '50', '', '1', '', '0');
INSERT INTO `tp_auth_rule` VALUES ('51', '管理员删除', 'Admin/del', '1', '24', null, '50', '', '1', '', '0');
INSERT INTO `tp_auth_rule` VALUES ('52', '管理员添加', 'Admin/add', '1', '24', '2', '50', '', '1', '', '3');
INSERT INTO `tp_auth_rule` VALUES ('53', '角色列表', 'AuthGroup/lst', '1', '25', '2', '50', '', '1', '', '3');
INSERT INTO `tp_auth_rule` VALUES ('58', '规则列表', 'AuthRule/lst', '1', '26', '2', '50', '', '1', '', '3');
INSERT INTO `tp_auth_rule` VALUES ('55', '角色状态', 'AuthGroup/changestatus', '1', '25', null, '50', '', '1', '', '0');
INSERT INTO `tp_auth_rule` VALUES ('56', '角色删除', 'AuthGroup/del', '1', '25', null, '50', '', '1', '', '0');
INSERT INTO `tp_auth_rule` VALUES ('59', '规则修改', 'AuthRule/edit', '1', '26', null, '50', '', '1', '', '0');
INSERT INTO `tp_auth_rule` VALUES ('60', '规则状态', 'AuthRule/changestatus', '1', '26', null, '50', '', '1', '', '0');
INSERT INTO `tp_auth_rule` VALUES ('63', '会员删除', 'User/del', '1', '64', null, '50', '', '1', '', '0');
INSERT INTO `tp_auth_rule` VALUES ('64', '会员列表', 'User/lst', '1', '67', null, '50', '', '1', '', '2');
INSERT INTO `tp_auth_rule` VALUES ('65', '会员修改', 'User/edit', '1', '64', null, '50', '', '1', '', '0');
INSERT INTO `tp_auth_rule` VALUES ('66', '会员状态', 'User/changestatus', '1', '64', null, '50', '', '1', '', '0');
INSERT INTO `tp_auth_rule` VALUES ('67', '会员管理', 'user', '0', '0', '0', '5', '', '1', '', '0');
INSERT INTO `tp_auth_rule` VALUES ('68', '会员添加', 'User/add', '1', '64', null, '50', '', '1', '', '0');
INSERT INTO `tp_auth_rule` VALUES ('69', '图片上传', 'system/upimg', '1', '6', '2', '50', '', '1', '', '0');
INSERT INTO `tp_auth_rule` VALUES ('70', '图片撤销', 'cate/backout', '1', '6', null, '50', '', '1', '', '0');
INSERT INTO `tp_auth_rule` VALUES ('71', '图片上传', 'cate/upimg', '1', '42', null, '50', '', '1', '', '0');
INSERT INTO `tp_auth_rule` VALUES ('72', '图片撤回', 'cate/backout', '1', '42', null, '50', '', '1', '', '0');
INSERT INTO `tp_auth_rule` VALUES ('73', '多图上传', 'article/uploadlist', '1', '42', null, '50', '', '1', '', '0');
INSERT INTO `tp_auth_rule` VALUES ('74', '取消多图', 'article/delimg', '1', '42', null, '50', '', '1', '', '0');
INSERT INTO `tp_auth_rule` VALUES ('77', '一键排序', 'AuthRule/sortall', '1', '26', null, '50', '', '1', '', '0');
INSERT INTO `tp_auth_rule` VALUES ('76', '左边导航', 'index/getLeftNav', '1', '19', null, '50', '', '1', '', '0');
INSERT INTO `tp_auth_rule` VALUES ('78', '配置类型', 'SystemType/lst', '0', '5', '1', '2', '&#xe6bf;', '1', '', '2');
INSERT INTO `tp_auth_rule` VALUES ('84', '一键排序', 'SystemType/sortall', '1', '78', null, '50', '', '1', '', '0');
INSERT INTO `tp_auth_rule` VALUES ('80', '类型删除', 'SystemType/del', '1', '78', null, '50', '', '1', '', '0');
INSERT INTO `tp_auth_rule` VALUES ('81', '类型添加', 'SystemType/add', '1', '78', '2', '50', '', '1', '', '3');
INSERT INTO `tp_auth_rule` VALUES ('82', '类型修改', 'SystemType/edit', '1', '78', null, '50', '', '1', '', '0');
INSERT INTO `tp_auth_rule` VALUES ('83', '类型状态', 'SystemType/changestatus', '1', '78', '2', '50', '', '1', '', '0');
INSERT INTO `tp_auth_rule` VALUES ('85', '工具管理', 'Tools', '0', '0', '0', '50', '', '1', '', '1');
INSERT INTO `tp_auth_rule` VALUES ('86', '插件管理', 'Plugin/PluginList', '1', '85', '1', '50', '', '1', '', '2');
INSERT INTO `tp_auth_rule` VALUES ('88', '代码自动生成', 'Generate/index', '1', '85', '1', '50', '', '1', '', '2');
INSERT INTO `tp_auth_rule` VALUES ('89', '一键排序', 'Cate/sortAll', '1', '3', '2', '50', '', '1', '', '0');
INSERT INTO `tp_auth_rule` VALUES ('91', '微信群', 'WGroup/lst', '1', '90', '1', '50', '', '1', '', '2');
INSERT INTO `tp_auth_rule` VALUES ('92', '微信号', 'WPersonal/lst', '1', '90', '1', '50', '', '1', '', '2');
INSERT INTO `tp_auth_rule` VALUES ('93', '公众号', 'WOpenid/lst', '1', '90', '1', '50', '', '1', '', '2');
INSERT INTO `tp_auth_rule` VALUES ('94', '微商货源', 'WProduct/lst', '1', '90', '1', '50', '', '1', '', '2');
INSERT INTO `tp_auth_rule` VALUES ('95', '链接管理', 'Link/lst', '0', '0', '0', '50', '', '1', '', '1');
INSERT INTO `tp_auth_rule` VALUES ('96', '链接修改', 'Link/edit', '1', '95', '1', '50', '', '1', '', '2');
INSERT INTO `tp_auth_rule` VALUES ('97', '链接状态', 'Link/changestatus', '1', '95', null, '50', '', '1', '', '0');
INSERT INTO `tp_auth_rule` VALUES ('98', '链接删除', 'Link/del', '1', '95', null, '50', '', '1', '', '0');
INSERT INTO `tp_auth_rule` VALUES ('99', '内容添加', 'Link/add', '1', '95', null, '50', '', '1', '', '3');
INSERT INTO `tp_auth_rule` VALUES ('100', '类型列表', 'SystemType/lst', '1', '78', '2', '50', '', '1', '', '3');
INSERT INTO `tp_auth_rule` VALUES ('103', '栏目列表', 'cate/lst', '1', '3', '2', '50', '', '1', '', '3');
INSERT INTO `tp_auth_rule` VALUES ('104', '内容列表', 'Article/lst', '1', '42', '2', '50', '', '1', '', '3');
INSERT INTO `tp_auth_rule` VALUES ('105', '配置列表', 'System/lst', '1', '7', '2', '50', '', '1', '', '3');
INSERT INTO `tp_auth_rule` VALUES ('106', '插件市场', 'Plugin/OnlinePluginList', '1', '86', '2', '50', '', '1', '', '3');
INSERT INTO `tp_auth_rule` VALUES ('107', '本地插件', 'Plugin/PluginList', '1', '86', '2', '50', '', '1', '', '3');
INSERT INTO `tp_auth_rule` VALUES ('108', '留言列表', 'message/lst', '1', '14', '2', '50', '', '0', '', '3');
INSERT INTO `tp_auth_rule` VALUES ('109', '修改状态', 'Message/changestatus', '1', '108', '3', '50', '', '1', '', '0');
INSERT INTO `tp_auth_rule` VALUES ('110', '图片撤销', 'Article/backOut', '1', '42', null, '50', '', '1', '', '0');
INSERT INTO `tp_auth_rule` VALUES ('113', '标签列表', 'Tag/lst', '1', '118', '1', '50', '', '1', '', '2');
INSERT INTO `tp_auth_rule` VALUES ('114', '标签添加', 'Tag/add', '1', '113', '2', '50', '', '1', '', '3');
INSERT INTO `tp_auth_rule` VALUES ('115', '标签编辑', 'Tag/edit', '1', '113', '2', '50', '', '1', '', '0');
INSERT INTO `tp_auth_rule` VALUES ('116', '标签状态', 'Tag/changestatus', '0', '113', '2', '50', '', '1', '', '3');
INSERT INTO `tp_auth_rule` VALUES ('117', '标签删除', 'Tag/del', '1', '113', null, '50', null, '1', '', '0');
INSERT INTO `tp_auth_rule` VALUES ('118', '文章咨询', '', '1', '0', '0', '50', '&#xe667;', '1', '', '1');
INSERT INTO `tp_auth_rule` VALUES ('119', '咨询栏目', 'advisory/newCate', '1', '118', '1', '50', '', '1', '', '2');
INSERT INTO `tp_auth_rule` VALUES ('120', '文章列表', 'advisory/newArticle', '1', '118', '1', '50', '', '1', '', '2');
INSERT INTO `tp_auth_rule` VALUES ('121', '栏目列表', 'advisory/newCate', '1', '119', '2', '50', '', '1', '', '3');
INSERT INTO `tp_auth_rule` VALUES ('122', '文章列表', 'advisory/newArticle', '1', '120', '2', '50', '', '1', '', '3');
INSERT INTO `tp_auth_rule` VALUES ('130', '栏目删除', 'advisory/delCate', '1', '119', '2', '50', '', '1', '', '0');
INSERT INTO `tp_auth_rule` VALUES ('128', '标签列表', 'Tag/lst', '1', '113', '2', '50', '', '1', '', '3');
INSERT INTO `tp_auth_rule` VALUES ('129', '添加栏目', 'advisory/addCate', '1', '119', '2', '50', '', '1', '', '0');
INSERT INTO `tp_auth_rule` VALUES ('131', '栏目状态', 'advisory/cateStatus', '1', '119', '2', '50', '', '1', '', '0');
INSERT INTO `tp_auth_rule` VALUES ('132', '栏目排序', 'advisory/sortAll', '1', '119', '2', '50', '', '1', '', '0');
INSERT INTO `tp_auth_rule` VALUES ('134', '文章添加', 'advisory/addarticle', '0', '120', '1', '50', '', '1', '', '2');
INSERT INTO `tp_auth_rule` VALUES ('135', '添加文章', 'advisory/addarticle', '1', '120', '2', '50', '', '1', '', '0');
INSERT INTO `tp_auth_rule` VALUES ('136', '删除文章', 'advisory/delAdvisory', '1', '120', '2', '50', '', '1', '', '0');

-- ----------------------------
-- Table structure for tp_cate
-- ----------------------------
DROP TABLE IF EXISTS `tp_cate`;
CREATE TABLE `tp_cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(50) DEFAULT NULL,
  `pid` int(10) NOT NULL,
  `hot_word` tinyint(1) NOT NULL DEFAULT '0' COMMENT '热词',
  `top_menu` tinyint(1) NOT NULL DEFAULT '0',
  `thumb` varchar(100) DEFAULT '',
  `cate_desc` varchar(255) NOT NULL COMMENT '栏目描述',
  `cate_seo` varchar(255) DEFAULT NULL COMMENT '栏目SEO',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `isdelete` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `content` text NOT NULL COMMENT '内容',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'q',
  `link` varchar(255) DEFAULT '',
  `wap_link` varchar(255) DEFAULT NULL,
  `sort` tinyint(4) DEFAULT '50',
  `sort_name` varchar(20) DEFAULT NULL,
  `content1` longtext,
  PRIMARY KEY (`id`,`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='栏目表';

-- ----------------------------
-- Records of tp_cate
-- ----------------------------
INSERT INTO `tp_cate` VALUES ('1', '工商登记', '0', '0', '0', '/uploads/cate/20190614\\90c22185bccc852d4278594a8c0d6da3.png', '  ', '', '1', '0', '1560265753', '<p>99999999999</p>', '0', '', null, '50', '注册 变更 注销', '<p>999999999999999999999</p>');
INSERT INTO `tp_cate` VALUES ('2', '财税管理', '0', '0', '0', '/uploads/cate/20190614\\c0bf9a105129e15f332d6d0a566e5656.png', ' ', '', '1', '0', '1560265771', '<p>1</p>', '0', '', null, '50', '记账 税务代理', null);
INSERT INTO `tp_cate` VALUES ('3', '银行管理', '0', '0', '0', '/uploads/cate/20190614\\8c5513fed1a39996d25e9203b072655a.png', ' ', '', '1', '0', '1560265806', '<p>1</p>', '0', '', null, '50', '银行开户 注销', null);
INSERT INTO `tp_cate` VALUES ('4', '资质许可', '0', '0', '0', '/uploads/cate/20190614\\5372b2a5c8d5425b76ce88f80be59117.png', ' ', '', '1', '0', '1560265819', '<p>1</p>', '0', '', null, '50', '餐饮 文化 卫生', null);
INSERT INTO `tp_cate` VALUES ('5', ' 公司注册', '1', '0', '0', '', '', '', '1', '0', '1560265851', '<p>1</p>', '0', '', null, '50', '', null);
INSERT INTO `tp_cate` VALUES ('7', '公司变更', '1', '0', '0', '', '', '', '1', '0', '1560265941', '<p>1</p>', '0', '', null, '50', '', null);
INSERT INTO `tp_cate` VALUES ('8', '公司注销', '1', '0', '0', '', '', '', '1', '0', '1560265950', '<p>1</p>', '0', '', null, '50', '', null);
INSERT INTO `tp_cate` VALUES ('9', '其他', '1', '0', '0', '', '', '', '1', '0', '1560265959', '<p>1</p>', '0', '', null, '50', '', null);
INSERT INTO `tp_cate` VALUES ('10', '代理记账', '2', '0', '0', '', '', '', '1', '0', '1560266022', '<p>1</p>', '0', '', null, '50', '', null);
INSERT INTO `tp_cate` VALUES ('11', '税务代办 ', '2', '0', '0', '', '', '', '1', '0', '1560266031', '<p>1</p>', '0', '', null, '50', '', null);
INSERT INTO `tp_cate` VALUES ('12', '高端财税', '2', '0', '0', '', '', '', '1', '0', '1560266039', '<p>1</p>', '0', '', null, '50', '', null);
INSERT INTO `tp_cate` VALUES ('13', '银行开户', '3', '0', '0', '', '', '', '1', '0', '1560266054', '<p>1</p>', '0', '', null, '50', '', null);
INSERT INTO `tp_cate` VALUES ('14', '增值服务', '3', '0', '0', '', '', '', '1', '0', '1560266065', '<p>1</p>', '0', '', null, '50', '', null);
INSERT INTO `tp_cate` VALUES ('15', '经营零售', '4', '0', '0', '', '', '', '1', '0', '1560266078', '<p>1</p>', '0', '', null, '50', '', null);
INSERT INTO `tp_cate` VALUES ('16', '食药监管 ', '4', '0', '0', '', '', '', '1', '0', '1560266088', '<p>1</p>', '0', '', null, '50', '', null);
INSERT INTO `tp_cate` VALUES ('17', '货运进口', '4', '0', '0', '', '', '', '1', '0', '1560266095', '<p>1</p>', '0', '', null, '50', '', null);
INSERT INTO `tp_cate` VALUES ('18', '文化出版 ', '4', '0', '0', '', '', '', '1', '0', '1560266104', '<p>1</p>', '0', '', null, '50', '', null);
INSERT INTO `tp_cate` VALUES ('19', '其他服务', '4', '0', '0', '', '', '', '1', '0', '1560266112', '<p>1</p>', '0', '', null, '50', '', null);

-- ----------------------------
-- Table structure for tp_city
-- ----------------------------
DROP TABLE IF EXISTS `tp_city`;
CREATE TABLE `tp_city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `city` varchar(50) NOT NULL,
  `pid` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`,`cid`,`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=392 DEFAULT CHARSET=utf8 COMMENT='市';

-- ----------------------------
-- Records of tp_city
-- ----------------------------
INSERT INTO `tp_city` VALUES ('1', '1', '北京市', '1');
INSERT INTO `tp_city` VALUES ('2', '1', '天津市', '2');
INSERT INTO `tp_city` VALUES ('3', '1', '上海市', '3');
INSERT INTO `tp_city` VALUES ('4', '1', '重庆市', '4');
INSERT INTO `tp_city` VALUES ('5', '1', '石家庄市', '5');
INSERT INTO `tp_city` VALUES ('6', '2', '唐山市', '5');
INSERT INTO `tp_city` VALUES ('7', '3', '秦皇岛市', '5');
INSERT INTO `tp_city` VALUES ('8', '4', '邯郸市', '5');
INSERT INTO `tp_city` VALUES ('9', '5', '邢台市', '5');
INSERT INTO `tp_city` VALUES ('10', '6', '保定市', '5');
INSERT INTO `tp_city` VALUES ('11', '7', '张家口市', '5');
INSERT INTO `tp_city` VALUES ('12', '8', '承德市', '5');
INSERT INTO `tp_city` VALUES ('13', '9', '沧州市', '5');
INSERT INTO `tp_city` VALUES ('14', '10', '廊坊市', '5');
INSERT INTO `tp_city` VALUES ('15', '11', '衡水市', '5');
INSERT INTO `tp_city` VALUES ('16', '1', '太原市', '6');
INSERT INTO `tp_city` VALUES ('17', '2', '大同市', '6');
INSERT INTO `tp_city` VALUES ('18', '3', '阳泉市', '6');
INSERT INTO `tp_city` VALUES ('19', '4', '长治市', '6');
INSERT INTO `tp_city` VALUES ('20', '5', '晋城市', '6');
INSERT INTO `tp_city` VALUES ('21', '6', '朔州市', '6');
INSERT INTO `tp_city` VALUES ('22', '7', '晋中市', '6');
INSERT INTO `tp_city` VALUES ('23', '8', '运城市', '6');
INSERT INTO `tp_city` VALUES ('24', '9', '忻州市', '6');
INSERT INTO `tp_city` VALUES ('25', '10', '临汾市', '6');
INSERT INTO `tp_city` VALUES ('26', '11', '吕梁市', '6');
INSERT INTO `tp_city` VALUES ('27', '1', '台北市', '7');
INSERT INTO `tp_city` VALUES ('28', '2', '高雄市', '7');
INSERT INTO `tp_city` VALUES ('29', '3', '基隆市', '7');
INSERT INTO `tp_city` VALUES ('30', '4', '台中市', '7');
INSERT INTO `tp_city` VALUES ('31', '5', '台南市', '7');
INSERT INTO `tp_city` VALUES ('32', '6', '新竹市', '7');
INSERT INTO `tp_city` VALUES ('33', '7', '嘉义市', '7');
INSERT INTO `tp_city` VALUES ('34', '8', '台北县', '7');
INSERT INTO `tp_city` VALUES ('35', '9', '宜兰县', '7');
INSERT INTO `tp_city` VALUES ('36', '10', '桃园县', '7');
INSERT INTO `tp_city` VALUES ('37', '11', '新竹县', '7');
INSERT INTO `tp_city` VALUES ('38', '12', '苗栗县', '7');
INSERT INTO `tp_city` VALUES ('39', '13', '台中县', '7');
INSERT INTO `tp_city` VALUES ('40', '14', '彰化县', '7');
INSERT INTO `tp_city` VALUES ('41', '15', '南投县', '7');
INSERT INTO `tp_city` VALUES ('42', '16', '云林县', '7');
INSERT INTO `tp_city` VALUES ('43', '17', '嘉义县', '7');
INSERT INTO `tp_city` VALUES ('44', '18', '台南县', '7');
INSERT INTO `tp_city` VALUES ('45', '19', '高雄县', '7');
INSERT INTO `tp_city` VALUES ('46', '20', '屏东县', '7');
INSERT INTO `tp_city` VALUES ('47', '21', '澎湖县', '7');
INSERT INTO `tp_city` VALUES ('48', '22', '台东县', '7');
INSERT INTO `tp_city` VALUES ('49', '23', '花莲县', '7');
INSERT INTO `tp_city` VALUES ('50', '1', '沈阳市', '8');
INSERT INTO `tp_city` VALUES ('51', '2', '大连市', '8');
INSERT INTO `tp_city` VALUES ('52', '3', '鞍山市', '8');
INSERT INTO `tp_city` VALUES ('53', '4', '抚顺市', '8');
INSERT INTO `tp_city` VALUES ('54', '5', '本溪市', '8');
INSERT INTO `tp_city` VALUES ('55', '6', '丹东市', '8');
INSERT INTO `tp_city` VALUES ('56', '7', '锦州市', '8');
INSERT INTO `tp_city` VALUES ('57', '8', '营口市', '8');
INSERT INTO `tp_city` VALUES ('58', '9', '阜新市', '8');
INSERT INTO `tp_city` VALUES ('59', '10', '辽阳市', '8');
INSERT INTO `tp_city` VALUES ('60', '11', '盘锦市', '8');
INSERT INTO `tp_city` VALUES ('61', '12', '铁岭市', '8');
INSERT INTO `tp_city` VALUES ('62', '13', '朝阳市', '8');
INSERT INTO `tp_city` VALUES ('63', '14', '葫芦岛市', '8');
INSERT INTO `tp_city` VALUES ('64', '1', '长春市', '9');
INSERT INTO `tp_city` VALUES ('65', '2', '吉林市', '9');
INSERT INTO `tp_city` VALUES ('66', '3', '四平市', '9');
INSERT INTO `tp_city` VALUES ('67', '4', '辽源市', '9');
INSERT INTO `tp_city` VALUES ('68', '5', '通化市', '9');
INSERT INTO `tp_city` VALUES ('69', '6', '白山市', '9');
INSERT INTO `tp_city` VALUES ('70', '7', '松原市', '9');
INSERT INTO `tp_city` VALUES ('71', '8', '白城市', '9');
INSERT INTO `tp_city` VALUES ('72', '9', '延边朝鲜族自治州', '9');
INSERT INTO `tp_city` VALUES ('73', '1', '哈尔滨市', '10');
INSERT INTO `tp_city` VALUES ('74', '2', '齐齐哈尔市', '10');
INSERT INTO `tp_city` VALUES ('75', '3', '鹤 岗 市', '10');
INSERT INTO `tp_city` VALUES ('76', '4', '双鸭山市', '10');
INSERT INTO `tp_city` VALUES ('77', '5', '鸡 西 市', '10');
INSERT INTO `tp_city` VALUES ('78', '6', '大 庆 市', '10');
INSERT INTO `tp_city` VALUES ('79', '7', '伊 春 市', '10');
INSERT INTO `tp_city` VALUES ('80', '8', '牡丹江市', '10');
INSERT INTO `tp_city` VALUES ('81', '9', '佳木斯市', '10');
INSERT INTO `tp_city` VALUES ('82', '10', '七台河市', '10');
INSERT INTO `tp_city` VALUES ('83', '11', '黑 河 市', '10');
INSERT INTO `tp_city` VALUES ('84', '12', '绥 化 市', '10');
INSERT INTO `tp_city` VALUES ('85', '13', '大兴安岭地区', '10');
INSERT INTO `tp_city` VALUES ('86', '1', '南京市', '11');
INSERT INTO `tp_city` VALUES ('87', '2', '无锡市', '11');
INSERT INTO `tp_city` VALUES ('88', '3', '徐州市', '11');
INSERT INTO `tp_city` VALUES ('89', '4', '常州市', '11');
INSERT INTO `tp_city` VALUES ('90', '5', '苏州市', '11');
INSERT INTO `tp_city` VALUES ('91', '6', '南通市', '11');
INSERT INTO `tp_city` VALUES ('92', '7', '连云港市', '11');
INSERT INTO `tp_city` VALUES ('93', '8', '淮安市', '11');
INSERT INTO `tp_city` VALUES ('94', '9', '盐城市', '11');
INSERT INTO `tp_city` VALUES ('95', '10', '扬州市', '11');
INSERT INTO `tp_city` VALUES ('96', '11', '镇江市', '11');
INSERT INTO `tp_city` VALUES ('97', '12', '泰州市', '11');
INSERT INTO `tp_city` VALUES ('98', '13', '宿迁市', '11');
INSERT INTO `tp_city` VALUES ('99', '1', '杭州市', '12');
INSERT INTO `tp_city` VALUES ('100', '2', '宁波市', '12');
INSERT INTO `tp_city` VALUES ('101', '3', '温州市', '12');
INSERT INTO `tp_city` VALUES ('102', '4', '嘉兴市', '12');
INSERT INTO `tp_city` VALUES ('103', '5', '湖州市', '12');
INSERT INTO `tp_city` VALUES ('104', '6', '绍兴市', '12');
INSERT INTO `tp_city` VALUES ('105', '7', '金华市', '12');
INSERT INTO `tp_city` VALUES ('106', '8', '衢州市', '12');
INSERT INTO `tp_city` VALUES ('107', '9', '舟山市', '12');
INSERT INTO `tp_city` VALUES ('108', '10', '台州市', '12');
INSERT INTO `tp_city` VALUES ('109', '11', '丽水市', '12');
INSERT INTO `tp_city` VALUES ('110', '1', '合肥市', '13');
INSERT INTO `tp_city` VALUES ('111', '2', '芜湖市', '13');
INSERT INTO `tp_city` VALUES ('112', '3', '蚌埠市', '13');
INSERT INTO `tp_city` VALUES ('113', '4', '淮南市', '13');
INSERT INTO `tp_city` VALUES ('114', '5', '马鞍山市', '13');
INSERT INTO `tp_city` VALUES ('115', '6', '淮北市', '13');
INSERT INTO `tp_city` VALUES ('116', '7', '铜陵市', '13');
INSERT INTO `tp_city` VALUES ('117', '8', '安庆市', '13');
INSERT INTO `tp_city` VALUES ('118', '9', '黄山市', '13');
INSERT INTO `tp_city` VALUES ('119', '10', '滁州市', '13');
INSERT INTO `tp_city` VALUES ('120', '11', '阜阳市', '13');
INSERT INTO `tp_city` VALUES ('121', '12', '宿州市', '13');
INSERT INTO `tp_city` VALUES ('122', '13', '巢湖市', '13');
INSERT INTO `tp_city` VALUES ('123', '14', '六安市', '13');
INSERT INTO `tp_city` VALUES ('124', '15', '亳州市', '13');
INSERT INTO `tp_city` VALUES ('125', '16', '池州市', '13');
INSERT INTO `tp_city` VALUES ('126', '17', '宣城市', '13');
INSERT INTO `tp_city` VALUES ('127', '1', '福州市', '14');
INSERT INTO `tp_city` VALUES ('128', '2', '厦门市', '14');
INSERT INTO `tp_city` VALUES ('129', '3', '莆田市', '14');
INSERT INTO `tp_city` VALUES ('130', '4', '三明市', '14');
INSERT INTO `tp_city` VALUES ('131', '5', '泉州市', '14');
INSERT INTO `tp_city` VALUES ('132', '6', '漳州市', '14');
INSERT INTO `tp_city` VALUES ('133', '7', '南平市', '14');
INSERT INTO `tp_city` VALUES ('134', '8', '龙岩市', '14');
INSERT INTO `tp_city` VALUES ('135', '9', '宁德市', '14');
INSERT INTO `tp_city` VALUES ('136', '1', '南昌市', '15');
INSERT INTO `tp_city` VALUES ('137', '2', '景德镇市', '15');
INSERT INTO `tp_city` VALUES ('138', '3', '萍乡市', '15');
INSERT INTO `tp_city` VALUES ('139', '4', '九江市', '15');
INSERT INTO `tp_city` VALUES ('140', '5', '新余市', '15');
INSERT INTO `tp_city` VALUES ('141', '6', '鹰潭市', '15');
INSERT INTO `tp_city` VALUES ('142', '7', '赣州市', '15');
INSERT INTO `tp_city` VALUES ('143', '8', '吉安市', '15');
INSERT INTO `tp_city` VALUES ('144', '9', '宜春市', '15');
INSERT INTO `tp_city` VALUES ('145', '10', '抚州市', '15');
INSERT INTO `tp_city` VALUES ('146', '11', '上饶市', '15');
INSERT INTO `tp_city` VALUES ('147', '1', '济南市', '16');
INSERT INTO `tp_city` VALUES ('148', '2', '青岛市', '16');
INSERT INTO `tp_city` VALUES ('149', '3', '淄博市', '16');
INSERT INTO `tp_city` VALUES ('150', '4', '枣庄市', '16');
INSERT INTO `tp_city` VALUES ('151', '5', '东营市', '16');
INSERT INTO `tp_city` VALUES ('152', '6', '烟台市', '16');
INSERT INTO `tp_city` VALUES ('153', '7', '潍坊市', '16');
INSERT INTO `tp_city` VALUES ('154', '8', '济宁市', '16');
INSERT INTO `tp_city` VALUES ('155', '9', '泰安市', '16');
INSERT INTO `tp_city` VALUES ('156', '10', '威海市', '16');
INSERT INTO `tp_city` VALUES ('157', '11', '日照市', '16');
INSERT INTO `tp_city` VALUES ('158', '12', '莱芜市', '16');
INSERT INTO `tp_city` VALUES ('159', '13', '临沂市', '16');
INSERT INTO `tp_city` VALUES ('160', '14', '德州市', '16');
INSERT INTO `tp_city` VALUES ('161', '15', '聊城市', '16');
INSERT INTO `tp_city` VALUES ('162', '16', '滨州市', '16');
INSERT INTO `tp_city` VALUES ('163', '17', '菏泽市', '16');
INSERT INTO `tp_city` VALUES ('164', '1', '郑州市', '17');
INSERT INTO `tp_city` VALUES ('165', '2', '开封市', '17');
INSERT INTO `tp_city` VALUES ('166', '3', '洛阳市', '17');
INSERT INTO `tp_city` VALUES ('167', '4', '平顶山市', '17');
INSERT INTO `tp_city` VALUES ('168', '5', '安阳市', '17');
INSERT INTO `tp_city` VALUES ('169', '6', '鹤壁市', '17');
INSERT INTO `tp_city` VALUES ('170', '7', '新乡市', '17');
INSERT INTO `tp_city` VALUES ('171', '8', '焦作市', '17');
INSERT INTO `tp_city` VALUES ('172', '9', '濮阳市', '17');
INSERT INTO `tp_city` VALUES ('173', '10', '许昌市', '17');
INSERT INTO `tp_city` VALUES ('174', '11', '漯河市', '17');
INSERT INTO `tp_city` VALUES ('175', '12', '三门峡市', '17');
INSERT INTO `tp_city` VALUES ('176', '13', '南阳市', '17');
INSERT INTO `tp_city` VALUES ('177', '14', '商丘市', '17');
INSERT INTO `tp_city` VALUES ('178', '15', '信阳市', '17');
INSERT INTO `tp_city` VALUES ('179', '16', '周口市', '17');
INSERT INTO `tp_city` VALUES ('180', '17', '驻马店市', '17');
INSERT INTO `tp_city` VALUES ('181', '18', '济源市', '17');
INSERT INTO `tp_city` VALUES ('182', '1', '武汉市', '18');
INSERT INTO `tp_city` VALUES ('183', '2', '黄石市', '18');
INSERT INTO `tp_city` VALUES ('184', '3', '十堰市', '18');
INSERT INTO `tp_city` VALUES ('185', '4', '荆州市', '18');
INSERT INTO `tp_city` VALUES ('186', '5', '宜昌市', '18');
INSERT INTO `tp_city` VALUES ('187', '6', '襄樊市', '18');
INSERT INTO `tp_city` VALUES ('188', '7', '鄂州市', '18');
INSERT INTO `tp_city` VALUES ('189', '8', '荆门市', '18');
INSERT INTO `tp_city` VALUES ('190', '9', '孝感市', '18');
INSERT INTO `tp_city` VALUES ('191', '10', '黄冈市', '18');
INSERT INTO `tp_city` VALUES ('192', '11', '咸宁市', '18');
INSERT INTO `tp_city` VALUES ('193', '12', '随州市', '18');
INSERT INTO `tp_city` VALUES ('194', '13', '仙桃市', '18');
INSERT INTO `tp_city` VALUES ('195', '14', '天门市', '18');
INSERT INTO `tp_city` VALUES ('196', '15', '潜江市', '18');
INSERT INTO `tp_city` VALUES ('197', '16', '神农架林区', '18');
INSERT INTO `tp_city` VALUES ('198', '17', '恩施土家族苗族自治州', '18');
INSERT INTO `tp_city` VALUES ('199', '1', '长沙市', '19');
INSERT INTO `tp_city` VALUES ('200', '2', '株洲市', '19');
INSERT INTO `tp_city` VALUES ('201', '3', '湘潭市', '19');
INSERT INTO `tp_city` VALUES ('202', '4', '衡阳市', '19');
INSERT INTO `tp_city` VALUES ('203', '5', '邵阳市', '19');
INSERT INTO `tp_city` VALUES ('204', '6', '岳阳市', '19');
INSERT INTO `tp_city` VALUES ('205', '7', '常德市', '19');
INSERT INTO `tp_city` VALUES ('206', '8', '张家界市', '19');
INSERT INTO `tp_city` VALUES ('207', '9', '益阳市', '19');
INSERT INTO `tp_city` VALUES ('208', '10', '郴州市', '19');
INSERT INTO `tp_city` VALUES ('209', '11', '永州市', '19');
INSERT INTO `tp_city` VALUES ('210', '12', '怀化市', '19');
INSERT INTO `tp_city` VALUES ('211', '13', '娄底市', '19');
INSERT INTO `tp_city` VALUES ('212', '14', '湘西土家族苗族自治州', '19');
INSERT INTO `tp_city` VALUES ('213', '1', '广州市', '20');
INSERT INTO `tp_city` VALUES ('214', '2', '深圳市', '20');
INSERT INTO `tp_city` VALUES ('215', '3', '珠海市', '20');
INSERT INTO `tp_city` VALUES ('216', '4', '汕头市', '20');
INSERT INTO `tp_city` VALUES ('217', '5', '韶关市', '20');
INSERT INTO `tp_city` VALUES ('218', '6', '佛山市', '20');
INSERT INTO `tp_city` VALUES ('219', '7', '江门市', '20');
INSERT INTO `tp_city` VALUES ('220', '8', '湛江市', '20');
INSERT INTO `tp_city` VALUES ('221', '9', '茂名市', '20');
INSERT INTO `tp_city` VALUES ('222', '10', '肇庆市', '20');
INSERT INTO `tp_city` VALUES ('223', '11', '惠州市', '20');
INSERT INTO `tp_city` VALUES ('224', '12', '梅州市', '20');
INSERT INTO `tp_city` VALUES ('225', '13', '汕尾市', '20');
INSERT INTO `tp_city` VALUES ('226', '14', '河源市', '20');
INSERT INTO `tp_city` VALUES ('227', '15', '阳江市', '20');
INSERT INTO `tp_city` VALUES ('228', '16', '清远市', '20');
INSERT INTO `tp_city` VALUES ('229', '17', '东莞市', '20');
INSERT INTO `tp_city` VALUES ('230', '18', '中山市', '20');
INSERT INTO `tp_city` VALUES ('231', '19', '潮州市', '20');
INSERT INTO `tp_city` VALUES ('232', '20', '揭阳市', '20');
INSERT INTO `tp_city` VALUES ('233', '21', '云浮市', '20');
INSERT INTO `tp_city` VALUES ('234', '1', '兰州市', '21');
INSERT INTO `tp_city` VALUES ('235', '2', '金昌市', '21');
INSERT INTO `tp_city` VALUES ('236', '3', '白银市', '21');
INSERT INTO `tp_city` VALUES ('237', '4', '天水市', '21');
INSERT INTO `tp_city` VALUES ('238', '5', '嘉峪关市', '21');
INSERT INTO `tp_city` VALUES ('239', '6', '武威市', '21');
INSERT INTO `tp_city` VALUES ('240', '7', '张掖市', '21');
INSERT INTO `tp_city` VALUES ('241', '8', '平凉市', '21');
INSERT INTO `tp_city` VALUES ('242', '9', '酒泉市', '21');
INSERT INTO `tp_city` VALUES ('243', '10', '庆阳市', '21');
INSERT INTO `tp_city` VALUES ('244', '11', '定西市', '21');
INSERT INTO `tp_city` VALUES ('245', '12', '陇南市', '21');
INSERT INTO `tp_city` VALUES ('246', '13', '临夏回族自治州', '21');
INSERT INTO `tp_city` VALUES ('247', '14', '甘南藏族自治州', '21');
INSERT INTO `tp_city` VALUES ('248', '1', '成都市', '22');
INSERT INTO `tp_city` VALUES ('249', '2', '自贡市', '22');
INSERT INTO `tp_city` VALUES ('250', '3', '攀枝花市', '22');
INSERT INTO `tp_city` VALUES ('251', '4', '泸州市', '22');
INSERT INTO `tp_city` VALUES ('252', '5', '德阳市', '22');
INSERT INTO `tp_city` VALUES ('253', '6', '绵阳市', '22');
INSERT INTO `tp_city` VALUES ('254', '7', '广元市', '22');
INSERT INTO `tp_city` VALUES ('255', '8', '遂宁市', '22');
INSERT INTO `tp_city` VALUES ('256', '9', '内江市', '22');
INSERT INTO `tp_city` VALUES ('257', '10', '乐山市', '22');
INSERT INTO `tp_city` VALUES ('258', '11', '南充市', '22');
INSERT INTO `tp_city` VALUES ('259', '12', '眉山市', '22');
INSERT INTO `tp_city` VALUES ('260', '13', '宜宾市', '22');
INSERT INTO `tp_city` VALUES ('261', '14', '广安市', '22');
INSERT INTO `tp_city` VALUES ('262', '15', '达州市', '22');
INSERT INTO `tp_city` VALUES ('263', '16', '雅安市', '22');
INSERT INTO `tp_city` VALUES ('264', '17', '巴中市', '22');
INSERT INTO `tp_city` VALUES ('265', '18', '资阳市', '22');
INSERT INTO `tp_city` VALUES ('266', '19', '阿坝藏族羌族自治州', '22');
INSERT INTO `tp_city` VALUES ('267', '20', '甘孜藏族自治州', '22');
INSERT INTO `tp_city` VALUES ('268', '21', '凉山彝族自治州', '22');
INSERT INTO `tp_city` VALUES ('269', '1', '贵阳市', '23');
INSERT INTO `tp_city` VALUES ('270', '2', '六盘水市', '23');
INSERT INTO `tp_city` VALUES ('271', '3', '遵义市', '23');
INSERT INTO `tp_city` VALUES ('272', '4', '安顺市', '23');
INSERT INTO `tp_city` VALUES ('273', '5', '铜仁地区', '23');
INSERT INTO `tp_city` VALUES ('274', '6', '毕节地区', '23');
INSERT INTO `tp_city` VALUES ('275', '7', '黔西南布依族苗族自治州', '23');
INSERT INTO `tp_city` VALUES ('276', '8', '黔东南苗族侗族自治州', '23');
INSERT INTO `tp_city` VALUES ('277', '9', '黔南布依族苗族自治州', '23');
INSERT INTO `tp_city` VALUES ('278', '1', '海口市', '24');
INSERT INTO `tp_city` VALUES ('279', '2', '三亚市', '24');
INSERT INTO `tp_city` VALUES ('280', '3', '五指山市', '24');
INSERT INTO `tp_city` VALUES ('281', '4', '琼海市', '24');
INSERT INTO `tp_city` VALUES ('282', '5', '儋州市', '24');
INSERT INTO `tp_city` VALUES ('283', '6', '文昌市', '24');
INSERT INTO `tp_city` VALUES ('284', '7', '万宁市', '24');
INSERT INTO `tp_city` VALUES ('285', '8', '东方市', '24');
INSERT INTO `tp_city` VALUES ('286', '9', '澄迈县', '24');
INSERT INTO `tp_city` VALUES ('287', '10', '定安县', '24');
INSERT INTO `tp_city` VALUES ('288', '11', '屯昌县', '24');
INSERT INTO `tp_city` VALUES ('289', '12', '临高县', '24');
INSERT INTO `tp_city` VALUES ('290', '13', '白沙黎族自治县', '24');
INSERT INTO `tp_city` VALUES ('291', '14', '昌江黎族自治县', '24');
INSERT INTO `tp_city` VALUES ('292', '15', '乐东黎族自治县', '24');
INSERT INTO `tp_city` VALUES ('293', '16', '陵水黎族自治县', '24');
INSERT INTO `tp_city` VALUES ('294', '17', '保亭黎族苗族自治县', '24');
INSERT INTO `tp_city` VALUES ('295', '18', '琼中黎族苗族自治县', '24');
INSERT INTO `tp_city` VALUES ('296', '1', '昆明市', '25');
INSERT INTO `tp_city` VALUES ('297', '2', '曲靖市', '25');
INSERT INTO `tp_city` VALUES ('298', '3', '玉溪市', '25');
INSERT INTO `tp_city` VALUES ('299', '4', '保山市', '25');
INSERT INTO `tp_city` VALUES ('300', '5', '昭通市', '25');
INSERT INTO `tp_city` VALUES ('301', '6', '丽江市', '25');
INSERT INTO `tp_city` VALUES ('302', '7', '思茅市', '25');
INSERT INTO `tp_city` VALUES ('303', '8', '临沧市', '25');
INSERT INTO `tp_city` VALUES ('304', '9', '文山壮族苗族自治州', '25');
INSERT INTO `tp_city` VALUES ('305', '10', '红河哈尼族彝族自治州', '25');
INSERT INTO `tp_city` VALUES ('306', '11', '西双版纳傣族自治州', '25');
INSERT INTO `tp_city` VALUES ('307', '12', '楚雄彝族自治州', '25');
INSERT INTO `tp_city` VALUES ('308', '13', '大理白族自治州', '25');
INSERT INTO `tp_city` VALUES ('309', '14', '德宏傣族景颇族自治州', '25');
INSERT INTO `tp_city` VALUES ('310', '15', '怒江傈傈族自治州', '25');
INSERT INTO `tp_city` VALUES ('311', '16', '迪庆藏族自治州', '25');
INSERT INTO `tp_city` VALUES ('312', '1', '西宁市', '26');
INSERT INTO `tp_city` VALUES ('313', '2', '海东地区', '26');
INSERT INTO `tp_city` VALUES ('314', '3', '海北藏族自治州', '26');
INSERT INTO `tp_city` VALUES ('315', '4', '黄南藏族自治州', '26');
INSERT INTO `tp_city` VALUES ('316', '5', '海南藏族自治州', '26');
INSERT INTO `tp_city` VALUES ('317', '6', '果洛藏族自治州', '26');
INSERT INTO `tp_city` VALUES ('318', '7', '玉树藏族自治州', '26');
INSERT INTO `tp_city` VALUES ('319', '8', '海西蒙古族藏族自治州', '26');
INSERT INTO `tp_city` VALUES ('320', '1', '西安市', '27');
INSERT INTO `tp_city` VALUES ('321', '2', '铜川市', '27');
INSERT INTO `tp_city` VALUES ('322', '3', '宝鸡市', '27');
INSERT INTO `tp_city` VALUES ('323', '4', '咸阳市', '27');
INSERT INTO `tp_city` VALUES ('324', '5', '渭南市', '27');
INSERT INTO `tp_city` VALUES ('325', '6', '延安市', '27');
INSERT INTO `tp_city` VALUES ('326', '7', '汉中市', '27');
INSERT INTO `tp_city` VALUES ('327', '8', '榆林市', '27');
INSERT INTO `tp_city` VALUES ('328', '9', '安康市', '27');
INSERT INTO `tp_city` VALUES ('329', '10', '商洛市', '27');
INSERT INTO `tp_city` VALUES ('330', '1', '南宁市', '28');
INSERT INTO `tp_city` VALUES ('331', '2', '柳州市', '28');
INSERT INTO `tp_city` VALUES ('332', '3', '桂林市', '28');
INSERT INTO `tp_city` VALUES ('333', '4', '梧州市', '28');
INSERT INTO `tp_city` VALUES ('334', '5', '北海市', '28');
INSERT INTO `tp_city` VALUES ('335', '6', '防城港市', '28');
INSERT INTO `tp_city` VALUES ('336', '7', '钦州市', '28');
INSERT INTO `tp_city` VALUES ('337', '8', '贵港市', '28');
INSERT INTO `tp_city` VALUES ('338', '9', '玉林市', '28');
INSERT INTO `tp_city` VALUES ('339', '10', '百色市', '28');
INSERT INTO `tp_city` VALUES ('340', '11', '贺州市', '28');
INSERT INTO `tp_city` VALUES ('341', '12', '河池市', '28');
INSERT INTO `tp_city` VALUES ('342', '13', '来宾市', '28');
INSERT INTO `tp_city` VALUES ('343', '14', '崇左市', '28');
INSERT INTO `tp_city` VALUES ('344', '1', '拉萨市', '29');
INSERT INTO `tp_city` VALUES ('345', '2', '那曲地区', '29');
INSERT INTO `tp_city` VALUES ('346', '3', '昌都地区', '29');
INSERT INTO `tp_city` VALUES ('347', '4', '山南地区', '29');
INSERT INTO `tp_city` VALUES ('348', '5', '日喀则地区', '29');
INSERT INTO `tp_city` VALUES ('349', '6', '阿里地区', '29');
INSERT INTO `tp_city` VALUES ('350', '7', '林芝地区', '29');
INSERT INTO `tp_city` VALUES ('351', '1', '银川市', '30');
INSERT INTO `tp_city` VALUES ('352', '2', '石嘴山市', '30');
INSERT INTO `tp_city` VALUES ('353', '3', '吴忠市', '30');
INSERT INTO `tp_city` VALUES ('354', '4', '固原市', '30');
INSERT INTO `tp_city` VALUES ('355', '5', '中卫市', '30');
INSERT INTO `tp_city` VALUES ('356', '1', '乌鲁木齐市', '31');
INSERT INTO `tp_city` VALUES ('357', '2', '克拉玛依市', '31');
INSERT INTO `tp_city` VALUES ('358', '3', '石河子市　', '31');
INSERT INTO `tp_city` VALUES ('359', '4', '阿拉尔市', '31');
INSERT INTO `tp_city` VALUES ('360', '5', '图木舒克市', '31');
INSERT INTO `tp_city` VALUES ('361', '6', '五家渠市', '31');
INSERT INTO `tp_city` VALUES ('362', '7', '吐鲁番市', '31');
INSERT INTO `tp_city` VALUES ('363', '8', '阿克苏市', '31');
INSERT INTO `tp_city` VALUES ('364', '9', '喀什市', '31');
INSERT INTO `tp_city` VALUES ('365', '10', '哈密市', '31');
INSERT INTO `tp_city` VALUES ('366', '11', '和田市', '31');
INSERT INTO `tp_city` VALUES ('367', '12', '阿图什市', '31');
INSERT INTO `tp_city` VALUES ('368', '13', '库尔勒市', '31');
INSERT INTO `tp_city` VALUES ('369', '14', '昌吉市　', '31');
INSERT INTO `tp_city` VALUES ('370', '15', '阜康市', '31');
INSERT INTO `tp_city` VALUES ('371', '16', '米泉市', '31');
INSERT INTO `tp_city` VALUES ('372', '17', '博乐市', '31');
INSERT INTO `tp_city` VALUES ('373', '18', '伊宁市', '31');
INSERT INTO `tp_city` VALUES ('374', '19', '奎屯市', '31');
INSERT INTO `tp_city` VALUES ('375', '20', '塔城市', '31');
INSERT INTO `tp_city` VALUES ('376', '21', '乌苏市', '31');
INSERT INTO `tp_city` VALUES ('377', '22', '阿勒泰市', '31');
INSERT INTO `tp_city` VALUES ('378', '1', '呼和浩特市', '32');
INSERT INTO `tp_city` VALUES ('379', '2', '包头市', '32');
INSERT INTO `tp_city` VALUES ('380', '3', '乌海市', '32');
INSERT INTO `tp_city` VALUES ('381', '4', '赤峰市', '32');
INSERT INTO `tp_city` VALUES ('382', '5', '通辽市', '32');
INSERT INTO `tp_city` VALUES ('383', '6', '鄂尔多斯市', '32');
INSERT INTO `tp_city` VALUES ('384', '7', '呼伦贝尔市', '32');
INSERT INTO `tp_city` VALUES ('385', '8', '巴彦淖尔市', '32');
INSERT INTO `tp_city` VALUES ('386', '9', '乌兰察布市', '32');
INSERT INTO `tp_city` VALUES ('387', '10', '锡林郭勒盟', '32');
INSERT INTO `tp_city` VALUES ('388', '11', '兴安盟', '32');
INSERT INTO `tp_city` VALUES ('389', '12', '阿拉善盟', '32');
INSERT INTO `tp_city` VALUES ('390', '1', '澳门特别行政区', '33');
INSERT INTO `tp_city` VALUES ('391', '1', '香港特别行政区', '34');

-- ----------------------------
-- Table structure for tp_click
-- ----------------------------
DROP TABLE IF EXISTS `tp_click`;
CREATE TABLE `tp_click` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `aid` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='点赞';

-- ----------------------------
-- Records of tp_click
-- ----------------------------
INSERT INTO `tp_click` VALUES ('6', '4', '4', 'w_group');
INSERT INTO `tp_click` VALUES ('7', '4', '2', 'w_group');
INSERT INTO `tp_click` VALUES ('11', '4', '20', 'w_personal');
INSERT INTO `tp_click` VALUES ('10', '4', '2', 'w_personal');
INSERT INTO `tp_click` VALUES ('12', '4', '15', 'w_product');
INSERT INTO `tp_click` VALUES ('13', '4', '1', 'w_personal');
INSERT INTO `tp_click` VALUES ('14', '4', '40', 'w_personal');
INSERT INTO `tp_click` VALUES ('15', '4', '31', 'w_openid');
INSERT INTO `tp_click` VALUES ('16', '4', '7', 'w_product');

-- ----------------------------
-- Table structure for tp_deposit_log
-- ----------------------------
DROP TABLE IF EXISTS `tp_deposit_log`;
CREATE TABLE `tp_deposit_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  `time` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `desc` varchar(20) NOT NULL,
  `current` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`,`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_deposit_log
-- ----------------------------
INSERT INTO `tp_deposit_log` VALUES ('1', '-1', '10.00', '1549270912', '4', '发布微信群', '0.31');
INSERT INTO `tp_deposit_log` VALUES ('2', '1', '0.02', '1549271119', '4', '签到', '0.33');
INSERT INTO `tp_deposit_log` VALUES ('7', '1', '0.05', '1549378082', '4', '签到', '0.38');
INSERT INTO `tp_deposit_log` VALUES ('8', '1', '0.05', '1549378491', '4', '签到', '0.48');
INSERT INTO `tp_deposit_log` VALUES ('9', '1', '0.02', '1549378518', '4', '签到', '0.50');
INSERT INTO `tp_deposit_log` VALUES ('10', '1', '0.02', '1549461569', '4', '签到', '0.52');
INSERT INTO `tp_deposit_log` VALUES ('11', '-1', '50.00', '1549532142', '4', '发布货源', '0.52');
INSERT INTO `tp_deposit_log` VALUES ('12', '-1', '8.00', '1549609827', '4', '发布公众号', '2.52');
INSERT INTO `tp_deposit_log` VALUES ('13', '-1', '8.00', '1549625747', '4', '发布公众号', '12.52');

-- ----------------------------
-- Table structure for tp_like
-- ----------------------------
DROP TABLE IF EXISTS `tp_like`;
CREATE TABLE `tp_like` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(20) NOT NULL,
  `art_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='点击表';

-- ----------------------------
-- Records of tp_like
-- ----------------------------
INSERT INTO `tp_like` VALUES ('3', '127.0.0.1', '29');
INSERT INTO `tp_like` VALUES ('4', '127.0.0.1', '31');

-- ----------------------------
-- Table structure for tp_link
-- ----------------------------
DROP TABLE IF EXISTS `tp_link`;
CREATE TABLE `tp_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  `title` varchar(50) NOT NULL,
  `link` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `thumb` varchar(255) NOT NULL,
  `desc` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_link
-- ----------------------------
INSERT INTO `tp_link` VALUES ('1', 'hotword', '美女微信', '/copenid/115', '1', '', '      ');
INSERT INTO `tp_link` VALUES ('2', 'hotart', '微信怎么抢红包', '/marticle/56', '1', '', '  ');

-- ----------------------------
-- Table structure for tp_login_log
-- ----------------------------
DROP TABLE IF EXISTS `tp_login_log`;
CREATE TABLE `tp_login_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `addr` varchar(255) NOT NULL,
  PRIMARY KEY (`id`,`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='管理员登陆记录';

-- ----------------------------
-- Records of tp_login_log
-- ----------------------------
INSERT INTO `tp_login_log` VALUES ('1', '1', '1546937479', '127.0.0.1', '本地环境');
INSERT INTO `tp_login_log` VALUES ('2', '1', '1546943189', '127.0.0.1', '本地环境');
INSERT INTO `tp_login_log` VALUES ('3', '1', '1547021307', '127.0.0.1', '本地环境');
INSERT INTO `tp_login_log` VALUES ('4', '5', '1547053899', '127.0.0.1', '本地环境');
INSERT INTO `tp_login_log` VALUES ('5', '1', '1547057879', '127.0.0.1', '本地环境');
INSERT INTO `tp_login_log` VALUES ('6', '1', '1547057932', '127.0.0.1', '本地环境');
INSERT INTO `tp_login_log` VALUES ('7', '1', '1547058073', '127.0.0.1', '本地环境');
INSERT INTO `tp_login_log` VALUES ('8', '1', '1547058246', '127.0.0.1', '本地环境');
INSERT INTO `tp_login_log` VALUES ('9', '1', '1547058459', '127.0.0.1', '本地环境');
INSERT INTO `tp_login_log` VALUES ('10', '1', '1547058648', '127.0.0.1', '本地环境');
INSERT INTO `tp_login_log` VALUES ('11', '1', '1547058671', '127.0.0.1', '本地环境');
INSERT INTO `tp_login_log` VALUES ('12', '1', '1547058719', '127.0.0.1', '本地环境');
INSERT INTO `tp_login_log` VALUES ('13', '1', '1547058908', '127.0.0.1', '本地环境');
INSERT INTO `tp_login_log` VALUES ('14', '1', '1547058928', '127.0.0.1', '本地环境');
INSERT INTO `tp_login_log` VALUES ('15', '1', '1547060955', '127.0.0.1', '本地环境');
INSERT INTO `tp_login_log` VALUES ('16', '1', '1547061285', '127.0.0.1', '本地环境');
INSERT INTO `tp_login_log` VALUES ('17', '5', '1547113303', '127.0.0.1', '本地环境');
INSERT INTO `tp_login_log` VALUES ('18', '5', '1547787754', '127.0.0.1', '本地环境');
INSERT INTO `tp_login_log` VALUES ('19', '5', '1547944253', '127.0.0.1', '本地环境');
INSERT INTO `tp_login_log` VALUES ('20', '5', '1547945180', '127.0.0.1', '本地环境');
INSERT INTO `tp_login_log` VALUES ('21', '1', '1547945235', '127.0.0.1', '本地环境');
INSERT INTO `tp_login_log` VALUES ('22', '1', '1547945896', '127.0.0.1', '本地环境');
INSERT INTO `tp_login_log` VALUES ('23', '1', '1547946166', '127.0.0.1', '本地环境');
INSERT INTO `tp_login_log` VALUES ('24', '1', '1548076829', '127.0.0.1', '本地环境');
INSERT INTO `tp_login_log` VALUES ('25', '1', '1548122710', '127.0.0.1', '本地环境');
INSERT INTO `tp_login_log` VALUES ('26', '5', '1548125704', '127.0.0.1', '本地环境');

-- ----------------------------
-- Table structure for tp_message
-- ----------------------------
DROP TABLE IF EXISTS `tp_message`;
CREATE TABLE `tp_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '姓名',
  `contact` varchar(50) NOT NULL COMMENT '联系方式',
  `message` varchar(500) NOT NULL COMMENT '留言',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `add_time` int(11) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL COMMENT '称谓',
  `mobile` varchar(12) DEFAULT NULL,
  `fix` varchar(12) DEFAULT NULL,
  `topic` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='留言表';

-- ----------------------------
-- Records of tp_message
-- ----------------------------
INSERT INTO `tp_message` VALUES ('8', '张国荣', '', '这是一个竞争异常激烈的名单，精挑细选了2017年1月到12月之间发布的最佳开源Python库、工具和应用程序。Mybridge AI 通过考量受欢迎程度、参与度和新近度等指标来评估这些参选项目的质量。这些项目在Github上得星的数量平均为3,707个', '0', '1552462066', '先生', '17608428675', '3243424', '没有主题');
INSERT INTO `tp_message` VALUES ('9', '字符分', '', '这是一个竞争异常激烈的名单，精挑细选了2017年1月到12月之间发布的最佳开源Python库、工具和应用程序。Mybridge AI 通过考量受欢迎程度、参与度和新近度等指标来评估这些参选项目的质量。这些项目在Github上得星的数量平均为3,707个', '0', '1552462113', '先生', '18674357966', '46546534', '的归属感');

-- ----------------------------
-- Table structure for tp_provincial
-- ----------------------------
DROP TABLE IF EXISTS `tp_provincial`;
CREATE TABLE `tp_provincial` (
  `id` int(11) NOT NULL DEFAULT '0',
  `provincial` varchar(50) DEFAULT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='省';

-- ----------------------------
-- Records of tp_provincial
-- ----------------------------
INSERT INTO `tp_provincial` VALUES ('1', '北京市', '0');
INSERT INTO `tp_provincial` VALUES ('2', '天津市', '0');
INSERT INTO `tp_provincial` VALUES ('3', '上海市', '0');
INSERT INTO `tp_provincial` VALUES ('4', '重庆市', '0');
INSERT INTO `tp_provincial` VALUES ('5', '河北省', '0');
INSERT INTO `tp_provincial` VALUES ('6', '山西省', '0');
INSERT INTO `tp_provincial` VALUES ('7', '台湾省', '0');
INSERT INTO `tp_provincial` VALUES ('8', '辽宁省', '0');
INSERT INTO `tp_provincial` VALUES ('9', '吉林省', '0');
INSERT INTO `tp_provincial` VALUES ('10', '黑龙江省', '0');
INSERT INTO `tp_provincial` VALUES ('11', '江苏省', '0');
INSERT INTO `tp_provincial` VALUES ('12', '浙江省', '0');
INSERT INTO `tp_provincial` VALUES ('13', '安徽省', '0');
INSERT INTO `tp_provincial` VALUES ('14', '福建省', '0');
INSERT INTO `tp_provincial` VALUES ('15', '江西省', '0');
INSERT INTO `tp_provincial` VALUES ('16', '山东省', '0');
INSERT INTO `tp_provincial` VALUES ('17', '河南省', '0');
INSERT INTO `tp_provincial` VALUES ('18', '湖北省', '0');
INSERT INTO `tp_provincial` VALUES ('19', '湖南省', '0');
INSERT INTO `tp_provincial` VALUES ('20', '广东省', '0');
INSERT INTO `tp_provincial` VALUES ('21', '甘肃省', '0');
INSERT INTO `tp_provincial` VALUES ('22', '四川省', '0');
INSERT INTO `tp_provincial` VALUES ('23', '贵州省', '0');
INSERT INTO `tp_provincial` VALUES ('24', '海南省', '0');
INSERT INTO `tp_provincial` VALUES ('25', '云南省', '0');
INSERT INTO `tp_provincial` VALUES ('26', '青海省', '0');
INSERT INTO `tp_provincial` VALUES ('27', '陕西省', '0');
INSERT INTO `tp_provincial` VALUES ('28', '广西壮族自治区', '0');
INSERT INTO `tp_provincial` VALUES ('29', '西藏自治区', '0');
INSERT INTO `tp_provincial` VALUES ('30', '宁夏回族自治区', '0');
INSERT INTO `tp_provincial` VALUES ('31', '新疆维吾尔自治区', '0');
INSERT INTO `tp_provincial` VALUES ('32', '内蒙古自治区', '0');
INSERT INTO `tp_provincial` VALUES ('33', '澳门特别行政区', '0');
INSERT INTO `tp_provincial` VALUES ('34', '香港特别行政区', '0');

-- ----------------------------
-- Table structure for tp_signin
-- ----------------------------
DROP TABLE IF EXISTS `tp_signin`;
CREATE TABLE `tp_signin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='签到表';

-- ----------------------------
-- Records of tp_signin
-- ----------------------------
INSERT INTO `tp_signin` VALUES ('5', '4', '1549085512', '0.03');
INSERT INTO `tp_signin` VALUES ('12', '4', '1549271119', '0.02');
INSERT INTO `tp_signin` VALUES ('19', '4', '1549378518', '0.02');
INSERT INTO `tp_signin` VALUES ('20', '4', '1549461569', '0.02');

-- ----------------------------
-- Table structure for tp_system
-- ----------------------------
DROP TABLE IF EXISTS `tp_system`;
CREATE TABLE `tp_system` (
  `id` mediumint(4) NOT NULL AUTO_INCREMENT,
  `cname` varchar(50) NOT NULL COMMENT '中文名字',
  `ename` varchar(50) NOT NULL COMMENT '英文名字',
  `value` mediumtext NOT NULL COMMENT '值',
  `values` varchar(255) NOT NULL COMMENT '多选值',
  `type` tinyint(1) NOT NULL COMMENT '表单类型,1文本框 2下拉框,3复选框,4开关复选框,5单选框,6文本框,7附件',
  `isdelete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `status` tinyint(1) NOT NULL COMMENT '妆台',
  `type_id` tinyint(2) NOT NULL COMMENT '所属模型',
  `time` int(11) NOT NULL COMMENT 'shijian',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COMMENT='系统配置';

-- ----------------------------
-- Records of tp_system
-- ----------------------------
INSERT INTO `tp_system` VALUES ('35', '公司描述', 'gsdesc', '北京上云科技发展有限公司，是专注于高端定制的北京网站设计公司<br/>         具有20年建站经验的北京网页设计公司，最早注重响应式网站建设的北京网站建设公司', '', '6', '0', '1', '1', '1555423601');
INSERT INTO `tp_system` VALUES ('6', 'logo', 'logo', '/uploads/system/20190506/d9061ebc29aa26fbb88837e3b4e64c2b.jpg', '', '7', '0', '1', '1', '1552052964');
INSERT INTO `tp_system` VALUES ('3', '网站名称', 'web_name', '集思科技', '', '1', '0', '1', '1', '1552053193');
INSERT INTO `tp_system` VALUES ('4', '网站描述', 'description', '1', '', '6', '0', '1', '1', '1552053250');
INSERT INTO `tp_system` VALUES ('5', '网站关键字', 'keywords', 'PCB抄板,PCB生产, 芯片解密, PCB Layout ,深圳PCB抄板，原理图反推，样机制作，PCB改板 BOM清单制作，样机调试，线路板抄板 单片机解密，加密芯片破解，', '', '6', '0', '1', '1', '1552053289');
INSERT INTO `tp_system` VALUES ('33', '电话', 'tell', '+86-0755-82956260', '', '1', '0', '1', '1', '1552710361');
INSERT INTO `tp_system` VALUES ('36', '地址', 'address', '广东省深圳市', '', '1', '0', '1', '1', '1555423637');
INSERT INTO `tp_system` VALUES ('37', '网站信息', 'webinfo', '©lvzheng.com 2018-2020 京ICP备17070330号-1 京ICP证161240号', ' ', '6', '0', '1', '1', '1555423705');
INSERT INTO `tp_system` VALUES ('38', '公司介绍', 'gsjs', ' 深圳集思科技有限公司是一家专业从PCB线路板集设计,芯片解密，抄板,PCB生产,SMT加工于一体的高科技企业,位于亚洲最大的电子产品及电子元器件采购中心华强北中心区。公司专业从事高速电路PCB Layout ,PCB抄板,多层高精密PCB板抄板、改板、样机调试工作.可为客户提供从IC解密(限合法)——抄板——原理图反推——BOM制作——PCBA生产直到成品的一站式服务', '', '6', '0', '1', '1', '1555423813');
INSERT INTO `tp_system` VALUES ('54', '核价描述1', 'hexinm1', '集思科技拥有专业的QC团队，为保证质量，不管是简单的单面板还是复杂的多层板，每个细节都要求必须通过公司流程层层审核，以确保逆向设计出的PCB生产资料零误差。', '', '6', '0', '1', '3', '1557390382');
INSERT INTO `tp_system` VALUES ('55', '核价图片1', 'hexinimg1', '/uploads/system/20190509/ee5087bc33ebe87a4d77f8fc1e130bfb.jpg', '', '7', '0', '1', '3', '1557390408');
INSERT INTO `tp_system` VALUES ('56', '核价图片2', 'hexinimg2', '/uploads/system/20190509/42e4327fc15aba5d3d33f51b94fe8dd4.jpg', '', '7', '0', '1', '3', '1557390408');
INSERT INTO `tp_system` VALUES ('57', '核价描述2', 'hexinm2', '集思科技拥有专业的QC团队，为保证质量，不管是简单的单面板还是复杂的多层板，都要求必须通过公司流程层层审核，以确保逆向设计出的PCB生产资料零误差。', '', '6', '0', '1', '3', '1557390382');
INSERT INTO `tp_system` VALUES ('58', '核价标题2', 'hexin2', '品质源于对细节的一丝不苟', '', '1', '0', '1', '3', '1557390356');
INSERT INTO `tp_system` VALUES ('59', '核价标题3', 'hexin3', '专业来自对流程的层层把控', '', '1', '0', '1', '3', '1557390356');
INSERT INTO `tp_system` VALUES ('60', '核价描述3', 'hexinm3', '集思科技拥有专业的QC团队，为保证质量，不管是简单的单面板还是复杂的多层板，都要求必须通过公司流程层层审核，以确保逆向设计出的PCB生产资料零误差。', '', '6', '0', '1', '3', '1557390382');
INSERT INTO `tp_system` VALUES ('61', '核价图片3', 'hexinimg3', '/uploads/system/20190509/e2321c1970fdb29f571db14c0fde52ad.jpg', '', '7', '0', '1', '3', '1557390408');
INSERT INTO `tp_system` VALUES ('52', '二维码', 'erwm', '/uploads/system/20190423\\f3ce381e084bcc3130928d14a57449e5.jpg', '', '7', '0', '1', '1', '1555979010');
INSERT INTO `tp_system` VALUES ('39', '公司介绍图片', 'gsjsimg', '/uploads/system/20190423\\53e7f6fc0bf8af694c4e42bc24991dcd.jpg', '', '7', '0', '1', '1', '1555423834');
INSERT INTO `tp_system` VALUES ('40', '手机号码', 'phone', '136-6228-6682', '', '1', '0', '1', '1', '1555424055');
INSERT INTO `tp_system` VALUES ('41', '栏目描述', 'service_desc', '我们信仰并一直坚持，为客户打造真正有价值的互联网平台', '', '1', '0', '1', '2', '1555424205');
INSERT INTO `tp_system` VALUES ('50', '联系', 'contact', '                    <p>业务电话： 0755-82956260 手机：13662286682  </p>                      <p>E-mail: dai@pcbxy.com QQ: 2052268 微信：13662286682</p>', '', '6', '0', '1', '1', '1555950489');
INSERT INTO `tp_system` VALUES ('53', '核价标题1', 'hexin1', '1:1还原 100%成功', '', '1', '0', '1', '3', '1557390356');
INSERT INTO `tp_system` VALUES ('51', '备案号', 'beian', '粤ICP备14031015号', '', '1', '0', '1', '1', '1555950545');
INSERT INTO `tp_system` VALUES ('62', '联系人电话', 'contact_mobile', '17608536954', '', '1', '0', '1', '1', '1560266301');

-- ----------------------------
-- Table structure for tp_system_type
-- ----------------------------
DROP TABLE IF EXISTS `tp_system_type`;
CREATE TABLE `tp_system_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(50) NOT NULL COMMENT '类型名字',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `sort` mediumint(9) NOT NULL DEFAULT '50',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='系统类型';

-- ----------------------------
-- Records of tp_system_type
-- ----------------------------
INSERT INTO `tp_system_type` VALUES ('1', '系统', '1', '50');
INSERT INTO `tp_system_type` VALUES ('3', '首页', '1', '50');

-- ----------------------------
-- Table structure for tp_tag
-- ----------------------------
DROP TABLE IF EXISTS `tp_tag`;
CREATE TABLE `tp_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_tag
-- ----------------------------
INSERT INTO `tp_tag` VALUES ('1', '阳光2', '1');
INSERT INTO `tp_tag` VALUES ('2', '太阳', '1');
INSERT INTO `tp_tag` VALUES ('3', '下雨', '1');
INSERT INTO `tp_tag` VALUES ('4', '阴云', '1');
INSERT INTO `tp_tag` VALUES ('5', '清晨', '1');

-- ----------------------------
-- Table structure for tp_user
-- ----------------------------
DROP TABLE IF EXISTS `tp_user`;
CREATE TABLE `tp_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(36) NOT NULL,
  `thumb` varchar(255) DEFAULT '/uploads/default.png',
  `reg_time` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0',
  `email` varchar(255) DEFAULT NULL,
  `truename` varchar(20) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `qq` varchar(12) DEFAULT NULL,
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of tp_user
-- ----------------------------
INSERT INTO `tp_user` VALUES ('4', 'yuanlu', 'e10adc3949ba59abbe56e057f20f883e', '/uploads/cate/20190201\\dbc18e0de8083afc98bfa46df2733acd.jpg', '1548940965', '1', '1549088785@qq.com', '张国荣', '17608428674', '1549088789', '12.52');
INSERT INTO `tp_user` VALUES ('5', 'yuanlus', 'e10adc3949ba59abbe56e057f20f883e', '/uploads/icon_avatar.png', '1548941258', '1', '1549088785@qq.com', null, null, null, '0.00');

-- ----------------------------
-- Table structure for tp_visit_count
-- ----------------------------
DROP TABLE IF EXISTS `tp_visit_count`;
CREATE TABLE `tp_visit_count` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `count` int(11) NOT NULL DEFAULT '0',
  `pc` int(11) NOT NULL DEFAULT '0',
  `mobile` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_visit_count
-- ----------------------------
INSERT INTO `tp_visit_count` VALUES ('1', '216', '213', '102', '1548093926');
INSERT INTO `tp_visit_count` VALUES ('2', '600', '300', '300', '1548000000');
INSERT INTO `tp_visit_count` VALUES ('3', '700', '400', '300', '1547913600');
INSERT INTO `tp_visit_count` VALUES ('4', '500', '200', '300', '1547827200');
INSERT INTO `tp_visit_count` VALUES ('5', '900', '800', '100', '1547740800');
INSERT INTO `tp_visit_count` VALUES ('6', '450', '250', '200', '1547654400');
INSERT INTO `tp_visit_count` VALUES ('7', '1200', '1000', '200', '1547568000');
INSERT INTO `tp_visit_count` VALUES ('8', '2', '2', '0', '1548259899');
INSERT INTO `tp_visit_count` VALUES ('9', '1', '1', '0', '1548384884');
INSERT INTO `tp_visit_count` VALUES ('10', '1', '1', '0', '1548433551');
INSERT INTO `tp_visit_count` VALUES ('11', '2', '2', '0', '1548567309');
INSERT INTO `tp_visit_count` VALUES ('12', '3', '3', '0', '1548773845');
INSERT INTO `tp_visit_count` VALUES ('13', '4', '4', '0', '1548788642');
INSERT INTO `tp_visit_count` VALUES ('14', '18', '18', '0', '1549000205');
INSERT INTO `tp_visit_count` VALUES ('15', '30', '30', '0', '1549037517');
INSERT INTO `tp_visit_count` VALUES ('16', '11', '11', '0', '1549249393');
INSERT INTO `tp_visit_count` VALUES ('17', '10', '10', '0', '1549300028');
INSERT INTO `tp_visit_count` VALUES ('18', '17', '17', '0', '1549419734');
INSERT INTO `tp_visit_count` VALUES ('19', '9', '9', '0', '1549469543');
INSERT INTO `tp_visit_count` VALUES ('20', '11', '11', '0', '1549608132');
INSERT INTO `tp_visit_count` VALUES ('21', '4', '4', '0', '1549642681');
INSERT INTO `tp_visit_count` VALUES ('22', '11', '10', '1', '1549802613');
INSERT INTO `tp_visit_count` VALUES ('23', '7', '7', '0', '1549815284');
INSERT INTO `tp_visit_count` VALUES ('24', '2', '2', '0', '1549947010');
INSERT INTO `tp_visit_count` VALUES ('25', '14', '14', '0', '1550049167');
INSERT INTO `tp_visit_count` VALUES ('26', '18', '18', '0', '1550074481');
INSERT INTO `tp_visit_count` VALUES ('27', '1', '1', '0', '1550164493');
INSERT INTO `tp_visit_count` VALUES ('28', '1', '1', '0', '1550423238');
INSERT INTO `tp_visit_count` VALUES ('29', '3', '3', '0', '1550585133');
INSERT INTO `tp_visit_count` VALUES ('30', '1', '1', '0', '1550595887');
INSERT INTO `tp_visit_count` VALUES ('31', '7', '7', '0', '1551345727');
INSERT INTO `tp_visit_count` VALUES ('32', '2', '2', '0', '1551370509');
INSERT INTO `tp_visit_count` VALUES ('33', '1', '1', '0', '1551519366');
INSERT INTO `tp_visit_count` VALUES ('34', '1', '1', '0', '1551599743');
INSERT INTO `tp_visit_count` VALUES ('35', '3', '3', '0', '1551848634');
INSERT INTO `tp_visit_count` VALUES ('36', '16', '5', '11', '1552031427');
INSERT INTO `tp_visit_count` VALUES ('37', '12', '7', '5', '1552382385');
INSERT INTO `tp_visit_count` VALUES ('38', '14', '8', '6', '1552451608');
INSERT INTO `tp_visit_count` VALUES ('39', '5', '2', '3', '1552709275');
INSERT INTO `tp_visit_count` VALUES ('40', '2', '1', '1', '1552830257');
INSERT INTO `tp_visit_count` VALUES ('41', '1', '1', '0', '1553600978');
INSERT INTO `tp_visit_count` VALUES ('42', '2', '2', '0', '1554987848');
INSERT INTO `tp_visit_count` VALUES ('43', '2', '2', '0', '1555326402');
INSERT INTO `tp_visit_count` VALUES ('44', '11', '9', '2', '1555344035');
INSERT INTO `tp_visit_count` VALUES ('45', '4', '3', '1', '1555500628');
INSERT INTO `tp_visit_count` VALUES ('46', '11', '10', '1', '1555937502');
INSERT INTO `tp_visit_count` VALUES ('47', '4', '4', '0', '1555949796');
INSERT INTO `tp_visit_count` VALUES ('48', '14', '14', '0', '1557043672');
INSERT INTO `tp_visit_count` VALUES ('49', '23', '23', '0', '1557113472');
INSERT INTO `tp_visit_count` VALUES ('50', '9', '9', '0', '1557167074');
INSERT INTO `tp_visit_count` VALUES ('51', '7', '6', '1', '1557255707');
INSERT INTO `tp_visit_count` VALUES ('52', '32', '22', '10', '1557346494');
INSERT INTO `tp_visit_count` VALUES ('53', '21', '21', '0', '1557420239');
INSERT INTO `tp_visit_count` VALUES ('54', '7', '7', '0', '1557530676');
INSERT INTO `tp_visit_count` VALUES ('55', '2', '2', '0', '1557663072');
INSERT INTO `tp_visit_count` VALUES ('56', '8', '8', '0', '1557689732');
INSERT INTO `tp_visit_count` VALUES ('57', '11', '8', '3', '1557796957');
INSERT INTO `tp_visit_count` VALUES ('58', '11', '8', '3', '1557849745');
INSERT INTO `tp_visit_count` VALUES ('59', '7', '7', '0', '1557946525');
INSERT INTO `tp_visit_count` VALUES ('60', '13', '12', '1', '1558043508');
INSERT INTO `tp_visit_count` VALUES ('61', '29', '27', '2', '1558111009');
INSERT INTO `tp_visit_count` VALUES ('62', '7', '6', '1', '1558199946');
INSERT INTO `tp_visit_count` VALUES ('63', '18', '17', '1', '1558289269');
INSERT INTO `tp_visit_count` VALUES ('64', '9', '8', '1', '1558368647');
INSERT INTO `tp_visit_count` VALUES ('65', '15', '15', '0', '1558462543');
INSERT INTO `tp_visit_count` VALUES ('66', '33', '31', '2', '1558541968');
INSERT INTO `tp_visit_count` VALUES ('67', '9', '8', '1', '1558629375');
INSERT INTO `tp_visit_count` VALUES ('68', '5', '5', '0', '1558722443');
INSERT INTO `tp_visit_count` VALUES ('69', '15', '15', '0', '1558810792');
INSERT INTO `tp_visit_count` VALUES ('70', '12', '7', '5', '1558900251');
INSERT INTO `tp_visit_count` VALUES ('71', '8', '8', '0', '1558983409');
INSERT INTO `tp_visit_count` VALUES ('72', '20', '20', '0', '1559065084');
INSERT INTO `tp_visit_count` VALUES ('73', '14', '13', '1', '1559161567');
INSERT INTO `tp_visit_count` VALUES ('74', '13', '8', '5', '1559250702');
INSERT INTO `tp_visit_count` VALUES ('75', '58', '51', '7', '1559321163');
INSERT INTO `tp_visit_count` VALUES ('76', '22', '22', '0', '1559420225');
INSERT INTO `tp_visit_count` VALUES ('77', '46', '46', '0', '1559495746');
INSERT INTO `tp_visit_count` VALUES ('78', '31', '28', '3', '1559583216');
INSERT INTO `tp_visit_count` VALUES ('79', '56', '53', '3', '1559671386');
INSERT INTO `tp_visit_count` VALUES ('80', '29', '26', '3', '1559750422');
INSERT INTO `tp_visit_count` VALUES ('81', '53', '50', '3', '1559838381');
INSERT INTO `tp_visit_count` VALUES ('82', '32', '32', '0', '1559931946');
INSERT INTO `tp_visit_count` VALUES ('83', '5', '5', '0', '1560010208');
INSERT INTO `tp_visit_count` VALUES ('84', '3', '3', '0', '1560265080');
INSERT INTO `tp_visit_count` VALUES ('85', '12', '12', '0', '1560269658');
INSERT INTO `tp_visit_count` VALUES ('86', '12', '4', '8', '1560518788');
INSERT INTO `tp_visit_count` VALUES ('87', '4', '4', '0', '1564660207');
INSERT INTO `tp_visit_count` VALUES ('88', '2', '2', '0', '1564751852');
INSERT INTO `tp_visit_count` VALUES ('89', '3', '3', '0', '1564896469');
INSERT INTO `tp_visit_count` VALUES ('90', '4', '4', '0', '1565014125');
INSERT INTO `tp_visit_count` VALUES ('91', '9', '9', '0', '1565091128');

-- ----------------------------
-- Table structure for tp_visit_log
-- ----------------------------
DROP TABLE IF EXISTS `tp_visit_log`;
CREATE TABLE `tp_visit_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `client` varchar(20) NOT NULL,
  `type` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1080 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_visit_log
-- ----------------------------
INSERT INTO `tp_visit_log` VALUES ('7', '127.0.0.1', '1548092913', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('8', '127.0.0.1', '1548092920', 'Firefox', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('9', '127.0.0.1', '1548093035', 'Edge', 'pc');
INSERT INTO `tp_visit_log` VALUES ('12', '127.0.0.1', '1548094024', 'Firefox', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('13', '127.0.0.1', '1548094105', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('14', '127.0.0.1', '1548094117', 'Edge', 'pc');
INSERT INTO `tp_visit_log` VALUES ('15', '127.0.0.1', '1548095388', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('16', '127.0.0.1', '1548096988', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('17', '127.0.0.1', '1548101735', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('18', '127.0.0.1', '1548101752', 'Firefox', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('19', '127.0.0.1', '1548101791', 'Edge', 'pc');
INSERT INTO `tp_visit_log` VALUES ('20', '127.0.0.1', '1548102854', 'Firefox', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('21', '127.0.0.1', '1548102874', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('22', '127.0.0.1', '1548106358', 'Edge', 'pc');
INSERT INTO `tp_visit_log` VALUES ('23', '127.0.0.1', '1548108647', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('24', '127.0.0.1', '1548109928', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('25', '127.0.0.1', '1548113986', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('26', '127.0.0.1', '1548122148', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('27', '127.0.0.1', '1548127045', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('28', '127.0.0.1', '1548162419', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('29', '127.0.0.1', '1548164860', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('30', '127.0.0.1', '1548259899', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('31', '127.0.0.1', '1548329889', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('32', '127.0.0.1', '1548384884', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('33', '127.0.0.1', '1548433551', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('34', '127.0.0.1', '1548567309', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('35', '127.0.0.1', '1548599513', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('36', '127.0.0.1', '1548773845', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('37', '127.0.0.1', '1548774823', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('38', '127.0.0.1', '1548775735', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('39', '127.0.0.1', '1548788642', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('40', '127.0.0.1', '1548850327', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('41', '127.0.0.1', '1548853495', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('42', '127.0.0.1', '1548856278', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('43', '127.0.0.1', '1549000205', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('44', '127.0.0.1', '1549012559', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('45', '127.0.0.1', '1549015633', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('46', '127.0.0.1', '1549016620', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('47', '127.0.0.1', '1549018201', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('48', '127.0.0.1', '1549020655', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('49', '127.0.0.1', '1549022724', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('50', '127.0.0.1', '1549023627', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('51', '127.0.0.1', '1549024861', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('52', '127.0.0.1', '1549025790', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('53', '127.0.0.1', '1549026915', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('54', '127.0.0.1', '1549028190', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('55', '127.0.0.1', '1549029183', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('56', '127.0.0.1', '1549030111', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('57', '127.0.0.1', '1549031142', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('58', '127.0.0.1', '1549034550', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('59', '127.0.0.1', '1549035659', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('60', '127.0.0.1', '1549036565', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('61', '127.0.0.1', '1549037517', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('62', '127.0.0.1', '1549038448', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('63', '127.0.0.1', '1549039432', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('64', '127.0.0.1', '1549040395', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('65', '127.0.0.1', '1549041566', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('66', '127.0.0.1', '1549043124', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('67', '127.0.0.1', '1549077368', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('68', '127.0.0.1', '1549080356', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('69', '127.0.0.1', '1549081296', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('70', '127.0.0.1', '1549085320', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('71', '127.0.0.1', '1549086401', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('72', '127.0.0.1', '1549088523', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('73', '127.0.0.1', '1549089526', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('74', '127.0.0.1', '1549090579', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('75', '127.0.0.1', '1549093162', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('76', '127.0.0.1', '1549094642', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('77', '127.0.0.1', '1549095587', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('78', '127.0.0.1', '1549096848', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('79', '127.0.0.1', '1549097748', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('80', '127.0.0.1', '1549099658', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('81', '127.0.0.1', '1549101415', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('82', '127.0.0.1', '1549102324', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('83', '127.0.0.1', '1549109314', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('84', '127.0.0.1', '1549110385', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('85', '127.0.0.1', '1549114789', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('86', '127.0.0.1', '1549118069', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('87', '127.0.0.1', '1549119175', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('88', '127.0.0.1', '1549120324', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('89', '127.0.0.1', '1549121306', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('90', '127.0.0.1', '1549122224', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('91', '127.0.0.1', '1549249393', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('92', '127.0.0.1', '1549250508', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('93', '127.0.0.1', '1549251661', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('94', '127.0.0.1', '1549268770', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('95', '127.0.0.1', '1549269677', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('96', '127.0.0.1', '1549270761', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('97', '127.0.0.1', '1549271877', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('98', '127.0.0.1', '1549273204', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('99', '127.0.0.1', '1549274109', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('100', '127.0.0.1', '1549275464', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('101', '127.0.0.1', '1549276703', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('102', '127.0.0.1', '1549300028', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('103', '127.0.0.1', '1549357855', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('104', '127.0.0.1', '1549359193', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('105', '127.0.0.1', '1549360405', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('106', '127.0.0.1', '1549377186', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('107', '127.0.0.1', '1549378487', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('108', '127.0.0.1', '1549379459', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('109', '127.0.0.1', '1549380399', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('110', '127.0.0.1', '1549381342', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('111', '127.0.0.1', '1549382333', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('112', '127.0.0.1', '1549419734', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('113', '127.0.0.1', '1549420693', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('114', '127.0.0.1', '1549421651', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('115', '127.0.0.1', '1549422752', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('116', '127.0.0.1', '1549423754', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('117', '127.0.0.1', '1549425152', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('118', '127.0.0.1', '1549426099', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('119', '127.0.0.1', '1549428533', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('120', '127.0.0.1', '1549441659', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('121', '127.0.0.1', '1549442900', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('122', '127.0.0.1', '1549443889', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('123', '127.0.0.1', '1549451960', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('124', '127.0.0.1', '1549461530', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('125', '127.0.0.1', '1549462851', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('126', '127.0.0.1', '1549463758', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('127', '127.0.0.1', '1549467621', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('128', '127.0.0.1', '1549468543', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('129', '127.0.0.1', '1549469543', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('130', '127.0.0.1', '1549470566', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('131', '127.0.0.1', '1549526919', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('132', '127.0.0.1', '1549527819', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('133', '127.0.0.1', '1549528779', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('134', '127.0.0.1', '1549530706', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('135', '127.0.0.1', '1549531824', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('136', '127.0.0.1', '1549532731', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('137', '127.0.0.1', '1549533654', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('138', '127.0.0.1', '1549608132', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('139', '127.0.0.1', '1549609228', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('140', '127.0.0.1', '1549610130', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('141', '127.0.0.1', '1549625218', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('142', '127.0.0.1', '1549626200', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('143', '127.0.0.1', '1549628755', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('144', '127.0.0.1', '1549629806', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('145', '127.0.0.1', '1549630726', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('146', '127.0.0.1', '1549631750', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('147', '127.0.0.1', '1549632726', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('148', '127.0.0.1', '1549633809', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('149', '127.0.0.1', '1549642681', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('150', '127.0.0.1', '1549644225', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('151', '127.0.0.1', '1549645199', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('152', '127.0.0.1', '1549646107', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('153', '127.0.0.1', '1549802613', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('154', '127.0.0.1', '1549802674', 'Firefox', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('155', '127.0.0.1', '1549804642', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('156', '127.0.0.1', '1549805572', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('157', '127.0.0.1', '1549806577', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('158', '127.0.0.1', '1549807540', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('159', '127.0.0.1', '1549810523', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('160', '127.0.0.1', '1549811466', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('161', '127.0.0.1', '1549812367', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('162', '127.0.0.1', '1549813329', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('163', '127.0.0.1', '1549814303', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('164', '127.0.0.1', '1549815284', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('165', '127.0.0.1', '1549816230', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('166', '127.0.0.1', '1549817130', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('167', '127.0.0.1', '1549858692', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('168', '127.0.0.1', '1549859661', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('169', '127.0.0.1', '1549860603', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('170', '127.0.0.1', '1549861936', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('171', '127.0.0.1', '1549947010', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('172', '127.0.0.1', '1549948368', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('173', '127.0.0.1', '1550049167', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('174', '127.0.0.1', '1550050986', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('175', '127.0.0.1', '1550053903', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('176', '127.0.0.1', '1550055027', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('177', '127.0.0.1', '1550056458', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('178', '127.0.0.1', '1550057450', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('179', '127.0.0.1', '1550058543', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('180', '127.0.0.1', '1550067804', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('181', '127.0.0.1', '1550068783', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('182', '127.0.0.1', '1550069775', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('183', '127.0.0.1', '1550070675', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('184', '127.0.0.1', '1550071605', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('185', '127.0.0.1', '1550072564', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('186', '127.0.0.1', '1550073511', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('187', '127.0.0.1', '1550074481', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('188', '127.0.0.1', '1550075602', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('189', '127.0.0.1', '1550076564', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('190', '127.0.0.1', '1550077701', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('191', '127.0.0.1', '1550078607', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('192', '127.0.0.1', '1550079520', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('193', '127.0.0.1', '1550081097', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('194', '127.0.0.1', '1550082045', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('195', '127.0.0.1', '1550083474', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('196', '127.0.0.1', '1550085133', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('197', '127.0.0.1', '1550086048', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('198', '127.0.0.1', '1550086951', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('199', '127.0.0.1', '1550115495', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('200', '127.0.0.1', '1550140107', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('201', '127.0.0.1', '1550141034', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('202', '127.0.0.1', '1550143736', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('203', '127.0.0.1', '1550144699', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('204', '127.0.0.1', '1550149726', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('205', '127.0.0.1', '1550164493', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('206', '127.0.0.1', '1550423238', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('207', '127.0.0.1', '1550585133', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('208', '127.0.0.1', '1550586928', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('209', '127.0.0.1', '1550588599', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('210', '127.0.0.1', '1550595887', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('211', '127.0.0.1', '1551345727', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('212', '127.0.0.1', '1551347612', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('213', '127.0.0.1', '1551362718', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('214', '127.0.0.1', '1551364928', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('215', '127.0.0.1', '1551366741', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('216', '127.0.0.1', '1551368106', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('217', '127.0.0.1', '1551369165', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('218', '127.0.0.1', '1551370509', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('219', '127.0.0.1', '1551371604', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('220', '127.0.0.1', '1551519366', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('221', '127.0.0.1', '1551599743', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('222', '127.0.0.1', '1551848634', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('223', '127.0.0.1', '1551877986', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('224', '127.0.0.1', '1551881854', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('225', '127.0.0.1', '1552031427', 'Firefox', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('226', '127.0.0.1', '1552032327', 'Firefox', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('227', '127.0.0.1', '1552032978', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('228', '127.0.0.1', '1552034111', 'Firefox', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('229', '127.0.0.1', '1552035875', 'Firefox', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('230', '127.0.0.1', '1552037559', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('231', '127.0.0.1', '1552039357', 'Firefox', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('232', '127.0.0.1', '1552040630', 'Firefox', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('233', '127.0.0.1', '1552051336', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('234', '127.0.0.1', '1552051443', 'Firefox', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('235', '127.0.0.1', '1552052395', 'Firefox', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('236', '127.0.0.1', '1552052966', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('237', '127.0.0.1', '1552053741', 'Firefox', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('238', '127.0.0.1', '1552054262', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('239', '127.0.0.1', '1552054722', 'Firefox', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('240', '127.0.0.1', '1552056260', 'Firefox', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('241', '127.0.0.1', '1552382385', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('242', '127.0.0.1', '1552383174', 'Firefox', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('243', '127.0.0.1', '1552383339', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('244', '127.0.0.1', '1552384166', 'Firefox', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('245', '127.0.0.1', '1552384388', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('246', '127.0.0.1', '1552385090', 'Firefox', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('247', '127.0.0.1', '1552385366', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('248', '127.0.0.1', '1552386000', 'Firefox', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('249', '127.0.0.1', '1552393757', 'Firefox', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('250', '127.0.0.1', '1552393785', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('251', '127.0.0.1', '1552401005', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('252', '127.0.0.1', '1552403723', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('253', '127.0.0.1', '1552451608', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('254', '127.0.0.1', '1552452548', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('255', '127.0.0.1', '1552453476', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('256', '127.0.0.1', '1552453601', 'Firefox', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('257', '127.0.0.1', '1552454462', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('258', '127.0.0.1', '1552455094', 'Firefox', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('259', '127.0.0.1', '1552459199', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('260', '127.0.0.1', '1552459209', 'Firefox', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('261', '127.0.0.1', '1552461336', 'Firefox', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('262', '127.0.0.1', '1552462237', 'Firefox', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('263', '127.0.0.1', '1552463183', 'Firefox', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('264', '127.0.0.1', '1552463417', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('265', '127.0.0.1', '1552464437', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('266', '127.0.0.1', '1552479557', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('267', '127.0.0.1', '1552709275', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('268', '127.0.0.1', '1552709289', 'Firefox', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('269', '127.0.0.1', '1552710374', 'Firefox', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('270', '127.0.0.1', '1552711636', 'Firefox', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('271', '127.0.0.1', '1552711716', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('272', '127.0.0.1', '1552830257', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('273', '127.0.0.1', '1552830272', 'Firefox', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('274', '127.0.0.1', '1553600978', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('275', '127.0.0.1', '1554987848', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('276', '127.0.0.1', '1554996348', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('277', '127.0.0.1', '1555326402', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('278', '127.0.0.1', '1555330895', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('279', '127.0.0.1', '1555344035', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('280', '127.0.0.1', '1555344518', 'Firefox', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('281', '127.0.0.1', '1555345030', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('282', '127.0.0.1', '1555345973', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('283', '127.0.0.1', '1555346341', 'Firefox', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('284', '127.0.0.1', '1555349475', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('285', '127.0.0.1', '1555419813', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('286', '127.0.0.1', '1555420720', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('287', '127.0.0.1', '1555421636', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('288', '127.0.0.1', '1555423138', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('289', '127.0.0.1', '1555424078', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('290', '127.0.0.1', '1555500628', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('291', '127.0.0.1', '1555500954', 'Firefox', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('292', '127.0.0.1', '1555501610', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('293', '127.0.0.1', '1555502887', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('294', '127.0.0.1', '1555937502', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('295', '127.0.0.1', '1555938480', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('296', '127.0.0.1', '1555939876', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('297', '127.0.0.1', '1555940785', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('298', '127.0.0.1', '1555941686', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('299', '127.0.0.1', '1555943926', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('300', '127.0.0.1', '1555944498', 'Firefox', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('301', '127.0.0.1', '1555944850', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('302', '127.0.0.1', '1555945761', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('303', '127.0.0.1', '1555946891', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('304', '127.0.0.1', '1555948528', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('305', '127.0.0.1', '1555949796', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('306', '127.0.0.1', '1555952443', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('307', '127.0.0.1', '1555977953', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('308', '127.0.0.1', '1555978909', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('309', '113.246.197.33', '1557043672', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('310', '183.17.66.4', '1557044789', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('311', '180.163.220.4', '1557044828', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('312', '180.163.220.3', '1557044830', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('313', '42.236.10.117', '1557044831', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('314', '42.236.10.114', '1557044844', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('315', '14.215.176.9', '1557044845', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('316', '14.215.176.12', '1557044865', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('317', '14.215.176.16', '1557044914', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('318', '14.215.176.149', '1557045048', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('319', '66.249.79.21', '1557050981', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('320', '66.249.79.23', '1557051054', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('321', '66.249.79.25', '1557051069', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('322', '183.17.66.4', '1557064369', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('323', '66.249.79.25', '1557113472', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('324', '171.13.14.6', '1557133194', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('325', '119.123.136.228', '1557141000', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('326', '42.236.10.84', '1557141006', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('327', '119.123.136.228', '1557143476', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('328', '42.236.10.125', '1557144073', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('329', '119.123.136.228', '1557144398', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('330', '42.236.10.93', '1557144406', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('331', '180.163.220.5', '1557144589', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('332', '42.236.10.75', '1557144589', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('333', '14.215.176.20', '1557150111', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('334', '221.13.12.152', '1557151226', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('335', '221.13.12.241', '1557151243', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('336', '221.213.75.50', '1557151308', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('337', '122.96.29.248', '1557151778', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('338', '221.13.12.79', '1557151899', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('339', '221.13.12.3', '1557152004', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('340', '221.213.75.136', '1557152019', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('341', '111.206.36.19', '1557152494', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('342', '111.206.36.137', '1557152562', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('343', '111.206.36.141', '1557152562', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('344', '14.215.176.10', '1557154565', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('345', '14.215.176.5', '1557154565', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('346', '66.249.79.23', '1557167074', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('347', '66.249.79.25', '1557167154', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('348', '157.55.39.124', '1557178815', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('349', '114.115.222.207', '1557182980', 'Edge', 'pc');
INSERT INTO `tp_visit_log` VALUES ('350', '222.74.205.241', '1557189275', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('351', '167.114.252.180', '1557205488', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('352', '58.248.202.24', '1557237713', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('353', '171.116.40.242', '1557237983', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('354', '124.205.145.242', '1557244728', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('355', '221.11.4.151', '1557255707', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('356', '123.138.72.201', '1557256670', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('357', '124.89.118.2', '1557256728', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('358', '124.89.90.62', '1557256778', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('359', '66.249.75.90', '1557272680', 'Chrome', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('360', '124.205.145.242', '1557305831', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('361', '36.110.199.41', '1557307233', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('362', '66.249.64.181', '1557346494', 'Chrome', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('363', '66.249.64.183', '1557346595', 'Chrome', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('364', '66.249.64.185', '1557349380', 'Chrome', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('365', '66.249.64.185', '1557351902', 'Chrome', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('366', '66.249.64.87', '1557355555', 'Chrome', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('367', '66.249.64.85', '1557356385', 'Chrome', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('368', '66.249.64.87', '1557357631', 'Chrome', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('369', '66.249.64.181', '1557365108', 'Chrome', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('370', '42.236.99.130', '1557368998', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('371', '66.249.64.181', '1557373000', 'Chrome', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('372', '66.249.64.183', '1557376739', 'Chrome', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('373', '183.17.65.16', '1557383622', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('374', '42.236.10.125', '1557383631', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('375', '180.163.220.4', '1557383839', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('376', '113.246.174.151', '1557388237', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('377', '183.17.65.16', '1557388559', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('378', '14.215.176.149', '1557388625', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('379', '42.236.10.114', '1557389132', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('380', '180.163.220.3', '1557389138', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('381', '180.163.220.68', '1557389157', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('382', '113.246.174.151', '1557389213', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('383', '183.17.65.16', '1557389478', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('384', '42.236.10.75', '1557390061', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('385', '180.163.220.3', '1557390063', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('386', '111.206.36.8', '1557390113', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('387', '111.206.36.138', '1557390113', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('388', '113.246.174.151', '1557390160', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('389', '14.215.176.18', '1557390165', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('390', '115.239.212.193', '1557390344', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('391', '183.17.65.16', '1557390943', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('392', '113.58.224.175', '1557410480', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('393', '66.249.64.185', '1557414263', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('394', '106.75.89.110', '1557420239', 'IE', 'pc');
INSERT INTO `tp_visit_log` VALUES ('395', '59.64.129.237', '1557446562', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('396', '61.164.47.194', '1557446986', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('397', '183.17.65.16', '1557471058', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('398', '42.236.10.84', '1557471072', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('399', '180.163.220.4', '1557471112', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('400', '180.163.220.5', '1557471118', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('401', '42.236.10.75', '1557471121', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('402', '42.236.10.93', '1557471122', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('403', '42.236.10.78', '1557471124', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('404', '42.236.10.114', '1557471133', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('405', '180.163.220.3', '1557471139', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('406', '42.236.10.117', '1557471140', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('407', '180.97.35.218', '1557471243', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('408', '180.97.35.217', '1557471244', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('409', '14.215.176.21', '1557471313', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('410', '14.215.176.20', '1557471313', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('411', '14.215.176.143', '1557474858', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('412', '202.108.211.151', '1557485778', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('413', '119.10.64.37', '1557486787', 'IE', 'pc');
INSERT INTO `tp_visit_log` VALUES ('414', '119.10.64.37', '1557487772', 'IE', 'pc');
INSERT INTO `tp_visit_log` VALUES ('415', '42.236.99.178', '1557530676', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('416', '42.236.10.113', '1557541203', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('417', '111.206.36.137', '1557568423', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('418', '111.206.36.9', '1557570208', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('419', '111.206.36.11', '1557570208', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('420', '111.206.36.138', '1557570224', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('421', '111.206.36.132', '1557570224', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('422', '121.29.80.76', '1557663072', 'IE', 'pc');
INSERT INTO `tp_visit_log` VALUES ('423', '66.249.66.143', '1557673460', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('424', '104.238.248.15', '1557689732', 'IE', 'pc');
INSERT INTO `tp_visit_log` VALUES ('425', '40.77.167.98', '1557701913', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('426', '42.236.102.23', '1557726190', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('427', '58.248.201.226', '1557756342', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('428', '124.235.138.95', '1557756525', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('429', '124.235.138.165', '1557756573', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('430', '124.235.138.135', '1557756885', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('431', '124.235.138.184', '1557756887', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('432', '42.236.99.86', '1557796957', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('433', '167.114.209.28', '1557815164', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('434', '167.114.209.28', '1557815185', 'Chrome', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('435', '66.249.64.185', '1557818538', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('436', '66.249.64.181', '1557831847', 'Chrome', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('437', '42.236.99.86', '1557839269', 'Firefox', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('438', '42.236.10.112', '1557845148', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('439', '42.236.10.113', '1557845148', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('440', '42.236.10.91', '1557845148', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('441', '42.236.10.74', '1557845149', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('442', '42.236.10.116', '1557845149', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('443', '123.160.175.171', '1557849744', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('444', '123.160.174.128', '1557850202', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('445', '66.249.64.183', '1557860860', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('446', '171.13.14.28', '1557885187', 'Firefox', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('447', '66.249.64.181', '1557889838', 'Chrome', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('448', '66.249.64.181', '1557904923', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('449', '113.246.197.197', '1557910146', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('450', '66.249.64.185', '1557924209', 'Chrome', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('451', '113.128.105.43', '1557925522', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('452', '66.249.64.185', '1557932661', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('453', '42.236.10.107', '1557935857', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('454', '207.46.13.75', '1557946525', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('455', '42.236.46.85', '1557984134', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('456', '49.4.95.214', '1557996108', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('457', '219.134.113.61', '1558001115', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('458', '42.236.10.93', '1558001122', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('459', '42.236.10.78', '1558001130', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('460', '61.164.47.194', '1558003469', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('461', '157.55.39.196', '1558043508', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('462', '14.215.176.21', '1558050752', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('463', '66.249.69.248', '1558059733', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('464', '66.249.69.248', '1558060913', 'Chrome', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('465', '66.249.69.246', '1558064137', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('466', '66.249.69.248', '1558064142', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('467', '66.249.69.244', '1558069364', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('468', '66.249.69.246', '1558071149', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('469', '66.249.69.244', '1558080880', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('470', '66.249.69.244', '1558083251', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('471', '42.236.10.112', '1558087404', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('472', '66.249.69.246', '1558089871', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('473', '66.249.69.246', '1558102548', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('474', '66.249.69.248', '1558111009', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('475', '66.249.69.244', '1558114027', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('476', '66.249.69.244', '1558120661', 'Chrome', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('477', '66.249.69.246', '1558126650', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('478', '66.249.69.246', '1558131639', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('479', '66.249.65.143', '1558138292', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('480', '66.249.65.141', '1558138413', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('481', '66.249.65.141', '1558140104', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('482', '42.236.10.76', '1558146049', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('483', '42.236.10.88', '1558146049', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('484', '42.236.10.74', '1558146049', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('485', '42.236.10.90', '1558146049', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('486', '42.236.10.91', '1558146050', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('487', '42.236.10.71', '1558146050', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('488', '42.236.10.72', '1558146050', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('489', '42.236.10.73', '1558146050', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('490', '42.236.10.121', '1558146050', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('491', '42.236.10.77', '1558146050', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('492', '42.236.10.110', '1558146050', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('493', '42.236.10.122', '1558146050', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('494', '42.236.10.120', '1558146050', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('495', '42.236.10.82', '1558146050', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('496', '42.236.10.112', '1558146050', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('497', '42.236.102.23', '1558146080', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('498', '66.249.65.145', '1558154619', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('499', '66.249.65.145', '1558155227', 'Chrome', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('500', '66.249.65.143', '1558157062', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('501', '66.249.65.145', '1558161847', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('502', '42.236.10.110', '1558165057', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('503', '66.249.65.143', '1558168507', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('504', '66.249.65.143', '1558170340', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('505', '66.249.65.141', '1558178208', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('506', '66.249.65.145', '1558184858', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('507', '66.249.65.143', '1558192705', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('508', '66.249.65.143', '1558199946', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('509', '66.249.65.143', '1558203856', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('510', '66.249.65.141', '1558218276', 'Chrome', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('511', '66.249.79.25', '1558227325', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('512', '42.236.10.73', '1558254548', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('513', '183.17.64.141', '1558274255', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('514', '180.163.220.4', '1558274260', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('515', '47.110.224.241', '1558289269', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('516', '42.236.10.112', '1558317606', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('517', '42.236.10.120', '1558317606', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('518', '42.236.10.110', '1558317606', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('519', '42.236.10.89', '1558317606', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('520', '42.236.10.91', '1558317607', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('521', '42.236.10.72', '1558317607', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('522', '42.236.10.76', '1558317607', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('523', '42.236.10.69', '1558317607', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('524', '42.236.10.113', '1558317607', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('525', '42.236.10.123', '1558317607', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('526', '42.236.10.88', '1558317607', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('527', '42.236.10.90', '1558317607', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('528', '42.236.10.71', '1558317607', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('529', '69.58.178.59', '1558341469', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('530', '42.236.10.107', '1558345529', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('531', '61.164.47.194', '1558352628', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('532', '66.249.79.21', '1558353553', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('533', '66.249.79.21', '1558356548', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('534', '66.249.79.21', '1558360801', 'Chrome', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('535', '66.249.79.21', '1558368647', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('536', '42.236.103.106', '1558405204', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('537', '64.246.178.34', '1558410106', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('538', '66.249.79.25', '1558413815', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('539', '42.236.10.81', '1558425574', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('540', '66.249.79.25', '1558432985', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('541', '66.249.79.23', '1558436602', 'Chrome', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('542', '66.249.79.25', '1558443854', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('543', '66.249.79.23', '1558446275', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('544', '66.249.79.23', '1558462543', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('545', '66.249.79.21', '1558463052', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('546', '66.249.79.21', '1558489517', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('547', '183.17.66.184', '1558505168', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('548', '180.163.220.4', '1558505183', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('549', '180.163.220.68', '1558505186', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('550', '42.236.10.91', '1558511613', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('551', '183.17.66.184', '1558513877', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('552', '180.163.220.4', '1558513901', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('553', '180.163.220.3', '1558513905', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('554', '180.163.220.66', '1558513907', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('555', '180.163.220.5', '1558513923', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('556', '14.215.176.16', '1558513972', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('557', '14.215.176.9', '1558514019', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('558', '66.249.79.23', '1558529887', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('559', '66.249.79.23', '1558541968', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('560', '157.55.39.253', '1558549349', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('561', '66.249.79.25', '1558552818', 'Chrome', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('562', '66.249.79.23', '1558564888', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('563', '66.249.79.23', '1558570321', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('564', '42.236.101.234', '1558574484', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('565', '42.236.10.107', '1558576538', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('566', '42.236.10.120', '1558576538', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('567', '42.236.10.91', '1558576539', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('568', '42.236.10.122', '1558576539', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('569', '42.236.10.116', '1558576539', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('570', '42.236.10.70', '1558576539', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('571', '42.236.10.89', '1558576539', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('572', '42.236.10.71', '1558576539', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('573', '42.236.10.88', '1558576539', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('574', '42.236.10.109', '1558576539', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('575', '66.249.79.21', '1558597288', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('576', '66.249.79.25', '1558597303', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('577', '42.236.10.121', '1558600334', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('578', '66.249.79.25', '1558611106', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('579', '150.255.8.158', '1558612792', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('580', '221.213.75.198', '1558612809', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('581', '221.213.75.237', '1558612910', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('582', '110.167.88.18', '1558612972', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('583', '175.184.164.236', '1558613024', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('584', '175.184.167.27', '1558613033', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('585', '110.177.87.100', '1558613153', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('586', '121.57.227.183', '1558613198', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('587', '123.126.113.249', '1558613469', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('588', '110.167.88.11', '1558613512', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('589', '221.213.75.156', '1558613672', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('590', '221.213.75.168', '1558613676', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('591', '125.36.255.104', '1558613764', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('592', '66.249.79.21', '1558623111', 'Chrome', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('593', '66.249.79.23', '1558626107', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('594', '220.181.108.107', '1558629375', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('595', '66.249.79.21', '1558642980', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('596', '111.206.36.10', '1558648198', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('597', '111.206.36.133', '1558648198', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('598', '66.249.79.21', '1558673012', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('599', '66.249.79.21', '1558677098', 'Chrome', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('600', '113.246.172.24', '1558684017', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('601', '42.236.10.105', '1558685813', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('602', '202.108.211.151', '1558707491', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('603', '66.249.79.21', '1558722443', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('604', '157.55.39.198', '1558725418', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('605', '42.236.101.234', '1558751283', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('606', '61.164.47.194', '1558755408', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('607', '42.236.10.88', '1558772488', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('608', '182.101.55.242', '1558810792', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('609', '171.34.179.188', '1558814600', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('610', '220.168.95.167', '1558814685', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('611', '220.168.95.168', '1558814708', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('612', '110.167.92.92', '1558814895', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('613', '42.236.10.105', '1558832192', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('614', '42.236.10.89', '1558832192', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('615', '42.236.10.69', '1558832192', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('616', '42.236.10.113', '1558832192', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('617', '42.236.10.83', '1558832192', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('618', '42.236.10.112', '1558832192', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('619', '42.236.10.107', '1558832192', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('620', '42.236.10.116', '1558832192', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('621', '42.236.10.123', '1558832192', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('622', '42.236.10.110', '1558832192', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('623', '42.236.10.82', '1558858181', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('624', '110.52.235.13', '1558866020', 'IE', 'pc');
INSERT INTO `tp_visit_log` VALUES ('625', '106.12.119.175', '1558900251', 'Firefox', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('626', '182.61.44.110', '1558922270', 'Firefox', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('627', '220.181.108.185', '1558922567', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('628', '111.206.198.45', '1558922567', 'Firefox', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('629', '123.125.71.114', '1558924567', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('630', '220.181.108.102', '1558926567', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('631', '66.249.64.183', '1558932208', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('632', '106.12.99.73', '1558944590', 'Firefox', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('633', '42.236.10.107', '1558948804', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('634', '61.164.47.194', '1558961283', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('635', '106.12.119.175', '1558966678', 'Firefox', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('636', '221.11.60.158', '1558969191', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('637', '61.164.47.194', '1558983409', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('638', '36.110.199.147', '1558989329', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('639', '42.236.103.66', '1559006822', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('640', '111.162.150.253', '1559013181', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('641', '220.181.108.144', '1559014472', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('642', '101.24.129.127', '1559016184', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('643', '61.164.47.194', '1559016592', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('644', '42.236.10.123', '1559049549', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('645', '123.125.71.21', '1559065084', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('646', '66.249.69.244', '1559073414', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('647', '123.125.71.99', '1559074888', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('648', '66.249.69.246', '1559081895', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('649', '220.181.108.165', '1559089066', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('650', '66.249.69.244', '1559092165', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('651', '42.236.10.109', '1559092508', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('652', '42.236.10.107', '1559092508', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('653', '42.236.10.123', '1559092508', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('654', '42.236.10.121', '1559092508', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('655', '42.236.10.105', '1559092508', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('656', '42.236.10.91', '1559092508', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('657', '42.236.10.73', '1559092508', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('658', '42.236.10.110', '1559092508', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('659', '42.236.10.112', '1559092508', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('660', '42.236.10.116', '1559092509', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('661', '42.236.10.71', '1559092509', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('662', '66.249.69.248', '1559093946', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('663', '66.249.65.141', '1559097743', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('664', '66.249.65.141', '1559115658', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('665', '42.236.10.91', '1559118059', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('666', '66.249.65.143', '1559132586', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('667', '66.249.65.141', '1559141050', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('668', '66.249.79.25', '1559161567', 'Chrome', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('669', '42.236.99.178', '1559171030', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('670', '66.249.79.25', '1559174236', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('671', '66.249.79.21', '1559183286', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('672', '42.236.99.130', '1559191354', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('673', '66.249.79.23', '1559191404', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('674', '66.249.79.25', '1559197094', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('675', '42.236.10.88', '1559203857', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('676', '119.123.201.29', '1559204642', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('677', '180.163.220.68', '1559204651', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('678', '180.163.220.66', '1559204652', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('679', '66.249.79.21', '1559213895', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('680', '66.249.79.25', '1559226567', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('681', '66.249.79.23', '1559231408', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('682', '165.22.44.17', '1559250702', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('683', '185.93.54.51', '1559252140', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('684', '202.108.211.151', '1559264975', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('685', '220.181.108.96', '1559295351', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('686', '111.206.198.17', '1559295358', 'Firefox', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('687', '66.249.66.141', '1559298684', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('688', '66.249.66.143', '1559298784', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('689', '66.249.66.141', '1559299292', 'Chrome', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('690', '220.181.108.84', '1559306240', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('691', '66.249.66.143', '1559307177', 'Chrome', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('692', '66.249.66.141', '1559311422', 'Chrome', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('693', '66.249.66.143', '1559315819', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('694', '66.249.66.143', '1559317565', 'Chrome', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('695', '66.249.66.141', '1559321163', 'Chrome', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('696', '66.249.66.145', '1559321777', 'Chrome', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('697', '66.249.66.145', '1559327237', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('698', '66.249.66.143', '1559328464', 'Chrome', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('699', '66.249.66.141', '1559329059', 'Chrome', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('700', '66.249.66.143', '1559330669', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('701', '66.249.66.141', '1559332401', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('702', '66.249.66.145', '1559339041', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('703', '42.236.10.88', '1559339152', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('704', '42.236.10.79', '1559339152', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('705', '42.236.10.90', '1559339152', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('706', '42.236.10.89', '1559339152', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('707', '42.236.10.89', '1559339152', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('708', '42.236.10.71', '1559339152', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('709', '42.236.10.77', '1559339152', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('710', '42.236.10.82', '1559339152', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('711', '42.236.10.107', '1559339153', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('712', '42.236.10.73', '1559339153', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('713', '66.249.66.145', '1559341440', 'Chrome', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('714', '66.249.66.145', '1559343243', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('715', '66.249.66.145', '1559345310', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('716', '66.249.66.145', '1559346472', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('717', '66.249.66.143', '1559347671', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('718', '219.134.112.118', '1559347870', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('719', '42.236.10.125', '1559347877', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('720', '113.246.199.225', '1559349819', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('721', '219.134.112.118', '1559349869', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('722', '62.138.2.243', '1559351065', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('723', '123.125.71.53', '1559353161', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('724', '66.249.66.145', '1559353700', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('725', '117.162.168.151', '1559354229', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('726', '42.236.10.114', '1559354245', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('727', '42.236.10.78', '1559354267', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('728', '180.163.220.68', '1559354268', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('729', '180.163.220.66', '1559354270', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('730', '171.13.14.3', '1559355021', 'Firefox', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('731', '58.250.125.103', '1559355701', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('732', '42.236.99.130', '1559355843', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('733', '117.162.168.151', '1559355939', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('734', '66.249.66.145', '1559358901', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('735', '117.162.168.151', '1559363931', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('736', '42.236.10.117', '1559364042', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('737', '42.236.10.114', '1559364045', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('738', '42.236.10.125', '1559364056', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('739', '5.9.156.20', '1559365384', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('740', '66.249.66.143', '1559368850', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('741', '66.249.66.141', '1559370640', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('742', '66.249.66.141', '1559373283', 'Chrome', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('743', '46.166.186.223', '1559373765', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('744', '66.249.66.143', '1559376079', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('745', '42.236.10.113', '1559376170', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('746', '144.76.137.254', '1559377276', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('747', '66.249.66.141', '1559377860', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('748', '66.249.66.145', '1559383339', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('749', '176.9.58.227', '1559384991', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('750', '207.46.13.46', '1559386382', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('751', '178.255.215.77', '1559388101', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('752', '207.46.13.46', '1559391392', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('753', '34.74.32.20', '1559400449', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('754', '106.38.241.162', '1559420225', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('755', '220.181.108.155', '1559420327', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('756', '35.227.60.11', '1559423588', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('757', '123.125.71.45', '1559424327', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('758', '35.227.60.11', '1559424491', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('759', '35.227.56.15', '1559425789', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('760', '123.125.71.97', '1559426327', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('761', '35.227.56.15', '1559426691', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('762', '220.181.108.107', '1559428327', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('763', '220.181.108.119', '1559430327', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('764', '157.55.39.241', '1559431823', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('765', '123.125.71.12', '1559434327', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('766', '37.9.113.64', '1559440231', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('767', '141.8.142.132', '1559440232', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('768', '58.250.125.31', '1559441865', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('769', '207.46.13.70', '1559446671', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('770', '91.79.17.81', '1559449632', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('771', '207.46.13.70', '1559451451', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('772', '42.236.10.73', '1559464759', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('773', '35.196.27.110', '1559468080', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('774', '178.255.215.77', '1559477230', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('775', '42.236.10.109', '1559483386', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('776', '35.196.27.110', '1559495746', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('777', '207.46.13.70', '1559496555', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('778', '35.196.27.110', '1559496787', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('779', '123.125.71.23', '1559500044', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('780', '207.46.13.70', '1559500918', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('781', '46.166.186.203', '1559501299', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('782', '109.201.154.195', '1559501300', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('783', '220.181.108.86', '1559502044', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('784', '58.250.125.120', '1559506463', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('785', '123.126.68.122', '1559507657', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('786', '123.125.71.48', '1559510044', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('787', '37.230.247.160', '1559510192', 'IE', 'pc');
INSERT INTO `tp_visit_log` VALUES ('788', '42.236.10.121', '1559511984', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('789', '42.236.10.120', '1559516190', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('790', '42.236.10.77', '1559516190', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('791', '42.236.10.73', '1559516190', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('792', '42.236.10.112', '1559516190', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('793', '42.236.10.116', '1559516190', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('794', '42.236.10.89', '1559516190', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('795', '42.236.10.105', '1559516191', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('796', '42.236.10.123', '1559516191', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('797', '42.236.10.72', '1559516191', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('798', '42.236.10.108', '1559516191', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('799', '42.236.10.107', '1559516191', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('800', '91.79.16.179', '1559522304', 'Edge', 'pc');
INSERT INTO `tp_visit_log` VALUES ('801', '35.237.193.171', '1559522471', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('802', '35.237.193.171', '1559523442', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('803', '123.126.113.116', '1559528526', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('804', '134.209.170.254', '1559530584', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('805', '195.181.160.71', '1559537897', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('806', '148.251.41.239', '1559542635', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('807', '220.181.108.181', '1559543039', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('808', '207.46.13.193', '1559543695', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('809', '18.236.125.62', '1559546518', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('810', '203.213.105.21', '1559549015', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('811', '35.237.193.171', '1559550382', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('812', '42.236.10.71', '1559550884', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('813', '207.46.13.193', '1559551891', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('814', '71.6.165.200', '1559553704', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('815', '42.236.99.16', '1559556979', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('816', '42.236.99.72', '1559557007', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('817', '95.216.11.233', '1559562628', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('818', '123.125.71.45', '1559562783', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('819', '34.73.170.219', '1559568534', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('820', '34.73.170.219', '1559569472', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('821', '37.9.113.64', '1559571457', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('822', '220.181.108.80', '1559573582', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('823', '37.9.113.64', '1559583216', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('824', '141.8.142.132', '1559584120', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('825', '37.9.113.64', '1559586324', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('826', '37.9.113.64', '1559592789', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('827', '141.8.142.132', '1559592877', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('828', '106.120.173.67', '1559593050', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('829', '40.77.167.18', '1559595153', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('830', '207.46.13.66', '1559600166', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('831', '42.236.99.72', '1559608414', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('832', '117.95.114.207', '1559608913', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('833', '123.125.71.30', '1559612627', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('834', '218.30.103.30', '1559614963', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('835', '42.236.101.214', '1559618366', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('836', '116.252.1.247', '1559623602', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('837', '27.213.92.195', '1559623855', 'IE', 'pc');
INSERT INTO `tp_visit_log` VALUES ('838', '192.162.102.230', '1559625916', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('839', '35.196.204.230', '1559627027', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('840', '66.249.69.248', '1559628790', 'Chrome', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('841', '34.216.191.196', '1559632661', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('842', '151.55.8.201', '1559634968', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('843', '42.236.10.112', '1559639047', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('844', '202.109.143.77', '1559639359', 'IE', 'pc');
INSERT INTO `tp_visit_log` VALUES ('845', '202.109.143.77', '1559639364', 'Chrome', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('846', '34.74.3.142', '1559642163', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('847', '122.49.28.44', '1559642587', 'Firefox', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('848', '34.74.3.142', '1559643064', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('849', '34.74.3.142', '1559643995', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('850', '157.55.39.250', '1559648790', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('851', '157.55.39.250', '1559653345', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('852', '35.185.84.179', '1559659624', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('853', '35.185.84.179', '1559660527', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('854', '52.24.146.129', '1559671386', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('855', '35.180.210.161', '1559678824', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('856', '106.38.241.176', '1559679474', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('857', '37.9.113.64', '1559685734', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('858', '42.236.10.113', '1559686534', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('859', '42.236.10.108', '1559686534', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('860', '42.236.10.72', '1559686534', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('861', '42.236.10.90', '1559686534', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('862', '42.236.10.74', '1559686534', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('863', '42.236.10.109', '1559686534', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('864', '42.236.10.88', '1559686534', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('865', '42.236.10.91', '1559686534', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('866', '42.236.10.83', '1559686535', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('867', '42.236.10.105', '1559686535', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('868', '42.236.10.89', '1559686535', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('869', '141.8.142.132', '1559691032', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('870', '213.180.203.24', '1559691036', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('871', '123.125.67.164', '1559693233', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('872', '35.190.186.159', '1559696834', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('873', '37.9.113.64', '1559697461', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('874', '40.77.167.164', '1559697615', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('875', '40.77.167.164', '1559699937', 'Firefox', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('876', '141.8.142.132', '1559701158', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('877', '123.126.113.90', '1559701194', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('878', '141.8.142.32', '1559703255', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('879', '37.9.113.64', '1559703535', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('880', '46.166.137.200', '1559706114', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('881', '75.126.32.182', '1559707013', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('882', '66.249.69.244', '1559707101', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('883', '40.77.167.164', '1559709411', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('884', '178.255.215.77', '1559710174', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('885', '37.9.113.64', '1559710387', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('886', '66.249.69.248', '1559710727', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('887', '114.115.190.4', '1559712258', 'IE', 'pc');
INSERT INTO `tp_visit_log` VALUES ('888', '104.196.16.232', '1559714509', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('889', '104.196.16.232', '1559715427', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('890', '107.178.236.5', '1559720297', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('891', '42.236.10.108', '1559721627', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('892', '42.236.101.234', '1559722593', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('893', '42.236.101.214', '1559722613', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('894', '66.249.69.246', '1559724038', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('895', '37.9.113.64', '1559726321', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('896', '141.8.142.132', '1559727180', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('897', '109.201.152.237', '1559730525', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('898', '121.204.121.186', '1559731469', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('899', '180.163.220.66', '1559731475', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('900', '180.163.220.68', '1559731538', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('901', '220.181.108.120', '1559733887', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('902', '40.77.167.4', '1559741114', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('903', '66.249.70.19', '1559742508', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('904', '66.249.64.89', '1559742673', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('905', '66.249.70.21', '1559742677', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('906', '66.249.64.89', '1559743327', 'Chrome', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('907', '35.237.145.92', '1559744355', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('908', '66.249.70.21', '1559745152', 'Chrome', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('909', '40.77.167.180', '1559747421', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('910', '66.249.70.19', '1559750422', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('911', '66.249.70.19', '1559751046', 'Chrome', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('912', '207.46.13.115', '1559751786', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('913', '66.249.70.30', '1559752396', 'Chrome', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('914', '207.46.13.115', '1559753683', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('915', '18.144.53.162', '1559754113', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('916', '66.249.70.21', '1559758429', 'Chrome', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('917', '58.250.125.143', '1559765862', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('918', '180.125.115.219', '1559769257', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('919', '34.73.173.7', '1559770149', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('920', '34.73.173.7', '1559771188', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('921', '42.236.10.108', '1559784038', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('922', '66.249.70.26', '1559785301', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('923', '218.30.103.5', '1559787680', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('924', '123.125.67.228', '1559792298', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('925', '116.22.162.176', '1559794232', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('926', '207.46.13.135', '1559794528', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('927', '40.77.167.107', '1559799101', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('928', '54.36.150.132', '1559804498', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('929', '123.125.67.226', '1559807441', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('930', '116.22.162.176', '1559808435', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('931', '42.236.10.89', '1559809427', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('932', '180.97.118.223', '1559813628', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('933', '148.251.195.14', '1559814553', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('934', '37.9.113.64', '1559815863', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('935', '34.74.192.31', '1559816094', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('936', '34.74.192.31', '1559823072', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('937', '34.74.192.31', '1559824013', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('938', '58.58.213.55', '1559824976', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('939', '66.249.64.89', '1559838381', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('940', '66.249.64.87', '1559838388', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('941', '109.201.154.245', '1559843260', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('942', '207.46.13.132', '1559843408', 'Firefox', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('943', '207.46.13.132', '1559843462', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('944', '34.73.85.242', '1559846286', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('945', '34.73.85.242', '1559847206', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('946', '14.215.176.5', '1559847562', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('947', '207.46.13.132', '1559850402', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('948', '42.236.10.108', '1559851785', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('949', '42.236.10.116', '1559851785', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('950', '42.236.10.83', '1559851786', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('951', '42.236.10.107', '1559851786', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('952', '42.236.10.88', '1559851786', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('953', '42.236.10.73', '1559851787', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('954', '42.236.10.82', '1559851787', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('955', '42.236.10.121', '1559851787', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('956', '123.126.113.171', '1559852089', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('957', '123.125.125.78', '1559852252', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('958', '185.220.101.45', '1559856767', 'Edge', 'pc');
INSERT INTO `tp_visit_log` VALUES ('959', '42.236.10.77', '1559858734', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('960', '42.236.10.71', '1559858734', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('961', '42.236.10.123', '1559858734', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('962', '42.236.10.112', '1559858735', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('963', '37.9.113.64', '1559859728', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('964', '123.125.67.162', '1559860791', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('965', '177.12.172.93', '1559861029', 'Chrome', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('966', '66.249.64.181', '1559862069', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('967', '213.180.203.24', '1559862335', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('968', '66.249.64.119', '1559864291', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('969', '202.108.211.151', '1559864882', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('970', '123.125.67.163', '1559866547', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('971', '66.249.64.185', '1559869182', 'Chrome', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('972', '123.125.67.156', '1559870029', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('973', '111.202.101.73', '1559873942', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('974', '123.125.67.156', '1559888086', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('975', '35.237.162.23', '1559889846', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('976', '42.236.10.120', '1559894491', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('977', '46.166.137.210', '1559894887', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('978', '207.46.13.219', '1559896741', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('979', '222.186.174.87', '1559897527', 'IE', 'pc');
INSERT INTO `tp_visit_log` VALUES ('980', '37.9.113.64', '1559898026', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('981', '42.236.99.130', '1559899044', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('982', '42.236.54.62', '1559899060', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('983', '66.249.79.25', '1559900283', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('984', '123.125.67.227', '1559903234', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('985', '58.19.92.185', '1559908767', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('986', '171.36.128.242', '1559908799', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('987', '113.57.114.150', '1559908820', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('988', '113.57.114.190', '1559909185', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('989', '113.57.114.190', '1559909185', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('990', '35.237.160.108', '1559912567', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('991', '35.237.160.108', '1559913529', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('992', '116.252.0.48', '1559916220', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('993', '222.186.174.87', '1559922104', 'IE', 'pc');
INSERT INTO `tp_visit_log` VALUES ('994', '37.9.113.64', '1559931946', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('995', '106.120.173.91', '1559938610', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('996', '5.188.62.5', '1559944527', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('997', '40.77.167.164', '1559944674', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('998', '40.77.167.17', '1559949791', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('999', '34.74.134.37', '1559952186', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1000', '37.9.113.64', '1559956492', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1001', '141.8.142.132', '1559956492', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1002', '66.249.79.25', '1559957865', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1003', '58.250.125.75', '1559960378', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1004', '42.236.102.23', '1559960388', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1005', '5.9.154.69', '1559964438', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1006', '66.249.79.23', '1559964475', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1007', '13.59.58.185', '1559968939', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1008', '66.249.79.25', '1559971076', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1009', '66.249.79.23', '1559971081', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1010', '66.249.79.23', '1559972896', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1011', '35.231.25.35', '1559976258', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1012', '119.123.136.21', '1559976581', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1013', '42.236.10.125', '1559976588', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1014', '180.163.220.68', '1559976600', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1015', '178.255.215.77', '1559976669', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1016', '18.236.227.247', '1559977119', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1017', '35.231.25.35', '1559977180', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1018', '42.236.10.90', '1559981014', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1019', '40.77.167.128', '1559998375', '其它', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1020', '110.52.217.128', '1560001241', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1021', '127.0.0.1', '1560001926', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1022', '127.0.0.1', '1560006468', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1023', '127.0.0.1', '1560007428', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1024', '127.0.0.1', '1560008346', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1025', '127.0.0.1', '1560009251', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1026', '127.0.0.1', '1560010208', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1027', '127.0.0.1', '1560083074', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1028', '127.0.0.1', '1560084300', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1029', '127.0.0.1', '1560086200', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1030', '127.0.0.1', '1560092469', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1031', '127.0.0.1', '1560265080', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1032', '127.0.0.1', '1560266168', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1033', '127.0.0.1', '1560268266', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1034', '127.0.0.1', '1560269658', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1035', '127.0.0.1', '1560270655', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1036', '127.0.0.1', '1560339136', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1037', '127.0.0.1', '1560340147', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1038', '127.0.0.1', '1560341053', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1039', '127.0.0.1', '1560341994', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1040', '127.0.0.1', '1560349534', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1041', '127.0.0.1', '1560350443', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1042', '127.0.0.1', '1560351367', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1043', '127.0.0.1', '1560352282', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1044', '127.0.0.1', '1560352941', 'Firefox', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1045', '127.0.0.1', '1560353271', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1046', '127.0.0.1', '1560518788', 'Chrome', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('1047', '127.0.0.1', '1560518911', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1048', '127.0.0.1', '1560519708', 'Chrome', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('1049', '127.0.0.1', '1560519832', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1050', '127.0.0.1', '1560520622', 'Chrome', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('1051', '127.0.0.1', '1560522124', 'Chrome', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('1052', '127.0.0.1', '1560524230', 'Chrome', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('1053', '127.0.0.1', '1560525131', 'Chrome', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('1054', '127.0.0.1', '1560526039', 'Chrome', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('1055', '127.0.0.1', '1560526487', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1056', '127.0.0.1', '1560527030', 'Chrome', 'mobile');
INSERT INTO `tp_visit_log` VALUES ('1057', '127.0.0.1', '1560527489', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1058', '127.0.0.1', '1564660207', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1059', '127.0.0.1', '1564667712', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1060', '127.0.0.1', '1564668676', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1061', '127.0.0.1', '1564669727', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1062', '127.0.0.1', '1564751852', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1063', '127.0.0.1', '1564753085', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1064', '127.0.0.1', '1564896469', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1065', '127.0.0.1', '1564909163', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1066', '127.0.0.1', '1564932588', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1067', '127.0.0.1', '1565014125', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1068', '127.0.0.1', '1565015671', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1069', '127.0.0.1', '1565017070', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1070', '127.0.0.1', '1565018022', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1071', '127.0.0.1', '1565091128', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1072', '127.0.0.1', '1565092462', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1073', '127.0.0.1', '1565093370', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1074', '127.0.0.1', '1565094307', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1075', '127.0.0.1', '1565095209', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1076', '127.0.0.1', '1565096129', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1077', '127.0.0.1', '1565097261', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1078', '127.0.0.1', '1565102266', 'Chrome', 'pc');
INSERT INTO `tp_visit_log` VALUES ('1079', '127.0.0.1', '1565103187', 'Chrome', 'pc');
