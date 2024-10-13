-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 13 2024 г., 09:52
-- Версия сервера: 5.7.33
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `bank-base`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cheta`
--

CREATE TABLE `cheta` (
  `Id` int(11) NOT NULL COMMENT 'Номер счета',
  `Id schet` int(11) NOT NULL COMMENT 'id Клиента ',
  `Valuta` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Валюта (рубли, евро)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cheta`
--

INSERT INTO `cheta` (`Id`, `Id schet`, `Valuta`) VALUES
(1, 1, 'rub'),
(2, 2, 'rub'),
(3, 3, 'rub'),
(4, 4, 'evro'),
(5, 5, 'rub'),
(6, 6, 'evro'),
(7, 7, 'rub'),
(8, 8, 'rub'),
(9, 9, 'evro'),
(10, 10, 'evro'),
(11, 11, 'rub'),
(12, 12, 'rub'),
(13, 1, 'evro');

-- --------------------------------------------------------

--
-- Структура таблицы `summ prihoda`
--

CREATE TABLE `summ prihoda` (
  `Id` int(11) NOT NULL COMMENT 'Id операции',
  `id  schet` int(11) NOT NULL COMMENT 'Номер счета ',
  `date and time` datetime NOT NULL COMMENT 'Дата и время',
  `summa prihoda` int(11) NOT NULL COMMENT 'Сумма зачисления'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `summ prihoda`
--

INSERT INTO `summ prihoda` (`Id`, `id  schet`, `date and time`, `summa prihoda`) VALUES
(4, 1, '2024-10-13 09:03:57', 500),
(5, 1, '2024-10-09 12:04:20', 15000),
(6, 1, '2024-10-04 16:04:42', 3000),
(7, 2, '2024-10-01 11:05:10', 900),
(8, 2, '2024-10-08 15:05:25', 500),
(9, 2, '2024-10-06 18:05:41', 100000),
(10, 3, '2024-10-02 11:05:57', 800),
(11, 3, '2024-10-07 15:06:15', 500),
(12, 3, '2024-10-06 08:06:28', 10000),
(13, 5, '2024-10-01 17:06:47', 8000),
(14, 5, '2024-10-12 13:07:09', 15000),
(15, 5, '2024-10-14 19:07:25', 3000),
(16, 7, '2024-10-02 14:07:43', 500),
(17, 7, '2024-10-15 06:07:58', 70000),
(18, 7, '2024-10-01 19:08:20', 3000),
(19, 8, '2024-10-02 11:08:43', 2000),
(20, 8, '2024-10-10 13:09:15', 900),
(21, 8, '2024-10-19 21:09:29', 7000),
(22, 11, '2024-10-03 11:09:49', 600),
(23, 11, '2024-10-04 13:10:06', 500),
(24, 11, '2024-10-08 17:10:21', 1300),
(25, 12, '2024-10-11 16:10:40', 500),
(26, 12, '2024-10-15 14:10:55', 12350),
(27, 12, '2024-10-13 13:11:12', 3606),
(28, 4, '2024-10-01 14:11:30', 15),
(29, 4, '2024-10-10 18:11:46', 300),
(30, 4, '2024-10-20 11:12:00', 27),
(31, 6, '2024-10-01 11:12:18', 1),
(32, 6, '2024-10-11 05:12:31', 13),
(33, 6, '2024-10-17 13:12:47', 22),
(34, 9, '2024-10-01 13:14:01', 1000),
(35, 9, '2024-10-04 14:14:16', 1500),
(36, 9, '2024-10-09 00:14:27', 888),
(37, 10, '2024-10-08 15:14:44', 14000),
(38, 10, '2024-10-11 10:15:01', 800),
(39, 10, '2024-10-25 18:15:18', 33),
(40, 13, '2024-10-01 11:49:46', 500),
(41, 13, '2024-10-09 14:50:03', 30),
(42, 13, '2024-10-21 21:50:20', 500);

-- --------------------------------------------------------

--
-- Структура таблицы `summ rashoda`
--

CREATE TABLE `summ rashoda` (
  `Id` int(11) NOT NULL COMMENT 'Номер операции в базе данных',
  `id schet` int(11) NOT NULL COMMENT 'Id счета, с валютой',
  `date,and time` datetime NOT NULL COMMENT 'Дата и время',
  `summa rashoda` int(11) NOT NULL COMMENT 'сумма расхода'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `summ rashoda`
--

INSERT INTO `summ rashoda` (`Id`, `id schet`, `date,and time`, `summa rashoda`) VALUES
(1, 1, '2024-10-03 11:16:15', 69),
(2, 1, '2024-10-04 13:16:37', 10000),
(3, 1, '2024-10-08 15:16:56', 329),
(4, 2, '2024-10-01 14:17:12', 234),
(5, 2, '2024-10-09 18:17:24', 1234),
(6, 2, '2024-10-12 14:17:38', 4323),
(7, 3, '2024-10-09 12:17:54', 365),
(8, 3, '2024-10-12 15:25:36', 4000),
(9, 3, '2024-10-14 15:25:49', 500),
(10, 5, '2024-10-02 12:26:13', 4000),
(11, 5, '2024-10-03 11:26:32', 600),
(12, 5, '2024-10-14 10:27:17', 300),
(13, 7, '2024-10-03 16:27:31', 6700),
(14, 7, '2024-10-17 14:27:45', 543),
(15, 7, '2024-10-07 08:27:57', 10),
(16, 11, '2024-10-04 18:28:13', 4232),
(17, 11, '2024-10-18 19:28:28', 5000),
(18, 11, '2024-10-14 16:28:52', 1234),
(19, 8, '2024-10-10 21:29:28', 400),
(20, 8, '2024-10-16 06:29:43', 70),
(21, 8, '2024-10-24 14:30:01', 432),
(22, 12, '2024-10-02 13:30:14', 1413),
(23, 12, '2024-10-18 14:30:23', 41355),
(24, 12, '2024-10-13 15:30:35', 533),
(25, 4, '2024-10-04 07:30:48', 39),
(26, 4, '2024-10-08 13:33:51', 10),
(27, 4, '2024-10-20 14:34:06', 14),
(28, 6, '2024-10-22 13:34:20', 532),
(29, 6, '2024-10-07 15:34:33', 43),
(30, 6, '2024-10-11 11:34:45', 2),
(31, 9, '2024-10-17 13:35:02', 43),
(32, 9, '2024-10-15 13:35:18', 90),
(33, 9, '2024-10-18 10:35:44', 3),
(34, 10, '2024-10-08 14:35:59', 33),
(35, 10, '2024-10-19 16:36:13', 500),
(36, 10, '2024-10-22 15:36:28', 4332),
(37, 13, '2024-10-01 10:50:34', 20),
(38, 13, '2024-10-11 14:50:44', 300),
(39, 13, '2024-10-24 16:50:58', 1000);

-- --------------------------------------------------------

--
-- Структура таблицы `клиенты`
--

CREATE TABLE `клиенты` (
  `Id` int(11) NOT NULL COMMENT 'id ФИО',
  `Name` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ФИО'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `клиенты`
--

INSERT INTO `клиенты` (`Id`, `Name`) VALUES
(1, 'Иванов Иван Иванович'),
(2, 'Павлов Павел Павлович'),
(3, 'Васильев Василий Васильевич'),
(4, 'Горький Василий Николаевич'),
(5, 'Добролюбов Алексей Петрович'),
(6, 'Станиславский Вячеслав Святозарович'),
(7, 'Сталин Афанасий Иванович'),
(8, 'Органайзер Михаил Яковлевич'),
(9, 'Перемычка Денис Валерьевич'),
(10, 'Коротконожка Светлана Юрьевна'),
(11, 'Приходько Анастасия Ивановна'),
(12, 'Приходько Любовь Дмитревна');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cheta`
--
ALTER TABLE `cheta`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id schet` (`Id schet`);

--
-- Индексы таблицы `summ prihoda`
--
ALTER TABLE `summ prihoda`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `id  klient` (`id  schet`) USING BTREE;

--
-- Индексы таблицы `summ rashoda`
--
ALTER TABLE `summ rashoda`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `id klienta` (`id schet`) USING BTREE;

--
-- Индексы таблицы `клиенты`
--
ALTER TABLE `клиенты`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `cheta`
--
ALTER TABLE `cheta`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Номер счета', AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `summ prihoda`
--
ALTER TABLE `summ prihoda`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id операции', AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT для таблицы `summ rashoda`
--
ALTER TABLE `summ rashoda`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Номер операции в базе данных', AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT для таблицы `клиенты`
--
ALTER TABLE `клиенты`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id ФИО', AUTO_INCREMENT=13;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `cheta`
--
ALTER TABLE `cheta`
  ADD CONSTRAINT `cheta_ibfk_1` FOREIGN KEY (`Id schet`) REFERENCES `клиенты` (`Id`);

--
-- Ограничения внешнего ключа таблицы `summ prihoda`
--
ALTER TABLE `summ prihoda`
  ADD CONSTRAINT `summ prihoda_ibfk_1` FOREIGN KEY (`id  schet`) REFERENCES `cheta` (`Id`);

--
-- Ограничения внешнего ключа таблицы `summ rashoda`
--
ALTER TABLE `summ rashoda`
  ADD CONSTRAINT `summ rashoda_ibfk_1` FOREIGN KEY (`id schet`) REFERENCES `cheta` (`Id`);

--
-- Ограничения внешнего ключа таблицы `клиенты`
--
ALTER TABLE `клиенты`
  ADD CONSTRAINT `клиенты_ibfk_1` FOREIGN KEY (`Id`) REFERENCES `cheta` (`Id schet`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
