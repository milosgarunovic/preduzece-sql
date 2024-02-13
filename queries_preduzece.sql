-- Prikazati identifikacione brojeve i imena svih radnika.
SELECT idbr, ime FROM radnik;

-- Prikazati broj, ime i mesto svih odeljenja.
SELECT broj_odeljenja, ime_odeljenja, mesto FROM odeljenje;

-- Prikazati identifikacione brojeve, imena, datum zaposlenja i broj odeljenja za sve zaposlene.
SELECT idbr, ime, datum_zaposlenja, broj_odeljenja FROM radnik;

-- Prikazati nazive svih odeljenja u preduzecu.
SELECT ime_odeljenja FROM odeljenje;

-- Prikazati nazive svih poslova u preduzecu.
SELECT posao FROM radnik;

-- Prikazati nazive svih razlicitih poslova u preduzecu.
SELECT DISTINCT posao FROM radnik;

-- Prikazati sve razlicite kvalifikacije zaposlenih.
SELECT DISTINCT kvalifikacija FROM radnik;

-- alias za prethodni upit
SELECT DISTINCT r.kvalifikacija FROM radnik r;

-- AS
SELECT DISTINCT broj_odeljenja AS "sifra odeljenja" FROM radnik;

-- WHERE
-- Prikazati imena zaposlenih koji rade u odeljenju 10.
SELECT ime FROM radnik WHERE broj_odeljenja = 10;

-- Prikazati imena zaposlenih koji rade u odeljenju 50.
SELECT ime FROM radnik WHERE broj_odeljenja = 50;
-- Rezultat ovog upita je prazna tabela, jer ne postoji ni jedan zaposleni u odeljenju 50.

-- Prikazati imena zaposlenih koji rade u odeljenju 70.
SELECT ime FROM radnik WHERE broj_odeljenja = 70;
-- Rezultat ovog upita je prazna tabela, jer odeljenje 70 ne postoji.

-- Prikazati ime prezime i platu zaposlenog čiji je identifikacioni broj 5786.
SELECT ime, plata FROM radnik WHERE idbr = 5786; -- Pavle Šotra

-- Prikazati ime i platu zaposlenog čiji je identifikacioni broj 5775.
SELECT ime, plata FROM radnik WHERE idbr = 5775;
-- Rezultat ovog upita nema ni jedan slog, jer ne postoji radnik sa datim identifikacionim brojem.

-- Prikazati sve podatke o projektu 200.
SELECT * FROM projekat WHERE broj_projekta = 200;

-- Prikazati identifikacione brojeve zaposlenih koji učestvuju na projektu 100.
-- SELECT idbr FROM radnik WHERE broj_projekta = 100;

-- Prikazati funkciju zaposlenog čiji je identifikacioni broj 5652 na projektu 100.
SELECT funkcija FROM ucesce WHERE idbr = 5652 AND broj_projekta = 100;

-- Prikazati sve podatke o zaposlenima koji imaju platu 1300.
SELECT * FROM radnik WHERE plata = 1300;

-- Prikazati kvalifikaciju, platu i ime zaposlenih u odeljenju 30.
SELECT kvalifikacija, plata, ime FROM radnik WHERE broj_odeljenja = 30;
-- fali Marko VSS 1300

-- Prikazati imena projekata i sredstava za projekte za koje se izdvajaju
-- sredstva manja od 3 000 000.
SELECT imeproj, sredstva FROM projekat WHERE sredstva < 3000000;

-- Prikazati imena projekata i sredstva za projekte za koje se izdvajaju sredstva
-- od 3 000 000 ili manja.
SELECT imeproj, sredstva FROM projekat WHERE sredstva <= 3000000;

-- Prikazati imena i plate zaposlenih čija je plata veća od 2 000
SELECT ime, plata FROM radnik WHERE plata > 2000;

-- Prikazati imena i plate zaposlenih čija je plata 2000 ili veća
SELECT ime, plata FROM radnik WHERE plata >= 2000;

-- Prikazati identifikacioni broj, ime, kvalifikaciju i broj odeljenja zaposlenih koji
-- ne rade u odeljenju 10.
SELECT idbr, ime, kvalifikacija, broj_odeljenja FROM radnik WHERE broj_odeljenja != 10;

-- Prikazati ime, datum zaposlenja, platu i premiju za zaposlene koji obavljaju
-- posao savetnika.
SELECT ime, datum_zaposlenja, plata, premija FROM radnik WHERE posao = 'savetnik';

