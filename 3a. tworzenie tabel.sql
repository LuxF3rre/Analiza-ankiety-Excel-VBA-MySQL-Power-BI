CREATE TABLE gry (
	id_gry int UNSIGNED NOT NULL AUTO_INCREMENT,
  	nazwa varchar(255) NOT NULL,
  	PRIMARY KEY (id_gry)
);

CREATE TABLE esport (
	id_esport int UNSIGNED NOT NULL AUTO_INCREMENT,
  	odp varchar(255) NOT NULL,
  	PRIMARY KEY (id_esport)
);

CREATE TABLE turniej (
	id_turniej int UNSIGNED NOT NULL AUTO_INCREMENT,
  	odp varchar(255) NOT NULL,
  	PRIMARY KEY (id_turniej)
);


CREATE TABLE druzyny (
	id_druzyny int UNSIGNED NOT NULL AUTO_INCREMENT,
  	odp varchar(255) NOT NULL,
  	PRIMARY KEY (id_druzyny)
);

CREATE TABLE plec (
	id_plec int UNSIGNED NOT NULL AUTO_INCREMENT,
  	plec varchar(255) NOT NULL,
  	PRIMARY KEY (id_plec)
);

CREATE TABLE turniejowa (
	id_turniejowa int UNSIGNED NOT NULL AUTO_INCREMENT,
  	nazwa varchar(255) NOT NULL,
  	PRIMARY KEY (id_turniejowa)
);

CREATE TABLE wydzial (
	id_wydzial int UNSIGNED NOT NULL AUTO_INCREMENT,
  	nazwa varchar(255) NOT NULL,
  	PRIMARY KEY (id_wydzial)
);

CREATE TABLE odpowiedzi (
	id_odp int UNSIGNED NOT NULL AUTO_INCREMENT,
  	id_plec int UNSIGNED NOT NULL,	
  	id_wydzial int UNSIGNED NOT NULL,
  	czy_udzial bool NOT NULL,
  	wiek int UNSIGNED NOT NULL,  	
    czy_mail bool NOT NULL,
  	PRIMARY KEY (id_odp),
    FOREIGN KEY (id_plec) REFERENCES plec(id_plec),
    FOREIGN KEY (id_wydzial) REFERENCES wydzial(id_wydzial)
);

CREATE TABLE przech_odp_gry (
	id_przech_odp_gry int UNSIGNED NOT NULL AUTO_INCREMENT,
  	id_odp int UNSIGNED NOT NULL,	
  	id_gry int UNSIGNED NOT NULL,
  	PRIMARY KEY (id_przech_odp_gry),
    FOREIGN KEY (id_odp) REFERENCES odpowiedzi(id_odp),
    FOREIGN KEY (id_gry) REFERENCES gry(id_gry)
);

CREATE TABLE przech_odp_esport (
	id_przech_odp_esport int UNSIGNED NOT NULL AUTO_INCREMENT,
  	id_odp int UNSIGNED NOT NULL,	
  	id_esport int UNSIGNED NOT NULL,
  	PRIMARY KEY (id_przech_odp_esport),
    FOREIGN KEY (id_odp) REFERENCES odpowiedzi(id_odp),
    FOREIGN KEY (id_esport) REFERENCES esport(id_esport)
);

CREATE TABLE przech_odp_turniej (
	id_przech_odp_turniej int UNSIGNED NOT NULL AUTO_INCREMENT,
  	id_odp int UNSIGNED NOT NULL,	
  	id_turniej int UNSIGNED NOT NULL,
  	PRIMARY KEY (id_przech_odp_turniej),
    FOREIGN KEY (id_odp) REFERENCES odpowiedzi(id_odp),
    FOREIGN KEY (id_turniej) REFERENCES turniej(id_turniej)
);

CREATE TABLE przech_odp_turniejowa (
	id_przech_odp_turniejowa int UNSIGNED NOT NULL AUTO_INCREMENT,
  	id_odp int UNSIGNED NOT NULL,	
  	id_turniejowa int UNSIGNED NOT NULL,
  	PRIMARY KEY (id_przech_odp_turniejowa),
    FOREIGN KEY (id_odp) REFERENCES odpowiedzi(id_odp),
    FOREIGN KEY (id_turniejowa) REFERENCES turniejowa(id_turniejowa)
);

CREATE TABLE przech_odp_druzyny (
	id_przech_odp_druzyny int UNSIGNED NOT NULL AUTO_INCREMENT,
  	id_odp int UNSIGNED NOT NULL,	
  	id_druzyny int UNSIGNED NOT NULL,
  	PRIMARY KEY (id_przech_odp_druzyny),
    FOREIGN KEY (id_odp) REFERENCES odpowiedzi(id_odp),
    FOREIGN KEY (id_druzyny) REFERENCES druzyny(id_druzyny)
);