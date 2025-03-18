--
-- PostgreSQL database cluster dump
--

-- Started on 2025-03-15 11:38:06 MSK

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE admin;
ALTER ROLE admin WITH SUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE animator;
ALTER ROLE animator WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE belov_nesterova;
ALTER ROLE belov_nesterova WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE beva;
ALTER ROLE beva WITH SUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE cat;
ALTER ROLE cat WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS;
CREATE ROLE stas;
ALTER ROLE stas WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE stas228;
ALTER ROLE stas228 WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS;






--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.1)

-- Started on 2025-03-15 11:38:07 MSK

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

-- Completed on 2025-03-15 11:38:08 MSK

--
-- PostgreSQL database dump complete
--

--
-- Database "belov_nesterova" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.1)

-- Started on 2025-03-15 11:38:08 MSK

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

--
-- TOC entry 2965 (class 1262 OID 16563)
-- Name: belov_nesterova; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE belov_nesterova WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'ru_RU.UTF-8' LC_CTYPE = 'ru_RU.UTF-8';


ALTER DATABASE belov_nesterova OWNER TO postgres;

\connect belov_nesterova

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

SET default_table_access_method = heap;

--
-- TOC entry 202 (class 1259 OID 16574)
-- Name: teachers; Type: TABLE; Schema: public; Owner: belov_nesterova
--

CREATE TABLE public.teachers (
    "Фамилия" character varying,
    "Имя" character varying,
    "Отчество" character varying
);


ALTER TABLE public.teachers OWNER TO belov_nesterova;

--
-- TOC entry 2959 (class 0 OID 16574)
-- Dependencies: 202
-- Data for Name: teachers; Type: TABLE DATA; Schema: public; Owner: belov_nesterova
--

COPY public.teachers ("Фамилия", "Имя", "Отчество") FROM stdin;
Вавилова	Диана	Владимировна
Недера	Артур	Игоревич
Майбурова	Галина	Николаевна
Кокарева	Виктория	Юрьевна
Свиренкова	Олеся	Васильевна
Смирнова	Мария	Александровна
Сметанин	Александр	Дмитриевич
\.


-- Completed on 2025-03-15 11:38:09 MSK

--
-- PostgreSQL database dump complete
--

--
-- Database "beva" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.1)

-- Started on 2025-03-15 11:38:09 MSK

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

--
-- TOC entry 3050 (class 1262 OID 16581)
-- Name: beva; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE beva WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'ru_RU.UTF-8' LC_CTYPE = 'ru_RU.UTF-8';


ALTER DATABASE beva OWNER TO postgres;

\connect beva

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

SET default_table_access_method = heap;

--
-- TOC entry 203 (class 1259 OID 17042)
-- Name: category; Type: TABLE; Schema: public; Owner: beva
--

CREATE TABLE public.category (
    cat_id integer NOT NULL,
    category character varying,
    gender character varying,
    dist_bow character varying,
    points integer
);


ALTER TABLE public.category OWNER TO beva;

--
-- TOC entry 202 (class 1259 OID 17040)
-- Name: category_cat_id_seq; Type: SEQUENCE; Schema: public; Owner: beva
--

CREATE SEQUENCE public.category_cat_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.category_cat_id_seq OWNER TO beva;

--
-- TOC entry 3052 (class 0 OID 0)
-- Dependencies: 202
-- Name: category_cat_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beva
--

ALTER SEQUENCE public.category_cat_id_seq OWNED BY public.category.cat_id;


--
-- TOC entry 214 (class 1259 OID 17243)
-- Name: dates; Type: TABLE; Schema: public; Owner: beva
--

CREATE TABLE public.dates (
    data_id integer NOT NULL,
    data date
);


ALTER TABLE public.dates OWNER TO beva;

--
-- TOC entry 213 (class 1259 OID 17241)
-- Name: dates_data_id_seq; Type: SEQUENCE; Schema: public; Owner: beva
--

CREATE SEQUENCE public.dates_data_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dates_data_id_seq OWNER TO beva;

--
-- TOC entry 3053 (class 0 OID 0)
-- Dependencies: 213
-- Name: dates_data_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beva
--

ALTER SEQUENCE public.dates_data_id_seq OWNED BY public.dates.data_id;


--
-- TOC entry 216 (class 1259 OID 17266)
-- Name: employes; Type: TABLE; Schema: public; Owner: beva
--

CREATE TABLE public.employes (
    id integer NOT NULL,
    name character varying,
    city character varying,
    departament character varying,
    salary integer
);


ALTER TABLE public.employes OWNER TO beva;

--
-- TOC entry 215 (class 1259 OID 17264)
-- Name: employes_id_seq; Type: SEQUENCE; Schema: public; Owner: beva
--

CREATE SEQUENCE public.employes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.employes_id_seq OWNER TO beva;

--
-- TOC entry 3054 (class 0 OID 0)
-- Dependencies: 215
-- Name: employes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beva
--

ALTER SEQUENCE public.employes_id_seq OWNED BY public.employes.id;


--
-- TOC entry 207 (class 1259 OID 17090)
-- Name: gym; Type: TABLE; Schema: public; Owner: beva
--

CREATE TABLE public.gym (
    gym_id integer NOT NULL,
    name_gym character varying,
    adress character varying NOT NULL
);


ALTER TABLE public.gym OWNER TO beva;

--
-- TOC entry 208 (class 1259 OID 17093)
-- Name: gym_gym_id_seq; Type: SEQUENCE; Schema: public; Owner: beva
--

CREATE SEQUENCE public.gym_gym_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gym_gym_id_seq OWNER TO beva;

--
-- TOC entry 3055 (class 0 OID 0)
-- Dependencies: 208
-- Name: gym_gym_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beva
--

ALTER SEQUENCE public.gym_gym_id_seq OWNED BY public.gym.gym_id;


--
-- TOC entry 206 (class 1259 OID 17073)
-- Name: perestrelca; Type: TABLE; Schema: public; Owner: beva
--

CREATE TABLE public.perestrelca (
    sport_id integer,
    dist_bow character varying,
    cat_id integer,
    federation boolean,
    gym_id integer
);


ALTER TABLE public.perestrelca OWNER TO beva;

--
-- TOC entry 210 (class 1259 OID 17111)
-- Name: pricelist; Type: TABLE; Schema: public; Owner: beva
--

CREATE TABLE public.pricelist (
    pl_id integer NOT NULL,
    "Object" character varying NOT NULL,
    price bigint NOT NULL,
    "аренда" boolean
);


ALTER TABLE public.pricelist OWNER TO beva;

--
-- TOC entry 209 (class 1259 OID 17109)
-- Name: pricelist_pl_id_seq; Type: SEQUENCE; Schema: public; Owner: beva
--

CREATE SEQUENCE public.pricelist_pl_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pricelist_pl_id_seq OWNER TO beva;

--
-- TOC entry 3056 (class 0 OID 0)
-- Dependencies: 209
-- Name: pricelist_pl_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beva
--

ALTER SEQUENCE public.pricelist_pl_id_seq OWNED BY public.pricelist.pl_id;


--
-- TOC entry 212 (class 1259 OID 17122)
-- Name: shop_history; Type: TABLE; Schema: public; Owner: beva
--

CREATE TABLE public.shop_history (
    id integer NOT NULL,
    id_shop integer NOT NULL,
    count integer,
    sport_id integer NOT NULL,
    shop_date date
);


ALTER TABLE public.shop_history OWNER TO beva;

--
-- TOC entry 211 (class 1259 OID 17120)
-- Name: shop_history_id_seq; Type: SEQUENCE; Schema: public; Owner: beva
--

CREATE SEQUENCE public.shop_history_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shop_history_id_seq OWNER TO beva;

--
-- TOC entry 3057 (class 0 OID 0)
-- Dependencies: 211
-- Name: shop_history_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beva
--

ALTER SEQUENCE public.shop_history_id_seq OWNED BY public.shop_history.id;


--
-- TOC entry 205 (class 1259 OID 17064)
-- Name: sportsmen; Type: TABLE; Schema: public; Owner: beva
--

CREATE TABLE public.sportsmen (
    sport_id integer NOT NULL,
    surname character varying,
    name character varying,
    father character varying,
    phone bigint,
    bday date
);


ALTER TABLE public.sportsmen OWNER TO beva;

--
-- TOC entry 204 (class 1259 OID 17062)
-- Name: sportsmen_sport_id_seq; Type: SEQUENCE; Schema: public; Owner: beva
--

CREATE SEQUENCE public.sportsmen_sport_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sportsmen_sport_id_seq OWNER TO beva;

--
-- TOC entry 3058 (class 0 OID 0)
-- Dependencies: 204
-- Name: sportsmen_sport_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beva
--

ALTER SEQUENCE public.sportsmen_sport_id_seq OWNED BY public.sportsmen.sport_id;


--
-- TOC entry 2880 (class 2604 OID 17045)
-- Name: category cat_id; Type: DEFAULT; Schema: public; Owner: beva
--

ALTER TABLE ONLY public.category ALTER COLUMN cat_id SET DEFAULT nextval('public.category_cat_id_seq'::regclass);


--
-- TOC entry 2885 (class 2604 OID 17246)
-- Name: dates data_id; Type: DEFAULT; Schema: public; Owner: beva
--

ALTER TABLE ONLY public.dates ALTER COLUMN data_id SET DEFAULT nextval('public.dates_data_id_seq'::regclass);


--
-- TOC entry 2886 (class 2604 OID 17269)
-- Name: employes id; Type: DEFAULT; Schema: public; Owner: beva
--

ALTER TABLE ONLY public.employes ALTER COLUMN id SET DEFAULT nextval('public.employes_id_seq'::regclass);


--
-- TOC entry 2882 (class 2604 OID 17095)
-- Name: gym gym_id; Type: DEFAULT; Schema: public; Owner: beva
--

ALTER TABLE ONLY public.gym ALTER COLUMN gym_id SET DEFAULT nextval('public.gym_gym_id_seq'::regclass);


--
-- TOC entry 2883 (class 2604 OID 17114)
-- Name: pricelist pl_id; Type: DEFAULT; Schema: public; Owner: beva
--

ALTER TABLE ONLY public.pricelist ALTER COLUMN pl_id SET DEFAULT nextval('public.pricelist_pl_id_seq'::regclass);


--
-- TOC entry 2884 (class 2604 OID 17125)
-- Name: shop_history id; Type: DEFAULT; Schema: public; Owner: beva
--

ALTER TABLE ONLY public.shop_history ALTER COLUMN id SET DEFAULT nextval('public.shop_history_id_seq'::regclass);


--
-- TOC entry 2881 (class 2604 OID 17067)
-- Name: sportsmen sport_id; Type: DEFAULT; Schema: public; Owner: beva
--

ALTER TABLE ONLY public.sportsmen ALTER COLUMN sport_id SET DEFAULT nextval('public.sportsmen_sport_id_seq'::regclass);


--
-- TOC entry 3031 (class 0 OID 17042)
-- Dependencies: 203
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: beva
--

COPY public.category (cat_id, category, gender, dist_bow, points) FROM stdin;
1	Без категории	--	6-18 Всё	0
2	3 юнешеский разряд	ж	12 КЛ	400
3	3 юнешеский разряд	м	12 КЛ	400
4	2 юнешеский разряд	ж	12 КЛ	405
\.


--
-- TOC entry 3042 (class 0 OID 17243)
-- Dependencies: 214
-- Data for Name: dates; Type: TABLE DATA; Schema: public; Owner: beva
--

COPY public.dates (data_id, data) FROM stdin;
\.


--
-- TOC entry 3044 (class 0 OID 17266)
-- Dependencies: 216
-- Data for Name: employes; Type: TABLE DATA; Schema: public; Owner: beva
--

COPY public.employes (id, name, city, departament, salary) FROM stdin;
11	Дарья	Самара	hr	70
12	Борис	Самара	hr	78
13	Елена	Самара	it	84
14	Ксения	Москва	it	90
15	Леонид	Самара	it	104
16	Марина	Москва	it	100
17	Иван	Москва	it	120
18	Вероника	Москва	sales	96
19	Григорий	Самара	sales	96
20	Анна	Москва	sales	100
\.


--
-- TOC entry 3035 (class 0 OID 17090)
-- Dependencies: 207
-- Data for Name: gym; Type: TABLE DATA; Schema: public; Owner: beva
--

COPY public.gym (gym_id, name_gym, adress) FROM stdin;
1	Davpon	 Можжевельная 2
2	Orbita	Петрозаводская 44
\.


--
-- TOC entry 3034 (class 0 OID 17073)
-- Dependencies: 206
-- Data for Name: perestrelca; Type: TABLE DATA; Schema: public; Owner: beva
--

COPY public.perestrelca (sport_id, dist_bow, cat_id, federation, gym_id) FROM stdin;
1	18 КЛ	1	t	1
2	18 КЛ	4	f	1
\.


--
-- TOC entry 3038 (class 0 OID 17111)
-- Dependencies: 210
-- Data for Name: pricelist; Type: TABLE DATA; Schema: public; Owner: beva
--

COPY public.pricelist (pl_id, "Object", price, "аренда") FROM stdin;
1	Традиционный лук (ЧК)	3000	f
5	Стрелы (покупка)	900	f
6	Стабилизатор	500	t
7	Стабилизатор	15000	f
8	Сиситема стабилизаторов 	700	t
9	Система стабилизаторов	22000	f
10	Прицел	200	t
11	Прицел	3000	f
2	Традиционный лук (дерево) 	500	t
4	Традиционный лук (ИЛФ)	25000	f
3	Традиционный лук (дерево)	16000	f
\.


--
-- TOC entry 3040 (class 0 OID 17122)
-- Dependencies: 212
-- Data for Name: shop_history; Type: TABLE DATA; Schema: public; Owner: beva
--

COPY public.shop_history (id, id_shop, count, sport_id, shop_date) FROM stdin;
3	4	1	2	\N
4	9	1	2	\N
5	11	1	2	\N
6	11	1	2	\N
1	5	5	2	\N
2	3	1	2	2024-12-19
\.


--
-- TOC entry 3033 (class 0 OID 17064)
-- Dependencies: 205
-- Data for Name: sportsmen; Type: TABLE DATA; Schema: public; Owner: beva
--

COPY public.sportsmen (sport_id, surname, name, father, phone, bday) FROM stdin;
2	Нестерова	Виктория	Андреевна	89042209441	2005-12-19
1	Белов	Михаил	Владимирович	89008180328	2006-08-15
3	Серкова	Арина	Сергеевна	89023370173	2014-04-19
\.


--
-- TOC entry 3059 (class 0 OID 0)
-- Dependencies: 202
-- Name: category_cat_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beva
--

SELECT pg_catalog.setval('public.category_cat_id_seq', 1, false);


--
-- TOC entry 3060 (class 0 OID 0)
-- Dependencies: 213
-- Name: dates_data_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beva
--

SELECT pg_catalog.setval('public.dates_data_id_seq', 1, false);


--
-- TOC entry 3061 (class 0 OID 0)
-- Dependencies: 215
-- Name: employes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beva
--

SELECT pg_catalog.setval('public.employes_id_seq', 1, false);


--
-- TOC entry 3062 (class 0 OID 0)
-- Dependencies: 208
-- Name: gym_gym_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beva
--

SELECT pg_catalog.setval('public.gym_gym_id_seq', 1, false);


--
-- TOC entry 3063 (class 0 OID 0)
-- Dependencies: 209
-- Name: pricelist_pl_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beva
--

SELECT pg_catalog.setval('public.pricelist_pl_id_seq', 1, false);


--
-- TOC entry 3064 (class 0 OID 0)
-- Dependencies: 211
-- Name: shop_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beva
--

SELECT pg_catalog.setval('public.shop_history_id_seq', 1, false);


--
-- TOC entry 3065 (class 0 OID 0)
-- Dependencies: 204
-- Name: sportsmen_sport_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beva
--

SELECT pg_catalog.setval('public.sportsmen_sport_id_seq', 1, false);


--
-- TOC entry 2888 (class 2606 OID 17050)
-- Name: category category_pkey; Type: CONSTRAINT; Schema: public; Owner: beva
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (cat_id);


--
-- TOC entry 2898 (class 2606 OID 17249)
-- Name: dates dates_pk; Type: CONSTRAINT; Schema: public; Owner: beva
--

ALTER TABLE ONLY public.dates
    ADD CONSTRAINT dates_pk PRIMARY KEY (data_id);


--
-- TOC entry 2892 (class 2606 OID 17100)
-- Name: gym gym_pk; Type: CONSTRAINT; Schema: public; Owner: beva
--

ALTER TABLE ONLY public.gym
    ADD CONSTRAINT gym_pk PRIMARY KEY (gym_id);


--
-- TOC entry 2894 (class 2606 OID 17119)
-- Name: pricelist pricelist_pk; Type: CONSTRAINT; Schema: public; Owner: beva
--

ALTER TABLE ONLY public.pricelist
    ADD CONSTRAINT pricelist_pk PRIMARY KEY (pl_id);


--
-- TOC entry 2896 (class 2606 OID 17127)
-- Name: shop_history shop_pk; Type: CONSTRAINT; Schema: public; Owner: beva
--

ALTER TABLE ONLY public.shop_history
    ADD CONSTRAINT shop_pk PRIMARY KEY (id);


--
-- TOC entry 2890 (class 2606 OID 17072)
-- Name: sportsmen sportsmen_pkey; Type: CONSTRAINT; Schema: public; Owner: beva
--

ALTER TABLE ONLY public.sportsmen
    ADD CONSTRAINT sportsmen_pkey PRIMARY KEY (sport_id);


--
-- TOC entry 2900 (class 2606 OID 17084)
-- Name: perestrelca perestrelca_cat_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: beva
--

ALTER TABLE ONLY public.perestrelca
    ADD CONSTRAINT perestrelca_cat_id_fkey FOREIGN KEY (cat_id) REFERENCES public.category(cat_id);


--
-- TOC entry 2901 (class 2606 OID 17104)
-- Name: perestrelca perestrelca_gym_fk; Type: FK CONSTRAINT; Schema: public; Owner: beva
--

ALTER TABLE ONLY public.perestrelca
    ADD CONSTRAINT perestrelca_gym_fk FOREIGN KEY (gym_id) REFERENCES public.gym(gym_id);


--
-- TOC entry 2899 (class 2606 OID 17079)
-- Name: perestrelca perestrelca_sport_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: beva
--

ALTER TABLE ONLY public.perestrelca
    ADD CONSTRAINT perestrelca_sport_id_fkey FOREIGN KEY (sport_id) REFERENCES public.sportsmen(sport_id);


--
-- TOC entry 2903 (class 2606 OID 17133)
-- Name: shop_history shop_history_pricelist_fk; Type: FK CONSTRAINT; Schema: public; Owner: beva
--

ALTER TABLE ONLY public.shop_history
    ADD CONSTRAINT shop_history_pricelist_fk FOREIGN KEY (id_shop) REFERENCES public.pricelist(pl_id);


--
-- TOC entry 2902 (class 2606 OID 17128)
-- Name: shop_history shop_history_sportsmen_fk; Type: FK CONSTRAINT; Schema: public; Owner: beva
--

ALTER TABLE ONLY public.shop_history
    ADD CONSTRAINT shop_history_sportsmen_fk FOREIGN KEY (sport_id) REFERENCES public.sportsmen(sport_id);


--
-- TOC entry 3051 (class 0 OID 0)
-- Dependencies: 3050
-- Name: DATABASE beva; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON DATABASE beva TO beva;


-- Completed on 2025-03-15 11:38:10 MSK

--
-- PostgreSQL database dump complete
--

--
-- Database "cat" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.1)

-- Started on 2025-03-15 11:38:10 MSK

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

