/*
Navicat MySQL Data Transfer

Source Server         : 192.168.0.241_3306
Source Server Version : 50156
Source Host           : 192.168.0.241:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50156
File Encoding         : 65001

Date: 2012-02-03 17:45:06
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `functions`
-- ----------------------------
DROP TABLE IF EXISTS `functions`;
CREATE TABLE `functions` (
  `id` varchar(32) NOT NULL COMMENT '权限ID',
  `parentId` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL COMMENT '权限名称',
  `description` varchar(32) DEFAULT NULL COMMENT '权限描述',
  `functionClass` varchar(256) DEFAULT NULL COMMENT '权限类型：\n            menu //菜单权限\n            action //操作、按钮权限',
  `functionCode` varchar(16) DEFAULT NULL COMMENT '功能编码',
  `url` varchar(256) DEFAULT NULL COMMENT '功能对应URL',
  `level` int(4) DEFAULT NULL COMMENT '对于菜单有level概念。层级从1开始。\n            1：一级菜单，2：二级菜单。',
  `iconPath` varchar(256) DEFAULT NULL COMMENT '图标路径',
  `sequence` int(4) DEFAULT NULL COMMENT '排序号',
  PRIMARY KEY (`id`)
) ENGINE=ndbcluster DEFAULT CHARSET=utf8 COMMENT='功能表';

-- ----------------------------
-- Records of functions
-- ----------------------------
INSERT INTO functions VALUES ('PF10001', 'root', '用户中心', '用户管理、权限管理与授权', '', null, null, '2', 'silk/house.png', '2');
INSERT INTO functions VALUES ('CF10001', 'PF10001', '用户管理', '用户管理', 'com.demo.gwt.client.ui.UserUI', '', '', '1', 'silk/layout_content.png', '1');

-- ----------------------------
-- Table structure for `member_prim`
-- ----------------------------
DROP TABLE IF EXISTS `member_prim`;
CREATE TABLE `member_prim` (
  `id` varchar(32) NOT NULL COMMENT '会员ID',
  `loginName` varchar(32) NOT NULL COMMENT '登录名称',
  `loginPassword` varchar(32) DEFAULT NULL COMMENT '登录密码',
  `lifeCycleStatus` varchar(16) DEFAULT NULL COMMENT '账号状态：\n            created //初创\n            activated //已激活\n            baned //禁用',
  `memberClass` varchar(16) DEFAULT NULL COMMENT '会员类型。\n            s //seller 销售人员\n            p //provider 酒店商家\n            c //customer 消费者\n            o //operator 运营管理员',
  `email` varchar(128) DEFAULT NULL COMMENT '电子邮箱',
  `mobileNum` varchar(32) DEFAULT NULL COMMENT '手机号码',
  `lastIp` varchar(64) DEFAULT NULL COMMENT '最后登录IP',
  `lastLogin` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=ndbcluster DEFAULT CHARSET=utf8 COMMENT='会员基本信息表';

-- ----------------------------
-- Records of member_prim
-- ----------------------------
INSERT INTO member_prim VALUES ('f066aae3df3b456ba0964ccd67b9ce78', 'JUnittester', 'd4483332a84b79d6ec9998ea79792f8d', null, 'c', null, null, null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('7651dae710bc4dae855e12b8cec32672', 'aaasdf', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'sss@111.com', '13739082445', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('30a13dc1f1ab48a68f27f42fc6b84677', 'lihui157', 'b4ba36575a7ee293177a46e03fe8fda5', 'created', 'c,s,p', '466833332@qq.com', '18684693523', null, '2011-12-01 14:36:32');
INSERT INTO member_prim VALUES ('2d94e2117bc14c57a1db8224c8be8ff3', 'yhrdyh', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'jyt@tgefsf.com', '13549641924', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('f292bf86d01f42e6b45baad7206149ea', 'DWge', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'efef', 'json{\"mobileNum\":\"fe\"}', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('cadd9fb43baa4c57b59aa750b1f60759', '18555555555', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'bvgt@sddd.jj', '18555555555', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('f288ef9f9b2a47d69aeed83f00120167', 'JUnittest1328082812359', '5f4dcc3b5aa765d61d8327deb882cf99', 'created', 'c,s,p', null, null, null, '2012-02-01 15:53:56');
INSERT INTO member_prim VALUES ('9183bc89e13c48ebacd1b79ad3a5ea7a', 'JUnittest1328146205750', '5f4dcc3b5aa765d61d8327deb882cf99', 'created', 'c,s,p', null, null, null, '2012-02-02 09:28:47');
INSERT INTO member_prim VALUES ('6a168710af9d44179673c8df675bf6c4', 'gersg11', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'greggd@tgew4ftg.com', '15071997371', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('170f32c4ab8d47d7808987ae30b6bf3c', '13918225359', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'py88@live.com', '13918225359', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('6b9833086f854a46ac46ae4b8f443694', '130472444', 'b59c67bf196a4758191e42f76670ceba', 'created', 'c', null, '13047248555', null, '2011-12-05 12:10:21');
INSERT INTO member_prim VALUES ('d061ef47c3744382b67de8ecea3969d4', 'al', '555e6fa73a1d77eaf6d77cfc54dfcb64', 'created', 'c,,p,s,', '570981368@qq.com', '13667376851', null, '2011-12-12 22:17:22');
INSERT INTO member_prim VALUES ('d623451e7d1e40118bb1834f58051c74', 'JUnittest1328163386046', '5f4dcc3b5aa765d61d8327deb882cf99', 'created', 'c,s,p', null, null, null, '2012-02-02 14:15:37');
INSERT INTO member_prim VALUES ('3dc12762dc624eea8a45c011fbb62146', 'dedesa', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '11ddwwdw@dw.com', '13047211200', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('dab027cb6c9a489bbab45f1566f61984', 'dwdasda', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '30420s3fe08@qq.com', '13047212531', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('6472195bff924752949a37ac9be7a79f', 'jgowjo', '71b596cb42ee254f7416043d184fc970', 'created', 'c', 'pokpjfe@feo.fe', '13487884848', null, '2011-12-16 16:50:33');
INSERT INTO member_prim VALUES ('afb67ab161784abcb58c3ce0a9201b01', 'fefe', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'dfwwdf@dw.com', '13047214857', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('68d5f1abe8594922ba30acacfe3d21ce', 'yh165', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c,s,p', 'aa@qq.com', '18245432589', null, '2012-01-18 15:24:55');
INSERT INTO member_prim VALUES ('a724f7aaa08042a8a0ef7459e348545b', 'gersg7', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c,s,p', 'grtdg@tgejh4w.com', '15072995373', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('7c87c21aaa5a46049d13ac5dde530695', 'kf1012', '9e24536e39149b12f692ee658d4a9bcb', 'created', 'c,,p,s', 'kf1012@kuailelife.com', '13512385456', null, '2011-12-20 10:59:10');
INSERT INTO member_prim VALUES ('4c79b4a12b494d29bb15f5eb7b773f99', 'JUnittest1328082812812', '5f4dcc3b5aa765d61d8327deb882cf99', 'created', 'c,s,p', null, null, null, '2012-02-01 15:53:57');
INSERT INTO member_prim VALUES ('c4fa170f242146d5ab71de1fb4769b6c', 'JUnittest1328146398421', '5f4dcc3b5aa765d61d8327deb882cf99', 'created', 'c,s,p', null, null, null, '2012-02-02 09:31:58');
INSERT INTO member_prim VALUES ('da843ebb56b747f6969e206a0459436b', 'sqsq', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '30420see8@qq.com', '13047211933', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('1b50e89da841442bbf95702c45339b6b', '15844444444', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'wfews@fef.gre', '15844444444', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('6ccb38aea48c47389c74f11e08f682d0', '18611774653', '25d55ad283aa400af464c76d713c07ad', 'created', 'c,,p,s', '18611774653@qq.com', '18611774653', null, '2011-12-13 11:35:03');
INSERT INTO member_prim VALUES ('e9cd2f9f3b2f4b68a54c072f53d000ba', 'JUnittest1328146343343', '5f4dcc3b5aa765d61d8327deb882cf99', 'created', 'c,s,p', null, null, null, '2012-02-02 09:31:03');
INSERT INTO member_prim VALUES ('8f34deaf9df7451b85f2e49236a7e781', 'yh', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c,p', 'dd@fdd.com', '18229564845', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('8fc70deed0a949bfa959c8e9e0f0eb57', '130', '81dc9bdb52d04dc20036dbd8313ed055', 'created', 'c,s,p', 'ffff@qq.com', '13012345678', null, '2011-12-01 15:43:13');
INSERT INTO member_prim VALUES ('f33cea563e0d4050aa37ddea3638c4ad', '111111', 'e342dbd220f2784fd365bc043106f2ed', 'baned', 'c,s,p', '4351212@qq.com', '13808414154', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('3caffb66adef42299e0e69898f78849c', 'zuowenhao', 'b62b2e0cca16c33151a44f9a6ed203d9', 'created', 'c', 'ssssss@126.com', '18229992056', null, '2011-12-01 16:53:58');
INSERT INTO member_prim VALUES ('88aaa7915e574b2ead9496f2c1a4c5ec', 'fefee', 'b0baee9d279d34fa1dfd71aadb908c3f', 'created', 'c', null, '18744444444', null, '2011-12-05 13:57:15');
INSERT INTO member_prim VALUES ('1bda84b831e747869c534bbae55efc55', 'fefee', 'b0baee9d279d34fa1dfd71aadb908c3f', 'created', 'c', null, '18744444444', null, '2011-12-05 14:01:53');
INSERT INTO member_prim VALUES ('fb64096e0061414ebbad1fee003a42ad', 'pwd1', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'rainbowyinhui@163.com', '18229724543', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('252b0210072a47159f883d48dd49deb2', 'hfdhht', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'htd@yr5.com', '13921345456', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('37f1cbe9dc984b7b92b64136e61dbbf3', 'maggie', 'e6414492b13847fa070bf42d07190e04', 'created', 'c,,p,s', 'mllmaggie@foxmail.com', '15096085890', null, '2011-12-15 17:53:45');
INSERT INTO member_prim VALUES ('4635dd5aaf874c2a9ffb160bd4755246', 'fefe', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'dfwwdf@dw.com', '13047214857', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('9109b98611a44d46a20fe99b583eb0e6', 'fefw', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'fwfw', 'fedfe', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('2f2341388d754b84aafc76ad4e099d68', 'sadf', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'sadf', 'sadf', 'sadf', 'sadf', '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('76e4c654b1864d5b83a7e02b22f8519c', 'wangxv7', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c,s,p', 'gewgfagz@wagzx.com', '13876489744', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('a5c94bfda0fd4ff890d2e3dc8e85e293', '测试号1', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c,s,p', 'xiongkissme@163.com', '13973159853', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('09453d4025474969aa796e44ddafd2fe', '14712345678', '58c90aa9263c8077a2c794ae4634ab64', 'created', 'c,s,p', '14712345678@qq.com', '14712345678', null, '2011-12-05 14:37:22');
INSERT INTO member_prim VALUES ('a2dbd354f4cc45ada6535282e448ec88', '13117312879', '62c8ad0a15d9d1ca38d5dee762a16e01', 'created', 'c,,p,s', 'fdsa@fdas.com', '13117312879', null, '2011-12-13 13:47:28');
INSERT INTO member_prim VALUES ('518d5c37400f403c9da84a45c925cf92', 'hahyi123', '23d058659345cbf5ce49ce3f9a9cb4bc', 'created', 'c', 'javasoftit@163.com', '18684809879', null, '2011-12-31 15:26:28');
INSERT INTO member_prim VALUES ('2e464381d3a84183941da11e7a38682a', 'rosemary0915', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c,s,p', '122687678@qq.com', '15974948252', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('aecd899277e24e41b2ce8eb04d4cced3', 'adminx', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'greggd@tgewz4tg.com', '15071997373', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('f3e2820493074aa0b4d7a33f833ac66c', 'dedesa', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '11ddwwdw@dw.com', '13047211200', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('4542e2d9bc5144ec81d00e399498321f', 'shaofei', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c,s,p', 'abc@qq.com', '18673114210', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('b7fac8750ca14e46aea02ec315df3e2a', '13047444444', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'ddw@rfe.ty', '13047444444', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('c364220d20f34bfea9fcd2f8d8782aa7', '1234gsrt', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'dd@ddqq.aa', '18255555555', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('9b3f693fcbac47dcaea37f00b3374743', 'feyug', '71b596cb42ee254f7416043d184fc970', 'created', 'c', 'fhegy@few.fe', '13588449874', null, '2011-12-16 16:41:57');
INSERT INTO member_prim VALUES ('840b2ae3df01494f971442ef70893a51', 'fsegef', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c,p', 'drsh@tgerg.com', '15072947374', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('639aacab2a4c4257b56b660f9ddeb28f', 'kyo1468', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c,s,p', '20887528@qq.com', '18674886066', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('b669267f6a8d47ef891d6f0679cb95ce', 'whzuo', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c,p', 'asaa@126.com', '18229992044', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('98e92131de3946c2baa20f538ce5b6c1', 'yh167', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c,s,p', 'dd@dd.ddd', '18245432956', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('90d56818efdc4763aff82b131daf695b', 'JUnittest1328082686953', '5f4dcc3b5aa765d61d8327deb882cf99', 'created', 'c,s,p', null, null, null, '2012-02-01 15:51:51');
INSERT INTO member_prim VALUES ('b342714c30554bfc92c84740622f0784', 'yhrdyh', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'jyt@tgefsf.com', '15072454374', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('e408077d2d59468ab51ea7b7a0e5dd95', '1212', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c,s', 'dfbefe@deu.com', '13047211941', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('a6e4083bd6004b23b244ebb464424ec0', '130484', 'b59c67bf196a4758191e42f76670ceba', 'created', 'c', null, '13084444444', null, '2011-12-05 12:01:05');
INSERT INTO member_prim VALUES ('6e0af4ef54d644ce89affea776f17242', '18607311234', '1c63129ae9db9c60c3e8aa94d3e00495', 'created', 'c', '12334@qqq.com', '18607311234', null, '2011-12-13 13:43:10');
INSERT INTO member_prim VALUES ('6883ec9fbe29496b8e558fff868c90b9', 'JUnittest1328146335437', '5f4dcc3b5aa765d61d8327deb882cf99', 'created', 'c,s,p', null, null, null, '2012-02-02 09:30:55');
INSERT INTO member_prim VALUES ('8f8354965c27497d9b3dc4badba5676e', 'fefw', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'fwfw', 'fedfe', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('32c341d1b7c54186aa606509d3387ab5', 'DWDWDssq', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'DWDWDEssq', 'json{\"mobileNum\":\"DWDWssq\"}', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('0ef7131ed3c14e7b84f6c580259d84c0', 'JUnittest1328082863328', '5f4dcc3b5aa765d61d8327deb882cf99', 'created', 'c,s,p', null, null, null, '2012-02-01 15:54:47');
INSERT INTO member_prim VALUES ('90d890553b1f42cb84a6bec812884067', '13848745488', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'fees@ff.th', '13848745488', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('3871cdcceddd4aafb95aa7e6d9270dda', '130484', 'b59c67bf196a4758191e42f76670ceba', 'created', 'c', null, '13084444444', null, '2011-12-05 12:01:18');
INSERT INTO member_prim VALUES ('012abe3f8ed74af2ba6267d53868157e', '15411215465', 'cd13b6a6af66fb774faa589a9d18f906', 'created', 'c,,p,s', '15411215465@qq.com', '15411215465', null, '2011-12-16 17:53:23');
INSERT INTO member_prim VALUES ('bcac3c791c02455cb1102c2b89d2a679', 'kyo14688', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c,s', '208875218@qq.com', '13117319576', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('15ac007666bf456699c08b9d99ffb50e', '13511111166', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'defe@fe.tyh', '13511111166', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('d6fabd5069ae4dd5a5daaa6178fbf9a1', 'JUnittest1328146220968', '5f4dcc3b5aa765d61d8327deb882cf99', 'created', 'c,s,p', null, null, null, '2012-02-02 09:29:02');
INSERT INTO member_prim VALUES ('c82fd1710b4947c4855119f952a29cbc', 'yhrdyh', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'jyt@tgefsf.com', '15072454374', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('2695daf0707e4d2fa1d28f218c42663b', 'yh169', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'dd@ddgh.ccd', '18245432958', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('c871149860fc4bc6a3ba16f89c240950', 'DWge', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'efef', 'json{\"mobileNum\":\"fe\"}', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('e372e489aaa14f55b7d6a7375930367a', '如夫人', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '而过', '纷纷', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('d313016122ae4c869d76ea57945a1434', '12345678909', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', null, null, null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('f8d07f4ebc4d452cad60667b85e51e4e', 'fefee', 'b0baee9d279d34fa1dfd71aadb908c3f', 'created', 'c', null, '18744444444', null, '2011-12-05 14:01:18');
INSERT INTO member_prim VALUES ('f33273c8b4bd4676980f035a7ca78272', 'fefw', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'fwfw', 'fedfe', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('22d71d2a128042bfb5c8c4c49187d387', 'ver1', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'fewgsy@fse.cw', '18255555555', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('2821f3813c6c4582bcc44be804fb5c48', '18700945341', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'xiongkunjop@126.com', '18700945341', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('f53cf2deadbe404eb3d2090887e66a13', '13433333333', '25d55ad283aa400af464c76d713c07ad', 'created', 'c,,p,s,', '13433333333@qq.com', '13433333333', null, '2011-12-09 21:17:31');
INSERT INTO member_prim VALUES ('fbac617aeee244dd86bb44d95867debd', 'wzj1017', '2b43acb545c89e9c14435a5fb9e49dec', 'created', 'c,,p,s', '467052955@qq.com', '15575176498', null, '2011-12-19 22:48:55');
INSERT INTO member_prim VALUES ('3274d9b6705948b684f300cd7da424eb', '111', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'o', '11@qq.com', '13654278945', null, '2012-01-04 11:55:34');
INSERT INTO member_prim VALUES ('b71591c944284e21a5be0a14ed548b5a', 'fds', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c,p', null, '18674886066', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('1f02a9c10e904a6d9e60b0480c055216', '13047223901', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'fwewe@dfwrf.com', '13047223901', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('3cb7178c896241538304c10a5a2c113d', 'scott1', 'be38f603f3f61d0b983994a84b9741ac', 'created', 'c', '111@126.com', '18684865995', null, '2011-12-13 13:33:02');
INSERT INTO member_prim VALUES ('501b7c452d8b4569afd6937324d31c20', '王一', '25d55ad283aa400af464c76d713c07ad', 'created', 'c', 'dd@qq.com', '13612300012', null, '2011-12-21 09:11:42');
INSERT INTO member_prim VALUES ('42a18ae0997f4c3895d11edac772cc93', 'JUnittest1328082812781', '5f4dcc3b5aa765d61d8327deb882cf99', 'created', 'c,s,p', null, null, null, '2012-02-01 15:53:57');
INSERT INTO member_prim VALUES ('cb8a28d1145d4cca9c9a32cfe24dc5ed', 'aaaaa', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c,s', 'dfwe@sss.com', '13042001081', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('9a1eccbe015841a58cf259a1f754e363', 'AAADSQD', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'wdgy@AA.COM', '13047211111', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('301f80322f9f402ab43cfb2d9e8176a4', 'dedesa', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '11ddwwdw@dw.com', '13047211200', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('5d70bc017f0c43c8a0daacfebce5bd15', 'dedesa', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '11ddwwdw@dw.com', '13047211200', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('64bd0cedbebb4036937a7ed3039da642', 'dedesaSW', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '11ddwFEwdw@dw.com', '13041241200', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('2fa2816703d94bb1b51359157a8d7f7a', '123456aaa', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c,s,p', '13688775566@163.com', '13688775566', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('ce98e75ef8d145cf9d007f9f420b2ca8', 'kkk', 'c33367701511b4f6020ec61ded352059', 'baned', 'c', '1555555@qq.com', '13777777777', null, '2012-02-03 09:49:32');
INSERT INTO member_prim VALUES ('09319f11d9c94625a6e87daad0cc0477', 'DWDWDssq', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'DWDWDEssq', 'json{\"mobileNum\":\"DWDWssq\"}', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('e8883824dd9c4feda82208b63c6a8861', 'sqsq', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'sasq', 'json{\"mobileNum\":\"sqsw\"}', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('f2caaee7bac544fca0429b0b58376a4c', '13243434335', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '22@qq.com', '13243434335', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('8625ee755988481ab7a653bd800638d0', 'JUnittest1328146384953', '5f4dcc3b5aa765d61d8327deb882cf99', 'created', 'c,s,p', null, null, null, '2012-02-02 09:31:44');
INSERT INTO member_prim VALUES ('592b2923a3df4c739cf3d9306625e010', '1q', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '12ee@qq.com', '18673114212', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('e0e1a6818e7c4a17b4bf0d03d9dd72f3', 'dedesa', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '11ddwwdw@dw.com', '13047211200', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('456730e65d3444479185249cbce15471', '13012345679', '25d55ad283aa400af464c76d713c07ad', 'created', 'c,,p,s', '13012345678@qq.com', '13012345679', null, '2011-12-09 11:17:37');
INSERT INTO member_prim VALUES ('845b8e8d333146d28aa2b6ec481c6703', 'long', '71b596cb42ee254f7416043d184fc970', 'created', 'c,,p,s', 'wdwhdu@cef.dw', '15498945878', null, '2012-02-02 15:59:24');
INSERT INTO member_prim VALUES ('6ac6a9cd803c4b8d8245ef4407bad86c', 'shaofei3', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c,p', 'shaofei@chinaonenet.com', '18673114214', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('be39f37654b94ad9a27217e246d894e4', 'yhrdyh', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'jyt@tgefsf.com', '15072454374', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('ed7e19b2cb0443daaccbe637d0a865dd', 'dwdasda', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '30420s3fe08@qq.com', '13047212531', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('833609adf5934bdfbd0142233b500921', 'JUnittest1328082839875', '5f4dcc3b5aa765d61d8327deb882cf99', 'created', 'c,s,p', null, null, null, '2012-02-01 15:54:24');
INSERT INTO member_prim VALUES ('6e6007466ade4ea0a868ad35bb20ab37', 'JUnittest1328146357718', '5f4dcc3b5aa765d61d8327deb882cf99', 'created', 'c,s,p', null, null, null, '2012-02-02 09:31:17');
INSERT INTO member_prim VALUES ('84e6e533bbfa48499ab5623bece6549a', '15812111111', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'fese@frf.fr', '15812111111', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('e32b992f90eb4d518dc4a9bff7d5e2ed', 'sqsq', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'sasq', 'json{\"mobileNum\":\"sqsw\"}', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('f1f45fec497c4d8b84c4130f61b5941f', '15000000000', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'wdwf@dfw.com', '15000000000', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('ac17fb609ebf461d8c484ab1cb684c71', 'sdfsdfsdf', 'd41d8cd98f00b204e9800998ecf8427e', 'created', 'c', 'ssss@126.com', '18229992055', null, '2011-12-01 16:51:51');
INSERT INTO member_prim VALUES ('a0fb51a6607d4cd6a4dfd75e94c22b4f', '1823333gresg3333', '6eaddf5318dbb21e557536debff818d1', 'created', 'c', 'wangrfxv33321@fgsdf.com', '15073994577', null, '2011-12-16 10:53:50');
INSERT INTO member_prim VALUES ('7fba5b567a534b77ab01872aab3de1c3', 'dedesa', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '11ddwwdw@dw.com', '13047211200', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('a1bf03bfed5643a3ba0aba9d072c6c54', 'dedesa', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '11ddwwdw@dw.com', '13047211200', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('fe0bbc828c564710b3d8410b44cb4788', 'dedesa', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '11ddwwdw@dw.com', '13047211200', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('6c4816e117e04b6dbcaf2aaf3e24008f', 'veresdd', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'fewdgsdsdy@fse.cw', '18288888888', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('62383781175f4458badbf8130e87da6f', '熊向上', 'be38f603f3f61d0b983994a84b9741ac', 'created', 'c', 'werve_people@126.com', '18684865993', null, '2011-12-13 13:29:23');
INSERT INTO member_prim VALUES ('114f8720e2634b8e9fd65990e34b51ec', '13651233455', 'cd13b6a6af66fb774faa589a9d18f906', 'created', 'c', '13651233455@qq.com', '13651233455', null, '2011-12-16 16:34:42');
INSERT INTO member_prim VALUES ('aa45121365c241158a705f5c9be81eb5', '4567891342fdss', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c,s,p', '20881432328@qq.com', '13117312871', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('eacc82d93a4842b8b05ea6b7922e7cc7', 'yhtester', 'cd13b6a6af66fb774faa589a9d18f906', 'created', 'c', '15912345679@qq.com', '15912345679', null, '2011-12-16 10:19:34');
INSERT INTO member_prim VALUES ('1ec6eea5e4b44106bf6ba1ca78a2a85d', 'dfdddd', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'dadwdwdq', 'dweddwe', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('e0a368e2eb2d4f85bd8572475a6d98a0', 'adminhrt', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c,p', 'wangxv3aa121@fgsdf.com', '15073997377', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('8914185712464e15bfd63e4be0da80ca', '18566666666', 'c8837b23ff8aaa8a2dde915473ce0991', 'created', 'c', '123566@qq.com', '18566666666', null, '2011-12-13 11:49:04');
INSERT INTO member_prim VALUES ('eb2ff1947408413c87b9a0f6bc801524', 'yhtester1', '25d55ad283aa400af464c76d713c07ad', 'created', 'c', '15612345679@qq.com', '15612345679', null, '2011-12-16 10:25:19');
INSERT INTO member_prim VALUES ('d1e5b7a1061a4c698408dd3af6e61b9f', '18674813780', 'caf34bf04286f7aac7012b749eda68c3', 'created', 'c,,p,s', '359081714@qq.com', '18674813780', null, '2011-12-29 15:08:49');
INSERT INTO member_prim VALUES ('fdc4b7f2db6540bdbd69af8bb574779d', 'shuiyue', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '28178526564@163.com', '18684697701', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('1c410a1589454717a39e6a68b4320525', '1234gr', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'ff@ddg.dd', '13855555555', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('9e352572854d4db59a294c755d3c0ebc', '15111464956', '1285384ddfb057814bad78127bc789be', 'created', 'c,,p,s', '349842839@qq.com', '15111464956', null, '2011-12-16 15:51:39');
INSERT INTO member_prim VALUES ('452e9046250c424198613648aa259b1f', '11', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c,s', '11@qq.com', '13211111111', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('e1b65ae63c5b466c80fef771642de9b4', 'rsgsresg', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c,p', 'gdrg@rfe.com', '13542354354', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('5705a602985347b4bef4e159834022f0', 'ssasas', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'fthfhtf', 'json{\"mobileNum\":\"hthfhfth\"}', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('aa46a6678d9c4c6194b6c7165b8adca6', '1234654', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c,p', '12312@432141.com', '18674886666', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('a807b11c0f114f899aaf55e72beaecf8', '平添', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', null, '15066666666', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('c641e98bd01045159a5ed982e30c63ec', 'kf1010', '528983db3279af519742d8ff5d6bf55b', 'created', 'o', 'kf1010@kuailelife.com', '13600000001', null, '2011-12-20 10:49:46');
INSERT INTO member_prim VALUES ('1e2dfdb6cbb94444ab921a27d13eeef8', 'tt', '5aa83310d9dcf6ee6ac94ac69e5fe417', 'created', 'c', '11111111@1.com', '13611111111', null, '2011-12-20 21:34:54');
INSERT INTO member_prim VALUES ('cc9ec74937f84d4496d24084183b7d22', 'JUnittest1328146411531', '5f4dcc3b5aa765d61d8327deb882cf99', 'created', 'c,s,p', null, null, null, '2012-02-02 09:32:11');
INSERT INTO member_prim VALUES ('2f918431ca8c40d694d857df5afc32dc', '2222', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '1111@ss.com', '13047211905', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('ed2b6056b7e74d4abea5519f838b88be', 'fefw', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'fwfw', 'fedfe', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('acbc203fe7ea412bae6e98103ae48c1b', '13047211901s', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'aaa@asdw.dd', '18888888888', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('ee49925343e44933aa20188912572137', '15116365916', '9e8c9dc1d4f74e170cad67cbba2a89a0', 'created', 'c,,p,s', '1012619458@qq.com', '15116365916', null, '2011-12-13 16:52:10');
INSERT INTO member_prim VALUES ('60588ee649034ec88560a0f3fca22fab', 'JUnittest1328082812015', '5f4dcc3b5aa765d61d8327deb882cf99', 'created', 'c,s,p', null, null, null, '2012-02-01 15:53:56');
INSERT INTO member_prim VALUES ('d6bedb0b30544f0696f49aaa3b1dba0c', 'dedesa', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '11ddwwdw@dw.com', '13047211200', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('753b1a3a3cfd4f4bbb1fe5cc09649aa3', 'fefw', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'fwfw', 'fedfe', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('9cbd9971a7ba4c4f9799bff2ef5e4d91', 'wangxv3', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c,p', 'hyt@frc.com', '13787412365', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('4f31578c88dc40e79a1a4930bf57d390', 'JUnittest1328146262906', '5f4dcc3b5aa765d61d8327deb882cf99', 'created', 'c,s,p', null, null, null, '2012-02-02 09:29:43');
INSERT INTO member_prim VALUES ('a07dad7f42c7448586f3a70f087b21ab', '13117312870', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '208814ww32328@qq.com', '13117312870', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('34c56c64b526422ba11c72918b03f2ce', '12345678901', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', null, null, null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('1e1d768becf047968e6dd8aaec0c9100', 'kuaileshenghuo', '46b60acf681cd4eaefcb29da84ee1fa0', 'created', 'c', 'nicejulie@126.com', '18611774652', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('80e2e47d1f7d4e5ba7dce2d9a5bfc248', '13212312315', 'cd13b6a6af66fb774faa589a9d18f906', 'created', 'c', '13212312315@qq.com', '13212312315', null, '2011-12-16 16:31:17');
INSERT INTO member_prim VALUES ('4483d2789b76458297dce84d69f2a118', 'JUnittest1328082892968', '5f4dcc3b5aa765d61d8327deb882cf99', 'created', 'c,s,p', null, null, null, '2012-02-01 15:55:17');
INSERT INTO member_prim VALUES ('d7d62320d2584ebcbb34ef5b0cd23638', 'test', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '164222786@qq.com', '13549654901', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('903ee2bdaf654e3f8a6b456ede8eade8', '13041244515', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'few@ffef.com', '13041244515', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('29e93e4bf38b43e99b81bd818cbd976d', 'xj', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'o', 'xj@163.com', '13521346789', null, '2011-12-16 08:55:21');
INSERT INTO member_prim VALUES ('a69a1ebb463d4a18b1ff3bfad9573214', 'JUnittest1328082913500', '5f4dcc3b5aa765d61d8327deb882cf99', 'created', 'c,s,p', null, null, null, '2012-02-01 15:55:37');
INSERT INTO member_prim VALUES ('82b7bb22f31149d3923915cdb1e85641', '4567891342fds', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '2088432328@qq.com', '13117312872', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('62742c8de60c47c0bfcd5a5dfb4d5d6a', 'dedesa', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '11ddwwdw@dw.com', '13047211200', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('c495aee3ceeb4290af6f35e25d158652', 'fefe', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'wfwe', 'json{\"mobileNum\":\"1854\"}', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('62246b0d034e450db9a3123883f00554', '1304e1e', 'b0baee9d279d34fa1dfd71aadb908c3f', 'created', 'c', 'dwqdq@fefe.few', '13045843221', null, '2011-12-05 14:17:46');
INSERT INTO member_prim VALUES ('35993c7ef88642f5a2a1bedd518a41ff', 'yh163', 'c33367701511b4f6020ec61ded352059', 'created', 'c,p', 'rainbowyinhui@163.com', '18229724543', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('dff8fe102a1543e9955062552c8a234b', 'rosemary', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c,s,p', '273612@qq.com', '13187393464', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('0e9110533f074505a940402d4cc6be45', 'sqsq', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '30420see8@qq.com', '13047211933', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('21690cdfe753416a9836f0148aadde09', 'fefw', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'fwfw', 'fedfe', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('1dd04bce1eb54089add177ea3c3f10aa', 'yh164', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'aa@11.cc', '18245432587', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('2f161f0a535e4201a84c82fd2d4d1b6f', '00000sassz', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '0000s0@s.coi', '13047211910', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('be8af293914e4a78985fd28606aed1d9', 'dedesa', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '11ddwwdw@dw.com', '13047211200', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('116153df662345828511e7d993fcc06b', 'zuowh', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c,p', '564216439@qq.com', '15893883026', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('5a2b15eb19ee48c0bd939f524560b445', '137', '70095a88a547803b8afb9d520439144a', 'created', 'c', 'fff@qq.com', '13712345678', null, '2011-12-01 14:37:08');
INSERT INTO member_prim VALUES ('5fa31a66d42b4a5ea5ebc22ac0fd68a9', 'dwdasda', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '30420s3fe08@qq.com', '13047212531', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('1e4cb9fe59aa410087676fd062b47f49', 'DWDWDssq', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'DWDWDEssq', 'json{\"mobileNum\":\"DWDWssq\"}', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('406e2ea0a54645a7b9341ea1fa72f3a7', '13048582222', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'SSS@DFEF.RG', '13048582222', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('43038a994b994bbe9564f9151783c49a', '13412345678', '079c5d5ba7003fbcdefb27f85573bc72', 'created', 'c', null, '13412345678', null, '2011-12-12 10:41:20');
INSERT INTO member_prim VALUES ('57ac4e3f09524d959d57ae5d23bb1734', 'ddwdw', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'DDFFEW@DWE.COM', '13594848945', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('e4420ff8bc5542dc8105491d7aea3c83', 'dd', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'aa@111.com', '13739082443', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('6c1c8767ce1c46829c9074285075a7ef', '13548748484', '71b596cb42ee254f7416043d184fc970', 'created', 'c', 'fefw@fe.fe', '13548748484', null, '2012-01-18 17:21:23');
INSERT INTO member_prim VALUES ('5425085e839a4a10901c09fc0fcb1200', 'JUnittest1328146371718', '5f4dcc3b5aa765d61d8327deb882cf99', 'created', 'c,s,p', null, null, null, '2012-02-02 09:31:31');
INSERT INTO member_prim VALUES ('4ab41d4eb4ff4799aabf77c0910886e7', '2011-09-29', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '30420s308@qq.com', '2011-09-30', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('00b3fad58dba4b33a6e899cf640b5aed', '13333333333', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'dwdwd@ffe.com', '13333333333', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('40624110850e45a6b01624ec77d122cd', '18229992045', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'ss@111.com', '18229992045', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('5c072112e0854f69bd8d0b872f5290ea', '13047211901', 'b0baee9d279d34fa1dfd71aadb908c3f', 'created', 'c,,p,s', null, '13047211901', null, '2011-12-05 12:07:54');
INSERT INTO member_prim VALUES ('b1a7a287126a4c348232f97f255d5f29', '王玉佳', '0d195973bf7812d22ae147bbf10ea93b', 'created', 'c', '399505308@qq.com', '13574405308', null, '2011-12-13 13:53:24');
INSERT INTO member_prim VALUES ('0b8c72b5b77a4cdeb5d4891c5d5f1d9b', 'JUnittest1328146216406', '5f4dcc3b5aa765d61d8327deb882cf99', 'created', 'c,s,p', null, null, null, '2012-02-02 09:28:57');
INSERT INTO member_prim VALUES ('cd068ce9e099451c821e405697f21d6b', 'BFDZXDFB', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'GDG@TGED.COM', '15071997374', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('849d7ead84864d12b7198ca269c67f26', 'dww', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'dwd', 'json{\"mobileNum\":\"swdd\"}', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('46b08e1a103f467d8bfa56d8678f4429', '13047218555', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'FWEFW@FFEWF.COM', '13047218555', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('08700746fd5d48ce800ed4dc4acea635', '15478954684', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'aa@ss.ddd', '15478954684', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('0283506e3b504d48b7e0a47d2c03850b', 'JUnittest1328146339062', '5f4dcc3b5aa765d61d8327deb882cf99', 'created', 'c,s,p', null, null, null, '2012-02-02 09:30:59');
INSERT INTO member_prim VALUES ('b7f70a9065b64962b4e9d65983525757', '1q2', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'dd@dd.ss', '18212345678', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('7b0a08ddbcc64c65b390a16b5ac384e3', 'sadf', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'sadf', 'sadf', 'sadf', 'sadf', '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('7ad28324bf8f4924b902441cb1dea5f8', 'fefwf', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'frgrg', 'json{\"mobileNum\":\"ewfwfwe\"}', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('cb01c497255f453694e83a13d423fcdd', '13514148888', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', null, '13514148888', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('158384736bc94c92aad4861e5a6971b0', '18744444444', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '11fe@dew.ef', '18744444444', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('b82cd3359cc644e1be90385c0e086019', 'test1', '25d55ad283aa400af464c76d713c07ad', 'created', 'o', 'ss@qq.com', '13512345678', null, '2011-12-14 14:25:35');
INSERT INTO member_prim VALUES ('396ec17a1cf34eb285099ee933b5db50', 'JUnittest1328082878796', '5f4dcc3b5aa765d61d8327deb882cf99', 'created', 'c,s,p', null, null, null, '2012-02-01 15:55:03');
INSERT INTO member_prim VALUES ('821aa18038db40fe8ac1a3770021273e', '456789', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '2088752118@qq.com', '13117312875', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('697d72ffd80c4aafb41088eed3d06e0c', '18239874567', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '11@s.ccc', '18239874567', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('b5108aa9537b4440843eda3894d8826c', 'gersg8', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c,s,p', 'grtjgydg@tgejh4w.com', '15071995373', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('196a811203a945ad8628b642181f9423', '13047211901', 'b0baee9d279d34fa1dfd71aadb908c3f', 'created', 'c', null, '13047211901', null, '2011-12-05 13:55:49');
INSERT INTO member_prim VALUES ('e70dcd3913c34156a181605de20e74f4', 'yh168', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'dd@dd.cc', '18245432957', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('86c339dbbdb447cabb57468216af5520', '00000sass', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '00000@s.coi', '13047211900', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('03a90c794438471ca9a17688205210f2', 'gersg6', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'grtdg@tge4w.com', '15072997373', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('01eb9fd602fe42c3afd926aa63a0ce08', 'aa', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'sss@111.com', '13739082443', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('9162da7cb3c941a18ed921b8e34f1a08', '18684953363', 'b26844ae7401d6c33b10cdff1706b056', 'created', 'c,,p,s', '251389252@qq.com', '18684953363', null, '2011-12-19 12:21:17');
INSERT INTO member_prim VALUES ('6776479fc9ab4d15bcc6a98c1db4ff9c', 'JUnittest1328082878828', '5f4dcc3b5aa765d61d8327deb882cf99', 'created', 'c,s,p', null, null, null, '2012-02-01 15:55:03');
INSERT INTO member_prim VALUES ('f8f632836e0e43589caad04ff1686bac', 'JUnittest1328082910625', '5f4dcc3b5aa765d61d8327deb882cf99', 'created', 'c,s,p', null, null, null, '2012-02-01 15:55:35');
INSERT INTO member_prim VALUES ('0421093d155e4d7c8f294a0d6b971dcf', 'sssddw', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '304200108@qq.com', '13047211903', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('199bc633cefd41f9bebb029600594d4e', 'wangxv', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'gdrfeg@tg111e.com', '15074927373', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('c772d18ce8ff483c931b9c60432323ae', '182', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'ff@ss.dd', '18229724544', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('012e1eb0388c4a4fa7ebe96c65a7b92e', 'fefee', 'b0baee9d279d34fa1dfd71aadb908c3f', 'created', 'c', null, '18744444444', null, '2011-12-05 14:00:59');
INSERT INTO member_prim VALUES ('19fd973eaa34467c84b132753e2b9e84', 'test1', 'c33367701511b4f6020ec61ded352059', 'created', 'o', 'test@qq.com', '1352613456', null, '2011-12-14 14:12:40');
INSERT INTO member_prim VALUES ('bbace76ef9c24a67a28d5d97af188930', 'xiaomi', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '123456@qq.com', '13087393767', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('3706b197bb894cc1bcb667f9342a8a50', '13611234567', 'cd13b6a6af66fb774faa589a9d18f906', 'created', 'c', '13611234567@qq.com', '13611234567', null, '2011-12-16 10:37:40');
INSERT INTO member_prim VALUES ('adab1e5debce470182efdc32d95b62d8', 'dsdds', 'cd13b6a6af66fb774faa589a9d18f906', 'created', 'c', '14123455555@qq.com', '14123455555', null, '2011-12-16 17:56:47');
INSERT INTO member_prim VALUES ('a48c7df41fb1406faf8864a9b3d36abc', 'JUnittest1328146331906', '5f4dcc3b5aa765d61d8327deb882cf99', 'created', 'c,s,p', null, null, null, '2012-02-02 09:30:52');
INSERT INTO member_prim VALUES ('51b083855d774ed8ae9ff3c786ae2e2a', 'AAADSQDd', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'wsdgy@AA.COM', '13047211912', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('d49f8cc92b86437cb0b80ba502af5f66', 'aaasdf', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'sss@111.com', '13739082445', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('e835c665318a4868bc0df90c41041aed', '13812345678', '25d55ad283aa400af464c76d713c07ad', 'created', 'c', '13812345678@qq.com', '13812345678', null, '2011-12-13 17:53:04');
INSERT INTO member_prim VALUES ('97a7b5de1c4b400d9d148249a33a0768', 'kf1013', '6050855fd1d5f0392204ad29625aab34', 'created', 'o', 'kf1013@kuailelife.com', '13654284577', null, '2012-01-04 12:10:56');
INSERT INTO member_prim VALUES ('30e4f0560ea74569ac9b299f757bb997', '1111111', 'e10adc3949ba59abbe56e057f20f883e', 'created', null, '11111111111111111', '11111111111111', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('f5496d34acd94de4bf4d5008ca6f957f', 'dedesa', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '11ddwwdw@dw.com', '13047211200', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('177a8f4794cf42aba8ea0f23d06449f1', 'wdwd', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'sqsqd', 'dwd', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('59dafe0bda6b4e9cba914a19334844d0', 'fbwuvu', '71b596cb42ee254f7416043d184fc970', 'created', 'c', 'fhiewh@feiu.df', '14759545415', null, '2011-12-16 16:46:56');
INSERT INTO member_prim VALUES ('a03aeec33d2e476381575fa4449778da', 'kkk', 'e10adc3949ba59abbe56e057f20f883e', 'baned', 'c', '1555555@qq.com', '13777777777', null, '2012-02-02 16:30:12');
INSERT INTO member_prim VALUES ('30ce40bcedde4e7386a723c2818a1a31', 'hrsthtsr', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'htrf@rtges.com', '13927434456', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('99b7d6a734be4605bff5ccd97f87ebf0', 'xiejing', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', null, '13800000000', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('d4ba76c469d443a9af13c3ad5decbbfc', 'fefw', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'fwfw', 'fedfe', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('9e6a207ac4b1487081b6fefe5125ed8d', 'JUnittest1328082839906', '5f4dcc3b5aa765d61d8327deb882cf99', 'created', 'c,s,p', null, null, null, '2012-02-01 15:54:24');
INSERT INTO member_prim VALUES ('33d57d3d7bf4450ebec243e12b3bc81a', 'DWDWD', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'DWDWDE', 'json{\"mobileNum\":\"DWDW\"}', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('97485802fc4944fab54a043ed04cdb5e', '18252658657', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'rr@11dd.vv', '18252658657', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('6d4e58473d54445aa1e84057586528d9', 'scott11', 'be38f603f3f61d0b983994a84b9741ac', 'created', 'c', '113@126.com', '18600668844', null, '2011-12-13 13:33:58');
INSERT INTO member_prim VALUES ('d35ab3881949456c9bb16a906c1a1205', 'dedesa', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '11ddwwdw@dw.com', '13047211200', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('4923e568e5ba478e879ece6eee2e6156', '2011-09-29', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '30420s308@qq.com', '2011-09-30', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('527b43878c5042639e009422a5a56d91', '11ew', 'b0baee9d279d34fa1dfd71aadb908c3f', 'created', 'c', null, '13047211901', null, '2011-12-05 11:55:35');
INSERT INTO member_prim VALUES ('c9f5cd3f68564155a4fe517fea459740', '18774843001', 'ef870a9cbb7e0fcffe60f4b6bd11aee8', 'created', 'c', '1187879124@qq.com', '18774843001', null, '2011-12-28 11:17:48');
INSERT INTO member_prim VALUES ('e4b0eade3aa149c7896d040ef19fa80b', 'sherkholmes', '23691b125c1161bc74b0cff32774ba6f', 'created', 'c,p,s', 'sherkholmes@126.com', '13739082440', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('ca8830267ee7403d9c97ca187cd98ab4', '4567891', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '208875228@qq.com', '13117312874', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('5aff0e762a7c40809d7806052448b580', '77', 'b0baee9d279d34fa1dfd71aadb908c3f', 'created', 'c,s,p', '30420s308@qq.com', '13047211901', null, '2011-12-01 14:08:33');
INSERT INTO member_prim VALUES ('f98280ec39674336879a048c124c115d', '123456aaaa', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '15822222222@163.com', '15822222222', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('93c156c667f54ec3b8afa9c10a07985a', 'lixl3518', '9cbf8a4dcb8e30682b927f352d6559a0', 'created', 'o', '123@163.com', '13612365478', null, '2011-12-13 17:35:37');
INSERT INTO member_prim VALUES ('d0f3b7fb6c304bd4a02248f71b933bf9', '18673105264', '62c8ad0a15d9d1ca38d5dee762a16e01', 'created', 'c,,p,s', '448172968@qq.com', '18673105264', null, '2011-12-20 19:35:13');
INSERT INTO member_prim VALUES ('0dc6ea4b7e224c839d104b1528ee715a', 'JUnittest1328082783890', '5f4dcc3b5aa765d61d8327deb882cf99', 'created', 'c,s,p', null, null, null, '2012-02-01 15:53:28');
INSERT INTO member_prim VALUES ('a1980b10fbff4f9b8806924b7415f241', 'gersg11', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'greggd@tgew4ftg.com', '15071997371', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('544a8d462915462d8454916601a3fe70', 'fefw', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'fwfw', 'fedfe', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('6bc1ec4872f24a4ea23b5c8465fb3889', 'wangxv2', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c,s,p', 'gesrhg@fgsef.com', '13645879321', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('596635ff39ef49febf62e6a5b0ea7570', 'JUnittest1328082721703', '5f4dcc3b5aa765d61d8327deb882cf99', 'created', 'c,s,p', null, null, null, '2012-02-01 15:52:26');
INSERT INTO member_prim VALUES ('dd2b21f5826f4a37b72f0fb1b3d409a9', 'sadf', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'sadf', 'sadf', 'sadf', 'sadf', '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('947e8a937f1b4cb88195bf7f8c2534fa', '13545622222', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'fewf@fe.tg', '13545622222', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('57f91f71f154413d9d3c349008b31fac', '13047211901', 'b0baee9d279d34fa1dfd71aadb908c3f', 'created', 'c', null, '13047211901', null, '2011-12-05 12:05:19');
INSERT INTO member_prim VALUES ('0329687152a644128b29f55a1cfa1a10', 'JUnittest1328082892937', '5f4dcc3b5aa765d61d8327deb882cf99', 'created', 'c,s,p', null, null, null, '2012-02-01 15:55:17');
INSERT INTO member_prim VALUES ('3a240fb0e43b407cb02e7342b4a19d0a', 'fefeefw', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'wfwewq', 'json{\"mobileNum\":\"1854dw\"}', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('7b0268f7fa5245b4995f425993cd1383', 'ssasas', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'fthfhtf', 'json{\"mobileNum\":\"hthfhfth\"}', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('94be081948654bb9bab1f662a874af2c', '18245432585', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c,s,p', '11@11.com', '18245432585', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('f96ea9090d414b8fa1cb1df12cd94afd', 'yh1692', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'dd@dd2gvh.ccd', '18999999992', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('998c7f291da3496e90dc2252097782d6', '13041244511', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'efeyf@df.com', '13041244511', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('a4556155674643a0aafcd65e41d2e93a', '13047211901', 'b0baee9d279d34fa1dfd71aadb908c3f', 'created', 'c', null, '13047211901', null, '2011-12-05 13:56:43');
INSERT INTO member_prim VALUES ('a4db996832aa407d8dafc783499de8bc', 'meini', '4bf0c1c04fbd7028ebdf4e7bc5ad9e0c', 'created', 'c,,p,s', 'meini7819@sina.com', '14789851063', null, '2012-01-01 16:43:35');
INSERT INTO member_prim VALUES ('11dac8b4f5bc41a486580d22d11c85c3', 'dedesaSW', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '11ddwFEwdw@dw.com', '13041241200', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('86102611e25d4e8bb93ca74eeb27e8af', 'dfdddd', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'dadwdwdq', 'dweddwe', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('9fea6666048a47ad8e95629aa5814e14', '中俄', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '非', '13557255901', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('b7730abb8e1043569ef37db0493cfd3b', 'wangxv7', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c,s,p', 'ghdrxgr@ges.com', '13954787560', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('bcc1ae4ed0f94dd7bddd1fdf4fd3e146', 'yh1681', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'dd@ddgh.cc', '18999999991', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('e88aac9820744db4b2b4d56c95e1a741', 'dedesa', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '11ddwwdw@dw.com', '13047211200', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('c96a89d0ae7b42f98c5791c399161563', 'sadf', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'sadf', 'sadf', 'sadf', 'sadf', '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('49b7dfa809df44adb5f39c00c517cc7c', 'DWge', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'efef', 'json{\"mobileNum\":\"fe\"}', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('6caea8ed398940dfad87a20d47c51cb4', '1234', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c,s,p', 'ff@dd.dd', '18245432356', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('0c677223efbf4ae4988cabfe284f38ed', '13047211901', 'b0baee9d279d34fa1dfd71aadb908c3f', 'created', 'c', null, '13577845484', null, '2011-12-05 12:06:54');
INSERT INTO member_prim VALUES ('c8cd39dc6b674e21b0096183d40b7db8', 'fefee', 'b0baee9d279d34fa1dfd71aadb908c3f', 'created', 'c,s,p', null, '18744444444', null, '2011-12-05 14:03:55');
INSERT INTO member_prim VALUES ('3440962c325f427bb005d062edbe3d71', 'wdwd', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'sqsqd', 'dwd', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('57d2497e05e8449484bf14de12e52580', 'JUnittest1328082912109', '5f4dcc3b5aa765d61d8327deb882cf99', 'created', 'c,s,p', null, null, null, '2012-02-01 15:55:36');
INSERT INTO member_prim VALUES ('900799ed868a47fb8bba4ce23593b47f', 'gersg2', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c,p', 'htfdh@tg.com', '15076997377', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('1', '1', 'e10adc3949ba59abbe56e057f20f883e', '1', 'c,s,p', '357463185@qq.com', '13549641924', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('MP10001', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'activated', 'c,o', '281785964@163.com', '15974155950', null, '2012-02-03 09:32:58');
INSERT INTO member_prim VALUES ('7485cec564384bea9001f4e2919bfe56', 'DWDWDss', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'DWDWDEss', 'json{\"mobileNum\":\"DWDWss\"}', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('18c2665bd55047458b193ece03c22937', '中文', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'fwyb@fdegu.com', '13557211901', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('57bc2d8d4c574422a3d3a6d9b6344b25', '15899999999', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'dwd@gr.iy', '15899999999', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('84aa51310a094f4b9d9bcd529f4ae3fd', 'aaasdf', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'sss@111.com', '13739082445', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('1fb7074e1682415cbc14364bfa844b66', 'kf1011', '84f455d5b4f0e6232bc7887d3bff8317', 'created', 'c,,p,s', 'kf1011@kuailelife.com', '13512345611', null, '2011-12-20 10:58:22');
INSERT INTO member_prim VALUES ('d9d0455d2483480993fde1a233b4854e', 'shaofei2', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'shaofei2@chinaonenet.com', '18673114211', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('ced4305d96dc4968b8d18ad6f12ded8c', 'dedesa', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '11ddwwdw@dw.com', '13047211200', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('082367f068624a0ca614460a409b5c1e', 'fdsa', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'fdsa', 'fdsa', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('a476335736d841c2986b82b7b19e7dae', 'dwds', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'dw', 'wdw', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('80b93592132f40ca90ec9ea7417dc1fd', 'dwds', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'dw', 'wdw', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('67bf16aa12d149cba25769137fb9c4e7', 'DWge', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'efef', 'json{\"mobileNum\":\"fe\"}', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('0d971f173794411d9d051afd35f63574', 'kyo14681', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'kyo1468@gmail.com', '13117312876', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('0c72498cbba24cbab48403fb4d57c384', 'dedesa', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '11ddwwdw@dw.com', '13047211200', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('c0e4a67f52da46a3b848c7c36ad367ee', '18684692616', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '157370862@qq.com', '18684692616', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('1e7fb74db8854470b9595769ddf35201', 'liaohuanqi', '25d55ad283aa400af464c76d713c07ad', 'created', 'c,,p,s', '274114890@qq.com', '18229883066', null, '2011-12-13 17:28:10');
INSERT INTO member_prim VALUES ('1531e5f06a8a479ca33de3e431903dc0', '14789825928', 'fc5375e050dbcff7450e464e4e14062b', 'created', 'c,,p,s', 'huanglina405@136.com', '14789825928', null, '2011-12-14 16:35:28');
INSERT INTO member_prim VALUES ('80590961f972471cb2d7db934abe109b', 'dedesa', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '11ddwwdw@dw.com', '13047211200', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('6d0f32fb108a4946af00ef3e17f79360', 'yh166', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c,s,p', 'aa@aa.aaa', '18245431963', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('652fe1a9a7db4a9d8a71c4617a20368d', 'Smile', '8c69473b960921ce4f3353ce94733e25', 'created', 'c', 'mm512594027@163.com', '18684695084', null, '2011-12-21 15:10:36');
INSERT INTO member_prim VALUES ('d1d7fbd779c24dd5920dba57e3cb113c', 'JUnittest1328082878765', '5f4dcc3b5aa765d61d8327deb882cf99', 'created', 'c,s,p', null, null, null, '2012-02-01 15:55:03');
INSERT INTO member_prim VALUES ('4961bc18385c44dfb80c65c0c92103a7', '45', 'e10adc3949ba59abbe56e057f20f883e', 'created', null, '45', '545', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('bef8773304aa466c95f165285ec23c2d', 'sqwsqs', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'grgrg', 'json{\"mobileNum\":\"dsdegfr\"}', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('e122dadabc5940b991c1909c8d1dbee8', 'JUnittest1328082930265', '5f4dcc3b5aa765d61d8327deb882cf99', 'created', 'c,s,p', null, null, null, '2012-02-01 15:55:54');
INSERT INTO member_prim VALUES ('d836843a3e1c4d1daef55692177759a5', 'qqqqq', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'dfwf@dbiu.com', '13047211214', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('7fedb854776948529e163a67408d42fe', 'dwd', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '11111', '11111', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('ba0f79ef0f554e1c8cab0f3e2057e1a3', '123456aaaa', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '15822222222@163.com', '15822222222', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('MP10002', '123456', 'e10adc3949ba59abbe56e057f20f883e', 'baned', 'o', '281785964@163.com', '15974155950', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('08d82f667e0649019ea27c4428c86b11', 'dedesaSW', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '11ddwFEwdw@dw.com', '13041241200', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('6cc2350ec7f342829bdde751c71577fe', 'dedesa', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '11ddwwdw@dw.com', '13047211200', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('ea5a97993a8b4412b09c633335baa2d2', 'JUnittest1328082809687', '5f4dcc3b5aa765d61d8327deb882cf99', 'created', 'c,s,p', null, null, null, '2012-02-01 15:53:54');
INSERT INTO member_prim VALUES ('8d59ad4592ae47c79da8ab9c2ed0b900', 'adminx', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'greggd@tgewz4tg.com', '15071997373', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('ba88ea0c441e4e1ca21a26cbff1112ab', '18245432586', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'aa@aa.aa', '18245432586', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('26400bd342f54a3cbfac5a22a322bcc7', 'wangxv5', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c,s', 'gewgfagz@wagzx.com', '13876489744', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('327f9741dc7d4bc3bcc8ecc5315e8883', 'fwfww', 'b59c67bf196a4758191e42f76670ceba', 'created', 'c', 'dwdw@fe.dw', '18742445554', null, '2011-12-05 14:11:53');
INSERT INTO member_prim VALUES ('80008ad674094721b7f51850ede34b2b', '13808421682', 'b64f1a77b1b317d347f5cb79332c86d2', 'created', 'c,,p,s', 'h4506@qq.com', '13808421682', null, '2011-12-31 15:30:31');
INSERT INTO member_prim VALUES ('4651cc5ac58945aaa88ddac65e58ae23', 'dedesa', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '11ddwwdw@dw.com', '13047211200', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('fe40df4974ef4968aab8cf43756ad165', '13569858975', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'ff@ss.cc', '13569858975', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('a2ae997b3f1c42a7b59dca1ce73763ac', '15812345679', '25d55ad283aa400af464c76d713c07ad', 'created', 'c,,p,s,', '15812345679@qq.com', '15812345679', null, '2011-12-09 09:54:54');
INSERT INTO member_prim VALUES ('087fc92ad1934fbab8e02f69b4a63caa', '13854645555', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'dwdw@dfef.gg', '13854645555', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('c29bf80d6dd34828aab83d7ef94adc10', '13544666666', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'FEF@FEF.RG', '13544666666', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('d13c9e04a382481fabff42b68656c06a', 'scott', 'be38f603f3f61d0b983994a84b9741ac', 'created', 'c,,p,s', 'hixiangshang@126.com', '13800138000', null, '2011-12-13 13:32:22');
INSERT INTO member_prim VALUES ('206ef65d201f42b2a6ea9b834332fb82', 'gersg', '6eaddf5318dbb21e557536debff818d1', 'created', 'c,s,p,', 'gdrfeg@ccxxax1.com', '15526408936', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('4caccb696eeb43c0bd29a8219a104e29', '13047211904', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c,s,p', '30420s308@qq.com', '13047211901', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('074212504d484adcbae3508cca37c0d1', 'fefw', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'fwfw', 'fedfe', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('e4b94971e5484dc49c6b4e092059169d', 'wdwd', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'sqsqd', 'dwd', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('b3b72bc335f840f2903f35e5fea8403c', 'sadf', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'sadf', 'sadf', 'sadf', 'sadf', '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('dc9704a02c034a45a70273f44a3a2425', '15874086063', '73ca87fdf80d0e5afcb2cfc470fbdcd5', 'created', 'c,,p,s', '1156442103@qq.com', '15874086063', null, '2011-12-31 17:23:08');
INSERT INTO member_prim VALUES ('62c4665278f94a04b8db2742d071aeb7', 'JUnittest1328082686015', '5f4dcc3b5aa765d61d8327deb882cf99', 'created', 'c,s,p', null, null, null, '2012-02-01 15:51:50');
INSERT INTO member_prim VALUES ('fd6b966d6fd64b658b724924d06c84e9', 'fefw', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'fwfw', 'fedfe', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('f2fe86db6c6941cda12fb95baf3544c5', '1111111111', '4a3ebadd8472ff73aed43d66cdb7358f', 'created', 'c,s,p', '11@ww.dd', '14712345679', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('25c6cc4f976f4d7082019ef47da6a51f', '13047211901', 'b0baee9d279d34fa1dfd71aadb908c3f', 'created', 'c', null, '13047211901', null, '2011-12-05 12:01:38');
INSERT INTO member_prim VALUES ('561655e2e4f049288208f2784357aa8a', 'lt0915', '1a46be489100d6a089358eff29b98f7a', 'created', 'o', '123@163.com', '13574405308', null, '2011-12-15 10:36:20');
INSERT INTO member_prim VALUES ('8036dcdc66b24651ba08c9f06943fe1c', 'gersg11', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'greggd@tgew4ftg.com', '15071997371', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('c338cb4ccde54ef1953b274f41ca9ae1', '13577845787', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'def@fef.rtg', '13577845787', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('66608e42faa345ea939ddbc3af3fc8c0', '黄继', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '273610502@qq.com', '15874948205', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('113baedfff084c688edf09c6c93cdb2c', '七重天', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'xiongkissme@163.com', '13973159853', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('75f5cce2d7934171803a425ad8949883', '13212345679', '039adc8129556905e3cdef5398617f30', 'created', 'c', '13212345678@qq.com', '13212345678', null, '2011-12-09 10:48:33');
INSERT INTO member_prim VALUES ('9ad0e988c2fc4129a13816d7a42585d3', 'efigug', '71b596cb42ee254f7416043d184fc970', 'created', 'c', 'fegugu@fef.fe', '15985548455', null, '2011-12-16 16:43:36');
INSERT INTO member_prim VALUES ('225d12df4e374ce3b667311dea0061eb', '15973157606', '86bd39240089696fd322e41ec54dc56c', 'created', 'c,,p,s', '351324491@qq.com', '15973157606', null, '2011-12-27 17:05:02');
INSERT INTO member_prim VALUES ('eaab262f604c4fc28c08764dee18ba5c', '254', 'e10adc3949ba59abbe56e057f20f883e', 'created', null, '452', '452', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('69c31fc38ff54b588dbb603fcc5a3554', 'yinhui', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '11@11.com', '18229724546', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('3bdc0f79e7f74220ac0db6982147aeb3', 'testyh', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c,s,p', '111@ww.dd', '15812345678', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('b8b971dea2ec44dca749484e4fba0edd', 'huangji', 'ef2fd53f65f7a4125372ecc8c8878250', 'created', 'c', '13588888888@qq.com', '13588888888', null, '2011-12-09 21:38:35');
INSERT INTO member_prim VALUES ('6f77db5c37f646308208bc36886fbc8f', '123132131', 'c8837b23ff8aaa8a2dde915473ce0991', 'created', 'c', 'fsfs@qq.com', '13566996699', null, '2011-12-13 13:42:17');
INSERT INTO member_prim VALUES ('a803b42d84ed437f89d83ea1c9ba24fe', 'quelougongyu', 'e0703468d3aaaac9973558d27aa5678c', 'created', 'c', 'yugaoliu@163.com', '13786108274', null, '2011-12-22 12:08:08');
INSERT INTO member_prim VALUES ('4e93f78ea82e48469cb3becc520a609a', 'ssds', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'abc@qa.com', '18673114213', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('ba232d4e56cc4f8f9507cd49ab099c17', 'ynwlgh', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'ynwlgh@foxmail.com', '15911424455', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('bd0c5125e0734809bef9abbc885b6288', 'DWge', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'efef', 'json{\"mobileNum\":\"fe\"}', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('22e5a1a744a847b0ad3c8b33cc026df4', 'regerg', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'gergger', 'json{\"mobileNum\":\"ergerg\"}', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('2d1afb70769f4f11811bc727cba5fbe3', 'fefee', 'b0baee9d279d34fa1dfd71aadb908c3f', 'created', 'c', null, '18744444444', null, '2011-12-05 14:02:27');
INSERT INTO member_prim VALUES ('c2c6fe7db3324d33be7d3abef2e0eef6', 'JUnittest1328146275828', '5f4dcc3b5aa765d61d8327deb882cf99', 'created', 'c,s,p', null, null, null, '2012-02-02 09:29:56');
INSERT INTO member_prim VALUES ('a4f8ae67c8b14632b08ab579264d014a', '13545826545', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'dwfw@fef.fwer', '13545826545', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('0ed63cc907414c418a66f95a43c77aa8', 'amy', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c,s,p', '907710076@qq.com', '15308476540', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('901a211858f64a52b516c2ea71378534', 'DWge', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'efef', 'json{\"mobileNum\":\"fe\"}', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('636f02fc3e0a4c45a3ff27b412c32f1e', '1efwf', '698d51a19d8a121ce581499d7b701668', 'created', 'c', null, '13047211901', null, '2011-12-05 13:55:11');
INSERT INTO member_prim VALUES ('62d196c92bf14d3f8165245c0425280d', 'dididi', '5c18216aeb19c1a79f821902d846067b', 'created', 'c,,p,s', '25@11.com', '13813813800', null, '2011-12-14 16:28:44');
INSERT INTO member_prim VALUES ('9ffd39502cdf440d9d0fc8ebd6e9b6aa', 'JUnittest1328082769578', '5f4dcc3b5aa765d61d8327deb882cf99', 'created', 'c,s,p', null, null, null, '2012-02-01 15:53:14');
INSERT INTO member_prim VALUES ('ca8d41582b744f86ab901905778b3c6f', 'dwdasda', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '30420s3fe08@qq.com', '13047212531', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('ab6cce9c539f43e8bee2b7f2a6230779', 'tert', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', null, '15099999999', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('4119748de9af49fa9a2c7cc2999caf64', '12345678908', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', null, null, null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('506b84bdddcd4fa68957cbd8f1bf6ea1', 'dedesa', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '11ddwwdw@dw.com', '13047211200', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('d0d59c754b1247de9252857c39f8c7db', 'gersg5', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c,s,p', 'htf44@thg5dg.com', '15074997357', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('971be87c1e414456a23bc833748e190c', 'fefw', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'fwfw', 'fedfe', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('c13880c831ec4eafa301d04f082b760f', '12345678908', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', null, null, null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('165610991554459297a386be6d8bc071', 'dwdasda', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '30420s3fe08@qq.com', '13047212531', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('7d96f8489d854f45b51bf64ced33c651', 'gersg3', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c,s,p', 'htfdh@thgtrdg.com', '15076997347', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('ae21928ce3b246b9818ff4ba092ea46f', 'wangxv4', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c,s,p', 'gewgfaz@wagzx.com', '13876489784', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('44d7caf2e22244e6b8fe79f8db030db8', 'gersg9', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c,s,p', 'hrfth@tfwetg.com', '13985453645', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('2f34d42b00a742b0ae84e0d7c0104931', 'JUnittest1328082892906', '5f4dcc3b5aa765d61d8327deb882cf99', 'created', 'c,s,p', null, null, null, '2012-02-01 15:55:17');
INSERT INTO member_prim VALUES ('f53c01d9c7d44e47ae02a16d7467b9ad', 'JUnittest1328146249656', '5f4dcc3b5aa765d61d8327deb882cf99', 'created', 'c,s,p', null, null, null, '2012-02-02 09:29:30');
INSERT INTO member_prim VALUES ('fe41ab5312674379ab57822febfb898e', 'JUnittest1328082911171', '5f4dcc3b5aa765d61d8327deb882cf99', 'created', 'c,s,p', null, null, null, '2012-02-01 15:55:35');
INSERT INTO member_prim VALUES ('8767abcf3f8d44ed8d44f61244bedae7', 'dedesa', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '11ddwwdw@dw.com', '13047211200', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('d183c1f3199a43ec8ddd294227d7c905', 'fefw', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'fwfw', 'fedfe', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('70e1331043164c48a6b35dcda585bb37', 'fef', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'dqd', 'json{\"mobileNum\":\"154684845\"}', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('e1c3966174dd4b8396a9e04a7e438d9c', 'grerfe', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'ferfegfr', 'json{\"mobileNum\":\"fgregerg\"}', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('8d980980c28f48e5887911a510b62ba0', 'dedesaSW', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '11ddwFEwdw@dw.com', '13041241200', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('7d3a4bd33bcc4abfba24105f4e03685b', 'JUnittest1328082860937', '5f4dcc3b5aa765d61d8327deb882cf99', 'created', 'c,s,p', null, null, null, '2012-02-01 15:54:45');
INSERT INTO member_prim VALUES ('abe762706ec54fc98e0ba3cfb16c93f7', 'sqsq', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'sasq', 'json{\"mobileNum\":\"sqsw\"}', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('2d612102e4a44701891a17b1d5a49a19', 'vere', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'fewgdsy@fse.cw', '13255555555', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('f081d4d240944808b7d1eed80b55b3cd', '黄婷', '464e377c5aafdac3d9290b0e5b49a937', 'created', 'c,,p,s', '1069831729@QQ.COM', '13207424990', null, '2011-12-20 19:40:23');
INSERT INTO member_prim VALUES ('dd90dc959a6d479e9b4dad54fc155b9f', 'yh1', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'dd@fdd.com', '18229564845', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('ca067a8491b545149df3e0328c088495', 'fefee', 'b0baee9d279d34fa1dfd71aadb908c3f', 'created', 'c', null, '18744444444', null, '2011-12-05 13:59:50');
INSERT INTO member_prim VALUES ('49e1d2633af54720a9176a7182d07ecc', 'kkk', 'c33367701511b4f6020ec61ded352059', 'baned', 'c', '1555555@qq.com', '13777777777', null, '2012-02-02 16:33:36');
INSERT INTO member_prim VALUES ('c6be1582ebf94acba9a16f4d4d9f565e', 'gdrgcmD', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'gdfg@gter.com', '15072957373', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('49afc3a0a0754eefa278aeeb6bfa2ccb', '13045484215', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'dwdw@ef.ef', '13045484215', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('8deaa1305bd547b2ab94818043dc7899', 'gersg4', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c,s,p', 'htf44@thgtrdg.com', '15074997347', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('7d3e75ebc4b24c04b3a8c5d90ee0b2a5', 'veres', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'fewgsdsy@fse.cw', '18666666666', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('e47d0dc5fe18469a89d994a75b8a2c63', '13047211901', 'b0baee9d279d34fa1dfd71aadb908c3f', 'created', 'c', null, '13047277777', null, '2011-12-05 13:48:34');
INSERT INTO member_prim VALUES ('ea1baf40cd9848b0acb7c473ab60b757', 'longyx', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c,p,s', 'longyx@chinaonent.com', '18207498760', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('b1752454ce3940e6a243e55368d0e173', 'fefe', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'dfwwdf@dw.com', '13047214857', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('2b6e0e7f295d418da9407d9b07b42cdc', '111252', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'admin@a.con', '18999999999', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('27afa24d0d334db1b4dd43beea1dcfc7', '136', 'c4ca4238a0b923820dcc509a6f75849b', 'created', 'c', 'ff@qq.com', '13612345678', null, '2011-12-01 11:25:11');
INSERT INTO member_prim VALUES ('520aa91aac18461ebc9694a22143465f', 'ddwdw', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'DDFFEW@DWE.COM', '13594848945', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('88d9b6c32590411c855bde8dd48cac1a', '13574405308', 'c2cd11b51d67ddbbda185722b0615963', 'created', 'o,,p,s', '13574405308@163.com', '13574405308', null, '2011-12-13 16:50:48');
INSERT INTO member_prim VALUES ('dfaea1826b5340ff999c39b1e9d33fe2', '3333', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c,s', '3333@aaa.com', '13047211904', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('e9161693abec49fa9c5fc0cf387f196b', 'gdrg@tge.com', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'greggd@tgew4tg.com', '15042997374', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('242aff93fdfd4a3ba477f9c83800c29b', 'JUnittest1328146288984', '5f4dcc3b5aa765d61d8327deb882cf99', 'created', 'c,s,p', null, null, null, '2012-02-02 09:30:09');
INSERT INTO member_prim VALUES ('f8d0347c23774022983c83e411a19e72', 'dedesa', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '11ddwwdw@dw.com', '13047211200', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('77e2aedb4dd741d084184b20bba759a5', 'testyh1', '96e79218965eb72c92a549dd5a330112', 'created', 'c,s,p', '254098548@qq.com', '15889767973', null, '2011-12-01 09:29:57');
INSERT INTO member_prim VALUES ('05e59468069040598e7f3944479012d7', '13047211901', 'b0baee9d279d34fa1dfd71aadb908c3f', 'created', 'c,,p,s', 'ssss@eee.rr', '13047211901', null, '2011-12-02 13:56:27');
INSERT INTO member_prim VALUES ('aa6d58ab662a431289ba86ddbf69db00', 'fefe', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'wfwe', 'json{\"mobileNum\":\"1854\"}', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('e36a2d2e6405456695e4d685db27d144', 'dedesa', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '11ddwwdw@dw.com', '13047211200', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('30013bb2aa2746aaa95903a4aca6924c', 'fefw', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'fwfw', 'fedfe', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('b25b7836edc24a978149d87794e93971', '陌殇', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c,p', '1226876782@qq.com', '13187393767', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('3fad46fb1dcb4a1ab8b1123635ba86f2', 'hexiaoliang', 'cdcb28023ba04fee18fca61d137fd2d4', 'created', 'c,,p,s', '578943551@qq.com', '13787035133', null, '2011-12-14 20:29:40');
INSERT INTO member_prim VALUES ('dee5408be5e3420ab6c05da9fa4c9cb0', 'JUnittest1328082859421', '5f4dcc3b5aa765d61d8327deb882cf99', 'created', 'c,s,p', null, null, null, '2012-02-01 15:54:43');
INSERT INTO member_prim VALUES ('a9899f692b5f4ad797d35272380ccd89', 'dede', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '30441s308@qq.com', '13021211901', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('4abb4fdce46946d7bd0bf2cd9c1523a7', 'xaxaxax', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'ddw@dwd.com', '123456', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('c4e0338d5ea74f0db01faafa00d066ae', 'xaxaxax', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'ddw@dwd.com', '123456', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('a7acf095d46949609274018e698d62a4', '13912345678', '535381ec9d5ab7a390db0a30860600f2', 'created', 'c', '13912345678@qq.com', '13912345678', null, '2011-12-01 14:54:18');
INSERT INTO member_prim VALUES ('876b1115ed344635bda3cc91f37cddfe', '15612345678', '69498ffc46c8ab2c8d1c3fa10a6d8ba7', 'created', 'c', null, '15612345678', null, '2011-12-02 09:50:30');
INSERT INTO member_prim VALUES ('2a768f8d86c04d55b2d37b4d9261662b', '13112112112', '25d55ad283aa400af464c76d713c07ad', 'created', 'c', '13112112112@qq.com', '13112112112', null, '2011-12-16 16:28:49');
INSERT INTO member_prim VALUES ('0f13151c6ff749e5a50807fe3269fd4e', '方星', 'b35400dc6985ba7de531c7e637208a8f', 'created', 'c,,p,s', '820723932@qq.com', '18773148947', null, '2011-12-16 17:55:39');
INSERT INTO member_prim VALUES ('8ada2c8e7e974496ac9037946e24637c', '18229877284', 'c8837b23ff8aaa8a2dde915473ce0991', 'created', 'c,,p,s,', '270574559@qq.com', '18229877284', null, '2011-12-21 19:05:09');
INSERT INTO member_prim VALUES ('5e47f08fd9964e4293c41a030835fee2', 'JUnittest1328082927812', '5f4dcc3b5aa765d61d8327deb882cf99', 'created', 'c,s,p', null, null, null, '2012-02-01 15:55:52');
INSERT INTO member_prim VALUES ('650750ae69a94085b5981b60a7536409', 'dedesa', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '11ddwwdw@dw.com', '13047211200', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('a9db3616e9ff4a3b9a35547353960e61', 'fefe', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'wfwe', 'json{\"mobileNum\":\"1854\"}', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('78ea98d848ce434aa6e593d9d828d033', 'adminhrt', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'wangxv3aa121@fgsdf.com', '15073997374', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('07bee843e54043dc8382728a5e10f3ec', 'vree', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'fewgy@fe.cw', '18255555555', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('f5368b396d0e44b58a78417fc4c2898c', '785497576', 'a803298a7f5ba644341477915bbee4ca', 'created', 'c', '785497576@qq.com', '18684924648', null, '2011-12-25 21:42:14');
INSERT INTO member_prim VALUES ('da8e10a31cd540cdb69f336ffc300c1b', '12345678907', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', null, null, null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('e429e6b2f667485ea599745ac869eb86', 'DWDWDssq', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'DWDWDEssq', 'json{\"mobileNum\":\"DWDWssq\"}', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('998b1278d89f46f799a2840f7cb101dd', '13469083343', '869382383b34a648282a8a54d36d0081', 'created', 'c,,p,s', 'shirleywuwj666@163.com', '13469083343', null, '2011-12-14 15:56:17');
INSERT INTO member_prim VALUES ('bd325de1d341476d952911f6bda5ec88', 'JUnittester', 'e10adc3949ba59abbe56e057f20f883e', null, 'c', null, null, null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('6eb24687d27641f8b9b206c97bcb122b', 'hfdhht', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'htd@yr5.com', '13921345456', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('9557ed7c8c3c47ca96c8f4ab8299fe8e', '111', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c,s', '111@123.com', '13800000000', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('84c2bb950ff041f0bfa0fae83b368f36', '4567891342', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '208873228@qq.com', '13117312873', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('d819abee31f649daaa6f4ae6e6472787', 'fefw', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'fwfw', 'fedfe', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('7b858b9131c54c419f20a3c4dcb373ac', 'dsafdsas', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '1231322@432141.com', '13045678901', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('30bb8c704fec444c98fd11cacc7f4f58', 'JUnittest1328146212218', '5f4dcc3b5aa765d61d8327deb882cf99', 'created', 'c,s,p', null, null, null, '2012-02-02 09:28:53');
INSERT INTO member_prim VALUES ('603f6e5bbf2f4429a35038fae87189f1', 'iyfjift7i', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'wangxv3r3321@fgsdf.com', '15072597373', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('8e5de4d8abdd43e3b3aa8b4d24796edb', 'xaxaxax', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'ddw@dwd.com', '123456', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('0dc338bddee74db09679cb8b1a9074f3', 'lyx1209', '6f566c8ae7b606f528f7673138010d20', 'created', 'c,,p,s,', 'lyx1209@gmail.com', '13366667777', null, '2011-12-09 21:06:04');
INSERT INTO member_prim VALUES ('64cf389eb6f0411294a2b23f26becaac', 'tester', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'o', 'tester@qq.com', '13512345678', null, '2011-12-16 17:08:07');
INSERT INTO member_prim VALUES ('2e2d182da26b4d43b7c8ecf6484138f0', '李婷', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c,p', '273610502@qq.com', '15874948205', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('af435e1afa2e4ad1941136353c606d55', 'dwdasda', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '30420s3fe08@qq.com', '13047212531', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('f3a4575e09c54377b3a8f0b4ad5ef74b', '333', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'ss@aa.cc', '13512345678', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('50473991076240c48c69d9e4be76c8a9', 'lili', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c,s,p', '12358764@qq.com', '13185251234', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('d485c489832f4695b1c37dbd0acdff7e', 'fewno', '71b596cb42ee254f7416043d184fc970', 'created', 'c', 'fwfo2@WF.Dd', '13487484845', null, '2011-12-16 16:51:40');
INSERT INTO member_prim VALUES ('c26891aa1dd0459db8b7c8ed25da52e6', '13637318632', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', null, '13637318632', null, '2012-02-01 11:34:19');
INSERT INTO member_prim VALUES ('f76fe7865a4446458c9baae18c96ec56', 'admincccc', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'wangxv3aa121@fgsdf.com', '15074997373', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('9a2dadda0a474ef696b087630fd3b756', 'rainbow', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'rainbowyinhui1@163.com', '15889767972', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('6384a7f9d8054c1b91974441d6e82a50', 'whzuo111', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'zuowh@kuailelife.com', '18229992057', null, '2011-12-01 16:55:00');
INSERT INTO member_prim VALUES ('cefed811441640928ef65a1b4c517b0c', '13007317278', 'aa0cf59f033e1aa6e22d08d022f72f29', 'created', 'c,,p,s', '1980049291@qq.com', '13007317278', null, '2012-01-05 16:34:58');
INSERT INTO member_prim VALUES ('7ceabb7cd9ed4147a2559b55d0fbe352', 'asasas', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'dfbuy@dwh.com', '13042001023', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('5d6ba2cc04cd4b769f360a3f09548441', 'fefe', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'dfwwdf@dw.com', '13047214857', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('9586c3b1cb034c04924a61717e82047a', 'bara', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c,s', '524713622@qq.com', '15116360500', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('92d06f11d32d482689f170376e6f0304', 'longyx1', '2e4c74591afae98c2ca11688ac65c0da', 'created', 'c', 'longyx@chinaonentt1.com', '18207498761', null, '2011-12-09 10:59:32');
INSERT INTO member_prim VALUES ('eca3572def064baeb652c9bf59eb5fd7', 'dedecms', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '30420s308@qq.com', '12047211901', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('ffab02ecb655473da573814fa4542a95', 'dwd', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '11111', '11111', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('708bf4288a214c3eb4ebea9a64dbdb6d', '12345678909', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', null, null, null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('916a19c459974e529d52a9fd65cc9547', 'wangxv6', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c,s', 'gewgfagz@wagzx.com', '13876489744', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('96e5707b51e5481a9ccf9bcfbcf0c3ac', '123456aaaa', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c,s,p', '15822222222@163.com', '15822222222', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('e7d2688b48b943afb5bf5f7f5239bcd2', 'grerfe', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'ferfegfr', 'json{\"mobileNum\":\"fgregerg\"}', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('ff8faad8a44c44da85acfc220154489c', 'ver', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'fewgsy@fe.cw', '18255555555', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('ca2ae12658b9491f96dae8f413dedfb6', '13412345679', 'cd13b6a6af66fb774faa589a9d18f906', 'created', 'c', '13412345679@qq.com', '13412345679', null, '2011-12-16 10:41:47');
INSERT INTO member_prim VALUES ('0c56e391027241e3b0a9a39125b9efd6', 'dedesa', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '11ddwwdw@dw.com', '13047211200', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('5eab4e6de9cf41818a36f01538cdf267', 'yyp', '6c0ec9b7a7db3479654f39c1044a820f', 'created', 'c,,p,s,', '16374821104@qq.com', '15116367339', null, '2011-12-21 15:34:10');
INSERT INTO member_prim VALUES ('df6de589fd0e476bb7c4056aebf5afd4', 'JUnittest1328146236015', '5f4dcc3b5aa765d61d8327deb882cf99', 'created', 'c,s,p', null, null, null, '2012-02-02 09:29:16');
INSERT INTO member_prim VALUES ('93b13e208c7b44be9ece5c280dec39a6', 'yh163', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c,p', 'rainbowyinhui@163.com', '18229724543', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('9106f60bf9bf405384b158025ac65615', '12345678909', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', null, null, null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('d75ac094a4de43c2abf53547e5584be8', '1234grt', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'dd@qq.aa', '13598765432', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('c139c22b995246f79b1c1e3e8a0d644e', '15974000049', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', null, '15974000049', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('2db722aecd984b1898dcc4c8dbf32801', 'rainbow1', 'cd13b6a6af66fb774faa589a9d18f906', 'created', 'c', 'rainbowyinhui12@163.com', '18229724545', null, '2011-12-09 09:10:27');
INSERT INTO member_prim VALUES ('test_member_01', 'test_member_01', 'e10adc3949ba59abbe56e057f20f883e', 'activated', 's,p,c,o', 'longyx@chinaonenet.com', '18207498760', '192.168.1.36', '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('4f81fb90496f47d69a1e4e9d670218d4', 'fefw', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'fwfw', 'fedfe', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('b96850101dd64c21ae26e2cf7dab2496', '熊伶俐', 'a3519fbd40b48ccd19d5cb7caac37138', 'created', 'c', '286045508@qq.com', '15116226264', null, '2011-12-19 22:14:17');
INSERT INTO member_prim VALUES ('86ebb0b462704e8aa7b59b41e663ecfa', 'dwd', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '11111', '11111', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('a4bc0e3a5faa40e4bdba2718a26aa75f', 'taikongmao', '25d55ad283aa400af464c76d713c07ad', 'created', 'c,,p,s,', 'tzw1212@msn.com', '13308492177', null, '2011-12-09 21:03:22');
INSERT INTO member_prim VALUES ('adc1ae0670bf42b4a9c430e854d55db6', '18673494340', '7fcdc95a05893ecfdd7a0592b9f64038', 'created', 'c,,p,s', '372249717@qq.com', '18673494340', null, '2011-12-29 16:50:16');
INSERT INTO member_prim VALUES ('b1544fcb62c0426da54c2c2b9c0543d4', 'yh1691', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'dd@ddgvh.ccd', '18245432958', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('3b50f3e1bf2c484b8e6f0e354c9b16c1', 'yangyu', 'f5bb0c8de146c67b44babbf4e6584cc0', 'created', 'c', '30278968@qq.com', '13808484844', null, '2011-12-09 14:53:28');
INSERT INTO member_prim VALUES ('34825a4970ac4b45b697861e6b720f0d', '13787056979', '9a49fcfa65816df2a2227cfa47ea1fa7', 'created', 'c,,p,s', '834685611@qq.com', '13787056979', null, '2011-12-16 15:42:41');
INSERT INTO member_prim VALUES ('98688e252cde43ef89b4f8fcc29683bd', 'JUnittest1328082855578', '5f4dcc3b5aa765d61d8327deb882cf99', 'created', 'c,s,p', null, null, null, '2012-02-01 15:54:40');
INSERT INTO member_prim VALUES ('cd52cc8c614144c09cc4bf5f6986eb8d', 'bai392227489', '0503c4f65c2f2d7a494a76b818237e69', 'created', 'c,,p,s', 'wsj87677141@163.com', '13607491066', null, '2011-12-14 16:59:34');
INSERT INTO member_prim VALUES ('f0856d114e634e6b92d5a48831ca9663', '2121', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'efgig@DBWU.COM', '13047211102', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('3f33514a37c24972b6e970d3b83badeb', 'yhrdy', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'jyt@tgesf.com', '15072457374', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('403db644cbcd46218f4300c406c197d3', 'veresd', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'fewgsdsdy@fse.cw', '18233333333', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('ae419593c8e64bd9937dd1b67b535332', 'lixl', '52abb0f269710e6b9b0cb6de00e8fcef', 'created', 'c,s,p', '35189851@qq.com', '13574191771', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('ff21a17eebbe43de819468f5ccedabd8', 'dwdwdw', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '11dwdw@dw.com', '13047211000', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('727f439abb2749148651d92ea1ee28cc', '12345678901', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', null, null, null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('fcb587ebe4fc44c6947426aa4fc49764', 'yhtest', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c,p', '11@111.com', '18229724541', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('55f38431f29f4d3a953d1056d2078380', 'aaasdf', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'sss@111.com', '13739082445', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('e24ecf69e02840c18c49245b50e5f369', '574598795', '16abf66b5f285606015f7efb04bdc56c', 'created', 'c,,p,s', '574598795@qq.com', '15573134172', null, '2011-12-15 17:55:43');
INSERT INTO member_prim VALUES ('d482b91b71a44a6981e2f544b558c31e', '8805780yer', '6eaddf5318dbb21e557536debff818d1', 'created', 'c', 'hdsh@fesgf.com', '13545687687', null, '2011-12-16 10:48:30');
INSERT INTO member_prim VALUES ('2c782a937a514cad816db6513660247b', 'fefs', 'b59c67bf196a4758191e42f76670ceba', 'created', 'c', null, '18744445554', null, '2011-12-05 14:08:24');
INSERT INTO member_prim VALUES ('0d3e405e572a4bbc9bf7b08461cc68c1', 'JUnittest1328082856890', '5f4dcc3b5aa765d61d8327deb882cf99', 'created', 'c,s,p', null, null, null, '2012-02-01 15:54:41');
INSERT INTO member_prim VALUES ('3bdf50effbb34f5292ffa5b5498f5eed', '11111', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', 'degfy@dd.com', '13047211908', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('55c20f0ce6b84d0bae05c14baa8a3d10', '13041241208', 'e10adc3949ba59abbe56e057f20f883e', 'created', 'c', '302488451@qq.com', '13041241208', null, '2011-11-30 16:48:25');
INSERT INTO member_prim VALUES ('bd418a8159a34b9ca5dfd2c35357ee58', 'fefee', 'b0baee9d279d34fa1dfd71aadb908c3f', 'created', 'c', null, '18744444444', null, '2011-12-05 13:59:08');
INSERT INTO member_prim VALUES ('8a69b4a806534fcf9e201820852afc90', 'luosha000', '05cc0d62f44ba41069e5097c5261a2fc', 'created', 'c,,p,s', '497125481@qq.com', '15802699734', null, '2011-12-13 20:39:59');

-- ----------------------------
-- Table structure for `operator`
-- ----------------------------
DROP TABLE IF EXISTS `operator`;
CREATE TABLE `operator` (
  `id` varchar(32) NOT NULL COMMENT '管理员ID',
  `depatmentId` varchar(32) DEFAULT NULL COMMENT '所属部门ID(未启用)',
  `loginName` varchar(32) DEFAULT NULL COMMENT '登录名称',
  `realName` varchar(32) DEFAULT NULL COMMENT '真实姓名',
  PRIMARY KEY (`id`)
) ENGINE=ndbcluster DEFAULT CHARSET=utf8 COMMENT='运营管理员';

-- ----------------------------
-- Records of operator
-- ----------------------------
INSERT INTO operator VALUES ('319d63f494964fc3a8f5c60f37529210', null, null, null);
INSERT INTO operator VALUES ('f9fd3347388e4106a5d382e1a61919e0', null, null, null);
INSERT INTO operator VALUES ('9ecfbf5df94d4b929d1d032164bbc357', null, null, null);
INSERT INTO operator VALUES ('aa3f2db8db3e49368d65ed746fbb73da', null, null, null);
INSERT INTO operator VALUES ('c641e98bd01045159a5ed982e30c63ec', null, null, null);
INSERT INTO operator VALUES ('0a074284105d42c49dc2cf5f1b7bf618', null, null, null);
INSERT INTO operator VALUES ('19fd973eaa34467c84b132753e2b9e84', null, null, null);
INSERT INTO operator VALUES ('97a7b5de1c4b400d9d148249a33a0768', 'null', 'kf1013', '熊琨');
INSERT INTO operator VALUES ('MP10002', '设计部', null, null);
INSERT INTO operator VALUES ('9fa4aa6b71e64dadb62a0773705d95c2', null, null, null);
INSERT INTO operator VALUES ('0939c0ca1bef40aeb4e21c37586e521e', null, null, null);
INSERT INTO operator VALUES ('835f269efc89402181f69f7bbc8b7d47', null, null, null);
INSERT INTO operator VALUES ('88d9b6c32590411c855bde8dd48cac1a', null, null, null);
INSERT INTO operator VALUES ('dc124d796cc24bb188a4a19635732c2e', null, null, null);
INSERT INTO operator VALUES ('64cf389eb6f0411294a2b23f26becaac', null, null, null);
INSERT INTO operator VALUES ('fecdd5e8a3294b0bae5ac573ed69f784', null, null, null);
INSERT INTO operator VALUES ('bc8e218f909d4af49c9eee9b7a88311d', null, null, null);
INSERT INTO operator VALUES ('da433ca5f9dc41aa9c3220131720df2a', null, null, null);
INSERT INTO operator VALUES ('aa281ef0172e470e8e0dff08971b09e3', null, null, null);
INSERT INTO operator VALUES ('dadc4477568e4f6ebd8007c7c592e28a', null, null, null);
INSERT INTO operator VALUES ('7c87c21aaa5a46049d13ac5dde530695', 's', 's', 's');
INSERT INTO operator VALUES ('2de62d110a11478888798710d0aebc53', null, null, null);
INSERT INTO operator VALUES ('3274d9b6705948b684f300cd7da424eb', null, null, null);
INSERT INTO operator VALUES ('29e93e4bf38b43e99b81bd818cbd976d', null, null, null);
INSERT INTO operator VALUES ('b82cd3359cc644e1be90385c0e086019', null, null, null);
INSERT INTO operator VALUES ('93c156c667f54ec3b8afa9c10a07985a', null, null, null);
INSERT INTO operator VALUES ('14f755dd90ae4c3d9665328d13e49f28', null, null, null);
INSERT INTO operator VALUES ('MP10001', '技术开发部', null, null);
INSERT INTO operator VALUES ('1fb7074e1682415cbc14364bfa844b66', 's', 's', 's');
INSERT INTO operator VALUES ('561655e2e4f049288208f2784357aa8a', null, null, null);
INSERT INTO operator VALUES ('2dda29fcbd2749a8928ff85cb76a9d07', null, null, null);
INSERT INTO operator VALUES ('20b62bb305914f649ee89b24b03886a7', null, null, null);

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` varchar(32) NOT NULL COMMENT '组ID',
  `name` varchar(32) DEFAULT NULL COMMENT '组名',
  `description` varchar(1024) DEFAULT NULL COMMENT '组描述',
  PRIMARY KEY (`id`)
) ENGINE=ndbcluster DEFAULT CHARSET=utf8 COMMENT='角色(操作组)表';

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO role VALUES ('ROLE10000', '普通管理员', '普通管理员权限');
INSERT INTO role VALUES ('OPERATOR_TELLER', '运营商出纳', '该角色专门从事出纳工作');
INSERT INTO role VALUES ('ROLE10001', '系统管理员', '系统管理员权限');
INSERT INTO role VALUES ('6cc2101def7a4b6ca0f10f9310966fbc', '系统客服', '系统客服权限');

-- ----------------------------
-- Table structure for `role_function`
-- ----------------------------
DROP TABLE IF EXISTS `role_function`;
CREATE TABLE `role_function` (
  `id` varchar(32) NOT NULL COMMENT '组权限关系ID',
  `groupId` varchar(32) DEFAULT NULL COMMENT '组ID',
  `functionId` varchar(32) DEFAULT NULL COMMENT '权限ID',
  PRIMARY KEY (`id`)
) ENGINE=ndbcluster DEFAULT CHARSET=utf8 COMMENT='组权限表';

-- ----------------------------
-- Records of role_function
-- ----------------------------
INSERT INTO role_function VALUES ('eb6a1304a89e492490c21f28d8c200e2', 'ROLE10000', 'CF40001');
INSERT INTO role_function VALUES ('RF10020', 'ROLE10001', 'CF40002');
INSERT INTO role_function VALUES ('c32e6df82cb94d1ba57f7e389bb43237', '221708f7dc4d42cfb12b25dd0c91da9b', 'CF20009');
INSERT INTO role_function VALUES ('d992848f63cf40e2bbe7d62008297179', 'ROLE10001', 'CF20008');
INSERT INTO role_function VALUES ('RF10019', 'ROLE10001', 'CF20009');
INSERT INTO role_function VALUES ('72dd95ea4d6a42febbecd8b916a687e7', 'ROLE10001', 'CF60002');
INSERT INTO role_function VALUES ('RF10007', 'ROLE10002', 'PF10001');
INSERT INTO role_function VALUES ('RF10014', 'ROLE10001', 'CF20008');
INSERT INTO role_function VALUES ('RF10002', 'ROLE10001', 'CF10001');
INSERT INTO role_function VALUES ('bb42312ac0764771bbf7287087c84448', '221708f7dc4d42cfb12b25dd0c91da9b', 'CF20006');
INSERT INTO role_function VALUES ('b6da9f0ad0d746c0b311ddc43de19a27', '547d0cf53cc84c448f02215695928700', 'CF10002');
INSERT INTO role_function VALUES ('RF10006', 'ROLE10001', 'PF10002');
INSERT INTO role_function VALUES ('9327ea08c6a44beaa4a98f9bddbfd38f', 'ROLE10001', 'PF10006');
INSERT INTO role_function VALUES ('0e9bfc1d7cd842f8b96fcc6c71202270', 'ROLE10000', 'CF30001');
INSERT INTO role_function VALUES ('37f41d9309a64511bff8d7194c6a2daa', 'e975939b98684a1ba2dec8d839a0fffe', 'CF20009');
INSERT INTO role_function VALUES ('RF10016', 'ROLE10002', 'CF10003');
INSERT INTO role_function VALUES ('bffce377b93a4a6396b8d991760825ba', 'e975939b98684a1ba2dec8d839a0fffe', 'CF20006');
INSERT INTO role_function VALUES ('3ad9e2ee1f384ea6a9802617bdf51cda', 'ROLE10001', 'CF60001');
INSERT INTO role_function VALUES ('RF100021', 'ROLE10001', 'PF10003');
INSERT INTO role_function VALUES ('RF_TELLER_03', 'OPERATOR_TELLER', 'CF60002');
INSERT INTO role_function VALUES ('6d82a3c227e04f21be40ce03b2512a37', 'e975939b98684a1ba2dec8d839a0fffe', 'CF20004');
INSERT INTO role_function VALUES ('b9b21d0386b047c89f9ee9d3048e6686', 'ROLE10000', 'CF40002');
INSERT INTO role_function VALUES ('RF_TELLER_02', 'OPERATOR_TELLER', 'CF60001');
INSERT INTO role_function VALUES ('RF100020', 'ROLE10001', 'CF30001');
INSERT INTO role_function VALUES ('RF10011', 'ROLE10001', 'CF20005');
INSERT INTO role_function VALUES ('83b60ce2ad0f4f55babbd0a02ccbe812', 'ROLE10001', 'bce9cf4736b64f6fb546d6a0f3893606');
INSERT INTO role_function VALUES ('88327d9da7ae498dbde1a133eba47e18', 'ROLE10000', 'PF10003');
INSERT INTO role_function VALUES ('1a90f62c4d3141e09779054b1d320956', '221708f7dc4d42cfb12b25dd0c91da9b', 'CF20004');
INSERT INTO role_function VALUES ('88538b8527fa49faa7889d2e60e9637f', 'e975939b98684a1ba2dec8d839a0fffe', 'CF10001');
INSERT INTO role_function VALUES ('RF_TELLER_01', 'OPERATOR_TELLER', 'PF10006');
INSERT INTO role_function VALUES ('RF10005', 'ROLE10001', 'CF10004');
INSERT INTO role_function VALUES ('b28e4b1927ec42098f71b852764b297a', 'e975939b98684a1ba2dec8d839a0fffe', 'CF20008');
INSERT INTO role_function VALUES ('RF10008', 'ROLE10002', 'CF10001');
INSERT INTO role_function VALUES ('RF10004', 'ROLE10001', 'CF10003');
INSERT INTO role_function VALUES ('RF10003', 'ROLE10001', 'CF10002');
INSERT INTO role_function VALUES ('RF10001', 'ROLE10001', 'PF10001');
INSERT INTO role_function VALUES ('RF10012', 'ROLE10001', 'CF20006');
INSERT INTO role_function VALUES ('9a143677ee114e85ba0a6946618f6225', 'ROLE10000', 'PF10004');
INSERT INTO role_function VALUES ('f591a9090e6144ed88824715b60c2879', 'e975939b98684a1ba2dec8d839a0fffe', 'CF20006');
INSERT INTO role_function VALUES ('RF10010', 'ROLE10001', 'CF20004');
INSERT INTO role_function VALUES ('b585dbfae38a453a896a7695cbf02fc9', '547d0cf53cc84c448f02215695928700', 'ffab2eda075445f6862f66de2a8d9f8d');
INSERT INTO role_function VALUES ('6f5fe5c1981c4e959e64b0fefb4bbe7c', 'ROLE10001', 'PF10004');
INSERT INTO role_function VALUES ('75df65a9541d4dc79ff39fef8b87d50b', 'ROLE10001', 'CF40001');

-- ----------------------------
-- Table structure for `role_members`
-- ----------------------------
DROP TABLE IF EXISTS `role_members`;
CREATE TABLE `role_members` (
  `id` varchar(32) NOT NULL COMMENT '成员关系ID',
  `roleId` varchar(32) DEFAULT NULL COMMENT '组ID',
  `memberId` varchar(32) DEFAULT NULL COMMENT '管理员ID',
  PRIMARY KEY (`id`)
) ENGINE=ndbcluster DEFAULT CHARSET=utf8 COMMENT='操作组成员表';

-- ----------------------------
-- Records of role_members
-- ----------------------------
INSERT INTO role_members VALUES ('9a0b84945227453c8848d8e6f9a42b6d', 'ROLE10000', '561655e2e4f049288208f2784357aa8a');
INSERT INTO role_members VALUES ('214b36d39cb74896af96b2aa433b1fb4', 'ROLE10001', '319d63f494964fc3a8f5c60f37529210');
INSERT INTO role_members VALUES ('48ac11ac7fcb4e3ba73f76e6ddb4cd4f', 'ROLE10001', '29e93e4bf38b43e99b81bd818cbd976d');
INSERT INTO role_members VALUES ('20365312767d4d3fb9d3115c0dfd6c0b', 'ROLE10000', '93c156c667f54ec3b8afa9c10a07985a');
INSERT INTO role_members VALUES ('role_member_0003', 'ROLE10001', '7c87c21aaa5a46049d13ac5dde530695');
INSERT INTO role_members VALUES ('ba01ee1a4830482ca7dade7c721ec2b0', 'ROLE10000', '20b62bb305914f649ee89b24b03886a7');
INSERT INTO role_members VALUES ('8e63fcbbf05f4d028d9d7385dcad782f', 'OPERATOR_TELLER', 'MP10002');
INSERT INTO role_members VALUES ('0d30f290822a4afd90ba1b52807fe6bc', 'ROLE10000', '64cf389eb6f0411294a2b23f26becaac');
INSERT INTO role_members VALUES ('34036d2ecf594d6991556a43bd390eca', 'ROLE10001', '0a074284105d42c49dc2cf5f1b7bf618');
INSERT INTO role_members VALUES ('b341e46ff8c34f5f9ee2be342c5a5b40', 'ROLE10001', '97a7b5de1c4b400d9d148249a33a0768');
INSERT INTO role_members VALUES ('06c0223096864bcda0114ba3349b4f86', 'ROLE10000', '88d9b6c32590411c855bde8dd48cac1a');
INSERT INTO role_members VALUES ('role_member_0002', 'ROLE10001', '1fb7074e1682415cbc14364bfa844b66');
INSERT INTO role_members VALUES ('0b592207f3f44a549c9e40043f91c55c', 'ROLE10001', 'MP10001');
INSERT INTO role_members VALUES ('4994c1660d7b4e7e87cda378c0c8b57c', 'ROLE10001', 'MP10002');

-- ----------------------------
-- Procedure structure for `demo`
-- ----------------------------
DROP PROCEDURE IF EXISTS `demo`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `demo`()
BEGIN
	DECLARE totel INT;
    END
;;
DELIMITER ;
