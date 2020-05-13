CREATE SCHEMA ksiegowosc 
CREATE TABLE ksiegowosc.pracownicy(  id_pracownika int PRIMARY KEY, imie VARCHAR( 15 ) ,  nazwisko varchar(40),  adres varchar(100), telefon  varchar(9));
CREATE TABLE ksiegowosc.godziny(  id_godziny int PRIMARY KEY, dat VARCHAR( 15 ) ,  liczba_godzin int ,  id_pracownika int);
CREATE TABLE ksiegowosc.pensja(  id_pensji int PRIMARY KEY, stanowisko VARCHAR( 15 ) ,  kwota float  );
CREATE TABLE ksiegowosc.premia(  id_premii int PRIMARY KEY, rodzaj VARCHAR( 35 ) ,  kwota float  );
CREATE TABLE ksiegowosc.wynagrodzenia(  id_wynagrodzenia int PRIMARY KEY, dat VARCHAR( 15 ) , id_pracownika int, id_godziny int, id_pensji int, id_premii int );

ALTER TABLE ksiegowosc.godziny
ADD FOREIGN KEY (id_pracownika) REFERENCES ksiegowosc.pracownicy(id_pracownika);
ALTER TABLE ksiegowosc.wynagrodzenia
ADD FOREIGN KEY (id_godziny) REFERENCES ksiegowosc.godziny(id_godziny);
ALTER TABLE ksiegowosc.wynagrodzenia
ADD FOREIGN KEY (id_premii) REFERENCES ksiegowosc.premia(id_premii);
ALTER TABLE ksiegowosc.wynagrodzenia
ADD FOREIGN KEY (id_pensji) REFERENCES ksiegowosc.pensje(id_pensji);
ALTER TABLE ksiegowosc.wynagrodzenia
ADD FOREIGN KEY (id_pracownika) REFERENCES ksiegowosc.pracownicy(id_pracownika);
ALTER TABLE ksiegowosc.wynagrodzenia
ADD FOREIGN KEY (id_godziny) REFERENCES ksiegowosc.godziny(id_godziny);

INSERT INTO ksiegowosc.pracownicy VALUES(1,'Tomasz', 'Nowak', 'Krakow', 512556512);
INSERT INTO ksiegowosc.pracownicy VALUES(2,'Jan', 'Kowalski', 'Krakow', 512512412);
INSERT INTO ksiegowosc.pracownicy VALUES(3,'Marta', 'Mazur', 'Warszawa', 567512512);
INSERT INTO ksiegowosc.pracownicy VALUES(4,'Krzysztof', 'Nowy', 'Wroclaw', 578512512);
INSERT INTO ksiegowosc.pracownicy VALUES(5,'Jacek', 'Kot', 'Wroclaw', 515198762);
INSERT INTO ksiegowosc.pracownicy VALUES(6,'Anna', 'Kowalczyk', 'Gdynia', 512326162);
INSERT INTO ksiegowosc.pracownicy VALUES(7,'Katarzyna', 'Nowakowska', 'Las', 518782512);
INSERT INTO ksiegowosc.pracownicy VALUES(8,'Kamil', 'Górski', 'Katowice', 512519992);
INSERT INTO ksiegowosc.pracownicy VALUES(9,'Teresa', 'Szklarz', 'Krakow', 533312512);
INSERT INTO ksiegowosc.pracownicy VALUES(10,'Marzena', 'Nyska', 'Krakow', 512779512);

INSERT INTO ksiegowosc.godziny VALUES(1,'11-06-2020', 7, 1);
INSERT INTO ksiegowosc.godziny VALUES(2,'11-06-2020', 7, 2);
INSERT INTO ksiegowosc.godziny VALUES(3,'11-06-2020', 7, 3);
INSERT INTO ksiegowosc.godziny VALUES(4,'11-06-2020', 7, 4);
INSERT INTO ksiegowosc.godziny VALUES(5,'11-06-2020', 8, 5);
INSERT INTO ksiegowosc.godziny VALUES(6,'12-06-2020', 7, 5);
INSERT INTO ksiegowosc.godziny VALUES(7,'13-06-2020', 8, 5);
INSERT INTO ksiegowosc.godziny VALUES(8,'12-06-2020', 7, 1);
INSERT INTO ksiegowosc.godziny VALUES(9,'13-06-2020', 8, 1);
INSERT INTO ksiegowosc.godziny VALUES(10,'14-06-2020', 7, 1);