--
-- TOC entry 2959 (class 1262 OID 16562)
-- Name: cat; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE cat WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'ru_RU.UTF-8' LC_CTYPE = 'ru_RU.UTF-8';


ALTER DATABASE cat OWNER TO postgres;

\connect cat

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

-- Completed on 2025-03-15 11:38:10 MSK

--
-- PostgreSQL database dump complete
--

--
-- Database "construction_tools" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.1)

-- Started on 2025-03-15 11:38:10 MSK

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

--
-- TOC entry 3010 (class 1262 OID 17142)
-- Name: construction_tools; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE construction_tools WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'ru_RU.UTF-8' LC_CTYPE = 'ru_RU.UTF-8';


ALTER DATABASE construction_tools OWNER TO postgres;

\connect construction_tools

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

SET default_table_access_method = heap;

--
-- TOC entry 205 (class 1259 OID 17156)
-- Name: customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers (
    customer_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    email character varying(100) NOT NULL,
    phone character varying(15)
);


ALTER TABLE public.customers OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 17154)
-- Name: customers_customer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customers_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customers_customer_id_seq OWNER TO postgres;

--
-- TOC entry 3011 (class 0 OID 0)
-- Dependencies: 204
-- Name: customers_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customers_customer_id_seq OWNED BY public.customers.customer_id;


--
-- TOC entry 207 (class 1259 OID 17166)
-- Name: rentals; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rentals (
    rental_id integer NOT NULL,
    tool_id integer,
    customer_id integer,
    rental_date date NOT NULL,
    return_date date,
    rental_price numeric(10,2) NOT NULL
);


ALTER TABLE public.rentals OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 17164)
-- Name: rentals_rental_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rentals_rental_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rentals_rental_id_seq OWNER TO postgres;

--
-- TOC entry 3012 (class 0 OID 0)
-- Dependencies: 206
-- Name: rentals_rental_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rentals_rental_id_seq OWNED BY public.rentals.rental_id;


--
-- TOC entry 209 (class 1259 OID 17184)
-- Name: sales; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sales (
    sale_id integer NOT NULL,
    tool_id integer,
    customer_id integer,
    sale_date date NOT NULL,
    sale_price numeric(10,2) NOT NULL
);


ALTER TABLE public.sales OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 17182)
-- Name: sales_sale_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sales_sale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sales_sale_id_seq OWNER TO postgres;

--
-- TOC entry 3013 (class 0 OID 0)
-- Dependencies: 208
-- Name: sales_sale_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sales_sale_id_seq OWNED BY public.sales.sale_id;


--
-- TOC entry 203 (class 1259 OID 17145)
-- Name: tools; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tools (
    tool_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text,
    price numeric(10,2) NOT NULL,
    quantity_available integer NOT NULL,
    tool_type character varying(50) NOT NULL
);


ALTER TABLE public.tools OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 17143)
-- Name: tools_tool_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tools_tool_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tools_tool_id_seq OWNER TO postgres;

--
-- TOC entry 3014 (class 0 OID 0)
-- Dependencies: 202
-- Name: tools_tool_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tools_tool_id_seq OWNED BY public.tools.tool_id;


--
-- TOC entry 2854 (class 2604 OID 17159)
-- Name: customers customer_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers ALTER COLUMN customer_id SET DEFAULT nextval('public.customers_customer_id_seq'::regclass);


--
-- TOC entry 2855 (class 2604 OID 17169)
-- Name: rentals rental_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rentals ALTER COLUMN rental_id SET DEFAULT nextval('public.rentals_rental_id_seq'::regclass);


--
-- TOC entry 2856 (class 2604 OID 17187)
-- Name: sales sale_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales ALTER COLUMN sale_id SET DEFAULT nextval('public.sales_sale_id_seq'::regclass);


--
-- TOC entry 2853 (class 2604 OID 17148)
-- Name: tools tool_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tools ALTER COLUMN tool_id SET DEFAULT nextval('public.tools_tool_id_seq'::regclass);


--
-- TOC entry 3000 (class 0 OID 17156)
-- Dependencies: 205
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers (customer_id, first_name, last_name, email, phone) FROM stdin;
1	Иван	Иванов	ivan@example.com	1234567890
2	Петр	Петров	petr@example.com	0987654321
\.


--
-- TOC entry 3002 (class 0 OID 17166)
-- Dependencies: 207
-- Data for Name: rentals; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rentals (rental_id, tool_id, customer_id, rental_date, return_date, rental_price) FROM stdin;
1	2	1	2023-10-01	2023-10-05	500.00
\.


--
-- TOC entry 3004 (class 0 OID 17184)
-- Dependencies: 209
-- Data for Name: sales; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sales (sale_id, tool_id, customer_id, sale_date, sale_price) FROM stdin;
\.


--
-- TOC entry 2998 (class 0 OID 17145)
-- Dependencies: 203
-- Data for Name: tools; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tools (tool_id, name, description, price, quantity_available, tool_type) FROM stdin;
1	Дрель	Электрическая дрель	1500.00	10	продажа
2	Перфоратор	Перфоратор с набором бит	2500.00	5	аренда
3	Угловая шлифмашина	Шлифмашина для металла	2000.00	8	продажа
\.


--
-- TOC entry 3015 (class 0 OID 0)
-- Dependencies: 204
-- Name: customers_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_customer_id_seq', 2, true);


--
-- TOC entry 3016 (class 0 OID 0)
-- Dependencies: 206
-- Name: rentals_rental_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rentals_rental_id_seq', 1, true);


--
-- TOC entry 3017 (class 0 OID 0)
-- Dependencies: 208
-- Name: sales_sale_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sales_sale_id_seq', 1, false);


--
-- TOC entry 3018 (class 0 OID 0)
-- Dependencies: 202
-- Name: tools_tool_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tools_tool_id_seq', 3, true);


--
-- TOC entry 2860 (class 2606 OID 17163)
-- Name: customers customers_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_email_key UNIQUE (email);


--
-- TOC entry 2862 (class 2606 OID 17161)
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customer_id);


--
-- TOC entry 2864 (class 2606 OID 17171)
-- Name: rentals rentals_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rentals
    ADD CONSTRAINT rentals_pkey PRIMARY KEY (rental_id);


--
-- TOC entry 2866 (class 2606 OID 17189)
-- Name: sales sales_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales
    ADD CONSTRAINT sales_pkey PRIMARY KEY (sale_id);


--
-- TOC entry 2858 (class 2606 OID 17153)
-- Name: tools tools_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tools
    ADD CONSTRAINT tools_pkey PRIMARY KEY (tool_id);


--
-- TOC entry 2868 (class 2606 OID 17177)
-- Name: rentals rentals_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rentals
    ADD CONSTRAINT rentals_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(customer_id);


--
-- TOC entry 2867 (class 2606 OID 17172)
-- Name: rentals rentals_tool_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rentals
    ADD CONSTRAINT rentals_tool_id_fkey FOREIGN KEY (tool_id) REFERENCES public.tools(tool_id);


--
-- TOC entry 2870 (class 2606 OID 17195)
-- Name: sales sales_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales
    ADD CONSTRAINT sales_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(customer_id);


--
-- TOC entry 2869 (class 2606 OID 17190)
-- Name: sales sales_tool_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales
    ADD CONSTRAINT sales_tool_id_fkey FOREIGN KEY (tool_id) REFERENCES public.tools(tool_id);


-- Completed on 2025-03-15 11:38:11 MSK

--
-- PostgreSQL database dump complete
--

--
-- Database "data" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.1)

-- Started on 2025-03-15 11:38:11 MSK

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

--
-- TOC entry 2959 (class 1262 OID 17316)
-- Name: data; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE data WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'ru_RU.UTF-8' LC_CTYPE = 'ru_RU.UTF-8';


ALTER DATABASE data OWNER TO postgres;

\connect data

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

-- Completed on 2025-03-15 11:38:12 MSK

--
-- PostgreSQL database dump complete
--

--
-- Database "dedmorozdb" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.1)

-- Started on 2025-03-15 11:38:12 MSK

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

--
-- TOC entry 3050 (class 1262 OID 17398)
-- Name: dedmorozdb; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE dedmorozdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'ru_RU.UTF-8' LC_CTYPE = 'ru_RU.UTF-8';


ALTER DATABASE dedmorozdb OWNER TO postgres;

\connect dedmorozdb

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

SET default_table_access_method = heap;

--
-- TOC entry 205 (class 1259 OID 17471)
-- Name: children; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.children (
    child_id integer NOT NULL,
    name character varying(100) NOT NULL,
    city character varying(100) NOT NULL
);


ALTER TABLE public.children OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 17469)
-- Name: children_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.children_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.children_id_seq OWNER TO postgres;

--
-- TOC entry 3051 (class 0 OID 0)
-- Dependencies: 204
-- Name: children_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.children_id_seq OWNED BY public.children.child_id;


--
-- TOC entry 211 (class 1259 OID 17510)
-- Name: deliveries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.deliveries (
    id integer NOT NULL,
    gift_id integer NOT NULL,
    delivery_date date NOT NULL
);


ALTER TABLE public.deliveries OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 17508)
-- Name: deliveries_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.deliveries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.deliveries_id_seq OWNER TO postgres;

--
-- TOC entry 3052 (class 0 OID 0)
-- Dependencies: 210
-- Name: deliveries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.deliveries_id_seq OWNED BY public.deliveries.id;


--
-- TOC entry 207 (class 1259 OID 17479)
-- Name: gifts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.gifts (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    stock_quantity integer DEFAULT 0
);


ALTER TABLE public.gifts OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 17477)
-- Name: gifts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.gifts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gifts_id_seq OWNER TO postgres;

--
-- TOC entry 3053 (class 0 OID 0)
-- Dependencies: 206
-- Name: gifts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.gifts_id_seq OWNED BY public.gifts.id;


--
-- TOC entry 213 (class 1259 OID 17523)
-- Name: letters; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.letters (
    id integer NOT NULL,
    child_id integer NOT NULL,
    gift_request character varying(255) NOT NULL,
    date_sent date NOT NULL
);


ALTER TABLE public.letters OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 17521)
-- Name: letters_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.letters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.letters_id_seq OWNER TO postgres;

--
-- TOC entry 3054 (class 0 OID 0)
-- Dependencies: 212
-- Name: letters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.letters_id_seq OWNED BY public.letters.id;


--
-- TOC entry 215 (class 1259 OID 17536)
-- Name: logistics; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.logistics (
    id integer NOT NULL,
    order_id integer NOT NULL,
    delivery_status text NOT NULL,
    CONSTRAINT logistics_delivery_status_check CHECK ((delivery_status = ANY (ARRAY['В пути'::text, 'Доставлено'::text, 'Возврат'::text, 'Проблема с доставкой'::text])))
);


ALTER TABLE public.logistics OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 17534)
-- Name: logistics_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.logistics_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.logistics_id_seq OWNER TO postgres;

--
-- TOC entry 3055 (class 0 OID 0)
-- Dependencies: 214
-- Name: logistics_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.logistics_id_seq OWNED BY public.logistics.id;


--
-- TOC entry 209 (class 1259 OID 17488)
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    id integer NOT NULL,
    child_id integer NOT NULL,
    gift_id integer NOT NULL,
    status text NOT NULL,
    CONSTRAINT orders_status_check CHECK ((status = ANY (ARRAY['Склад'::text, 'Закупка'::text, 'Поиск поставщика'::text, 'Доставка ребёнку'::text])))
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 17486)
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_id_seq OWNER TO postgres;

--
-- TOC entry 3056 (class 0 OID 0)
-- Dependencies: 208
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;


--
-- TOC entry 203 (class 1259 OID 17457)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(50) NOT NULL,
    role text NOT NULL,
    CONSTRAINT users_role_check CHECK ((role = ANY (ARRAY['DedMoroz'::text, 'Snegurochka'::text, 'Elf_logist'::text])))
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 17455)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 3057 (class 0 OID 0)
-- Dependencies: 202
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 2875 (class 2604 OID 17474)
-- Name: children child_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.children ALTER COLUMN child_id SET DEFAULT nextval('public.children_id_seq'::regclass);


--
-- TOC entry 2880 (class 2604 OID 17513)
-- Name: deliveries id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deliveries ALTER COLUMN id SET DEFAULT nextval('public.deliveries_id_seq'::regclass);


--
-- TOC entry 2876 (class 2604 OID 17482)
-- Name: gifts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gifts ALTER COLUMN id SET DEFAULT nextval('public.gifts_id_seq'::regclass);


--
-- TOC entry 2881 (class 2604 OID 17526)
-- Name: letters id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.letters ALTER COLUMN id SET DEFAULT nextval('public.letters_id_seq'::regclass);


--
-- TOC entry 2882 (class 2604 OID 17539)
-- Name: logistics id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistics ALTER COLUMN id SET DEFAULT nextval('public.logistics_id_seq'::regclass);


--
-- TOC entry 2878 (class 2604 OID 17491)
-- Name: orders id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);


--
-- TOC entry 2873 (class 2604 OID 17460)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 3034 (class 0 OID 17471)
-- Dependencies: 205
-- Data for Name: children; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.children (child_id, name, city) FROM stdin;
1	Аделина	Челябинск
2	Аиша	Омск
3	Александра	Саратов
4	Алёша	Санкт-Петербург
5	Алиса	Омск
6	Алия	Челябинск
7	Амелия	Самара
8	Амина	Новосибирск
9	Антон	Краснодар
10	Аня	Челябинск
11	Арина	Ростов-на-Дону
12	Артём	Москва
13	Артур	Екатеринбург
14	Валера	Уфа
15	Ваня	Красноярск
16	Варвара	Краснодар
17	Василиса	Новосибирск
18	Вера	Мурманск
19	Вика	Самара
20	Виталий	Екатеринбург
21	Витя	Челябинск
22	Гоша	Воронеж
23	Гриша	Новосибирск
24	Даша	Волгоград
25	Денис	Нижний Новгород
26	Диана	Саратов
27	Ева	Нижний Новгород
28	Женя	Волгоград
29	Жора	Тюмень
30	Игорь	Москва
31	Катя	Саратов
32	Кира	Тюмень
33	Коля	Омск
34	Костя	Красноярск
35	Ксюша	Воронеж
36	Лёва	Самара
37	Лера	Краснодар
38	Лиза	Екатеринбург
39	Максим	Омск
40	Маргарита	Волгоград
41	Матвей	Нижний Новгород
42	Маша	Екатеринбург
43	Милана	Красноярск
44	Миша	Тюмень
45	Назар	Новосибирск
46	Надя	Москва
47	Настя	Воронеж
48	Наташа	Челябинск
49	Ника	Пермь
50	Нина	Уфа
51	Олег	Санкт-Петербург
52	Оля	Ростов-на-Дону
53	Паша	Самара
54	Поля	Краснодар
55	Роберт	Новосибирск
56	Рома	Волгоград
57	Саша	Москва
58	Семён	Пермь
59	Серёжа	Уфа
60	Слава	Санкт-Петербург
61	Софа	Красноярск
62	Таисия	Ростов-на-Дону
63	Таня	Воронеж
64	Тёма	Пермь
65	Тимоша	Челябинск
66	Тимур	Нижний Новгород
67	Толя	Самара
68	Ульяна	Санкт-Петербург
69	Эдик	Красноярск
70	Эмилия	Уфа
71	Ян	Казань
72	Аделина	Челябинск
73	Аиша	Омск
74	Александра	Саратов
75	Алёша	Санкт-Петербург
76	Алиса	Омск
77	Алия	Челябинск
78	Амелия	Самара
79	Амина	Новосибирск
80	Антон	Краснодар
81	Аня	Челябинск
82	Арина	Ростов-на-Дону
83	Артём	Москва
84	Артур	Екатеринбург
85	Валера	Уфа
86	Ваня	Красноярск
87	Варвара	Краснодар
88	Василиса	Новосибирск
89	Вера	Мурманск
90	Вика	Самара
91	Виталий	Екатеринбург
92	Витя	Челябинск
93	Гоша	Воронеж
94	Гриша	Новосибирск
95	Даша	Волгоград
96	Денис	Нижний Новгород
97	Диана	Саратов
98	Ева	Нижний Новгород
99	Женя	Волгоград
100	Жора	Тюмень
101	Игорь	Москва
102	Катя	Саратов
103	Кира	Тюмень
104	Коля	Омск
105	Костя	Красноярск
106	Ксюша	Воронеж
107	Лёва	Самара
108	Лера	Краснодар
109	Лиза	Екатеринбург
110	Аделина	Челябинск
111	Аиша	Омск
112	Александра	Саратов
113	Алёша	Санкт-Петербург
114	Алиса	Омск
115	Алия	Челябинск
116	Амелия	Самара
117	Амина	Новосибирск
118	Антон	Краснодар
119	Аня	Челябинск
120	Арина	Ростов-на-Дону
121	Артём	Москва
122	Артур	Екатеринбург
123	Валера	Уфа
124	Ваня	Красноярск
125	Варвара	Краснодар
126	Василиса	Новосибирск
127	Вера	Мурманск
128	Вика	Самара
129	Виталий	Екатеринбург
130	Витя	Челябинск
131	Гоша	Воронеж
132	Гриша	Новосибирск
133	Даша	Волгоград
134	Денис	Нижний Новгород
135	Диана	Саратов
136	Ева	Нижний Новгород
137	Женя	Волгоград
138	Жора	Тюмень
139	Игорь	Москва
140	Катя	Саратов
141	Кира	Тюмень
142	Коля	Омск
143	Костя	Красноярск
144	Ксюша	Воронеж
145	Лёва	Самара
146	Лера	Краснодар
147	Лиза	Екатеринбург
\.


--
-- TOC entry 3040 (class 0 OID 17510)
-- Dependencies: 211
-- Data for Name: deliveries; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.deliveries (id, gift_id, delivery_date) FROM stdin;
\.


--
-- TOC entry 3036 (class 0 OID 17479)
-- Dependencies: 207
-- Data for Name: gifts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.gifts (id, name, stock_quantity) FROM stdin;
1	Барби	15
2	Конфеты	25
3	Компьютер	10
4	Платье	6
5	Машинка	2
6	Пистолет	1
7	Планшет	4
8	Смартфон	5
9	Собака	0
10	Цветочек аленький	0
\.


--
-- TOC entry 3042 (class 0 OID 17523)
-- Dependencies: 213
-- Data for Name: letters; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.letters (id, child_id, gift_request, date_sent) FROM stdin;
\.


--
-- TOC entry 3044 (class 0 OID 17536)
-- Dependencies: 215
-- Data for Name: logistics; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.logistics (id, order_id, delivery_status) FROM stdin;
\.


--
-- TOC entry 3038 (class 0 OID 17488)
-- Dependencies: 209
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders (id, child_id, gift_id, status) FROM stdin;
206	1	1	Склад
207	2	2	Склад
208	2	4	Закупка
209	3	10	Поиск поставщика
210	4	5	Закупка
211	4	6	Склад
212	5	4	Доставка ребёнку
213	6	4	Закупка
214	7	1	Склад
215	7	2	Склад
216	8	3	Доставка ребёнку
217	9	3	Доставка ребёнку
218	10	8	Доставка ребёнку
219	11	1	Склад
220	12	3	Доставка ребёнку
221	13	2	Склад
222	14	8	Доставка ребёнку
223	15	2	Склад
224	16	1	Склад
225	17	1	Доставка ребёнку
226	18	2	Склад
227	19	2	Склад
228	20	2	Доставка ребёнку
229	21	5	Склад
230	22	8	Доставка ребёнку
231	23	2	Склад
232	24	3	Доставка ребёнку
233	25	2	Доставка ребёнку
234	26	1	Доставка ребёнку
235	27	1	Склад
236	28	9	Доставка ребёнку
237	29	3	Доставка ребёнку
238	30	2	Склад
239	31	8	Склад
240	32	3	Доставка ребёнку
241	33	5	Доставка ребёнку
242	34	6	Склад
243	35	2	Склад
244	36	2	Склад
245	37	1	Склад
246	38	7	Склад
\.


