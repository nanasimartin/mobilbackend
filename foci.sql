-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Feb 09. 18:31
-- Kiszolgáló verziója: 10.4.17-MariaDB
-- PHP verzió: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `foci`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `beerkezett`
--

CREATE TABLE `beerkezett` (
  `beerkezett_id` int(11) NOT NULL,
  `beerkezett_valasz1` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `beerkezett_valasz2` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `beerkezett_valasz3` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `beerkezett_valasz4` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `beerkezett_valasz5` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `beerkezett_valasz6` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `beerkezett_valasz7` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `beerkezett_valasz8` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `beerkezett_valasz9` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `beerkezett_valasz10` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `beerkezett_nev` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `beerkezett_datum` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `beerkezett`
--

INSERT INTO `beerkezett` (`beerkezett_id`, `beerkezett_valasz1`, `beerkezett_valasz2`, `beerkezett_valasz3`, `beerkezett_valasz4`, `beerkezett_valasz5`, `beerkezett_valasz6`, `beerkezett_valasz7`, `beerkezett_valasz8`, `beerkezett_valasz9`, `beerkezett_valasz10`, `beerkezett_nev`, `beerkezett_datum`) VALUES
(1, 'Argentina', 'Erling Braut Haland', 'Liverpool FC', 'Adama Traore', 'Dzsudzsák Balázs', 'Ukrajna', 'Puskás Ferenc', 'Ukrajna', '', '', 'István', '2022-01-16'),
(19, '1', '4', '4', '2', '1', '3', '3', '2', '', '', 'Istvan', '2022-01-17'),
(20, '1', '2', '1', '2', '2', '4', '1', '2', '', '', 'undefined', '2022-01-17'),
(21, '1', '2', '4', '4', '4', '1', '4', '1', '', '', 'istvan ', '2022-01-17'),
(22, '1', '2', '4', '1', '3', '2', '1', '4', '4', '1', 'isu', '2022-01-18'),
(23, '4', '3', '4', '4', '3', '2', '1', '2', '4', '1', 'isuk', '2022-01-18'),
(24, '1', '4', '3', '4', '3', '1', '2', '3', '2', '3', 'Isuuuu', '2022-01-20');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kerdesek`
--

CREATE TABLE `kerdesek` (
  `kerdesek_id` int(11) NOT NULL,
  `kerdesek_kerdes` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `kerdesek_kep` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `kerdesek_valasz1` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `kerdesek_valasz2` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `kerdesek_valasz3` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `kerdesek_valasz4` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `kerdesek_helyes` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `kerdesek_helyesid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `kerdesek`
--

INSERT INTO `kerdesek` (`kerdesek_id`, `kerdesek_kerdes`, `kerdesek_kep`, `kerdesek_valasz1`, `kerdesek_valasz2`, `kerdesek_valasz3`, `kerdesek_valasz4`, `kerdesek_helyes`, `kerdesek_helyesid`) VALUES
(1, 'Ki nyerte az idei copa americat?', '4.jpg', 'Argentina', 'Brazilia', 'Perui', 'Paraguayi', 'Argentina', 1),
(2, 'Ki látható a képen?', '1.jpg', 'Robert Lewandowski', 'Erling Braut Haland', 'Kylian Mbappé', 'Mohamed Salah', 'Mohamed Salah', 4),
(3, 'Ki nyerte a legútóbbi bajnokok ligáját?', '5.jpg', 'Liverpool FC', 'Real Madrid CF', 'Sporting CP', 'AFC Ajax', 'Real Madrid CF', 2),
(4, 'Ki a leggyorsabb labdarúgó?', '6.jpg', 'Vinicius Jr.', 'Cristiano Ronaldo', 'Alphonso Davies', 'Adama Traore', 'Alphonso Davies', 3),
(5, 'Hogy hívják ezt a focistát?', '2.jpg', 'Dzsudzsák Balázs', 'Neymar Jr.', 'Angel Di María', 'Mesut Özil', 'Dzsudzsák Balázs', 1),
(6, 'Melyik válogatott nyerte a 2016-os Európa Bajnokságot?', '7.jpg', 'Anglia', 'Magyarország', 'Ukrajna', 'Portugália', 'Portugália', 4),
(7, 'Ki a valaha volt legnagyobb Magyar futballista?', '8.jpg', 'Dzsudzsák Balázs ', 'Király Gábor', 'Grosics Gyula', 'Puskás Ferenc', 'Puskás Ferenc', 4),
(8, 'Melyik válogatott csapat látható a képen?', '3.jpg', 'Ukrajna', 'Argentina', 'Brazília', 'Chilei ', 'Ukrajna', 1),
(9, 'Hány aranylabdája van Lionel Messinek?', '9.jpg', '2', '0', '7', '9', '7', 3),
(10, 'Ki az Ukrán válogatott vezetőedzője?', '10.jpg', 'Andrij Sevcsenko', 'Oleksandr Petrakov', 'Luis Enrique', 'Marco Rossi', 'Oleksandr Petrakov', 2),
(20, 'dsaads?', 'ads', 'asdadsads', 'adsads', 'ads', 'ads', 'ads', 2);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `roles`
--

INSERT INTO `roles` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'user', '2020-08-02 14:57:31', '2020-08-02 14:57:31'),
(2, 'moderator', '2020-08-02 14:57:31', '2020-08-02 14:57:31'),
(3, 'admin', '2020-08-02 14:57:31', '2020-08-02 14:57:31');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `createdAt`, `updatedAt`) VALUES
(1, 'user', 'user', '$2a$08$gXM4pyuhZFlC72PeAwxrUOR0uA31/d2PdgnHP35JGV.0bQNiZBatS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'mod', 'mod', '$2a$08$gXM4pyuhZFlC72PeAwxrUOR0uA31/d2PdgnHP35JGV.0bQNiZBatS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'admin', 'admin', '$2a$08$97Ze1/hXfOX44WdC62Rq8uRkog9HYC1HukRX8eld2ZEKPyenM5v.G', '2020-08-02 15:03:59', '2020-08-02 15:03:59');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `user_roles`
--

