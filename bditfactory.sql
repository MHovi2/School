-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 27, 2021 at 05:41 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bditfactory`
--

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `name` varchar(2000) DEFAULT NULL,
  `url` varchar(2000) DEFAULT NULL,
  `logo` varchar(2000) DEFAULT NULL,
  `favicon` varchar(2000) DEFAULT NULL,
  `views` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `url`, `logo`, `favicon`, `views`) VALUES
(1, 'মোস্তাফিজার রহমান মেমোরিয়াল উচ্চ বিদ্যালয়', 'সুখানপুকুর,গাবতলী,বগুড়া', '6fbe9ad27e485ceb8fee85cecbfb03fb.png', 'd1c81ebaf00e393f645c4cc7c3de991d.png', 16);

-- --------------------------------------------------------

--
-- Table structure for table `social`
--

CREATE TABLE `social` (
  `id` int(11) NOT NULL,
  `f` varchar(2000) DEFAULT NULL,
  `t` varchar(2000) DEFAULT NULL,
  `g` varchar(2000) DEFAULT NULL,
  `p` varchar(2000) DEFAULT NULL,
  `l` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `social`
--

INSERT INTO `social` (`id`, `f`, `t`, `g`, `p`, `l`) VALUES
(1, 'https://facebook.com', 'https://facebook.com', 'https://', 'https://', 'https://');

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `AdminUserName` varchar(255) NOT NULL,
  `AdminPassword` varchar(255) NOT NULL,
  `AdminEmailId` varchar(255) NOT NULL,
  `Is_Active` int(11) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `AdminUserName`, `AdminPassword`, `AdminEmailId`, `Is_Active`, `CreationDate`, `UpdationDate`) VALUES
(1, 'admin', '$2y$10$PAz/sEyrdRupGQj6FE/abujen347VbZHqzknLYcI8qRNGQKJdg/Z6', '', 1, '2018-05-27 05:51:00', '2019-08-23 15:04:16'),
(2, 'mehedihasan174629@gmail.com', 'fine@2020', '', 1, '2020-04-29 19:13:35', '2020-04-29 19:13:46');

-- --------------------------------------------------------

--
-- Table structure for table `tblads`
--

CREATE TABLE `tblads` (
  `id` int(11) NOT NULL,
  `AdCode` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblads`
--

