-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql213.byetcluster.com
-- Generation Time: Mar 13, 2025 at 08:57 AM
-- Server version: 10.6.19-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `if0_37424683_developer_needs`
--

-- --------------------------------------------------------

--
-- Table structure for table `extension`
--

CREATE TABLE `extension` (
  `extension_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `logo` varchar(50) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `description` varchar(200) NOT NULL,
  `category` varchar(100) NOT NULL,
  `users_count` int(50) DEFAULT NULL,
  `rating` decimal(20,0) DEFAULT NULL,
  `ratings_count` int(50) DEFAULT NULL,
  `url` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `extension`
--

INSERT INTO `extension` (`extension_id`, `name`, `logo`, `image`, `description`, `category`, `users_count`, `rating`, `ratings_count`, `url`) VALUES
(1, 'JSON Viewer', 'json_viewer.png', 'json_viewer.png', 'The most beautiful and customizable JSON/JSONP highlighter that your eyes have ever seen. Open source at https://goo.gl/fmphc7 It is a Chrome extension for printing JSON and JSONP.', 'Developer Tools', 1000000, '5', 1100, 'https://chromewebstore.google.com/detail/json-viewer/gbmdgpbipfallnflgajpaliibnhdgobh'),
(2, 'Color Zilla', 'color_zilla.png', 'color_zilla.png', 'Advanced Eyedropper, Color Picker, Gradient Generator and other colorful goodies. ColorZilla is the most user friendly, full-featured, secure and reliable color picker and color related suite of tools', 'Developer Tools', 4000000, '5', 3900, 'https://chromewebstore.google.com/detail/colorzilla/bhlhnicpbhignbdhedgjhgdocnmhomnp'),
(3, 'React Developer Tools', 'react_developer_tools.png', 'react_developer_tools.png', 'React Developer Tools is a Chrome DevTools extension for the open-source React JavaScript library. It allows you to inspect the React component hierarchies in the Chrome Developer Tools.', 'Developer Tools', 4000000, '4', 1600, 'https://chromewebstore.google.com/detail/react-developer-tools/fmkadmapgofadopljbjfkapdkoienihi'),
(4, 'whatFont', 'what_font.png', 'what_font.png', 'The easiest way to identify fonts on web pages.Say goodbye to the complexity of developer tools for identifying fonts. W+D7ith WhatFont, discovering the fonts used on websites becomes as effortless as', 'Developer Tools', 2000000, '4', 2000, 'https://chromewebstore.google.com/detail/whatfont/jabopobgcpjmedljpbcaablpmlmfcogm');

-- --------------------------------------------------------

--
-- Table structure for table `websites`
--

CREATE TABLE `websites` (
  `website_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `website` varchar(200) DEFAULT NULL,
  `description` text NOT NULL,
  `image` varchar(50) DEFAULT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `websites`
--

INSERT INTO `websites` (`website_id`, `title`, `website`, `description`, `image`, `url`) VALUES
(1, 'What is version control?', 'Atlassian', 'This website is highly useful for developers to learn about the git and github. It contains complete guidance for the topic.\r\n', 'github.png', 'https://www.atlassian.com/git/tutorials/what-is-version-control\r\n'),
(2, 'Markdown Guide', NULL, 'This is the guide for Markdown which is frequently used in README files.\r\n', 'markdown.png', 'https://markdownguide.org\r\n'),
(3, 'Making accessible media', 'Humber Polytechnic', 'A complete course to learn about accessibility. It covers various aspects of accessibility and why it is crucial part of modern Web Development.\r\n', 'accessibility.jpeg', 'https://humber.ca/makingaccessiblemedia/index.php\r\n'),
(4, 'Carbon', 'Carbon App', 'Carbon is a useful website if you want to post a block of code on social media. ', 'carbon.png', 'https://carbon.now.sh/'),
(5, 'React Icons', 'React Icons', 'If you are working on a React project. This website is highly useful for you as it contains all the icons that you will probably need.', 'react_icons.png', 'https://react-icons.github.io/react-icons/'),
(6, 'The JavaScript DOM Manipulation Handbook', 'Free Code Camp', 'Another great work of FreeCodeCamp. It contains everything that you need to know about JavaScript DOM.', 'javascript_dom.png', 'https://www.freecodecamp.org/news/the-javascript-dom-manipulation-handbook/#what-is-the-dom'),
(7, 'CSS Battle', 'CSS Battle', 'A highly interactive and interesting website to learn CSS.', 'css_battle.png', 'https://cssbattle.dev'),
(8, 'Beautiful Portfolio Websites', 'Minimal Gallery', 'This website showcases hundreds of great portfolios that will amaze you.', 'portfolio.png', 'https://minimal.gallery/tag/portfolio/\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `extension`
--
ALTER TABLE `extension`
  ADD PRIMARY KEY (`extension_id`);

--
-- Indexes for table `websites`
--
ALTER TABLE `websites`
  ADD PRIMARY KEY (`website_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `extension`
--
ALTER TABLE `extension`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `websites`
--
ALTER TABLE `websites`
  MODIFY `website_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