-- Prikazati ime, datum zaposlenja, platu i premiju za zaposlene koji obavljaju
-- posao vozača.
SELECT ime, datum_zaposlenja, plata, premija FROM radnik WHERE posao = 'vozač';

-- Prikazati ime, posao i kvalifikaciju zaposlenih koji su zaposleni 17.12.1990
-- godine.
SELECT ime, posao, kvalifikacija FROM radnik WHERE datum_zaposlenja = '12.17.1990';

-- TODO prezime
-- Prikazati ime, prezime, posao, platu i premiju za zaposlene koji rade u
-- odeljenju 10 i imaju kvalifikaciju KV.
SELECT ime, posao, plata, premija FROM radnik WHERE broj_odeljenja = 10 AND kvalifikacija = 'KV';

-- Prikazati imena zaposlenih koji rade u odeljenju 20, a imaju posao vozača.
SELECT ime FROM radnik WHERE broj_odeljenja = 20 AND posao = 'vozač';

-- Prikaži ime, posao i platu zaposlenih u odeljenju 30, čija je plata veća od
-- 2 000.
SELECT ime, posao, plata FROM radnik WHERE broj_odeljenja = 30 AND plata > 2000;

-- Prikazati ime, posao, platu i premiju zaposlenih, čiji je posao analitičar ili
-- savetnik.
SELECT ime, posao, plata, premija FROM radnik WHERE posao = 'analitičar' OR posao = 'savetnik';
SELECT ime, posao, plata, premija FROM radnik WHERE posao IN ('analitičar', 'savetnik');

-- Prikazati ime, posao, platu i premiju zaposlenih, čiji posao nije analitičar ni
-- savetnik.
SELECT ime, posao, plata, premija FROM radnik WHERE posao NOT IN ('analitičar', 'savetnik');

-- Prikaži ime, posao i broj odeljenja upravnika i direktora.
SELECT ime, posao, broj_odeljenja FROM radnik WHERE posao IN ('upravnik', 'direktor');

-- Prikazati ime i broj odeljenja zaposlenih koji rade u odeljenju 10 ili 20, a
-- kvalifikacija im je VKV.
SELECT ime, broj_odeljenja FROM radnik WHERE broj_odeljenja IN (10, 20) AND kvalifikacija = 'VKV';

-- Prikazati ime, posao i kvalifikaciju zaposlenih koji obavljaju posao upravnika
-- ili savetnika, a zaposleni su u odeljenju 20.
SELECT ime, posao, kvalifikacija FROM radnik WHERE posao IN ('upravnik', 'savetnik') AND broj_odeljenja = 20;

-- Prikaži ime i posao upravnika i analitičara iz odeljenja 10
SELECT ime, posao FROM radnik WHERE posao IN ('upravnik', 'analitičar') AND broj_odeljenja = 10;

-- Prikazati ime, datum zaposlenja, platu, premiju i broj odeljenja za zaposlene
-- koji imaju platu između 1 000 i 2 000 (uključujući i te vrednosti).
SELECT ime, datum_zaposlenja, plata, premija, broj_odeljenja FROM radnik
WHERE plata BETWEEN 1000 AND 2000;
-- WHERE plata >= 1000 AND plata <= 2000;

-- Prikaži ime i platu zaposlenih čija je plata od 2 600 do 3 000.
SELECT ime, plata FROM radnik WHERE plata BETWEEN 2600 AND 3000;

-- Prikazati ime, datum zaposlenja, platu, premiju i broj odeljenja za zaposlene
-- koji imaju platu između 1 000 i 2 000 (ne uključujući te vrednosti).
SELECT ime, datum_zaposlenja, plata, premija, broj_odeljenja FROM radnik
WHERE plata > 1000 AND plata < 2000;

-- Prikazati imena i plate zaposlenih koji imaju platu jednaku bilo kojoj vrednosti iz skupa
-- 1000, 1300, 2400.
SELECT ime, plata FROM radnik WHERE plata IN (1000, 1300, 2400);

-- Prikazati ime, kvalifikaciju, posao, platu i premiju zaposlenih koji rade u
-- odeljenju 10. Rezultate urediti po imenu u rastućem redosledu.
SELECT ime,kvalifikacija, posao, plata FROM radnik
WHERE broj_odeljenja = 10
ORDER BY ime ASC;

