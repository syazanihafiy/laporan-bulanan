--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

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
-- Name: laporan_perbelanjaan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.laporan_perbelanjaan (
    id integer NOT NULL,
    inisiatif character varying(255) NOT NULL,
    agensi character varying(255) NOT NULL,
    perbelanjaan character varying(255) NOT NULL
);


ALTER TABLE public.laporan_perbelanjaan OWNER TO postgres;

--
-- Name: laporan_perbelanjaan_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.laporan_perbelanjaan_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.laporan_perbelanjaan_id_seq OWNER TO postgres;

--
-- Name: laporan_perbelanjaan_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.laporan_perbelanjaan_id_seq OWNED BY public.laporan_perbelanjaan.id;


--
-- Name: laporan_perbelanjaan id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.laporan_perbelanjaan ALTER COLUMN id SET DEFAULT nextval('public.laporan_perbelanjaan_id_seq'::regclass);


--
-- Data for Name: laporan_perbelanjaan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.laporan_perbelanjaan (id, inisiatif, agensi, perbelanjaan) FROM stdin;
1	Inisiatif A	Agensi A	123.21
2	Inisiatif B	Agensi B	21.31
3	Inisiatif C	Agensi C	33.00
4	Inisiatif D	Agensi D	12.33
5	Inisiatif E	Agensi E	0.23
6	Inisiatif F	Agensi F	32.12
7	Inisiatif G	Agensi G	4.21
8	Inisiatif H	Agensi H	9.32
9	Inisiatif I	Agensi I	123.42
10	Inisiatif J	Agensi J	0.11
\.


--
-- Name: laporan_perbelanjaan_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.laporan_perbelanjaan_id_seq', 10, true);


--
-- Name: laporan_perbelanjaan laporan_perbelanjaan_agensi_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.laporan_perbelanjaan
    ADD CONSTRAINT laporan_perbelanjaan_agensi_key UNIQUE (agensi);


--
-- Name: laporan_perbelanjaan laporan_perbelanjaan_inisiatif_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.laporan_perbelanjaan
    ADD CONSTRAINT laporan_perbelanjaan_inisiatif_key UNIQUE (inisiatif);


--
-- Name: laporan_perbelanjaan laporan_perbelanjaan_perbelanjaan_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.laporan_perbelanjaan
    ADD CONSTRAINT laporan_perbelanjaan_perbelanjaan_key UNIQUE (perbelanjaan);


--
-- Name: laporan_perbelanjaan laporan_perbelanjaan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.laporan_perbelanjaan
    ADD CONSTRAINT laporan_perbelanjaan_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

