/**
* Tworzy tabele:
* - słownikowe: zainteresowanie_esport, zainteresowanie_turniej, druzyny, plec;
* - normalne: gry_regularne, gry_turniejowe, wydzial, odpowiedzi;
* - przechodnie: przech_odp_gry_regularne, przech_odp_gry_turniejowe, przech_odp_zainteresowanie_esport, przech_odp_zainteresowanie_turniej, przech_odp_druzyny.
*/

-- Przechowuje tytuły gier, które są grane regularnie.
CREATE TABLE gry_regularne (
	id_gry_regularne tinyint UNSIGNED NOT NULL AUTO_INCREMENT,
  	tytul_gry varchar(50) NOT NULL,
  	PRIMARY KEY (id_gry_regularne)
);

-- Przechowuje tytuły gier, w które ankietowani chcieliby zagrać podczas turnieju. 
CREATE TABLE gry_turniejowe (
	id_gry_turniejowe tinyint UNSIGNED NOT NULL AUTO_INCREMENT,
  	tytul_gry varchar(50) NOT NULL,
  	PRIMARY KEY (id_gry_turniejowe)
);

-- Przechowuje możliwe odpowiedzi na pytanie o zainteresowanie e-sportem.
CREATE TABLE zainteresowanie_esport (
	id_zainteresowanie_esport tinyint UNSIGNED NOT NULL AUTO_INCREMENT,
  	odpowiedz varchar(100) NOT NULL,
  	PRIMARY KEY (id_zainteresowanie_esport)
);

-- Przechowje możliwe odpowiedzi na pytanie o zainteresowanie turniejem.
CREATE TABLE zainteresowanie_turniej (
	id_zainteresowanie_turniej tinyint UNSIGNED NOT NULL AUTO_INCREMENT,
  	odpowiedz varchar(100) NOT NULL,
  	PRIMARY KEY (id_zainteresowanie_turniej)
);

-- Przechuwuje możliwe odpowiedzi na pytanie o stanie drużyn.
CREATE TABLE druzyny (
	id_druzyny int UNSIGNED NOT NULL AUTO_INCREMENT,
  	odpowiedz varchar(100) NOT NULL,
  	PRIMARY KEY (id_druzyny)
);

-- Przechowuje możliwe odpowiedzi na pytanie o płeć.
CREATE TABLE plec (
	id_plec tinyint UNSIGNED NOT NULL AUTO_INCREMENT,
  	plec varchar(30) NOT NULL,
  	PRIMARY KEY (id_plec)
);

-- Przechowuje udzielone odpowiedzi na pytanie o wydział.
CREATE TABLE wydzial (
	id_wydzial tinyint UNSIGNED NOT NULL AUTO_INCREMENT,
  	nazwa_wydzialu varchar(100) NOT NULL,
  	PRIMARY KEY (id_wydzial)
);

-- Przechowuje udzielone odpowiedzi na pytanie o płeć, wydział, wiek, chęć wzięcia udziału oraz czy ta osoba zostawiła adres e-mail.
CREATE TABLE odpowiedzi (
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

--
CREATE TABLE przech_odp_gry_regularne (
	id_przech_odp_regularne_gry int UNSIGNED NOT NULL AUTO_INCREMENT,
  	id_odp int UNSIGNED NOT NULL,	
  	id_gry_regularne tinyint UNSIGNED NOT NULL,
  	PRIMARY KEY (id_przech_odp_regularne_gry),
    FOREIGN KEY (id_odp) REFERENCES odpowiedzi(id_odp),
    FOREIGN KEY (id_gry_regularne) REFERENCES gry_regularne(id_gry_regularne)
);

--
CREATE TABLE przech_odp_gry_turniejowe (
	id_przech_odp_gry_turniejowe int UNSIGNED NOT NULL AUTO_INCREMENT,
  	id_odp int UNSIGNED NOT NULL,	
  	id_gry_turniejowe tinyint UNSIGNED NOT NULL,
  	PRIMARY KEY (id_przech_odp_gry_turniejowe),
    FOREIGN KEY (id_odp) REFERENCES odpowiedzi(id_odp),
    FOREIGN KEY (id_gry_turniejowe) REFERENCES gry_turniejowe(id_gry_turniejowe)
);

-- 
CREATE TABLE przech_odp_zainteresowanie_esport (
	id_przech_odp_zainteresowanie_esport int UNSIGNED NOT NULL AUTO_INCREMENT,
  	id_odp int UNSIGNED NOT NULL,	
  	id_zainteresowanie_esport tinyint UNSIGNED NOT NULL,
  	PRIMARY KEY (id_przech_odp_zainteresowanie_esport),
    FOREIGN KEY (id_odp) REFERENCES odpowiedzi(id_odp),
    FOREIGN KEY (id_zainteresowanie_esport) REFERENCES zainteresowanie_esport(id_zainteresowanie_esport)
);

--
CREATE TABLE przech_odp_zainteresowanie_turniej (
	id_przech_odp_zainteresowanie_turniej int UNSIGNED NOT NULL AUTO_INCREMENT,
  	id_odp int UNSIGNED NOT NULL,	
  	id_zainteresowanie_turniej tinyint UNSIGNED NOT NULL,
  	PRIMARY KEY (id_przech_odp_zainteresowanie_turniej),
    FOREIGN KEY (id_odp) REFERENCES odpowiedzi(id_odp),
    FOREIGN KEY (id_zainteresowanie_turniej) REFERENCES zainteresowanie_turniej(id_zainteresowanie_turniej)
);

--
CREATE TABLE przech_odp_druzyny (
	id_przech_odp_druzyny int UNSIGNED NOT NULL AUTO_INCREMENT,
  	id_odp int UNSIGNED NOT NULL,	
  	id_druzyny int UNSIGNED NOT NULL,
  	PRIMARY KEY (id_przech_odp_druzyny),
    FOREIGN KEY (id_odp) REFERENCES odpowiedzi(id_odp),
    FOREIGN KEY (id_druzyny) REFERENCES druzyny(id_druzyny)
);