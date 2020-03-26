

CREATE DATABASE firma;

CREATE TABLE pracownicy(
Id_pracownika INT PRIMARY KEY, 
Imie_pracownika VARCHAR(20) NOT NULL,
Nazwisko_pracownika VARCHAR(20) NOT NULL,
Adres VARCHAR(70) NOT NULL,
NUmer_Telefonu INT NOT NULL
);


CREATE TABLE godziny(
Id_godziny INT PRIMARY KEY, 
Data VARCHAR(20) NOT NULL,
Liczba_godzin INT,
 Id_pracownika INT
);



CREATE TABLE pensje(
Id_pensji INT PRIMARY KEY, 
Stanowisko VARCHAR(20) NOT NULL,
Kwota INT,
Id_premii INT
);

CREATE TABLE premie(
Id_premii INT PRIMARY KEY, 
Rodzaj VARCHAR(50),
Kwota INT
);
ALTER TABLE pensje
ADD FOREIGN KEY (Id_premii) REFERENCES premie(Id_premii);
ALTER TABLE godziny
ADD FOREIGN KEY (Id_pracownika) REFERENCES pracownicy(Id_pracownika);

INSERT INTO pracownicy VALUES(1,'Tomasz', 'Nowak', 'Krakow', 512556512);
INSERT INTO pracownicy VALUES(2,'Jan', 'Kowalski', 'Krakow', 512512412);
INSERT INTO pracownicy VALUES(3,'Marta', 'Mazur', 'Warszawa', 567512512);
INSERT INTO pracownicy VALUES(4,'Krzysztof', 'Nowy', 'Wroclaw', 578512512);
INSERT INTO pracownicy VALUES(5,'Jacek', 'Kot', 'Wroclaw', 515198762);
INSERT INTO pracownicy VALUES(6,'Anna', 'Kowalczyk', 'Gdynia', 512326162);
INSERT INTO pracownicy VALUES(7,'Katarzyna', 'Nowakowska', 'Las', 518782512);
INSERT INTO pracownicy VALUES(8,'Kamil', 'Górski', 'Katowice', 512519992);
INSERT INTO pracownicy VALUES(9,'Teresa', 'Szklarz', 'Krakow', 533312512);
INSERT INTO pracownicy VALUES(10,'Marzena', 'Nyska', 'Krakow', 512779512);
COMMIT;


INSERT INTO godziny VALUES(1,'11-06-2020', 7, 1);
INSERT INTO godziny VALUES(2,'11-06-2020', 7, 2);
INSERT INTO godziny VALUES(3,'11-06-2020', 7, 3);
INSERT INTO godziny VALUES(4,'11-06-2020', 7, 4);
INSERT INTO godziny VALUES(5,'11-06-2020', 8, 5);
INSERT INTO godziny VALUES(6,'12-06-2020', 7, 5);
INSERT INTO godziny VALUES(7,'13-06-2020', 8, 5);
INSERT INTO godziny VALUES(8,'12-06-2020', 7, 1);
INSERT INTO godziny VALUES(9,'13-06-2020', 8, 1);
INSERT INTO godziny VALUES(10,'14-06-2020', 7, 1);


INSERT INTO premie VALUES(1,'brak', 0);
INSERT INTO premie VALUES(2,'obecnosc', 100);
INSERT INTO premie VALUES(3,'punktualnosc', 200);
INSERT INTO premie VALUES(4,'sprzedaz', 230);
INSERT INTO premie VALUES(5,'staz', 500);
INSERT INTO premie VALUES(6,'rozwoj', 350);
INSERT INTO premie VALUES(7,'nadgodziny', 200);
INSERT INTO premie VALUES(8,'weekendy', 100);
INSERT INTO premie VALUES(9,'swieta', 250);
INSERT INTO premie VALUES(10,'pomoc', 90);


INSERT INTO pensje VALUES(1,'ksiegowy', 3000,1);
INSERT INTO pensje VALUES(2,'projektant', 3500,1);
INSERT INTO pensje VALUES(3,'dyrektor', 7000,7);
INSERT INTO pensje VALUES(4,'zastepca dyrektora', 5000,7);
INSERT INTO pensje VALUES(5,'sprzataczka', 2000,9);
INSERT INTO pensje VALUES(6,'informatyk', 3800,3);
INSERT INTO pensje VALUES(7,'pomoc projektanta', 3000,3);
INSERT INTO pensje VALUES(8,'hr', 4000,9);
INSERT INTO pensje VALUES(9,'szkoleniowiec', 3500,9);
INSERT INTO pensje VALUES(10,'pomoc ksiegowego', 2500,1);



SELECT * FROM premie;
SELECT * FROM pracownicy;
SELECT * FROM godziny;
SELECT * FROM pensje;
