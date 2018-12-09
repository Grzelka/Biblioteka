-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Czas generowania: 08 Gru 2018, 00:58
-- Wersja serwera: 10.1.26-MariaDB
-- Wersja PHP: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `biblioteka`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL COMMENT 'Klucz główny przydzielony automatycznie',
  `login` varchar(50) COLLATE utf8_polish_ci NOT NULL COMMENT 'Nazwa administratora potrzebna przy logowaniu',
  `haslo` varchar(50) COLLATE utf8_polish_ci NOT NULL COMMENT 'Hasło niezaszyfrowane'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci COMMENT='Posiada informacje o administratorach zarejestrowanych w programie.';

--
-- Zrzut danych tabeli `admin`
--

INSERT INTO `admin` (`id_admin`, `login`, `haslo`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `bibliotekarz`
--

CREATE TABLE `bibliotekarz` (
  `id_bibliotekarz` int(11) NOT NULL COMMENT 'Klucz główny przydzielony automatycznie',
  `login` varchar(50) COLLATE utf8_polish_ci NOT NULL COMMENT 'Nazwa bibliotekarza potrzebna przy logowaniu',
  `haslo` varchar(50) COLLATE utf8_polish_ci NOT NULL COMMENT 'Hasło niezaszyfrowane'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci COMMENT='Posiada informacje o bibliotekarzach zarejestrowanych w programie.';

--
-- Zrzut danych tabeli `bibliotekarz`
--

INSERT INTO `bibliotekarz` (`id_bibliotekarz`, `login`, `haslo`) VALUES
(1, 'bibliotekarz', 'bibliotekarz');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `bibliotekarze`
--

CREATE TABLE `bibliotekarze` (
  `id_bibliotekarz` int(11) NOT NULL,
  `bibliotekarz_imie` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `bibliotekarz_nazwisko` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `bibliotekarz_ulica` varchar(100) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `bibliotekarz_miasto` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `bibliotekarz_kod` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `bibliotekarz_email` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `bibliotekarz_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `bibliotekarze`
--

INSERT INTO `bibliotekarze` (`id_bibliotekarz`, `bibliotekarz_imie`, `bibliotekarz_nazwisko`, `bibliotekarz_ulica`, `bibliotekarz_miasto`, `bibliotekarz_kod`, `bibliotekarz_email`, `bibliotekarz_id`) VALUES
(1, 'Anna', 'Hałasz', 'Zielona 12/3', 'Londek Zdrój', '63-125', 'anna_halasz@biblioteka.pl', 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `czytelnik`
--

CREATE TABLE `czytelnik` (
  `id_czytelnik` int(11) NOT NULL COMMENT 'Klucz główny przydzielony automatycznie',
  `login` varchar(50) COLLATE utf8_polish_ci NOT NULL COMMENT 'Nazwa czytelnika potrzeba przy logowaniu.',
  `haslo` varchar(45) COLLATE utf8_polish_ci NOT NULL COMMENT 'Hasło niezaszyfrowane',
  `imie_czytelnik` varchar(100) COLLATE utf8_polish_ci NOT NULL COMMENT 'Imię ',
  `nazwisko_czytelnik` varchar(100) COLLATE utf8_polish_ci NOT NULL COMMENT 'Nazwisko',
  `adres_czytelnik` varchar(200) COLLATE utf8_polish_ci NOT NULL COMMENT 'Adres zamieszkania np.: ul. Przykład 3/12',
  `miasto_czytelnik` varchar(45) COLLATE utf8_polish_ci NOT NULL COMMENT 'Miasto',
  `wojewodztwo_czytelnik` varchar(100) COLLATE utf8_polish_ci NOT NULL COMMENT 'Nazwa województwa',
  `telefon_czytelnik` varchar(50) COLLATE utf8_polish_ci DEFAULT NULL COMMENT 'Telefony',
  `kod_pocztowy_czytelnik` varchar(45) COLLATE utf8_polish_ci NOT NULL COMMENT 'Kod pocztowy',
  `email_czytelnik` varchar(100) COLLATE utf8_polish_ci NOT NULL COMMENT 'Adres e-mail'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci COMMENT='Posiada informacje o czytelnikach zarejestrowanych w programie.';

--
-- Zrzut danych tabeli `czytelnik`
--

INSERT INTO `czytelnik` (`id_czytelnik`, `login`, `haslo`, `imie_czytelnik`, `nazwisko_czytelnik`, `adres_czytelnik`, `miasto_czytelnik`, `wojewodztwo_czytelnik`, `telefon_czytelnik`, `kod_pocztowy_czytelnik`, `email_czytelnik`) VALUES
(1, 'czytelnik_1', 'hasło_czytelnika', 'Piotr', 'Klimek', 'ul. Przykład 4/ 12', 'Lublin', 'Lubelskie', NULL, '20-998', 'przyklad_1@wiedzanaplus.pl'),
(2, 'czytelnik_2', 'hasło_czytelnika', 'Patryk', 'Klimek', 'ul. Przykład 10/300', 'Lublin', 'Lubelskie', NULL, '20-999', 'przyklad_2@wiedzanaplus.pl'),
(7, 'user', '', 'Jan', 'Kowalski', 'Zielona 43/1', '', '', NULL, '', 'jan.kowalski@poczta.pl'),
(8, 'user2', '', 'AdaÅ›', 'Niezg&oacute;dka', 'Kawowa 21/7', '', '', NULL, '', 'adas.niezgodka@poczta.pl'),
(9, 'user3', '', 'Grzegorz', 'GrÄ…gowski', 'G&oacute;rzysta 21', '', '', NULL, '', 'gg@gg.com');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kategoria`
--

CREATE TABLE `kategoria` (
  `id_kategoria` int(11) NOT NULL COMMENT 'Klucz główny przydzielony automatycznie',
  `nazwa` varchar(200) COLLATE utf8_polish_ci NOT NULL COMMENT 'Nazwa kategorii'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci COMMENT='Tabela zawierająca wszystkie kategorie książek w systemie.';

--
-- Zrzut danych tabeli `kategoria`
--

INSERT INTO `kategoria` (`id_kategoria`, `nazwa`) VALUES
(1, 'Biznes'),
(2, 'Poradniki'),
(3, 'Programowanie'),
(4, 'Programowanie mobilne'),
(5, 'Webmasterstwo'),
(6, 'Systemy operacyjne');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ksiazka`
--

CREATE TABLE `ksiazka` (
  `id_ksiazka` int(11) NOT NULL COMMENT 'Klucz główny przydzielony automatycznie',
  `id_kategoria` int(11) NOT NULL COMMENT 'Klucz obcy z tabeli kategoria',
  `isbn` varchar(13) COLLATE utf8_polish_ci NOT NULL COMMENT 'Niepowtarzalny 13-cyfrowy identyfikator książki',
  `tytul` varchar(200) COLLATE utf8_polish_ci NOT NULL COMMENT 'Tytuł książki',
  `autor` varchar(70) COLLATE utf8_polish_ci NOT NULL COMMENT 'Imię i Nazwisko autora książki',
  `stron` int(4) NOT NULL COMMENT 'Liczba stron książki',
  `wydawnictwo` varchar(50) COLLATE utf8_polish_ci NOT NULL COMMENT 'Nazwa wydawnictwa, w którym wydano książkę',
  `rok_wydania` int(4) NOT NULL COMMENT 'Rok wydania książki',
  `opis` text COLLATE utf8_polish_ci COMMENT 'Opis książki'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci COMMENT='Wszystkie książki dodane do bazy danych.';

--
-- Zrzut danych tabeli `ksiazka`
--

INSERT INTO `ksiazka` (`id_ksiazka`, `id_kategoria`, `isbn`, `tytul`, `autor`, `stron`, `wydawnictwo`, `rok_wydania`, `opis`) VALUES
(1, 3, '9788324631773', 'PHP i MySQL. Tworzenie stron WWW. Vademecum profesjonalisty. Wydanie czwarte', 'Luke Welling, Laura Thomson', 856, 'Helion', 2009, 'Czwarte wydanie bestsellerowego podręcznika dla webmasterów wykorzystujących w swojej pracy funkcjonalność języka PHP i bazy danych MySQL.'),
(2, 3, '9788324685301', 'Język C++. Kompendium wiedzy', 'Bjarne Stroustrup', 1296, 'Helion', 2014, NULL),
(3, 3, '9788324675340', 'Mistrz czystego kodu. Kodeks postępowania profesjonalnych programistów', 'Robert C. Martin', 216, 'Helion', 2013, NULL),
(4, 6, '9788324690138', 'Kali Linux. Testy penetracyjne', 'Joseph Muniz, Aamir Lakhani', 336, 'Helion', 2014, NULL),
(5, 3, '9788324621880', 'Czysty kod. Podręcznik dobrego programisty', 'Robert C. Martin', 424, 'Helion', 2010, NULL),
(6, 3, '9788324632374', 'Pragmatyczny programista. Od czeladnika do mistrza', 'Andrew Hunt, David Thomas', 332, 'Helion', 2011, NULL),
(7, 3, '9788324683178', 'Praca z zastanym kodem. Najlepsze techniki', 'Michael Feathers', 440, 'Helion', 2014, NULL),
(8, 5, '9788324685042', 'Tajemnice JavaScriptu. Podręcznik ninja', 'John Resig, Bear Bibeault', 432, 'Helion', 2014, NULL),
(9, 3, '9788324689361', 'Java EE 6. Tworzenie aplikacji w NetBeans 7', 'David R. Heffelfinger', 352, 'Helion', 2014, NULL),
(10, 5, '9788324666676', 'Projektowanie stron internetowych. Przewodnik dla początkujących webmasterów po HTML5, CSS3 i grafice. Wydanie IV', 'Jennifer Niederst Robbins', 600, 'Helion', 2014, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `logowanie`
--

CREATE TABLE `logowanie` (
  `id` int(11) NOT NULL,
  `login` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `password` varchar(30) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `logowanie`
--

INSERT INTO `logowanie` (`id`, `login`, `password`) VALUES
(1, 'user ', 'user'),
(2, 'bibliotekarz ', 'haslo'),
(4, 'user2 ', 'user2'),
(5, 'user3 ', 'USER3');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wypozyczenia`
--

CREATE TABLE `wypozyczenia` (
  `id_wypozyczenia` int(10) NOT NULL,
  `id_ksiazka` int(11) NOT NULL,
  `data_wypozyczenia` datetime NOT NULL,
  `data_zwrotu` datetime NOT NULL,
  `id_czytelnik` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `wypozyczenia`
--

INSERT INTO `wypozyczenia` (`id_wypozyczenia`, `id_ksiazka`, `data_wypozyczenia`, `data_zwrotu`, `id_czytelnik`) VALUES
(1, 2, '2018-11-19 10:10:08', '2018-12-19 09:13:18', 1),
(2, 8, '2018-11-19 10:10:08', '2018-11-24 18:31:06', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienie`
--

CREATE TABLE `zamowienie` (
  `id_zamowienie` int(11) NOT NULL COMMENT 'Klucz główny przydzielony automatycznie',
  `id_czytelnik` int(11) NOT NULL COMMENT 'Klucz obcy z tabeli czytelnik',
  `id_ksiazka` int(11) NOT NULL COMMENT 'Klucz obcy z tabeli ksiazka',
  `data_zamowienia` datetime NOT NULL COMMENT 'Data złożenia zamówienia w bibliotece',
  `data_odbioru` datetime DEFAULT NULL COMMENT 'Data odbioru książki z biblioteki ',
  `data_zwrotu` datetime DEFAULT NULL COMMENT 'Data zwrotu książki do biblioteki'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci COMMENT='Posiada informacje o zamówionych, wypożyczonych czy oddanych książkach w bibliotece.';

--
-- Zrzut danych tabeli `zamowienie`
--

INSERT INTO `zamowienie` (`id_zamowienie`, `id_czytelnik`, `id_ksiazka`, `data_zamowienia`, `data_odbioru`, `data_zwrotu`) VALUES
(1, 1, 1, '2014-08-01 10:12:02', NULL, NULL),
(2, 1, 2, '2014-08-01 10:12:02', '2014-08-03 12:10:10', NULL),
(3, 1, 5, '2014-08-01 10:13:02', '2014-08-03 12:11:10', '2014-08-15 12:00:00'),
(4, 2, 3, '2014-08-02 12:00:02', NULL, NULL),
(5, 2, 4, '2014-08-03 09:12:02', '2014-08-05 15:20:00', NULL),
(24, 1, 7, '2018-11-25 00:31:00', NULL, NULL);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `bibliotekarz`
--
ALTER TABLE `bibliotekarz`
  ADD PRIMARY KEY (`id_bibliotekarz`);

--
-- Indexes for table `bibliotekarze`
--
ALTER TABLE `bibliotekarze`
  ADD PRIMARY KEY (`id_bibliotekarz`);

--
-- Indexes for table `czytelnik`
--
ALTER TABLE `czytelnik`
  ADD PRIMARY KEY (`id_czytelnik`);

--
-- Indexes for table `kategoria`
--
ALTER TABLE `kategoria`
  ADD PRIMARY KEY (`id_kategoria`);

--
-- Indexes for table `ksiazka`
--
ALTER TABLE `ksiazka`
  ADD PRIMARY KEY (`id_ksiazka`),
  ADD KEY `fk_ksiazka_kategoria1_idx` (`id_kategoria`);

--
-- Indexes for table `logowanie`
--
ALTER TABLE `logowanie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wypozyczenia`
--
ALTER TABLE `wypozyczenia`
  ADD PRIMARY KEY (`id_wypozyczenia`),
  ADD KEY `id_ksiazka` (`id_ksiazka`),
  ADD KEY `id_czytelnik` (`id_czytelnik`);

--
-- Indexes for table `zamowienie`
--
ALTER TABLE `zamowienie`
  ADD PRIMARY KEY (`id_zamowienie`),
  ADD KEY `fk_zamowienie_czytelnik1_idx` (`id_czytelnik`),
  ADD KEY `fk_zamowienie_ksiazka1_idx` (`id_ksiazka`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Klucz główny przydzielony automatycznie', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `bibliotekarz`
--
ALTER TABLE `bibliotekarz`
  MODIFY `id_bibliotekarz` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Klucz główny przydzielony automatycznie', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `bibliotekarze`
--
ALTER TABLE `bibliotekarze`
  MODIFY `id_bibliotekarz` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `czytelnik`
--
ALTER TABLE `czytelnik`
  MODIFY `id_czytelnik` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Klucz główny przydzielony automatycznie', AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT dla tabeli `kategoria`
--
ALTER TABLE `kategoria`
  MODIFY `id_kategoria` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Klucz główny przydzielony automatycznie', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `ksiazka`
--
ALTER TABLE `ksiazka`
  MODIFY `id_ksiazka` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Klucz główny przydzielony automatycznie', AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `logowanie`
--
ALTER TABLE `logowanie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `wypozyczenia`
--
ALTER TABLE `wypozyczenia`
  MODIFY `id_wypozyczenia` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `zamowienie`
--
ALTER TABLE `zamowienie`
  MODIFY `id_zamowienie` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Klucz główny przydzielony automatycznie', AUTO_INCREMENT=25;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `ksiazka`
--
ALTER TABLE `ksiazka`
  ADD CONSTRAINT `fk_ksiazka_kategoria1` FOREIGN KEY (`id_kategoria`) REFERENCES `kategoria` (`id_kategoria`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `wypozyczenia`
--
ALTER TABLE `wypozyczenia`
  ADD CONSTRAINT `wypozyczenia_ibfk_1` FOREIGN KEY (`id_ksiazka`) REFERENCES `ksiazka` (`id_ksiazka`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wypozyczenia_ibfk_2` FOREIGN KEY (`id_czytelnik`) REFERENCES `czytelnik` (`id_czytelnik`);

--
-- Ograniczenia dla tabeli `zamowienie`
--
ALTER TABLE `zamowienie`
  ADD CONSTRAINT `fk_zamowienie_czytelnik1` FOREIGN KEY (`id_czytelnik`) REFERENCES `czytelnik` (`id_czytelnik`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_zamowienie_ksiazka1` FOREIGN KEY (`id_ksiazka`) REFERENCES `ksiazka` (`id_ksiazka`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
