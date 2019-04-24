-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 2018-05-06 02:56:06
-- 服务器版本： 5.6.17
-- PHP Version: 7.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `legou`
--

-- --------------------------------------------------------

--
-- 表的结构 `lg_banner`
--

CREATE TABLE `lg_banner` (
  `id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL COMMENT '标题',
  `img_src` varchar(100) NOT NULL COMMENT '图片地址',
  `link_url` varchar(60) NOT NULL COMMENT '链接地址',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '类型 1：商品 2：专题',
  `description` varchar(255) NOT NULL COMMENT '描述',
  `sort` smallint(6) NOT NULL DEFAULT '50' COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态 1：显示 0：删除'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `lg_banner`
--

INSERT INTO `lg_banner` (`id`, `title`, `img_src`, `link_url`, `type`, `description`, `sort`, `status`) VALUES
(8, 'banner3', '20171220/cd468730f9ceeb86eedab6616106e626.jpg', 'tongpankt.com', 1, '', 1, 1),
(6, 'banner2', '20180403/62f786fd3fed88b4b383324f71c3695d.png', 'google.com', 1, '', 2, 1),
(10, 'banner4', '20180403/bbeb0917651386dfb9a1e1a42a811e62.png', 'asdfasdf', 1, '', 3, 1);

-- --------------------------------------------------------

--
-- 表的结构 `lg_cate`
--

CREATE TABLE `lg_cate` (
  `id` smallint(6) NOT NULL,
  `cate_name` varchar(30) NOT NULL COMMENT '栏目名称',
  `thumb` varchar(60) NOT NULL COMMENT '缩略图',
  `pid` smallint(6) NOT NULL DEFAULT '0' COMMENT '上级栏目id',
  `sort` smallint(6) NOT NULL DEFAULT '50' COMMENT '排序',
  `description` varchar(255) NOT NULL COMMENT '描述'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `lg_cate`
--

INSERT INTO `lg_cate` (`id`, `cate_name`, `thumb`, `pid`, `sort`, `description`) VALUES
(1, '女装', '20180403/0bc819fcbe734800270456ff975b88e8.png', 0, 50, ''),
(2, '毛衫', '20180403/87ca067eaabc6efcc85af0fa17bb8fe5.jpg', 1, 50, ''),
(3, '裙装', '20180403/ad25b2d2c1a3372221585561c123d01f.jpg', 1, 50, ''),
(4, '外套', '20180403/aefbb738e7ad6372b06af10fceb3b6ca.jpg', 1, 50, ''),
(5, '套装', '20180403/1d73a0d8cb2473eddb271fc9ee1927d1.jpg', 1, 50, ''),
(6, '裤装', '20180403/402832cf72774557eb2ba3ef4d0297fa.jpg', 1, 50, ''),
(7, '特色', '20180403/bbc2b064cc783ea26604758e541c78a0.jpg', 1, 50, ''),
(8, '男装', '20180403/dd1a14afe3c173142f2f7a29ecaaf18c.png', 0, 50, '');

-- --------------------------------------------------------

--
-- 表的结构 `lg_goods`
--

CREATE TABLE `lg_goods` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `goods_name` varchar(60) NOT NULL COMMENT '商品名称',
  `thumb` varchar(60) NOT NULL COMMENT '缩略图',
  `shop_price` decimal(10,2) NOT NULL COMMENT '本店价',
  `market_price` decimal(10,2) NOT NULL COMMENT '市场价',
  `sale_num` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT '销量',
  `stock_num` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT '库存量',
  `des_img` varchar(60) NOT NULL COMMENT '详情描述图',
  `weight` float NOT NULL COMMENT '重量',
  `weight_unit` char(2) NOT NULL COMMENT '重量单位 g,kg',
  `cate_id` smallint(6) NOT NULL COMMENT '所属栏目'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `lg_goods_spe`
--

CREATE TABLE `lg_goods_spe` (
  `goods_id` mediumint(8) UNSIGNED NOT NULL COMMENT '商品id',
  `spe_id` smallint(5) UNSIGNED NOT NULL COMMENT '所属专题'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `lg_photos`
--

CREATE TABLE `lg_photos` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `img_src` varchar(60) NOT NULL,
  `goods_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `lg_special`
--

CREATE TABLE `lg_special` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `spe_name` varchar(60) NOT NULL COMMENT '专题名称',
  `spe_img` varchar(60) NOT NULL COMMENT '专题图'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lg_banner`
--
ALTER TABLE `lg_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lg_cate`
--
ALTER TABLE `lg_cate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lg_goods`
--
ALTER TABLE `lg_goods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lg_photos`
--
ALTER TABLE `lg_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lg_special`
--
ALTER TABLE `lg_special`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `lg_banner`
--
ALTER TABLE `lg_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用表AUTO_INCREMENT `lg_cate`
--
ALTER TABLE `lg_cate`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用表AUTO_INCREMENT `lg_goods`
--
ALTER TABLE `lg_goods`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `lg_photos`
--
ALTER TABLE `lg_photos`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `lg_special`
--
ALTER TABLE `lg_special`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