-- Prikazati ime, platu i premiju zaposlenih koji obavljaju posao vozača.
-- Rezultate urediti po premiji u opadajućem redosledu.
SELECT ime, plata, premija FROM radnik
WHERE posao = 'vozač'
ORDER BY premija DESC;

-- Prikazati ime, platu, premiju, posao i broj odeljenja za sve zaposlene.
-- Rezultate urediti po broju odeljenja u rastućem redosledu, a zatim po plati u
-- opadajućem.
SELECT ime, plata, premija, posao, broj_odeljenja
FROM radnik
ORDER BY broj_odeljenja ASC, plata DESC;

-- Prikaži ime, kvalifikaciju, platu i premiju uređenu:
-- a) po kvalifikaciji u opadajućem, po plati u rastućem, a po premiji u opadajućem redosledu
-- b) po plati u rastućem, a po kvalifikaciji i premiji u opadajućem redosledu
-- c) po premiji i kvalifikaciji u opadajućem, a po plati u rastućem redosledu
SELECT ime, kvalifikacija, plata, premija
FROM radnik
-- ORDER BY kvalifikacija DESC, plata ASC, premija DESC;
-- ORDER BY plata ASC, kvalifikacija DESC, premija DESC;
ORDER BY premija DESC, kvalifikacija DESC, plata ASC;

-- TODO prezime
-- Prikazati ime, prezime, datum zaposlenja i broj odeljenja za zaposlene čije
-- ime počinje slovom M.
SELECT ime, datum_zaposlenja, broj_odeljenja
FROM radnik
WHERE ime LIKE 'M%';
-- WHERE ime ILIKE 'm%';

-- Prikazati broj i ime projekta čije ime završava slovom z.
SELECT broj_projekta, imeproj
FROM projekat
WHERE imeproj LIKE '%z';

-- Prikazati imena zaposlenih čije ime sadrži slovo t.
SELECT ime
FROM radnik
WHERE ime LIKE '%t%' OR ime LIKE '%T%';
-- WHERE ime ILIKE '%t%';

-- Prikazati imena zaposlenih čije ime ne sadrži slovo A.
SELECT ime
FROM radnik
WHERE ime NOT ILIKE '%a%';

-- Prikazati ime, posao i broj odeljenja zaposlenih čije ime počinje slovom M, a
-- drugo slovo u imenu je o ili i.
SELECT ime, posao, broj_odeljenja
FROM radnik
WHERE ime LIKE 'Mi%' OR ime LIKE 'Mo%';
-- ne postoji nista poput 'M[i,o]%'

-- Prikazati broj odeljenja, ime odeljenja i mesto za odeljenja čije ime počinje
-- slovom P ili slovom D.
SELECT broj_odeljenja, ime_odeljenja, mesto
FROM odeljenje
WHERE ime_odeljenja LIKE 'P%' OR ime_odeljenja LIKE 'D%';

-- Prikaži ime i kvalifikaciju zaposlenih čija imena počinju slovom P.
-- Rezultate urediti po imenu u rastećum redosledu.
SELECT ime, kvalifikacija
FROM radnik
WHERE ime LIKE 'P%'
ORDER BY ime ASC;

-- Prikaži ime, kvalifikaciju, platu i premiju zaposlenih koji nemaju premiju.
SELECT ime, kvalifikacija, plata, premija
FROM radnik
WHERE premija IS NULL;

-- Prikaži ime, kvalifikaciju, platu i premiju zaposlenih koji imaju premiju.
SELECT ime, kvalifikacija, plata, premija
FROM radnik
WHERE premija IS NOT NULL;

-- Za sve zaposlene prikazati njihove identifikacione brojeve, imena, broj
-- odeljenja u kome rade i ukupna primanja.
SELECT idbr, ime, broj_odeljenja, plata + coalesce(premija, 0) AS ukupna_prmianja
FROM radnik;

-- Prikazati ime i ukupna primanja za zaposlene čija je kvalifikacija KV.
-- Rezultate urediti po ukupnim primanjima u opadajućem redosledu.
SELECT ime, plata + coalesce(premija, 0)
FROM radnik
WHERE kvalifikacija = 'KV'
ORDER BY 2 DESC;

