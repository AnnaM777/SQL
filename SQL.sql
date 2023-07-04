--INSERT INTO projekat(broj_projekta,imeproj,sredstva) VALUES (600, 'ITBOOTCAMP', 500000);
-- SELECT * FROM radnik WHERE ime = 'Savo';
-- SELECT * FROM radnik WHERE ime ='';
-- SELECT * FROM Customers WHERE country = 'Mexico' (samo one musterije iz Meksika)
--SELECT * FROM radnik WHERE broj_odeljenja =10; (Prikazati imena zaposlenih koji rade u odeljenju 10
--SELECT idbr, ime, kvalifikacija FROM radnik WHERE broj_odeljenja !=10; (Prikazati identifikacioni broj, ime, kvalifikaciju i broj odeljenja zaposlenih koji ne rade u odeljenju 10. )
--Prikazati imena projekata i sredstava za projekte za koje se izdvajaju sredstva manja od 3 000 000.
--SELECT imeproj, sredstva FROM projekat WHERE sredstva < 3000000;
-- Prikazati imena projekata i sredstava za projekte za koje se izdvajaju sredstva veća ili jednaka 3 000 000
--SELECT imeproj, sredstva FROM projekat WHERE sredstva >= 3000000;
-- Prikazati identifikacioni broj, ime, kvalifikaciju i broj odeljenja zaposlenih koji ne rade u odeljenju 10
 -- SELECT idbr, ime, kvalifikacija, broj_odeljenja FROM radnik WHERE broj_odeljenja != 10;
 -- Prikazati ime, datum zaposlenja, platu i premiju za zaposlene koji obavljaju posao vozača.
 --SELECT ime, datum_zaposlenja, plata , premija FROM radnik WHERE posao='vozac';
 -- U tabeli Projekat broj 600 izmeniti tako da raspolaže sa 600,000 sredstava.
--UPDATE projekat SET sredstva = 600000 WHERE broj_projekta = 600;
--SELECT sredstva FROM projekat WHERE broj_projekta =600;
 --U tabeli Projekat izmeni naziv kolone imeproj u SQL, i stavi da je iznos sredstava milion tamo gde je broj 600,
--UPDATE projekat SET imeproj = 'SQL', sredstva = 1000000 WHERE broj_projekta = 600;
--U tabeli Projekat promeni sva sredstva na 500000 tamo gde je broj projekta veći ili jednak 500
--UPDATE projekat SET sredstva = 500000 WHERE broj_projekta >= 500;
--Iz tabele Projekat izbrisati podatke gde je broj projekta 600.
--DELETE FROM projekat WHERE broj_projekta = 600;

--ZADACI ZA VEZBANJE NA CASU:
--1. Prikazati sve podatke iz tabele Projekat gde je broj projekta 200
--SELECT * FROM projekat WHERE broj_projekta = 200;
 -- 2. Prikazati identifikacione brojeve zaposlenih (idbr) iz tabele Radnik koji učestvuju u odeljenju broj 100.
 --SELECT idbr FROM radnik WHERE broj_odeljenja = 100;
 -- 3.  Prikazati imena i plate zaposlenih iz tabele Radnik čija je plata veća od 2 000
 --SELECT ime, plata FROM radnik WHERE plata > 2000;
 -- 4. Prikazati kvalifikaciju, platu i ime zaposlenih iz tabele Radnik koji su u odeljenju broj 30.
--SELECT kvalifikacija, plata ime FROM radnik WHERE broj_odeljenja = 30;
-- 5. Prikazati imena i plate zaposlenih iz tabele Radnik čija je plata 2000 ili veća
--SELECT ime, plata FROM radnik WHERE plata >= 2000;
--6. Prikazati kvalifikaciju, platu i ime zaposlenih iz tabele Radnik koji ne rade u odeljenju 30
-- SELECT kvalifikacija, plata, ime FROM radnik WHERE broj_odeljenja != 30;
-- 7. Prikazati ime, posao i kvalifikaciju zaposlenih iz tabele Radnik koji su zaposleni 17.12.1990 godine. 
-- SELECT ime, posao, kvalifikacija FROM radnik WHERE datum_zaposlenja = '17.12.1990';
-- 8. Prikazati ime, datum zaposlenja, platu i premiju za zaposlene iz tabele radnik koji obavljaju posao savetnika.
--SELECT ime, datum_zaposlenja, premija FROM radnik WHERE posao = 'savetnik';

-- DOMACI
 
-- 1.	Dodajte sebe u tabelu radnik sa svim neophodnim podacima za kolone u tabeli.
--INSERT INTO radnik ( idbr, ime, posao, kvalifikacija, datum_zaposlenja, broj_odeljenja, ) VALUES (7899, 'Ana', 'QA','VSS', '12.4.2023.', 30);
--2.	Prikazite sve podatke iz tabele odeljenje.
--SELECT * FROM odeljenje;
--3.	Prikazite iz tabele radnik ime, kvalifikaciju I platu za svakog radnika.
--SELECT ime, kvalifikacija, plata FROM radnik;
--4.	U tabeli radnik azurirajte (Update) kvalifikaciju I platu za sebe koje ste dodali u proslom domacem zadatku.
--UPDATE radnik SET  kvalifikacija = 'VSS', plata = 3000 WHERE ime = 'Ana'
SELECT * FROM radnik;

--5.	Prikazati imena projekata I sredstva za projekte koji imaju sredstva 3 000 000 ili manja.
--SELECT imeproj, sredstva FROM projekat WHERE sredstva <= 3000000;



 
 
 






 
 