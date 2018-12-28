-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 22, 2017 at 01:20 PM
-- Server version: 5.7.17-0ubuntu0.16.04.1
-- PHP Version: 7.0.15-0ubuntu0.16.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bands`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `band_id` varchar(255) NOT NULL,
  `id` int(255) NOT NULL,
  `album_title` varchar(255) NOT NULL,
  `album_art_url` varchar(255) NOT NULL,
  `album_year` varchar(255) NOT NULL,
  `date_` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `album_art_local` varchar(255) DEFAULT 'na'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`band_id`, `id`, `album_title`, `album_art_url`, `album_year`, `date_`, `album_art_local`) VALUES
('nick_j_01', 4, 'Remarkably Human', 'https://bulbcdn.blob.core.windows.net/contents/band_app/nick_johnston/music/589147c1274c6.jpg', 'xxxx', '2017-02-01 02:29:50', 'na'),
('nick_j_01', 5, 'Atomic Mind', 'https://bulbcdn.blob.core.windows.net/contents/band_app/nick_johnston/music/589148d4d3773.jpg', 'xxxx', '2017-02-01 02:33:36', 'na'),
('nick_j_01', 6, 'Public Display Of Infection', 'https://bulbcdn.blob.core.windows.net/contents/band_app/nick_johnston/music/589148d4d3773.jpg.jpg', 'xxxx', '2017-02-01 02:34:06', 'na'),
('band_app_nemesis', 9, 'Tritio Jatra', 'http://cdn.bulbinc.com/contents/band_app/nemesis/58c007fa0db58.jpg', '2011', '2017-03-08 13:33:30', 'na'),
('av_ra_oid_fa_02', 10, 'Bhaar', 'http://cdn.bulbinc.com/contents/band_app/avoid_rafa_band/58dbb2d413b89.jpg', '2016', '2017-03-29 13:13:20', 'na'),
('av_ra_oid_fa_01', 11, 'rafa_solo', 'http://cdn.bulbinc.com/contents/band_app/avoid_rafa_solo/58dbc19cdfdb8.jpg', '2017', '2017-03-29 14:16:25', 'na');

-- --------------------------------------------------------

--
-- Table structure for table `authentication`
--

CREATE TABLE `authentication` (
  `band_id` varchar(255) NOT NULL,
  `band_name` varchar(255) NOT NULL,
  `band_pass` varchar(255) NOT NULL,
  `band_creating_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `subdomain` varchar(255) NOT NULL,
  `band_email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authentication`
--

