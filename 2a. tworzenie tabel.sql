/**
* Tworzy baze danych, jeżeli nie istnieje: wyniki_ankiety. 
*
* Stosuje kodowanie: UTF-8.
* 
* Tworzy tabele, jeżeli nie istnieją:
* - słownikowe: zainteresowanie_esport, zainteresowanie_turniej, druzyny, plec;
* - normalne: gry_regularne, gry_turniejowe, wydzial, odpowiedzi;
* - przechodnie: przech_odp_gry_regularne, przech_odp_gry_turniejowe, przech_odp_zainteresowanie_esport, przech_odp_zainteresowanie_turniej, przech_odp_druzyny.
*
* Tworzy lub zmienia widoki: Gry regularne, Gry turniejowe, Zainteresowanie e-sportem, Zainteresowanie turniejem, Stan drużyn, Odpowiedzi ankietowanych
*/

-- Tworzy bazę danych.
CREATE DATABASE IF NOT EXISTS wyniki_ankiety;

-- Wybiera utworzoną baze danych do użytku.
use wyniki_ankiety;

-- Wybiera kodowanie.
SET NAMES utf8;

-- Przechowuje tytuły gier, które są grane regularnie.
CREATE TABLE IF NOT EXISTS gry_regularne (
	id_gry_regularne tinyint UNSIGNED NOT NULL AUTO_INCREMENT,
  	tytul_gry varchar(50) NOT NULL,
  	PRIMARY KEY (id_gry_regularne)
);

-- Przechowuje tytuły gier, w które ankietowani chcieliby zagrać podczas turnieju. 
CREATE TABLE IF NOT EXISTS gry_turniejowe (
	id_gry_turniejowe tinyint UNSIGNED NOT NULL AUTO_INCREMENT,
  	tytul_gry varchar(50) NOT NULL,
  	PRIMARY KEY (id_gry_turniejowe)
);

-- Przechowuje możliwe odpowiedzi na pytanie o zainteresowanie e-sportem.
CREATE TABLE IF NOT EXISTS zainteresowanie_esport (
	id_zainteresowanie_esport tinyint UNSIGNED NOT NULL AUTO_INCREMENT,
  	odpowiedz varchar(100) NOT NULL,
  	PRIMARY KEY (id_zainteresowanie_esport)
);

-- Przechowje możliwe odpowiedzi na pytanie o zainteresowanie turniejem.
CREATE TABLE IF NOT EXISTS zainteresowanie_turniej (
	id_zainteresowanie_turniej tinyint UNSIGNED NOT NULL AUTO_INCREMENT,
  	odpowiedz varchar(100) NOT NULL,
  	PRIMARY KEY (id_zainteresowanie_turniej)
);

-- Przechuwuje możliwe odpowiedzi na pytanie o stanie drużyn.
CREATE TABLE IF NOT EXISTS druzyny (
	id_druzyny int UNSIGNED NOT NULL AUTO_INCREMENT,
  	odpowiedz varchar(100) NOT NULL,
  	PRIMARY KEY (id_druzyny)
);

-- Przechowuje możliwe odpowiedzi na pytanie o płeć.
CREATE TABLE IF NOT EXISTS plec (
	id_plec tinyint UNSIGNED NOT NULL AUTO_INCREMENT,
  	plec varchar(30) NOT NULL,
  	PRIMARY KEY (id_plec)
);

-- Przechowuje udzielone odpowiedzi na pytanie o wydział.
CREATE TABLE IF NOT EXISTS wydzial (
	id_wydzial tinyint UNSIGNED NOT NULL AUTO_INCREMENT,
  	nazwa_wydzialu varchar(100) NOT NULL,
  	PRIMARY KEY (id_wydzial)
);

-- Przechowuje udzielone odpowiedzi na pytanie o płeć, wydział, wiek, chęć wzięcia udziału oraz czy ta osoba zostawiła adres e-mail.
CREATE TABLE IF NOT EXISTS odpowiedzi (
	id_odp int UNSIGNED NOT NULL AUTO_INCREMENT,
  	id_plec tinyint UNSIGNED NOT NULL,	
  	id_wydzial tinyint UNSIGNED NOT NULL,
  	wiek tinyint UNSIGNED NOT NULL,  	
  	czy_udzial tinyint NOT NULL,
    czy_mail tinyint NOT NULL,
  	PRIMARY KEY (id_odp),
    FOREIGN KEY (id_plec) REFERENCES plec(id_plec),
    FOREIGN KEY (id_wydzial) REFERENCES wydzial(id_wydzial)
);

-- Łączy udzielone odpowiedzi z wybranymi grami regularnymi.
CREATE TABLE IF NOT EXISTS przech_odp_gry_regularne (
	id_przech_odp_regularne_gry int UNSIGNED NOT NULL AUTO_INCREMENT,
  	id_odp int UNSIGNED NOT NULL,	
  	id_gry_regularne tinyint UNSIGNED NOT NULL,
  	PRIMARY KEY (id_przech_odp_regularne_gry),
    FOREIGN KEY (id_odp) REFERENCES odpowiedzi(id_odp),
    FOREIGN KEY (id_gry_regularne) REFERENCES gry_regularne(id_gry_regularne)
);

-- Łączy udzielone odpowiedzi z wybranymi grami turniejowymi.
CREATE TABLE IF NOT EXISTS przech_odp_gry_turniejowe (
	id_przech_odp_gry_turniejowe int UNSIGNED NOT NULL AUTO_INCREMENT,
  	id_odp int UNSIGNED NOT NULL,	
  	id_gry_turniejowe tinyint UNSIGNED NOT NULL,
  	PRIMARY KEY (id_przech_odp_gry_turniejowe),
    FOREIGN KEY (id_odp) REFERENCES odpowiedzi(id_odp),
    FOREIGN KEY (id_gry_turniejowe) REFERENCES gry_turniejowe(id_gry_turniejowe)
);

