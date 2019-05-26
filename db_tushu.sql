/*
MySQL Data Transfer
Source Host: localhost
Source Database: db_tushu
Target Host: localhost
Target Database: db_tushu
Date: 2012-11-20 22:31:03
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
CREATE TABLE `t_admin` (
  `userId` int(11) NOT NULL,
  `userName` varchar(50) default NULL,
  `userPw` varchar(50) default NULL,
  PRIMARY KEY  (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_catelog
-- ----------------------------
CREATE TABLE `t_catelog` (
  `catelog_id` int(11) NOT NULL,
  `catelog_name` varchar(50) default NULL,
  `catelog_del` varchar(50) default NULL,
  PRIMARY KEY  (`catelog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_goods
-- ----------------------------
CREATE TABLE `t_goods` (
  `goods_id` int(11) NOT NULL,
  `xiaoleibie_id` int(11) default NULL,
  `goods_name` varchar(50) default NULL,
  `goods_zuozhe` varchar(255) default NULL,
  `goods_mulu` text,
  `goods_pic` varchar(50) default NULL,
  `goods_shichangjia` int(11) default NULL,
  `goods_tejia` int(11) default NULL,
  `fabushi` varchar(255) default NULL,
  `goods_Del` varchar(50) default NULL,
  PRIMARY KEY  (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
CREATE TABLE `t_order` (
  `order_id` int(11) NOT NULL,
  `order_bianhao` varchar(50) default NULL,
  `order_date` varchar(50) default NULL,
  `order_zhuangtai` varchar(50) default NULL,
  `order_songhuodizhi` varchar(50) default NULL,
  `order_fukuangfangshi` varchar(50) default NULL,
  `order_jine` int(11) default NULL,
  `order_user_id` int(11) default NULL,
  PRIMARY KEY  (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_orderitem
-- ----------------------------
CREATE TABLE `t_orderitem` (
  `orderItem_id` int(11) NOT NULL,
  `order_id` int(11) default NULL,
  `goods_id` int(11) default NULL,
  `goods_quantity` int(11) default NULL,
  PRIMARY KEY  (`orderItem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_pinglun
-- ----------------------------
CREATE TABLE `t_pinglun` (
  `id` int(11) NOT NULL default '0',
  `neirong` varchar(500) default NULL,
  `shijian` varchar(255) default NULL,
  `goodsId` int(11) default NULL,
  `userId` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
CREATE TABLE `t_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) default NULL,
  `user_pw` varchar(50) default NULL,
  `user_realname` varchar(50) default NULL,
  `user_sex` varchar(50) default NULL,
  `user_age` varchar(50) default NULL,
  `user_address` varchar(255) default NULL,
  `user_tel` varchar(50) default NULL,
  `user_email` varchar(50) default NULL,
  `user_del` varchar(255) default NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_xiaoleibie
-- ----------------------------
CREATE TABLE `t_xiaoleibie` (
  `id` int(11) NOT NULL,
  `mingcheng` varchar(50) default NULL,
  `del` varchar(50) default NULL,
  `catelogId` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', 'a', 'a');
INSERT INTO `t_catelog` VALUES ('2', '人文社科图书', 'no');
INSERT INTO `t_catelog` VALUES ('3', '计算机类图书', 'no');
INSERT INTO `t_goods` VALUES ('1', '1', '资本之王', '刘庆功', '本书展现了世界最著名的私募公司黑石集团创始人之一史蒂夫&middot;施瓦茨曼的人生经历，以及他与黑石的浮浮沉沉，介绍了这些事件背后千丝万缕的影响因素，我们可以从中看到黑石、乃至整个PE行业在不同环境下的发展轨迹。<br />\r\n　　凯里和莫里斯是两位资深的私募股权记者，他们在书中描述了黑石集团所参与过的每一笔交易，时间可以追溯到公司共同创始人、雷曼元老彼得?彼得森和施瓦茨曼挨家挨户上门筹资的1985年。本书不仅仅是个人传记，它还为读者对私募股权业进行一番全面彻底的检视，作者在书中奉上的是一堂百科全书式的收购案例大课。', '/upload/1330178548859.jpg', '120', '120', '2012-11-18 17:57', 'no');
INSERT INTO `t_goods` VALUES ('2', '1', '货币战争全四册', '张望请', '在全球经济发展的过程中，货币起到了举足轻重的作用。通胀、通缩和泡沫越来越频繁地影响到我们的生活，但是货币背后隐藏的集团利益之争，却在很长时间里不为人知。什么样的特殊利益集团左右着货币制度的建立和演化？他们如何从政府手中夺取了货币发行大权？他们又怎样制造泡沫和危机，从中渔利？《货货币战争（升级版）（套装全4册）》全新序言解读货币战趋势！第一次揭开了货币背后的战争大幕，为我们展示了政治风波和经济危机之后的翻云覆雨手。<br />\r\n　　自1694年英格兰银行成立以来的300多年间，几乎每一场世界重大变故背后，都能看到国际金融资本势力的身影。他们通过左右一国的经济命脉，掌握国家的政治命运；通过煽动政治事件、诱发经济危机，控制着世界财富的流向与分配。可以说，一部世界金融史，就是一部谋求主宰人类财富的阴谋史，我们的经济实际上是被少数人主导的。统治世界的精英俱乐部在政治与经济领域不断掀起金融战役，谋求最大的经济利益。而在经济动荡不安的今天，中国如何警惕和应对金融打击，迎接一场&ldquo;不流血的战争&rdquo;？《货币战争（升级版）（套装全4册）》一定会让你深受启发。请输入内容', '/upload/1330178860234.jpg', '400', '400', '2012-11-13 17:57', 'no');
INSERT INTO `t_goods` VALUES ('3', '1', '商业银行业务经营', '李思思', '第1章 商业银行导论 <br />\r\n　1．1 商业银行的起源和发展 <br />\r\n　1．2 商业银行的性质和作用 <br />\r\n　1．3 商业银行的组织结构 <br />\r\n　1．4 政府对银行业的监管 <br />\r\n第2章 商业银行的资本管理 <br />\r\n　2．1 银行资本的性质与作用 <br />\r\n　2．2 资本的构成 <br />\r\n　2．3 资本充足与银行稳健 <br />\r\n　2．4 资本的筹集与管理 <br />\r\n第3章 商业银行的负债管理 <br />\r\n　3．1 存款的种类和构成 <br />\r\n　3．2 存款的定价 <br />\r\n　3．3 非存款性的资金来源 <br />\r\n　3．4 商业银行负债成本的管理', '/upload/1330179478250.jpg', '120', '120', '2012-11-19 17:54', 'no');
INSERT INTO `t_goods` VALUES ('4', '3', 'Java 经典实例', '张孝祥', '前言<br />\r\n第1章　起步走：编译、运行和调试Java程序<br />\r\n　1.0 简介<br />\r\n1.1 编译和运行Java程序：JDK方式<br />\r\n1.2 采用带彩色突出显示的编辑器编辑和编译程序<br />\r\n1.3 采用IDE编译、执行和测试程序<br />\r\n1.4　有效使用CLASSPATH<br />\r\n1.5 使用本书的com.darwinsys API类<br />\r\n1.6 编译本书的源代码示例<br />\r\n1.7 使用Ant工具自动编译和执行Java程序<br />\r\n1.8 Applet<br />\r\n1.9 处理过期警告<br />\r\n1.10 没有#ifdef的条件编译<br />\r\n1.11 调试信息的输出<br />\r\n1.12 使用断言机制维护程序请输入内容', '/upload/1330179775359.jpg', '150', '150', '2012-11-19 11:57', 'no');
INSERT INTO `t_goods` VALUES ('5', '3', 'Java程序设计', '张孝祥', '化志章等编著的《Java程序设计&mdash;&mdash;从方法学角度描述》以Java语言为例，用方法学思想指导内容的组织和撰写。在各章学习之前，为读者准备了 &ldquo;本章方法学导引&rdquo;。该内容以方法学思想为指导，从程序设计的角度，用深入浅出的语言（不涉及过多计算机专业术语和Java语法细节）讲述本章内容引入的背景、要解决的问题，以及怎样解决，并点出为此定制出哪些语法机制（仅给出名称及其作用）。在后续各节中，结合具体示例，剖析语法机制如何使用。帮助读者跳过纷繁复杂的语法表象，快速直接地触及语法机制的核心思想和应用框架，同时训练一种对所学不仅要&ldquo;知其然，更知其所以然&rdquo;的学习态度和学习方法。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp; 《Java程序设计&mdash;&mdash;从方法学角度描述》第1、2两章概述了程序设计的基础内容，包括程序设计的基本策略、程序设计语言所蕴含的重要属性（思想）以及基本成分；第3章剖析面向对象方法的来龙去脉，并介绍面向对象方法的重要思想、概念和机制；在第4章探讨这些内容的Java实现版本，第5 章进行了进一步拓展。第6章～第11章是Java语言重要的应用特色，包含异常处理、线程机制、GUI编程、I/O流、网络通信、泛型和集合框架等内容。<br />', '/upload/1330182288734.jpg', '140', '140', '2012-11-16 17:57', 'no');
INSERT INTO `t_goods` VALUES ('6', '3', 'C++ 中文版', '狄仁杰', '第1章　快速入门<br />\r\n　　1.1 编写简单的C++程序<br />\r\n　　1.2 初窥输入/输出<br />\r\n　　1.3 关于注释<br />\r\n　　1.4 控制结构 入<br />\r\n　　1.5 类的简介<br />\r\n　　1.6 C++程序<br />\r\n　　小结<br />\r\n　　术语<br />\r\n第一部分 基本语言<br />\r\n　第2章　变量和基本类型<br />\r\n　　2.1 基本内置类型<br />\r\n　　2.2 字面值常量<br />\r\n　　2.3 变量<br />\r\n　　2.4 const限定符', '/upload/1330182464203.jpg', '78', '78', '2012-11-17 17:57', 'no');
INSERT INTO `t_goods` VALUES ('7', '1', '新周刊2011年度', '李强', '大时代的边上大时代的边上：时代是个局，我做局外人你和时代合唱，我和自己独吟布农：中国最幸福的农民苏家桥：谁见幽人独往来木心：文艺范儿的&ldquo;活化石&rdquo; 陈丹青：原来我睡在大时代善待异见，是时代最大的进步小日子：小地方、小人物、小日子在大时代，过小日子弹唱会德黑兰读书小组只有小日子才属于自己让我们谈谈养生吧中国人为什么爱谈养生？徐文兵：先知身体，才知世界八爷：养生就是顺其自然蔡澜：&ldquo;健康版&rdquo;害死很多女人，又间接害死很多男人现代人的十大困境低成本生活指南生活在低处朱德庸专访：高品质的生活往往都不花钱别让&ldquo;低成本&rdquo;吃掉你的钱包 &ldquo;宅生活&rdquo;是一种消费生活 重口味与小清新重口味与小清新趣味鸿沟造就文化自由重口味溯源小清新溯源跟现实相比，一切重口味都算小清新男人没了：中国男人是如何异化的？中国男人是如何走向消失的？从肌肉猛男到妇女之友中国男人有多&ldquo;不是男人&rdquo;？除了权、钱，男人还剩下什么？无聊词典：从无聊经济到无聊的<br />', '/upload/1330182597421.jpg', '48', '48', '2012-11-11 10:57', 'no');
INSERT INTO `t_goods` VALUES ('8', '2', '中国心绞痛', '付喜初', '《中国心绞痛》为张鸣先生近来撰写的时评文字结集，谈及文化、政治、民风、民族、教育、自由、学风等社会诸多让人不忍目视的林林种种，作者身后的历史学功力和思想见地，往往一针见血命中问题之要害，使得人读之如醍醐灌顶，在快感与痛感之间，催人省思，给人启示。<br />\r\n　　《中国心绞痛》集合了张鸣教授近来最有影响、最有代表性的文章，天下有心人自当体会张鸣先生的良苦用心！', '/upload/1330182832890.jpg', '78', '78', '2012-11-14 17:57', 'no');
INSERT INTO `t_goods` VALUES ('9', '1', '中国驾车旅游图', '楚云飞', '中国驾车旅游图', '/upload/1330182950171.jpg', '78', '70', '2012-11-19 18:57', 'no');
INSERT INTO `t_goods` VALUES ('10', '1', '宝宝益智启蒙绘', '李大海', '0-3岁是宝宝认知启蒙、智力发育的重要阶段，每一位父母都应该尽力为孩子提供优质的图书，图文并茂的绘本则是该阶段的最佳选择。&ldquo;幸福宝宝益智启蒙绘本&rdquo;是一套畅销全球的著名低幼绘本，由日本儿童文学大家松谷美代子撰文，享誉世界的三位著名画家岩崎千弘、濑川康男、东光寺启配图，具备极高的艺术性与文学性，既能锻炼孩子的语言和思维，又能熏陶孩子对美的感受力。<br />\r\n　　&ldquo;不见了、不见了&mdash;&mdash;哇！&rdquo;相信每个妈妈都跟宝宝玩过这样的游戏，巧妙地融入亲子互动是本套书的另一大特色。对于0-3岁的宝宝来说，书也是玩具。把读书变成游戏，在游戏中学习，不仅能极大调动孩子的参与性，还能让孩子在愉快的心情中吸收书中传达的知识。吃饭、睡觉、洗澡等宝宝最熟悉的生活场景，配合韵律感十足的文字与柔和温馨的画面，一边读书，一边游戏，在帮助宝宝智能发展的同时，还给培养宝宝与父母间亲密的依恋关系，让宝宝在幸福的氛围中快乐成长<br />\r\n　　01《不见了、不见了》<br />\r\n　　&ldquo;不见了、不见了&mdash;&mdash;哇！&rdquo;。捂住眼睛，小猫不见了，翻开下一页，&ldquo;啪&rdquo;地松开双手，小猫又登场了。接着是小熊、小老鼠、小狐狸，和小宝宝自己！生动饱满的画面，韵律感十足的文字，充满期待的翻页和表演游戏，一定能让小宝宝快快乐乐融入书中！', '/upload/1330183287578.jpg', '150', '150', '2012-11-19 17:57', 'no');
INSERT INTO `t_order` VALUES ('1', '20121120030332', '2012-11-20 03:03:32', 'yes', 'xxxxxxxxxxxxxxxxxxxx', '货到付款', '552', '7');
INSERT INTO `t_orderitem` VALUES ('1', '1', '1', '2');
INSERT INTO `t_orderitem` VALUES ('2', '1', '6', '1');
INSERT INTO `t_orderitem` VALUES ('3', '1', '8', '3');
INSERT INTO `t_pinglun` VALUES ('2', '很好，非常不错的图书，值得购买', '2012-11-18 01:47', '9', null);
INSERT INTO `t_pinglun` VALUES ('3', '1111111111', '2012-11-18 01:52', '9', null);
INSERT INTO `t_pinglun` VALUES ('4', '反对反对反对反对发的得得得得得得得得得的得得得得得得得得得得得', '2012-11-18 01:53', '9', null);
INSERT INTO `t_pinglun` VALUES ('5', 'eeeeeeeeeeeeeeeeeeeeeeeeeeeee', '2012-11-18 09:27', '9', null);
INSERT INTO `t_pinglun` VALUES ('6', 'ccccccccccccccccccccccccccccccccccccccccc', '2012-11-19 20:04', '7', null);
INSERT INTO `t_pinglun` VALUES ('7', 'ddddddddddddddddddddddddddddddddddddddddddddddddddd', '2012-11-20 15:03', '1', null);
INSERT INTO `t_user` VALUES ('7', 'liusan', '000000', '刘三', '女', '22', '北京路', '13555555555', 'liusan@yahoo.cn', 'no');
INSERT INTO `t_xiaoleibie` VALUES ('1', '哲学/宗教', 'no', '2');
INSERT INTO `t_xiaoleibie` VALUES ('2', '政治/军事', 'no', '2');
INSERT INTO `t_xiaoleibie` VALUES ('3', '软件编程', 'no', '3');
INSERT INTO `t_xiaoleibie` VALUES ('4', '硬件设备', 'no', '3');
