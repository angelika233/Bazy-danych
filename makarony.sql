CREATE DATABASE makarony; 
CREATE TABLE produkty(Nazwa_produktu varchar(30) PRIMARY KEY, Cena_netto int(4) NOT NULL ,Cena_brutto int(4) NOT NULL); 
CREATE TABLE dostawcy(Nazwa_dostawcy varchar(30) PRIMARY KEY, Miasto varchar(10) NOT NULL, Kod_pocztowy varchar(6) NOT NULL, Ulica varchar(50) NOT NULL, Numer varchar(8) NOT NULL); 
CREATE TABLE zamowienie(Id_zamowienia int(2) PRIMARY KEY, Nazwa_produktu varchar(30) NOT NULL,Nazwa_dostawcy varchar(30) NOT NULL);

ALTER TABLE zamowienia ADD FOREIGN KEY (Nazwa_produktu) REFERENCES produkty(Nazwa_produktu);
ALTER TABLE zamowienia ADD FOREIGN KEY (Nazwa_dostawcy) REFERENCES dostawcy(Nazwa_dostawcy);

INSERT INTO produkty VALUES('Makaron Nitki',130,150 );
INSERT INTO produkty VALUES('Keczup pikanty',200,220 );
INSERT INTO produkty VALUES('Sos pomidorowy',89,110 );


INSERT INTO dostawcy VALUES('Makarony Polskie', 'Kraków','31-435','Turystyczna','40');
INSERT INTO dostawcy VALUES('Lubelski Makaron','Lublin','04-242','Piłsudskiego','332a');
INSERT INTO dostawcy VALUES('Polskie przetwory','Kraków','31-342','Wojska Polskiego','44a');
INSERT INTO dostawcy VALUES('Przetwory pomidorowe','Tarnów','30-243','Rolnicza','22/4');
INSERT INTO dostawcy VALUES('Małopolskie smaki', 'Nowy Targ','35-434','Mickiewicza','223/7');

INSERT INTO zamowienia VALUES(1, 'Makaron Nitki', 'Makarony Polskie');
INSERT INTO zamowienia VALUES(2, 'Makaron Nitki', 'Lubelski Makaron');
INSERT INTO zamowienia VALUES(3, 'Keczup pikanty', 'Przetwory Polskie');
INSERT INTO zamowienia VALUES(4, 'Keczup pikanty', 'Przetwory pomidorowe');
INSERT INTO zamowienia VALUES(5, 'Sos pomidorowy', 'Przetwory pomidorowe');
INSERT INTO zamowienia VALUES(6, 'Sos pomidorowy', 'Małopolskie smaki');



