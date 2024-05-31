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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    is_spherical boolean,
    distance_from_earth integer,
    has_life boolean
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
    planet_id integer,
    distance_to_planet integer,
    volume integer,
    diameter numeric
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
    name character varying(50) NOT NULL,
    has_life boolean,
    star_id integer,
    description text
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
    name character varying(50) NOT NULL,
    galaxy_id integer,
    age_in_million_years integer,
    estimated_death_in_million_years integer
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
-- Name: test; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.test (
    test_id integer NOT NULL,
    name character varying(48) NOT NULL,
    choice boolean
);


ALTER TABLE public.test OWNER TO freecodecamp;

--
-- Name: test_test_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.test_test_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.test_test_id_seq OWNER TO freecodecamp;

--
-- Name: test_test_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.test_test_id_seq OWNED BY public.test.test_id;


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
-- Name: test test_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.test ALTER COLUMN test_id SET DEFAULT nextval('public.test_test_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', true, 0, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', true, 2537000, false);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', true, 3000000, false);
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Cloud', false, 163000, false);
INSERT INTO public.galaxy VALUES (5, 'Small Magellanic Cloud', false, 200000, false);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool Galaxy', true, 23000000, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon01', 1, 4132, 15234, 54132);
INSERT INTO public.moon VALUES (2, 'moon02', 2, 4145632, 15235644, 541352);
INSERT INTO public.moon VALUES (3, 'moon03', 3, 4132, 234, 4132);
INSERT INTO public.moon VALUES (4, 'moon04', 1, 4132, 15234, 54132);
INSERT INTO public.moon VALUES (6, 'moon09', 9, 4132, 15234, 54132);
INSERT INTO public.moon VALUES (7, 'moon08', 8, 4145632, 15235644, 541352);
INSERT INTO public.moon VALUES (8, 'moon07', 4, 4132, 234, 4132);
INSERT INTO public.moon VALUES (9, 'moon06', 5, 4132, 15234, 54132);
INSERT INTO public.moon VALUES (10, 'moon13', 11, 4132, 15234, 54132);
INSERT INTO public.moon VALUES (11, 'moon12', 6, 4145632, 15235644, 541352);
INSERT INTO public.moon VALUES (12, 'moon11', 7, 4132, 234, 4132);
INSERT INTO public.moon VALUES (13, 'moon10', 10, 4132, 15234, 54132);
INSERT INTO public.moon VALUES (14, 'moon17', 14, 4132, 15234, 54132);
INSERT INTO public.moon VALUES (15, 'moon16', 13, 4145632, 15235644, 541352);
INSERT INTO public.moon VALUES (16, 'moon15', 12, 4132, 234, 4132);
INSERT INTO public.moon VALUES (17, 'moon14', 11, 4132, 15234, 54132);
INSERT INTO public.moon VALUES (18, 'moon523117', 14, 4132, 15234, 54132);
INSERT INTO public.moon VALUES (19, 'moon15236', 13, 4145632, 15235644, 541352);
INSERT INTO public.moon VALUES (20, 'moon542315', 12, 4132, 234, 4132);
INSERT INTO public.moon VALUES (21, 'moon18', 15, 4132, 15234, 54132);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, 1, NULL);
INSERT INTO public.planet VALUES (2, 'Earth01', true, 1, NULL);
INSERT INTO public.planet VALUES (3, 'Earth02', true, 2, 'test');
INSERT INTO public.planet VALUES (4, 'Earth5', false, 3, NULL);
INSERT INTO public.planet VALUES (5, 'Earth04', true, 3, NULL);
INSERT INTO public.planet VALUES (6, 'Earth03', true, 2, 'test');
INSERT INTO public.planet VALUES (7, 'Earth8', false, 3, NULL);
INSERT INTO public.planet VALUES (8, 'Earth7', true, 3, NULL);
INSERT INTO public.planet VALUES (9, 'Earth6', false, 4, 'test');
INSERT INTO public.planet VALUES (10, 'Earth887', false, 3, NULL);
INSERT INTO public.planet VALUES (11, 'Earth88', true, 3, NULL);
INSERT INTO public.planet VALUES (12, 'Earth9', false, 5, NULL);
INSERT INTO public.planet VALUES (13, 'Earth8476', false, 3, NULL);
INSERT INTO public.planet VALUES (14, 'Earth7645', true, 3, NULL);
INSERT INTO public.planet VALUES (15, 'Earth999', false, 6, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 2300, 4566346);
INSERT INTO public.star VALUES (2, 'Sun02', 1, 23563400, 564566346);
INSERT INTO public.star VALUES (3, 'Sun03', 2, 23563400, 564566346);
INSERT INTO public.star VALUES (4, 'Sun04', 3, 23563400, 564566346);
INSERT INTO public.star VALUES (5, 'Sun5', 4, 23563400, 564566346);
INSERT INTO public.star VALUES (6, 'Sun6', 5, 67834900, 678946);


--
-- Data for Name: test; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.test VALUES (1, 'test01', false);
INSERT INTO public.test VALUES (2, 'test02', true);
INSERT INTO public.test VALUES (3, 'test03', false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: test_test_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.test_test_id_seq', 3, true);


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
-- Name: test test_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_name_key UNIQUE (name);


--
-- Name: test test_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_pkey PRIMARY KEY (test_id);


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