INSERT INTO `authentication` (`band_id`, `band_name`, `band_pass`, `band_creating_date`, `subdomain`, `band_email`) VALUES
('av_ra_oid_fa_01', 'Avoid rafa', '12345678', '2017-03-29 12:25:53', '', 'avoidrafa@gmail.com'),
('av_ra_oid_fa_02', 'Avoid rafa', '12345678', '2017-03-29 12:25:53', '', 'avoidrafa@gmail.com'),
('band_app_nemesis', 'Nemesis', '12345678', '2017-03-29 12:26:01', '', 'nemesis@gmaill.com'),
('nick_j_01', 'Nick Johnston', '12345678', '2017-03-29 12:26:07', '', 'nick@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `concerts`
--

CREATE TABLE `concerts` (
  `id` bigint(255) NOT NULL,
  `concert_title` varchar(255) NOT NULL,
  `concert_about` varchar(255) NOT NULL,
  `concert_lat` double NOT NULL,
  `concert_lon` double NOT NULL,
  `date_` date NOT NULL,
  `band_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `concerts`
--

INSERT INTO `concerts` (`id`, `concert_title`, `concert_about`, `concert_lat`, `concert_lon`, `date_`, `band_id`) VALUES
(1, 'op', ' \r\n    op', 23.817699452932874, 90.40057182312012, '2017-02-22', 'nick_j_01'),
(2, 'Test gig 1', ' asdasdasdasdasd\r\n    ', 23.811653201688962, 90.43473243713379, '2017-02-08', 'av_ra_oid_fa_01'),
(3, 'test gig 2 ', 'asdasfrbzsrstfg t', 23.822724694190565, 90.35825729370117, '2017-02-15', 'av_ra_oid_fa_01'),
(5, 'test1', ' \r\n    asdasdasd', 23.809690072548698, 90.42348861694336, '2017-03-22', 'band_app_nemesis'),
(6, 'Test gig 111', 'fgdfgdfgdfgdfgdfg', 23.81306663629077, 90.42228698730469, '2017-03-16', 'band_app_nemesis'),
(7, 'today!', ' dfsdf', 23.786287288225147, 90.35259246826172, '2017-03-09', 'band_app_nemesis'),
(9, 'Country Tour Concert 2', 'country tour ', 23.81306663629077, 90.42228698730469, '2017-03-30', 'av_ra_oid_fa_02'),
(10, 'Country Tour Concert 1', 'Country tour', 23.81306663629077, 90.42228698730469, '2017-03-29', 'av_ra_oid_fa_02');

-- --------------------------------------------------------

--
-- Table structure for table `music`
--

CREATE TABLE `music` (
  `title` varchar(255) NOT NULL,
  `album_id` varchar(255) NOT NULL,
  `track_no` varchar(255) NOT NULL,
  `band_id` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `id` bigint(255) NOT NULL,
  `date_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `source_local` varchar(255) NOT NULL DEFAULT 'na'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `music`
--

INSERT INTO `music` (`title`, `album_id`, `track_no`, `band_id`, `url`, `id`, `date_`, `source_local`) VALUES
('Odbhuture Tumi', '7', '6', 'av_ra_oid_fa_01', 'https://bulbcdn.blob.core.windows.net/contents/Odhvuture%20Tumi%20-%20Rafa%20%5BMyBDmusic.Com%5D.mp3', 3, '2017-02-07 14:20:21', 'na'),
('Koshto', '7', '3', 'av_ra_oid_fa_01', 'https://bulbcdn.blob.core.windows.net/contents/Koshto-Rafa%20%5BMyBDmusic.Com%5D.mp3', 4, '2017-02-07 14:20:21', 'na'),
('test2', '', '22', 'av_ra_oid_fa_01', 'http://cdn.bulbinc.com/contents/band_app/avoid_rafa/58becd8c889a2.mp3', 5, '2017-03-07 15:11:41', 'na'),
('sooo', '', '123', 'av_ra_oid_fa_01', 'http://cdn.bulbinc.com/contents/band_app/avoid_rafa/58becf6577e37.mp3', 6, '2017-03-07 15:19:25', 'na'),
('Kobe', '9', '01', 'band_app_nemesis', 'http://cdn.bulbinc.com/contents/band_app/nemesis/58c0083a86c8b.mp3', 9, '2017-03-08 13:34:01', 'na'),
('Bir', '9', '02', 'band_app_nemesis', 'http://cdn.bulbinc.com/contents/band_app/nemesis/58c00d1d580fe.mp3', 10, '2017-03-08 13:54:59', 'na'),
('Tritio Jatra', '9', '03', 'band_app_nemesis', 'http://cdn.bulbinc.com/contents/band_app/nemesis/58c016973b9dc.mp3', 11, '2017-03-08 14:35:26', 'na'),
('Egiye Nao', '9', '05', 'band_app_nemesis', 'http://cdn.bulbinc.com/contents/band_app/nemesis/58c016973b9dc.mp3.mp3', 12, '2017-03-08 14:37:52', 'na'),
('O-boshobash', '9', '06', 'band_app_nemesis', 'http://cdn.bulbinc.com/contents/band_app/nemesis/58c017bd1be99.mp3', 13, '2017-03-08 14:40:25', 'na'),
('Nirbashon', '9', '07', 'band_app_nemesis', 'http://cdn.bulbinc.com/contents/band_app/nemesis/58c017bd1be99.mp3.mp3', 14, '2017-03-08 14:49:27', 'na'),
('Bhaar', '10', '01', 'av_ra_oid_fa_02', 'http://cdn.bulbinc.com/contents/band_app/avoid_rafa_band/58dbb2f96780b.mp3', 15, '2017-03-29 13:14:19', 'na'),
('Chader Gaye Chad', '10', '02', 'av_ra_oid_fa_02', 'http://cdn.bulbinc.com/contents/band_app/avoid_rafa_band/58dbb2f96780b.mp3.mp3', 16, '2017-03-29 13:15:52', 'na'),
('rafa_1', '11', '01', 'av_ra_oid_fa_01', 'http://cdn.bulbinc.com/contents/band_app/avoid_rafa_solo/58dbc1d897074.jpg.mp3', 17, '2017-03-29 14:24:19', 'na');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(11) NOT NULL,
  `news_title` varchar(255) NOT NULL,
  `news_body` text NOT NULL,
  `band_id` varchar(255) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `local_image_url` varchar(255) NOT NULL DEFAULT 'na',
  `date_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `news_title`, `news_body`, `band_id`, `image_url`, `local_image_url`, `date_`) VALUES
(16, 'In Mexico', 'In Mexico can be news.', 'nick_j_01', 'https://bulbcdn.blob.core.windows.net/contents/band_app/nick_johnston/music/58914a863133d.jpg', 'na', '2017-02-01 02:41:01'),
(35, 'Country Tour Concert', 'We are going to have a country tour concert ! ! ! keep in touch', 'av_ra_oid_fa_02', 'http://cdn.bulbinc.com/contents/band_app/avoid_rafa_band/58dbb630d829b', 'na', '2017-03-29 13:28:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_local_image_url` varchar(255) DEFAULT NULL,
  `user_image_url` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) NOT NULL,
  `band_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_email`, `user_password`, `user_local_image_url`, `user_image_url`, `user_name`, `band_id`) VALUES
