--
-- PostgreSQL database dump
--

-- Dumped from database version 11.4
-- Dumped by pg_dump version 11.4

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

SET default_with_oids = false;

--
-- Name: albums; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.albums (
    id bigint NOT NULL,
    name character varying,
    year integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    genre character varying
);


ALTER TABLE public.albums OWNER TO "Guest";

--
-- Name: albums_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE public.albums_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.albums_id_seq OWNER TO "Guest";

--
-- Name: albums_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE public.albums_id_seq OWNED BY public.albums.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO "Guest";

--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO "Guest";

--
-- Name: songs; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.songs (
    id bigint NOT NULL,
    name character varying,
    lyrics character varying,
    album_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.songs OWNER TO "Guest";

--
-- Name: songs_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE public.songs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.songs_id_seq OWNER TO "Guest";

--
-- Name: songs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE public.songs_id_seq OWNED BY public.songs.id;


--
-- Name: albums id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.albums ALTER COLUMN id SET DEFAULT nextval('public.albums_id_seq'::regclass);


--
-- Name: songs id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.songs ALTER COLUMN id SET DEFAULT nextval('public.songs_id_seq'::regclass);


--
-- Data for Name: albums; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.albums (id, name, year, created_at, updated_at, genre) FROM stdin;
2	Giant Steps	\N	2019-08-05 16:54:04.229882	2019-08-05 16:54:04.229882	\N
1	In Rainbows	1980	2019-08-05 16:52:34.842083	2019-08-05 18:23:47.606067	\N
3	foo	\N	2019-08-05 20:09:23.722701	2019-08-05 20:09:23.722701	bar
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2019-08-05 16:08:35.453557	2019-08-05 16:08:35.453557
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.schema_migrations (version) FROM stdin;
20190805160756
20190805161031
20190805163214
20190805163358
\.


--
-- Data for Name: songs; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.songs (id, name, lyrics, album_id, created_at, updated_at) FROM stdin;
1	Reckoner	\N	1	2019-08-05 16:56:27.166412	2019-08-05 16:56:27.166412
4	Song2	La la ba ba ba	2	2019-08-05 20:12:12.852558	2019-08-05 20:12:12.852558
5	a	lalallalal	1	2019-08-05 20:20:15.004042	2019-08-05 20:20:15.004042
6	song 10	\N	1	2019-08-05 20:22:15.034333	2019-08-05 20:22:15.034333
7	Song3	fjkdls fkjsaljfdskl	2	2019-08-05 20:24:15.700567	2019-08-05 20:24:15.700567
9	asdf	fsaf	2	2019-08-05 20:45:53.621609	2019-08-05 20:45:53.621609
\.


--
-- Name: albums_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('public.albums_id_seq', 3, true);


--
-- Name: songs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('public.songs_id_seq', 9, true);


--
-- Name: albums albums_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.albums
    ADD CONSTRAINT albums_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: songs songs_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.songs
    ADD CONSTRAINT songs_pkey PRIMARY KEY (id);


--
-- Name: songs fk_rails_f4e40cd655; Type: FK CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.songs
    ADD CONSTRAINT fk_rails_f4e40cd655 FOREIGN KEY (album_id) REFERENCES public.albums(id);


--
-- PostgreSQL database dump complete
--

