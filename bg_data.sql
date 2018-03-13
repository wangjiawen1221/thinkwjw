/*
Navicat MySQL Data Transfer

Source Server         : 云服务器
Source Server Version : 50635
Source Host           : 47.94.16.192:3306
Source Database       : bg_data

Target Server Type    : MYSQL
Target Server Version : 50635
File Encoding         : 65001

Date: 2017-05-26 14:41:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for wjw_article
-- ----------------------------
DROP TABLE IF EXISTS `wjw_article`;
CREATE TABLE `wjw_article` (
  `aid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章表主键',
  `title` char(100) NOT NULL DEFAULT '' COMMENT '标题',
  `author` varchar(15) NOT NULL DEFAULT '' COMMENT '作者',
  `content` mediumtext NOT NULL COMMENT '文章内容',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` char(255) NOT NULL DEFAULT '' COMMENT '描述',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '文章是否显示 1是 0否',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除 1是 0否',
  `is_top` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否置顶 1是 0否',
  `is_original` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否原创',
  `click` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击数',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `cid` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '分类id',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wjw_article
-- ----------------------------
INSERT INTO `wjw_article` VALUES ('17', '测试文章标题', '王加文', '&lt;p&gt;测试文章内容&lt;img alt=&quot;王加文博客&quot; src=&quot;/Upload/image/ueditor/20150601/1433171136139793.jpg&quot; title=&quot;王加文博客&quot;/&gt;&lt;/p&gt;', '关键词,多个', '测试文章描述', '1', '0', '1', '1', '384', '1432649909', '28');
INSERT INTO `wjw_article` VALUES ('18', '欢迎蒋秋艳到此一游', '王加文', '&lt;p&gt;&lt;img src=&quot;/Upload/image/ueditor/20170525/1495695349950851.jpg&quot; title=&quot;白俊遥博客&quot; alt=&quot;白俊遥博客&quot;/&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;你的女神哦&lt;/p&gt;', '蒋秋艳', '你的女神哦', '1', '0', '0', '1', '6', '1495695391', '28');
INSERT INTO `wjw_article` VALUES ('19', '你可以用你的微博账号登入啦', '王加文', '&lt;p&gt;&lt;img src=&quot;/Upload/image/ueditor/20170526/1495778874368409.jpg&quot; title=&quot;白俊遥博客&quot; alt=&quot;白俊遥博客&quot;/&gt;&lt;/p&gt;&lt;p&gt;该词常常出现在各大贴吧、论坛的评论区中，比较完整的说法是&lt;strong&gt;“说出你的故事，开始你的表演”&lt;/strong&gt;。他们常常以一种与众不同的观点和自身经历来吸引别人的眼光，有的是事实有的则是单纯的&lt;strong&gt;为了装逼&lt;/strong&gt;，当大家想要更加仔细深入的了解这个人的故事的时候就会说上一句“请开始你的表演”，就和文青们常常说的一句“我有酒，你有故事吗”意思比较接近。&lt;br/&gt;&lt;/p&gt;', '爱你哦', '么么哒', '1', '0', '0', '1', '5', '1495778917', '28');

-- ----------------------------
-- Table structure for wjw_article_pic
-- ----------------------------
DROP TABLE IF EXISTS `wjw_article_pic`;
CREATE TABLE `wjw_article_pic` (
  `ap_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `path` varchar(100) NOT NULL DEFAULT '' COMMENT '图片路径',
  `aid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属文章id',
  PRIMARY KEY (`ap_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wjw_article_pic
-- ----------------------------
INSERT INTO `wjw_article_pic` VALUES ('11', '/Upload/image/ueditor/20150601/1433171136139793.jpg', '17');
INSERT INTO `wjw_article_pic` VALUES ('13', '/Upload/image/ueditor/20170525/1495695349950851.jpg', '18');
INSERT INTO `wjw_article_pic` VALUES ('14', '/Upload/image/ueditor/20170526/1495778874368409.jpg', '19');

-- ----------------------------
-- Table structure for wjw_article_tag
-- ----------------------------
DROP TABLE IF EXISTS `wjw_article_tag`;
CREATE TABLE `wjw_article_tag` (
  `aid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文章id',
  `tid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '标签id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wjw_article_tag
-- ----------------------------
INSERT INTO `wjw_article_tag` VALUES ('17', '20');
INSERT INTO `wjw_article_tag` VALUES ('18', '20');
INSERT INTO `wjw_article_tag` VALUES ('19', '20');

-- ----------------------------
-- Table structure for wjw_category
-- ----------------------------
DROP TABLE IF EXISTS `wjw_category`;
CREATE TABLE `wjw_category` (
  `cid` tinyint(2) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类主键id',
  `cname` varchar(15) NOT NULL DEFAULT '' COMMENT '分类名称',
  `keywords` varchar(255) DEFAULT '' COMMENT '关键词',
  `description` varchar(255) DEFAULT '' COMMENT '描述',
  `sort` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `pid` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '父级栏目id',
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wjw_category
-- ----------------------------
INSERT INTO `wjw_category` VALUES ('28', '有你的日子', '关键有你', 'descript', '1', '0');

-- ----------------------------
-- Table structure for wjw_chat
-- ----------------------------
DROP TABLE IF EXISTS `wjw_chat`;
CREATE TABLE `wjw_chat` (
  `chid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '碎言id',
  `date` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发表时间',
  `content` text NOT NULL COMMENT '内容',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`chid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wjw_chat
-- ----------------------------
INSERT INTO `wjw_chat` VALUES ('2', '1432827004', '随言碎语', '1', '0');
INSERT INTO `wjw_chat` VALUES ('3', '1444529995', '测试碎言', '1', '0');
INSERT INTO `wjw_chat` VALUES ('4', '1494928450', '测试专用', '1', '1');

-- ----------------------------
-- Table structure for wjw_comment
-- ----------------------------
DROP TABLE IF EXISTS `wjw_comment`;
CREATE TABLE `wjw_comment` (
  `cmtid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `ouid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论用户id 关联oauth_user表的id',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '1：文章评论',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父级id',
  `aid` int(10) unsigned NOT NULL COMMENT '文章id',
  `content` text NOT NULL COMMENT '内容',
  `date` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论日期',
  `status` tinyint(1) unsigned NOT NULL COMMENT '1:已审核 0：未审核',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`cmtid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wjw_comment
-- ----------------------------
INSERT INTO `wjw_comment` VALUES ('1', '1', '1', '0', '17', '11', '1494999630', '1', '0');

-- ----------------------------
-- Table structure for wjw_config
-- ----------------------------
DROP TABLE IF EXISTS `wjw_config`;
CREATE TABLE `wjw_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '配置项键名',
  `value` text COMMENT '配置项键值 1表示开启 0 关闭',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wjw_config
-- ----------------------------
INSERT INTO `wjw_config` VALUES ('1', 'WEB_NAME', '王加文博客');
INSERT INTO `wjw_config` VALUES ('2', 'WEB_KEYWORDS', '王加文,技术博客,个人博客,wjwblog');
INSERT INTO `wjw_config` VALUES ('3', 'WEB_DESCRIPTION', '王加文的个人技术博客,wjwblog官方网站');
INSERT INTO `wjw_config` VALUES ('4', 'WEB_STATUS', '1');
INSERT INTO `wjw_config` VALUES ('5', 'ADMIN_PASSWORD', '93627540d02564c00410261008e7da6b');
INSERT INTO `wjw_config` VALUES ('6', 'WATER_TYPE', '1');
INSERT INTO `wjw_config` VALUES ('7', 'TEXT_WATER_WORD', 'wjiawen.cn');
INSERT INTO `wjw_config` VALUES ('8', 'TEXT_WATER_TTF_PTH', './Public/static/font/ariali.ttf');
INSERT INTO `wjw_config` VALUES ('9', 'TEXT_WATER_FONT_SIZE', '15');
INSERT INTO `wjw_config` VALUES ('10', 'TEXT_WATER_COLOR', '#008CBA');
INSERT INTO `wjw_config` VALUES ('11', 'TEXT_WATER_ANGLE', '0');
INSERT INTO `wjw_config` VALUES ('12', 'TEXT_WATER_LOCATE', '9');
INSERT INTO `wjw_config` VALUES ('13', 'IMAGE_WATER_PIC_PTAH', './Upload/image/logo/logo.png');
INSERT INTO `wjw_config` VALUES ('14', 'IMAGE_WATER_LOCATE', '9');
INSERT INTO `wjw_config` VALUES ('15', 'IMAGE_WATER_ALPHA', '80');
INSERT INTO `wjw_config` VALUES ('16', 'WEB_CLOSE_WORD', '网站升级中，请稍后访问。');
INSERT INTO `wjw_config` VALUES ('17', 'WEB_ICP_NUMBER', '');
INSERT INTO `wjw_config` VALUES ('18', 'ADMIN_EMAIL', 'wangjiawen1992@qq.com');
INSERT INTO `wjw_config` VALUES ('19', 'COPYRIGHT_WORD', '本文为王加文原创文章,转载无需和我联系,但请注明来自王加文博客wjiawen.cn');
INSERT INTO `wjw_config` VALUES ('20', 'QQ_APP_ID', '');
INSERT INTO `wjw_config` VALUES ('21', 'CHANGYAN_APP_ID', 'cyrKRbJ5N');
INSERT INTO `wjw_config` VALUES ('22', 'CHANGYAN_CONF', 'prod_c654661caf5ab6da98742d040413815b');
INSERT INTO `wjw_config` VALUES ('23', 'WEB_STATISTICS', '');
INSERT INTO `wjw_config` VALUES ('24', 'CHANGEYAN_RETURN_COMMENT', '');
INSERT INTO `wjw_config` VALUES ('25', 'AUTHOR', '王加文');
INSERT INTO `wjw_config` VALUES ('26', 'QQ_APP_KEY', '');
INSERT INTO `wjw_config` VALUES ('27', 'CHANGYAN_COMMENT', '');
INSERT INTO `wjw_config` VALUES ('28', 'BAIDU_SITE_URL', '');
INSERT INTO `wjw_config` VALUES ('29', 'DOUBAN_API_KEY', '');
INSERT INTO `wjw_config` VALUES ('30', 'DOUBAN_SECRET', '');
INSERT INTO `wjw_config` VALUES ('31', 'RENREN_API_KEY', '');
INSERT INTO `wjw_config` VALUES ('32', 'RENREN_SECRET', '');
INSERT INTO `wjw_config` VALUES ('33', 'SINA_API_KEY', '4171187846');
INSERT INTO `wjw_config` VALUES ('34', 'SINA_SECRET', 'fbc9f8ee520387ac15d38ea41f1ae0bd');
INSERT INTO `wjw_config` VALUES ('35', 'KAIXIN_API_KEY', '');
INSERT INTO `wjw_config` VALUES ('36', 'KAIXIN_SECRET', '');
INSERT INTO `wjw_config` VALUES ('37', 'SOHU_API_KEY', '');
INSERT INTO `wjw_config` VALUES ('38', 'SOHU_SECRET', '');
INSERT INTO `wjw_config` VALUES ('39', 'GITHUB_CLIENT_ID', '');
INSERT INTO `wjw_config` VALUES ('40', 'GITHUB_CLIENT_SECRET', '');
INSERT INTO `wjw_config` VALUES ('41', 'IMAGE_TITLE_ALT_WORD', '王加文博客');
INSERT INTO `wjw_config` VALUES ('42', 'EMAIL_SMTP', '');
INSERT INTO `wjw_config` VALUES ('43', 'EMAIL_USERNAME', '');
INSERT INTO `wjw_config` VALUES ('44', 'EMAIL_PASSWORD', '');
INSERT INTO `wjw_config` VALUES ('45', 'EMAIL_FROM_NAME', '');
INSERT INTO `wjw_config` VALUES ('46', 'COMMENT_REVIEW', '1');
INSERT INTO `wjw_config` VALUES ('47', 'COMMENT_SEND_EMAIL', '0');
INSERT INTO `wjw_config` VALUES ('48', 'EMAIL_RECEIVE', '');

-- ----------------------------
-- Table structure for wjw_link
-- ----------------------------
DROP TABLE IF EXISTS `wjw_link`;
CREATE TABLE `wjw_link` (
  `lid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `lname` varchar(50) NOT NULL DEFAULT '' COMMENT '链接名',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '排序',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '文章是否显示 1是 0否',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除 1是 0否',
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wjw_link
-- ----------------------------
INSERT INTO `wjw_link` VALUES ('2', '王加文博客', 'http://wjiawen.cn', '1', '1', '1');

-- ----------------------------
-- Table structure for wjw_oauth_user
-- ----------------------------
DROP TABLE IF EXISTS `wjw_oauth_user`;
CREATE TABLE `wjw_oauth_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '关联的本站用户id',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '类型 1：QQ  2：新浪微博 3：豆瓣 4：人人 5：开心网',
  `nickname` varchar(30) NOT NULL DEFAULT '' COMMENT '第三方昵称',
  `head_img` varchar(255) NOT NULL DEFAULT '' COMMENT '头像',
  `openid` varchar(40) NOT NULL DEFAULT '' COMMENT '第三方用户id',
  `access_token` varchar(255) NOT NULL DEFAULT '' COMMENT 'access_token token',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '绑定时间',
  `last_login_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `last_login_ip` varchar(16) NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `login_times` int(6) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT '邮箱',
  `is_admin` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否是admin',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wjw_oauth_user
-- ----------------------------
INSERT INTO `wjw_oauth_user` VALUES ('1', '0', '2', '王加文1221', 'http://tva2.sinaimg.cn/crop.0.0.664.664.180/9c2e0dc3jw8f062pzqwiyj20ig0ig40a.jpg', '2620263875', '2.00Z131rC1VsRYE999a8091725ucNrD', '1494989900', '1495679030', '180.111.207.99', '5', '1', '', '0');

-- ----------------------------
-- Table structure for wjw_tag
-- ----------------------------
DROP TABLE IF EXISTS `wjw_tag`;
CREATE TABLE `wjw_tag` (
  `tid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '标签主键',
  `tname` varchar(10) NOT NULL DEFAULT '' COMMENT '标签名',
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wjw_tag
-- ----------------------------
INSERT INTO `wjw_tag` VALUES ('20', '蒋秋艳');

-- ----------------------------
-- Table structure for wjw_user
-- ----------------------------
DROP TABLE IF EXISTS `wjw_user`;
CREATE TABLE `wjw_user` (
  `id` int(11) NOT NULL,
  `username` varchar(200) COLLATE utf8_bin NOT NULL,
  `password` varchar(500) COLLATE utf8_bin NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of wjw_user
-- ----------------------------
INSERT INTO `wjw_user` VALUES ('1', 'wang', '122188', '1');
