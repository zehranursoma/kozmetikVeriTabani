--
-- PostgreSQL database dump
--

-- Dumped from database version 10.13
-- Dumped by pg_dump version 12rc1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

--
-- Name: AltBayi; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AltBayi" (
    "ABID" integer NOT NULL,
    "ABAdi" character varying(50),
    "BBID" integer,
    "Adres" character varying(100)
);


ALTER TABLE public."AltBayi" OWNER TO postgres;

--
-- Name: BayiUrun; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."BayiUrun" (
    "UrunID" integer,
    "ABID" integer,
    "UrunMiktari" integer,
    "Aciklama" character varying(50)
);


ALTER TABLE public."BayiUrun" OWNER TO postgres;

--
-- Name: BolgeBayi; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."BolgeBayi" (
    "BBID" integer NOT NULL,
    "BBAdi" character varying(50),
    "SehirID" integer,
    "Adres" character varying(100)
);


ALTER TABLE public."BolgeBayi" OWNER TO postgres;

--
-- Name: Calisan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Calisan" (
    "CalisanID" integer NOT NULL,
    "TC" integer,
    "CAdi" character varying(50),
    "CSoyadi" character varying(50),
    "Mail" character varying(50),
    "Telefon" character varying(50),
    "CGID" integer,
    "ABID" integer,
    "Maas" integer
);


ALTER TABLE public."Calisan" OWNER TO postgres;

--
-- Name: CalisanGorev; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."CalisanGorev" (
    "CGID" integer NOT NULL,
    "GorevAdi" character varying(50)
);


ALTER TABLE public."CalisanGorev" OWNER TO postgres;

--
-- Name: Depo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Depo" (
    "DepoID" integer NOT NULL,
    "DepoAdi" character varying(50),
    "BBID" integer
);


ALTER TABLE public."Depo" OWNER TO postgres;

--
-- Name: Fatura; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Fatura" (
    "FaturaID" integer NOT NULL,
    "ToplamTutar" integer,
    "KDV" integer,
    "ABID" integer,
    "MusteriID" integer,
    "OTID" integer,
    "CalisanID" integer
);


ALTER TABLE public."Fatura" OWNER TO postgres;

--
-- Name: FaturaUrun; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."FaturaUrun" (
    "UrunID" integer,
    "FaturaID" integer,
    "AlisTarihi" date
);


ALTER TABLE public."FaturaUrun" OWNER TO postgres;

--
-- Name: Firma; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Firma" (
    "FirmaID" integer NOT NULL,
    "FirmaAdi" character varying(50),
    "KurulusTarihi" date
);


ALTER TABLE public."Firma" OWNER TO postgres;

--
-- Name: Kategori; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Kategori" (
    "KategoriID" integer NOT NULL,
    "KategoriAdi" character varying(50)
);


ALTER TABLE public."Kategori" OWNER TO postgres;

--
-- Name: Musteri; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Musteri" (
    "MusteriID" integer NOT NULL,
    "TC" integer,
    "MAdi" character varying(50),
    "Msoyadi" character varying(50),
    "Mail" character varying(50),
    "Telefon" character varying(50),
    "Yas" integer
);


ALTER TABLE public."Musteri" OWNER TO postgres;

--
-- Name: Musteri_Kart; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Musteri_Kart" (
    "MKID" integer NOT NULL,
    "KullaniciAdi" character varying(50),
    "Sifre" integer,
    "Puan" integer,
    "AlisTarihi" date,
    "MusteriID" integer,
    "Yas" integer
);


ALTER TABLE public."Musteri_Kart" OWNER TO postgres;

--
-- Name: OdemeTuru; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."OdemeTuru" (
    "OTID" integer NOT NULL,
    "OTAdi" character varying(50)
);


ALTER TABLE public."OdemeTuru" OWNER TO postgres;

--
-- Name: Sehir; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Sehir" (
    "SehirID" integer NOT NULL,
    "SehirAdi" character varying(50),
    "UlkeID" integer
);


ALTER TABLE public."Sehir" OWNER TO postgres;

