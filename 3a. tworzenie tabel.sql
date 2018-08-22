CREATE TABLE gry_regularne (
	id_gry_regularne int UNSIGNED NOT NULL AUTO_INCREMENT,
  	nazwa_gry varchar(255) NOT NULL,
  	PRIMARY KEY (id_gry_regularne)
);

CREATE TABLE zainteresowanie_esport (
	id_zainteresowanie_esport tinyint UNSIGNED NOT NULL AUTO_INCREMENT,
  	odpowiedz varchar(255) NOT NULL,
  	PRIMARY KEY (id_zainteresowanie_esport)
);

CREATE TABLE zainteresowanie_turniej (
	id_zainteresowanie_turniej tinyint UNSIGNED NOT NULL AUTO_INCREMENT,
  	odpowiedz varchar(255) NOT NULL,
  	PRIMARY KEY (id_zainteresowanie_turniej)
);


CREATE TABLE druzyny (
	id_druzyny tinyint UNSIGNED NOT NULL AUTO_INCREMENT,
  	odpowiedz varchar(255) NOT NULL,
  	PRIMARY KEY (id_druzyny)
);

CREATE TABLE plec (
	id_plec tinyint UNSIGNED NOT NULL AUTO_INCREMENT,
  	plec varchar(255) NOT NULL,
  	PRIMARY KEY (id_plec)
);

CREATE TABLE gry_turniejowe (
	id_gry_turniejowe int UNSIGNED NOT NULL AUTO_INCREMENT,
  	nazwa_gry varchar(255) NOT NULL,
  	PRIMARY KEY (id_gry_turniejowe)
);

CREATE TABLE wydzial (
	id_wydzial int UNSIGNED NOT NULL AUTO_INCREMENT,
  	nazwa_wydzialu varchar(255) NOT NULL,
  	PRIMARY KEY (id_wydzial)
);

CREATE TABLE odpowiedzi (
	id_odp int UNSIGNED NOT NULL AUTO_INCREMENT,
  	id_plec tinyint UNSIGNED NOT NULL,	
  	id_wydzial int UNSIGNED NOT NULL,
  	czy_udzial bool NOT NULL,
  	wiek int UNSIGNED NOT NULL,  	
    czy_mail bool NOT NULL,
  	PRIMARY KEY (id_odp),
    FOREIGN KEY (id_plec) REFERENCES plec(id_plec),
    FOREIGN KEY (id_wydzial) REFERENCES wydzial(id_wydzial)
);

CREATE TABLE przech_odp_gry_regularne (
	id_przech_odp_regularne_gry int UNSIGNED NOT NULL AUTO_INCREMENT,
  	id_odp int UNSIGNED NOT NULL,	
  	id_gry_regularne int UNSIGNED NOT NULL,
  	PRIMARY KEY (id_przech_odp_regularne_gry),
    FOREIGN KEY (id_odp) REFERENCES odpowiedzi(id_odp),
    FOREIGN KEY (id_gry_regularne) REFERENCES gry_regularne(id_gry_regularne)
);

CREATE TABLE przech_odp_zainteresowanie_esport (
	id_przech_odp_zainteresowanie_esport int UNSIGNED NOT NULL AUTO_INCREMENT,
  	id_odp int UNSIGNED NOT NULL,	
  	id_zainteresowanie_esport tinyint UNSIGNED NOT NULL,
  	PRIMARY KEY (id_przech_odp_zainteresowanie_esport),
    FOREIGN KEY (id_odp) REFERENCES odpowiedzi(id_odp),
    FOREIGN KEY (id_zainteresowanie_esport) REFERENCES zainteresowanie_esport(id_zainteresowanie_esport)
);

CREATE TABLE przech_odp_zainteresowanie_turniej (
	id_przech_odp_zainteresowanie_turniej int UNSIGNED NOT NULL AUTO_INCREMENT,
  	id_odp int UNSIGNED NOT NULL,	
  	id_zainteresowanie_turniej tinyint UNSIGNED NOT NULL,
  	PRIMARY KEY (id_przech_odp_zainteresowanie_turniej),
    FOREIGN KEY (id_odp) REFERENCES odpowiedzi(id_odp),
    FOREIGN KEY (id_zainteresowanie_turniej) REFERENCES zainteresowanie_turniej(id_zainteresowanie_turniej)
);

CREATE TABLE przech_odp_gry_turniejowe (
	id_przech_odp_gry_turniejowe int UNSIGNED NOT NULL AUTO_INCREMENT,
  	id_odp int UNSIGNED NOT NULL,	
  	id_gry_turniejowe int UNSIGNED NOT NULL,
  	PRIMARY KEY (id_przech_odp_gry_turniejowe),
    FOREIGN KEY (id_odp) REFERENCES odpowiedzi(id_odp),
    FOREIGN KEY (id_gry_turniejowe) REFERENCES gry_turniejowe(id_gry_turniejowe)
);

CREATE TABLE przech_odp_druzyny (
	id_przech_odp_druzyny int UNSIGNED NOT NULL AUTO_INCREMENT,
  	id_odp int UNSIGNED NOT NULL,	
  	id_druzyny tinyint UNSIGNED NOT NULL,
  	PRIMARY KEY (id_przech_odp_druzyny),
    FOREIGN KEY (id_odp) REFERENCES odpowiedzi(id_odp),
    FOREIGN KEY (id_druzyny) REFERENCES druzyny(id_druzyny)
);