('erfanjordison@gmail.com', '12345678', NULL, NULL, 'erfan', '13101209'),
('sdfds@sfsdf.sdf', '12345678', NULL, NULL, 'fgdfgf', '13101209'),
('a@a.com', '12345678', NULL, NULL, 'erfanb', 'nick_j_01'),
('erfanjordison@gmail.com', '12345678', NULL, NULL, 'Sayed Erfan Arefin', 'av_ra_oid_fa_01'),
('erfanjordison@gmail.com', '12345678', NULL, NULL, 'erfan', '13101209'),
('erfanjordison@gmail.com', '12345678', NULL, NULL, 'test 4', 'band_app_nemesis'),
('tanzim121@gmail.com', '12345678', NULL, NULL, 'tanzim', 'band_app_nemesis'),
('asshole@gmail.com', '12345678', NULL, NULL, 'asshole', 'band_app_nemesis'),
('dipjol@shabandimu.com', '1234', NULL, NULL, 'dipjol', 'av_ra_oid_fa_01'),
('saadman.xd@gmail.com', 'Nokia5130', NULL, NULL, 'Saadman', 'av_ra_oid_fa_01');

-- --------------------------------------------------------

--
-- Table structure for table `youtube_videos`
--

CREATE TABLE `youtube_videos` (
  `id` bigint(255) NOT NULL,
  `video_name` varchar(255) NOT NULL,
  `video_link` varchar(255) NOT NULL,
  `video_type` tinyint(4) NOT NULL,
  `band_id` varchar(255) NOT NULL,
  `date_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `youtube_videos`
--

INSERT INTO `youtube_videos` (`id`, `video_name`, `video_link`, `video_type`, `band_id`, `date_`) VALUES
(2, 'Kobe', 'PjcRfTnI0kU', 0, '13101209', '2016-12-21 05:50:50'),
(3, 'Weakened by Winter', 'FQBKNxAagic', 0, 'nick_j_01', '2017-02-01 02:38:25'),
(5, 'Hurt - Rafa (Cover)', 'UPWw-eDtQiA', 0, 'av_ra_oid_fa_01', '2017-02-07 14:08:20'),
(6, 'Watch Over You - For The Cool People Of Rocknation', 'cyr0aBbl7GA', 0, 'av_ra_oid_fa_01', '2017-02-07 14:09:18'),
(7, 'No more lies', 'clfZV4FWwNM', 0, 'band_app_nemesis', '2017-03-03 10:38:59'),
(8, 'trooper', '2G5rfPISIwo', 0, 'band_app_nemesis', '2017-03-03 10:39:30'),
(9, 'Dod', 'SyRHeyFdl0I', 0, 'band_app_nemesis', '2017-03-03 10:39:47'),
(10, 'Blood bros', 've8PytALp64', 0, 'band_app_nemesis', '2017-03-03 10:40:02'),
(11, 'shoot the straingers', '0c9iYZdsZMM', 0, 'band_app_nemesis', '2017-03-03 10:40:19'),
(12, 'hagu by name ', '71TJitXU8Z0', 0, 'band_app_nemesis', '2017-03-03 10:40:33'),
(13, 'love', 'SFEH332t2N4', 0, 'band_app_nemesis', '2017-03-03 10:40:42'),
(14, 'Fear ', 'vjmnot3hSUg', 0, 'band_app_nemesis', '2017-03-03 10:40:53'),
(15, 'rainmaker', 'ivrVZSgmEJs', 0, 'band_app_nemesis', '2017-03-03 10:41:01'),
(16, 'Moth Into Flame ', '4tdKl-gTpZg', 0, 'band_app_nemesis', '2017-03-03 10:41:50'),
(17, 'Sign of the cross', 'aoxwjLdNmXc', 0, 'band_app_nemesis', '2017-03-03 10:42:05'),
(18, 'beast number', '7-iRf9AWoyE', 0, 'band_app_nemesis', '2017-03-03 10:42:15'),
(19, 'sooo', '0f_hewSrAH4', 0, 'av_ra_oid_fa_01', '2017-03-07 15:22:07'),
(20, 'Bhaar - AvoidRafa Album Trailer 2016', '5T7ikvD4C6E', 0, 'av_ra_oid_fa_02', '2017-03-29 12:37:32'),
(21, 'Yellow - avoidrafa SA TV live HD', 'L8X4CERCsQc', 0, 'av_ra_oid_fa_02', '2017-03-29 12:44:15'),
(22, 'avoidRafa - Anmone 2 @ RUET', 'WlmmgPU-sao', 0, 'av_ra_oid_fa_02', '2017-03-29 12:54:03'),
(23, 'avoidrafa - à¦†à¦®à¦¿ à¦†à¦•à¦¾à¦¶ à¦ªà¦¾à¦ à¦¾à¦¬ (Ami Akash Pathabo OST)', 'M2M8dTzgE7Q', 0, 'av_ra_oid_fa_02', '2017-03-29 12:55:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `authentication`
--
ALTER TABLE `authentication`
  ADD PRIMARY KEY (`band_id`);

--
-- Indexes for table `concerts`
--
ALTER TABLE `concerts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `music`
--
ALTER TABLE `music`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`,`band_id`),
  ADD KEY `band_id` (`band_id`);

--
-- Indexes for table `youtube_videos`
--
ALTER TABLE `youtube_videos`
  ADD PRIMARY KEY (`id`,`band_id`),
  ADD KEY `band_id` (`band_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `concerts`
--
ALTER TABLE `concerts`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `music`
--
ALTER TABLE `music`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `youtube_videos`
--
ALTER TABLE `youtube_videos`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
