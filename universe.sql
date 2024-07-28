--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: connect_all; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.connect_all (
    connect_all_id integer NOT NULL,
    name character varying(60) NOT NULL,
    planet_types integer
);


ALTER TABLE public.connect_all OWNER TO freecodecamp;

--
-- Name: connect_all_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.connect_all_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.connect_all_id_seq OWNER TO freecodecamp;

--
-- Name: connect_all_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.connect_all_id_seq OWNED BY public.connect_all.connect_all_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    distance_from_earth numeric(10,2),
    age_in_millions_of_years integer NOT NULL,
    galaxy_name character varying(60),
    is_myth boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    planet_types integer,
    galaxy_types integer,
    has_life boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(60) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    is_spherical boolean NOT NULL,
    has_life boolean NOT NULL,
    description text,
    distance_from_earth numeric(10,2)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60) NOT NULL,
    galaxy_types integer,
    planet_types integer,
    distance_from_earth integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: connect_all connect_all_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.connect_all ALTER COLUMN connect_all_id SET DEFAULT nextval('public.connect_all_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: connect_all; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.connect_all VALUES (1, 'John', 3);
INSERT INTO public.connect_all VALUES (2, 'wick', 0);
INSERT INTO public.connect_all VALUES (3, 'Hugh', 0);
INSERT INTO public.connect_all VALUES (4, 'Jackman', 0);
INSERT INTO public.connect_all VALUES (5, 'Deadpool', 0);
INSERT INTO public.connect_all VALUES (6, 'Wade', 0);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (4, 'John', 987.00, 40, 'milkway', false);
INSERT INTO public.galaxy VALUES (5, 'wick', 988.00, 80, 'gun', true);
INSERT INTO public.galaxy VALUES (6, 'Hugh', 951.00, 82, 'claws', true);
INSERT INTO public.galaxy VALUES (7, 'Jackman', 952.00, 20, 'YellowSuit', true);
INSERT INTO public.galaxy VALUES (8, 'Deadpool', 953.00, 24, 'RedSuit', true);
INSERT INTO public.galaxy VALUES (9, 'Wade', 954.00, 22, 'Katana/bones', true);
INSERT INTO public.galaxy VALUES (11, 'Tony', 521.00, 2, 'nihoma', true);
INSERT INTO public.galaxy VALUES (12, 'Stark', 521.00, 3, 'nihoma', true);
INSERT INTO public.galaxy VALUES (13, 'Chris', 521.00, 4, 'nihoma', true);
INSERT INTO public.galaxy VALUES (14, 'Evans', 521.00, 5, 'nihoma', true);
INSERT INTO public.galaxy VALUES (15, 'Hemsworth', 521.00, 6, 'nihoma', true);
INSERT INTO public.galaxy VALUES (16, 'Bruce', 521.00, 7, 'nihoma', true);
INSERT INTO public.galaxy VALUES (17, 'Nick', 521.00, 8, 'nihoma', true);
INSERT INTO public.galaxy VALUES (18, 'Fury', 521.00, 9, 'nihoma', true);
INSERT INTO public.galaxy VALUES (19, 'Sam', 521.00, 10, 'nihoma', true);
INSERT INTO public.galaxy VALUES (20, 'Bingo', 521.00, 11, 'nihoma', true);
INSERT INTO public.galaxy VALUES (21, 'Hems', 521.00, 12, 'nihoma', true);
INSERT INTO public.galaxy VALUES (22, 'Xavier', 521.00, 13, 'nihoma', true);
INSERT INTO public.galaxy VALUES (23, 'Vicky', 521.00, 14, 'nihoma', true);
INSERT INTO public.galaxy VALUES (24, 'Calvin', 521.00, 15, 'nihoma', true);
INSERT INTO public.galaxy VALUES (25, 'Logan', 521.00, 16, 'nihoma', true);
INSERT INTO public.galaxy VALUES (26, 'Natasha', 521.00, 17, 'nihoma', true);
INSERT INTO public.galaxy VALUES (27, 'Strange', 521.00, 18, 'nihoma', true);
INSERT INTO public.galaxy VALUES (28, 'Stephen', 521.00, 19, 'nihoma', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'John', 3, 4, true);
INSERT INTO public.moon VALUES (2, 'wick', 0, 0, false);
INSERT INTO public.moon VALUES (3, 'Hugh', 0, 0, true);
INSERT INTO public.moon VALUES (4, 'Jackman', 0, 0, false);
INSERT INTO public.moon VALUES (5, 'Deadpool', 0, 0, true);
INSERT INTO public.moon VALUES (6, 'Wade', 0, 0, false);
INSERT INTO public.moon VALUES (7, 'Tony', 3, 3, true);
INSERT INTO public.moon VALUES (8, 'Stark', 3, 3, false);
INSERT INTO public.moon VALUES (9, 'Chris', 3, 3, true);
INSERT INTO public.moon VALUES (10, 'Evans', 3, 3, false);
INSERT INTO public.moon VALUES (11, 'Hemsworth', 3, 3, true);
INSERT INTO public.moon VALUES (12, 'Bruce', 3, 3, false);
INSERT INTO public.moon VALUES (13, 'Nick', 3, 3, true);
INSERT INTO public.moon VALUES (14, 'Fury', 3, 3, false);
INSERT INTO public.moon VALUES (15, 'Sam', 3, 3, true);
INSERT INTO public.moon VALUES (16, 'Bingo', 3, 3, false);
INSERT INTO public.moon VALUES (17, 'Hems', 3, 3, true);
INSERT INTO public.moon VALUES (18, 'Xavier', 3, 3, false);
INSERT INTO public.moon VALUES (19, 'Vicky', 3, 3, true);
INSERT INTO public.moon VALUES (20, 'Calvin', 3, 3, false);
INSERT INTO public.moon VALUES (21, 'Logan', 3, 3, true);
INSERT INTO public.moon VALUES (22, 'Natasha', 3, 3, false);
INSERT INTO public.moon VALUES (23, 'Strange', 3, 3, true);
INSERT INTO public.moon VALUES (24, 'Stephen', 3, 3, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (13, 'John', 3, true, false, 'gg6tfuygi', 987.40);
INSERT INTO public.planet VALUES (36, 'wick', 4, true, true, 'gg6tfuygi', 988.00);
INSERT INTO public.planet VALUES (37, 'Hugh', 5, true, true, 'gg6tfuygi', 951.00);
INSERT INTO public.planet VALUES (38, 'Jackman', 6, true, true, 'gg6tfuygi', 952.00);
INSERT INTO public.planet VALUES (39, 'Deadpool', 7, true, true, 'gg6tfuygi', 953.00);
INSERT INTO public.planet VALUES (40, 'Wade', 8, true, true, 'gg6tfuygi', 954.00);
INSERT INTO public.planet VALUES (78, 'Tony', 9, true, true, 'gg6tfuygi', 990.00);
INSERT INTO public.planet VALUES (79, 'Stark', 10, true, true, 'gg6tfuygi', 989.00);
INSERT INTO public.planet VALUES (80, 'Chris', 11, true, true, 'gg6tfuygi', 957.00);
INSERT INTO public.planet VALUES (81, 'Evans', 12, true, true, 'gg6tfuygi', 958.00);
INSERT INTO public.planet VALUES (82, 'Hemsworth', 13, true, true, 'gg6tfuygi', 951.00);
INSERT INTO public.planet VALUES (83, 'Bruce', 14, true, true, 'gg6tfuygi', 945.00);
INSERT INTO public.planet VALUES (84, 'Nick', 31, true, true, 'gg6tfuygi', 9912.00);
INSERT INTO public.planet VALUES (85, 'Fury', 32, true, true, 'gg6tfuygi', 9829.00);
INSERT INTO public.planet VALUES (86, 'Sam', 33, true, true, 'gg6tfuygi', 9572.00);
INSERT INTO public.planet VALUES (87, 'Bingo', 34, true, true, 'gg6tfuygi', 9518.00);
INSERT INTO public.planet VALUES (88, 'Hems', 35, true, true, 'gg6tfuygi', 9351.00);
INSERT INTO public.planet VALUES (89, 'Xavier', 36, true, true, 'gg6tfuygi', 1945.00);
INSERT INTO public.planet VALUES (90, 'Vicky', 37, true, true, 'gg6tfuygi', 9952.00);
INSERT INTO public.planet VALUES (91, 'Calvin', 38, true, true, 'gg6tfuygi', 9876.00);
INSERT INTO public.planet VALUES (92, 'Logan', 39, true, true, 'gg6tfuygi', 91.00);
INSERT INTO public.planet VALUES (93, 'Natasha', 40, true, true, 'gg6tfuygi', 958.00);
INSERT INTO public.planet VALUES (94, 'Strange', 41, true, true, 'gg6tfuygi', 951.00);
INSERT INTO public.planet VALUES (95, 'Stephen', 42, true, true, 'gg6tfuygi', 9245.00);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'John', 3, 4, 987);
INSERT INTO public.star VALUES (2, 'wick', 0, 0, 988);
INSERT INTO public.star VALUES (3, 'Hugh', 0, 0, 951);
INSERT INTO public.star VALUES (4, 'Jackman', 0, 0, 952);
INSERT INTO public.star VALUES (5, 'Deadpool', 0, 0, 953);
INSERT INTO public.star VALUES (6, 'Wade', 0, 0, 954);
INSERT INTO public.star VALUES (43, 'Tony', 3, 3, 990);
INSERT INTO public.star VALUES (44, 'Stark', 3, 3, 989);
INSERT INTO public.star VALUES (45, 'Chris', 3, 3, 957);
INSERT INTO public.star VALUES (46, 'Evans', 3, 3, 958);
INSERT INTO public.star VALUES (47, 'Hemsworth', 3, 3, 951);
INSERT INTO public.star VALUES (48, 'Bruce', 3, 3, 945);
INSERT INTO public.star VALUES (49, 'Nick', 3, 3, 9912);
INSERT INTO public.star VALUES (50, 'Fury', 3, 3, 9829);
INSERT INTO public.star VALUES (51, 'Sam', 3, 3, 9572);
INSERT INTO public.star VALUES (52, 'Bingo', 3, 3, 9518);
INSERT INTO public.star VALUES (53, 'Hems', 3, 3, 9351);
INSERT INTO public.star VALUES (54, 'Xavier', 3, 3, 1945);
INSERT INTO public.star VALUES (55, 'Vicky', 3, 3, 9952);
INSERT INTO public.star VALUES (56, 'Calvin', 3, 3, 9876);
INSERT INTO public.star VALUES (57, 'Logan', 3, 3, 91);
INSERT INTO public.star VALUES (58, 'Natasha', 3, 3, 958);
INSERT INTO public.star VALUES (59, 'Strange', 3, 3, 951);
INSERT INTO public.star VALUES (60, 'Stephen', 3, 3, 9245);


--
-- Name: connect_all_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.connect_all_id_seq', 6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 28, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 96, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 60, true);


--
-- Name: connect_all connect_all_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.connect_all
    ADD CONSTRAINT connect_all_name_key UNIQUE (name);


--
-- Name: connect_all connect_all_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.connect_all
    ADD CONSTRAINT connect_all_pkey PRIMARY KEY (connect_all_id);


--
-- Name: galaxy galaxy_age_in_millions_of_years_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_age_in_millions_of_years_key UNIQUE (age_in_millions_of_years);


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
-- Name: planet planet_age_in_millions_of_years_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_age_in_millions_of_years_key UNIQUE (age_in_millions_of_years);


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
-- Name: moon moon_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_fkey FOREIGN KEY (name) REFERENCES public.planet(name);


--
-- Name: planet planet_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_fkey FOREIGN KEY (name) REFERENCES public.star(name);


--
-- Name: star star_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_fkey FOREIGN KEY (name) REFERENCES public.galaxy(name);


--
-- PostgreSQL database dump complete
--

