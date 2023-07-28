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

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(255) NOT NULL,
    abbreviation character varying(10) NOT NULL,
    location text,
    no_of_stars integer
);

ALTER TABLE public.constellation OWNER TO freecodecamp;

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;

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

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    type character varying(100),
    size numeric,
    has_atmosphere boolean NOT NULL,
    planet_id integer
);

ALTER TABLE public.moon OWNER TO freecodecamp;

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    type character varying(100),
    mass numeric,
    has_water boolean NOT NULL,
    star_id integer
);

ALTER TABLE public.planet OWNER TO freecodecamp;

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    type character varying(100),
    mass numeric,
    is_supernova boolean NOT NULL,
    galaxy_id integer
);

ALTER TABLE public.star OWNER TO freecodecamp;

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;

INSERT INTO public.constellation VALUES (1, 'Orion', 'Ori', 'Celestial Equator', 7);
INSERT INTO public.constellation VALUES (2, 'Leo', 'Leo', 'Celestial Equator', 5);
INSERT INTO public.constellation VALUES (3, 'Crux', 'Cru', 'Southern Hemisphere', 5);

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our Home Galaxy', 100000, true, 26000, 13000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral Galaxy', 120000, false, 2200000, 14000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Small Galaxy', 20000, false, 30000000, 12000);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 'Interacting Galaxy', 5000, true, 2300000, 11000);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'Edge-on Galaxy', 40000, false, 290000, 15000);
INSERT INTO public.galaxy VALUES (6, 'Cartwheel', 'Ring Galaxy', 35000, true, 2500000, 16000);

INSERT INTO public.moon VALUES (1, 'Moon', 'Terrestrial', 73400000000000000000000, false, 1);
INSERT INTO public