--
-- Name: Stok; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Stok" (
    "DepoID" integer,
    "UrunID" integer,
    "StokMiktarı" integer,
    "GuncellemeTarihi" date
);


ALTER TABLE public."Stok" OWNER TO postgres;

--
-- Name: Ulke; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Ulke" (
    "UlkeID" integer NOT NULL,
    "UlkeAdi" character varying(50)
);


ALTER TABLE public."Ulke" OWNER TO postgres;

--
-- Name: Urun; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Urun" (
    "UrunID" integer NOT NULL,
    "UrunAdi" character varying(50),
    "FirmaID" integer,
    "KategoriID" integer,
    "DepoID" integer,
    "Fiyat" integer,
    "Aciklama" character varying(50)
);


ALTER TABLE public."Urun" OWNER TO postgres;

--
-- Data for Name: AltBayi; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."AltBayi" VALUES
	(1, 'Sulak', 1, 'ŞIHBEDRETTİN MAH.396. SOKAK NO:737 101280 ILGIN/KONYA'),
	(2, 'Derince', 2, 'ESENTEPE MAH.ERDOĞAN SOKAK NO:293 81628 EVREN/ANKARA'),
	(3, 'Side', 3, 'YUMAKLAR KÖYÜ MAH.AKÇALAR MEVKİ SOKAK NO:247 74543 SERİK/ANTALYA'),
	(4, 'Ada', 4, 'ONUR MAH.45197. SOKAK NO:696 78102 SEYHAN/ADANA'),
	(5, 'Porsak', 5, 'ADNAN MENDERES MAH.1061. SOKAK NO:275 81074 KEÇİÖREN/ANKARA'),
	(6, 'Saricamli', 6, 'İSTİKLAL MAH.3944. SOKAK NO:594 118918 SARIÇAM/ADANA'),
	(7, 'Bal', 7, 'YENİ MAH.50. SOKAK NO:813 84043 HAVRAN/BALIKESİR'),
	(8, 'Gemlik', 8, 'GENÇALİ MAH.85.(KUMSAZ) SOKAK NO:722 86223 GEMLİK/BURSA'),
	(9, 'Buyuk', 9, 'ALKENT 2000 MAH.SERVİ SOKAK NO:479 96333 BÜYÜKÇEKMECE/İSTANBUL'),
	(10, 'Akça', 10, 'ŞÜKRAN MAH.KALKANCI SOKAK NO:215 100619 MERAM/KONYA'),
	(11, 'Tavsanli', 11, 'TUNÇBİLEK-TUNÇBİLEK-DEMİRBİLEK MAH.YENİYURT CADDESİ SOKAK NO:82 102346 TAVŞANLI/KÜTAHYA'),
	(12, 'Bornova', 12, 'YILDIRIM BEYAZIT MAH.5142. SOKAK NO:210 96488 BORNOVA/İZMİR'),
	(13, 'Tepe', 13, 'ZİNCİRLİKUYU MAH.GÜLNUR SOKAK NO:163 119227 TEPEBAŞI/ESKİŞEHİR'),
	(14, 'Korfezli', 14, 'CUMHURİYET MAH.ÖĞRETMEN SOKAK NO:99 100347 KÖRFEZ/KOCAELİ');


--
-- Data for Name: BayiUrun; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."BayiUrun" VALUES
	(1, 4, 6, 'Ceylan göz etkisi'),
	(2, 8, 2, 'Transparan pudra'),
	(3, 10, 63, 'Yumuşacık bir cilt'),
	(4, 11, 93, 'Nemlendirici etkili parlatıcı'),
	(5, 9, 24, 'Kusursuz kapatma '),
	(6, 13, 3, 'Rengarek bir palet'),
	(7, 2, 17, 'Nude tonda doğal ruj'),
	(8, 14, 34, 'Yüksek kapatıcılık ve doğallığın birleşimi');


