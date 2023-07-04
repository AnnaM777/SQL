-- Prikazati srednju platu u celom preduzeću. – nastavak: za analiticare.
--SELECT AVG (plata) FROM radnik;
--Prikazi srednju platu radnika naliticara.
--SELECT AVG(plata) FROM radnik WHERE posao = 'analiticar';
--Prikazati broj zaposlenih u celom preduzecu.
--SELECT COUNT (idbr) FROM radnik;
--SELECT COUNT (premija) FROM radnik; (prikati broj premije Zaposlenih)
--Prikazati broj radnika u preduzecu ciji je posao analiticar
--SELECT COUNT (*) FROM radnik WHERE posao = 'analiticar';
--SELECT COUNT(*) FROM radnik where posao = 'vozac';
--SELECT MAX (plata), MIN (plata) FROM radnik;
--SELECT MAX (plata), MIN (plata) FROM radnik WHERE posao = 'radnik';
--SELECT MAX (plata), MIN (plata) FROM radnik WHERE posao = 'direktor';
-- SELECT MIN (plata), MAX (plata), AVG (plata) FROM radnik--Prikaži ime, kvalifikaciju, platu i premiju zaposlenih koji nemaju premiju.
 --Prikaži ime, kvalifikaciju, platu i premiju zaposlenih koji nemaju premiju.
 -- SELECT ime, kvalifikacija, plata, premIja FROM radnik WHERE premija IS NULL; Prikaži ime, kvalifikaciju, platu i premiju zaposlenih koji nemaju premiju
--SELECT ime, kvalifikacija, plata, premija FROM radnik WHERE premija IS NOT NULL; Prikaži ime, kvalifikaciju, platu i premiju zaposlenih koji imaju premiju
--SELECT idbr, ime, broj_odeljenja, plata, + COALESCE(premija, 1810993) AS ukupna_primanja FROM radnik;
--Prikazati za svaku kvalifikaciju minimalnu i maksimalnu platu, samo za kvalifikacije za koje je minimalna plata veća od 1 000.
--SELECT kvalifikacija, MIN(plata), MAX(plata)FROM radnik GROUP BY kvalifikacija;
--Prikazati brojeve odeljenja i srednju platu u svakom od njih. Iz proračuna isključiti analitičare i upravnike. Rezultate urediti po prosečnim primanjima u rastućem redosledu. Zaokruziti na dve decimale.
--SELECT broj_odeljenja, ROUND(AVG(plata), 2) FROM radnik WHERE posao NOT IN ('analiticar', 'upravnik') GROUP BY broj_odeljenjaORDER BY 2 ASC;
--Prikazati za svaku kvalifikaciju minimalnu i maksimalnu platu, samo za kvalifikacije za koje je minimalna plata veća od 1 000.
--SELECT kvalifikacija, MIN(plata), MAX(plata) FROM radnik GROUP BY 1 HAVING min(plata) > 1000;

--1. Prikazati broj zaposlenih koji rade u odeljenju 40.
--SELECT COUNT (*) FROM radnik WHERE broj_odeljenja = 40;

-- 2. Prikazati srednju platu analitičara.
--SELECT AVG (plata) From radnik WHERE posao = 'analiticar';

--3. Prikazati za svaki posao ukupnu platu radnika koji ga obavljaju. Rezultate urediti po ukupnim primanjima u opadajućem redosledu.
--SELECT posao, SUM (plata) FROM radnik GROUP BY posao ORDER BY SUM (plata) DESC;

-- 4.Prikazati za svaki posao ukupnu platu radnika koji ga obavljaju. U proračun uzeti u obzir upravnike, vozače i analitičare.SELECT posao, SUM(plata) FROM radnik WHERE posao IN ('upravnik', 'vozac', 'analiticar') GROUP BY posao;
--SELECT posao, SUM(plata) FROM radnik WHERE posao IN ('upravnik', 'vozac', 'analiticar’) GROUP BY posao;

--5. Prikaži najmanju, najveću, srednju platu i broj zaposlenih po odeljenjima.
--SELECT broj_odeljenja, MIN(plata), MAX(plata), AVG(plata), COUNT(idbr) FROM radnik GROUP BY broj_odeljenja;
--SELECT broj_odeljenja, MIN(plata), MAX(plata), AVG(plata), COUNT(idbr) FROM radnik GROUP BY broj_odeljenja;

--6. Prikazati za svaki posao ukupnu platu radnika koji ga obavljaju, samo za poslove koje obavlja više od 2 radnika.
--SELECT posao, SUM(plata) FROM radnik GROUP BY 1 HAVING COUNT(idbr) > 2;
--7.Odrediti srednju godišnju platu unutar svakog odeljenja ne uzimajući u obzir plate direktora i upravnika.
--SELECT broj_odeljenja, ROUND(AVG(plata)* 12, 2)  FROM radnik WHERE posao NOT IN('upravnik', 'direktor') GROUP BY broj_odeljenja;
--DOMACI
--1.	Prikazati ime, kvalifikaciju, platu I premiju zaposlenih koj iimaju premiju.
--SELECT ime, kvalifikacija, plata, premija FROM radnik WHERE premija IS NOT NULL;
--2.	Prikazati srednju platu u celom preduzeću I zaokružiti na dve decimale

--SELECT AVG(plata), ROUND(AVG(plata), 2) FROM radnik;
--3.	Prikazati najmanju, najveću, srednju platu I broj zaposlenih u celom preduzeću.
--SELECT MIN(plata), MAX(plata), AVG(plata), COUNT(idbr)FROM radnik;
--SELECT broj_odeljenja, AVG(plata) FROM radnik GROUP by broj_odeljenja HAVING AVG(plata) > 2000;


	--4.	Prikazati najmanju, najveću, srednju platu I broj  zaposlenih u odeljenju 30, sa zaokruživanjem na dve decimale.
SELECT ROUND(MAX(plata), 2), ROUND(MIN(plata), 2), ROUND(SUM(plata), 2), COUNT(idbr) FROM radnik WHERE broj_odeljenja = 30;

--5.Prikazati za svaku kvalifikaciju minimalnu I maksimalnu platu. U proračun uključiti samo radnike iz odeljenja 10 i 20.
--SELECT kvalifikacija, MIN(plata), MAX(plata), COUNT(idbr) FROM radnik WHERE broj_odeljenja IN (10,20) GROUP BY kvalifikacija;

--6.	Prikazati brojeve odeljenja I srednju platu u svakom od njih, samo za odeljenja u kojima je srednja plata veća od 2000.
--SELECT broj_odeljenja, AVG(plata) FROM radnik GROUP by broj_odeljenja HAVING AVG(plata) > 2000;

--7.	Prikazati ko je najbolje plaćeni radnik u celom preduzeću?
--SELECT MAX(plata) FROM radnik;


--ROUND(AVG(plata), 2) 