-- Prikaži ime, kvalifikaciju, platu i premiju:
-- a) grupisanu po kvalifikaciji, po plati i po premiji
-- b) uređenu po kvalifikaciji, plati i premiji u rastućem redosledu.
SELECT ime, kvalifikacija, plata, premija
FROM radnik
-- GROUP BY kvalifikacija, plata, premija, ime;
ORDER BY kvalifikacija, plata, premija;

-- Prikazati srednju platu u celom preduzeću.
SELECT AVG(plata) FROM radnik;

-- Prikazati srednju platu u celom preduzeću i zaokružiti na dve decimale.
SELECT ROUND(AVG(plata), 2) FROM radnik;

-- Prikazati maksimalnu i minimalnu platu u celom preduzeću
SELECT max(plata), min(plata) FROM radnik;

-- Prikazati ukupnu platu u celom preduzeću
SELECT sum(plata) FROM radnik;

-- Prikazati broj zaposlenih u celom preduzeću.
SELECT count(idbr) FROM radnik;
SELECT count(*) FROM radnik;

-- Prikaži najmanju, najveću, srednju platu i broj zaposlenih u celom preduzeću.
SELECT min(plata), max(plata), avg(plata), count(idbr) FROM radnik;

-- Prikaži najmanju, najveću, srednju platu i broj zaposlenih u celom preduzeću,
-- sa zaokruživanjem na dve decimale.
SELECT min(plata), max(plata), round(avg(plata), 2), count(idbr) FROM radnik;

-- Prikazati srednju platu analitičara.
SELECT avg(plata)
FROM radnik
WHERE posao = 'analitičar';

-- Prikazati minimalnu i maksimalnu platu zaposlenih sa kvalifikacijom VSS
SELECT min(plata), max(plata)
FROM radnik
WHERE kvalifikacija = 'VSS';

-- Prikazati ukupnu platu svih radnika koji ne rade u odeljenjima 30 i 40
SELECT sum(plata)
FROM radnik
WHERE broj_odeljenja NOT IN (30, 40);

-- Prikazati broj zaposlenih koji rade u odeljenju 40.
SELECT count(idbr)
FROM radnik
WHERE broj_odeljenja = 40;

-- Prikazati brojeve odeljenja i srednju platu u svakom od njih. Zaokružiti decimale na 2 cifre.
-- Sortirati po broju odeljenje po opadajućem redosledu.
SELECT broj_odeljenja, round(avg(plata), 2)
FROM radnik
GROUP BY broj_odeljenja
ORDER BY broj_odeljenja DESC;

-- Prikazati za svaku kvalifikaciju minimalnu i maksimalnu platu.
SELECT kvalifikacija, min(plata), max(plata)
FROM radnik
GROUP BY kvalifikacija;

-- Prikazati za svaki posao ukupnu platu radnika koji ga obavljaju. Rezultate
-- urediti po ukupnim primanjima u opadajućem redosledu.
SELECT posao, sum(plata)
FROM radnik
GROUP BY posao
ORDER BY 2 DESC;

-- Prikazati brojeve odeljenja i srednju platu u svakom od njih. Iz proračuna
-- isključiti analitičare i upravnike. Rezultate urediti po prosečnim primanjima u
-- rastućem redosledu.
SELECT broj_odeljenja, avg(plata)
-- SELECT broj_odeljenja, round(avg(plata), 2)
FROM radnik
WHERE posao NOT IN ('analitičar', 'upravnik')
GROUP BY broj_odeljenja
ORDER BY 2 ASC;

-- Prikazati za svaku kvalifikaciju minimalnu i maksimalnu platu. U proračun
-- uključiti samo radnike iz odeljenja 10 i 20.
SELECT kvalifikacija, min(plata), max(plata)
FROM radnik
WHERE broj_odeljenja IN (10, 20)
GROUP BY kvalifikacija;

-- Prikazati za svaki posao ukupnu platu radnika koji ga obavljaju. U proračun
-- uzeti u obzir upravnike, vozače i analitičare.
SELECT posao, sum(plata)
FROM radnik
WHERE posao in ('upravnik', 'vozač', 'analitičar')
GROUP BY posao;

-- Prikaži najmanju, najveću, srednju platu i broj zaposlenih u odeljenju 10,
SELECT min(plata), max(plata), round(avg(plata), 2), count(idbr)
FROM radnik
WHERE broj_odeljenja = 10;

-- Prikaži najmanju, najveću, srednju platu i broj zaposlenih po odeljenjima.
SELECT broj_odeljenja, min(plata), max(plata), avg(plata), count(idbr)
FROM radnik
GROUP BY broj_odeljenja;