--
-- TOC entry 3032 (class 0 OID 17457)
-- Dependencies: 203
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, username, role) FROM stdin;
1	dedmoroz	DedMoroz
2	snegurochka	Snegurochka
3	elf_logist	Elf_logist
\.


--
-- TOC entry 3058 (class 0 OID 0)
-- Dependencies: 204
-- Name: children_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.children_id_seq', 147, true);


--
-- TOC entry 3059 (class 0 OID 0)
-- Dependencies: 210
-- Name: deliveries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.deliveries_id_seq', 1, false);


--
-- TOC entry 3060 (class 0 OID 0)
-- Dependencies: 206
-- Name: gifts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gifts_id_seq', 10, true);


--
-- TOC entry 3061 (class 0 OID 0)
-- Dependencies: 212
-- Name: letters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.letters_id_seq', 1, false);


--
-- TOC entry 3062 (class 0 OID 0)
-- Dependencies: 214
-- Name: logistics_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.logistics_id_seq', 1, false);


--
-- TOC entry 3063 (class 0 OID 0)
-- Dependencies: 208
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_id_seq', 246, true);


--
-- TOC entry 3064 (class 0 OID 0)
-- Dependencies: 202
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 4, true);


--
-- TOC entry 2889 (class 2606 OID 17476)
-- Name: children children_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.children
    ADD CONSTRAINT children_pkey PRIMARY KEY (child_id);


--
-- TOC entry 2895 (class 2606 OID 17515)
-- Name: deliveries deliveries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deliveries
    ADD CONSTRAINT deliveries_pkey PRIMARY KEY (id);


--
-- TOC entry 2891 (class 2606 OID 17485)
-- Name: gifts gifts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gifts
    ADD CONSTRAINT gifts_pkey PRIMARY KEY (id);


--
-- TOC entry 2897 (class 2606 OID 17528)
-- Name: letters letters_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.letters
    ADD CONSTRAINT letters_pkey PRIMARY KEY (id);


--
-- TOC entry 2899 (class 2606 OID 17545)
-- Name: logistics logistics_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistics
    ADD CONSTRAINT logistics_pkey PRIMARY KEY (id);


--
-- TOC entry 2893 (class 2606 OID 17497)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- TOC entry 2885 (class 2606 OID 17466)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 2887 (class 2606 OID 17468)
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- TOC entry 2902 (class 2606 OID 17516)
-- Name: deliveries deliveries_gift_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deliveries
    ADD CONSTRAINT deliveries_gift_id_fkey FOREIGN KEY (gift_id) REFERENCES public.gifts(id) ON DELETE CASCADE;


--
-- TOC entry 2903 (class 2606 OID 17529)
-- Name: letters letters_child_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.letters
    ADD CONSTRAINT letters_child_id_fkey FOREIGN KEY (child_id) REFERENCES public.children(child_id) ON DELETE CASCADE;


--
-- TOC entry 2904 (class 2606 OID 17546)
-- Name: logistics logistics_order_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistics
    ADD CONSTRAINT logistics_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.orders(id) ON DELETE CASCADE;


--
-- TOC entry 2900 (class 2606 OID 17498)
-- Name: orders orders_child_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_child_id_fkey FOREIGN KEY (child_id) REFERENCES public.children(child_id) ON DELETE CASCADE;


--
-- TOC entry 2901 (class 2606 OID 17503)
-- Name: orders orders_gift_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_gift_id_fkey FOREIGN KEY (gift_id) REFERENCES public.gifts(id) ON DELETE CASCADE;


-- Completed on 2025-03-15 11:38:12 MSK

--
-- PostgreSQL database dump complete
--

--
-- Database "foto" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.1)

-- Started on 2025-03-15 11:38:12 MSK

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

--
-- TOC entry 2971 (class 1262 OID 16614)
-- Name: foto; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE foto WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'ru_RU.UTF-8' LC_CTYPE = 'ru_RU.UTF-8';


ALTER DATABASE foto OWNER TO postgres;

\connect foto

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

SET default_table_access_method = heap;

--
-- TOC entry 203 (class 1259 OID 16621)
-- Name: klient; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.klient (
    id_kli integer,
    fio character varying,
    date_birth date,
    adrec character varying,
    phone bigint
);


ALTER TABLE public.klient OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16615)
-- Name: yclygi; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.yclygi (
    id integer,
    name_yclygi character varying,
    money money,
    tip_yclygi character varying
);


ALTER TABLE public.yclygi OWNER TO postgres;

--
-- TOC entry 2965 (class 0 OID 16621)
-- Dependencies: 203
-- Data for Name: klient; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.klient (id_kli, fio, date_birth, adrec, phone) FROM stdin;
\.


--
-- TOC entry 2964 (class 0 OID 16615)
-- Dependencies: 202
-- Data for Name: yclygi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.yclygi (id, name_yclygi, money, tip_yclygi) FROM stdin;
\.


-- Completed on 2025-03-15 11:38:13 MSK

--
-- PostgreSQL database dump complete
--

--
-- Database "job_search" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.1)

-- Started on 2025-03-15 11:38:13 MSK

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

--
-- TOC entry 2959 (class 1262 OID 17139)
-- Name: job_search; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE job_search WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'ru_RU.UTF-8' LC_CTYPE = 'ru_RU.UTF-8';


ALTER DATABASE job_search OWNER TO postgres;

\connect job_search

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

--
-- TOC entry 2960 (class 0 OID 0)
-- Dependencies: 2959
-- Name: DATABASE job_search; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON DATABASE job_search TO stas228;


-- Completed on 2025-03-15 11:38:14 MSK

--
-- PostgreSQL database dump complete
--

--
-- Database "pop" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.1)

-- Started on 2025-03-15 11:38:14 MSK

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

--
-- TOC entry 3012 (class 1262 OID 16627)
-- Name: pop; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE pop WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'ru_RU.UTF-8' LC_CTYPE = 'ru_RU.UTF-8';


ALTER DATABASE pop OWNER TO postgres;

\connect pop

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

SET default_table_access_method = heap;

--
-- TOC entry 202 (class 1259 OID 17273)
-- Name: klienti; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.klienti (
    id_kli integer NOT NULL,
    familia character varying(50) NOT NULL,
    ima character varying(50) NOT NULL,
    otchestvo character varying(50) NOT NULL,
    email character varying(50) NOT NULL,
    phone character varying(20) NOT NULL
);


ALTER TABLE public.klienti OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 17278)
-- Name: sotrydniki; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sotrydniki (
    id_sotrydnika integer NOT NULL,
    familia character varying(50) NOT NULL,
    ima character varying(50) NOT NULL,
    otchestvo character varying(50) NOT NULL,
    datee date NOT NULL,
    email character varying(50) NOT NULL,
    phone character varying(20) NOT NULL
);


ALTER TABLE public.sotrydniki OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 17607)
-- Name: user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."user" (
    id integer NOT NULL,
    username character varying(50) NOT NULL,
    email character varying(100) NOT NULL,
    password_hash character varying(200) NOT NULL,
    is_admin boolean NOT NULL
);


ALTER TABLE public."user" OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 17597)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(50) NOT NULL,
    email character varying(100) NOT NULL,
    password_hash character varying(200) NOT NULL,
    is_admin boolean
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 17595)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 3013 (class 0 OID 0)
-- Dependencies: 206
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 204 (class 1259 OID 17283)
-- Name: yclygi; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.yclygi (
    id_ycl integer NOT NULL,
    price money NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.yclygi OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 17293)
-- Name: zakazi; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.zakazi (
    id_zakaza integer NOT NULL,
    datee date NOT NULL,
    status character varying(50) NOT NULL,
    id_ycl integer NOT NULL,
    id_kli integer NOT NULL,
    id_sotrydnika integer NOT NULL
);


ALTER TABLE public.zakazi OWNER TO postgres;

--
-- TOC entry 2854 (class 2604 OID 17600)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 3000 (class 0 OID 17273)
-- Dependencies: 202
-- Data for Name: klienti; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.klienti (id_kli, familia, ima, otchestvo, email, phone) FROM stdin;
1	Иванов	Алексей	Сергеевич	ivanaa@gmail.com	+79123456789
2	Петрова	Мария	Вальдемаровна	maaariya@gmail.com	+79824671942
3	Сидоров	Дмитрий	Артурович	kot@gmail.com	+78349251630
4	Кузнец	Антуан	Иванович	tryggght@gmail.com	+754618367374
\.


--
-- TOC entry 3001 (class 0 OID 17278)
-- Dependencies: 203
-- Data for Name: sotrydniki; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sotrydniki (id_sotrydnika, familia, ima, otchestvo, datee, email, phone) FROM stdin;
1	Смирнов	Олег	Альбинович	1995-08-19	smirnov22@gmail.com	+79123752857
2	Трудин	Альберт	Вадимович	2000-10-25	try2@gmail.com	+79042658361
3	Хабиб	Артур	Ахрамович	1985-12-02	artyrchik228@gmail.com	+79236473827
4	Габин	Макар	Дмитриевич	1999-06-14	shhhhit@gmail.com	+78328741463
\.


--
-- TOC entry 3006 (class 0 OID 17607)
-- Dependencies: 208
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."user" (id, username, email, password_hash, is_admin) FROM stdin;
1	user1	vevev@gmail.com	12345	t
\.


--
-- TOC entry 3005 (class 0 OID 17597)
-- Dependencies: 207
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, username, email, password_hash, is_admin) FROM stdin;
1	user5	veveve@gmail.com	scrypt:32768:8:1$4kvduOuCGK8LFHno$9a1f2cf71ae2dea8eae345a4a68506b4e095fbdf488bf593580e807d07d875d5eefc65983c024be188ab3d9232f826c6b6b1b47c4932d4a4ff4213aaf55fd8ec	f
2	user1	vevev@gmail.com	scrypt:32768:8:1$6azg9K3jiVldMMzs$b6c891348ec5e776f43626bb83b39308a9bc852782ed865822044879db07327dbc13c1cd9b4668be15446ee8cfb5a967ba63e876820d04d1bdf584e48d28917d	f
\.


--
-- TOC entry 3002 (class 0 OID 17283)
-- Dependencies: 204
-- Data for Name: yclygi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.yclygi (id_ycl, price, name) FROM stdin;
1	10,00 ₽	печать фото 10х15
2	2 500,00 ₽	печать диплома
3	100,00 ₽	печать А4
4	150,00 ₽	печать плаката А4
\.


--
-- TOC entry 3003 (class 0 OID 17293)
-- Dependencies: 205
-- Data for Name: zakazi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.zakazi (id_zakaza, datee, status, id_ycl, id_kli, id_sotrydnika) FROM stdin;
1	2025-03-13	В обработке	1	1	1
2	2025-03-14	В обработке	2	3	1
3	2025-03-15	Завершен	1	2	2
4	2025-03-16	Отменен	3	1	3
5	2025-03-17	В обработке	2	4	1
\.


--
-- TOC entry 3014 (class 0 OID 0)
-- Dependencies: 206
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 2, true);


--
-- TOC entry 2856 (class 2606 OID 17277)
-- Name: klienti klienti_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.klienti
    ADD CONSTRAINT klienti_pkey PRIMARY KEY (id_kli);


--
-- TOC entry 2858 (class 2606 OID 17282)
-- Name: sotrydniki sotrydniki_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sotrydniki
    ADD CONSTRAINT sotrydniki_pkey PRIMARY KEY (id_sotrydnika);


--
-- TOC entry 2870 (class 2606 OID 17611)
-- Name: user user_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pk PRIMARY KEY (id);


--
-- TOC entry 2864 (class 2606 OID 17606)
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- TOC entry 2866 (class 2606 OID 17602)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 2868 (class 2606 OID 17604)
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- TOC entry 2860 (class 2606 OID 17287)
-- Name: yclygi yclygi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.yclygi
    ADD CONSTRAINT yclygi_pkey PRIMARY KEY (id_ycl);


--
-- TOC entry 2862 (class 2606 OID 17297)
-- Name: zakazi zakazi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zakazi
    ADD CONSTRAINT zakazi_pkey PRIMARY KEY (id_zakaza);


--
-- TOC entry 2872 (class 2606 OID 17303)
-- Name: zakazi kli; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zakazi
    ADD CONSTRAINT kli FOREIGN KEY (id_kli) REFERENCES public.klienti(id_kli);


--
-- TOC entry 2873 (class 2606 OID 17308)
-- Name: zakazi sotr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zakazi
    ADD CONSTRAINT sotr FOREIGN KEY (id_sotrydnika) REFERENCES public.sotrydniki(id_sotrydnika);


--
-- TOC entry 2871 (class 2606 OID 17298)
-- Name: zakazi ycl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zakazi
    ADD CONSTRAINT ycl FOREIGN KEY (id_ycl) REFERENCES public.yclygi(id_ycl);


-- Completed on 2025-03-15 11:38:15 MSK

--
-- PostgreSQL database dump complete
--

--
-- Database "popov_kurs" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.1)

-- Started on 2025-03-15 11:38:15 MSK

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

--
-- TOC entry 3038 (class 1262 OID 16756)
-- Name: popov_kurs; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE popov_kurs WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'ru_RU.UTF-8' LC_CTYPE = 'ru_RU.UTF-8';


ALTER DATABASE popov_kurs OWNER TO postgres;

\connect popov_kurs

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

--
-- TOC entry 214 (class 1255 OID 16843)
-- Name: add_grade(integer, integer, integer, integer, integer, date); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.add_grade(p_student_id integer, p_class_id integer, p_subject_id integer, p_teacher_id integer, p_grade integer, p_create_date date) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
    INSERT INTO Grades (student_id, class_id, subject_id, teacher_id, grade, create_date)
    VALUES (p_student_id, p_class_id, p_subject_id, p_teacher_id, p_grade, p_create_date);
END;
$$;


ALTER FUNCTION public.add_grade(p_student_id integer, p_class_id integer, p_subject_id integer, p_teacher_id integer, p_grade integer, p_create_date date) OWNER TO postgres;

--
-- TOC entry 216 (class 1255 OID 16845)
-- Name: get_student_grades_by_subject(integer, integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.get_student_grades_by_subject(p_student_id integer, p_subject_id integer) RETURNS TABLE(grade_id integer, grade integer, create_date date)
    LANGUAGE plpgsql
    AS $$
DECLARE
    v_class_id INT;
BEGIN
    -- Получаем класс студента
    SELECT class_id INTO v_class_id
    FROM Students
    WHERE student_id = p_student_id;

    -- Возвращаем оценки для студента по заданному предмету в его классе
    RETURN QUERY
    SELECT 
        sg.grade_id,
        sg.grade,
        sg.create_date
    FROM 
        student_grades sg
    WHERE 
        sg.student_id = p_student_id AND
        sg.subject_id = p_subject_id AND
        sg.class_id = v_class_id;
END;
$$;


ALTER FUNCTION public.get_student_grades_by_subject(p_student_id integer, p_subject_id integer) OWNER TO postgres;

--
-- TOC entry 217 (class 1255 OID 16846)
-- Name: get_student_grades_in_class(integer, integer, integer, character varying); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.get_student_grades_in_class(p_student_id integer, p_subject_id integer, p_class_number integer, p_class_letter character varying) RETURNS TABLE(grade_id integer, grade integer, create_date date)
    LANGUAGE plpgsql
    AS $$
BEGIN
    RETURN QUERY
    SELECT 
        sg.grade_id,
        sg.grade,
        sg.create_date
    FROM 
        student_grades sg
    JOIN 
        Classes c ON sg.class_number = c.class_number AND sg.class_letter = c.class_letter
    WHERE 
        sg.student_id = p_student_id AND
        sg.subject_id = p_subject_id AND
        c.class_number = p_class_number AND
        c.class_letter = p_class_letter;
END;
$$;


ALTER FUNCTION public.get_student_grades_in_class(p_student_id integer, p_subject_id integer, p_class_number integer, p_class_letter character varying) OWNER TO postgres;

--
-- TOC entry 215 (class 1255 OID 16844)
-- Name: update_grade(integer, integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.update_grade(p_grade_id integer, p_new_grade integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
    UPDATE Grades
    SET grade = p_new_grade, update_date = CURRENT_DATE
    WHERE grade_id = p_grade_id;
END;
$$;


ALTER FUNCTION public.update_grade(p_grade_id integer, p_new_grade integer) OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 203 (class 1259 OID 16759)
-- Name: classes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.classes (
    class_id integer NOT NULL,
    class_number integer NOT NULL,
    class_letter character varying(5) NOT NULL,
    start_year date NOT NULL
);


ALTER TABLE public.classes OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16757)
-- Name: classes_class_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.classes_class_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.classes_class_id_seq OWNER TO postgres;

--
-- TOC entry 3039 (class 0 OID 0)
-- Dependencies: 202
-- Name: classes_class_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.classes_class_id_seq OWNED BY public.classes.class_id;


--
-- TOC entry 212 (class 1259 OID 16811)
-- Name: grades; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.grades (
    grade_id integer NOT NULL,
    student_id integer,
    class_id integer,
    subject_id integer,
    teacher_id integer,
    grade integer,
    number_lesson integer NOT NULL,
    date_lesson date NOT NULL,
    create_date date NOT NULL,
    update_date date,
    CONSTRAINT grades_grade_check CHECK ((grade = ANY (ARRAY[2, 3, 4, 5])))
);


ALTER TABLE public.grades OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 16809)
-- Name: grades_grade_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.grades_grade_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.grades_grade_id_seq OWNER TO postgres;

--
-- TOC entry 3040 (class 0 OID 0)
-- Dependencies: 211
-- Name: grades_grade_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.grades_grade_id_seq OWNED BY public.grades.grade_id;


--
-- TOC entry 207 (class 1259 OID 16775)
-- Name: students; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.students (
    student_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    second_name character varying(50) NOT NULL,
    date_of_birth date NOT NULL,
    class_id integer
);


ALTER TABLE public.students OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16788)
-- Name: subjects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subjects (
    subject_id integer NOT NULL,
    subject_name character varying(50) NOT NULL
);


ALTER TABLE public.subjects OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 16838)
-- Name: student_grades; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.student_grades AS
 SELECT g.grade_id,
    s.student_id,
    s.first_name AS student_first_name,
    s.last_name AS student_last_name,
    sub.subject_name,
    g.grade,
    g.create_date,
    c.class_number,
    c.class_letter,
    g.class_id,
    g.subject_id
   FROM (((public.grades g
     JOIN public.students s ON ((g.student_id = s.student_id)))
     JOIN public.subjects sub ON ((g.subject_id = sub.subject_id)))
     JOIN public.classes c ON ((g.class_id = c.class_id)));


ALTER TABLE public.student_grades OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 16773)
-- Name: students_student_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.students_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.students_student_id_seq OWNER TO postgres;

--
-- TOC entry 3041 (class 0 OID 0)
-- Dependencies: 206
-- Name: students_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.students_student_id_seq OWNED BY public.students.student_id;


--
-- TOC entry 208 (class 1259 OID 16786)
-- Name: subjects_subject_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.subjects_subject_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.subjects_subject_id_seq OWNER TO postgres;

--
-- TOC entry 3042 (class 0 OID 0)
-- Dependencies: 208
-- Name: subjects_subject_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.subjects_subject_id_seq OWNED BY public.subjects.subject_id;


--
-- TOC entry 210 (class 1259 OID 16794)
-- Name: teacher_subject; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.teacher_subject (
    teacher_id integer NOT NULL,
    subject_id integer NOT NULL
);


ALTER TABLE public.teacher_subject OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 16767)
-- Name: teachers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.teachers (
    teacher_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    second_name character varying(50) NOT NULL
);


