-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2021-06-18 20:53:42
-- 服务器版本： 5.7.26
-- PHP 版本： 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `sz2105`
--

-- --------------------------------------------------------

--
-- 表的结构 `taobao`
--

CREATE TABLE `taobao` (
  `id` int(255) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '商品名字',
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '商品图片',
  `msg` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '商品价格',
  `inven` int(10) NOT NULL COMMENT '商品库存'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `taobao`
--

INSERT INTO `taobao` (`id`, `title`, `img`, `msg`, `inven`) VALUES
(1, '仙剑奇侠传3 仙剑三 重楼 景天 龙葵 魔剑 金属未开刃 补款链接', 'https://img.alicdn.com/bao/uploaded/i3/272653700/O1CN015hUN7e1dCdw5Ntro9_!!272653700.jpg_200x200q90.jpg_.webp', '25', 10),
(2, 'Hagen哈根小型虎皮牡丹鹦鹉文鸟内外悬挂食鸟水杯食盆罐碗零食杯', 'https://img.alicdn.com/bao/uploaded/i2/3354626421/O1CN01L0csbx1xIroF0MvTg_!!0-item_pic.jpg_200x200q90.jpg_.webp', '234', 20),
(3, '夏季中国风刺绣短袖t恤宽松复古休闲百搭唐装五分袖上衣国潮男装', 'https://img.alicdn.com/bao/uploaded/i2/2207838549/O1CN01OG1X3k2D1UcrzQcjw_!!0-item_pic.jpg_200x200q90.jpg_.webp', '59', 22),
(4, '安踏气垫鞋男跑步鞋2021夏季新款男鞋网面透气官网旗舰运动鞋子男', 'https://img.alicdn.com/bao/uploaded/i4/907871871/O1CN01m8GSKY1PgxiJu3ILC_!!0-item_pic.jpg_200x200q90.jpg_.webp', '121', 1111),
(5, '极男男士洗面奶控油补水保湿淡化痘印美白洁面乳组合套装护肤品\r\n专利除螨 约旦进口海盐 烟酰胺助力', 'https://img.alicdn.com/bao/uploaded///gma.alicdn.com/bao/uploaded/i2/112247518/O1CN01vQ8ZvU25PIJ5EjVZu_!!0-saturn_solar.jpg_200x200q90.jpg_.webp', '56', 20),
(6, '小恶魔印花夏季短袖T恤男国潮宽松半袖潮牌ins潮流情侣装oversize', 'https://img.alicdn.com/bao/uploaded///gma.alicdn.com/bao/uploaded/i3/27531962/O1CN01QnDFFR1QMdkfUMkc7_!!0-saturn_solar.jpg_200x200q90.jpg_.webp', '89', 101),
(7, '刀伞可拔出武士剑伞防身未开刃甩棍刀把骷髅头12生肖王牌特工雨伞', 'https://img.alicdn.com/bao/uploaded/i1/2851638370/O1CN01igfJHN2BhVhgl83iL_!!2851638370.jpg_200x200q90.jpg_.webp', '11', 22),
(8, '生态瓶鱼 微景观免换水免打理diy水族办公室客厅创意造景小鱼缸鱼', 'https://img.alicdn.com/bao/uploaded/i1/2200607073077/O1CN01b4UdmY1YbJLt71zK7_!!0-item_pic.jpg_200x200q90.jpg_.webp', '19', 12),
(9, '超爆款g502电竞游戏LOL游戏鼠标有线RGB网咖USB压枪宏定义吃鸡CF', 'https://img.alicdn.com/bao/uploaded/i4/2201510096802/O1CN01P99Kxy207MfBWjhZn_!!2201510096802.jpg_200x200q90.jpg_.webp', '99', 21),
(10, '满2件包邮 这不是手办 阴阳师 铃鹿御前 脱非入欧 动漫纸模型手工', 'https://img.alicdn.com/bao/uploaded/i2/137958452/O1CN01SsxMXF2CJ4CpTjNc0_!!137958452.jpg_200x200q90.jpg_.webp', '111', 22),
(11, '无偿领养纯种法斗幼犬法国斗牛犬活体狗狗奶白色法牛幼犬活体狗狗', 'https://img.alicdn.com/bao/uploaded/i1/3328712527/O1CN01VdnFYC1UXPSfA7TQI_!!3328712527.jpg_200x200q90.jpg_.webp', '888', 10),
(12, '小米 立式风冷无线充快速充', 'https://gd3.alicdn.com/imgextra/i3/3906798218/O1CN01sPEMm12AZtU7UoHzb_!!3906798218.jpg_300x300.jpg', '999', 23),
(13, '正宗广西柳州螺蛳粉袋装特产螺丝米粉方便速食网红酸辣味螺狮米线', 'https://g-search1.alicdn.com/img/bao/uploaded/i4/imgextra/i3/1153590149/O1CN019XvcXt1CyHhPxWcxN_!!0-saturn_solar.jpg_460x460Q90.jpg_.webp', '19.9', 122),
(14, '万和燃气热水器电家用天然气零冷水16L升即热式防冻冷凝恒温LS5', 'https://g-search1.alicdn.com/img/bao/uploaded/i4/imgextra/i1/40856271/O1CN01W623up1wCAPk5C38H_!!0-saturn_solar.jpg_460x460Q90.jpg_.webp', '1999', 12),
(15, '美的零冷水燃气热水器家用天然气恒温强排式16升UV8智能家电即热', 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i4/201749140/O1CN01BPK22s2HOAjBb13TL_!!2-item_pic.png_460x460Q90.jpg_.webp', '1221', 21),
(16, '花花公子男鞋夏季新款真皮透气豆豆鞋男士休闲皮鞋韩版懒人鞋子男', 'https://g-search1.alicdn.com/img/bao/uploaded/i4/imgextra/i2/34491300/O1CN01veGLf81LTRYn3xec4_!!0-saturn_solar.jpg_460x460Q90.jpg_.webp', '2321', 12),
(17, '2021年夏季新款豆豆鞋男真皮鞋子一脚蹬懒人鞋透气潮流男士休闲鞋', 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i1/2987813348/O1CN01r3t21W1abQd6ISnkd_!!2987813348.jpg_460x460Q90.jpg_.webp', '348', 12),
(18, 'ONLY夏季新款复古V领小黑裙短款收腰法式连衣裙女', 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i4/356060330/O1CN01nTefya1EJBO8ZJs00-356060330.jpg_460x460Q90.jpg_.webp', '299', 14),
(19, '收藏宝贝 (2373人气)\r\nK姐自制【赫本小黑裙】单面乱麻法式翻领长短款连衣裙女', 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i3/10550225/O1CN01DOvk8o1DX5nD0otdG_!!10550225.png_460x460Q90.jpg_.webp', '239', 24),
(20, '迪卡侬套装 儿童套装 男童秋装套装女童秋装新款运动夹克长裤IVE1', 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i4/352469034/O1CN01DBwsWn2GbckDtazPl-352469034.jpg_460x460Q90.jpg_.webp', '99.1', 11),
(21, 'MODERN时尚小众女士高档精致钢笔 签字笔文艺复古学生专用钢笔练字 女生礼物送礼套装定制刻字德国笔尖', 'https://g-search1.alicdn.com/img/bao/uploaded/i4/imgextra/i3/417300136/O1CN01OjHdb81CsKQqlAzpN_!!0-saturn_solar.jpg_460x460Q90.jpg_.webp', '199', 122),
(22, '英雄牌钢笔A09学生专用练字礼物送礼墨囊可替换成人男士高档硬笔美工弯头弯尖书法女生复古三四年级定制刻字\r\n', 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i3/2077212791/O1CN01lhxSot1WUK6UY5jCl_!!0-item_pic.jpg_460x460Q90.jpg_.webp', '145', 23),
(23, '车内清洁神器空调出风口清洗工具除灰除尘掸子毛刷汽车用内饰用品', 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i1/91106030/O1CN016L4JoD1uPmuOHFU5Z_!!0-item_pic.jpg_460x460Q90.jpg_.webp', '35', 344),
(24, '车载竹炭包汽车用除异味除甲醛活性炭新车专用去味碳车内除味用品', 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i2/3064702580/O1CN01gTovHP1UvgXCBrPfN_!!0-item_pic.jpg_460x460Q90.jpg_.webp', '19.8', 10);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`) VALUES
(22, 'zhangsan', '123456', 'leoncoder@163.com'),
(41, 'hanhan', '123456', '2945668208@qq.com'),
(42, 'chenchen', '123456', '2945668219@qq.com');

--
-- 转储表的索引
--

--
-- 表的索引 `taobao`
--
ALTER TABLE `taobao`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `img` (`img`),
  ADD UNIQUE KEY `msg` (`msg`);

--
-- 表的索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `taobao`
--
ALTER TABLE `taobao`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