--
-- Data for Name: BolgeBayi; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."BolgeBayi" VALUES
	(1, 'Hadim', 42, 'TAŞPINAR MAH.ALİEFENDİ YAYLASI KÜME EVLERİ SOKAK NO:82 101190 HADİM/KONYA'),
	(2, 'Mamak', 6, 'EKİN MAH.1600/4 SOKAK NO:577 81145 MAMAK/ANKARA'),
	(3, 'Korkuteli', 7, 'YEŞİLYAYLA-ORTA MAH.229. SOKAK NO:642 72913 KORKUTELİ/ANTALYA'),
	(4, 'Saricam', 1, 'İSTİKLAL MAH.3944. SOKAK NO:594 118918 SARIÇAM/ADANA'),
	(5, 'Yenimahalle', 6, 'KORU MAH.2584. SOKAK NO:191 81282 YENİMAHALLE/ANKARA'),
	(6, 'Saricam', 1, 'İSTİKLAL MAH.3944. SOKAK NO:594 118918 SARIÇAM/ADANA'),
	(7, 'Savastepe', 10, 'SAVAŞTEPE/BALIKESİR'),
	(8, 'Nilufer', 16, 'ALTIN ŞEHİR MAH.231. SOKAK NO:534 85909 NİLÜFER/BURSA'),
	(9, 'Bakirkoy', 34, 'ŞENLİKKÖY MAH.ŞEHİT MUAMMER YÜZSÜREN SOKAK NO:125 95689 BAKIRKÖY/İSTANBUL'),
	(10, 'Cumra', 42, 'GÜVERCİNLİK-MERKEZ MAH.BAĞDAT CADDESİ SOKAK NO:438 100978 ÇUMRA/KONYA'),
	(11, 'Emet', 43, 'HAMAM MAH.DERVİŞ SOKAK NO:864 101912 EMET/KÜTAHYA'),
	(12, 'Odemis', 35, 'BADEMLİ-AKÇALI MAH.TOPTEPE SOKAK NO:529 72137 ÖDEMİŞ/İZMİR'),
	(13, 'Tepebasi', 26, 'ZİNCİRLİKUYU MAH.GÜLNUR SOKAK NO:163 119227 TEPEBAŞI/ESKİŞEHİR'),
	(14, 'Korfez', 41, 'CUMHURİYET MAH.ÖĞRETMEN SOKAK NO:99 100347 KÖRFEZ/KOCAELİ');


--
-- Data for Name: Calisan; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Calisan" VALUES
	(1, 252569741, 'Leyla', 'Kara', 'Leylakara@gmail.com', '05421365478', 1, 1, 2500),
	(2, 254789479, 'Ayse', 'Sonmez', 'Aysesonmez@gmail.com', '01235478965', 2, 6, 1000),
	(3, 965423856, 'Merve', 'Kurtulmus', 'Kurtulmusmerve@gmail.com', '06523147896', 1, 7, 25000),
	(4, 362145964, 'Sude', 'Korkmaz', 'Sudekorkmaz@gmail.com', '06452178963', 4, 3, 3600),
	(5, 578564568, 'Ferhat', 'Can', 'Cancan@gmail.com', '05423658823', 3, 2, 2500),
	(6, 255652626, 'Orkun', 'Okur', 'Okur@gmail.com', '05436254233', 2, 14, 6000),
	(7, 545641541, 'Sedat', 'Serge', 'Serge@gmail.com', '05421554622', 4, 10, 1400),
	(8, 365488523, 'Serdar', 'Deren', 'Derenserdar@gmail.com', '05978521354', 1, 5, 6000),
	(9, 241841687, 'Umut', 'Ceylan', 'Ceylanumut@gmail.com', '05462365465', 3, 9, 3500),
	(10, 156484587, 'Pelin', 'Serge', 'sergepel@gmail.com', '05412563255', 2, 11, 5820);


--
-- Data for Name: CalisanGorev; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."CalisanGorev" VALUES
	(1, 'Satis Danismani'),
	(2, 'Personel'),
	(3, 'Guzellik Danismani'),
	(4, 'Satis Uzmani');