-- Prikazati kvalifikaciju, posao, ukupnu platu radnika i broj radnika sa istom kvalifikacijom
-- koji obavljaju određeni posao. Rezultate urediti po kvalifikaciji u rastućem
-- redosledu.
SELECT kvalifikacija, posao, sum(plata), count(idbr)
FROM radnik
GROUP BY kvalifikacija, posao
ORDER BY kvalifikacija ASC;

-- Izračunaj broj zaposlenih koji obavljaju iste poslove unutar svakog
-- odeljenja. Rezultate urediti po broju odeljenja u rastućem redosledu.
-- ako nije jasno - u odeljenju broj 10 ima 4 radnika
SELECT broj_odeljenja, posao, count(idbr)
FROM radnik
GROUP BY broj_odeljenja, posao
ORDER BY broj_odeljenja ASC;

-- Prikazati brojeve odeljenja i srednju platu u svakom od njih, samo za
-- odeljenja u kojima je srednja plata veća od 2000.
SELECT broj_odeljenja, round(avg(plata), 2)
FROM radnik
GROUP BY 1
HAVING avg(plata) > 2000;

-- Prikazati za svaku kvalifikaciju minimalnu i maksimalnu platu, samo za
-- kvalifikacije za koje je minimalna plata veća od 1 000.
SELECT kvalifikacija, min(plata), max(plata)
FROM radnik
GROUP BY 1
HAVING min(plata) > 1000;

-- Prikazati za svaki posao ukupnu platu radnika koji ga obavljaju, samo za
-- poslove koje obavlja više od 2 radnika.
SELECT posao, sum(plata)
FROM radnik
GROUP BY 1
HAVING count(idbr) > 2;

-- Izlistaj šifre radnika i broj projekata na kojima rade za radnike koji rade na dva
-- ili više projekata.
SELECT idbr, count(broj_projekta)
FROM ucesce
GROUP BY 1
HAVING count(idbr) >= 2;

-- Prikaži koje poslove obavlja više od jednog radnika unutar svakog odeljenja
SELECT posao, count(posao), broj_odeljenja
FROM radnik
GROUP BY posao, broj_odeljenja;
-- ORDER BY broj_odeljenja ASC, 2 DESC;

-- Odrediti srednju godišnju platu unutar svakog odeljenja ne uzimajući u obzir
-- plate direktora i upravnika
SELECT broj_odeljenja, avg(plata) * 12
FROM radnik
WHERE  posao NOT IN ('direktor', 'upravnik')
GROUP BY 1;

-- Za svako odeljenje prikazati ukupan broj radnika koji primaju premiju.
SELECT broj_odeljenja, count(idbr)
FROM radnik
WHERE premija IS NOT NULL
GROUP BY broj_odeljenja;

-- Za svako odeljenje prikazati broj radnika i ukupna primanja.
SELECT broj_odeljenja, count(idbr), sum(plata + coalesce(premija, 0))
FROM radnik
GROUP BY 1;

-- Odrediti srednja godišnja primanja unutar svakog odeljenja ne uzimajući u
-- obzir plate direktora i upravnika.
SELECT broj_odeljenja, avg(plata + coalesce(premija, 0)) * 12 AS ukupna_primanja
FROM radnik
WHERE posao NOT IN ('direktor', 'upravnik')
GROUP BY broj_odeljenja;

-- Izlistaj spisak imena zaposlenih koji rade na Dorćolu.
SELECT ime
FROM radnik
WHERE broj_odeljenja = (SELECT broj_odeljenja FROM odeljenje WHERE mesto = 'Dorćol');

-- Prikazati ime i posao svih radnika koji rade na Novom Beogradu.
SELECT ime, posao
FROM radnik
WHERE broj_odeljenja = (SELECT broj_odeljenja FROM odeljenje WHERE mesto = 'Novi Beograd');

-- Prikazati ime, posao i kvalifikaciju svih radnika koji imaju istu kvalifikaciju kao Marko.
SELECT ime, posao, kvalifikacija
FROM radnik
WHERE kvalifikacija = (SELECT kvalifikacija FROM radnik WHERE ime = 'Marko');