ALTER TABLE public.teachers OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16765)
-- Name: teachers_teacher_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.teachers_teacher_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teachers_teacher_id_seq OWNER TO postgres;

--
-- TOC entry 3043 (class 0 OID 0)
-- Dependencies: 204
-- Name: teachers_teacher_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.teachers_teacher_id_seq OWNED BY public.teachers.teacher_id;


--
-- TOC entry 2870 (class 2604 OID 16762)
-- Name: classes class_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classes ALTER COLUMN class_id SET DEFAULT nextval('public.classes_class_id_seq'::regclass);


--
-- TOC entry 2874 (class 2604 OID 16814)
-- Name: grades grade_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grades ALTER COLUMN grade_id SET DEFAULT nextval('public.grades_grade_id_seq'::regclass);


--
-- TOC entry 2872 (class 2604 OID 16778)
-- Name: students student_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students ALTER COLUMN student_id SET DEFAULT nextval('public.students_student_id_seq'::regclass);


--
-- TOC entry 2873 (class 2604 OID 16791)
-- Name: subjects subject_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subjects ALTER COLUMN subject_id SET DEFAULT nextval('public.subjects_subject_id_seq'::regclass);


--
-- TOC entry 2871 (class 2604 OID 16770)
-- Name: teachers teacher_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teachers ALTER COLUMN teacher_id SET DEFAULT nextval('public.teachers_teacher_id_seq'::regclass);


--
-- TOC entry 3023 (class 0 OID 16759)
-- Dependencies: 203
-- Data for Name: classes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.classes (class_id, class_number, class_letter, start_year) FROM stdin;
1	1	A	2020-09-01
2	1	B	2020-09-01
3	2	A	2021-09-01
4	2	B	2021-09-01
5	3	A	2022-09-01
\.


--
-- TOC entry 3032 (class 0 OID 16811)
-- Dependencies: 212
-- Data for Name: grades; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.grades (grade_id, student_id, class_id, subject_id, teacher_id, grade, number_lesson, date_lesson, create_date, update_date) FROM stdin;
1	1	1	1	1	4	1	2023-09-15	2023-09-15	\N
2	1	1	2	1	5	1	2023-09-20	2023-09-20	\N
3	2	1	1	1	3	2	2023-09-18	2023-09-18	\N
4	3	2	3	2	4	3	2023-09-22	2023-09-22	\N
5	4	2	4	3	5	1	2023-09-25	2023-09-25	\N
6	5	3	5	4	2	2	2023-09-30	2023-09-30	\N
\.


--
-- TOC entry 3027 (class 0 OID 16775)
-- Dependencies: 207
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.students (student_id, first_name, last_name, second_name, date_of_birth, class_id) FROM stdin;
1	Дмитрий	Смирнов	Александрович	2010-03-15	1
2	Анна	Коваленко	Сергеевна	2011-05-20	1
3	Егор	Сидоров	Викторович	2010-07-30	2
4	Мария	Семенова	Ивановна	2011-11-11	2
5	Александр	Николаев	Дмитриевич	2012-01-25	3
\.


--
-- TOC entry 3029 (class 0 OID 16788)
-- Dependencies: 209
-- Data for Name: subjects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.subjects (subject_id, subject_name) FROM stdin;
1	Русский язык
2	Математика
3	История
4	Биология
5	Физика
\.


--
-- TOC entry 3030 (class 0 OID 16794)
-- Dependencies: 210
-- Data for Name: teacher_subject; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.teacher_subject (teacher_id, subject_id) FROM stdin;
1	1
1	2
2	3
3	4
4	5
\.


--
-- TOC entry 3025 (class 0 OID 16767)
-- Dependencies: 205
-- Data for Name: teachers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.teachers (teacher_id, first_name, last_name, second_name) FROM stdin;
1	Иван	Иванов	Иванович
2	Мария	Петрова	Сергеевна
3	Светлана	Сидорова	Александровна
4	Алексей	Кузнецов	Дмитриевич
5	Ольга	Федорова	Петровна
\.


--
-- TOC entry 3044 (class 0 OID 0)
-- Dependencies: 202
-- Name: classes_class_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.classes_class_id_seq', 5, true);


--
-- TOC entry 3045 (class 0 OID 0)
-- Dependencies: 211
-- Name: grades_grade_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.grades_grade_id_seq', 6, true);


--
-- TOC entry 3046 (class 0 OID 0)
-- Dependencies: 206
-- Name: students_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.students_student_id_seq', 5, true);


--
-- TOC entry 3047 (class 0 OID 0)
-- Dependencies: 208
-- Name: subjects_subject_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.subjects_subject_id_seq', 5, true);


--
-- TOC entry 3048 (class 0 OID 0)
-- Dependencies: 204
-- Name: teachers_teacher_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.teachers_teacher_id_seq', 5, true);


--
-- TOC entry 2877 (class 2606 OID 16764)
-- Name: classes classes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classes
    ADD CONSTRAINT classes_pkey PRIMARY KEY (class_id);


--
-- TOC entry 2887 (class 2606 OID 16817)
-- Name: grades grades_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grades
    ADD CONSTRAINT grades_pkey PRIMARY KEY (grade_id);


--
-- TOC entry 2881 (class 2606 OID 16780)
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (student_id);


--
-- TOC entry 2883 (class 2606 OID 16793)
-- Name: subjects subjects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subjects
    ADD CONSTRAINT subjects_pkey PRIMARY KEY (subject_id);


--
-- TOC entry 2885 (class 2606 OID 16798)
-- Name: teacher_subject teacher_subject_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teacher_subject
    ADD CONSTRAINT teacher_subject_pkey PRIMARY KEY (teacher_id, subject_id);


--
-- TOC entry 2879 (class 2606 OID 16772)
-- Name: teachers teachers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teachers
    ADD CONSTRAINT teachers_pkey PRIMARY KEY (teacher_id);


--
-- TOC entry 2894 (class 2606 OID 16833)
-- Name: grades grades_class_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grades
    ADD CONSTRAINT grades_class_id_fkey FOREIGN KEY (class_id) REFERENCES public.classes(class_id);


--
-- TOC entry 2891 (class 2606 OID 16818)
-- Name: grades grades_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grades
    ADD CONSTRAINT grades_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(student_id);


--
-- TOC entry 2892 (class 2606 OID 16823)
-- Name: grades grades_subject_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grades
    ADD CONSTRAINT grades_subject_id_fkey FOREIGN KEY (subject_id) REFERENCES public.subjects(subject_id);


--
-- TOC entry 2893 (class 2606 OID 16828)
-- Name: grades grades_teacher_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grades
    ADD CONSTRAINT grades_teacher_id_fkey FOREIGN KEY (teacher_id) REFERENCES public.teachers(teacher_id);


--
-- TOC entry 2888 (class 2606 OID 16781)
-- Name: students students_class_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_class_id_fkey FOREIGN KEY (class_id) REFERENCES public.classes(class_id);


--
-- TOC entry 2890 (class 2606 OID 16804)
-- Name: teacher_subject teacher_subject_subject_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teacher_subject
    ADD CONSTRAINT teacher_subject_subject_id_fkey FOREIGN KEY (subject_id) REFERENCES public.subjects(subject_id);


--
-- TOC entry 2889 (class 2606 OID 16799)
-- Name: teacher_subject teacher_subject_teacher_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teacher_subject
    ADD CONSTRAINT teacher_subject_teacher_id_fkey FOREIGN KEY (teacher_id) REFERENCES public.teachers(teacher_id);


-- Completed on 2025-03-15 11:38:15 MSK

--
-- PostgreSQL database dump complete
--

--
-- Database "popov_kyrs" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.1)

-- Started on 2025-03-15 11:38:15 MSK

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

--
-- TOC entry 3029 (class 1262 OID 16674)
-- Name: popov_kyrs; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE popov_kyrs WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'ru_RU.UTF-8' LC_CTYPE = 'ru_RU.UTF-8';


ALTER DATABASE popov_kyrs OWNER TO postgres;

\connect popov_kyrs

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

SET default_table_access_method = heap;

--
-- TOC entry 203 (class 1259 OID 16677)
-- Name: classes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.classes (
    class_id integer NOT NULL,
    class_number integer NOT NULL,
    class_letter character varying(5) NOT NULL,
    start_year date NOT NULL
);


ALTER TABLE public.classes OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16675)
-- Name: classes_class_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.classes_class_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.classes_class_id_seq OWNER TO postgres;

--
-- TOC entry 3030 (class 0 OID 0)
-- Dependencies: 202
-- Name: classes_class_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.classes_class_id_seq OWNED BY public.classes.class_id;


--
-- TOC entry 212 (class 1259 OID 16729)
-- Name: grades; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.grades (
    grade_id integer NOT NULL,
    student_id integer,
    class_id integer,
    subject_id integer,
    teacher_id integer,
    grade integer,
    number_lesson integer NOT NULL,
    date_lesson date NOT NULL,
    create_date date NOT NULL,
    update_date date,
    CONSTRAINT grades_grade_check CHECK ((grade = ANY (ARRAY[2, 3, 4, 5])))
);


ALTER TABLE public.grades OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 16727)
-- Name: grades_grade_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.grades_grade_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.grades_grade_id_seq OWNER TO postgres;

--
-- TOC entry 3031 (class 0 OID 0)
-- Dependencies: 211
-- Name: grades_grade_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.grades_grade_id_seq OWNED BY public.grades.grade_id;


--
-- TOC entry 207 (class 1259 OID 16693)
-- Name: students; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.students (
    student_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    second_name character varying(50) NOT NULL,
    date_of_birth date NOT NULL,
    class_id integer
);


ALTER TABLE public.students OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 16691)
-- Name: students_student_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.students_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.students_student_id_seq OWNER TO postgres;

--
-- TOC entry 3032 (class 0 OID 0)
-- Dependencies: 206
-- Name: students_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.students_student_id_seq OWNED BY public.students.student_id;


--
-- TOC entry 209 (class 1259 OID 16706)
-- Name: subjects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subjects (
    subject_id integer NOT NULL,
    subject_name character varying(50) NOT NULL
);


ALTER TABLE public.subjects OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 16704)
-- Name: subjects_subject_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.subjects_subject_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.subjects_subject_id_seq OWNER TO postgres;

--
-- TOC entry 3033 (class 0 OID 0)
-- Dependencies: 208
-- Name: subjects_subject_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.subjects_subject_id_seq OWNED BY public.subjects.subject_id;


--
-- TOC entry 210 (class 1259 OID 16712)
-- Name: teacher_subject; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.teacher_subject (
    teacher_id integer NOT NULL,
    subject_id integer NOT NULL
);


ALTER TABLE public.teacher_subject OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 16685)
-- Name: teachers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.teachers (
    teacher_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    second_name character varying(50) NOT NULL
);


ALTER TABLE public.teachers OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16683)
-- Name: teachers_teacher_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.teachers_teacher_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teachers_teacher_id_seq OWNER TO postgres;

--
-- TOC entry 3034 (class 0 OID 0)
-- Dependencies: 204
-- Name: teachers_teacher_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.teachers_teacher_id_seq OWNED BY public.teachers.teacher_id;


--
-- TOC entry 2862 (class 2604 OID 16680)
-- Name: classes class_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classes ALTER COLUMN class_id SET DEFAULT nextval('public.classes_class_id_seq'::regclass);


--
-- TOC entry 2866 (class 2604 OID 16732)
-- Name: grades grade_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grades ALTER COLUMN grade_id SET DEFAULT nextval('public.grades_grade_id_seq'::regclass);


--
-- TOC entry 2864 (class 2604 OID 16696)
-- Name: students student_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students ALTER COLUMN student_id SET DEFAULT nextval('public.students_student_id_seq'::regclass);


--
-- TOC entry 2865 (class 2604 OID 16709)
-- Name: subjects subject_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subjects ALTER COLUMN subject_id SET DEFAULT nextval('public.subjects_subject_id_seq'::regclass);


--
-- TOC entry 2863 (class 2604 OID 16688)
-- Name: teachers teacher_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teachers ALTER COLUMN teacher_id SET DEFAULT nextval('public.teachers_teacher_id_seq'::regclass);


--
-- TOC entry 3014 (class 0 OID 16677)
-- Dependencies: 203
-- Data for Name: classes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.classes (class_id, class_number, class_letter, start_year) FROM stdin;
\.


--
-- TOC entry 3023 (class 0 OID 16729)
-- Dependencies: 212
-- Data for Name: grades; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.grades (grade_id, student_id, class_id, subject_id, teacher_id, grade, number_lesson, date_lesson, create_date, update_date) FROM stdin;
\.


--
-- TOC entry 3018 (class 0 OID 16693)
-- Dependencies: 207
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.students (student_id, first_name, last_name, second_name, date_of_birth, class_id) FROM stdin;
\.


--
-- TOC entry 3020 (class 0 OID 16706)
-- Dependencies: 209
-- Data for Name: subjects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.subjects (subject_id, subject_name) FROM stdin;
\.


--
-- TOC entry 3021 (class 0 OID 16712)
-- Dependencies: 210
-- Data for Name: teacher_subject; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.teacher_subject (teacher_id, subject_id) FROM stdin;
\.


--
-- TOC entry 3016 (class 0 OID 16685)
-- Dependencies: 205
-- Data for Name: teachers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.teachers (teacher_id, first_name, last_name, second_name) FROM stdin;
\.


--
-- TOC entry 3035 (class 0 OID 0)
-- Dependencies: 202
-- Name: classes_class_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.classes_class_id_seq', 5, true);


--
-- TOC entry 3036 (class 0 OID 0)
-- Dependencies: 211
-- Name: grades_grade_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.grades_grade_id_seq', 1, true);


--
-- TOC entry 3037 (class 0 OID 0)
-- Dependencies: 206
-- Name: students_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.students_student_id_seq', 5, true);


--
-- TOC entry 3038 (class 0 OID 0)
-- Dependencies: 208
-- Name: subjects_subject_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.subjects_subject_id_seq', 5, true);


--
-- TOC entry 3039 (class 0 OID 0)
-- Dependencies: 204
-- Name: teachers_teacher_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.teachers_teacher_id_seq', 5, true);


--
-- TOC entry 2869 (class 2606 OID 16682)
-- Name: classes classes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classes
    ADD CONSTRAINT classes_pkey PRIMARY KEY (class_id);


--
-- TOC entry 2879 (class 2606 OID 16735)
-- Name: grades grades_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grades
    ADD CONSTRAINT grades_pkey PRIMARY KEY (grade_id);


--
-- TOC entry 2873 (class 2606 OID 16698)
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (student_id);


--
-- TOC entry 2875 (class 2606 OID 16711)
-- Name: subjects subjects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subjects
    ADD CONSTRAINT subjects_pkey PRIMARY KEY (subject_id);


--
-- TOC entry 2877 (class 2606 OID 16716)
-- Name: teacher_subject teacher_subject_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teacher_subject
    ADD CONSTRAINT teacher_subject_pkey PRIMARY KEY (teacher_id, subject_id);


--
-- TOC entry 2871 (class 2606 OID 16690)
-- Name: teachers teachers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teachers
    ADD CONSTRAINT teachers_pkey PRIMARY KEY (teacher_id);


--
-- TOC entry 2886 (class 2606 OID 16751)
-- Name: grades grades_class_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grades
    ADD CONSTRAINT grades_class_id_fkey FOREIGN KEY (class_id) REFERENCES public.classes(class_id);


--
-- TOC entry 2883 (class 2606 OID 16736)
-- Name: grades grades_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grades
    ADD CONSTRAINT grades_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(student_id);


--
-- TOC entry 2884 (class 2606 OID 16741)
-- Name: grades grades_subject_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grades
    ADD CONSTRAINT grades_subject_id_fkey FOREIGN KEY (subject_id) REFERENCES public.subjects(subject_id);


--
-- TOC entry 2885 (class 2606 OID 16746)
-- Name: grades grades_teacher_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grades
    ADD CONSTRAINT grades_teacher_id_fkey FOREIGN KEY (teacher_id) REFERENCES public.teachers(teacher_id);


--
-- TOC entry 2880 (class 2606 OID 16699)
-- Name: students students_class_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_class_id_fkey FOREIGN KEY (class_id) REFERENCES public.classes(class_id);


--
-- TOC entry 2882 (class 2606 OID 16722)
-- Name: teacher_subject teacher_subject_subject_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teacher_subject
    ADD CONSTRAINT teacher_subject_subject_id_fkey FOREIGN KEY (subject_id) REFERENCES public.subjects(subject_id);


--
-- TOC entry 2881 (class 2606 OID 16717)
-- Name: teacher_subject teacher_subject_teacher_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teacher_subject
    ADD CONSTRAINT teacher_subject_teacher_id_fkey FOREIGN KEY (teacher_id) REFERENCES public.teachers(teacher_id);


-- Completed on 2025-03-15 11:38:16 MSK

--
-- PostgreSQL database dump complete
--

--
-- Database "popvet" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.1)

-- Started on 2025-03-15 11:38:16 MSK

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

--
-- TOC entry 3033 (class 1262 OID 16387)
-- Name: popvet; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE popvet WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'ru_RU.UTF-8' LC_CTYPE = 'ru_RU.UTF-8';


ALTER DATABASE popvet OWNER TO postgres;

\connect popvet

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

--
-- TOC entry 7 (class 2615 OID 16391)
-- Name: hr_poc; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA hr_poc;


ALTER SCHEMA hr_poc OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 203 (class 1259 OID 16392)
-- Name: customers; Type: TABLE; Schema: hr_poc; Owner: postgres
--

CREATE TABLE hr_poc.customers (
    customer_id integer NOT NULL,
    c_name character varying(255) NOT NULL,
    address character varying(255),
    credit_limit numeric(10,2)
);


ALTER TABLE hr_poc.customers OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16398)
-- Name: departments; Type: TABLE; Schema: hr_poc; Owner: postgres
--

CREATE TABLE hr_poc.departments (
    department_id integer NOT NULL,
    department_name character varying(30) NOT NULL,
    manager_id integer,
    location_id integer
);


ALTER TABLE hr_poc.departments OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 16401)
-- Name: employees; Type: TABLE; Schema: hr_poc; Owner: postgres
--

CREATE TABLE hr_poc.employees (
    employee_id integer NOT NULL,
    first_name character varying(20),
    last_name character varying(25) NOT NULL,
    email character varying(25) NOT NULL,
    phone_number character varying(20),
    hire_date date DEFAULT CURRENT_DATE NOT NULL,
    job_id character varying(10),
    salary numeric(10,2),
    commission_pct numeric(4,3),
    manager_id integer,
    department_id integer,
    rating_e integer,
    CONSTRAINT emp_e CHECK (((rating_e > 0) AND (rating_e <= 5))),
    CONSTRAINT emp_salary_min CHECK ((salary > (0)::numeric))
);


ALTER TABLE hr_poc.employees OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 16407)
-- Name: jobs; Type: TABLE; Schema: hr_poc; Owner: postgres
--

CREATE TABLE hr_poc.jobs (
    job_id character varying(10) NOT NULL,
    job_title character varying(35) NOT NULL,
    min_salary numeric(10,2),
    max_salary numeric(10,2)
);


ALTER TABLE hr_poc.jobs OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 16410)
-- Name: locations; Type: TABLE; Schema: hr_poc; Owner: postgres
--

CREATE TABLE hr_poc.locations (
    location_id integer NOT NULL,
    street_address character varying(40),
    postal_code character varying(12),
    city character varying(30),
    state_province character varying(25),
    country_id character varying(2)
);


ALTER TABLE hr_poc.locations OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 16413)
-- Name: order_items; Type: TABLE; Schema: hr_poc; Owner: postgres
--