--
-- Data for Name: Depo; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Depo" VALUES
	(1, 'Sulak', 1),
	(2, 'Organize', 2),
	(3, 'Garga', 3),
	(4, 'Sumak', 4),
	(5, 'Serez', 5),
	(6, 'Polen', 6),
	(7, 'Akel', 7),
	(8, 'Orman', 8),
	(9, 'Korel', 9),
	(10, 'Serin', 10),
	(11, 'Cuma', 11),
	(12, 'Serge', 12),
	(13, 'Firat', 13),
	(14, 'Deren', 14);


--
-- Data for Name: Fatura; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Fatura" VALUES
	(1, 36, 23, 5, 6, 3, 4),
	(3, 125, 36, 4, 4, 2, 3),
	(2, 265, 11, 3, 10, 1, 2),
	(4, 96, 20, 13, 2, 1, 1),
	(5, 630, 45, 2, 9, 3, 10),
	(6, 25, 8, 10, 8, 2, 8),
	(7, 10, 2, 1, 5, 3, 9),
	(8, 89, 21, 9, 1, 1, 1),
	(10, 967, 65, 7, 7, 1, 2),
	(11, 20, 2, 1, 5, 3, 9),
	(12, 895, 65, 14, 8, 2, 8),
	(13, 25, 3, 9, 10, 1, 1);


--
-- Data for Name: FaturaUrun; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."FaturaUrun" VALUES
	(1, 4, '2020-01-01'),
	(2, 3, '2019-07-03'),
	(3, 1, '2020-04-04'),
	(11, 2, '2020-05-03'),
	(5, 13, '2019-12-12'),
	(7, 9, '2020-09-07'),
	(8, 7, '2020-04-04'),
	(9, 6, '2019-07-11'),
	(10, 3, '2020-04-09'),
	(NULL, NULL, NULL);


--
-- Data for Name: Firma; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Firma" VALUES
	(1, 'Korkmaz', '2000-07-11'),
	(2, 'Lale', '1950-08-03'),
	(3, 'Renk', '1968-05-01'),
	(4, 'Okyanus', '1992-07-03'),
	(5, 'Porsuk', '2006-02-06');


--
-- Data for Name: Kategori; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Kategori" VALUES
	(1, 'Maskara'),
	(2, 'Pudra'),
	(3, 'Nemlendirici'),
	(4, 'Parlatici'),
	(5, 'Kapatici'),
	(6, 'Farpaleti'),
	(7, 'Ruj'),
	(8, 'Fondoten'),
	(9, 'Guneskremi'),
	(10, 'Allik');


--
-- Data for Name: Musteri; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Musteri" VALUES
	(1, 15564183, 'Veli', 'Karaman', 'Velikaraman@gmail.com', '05467520469', 36),
	(7, 316565628, 'Öykü', 'Kara', 'Oykukara@gmail.com', '06547896120', 56),
	(6, 465416569, 'İkra', 'Çelik', 'Celik@gmail.com', '02365478921', 38),
	(5, 541612377, 'Hakkı ', 'Can', 'Can@gmail.com', '08741032502', 45),
	(4, 632547897, 'İlayda', 'Petek', 'Petek122@gmail.com', '05412369877', 21),
	(3, 154885139, 'Berke', 'Ulusoy', 'Ulusoyberke@gmail.com', '06523147898', 45),
	(2, 546541217, 'Gülizar', 'Ham', 'Hamgulizar@gmail.com', '05321478952', 29),
	(8, 546656456, 'Mehmet', 'Sebil', 'Sebilmehmet@gmail.com', '05462585105', 40),
	(9, 151545478, 'Güneş', 'Gebze', 'Gunes@gmail.com', '05423512245', 22),
	(10, 454654568, 'Derya', 'Gül', 'Gulderya@gmail.com', '05632487525', 38);