-- Izlistaj ime, posao i platu zaposlenih u odeljenju 10, koji imaju isti posao kao
-- zaposleni u odeljenju Plan.
SELECT ime, posao, plata
FROM radnik
WHERE broj_odeljenja = 10
  AND posao IN (SELECT posao FROM radnik
                             WHERE broj_odeljenja =
                                   (SELECT broj_odeljenja FROM odeljenje WHERE ime_odeljenja = 'Plan'));

-- Prikazati ime i ukupna primanja svih zaposlenih koji imaju isti posao kao Slobo.
SELECT ime, plata + coalesce(premija, 0) as ukupna_primanja
FROM radnik
WHERE posao = (SELECT posao FROM radnik WHERE ime = 'Slobo');

-- Prikazati ime, datum zaposlenja i posao zaposlenih koji imaju kvalifikaciju kao
-- Marko i zaposleni su 1990. godine.
SELECT ime, datum_zaposlenja, posao
FROM radnik
WHERE kvalifikacija = (SELECT kvalifikacija FROM radnik WHERE ime = 'Marko')
AND datum_zaposlenja BETWEEN '1990-1-1' AND '1990-12-31';
-- AND extract(year from datum_zaposlenja) = 1990;
-- AND datum_zaposlenja::text LIKE '1990%';

-- Prikazati ime, posao i ukupna primanja radnika koji rade na Novom Beogradu
-- ne uzimajući u obzir prodavce i upravnike. Rezultate sortirati po ukupnim
-- primanjima u opadajućem redosledu.
SELECT ime, posao, plata + coalesce(premija, 0)
FROM radnik
WHERE broj_odeljenja = (SELECT broj_odeljenja FROM odeljenje WHERE mesto = 'Novi Beograd')
AND posao NOT IN ('prodavac', 'upravnik')
ORDER BY 3 DESC;

-- Prikazati ime i kvalifikaciju svih zaposlenih koji imaju istu platu kao Jovan.
-- Rezultate urediti po imenu u opadajućem redosledu.
SELECT ime, kvalifikacija
FROM radnik
WHERE plata = (SELECT plata FROM radnik WHERE ime = 'Jovan')
ORDER BY ime DESC;

-- Prikazati ime i kvalifikaciju svih radnika koji rade na istim projektima kao Marko.
SELECT ime, kvalifikacija
FROM radnik
WHERE idbr IN (SELECT idbr
               FROM ucesce
               WHERE broj_projekta IN
                     (SELECT broj_projekta FROM ucesce WHERE idbr = (SELECT idbr FROM radnik WHERE ime = 'Marko')));

-- Prikazati idbr, ime, platu i kvalifikaciju zaposlenih koji imaju istu platu kao bilo
-- koji zaposleni čija je kvalifikacija VSS.

-- Prikazati idbr, ime, platu i kvalifikaciju zaposlenih koji imaju vecu platu od najveće
-- plate zaposlenog čija je kvalifikacija KV.
SELECT idbr, ime, plata, kvalifikacija
FROM radnik
WHERE plata > (SELECT max(plata) FROM radnik WHERE kvalifikacija = 'KV');

-- Prikazati sve podatke o odeljenjima u kojima ima zaposlenih radnika.
SELECT * FROM odeljenje
WHERE exists(SELECT broj_odeljenja FROM radnik WHERE radnik.broj_odeljenja = odeljenje.broj_odeljenja);

-- Prikazati sve podatke o odeljenjima u kojima nema zaposlenih radnika.
SELECT * FROM odeljenje
WHERE NOT exists(SELECT broj_odeljenja FROM radnik WHERE radnik.broj_odeljenja = odeljenje.broj_odeljenja);

-- Prikazati sve podatke o zaposlenim koji rade na nekom projektu.
SELECT * FROM radnik
WHERE exists(SELECT idbr FROM ucesce WHERE ucesce.idbr = radnik.idbr);

-- Prikazati sve podatke o zaposlenim koji ne rade ni na jednom projektu.
SELECT * FROM radnik
WHERE NOT exists(SELECT idbr FROM ucesce WHERE ucesce.idbr = radnik.idbr);

-- Prikazati imena odeljenja u kojima su ukupna primanja svih radnika u
-- odeljenju veća od 10 000.
SELECT ime_odeljenja
FROM odeljenje
WHERE broj_odeljenja IN
      (SELECT broj_odeljenja FROM radnik GROUP BY broj_odeljenja HAVING sum(plata + coalesce(premija, 0)) > 10000);