CREATE TABLE hr_poc.order_items (
    order_id integer NOT NULL,
    item_id integer NOT NULL,
    product_id integer NOT NULL,
    quantity integer NOT NULL,
    unit_price numeric(10,2) NOT NULL
);


ALTER TABLE hr_poc.order_items OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16416)
-- Name: orders; Type: TABLE; Schema: hr_poc; Owner: postgres
--

CREATE TABLE hr_poc.orders (
    order_id integer NOT NULL,
    customer_id integer NOT NULL,
    status character varying(20) DEFAULT 'Pending'::character varying NOT NULL,
    salesman_id integer,
    order_date date DEFAULT CURRENT_DATE NOT NULL
);


ALTER TABLE hr_poc.orders OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 16421)
-- Name: products; Type: TABLE; Schema: hr_poc; Owner: postgres
--

CREATE TABLE hr_poc.products (
    product_id integer NOT NULL,
    product_name character varying(255) NOT NULL,
    rating_p integer,
    price numeric(10,2),
    CONSTRAINT product_r CHECK (((rating_p > 0) AND (rating_p <= 5)))
);


ALTER TABLE hr_poc.products OWNER TO postgres;

--
-- TOC entry 3020 (class 0 OID 16392)
-- Dependencies: 203
-- Data for Name: customers; Type: TABLE DATA; Schema: hr_poc; Owner: postgres
--

COPY hr_poc.customers (customer_id, c_name, address, credit_limit) FROM stdin;
2	Boeing	100 North Riverside Chicago, Illinois 60606 USA	1200000.00
3	Oracle Corporation	500 Oracle Parkway Redwood Shores, CA 94065 USA	1200000.00
4	United Technologies	10 Farm Springs Rd. Farmington, CT 06032 USA	120000.00
5	Rockwell Collins	400 Collins Road N.E. Cedar Rapids, IA 52498 USA	500000.00
6	Textron	40 Westminster Street Providence, RI 02903 USA	360000.00
7	Daimler	Daimler AG 70546 Stuttgart Germany	240000.00
9	Triumph Group Inc	Berwyn, Pennsylvania , United States	50000.00
10	Mazda Motor	3-1, Shinchi, Fuchu-Cho Aki-Gun, Hiroshima, 735-0028 Japan	500000.00
11	Toyota Motor	Toyota-Cho, Toyota, Aichi, Japan 471-0826	50000.00
12	Zhengzhou Yutong Bus	Zhengzhou,Henan province,China	60000.00
14	Volkswagen Group	Berliner Ring 2 38440 Wolfsburg, Germany	70000.00
15	DEDEMAN S.R.L.	411 E Wisconsin Ave # 2550	70000.00
16	Samsung Electronics	129, Samsung-ro, Yeongtong-gu, Suwon-si, Gyeonggi-do, Korea	90000.00
17	Haier Group	1 Haier Road, Hi-Tech Zone Qingdao 266101 China	120000.00
18	Anglo American plc	20 Carlton House Terrace London SW1Y 5AN United Kingdom	120000.00
19	Rio Tinto Limited	Level 7 360 Collins Street Melbourne Australia 3000	120000.00
20	Caterpillar	501 Southwest Jefferson Avenue, Peoria, IL, 61630	120000.00
21	Volvo Construction Equipment	Bolinderv?gen 100 (1 321,64 km) Eskilstuna, Sweden	120000.00
22	CNH Industrial	25 St James Street, London, United Kingdom	500000.00
23	Deere & Company	One JohnDeere Place|Moline, IL 61265USA	30000.00
24	Rockwell Automation	1201 South Second Street, Milwaukee, WI 53204-2496 USA	190000.00
25	DAIKIN INDUSTRIES	1304 Kanaoka-cho, Kita-ku, Sakai, Osaka 591-8511, Japan	370000.00
26	Alfa Laval AB	Rudeboksv?gen 1 SE-226 55 Lund Sweden	300000.00
27	National Oilwell Varco	7909 Parkwood Circle Drive Houston, Texas 77036 United States	500000.00
28	FLSmidth	A/S Vigerslev All? 77 2500 Valby, Copenhagen Denmark	20000.00
29	GEA Group	Peter-M?ller-Str. 12 40468 D?sseldorf Germany	120000.00
30	SOLER & PALAU (S&P)	Ctra. Puigcerda 17500 Ripol, Spain	120000.00
31	ARBURG GmbH + Co KG	Arthur-Hehl-Stra?e 72290 Lossburg Germany	90000.00
33	BIZERBA SE & Co. KG	Balingen, Wilhelm-Kraut-Str. 65, 72336 Balingen	120000.00
34	Apple	1 Infinite Loop Cupertino, CA 95014 USA	120000.00
35	Asustek Computer	15 Li-Te Road, Peitou, Taipei, Taiwan 11259	120000.00
36	Lite-On Technology Corporation	14F,392, Ruey KuangNeihu, Taipei 11492 Taiwan	120000.00
37	Advanced Micro Devices	One AMD Place P.O. Box 3453 Sunnyvale, CA 94088-3453,USA	120000.00
38	OMRON	Shiokoji Horikawa, Shimogyo-ku, Kyoto 600-8530, Japan	120000.00
39	SAKAI HEAVY INDUSTRIES, LTD	Hamamatsu-cho Seiwa Bldg., 1-4-8, Shibadaimon, Minato-ku, Tokyo 105-0012	120000.00
40	HIRE SERVICE SHOPS	76 Talbot Road, Old Trafford, Manchester, M16 0PQ United Kingdom	120000.00
41	Einhell Germany AG	Landau, Wiesenweg, 22, 94405 Landau an der Isar Germany	120000.00
42	Microsoft Corporation	One Microsoft Way Redmond, WA 98052-7329 USA	120000.00
43	ALFRED KARCHER GMBH & CO. KG	Alfred-Karcher-Str. 28-40, 71364 Winnenden Germany	140000.00
44	Canon Inc.	30-2, Shimomaruko 3-chome, Ohta-ku, Tokyo 146-8501, Japan	140000.00
45	Nikon Corporation	Shinagawa Intercity Tower C, 2-15-3, Konan, Minato-ku, Tokyo 108-6290, Japan	140000.00
46	Liebherr	rue de l'industrie 45 1630 Bulle Switzerland	140000.00
47	DAIKIN INDUSTRIES	1304 Kanaoka-cho, Kita-ku, Sakai, Osaka 591-8511, Japan	140000.00
48	Electrolux Group	Sankt G?ransgatan 143, 112 17 Stockholm	140000.00
49	Vaillant Group	Berghauser. 40, 42859 Remscheid, Deutschland	140000.00
51	Whirlpool	2000 N. M-63 Benton Harbor, MI, 49022-2692 USA	190000.00
52	Fujifilm Holdings	9-7-3 Akasaka, Minato-ku, Tokyo 107-0052, Japan	230000.00
53	FERROLI S.p.A.	via Ritonda 78/a 37047 San Bonifacio (VR)	230000.00
54	Miele	Gesch?ftsbereich Projekte Carl-Miele-Str. 29 33332 G?tersloh Germany	500000.00
55	BAXI GROUP LIMITED	Derby, 16 Stanier Way, Wyvern Business Park, Derby, DE21 6BF United Kingdom	500000.00
56	Rosenbauer International AG	Paschinger Stra?e 90 4060 Leonding, ?sterreich	240000.00
57	PALFINGER AG	Lamprechtshausener Bundesstra?e 8 | 5101 Bergheim | Austria	50000.00
58	General Electric Co	Wells Fargo Shareowner Services P.O. Box 64874 St Paul, MN 55164-0874 USA	30000.00
59	Johnson & Johnson	One Johnson & Johnson Plaza New Brunswick, New Jersey 08933 USA	120000.00
60	Agilent Technologies	5301 Stevens Creek Blvd., Santa Clara, CA 95051, United States	120000.00
61	Becton Dickinson	1 Becton Drive Franklin Lakes, NJ 07417-1880 USA	500000.00
62	Stryker Corporation	2825 Airview Boulevard Kalamazoo, MI 49002 USA	50000.00
63	Dentsply Sirona	Building 3, The Heights, Weybridge, Surrey, KT13 0NY, United Kingdom	50000.00
64	Sysmex Corporation	1-5-1,Wakinohama-kaigandori, Chuo-ku, Kobe, Hyogo 651-0073, Japan	50000.00
65	SAINT-GOBAIN	Les Miroirs 18, avenue d'Alsace 92400 Courbevoie FRANCE	230000.00
66	GEA WESTFALIA SEPARATOR AG	Oelde, Werner-Habig-Strasse 1, 59302 Oelde Germany	350000.00
67	Georg Fischer AG	Amsler-Laffon-Strasse 9 8201 Schaffhausen Switzerland	350000.00
68	Norsk Hydro ASA	Drammensveien 260 V?ker? Oslo, 0240 Norway	120000.00
69	WALTER AG	Derendinger Str. 53 72072 T?bingen Germany	350000.00
70	Adidas AG	Adi-Dassler-Strasse 1, 91074 Herzogenaurach, Germany	140000.00
72	PORCELANOSA	Box: 131 12540 Vila-real, Castell?n, Spain	500000.00
73	Brother Industries	Naeshiro-Cho, Mizuho-Ku, Nagoya, Japan	180000.00
74	Amazon.com	Seattle, Washington, USA	240000.00
\.


--
-- TOC entry 3021 (class 0 OID 16398)
-- Dependencies: 204
-- Data for Name: departments; Type: TABLE DATA; Schema: hr_poc; Owner: postgres
--

COPY hr_poc.departments (department_id, department_name, manager_id, location_id) FROM stdin;
10	Administration	200	1700
20	Marketing	201	1800
30	Purchasing	114	1700
40	Human Resources	203	2400
50	Shipping	121	1500
60	IT	103	1400
70	Public Relations	204	2700
80	Sales	145	2500
90	Executive	100	1700
100	Finance	108	1700
110	Accounting	205	1700
120	Treasury	\N	1700
130	Corporate Tax	\N	1700
140	Control And Credit	\N	1700
150	Shareholder Services	\N	1700
160	Benefits	\N	1700
170	Manufacturing	\N	1700
180	Construction	\N	1700
190	Contracting	\N	1700
200	Operations	\N	1700
210	IT Support	\N	1700
220	NOC	\N	1700
230	IT Helpdesk	\N	1700
240	Government Sales	\N	1700
250	Retail Sales	\N	1700
260	Recruiting	\N	1700
270	Payroll	\N	1700
\.


--
-- TOC entry 3022 (class 0 OID 16401)
-- Dependencies: 205
-- Data for Name: employees; Type: TABLE DATA; Schema: hr_poc; Owner: postgres
--

COPY hr_poc.employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id, rating_e) FROM stdin;
100	Steven	King	SKING	515.123.4567	1987-06-17	AD_PRES	24000.00	\N	\N	90	4
101	Neena	Kochhar	NKOCHHAR	515.123.4568	1989-09-21	AD_VP	17000.00	\N	100	90	5
102	Lex	De Haan	LDEHAAN	515.123.4569	1993-01-13	AD_VP	17000.00	\N	100	90	3
103	Alexander	Hunold	AHUNOLD	590.423.4567	1990-01-03	IT_PROG	9000.00	\N	102	60	3
104	Bruce	Ernst	BERNST	590.423.4568	1991-05-21	IT_PROG	6000.00	\N	103	60	3
106	Valli	Pataballa	VPATABAL	590.423.4560	1998-02-05	IT_PROG	4800.00	\N	103	60	4
107	Diana	Lorentz	DLORENTZ	590.423.5567	1999-02-07	IT_PROG	4200.00	\N	103	60	3
108	Nancy	Greenberg	NGREENBE	515.124.4569	1994-08-17	FI_MGR	12000.00	\N	101	100	2
109	Daniel	Faviet	DFAVIET	515.124.4169	1994-08-16	FI_ACCOUNT	9000.00	\N	108	100	3
110	John	Chen	JCHEN	515.124.4269	1997-09-28	FI_ACCOUNT	8200.00	\N	108	100	4
111	Ismael	Sciarra	ISCIARRA	515.124.4369	1997-09-30	FI_ACCOUNT	7700.00	\N	108	100	4
112	Jose Manuel	Urman	JMURMAN	515.124.4469	1998-03-07	FI_ACCOUNT	7800.00	\N	108	100	1
113	Luis	Popp	LPOPP	515.124.4567	1999-12-07	FI_ACCOUNT	6900.00	\N	108	100	4
115	Alexander	Khoo	AKHOO	515.127.4562	1995-05-18	PU_CLERK	3100.00	\N	114	30	3
118	Guy	Himuro	GHIMURO	515.127.4565	1998-11-15	PU_CLERK	2600.00	\N	114	30	3
119	Karen	Colmenares	KCOLMENA	515.127.4566	1999-08-10	PU_CLERK	2500.00	\N	114	30	3
120	Matthew	Weiss	MWEISS	650.123.1234	1996-07-18	ST_MAN	8000.00	\N	100	50	2
121	Adam	Fripp	AFRIPP	650.123.2234	1997-04-10	ST_MAN	8200.00	\N	100	50	1
122	Payam	Kaufling	PKAUFLIN	650.123.3234	1995-05-01	ST_MAN	7900.00	\N	100	50	2
123	Shanta	Vollman	SVOLLMAN	650.123.4234	1997-10-10	ST_MAN	6500.00	\N	100	50	1
124	Kevin	Mourgos	KMOURGOS	650.123.5234	1999-11-16	ST_MAN	5800.00	\N	100	50	4
128	Steven	Markle	SMARKLE	650.124.1434	2000-03-08	ST_CLERK	2200.00	\N	120	50	5
129	Laura	Bissot	LBISSOT	650.124.5234	1997-08-20	ST_CLERK	3300.00	\N	121	50	5
130	Mozhe	Atkinson	MATKINSO	650.124.6234	1997-10-30	ST_CLERK	2800.00	\N	121	50	2
131	James	Marlow	JAMRLOW	650.124.7234	1997-02-16	ST_CLERK	2500.00	\N	121	50	2
133	Jason	Mallin	JMALLIN	650.127.1934	1996-06-14	ST_CLERK	3300.00	\N	122	50	3
134	Michael	Rogers	MROGERS	650.127.1834	1998-08-26	ST_CLERK	2900.00	\N	122	50	4
135	Ki	Gee	KGEE	650.127.1734	1999-12-12	ST_CLERK	2400.00	\N	122	50	3
136	Hazel	Philtanker	HPHILTAN	650.127.1634	2000-02-06	ST_CLERK	2200.00	\N	122	50	4
137	Renske	Ladwig	RLADWIG	650.121.1234	1995-07-14	ST_CLERK	3600.00	\N	123	50	1
138	Stephen	Stiles	SSTILES	650.121.2034	1997-10-26	ST_CLERK	3200.00	\N	123	50	3
139	John	Seo	JSEO	650.121.2019	1998-02-12	ST_CLERK	2700.00	\N	123	50	1
140	Joshua	Patel	JPATEL	650.121.1834	1998-04-06	ST_CLERK	2500.00	\N	123	50	5
141	Trenna	Rajs	TRAJS	650.121.8009	1995-10-17	ST_CLERK	3500.00	\N	124	50	5
142	Curtis	Davies	CDAVIES	650.121.2994	1997-01-29	ST_CLERK	3100.00	\N	124	50	3
143	Randall	Matos	RMATOS	650.121.2874	1998-03-15	ST_CLERK	2600.00	\N	124	50	3
144	Peter	Vargas	PVARGAS	650.121.2004	1998-07-09	ST_CLERK	2500.00	\N	124	50	3
145	John	Russell	JRUSSEL	011.44.1344.429268	1996-10-01	SA_MAN	14000.00	0.400	100	80	3
146	Karen	Partners	KPARTNER	011.44.1344.467268	1997-01-05	SA_MAN	13500.00	0.300	100	80	\N
147	Alberto	Errazuriz	AERRAZUR	011.44.1344.429278	1997-03-10	SA_MAN	12000.00	0.300	100	80	2
148	Gerald	Cambrault	GCAMBRAU	011.44.1344.619268	1999-10-15	SA_MAN	11000.00	0.300	100	80	5
149	Eleni	Zlotkey	EZLOTKEY	011.44.1344.429018	2000-01-29	SA_MAN	10500.00	0.200	100	80	3
150	Peter	Tucker	PTUCKER	011.44.1344.129268	1997-01-30	SA_REP	10000.00	0.300	145	80	3
151	David	Bernstein	DBERNSTE	011.44.1344.345268	1997-03-24	SA_REP	9500.00	0.250	145	80	3
153	Christopher	Olsen	COLSEN	011.44.1344.498718	1998-03-30	SA_REP	8000.00	0.200	145	80	5
154	Nanette	Cambrault	NCAMBRAU	011.44.1344.987668	1998-12-09	SA_REP	7500.00	0.200	145	80	3
155	Oliver	Tuvault	OTUVAULT	011.44.1344.486508	1999-11-23	SA_REP	7000.00	0.150	145	80	5
156	Janette	King	JKING	011.44.1345.429268	1996-01-30	SA_REP	10000.00	0.350	146	80	1
157	Patrick	Sully	PSULLY	011.44.1345.929268	1996-03-04	SA_REP	9500.00	0.350	146	80	2
158	Allan	McEwen	AMCEWEN	011.44.1345.829268	1996-08-01	SA_REP	9000.00	0.350	146	80	2
160	Louise	Doran	LDORAN	011.44.1345.629268	1997-12-15	SA_REP	7500.00	0.300	146	80	5
161	Sarath	Sewall	SSEWALL	011.44.1345.529268	1998-11-03	SA_REP	7000.00	0.250	146	80	1
162	Clara	Vishney	CVISHNEY	011.44.1346.129268	1997-11-11	SA_REP	10500.00	0.250	147	80	2
163	Danielle	Greene	DGREENE	011.44.1346.229268	1999-03-19	SA_REP	9500.00	0.150	147	80	5
164	Mattea	Marvins	MMARVINS	011.44.1346.329268	2000-01-24	SA_REP	7200.00	0.100	147	80	5
165	David	Lee	DLEE	011.44.1346.529268	2000-02-23	SA_REP	6800.00	0.100	147	80	5
166	Sundar	Ande	SANDE	011.44.1346.629268	2000-03-24	SA_REP	6400.00	0.100	147	80	2
167	Amit	Banda	ABANDA	011.44.1346.729268	2000-04-21	SA_REP	6200.00	0.100	147	80	3
168	Lisa	Ozer	LOZER	011.44.1343.929268	1997-03-11	SA_REP	11500.00	0.250	148	80	2
169	Harrison	Bloom	HBLOOM	011.44.1343.829268	1998-03-23	SA_REP	10000.00	0.200	148	80	3
170	Tayler	Fox	TFOX	011.44.1343.729268	1998-01-24	SA_REP	9600.00	0.200	148	80	3
171	William	Smith	WSMITH	011.44.1343.629268	1999-02-23	SA_REP	7400.00	0.150	148	80	2
172	Elizabeth	Bates	EBATES	011.44.1343.529268	1999-03-24	SA_REP	7300.00	0.150	148	80	2
173	Sundita	Kumar	SKUMAR	011.44.1343.329268	2000-04-21	SA_REP	6100.00	0.100	148	80	2
114	Den	Raphaely	DRAPHEAL	515.127.4561	1994-12-07	PU_MAN	11000.00	0.200	100	30	1
116	Shelli	Baida	SBAIDA	515.127.4563	1997-12-24	PU_CLERK	2900.00	0.300	114	30	2
117	Sigal	Tobias	STOBIAS	515.127.4564	1997-07-24	PU_CLERK	2800.00	0.100	114	30	3
132	TJ	Olson	TJOLSON	650.124.8234	1999-04-10	ST_CLERK	\N	\N	121	50	1
152	Peter	Hall	PHALL	011.44.1344.478968	1997-08-20	SA_REP	\N	0.250	145	80	3
174	Ellen	Abel	EABEL	011.44.1644.429267	1996-05-11	SA_REP	11000.00	0.300	149	80	1
175	Alyssa	Hutton	AHUTTON	011.44.1644.429266	1997-03-19	SA_REP	8800.00	0.250	149	80	3
127	James	Landry	JLANDRY	650.124.1334	1999-01-14	PU_CLERK	2400.00	\N	120	50	4
176	Jonathon	Taylor	JTAYLOR	011.44.1644.429265	1998-03-24	SA_REP	8600.00	0.200	149	80	3
177	Jack	Livingston	JLIVINGS	011.44.1644.429264	1998-04-23	SA_REP	8400.00	0.200	149	80	2
178	Kimberely	Grant	KGRANT	011.44.1644.429263	1999-05-24	SA_REP	7000.00	0.150	149	\N	4
179	Charles	Johnson	CJOHNSON	011.44.1644.429262	2000-01-04	SA_REP	6200.00	0.100	149	80	4
180	Winston	Taylor	WTAYLOR	650.507.9876	1998-01-24	SH_CLERK	3200.00	\N	120	50	4
181	Jean	Fleaur	JFLEAUR	650.507.9877	1998-02-23	SH_CLERK	3100.00	\N	120	50	4
182	Martha	Sullivan	MSULLIVA	650.507.9878	1999-06-21	SH_CLERK	2500.00	\N	120	50	2
183	Girard	Geoni	GGEONI	650.507.9879	2000-02-03	SH_CLERK	2800.00	\N	120	50	2
184	Nandita	Sarchand	NSARCHAN	650.509.1876	1996-01-27	SH_CLERK	4200.00	\N	121	50	4
185	Alexis	Bull	ABULL	650.509.2876	1997-02-20	SH_CLERK	4100.00	\N	121	50	5
186	Julia	Dellinger	JDELLING	650.509.3876	1998-06-24	SH_CLERK	3400.00	\N	121	50	2
187	Anthony	Cabrio	ACABRIO	650.509.4876	1999-02-07	SH_CLERK	3000.00	\N	121	50	5
188	Kelly	Chung	KCHUNG	650.505.1876	1997-06-14	SH_CLERK	3800.00	\N	122	50	2
189	Jennifer	Dilly	JDILLY	650.505.2876	1997-08-13	SH_CLERK	3600.00	\N	122	50	1
190	Timothy	Gates	TGATES	650.505.3876	1998-07-11	SH_CLERK	2900.00	\N	122	50	1
191	Randall	Perkins	RPERKINS	650.505.4876	1999-12-19	SH_CLERK	2500.00	\N	122	50	4
192	Sarah	Bell	SBELL	650.501.1876	1996-02-04	SH_CLERK	4000.00	\N	123	50	5
193	Britney	Everett	BEVERETT	650.501.2876	1997-03-03	SH_CLERK	3900.00	\N	123	50	2
194	Samuel	McCain	SMCCAIN	650.501.3876	1998-07-01	SH_CLERK	3200.00	\N	123	50	2
195	Vance	Jones	VJONES	650.501.4876	1999-03-17	SH_CLERK	2800.00	\N	123	50	5
196	Alana	Walsh	AWALSH	650.507.9811	1998-04-24	SH_CLERK	3100.00	\N	124	50	5
197	Kevin	Feeney	KFEENEY	650.507.9822	1998-05-23	SH_CLERK	3000.00	\N	124	50	3
198	Donald	OConnell	DOCONNEL	650.507.9833	1999-06-21	SH_CLERK	2600.00	\N	124	50	4
199	Douglas	Grant	DGRANT	650.507.9844	2000-01-13	SH_CLERK	2600.00	\N	124	50	4
200	Jennifer	Whalen	JWHALEN	515.123.4444	1987-09-17	AD_ASST	4400.00	\N	101	10	2
201	Michael	Hartstein	MHARTSTE	515.123.5555	1996-02-17	MK_MAN	13000.00	\N	100	20	4
202	Pat	Fay	PFAY	603.123.6666	1997-08-17	MK_REP	6000.00	\N	201	20	5
203	Susan	Mavris	SMAVRIS	515.123.7777	1994-06-07	HR_REP	6500.00	\N	101	40	2
204	Hermann	Baer	HBAER	515.123.8888	1994-06-07	PR_REP	10000.00	\N	101	70	5
205	Shelley	Higgins	SHIGGINS	515.123.8080	1994-06-07	AC_MGR	12000.00	\N	101	110	2
206	William	Gietz	WGIETZ	515.123.8181	1994-06-07	AC_ACCOUNT	8300.00	\N	205	110	5
105	DAVID	Austin	DAUSTIN	590.423.4569	1997-06-25	IT_PROG	4800.00	\N	103	60	5
126	Irene	Mikkilineni	IMIKKILI	650.124.1224	1998-09-28	PU_CLERK	2700.00	\N	120	50	\N
\.