--
-- Data for Name: Musteri_Kart; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Musteri_Kart" VALUES
	(1, 'Veli', 123456, 20, '2020-07-03', 1, 36),
	(2, 'Der', 85215, 96, '2020-06-04', 2, 39),
	(3, 'Yum', 4874965, 254, '2020-01-01', 3, 45),
	(4, 'Kaputar', 15645, 5486, '2020-07-07', 4, 21),
	(5, 'Orman', 548745, 10, '2020-01-03', 5, 45),
	(6, 'Portakal', 25485, 89, '2020-09-04', 6, 38),
	(7, 'Ural', 655654, 72, '2020-07-03', 7, 56),
	(8, 'Lale', 25455, 17, '2019-07-02', 8, 40),
	(9, 'Cake', 8562, 892, '2018-11-11', 9, 22),
	(10, 'Posasre', 1548, 145, '2017-08-12', 10, 38);


--
-- Data for Name: OdemeTuru; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."OdemeTuru" VALUES
	(1, 'Kredi Kartı'),
	(2, 'Kapıda Ödeme'),
	(3, 'Havale');


--
-- Data for Name: Sehir; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Sehir" VALUES
	(42, 'Konya', 1),
	(34, 'Istanbul', 1),
	(35, 'Izmir', 1),
	(10, 'Balikesir', 1),
	(41, 'Kocaeli', 1),
	(26, 'Eskisehir', 1),
	(16, 'Bursa', 1),
	(1, 'Adana', 1),
	(7, 'Antalya', 1),
	(6, 'Ankara', 1),
	(43, 'Kutahya', 1);


--
-- Data for Name: Stok; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Stok" VALUES
	(2, 5, 896, '2020-07-06'),
	(1, 10, 6518, '2019-05-05'),
	(3, 11, 564, '2020-08-01'),
	(13, 2, 4452, '2020-03-01'),
	(5, 3, 58567, '2019-08-04'),
	(14, 1, 15496, '2019-09-09'),
	(7, 4, 56565, '2020-03-03'),
	(6, 8, 345145, '2020-07-07');


