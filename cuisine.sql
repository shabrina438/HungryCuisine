-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql304.byetcluster.com
-- Generation Time: Sep 30, 2020 at 07:57 AM
-- Server version: 5.6.48-88.0
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
-- Database: `epiz_26824960_cuisine`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`) VALUES
(1, 'Admin', 'admin@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `short_desc` varchar(250) NOT NULL,
  `long_desc` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `short_desc`, `long_desc`) VALUES
(1, 'Deshi Foods', 'Popular Bangladeshi Foods are available here.', 'HungryCuisine encompasses a wide variety of regional cuisine native to Bangladesh. Given the range of diversity in soil type, climate and occupations, these cuisines vary significantly from each other and use locally available chocolates, herbs, vegetables and fruits. The dishes are then served according to taste in either mild, medium or hot. Bangladeshi foods are also heavily influenced by religious and cultural choices.'),
(2, 'Chinese Foods', 'Popular Chinese Foods are available here.', 'Chinese cuisine is an important part of Chinese culture, which includes cuisine originating from the diverse regions of China.'),
(3, 'Thai Foods', 'Popular Thai Foods are available here.', 'Thai cuisine contains a spectrum of flavors and textures so vast that no two dishes are ever the same. Even tried-and-true dishes — like everyone’s favorite, pad thai — is open to interpretation and varies in preparation across the different provinces in Thailand.'),
(4, 'Italian Foods', 'Popular Italian Foods are available here.', 'Italian cuisine (as it is cooked in Italy) combines the health benefits of the Mediterranean diet (see further) with a wide choice of seasonal ingredients and regional flavors. It relies on fresh ingredients cooked on the spot and a combination of vegetables, grains, fruits, and tasty seafood, fish, meat and olive oil.'),
(5, 'Mexican Foods', 'Popular Mexican Foods are available here.', 'One of the world’s great cuisines, Mexican food is diverse, delicious, and profoundly omnivorous, both simple and sophisticated. Mexican dishes are as basic as the ubiquitous quesadilla (a warm tortilla filled with melted cheese) or as elaborate as chicken served in mole negro (a Oaxacan sauce prepared with dozens of hand-ground ingredients).'),
(6, 'French Foods', 'Popular French Foods are available here.', 'Perhaps one of the most famous, and celebrated styles of cooking, in the world is the French. Also known as “French Cuisine”, it has evolved over century of century of political and social change – and while of course the dishes, ingredients and flavors vary by region there are many significant similarities too');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `id` int(11) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`id`, `cat_id`, `fname`, `price`, `description`) VALUES
(1, 1, 'Khichuri', 180, 'This is a popular Deshi Food. People from Bangladesh enjoys it a lot.'),
(2, 1, 'Biriyani', 250, 'This is a popular Deshi Food. People from Bangladesh enjoys it a lot.'),
(3, 1, 'Kacchi', 300, 'This is a popular Deshi Food. People from Bangladesh enjoys it a lot.'),
(4, 2, 'Chowmein', 200, 'This is a popular Chinese Food. People from every country enjoys it a lot.'),
(5, 2, 'Momos', 200, 'This is a popular Chinese Food. People from every country enjoys it a lot.'),
(6, 2, 'Ramen', 250, 'This is a popular Chinese Food. People from every country enjoys it a lot.'),
(7, 3, 'Thai Soup', 200, 'This is a popular Thai Food. People from every country enjoys it a lot.'),
(8, 3, 'Shrimp Noodles', 250, 'This is a popular Thai Food. People from every country enjoys it a lot.'),
(9, 3, 'Thai Fried Chickens (4pc)', 300, 'This is a popular Thai Food. People from every country enjoys it a lot.'),
(10, 4, 'Italian Pizza 12\"', 950, 'This is a popular Italian Food. People from every country enjoys it a lot.'),
(11, 4, 'Italian Pasta', 400, 'This is a popular Italian Food. People from every country enjoys it a lot.'),
(12, 4, 'T-Bone Steak', 450, 'This is a popular Italian Food. People from every country enjoys it a lot.'),
(13, 5, 'Mexican Pizza (12\")', 1150, 'This is a popular Mexican Food. People from every country enjoys it a lot.'),
(14, 5, 'Mexican B-B-Q Pasta', 400, 'This is a popular Mexican Food. People from every country enjoys it a lot.'),
(15, 5, 'Mexican Tacos', 200, 'This is a popular Mexican Food. People from every country enjoys it a lot.'),
(16, 6, 'French Potato Fries', 250, 'This is a popular French Food. People from every country enjoys it a lot.'),
(17, 6, 'French Fried Chickens (4pc)', 400, 'This is a popular French Food. People from every country enjoys it a lot.');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_id` varchar(20) NOT NULL,
  `user_id` varchar(10) NOT NULL,
  `food_id` varchar(10) NOT NULL,
  `food_name` text NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `timestamp` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `user_id`, `food_id`, `food_name`, `user_name`, `price`, `timestamp`) VALUES