CREATE TABLE `user_roles` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `roleId` int(11) NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `user_roles`
--

INSERT INTO `user_roles` (`createdAt`, `updatedAt`, `roleId`, `userId`) VALUES
('0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
('2020-08-02 15:04:00', '2020-08-02 15:04:00', 1, 3),
('0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 2),
('0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 3),
('2020-08-02 15:04:00', '2020-08-02 15:04:00', 3, 3);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `uzenet`
--

CREATE TABLE `uzenet` (
  `uzenet_id` int(11) NOT NULL,
  `uzenet_nev` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `uzenet_szoveg` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `uzenet_datum` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `uzenet`
--

INSERT INTO `uzenet` (`uzenet_id`, `uzenet_nev`, `uzenet_szoveg`, `uzenet_datum`) VALUES
(1, 'isu', 'ma nem mek gym', '2022-01-25'),
(2, 'asd', 'adsads', '2022-01-25'),
(3, 'asd', 'ads', '2022-01-25'),
(4, 'dsa', 'ads', '2022-01-25'),
(5, 'dsaasd', 'adsdas', '2022-01-25'),
(6, 'asdf', 'asf', '2022-01-26'),
(7, 'asd', 'das', '2022-02-01');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `beerkezett`
--
ALTER TABLE `beerkezett`
  ADD PRIMARY KEY (`beerkezett_id`);

--
-- A tábla indexei `kerdesek`
--
ALTER TABLE `kerdesek`
  ADD PRIMARY KEY (`kerdesek_id`);

--
-- A tábla indexei `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`roleId`,`userId`),
  ADD KEY `userId` (`userId`);

--
-- A tábla indexei `uzenet`
--
ALTER TABLE `uzenet`
  ADD PRIMARY KEY (`uzenet_id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `beerkezett`
--
ALTER TABLE `beerkezett`
  MODIFY `beerkezett_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT a táblához `kerdesek`
--
ALTER TABLE `kerdesek`
  MODIFY `kerdesek_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT a táblához `uzenet`
--
ALTER TABLE `uzenet`
  MODIFY `uzenet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
