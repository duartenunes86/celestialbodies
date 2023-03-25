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
-- Name: constelation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constelation (
    constelation_id integer NOT NULL,
    name character varying(30) NOT NULL,
    number_of_stars integer
);


ALTER TABLE public.constelation OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    age_in_millions_of_years numeric,
    distance_from_earth integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    age_in_millions_of_years numeric,
    distance_from_earth integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    age_in_millions_of_years numeric,
    distance_from_earth integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    age_in_millions_of_years numeric,
    distance_from_earth integer,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: constelation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constelation VALUES (1, 'Orion', NULL);
INSERT INTO public.constelation VALUES (2, 'Ursa Major', NULL);
INSERT INTO public.constelation VALUES (3, 'Scorpius', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Via Lactea', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Whirlpool', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Large', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Triangle', NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'Metis', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (3, 'Adrastea', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (4, 'Amalthea', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (5, 'Thebe', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (6, 'Io', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (7, 'Europa', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (8, 'Ganymede', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (9, 'Callisto', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (10, 'Themisto', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (11, 'Leda', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (12, 'Himalia', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (13, 'Lysithea', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (14, 'Eladia', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (15, 'Dia', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (16, 'Carpo', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (17, 'S/2003 J12', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (18, 'Euporie', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (19, 'S/2003 J3', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (20, 'Valetudo', NULL, NULL, NULL, NULL, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'Mercury', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (3, 'Venus', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (4, 'Mars', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri b', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (11, 'Wasp-17 b', NULL, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (12, '51 Pegasi b', NULL, NULL, NULL, NULL, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'Centauri', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (3, 'Bernard', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (4, 'WASP-17', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (5, '51 Pegasi', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (6, 'Sirius', NULL, NULL, NULL, NULL, 1);


--
-- Name: constelation constelation_constelation_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constelation
    ADD CONSTRAINT constelation_constelation_id_key UNIQUE (constelation_id);


--
-- Name: constelation constelation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constelation
    ADD CONSTRAINT constelation_pkey PRIMARY KEY (constelation_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


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
-- PostgreSQL database dump complete
--