-- Łączy udzielone odpowiedzi z odpowiedziami zainteresowania e-sportem.
CREATE TABLE IF NOT EXISTS przech_odp_zainteresowanie_esport (
	id_przech_odp_zainteresowanie_esport int UNSIGNED NOT NULL AUTO_INCREMENT,
  	id_odp int UNSIGNED NOT NULL,	
  	id_zainteresowanie_esport tinyint UNSIGNED NOT NULL,
  	PRIMARY KEY (id_przech_odp_zainteresowanie_esport),
    FOREIGN KEY (id_odp) REFERENCES odpowiedzi(id_odp),
    FOREIGN KEY (id_zainteresowanie_esport) REFERENCES zainteresowanie_esport(id_zainteresowanie_esport)
);

-- Łączy udzielone odpowiedzi z odpowiedziami zainteresowania turniejem.
CREATE TABLE IF NOT EXISTS przech_odp_zainteresowanie_turniej (
	id_przech_odp_zainteresowanie_turniej int UNSIGNED NOT NULL AUTO_INCREMENT,
  	id_odp int UNSIGNED NOT NULL,	
  	id_zainteresowanie_turniej tinyint UNSIGNED NOT NULL,
  	PRIMARY KEY (id_przech_odp_zainteresowanie_turniej),
    FOREIGN KEY (id_odp) REFERENCES odpowiedzi(id_odp),
    FOREIGN KEY (id_zainteresowanie_turniej) REFERENCES zainteresowanie_turniej(id_zainteresowanie_turniej)
);

-- Łączy udzielone odpowiedzi z odpowiedziami o stanie drużyny.
CREATE TABLE IF NOT EXISTS przech_odp_druzyny (
	id_przech_odp_druzyny int UNSIGNED NOT NULL AUTO_INCREMENT,
  	id_odp int UNSIGNED NOT NULL,	
  	id_druzyny int UNSIGNED NOT NULL,
  	PRIMARY KEY (id_przech_odp_druzyny),
    FOREIGN KEY (id_odp) REFERENCES odpowiedzi(id_odp),
    FOREIGN KEY (id_druzyny) REFERENCES druzyny(id_druzyny)
);

-- Tworzy widok przechowujący odpowiedzi wraz z wybranymi grami regularnymi.
CREATE OR REPLACE VIEW `Gry regularne` AS
SELECT przech_odp_gry_regularne.id_odp AS "ID", gry_regularne.tytul_gry AS "Tytuł gry regularnej"
FROM przech_odp_gry_regularne
INNER JOIN gry_regularne ON przech_odp_gry_regularne.id_gry_regularne = gry_regularne.id_gry_regularne;

-- Tworzy widok przechowujący odpowiedzi wraz z wybranymi grami turniejowymi.
CREATE OR REPLACE VIEW `Gry turniejowe` AS
SELECT przech_odp_gry_turniejowe.id_odp AS "ID", gry_turniejowe.tytul_gry AS "Tytuł gry turniejowej"
FROM przech_odp_gry_turniejowe
INNER JOIN gry_turniejowe ON przech_odp_gry_turniejowe.id_gry_turniejowe = gry_turniejowe.id_gry_turniejowe;

-- Tworzy widok przechowujący odpowiedzi i zainteresowanie e-sportem.
CREATE OR REPLACE VIEW `Zainteresowanie e-sportem` AS
SELECT przech_odp_zainteresowanie_esport.id_odp AS "ID", zainteresowanie_esport.odpowiedz AS "Zainteresowanie e-sportem"
FROM przech_odp_zainteresowanie_esport
INNER JOIN zainteresowanie_esport ON przech_odp_zainteresowanie_esport.id_zainteresowanie_esport = zainteresowanie_esport.id_zainteresowanie_esport;

-- Tworzy widok przechowujący odpowiedzi i zainteresowanie turniejem.
CREATE OR REPLACE VIEW `Zainteresowanie turniejem` AS
SELECT przech_odp_zainteresowanie_turniej.id_odp AS "ID", zainteresowanie_turniej.odpowiedz AS "Zainteresowanie turniejem"
FROM przech_odp_zainteresowanie_turniej
INNER JOIN zainteresowanie_turniej ON przech_odp_zainteresowanie_turniej.id_zainteresowanie_turniej = zainteresowanie_turniej.id_zainteresowanie_turniej;

-- Tworzy widok przechowujący odpowiedzi wraz ze stanem drużyn.
CREATE OR REPLACE VIEW `Stan drużyn` AS
SELECT przech_odp_druzyny.id_odp AS "ID", druzyny.odpowiedz AS "Stan drużyny"
FROM przech_odp_druzyny
INNER JOIN druzyny ON przech_odp_druzyny.id_druzyny = druzyny.id_druzyny;

-- Tworzy widok przechowujący odpowiedzi na pytanie o płeć, wydział, wiek, chęć wzięcia udziału oraz czy ta osoba zostawiła adres e-mail.
CREATE OR REPLACE VIEW `Odpowiedzi ankietowanych` AS
SELECT odpowiedzi.id_odp AS "ID", plec.plec AS "Płeć", wydzial.nazwa_wydzialu AS "Wydział", odpowiedzi.wiek AS "Wiek", odpowiedzi.czy_udzial AS "Czy bierze udział", odpowiedzi.czy_mail AS "Czy zostawił maila"
FROM ((odpowiedzi
INNER JOIN plec ON odpowiedzi.id_plec = plec.id_plec)
INNER JOIN wydzial ON odpowiedzi.id_wydzial = wydzial.id_wydzial);