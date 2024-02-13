create table if not exists radnik
(
    idbr             integer PRIMARY KEY NOT NULL, --identifikacioni broj
    ime              varchar(25)         NOT NULL,
    posao            varchar(15)         NOT NULL,
    kvalifikacija    varchar(3) default NULL,
    rukovodilac      integer    default NULL,
    datum_zaposlenja date       default NULl,
    premija          integer    default NULL,
    plata            integer    default 0,
    broj_odeljenja   integer             NOT NULL
);

create table if not exists odeljenje
(
    broj_odeljenja integer PRIMARY KEY NOT NULL,
    ime_odeljenja  varchar(15)         NOT NULL,
    mesto          varchar(20)
);

create table if not exists projekat
(
    broj_projekta integer PRIMARY KEY NOT NULL,
    imeproj       varchar(13)         NOT NULL,
    sredstva      integer
);

create table if not exists ucesce
(
    idbr            integer NOT NULL,
    broj_projekta integer             NOT NULL,
    broj_sati     integer             NOT NULL,
    funkcija      varchar(15)         NOT NULL
);

insert into public.odeljenje values (10, 'Komercijala', 'Novi Beograd');
insert into public.odeljenje values (20, 'Plan', 'Dorćol');
insert into public.odeljenje values (30, 'Prodaja', 'Stari Grad');
insert into public.odeljenje values (40, 'Direkcija', 'Banovo Brdo');
insert into public.odeljenje values (50, 'Računski centar', 'Zemun');

insert into public.projekat values (100, 'uvoz', 3000000);
insert into public.projekat values (200, 'izvoz', 2000000);
insert into public.projekat values (300, 'plasman', 6000000);
insert into public.projekat values (400, 'projektovanje', 5000000);
insert into public.projekat values (500, 'izgradnja', 0);

insert into public.radnik values (5367, 'Petar', 'vozač', 'KV', 5780, '1978-01-01', 1900, 1300, 20);
insert into public.radnik values (5497, 'Aco', 'radnik', 'KV', 5662, '1990-02-17', 800, 1000, 10);
insert into public.radnik values (5519, 'Vaso', 'prodavac', 'VKV', 5662, '1991-11-07', 1300, 1200, 10);
insert into public.radnik values (5652, 'Jovan', 'radnik', 'KV', 5662, '1980-05-31', 500, 1000, 10);
insert into public.radnik values (5662, 'Jovo', 'upravnik', 'VSS', 5842, '1983-08-12', NULL, 2400, 10);
insert into public.radnik values (5696, 'Miro', 'radnik', 'KV', 5662, '1991-09-30', 0, 1000, 10);
insert into public.radnik values (5780, 'Bozo', 'upravnik', 'VSS', 5842, '1984-08-11', NULL, 2200, 20);
insert into public.radnik values (5786, 'Pavle', 'upravnik', 'VSS', 5842, '1983-05-22', NULL, 2800, 30);
insert into public.radnik values (5842, 'Savo', 'direktor', 'VSS', NULL, '1981-12-15', NULL, 3000, 40);
insert into public.radnik values (5867, 'Simo', 'savetnik', 'VSS', 5842, '1970-08-08', NULL, 2750, 40);
insert into public.radnik values (5874, 'Tomo', 'radnik', 'KV', 5662, '1971-04-19', 1100, 1000, 10);
insert into public.radnik values (5898, 'Andro', 'nabavljač', 'KV', 5786, '1980-01-20', 1200, 1100, 30);
insert into public.radnik values (5900, 'Slobo', 'vozač', 'KV', 5780, '1978-10-03', 1300, 900, 20);
insert into public.radnik values (5932, 'Mita', 'savetnik', 'VSS', 5842, '1965-03-25', NULL, 2600, 20);
insert into public.radnik values (5953, 'Pero', 'nabavljač', 'KV', 5786, '1979-01-12', 0, 1100, 30);
insert into public.radnik values (6234, 'Marko', 'analitičar', 'VSS', 5786, '1990-12-17', 3000, 1300, 10);
insert into public.radnik values (6789, 'Janko', 'rukovodilac', 'VSS', NULL, '1999-12-23', 10, 3900, 40);
insert into public.radnik values (7890, 'Ivan', 'analitičar', 'VSS', 5786, '1990-12-17', 3200, 1600, 20);

insert into public.ucesce values (5497, 400, 2000, 'IZVRŠILAC');
insert into public.ucesce values (5519, 300, 2000, 'IZVRŠILAC');
insert into public.ucesce values (5652, 100, 1000, 'IZVRŠILAC');
insert into public.ucesce values (5652, 300, 1000, 'IZVRŠILAC');
insert into public.ucesce values (5662, 300, 2000, 'ŠEF');
insert into public.ucesce values (5696, 200, 2000, 'ŠEF');
insert into public.ucesce values (5696, 300, 2000, 'IZVRŠILAC');
insert into public.ucesce values (5780, 200, 2000, 'ORGANIZATOR');
insert into public.ucesce values (5786, 100, 2000, 'KONSULTANT');
insert into public.ucesce values (5842, 100, 2000, 'ŠEF');
insert into public.ucesce values (5867, 200, 2000, 'KONSULTANT');
insert into public.ucesce values (5898, 200, 2000, 'IZVRŠILAC');
insert into public.ucesce values (5900, 100, 2000, 'IZVRŠILAC');
insert into public.ucesce values (5932, 100, 500, 'KONSULTANT');
insert into public.ucesce values (5932, 200, 1000, 'ORGANIZATOR');
insert into public.ucesce values (5932, 300, 500, 'NADZORNIK');
insert into public.ucesce values (5953, 100, 1000, 'IZVRŠILAC');
insert into public.ucesce values (5953, 300, 1000, 'IZVRŠILAC');
insert into public.ucesce values (6234, 100, 500, 'NADZORNIK');
insert into public.ucesce values (6234, 200, 1200, 'IZVRŠILAC');
insert into public.ucesce values (6234, 300, 300, 'KONSULTANT');
insert into public.ucesce values (6789, 200, 2000, 'IZVRŠILAC');
insert into public.ucesce values (7890, 300, 2000, 'IZVRŠILAC');

ALTER TABLE ucesce ADD CONSTRAINT fk_ucesce_projekat FOREIGN KEY (broj_projekta) REFERENCES projekat(broj_projekta);
ALTER TABLE radnik ADD CONSTRAINT fk_radnik_odeljenje FOREIGN KEY (broj_odeljenja) REFERENCES odeljenje(broj_odeljenja);
ALTER TABLE ucesce ADD CONSTRAINT fk_ucesce_radnik FOREIGN KEY (idbr) REFERENCES radnik(idbr);
ALTER TABLE radnik ADD CONSTRAINT fk_radnik_radnik FOREIGN KEY (rukovodilac) REFERENCES radnik(idbr);
CREATE INDEX ind_imeod ON odeljenje (ime_odeljenja);
CREATE UNIQUE INDEX ind_broj ON odeljenje(broj_odeljenja);
