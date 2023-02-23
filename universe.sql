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
    name character varying(100) NOT NULL,
    constellation_body_code numeric,
    constellation_id integer NOT NULL,
    star_id integer
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
    name character varying(100) NOT NULL,
    galaxy_description text,
    celestial_body_code numeric,
    galaxy_type character varying(40),
    galaxy_id integer NOT NULL
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
    name character varying(100) NOT NULL,
    moon_description text,
    celestial_body_code numeric,
    landings integer,
    stable_orbit boolean,
    moon_id integer NOT NULL,
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
    name character varying(100) NOT NULL,
    planet_description text,
    celestial_body_code numeric,
    landings integer,
    ice_giant boolean NOT NULL,
    planet_id integer NOT NULL,
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
    name character varying(100) NOT NULL,
    star_description text,
    celestial_body_code numeric,
    star_type character varying(40),
    star_id integer NOT NULL,
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

INSERT INTO public.constellation VALUES ('Gilea', 55895, 7, 1);
INSERT INTO public.constellation VALUES ('Meruta', 55896, 8, 2);
INSERT INTO public.constellation VALUES ('Crounus', 55897, 9, 3);
INSERT INTO public.constellation VALUES ('Gilea', 55898, 10, 4);
INSERT INTO public.constellation VALUES ('Meruta', 55899, 11, 5);
INSERT INTO public.constellation VALUES ('Crounus', 55900, 12, 6);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Bob', 'Shaped like a teddy bear', 45984321347, 'Imaginary', 1);
INSERT INTO public.galaxy VALUES ('Sue', 'Cudlly like a cat', 649671328, 'Fake', 2);
INSERT INTO public.galaxy VALUES ('Milky Way', 'Looks like a chocolate bar', 8995457984, 'None', 3);
INSERT INTO public.galaxy VALUES ('Bossy Nuts', 'WHo knows', 4465885546, 'None', 4);
INSERT INTO public.galaxy VALUES ('Extra', 'Tries too hard', 88435115, 'Huh?', 5);
INSERT INTO public.galaxy VALUES ('Sharon', 'lives down the road and as big as a galaxy', 44, 'Fat', 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Ivion', 'Like a big pizza pie', 155491330, 0, true, 1, 1);
INSERT INTO public.moon VALUES ('Tahiri', 'Thats amore', 155491331, 2, false, 2, 2);
INSERT INTO public.moon VALUES ('Uter', 'Fake news', 155491332, 2, false, 3, 3);
INSERT INTO public.moon VALUES ('Amides', 'Buzz Aldrins head', 155491333, 0, true, 4, 4);
INSERT INTO public.moon VALUES ('Hion', 'Fossie bear', 155491334, 0, false, 5, 5);
INSERT INTO public.moon VALUES ('Punus', 'Super moon', 155491335, 5, false, 6, 6);
INSERT INTO public.moon VALUES ('Boxora', 'Trump wig', 155491336, 0, true, 7, 1);
INSERT INTO public.moon VALUES ('Lenia', 'Life supporting', 155491337, 0, false, 8, 3);
INSERT INTO public.moon VALUES ('Retreron', 'Life supporting', 155491338, 9, false, 9, 5);
INSERT INTO public.moon VALUES ('Tara', 'Icy', 155491339, 1, true, 10, 6);
INSERT INTO public.moon VALUES ('Olillon', 'Bare Rock', 155491340, 0, false, 11, 4);
INSERT INTO public.moon VALUES ('Baniri', 'Star Trek', 155491341, 0, false, 12, 2);
INSERT INTO public.moon VALUES ('Kilia', 'Like a big pizza pie', 155491342, 2, true, 13, 7);
INSERT INTO public.moon VALUES ('Akeon', 'Thats amore', 155491343, 1, false, 14, 8);
INSERT INTO public.moon VALUES ('Denides', 'Fake news', 155491344, 0, false, 15, 9);
INSERT INTO public.moon VALUES ('Ucarro', 'Buzz Aldrins head', 155491345, 0, true, 16, 10);
INSERT INTO public.moon VALUES ('Drilora', 'Fossie bear', 155491346, 0, false, 17, 11);
INSERT INTO public.moon VALUES ('Uruta', 'Super moon', 155491347, 3, false, 18, 12);
INSERT INTO public.moon VALUES ('Vyke', 'Trump wig', 155491348, 5, true, 19, 5);
INSERT INTO public.moon VALUES ('Ketera', 'Life supporting', 155491349, 6, false, 20, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Ibreon XII', 'Exoplanet', 155491318, 0, true, 1, 1);
INSERT INTO public.planet VALUES ('Tulia', 'Life supporting', 155491319, 0, false, 2, 2);
INSERT INTO public.planet VALUES ('Zexade', 'Life supporting', 155491320, 0, false, 3, 3);
INSERT INTO public.planet VALUES ('Iroria 7X', 'Icy', 155491321, 0, true, 4, 4);
INSERT INTO public.planet VALUES ('Udarvis', 'Bare Rock', 155491322, 0, false, 5, 5);
INSERT INTO public.planet VALUES ('Droutera 4IX', 'Star Trek', 155491323, 0, false, 6, 6);
INSERT INTO public.planet VALUES ('Igolla W8', 'Exoplanet', 155491324, 0, true, 7, 1);
INSERT INTO public.planet VALUES ('Estrade', 'Life supporting', 155491325, 0, false, 8, 3);
INSERT INTO public.planet VALUES ('Drehiri', 'Life supporting', 155491326, 0, false, 9, 5);
INSERT INTO public.planet VALUES ('Cothorix', 'Icy', 155491327, 0, true, 10, 6);
INSERT INTO public.planet VALUES ('Xelarvis', 'Bare Rock', 155491328, 0, false, 11, 4);
INSERT INTO public.planet VALUES ('Druinov', 'Star Trek', 155491329, 0, false, 12, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Nigel', 'Just a normal star', 155491312, 'Red Dwarf', 1, 1);
INSERT INTO public.star VALUES ('Nova', 'Bright like a diamond', 155491313, 'Pre-Nova', 2, 2);
INSERT INTO public.star VALUES ('Ressten', 'Sleepy', 155491314, 'White Dwarf', 3, 3);
INSERT INTO public.star VALUES ('Bollon', 'Round like a ball', 155491315, 'Ordinary', 4, 4);
INSERT INTO public.star VALUES ('Cocon', 'Somehow elongated', 155491316, 'Weird', 5, 5);
INSERT INTO public.star VALUES ('Dimple', 'Cute as hell', 155491317, 'Red Hobbit', 6, 6);


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 12, true);


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
-- Name: constellation constellation_constellation_body_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_constellation_body_code_key UNIQUE (constellation_body_code);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


--
-- Name: galaxy galaxy_celestial_body_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_celestial_body_code_key UNIQUE (celestial_body_code);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_celestial_body_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_celestial_body_code_key UNIQUE (celestial_body_code);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_celestial_body_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_celestial_body_code_key UNIQUE (celestial_body_code);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_celestial_body_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_celestial_body_code_key UNIQUE (celestial_body_code);


--
-- Name: star star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: constellation constellation_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


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


