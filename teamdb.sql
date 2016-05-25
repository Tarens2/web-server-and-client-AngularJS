-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 21 2016 г., 00:28
-- Версия сервера: 5.5.48
-- Версия PHP: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `teamdb`
--

-- --------------------------------------------------------

--
-- Структура таблицы `content`
--

CREATE TABLE IF NOT EXISTS `content` (
  `id` int(11) NOT NULL,
  `headline` varchar(100) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `content`
--

INSERT INTO `content` (`id`, `headline`, `text`) VALUES
(1, 'our services', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean tincidunt sit amet erat malesuada interdum. Aenean sodales dui quis leo fermentum scelerisque. Fusce condimentum dolor justo, ac tristique diam iaculis at.'),
(2, 'our works', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean tincidunt sit amet erat malesuada interdum.'),
(3, 'Project Title Here', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean tincidunt sit amet erat malesuada interdum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean tincidunt sit amet erat malesuada interdum.\r\n	'),
(4, 'READ OUR MINDS', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean tincidunt sit amet erat males\r\n	\r\n	'),
(5, 'WHO ARE WE?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean tincidunt sit amet erat malesuada interdum. Lorem ipsum dolor sit amet, consectetur adipiscing elit.');

-- --------------------------------------------------------

--
-- Структура таблицы `footer`
--

CREATE TABLE IF NOT EXISTS `footer` (
  `id` int(11) NOT NULL,
  `foot` varchar(60) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `footer`
--

INSERT INTO `footer` (`id`, `foot`) VALUES
(1, '© 2014 Ravin'),
(2, 'contact@office.com'),
(3, '+91 9000 000 000'),
(4, '3 R.R.C street, Tamilnadu, India');

-- --------------------------------------------------------

--
-- Структура таблицы `members`
--

CREATE TABLE IF NOT EXISTS `members` (
  `id` int(11) NOT NULL,
  `about` text NOT NULL,
  `name` varchar(40) NOT NULL,
  `job` varchar(80) NOT NULL,
  `photo` varchar(80) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `members`
--

INSERT INTO `members` (`id`, `about`, `name`, `job`, `photo`) VALUES
(1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean tincidunt sit amet erat malesuada interdum. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Charlie Waite', 'UI Designer', './assets/images/member-1.jpg'),
(2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean tincidunt sit amet erat malesuada interdum. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Charlie Waite', 'UI Designer', './assets/images/member-2.jpg'),
(3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean tincidunt sit amet erat malesuada interdum. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Charlie Waite', 'UI Designer', './assets/images/member-3.jpg'),
(4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean tincidunt sit amet erat malesuada interdum. Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean tincidunt sit amet erat malesuada interdum. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Charlie Waite', 'UI Designer', './assets/images/member-4.jpg'),
(5, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean tincidunt sit amet erat malesuada interdum. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Charlie Waite', 'UI Designer', './assets/images/member-5.jpg'),
(6, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean tincidunt sit amet erat malesuada interdum. Lorem ipsum 		', 'Jule Five', 'UI Designer', './assets/images/member-6.jpg'),
(7, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean tincidunt sit amet erat malesuada interdum. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n			', 'Jule Five', 'UI Designer', './assets/images/member-7.jpg'),
(8, 'lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean tincidunt sit amet 	', 'Jock Walk', 'Google translater', './assets/images/member-8.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `minds`
--

CREATE TABLE IF NOT EXISTS `minds` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `description` text NOT NULL,
  `author` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `minds`
--

INSERT INTO `minds` (`id`, `title`, `date`, `description`, `author`) VALUES
(1, 'Weekly Digital Roundup', '2016-05-04', 'Wi-Fi apple care volume reminder controls. My stations folders mac power ultimate upgrade. Shop online quicktime trackpad server aperture rumors education safari one to one.', 'Adam Campbell'),
(2, 'somthing new', '2016-05-11', 'Backlit keyboard chess phone airport extreme support iPad. Accessories magsafe terminal final cut pro. Featured TV shows downloads digital color meter.', 'Viktor Csuka'),
(3, 'things coming around', '2016-05-05', '"Wi-Fi apple care volume reminder controls. My stations folders mac power ultimate upgrade. Shop online quicktime trackpad server aperture rumors education safari one to one.', 'vivek ravin'),
(4, 'finally! we are here', '2016-05-05', 'Glossy tech specs bluetooth manuals. OpenGL products FaceTime free shipping recycling mission control applications.', 'Hikmet Arslan');

-- --------------------------------------------------------

--
-- Структура таблицы `slider`
--

CREATE TABLE IF NOT EXISTS `slider` (
  `id` int(10) NOT NULL,
  `headline` varchar(100) NOT NULL,
  `text` text NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `slider`
--

INSERT INTO `slider` (`id`, `headline`, `text`, `image`) VALUES
(1, 'Slow Life (Vimeo)', 'Donec sed odio dui. Nulla vitae elit libero, a pharetra augue. Nullam id dolor id nibh ultricies vehicula ut id elit. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Duis mollis, est non commodo luctus, nisi erat porttitor ligula eget.', './assets/images/slide-1.png'),
(2, 'Slow Life (Vimeo)', 'Donec sed odio dui. Nulla vitae elit libero, a pharetra augue. Nullam id dolor id nibh ultricies vehicula ut id elit. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Duis mollis, est non commodo luctus, nisi erat porttitor ligula eget.\r\n	', './assets/images/slide-2.jpg'),
(3, 'Slow Life (Vimeo)', 'Donec sed odio dui. Nulla vitae elit libero, a pharetra augue. Nullam id dolor id nibh ultricies vehicula ut id elit. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Duis mollis, est non commodo luctus, nisi erat porttitor ligula eget.', './assets/images/slide-3.jpg');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `headline` (`headline`),
  ADD KEY `headline_2` (`headline`);

--
-- Индексы таблицы `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `minds`
--
ALTER TABLE `minds`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `content`
--
ALTER TABLE `content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `footer`
--
ALTER TABLE `footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `minds`
--
ALTER TABLE `minds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