--
-- TOC entry 3023 (class 0 OID 16407)
-- Dependencies: 206
-- Data for Name: jobs; Type: TABLE DATA; Schema: hr_poc; Owner: postgres
--

COPY hr_poc.jobs (job_id, job_title, min_salary, max_salary) FROM stdin;
AD_PRES	President	20000.00	40000.00
AD_VP	Administration Vice President	15000.00	30000.00
AD_ASST	Administration Assistant	3000.00	6000.00
FI_MGR	Finance Manager	8200.00	16000.00
FI_ACCOUNT	Accountant	4200.00	9000.00
AC_MGR	Accounting Manager	8200.00	16000.00
AC_ACCOUNT	Public Accountant	4200.00	9000.00
SA_MAN	Sales Manager	10000.00	20000.00
SA_REP	Sales Representative	6000.00	12000.00
PU_MAN	Purchasing Manager	8000.00	15000.00
PU_CLERK	Purchasing Clerk	2500.00	5500.00
ST_MAN	Stock Manager	5500.00	8500.00
ST_CLERK	Stock Clerk	2000.00	5000.00
SH_CLERK	Shipping Clerk	2500.00	5500.00
IT_PROG	Programmer	4000.00	10000.00
MK_MAN	Marketing Manager	9000.00	15000.00
MK_REP	Marketing Representative	4000.00	9000.00
HR_REP	Human Resources Representative	4000.00	9000.00
PR_REP	Public Relations Representative	4500.00	10500.00
\.


--
-- TOC entry 3024 (class 0 OID 16410)
-- Dependencies: 207
-- Data for Name: locations; Type: TABLE DATA; Schema: hr_poc; Owner: postgres
--

COPY hr_poc.locations (location_id, street_address, postal_code, city, state_province, country_id) FROM stdin;
1000	1297 Via Cola di Rie	00989	Roma	\N	IT
1100	93091 Calle della Testa	10934	Milano	\N	IT
1200	2017 Shinjuku-ku	1689	Tokyo	Tokyo Prefecture	JP
1300	9450 Kamiya-cho	6823	Hiroshima	\N	JP
1400	2014 Jabberwocky Rd	26192	Southlake	Texas	US
1500	2011 Interiors Blvd	99236	South San Francisco	California	US
1600	2007 Zagora St	10001	South Brunswick	New York	US
1700	2004 Charade Rd	98199	Seattle	Washington	US
1800	147 Spadina Ave	M5V 2L7	Toronto	Ontario	CA
1900	6092 Boxwood St	YSW 9T2	Whitehorse	Yukon	CA
2000	40-5-12 Laogianggen	190518	Beijing	\N	CN
2100	1298 Vileparle (E)	490231	Bombay	Maharashtra	IN
2200	12-98 Victoria Street	2901	Sydney	New South Wales	AU
2300	198 Clementi North	540198	Singapore	\N	SG
2400	8204 Arthur St	\N	London	\N	UK
2500	Magdalen Centre, The Oxford Science Park	OX9 9ZB	Oxford	Oxford	UK
2600	9702 Chester Road	09629850293	Stretford	Manchester	UK
2700	Schwanthalerstr. 7031	80925	Munich	Bavaria	DE
2800	Rua Frei Caneca 1360 	01307-002	Sao Paulo	Sao Paulo	BR
2900	20 Rue des Corps-Saints	1730	Geneva	Geneve	CH
3000	Murtenstrasse 921	3095	Bern	BE	CH
3100	Pieter Breughelstraat 837	3029SK	Utrecht	Utrecht	NL
3200	Mariano Escobedo 9991	11932	Mexico City	Distrito Federal,	MX
\.


--
-- TOC entry 3025 (class 0 OID 16413)
-- Dependencies: 208
-- Data for Name: order_items; Type: TABLE DATA; Schema: hr_poc; Owner: postgres
--

COPY hr_poc.order_items (order_id, item_id, product_id, quantity, unit_price) FROM stdin;
78	5	79	10	2000.00
8	1	34	144	150.00
32	1	14	86	700.00
35	1	76	99	1160.00
60	1	15	36	280.00
61	1	16	67	730.00
87	1	1	57	640.00
107	2	66	126	400.00
107	1	63	31	1900.00
87	9	21	142	720.00
70	7	32	32	2800.00
73	5	12	124	2060.00
74	7	27	92	4140.00
74	11	6	128	2430.00
74	10	75	106	70.00
74	5	71	148	90.00
81	7	79	127	150.00
84	6	31	34	3000.00
84	11	71	58	90.00
95	9	17	144	1900.00
14	7	78	145	440.00
15	6	83	79	140.00
6	7	7	119	2380.00
6	1	19	67	1850.00
11	1	66	113	560.00
12	1	11	41	2120.00
13	1	84	46	60.00
14	1	29	98	3190.00
15	1	28	60	3250.00
18	1	21	105	1810.00
19	1	38	53	1760.00
20	1	26	105	5500.00
22	1	83	44	140.00
23	1	22	104	1760.00
24	1	12	129	2060.00
25	1	43	19	1000.00
26	1	20	114	1840.00
27	1	71	38	90.00
28	1	31	61	3000.00
29	1	7	38	2380.00
30	1	35	70	2020.00
31	1	10	68	2200.00
33	1	55	93	1160.00
34	1	15	141	1990.00
36	1	20	45	1840.00
37	1	35	150	2020.00
38	1	71	90	90.00
39	1	18	116	1900.00
42	1	34	45	2290.00
43	1	67	74	550.00
45	1	74	43	20.00
47	1	78	73	440.00
48	1	65	46	570.00
49	1	72	104	150.00
51	1	21	34	1810.00
52	1	35	123	2020.00
53	1	10	130	2200.00
54	1	28	73	3250.00
55	1	12	127	2060.00
56	1	84	70	60.00
57	1	24	75	1710.00
58	1	64	55	570.00
59	1	78	101	440.00
62	1	18	130	1900.00
70	1	18	146	1900.00
71	1	19	146	1850.00
72	1	29	101	3190.00
73	1	45	120	1500.00
74	1	14	97	2010.00
78	1	19	92	1850.00
78	2	23	65	1750.00
78	3	52	147	1260.00
79	1	28	145	3250.00
80	1	21	63	1810.00
81	1	28	133	3250.00
84	1	16	137	1910.00
88	1	78	139	440.00
89	1	47	45	1430.00
95	1	52	138	1260.00
96	1	26	34	5500.00
97	1	11	39	2120.00
98	1	66	104	560.00
98	2	65	66	570.00
101	1	17	47	1900.00
102	1	19	69	1850.00
58	9	36	134	2000.00
65	6	47	130	1430.00
69	7	79	49	150.00
81	6	65	61	570.00
89	8	15	127	1990.00
22	11	23	144	1750.00
23	9	14	86	2010.00
24	6	27	99	4140.00
26	5	51	36	1300.00
27	11	16	67	1910.00
30	7	55	64	1160.00
33	6	19	70	1850.00
42	5	52	85	1260.00
43	7	1	57	3410.00
58	10	63	31	650.00
69	8	69	67	520.00
73	4	45	54	1500.00
104	6	51	139	1300.00
69	9	61	55	950.00
\.


--
-- TOC entry 3026 (class 0 OID 16416)
-- Dependencies: 209
-- Data for Name: orders; Type: TABLE DATA; Schema: hr_poc; Owner: postgres
--

COPY hr_poc.orders (order_id, customer_id, status, salesman_id, order_date) FROM stdin;
8	28	Shipped	155	2020-03-21
32	25	Shipped	158	2019-04-19
35	24	Shipped	160	2018-12-11
60	55	Shipped	161	2019-06-24
61	31	Shipped	164	2019-06-24
66	36	Pending	165	2020-01-23
87	33	Shipped	166	2018-10-22
107	39	Shipped	166	2018-10-22
108	11	Shipped	150	2017-09-08
109	29	Shipped	168	2020-10-25
44	2	Pending	155	2017-05-21
101	3	Pending	155	2018-03-15
5	5	Canceled	156	2018-03-15
28	6	Canceled	157	2019-08-14
82	44	Shipped	160	2018-11-03
102	45	Shipped	161	2019-12-21
26	46	Shipped	162	2018-07-17
43	47	Shipped	162	2020-05-03
53	48	Shipped	162	2020-09-29
81	49	Shipped	162	2019-12-13
83	16	Shipped	162	2017-12-05
93	17	Shipped	162	2017-12-27
79	2	Shipped	164	2018-12-12
80	3	Shipped	164	2018-12-12
2	4	Shipped	145	2019-04-26
3	5	Shipped	145	2017-05-26
6	6	Shipped	145	2018-03-09
9	9	Shipped	148	2017-03-14
10	44	Pending	148	2017-01-14
11	45	Shipped	148	2018-11-28
12	46	Shipped	150	2018-11-28
13	47	Shipped	149	2019-11-29
14	48	Shipped	149	2017-09-18
15	49	Shipped	150	2017-09-27
16	16	Pending	150	2017-09-27
17	17	Shipped	150	2017-09-27
18	18	Shipped	\N	2017-08-16
19	19	Shipped	\N	2017-05-27
20	20	Shipped	\N	2017-05-27
21	21	Pending	151	2017-05-27
22	22	Canceled	152	2018-07-26
23	23	Shipped	152	2019-09-07
24	41	Shipped	152	2019-09-07
25	42	Shipped	152	2018-09-21
27	43	Canceled	152	2018-08-16
29	44	Shipped	153	2017-02-14
30	45	Shipped	153	2018-08-12
31	46	Canceled	153	2018-08-12
33	48	Shipped	153	2017-03-07
34	49	Shipped	153	2017-05-12
36	51	Shipped	155	2020-09-05
37	52	Shipped	179	2020-09-19
38	53	Canceled	157	2019-05-31
39	54	Shipped	162	2019-11-23
42	56	Canceled	164	2018-06-03
45	57	Shipped	164	2020-02-20
46	58	Pending	162	2020-02-20
47	59	Canceled	162	2018-10-10
48	60	Canceled	164	2018-10-10
49	61	Shipped	155	2019-11-02
50	62	Pending	155	2019-11-02
52	64	Shipped	160	2019-11-02
54	65	Shipped	176	2019-10-29
55	66	Pending	179	2018-09-29
56	67	Canceled	175	2018-09-29
57	68	Shipped	177	2017-08-24
58	69	Shipped	177	2017-08-24
62	3	Shipped	162	2017-07-30
63	4	Shipped	161	2018-06-30
64	5	Shipped	164	2018-06-21
65	6	Shipped	164	2018-06-21
68	9	Pending	171	2017-11-13
69	44	Canceled	154	2017-03-17
70	45	Canceled	161	2017-02-21
71	46	Shipped	154	2017-02-21
72	47	Shipped	164	2018-02-17
73	48	Shipped	171	2018-02-17
74	49	Shipped	164	2017-02-10
75	16	Shipped	\N	2017-02-10
78	2	Pending	164	2018-12-14
84	3	Shipped	174	2018-12-01
85	4	Pending	175	2018-11-01
86	5	Pending	170	2020-11-30
88	6	Shipped	171	2019-11-01
89	7	Shipped	155	2019-10-27
91	9	Pending	176	2020-11-28
95	45	Shipped	179	2019-09-19
96	46	Shipped	179	2019-09-14
97	47	Canceled	170	2017-07-12
98	48	Shipped	175	2019-03-15
100	16	Pending	154	2020-11-15
103	17	Pending	164	2020-12-08
104	18	Shipped	160	2017-05-01
110	34	Pending	169	2017-08-23
105	18	Pending	175	2023-06-10
41	9	Shipped	\N	2017-05-12
51	63	Shipped	\N	2019-11-02
59	70	Shipped	\N	2017-07-29
\.


--
-- TOC entry 3027 (class 0 OID 16421)
-- Dependencies: 210
-- Data for Name: products; Type: TABLE DATA; Schema: hr_poc; Owner: postgres
--

