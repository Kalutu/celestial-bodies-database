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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(255) NOT NULL,
    abbreviation character varying(10) NOT NULL,
    location text,
    no_of_stars integer
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    size numeric,
    has_black_hole boolean NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years integer
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
    name character varying(30) NOT NULL,
    type character varying(100),
    size numeric,
    has_atmosphere boolean NOT NULL,
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
    name character varying(30) NOT NULL,
    type character varying(100),
    mass numeric,
    has_water boolean NOT NULL,
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
    name character varying(30) NOT NULL,
    type character varying(100),
    mass numeric,
    is_supernova boolean NOT NULL,
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
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


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
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'Orion', 'Ori', 'Cellestial-Equator', 7);
INSERT INTO public.constellation VALUES (2, 'Leo', 'Leo', 'Cellestial-Equator', 5);
INSERT INTO public.constellation VALUES (3, 'Crux', 'Cru', 'Southern Hemisphere', 5);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our Home Galaxy', 100000, true, 26000, 13000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral Galaxy', 120000, false, 2200000, 14000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Small Galaxy', 20000, false, 30000000, 12000);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 'Interacting Galaxy', 5000, true, 2300000, 11000);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'Edge-on Galaxy', 40000, false, 290000, 15000);
INSERT INTO public.galaxy VALUES (6, 'Cartwheel', 'Ring Galaxy', 35000, true, 2500000, 16000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Terrestrial', 73400000000000000000000, false, 1);
INSERT INTO public.moon VALUES (2, 'Luna', 'Terrestrial', 73490000000000000000000, false, 1);
INSERT INTO public.moon VALUES (3, 'Phobos', 'Rocky', 10659000000000000, false, 2);
INSERT INTO public.moon VALUES (4, 'Deimos', 'Rocky', 2400000000000000, false, 2);
INSERT INTO public.moon VALUES (5, 'Charon', 'Rocky', 1520000000000000000000, false, 5);
INSERT INTO public.moon VALUES (6, 'Io', 'Rocky', 89300000000000000000000, true, 5);
INSERT INTO public.moon VALUES (7, 'Ganymede', 'Ice', 149300000000000000000000, true, 3);
INSERT INTO public.moon VALUES (8, 'Europa', 'Ice', 48300000000000000000000, true, 3);
INSERT INTO public.moon VALUES (10, 'Titan', 'Ice', 21400000000000000000000, true, 9);
INSERT INTO public.moon VALUES (11, 'Rhea', 'Ice', 2300000000000000000000, true, 9);
INSERT INTO public.moon VALUES (12, 'Enceledas', 'Ice', 108000000000000000000, true, 9);
INSERT INTO public.moon VALUES (13, 'Callisto', 'Ice', 107590000000000000000000, false, 4);
INSERT INTO public.moon VALUES (14, 'Ceres', 'Dwarf', 930300000000000000000, false, 11);
INSERT INTO public.moon VALUES (15, 'Pluto', 'Dwarf', 13090000000000000000000, false, 12);
INSERT INTO public.moon VALUES (16, 'Haumea', 'Dwarf', 4006000000000000000000, false, 13);
INSERT INTO public.moon VALUES (17, 'Eris', 'Dwarf', 16460000000000000000000, false, 14);
INSERT INTO public.moon VALUES (18, 'Halimede', 'Rocky', 35000000000000000, false, 11);
INSERT INTO public.moon VALUES (19, 'Olympus', 'Rocky', 1.43916, false, 2);
INSERT INTO public.moon VALUES (20, 'Mimas', 'Ice', 37500000000000000000, false, 9);
INSERT INTO public.moon VALUES (21, 'Oberon', 'Ice', 3010000000000000000000, false, 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Terrestrial', 5927000000000000000000000, true, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 'Terrestrial', 639000000000000000000000, false, 1);
INSERT INTO public.planet VALUES (3, 'Venus', 'Terrestrial', 4867000000000000000000000, false, 3);
INSERT INTO public.planet VALUES (4, 'Jupiter', 'Gas giant', 1898000000000000000000000000, false, 2);
INSERT INTO public.planet VALUES (5, 'Saturn', 'Gas giant', 568300000000000000000000000, false, 4);
INSERT INTO public.planet VALUES (6, 'Neptune', 'Ice giant', 102400000000000000000000000, true, 5);
INSERT INTO public.planet VALUES (7, 'Kepler-452b', 'Terrestrial', 3500000000000000000000000, true, 6);
INSERT INTO public.planet VALUES (9, 'Mercury', 'Terrestrial', 330110000000000000000000, false, 2);
INSERT INTO public.planet VALUES (10, 'Saturn II', 'Gas giant', 568300000000000000000000000, false, 4);
INSERT INTO public.planet VALUES (11, 'Uranus', 'Ice giant', 86810000000000000000000000, true, 5);
INSERT INTO public.planet VALUES (12, 'Kepler-62e', 'Terrestrial', 18500000000000000000000000, true, 6);
INSERT INTO public.planet VALUES (13, 'Gliese 876 d', 'Terrestrial', 5820000000000000000000000, true, 3);
INSERT INTO public.planet VALUES (14, '55 Cancri f', 'Super-Earth', 9300000000000000000000000, false, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'G-type main-sequence', 1989000000000000000000000000000, false, 1);
INSERT INTO public.star VALUES (2, 'Alpha Centauri A', 'G-type main-sequence', 2190000000000000000000000000000, false, 1);
INSERT INTO public.star VALUES (3, 'Alpha Centauri B', 'K-type main-sequence', 1700000000000000000000000000000, false, 1);
INSERT INTO public.star VALUES (4, 'Sirius', 'A-type main-sequence', 2020000000000000000000000000000, false, 3);
INSERT INTO public.star VALUES (5, 'Proxima Centauri', 'M-type main-sequence', 250000000000000000000000000000, false, 3);
INSERT INTO public.star VALUES (6, 'Betelgeuse', 'Red supergiant', 77000000000000000000000000000000, false, 2);


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 3, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: constellation constellation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_name_key UNIQUE (name);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


--
-- Name: constellation constellation_unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_unique_name UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique_name UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique_name UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: moon moon_haplanet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_haplanet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

