
UPDATE ksiegowosc.pracownicy
SET telefon = '(+48)' || telefon;

UPDATE ksiegowosc.pracownicy

SET telefon = SUBSTRING(telefon,0,9) || '-' || SUBSTRING (telefon,9,3) || '-' || SUBSTRING (telefon,12,3);

SELECT * FROM ksiegowosc.pracownicy WHERE CHARACTER_LENGTH(nazwisko) = (select max(CHARACTER_LENGTH(nazwisko)) from ksiegowosc.pracownicy);
SELECT kpen.kwota AS kwota FROM ksiegowosc.pracownicy kp
JOIN ksiegowosc.wynagrodzenia kw ON kw.id_pracownika = kp.id_pracownika
JOIN ksiegowosc.pensja kpen ON kpen.id_pensji = kw.id_pensji;

SELECT kp.imie,kp.nazwisko, kpen.kwota, kpr.kwota FROM ksiegowosc.wynagrodzenia kw 
LEFT JOIN ksiegowosc.pracownicy kp ON kp.id_pracownika = kw.id_pracownika
LEFT JOIN ksiegowosc.premia kpr ON kpr.id_premii = kw.id_premii
LEFT JOIN ksiegowosc.pensja kpen ON kpen.id_pensji = kw.id_pensji;


SELECT 'Pracownik ' || kp.imie || ' ' || kp.nazwisko 
|| ' w dniu ' || kg.dat
|| ' otrzymał pensje całkowitą na kwotę ' || kpen.kwota + kpr.kwota 
|| ' gdzie wynagrodzenie zasadnicze wynosiło: '|| kpen.kwota || ',a premia: ' || kpr.kwota || ', nadgodziny: ' || '0 zł' AS raport
FROM ksiegowosc.pracownicy kp
JOIN ksiegowosc.wynagrodzenia kw ON kw.id_pracownika = kp.id_pracownika 
JOIN ksiegowosc.pensja kpen ON kpen.id_pensji = kw.id_pensji 
JOIN ksiegowosc.premia kpr ON kpr.id_premii = kw.id_premii 
JOIN ksiegowosc.godziny kg ON kp.id_pracownika = kp.id_pracownika;