INSERT INTO ksiegowosc.wynagrodzenia VALUES(1,'11-06-2020',4,4,6,1);
INSERT INTO ksiegowosc.wynagrodzenia VALUES(2,'12-06-2020',6,4,6,1);
INSERT INTO ksiegowosc.wynagrodzenia VALUES(3,'11-06-2020',8,3,1,1);
INSERT INTO ksiegowosc.wynagrodzenia VALUES(4,'14-06-2020',9,1,4,2);
INSERT INTO ksiegowosc.wynagrodzenia VALUES(5,'14-06-2020',5,1,4,6);
INSERT INTO ksiegowosc.wynagrodzenia VALUES(6,'11-06-2020',4,1,3,2);
INSERT INTO ksiegowosc.wynagrodzenia VALUES(7,'11-06-2020',4,9,3,6);
INSERT INTO ksiegowosc.wynagrodzenia VALUES(8,'12-06-2020',1,8,4,10);
INSERT INTO ksiegowosc.wynagrodzenia VALUES(9,'12-06-2020',1,8,4,3);
INSERT INTO ksiegowosc.wynagrodzenia VALUES(10,'12-06-2020',7,7,7,9);

INSERT INTO ksiegowosc.premia VALUES(1,'brak', 0);
INSERT INTO ksiegowosc.premia VALUES(2,'obecnosc', 100);
INSERT INTO ksiegowosc.premia VALUES(3,'punktualnosc', 200);
INSERT INTO ksiegowosc.premia VALUES(4,'sprzedaz', 230);
INSERT INTO ksiegowosc.premia VALUES(5,'staz', 500);
INSERT INTO ksiegowosc.premia VALUES(6,'rozwoj', 350);
INSERT INTO ksiegowosc.premia VALUES(7,'nadgodziny', 200);
INSERT INTO ksiegowosc.premia VALUES(8,'weekendy', 100);
INSERT INTO ksiegowosc.premia VALUES(9,'swieta', 250);
INSERT INTO ksiegowosc.premia VALUES(10,'pomoc', 90);


INSERT INTO ksiegowosc.pensja VALUES(1,'ksiegowy', 3000);
INSERT INTO ksiegowosc.pensja VALUES(2,'projektant', 3500);
INSERT INTO ksiegowosc.pensja VALUES(3,'dyrektor', 7000);
INSERT INTO ksiegowosc.pensja VALUES(4,'zastepca', 5000);
INSERT INTO ksiegowosc.pensja VALUES(5,'sprzataczka', 2000);
INSERT INTO ksiegowosc.pensja VALUES(6,'informatyk', 3800);
INSERT INTO ksiegowosc.pensja VALUES(7,'pomoc', 3000);
INSERT INTO ksiegowosc.pensja VALUES(8,'hr', 4000);
INSERT INTO ksiegowosc.pensja VALUES(9,'szkoleniowiec', 3500);
INSERT INTO ksiegowosc.pensja VALUES(10,'pomoc', 2500);


SELECT id_pracownika, nazwisko FROM ksiegowosc.pracownicy;
SELECT id_pracownika, kwota FROM ksiegowosc.pracownicy, ksiegowosc.pensja WHERE kwota>1000;
SELECT * FROM ksiegowosc.pracownicy WHERE imie LIKE 'J%';
SELECT * FROM ksiegowosc.pracownicy WHERE imie LIKE '%n%' AND nazwisko LIKE '%a';
SELECT imie,nazwisko,kwota FROM ksiegowosc.pracownicy, ksiegowosc.pensja WHERE (kwota> 1500 AND kwota <3000);
SELECT imie,nazwisko,kwota FROM ksiegowosc.pracownicy, ksiegowosc.pensja ORDER BY kwota;
SELECT imie,nazwisko,kwota FROM ksiegowosc.pracownicy, ksiegowosc.pensja ORDER BY kwota DESC;
SELECT COUNT (stanowisko) FROM ksiegowosc.pensja;
