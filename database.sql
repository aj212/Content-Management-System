-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2020 at 09:26 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(48, 'PHP'),
(52, 'Javascript'),
(53, 'HTML'),
(54, 'CSS'),
(55, 'BOOTSTRAP'),
(56, 'ANGULAR'),
(57, 'PYTHON');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(3) NOT NULL,
  `comment_post_id` int(3) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(255) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `comment_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
(3, 160, 'Anmol Joshi', 'abab@gmail.com', 'hiii', 'approved', '2020-08-20');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_user` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` varchar(255) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'draft',
  `post_views_count` int(11) NOT NULL,
  `likes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_user`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`, `post_views_count`, `likes`) VALUES
(157, 48, 'My perfect Cup', '', 'aj212', '2020-08-20', 'img5.jpg', '<p>hellooowww</p>', 'js,AI', '', 'published', 30, 0),
(158, 56, 'Augmented Reality', '', 'anmol', '2020-08-20', 'img1.jpg', '<p>gr8</p>', 'ar', '', 'published', 32, 0),
(159, 56, 'Augmented Reality', '', 'anmol', '2020-08-20', 'img1.jpg', '<p>gr8</p>', 'ar', '', 'published', 0, 0),
(160, 48, 'My perfect Cup', '', 'aj212', '2020-08-20', 'img5.jpg', '<p>hellooowww</p>', 'js,AI', '', 'published', 2, 0),
(161, 48, 'basic java ', '', 'aj212', '2020-08-22', 'img7.jpg', '<p>heyyyyy</p>', 'java,servelets', '', 'published', 0, 0),
(162, 57, 'Data structures', '', 'aj212', '2020-08-23', '1467776.jpg', '<p>helllooo</p>', 'ds,algo', '', 'published', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(3) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_firstname` varchar(255) NOT NULL,
  `user_lastname` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_image` text NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `randSalt` varchar(255) NOT NULL DEFAULT '$2y$10$iusesomecrazystrings22',
  `token` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`, `randSalt`, `token`) VALUES
(11, 'aj212', '$2y$12$SN7sjMqlA1dyYoMqHi2nxuZQyyuHDl6Ta9dXg0Zenh5mQJXkc6Myq', 'Anmol', 'Joshi', 'anmolj415@gmail.com', '', 'admin', '$2y$10$iusesomecrazystrings22', ''),
(13, 'shivam', '$2y$12$jGlSfwY2yKgtjUXeKafHbeOznC24NCnqXROUxPLsPmhZNW5uFJP6e', '', '', 'ak@gmail.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22', '5d1e578b9ad3c5c19c644588b65bd2aeaf556562434a6c71786998a8c61ddeeda0f874e15987c985a9dadef8300eb163e0ad');

-- --------------------------------------------------------

--
-- Table structure for table `users_online`
--

CREATE TABLE `users_online` (
  `id` int(11) NOT NULL,
  `session` varchar(255) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_online`
--

INSERT INTO `users_online` (`id`, `session`, `time`) VALUES
(44, '', 1447434996),
(45, 's47g806mg6788i92u5ogm6kqi4', 1447441570),
(46, '72clfovqk7vo2p8fiii26tkmr4', 1447461586),
(47, '3gs3q67k5ntpma8tbp2kuvof23', 1447691896),
(48, 'bouqd4fslhn2b1nv20k559col1', 1447796024),
(49, 'tign71tbpar4di74k13f8nr022', 1447867949),
(50, 'ju0s1j019d1qlc1q4tb703rgm3', 1447880891),
(51, 'tp6khbvgo4hdlfueekpmaefcu0', 1447952096),
(52, 'kv0klvlajm8j50d3uqt6go4bm6', 1448174347),
(53, 'qsdv073j4c3lqd6m0rtdpg3615', 1448296313),
(54, 'tmliedhtcgvi8r96l6qplehos4', 1448292854),
(55, 'vrumjbdrjrauucdhg6cta8hhn6', 1448800892),
(56, 'eb1ae8996caf679d187c1037ec9620b1', 1478098539),
(57, '40780dfe8631b764c435168775d44432', 1479443689),
(58, '6d9081fbf0106e9bfef3e77f6fa68f8a', 1481004509),
(59, 'b57212ad3e92b65c05d8ddcd1805a370', 1481382178),
(60, '3cf8d2b7eb470cb635a6102868ae9bd6', 1481397855),
(61, 'c7e0ac8eeeaaf5d3ac4329af9bf4b777', 1481685807),
(62, 'b50a5d9ab4b00848c009d472c63ae2cd', 1485830805),
(63, '3ef98f25d1b1762dd799f33b1a2b2657', 1499988384),
(64, '229f256600c1d05e81bd5036d941069a', 1499993069),
(65, '34aea21ebd8d1ae1b572236a4783cbad', 1500065466),
(66, 'kk06cimj6j3n1dvi2brtko2be3', 1597220369),
(67, 'ib3jm6ts4epl2hbs7toahd4pgv', 1597394055),
(68, 'jqh387qn7c70ps2tmljeoesift', 1597394530),
(69, '5ugqi53rldlm8v47fov7imh83u', 1597474845),
(70, 't4mffphp9mgrs92j9co06jtvhn', 1597479400),
(71, 'fkcr43o4a071fms2g8epn4j0ka', 1597479945),
(72, 'nbos9hb4dlau85798dgmonaic7', 1597566187),
(73, '2q7pm21q1jdh2i1f366ak7ul78', 1597589127),
(74, 'vg97afh3ult12c6e8n9epd3400', 1597654981),
(75, '7fudnnl66fnn4e5v1r5ps7eiev', 1597677543),
(76, 'dfotned2s4ja2a22e994mvh4vn', 1597685764),
(77, '18ha5hasdn3kf2ohtp758orvkf', 1597736072),
(78, '0o5fbsk64h6q21330g0sk6akd3', 1597744010),
(79, 'fiv26psp8fn2rcgj30eps4lcd4', 1597764592),
(80, 'oecql78o67oehqtbca4fr50cfd', 1597820782),
(81, 'sr7g47fctb4482im8thr6n2nnv', 1597824011),
(82, '9d1tn6c6jpm3hu2lm3707kpe4d', 1597856545),
(83, '63h1k991r8li5esqoi5h7j3950', 1597911887),
(84, 'f89r7i2ll8h3j1b1piu8tsga3l', 1597936882),
(85, '1ki1vqcov7jvmruvak99ms4uqi', 1598037281),
(86, 'ovcgfqk5g64ccjj6noov8ggrq2', 1598108120),
(87, '0fismognrtg21gecv3jj9ni4fh', 1598167136),
(88, 'rito25ulfc8ibb7uag5usjn88j', 1598281411);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `users_online`
--
ALTER TABLE `users_online`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users_online`
--
ALTER TABLE `users_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