-- Prikazati ime i primanja svih zaposlenih čija su primanja veća od prosečnog
-- primanja u preduzeću.
SELECT ime, plata + coalesce(premija, 0)
FROM radnik
WHERE plata + coalesce(premija, 0) > (SELECT avg(plata + coalesce(premija, 0)) FROM radnik);

-- Prikazati imena svih radnika čija su ukupna primanja manja od prosečnih
-- primanja u odeljenju, čije je sedište u Starom Gradu.
SELECT ime
FROM radnik
WHERE plata + coalesce(premija, 0) < (SELECT avg(plata + coalesce(premija, 0))
                                      FROM radnik
                                      WHERE broj_odeljenja =
                                            (SELECT broj_odeljenja FROM odeljenje WHERE mesto = 'Stari Grad'));

-- Prikazati ime, datum zaposlenja i primanje zaposlenih koji su angažovani na
-- dva projekta. Rezultate urediti po datumu zaposlenja u opadajućem redosledu.
SELECT ime, datum_zaposlenja, plata + coalesce(premija, 0)
FROM radnik
WHERE idbr IN (SELECT idbr FROM ucesce GROUP BY idbr HAVING count(idbr) > 2)
ORDER BY datum_zaposlenja ASC;

-- Prikazati imena i posao radnika čija su ukupna primanja manja od najmanjih
-- primanja u odeljenju smeštenom u Starom Gradu. Rezultate poređati po
-- imenu u rastućem redosledu.
SELECT ime, posao
FROM radnik
WHERE plata + coalesce(premija, 0) < (
    SELECT min (plata+coalesce(premija, 0))
    FROM radnik WHERE broj_odeljenja = (SELECT broj_odeljenja FROM odeljenje WHERE mesto = 'Stari Grad')
    )
ORDER BY ime ASC;

-- Ko je najbolje plaćeni radnik u celom preduzeću?
SELECT ime, posao, plata
FROM radnik
WHERE plata = (SELECT MAX(plata) FROM radnik)
LIMIT 1;

-- Prikaži imena radnika koji su se poslednji zaposlili u svakom odeljenju.
SELECT ime, datum_zaposlenja, broj_odeljenja
FROM radnik
WHERE datum_zaposlenja IN (SELECT MAX(datum_zaposlenja) FROM radnik GROUP BY broj_odeljenja);
-- nije bas najbolji upit jer ima 5 rezultata umesto 4. 2 datuma se poklapaju.

-- Prikazati za svakog radnika ime, posao, kao i broj odeljenja, naziv i mesto
-- odeljenja u kome radi.
SELECT ime, posao, o.broj_odeljenja, ime_odeljenja, mesto
FROM radnik JOIN odeljenje o on radnik.broj_odeljenja = o.broj_odeljenja;

-- Prikazati za svakog radnika ime, posao i sve informacije o projektu na kome radi.
SELECT r.ime, r.posao, p.*
FROM radnik r JOIN ucesce u on r.idbr = u.idbr
    JOIN projekat p on u.broj_projekta = p.broj_projekta;

-- Izlistaj ime i posao zaposlenih, broj, ime odeljenja i mesto gde rade zaposleni
-- koji obavljaju posao analitičara.
SELECT r.ime, r.posao, r.broj_odeljenja, o.ime_odeljenja, o.mesto
FROM radnik r JOIN odeljenje o on r.broj_odeljenja = o.broj_odeljenja
WHERE posao = 'analitičar';

-- Prikazati ime radnika, platu i mesto u kome rade za sve radnike čija je plata između
-- 1 500 i 2 500 (uključujući i te vrednosti) i čije ime ne sadrži slovo e. Rezultate
-- poređati po plati u opadajućem, a zatim po imenu u rastućem redosledu.
SELECT r.ime, r.plata, o.mesto
FROM radnik r JOIN odeljenje o on r.broj_odeljenja = o.broj_odeljenja
WHERE plata BETWEEN 1500 AND 2500
AND ime NOT ILIKE '%e%'
ORDER BY plata DESC, ime ASC;

-- Prikazati imena zaposlenih i imena projekata za zaposlene koji imaju funkciju
-- savetnika na projektu i čija je plata veća od srednje vrednosti plate
-- zaposlenih u odeljenju 30.
SELECT r.ime, p.imeproj
FROM radnik r JOIN ucesce u on r.idbr = u.idbr
JOIN projekat p on u.broj_projekta = p.broj_projekta
WHERE posao = 'savetnik'
    AND plata > (SELECT avg(plata) FROM radnik WHERE broj_odeljenja = 30);

