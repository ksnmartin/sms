-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2020 at 11:18 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"sms\",\"table\":\"posts\"},{\"db\":\"sms\",\"table\":\"teacher\"},{\"db\":\"sms\",\"table\":\"admin\"},{\"db\":\"sms\",\"table\":\"course\"},{\"db\":\"sms\",\"table\":\"follow\"},{\"db\":\"sms\",\"table\":\"follows\"},{\"db\":\"sms\",\"table\":\"followings\"},{\"db\":\"sms\",\"table\":\"students\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2020-04-27 21:18:13', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `sms`
--
CREATE DATABASE IF NOT EXISTS `sms` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sms`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`) VALUES
(1, 'Umair Farooqui', 'info.mufazmi@gmail.com', 'farooqui'),
(2, 'Firdos Abbasi', 'firdosfatima.it@gmail.com', 'farooqui');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `course_short_name` varchar(250) NOT NULL,
  `course_full_name` varchar(250) NOT NULL,
  `course_date` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_short_name`, `course_full_name`, `course_date`) VALUES
(44, 'M.C.A', 'MASTER OF COMPUTER APPLICATION	', '25-04-2019'),
(45, 'M.S.C	', 'MASTER OF SCIENCE	', '25-04-2019'),
(46, 'B.COM	', 'BACHELOR OF COMMERCE	', '25-04-2019'),
(48, 'M.B.A	', 'MASTER OF BUSINESS ADMINISTRATION	', '25-04-2019');

-- --------------------------------------------------------

--
-- Table structure for table `follow`
--

CREATE TABLE `follow` (
  `id` int(11) NOT NULL,
  `to_user_id` int(20) NOT NULL,
  `from_user_id` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `follow`
--

INSERT INTO `follow` (`id`, `to_user_id`, `from_user_id`) VALUES
(29, 23, 20),
(33, 20, 32),
(37, 0, 21),
(38, 21, 21),
(40, 21, 20),
(45, 30, 20),
(46, 40, 20),
(47, 20, 20);

-- --------------------------------------------------------

--
-- Table structure for table `followings`
--

CREATE TABLE `followings` (
  `id` int(11) NOT NULL,
  `from_user_id` varchar(20) NOT NULL,
  `to_user_id` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `follows`
--

CREATE TABLE `follows` (
  `id` int(11) NOT NULL,
  `to_user_id` int(20) NOT NULL,
  `from_user_id` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `from_user_id` varchar(3) NOT NULL,
  `content` longtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `from_user_id`, `content`, `image`, `timestamp`) VALUES
(10, '1', 'Priyanka chopra', 'priyanka chopra.jpg', '2019-05-08 15:37:52'),
(70, '1', 'This website is developed by Social Codia.', 'socialcodia.png', '2020-04-27 21:15:56'),
(15, '1', 'The results of the best video ever try to get the way this can be its own incomplete website and I will be its own incomplete website and I will be its own incomplete website and I will be its own incomplete website and I will be its own incomplete websit', 'Screenshot_2019-05-05-20-08-26-893_com.mxtech.videoplayer.ad.png', '2019-05-08 17:12:44'),
(17, '8', 'True Love &hearts;ï¸', '918369709214_status_eace0e54cee646309b0da5f908d6731f.jpg', '2019-05-08 19:14:13'),
(21, '8', 'Wow , Looking great Umair... ðŸ˜˜ðŸ˜˜ðŸ˜˜', 'IMG_20190513_223507454.jpg', '2019-05-13 22:22:56'),
(22, '8', 'Ramzan Mubarak Umair... ðŸ˜˜ðŸ˜˜ðŸ˜˜', 'B612_20190509_075024_942.jpg', '2019-05-13 22:24:01'),
(23, '8', 'Beautiful Pic Of My Husband And Nanand. ðŸ˜˜ðŸ˜˜ðŸ˜˜', 'IMG_20190514_164931554.jpg', '2019-05-14 23:10:20'),
(24, '8', 'Mine sona .ðŸ˜˜ðŸ˜˜ðŸ˜˜ðŸ˜˜', 'IMG_20190513_223507454.jpg', '2019-05-16 15:50:00'),
(25, '20', 'Umair Farooqui The Boss', '6.jpg', '2019-05-19 05:55:07'),
(35, '20', 'Your genes decide whether you will own a dog or not, pawsible? Although dogs and other pets are common household members across the globe, little is known how they impact our daily life and health.', 'dogsgenes.jpeg', '2019-05-20 00:28:40'),
(36, '20', 'Two killed in Delhi as Gangs of Wasseypur style shootouts turn Dwarka into war zone Two gang members were killed on Sunday as the area near Dwarka Mor metro station in Delhi became another Wasseypur, typical to the one portrayed in the movie Gangs of Wass', 'download__12__0.jpeg', '2019-05-20 00:29:22'),
(37, '20', 'England set new ODI record, thrash Pakistan 4-0 ahead of World Cup 2019 5th ODI: England posted their 4th straight 340-plus total in ODIs and thrashed Pakistan by 54 runs to complete a 4-0 sweep of Pakistan on Sunday in Leeds.', 'eoinmorganengvpak2.jpg', '2019-05-20 00:29:38'),
(38, '20', 'England set new ODI record, thrash Pakistan 4-0 ahead of World Cup 2019 5th ODI: England posted their 4th straight 340-plus total in ODIs and thrashed Pakistan by 54 runs to complete a 4-0 sweep of Pakistan on Sunday in Leeds.', 'Shilpa-Shetty.jpeg', '2019-05-20 00:29:55'),
(39, '20', 'India Today Axis Poll: Data shows BJP bridged the urban-rural divide India Today-Axis My India exit poll suggests that the BJP and its allies have managed to curtail the gap between the rural and urban areas.', '20190408_130354_0.jpeg', '2019-05-20 00:30:15'),
(40, '20', 'Saffron whitewash: BJP+ likely to sweep India show exit poll results, win 339-369 seats Exit poll results: India Today- Axis My India Exit Poll predicts BJP-led NDA will win between 339 and 369 seats. The Congress-led UPA will be able to win 77 to 108 sea', 'narendra_modi_reuters.jpeg', '2019-05-20 00:30:30'),
(42, '20', '#mufazmi', 'BeautyPlus_20190607021830167_save.jpg', '2019-06-07 00:08:51'),
(43, '20', 'Gddhgd', 'BeautyPlus_20190610005000034_save.jpg', '2019-06-11 07:50:38'),
(44, '20', 'Umair Farooqui. Demo Upload', 'BeautyPlus_20190825102529003_save.jpg', '2019-09-09 08:16:45'),
(47, '21', 'demo post from student_id = 21', 'mufazmi.png', '2019-10-10 17:07:40'),
(46, '20', 'The best sir please find the attached file is scanned image in PDF format to the best sir please find the attached file is scanned image in PDF format to the best sir please find the attached file', 'tuxpi.com.1568636544.jpg', '2019-09-20 15:45:32'),
(48, '21', 'stack image', 'stock-vector-editable-square-frame-banner-template-for-social-media-post-red-black-and-white-geometric-shape-1415216360.jpg', '2019-10-10 17:06:33'),
(49, '22', 'icon from id 22 and username is sajid', 'icon.png', '2019-10-11 17:57:56'),
(50, '22', 'icon from id 22 and username is sajid', 'background-1939128_1280.jpg', '2019-10-11 17:58:10'),
(51, '20', 'test 21', 'mufazmi.png', '2019-10-12 00:51:01'),
(52, '20', 'shilpa shetty.. posting this content using student ai id 20', 'Shilpa-Shetty.jpeg', '2019-10-12 02:01:04'),
(57, '20', 'trtwert', '28471706_206517316770319_3770339559908589751_n.png', '2019-10-14 07:40:49'),
(58, '20', 'demo data posted by using student_id 20', '28471706_206517316770319_3770339559908589751_n.png', '2019-10-16 11:21:34'),
(59, '21', 'Firdos Abbasi', 'firdos - Copy.jpg', '2019-10-21 05:19:12'),
(61, '20', 'this is our basic input box for posting content into the database server, we have checked that our user can\'t perform xxs attack,\r\nthis demo post is made by username = mufazmi, ', '', '2019-10-21 15:28:55'),
(68, '20', 'when i reached my home then what i saw my dad were crying for me, my sister my brother even my bhaijaan was crying for me\r\n.....\r\n\r\n\r\n\r\nfirdos you know my father got the first heart just because of me, and even i have\'t disclossed that what was happened, you have\'t cleared any things yet..\r\n\r\nand that will be your one of the biggest mistake of your life which you have made yet....\r\n\r\nfirdos don\'t forget this case can changed your life, because my life has been changed, just because of you.\r\n\r\n\r\n\r\n\r\n\r\nfirdos please give me one chance for becomming your life partner please yaar please firdo syou are mine life yaar you are mine life please please please give me one chance', '', '2019-10-21 17:47:39'),
(69, '20', 'A SENTENCE CHANGED MINE LIFE: - what was happened exactly? and why there was more than five people were crying.. why why why why why.?', '', '2019-10-21 17:48:45'),
(67, '20', 'jazakallah for everythings,\r\nif in feature shadab perfomed any unusual activities against me , then i will forget that, who i am ? who are you? and who is he? \r\nand also i will not responsible for everything, i had tried all possible things to solve this case, but i am unable to solve.\r\n\r\nFirdos Abbasi, you know, i had faced too many problem, too many horible setuation just becuase of you.....\r\n\r\n\r\nfirdos abbasi you know that\'s i had more than forty one thousand in my pocket, and when i reached my home then what i saw?\r\n\r\nmy mom and dad was crying for me, but before going to my home i had goes to my fathers shop, i were don\'t know , that what was happened there, i was fighting with my dad to don\'t stop me go to home..\r\n\r\nbut they was shouting at me and saying you will with me,\r\n\r\nmost important things here, after reaching the shop my dad never ask for money which i had,\r\n\r\nthey were caring about me shouting crying how are you, why you too late, coz i had blocked to everyone,,\r\n\r\nmy dad got a first heart attack just because of, i have fighted with me also my dad and brother and sister,\r\n\r\n\r\nwhy why why why why why,,,, i have never said about you firdos abbasi....\r\n\r\nbut in the end firdos i love you very very very very much,,,,\r\n\r\n\r\n\r\nplease firdos give me one chance for becomming your life partner please firdos please!\r\n', '', '2019-10-21 17:31:41');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `rollno` varchar(255) NOT NULL,
  `standerd` varchar(255) NOT NULL,
  `username` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `rollno`, `standerd`, `username`, `name`, `gender`, `contact`, `email`, `password`, `city`, `image`) VALUES
(20, '1', 'BCA', 'mufazmi', 'Umair Farooqui', 'male', '9867503256', 'info.mufazmi@gmail.com', 'farooqui', 'Thane', 'mufazmi.png'),
(21, '2', 'Botanology', 'firdos', 'Firdos Abbasi', 'female', '7236901464', 'firdosfatima.it@gmail.com', 'farooqui', 'Sipah', 'firdos.jpg'),
(22, '6', '3', 'sajid', 'Sajid Farooqui', 'male', '82684000646', 'sajidfarooqui82@gmail.com', 'farooqui', 'Thane', '6.jpg'),
(27, '10', '1', 'ibbu', 'Ibrahim Imadi', 'male', '9920322293', 'info.ibraheemimadi@gmail.com', 'farooqui', 'Mumbra, Thane', '');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(13) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `position` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `image` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `name`, `email`, `contact`, `gender`, `position`, `password`, `address`, `image`) VALUES
(1, 'Umair Farooqui', 'info.mufazmi@gmail.com', '9867503256', 'male', 'Manager', 'farooqui', 'kausa, mumbra, thane', 'mufazmi.png'),
(8, 'Firdos Farooqui', 'firdosfatima.it@gmail.com', '7236901464', 'female', 'Head Teacher', 'abbasi', 'Sipah', 'firdos.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `follow`
--
ALTER TABLE `follow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `followings`
--
ALTER TABLE `followings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `follows`
--
ALTER TABLE `follows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `follow`
--
ALTER TABLE `follow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `followings`
--
ALTER TABLE `followings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `follows`
--
ALTER TABLE `follows`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
