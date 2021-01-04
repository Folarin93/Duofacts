--
-- PostgreSQL database dump
--

-- Dumped from database version 10.15 (Ubuntu 10.15-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.15 (Ubuntu 10.15-0ubuntu0.18.04.1)

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
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: country; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.country (
    country_id integer NOT NULL,
    country_name character varying NOT NULL,
    country_code character varying NOT NULL
);


ALTER TABLE public.country OWNER TO postgres;

--
-- Name: country_country_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.country_country_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.country_country_id_seq OWNER TO postgres;

--
-- Name: country_country_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.country_country_id_seq OWNED BY public.country.country_id;


--
-- Name: duo_facts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.duo_facts (
    fact_id integer NOT NULL,
    fact_details text,
    language_id integer NOT NULL
);


ALTER TABLE public.duo_facts OWNER TO postgres;

--
-- Name: duo_facts_fact_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.duo_facts_fact_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.duo_facts_fact_id_seq OWNER TO postgres;

--
-- Name: duo_facts_fact_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.duo_facts_fact_id_seq OWNED BY public.duo_facts.fact_id;


--
-- Name: duo_facts_language_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.duo_facts_language_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.duo_facts_language_id_seq OWNER TO postgres;

--
-- Name: duo_facts_language_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.duo_facts_language_id_seq OWNED BY public.duo_facts.language_id;


--
-- Name: language; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.language (
    language_id integer NOT NULL,
    language_name character varying NOT NULL
);


ALTER TABLE public.language OWNER TO postgres;

--
-- Name: language_language_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.language_language_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.language_language_id_seq OWNER TO postgres;

--
-- Name: language_language_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.language_language_id_seq OWNED BY public.language.language_id;


--
-- Name: profile; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.profile (
    profile_id integer NOT NULL,
    profile_fname character varying,
    profile_lname character varying,
    profile_username character varying NOT NULL,
    user_id integer NOT NULL,
    country_id integer NOT NULL
);


ALTER TABLE public.profile OWNER TO postgres;

--
-- Name: profile_country_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.profile_country_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.profile_country_id_seq OWNER TO postgres;

--
-- Name: profile_country_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.profile_country_id_seq OWNED BY public.profile.country_id;


--
-- Name: profile_profile_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.profile_profile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.profile_profile_id_seq OWNER TO postgres;

--
-- Name: profile_profile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.profile_profile_id_seq OWNED BY public.profile.profile_id;


--
-- Name: profile_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.profile_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.profile_user_id_seq OWNER TO postgres;

--
-- Name: profile_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.profile_user_id_seq OWNED BY public.profile.user_id;


--
-- Name: user_languages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_languages (
    user_language_id integer NOT NULL,
    user_id integer NOT NULL,
    language_id integer NOT NULL
);


ALTER TABLE public.user_languages OWNER TO postgres;

--
-- Name: user_languages_language_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_languages_language_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_languages_language_id_seq OWNER TO postgres;

--
-- Name: user_languages_language_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_languages_language_id_seq OWNED BY public.user_languages.language_id;


--
-- Name: user_languages_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_languages_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_languages_user_id_seq OWNER TO postgres;

--
-- Name: user_languages_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_languages_user_id_seq OWNED BY public.user_languages.user_id;


--
-- Name: user_languages_user_language_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_languages_user_language_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_languages_user_language_id_seq OWNER TO postgres;

--
-- Name: user_languages_user_language_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_languages_user_language_id_seq OWNED BY public.user_languages.user_language_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    user_email character varying NOT NULL,
    user_encrypted_password character varying NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO postgres;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: country country_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.country ALTER COLUMN country_id SET DEFAULT nextval('public.country_country_id_seq'::regclass);


--
-- Name: duo_facts fact_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.duo_facts ALTER COLUMN fact_id SET DEFAULT nextval('public.duo_facts_fact_id_seq'::regclass);


--
-- Name: duo_facts language_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.duo_facts ALTER COLUMN language_id SET DEFAULT nextval('public.duo_facts_language_id_seq'::regclass);


--
-- Name: language language_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.language ALTER COLUMN language_id SET DEFAULT nextval('public.language_language_id_seq'::regclass);


--
-- Name: profile profile_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profile ALTER COLUMN profile_id SET DEFAULT nextval('public.profile_profile_id_seq'::regclass);


--
-- Name: profile user_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profile ALTER COLUMN user_id SET DEFAULT nextval('public.profile_user_id_seq'::regclass);


--
-- Name: profile country_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profile ALTER COLUMN country_id SET DEFAULT nextval('public.profile_country_id_seq'::regclass);


--
-- Name: user_languages user_language_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_languages ALTER COLUMN user_language_id SET DEFAULT nextval('public.user_languages_user_language_id_seq'::regclass);


--
-- Name: user_languages user_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_languages ALTER COLUMN user_id SET DEFAULT nextval('public.user_languages_user_id_seq'::regclass);


--
-- Name: user_languages language_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_languages ALTER COLUMN language_id SET DEFAULT nextval('public.user_languages_language_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: country; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.country (country_id, country_name, country_code) FROM stdin;
1	United_Kingdom	UK
2	France	FR
3	Nigeria	NG
4	Spain	ES
5	Portugal	PT
6	Germany	DE
7	Italy	IT
8	Pakistan	PK
9	Brasil	BR
\.


--
-- Data for Name: duo_facts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.duo_facts (fact_id, fact_details, language_id) FROM stdin;
1	There are around 220 million French speakers worldwide	3
2	French is an official language in 29 countries, such as France, Belgium, Canada, Luxembourg, Switzerland, Congo, Mali, Senegal, and it is spoken on every continent	3
3	About 45% of modern English words are of French origin	3
4	About 45% of modern English words are of French origin	2
5	The literary integrity of the French language has been preserved by the Académie Française since its creation in 1634 by Cardinal Richelieu.	3
6	French Is The 6th Most Spoken Language In The World	3
7	French Doesn’t Have Any Words With “W”	3
8	Spanish is an official language in 29 countries	1
9	There are words in Spanish that cannot be translated in one word in English. An example is empalagarse (to feel sick because of too much sweetness in food, but also figuratively, as in romantic situations)	1
10	Mexico contains the largest population of Spanish speakers with 114 million	1
11	“I am” is the shortest complete sentence in the English language	2
12	A pangram sentence is one that contains every letter in the language. For example, the sentence “The quick brown fox jumps over the lazy dog” is a pangram.	2
13	Chaucer was the first writer who chose to write in English, although it is an English that might sound pretty foreign to us.	2
14	China has more English speakers than the United States.	2
15	German uses the Latin alphabet. It has, however, an additional consonant: the ß, called Eszett 	4
16	In German, nouns are capitalized.	4
17	The letters in Urdu are derived from the Persian/Farsi alphabet, which is derived from the Arabic alphabet. 	5
18	Two very respected poets who are not only celebrated in the Indian subcontinent but are famous in many other communities worldwide are Mirza Ghalib and Sir Mohammad Iqbal.	5
19	Urdu became a unifying symbol for Muslims during the 19th-century tensions and the colonization by the British Empire.	5
20	The ethnic group of Yoruba inhabits western Africa. The majority of them can be found in Nigeria.	6
21	Religion plays an important role among Yoruba people. Spirituality is also considered an important part of their daily lives.	6
22	The Yoruba have more twins than anywhere else in the world and their genetics are to be credited for that. The word for twin being "Ibeji"	6
23	Over the years, Yoruba has had different writing systems. In the 17th century, the influence of Muslims meant the introduction of Ajami script. But today, the Latin alphabet is used for the writing. However, it is modified according to the requirements of the Yoruba language.	6
24	Italian became an official language in 1861	7
25	The Italian alphabet only has 21 letters	7
26	The word ‘America’ comes from Italian; named after Amerigo Vespucci.	7
27	The language we now call Standard Italian derives from 13th-century Tuscan, or Florentine, to be specific.	7
28	 Until 1976, there were two different official versions of Greek. Demotic was used in most casual contexts, as well as in literature. Katharevousa, on the other hand, was used in academia, law, medicine, newspapers, and the armed forces	8
29	 The Greek alphabet was the first to use vowels.	8
30	Ancient Greek, like modern-day Hebrew and Arabic, was written from right to left	8
31	Portuguese is the official language in nine different countries: Portugal, Brazil, Mozambique, Angola, Guinea-Bissau, Timor-Leste, Equatorial Guinea, Cape Verde, and São Tomé and Principe. 	9
32	Only 5% of Portuguese speakers live in Portugal.	9
33	The roots of the Portuguese language are based in the autonomous community of Galicia, in the north of Portugal and the northwest of Spain.	9
\.


--
-- Data for Name: language; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.language (language_id, language_name) FROM stdin;
1	Spanish
2	English
3	French
4	German
5	Urdu
6	Yoruba
7	Italian
8	Greek
9	Portuguese
\.


--
-- Data for Name: profile; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.profile (profile_id, profile_fname, profile_lname, profile_username, user_id, country_id) FROM stdin;
1	Sam	Kirby	SamK_1	1	1
2	Mac	Bunny	MacB_2	2	2
3	Randy	Low	RandyL_3	3	6
4	Hannah	Noah	HannahN_4	4	5
5	Daniel	Silverwater	DanielS_5	5	4
6	Mars	Barson	MArsB_6	6	6
7	Roshan	Rhodes	RoshanR_7	7	8
8	Lenny	Rhodes	LennyR_8	8	9
9	Brian	Silverwater	BrianS_9	9	4
\.


--
-- Data for Name: user_languages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_languages (user_language_id, user_id, language_id) FROM stdin;
1	1	4
2	1	5
3	2	1
4	3	2
5	3	6
6	4	2
7	4	7
8	5	7
9	5	9
10	6	5
11	7	1
12	8	4
13	9	7
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (user_id, user_email, user_encrypted_password) FROM stdin;
1	Sam_Kirby@duo.com	Testing1
2	Mac_Bunny@duo.com	Testing2
3	Randy_Low@duo.com	Testing3
4	Hannah_Noah@duo.com	Testing4
5	Daniel_Silverwater@duo.com	Testing5
6	Mars_Barson@duo.com	Testing6
7	Roshan_Rhodes@duo.com	Testing7
8	Lenny_Rhodes@duo.com	Testing8
9	Brian_Silverwater@duo.com	Testing9
\.


--
-- Name: country_country_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.country_country_id_seq', 10, true);


--
-- Name: duo_facts_fact_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.duo_facts_fact_id_seq', 33, true);


--
-- Name: duo_facts_language_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.duo_facts_language_id_seq', 1, false);


--
-- Name: language_language_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.language_language_id_seq', 9, true);


--
-- Name: profile_country_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.profile_country_id_seq', 1, false);


--
-- Name: profile_profile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.profile_profile_id_seq', 9, true);


--
-- Name: profile_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.profile_user_id_seq', 1, false);


--
-- Name: user_languages_language_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_languages_language_id_seq', 1, false);


--
-- Name: user_languages_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_languages_user_id_seq', 1, false);


--
-- Name: user_languages_user_language_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_languages_user_language_id_seq', 13, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_user_id_seq', 9, true);


--
-- Name: country country_country_code_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_country_code_key UNIQUE (country_code);


--
-- Name: country country_country_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_country_name_key UNIQUE (country_name);


--
-- Name: country country_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_pkey PRIMARY KEY (country_id);


--
-- Name: duo_facts duo_facts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.duo_facts
    ADD CONSTRAINT duo_facts_pkey PRIMARY KEY (fact_id);


--
-- Name: language language_language_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.language
    ADD CONSTRAINT language_language_name_key UNIQUE (language_name);


--
-- Name: language language_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.language
    ADD CONSTRAINT language_pkey PRIMARY KEY (language_id);


--
-- Name: profile profile_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profile
    ADD CONSTRAINT profile_pkey PRIMARY KEY (profile_id);


--
-- Name: profile profile_profile_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profile
    ADD CONSTRAINT profile_profile_username_key UNIQUE (profile_username);


--
-- Name: user_languages user_languages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_languages
    ADD CONSTRAINT user_languages_pkey PRIMARY KEY (user_language_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_user_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_user_email_key UNIQUE (user_email);


--
-- Name: profile countryfk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profile
    ADD CONSTRAINT countryfk FOREIGN KEY (country_id) REFERENCES public.country(country_id);


--
-- Name: duo_facts languagefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.duo_facts
    ADD CONSTRAINT languagefk FOREIGN KEY (language_id) REFERENCES public.language(language_id);


--
-- Name: user_languages languagefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_languages
    ADD CONSTRAINT languagefk FOREIGN KEY (language_id) REFERENCES public.language(language_id);


--
-- Name: profile userfk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profile
    ADD CONSTRAINT userfk FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- Name: user_languages userfk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_languages
    ADD CONSTRAINT userfk FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

