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
    name character varying(40),
    number1 integer NOT NULL,
    number2 integer NOT NULL,
    description text
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40),
    bool1 boolean NOT NULL,
    bool2 boolean NOT NULL,
    planet_id integer
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
    name character varying(40),
    star_id integer,
    description text NOT NULL,
    first_seen date
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
    name character varying(40),
    decimal1 numeric(10,2) NOT NULL,
    galaxy_id integer,
    description text
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
-- Name: strings; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.strings (
    strings_id integer NOT NULL,
    content text NOT NULL,
    name character varying(40)
);


ALTER TABLE public.strings OWNER TO freecodecamp;

--
-- Name: strings_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.strings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strings_id_seq OWNER TO freecodecamp;

--
-- Name: strings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.strings_id_seq OWNED BY public.strings.strings_id;


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
-- Name: strings strings_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.strings ALTER COLUMN strings_id SET DEFAULT nextval('public.strings_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Galaxy 1', 0, 0, NULL);
INSERT INTO public.galaxy VALUES (2, 'Galaxy 2', 0, 0, NULL);
INSERT INTO public.galaxy VALUES (3, 'Galaxy 3', 0, 0, NULL);
INSERT INTO public.galaxy VALUES (4, 'Galaxy 4', 0, 0, NULL);
INSERT INTO public.galaxy VALUES (5, 'Galaxy 5', 0, 0, NULL);
INSERT INTO public.galaxy VALUES (6, 'Galaxy 6', 0, 0, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon 1', true, false, NULL);
INSERT INTO public.moon VALUES (2, 'Moon 2', true, false, NULL);
INSERT INTO public.moon VALUES (3, 'Moon 3', true, false, NULL);
INSERT INTO public.moon VALUES (4, 'Moon 4', true, false, NULL);
INSERT INTO public.moon VALUES (5, 'Moon 5', true, false, NULL);
INSERT INTO public.moon VALUES (6, 'Moon 6', true, false, NULL);
INSERT INTO public.moon VALUES (7, 'Moon 7', true, false, NULL);
INSERT INTO public.moon VALUES (8, 'Moon 8', true, false, NULL);
INSERT INTO public.moon VALUES (9, 'Moon 9', true, false, NULL);
INSERT INTO public.moon VALUES (10, 'Moon 10', true, false, NULL);
INSERT INTO public.moon VALUES (11, 'Moon 11', true, false, NULL);
INSERT INTO public.moon VALUES (12, 'Moon 12', true, false, NULL);
INSERT INTO public.moon VALUES (13, 'Moon 13', true, false, NULL);
INSERT INTO public.moon VALUES (14, 'Moon 14', true, false, NULL);
INSERT INTO public.moon VALUES (15, 'Moon 15', true, false, NULL);
INSERT INTO public.moon VALUES (16, 'Moon 16', true, false, NULL);
INSERT INTO public.moon VALUES (17, 'Moon 17', true, false, NULL);
INSERT INTO public.moon VALUES (18, 'Moon 18', true, false, NULL);
INSERT INTO public.moon VALUES (19, 'Moon 19', true, false, NULL);
INSERT INTO public.moon VALUES (20, 'Moon 20', true, false, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Planet 1', NULL, '', NULL);
INSERT INTO public.planet VALUES (2, 'Planet 2', NULL, '', NULL);
INSERT INTO public.planet VALUES (3, 'Planet 3', NULL, '', NULL);
INSERT INTO public.planet VALUES (4, 'Planet 4', NULL, '', NULL);
INSERT INTO public.planet VALUES (5, 'Planet 5', NULL, '', NULL);
INSERT INTO public.planet VALUES (6, 'Planet 6', NULL, '', NULL);
INSERT INTO public.planet VALUES (7, 'Planet 7', NULL, '', NULL);
INSERT INTO public.planet VALUES (8, 'Planet 8', NULL, '', NULL);
INSERT INTO public.planet VALUES (9, 'Planet 9', NULL, '', NULL);
INSERT INTO public.planet VALUES (10, 'Planet 10', NULL, '', NULL);
INSERT INTO public.planet VALUES (11, 'Planet 11', NULL, '', NULL);
INSERT INTO public.planet VALUES (12, 'Planet 12', NULL, '', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Star 1', 0.00, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Star 2', 0.00, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Star 3', 0.00, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Star 4', 0.00, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Star 5', 0.00, NULL, NULL);
INSERT INTO public.star VALUES (8, 'Star 6', 0.00, NULL, NULL);


--
-- Data for Name: strings; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.strings VALUES (1, 'String 1', 'string_1');
INSERT INTO public.strings VALUES (2, 'String 2', 'string_2');
INSERT INTO public.strings VALUES (3, 'String 3', 'string_3');


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 8, true);


--
-- Name: strings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.strings_id_seq', 3, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: strings strings_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.strings
    ADD CONSTRAINT strings_name_key UNIQUE (name);


--
-- Name: strings strings_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.strings
    ADD CONSTRAINT strings_pkey PRIMARY KEY (strings_id);


--
-- Name: moon moon_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_galaxy_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_galaxy_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

