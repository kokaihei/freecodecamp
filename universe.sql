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
-- Name: fifth_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.fifth_table (
    fifth_table_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text
);


ALTER TABLE public.fifth_table OWNER TO freecodecamp;

--
-- Name: fifth_table_fifth_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.fifth_table_fifth_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fifth_table_fifth_table_id_seq OWNER TO freecodecamp;

--
-- Name: fifth_table_fifth_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.fifth_table_fifth_table_id_seq OWNED BY public.fifth_table.fifth_table_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    size numeric(8,1),
    description text,
    is_spherical boolean,
    has_life boolean NOT NULL
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
    name character varying(40) NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years integer,
    size numeric(8,1),
    has_life boolean NOT NULL,
    description text,
    is_spherical boolean,
    planet_id integer
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
    name character varying(40) NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years integer,
    size numeric(8,1),
    has_life boolean NOT NULL,
    is_spherical boolean,
    description text,
    star_id integer
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
    name character varying(40) NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years integer,
    size numeric(8,1),
    has_life boolean NOT NULL,
    description text,
    is_spherical boolean,
    galaxy_id integer
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
-- Name: fifth_table fifth_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth_table ALTER COLUMN fifth_table_id SET DEFAULT nextval('public.fifth_table_fifth_table_id_seq'::regclass);


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
-- Data for Name: fifth_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.fifth_table VALUES (1, 'name1', 'description1');
INSERT INTO public.fifth_table VALUES (2, 'name2', 'description2');
INSERT INTO public.fifth_table VALUES (3, 'name3', 'description3');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'yinhe1', 5000, 5000, 5000.0, 'this is the first galaxy', false, true);
INSERT INTO public.galaxy VALUES (2, 'yinhe2', 5000, 5000, 5000.0, 'this is the second galaxy', false, true);
INSERT INTO public.galaxy VALUES (3, 'yinhe3', 5000, 5000, 5000.0, 'this is the third galaxy', false, true);
INSERT INTO public.galaxy VALUES (4, 'yinhe4', 5000, 5000, 5000.0, 'this is the forth galaxy', false, true);
INSERT INTO public.galaxy VALUES (5, 'yinhe5', 5000, 5000, 5000.0, 'this is the fifth galaxy', false, true);
INSERT INTO public.galaxy VALUES (6, 'yinhe6', 5000, 5000, 5000.0, 'this is the sixth galaxy', false, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon01', 5000, 5000, 5000.0, true, 'this is the 12 planet', false, 1);
INSERT INTO public.moon VALUES (2, 'moon02', 5000, 5000, 5000.0, true, 'this is the 02 moon', false, 1);
INSERT INTO public.moon VALUES (3, 'moon03', 5000, 5000, 5000.0, true, 'this is the 03 moon', false, 1);
INSERT INTO public.moon VALUES (4, 'moon04', 5000, 5000, 5000.0, true, 'this is the 04 moon', false, 1);
INSERT INTO public.moon VALUES (5, 'moon05', 5000, 5000, 5000.0, true, 'this is the 05 moon', false, 1);
INSERT INTO public.moon VALUES (6, 'moon06', 5000, 5000, 5000.0, true, 'this is the 06 moon', false, 1);
INSERT INTO public.moon VALUES (7, 'moon07', 5000, 5000, 5000.0, true, 'this is the 07 moon', false, 1);
INSERT INTO public.moon VALUES (8, 'moon08', 5000, 5000, 5000.0, true, 'this is the 08 moon', false, 1);
INSERT INTO public.moon VALUES (9, 'moon09', 5000, 5000, 5000.0, true, 'this is the 09 moon', false, 1);
INSERT INTO public.moon VALUES (10, 'moon10', 5000, 5000, 5000.0, true, 'this is the 10 moon', false, 2);
INSERT INTO public.moon VALUES (11, 'moon11', 5000, 5000, 5000.0, true, 'this is the 11 moon', false, 3);
INSERT INTO public.moon VALUES (12, 'moon12', 5000, 5000, 5000.0, true, 'this is the 12 moon', false, 4);
INSERT INTO public.moon VALUES (13, 'moon13', 5000, 5000, 5000.0, true, 'this is the 13 moon', false, 5);
INSERT INTO public.moon VALUES (14, 'moon14', 5000, 5000, 5000.0, true, 'this is the 14 moon', false, 6);
INSERT INTO public.moon VALUES (15, 'moon15', 5000, 5000, 5000.0, true, 'this is the 15 moon', false, 7);
INSERT INTO public.moon VALUES (16, 'moon16', 5000, 5000, 5000.0, true, 'this is the 16 moon', false, 8);
INSERT INTO public.moon VALUES (17, 'moon17', 5000, 5000, 5000.0, true, 'this is the 17 moon', false, 9);
INSERT INTO public.moon VALUES (18, 'moon18', 5000, 5000, 5000.0, true, 'this is the 18 moon', false, 10);
INSERT INTO public.moon VALUES (19, 'moon19', 5000, 5000, 5000.0, true, 'this is the 19 moon', false, 11);
INSERT INTO public.moon VALUES (20, 'moon20', 5000, 5000, 5000.0, true, 'this is the 20 moon', false, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', 5000, 5000, 5000.0, true, false, 'this is the first planet', 1);
INSERT INTO public.planet VALUES (2, 'planet2', 5000, 5000, 5000.0, true, false, 'this is the 2 planet', 1);
INSERT INTO public.planet VALUES (3, 'planet3', 5000, 5000, 5000.0, true, false, 'this is the 3 planet', 2);
INSERT INTO public.planet VALUES (4, 'planet4', 5000, 5000, 5000.0, true, false, 'this is the 4 planet', 2);
INSERT INTO public.planet VALUES (5, 'planet5', 5000, 5000, 5000.0, true, false, 'this is the 5 planet', 3);
INSERT INTO public.planet VALUES (6, 'planet6', 5000, 5000, 5000.0, true, false, 'this is the 6 planet', 3);
INSERT INTO public.planet VALUES (7, 'planet7', 5000, 5000, 5000.0, true, false, 'this is the 7 planet', 4);
INSERT INTO public.planet VALUES (8, 'planet8', 5000, 5000, 5000.0, true, false, 'this is the 8 planet', 4);
INSERT INTO public.planet VALUES (9, 'planet9', 5000, 5000, 5000.0, true, false, 'this is the 9 planet', 5);
INSERT INTO public.planet VALUES (10, 'planet10', 5000, 5000, 5000.0, true, false, 'this is the 10 planet', 5);
INSERT INTO public.planet VALUES (11, 'planet11', 5000, 5000, 5000.0, true, false, 'this is the 11 planet', 6);
INSERT INTO public.planet VALUES (12, 'planet12', 5000, 5000, 5000.0, true, false, 'this is the 12 planet', 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 5000, 5000, 5000.0, true, 'this is the sixth galaxy', false, 1);
INSERT INTO public.star VALUES (2, 'star2', 5000, 5000, 5000.0, true, 'this is the second star', false, 2);
INSERT INTO public.star VALUES (3, 'star3', 5000, 5000, 5000.0, true, 'this is the third star', false, 3);
INSERT INTO public.star VALUES (4, 'star4', 5000, 5000, 5000.0, true, 'this is the forth star', false, 4);
INSERT INTO public.star VALUES (5, 'star5', 5000, 5000, 5000.0, true, 'this is the fifth star', false, 5);
INSERT INTO public.star VALUES (6, 'star6', 5000, 5000, 5000.0, true, 'this is the sixth star', false, 6);


--
-- Name: fifth_table_fifth_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.fifth_table_fifth_table_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: fifth_table fifth_table_name_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth_table
    ADD CONSTRAINT fifth_table_name_unq UNIQUE (name);


--
-- Name: fifth_table fifth_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth_table
    ADD CONSTRAINT fifth_table_pkey PRIMARY KEY (fifth_table_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_unq UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: galaxy name_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT name_unq UNIQUE (name);


--
-- Name: planet planet_name_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_unq UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_unq UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

