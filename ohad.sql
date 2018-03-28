-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Фев 20 2017 г., 17:15
-- Версия сервера: 5.7.13-0ubuntu0.16.04.2
-- Версия PHP: 7.0.10-1+deb.sury.org~xenial+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `ohad`
--

-- --------------------------------------------------------

--
-- Структура таблицы `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `hashtags` varchar(128) NOT NULL,
  `add_date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `comment`
--

INSERT INTO `comment` (`id`, `user_id`, `to_user_id`, `image_id`, `comment`, `hashtags`, `add_date`) VALUES
(30, 3, 1, 11, 'Test #hello', ',1,', 1448804411),
(31, 3, 1, 11, 'Test #hello my #friend', ',11,2,', 1448804450),
(32, 3, 1, 11, 'Test #hello', ',1,', 1448889068),
(33, 3, 1, 11, 'Test #hello', ',1,', 1448889156),
(34, 3, 1, 11, 'Test #hello', ',1,', 1448889201),
(35, 3, 1, 11, 'Test #laviro', ',laviro,', 1449223573),
(37, 3, 1, 11, 'Test @hello  @hi', '', 1449232155),
(38, 3, 1, 11, 'Test @hello  @hi', '', 1449233725),
(39, 3, 1, 11, 'Test @hi', '', 1449233806),
(40, 3, 1, 11, 'Test #@hi', '', 1449755605),
(41, 3, 1, 51, 'Test #hi', ',5,', 1451408610),
(42, 3, 1, 51, 'Test @hi', '', 1451408637),
(43, 3, 1, 51, 'Test @hi', '', 1451408654),
(44, 3, 1, 51, 'Test @hi', '', 1451408932),
(45, 3, 1, 51, 'Test @hi', '', 1451409077),
(46, 3, 1, 51, 'Test @hi', '', 1451409121),
(47, 3, 1, 51, 'Test @hi @hi @hi', '', 1451409129),
(48, 3, 1, 51, 'Test @hi @hi @hi', '', 1451409163),
(49, 3, 1, 51, 'Test @hi @hi @hi', '', 1451409167),
(50, 3, 1, 51, 'Test @hi @hi @hi', '', 1451409179),
(51, 3, 1, 51, 'Test @hi @hi @hi', '', 1451409222),
(52, 3, 1, 51, 'Test @hi @hi @hi', '', 1451409249),
(53, 3, 1, 51, 'Test @hi @hi @hi', '', 1451409287),
(54, 3, 1, 51, 'Test @hi @hi @hi', '', 1451409811),
(55, 3, 3, 12, 'Testing', '', 1461779820),
(56, 3, 3, 12, 'Testing', '', 1461780028);

-- --------------------------------------------------------

--
-- Структура таблицы `fash_or_trash`
--

CREATE TABLE `fash_or_trash` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1 - fash; 2-trash',
  `add_date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fash_or_trash`
--

INSERT INTO `fash_or_trash` (`id`, `user_id`, `image_id`, `type`, `add_date`) VALUES
(3, 1, 11, 1, 1448900525),
(7, 3, 15, 1, 1448901151),
(8, 3, 16, 1, 1448901174),
(9, 3, 17, 1, 1448901277),
(10, 3, 18, 1, 1448901375),
(11, 3, 19, 2, 1448901391),
(12, 3, 12, 1, 1449000370);

-- --------------------------------------------------------

--
-- Структура таблицы `following`
--

CREATE TABLE `following` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `follow_to` int(11) NOT NULL,
  `add_date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `following`
--

INSERT INTO `following` (`id`, `user_id`, `follow_to`, `add_date`) VALUES
(1, 3, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `following_request`
--

CREATE TABLE `following_request` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `follow_to` int(11) NOT NULL,
  `add_date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `hashtag`
--

