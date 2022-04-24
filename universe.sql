--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    distance integer,
    galaxy_type integer,
    mission numeric,
    has_life boolean,
    description text NOT NULL,
    id integer,
    ide integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: identification; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.identification (
    ide integer NOT NULL,
    lol text NOT NULL,
    identification_id integer NOT NULL,
    name character varying(30)
);


ALTER TABLE public.identification OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    mission numeric,
    has_life boolean,
    round boolean NOT NULL,
    description text NOT NULL,
    ide integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    mission numeric,
    has_life boolean NOT NULL,
    description text NOT NULL,
    ide integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    mission numeric,
    star_type integer,
    bright boolean,
    description text NOT NULL,
    ide integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: starlink; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.starlink (
    starlink_id integer NOT NULL,
    raze numeric NOT NULL,
    name character varying(30),
    internet numeric,
    ide integer
);


ALTER TABLE public.starlink OWNER TO freecodecamp;

--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'qwer', 234, 2, 123, true, 'abandoned', NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'asdf', 345, 2, 234, false, 'abandoned', NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'zxcv', 567, 1, 567, false, 'abandoned', NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'werty', 476, 2, 877, false, 'abandoned', NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'yuiop', 340, 1, 233, true, 'full', NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'hjklp', 349, 2, 787, true, 'full', NULL, NULL);


--
-- Data for Name: identification; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.identification VALUES (1, 'lol', 1, 'lolo');
INSERT INTO public.identification VALUES (2, 'lol', 2, 'loli');
INSERT INTO public.identification VALUES (3, 'lol', 3, 'lolu');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'llds', 1111, true, true, 'bad', NULL);
INSERT INTO public.moon VALUES (2, 'll2k', 1112, false, true, 'bad', NULL);
INSERT INTO public.moon VALUES (3, 'l23k', 1113, true, false, 'ok', NULL);
INSERT INTO public.moon VALUES (4, 'l18k', 4533, false, true, 'bad', NULL);
INSERT INTO public.moon VALUES (5, 'l3fk', 14411, true, true, 'bad', NULL);
INSERT INTO public.moon VALUES (6, 'll7j', 1188, false, false, 'ok', NULL);
INSERT INTO public.moon VALUES (7, '67u8', 2009, true, false, 'bad', NULL);
INSERT INTO public.moon VALUES (8, '877k', 1, false, false, 'unknown', NULL);
INSERT INTO public.moon VALUES (9, 'l55k', 1165, false, true, 'bad', NULL);
INSERT INTO public.moon VALUES (10, '455lk', 1166, true, true, 'ok', NULL);
INSERT INTO public.moon VALUES (11, 'l88i', 2435, false, true, 'bad', NULL);
INSERT INTO public.moon VALUES (12, 'l44r', 2224, false, true, 'ok', NULL);
INSERT INTO public.moon VALUES (14, 'lllk', 11891, true, true, 'bad', NULL);
INSERT INTO public.moon VALUES (15, 'lghyk', 3456, true, true, 'bad', NULL);
INSERT INTO public.moon VALUES (16, 'fbh8', 44331, true, false, 'ok', NULL);
INSERT INTO public.moon VALUES (17, 'lr6yu', 11990, true, true, 'bad', NULL);
INSERT INTO public.moon VALUES (18, 'lr6yu', 17770, true, true, 'bad', NULL);
INSERT INTO public.moon VALUES (19, 'lr554u', 11330, true, true, 'bad', NULL);
INSERT INTO public.moon VALUES (20, 'ler5u', 11665, false, true, 'ok', NULL);
INSERT INTO public.moon VALUES (21, 'lr444u', 14454, true, false, 'bad', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'gtyh', 922, false, 'ok', NULL);
INSERT INTO public.planet VALUES (2, 'gtyj', 923, false, 'ok', NULL);
INSERT INTO public.planet VALUES (3, 'gtyp', 924, true, 'bad', NULL);
INSERT INTO public.planet VALUES (4, 'gtyv', 925, true, 'ok', NULL);
INSERT INTO public.planet VALUES (5, 'gtdh', 926, true, 'bad', NULL);
INSERT INTO public.planet VALUES (6, 'gxpy', 927, false, 'ok', NULL);
INSERT INTO public.planet VALUES (7, 'gxpt', 928, true, 'bad', NULL);
INSERT INTO public.planet VALUES (8, 'ntyh', 929, false, 'bad', NULL);
INSERT INTO public.planet VALUES (9, 'nvyh', 930, true, 'bad', NULL);
INSERT INTO public.planet VALUES (10, 'isfh', 931, true, 'ok', NULL);
INSERT INTO public.planet VALUES (11, '7469', 932, true, 'bad', NULL);
INSERT INTO public.planet VALUES (12, 'erff', 933, true, 'bad', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'alfa', 433, 2, false, 'bad', NULL);
INSERT INTO public.star VALUES (2, 'beta', 434, 2, true, 'ok', NULL);
INSERT INTO public.star VALUES (3, 'gama', 435, 3, true, 'ok', NULL);
INSERT INTO public.star VALUES (4, 'hytr', 437, 1, false, 'bad', NULL);
INSERT INTO public.star VALUES (5, 'vbnm', 666, 2, true, 'ok', NULL);
INSERT INTO public.star VALUES (6, 'zxcvb', 406, 1, false, 'bad', NULL);


--
-- Data for Name: starlink; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.starlink VALUES (1, 1, 'asdd', 1, NULL);
INSERT INTO public.starlink VALUES (2, 1, 'atdd', 4, NULL);
INSERT INTO public.starlink VALUES (3, 1, 'atjd', 6, NULL);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 1, false);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 21, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 1, false);


--
-- Name: galaxy galaxy_mission_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_mission_key UNIQUE (mission);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: identification identification_ide_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.identification
    ADD CONSTRAINT identification_ide_key UNIQUE (ide);


--
-- Name: identification identification_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.identification
    ADD CONSTRAINT identification_pkey PRIMARY KEY (identification_id);


--
-- Name: moon moon_mission_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_mission_key UNIQUE (mission);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_mission_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_mission_key UNIQUE (mission);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_mission_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_mission_key UNIQUE (mission);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: starlink starlink_internet_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.starlink
    ADD CONSTRAINT starlink_internet_key UNIQUE (internet);


--
-- Name: starlink starlink_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.starlink
    ADD CONSTRAINT starlink_pkey PRIMARY KEY (starlink_id);


--
-- Name: galaxy galaxy_ide_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_ide_fkey FOREIGN KEY (ide) REFERENCES public.identification(ide);


--
-- Name: moon moon_ide_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_ide_fkey FOREIGN KEY (ide) REFERENCES public.identification(ide);


--
-- Name: planet planet_ide_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_ide_fkey FOREIGN KEY (ide) REFERENCES public.identification(ide);


--
-- Name: star star_ide_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_ide_fkey FOREIGN KEY (ide) REFERENCES public.identification(ide);


--
-- Name: starlink starlink_ide_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.starlink
    ADD CONSTRAINT starlink_ide_fkey FOREIGN KEY (ide) REFERENCES public.identification(ide);


--
-- PostgreSQL database dump complete
--