COPY hr_poc.products (product_id, product_name, rating_p, price) FROM stdin;
76	Corsair K70 RGB MK.2 Cherry MX Red (CH-9109010-RU)	1	90.00
77	Logitech G810 Orion Spectrum (920-007750)	1	40.00
78	Logitech G910 Orion Spectrum RGB (920-008019)	1	420.00
86	Samsung 24" S24F350FHI	2	1400.00
45	G.Skill TridentZ RGB	2	1430.00
46	Samsung 32" C32JG50QQI	2	1380.00
47	Acer 27" Nitro VG270UPbmiipx	2	1360.00
48	Samsung 27" C27JG50QQI	2	1350.00
49	ASUS 32" ROG Strix XG32VQ	2	1250.00
50	MSI 24" Optix MAG241C	2	1250.00
51	AOC 32" CQ32G1 Gaming	2	1230.00
52	Gigabyte 27" Aorus AD27QD-EK	2	1200.00
53	LG 34" 34GN850-B UltraGear	2	1140.00
54	ASUS 25" VG259QM TUF Gaming	2	1140.00
55	ASUS 27" VG279QM TUF Gaming	2	1110.00
56	Acer 27" VG271UPbmiipx Nitro (UM.HV1EE.P01)	2	1040.00
57	Iiyama 34" ProLite XUB3493WQSU-B1	2	1020.00
58	G.Skill Ripjaws 4 Series	2	1000.00
59	Viewsonic 27" VA2719-2K-SMHD	2	820.00
60	Dell 25" UltraSharp UP2516D (516D-2061)	2	770.00
61	Apple iPhone XS 64GB Space Gray (MT9E2RU/A)	3	900.00
62	Apple iPhone XR 64GB Space Gray (MRY42RU/A)	3	750.00
63	Asus X99-E-10G WS	3	620.00
64	Apple iPhone 7 256Gb	3	550.00
65	Apple iPhone 8 Plus 256 GB	3	570.00
66	LG V30+ Black (H930DS)	3	530.00
67	Samsung Galaxy S7 Edge 32Gb Black (SM-G935)	3	520.00
68	Sony Xperia XZ Premium Black (G8142)	3	\N
69	Xiaomi Mi5 32GB	3	490.00
70	Xiaomi Mi6 64Gb	3	480.00
71	Logitech G PRO Lightspeed HERO (910-005440)	1	80.00
72	Logitech G502 Proteus Spectrum Black USB	1	140.00
73	SteelSeries Rival 500 Black	1	60.00
74	A4Tech Bloody B120 Black USB	1	10.00
75	HyperX Alloy Elite Cherry MX Red (HX-KB2RD1-RU/R1)	1	60.00
79	Kingston HyperX Alloy FPS	1	140.00
80	ASUS ROG Claymore Black (Cherry MX Brown)	1	20.00
81	Logitech G900 Chaos Spectrum (910-004607)	1	60.00
82	Logitech G402 Hyperion Fury USB (910-004067)	1	100.00
83	Razer DeathAdder Elite	1	130.00
84	A4tech X-710BK USB	1	60.00
1	AMD RYZEN 9 5950X BOX AM4 Vermeer (100-100000059WOF)	4	3240.00
2	AMD RYZEN 5 3600 OEM AM4 Matisse	4	2640.00
3	AMD RYZEN 7 3700X BOX Wraith Prism AM4 Matisse	4	2530.00
4	AMD RYZEN 5 2600 BOX AM4 Pinnacle Ridge (YD2600BBAFBOX)	4	2430.00
5	AMD FX-Series FX-8350 OEM	4	2380.00
6	AMD FX-Series FX-6300 OEM	4	2310.00
7	AMD Ryzen Threadripper 1920X (X399, TR4)	4	2260.00
8	AMD Athlon 200GE BOX AM4 VEGA 3 APU Raven Ridge (YD200GC6FBBOX)	4	2160.00
9	Intel Core i7 10700F OEM Comet Lake LGA1200 (CM8070104282329)	4	2150.00
10	Intel Core i7 10700K BOX Comet Lake LGA1200 (BX8070110700K)	4	2090.00
11	Intel Core i7 10700K OEM Comet Lake LGA1200 (CM8070104282436)	4	2010.00
12	 Intel Core i5 10600KF OEM Comet Lake LGA1200 (CM8070104282136)	4	1960.00
13	Intel Core i3 10100F OEM Comet Lake LGA1200 (CM8070104291318)	4	1940.00
14	Intel Core i7 9700F OEM Coffee Lake Refresh 1151v2	4	1910.00
15	AMD Athlon 200GE BOX AM4 VEGA 3 APU Raven Ridge (YD200GC6FBBOX)	4	1890.00
16	ASUS ROG STRIX B550-E GAMING AM4	4	1810.00
17	Gigabyte B460M DS3H mATX LGA1200	4	1810.00
18	Gigabyte B450M S2H mATX AM4	4	1800.00
19	Gigabyte Z490 AORUS PRO AX LGA1200	4	1760.00
20	Gigabyte GeForce RTX 3070 Eagle 8GB X3 (GV-N3070EAGLE-8GD)	4	1750.00
21	ASUS GeForce RTX 3080 TUF GAMING 10GB (TUF-RTX3080-10G-GAMING)	4	1720.00
22	Intel Xeon E5-2699 V5 (OEM/Tray)	4	1670.00
23	ASUS GeForce RTX 3070 Dual OC 8GB (DUAL-RTX3070-O8G)	4	1660.00
24	MSI GeForce RTX 2060 SUPER VENTUS GP OC 8GB	4	1620.00
25	XFX Radeon RX 590 FATBOY OC+ 8GB (RX-590P8DFD6)	4	1620.00
26	Apple MacBook Air 13 Early 2016	5	5220.00
27	Lenovo IdeaPad 720-15 (81C70002RK)	5	3930.00
28	MSI GP72 7RDX Leopard	5	3090.00
29	Acer Predator Helios 300 PH317-51-7717	5	3030.00
30	Dell Inspiron 7567 Black (7567-9316)	5	3020.00
31	Lenovo IdeaPad Y700-15 (80NV0042RK)	5	2850.00
32	HP ProBook 430 G4 (Y7Z47EA)	5	2660.00
33	Acer Predator Helios 300 PH317-51-7717	5	2560.00
34	Dell Inspiron 7567 Black (7567-8821)	5	2180.00
35	Lenovo IdeaPad 510-15 (80SV0047RK)	5	1910.00
36	ASUS VivoBook Pro 15 N580VD-DM194T	5	1900.00
37	HP Omen 15-ce008ur (1ZB02EA)	5	1710.00
38	MSI GS73VR Stealth Pro (7RF-437)	5	1670.00
39	HP Pavilion Power 15-cb012ur (2CM40EA)	5	1610.00
40	Dell Alienware 17 R4 (A17-8791)	5	1420.00
41	Sony PlayStation 4 1Tb	5	1380.00
42	Lenovo IdeaPad 310-15 (80TV00B2RK)	5	1160.00
43	AMD 100-50606	5	950.00
44	ASUS X540LA	5	950.00
\.


--
-- TOC entry 2869 (class 2606 OID 16426)
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: hr_poc; Owner: postgres
--

ALTER TABLE ONLY hr_poc.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customer_id);


--
-- TOC entry 2871 (class 2606 OID 16428)
-- Name: departments dept_id_pk; Type: CONSTRAINT; Schema: hr_poc; Owner: postgres
--

ALTER TABLE ONLY hr_poc.departments
    ADD CONSTRAINT dept_id_pk PRIMARY KEY (department_id);


--
-- TOC entry 2873 (class 2606 OID 16430)
-- Name: employees emp_email_uk; Type: CONSTRAINT; Schema: hr_poc; Owner: postgres
--

ALTER TABLE ONLY hr_poc.employees
    ADD CONSTRAINT emp_email_uk UNIQUE (email);


--
-- TOC entry 2875 (class 2606 OID 16432)
-- Name: employees emp_emp_id_pk; Type: CONSTRAINT; Schema: hr_poc; Owner: postgres
--

ALTER TABLE ONLY hr_poc.employees
    ADD CONSTRAINT emp_emp_id_pk PRIMARY KEY (employee_id);


--
-- TOC entry 2877 (class 2606 OID 16434)
-- Name: jobs jobs_pkey; Type: CONSTRAINT; Schema: hr_poc; Owner: postgres
--

ALTER TABLE ONLY hr_poc.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (job_id);


--
-- TOC entry 2879 (class 2606 OID 16436)
-- Name: locations locations_pkey; Type: CONSTRAINT; Schema: hr_poc; Owner: postgres
--

ALTER TABLE ONLY hr_poc.locations
    ADD CONSTRAINT locations_pkey PRIMARY KEY (location_id);


--
-- TOC entry 2881 (class 2606 OID 16438)
-- Name: order_items order_items_pkey; Type: CONSTRAINT; Schema: hr_poc; Owner: postgres
--

ALTER TABLE ONLY hr_poc.order_items
    ADD CONSTRAINT order_items_pkey PRIMARY KEY (order_id, item_id);


--
-- TOC entry 2883 (class 2606 OID 16440)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: hr_poc; Owner: postgres
--

ALTER TABLE ONLY hr_poc.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (order_id);


--
-- TOC entry 2885 (class 2606 OID 16442)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: hr_poc; Owner: postgres
--

ALTER TABLE ONLY hr_poc.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (product_id);


--
-- TOC entry 2886 (class 2606 OID 16443)
-- Name: departments dept_loc_fk; Type: FK CONSTRAINT; Schema: hr_poc; Owner: postgres
--

ALTER TABLE ONLY hr_poc.departments
    ADD CONSTRAINT dept_loc_fk FOREIGN KEY (location_id) REFERENCES hr_poc.locations(location_id) ON DELETE SET NULL;


--
-- TOC entry 2887 (class 2606 OID 16448)
-- Name: employees emp_dept_fk; Type: FK CONSTRAINT; Schema: hr_poc; Owner: postgres
--

ALTER TABLE ONLY hr_poc.employees
    ADD CONSTRAINT emp_dept_fk FOREIGN KEY (department_id) REFERENCES hr_poc.departments(department_id);


--
-- TOC entry 2888 (class 2606 OID 16453)
-- Name: employees emp_job_fk; Type: FK CONSTRAINT; Schema: hr_poc; Owner: postgres
--

ALTER TABLE ONLY hr_poc.employees
    ADD CONSTRAINT emp_job_fk FOREIGN KEY (job_id) REFERENCES hr_poc.jobs(job_id) ON UPDATE SET NULL ON DELETE SET NULL;


--
-- TOC entry 2889 (class 2606 OID 16458)
-- Name: employees emp_manager_fk; Type: FK CONSTRAINT; Schema: hr_poc; Owner: postgres
--

ALTER TABLE ONLY hr_poc.employees
    ADD CONSTRAINT emp_manager_fk FOREIGN KEY (manager_id) REFERENCES hr_poc.employees(employee_id);


--
-- TOC entry 2892 (class 2606 OID 16463)
-- Name: orders fk_orders_customers; Type: FK CONSTRAINT; Schema: hr_poc; Owner: postgres
--

ALTER TABLE ONLY hr_poc.orders
    ADD CONSTRAINT fk_orders_customers FOREIGN KEY (customer_id) REFERENCES hr_poc.customers(customer_id) ON DELETE CASCADE;


--
-- TOC entry 2893 (class 2606 OID 16468)
-- Name: orders fk_orders_employees; Type: FK CONSTRAINT; Schema: hr_poc; Owner: postgres
--

ALTER TABLE ONLY hr_poc.orders
    ADD CONSTRAINT fk_orders_employees FOREIGN KEY (salesman_id) REFERENCES hr_poc.employees(employee_id) ON DELETE SET NULL;


--
-- TOC entry 2890 (class 2606 OID 16473)
-- Name: order_items order_items_order_id_fkey; Type: FK CONSTRAINT; Schema: hr_poc; Owner: postgres
--

ALTER TABLE ONLY hr_poc.order_items
    ADD CONSTRAINT order_items_order_id_fkey FOREIGN KEY (order_id) REFERENCES hr_poc.orders(order_id) ON DELETE CASCADE;


--
-- TOC entry 2891 (class 2606 OID 16478)
-- Name: order_items order_items_product_id_fkey; Type: FK CONSTRAINT; Schema: hr_poc; Owner: postgres
--

ALTER TABLE ONLY hr_poc.order_items
    ADD CONSTRAINT order_items_product_id_fkey FOREIGN KEY (product_id) REFERENCES hr_poc.products(product_id) ON DELETE CASCADE;


-- Completed on 2025-03-15 11:38:17 MSK

--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

\connect postgres

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.1)

-- Started on 2025-03-15 11:38:17 MSK

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

SET default_table_access_method = heap;

--
-- TOC entry 205 (class 1259 OID 17416)
-- Name: children; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.children (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    city character varying(100) NOT NULL
);


ALTER TABLE public.children OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 17414)
-- Name: children_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.children_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.children_id_seq OWNER TO postgres;

--
-- TOC entry 3012 (class 0 OID 0)
-- Dependencies: 204
-- Name: children_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.children_id_seq OWNED BY public.children.id;


--
-- TOC entry 207 (class 1259 OID 17424)
-- Name: gifts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.gifts (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    stock_quantity integer DEFAULT 0
);


ALTER TABLE public.gifts OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 17422)
-- Name: gifts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.gifts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gifts_id_seq OWNER TO postgres;

--
-- TOC entry 3013 (class 0 OID 0)
-- Dependencies: 206
-- Name: gifts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.gifts_id_seq OWNED BY public.gifts.id;


--
-- TOC entry 209 (class 1259 OID 17433)
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    id integer NOT NULL,
    child_id integer NOT NULL,
    gift_id integer NOT NULL,
    status text NOT NULL,
    CONSTRAINT orders_status_check CHECK ((status = ANY (ARRAY['Склад'::text, 'Закупка'::text, 'Поиск поставщика'::text, 'Доставка ребёнку'::text])))
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 17431)
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_id_seq OWNER TO postgres;

--
-- TOC entry 3014 (class 0 OID 0)
-- Dependencies: 208
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;


--
-- TOC entry 203 (class 1259 OID 17402)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(50) NOT NULL,
    role text NOT NULL,
    CONSTRAINT users_role_check CHECK ((role = ANY (ARRAY['DedMoroz'::text, 'Snegurochka'::text, 'Elf_logist'::text])))
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 17400)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 3015 (class 0 OID 0)
-- Dependencies: 202
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 2856 (class 2604 OID 17419)
-- Name: children id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.children ALTER COLUMN id SET DEFAULT nextval('public.children_id_seq'::regclass);


--
-- TOC entry 2857 (class 2604 OID 17427)
-- Name: gifts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gifts ALTER COLUMN id SET DEFAULT nextval('public.gifts_id_seq'::regclass);


--
-- TOC entry 2859 (class 2604 OID 17436)
-- Name: orders id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);


--
-- TOC entry 2854 (class 2604 OID 17405)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 3002 (class 0 OID 17416)
-- Dependencies: 205
-- Data for Name: children; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.children (id, name, city) FROM stdin;
\.


--
-- TOC entry 3004 (class 0 OID 17424)
-- Dependencies: 207
-- Data for Name: gifts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.gifts (id, name, stock_quantity) FROM stdin;
\.


--
-- TOC entry 3006 (class 0 OID 17433)
-- Dependencies: 209
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders (id, child_id, gift_id, status) FROM stdin;
\.


--
-- TOC entry 3000 (class 0 OID 17402)
-- Dependencies: 203
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, username, role) FROM stdin;
\.


--
-- TOC entry 3016 (class 0 OID 0)
-- Dependencies: 204
-- Name: children_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.children_id_seq', 1, false);


--
-- TOC entry 3017 (class 0 OID 0)
-- Dependencies: 206
-- Name: gifts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gifts_id_seq', 1, false);


--
-- TOC entry 3018 (class 0 OID 0)
-- Dependencies: 208
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_id_seq', 1, false);


--
-- TOC entry 3019 (class 0 OID 0)
-- Dependencies: 202
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- TOC entry 2866 (class 2606 OID 17421)
-- Name: children children_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.children
    ADD CONSTRAINT children_pkey PRIMARY KEY (id);


--
-- TOC entry 2868 (class 2606 OID 17430)
-- Name: gifts gifts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gifts
    ADD CONSTRAINT gifts_pkey PRIMARY KEY (id);


--
-- TOC entry 2870 (class 2606 OID 17442)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- TOC entry 2862 (class 2606 OID 17411)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 2864 (class 2606 OID 17413)
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- TOC entry 2871 (class 2606 OID 17443)
-- Name: orders orders_child_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_child_id_fkey FOREIGN KEY (child_id) REFERENCES public.children(id) ON DELETE CASCADE;


--
-- TOC entry 2872 (class 2606 OID 17448)
-- Name: orders orders_gift_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_gift_id_fkey FOREIGN KEY (gift_id) REFERENCES public.gifts(id) ON DELETE CASCADE;


-- Completed on 2025-03-15 11:38:18 MSK

--
-- PostgreSQL database dump complete
--

--
-- Database "pvet" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.1)

-- Started on 2025-03-15 11:38:18 MSK

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

--
-- TOC entry 3024 (class 1262 OID 16485)
-- Name: pvet; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE pvet WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'ru_RU.UTF-8' LC_CTYPE = 'ru_RU.UTF-8';


ALTER DATABASE pvet OWNER TO postgres;

\connect pvet

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

SET default_table_access_method = heap;

--
-- TOC entry 203 (class 1259 OID 16488)
-- Name: kategori; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.kategori (
    id_kat integer NOT NULL,
    name_kat character varying(50)
);


ALTER TABLE public.kategori OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16486)
-- Name: kategori_id_kat_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.kategori_id_kat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.kategori_id_kat_seq OWNER TO postgres;

--
-- TOC entry 3025 (class 0 OID 0)
-- Dependencies: 202
-- Name: kategori_id_kat_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.kategori_id_kat_seq OWNED BY public.kategori.id_kat;


--
-- TOC entry 205 (class 1259 OID 16496)
-- Name: klienti; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.klienti (
    id_kli integer NOT NULL,
    fio character varying(60)
);


ALTER TABLE public.klienti OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16494)
-- Name: klienti_id_kli_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.klienti_id_kli_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.klienti_id_kli_seq OWNER TO postgres;

--
-- TOC entry 3026 (class 0 OID 0)
-- Dependencies: 204
-- Name: klienti_id_kli_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.klienti_id_kli_seq OWNED BY public.klienti.id_kli;


--
-- TOC entry 212 (class 1259 OID 16542)
-- Name: pokypki; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pokypki (
    data date,
    id_kli integer NOT NULL,
    id_prod integer NOT NULL,
    id_tov integer NOT NULL,
    kol_vo integer
);


ALTER TABLE public.pokypki OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16536)
-- Name: pokypki_id_kli_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pokypki_id_kli_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pokypki_id_kli_seq OWNER TO postgres;

--
-- TOC entry 3027 (class 0 OID 0)
-- Dependencies: 209
-- Name: pokypki_id_kli_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pokypki_id_kli_seq OWNED BY public.pokypki.id_kli;


--
-- TOC entry 210 (class 1259 OID 16538)
-- Name: pokypki_id_prod_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pokypki_id_prod_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pokypki_id_prod_seq OWNER TO postgres;

--
-- TOC entry 3028 (class 0 OID 0)
-- Dependencies: 210
-- Name: pokypki_id_prod_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pokypki_id_prod_seq OWNED BY public.pokypki.id_prod;


--
-- TOC entry 211 (class 1259 OID 16540)
-- Name: pokypki_id_tov_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pokypki_id_tov_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pokypki_id_tov_seq OWNER TO postgres;

--
-- TOC entry 3029 (class 0 OID 0)
-- Dependencies: 211
-- Name: pokypki_id_tov_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pokypki_id_tov_seq OWNED BY public.pokypki.id_tov;


--
-- TOC entry 214 (class 1259 OID 16555)
-- Name: prodavech; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.prodavech (
    id_prod integer NOT NULL,
    name_prod character varying(60),
    kat_tov character varying(100)
);


ALTER TABLE public.prodavech OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 16553)
-- Name: prodavech_id_prod_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.prodavech_id_prod_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.prodavech_id_prod_seq OWNER TO postgres;

--
-- TOC entry 3030 (class 0 OID 0)
-- Dependencies: 213
-- Name: prodavech_id_prod_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.prodavech_id_prod_seq OWNED BY public.prodavech.id_prod;


--
-- TOC entry 208 (class 1259 OID 16506)
-- Name: tovari; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tovari (
    id_tov integer NOT NULL,
    name_tovari character varying(60),
    id_kat integer NOT NULL
);


ALTER TABLE public.tovari OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 16504)
-- Name: tovari_id_kat_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tovari_id_kat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tovari_id_kat_seq OWNER TO postgres;

--
-- TOC entry 3031 (class 0 OID 0)
-- Dependencies: 207
-- Name: tovari_id_kat_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tovari_id_kat_seq OWNED BY public.tovari.id_kat;


--
-- TOC entry 206 (class 1259 OID 16502)
-- Name: tovari_id_tov_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tovari_id_tov_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tovari_id_tov_seq OWNER TO postgres;

--
-- TOC entry 3032 (class 0 OID 0)
-- Dependencies: 206
-- Name: tovari_id_tov_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tovari_id_tov_seq OWNED BY public.tovari.id_tov;


--
-- TOC entry 2864 (class 2604 OID 16491)
-- Name: kategori id_kat; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kategori ALTER COLUMN id_kat SET DEFAULT nextval('public.kategori_id_kat_seq'::regclass);


--
-- TOC entry 2865 (class 2604 OID 16499)
-- Name: klienti id_kli; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.klienti ALTER COLUMN id_kli SET DEFAULT nextval('public.klienti_id_kli_seq'::regclass);


--
-- TOC entry 2868 (class 2604 OID 16545)
-- Name: pokypki id_kli; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pokypki ALTER COLUMN id_kli SET DEFAULT nextval('public.pokypki_id_kli_seq'::regclass);


--
-- TOC entry 2869 (class 2604 OID 16546)
-- Name: pokypki id_prod; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pokypki ALTER COLUMN id_prod SET DEFAULT nextval('public.pokypki_id_prod_seq'::regclass);


--
-- TOC entry 2870 (class 2604 OID 16547)
-- Name: pokypki id_tov; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pokypki ALTER COLUMN id_tov SET DEFAULT nextval('public.pokypki_id_tov_seq'::regclass);


--
-- TOC entry 2871 (class 2604 OID 16558)
-- Name: prodavech id_prod; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prodavech ALTER COLUMN id_prod SET DEFAULT nextval('public.prodavech_id_prod_seq'::regclass);