CREATE TABLE `hashtag` (
  `id` int(11) NOT NULL,
  `tag` varchar(128) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `hashtag`
--

INSERT INTO `hashtag` (`id`, `tag`, `count`) VALUES
(1, 'hello', 4),
(2, 'friend', 1),
(4, 'qwerty', 1),
(5, 'hi', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `body` text NOT NULL,
  `hashtags` varchar(128) NOT NULL,
  `add_date` int(11) NOT NULL,
  `fash` int(11) NOT NULL,
  `trash` int(11) NOT NULL,
  `comments` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `image`
--

INSERT INTO `image` (`id`, `user_id`, `body`, `hashtags`, `add_date`, `fash`, `trash`, `comments`) VALUES
(11, 1, '', '', 0, 1, 0, 10),
(12, 3, 'qweqweqweqwe', '', 1451411269, 1, 0, 2),
(13, 1, '', '', 0, 0, 0, 1),
(14, 1, '', '', 0, 0, 0, 1),
(15, 1, '', '', 0, 1, 0, 1),
(16, 1, '', '', 0, 1, 0, 1),
(17, 1, '', '', 0, 1, 0, 1),
(18, 1, '', '', 0, 1, 0, 1),
(19, 1, '', '', 0, 0, 1, 1),
(20, 1, '', '', 0, 1, 0, 1),
(21, 1, '', '', 0, 1, 0, 1),
(22, 1, '', '', 0, 1, 0, 1),
(23, 1, '', '', 0, 1, 0, 1),
(24, 1, '', '', 0, 1, 0, 1),
(25, 1, '', '', 0, 1, 0, 1),
(26, 1, '', '', 0, 1, 0, 1),
(27, 1, '', '', 0, 1, 0, 1),
(28, 1, '', '', 0, 1, 0, 1),
(29, 1, '', '', 0, 1, 0, 1),
(30, 1, '', '', 0, 1, 0, 1),
(31, 1, '', '', 0, 1, 0, 1),
(32, 1, '', '', 0, 1, 0, 1),
(33, 1, '', '', 0, 1, 0, 1),
(34, 1, '', '', 0, 1, 0, 1),
(35, 1, '', '', 0, 1, 0, 1),
(36, 1, '', '', 0, 1, 0, 1),
(37, 1, '', '', 0, 1, 0, 1),
(38, 1, '', '', 0, 1, 0, 1),
(39, 1, '', '', 0, 1, 0, 1),
(40, 1, '', '', 0, 1, 0, 1),
(41, 1, '', '', 0, 1, 0, 1),
(42, 1, '', '', 0, 1, 0, 1),
(43, 1, '', '', 0, 1, 0, 1),
(44, 1, '', '', 0, 1, 0, 1),
(45, 1, '', '', 0, 1, 0, 1),
(46, 1, '', '', 0, 1, 0, 1),
(47, 1, '', '', 0, 1, 0, 1),
(48, 1, '', '', 0, 1, 0, 1),
(51, 1, 'qwerty #qwerty', ',4,', 1449224779, 0, 0, 14);

-- --------------------------------------------------------

--
-- Структура таблицы `image_report`
--

CREATE TABLE `image_report` (
  `id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `image_report`
--

INSERT INTO `image_report` (`id`, `image_id`, `user_id`) VALUES
(1, 11, 3),
(3, 12, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1441105306),
('m140703_123000_user', 1441105309),
('m140703_123055_log', 1441105310),
('m140805_084812_system_event', 1441105310);

-- --------------------------------------------------------

--
-- Структура таблицы `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `from_user_id` int(11) DEFAULT NULL,
  `notification_id` int(11) NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  `comment_id` int(11) DEFAULT NULL,
  `data` text NOT NULL,
  `add_date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `notification`
--

INSERT INTO `notification` (`id`, `user_id`, `from_user_id`, `notification_id`, `image_id`, `comment_id`, `data`, `add_date`) VALUES
(1, 3, NULL, 1, NULL, NULL, '', 1446205232),
(6, NULL, NULL, 3, NULL, NULL, '', 1446206125),
(7, 1, NULL, 1, NULL, NULL, '', 1446210164),
(8, NULL, NULL, 1, NULL, NULL, '', 1448474823),
(9, 3, 1, 3, 16, NULL, '', 1448901174),
(11, 3, 3, 3, 18, NULL, '', 1448901375),
(13, 3, 3, 3, 12, NULL, '', 1449000370),
(14, 3, 3, 4, NULL, NULL, '', 1449232155),
(15, 3, 3, 4, NULL, NULL, '', 1449233725),
(16, 3, 3, 4, NULL, 39, '', 1449233806),
(17, 1, 3, 5, NULL, NULL, '', 1449339049),
(18, 1, 3, 5, NULL, NULL, '', 1449339268),
(19, 1, 3, 5, NULL, NULL, '', 1449339338),
(20, 3, 3, 1, NULL, NULL, '', 1449422139),
(21, 3, 3, 1, NULL, NULL, '', 1449422162),
(22, 1, 3, 7, NULL, NULL, '', 1449423107),
(23, 3, 3, 4, 11, 40, '', 1449755606),
(24, 1, 3, 1, NULL, NULL, '', 1449825842),
(25, 3, 3, 4, 51, 51, '', 1451409222),
(26, 3, 3, 4, 51, 52, '', 1451409249),
(27, 3, 3, 4, 51, 53, '', 1451409287),
(28, 3, 3, 4, 51, 54, '', 1451409812),
(29, 1, 3, 1, NULL, NULL, '', 1452021721),
(30, 1, 3, 5, NULL, NULL, '', 1452024684),
(31, 1, 3, 5, NULL, NULL, '', 1452029720),
(32, 3, 3, 8, 12, NULL, '', 1461779820),
(33, 3, 3, 8, 12, NULL, '', 1461780028);

-- --------------------------------------------------------

--
-- Структура таблицы `sos_friend`
--

CREATE TABLE `sos_friend` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `facebook_friend_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `sos_friend`
--

INSERT INTO `sos_friend` (`id`, `user_id`, `facebook_friend_id`, `timestamp`) VALUES
(0, 13, 'AaJD32n437J0v0dr1Tbl5_S0DCimefyB7-LxfauGU7InsrWrbbJhcW7bUsS2vC0sa50CzCUytqRCPP5l2IobLSkYEU1f5uaEjxZTHpiABAP9aw', '2016-09-19 10:14:50');

-- --------------------------------------------------------

--
-- Структура таблицы `system_event`
--

CREATE TABLE `system_event` (
  `id` int(11) NOT NULL,
  `application` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `event` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `system_event`
--

INSERT INTO `system_event` (`id`, `application`, `category`, `event`, `data`, `created_at`) VALUES
(1, 'app-api', 'user', 'afterSignup', '{"username":"","email":"lavirozp@gmail.com","created_at":1441117687}', 1441117687),
(2, 'app-api', 'user', 'afterSignup', '{"username":"","email":"lavirozp@gmail.com","created_at":1441117800}', 1441117800),
(3, 'app-api', 'user', 'afterSignup', '{"username":"","email":"lavirozp@gmail.com","created_at":1441118129}', 1441118129);

-- --------------------------------------------------------

--
-- Структура таблицы `system_log`
--

CREATE TABLE `system_log` (
  `id` int(11) NOT NULL,
  `level` int(11) DEFAULT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `log_time` int(11) NOT NULL,
  `prefix` text COLLATE utf8_unicode_ci,
  `message` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `system_log`
--

INSERT INTO `system_log` (`id`, `level`, `category`, `log_time`, `prefix`, `message`) VALUES
(1, 1, 'yii\\base\\UnknownMethodException', 1455628628, '[app-backend][/backend/user-profile/view?id=3]', 'exception \'yii\\base\\UnknownMethodException\' with message \'Calling unknown method: common\\models\\UserProfile::getPublicIdentity()\' in /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Component.php:285\nStack trace:\n#0 /home/vagrant/Code/ohad.dev/_protected/backend/views/user-profile/view.php(9): yii\\base\\Component->__call(\'getPublicIdenti...\', Array)\n#1 /home/vagrant/Code/ohad.dev/_protected/backend/views/user-profile/view.php(9): common\\models\\UserProfile->getPublicIdentity()\n#2 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/View.php(325): require(\'/home/vagrant/C...\')\n#3 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/View.php(247): yii\\base\\View->renderPhpFile(\'/home/vagrant/C...\', Array)\n#4 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/View.php(149): yii\\base\\View->renderFile(\'/home/vagrant/C...\', Array, Object(backend\\controllers\\UserProfileController))\n#5 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Controller.php(371): yii\\base\\View->render(\'view\', Array, Object(backend\\controllers\\UserProfileController))\n#6 /home/vagrant/Code/ohad.dev/_protected/backend/controllers/UserProfileController.php(53): yii\\base\\Controller->render(\'view\', Array)\n#7 [internal function]: backend\\controllers\\UserProfileController->actionView(\'3\')\n#8 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/InlineAction.php(55): call_user_func_array(Array, Array)\n#9 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Controller.php(151): yii\\base\\InlineAction->runWithParams(Array)\n#10 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Module.php(455): yii\\base\\Controller->runAction(\'view\', Array)\n#11 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/web/Application.php(84): yii\\base\\Module->runAction(\'user-profile/vi...\', Array)\n#12 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Application.php(375): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#13 /home/vagrant/Code/ohad.dev/backend/index.php(20): yii\\base\\Application->run()\n#14 {main}'),
(2, 1, 'yii\\base\\UnknownPropertyException', 1455628645, '[app-backend][/backend/user-profile/view?id=3]', 'exception \'yii\\base\\UnknownPropertyException\' with message \'Getting unknown property: common\\models\\UserProfile::id\' in /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Component.php:143\nStack trace:\n#0 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/db/BaseActiveRecord.php(247): yii\\base\\Component->__get(\'id\')\n#1 /home/vagrant/Code/ohad.dev/_protected/backend/views/user-profile/view.php(15): yii\\db\\BaseActiveRecord->__get(\'id\')\n#2 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/View.php(325): require(\'/home/vagrant/C...\')\n#3 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/View.php(247): yii\\base\\View->renderPhpFile(\'/home/vagrant/C...\', Array)\n#4 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/View.php(149): yii\\base\\View->renderFile(\'/home/vagrant/C...\', Array, Object(backend\\controllers\\UserProfileController))\n#5 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Controller.php(371): yii\\base\\View->render(\'view\', Array, Object(backend\\controllers\\UserProfileController))\n#6 /home/vagrant/Code/ohad.dev/_protected/backend/controllers/UserProfileController.php(53): yii\\base\\Controller->render(\'view\', Array)\n#7 [internal function]: backend\\controllers\\UserProfileController->actionView(\'3\')\n#8 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/InlineAction.php(55): call_user_func_array(Array, Array)\n#9 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Controller.php(151): yii\\base\\InlineAction->runWithParams(Array)\n#10 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Module.php(455): yii\\base\\Controller->runAction(\'view\', Array)\n#11 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/web/Application.php(84): yii\\base\\Module->runAction(\'user-profile/vi...\', Array)\n#12 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Application.php(375): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#13 /home/vagrant/Code/ohad.dev/backend/index.php(20): yii\\base\\Application->run()\n#14 {main}'),
(3, 1, 'yii\\base\\UnknownPropertyException', 1455628686, '[app-backend][/backend/user-profile/view?id=3]', 'exception \'yii\\base\\UnknownPropertyException\' with message \'Getting unknown property: common\\models\\UserProfile::id\' in /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Component.php:143\nStack trace:\n#0 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/db/BaseActiveRecord.php(247): yii\\base\\Component->__get(\'id\')\n#1 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/helpers/BaseArrayHelper.php(202): yii\\db\\BaseActiveRecord->__get(\'id\')\n#2 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/widgets/DetailView.php(211): yii\\helpers\\BaseArrayHelper::getValue(Object(common\\models\\UserProfile), \'id\')\n#3 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/widgets/DetailView.php(124): yii\\widgets\\DetailView->normalizeAttributes()\n#4 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Object.php(107): yii\\widgets\\DetailView->init()\n#5 [internal function]: yii\\base\\Object->__construct(Array)\n#6 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/di/Container.php(372): ReflectionClass->newInstanceArgs(Array)\n#7 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/di/Container.php(151): yii\\di\\Container->build(\'yii\\\\widgets\\\\Det...\', Array, Array)\n#8 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/BaseYii.php(344): yii\\di\\Container->get(\'yii\\\\widgets\\\\Det...\', Array, Array)\n#9 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Widget.php(97): yii\\BaseYii::createObject(Array)\n#10 /home/vagrant/Code/ohad.dev/_protected/backend/views/user-profile/view.php(19): yii\\base\\Widget::widget(Array)\n#11 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/View.php(325): require(\'/home/vagrant/C...\')\n#12 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/View.php(247): yii\\base\\View->renderPhpFile(\'/home/vagrant/C...\', Array)\n#13 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/View.php(149): yii\\base\\View->renderFile(\'/home/vagrant/C...\', Array, Object(backend\\controllers\\UserProfileController))\n#14 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Controller.php(371): yii\\base\\View->render(\'view\', Array, Object(backend\\controllers\\UserProfileController))\n#15 /home/vagrant/Code/ohad.dev/_protected/backend/controllers/UserProfileController.php(53): yii\\base\\Controller->render(\'view\', Array)\n#16 [internal function]: backend\\controllers\\UserProfileController->actionView(\'3\')\n#17 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/InlineAction.php(55): call_user_func_array(Array, Array)\n#18 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Controller.php(151): yii\\base\\InlineAction->runWithParams(Array)\n#19 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Module.php(455): yii\\base\\Controller->runAction(\'view\', Array)\n#20 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/web/Application.php(84): yii\\base\\Module->runAction(\'user-profile/vi...\', Array)\n#21 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Application.php(375): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#22 /home/vagrant/Code/ohad.dev/backend/index.php(20): yii\\base\\Application->run()\n#23 {main}'),
(4, 1, 'yii\\base\\UnknownPropertyException', 1455628687, '[app-backend][/backend/user-profile/view?id=3]', 'exception \'yii\\base\\UnknownPropertyException\' with message \'Getting unknown property: common\\models\\UserProfile::id\' in /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Component.php:143\nStack trace:\n#0 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/db/BaseActiveRecord.php(247): yii\\base\\Component->__get(\'id\')\n#1 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/helpers/BaseArrayHelper.php(202): yii\\db\\BaseActiveRecord->__get(\'id\')\n#2 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/widgets/DetailView.php(211): yii\\helpers\\BaseArrayHelper::getValue(Object(common\\models\\UserProfile), \'id\')\n#3 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/widgets/DetailView.php(124): yii\\widgets\\DetailView->normalizeAttributes()\n#4 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Object.php(107): yii\\widgets\\DetailView->init()\n#5 [internal function]: yii\\base\\Object->__construct(Array)\n#6 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/di/Container.php(372): ReflectionClass->newInstanceArgs(Array)\n#7 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/di/Container.php(151): yii\\di\\Container->build(\'yii\\\\widgets\\\\Det...\', Array, Array)\n#8 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/BaseYii.php(344): yii\\di\\Container->get(\'yii\\\\widgets\\\\Det...\', Array, Array)\n#9 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Widget.php(97): yii\\BaseYii::createObject(Array)\n#10 /home/vagrant/Code/ohad.dev/_protected/backend/views/user-profile/view.php(19): yii\\base\\Widget::widget(Array)\n#11 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/View.php(325): require(\'/home/vagrant/C...\')\n#12 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/View.php(247): yii\\base\\View->renderPhpFile(\'/home/vagrant/C...\', Array)\n#13 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/View.php(149): yii\\base\\View->renderFile(\'/home/vagrant/C...\', Array, Object(backend\\controllers\\UserProfileController))\n#14 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Controller.php(371): yii\\base\\View->render(\'view\', Array, Object(backend\\controllers\\UserProfileController))\n#15 /home/vagrant/Code/ohad.dev/_protected/backend/controllers/UserProfileController.php(53): yii\\base\\Controller->render(\'view\', Array)\n#16 [internal function]: backend\\controllers\\UserProfileController->actionView(\'3\')\n#17 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/InlineAction.php(55): call_user_func_array(Array, Array)\n#18 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Controller.php(151): yii\\base\\InlineAction->runWithParams(Array)\n#19 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Module.php(455): yii\\base\\Controller->runAction(\'view\', Array)\n#20 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/web/Application.php(84): yii\\base\\Module->runAction(\'user-profile/vi...\', Array)\n#21 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Application.php(375): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#22 /home/vagrant/Code/ohad.dev/backend/index.php(20): yii\\base\\Application->run()\n#23 {main}'),
(5, 1, 'yii\\base\\UnknownPropertyException', 1455628737, '[app-backend][/backend/user-profile/view?id=3]', 'exception \'yii\\base\\UnknownPropertyException\' with message \'Getting unknown property: common\\models\\UserProfile::asd\' in /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Component.php:143\nStack trace:\n#0 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/db/BaseActiveRecord.php(247): yii\\base\\Component->__get(\'asd\')\n#1 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/helpers/BaseArrayHelper.php(202): yii\\db\\BaseActiveRecord->__get(\'asd\')\n#2 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/widgets/DetailView.php(211): yii\\helpers\\BaseArrayHelper::getValue(Object(common\\models\\UserProfile), \'asd\')\n#3 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/widgets/DetailView.php(124): yii\\widgets\\DetailView->normalizeAttributes()\n#4 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Object.php(107): yii\\widgets\\DetailView->init()\n#5 [internal function]: yii\\base\\Object->__construct(Array)\n#6 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/di/Container.php(372): ReflectionClass->newInstanceArgs(Array)\n#7 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/di/Container.php(151): yii\\di\\Container->build(\'yii\\\\widgets\\\\Det...\', Array, Array)\n#8 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/BaseYii.php(344): yii\\di\\Container->get(\'yii\\\\widgets\\\\Det...\', Array, Array)\n#9 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Widget.php(97): yii\\BaseYii::createObject(Array)\n#10 /home/vagrant/Code/ohad.dev/_protected/backend/views/user-profile/view.php(21): yii\\base\\Widget::widget(Array)\n#11 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/View.php(325): require(\'/home/vagrant/C...\')\n#12 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/View.php(247): yii\\base\\View->renderPhpFile(\'/home/vagrant/C...\', Array)\n#13 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/View.php(149): yii\\base\\View->renderFile(\'/home/vagrant/C...\', Array, Object(backend\\controllers\\UserProfileController))\n#14 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Controller.php(371): yii\\base\\View->render(\'view\', Array, Object(backend\\controllers\\UserProfileController))\n#15 /home/vagrant/Code/ohad.dev/_protected/backend/controllers/UserProfileController.php(53): yii\\base\\Controller->render(\'view\', Array)\n#16 [internal function]: backend\\controllers\\UserProfileController->actionView(\'3\')\n#17 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/InlineAction.php(55): call_user_func_array(Array, Array)\n#18 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Controller.php(151): yii\\base\\InlineAction->runWithParams(Array)\n#19 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Module.php(455): yii\\base\\Controller->runAction(\'view\', Array)\n#20 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/web/Application.php(84): yii\\base\\Module->runAction(\'user-profile/vi...\', Array)\n#21 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Application.php(375): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#22 /home/vagrant/Code/ohad.dev/backend/index.php(20): yii\\base\\Application->run()\n#23 {main}'),
(6, 1, 'yii\\base\\InvalidConfigException', 1455628762, '[app-backend][/backend/user-profile/view?id=3]', 'exception \'yii\\base\\InvalidConfigException\' with message \'The attribute configuration must be an array.\' in /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/widgets/DetailView.php:194\nStack trace:\n#0 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/widgets/DetailView.php(124): yii\\widgets\\DetailView->normalizeAttributes()\n#1 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Object.php(107): yii\\widgets\\DetailView->init()\n#2 [internal function]: yii\\base\\Object->__construct(Array)\n#3 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/di/Container.php(372): ReflectionClass->newInstanceArgs(Array)\n#4 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/di/Container.php(151): yii\\di\\Container->build(\'yii\\\\widgets\\\\Det...\', Array, Array)\n#5 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/BaseYii.php(344): yii\\di\\Container->get(\'yii\\\\widgets\\\\Det...\', Array, Array)\n#6 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Widget.php(97): yii\\BaseYii::createObject(Array)\n#7 /home/vagrant/Code/ohad.dev/_protected/backend/views/user-profile/view.php(23): yii\\base\\Widget::widget(Array)\n#8 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/View.php(325): require(\'/home/vagrant/C...\')\n#9 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/View.php(247): yii\\base\\View->renderPhpFile(\'/home/vagrant/C...\', Array)\n#10 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/View.php(149): yii\\base\\View->renderFile(\'/home/vagrant/C...\', Array, Object(backend\\controllers\\UserProfileController))\n#11 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Controller.php(371): yii\\base\\View->render(\'view\', Array, Object(backend\\controllers\\UserProfileController))\n#12 /home/vagrant/Code/ohad.dev/_protected/backend/controllers/UserProfileController.php(53): yii\\base\\Controller->render(\'view\', Array)\n#13 [internal function]: backend\\controllers\\UserProfileController->actionView(\'3\')\n#14 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/InlineAction.php(55): call_user_func_array(Array, Array)\n#15 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Controller.php(151): yii\\base\\InlineAction->runWithParams(Array)\n#16 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Module.php(455): yii\\base\\Controller->runAction(\'view\', Array)\n#17 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/web/Application.php(84): yii\\base\\Module->runAction(\'user-profile/vi...\', Array)\n#18 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Application.php(375): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#19 /home/vagrant/Code/ohad.dev/backend/index.php(20): yii\\base\\Application->run()\n#20 {main}'),
(7, 1, 'yii\\base\\InvalidConfigException', 1455628763, '[app-backend][/backend/user-profile/view?id=3]', 'exception \'yii\\base\\InvalidConfigException\' with message \'The attribute configuration must be an array.\' in /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/widgets/DetailView.php:194\nStack trace:\n#0 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/widgets/DetailView.php(124): yii\\widgets\\DetailView->normalizeAttributes()\n#1 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Object.php(107): yii\\widgets\\DetailView->init()\n#2 [internal function]: yii\\base\\Object->__construct(Array)\n#3 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/di/Container.php(372): ReflectionClass->newInstanceArgs(Array)\n#4 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/di/Container.php(151): yii\\di\\Container->build(\'yii\\\\widgets\\\\Det...\', Array, Array)\n#5 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/BaseYii.php(344): yii\\di\\Container->get(\'yii\\\\widgets\\\\Det...\', Array, Array)\n#6 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Widget.php(97): yii\\BaseYii::createObject(Array)\n#7 /home/vagrant/Code/ohad.dev/_protected/backend/views/user-profile/view.php(23): yii\\base\\Widget::widget(Array)\n#8 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/View.php(325): require(\'/home/vagrant/C...\')\n#9 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/View.php(247): yii\\base\\View->renderPhpFile(\'/home/vagrant/C...\', Array)\n#10 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/View.php(149): yii\\base\\View->renderFile(\'/home/vagrant/C...\', Array, Object(backend\\controllers\\UserProfileController))\n#11 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Controller.php(371): yii\\base\\View->render(\'view\', Array, Object(backend\\controllers\\UserProfileController))\n#12 /home/vagrant/Code/ohad.dev/_protected/backend/controllers/UserProfileController.php(53): yii\\base\\Controller->render(\'view\', Array)\n#13 [internal function]: backend\\controllers\\UserProfileController->actionView(\'3\')\n#14 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/InlineAction.php(55): call_user_func_array(Array, Array)\n#15 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Controller.php(151): yii\\base\\InlineAction->runWithParams(Array)\n#16 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Module.php(455): yii\\base\\Controller->runAction(\'view\', Array)\n#17 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/web/Application.php(84): yii\\base\\Module->runAction(\'user-profile/vi...\', Array)\n#18 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Application.php(375): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#19 /home/vagrant/Code/ohad.dev/backend/index.php(20): yii\\base\\Application->run()\n#20 {main}'),
(8, 1, 'yii\\base\\ErrorException:2', 1455628864, '[app-backend][/backend/user-profile/view?id=3]', 'exception \'yii\\base\\ErrorException\' with message \'htmlspecialchars() expects parameter 1 to be string, array given\' in /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/helpers/BaseHtml.php:104\nStack trace:\n#0 [internal function]: yii\\base\\ErrorHandler->handleError(2, \'htmlspecialchar...\', \'/home/vagrant/C...\', 104, Array)\n#1 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/helpers/BaseHtml.php(104): htmlspecialchars(Array, 11, \'UTF-8\', true)\n#2 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/i18n/Formatter.php(320): yii\\helpers\\BaseHtml::encode(Array)\n#3 [internal function]: yii\\i18n\\Formatter->asText(Array)\n#4 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/i18n/Formatter.php(285): call_user_func_array(Array, Array)\n#5 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/widgets/DetailView.php(155): yii\\i18n\\Formatter->format(Array, \'text\')\n#6 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/widgets/DetailView.php(136): yii\\widgets\\DetailView->renderAttribute(Array, 2)\n#7 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Widget.php(98): yii\\widgets\\DetailView->run()\n#8 /home/vagrant/Code/ohad.dev/_protected/backend/views/user-profile/view.php(23): yii\\base\\Widget::widget(Array)\n#9 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/View.php(325): require(\'/home/vagrant/C...\')\n#10 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/View.php(247): yii\\base\\View->renderPhpFile(\'/home/vagrant/C...\', Array)\n#11 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/View.php(149): yii\\base\\View->renderFile(\'/home/vagrant/C...\', Array, Object(backend\\controllers\\UserProfileController))\n#12 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Controller.php(371): yii\\base\\View->render(\'view\', Array, Object(backend\\controllers\\UserProfileController))\n#13 /home/vagrant/Code/ohad.dev/_protected/backend/controllers/UserProfileController.php(53): yii\\base\\Controller->render(\'view\', Array)\n#14 [internal function]: backend\\controllers\\UserProfileController->actionView(\'3\')\n#15 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/InlineAction.php(55): call_user_func_array(Array, Array)\n#16 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Controller.php(151): yii\\base\\InlineAction->runWithParams(Array)\n#17 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Module.php(455): yii\\base\\Controller->runAction(\'view\', Array)\n#18 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/web/Application.php(84): yii\\base\\Module->runAction(\'user-profile/vi...\', Array)\n#19 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Application.php(375): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#20 /home/vagrant/Code/ohad.dev/backend/index.php(20): yii\\base\\Application->run()\n#21 {main}'),
(9, 1, 'yii\\base\\ErrorException:2', 1455628879, '[app-backend][/backend/user-profile/view?id=3]', 'exception \'yii\\base\\ErrorException\' with message \'htmlspecialchars() expects parameter 1 to be string, array given\' in /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/helpers/BaseHtml.php:104\nStack trace:\n#0 [internal function]: yii\\base\\ErrorHandler->handleError(2, \'htmlspecialchar...\', \'/home/vagrant/C...\', 104, Array)\n#1 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/helpers/BaseHtml.php(104): htmlspecialchars(Array, 11, \'UTF-8\', true)\n#2 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/i18n/Formatter.php(320): yii\\helpers\\BaseHtml::encode(Array)\n#3 [internal function]: yii\\i18n\\Formatter->asText(Array)\n#4 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/i18n/Formatter.php(285): call_user_func_array(Array, Array)\n#5 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/widgets/DetailView.php(155): yii\\i18n\\Formatter->format(Array, \'text\')\n#6 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/widgets/DetailView.php(136): yii\\widgets\\DetailView->renderAttribute(Array, 2)\n#7 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Widget.php(98): yii\\widgets\\DetailView->run()\n#8 /home/vagrant/Code/ohad.dev/_protected/backend/views/user-profile/view.php(23): yii\\base\\Widget::widget(Array)\n#9 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/View.php(325): require(\'/home/vagrant/C...\')\n#10 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/View.php(247): yii\\base\\View->renderPhpFile(\'/home/vagrant/C...\', Array)\n#11 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/View.php(149): yii\\base\\View->renderFile(\'/home/vagrant/C...\', Array, Object(backend\\controllers\\UserProfileController))\n#12 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Controller.php(371): yii\\base\\View->render(\'view\', Array, Object(backend\\controllers\\UserProfileController))\n#13 /home/vagrant/Code/ohad.dev/_protected/backend/controllers/UserProfileController.php(53): yii\\base\\Controller->render(\'view\', Array)\n#14 [internal function]: backend\\controllers\\UserProfileController->actionView(\'3\')\n#15 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/InlineAction.php(55): call_user_func_array(Array, Array)\n#16 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Controller.php(151): yii\\base\\InlineAction->runWithParams(Array)\n#17 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Module.php(455): yii\\base\\Controller->runAction(\'view\', Array)\n#18 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/web/Application.php(84): yii\\base\\Module->runAction(\'user-profile/vi...\', Array)\n#19 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Application.php(375): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#20 /home/vagrant/Code/ohad.dev/backend/index.php(20): yii\\base\\Application->run()\n#21 {main}'),
(10, 1, 'yii\\base\\ErrorException:4', 1455630892, '[app-frontend][/site/image?id=12]', 'exception \'yii\\base\\ErrorException\' with message \'syntax error, unexpected \'?>\'\' in /home/vagrant/Code/ohad.dev/_protected/frontend/views/site/image.php:11\nStack trace:\n#0 [internal function]: yii\\base\\ErrorHandler->handleFatalError()\n#1 {main}'),
(11, 1, 'yii\\base\\ErrorException:4', 1455630906, '[app-frontend][/site/image?id=12]', 'exception \'yii\\base\\ErrorException\' with message \'syntax error, unexpected \'?>\'\' in /home/vagrant/Code/ohad.dev/_protected/frontend/views/site/image.php:11\nStack trace:\n#0 [internal function]: yii\\base\\ErrorHandler->handleFatalError()\n#1 {main}'),
(12, 1, 'yii\\base\\ErrorException:4', 1455630907, '[app-frontend][/site/image?id=12]', 'exception \'yii\\base\\ErrorException\' with message \'syntax error, unexpected \'?>\'\' in /home/vagrant/Code/ohad.dev/_protected/frontend/views/site/image.php:11\nStack trace:\n#0 [internal function]: yii\\base\\ErrorHandler->handleFatalError()\n#1 {main}'),
(13, 1, 'yii\\base\\ErrorException:8', 1455642802, '[app-console][]', 'exception \'yii\\base\\ErrorException\' with message \'Undefined variable: result\' in /home/vagrant/Code/ohad.dev/_protected/console/controllers/CronController.php:24\nStack trace:\n#0 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/InlineAction.php(55): ::call_user_func_array:{/home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/InlineAction.php:55}()\n#1 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Controller.php(151): yii\\base\\InlineAction->runWithParams()\n#2 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/console/Controller.php(91): yii\\base\\Controller->runAction()\n#3 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Module.php(455): yii\\console\\Controller->runAction()\n#4 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/console/Application.php(167): yii\\base\\Module->runAction()\n#5 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/console/Application.php(143): yii\\console\\Application->runAction()\n#6 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Application.php(375): yii\\console\\Application->handleRequest()\n#7 /home/vagrant/Code/ohad.dev/_protected/yii(33): yii\\base\\Application->run()\n#8 {main}'),
(14, 1, 'yii\\base\\ErrorException:8', 1455642821, '[app-console][]', 'exception \'yii\\base\\ErrorException\' with message \'Undefined offset: 1\' in /home/vagrant/Code/ohad.dev/_protected/console/controllers/CronController.php:27\nStack trace:\n#0 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/InlineAction.php(55): ::call_user_func_array:{/home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/InlineAction.php:55}()\n#1 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Controller.php(151): yii\\base\\InlineAction->runWithParams()\n#2 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/console/Controller.php(91): yii\\base\\Controller->runAction()\n#3 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Module.php(455): yii\\console\\Controller->runAction()\n#4 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/console/Application.php(167): yii\\base\\Module->runAction()\n#5 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/console/Application.php(143): yii\\console\\Application->runAction()\n#6 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Application.php(375): yii\\console\\Application->handleRequest()\n#7 /home/vagrant/Code/ohad.dev/_protected/yii(33): yii\\base\\Application->run()\n#8 {main}'),
(15, 1, 'yii\\base\\ErrorException:8', 1455642886, '[app-console][]', 'exception \'yii\\base\\ErrorException\' with message \'Undefined offset: 1\' in /home/vagrant/Code/ohad.dev/_protected/console/controllers/CronController.php:26\nStack trace:\n#0 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/InlineAction.php(55): ::call_user_func_array:{/home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/InlineAction.php:55}()\n#1 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Controller.php(151): yii\\base\\InlineAction->runWithParams()\n#2 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/console/Controller.php(91): yii\\base\\Controller->runAction()\n#3 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Module.php(455): yii\\console\\Controller->runAction()\n#4 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/console/Application.php(167): yii\\base\\Module->runAction()\n#5 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/console/Application.php(143): yii\\console\\Application->runAction()\n#6 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Application.php(375): yii\\console\\Application->handleRequest()\n#7 /home/vagrant/Code/ohad.dev/_protected/yii(33): yii\\base\\Application->run()\n#8 {main}'),
(16, 1, 'yii\\base\\ErrorException:8', 1455642931, '[app-console][]', 'exception \'yii\\base\\ErrorException\' with message \'Undefined offset: 6\' in /home/vagrant/Code/ohad.dev/_protected/console/controllers/CronController.php:27\nStack trace:\n#0 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/InlineAction.php(55): ::call_user_func_array:{/home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/InlineAction.php:55}()\n#1 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Controller.php(151): yii\\base\\InlineAction->runWithParams()\n#2 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/console/Controller.php(91): yii\\base\\Controller->runAction()\n#3 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Module.php(455): yii\\console\\Controller->runAction()\n#4 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/console/Application.php(167): yii\\base\\Module->runAction()\n#5 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/console/Application.php(143): yii\\console\\Application->runAction()\n#6 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Application.php(375): yii\\console\\Application->handleRequest()\n#7 /home/vagrant/Code/ohad.dev/_protected/yii(33): yii\\base\\Application->run()\n#8 {main}'),
(17, 1, 'yii\\db\\Exception', 1466201757, '[app-api][/api/image/feed?id=51]', 'exception \'PDOException\' with message \'SQLSTATE[42S22]: Column not found: 1054 Unknown column \'images.id\' in \'field list\'\' in /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/db/Command.php:837\nStack trace:\n#0 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/db/Command.php(837): PDOStatement->execute()\n#1 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/db/Command.php(359): yii\\db\\Command->queryInternal(\'fetchAll\', NULL)\n#2 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/db/Query.php(206): yii\\db\\Command->queryAll()\n#3 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/db/ActiveQuery.php(132): yii\\db\\Query->all(NULL)\n#4 /home/vagrant/Code/ohad.dev/_protected/api/controllers/ImageController.php(76): yii\\db\\ActiveQuery->all()\n#5 [internal function]: api\\controllers\\ImageController->actionFeed(\'51\')\n#6 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/InlineAction.php(55): call_user_func_array(Array, Array)\n#7 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Controller.php(151): yii\\base\\InlineAction->runWithParams(Array)\n#8 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Module.php(455): yii\\base\\Controller->runAction(\'feed\', Array)\n#9 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/web/Application.php(84): yii\\base\\Module->runAction(\'image/feed\', Array)\n#10 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Application.php(375): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#11 /home/vagrant/Code/ohad.dev/api/index.php(21): yii\\base\\Application->run()\n#12 {main}\n\nNext exception \'yii\\db\\Exception\' with message \'SQLSTATE[42S22]: Column not found: 1054 Unknown column \'images.id\' in \'field list\'\nThe SQL being executed was: SELECT `images`.`id` FROM `image` LEFT JOIN `user_profile` ON `image`.`user_id` = `user_profile`.`user_id` WHERE `image`.`user_id` IN (1, 3) ORDER BY `image`.`add_date` DESC\' in /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/db/Schema.php:628\nStack trace:\n#0 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/db/Command.php(852): yii\\db\\Schema->convertException(Object(PDOException), \'SELECT `images`...\')\n#1 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/db/Command.php(359): yii\\db\\Command->queryInternal(\'fetchAll\', NULL)\n#2 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/db/Query.php(206): yii\\db\\Command->queryAll()\n#3 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/db/ActiveQuery.php(132): yii\\db\\Query->all(NULL)\n#4 /home/vagrant/Code/ohad.dev/_protected/api/controllers/ImageController.php(76): yii\\db\\ActiveQuery->all()\n#5 [internal function]: api\\controllers\\ImageController->actionFeed(\'51\')\n#6 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/InlineAction.php(55): call_user_func_array(Array, Array)\n#7 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Controller.php(151): yii\\base\\InlineAction->runWithParams(Array)\n#8 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Module.php(455): yii\\base\\Controller->runAction(\'feed\', Array)\n#9 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/web/Application.php(84): yii\\base\\Module->runAction(\'image/feed\', Array)\n#10 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Application.php(375): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#11 /home/vagrant/Code/ohad.dev/api/index.php(21): yii\\base\\Application->run()\n#12 {main}\nAdditional Information:\nArray\n(\n    [0] => 42S22\n    [1] => 1054\n    [2] => Unknown column \'images.id\' in \'field list\'\n)\n'),
(18, 1, 'yii\\base\\ErrorException:2', 1466201813, '[app-api][/api/image/feed?id=51]', 'exception \'yii\\base\\ErrorException\' with message \'call_user_func() expects parameter 1 to be a valid callback, array must have exactly two members\' in /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/db/ActiveQueryTrait.php:122\nStack trace:\n#0 [internal function]: yii\\base\\ErrorHandler->handleError(2, \'call_user_func(...\', \'/home/vagrant/C...\', 122, Array)\n#1 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/db/ActiveQueryTrait.php(122): call_user_func(Array, Array)\n#2 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/db/ActiveQuery.php(220): yii\\db\\ActiveQuery->createModels(Array)\n#3 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/db/Query.php(207): yii\\db\\ActiveQuery->populate(Array)\n#4 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/db/ActiveQuery.php(132): yii\\db\\Query->all(NULL)\n#5 /home/vagrant/Code/ohad.dev/_protected/api/controllers/ImageController.php(76): yii\\db\\ActiveQuery->all()\n#6 [internal function]: api\\controllers\\ImageController->actionFeed(\'51\')\n#7 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/InlineAction.php(55): call_user_func_array(Array, Array)\n#8 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Controller.php(151): yii\\base\\InlineAction->runWithParams(Array)\n#9 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Module.php(455): yii\\base\\Controller->runAction(\'feed\', Array)\n#10 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/web/Application.php(84): yii\\base\\Module->runAction(\'image/feed\', Array)\n#11 /home/vagrant/Code/ohad.dev/_protected/vendor/yiisoft/yii2/base/Application.php(375): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#12 /home/vagrant/Code/ohad.dev/api/index.php(21): yii\\base\\Application->run()\n#13 {main}'),
(19, 1, 'yii\\base\\ErrorException:1', 1471104000, '[app-frontend][/apple-app-site-association]', 'yii\\base\\ErrorException: Class \'frontend\\controllers\\Controller\' not found in /home/ubuntu/Code/ohad.dev/_protected/frontend/controllers/AppleAppSiteAssociationController.php:7\nStack trace:\n#0 [internal function]: yii\\base\\ErrorHandler->handleFatalError()\n#1 {main}'),
(20, 1, 'yii\\base\\ErrorException:1', 1471104014, '[app-frontend][/apple-app-site-association]', 'yii\\base\\ErrorException: Class \'frontend\\controllers\\Controller\' not found in /home/ubuntu/Code/ohad.dev/_protected/frontend/controllers/AppleAppSiteAssociationController.php:7\nStack trace:\n#0 [internal function]: yii\\base\\ErrorHandler->handleFatalError()\n#1 {main}'),
(21, 2, 'yii\\gii\\Module::checkAccess', 1474290776, '[app-frontend][/gii]', 'Access to Gii is denied due to IP address restriction. The requested IP is 192.168.10.1');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `oauth_client` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `oauth_client_user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` smallint(6) NOT NULL DEFAULT '1',
  `status` smallint(6) NOT NULL DEFAULT '1',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `access_token` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `oauth_client`, `oauth_client_user_id`, `email`, `role`, `status`, `created_at`, `updated_at`, `access_token`) VALUES
(1, 'webmaster', 'MCXWXkntn_m24CVe-P1nu9PQRFNom7T3', '$2y$13$Q.el5ve71rcoDPXEKr2j1ORFPreh3c9dwvfW.TwSl932XUhNoSena', NULL, NULL, NULL, 'webmaster@example.com', 10, 1, 1441105308, 1441105308, 'NOw2H4u6bJ3D27kQGtWJ0NK1izR5OyyE'),
(3, 'user', '1Biv_AaDPIYh1RTfWW0q0on1TJ9yDpHA', '$2y$13$UCB.RpBJuRAXJ1yoGCyAmegp27MN5asgg4F4NU/Itsk.amjzc308a', NULL, NULL, NULL, 'user@example.com', 1, 1, 1441105309, 1441105309, 'ZhwDg240YjTLkig1XxgGHlN8oXiS03nm');

-- --------------------------------------------------------

--
-- Структура таблицы `user_device_id`
--

CREATE TABLE `user_device_id` (
  `user_id` int(11) NOT NULL,
  `device_id` varchar(128) NOT NULL,
  `app_version` varchar(64) NOT NULL,
  `is_dev` int(11) NOT NULL,
  `add_date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user_device_id`
--

INSERT INTO `user_device_id` (`user_id`, `device_id`, `app_version`, `is_dev`, `add_date`) VALUES
(3, '3c93b2b82e2c2970690f736fe6f55cac24a313777f3ad8a06381cf98debe9054', '0.23', 0, 1447871192);

-- --------------------------------------------------------

--
-- Структура таблицы `user_profile`
--

CREATE TABLE `user_profile` (
  `user_id` int(11) NOT NULL,
  `log` longtext COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(2048) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `gender` int(11) DEFAULT NULL,
  `bio` text COLLATE utf8_unicode_ci,
  `private` int(1) NOT NULL,
  `phone` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `update_at` int(11) NOT NULL,
  `count_images` int(11) NOT NULL,
  `count_followers` int(11) NOT NULL,
  `count_following` int(11) NOT NULL,
  `count_fash` int(11) NOT NULL,
  `count_trash` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `user_profile`
--

INSERT INTO `user_profile` (`user_id`, `log`, `name`, `user_name`, `website`, `picture`, `locale`, `gender`, `bio`, `private`, `phone`, `update_at`, `count_images`, `count_followers`, `count_following`, `count_fash`, `count_trash`) VALUES
(1, '', 'Mrs. Cordie Stark', 'ahermann', 'http://www.romaguera.com/sit-omnis-blanditiis-tempora-quia-facere-dolorem-eos-at.html', NULL, 'en-US', NULL, 'Earum dolore atque quisquam quasi quod. Praesentium et qui et commodi. Libero quae recusandae eos quos fugit. Molestias temporibus aperiam qui enim.', 1, '753.972.0341 x79427', 1453035406, 38, 1, 0, 36, 1),
(3, 'a:3:{s:5:"token";s:197:"CAAMtzIi5ZCrABAMcdIRmKwMAREt7xFk1ejt54LZBjlVcbrBypcv1CEmNNpLWZCKPfJKGbvdl5y6u14qwZArIgTUPeKyVWIhhV7U71tZBAKicL8MH3mYF5GdExGshP3F4E8LWHpdLYZBUqTU2zkMJVXY7XWSJ3oAeg4V6FZBHwUIbfaw4dhVd7Pmb7WzMYJVJeAZD";s:7:"friends";a:3:{s:4:"data";a:2:{i:0;O:8:"stdClass":3:{s:2:"id";s:15:"744557722343596";s:4:"name";s:12:"Nikita Titov";s:9:"installed";b:1;}i:1;O:8:"stdClass":3:{s:2:"id";s:15:"123339188048382";s:4:"name";s:16:"Hellooa Americaa";s:9:"installed";b:1;}}s:6:"paging";O:8:"stdClass":1:{s:4:"next";s:423:"https://graph.facebook.com/v2.5/142669282779919/friends?fields=id,name,installed&limit=5000&access_token=CAAMtzIi5ZCrABAMcdIRmKwMAREt7xFk1ejt54LZBjlVcbrBypcv1CEmNNpLWZCKPfJKGbvdl5y6u14qwZArIgTUPeKyVWIhhV7U71tZBAKicL8MH3mYF5GdExGshP3F4E8LWHpdLYZBUqTU2zkMJVXY7XWSJ3oAeg4V6FZBHwUIbfaw4dhVd7Pmb7WzMYJVJeAZD&offset=5000&__after_id=enc_AdD6VZAK1cfQiNZBABsIlTn1has4vveZApZBDUkRSwOtTriEouZAKGeakdRAolj7xcxHEjnkDz0fk2ibVKM0BEfVok43k";}s:7:"summary";O:8:"stdClass":1:{s:11:"total_count";i:3;}}s:27:"friends_followRequest_added";a:2:{i:0;a:3:{s:2:"id";i:7;s:5:"fb_id";s:15:"744557722343596";s:7:"fb_name";s:12:"Nikita Titov";}i:1;a:3:{s:2:"id";i:56;s:5:"fb_id";s:15:"123339188048382";s:7:"fb_name";s:16:"Hellooa Americaa";}}}', 'hello', 'hi', 'http://www.prosacco.com/eaque-eum-animi-autem-a-ipsam-et-voluptatem-consequatur', 'img_4291.jpg', 'en-US', 1, 'Aliquam ullam beatae in aut illo et. A iusto rerum voluptas. Quia ducimus qui quidem quaerat itaque excepturi nobis quia. Dolorum non voluptas vel voluptas modi et praesentium.', 0, '1-203-632-6510', 1461780028, 1, 3, 1, 1, 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `image_id` (`image_id`),
  ADD KEY `hashtags` (`hashtags`);

--
-- Индексы таблицы `fash_or_trash`
--
ALTER TABLE `fash_or_trash`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `image_id` (`image_id`);

--
-- Индексы таблицы `following`
--
ALTER TABLE `following`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `following_request`
--
ALTER TABLE `following_request`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `hashtag`
--
ALTER TABLE `hashtag`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `image_report`
--
ALTER TABLE `image_report`
  ADD PRIMARY KEY (`id`),
  ADD KEY `image_id` (`image_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `from_user_id` (`from_user_id`),
  ADD KEY `image_id` (`image_id`);

--
-- Индексы таблицы `sos_friend`
--
ALTER TABLE `sos_friend`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`facebook_friend_id`);

--
-- Индексы таблицы `system_event`
--
ALTER TABLE `system_event`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `system_log`
--
ALTER TABLE `system_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_log_level` (`level`),
  ADD KEY `idx_log_category` (`category`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `access_token` (`access_token`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Индексы таблицы `user_device_id`
--
ALTER TABLE `user_device_id`
  ADD UNIQUE KEY `user_id` (`user_id`,`device_id`);

--
-- Индексы таблицы `user_profile`
--
ALTER TABLE `user_profile`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT для таблицы `fash_or_trash`
--
ALTER TABLE `fash_or_trash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT для таблицы `following`
--
ALTER TABLE `following`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `following_request`
--
ALTER TABLE `following_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `hashtag`
--
ALTER TABLE `hashtag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT для таблицы `image_report`
--
ALTER TABLE `image_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT для таблицы `system_event`
--
ALTER TABLE `system_event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `system_log`
--
ALTER TABLE `system_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `user_profile`
--
ALTER TABLE `user_profile`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`image_id`) REFERENCES `image` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `fash_or_trash`
--
ALTER TABLE `fash_or_trash`
  ADD CONSTRAINT `fash_or_trash_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fash_or_trash_ibfk_2` FOREIGN KEY (`image_id`) REFERENCES `image` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `image_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `image_report`
--
ALTER TABLE `image_report`
  ADD CONSTRAINT `image_report_ibfk_1` FOREIGN KEY (`image_id`) REFERENCES `image` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `image_report_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Ограничения внешнего ключа таблицы `notification`
--
ALTER TABLE `notification`
  ADD CONSTRAINT `notification_ibfk_1` FOREIGN KEY (`image_id`) REFERENCES `image` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `notification_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `notification_ibfk_3` FOREIGN KEY (`from_user_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Ограничения внешнего ключа таблицы `user_profile`
--
ALTER TABLE `user_profile`
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
