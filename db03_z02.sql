-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2025-02-17 01:36:35
-- 伺服器版本： 10.4.32-MariaDB
-- PHP 版本： 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `db03_z02`
--

-- --------------------------------------------------------

--
-- 資料表結構 `log`
--

CREATE TABLE `log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user` text NOT NULL,
  `news` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `log`
--

INSERT INTO `log` (`id`, `user`, `news`) VALUES
(1, 'admin', 17),
(2, 'admin', 21),
(3, 'admin', 26),
(7, 'test', 21),
(9, 'test', 17),
(11, 'test', 26);

-- --------------------------------------------------------

--
-- 資料表結構 `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text NOT NULL,
  `news` text NOT NULL,
  `type` int(1) UNSIGNED NOT NULL,
  `likes` int(10) UNSIGNED NOT NULL,
  `sh` int(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `news`
--

INSERT INTO `news` (`id`, `title`, `news`, `type`, `likes`, `sh`) VALUES
(17, '111', '1111', 1, 2, 1),
(19, '111111111', '11111111111', 0, 0, 1),
(21, 'aaaa', 'aaa', 1, 2, 1),
(22, 'bbbbbb', 'bbbbbbbbbb', 2, 0, 1),
(23, 'ccccccc', 'cccccccc', 3, 0, 1),
(24, 'ddddddd', 'dddddd', 4, 0, 1),
(25, '問題一：你最常做什麼運動來促進健康體能呢?', '問題一：你最常做什麼運動來促進健康體能呢?問題一：你最常做什麼運動來促進健康體能呢?', 1, 0, 1),
(26, '問題二：二手菸沒有安全劑量，只要有暴露，就會有危險，請問它會造成身體上哪些危害?\r\n', '1.增加罹患冠狀動脈心臟病及罹病死亡之風險。\r\n2.對孩子的的健康會產生許多影響，例如容易咳嗽或打噴嚏、罹患氣喘或讓症狀更嚴重、會因刺激耳咽管，感染中耳炎、肺功能較差、容易罹患呼吸道疾病等。\r\n3.孕婦吸入二手菸易造成流產、早產、胎盤早期剝離、子宮感染等疾病。\r\n4.長期的暴露會造成更嚴重的胸腔問題和過敏症，還會增加心臟病和肺癌的罹患率。\r\n5.以上皆是。\r\n', 1, 2, 1),
(27, '', '', 0, 0, 0),
(28, '問題二：二手菸沒有安全劑量，只要有暴露，就會有危險，請問它會造成身體上哪些危害?\r\n', '', 2, 0, 1),
(29, '問題二：二手菸沒有安全劑量，只要有暴露，就會有危險，請問它會造成身體上哪些危害?\r\n', '1.增加罹患冠狀動脈心臟病及罹病死亡之風險。\r\n2.對孩子的的健康會產生許多影響，例如容易咳嗽或打噴嚏、罹患氣喘或讓症狀更嚴重、會因刺激耳咽管，感染中耳炎、肺功能較差、容易罹患呼吸道疾病等。\r\n3.孕婦吸入二手菸易造成流產、早產、胎盤早期剝離、子宮感染等疾病。\r\n4.長期的暴露會造成更嚴重的胸腔問題和過敏症，還會增加心臟病和肺癌的罹患率。\r\n5.以上皆是。\r\n', 1, 0, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `que`
--

CREATE TABLE `que` (
  `id` int(10) UNSIGNED NOT NULL,
  `text` text NOT NULL,
  `main_id` int(10) UNSIGNED NOT NULL,
  `vote` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `que`
--

INSERT INTO `que` (`id`, `text`, `main_id`, `vote`) VALUES
(1, '問題一：你最常做什麼運動來促進健康體能呢?', 0, 9),
(2, '1.健走或爬樓梯、慢跑等較不受時間、場地限制的運動。', 1, 5),
(3, '2.仰臥起坐、抬腿及伏地挺身、伸展操、瑜珈等室內運動。', 1, 2),
(4, '3.球類運動、游泳、跳舞、騎腳踏車等加強心肺功能的運動。', 1, 1),
(5, '4.舉重鍛鍊、彈力帶、啞鈴等運用輔助器材鍛鍊肌耐力的運動。', 1, 1),
(6, '問題二：二手菸沒有安全劑量，只要有暴露，就會有危險，請問它會造成身體上哪些危害?', 0, 6),
(7, '2.對孩子的的健康會產生許多影響，例如容易咳嗽或打噴嚏、罹患氣喘或讓症狀更嚴重、會因刺激耳咽管，感染中耳炎、肺功能較差、容易罹患呼吸道疾病等。', 6, 1),
(8, '3.孕婦吸入二手菸易造成流產、早產、胎盤早期剝離、子宮感染等疾病。', 6, 0),
(9, '4.長期的暴露會造成更嚴重的胸腔問題和過敏症，還會增加心臟病和肺癌的罹患率。', 6, 3),
(10, '5.以上皆是。', 6, 1),
(11, ' 1.增加罹患冠狀動脈心臟病及罹病死亡之風險。', 6, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `total`
--

CREATE TABLE `total` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `total` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `total`
--

INSERT INTO `total` (`id`, `date`, `total`) VALUES
(1, '2024-12-31', 1),
(2, '2025-01-02', 1),
(3, '2025-01-03', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `acc` text NOT NULL,
  `pw` text NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `users`
--

INSERT INTO `users` (`id`, `acc`, `pw`, `email`) VALUES
(1, 'admin', '1234', 'admin@1234'),
(2, 'test', '5678', 'test@labor.gov.tw');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `que`
--
ALTER TABLE `que`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `total`
--
ALTER TABLE `total`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `log`
--
ALTER TABLE `log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `que`
--
ALTER TABLE `que`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `total`
--
ALTER TABLE `total`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