--
-- TOC entry 2866 (class 2604 OID 16509)
-- Name: tovari id_tov; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tovari ALTER COLUMN id_tov SET DEFAULT nextval('public.tovari_id_tov_seq'::regclass);


--
-- TOC entry 2867 (class 2604 OID 16510)
-- Name: tovari id_kat; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tovari ALTER COLUMN id_kat SET DEFAULT nextval('public.tovari_id_kat_seq'::regclass);


--
-- TOC entry 3007 (class 0 OID 16488)
-- Dependencies: 203
-- Data for Name: kategori; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.kategori (id_kat, name_kat) FROM stdin;
1	clothes
2	chemistry
3	food
4	decoratoin
5	boots
\.


--
-- TOC entry 3009 (class 0 OID 16496)
-- Dependencies: 205
-- Data for Name: klienti; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.klienti (id_kli, fio) FROM stdin;
1	popov
2	vetoshkina
3	astafeva
4	byshyev
5	ustuzhov
\.


--
-- TOC entry 3016 (class 0 OID 16542)
-- Dependencies: 212
-- Data for Name: pokypki; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pokypki (data, id_kli, id_prod, id_tov, kol_vo) FROM stdin;
\.


--
-- TOC entry 3018 (class 0 OID 16555)
-- Dependencies: 214
-- Data for Name: prodavech; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.prodavech (id_prod, name_prod, kat_tov) FROM stdin;
1	clothes	food
\.


--
-- TOC entry 3012 (class 0 OID 16506)
-- Dependencies: 208
-- Data for Name: tovari; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tovari (id_tov, name_tovari, id_kat) FROM stdin;
\.


--
-- TOC entry 3033 (class 0 OID 0)
-- Dependencies: 202
-- Name: kategori_id_kat_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.kategori_id_kat_seq', 5, true);


--
-- TOC entry 3034 (class 0 OID 0)
-- Dependencies: 204
-- Name: klienti_id_kli_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.klienti_id_kli_seq', 5, true);


--
-- TOC entry 3035 (class 0 OID 0)
-- Dependencies: 209
-- Name: pokypki_id_kli_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pokypki_id_kli_seq', 1, false);


--
-- TOC entry 3036 (class 0 OID 0)
-- Dependencies: 210
-- Name: pokypki_id_prod_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pokypki_id_prod_seq', 1, false);


--
-- TOC entry 3037 (class 0 OID 0)
-- Dependencies: 211
-- Name: pokypki_id_tov_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pokypki_id_tov_seq', 1, false);


--
-- TOC entry 3038 (class 0 OID 0)
-- Dependencies: 213
-- Name: prodavech_id_prod_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.prodavech_id_prod_seq', 1, true);


--
-- TOC entry 3039 (class 0 OID 0)
-- Dependencies: 207
-- Name: tovari_id_kat_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tovari_id_kat_seq', 1, false);


--
-- TOC entry 3040 (class 0 OID 0)
-- Dependencies: 206
-- Name: tovari_id_tov_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tovari_id_tov_seq', 1, false);


--
-- TOC entry 2873 (class 2606 OID 16493)
-- Name: kategori kategori_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kategori
    ADD CONSTRAINT kategori_pkey PRIMARY KEY (id_kat);


--
-- TOC entry 2875 (class 2606 OID 16501)
-- Name: klienti klienti_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.klienti
    ADD CONSTRAINT klienti_pkey PRIMARY KEY (id_kli);


--
-- TOC entry 2879 (class 2606 OID 16560)
-- Name: prodavech prodavech_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prodavech
    ADD CONSTRAINT prodavech_pkey PRIMARY KEY (id_prod);


--
-- TOC entry 2877 (class 2606 OID 16512)
-- Name: tovari tovari_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tovari
    ADD CONSTRAINT tovari_pkey PRIMARY KEY (id_tov);


-- Completed on 2025-03-15 11:38:19 MSK

--
-- PostgreSQL database dump complete
--

--
-- Database "stas" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.1)

-- Started on 2025-03-15 11:38:19 MSK

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

--
-- TOC entry 2972 (class 1262 OID 17141)
-- Name: stas; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE stas WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'ru_RU.UTF-8' LC_CTYPE = 'ru_RU.UTF-8';


ALTER DATABASE stas OWNER TO postgres;

\connect stas

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

SET default_table_access_method = heap;

--
-- TOC entry 203 (class 1259 OID 17252)
-- Name: customers; Type: TABLE; Schema: public; Owner: stas
--

CREATE TABLE public.customers (
    customer_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    email character varying(100) NOT NULL,
    phone character varying(15)
);


ALTER TABLE public.customers OWNER TO stas;

--
-- TOC entry 202 (class 1259 OID 17250)
-- Name: customers_customer_id_seq; Type: SEQUENCE; Schema: public; Owner: stas
--

CREATE SEQUENCE public.customers_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customers_customer_id_seq OWNER TO stas;

--
-- TOC entry 2974 (class 0 OID 0)
-- Dependencies: 202
-- Name: customers_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: stas
--

ALTER SEQUENCE public.customers_customer_id_seq OWNED BY public.customers.customer_id;


--
-- TOC entry 2834 (class 2604 OID 17255)
-- Name: customers customer_id; Type: DEFAULT; Schema: public; Owner: stas
--

ALTER TABLE ONLY public.customers ALTER COLUMN customer_id SET DEFAULT nextval('public.customers_customer_id_seq'::regclass);


--
-- TOC entry 2966 (class 0 OID 17252)
-- Dependencies: 203
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: stas
--

COPY public.customers (customer_id, first_name, last_name, email, phone) FROM stdin;
\.


--
-- TOC entry 2975 (class 0 OID 0)
-- Dependencies: 202
-- Name: customers_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: stas
--

SELECT pg_catalog.setval('public.customers_customer_id_seq', 1, false);


--
-- TOC entry 2836 (class 2606 OID 17259)
-- Name: customers customers_email_key; Type: CONSTRAINT; Schema: public; Owner: stas
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_email_key UNIQUE (email);


--
-- TOC entry 2838 (class 2606 OID 17257)
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: stas
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customer_id);


--
-- TOC entry 2973 (class 0 OID 0)
-- Dependencies: 2972
-- Name: DATABASE stas; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON DATABASE stas TO stas;


-- Completed on 2025-03-15 11:38:20 MSK

--
-- PostgreSQL database dump complete
--

--
-- Database "test" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.1)

-- Started on 2025-03-15 11:38:20 MSK

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

--
-- TOC entry 2959 (class 1262 OID 17397)
-- Name: test; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE test WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'ru_RU.UTF-8' LC_CTYPE = 'ru_RU.UTF-8';


ALTER DATABASE test OWNER TO postgres;

\connect test

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

-- Completed on 2025-03-15 11:38:21 MSK

--
-- PostgreSQL database dump complete
--

--
-- Database "Праздники_№ по жеребьевке" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.1)

-- Started on 2025-03-15 11:38:21 MSK

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

--
-- TOC entry 2959 (class 1262 OID 17314)
-- Name: Праздники_№ по жеребьевке; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Праздники_№ по жеребьевке" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'ru_RU.UTF-8' LC_CTYPE = 'ru_RU.UTF-8';


ALTER DATABASE "Праздники_№ по жеребьевке" OWNER TO postgres;

\connect -reuse-previous=on "dbname='Праздники_№ по жеребьевке'"

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

-- Completed on 2025-03-15 11:38:21 MSK

--
-- PostgreSQL database dump complete
--

--
-- Database "Праздники_№_по_жеребьевке" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.1)

-- Started on 2025-03-15 11:38:21 MSK

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

--
-- TOC entry 3023 (class 1262 OID 17315)
-- Name: Праздники_№_по_жеребьевке; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Праздники_№_по_жеребьевке" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'ru_RU.UTF-8' LC_CTYPE = 'ru_RU.UTF-8';


ALTER DATABASE "Праздники_№_по_жеребьевке" OWNER TO postgres;

\connect -reuse-previous=on "dbname='Праздники_№_по_жеребьевке'"

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

--
-- TOC entry 212 (class 1255 OID 17364)
-- Name: check_monday(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.check_monday() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    IF EXTRACT(DOW FROM NEW.Дата_праздника) = 1 THEN
        RAISE EXCEPTION 'По понедельникам агентства не работают!';
    END IF;
    RETURN NEW;
END;
$$;


ALTER FUNCTION public.check_monday() OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 210 (class 1259 OID 17388)
-- Name: new; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.new (
    nikogda integer,
    ne integer,
    nazywaj integer,
    polja integer,
    tablicy integer,
    zusskimi integer,
    bukwami integer
);


ALTER TABLE public.new OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 17391)
-- Name: new2; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.new2 (
    nikogda integer,
    ne integer,
    nazywaj integer,
    polja integer,
    tablicy integer,
    zusskimi integer,
    bukwami integer
);


ALTER TABLE public.new2 OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 17378)
-- Name: Агентство; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Агентство" (
    "Код_агентства" integer NOT NULL,
    "Название" character varying(30) NOT NULL
);


ALTER TABLE public."Агентство" OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 17376)
-- Name: Агентство_Код_агентства_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Агентство_Код_агентства_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Агентство_Код_агентства_seq" OWNER TO postgres;

--
-- TOC entry 3027 (class 0 OID 0)
-- Dependencies: 208
-- Name: Агентство_Код_агентства_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Агентство_Код_агентства_seq" OWNED BY public."Агентство"."Код_агентства";


--
-- TOC entry 203 (class 1259 OID 17327)
-- Name: Аниматоры; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Аниматоры" (
    "Код_Аниматора" integer NOT NULL,
    "Фамилия" character varying(25) NOT NULL,
    "Имя" character varying(25) NOT NULL,
    "Код_агента" integer
);


ALTER TABLE public."Аниматоры" OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 17325)
-- Name: Аниматоры_Код_Аниматора_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Аниматоры_Код_Аниматора_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Аниматоры_Код_Аниматора_seq" OWNER TO postgres;

--
-- TOC entry 3029 (class 0 OID 0)
-- Dependencies: 202
-- Name: Аниматоры_Код_Аниматора_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Аниматоры_Код_Аниматора_seq" OWNED BY public."Аниматоры"."Код_Аниматора";


--
-- TOC entry 207 (class 1259 OID 17356)
-- Name: Виды_мероприятий; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Виды_мероприятий" (
    id integer NOT NULL,
    "Название" character varying(50) NOT NULL
);


ALTER TABLE public."Виды_мероприятий" OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 17354)
-- Name: Виды_мероприятий_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Виды_мероприятий_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Виды_мероприятий_id_seq" OWNER TO postgres;

--
-- TOC entry 3031 (class 0 OID 0)
-- Dependencies: 206
-- Name: Виды_мероприятий_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Виды_мероприятий_id_seq" OWNED BY public."Виды_мероприятий".id;


--
-- TOC entry 205 (class 1259 OID 17340)
-- Name: Праздники; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Праздники" (
    "Код_Праздника" integer NOT NULL,
    "Код_Аниматора" integer NOT NULL,
    "Дата_праздника" timestamp without time zone NOT NULL,
    "Время_начала" time without time zone NOT NULL,
    "Гирлянда" integer NOT NULL,
    "Фейерверк" integer NOT NULL,
    "Хлопушка" text,
    "Мероприятие" character varying(35)
);


ALTER TABLE public."Праздники" OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 17338)
-- Name: Праздники_Код_Праздника_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Праздники_Код_Праздника_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Праздники_Код_Праздника_seq" OWNER TO postgres;

--
-- TOC entry 3033 (class 0 OID 0)
-- Dependencies: 204
-- Name: Праздники_Код_Праздника_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Праздники_Код_Праздника_seq" OWNED BY public."Праздники"."Код_Праздника";


--
-- TOC entry 2865 (class 2604 OID 17381)
-- Name: Агентство Код_агентства; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Агентство" ALTER COLUMN "Код_агентства" SET DEFAULT nextval('public."Агентство_Код_агентства_seq"'::regclass);


--
-- TOC entry 2862 (class 2604 OID 17330)
-- Name: Аниматоры Код_Аниматора; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Аниматоры" ALTER COLUMN "Код_Аниматора" SET DEFAULT nextval('public."Аниматоры_Код_Аниматора_seq"'::regclass);


--
-- TOC entry 2864 (class 2604 OID 17359)
-- Name: Виды_мероприятий id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Виды_мероприятий" ALTER COLUMN id SET DEFAULT nextval('public."Виды_мероприятий_id_seq"'::regclass);


--
-- TOC entry 2863 (class 2604 OID 17343)
-- Name: Праздники Код_Праздника; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Праздники" ALTER COLUMN "Код_Праздника" SET DEFAULT nextval('public."Праздники_Код_Праздника_seq"'::regclass);


--
-- TOC entry 3016 (class 0 OID 17388)
-- Dependencies: 210
-- Data for Name: new; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.new (nikogda, ne, nazywaj, polja, tablicy, zusskimi, bukwami) FROM stdin;
\.


--
-- TOC entry 3017 (class 0 OID 17391)
-- Dependencies: 211
-- Data for Name: new2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.new2 (nikogda, ne, nazywaj, polja, tablicy, zusskimi, bukwami) FROM stdin;
\.


--
-- TOC entry 3015 (class 0 OID 17378)
-- Dependencies: 209
-- Data for Name: Агентство; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Агентство" ("Код_агентства", "Название") FROM stdin;
1	Ладушка
2	Маэстро
3	Салют
\.


--
-- TOC entry 3009 (class 0 OID 17327)
-- Dependencies: 203
-- Data for Name: Аниматоры; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Аниматоры" ("Код_Аниматора", "Фамилия", "Имя", "Код_агента") FROM stdin;
1	Михайлова	Анна	1
2	Медведев	Игорь	2
3	Горин	Сергей	3
4	Черина	Ирина	2
5	Голубев	Марат	2
6	Ликин	Сергей	1
7	Любавина	Анастасия	1
\.


--
-- TOC entry 3013 (class 0 OID 17356)
-- Dependencies: 207
-- Data for Name: Виды_мероприятий; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Виды_мероприятий" (id, "Название") FROM stdin;
1	1 место в соревновании
2	Встреча одноклассников
3	Выигрыш в лотерею
4	День рождения
5	Защита диссертации
6	Объединение двух организаций
7	Окончание данного сезона
8	Победа на конкурсе
9	Проводы руководителя на пенсию
10	Рождение тройни
11	Удачно подписан контракт
12	Успех спортивного клуба
13	Юбилей фирмы
\.


--
-- TOC entry 3011 (class 0 OID 17340)
-- Dependencies: 205
-- Data for Name: Праздники; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Праздники" ("Код_Праздника", "Код_Аниматора", "Дата_праздника", "Время_начала", "Гирлянда", "Фейерверк", "Хлопушка", "Мероприятие") FROM stdin;
18	1	2025-04-05 00:00:00	12:00:00	3	4	1	День рождения
19	2	2025-04-08 00:00:00	11:00:00	5	1	0	Объединение двух организаций
20	3	2025-04-23 00:00:00	14:00:00	6	0	3	Юбилей фирмы
21	4	2025-04-22 00:00:00	15:00:00	4	3	1	Встреча одноклассников
22	5	2025-04-22 00:00:00	11:00:00	6	1	3	Окончание данного сезона
\.


--
-- TOC entry 3034 (class 0 OID 0)
-- Dependencies: 208
-- Name: Агентство_Код_агентства_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Агентство_Код_агентства_seq"', 3, true);


--
-- TOC entry 3035 (class 0 OID 0)
-- Dependencies: 202
-- Name: Аниматоры_Код_Аниматора_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Аниматоры_Код_Аниматора_seq"', 7, true);


--
-- TOC entry 3036 (class 0 OID 0)
-- Dependencies: 206
-- Name: Виды_мероприятий_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Виды_мероприятий_id_seq"', 13, true);


--
-- TOC entry 3037 (class 0 OID 0)
-- Dependencies: 204
-- Name: Праздники_Код_Праздника_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Праздники_Код_Праздника_seq"', 22, true);


--
-- TOC entry 2875 (class 2606 OID 17383)
-- Name: Агентство Агентство_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Агентство"
    ADD CONSTRAINT "Агентство_pkey" PRIMARY KEY ("Код_агентства");


--
-- TOC entry 2877 (class 2606 OID 17385)
-- Name: Агентство Агентство_Название_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Агентство"
    ADD CONSTRAINT "Агентство_Название_key" UNIQUE ("Название");


--
-- TOC entry 2867 (class 2606 OID 17332)
-- Name: Аниматоры Аниматоры_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Аниматоры"
    ADD CONSTRAINT "Аниматоры_pkey" PRIMARY KEY ("Код_Аниматора");


--
-- TOC entry 2871 (class 2606 OID 17361)
-- Name: Виды_мероприятий Виды_мероприятий_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Виды_мероприятий"
    ADD CONSTRAINT "Виды_мероприятий_pkey" PRIMARY KEY (id);


--
-- TOC entry 2873 (class 2606 OID 17363)
-- Name: Виды_мероприятий Виды_мероприятий_Название_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Виды_мероприятий"
    ADD CONSTRAINT "Виды_мероприятий_Название_key" UNIQUE ("Название");


--
-- TOC entry 2869 (class 2606 OID 17348)
-- Name: Праздники Праздники_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Праздники"
    ADD CONSTRAINT "Праздники_pkey" PRIMARY KEY ("Код_Праздника");


--
-- TOC entry 2881 (class 2620 OID 17365)
-- Name: Праздники trigger_check_monday; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER trigger_check_monday BEFORE INSERT ON public."Праздники" FOR EACH ROW EXECUTE FUNCTION public.check_monday();


--
-- TOC entry 2880 (class 2606 OID 17371)
-- Name: Праздники fk_праздники_аниматоры; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Праздники"
    ADD CONSTRAINT "fk_праздники_аниматоры" FOREIGN KEY ("Код_Аниматора") REFERENCES public."Аниматоры"("Код_Аниматора") ON DELETE CASCADE;


--
-- TOC entry 2879 (class 2606 OID 17366)
-- Name: Праздники fk_праздники_мероприятия; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Праздники"
    ADD CONSTRAINT "fk_праздники_мероприятия" FOREIGN KEY ("Мероприятие") REFERENCES public."Виды_мероприятий"("Название") ON DELETE CASCADE;


--
-- TOC entry 2878 (class 2606 OID 17349)
-- Name: Праздники Праздники_Код_Аниматора_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Праздники"
    ADD CONSTRAINT "Праздники_Код_Аниматора_fkey" FOREIGN KEY ("Код_Аниматора") REFERENCES public."Аниматоры"("Код_Аниматора");


--
-- TOC entry 3024 (class 0 OID 0)
-- Dependencies: 3023
-- Name: DATABASE "Праздники_№_по_жеребьевке"; Type: ACL; Schema: -; Owner: postgres
--

GRANT CONNECT ON DATABASE "Праздники_№_по_жеребьевке" TO animator;


--
-- TOC entry 3025 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

GRANT USAGE ON SCHEMA public TO animator;


--
-- TOC entry 3026 (class 0 OID 0)
-- Dependencies: 209
-- Name: TABLE "Агентство"; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public."Агентство" TO animator;


--
-- TOC entry 3028 (class 0 OID 0)
-- Dependencies: 203
-- Name: TABLE "Аниматоры"; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public."Аниматоры" TO animator;


--
-- TOC entry 3030 (class 0 OID 0)
-- Dependencies: 207
-- Name: TABLE "Виды_мероприятий"; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public."Виды_мероприятий" TO animator;


--
-- TOC entry 3032 (class 0 OID 0)
-- Dependencies: 205
-- Name: TABLE "Праздники"; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public."Праздники" TO animator;


-- Completed on 2025-03-15 11:38:22 MSK

--
-- PostgreSQL database dump complete
--

-- Completed on 2025-03-15 11:38:22 MSK

--
-- PostgreSQL database cluster dump complete
--