--
-- Data for Name: Ulke; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Ulke" VALUES
	(1, 'Turkiye

'),
	(2, 'Fransa
'),
	(3, 'İspanya'),
	(4, 'Polonya'),
	(5, 'İngiltere');


--
-- Data for Name: Urun; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Urun" VALUES
	(1, 'Bambieye', 1, 1, 1, 98, 'Ceylan göz etkisi'),
	(2, 'TozPudra', 2, 2, 3, 52, 'Transparan pudra'),
	(4, 'Parilparil', 3, 4, 14, 64, 'Nemlendirici etkili parlatıcı'),
	(3, 'NemBombasi', 5, 3, 8, 43, 'Yumuşacık bir cilt'),
	(6, 'Varona', 2, 6, 9, 350, 'Rengarek bir palet'),
	(8, 'TrueMatch', 1, 8, 4, 250, 'Yüksek kapatıcılık ve doğallığın birleşimi'),
	(9, 'Sun', 4, 9, 2, 90, 'Spf 50'),
	(10, 'SefAllik', 2, 10, 12, 63, 'Şeftali tonlu allık'),
	(7, 'Renk', 5, 7, 10, 85, 'Nude tonda doğal ruj'),
	(11, 'ROma', 3, 5, 6, 530, 'Renk eşitleyici kapatıcı'),
	(5, 'Sleek', 4, 5, 7, 120, 'Kusursuz kapatma ');


--
-- Name: AltBayi AltBayi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AltBayi"
    ADD CONSTRAINT "AltBayi_pkey" PRIMARY KEY ("ABID");


--
-- Name: BolgeBayi BolgeBayi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."BolgeBayi"
    ADD CONSTRAINT "BolgeBayi_pkey" PRIMARY KEY ("BBID");


--
-- Name: CalisanGorev CalisanGorev_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."CalisanGorev"
    ADD CONSTRAINT "CalisanGorev_pkey" PRIMARY KEY ("CGID");


--
-- Name: Calisan Calisan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Calisan"
    ADD CONSTRAINT "Calisan_pkey" PRIMARY KEY ("CalisanID");


--
-- Name: Depo Depo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Depo"
    ADD CONSTRAINT "Depo_pkey" PRIMARY KEY ("DepoID");


--
-- Name: Fatura Fatura_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Fatura"
    ADD CONSTRAINT "Fatura_pkey" PRIMARY KEY ("FaturaID");


--
-- Name: Firma Firma_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Firma"
    ADD CONSTRAINT "Firma_pkey" PRIMARY KEY ("FirmaID");


--
-- Name: Kategori Kategori_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Kategori"
    ADD CONSTRAINT "Kategori_pkey" PRIMARY KEY ("KategoriID");


--
-- Name: Musteri_Kart Musteri_Kart_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Musteri_Kart"
    ADD CONSTRAINT "Musteri_Kart_pkey" PRIMARY KEY ("MKID");


--
-- Name: Musteri Musteri_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Musteri"
    ADD CONSTRAINT "Musteri_pkey" PRIMARY KEY ("MusteriID");


--
-- Name: OdemeTuru OdemeTuru_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."OdemeTuru"
    ADD CONSTRAINT "OdemeTuru_pkey" PRIMARY KEY ("OTID");


--
-- Name: Sehir Sehir_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Sehir"
    ADD CONSTRAINT "Sehir_pkey" PRIMARY KEY ("SehirID");


--
-- Name: Ulke Ulke_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Ulke"
    ADD CONSTRAINT "Ulke_pkey" PRIMARY KEY ("UlkeID");


--
-- Name: Urun Urun_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Urun"
    ADD CONSTRAINT "Urun_pkey" PRIMARY KEY ("UrunID");


--
-- Name: Fatura fk_ABID; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Fatura"
    ADD CONSTRAINT "fk_ABID" FOREIGN KEY ("ABID") REFERENCES public."AltBayi"("ABID") NOT VALID;


--
-- Name: BayiUrun fk_ABIDD; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."BayiUrun"
    ADD CONSTRAINT "fk_ABIDD" FOREIGN KEY ("ABID") REFERENCES public."AltBayi"("ABID") NOT VALID;


--
-- Name: AltBayi fk_BBId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AltBayi"
    ADD CONSTRAINT "fk_BBId" FOREIGN KEY ("BBID") REFERENCES public."BolgeBayi"("BBID") NOT VALID;


--
-- Name: BolgeBayi fk_BolgeBayi; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."BolgeBayi"
    ADD CONSTRAINT "fk_BolgeBayi" FOREIGN KEY ("SehirID") REFERENCES public."Sehir"("SehirID") NOT VALID;


--
-- Name: Calisan fk_CGID; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Calisan"
    ADD CONSTRAINT "fk_CGID" FOREIGN KEY ("CGID") REFERENCES public."CalisanGorev"("CGID") NOT VALID;


--
-- Name: Depo fk_Depo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Depo"
    ADD CONSTRAINT "fk_Depo" FOREIGN KEY ("BBID") REFERENCES public."BolgeBayi"("BBID") NOT VALID;


--
-- Name: Urun fk_Urun; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Urun"
    ADD CONSTRAINT "fk_Urun" FOREIGN KEY ("FirmaID") REFERENCES public."Firma"("FirmaID") NOT VALID;


--
-- Name: BayiUrun fk_bayi; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."BayiUrun"
    ADD CONSTRAINT fk_bayi FOREIGN KEY ("UrunID") REFERENCES public."Urun"("UrunID") NOT VALID;


--
-- Name: Stok fk_depo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Stok"
    ADD CONSTRAINT fk_depo FOREIGN KEY ("DepoID") REFERENCES public."Depo"("DepoID") NOT VALID;


--
-- Name: FaturaUrun fk_faturaurunn; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FaturaUrun"
    ADD CONSTRAINT fk_faturaurunn FOREIGN KEY ("UrunID") REFERENCES public."Urun"("UrunID") NOT VALID;


--
-- Name: Musteri_Kart fk_musteri; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Musteri_Kart"
    ADD CONSTRAINT fk_musteri FOREIGN KEY ("MusteriID") REFERENCES public."Musteri"("MusteriID") NOT VALID;


--
-- Name: Sehir fk_sehir; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Sehir"
    ADD CONSTRAINT fk_sehir FOREIGN KEY ("UlkeID") REFERENCES public."Ulke"("UlkeID") NOT VALID;


--
-- PostgreSQL database dump complete
--