INSERT INTO `tblads` (`id`, `AdCode`) VALUES
(1, ' \r\n        <div class=\"ad\">\r\n          <img class=\"img-responsive\" src=\"assets/img/img-ad.jpg\" alt=\"img\" />\r\n        </div>'),
(2, '<div class=\"ad\">\r\n            <img class=\"img-responsive\" src=\"assets/img/img-single-ad.jpg\" alt=\"Chania\">\r\n </div>\r\n\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `Description` mediumtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(1, 'Slider', '/', '2019-04-29 14:00:14', '2019-08-23 16:22:22', 1),
(2, 'News', '/', '2019-04-29 14:00:14', '2019-08-23 16:24:03', 1),
(3, 'Notice', '/', '2019-04-29 14:00:14', '2019-08-23 16:24:15', 1),
(4, 'Sidebar', '/', '2019-08-23 16:09:09', '2019-08-23 16:35:55', 1),
(5, 'Blog', '/', '2019-09-10 04:35:28', '2019-09-10 04:36:05', 1),
(6, 'History', '/', '2019-09-11 17:58:58', '2020-04-28 18:00:26', 1),
(7, 'Video', '/', '2019-09-12 04:32:23', '2019-09-12 04:32:49', 1),
(8, 'Form', '/', '2019-09-19 04:10:02', '2019-09-19 04:11:09', 1),
(10, 'Teachers', '/', '2020-04-24 18:51:45', '2020-04-24 18:52:56', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomments`
--

CREATE TABLE `tblcomments` (
  `id` int(11) NOT NULL,
  `postId` char(11) DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `comment` mediumtext,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) DEFAULT NULL,
  `subj` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblcomments`
--

INSERT INTO `tblcomments` (`id`, `postId`, `name`, `email`, `comment`, `postingDate`, `status`, `subj`) VALUES
(23, NULL, 'Mehedi Hasan', 'mehedihasan174629@gmail.com', 'Nothing to say..Only for trayel..', '2019-09-18 12:22:30', 0, 'Message subject'),
(24, NULL, 'Mehedi Hasan', 'admin@admin.com', 'fsdfsd', '2020-03-26 21:04:58', NULL, 'Nothing'),
(26, NULL, 'sdfsd', 'sdfsd@ggdf', 'sdfs', '2020-03-27 04:49:07', NULL, 'dfsd'),
(27, NULL, 'casca', 'asda@dfsd', 'sfdsd', '2020-03-27 04:49:59', NULL, 'fsdfsf'),
(28, NULL, 'casca', 'asda@dfsd', 'sfdsd', '2020-03-27 04:50:28', NULL, 'fsdfsf'),
(29, NULL, 'casca', 'asda@dfsd', 'sfdsd', '2020-03-27 04:50:50', NULL, 'fsdfsf'),
(30, NULL, 'casca', 'asda@dfsd', 'sfdsd', '2020-03-27 04:51:10', NULL, 'fsdfsf'),
(31, NULL, 'casca', 'asda@dfsd', 'sfdsd', '2020-03-27 04:51:13', 0, 'fsdfsf'),
(34, NULL, 'মোস্তাফিজার রহমান মেমোরিয়াল উচ্চ বিদ্যালয়', 'admin@admin.com', 'ghdfgdfgd', '2020-04-24 16:38:54', 0, 'Nothing');

-- --------------------------------------------------------

--
-- Table structure for table `tblgallery`
--

CREATE TABLE `tblgallery` (
  `id` int(11) NOT NULL,
  `ImageTitle` varchar(200) DEFAULT NULL,
  `ImageName` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblgallery`
--

INSERT INTO `tblgallery` (`id`, `ImageTitle`, `ImageName`) VALUES
(6, 'মাত্র ৫ দিনে ওজন কমাবে আলু', 'ac850d381d65f35ea40e545500f4f6e0.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblhomeslider`
--

CREATE TABLE `tblhomeslider` (
  `id` int(11) NOT NULL,
  `PostTitle` longtext,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `PostDetails` longtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `Is_Active` int(1) DEFAULT NULL,
  `PostUrl` mediumtext,
  `PostImage` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblhomeslider`
--

INSERT INTO `tblhomeslider` (`id`, `PostTitle`, `CategoryId`, `SubCategoryId`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `PostUrl`, `PostImage`) VALUES
(166, 'rwfgethry', 13, 0, '<p>thertbggtfrhjtyj</p>', '2019-05-22 03:44:59', NULL, 1, 'rwfgethry', '24dcf901dba441cd4e9ba64bccfcf6a8.png'),
(167, 'দেশকে দারিদ্রমুক্ত রাখতে শেখ হাসিনার বিকল্প নেই: শফিক চৌধুরী', 2, NULL, '<p>e5y54gerfergthgtrhg</p>', '2019-05-23 07:51:48', NULL, 1, 'দেশকে-দারিদ্রমুক্ত-রাখতে-শেখ-হাসিনার-বিকল্প-নেই:-শফিক-চৌধুরী', 'a4238b93f1dc5bbe7df1f6322c369728.jpg'),
(168, 'সিলেট পৌঁছেছেন পররাষ্ট্রমন্ত্রী ড. মোমেন', 7, NULL, '<p><strong>নন্দিত সিলেট :&nbsp;</strong>পররাষ্ট্রমন্ত্রী ড. এ কে আব্দুল মোমেন\r\n ২৪ ঘন্টার সফরে সিলেটে এসে পৌঁছেছেন। শুক্রবার বেলা পৌণে ১২টার দিকে \r\nবাংলাদেশ বিমানের এটি ফ্লাইটে তিনি সিলেট ওসমানী আন্তর্জাতিক বিমানবন্দরে \r\nঅবতরণ করেন।</p>\r\n<p>এসময় বিমানবন্দরে তাকে স্বাগত জানান- সিলেট জেলা আওয়ামী লীগের সাধারণ \r\nসম্পাদক শফিকুর রহমান চৌধুরী, মহানগর আওয়ামী লীগের সাধারণ সম্পাদক আসাদ \r\nউদ্দিন আহমদ, সদর উপজেলা চেয়ারম্যান আশফাক আহমদ, আওয়ামী লীগ নেতা ফয়জুল \r\nআনোয়ার আলাওর, সুজাত আলী রফিক, নাসির উদ্দিন খান, এস এম নুনু মিয়া, আজাদুর \r\nরহমান আজাদ, মহানগর যুবলীগের আহবায়ক আলম খান মুক্তিসহ সিলেট জেলা ও মহানগর \r\nআওয়ামী লীগ ও অঙ্গসংগঠনের নেতৃবৃন্দ।</p><p>এই সফরে শুক্রবার বিকাল ৩টায় সিলেট সিটি করপোরেশন কর্তৃক আয়োজিত \r\nমতবিনিময় সভায় উপস্থিত থাকবেন পররাষ্ট্রমন্ত্রী। এ দিন নর্থ ইস্ট \r\nইউনিভার্সিটি আয়োজিত ইফতার মাহফিলে যোগ দেবেন তিনি।</p>\r\n<p>আগামীকাল শনিবার সকাল রিকাবিবাজারে পরিবার পরিকল্পনা এবং মা ও শিশু \r\nস্বাস্থ্য কার্যক্রম পর্যালোচনা ও মূল্যায়ন বিষয়ক বিভাগীয় কর্মশালায় যোগদান\r\n শেষে বেলা সোয়া ১২টার দিকে বিমানযোগে ঢাকার উদ্দেশ্যে রওয়ানা হবেন ।</p>', '2019-05-23 22:13:47', NULL, 1, 'সিলেট-পৌঁছেছেন-পররাষ্ট্রমন্ত্রী-ড.-মোমেন', '079dd6534d2d1c13e7a4c8b2c325315d.jpg'),
(169, 'পীরের বাড়ি থেকে ফেরার পথে ২ ব্যক্তিকে গলা কেটে হত্যা', 1, NULL, '<p><strong>নন্দিত ডেস্ক:&nbsp;</strong>ঢাকার নবাবগঞ্জে মোটরসাইকেল আরোহী দুই ব্যক্তিকে গলা কেটে হত্যা করেছে দুর্বৃত্তরা।</p>\r\n<p>উপজেলার বান্দুরা ইউনিয়নের মহব্বতপুর তালতলা এলাকায় বৃহস্পতিবার রাত ১১টার দিকে এ ঘটনা ঘটে।</p>\r\n<p>নিহতরা হলেন- উপজেলার গালিমপুর ইউনিয়নের নোয়াদ্দা এলাকার কৃষক আবুল কালাম (৫৫) ও মো. জাহিদ (৪৪)।</p>\r\n<p>নিহতের স্বজনরা জানান, বৃহস্পতিবার ইফতারের পর কালাম ও জাহিদ মোটরসাইকেল\r\n নিয়ে পার্শ্ববর্তী দোহার উপজেলার বাস্তা এলাকায় পীরের বাড়িতে যান।<br>\r\nসেখান থেকে ফেরার পথে মহব্বতপুর তালতলাসংলগ্ন এলাকায় তিন দুষ্কৃতকারী \r\nরাস্তায় কলাগাছ ফেলে তাদের পথরোধ করে। এ সময় দুর্বৃত্তরা কালাম ও জাহিদকে \r\nএলোপাতাড়ি কুপিয়ে চলে যায়।</p><p>এতে ঘটনাস্থলেই কালামের মৃত্যু হয়। আর জাহিদকে নবাবগঞ্জ উপজেলা \r\nস্বাস্থ্য কমপ্লেক্সে ভর্তি করা হয়। উন্নত চিকিৎসার জন্য সেখান থেকে ঢাকায় \r\nনেয়ার পথে জাহিদের মৃত্যু হয়।</p>\r\n<p>তবে কী কারণে তারা খুন হয়েছেন সে বিষয়ে কিছু জানাতে পারেননি নিহত দুই ব্যক্তির স্বজনরা।</p>\r\n<p>এ বিষয়ে নবাবগঞ্জ থানার ওসি মোস্তফা কামাল বলেন, বিষয়টি আমরা দেখছি। \r\nঘটনাস্থল পুলিশ পরিদর্শন করেছে। অপরাধী যেই হোক তাদের খুঁজে বের করা \r\nহবে।সৌজন্যে : যুগান্তর</p>', '2019-05-23 22:29:49', NULL, 1, 'পীরের-বাড়ি-থেকে-ফেরার-পথে-২-ব্যক্তিকে-গলা-কেটে-হত্যা', '6693195dd4bb00781903eabeafd2e7c1.jpg'),
(170, 'সংবাদ সম্মেলন ডেকেছেন মির্জা ফখরুল', 2, NULL, '<p><strong>নন্দিত ডেস্ক ::</strong> ব্যাংকক থেকে চিকিৎসা শেষে বৃহস্পতিবার (২৩ মে) রাতে ঢাকায় ফিরবেন বিএনপি মহাসচিব মির্জা ফখরুল ইসলাম আলমগীর।</p>\r\n<p>দেশে ফিরেই পরের দিন শুক্রবার (২৪ মে) বেলা ১১টায় গুলশানে বিএনপি চেয়ারপারসনের কার্যালয়ে সংবাদ সম্মেলন ডেকেছেন তিনি।</p>\r\n<p>বিএনপি চেয়ারপারসনের প্রেস উইংয়ের সদস্য শায়রুল কবির খান এ তথ্য নিশ্চিত করেছেন।</p><p>শায়রুল জানান, বিএনপি মহাসচিব একটি নিয়মিত ফ্লাইটে বৃহস্পতিবার সন্ধ্যায়\r\n ব্যাংকক থেকে দেশে ফিরবেন। শুক্রবার বেলা ১১টায় তিনি সংবাদ সম্মেলনে কথা \r\nবলবেন। এ সময় দলের স্থায়ী কমিটির সদস্যরাও উপস্থিত থাকবেন।</p>\r\n<p>সম্মেলনের ব্যাপারে জানতে চাইলে তিনি বলেন, বর্তমান রাজনৈতিক পরিস্থিতি নিয়েই কথা বলবেন মহাসচিব।</p>\r\n<p>এর আগে ১৫ মে চিকিৎসার জন্য স্বস্ত্রীক থাইল্যান্ডের রাজধানী ব্যাংককে যান মির্জা ফখরুল ইসলাম আলমগীর।</p><p><br></p>', '2019-05-23 22:41:06', NULL, 1, 'সংবাদ-সম্মেলন-ডেকেছেন-মির্জা-ফখরুল', 'e138564b9c7f75af7e8535270fc04194.jpg'),
(171, '‘চারজনের সঙ্গে প্রেম করছি’', 4, NULL, '<p><strong>বিনোদন ডেস্ক:</strong>জ্যাকুলিন ফার্নান্দেজের ক্যারিয়ার এখন \r\nতুঙ্গে। ধারাবাহিকভাবে বেশ কিছু ব্যবসা সফল ছবি তিনি উপহার দিয়েছেন \r\nইতিমধ্যে। তার নামের পাশে জুড়ে গেছে সফল নায়িকার তকমাও। বিশেষ করে সালমান \r\nখানের হাত ধরে ‘কিক’ ছবি করার পরই যেন ভাগ্যদেবী ভর করেছে তার ওপর। আর \r\nতাইতো সালমানকে নিজের অবিভাবকও মানেন তিনি। এদিকে জ্যাকুলিন সম্পর্কে তার \r\nভক্তদেরও কৌতুহলের কমতি নেই। এ নায়িকার প্রেম কিংবা তার বয়ফ্রেন্ড সম্পর্কে\r\n জানতে হরহামেশাই মিডিয়াও তার পিছু লেগে থাকে। তবে এবার আর পিছু লাগতে \r\nহয়নি। বরংচ নিজেই ফাঁস করলেন নিজের সম্পর্কের কথা। তবে তার মধ্যেও চমক \r\nরেখেছেন তিনি। সম্প্রতি তিনি এ বিষয়ে বলেন, অনেকেই জানতে চান আমি কার সঙ্গে\r\n ডেটিং করছি। সত্যি বলতে আমি চারজনের সঙ্গে প্রেম করছি। তবে মানুষ নয়, \r\nচারটি বিড়ালের সঙ্গে আমার ভালোবাসার সম্পর্ক চলছে। জ্যাকুলিন হেসে বলেন, \r\nচারটি বিড়াল খুবই কিউট। অবসর সময়ে তাদের সঙ্গেই আমার সময় কাটে। আমি তাদেরকে\r\n অনেক ভালোবাসি। তারাও আমাকে ছাড়া কিছু বোঝে না।</p>', '2019-05-23 23:07:45', NULL, 1, '‘চারজনের-সঙ্গে-প্রেম-করছি’', '55cf5e3ac106bf1f9f70317ca02a8b80.jpg'),
(172, ' ব্যারিস্টার রুমিন ফারহানার প্রার্থিতা বৈধ', 2, NULL, '<p><strong>নন্দিত ডেস্ক:&nbsp;</strong>সংরক্ষিত নারী আসনে বিএনপির মনোনীত \r\nপ্রার্থী ব্যারিস্টার রুমিন ফারহানার মনোনয়নপত্র বৈধ ঘোষণা করেছে নির্বাচন\r\n কমিশন (ইসি)। আজ মঙ্গলবার সকালে মনোনয়নপত্রটি বৈধ বলে ঘোষণা করেন \r\nরির্টানিং কর্মকর্তা ও ইসির যুগ্মসচিব মো. আবুল কাসেম।</p>\r\n<p>পরে তিনি&nbsp; বলেন, যাচাই-বাছাইয়ে কোনো ত্রুটি না পাওয়ায় মনোনয়নপত্রটি বৈধ \r\nঘোষণা করা হয়েছে। তবে তাকে এমপি হিসেবে আনুষ্ঠানিক ঘোষণার জন্য আরও কয়েকটি \r\nদিন অপেক্ষা করতে হবে।</p>\r\n<p>তবে সংশ্লিষ্ট সূত্র জানায়, আগামী ১৬ জুন পদটিতে ভোট হওয়ার কথা থাকলেও \r\nএকক প্রার্থী হওয়ায় প্রার্থিতা প্রত্যাহারের শেষ দিন ২৮ মে-তেই বিনা \r\nপ্রতিদ্বন্দ্বিতায় নির্বাচিত ঘোষিত হবেন রুমিন ফারহানা।</p>\r\n<p>নির্বাচন কমিশনের তফসিল অনুযায়ী সংরক্ষিত এ নারী আসনে মনোনয়ন ফরম জমা \r\nদেয়ার শেষদিন ছিল গতকাল (২০ মে) সোমবার। গতকাল দুপুর সাড়ে ১২টার দিকে \r\nনির্বাচন কমিশনে (ইসি) মনোনয়নপত্র জমা দেন তিনি।</p><p>এর আগে একাদশ সংসদ নির্বাচনে ব্রাহ্মণবাড়িয়া-২ (সরাইল-আশুগঞ্জ) আসন থেকে\r\n মনোনয়ন চেয়েছিলেন রুমিন ফারহানা। কিন্তু সেখানে মনোনয়ন দেয়া হয় উকিল \r\nআব্দুস সাত্তারকে। অবশেষে সংরক্ষিত নারী আসনে বিএনপির পক্ষ থেকে টিকিটটা \r\nতিনিই পেলেন।</p>\r\n<p>একাদশ জাতীয় সংসদ নির্বাচনের আসন সংখ্যা অনুপাতে দেশের অন্যতম বৃহৎ দল \r\nবিএনপি সংরক্ষিত নারী আসন পাবে একটি। তবে দলটির এমপিরা শপথ নিতে দেরি করায় \r\nসংরক্ষিত আসনটিও শূন্য ছিল। বিএনপি মহাসচিব মির্জা ফখরুল ইসলাম আলমগীর ছাড়া\r\n গত এপ্রিলে দলটির পাঁচনেতা সংসদ সদস্য হিসেবে শপথ নেন।</p>\r\n<p>সূত্র জানায়, সংরক্ষিত আসনে রুমিন ফারহানা ছাড়াও আলোচনায় ছিলেন বিএনপির \r\nসাংগঠনিক সম্পাদক শামা ওবায়েদ, মহিলা দলের সভাপতি আফরোজা আব্বাস, নির্বাহী \r\nকমিটির সদস্য নিপুণ রায়। কিন্তু এদের কাউকেই মনোনয়ন দেয়নি দলটি।</p>', '2019-05-24 03:20:48', NULL, 1, '-ব্যারিস্টার-রুমিন-ফারহানার-প্রার্থিতা-বৈধ', '8dba3b04a4944e11d07bcd24ea882a85.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext,
  `Description` longtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `PageTitle`, `Description`, `PostingDate`, `UpdationDate`) VALUES
(1, 'aboutus', 'About News Portal', '<br>', '2018-06-30 06:01:03', '2019-05-12 08:38:33'),
(2, 'contactus', 'Contact Details', '<p><br></p><br>', '2018-06-30 06:01:36', '2019-05-12 08:38:25');

-- --------------------------------------------------------

--
-- Table structure for table `tblposts`
--

CREATE TABLE `tblposts` (
  `id` int(11) NOT NULL,
  `PostTitle` longtext,
  `CategoryId` int(11) DEFAULT NULL,
  `menu` int(11) DEFAULT NULL,
  `PostDetails` longtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `Is_Active` int(1) DEFAULT NULL,
  `On_Slider` int(1) DEFAULT NULL,
  `PostUrl` mediumtext,
  `PostImage` varchar(255) DEFAULT NULL,
  `views` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblposts`
--

INSERT INTO `tblposts` (`id`, `PostTitle`, `CategoryId`, `menu`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `On_Slider`, `PostUrl`, `PostImage`, `views`) VALUES
(1, ' রাজশাহী শিক্ষা বোর্ডের কর্মপরিধির অন্তর্ভূক্ত ছিল। কিন্তু ১৯৬৩ সালে যশোর শিক্ষা বোর্ড প্রতিষ্ঠিত হওয়ার পর এর আয়তন কিছুটা কমে যায়।', 2, 1, '/', '2019-09-11 15:36:01', '2019-09-19 05:30:38', 1, 0, '-রাজশাহী-শিক্ষা-বোর্ডের-কর্মপরিধির-অন্তর্ভূক্ত-ছিল।-কিন্তু-১৯৬৩-সালে-যশোর-শিক্ষা-বোর্ড-প্রতিষ্ঠিত-হওয়ার-পর-এর-আয়তন-কিছুটা-কমে-যায়।', '2b49d84bc655036abb8d3e1e34ce8c88.jpg', 0),
(2, 'কর্মপরিধির অন্তর্ভূক্ত ছিল। কিন্তু ১৯৬৩ সালে যশোর শিক্ষা বোর্ড প্রতিষ্ঠিত হওয়ার পর এর আয়তন কিছুটা কমে যায়।', 2, 2, '/', '2019-09-11 15:36:23', '2019-09-19 05:30:43', 1, 0, 'কর্মপরিধির-অন্তর্ভূক্ত-ছিল।-কিন্তু-১৯৬৩-সালে-যশোর-শিক্ষা-বোর্ড-প্রতিষ্ঠিত-হওয়ার-পর-এর-আয়তন-কিছুটা-কমে-যায়।', '2b49d84bc655036abb8d3e1e34ce8c88.jpg', 0),
(3, 'শিক্ষা বোর্ডের কর্মপরিধির অন্তর্ভূক্ত ছিল। কিন্তু ১৯৬৩ সালে যশোর শিক্ষা বোর্ড প্রতিষ্ঠিত হওয়ার পর এর আয়তন কিছুটা কমে যায়।', 2, NULL, '/', '2019-09-11 15:38:12', NULL, 1, 0, 'শিক্ষা-বোর্ডের-কর্মপরিধির-অন্তর্ভূক্ত-ছিল।-কিন্তু-১৯৬৩-সালে-যশোর-শিক্ষা-বোর্ড-প্রতিষ্ঠিত-হওয়ার-পর-এর-আয়তন-কিছুটা-কমে-যায়।', '2b49d84bc655036abb8d3e1e34ce8c88.jpg', 0),
(4, 'মাধ্যমিক ও উচ্চ মাধ্যমিক শিক্ষা বোর্ড রাজশাহী’’ ১৯৬১ সালে তৎকালীন পূর্ব পাকিস্থানের রাজশাহী জেলায় প্রতিষ্ঠত হয়। রাজশাহী মহানগরের লক্ষীপুর এলাকায় এর বর্তমান দাপ্তরিক ভবন অবস্থিত।', 3, NULL, '/', '2019-09-11 15:38:55', NULL, 1, 0, 'মাধ্যমিক-ও-উচ্চ-মাধ্যমিক-শিক্ষা-বোর্ড-রাজশাহী’’-১৯৬১-সালে-তৎকালীন-পূর্ব-পাকিস্থানের-রাজশাহী-জেলায়-প্রতিষ্ঠত-হয়।-রাজশাহী-মহানগরের-লক্ষীপুর-এলাকায়-এর-বর্তমান-দাপ্তরিক-ভবন-অবস্থিত।', '2b49d84bc655036abb8d3e1e34ce8c88.jpg', 0),
(6, ' উচ্চ মাধ্যমিক শিক্ষা বোর্ড রাজশাহী’’ ১৯৬১ সালে তৎকালীন পূর্ব পাকিস্থানের রাজশাহী জেলায় প্রতিষ্ঠত হয়। রাজশাহী মহানগরের লক্ষীপুর এলাকায় এর বর্তমান দাপ্তরিক ভবন অবস্থিত।', 3, NULL, 'https://www.facebook.com', '2019-09-11 15:40:34', '2019-09-11 18:56:10', 1, 0, '-উচ্চ-মাধ্যমিক-শিক্ষা-বোর্ড-রাজশাহী’’-১৯৬১-সালে-তৎকালীন-পূর্ব-পাকিস্থানের-রাজশাহী-জেলায়-প্রতিষ্ঠত-হয়।-রাজশাহী-মহানগরের-লক্ষীপুর-এলাকায়-এর-বর্তমান-দাপ্তরিক-ভবন-অবস্থিত।', '2b49d84bc655036abb8d3e1e34ce8c88.jpg', 0),
(7, 'চেয়ারম্যান', 4, NULL, 'ঢাকা শিক্ষা বোর্ডের অধীনে পরিচালিত হতো। প্রতিষ্ঠালগ্নে রাজশাহী শিক্ষা বোর্ডের কর্মকান্ড ছিল ব্যাপক, সমগ্র উত্তর ও দক্ষিণবঙ্গ রাজশাহী শিক্ষা বোর্ডের কর্মপরিধির অন্তর্ভূক্ত ছিল। কিন্তু ১৯৬৩ সালে যশোর শিক্ষা বোর্ড প্রতিষ্ঠিত হওয়ার পর এর আয়তন কিছুটা কমে যায়। তথাপি বৃহত্তর রাজশাহী, পাবনা, বগুড়া, রংপুর ও দিনাজপুর', '2019-09-11 15:43:08', '2020-03-26 20:49:45', 1, 0, 'চেয়ারম্যান', '495fcb56bf44570897ce3ec3f0f9630a.jpg', 0),
(8, '  চেয়ারম্যান', 4, NULL, 'ফলাফল প্রকাশ সংক্রান্ত যাবতীয় কার্যাদি অন-লাইন পদ্ধতিতে রাজশাহী শিক্ষা বোর্ড থেকে সম্পন্ন করা হয়। বর্তমানে এই বোর্ড রাজশাহী বিভাগের রাজশাহী, পাবনা, সিরাজগঞ্জ, বগুড়া, জয়পুরহাট, নওগাঁ, নাটোর ও চাঁপাইনবাবগঞ্জ জেলার নিম্ন মাধ্যমিক, মাধ্যমিক ও উচ্চ মাধ্যমিক পর্যায়ের শিক্ষা সম্প্রসারণ, শিক্ষার মান উন্নয়ন ', '2019-09-11 15:46:17', '2020-05-01 04:30:10', 1, 0, '--চেয়ারম্যান', '495fcb56bf44570897ce3ec3f0f9630a.jpg', 0),
(9, 'slider 1', 1, NULL, '/', '2019-09-11 16:02:17', NULL, 1, 1, 'slider-1', '31a7ce31d9bd917588774aeebe8f2c4c.jpg', 0),
(11, 'ফলাফল', 5, NULL, 'ফলাফল প্রকাশ সংক্রান্ত যাবতীয় কার্যাদি অন-লাইন পদ্ধতিতে রাজশাহী শিক্ষা বোর্ড থেকে সম্পন্ন করা হয়। বর্তমানে এই বোর্ড রাজশাহী বিভাগের রাজশাহী, পাবনা, সিরাজগঞ্জ, বগুড়া, জয়পুরহাট, নওগাঁ, নাটোর ও চাঁপাইনবাবগঞ্জ জেলার নিম্ন মাধ্যমিক, মাধ্যমিক ও উচ্চ মাধ্যমিক পর্যায়ের শিক্ষা সম্প্রসারণ, শিক্ষার মান উন্নয়ন ', '2019-09-11 16:10:03', NULL, 1, 0, 'ফলাফল', '2b49d84bc655036abb8d3e1e34ce8c88.jpg', 0),
(12, 'The Board of Intermediate', 6, NULL, 'The Board of Intermediate and Secondary Education, Rajshahi was founded in the year 1961, which led to creation of a separate education zone in the northern Bangladesh (erstwhile East Pakistan) from administrative and educational control of the Dhaka Education Board at the Secondary and Intermediate level of education. In pursuance with the Presidential proclamation of the 7th October, 1958 the Governor (of the so called East Pakistan) was pleased to make and promulgate the ordinance of 1961 vide no. XXXIII-1961. This ordinance is called the Intermediate and Secondary Education Ordinance 1961', '2019-09-11 18:15:45', '2019-09-11 18:24:32', 1, 0, 'The-Board-of-Intermediate', '2b49d84bc655036abb8d3e1e34ce8c88.jpg', 0),
(22, 'কার্যাদি অন-লাইন পদ্ধতিতে রাজশাহী শিক্ষা বোর্ড থেকে সম্পন্ন করা হয়। বর্তমানে এই বোর্ড রাজশাহী বিভাগের রাজশাহী, পাবনা, সিরা', 3, NULL, '//', '2020-03-28 02:45:44', NULL, 1, 0, 'কার্যাদি-অন-লাইন-পদ্ধতিতে-রাজশাহী-শিক্ষা-বোর্ড-থেকে-সম্পন্ন-করা-হয়।-বর্তমানে-এই-বোর্ড-রাজশাহী-বিভাগের-রাজশাহী,-পাবনা,-সিরা', 'a44854f3060efab00b43534a1cc99002.png', 0),
(27, 'মোস্তাফিজার রহমান মেমোরিয়াল উচ্চ বিদ্যালয়', 0, NULL, '', '2020-04-24 19:02:10', NULL, NULL, 0, '', '', 0),
(28, 'মোস্তাফিজার রহমান মেমোরিয়াল উচ্চ বিদ্যালয়', 0, NULL, '', '2020-04-24 19:05:22', NULL, NULL, 0, '', '', 0),
(29, 'মোস্তাফিজার রহমান মেমোরিয়াল উচ্চ বিদ্যালয়', 0, NULL, '', '2020-04-24 19:06:12', NULL, NULL, 0, '', '', 0),
(30, 'মোস্তাফিজার রহমান মেমোরিয়াল উচ্চ বিদ্যালয়', 0, NULL, '', '2020-04-24 19:10:01', NULL, NULL, 0, '', '', 0),
(32, 'ভিডিও', 7, NULL, 'bxWRglJFQNc', '2020-04-29 05:35:28', NULL, 1, 0, 'ভিডিও', 'f82762f2455a99b17c804de6e3fbc9f4.jpg', 0),
(33, 'Mehedi Hasan', 1, NULL, '//', '2020-05-02 22:47:28', '2020-05-03 00:12:13', 1, 0, 'Mehedi-Hasan', '54d90587d8c6ff6f2bc28156f4bf75d2.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblseo`
--

CREATE TABLE `tblseo` (
  `id` int(11) NOT NULL,
  `data` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblseo`
--

INSERT INTO `tblseo` (`id`, `data`) VALUES
(1, ' '),
(2, '\r\n       '),
(3, 'erwtw');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubcategory`
--

CREATE TABLE `tblsubcategory` (
  `SubCategoryId` int(11) NOT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `Subcategory` varchar(255) DEFAULT NULL,
  `SubCatDescription` mediumtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblsubcategory`
--

INSERT INTO `tblsubcategory` (`SubCategoryId`, `CategoryId`, `Subcategory`, `SubCatDescription`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(3, 5, 'Bollywood ', 'Bollywood masala', '2018-06-22 03:45:38', '0000-00-00 00:00:00', 1),
(4, 3, 'Cricket', 'Cricket\r\n\r\n', '2018-06-29 21:00:43', '0000-00-00 00:00:00', 1),
(5, 3, 'Football', 'Football', '2018-06-29 21:00:58', '0000-00-00 00:00:00', 1),
(6, 5, 'Television', 'TeleVision', '2018-06-30 06:59:22', '0000-00-00 00:00:00', 1),
(7, 6, 'National', 'National', '2018-06-30 07:04:29', '0000-00-00 00:00:00', 1),
(8, 6, 'International', 'International', '2018-06-30 07:04:43', '0000-00-00 00:00:00', 1),
(9, 7, 'India', 'India', '2018-06-30 07:08:42', '0000-00-00 00:00:00', 1),
(13, 11, 'à¦œà¦¾à¦¤à§€à§Ÿ', 'ewgwer', '2019-04-29 19:31:50', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblteacher_info`
--

CREATE TABLE `tblteacher_info` (
  `id` int(11) NOT NULL,
  `PostTitle` varchar(200) NOT NULL,
  `PostDetails` varchar(200) NOT NULL,
  `email_add` varchar(200) NOT NULL,
  `mobile_number` varchar(200) NOT NULL,
  `PostImage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblteacher_info`
--

INSERT INTO `tblteacher_info` (`id`, `PostTitle`, `PostDetails`, `email_add`, `mobile_number`, `PostImage`) VALUES
(7, 'Mehedi Hasan', 'Princepal', 'mehedihasan174629@gmail.com', '01758278604', '7625e4d922e686a27a0c8c5006147d48.jpg'),
(8, 'Neyamul Hasan', 'Assistant Teacher', 'neyamulhasan@gmail.com', '01768597562', '5a47bf389b4941c193c97c2b408d0935.jpg'),
(9, 'Neyamul Hasan (Nayem)', 'Head Teacher', 'neyamulhasan@gmail.com', '01668597562', 'f15d9b16f7237dbb34ad509e242fdb58.jpg'),
(10, 'Neyamul Hasan(Nayem)', 'Head  Teacher', 'neyamulhasan@yahoo.com', '01668597562', 'f15d9b16f7237dbb34ad509e242fdb58.jpg'),
(11, 'Neyamul Hasan', 'Assistant Teacher', 'neyamulhasan@gmail.com', '01768597562', 'f660b8ab08d8497912f53a7a03f8f62c.png'),
(12, 'Neyamul Hasan11', 'Assistant Teacher', 'neyamulhasan@gmail.com', '01768597562', 'test working'),
(13, 'Rofiqul Islam9(Rofiq) 54645', ' Teacher', 'neyamulhasan@Yahoo.com', '01768597562', 'a6639d406d84c5f0107019f667093641.png');

-- --------------------------------------------------------

--
-- Table structure for table `tblwetget`
--

CREATE TABLE `tblwetget` (
  `id` int(11) NOT NULL,
  `WetGet` varchar(2000) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblwetget`
--

INSERT INTO `tblwetget` (`id`, `WetGet`) VALUES
(1, '\r\nhsdrghrtjh\r\n\r\n<iframe src=\"https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Ffacebook&tabs=timeline&width=340&height=500&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId\" width=\"100%\" height=\"500\" style=\"border:none;overflow:hidden\" scrolling=\"no\" frameborder=\"0\" allowTransparency=\"true\" allow=\"encrypted-media\"></iframe>'),
(2, '<div class=\"container\">   \r\n          		<p class=\"m-0 text-center text-white\"> Copyright  &copy; 2020 - www.w3insider.org. All rights reserved.</p>\r\n          		<p class=\"m-0 text-center text-white\">Developed by MH.Ovi</p>   \r\n          		<p class=\"m-0 text-center text-white\">Help and support by Mirash Rahman</p>\r\n          		<p class=\"m-0 text-center text-white\">Contuct us 01758278604</p>  \r\n        </div>   			'),
(3, '111992');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student_info`
--

CREATE TABLE `tbl_student_info` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `roll` varchar(200) NOT NULL,
  `reg` varchar(200) NOT NULL,
  `session` varchar(200) NOT NULL,
  `class1` varchar(200) NOT NULL,
  `group1` varchar(200) NOT NULL,
  `father_name` varchar(200) NOT NULL,
  `mother_name` varchar(200) NOT NULL,
  `personal_number` varchar(200) NOT NULL,
  `guardian_number` varchar(200) NOT NULL,
  `PostImage` varchar(255) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `district` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_student_info`
--

INSERT INTO `tbl_student_info` (`id`, `first_name`, `roll`, `reg`, `session`, `class1`, `group1`, `father_name`, `mother_name`, `personal_number`, `guardian_number`, `PostImage`, `last_name`, `district`) VALUES
(14, 'Mehedi', '111992', '1512818229', '2018-19', 'Class 10', 'science', 'Rofiqul Islam', 'Arefa Begum', '01758278604', '01718105355', '7625e4d922e686a27a0c8c5006147d48.jpg', 'Hasan', 'Bogura');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social`
--
ALTER TABLE `social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblads`
--
ALTER TABLE `tblads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblgallery`
--
ALTER TABLE `tblgallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblhomeslider`
--
ALTER TABLE `tblhomeslider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblseo`
--
ALTER TABLE `tblseo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD PRIMARY KEY (`SubCategoryId`);

--
-- Indexes for table `tblteacher_info`
--
ALTER TABLE `tblteacher_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblwetget`
--
ALTER TABLE `tblwetget`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_student_info`
--
ALTER TABLE `tbl_student_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social`
--
ALTER TABLE `social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblads`
--
ALTER TABLE `tblads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblcomments`
--
ALTER TABLE `tblcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tblgallery`
--
ALTER TABLE `tblgallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblhomeslider`
--
ALTER TABLE `tblhomeslider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblposts`
--
ALTER TABLE `tblposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tblseo`
--
ALTER TABLE `tblseo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  MODIFY `SubCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblteacher_info`
--
ALTER TABLE `tblteacher_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblwetget`
--
ALTER TABLE `tblwetget`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_student_info`
--
ALTER TABLE `tbl_student_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
