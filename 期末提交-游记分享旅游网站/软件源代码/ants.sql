-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2016-11-06 22:46:51
-- 服务器版本： 5.7.10-log
-- PHP Version: 5.6.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ants`
--

-- --------------------------------------------------------

--
-- 表的结构 `ants_comments`
--

CREATE TABLE `ants_comments` (
  `coid` int(10) UNSIGNED NOT NULL,
  `cid` int(10) UNSIGNED DEFAULT '0',
  `created` int(10) UNSIGNED DEFAULT '0',
  `author` varchar(200) DEFAULT NULL,
  `authorId` int(10) UNSIGNED DEFAULT '0',
  `ownerId` int(10) UNSIGNED DEFAULT '0',
  `mail` varchar(200) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `ip` varchar(64) DEFAULT NULL,
  `agent` varchar(200) DEFAULT NULL,
  `text` text,
  `type` varchar(16) DEFAULT 'comment',
  `status` varchar(16) DEFAULT 'approved',
  `parent` int(10) UNSIGNED DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ants_comments`
--

INSERT INTO `ants_comments` (`coid`, `cid`, `created`, `author`, `authorId`, `ownerId`, `mail`, `url`, `ip`, `agent`, `text`, `type`, `status`, `parent`) VALUES
(2, 8, 1449733803, 'liyueheng', 4, 1, 'liyueheng@sina.com', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36', '成都是座美丽的城市', 'comment', 'approved', 0),
(3, 11, 1450336632, 'hwk603', 1, 4, 'hwk603@qq.com', 'http://hwk603.com', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.80 Safari/537.36', 'hello', 'comment', 'approved', 0),
(4, 11, 1450337124, 'hwk603', 1, 4, 'hwk603@qq.com', 'http://hwk603.com', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.80 Safari/537.36', 'houge xiaodiao', 'comment', 'approved', 0);

-- --------------------------------------------------------

--
-- 表的结构 `ants_contents`
--

CREATE TABLE `ants_contents` (
  `cid` int(10) UNSIGNED NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `created` int(10) UNSIGNED DEFAULT '0',
  `modified` int(10) UNSIGNED DEFAULT '0',
  `text` text,
  `order` int(10) UNSIGNED DEFAULT '0',
  `authorId` int(10) UNSIGNED DEFAULT '0',
  `template` varchar(32) DEFAULT NULL,
  `type` varchar(16) DEFAULT 'post',
  `status` varchar(16) DEFAULT 'publish',
  `password` varchar(32) DEFAULT NULL,
  `commentsNum` int(10) UNSIGNED DEFAULT '0',
  `allowComment` char(1) DEFAULT '0',
  `allowPing` char(1) DEFAULT '0',
  `allowFeed` char(1) DEFAULT '0',
  `parent` int(10) UNSIGNED DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ants_contents`
--

INSERT INTO `ants_contents` (`cid`, `title`, `slug`, `created`, `modified`, `text`, `order`, `authorId`, `template`, `type`, `status`, `password`, `commentsNum`, `allowComment`, `allowPing`, `allowFeed`, `parent`) VALUES
(6, '标签', 'tags', 1449725100, 1449730832, '<!--markdown-->', 1, 1, 'page_tags.php', 'page', 'publish', NULL, 0, '1', '1', '1', 0),
(4, '分类', 'categories', 1449725040, 1449730850, '<!--markdown-->', 4, 1, 'page_categories.php', 'page', 'publish', NULL, 0, '1', '1', '1', 0),
(5, '归档', 'archives', 1449725040, 1449730822, '<!--markdown-->', 2, 1, 'page_archives.php', 'page', 'publish', NULL, 0, '1', '1', '1', 0),
(9, '首尔游记', '9', 1449729480, 1449730060, '<!--markdown-->你好，我是首尔！\r\n你好，我是首尔！\r\n你好，我是首尔！\r\n你好，我是首尔！\r\n你好，我是首尔！\r\n你好，我是首尔！\r\n你好，我是首尔！\r\n你好，我是首尔！\r\n你好，我是首尔！\r\n你好，我是首尔！', 0, 2, NULL, 'post', 'publish', NULL, 0, '1', '1', '1', 0),
(8, '成都游记', '8', 1449727080, 1449730046, '<!--markdown-->成都市（四川话拼音：Céndūsì；国际音标：/tsʰən˨˩tu˥sɿ˨˩˧/；汉语拼音：Chéngdū），别称“蓉城”、“锦官城”，简称“蓉”，地处四川盆地西部的成都平原腹地，为中国四川省省会、副省级城市。成都是中国中西部重要的中心城市，是中国西南地区物流、商贸、金融、科技、文化、教育中心及交通、通信枢纽，国家统筹城乡综合配套改革试验区。\r\n\r\n作为首批国家历史文化名城之一，成都自古被誉为“天府之国”，是中国开发最早、持续繁荣时间最长的城市之一。有详细史料可考的成都建城时间是公元前316年，距今已有2300余年的历史；而根据成都市区内的金沙遗址等考古遗迹，成都成为高度发达的城市聚落距今已有3200余年。如今，成都所在的成渝经济区是中国西部经济最领先的区域。\r\n\r\n成都作为西南重镇，自古以来就是中国西南地区的政治、经济、文化、军事中心。春秋末期（约公元前4世纪），古蜀国第五世开明王把都城迁至成都。周赧王四年（公元前311年），秦国蜀郡郡守张仪按秦首都咸阳建制修筑成都城墙。三国时为蜀国首都，五代十国时为前蜀、后蜀都城，文化遗存丰富。秦汉以来，成都就以农业、手工业兴盛和文化发达著称，历代都是中国西南地区的政治、经济、文化中心和长江流域的重要城市。汉代成都与洛阳等并列为五大都会之一。唐代商贸繁荣，与扬州齐名，称为“扬一益二”。\r\n\r\n在夏代纪年早期阶段甚至更早的时期，地处成都平原的古蜀国已形成了高度发达的青铜文明，成为了华夏文明的重要源头和中华民族的发祥地之一。据记载，古蜀国共有蚕丛、柏灌、鱼凫、杜宇和开明五个朝代，先后定都于瞿上（今成都市温江区，亦有今广汉市之说）、郫邑（今郫县）、新都（今成都市新都区）、广都（今双流县）。春秋末期（约公元前4世纪），第五世开明王把都城迁至成都，取周王迁岐“一年而所居成聚，二年成邑，三年成都”之典故，因名成都，相沿至今，成都也因此成为中国乃至世界罕见的自建城起便未改名称的城市。有人认为成都为古蜀地名音译词。有一种说法将“广都、新都、成都”合称为“古蜀三都”。\r\n\r\n如今成都平原有很多古蜀国的文化遗迹，如三星堆遗址、金沙遗址、鱼凫古城遗址、望丛祠等，地处成都市区的金沙遗址则是古蜀文化发展的一个巅峰。位于成都市区北校场的一处古蜀国遗迹名曰“武担山”，相传为第十二世开明王派“五丁力士”由今甘肃省武都县取土为王妃修建的墓冢。', 0, 1, NULL, 'post', 'publish', NULL, 1, '1', '1', '1', 0),
(10, '苏梅岛游记', '10', 1449729900, 1449730071, '<!--markdown-->你好，我是苏梅岛。\r\n你好，我是苏梅岛。\r\n你好，我是苏梅岛。\r\n你好，我是苏梅岛。\r\n你好，我是苏梅岛。\r\n你好，我是苏梅岛。\r\n你好，我是苏梅岛。\r\n你好，我是苏梅岛。\r\n你好，我是苏梅岛。\r\n你好，我是苏梅岛。\r\n你好，我是苏梅岛。\r\n你好，我是苏梅岛。\r\n你好，我是苏梅岛。\r\n你好，我是苏梅岛。\r\n你好，我是苏梅岛。\r\n你好，我是苏梅岛。\r\n你好，我是苏梅岛。\r\n你好，我是苏梅岛。\r\n', 0, 3, NULL, 'post', 'publish', NULL, 0, '1', '1', '1', 0),
(11, '威基基海滩', '11', 1449040140, 1449732168, '<!--markdown-->海滩区东起钻石山下的卡皮欧尼拉公园，西至阿拉威游艇码头，长达一英里，每日到这里的游客多达25000人。 \r\n\r\n海滩区的精华部分是从丽晶饭店到亚斯顿威基基海滨饭店之间的一段，这里有细致洁白的沙滩、摇曳多姿的椰子树以及林立的高楼大厦，总长度约三四百米.\r\n\r\n大概是世界上最出名的海滩，也是多数游人心目中最典型的夏威夷海滩.', 0, 4, NULL, 'post', 'publish', NULL, 2, '1', '1', '1', 0),
(12, '西岭雪山', '12', 1449095340, 1449731705, '<!--markdown-->  景区的精华概括为“其魂在林，其魄在山，其灵在水”。因其海拔高差悬殊，气候类型多样高山终年积雪，反差极大，可观赏不同季节的景色，有“一日观四季，十里不同天”之美誉。\r\n\r\n  景区地域辽阔，风景资源丰富，具有浓郁的自然风貌和南方高山原始森林特色.', 0, 4, NULL, 'post', 'publish', NULL, 0, '1', '1', '1', 0),
(13, '丽江古城', '13', 1449040500, 1449732161, '<!--markdown-->  丽江街道依山势而建，顺水流而设，质感细腻，以红色角砾岩（五花石）铺就，雨季不泥泞、旱季不飞灰，石上花纹图案自然雅致，质感细腻，与整个城市环境相得益彰。\r\n\r\n  丽江古城充分体现了中国古代城市建设的成就，是中国民居中具有鲜明特色和风格的类型之一.', 0, 4, NULL, 'post', 'publish', NULL, 0, '1', '1', '1', 0),
(14, '海德公园', '14', 1448954280, 1449731976, '<!--markdown-->  在泰晤士河东部的中心，海德公园西接肯辛顿公园(Kensington Park)，东连绿色公园(Green Park)，形成寸土寸金的伦敦城里一片奢侈的绿地."\r\n\r\n  海德公园（HYDE PARK）是伦敦最知名的公园，是英国最大的皇家公园. ', 0, 4, NULL, 'post', 'publish', NULL, 0, '1', '1', '1', 0),
(15, '香山', '15', 1448954400, 1449732061, '<!--markdown-->  树木繁多，其中古树5800余株,具有独特的“山川、名泉、古树、红叶”丰富的园林内涵，是避暑的胜地，天然的氧吧。香山红叶10万黄栌驰名中外，每到深秋时节漫山红叶层林尽染，是京城最浓的秋色. "\r\n\r\n  香山一年四季气候分明，春天山花烂漫，夏日清爽宜人，深秋红叶飘丹，冬林银妆素裹，四季景观各具特色.', 0, 4, NULL, 'post', 'publish', NULL, 0, '1', '1', '1', 0),
(16, '斯洛伐克', '16', 1449040860, 1449732152, '<!--markdown-->  受卡尔巴阡山脉的影响，当地的气候属于湿润的大陆型气候，夏季较长。在较低的地区，平均气温的变化是一月份最低，七月份气温最高. "\r\n\r\n  喀斯特即岩溶地貌，是发育在以石灰岩和白云岩为主的碳酸盐岩上的地貌. ', 0, 4, NULL, 'post', 'publish', NULL, 0, '1', '1', '1', 0);

-- --------------------------------------------------------

--
-- 表的结构 `ants_fields`
--

CREATE TABLE `ants_fields` (
  `cid` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `type` varchar(8) DEFAULT 'str',
  `str_value` text,
  `int_value` int(10) DEFAULT '0',
  `float_value` float DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ants_metas`
--

CREATE TABLE `ants_metas` (
  `mid` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `type` varchar(32) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `count` int(10) UNSIGNED DEFAULT '0',
  `order` int(10) UNSIGNED DEFAULT '0',
  `parent` int(10) UNSIGNED DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ants_metas`
--

INSERT INTO `ants_metas` (`mid`, `name`, `slug`, `type`, `description`, `count`, `order`, `parent`) VALUES
(16, '西岭雪山', '西岭雪山', 'tag', NULL, 1, 0, 0),
(2, '成都', '成都', 'tag', NULL, 1, 0, 0),
(3, '中国', 'china', 'category', NULL, 4, 1, 0),
(4, '成都 ', 'chengdu', 'category', NULL, 2, 1, 3),
(5, '韩国', 'han', 'category', NULL, 1, 2, 0),
(6, '首尔', 'shouer', 'category', NULL, 1, 1, 5),
(7, '泰国', 'tai', 'category', NULL, 1, 3, 0),
(8, '苏梅岛', 'sumei', 'category', NULL, 1, 1, 7),
(9, '中国', '中国', 'tag', NULL, 1, 0, 0),
(10, '韩国', '韩国', 'tag', NULL, 1, 0, 0),
(11, '首尔', '首尔', 'tag', NULL, 1, 0, 0),
(12, '泰国', '泰国', 'tag', NULL, 1, 0, 0),
(13, '苏梅岛', '苏梅岛', 'tag', NULL, 1, 0, 0),
(14, '夏威夷', '夏威夷', 'tag', NULL, 1, 0, 0),
(15, '夏威夷', 'xiaweiyi', 'category', NULL, 1, 1, 20),
(17, '丽江古城', '丽江古城', 'tag', NULL, 1, 0, 0),
(18, '欧洲', 'ouzhou', 'category', NULL, 2, 5, 0),
(19, '英国', 'England', 'category', NULL, 1, 1, 18),
(20, '美国', 'meiguo', 'category', NULL, 1, 6, 0),
(21, '云南', 'yunnan', 'category', NULL, 1, 2, 3),
(22, '海德公园', '海德公园', 'tag', NULL, 1, 0, 0),
(23, '北京', 'beijing', 'category', NULL, 1, 3, 3),
(24, '香山', '香山', 'tag', NULL, 1, 0, 0),
(25, '斯洛伐克', 'siluofake', 'category', NULL, 1, 2, 18),
(26, '斯洛伐克', '斯洛伐克', 'tag', NULL, 1, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ants_options`
--

CREATE TABLE `ants_options` (
  `name` varchar(32) NOT NULL,
  `user` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `value` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ants_options`
--

INSERT INTO `ants_options` (`name`, `user`, `value`) VALUES
('theme', 0, 'jianshu'),
('theme:jianshu', 0, 'a:15:{s:8:"logoText";s:0:"";s:9:"avatarUrl";s:0:"";s:6:"icpNum";s:0:"";s:8:"siteStat";s:0:"";s:7:"bgPhoto";s:0:"";s:12:"avatarDomain";s:51:"http://7i7k6x.com1.z0.glb.clouddn.com/123448TUi.jpg";s:13:"alipayAccount";s:0:"";s:12:"alipayAmount";s:0:"";s:7:"src_add";s:0:"";s:7:"cdn_add";s:0:"";s:13:"default_thumb";s:0:"";s:11:"thumb_width";s:3:"200";s:12:"thumb_height";s:3:"140";s:7:"iconCss";s:0:"";s:9:"listStyle";a:2:{i:0;s:7:"excerpt";i:1;s:5:"thumb";}}'),
('timezone', 0, '28800'),
('lang', 0, NULL),
('charset', 0, 'UTF-8'),
('contentType', 0, 'text/html'),
('gzip', 0, '0'),
('generator', 0, 'Typecho 1.0/14.10.10'),
('title', 0, 'Spec旅游'),
('description', 0, '一个基于分享的旅游兴趣网站'),
('keywords', 0, 'spec,旅游,游记'),
('rewrite', 0, '0'),
('frontPage', 0, 'recent'),
('frontArchive', 0, '0'),
('commentsRequireMail', 0, '1'),
('commentsWhitelist', 0, '0'),
('commentsRequireURL', 0, '0'),
('commentsRequireModeration', 0, '0'),
('plugins', 0, 'a:0:{}'),
('commentDateFormat', 0, 'F jS, Y \\a\\t h:i a'),
('siteUrl', 0, 'http://127.0.0.1/Ants-back-end'),
('defaultCategory', 0, '1'),
('allowRegister', 0, '1'),
('defaultAllowComment', 0, '1'),
('defaultAllowPing', 0, '1'),
('defaultAllowFeed', 0, '1'),
('pageSize', 0, '5'),
('postsListSize', 0, '10'),
('commentsListSize', 0, '10'),
('commentsHTMLTagAllowed', 0, NULL),
('postDateFormat', 0, 'Y-m-d'),
('feedFullText', 0, '1'),
('editorSize', 0, '350'),
('autoSave', 0, '0'),
('markdown', 0, '1'),
('commentsMaxNestingLevels', 0, '5'),
('commentsPostTimeout', 0, '2592000'),
('commentsUrlNofollow', 0, '1'),
('commentsShowUrl', 0, '1'),
('commentsMarkdown', 0, '0'),
('commentsPageBreak', 0, '0'),
('commentsThreaded', 0, '1'),
('commentsPageSize', 0, '20'),
('commentsPageDisplay', 0, 'last'),
('commentsOrder', 0, 'ASC'),
('commentsCheckReferer', 0, '1'),
('commentsAutoClose', 0, '0'),
('commentsPostIntervalEnable', 0, '1'),
('commentsPostInterval', 0, '60'),
('commentsShowCommentOnly', 0, '0'),
('commentsAvatar', 0, '1'),
('commentsAvatarRating', 0, 'G'),
('commentsAntiSpam', 0, '1'),
('routingTable', 0, 'a:26:{i:0;a:25:{s:5:"index";a:6:{s:3:"url";s:1:"/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";s:4:"regx";s:8:"|^[/]?$|";s:6:"format";s:1:"/";s:6:"params";a:0:{}}s:7:"archive";a:6:{s:3:"url";s:6:"/blog/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";s:4:"regx";s:13:"|^/blog[/]?$|";s:6:"format";s:6:"/blog/";s:6:"params";a:0:{}}s:2:"do";a:6:{s:3:"url";s:22:"/action/[action:alpha]";s:6:"widget";s:9:"Widget_Do";s:6:"action";s:6:"action";s:4:"regx";s:32:"|^/action/([_0-9a-zA-Z-]+)[/]?$|";s:6:"format";s:10:"/action/%s";s:6:"params";a:1:{i:0;s:6:"action";}}s:4:"post";a:6:{s:3:"url";s:24:"/archives/[cid:digital]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";s:4:"regx";s:26:"|^/archives/([0-9]+)[/]?$|";s:6:"format";s:13:"/archives/%s/";s:6:"params";a:1:{i:0;s:3:"cid";}}s:10:"attachment";a:6:{s:3:"url";s:26:"/attachment/[cid:digital]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";s:4:"regx";s:28:"|^/attachment/([0-9]+)[/]?$|";s:6:"format";s:15:"/attachment/%s/";s:6:"params";a:1:{i:0;s:3:"cid";}}s:8:"category";a:6:{s:3:"url";s:17:"/category/[slug]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";s:4:"regx";s:25:"|^/category/([^/]+)[/]?$|";s:6:"format";s:13:"/category/%s/";s:6:"params";a:1:{i:0;s:4:"slug";}}s:3:"tag";a:6:{s:3:"url";s:12:"/tag/[slug]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";s:4:"regx";s:20:"|^/tag/([^/]+)[/]?$|";s:6:"format";s:8:"/tag/%s/";s:6:"params";a:1:{i:0;s:4:"slug";}}s:6:"author";a:6:{s:3:"url";s:22:"/author/[uid:digital]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";s:4:"regx";s:24:"|^/author/([0-9]+)[/]?$|";s:6:"format";s:11:"/author/%s/";s:6:"params";a:1:{i:0;s:3:"uid";}}s:6:"search";a:6:{s:3:"url";s:19:"/search/[keywords]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";s:4:"regx";s:23:"|^/search/([^/]+)[/]?$|";s:6:"format";s:11:"/search/%s/";s:6:"params";a:1:{i:0;s:8:"keywords";}}s:10:"index_page";a:6:{s:3:"url";s:21:"/page/[page:digital]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";s:4:"regx";s:22:"|^/page/([0-9]+)[/]?$|";s:6:"format";s:9:"/page/%s/";s:6:"params";a:1:{i:0;s:4:"page";}}s:12:"archive_page";a:6:{s:3:"url";s:26:"/blog/page/[page:digital]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";s:4:"regx";s:27:"|^/blog/page/([0-9]+)[/]?$|";s:6:"format";s:14:"/blog/page/%s/";s:6:"params";a:1:{i:0;s:4:"page";}}s:13:"category_page";a:6:{s:3:"url";s:32:"/category/[slug]/[page:digital]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";s:4:"regx";s:34:"|^/category/([^/]+)/([0-9]+)[/]?$|";s:6:"format";s:16:"/category/%s/%s/";s:6:"params";a:2:{i:0;s:4:"slug";i:1;s:4:"page";}}s:8:"tag_page";a:6:{s:3:"url";s:27:"/tag/[slug]/[page:digital]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";s:4:"regx";s:29:"|^/tag/([^/]+)/([0-9]+)[/]?$|";s:6:"format";s:11:"/tag/%s/%s/";s:6:"params";a:2:{i:0;s:4:"slug";i:1;s:4:"page";}}s:11:"author_page";a:6:{s:3:"url";s:37:"/author/[uid:digital]/[page:digital]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";s:4:"regx";s:33:"|^/author/([0-9]+)/([0-9]+)[/]?$|";s:6:"format";s:14:"/author/%s/%s/";s:6:"params";a:2:{i:0;s:3:"uid";i:1;s:4:"page";}}s:11:"search_page";a:6:{s:3:"url";s:34:"/search/[keywords]/[page:digital]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";s:4:"regx";s:32:"|^/search/([^/]+)/([0-9]+)[/]?$|";s:6:"format";s:14:"/search/%s/%s/";s:6:"params";a:2:{i:0;s:8:"keywords";i:1;s:4:"page";}}s:12:"archive_year";a:6:{s:3:"url";s:18:"/[year:digital:4]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";s:4:"regx";s:19:"|^/([0-9]{4})[/]?$|";s:6:"format";s:4:"/%s/";s:6:"params";a:1:{i:0;s:4:"year";}}s:13:"archive_month";a:6:{s:3:"url";s:36:"/[year:digital:4]/[month:digital:2]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";s:4:"regx";s:30:"|^/([0-9]{4})/([0-9]{2})[/]?$|";s:6:"format";s:7:"/%s/%s/";s:6:"params";a:2:{i:0;s:4:"year";i:1;s:5:"month";}}s:11:"archive_day";a:6:{s:3:"url";s:52:"/[year:digital:4]/[month:digital:2]/[day:digital:2]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";s:4:"regx";s:41:"|^/([0-9]{4})/([0-9]{2})/([0-9]{2})[/]?$|";s:6:"format";s:10:"/%s/%s/%s/";s:6:"params";a:3:{i:0;s:4:"year";i:1;s:5:"month";i:2;s:3:"day";}}s:17:"archive_year_page";a:6:{s:3:"url";s:38:"/[year:digital:4]/page/[page:digital]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";s:4:"regx";s:33:"|^/([0-9]{4})/page/([0-9]+)[/]?$|";s:6:"format";s:12:"/%s/page/%s/";s:6:"params";a:2:{i:0;s:4:"year";i:1;s:4:"page";}}s:18:"archive_month_page";a:6:{s:3:"url";s:56:"/[year:digital:4]/[month:digital:2]/page/[page:digital]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";s:4:"regx";s:44:"|^/([0-9]{4})/([0-9]{2})/page/([0-9]+)[/]?$|";s:6:"format";s:15:"/%s/%s/page/%s/";s:6:"params";a:3:{i:0;s:4:"year";i:1;s:5:"month";i:2;s:4:"page";}}s:16:"archive_day_page";a:6:{s:3:"url";s:72:"/[year:digital:4]/[month:digital:2]/[day:digital:2]/page/[page:digital]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";s:4:"regx";s:55:"|^/([0-9]{4})/([0-9]{2})/([0-9]{2})/page/([0-9]+)[/]?$|";s:6:"format";s:18:"/%s/%s/%s/page/%s/";s:6:"params";a:4:{i:0;s:4:"year";i:1;s:5:"month";i:2;s:3:"day";i:3;s:4:"page";}}s:12:"comment_page";a:6:{s:3:"url";s:53:"[permalink:string]/comment-page-[commentPage:digital]";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";s:4:"regx";s:34:"|^(.+)/comment-page-([0-9]+)[/]?$|";s:6:"format";s:18:"%s/comment-page-%s";s:6:"params";a:2:{i:0;s:9:"permalink";i:1;s:11:"commentPage";}}s:4:"feed";a:6:{s:3:"url";s:20:"/feed[feed:string:0]";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:4:"feed";s:4:"regx";s:17:"|^/feed(.*)[/]?$|";s:6:"format";s:7:"/feed%s";s:6:"params";a:1:{i:0;s:4:"feed";}}s:8:"feedback";a:6:{s:3:"url";s:31:"[permalink:string]/[type:alpha]";s:6:"widget";s:15:"Widget_Feedback";s:6:"action";s:6:"action";s:4:"regx";s:29:"|^(.+)/([_0-9a-zA-Z-]+)[/]?$|";s:6:"format";s:5:"%s/%s";s:6:"params";a:2:{i:0;s:9:"permalink";i:1;s:4:"type";}}s:4:"page";a:6:{s:3:"url";s:12:"/[slug].html";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";s:4:"regx";s:22:"|^/([^/]+)\\.html[/]?$|";s:6:"format";s:8:"/%s.html";s:6:"params";a:1:{i:0;s:4:"slug";}}}s:5:"index";a:3:{s:3:"url";s:1:"/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";}s:7:"archive";a:3:{s:3:"url";s:6:"/blog/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";}s:2:"do";a:3:{s:3:"url";s:22:"/action/[action:alpha]";s:6:"widget";s:9:"Widget_Do";s:6:"action";s:6:"action";}s:4:"post";a:3:{s:3:"url";s:24:"/archives/[cid:digital]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";}s:10:"attachment";a:3:{s:3:"url";s:26:"/attachment/[cid:digital]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";}s:8:"category";a:3:{s:3:"url";s:17:"/category/[slug]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";}s:3:"tag";a:3:{s:3:"url";s:12:"/tag/[slug]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";}s:6:"author";a:3:{s:3:"url";s:22:"/author/[uid:digital]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";}s:6:"search";a:3:{s:3:"url";s:19:"/search/[keywords]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";}s:10:"index_page";a:3:{s:3:"url";s:21:"/page/[page:digital]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";}s:12:"archive_page";a:3:{s:3:"url";s:26:"/blog/page/[page:digital]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";}s:13:"category_page";a:3:{s:3:"url";s:32:"/category/[slug]/[page:digital]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";}s:8:"tag_page";a:3:{s:3:"url";s:27:"/tag/[slug]/[page:digital]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";}s:11:"author_page";a:3:{s:3:"url";s:37:"/author/[uid:digital]/[page:digital]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";}s:11:"search_page";a:3:{s:3:"url";s:34:"/search/[keywords]/[page:digital]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";}s:12:"archive_year";a:3:{s:3:"url";s:18:"/[year:digital:4]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";}s:13:"archive_month";a:3:{s:3:"url";s:36:"/[year:digital:4]/[month:digital:2]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";}s:11:"archive_day";a:3:{s:3:"url";s:52:"/[year:digital:4]/[month:digital:2]/[day:digital:2]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";}s:17:"archive_year_page";a:3:{s:3:"url";s:38:"/[year:digital:4]/page/[page:digital]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";}s:18:"archive_month_page";a:3:{s:3:"url";s:56:"/[year:digital:4]/[month:digital:2]/page/[page:digital]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";}s:16:"archive_day_page";a:3:{s:3:"url";s:72:"/[year:digital:4]/[month:digital:2]/[day:digital:2]/page/[page:digital]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";}s:12:"comment_page";a:3:{s:3:"url";s:53:"[permalink:string]/comment-page-[commentPage:digital]";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";}s:4:"feed";a:3:{s:3:"url";s:20:"/feed[feed:string:0]";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:4:"feed";}s:8:"feedback";a:3:{s:3:"url";s:31:"[permalink:string]/[type:alpha]";s:6:"widget";s:15:"Widget_Feedback";s:6:"action";s:6:"action";}s:4:"page";a:3:{s:3:"url";s:12:"/[slug].html";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";}}'),
('actionTable', 0, 'a:0:{}'),
('panelTable', 0, 'a:0:{}'),
('attachmentTypes', 0, '@image@,@media@,@doc@'),
('secret', 0, 'jJcAyaz2iwlGo3^K4qUNSa2V@*rFxGP*');

-- --------------------------------------------------------

--
-- 表的结构 `ants_relationships`
--

CREATE TABLE `ants_relationships` (
  `cid` int(10) UNSIGNED NOT NULL,
  `mid` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ants_relationships`
--

INSERT INTO `ants_relationships` (`cid`, `mid`) VALUES
(8, 2),
(8, 3),
(8, 4),
(8, 9),
(9, 5),
(9, 6),
(9, 10),
(9, 11),
(10, 7),
(10, 8),
(10, 12),
(10, 13),
(11, 14),
(11, 15),
(11, 20),
(12, 3),
(12, 4),
(12, 16),
(13, 3),
(13, 17),
(13, 21),
(14, 18),
(14, 19),
(14, 22),
(15, 3),
(15, 23),
(15, 24),
(16, 18),
(16, 25),
(16, 26);

-- --------------------------------------------------------

--
-- 表的结构 `ants_users`
--

CREATE TABLE `ants_users` (
  `uid` int(10) UNSIGNED NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `mail` varchar(200) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `screenName` varchar(32) DEFAULT NULL,
  `created` int(10) UNSIGNED DEFAULT '0',
  `activated` int(10) UNSIGNED DEFAULT '0',
  `logged` int(10) UNSIGNED DEFAULT '0',
  `group` varchar(16) DEFAULT 'visitor',
  `authCode` varchar(64) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ants_users`
--

INSERT INTO `ants_users` (`uid`, `name`, `password`, `mail`, `url`, `screenName`, `created`, `activated`, `logged`, `group`, `authCode`) VALUES
(1, 'admin', '$P$BV.ApWNsGzWOad8iKNXovaYdVDTIkj/', 'hwk603@qq.com', 'http://hwk603.com', 'hwk603', 1449132848, 1450337125, 1450200492, 'administrator', '526cde124eda21f928a646eb0f03472b3d3860be'),
(2, 'lvhui', '$P$BZmYEkurDEwKICofURUnGQcJvMZjV.0', 'lvhui@qq.com', NULL, 'lvhui', 1449729004, 1449850416, 1449848480, 'contributor', '5893091aa1909131557020a65da9e7241055d578'),
(3, 'sunnan', '$P$BolK6lO0rBOhwOTWgA4pJD7lmnjHC.0', 'sunnan@gmail.com', NULL, 'sunnan', 1449729626, 1449730630, 1449729641, 'editor', 'abf2c6193031db8721219eab7aed46deb0c99bee'),
(4, 'liyueheng', '$P$BUAszeDGGMdn/z91gRH1/.ZFKywCxp0', 'liyueheng@sina.com', NULL, 'liyueheng', 1449731295, 1449737611, 1449732357, 'administrator', '9335445acc44bce357ad6eebee693acba23b7e09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ants_comments`
--
ALTER TABLE `ants_comments`
  ADD PRIMARY KEY (`coid`),
  ADD KEY `cid` (`cid`),
  ADD KEY `created` (`created`);

--
-- Indexes for table `ants_contents`
--
ALTER TABLE `ants_contents`
  ADD PRIMARY KEY (`cid`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `created` (`created`);

--
-- Indexes for table `ants_fields`
--
ALTER TABLE `ants_fields`
  ADD PRIMARY KEY (`cid`,`name`),
  ADD KEY `int_value` (`int_value`),
  ADD KEY `float_value` (`float_value`);

--
-- Indexes for table `ants_metas`
--
ALTER TABLE `ants_metas`
  ADD PRIMARY KEY (`mid`),
  ADD KEY `slug` (`slug`);

--
-- Indexes for table `ants_options`
--
ALTER TABLE `ants_options`
  ADD PRIMARY KEY (`name`,`user`);

--
-- Indexes for table `ants_relationships`
--
ALTER TABLE `ants_relationships`
  ADD PRIMARY KEY (`cid`,`mid`);

--
-- Indexes for table `ants_users`
--
ALTER TABLE `ants_users`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `mail` (`mail`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `ants_comments`
--
ALTER TABLE `ants_comments`
  MODIFY `coid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `ants_contents`
--
ALTER TABLE `ants_contents`
  MODIFY `cid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- 使用表AUTO_INCREMENT `ants_metas`
--
ALTER TABLE `ants_metas`
  MODIFY `mid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- 使用表AUTO_INCREMENT `ants_users`
--
ALTER TABLE `ants_users`
  MODIFY `uid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