(9, 'RSTGF955410', '10', '4', '', 'Tanbin', 0, '27:09:2020 12:35:58am'),
(6, 'RSTGF647463', '6', '15', '', 'Alamin', 0, '25:09:2020 04:34:11pm'),
(7, 'RSTGF155450', '8', '1', '', 'Hasan', 0, '26:09:2020 02:53:41pm'),
(8, 'RSTGF676338', '8', '3', '', 'Hasan', 0, '26:09:2020 03:00:55pm'),
(10, 'RSTGF807754', '10', '1', '', 'Tanbin', 0, '27:09:2020 12:36:01am'),
(11, 'RSTGF234067', '10', '1', '', 'Tanbin', 0, '27:09:2020 12:36:10am'),
(12, 'RSTGF664510', '10', '2', '', 'Tanbin', 0, '27:09:2020 12:36:15am'),
(13, 'RSTGF169586', '10', '1', '', 'Tanbin', 0, '27:09:2020 12:36:30am'),
(14, 'RSTGF550032', '11', '3', '', 'shabrina', 0, '27:09:2020 06:44:05pm'),
(18, 'RSTGF674392', '12', '1', '', 'Riskfjskkfkdknedk', 0, '30:09:2020 04:16:08pm'),
(19, 'RSTGF818183', '12', '3', '', 'Riskfjskkfkdknedk', 0, '30:09:2020 04:21:44pm'),
(20, 'RSTGF686824', '4', '1', '', 'a', 0, '30:09:2020 04:46:52pm'),
(21, 'RSTGF397685', '4', '2', '', 'a', 0, '30:09:2020 04:46:56pm'),
(22, 'RSTGF412297', '4', '5', '', 'a', 0, '30:09:2020 04:46:59pm'),
(23, 'RSTGF471545', '4', '14', '', 'a', 0, '30:09:2020 04:47:03pm');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `timestamp` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `timestamp`) VALUES
(3, 'Saikat', 'saikat@gmail.com', '12345', '06:08:2019 01:40:08am'),
(4, 'a', 'ab@cd.de', 'abcde', '25:09:2020 12:48:01am'),
(5, 'Md Tuhin', 'nkhansakib@gmail.com', 'samsung', '25:09:2020 02:15:43pm'),
(6, 'Alamin Islam Hridoy', 'hridoy@buzz.com', 'hridoy', '25:09:2020 04:33:26pm'),
(7, 'SA', 'sa@sa.sa', 'sasasa', '26:09:2020 02:51:04pm'),
(8, 'Hasan Mahmud Saikat', 'saikatfriidicewu@gmail.com', 'admin123', '26:09:2020 02:52:58pm'),
(9, 'Shah Rukh Khan', 'srk@gmail.com', 'admin1', '26:09:2020 02:58:28pm'),
(10, 'Tanbin Siddique', 'tanbinsiddiqui11@gmail.com', 'password00', '27:09:2020 12:34:27am'),
(11, 'shabrina', 'shabrinashara98@gmail.com', '12345', '27:09:2020 06:43:22pm'),
(12, 'Riskfjskkfkdknedk', 'saikatdic.hhhc@gmail.com', '654321', '30:09:2020 04:15:37pm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