-- Prikazati imena projekata i broj radnika na njima za sve projekte na kojima
-- radi više od 3 radnika.
SELECT p.imeproj, count(u.idbr)
FROM projekat p JOIN ucesce u on p.broj_projekta = u.broj_projekta
GROUP BY p.broj_projekta
HAVING count(idbr) > 3;

-- Prikazati ime projekta i ukupan broj sati angažovanja svih zaposlenih za
-- projekte na kojima je ukupan broj časova angažovanja između 5000 i 10000.
SELECT p.imeproj, sum(u.broj_sati)
FROM projekat p JOIN ucesce u on p.broj_projekta = u.broj_projekta
GROUP BY p.broj_projekta
HAVING sum(u.broj_sati) BETWEEN 5000 AND 10000;

-- Izlistaj sve podatke o odeljenjima i radnicima za odeljenja čija imena počinju
-- slovima d ili r.
SELECT o.*, r.*
FROM odeljenje o JOIN radnik r on o.broj_odeljenja = r.broj_odeljenja
-- FROM odeljenje o LEFT JOIN radnik r on o.broj_odeljenja = r.broj_odeljenja
WHERE o.ime_odeljenja ILIKE 'd%' OR o.ime_odeljenja ILIKE 'r%';

-- Prikazati nazive odeljenja, ime i posao radnika koji rade u njima, uključujući i
-- odeljenja u kojima ne radi ni jedan radnik.
SELECT o.ime_odeljenja, r.ime, r.posao
FROM odeljenje o LEFT JOIN radnik r on o.broj_odeljenja = r.broj_odeljenja;

-- Prikazati imena i poslove radnika, kao i broj i imena projekata na kojima rade
-- uključujući i projekte na kojima ne radi ni jedan radnik.
SELECT r.ime, r.posao, p.broj_projekta, p.imeproj
FROM radnik r RIGHT JOIN ucesce u on r.idbr = u.idbr
RIGHT JOIN projekat p on u.broj_projekta = p.broj_projekta;

-- Prikazati imena i poslove radnika, kao i broj i imena projekata na kojima rade,
-- uključujući i radnike koji ne rade ni na jednom projektu.

-- Prikazati imena i poslove radnika, kao i broj i imena projekata samo za
-- projekte na kojima ne radi ni jedan radnik.

-- Prikazati imena i poslove radnika, kao i broj i imena projekata na kojima rade
-- samo za radnike koji ne rade ni na jednom projektu.

-- Prikazati nazive odeljenja, ime i posao svakog radnika koji u njima rade
-- uključujući i radnike koji nisu raspoređeni ni u jednom odeljenju, kao i
-- odeljenja u kojima ne radi ni jedan radnik.

-- Prikazati imena radnika i imena projekata na kojima rade uključujući i projekte
-- na kojima ne radi ni jedan radnik, kao i radnike koji ne rade ni na jednom
-- projektu.

-- Prikazati imena radnika koji ne rade ni na jednom projektu i imena projekata
-- na kojima ne radi ni jedan radnik.

-- self join
-- Prikazati imena radnika i imena njihovih neposrednih rukovodilaca

-- Prikazati imena radnika i imena njihovih neposrednih rukovodilaca uključujući
-- i radnike koji nemaju neposrednog rukovodioca

-- Prikazati imena radnika i imena njihovih neposrednih rukovodilaca samo za
-- radnike koji nemaju neposrednog rukovodioca.

-- Prikazati ime i zaradu radnika i njihovih neposrednih rukovodilaca za one
-- radnike koji zarađuju više od svojih neposrednih rukovodilaca.

-- Prikazati imena radnika koji imaju istu kvalifikaciju kao ___ (izabrati nekoga)
-- pomoću unutrašnjag spajanja - SELF JOIN
-- pomoću ugnježdenog upita

-- Prikaži imena, posao i broj odeljenja radnika kojima je rukovodilac Pavle.
-- prirodnim spajanjem tabela
-- ugnježdenim upitom

-- Izlistaj šifru odeljenja i najveću platu u svakom odeljenju. Rezultat urediti po
-- broju odeljenja u opadajućem redosledu.

-- Izlistaj šifru i ime odeljenja, kao i platu, šifru, ime i posao najbolje plaćenog
-- radnika u svakom odeljenju.


