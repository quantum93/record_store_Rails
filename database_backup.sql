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
7	This 	\N	2019-08-06 16:15:45.27112	2019-08-06 16:15:45.27112	pop
6	Yellow Submarine	1969	2019-08-06 16:01:23.239547	2019-08-06 16:16:19.487966	pop
5	Something New	1964	2019-08-06 16:00:38.039818	2019-08-06 16:16:25.927338	pop
3	Foo	\N	2019-08-05 20:09:23.722701	2019-08-06 16:16:30.759035	bar
8	Dookie	\N	2019-08-06 16:25:15.672435	2019-08-06 16:25:26.335253	Punk
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
6	song 10	\N	1	2019-08-05 20:22:15.034333	2019-08-05 20:22:15.034333
7	Song3	fjkdls fkjsaljfdskl	2	2019-08-05 20:24:15.700567	2019-08-05 20:24:15.700567
9	asdf	fsaf	2	2019-08-05 20:45:53.621609	2019-08-05 20:45:53.621609
10	dust in the wind	I close my eyes, only for a moment, and the moment's gone\r\nAll my dreams pass before my eyes, a curiosity\r\nDust in the wind\r\nAll they are is dust in the wind\r\nSame old song, just a drop of water in an endless sea\r\nAll we do crumbles to the ground though we refuse to see\r\nDust in the wind\r\nAll we are is dust in the wind\r\nOh, ho, ho\r\nNow, don't hang on, nothing lasts forever but the earth and sky\r\nIt slips away\r\nAnd all your money won't another minute buy\r\nDust in the wind\r\nAll we are is dust in the wind\r\nAll we are is dust in the wind\r\nDust in the wind\r\nEverything is dust in the wind\r\nEverything is dust in the wind\r\nThe wind	2	2019-08-06 15:28:43.201254	2019-08-06 15:29:16.578336
5	Sisters of Mercy	All the sisters of mercy, they are not departed or gone\r\nThey were waiting for me when I thought that I just can't go on\r\nAnd they brought me their comfort and later they brought me this song\r\nOh, I hope you run into them, you who've been travelling so long\r\nYes, you who must leave everything that you cannot control\r\nIt begins with your family, but soon it comes around to your soul\r\nWell, I've been where you're hanging, I think I can see how you're pinned\r\nWhen you're not feeling holy, your loneliness says that you've sinned\r\nWell, they lay down beside me, I made my confession to them\r\nThey touched both my eyes and I touched the dew on their hem\r\nIf your life is a leaf that the seasons tear off and condemn\r\nThey will bind you with love that is graceful and green as a stem\r\nWhen I left they were sleeping, I hope you run into them soon\r\nDon't turn on the lights, you can read their address by the moon\r\nAnd you won't make me jealous if I hear that they sweetened your night\r\nWe weren't lovers like that and besides, it would still be all right\r\nWe weren't lovers like that and besides, it would still be all right	1	2019-08-05 20:20:15.004042	2019-08-06 15:31:04.673556
11	She	She \r\nShe screams in silence A sulley roit penetrating through her mind Waiting for a sign to smash the silence with the brick of self control Are you locked up in a world that's been planned out for you? Are you feeling like a social tool without a use? Scream at me until my ears bleed I'm taking heed just for you She She's figured out  All her doubts were someone else's point of view Waking up this time to smash the silence with the brick of self control Are you locked up in a world that's been planned out for you? Are you feeling like a social tool without a use? Scream at me until my ears bleed I'm taking heed just for you Are you locked up in a world that's been planned out for you? Are you feeling like a social tool without a use? Scream at me until my ears bleed I'm taking heed just for you	8	2019-08-06 16:27:51.753857	2019-08-06 16:28:04.497808
\.


--
-- Name: albums_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('public.albums_id_seq', 8, true);


--
-- Name: songs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('public.songs_id_seq', 11, true);


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

