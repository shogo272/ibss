-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 
-- サーバのバージョン： 10.4.10-MariaDB
-- PHP のバージョン: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `ibss`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `menutable`
--

CREATE TABLE `menutable` (
  `productname` varchar(200) NOT NULL,
  `category` varchar(200) NOT NULL,
  `value` int(7) NOT NULL,
  `comment` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `menutable`
--

INSERT INTO `menutable` (`productname`, `category`, `value`, `comment`) VALUES
('いなり寿司', 'ご飯', 800, '甘めかしょっぱめか選べます'),
('おにぎり', 'ご飯', 400, '梅、おかか、鮭、昆布、海苔'),
('お茶漬け', 'ご飯', 400, 'うめ、昆布、おかか、海苔、ワサビが選べます'),
('とりもも', '焼き鳥', 500, 'たれか塩が選べます'),
('ねぎま', '焼き鳥', 440, 'たれか塩が選べます'),
('イカリング', '揚げ物', 700, '塩のみ'),
('カクテル', '飲み物', 700, 'スタッフが作ります'),
('ソフトドリンク', '飲み物', 600, 'ちゃんぽん'),
('タコの揚げ物', '揚げ物', 600, '塩とつゆが選べます'),
('ビール', '飲み物', 500, 'キリンとアサヒが選べます'),
('ワイン', '飲み物', 700, '白のみ'),
('唐揚げ', '揚げ物', 500, '揚げたて'),
('天津飯', 'ご飯', 700, '出来立て熱々です'),
('季節の山菜天ぷら', '揚げ物', 800, '塩かつゆかを選べます'),
('手巻き寿司', 'ご飯', 600, '具が選べます'),
('揚げ出し豆腐', '揚げ物', 400, ''),
('日本酒', '飲み物', 1000, '高級地酒'),
('春巻き', '揚げ物', 600, ''),
('焼きめし', 'ご飯', 550, 'エビが入っています'),
('焼酎', '飲み物', 900, NULL),
('白米', 'ご飯', 400, '＋100円でふりかけが付きます'),
('砂ぎも', '焼き鳥', 500, 'たれか塩が選べます'),
('豚バラ', '焼き鳥', 500, 'たれか塩が選べます'),
('鬼殺し', '飲み物', 900, NULL);

-- --------------------------------------------------------

--
-- テーブルの構造 `nomimanagement`
--

CREATE TABLE `nomimanagement` (
  `couseid` varchar(100) NOT NULL,
  `nomitime` int(2) NOT NULL,
  `value` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `nomimanagement`
--

INSERT INTO `nomimanagement` (`couseid`, `nomitime`, `value`) VALUES
('Aコース', 2, 2500),
('Bコース', 3, 3000);

-- --------------------------------------------------------

--
-- テーブルの構造 `orderaccept`
--

CREATE TABLE `orderaccept` (
  `orderid` int(7) NOT NULL,
  `productname` varchar(200) NOT NULL,
  `seatnum` int(3) NOT NULL,
  `servingflag` tinyint(1) NOT NULL,
  `value` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- テーブルの構造 `ordermanagement`
--

CREATE TABLE `ordermanagement` (
  `seatnum` int(3) NOT NULL,
  `date` date NOT NULL,
  `name` varchar(200) NOT NULL,
  `phonenum` bigint(11) NOT NULL,
  `numofpeople` int(3) NOT NULL,
  `starthour` datetime NOT NULL,
  `finhour` datetime NOT NULL,
  `couseid` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `ordermanagement`
--

INSERT INTO `ordermanagement` (`seatnum`, `date`, `name`, `phonenum`, `numofpeople`, `starthour`, `finhour`, `couseid`) VALUES
(1, '2020-02-15', 'aya', 111111, 1, '2020-03-15 13:15:00', '2020-03-15 23:00:00', 'as'),
(2, '2020-02-08', '小林', 256, 5, '2020-01-30 08:35:00', '2020-01-30 14:00:00', 'ad'),
(3, '2020-01-24', 'hello', 15548, 7, '2020-01-30 07:30:00', '2020-01-30 12:00:00', '21');

-- --------------------------------------------------------

--
-- テーブルの構造 `seatinfo`
--

CREATE TABLE `seatinfo` (
  `seatnum` int(3) NOT NULL,
  `couseid` varchar(100) NOT NULL,
  `numofpeople` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `seatinfo`
--

INSERT INTO `seatinfo` (`seatnum`, `couseid`, `numofpeople`) VALUES
(1, '', 0),
(2, '', 0),
(3, '', 0),
(4, '', 0),
(5, '', 0),
(6, '', 0),
(7, '', 0),
(8, '', 0),
(9, '', 0),
(10, '', 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `userinfo`
--

CREATE TABLE `userinfo` (
  `id` bigint(255) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `menutable`
--
ALTER TABLE `menutable`
  ADD PRIMARY KEY (`productname`);

--
-- テーブルのインデックス `nomimanagement`
--
ALTER TABLE `nomimanagement`
  ADD PRIMARY KEY (`couseid`);

--
-- テーブルのインデックス `orderaccept`
--
ALTER TABLE `orderaccept`
  ADD PRIMARY KEY (`orderid`);

--
-- テーブルのインデックス `ordermanagement`
--
ALTER TABLE `ordermanagement`
  ADD PRIMARY KEY (`seatnum`,`starthour`) USING BTREE;

--
-- テーブルのインデックス `seatinfo`
--
ALTER TABLE `seatinfo`
  ADD PRIMARY KEY (`seatnum`);

--
-- テーブルのインデックス `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `orderaccept`
--
ALTER TABLE `orderaccept`
  MODIFY `orderid` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
