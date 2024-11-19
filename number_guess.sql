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

DROP DATABASE guessing_game;
--
-- Name: guessing_game; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE guessing_game WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE guessing_game OWNER TO freecodecamp;

\connect guessing_game

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    guesses integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22)
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 8, 9);
INSERT INTO public.games VALUES (2, 9, 573);
INSERT INTO public.games VALUES (3, 9, 474);
INSERT INTO public.games VALUES (4, 10, 182);
INSERT INTO public.games VALUES (5, 10, 96);
INSERT INTO public.games VALUES (6, 9, 962);
INSERT INTO public.games VALUES (7, 9, 354);
INSERT INTO public.games VALUES (8, 9, 65);
INSERT INTO public.games VALUES (9, 11, 762);
INSERT INTO public.games VALUES (10, 11, 535);
INSERT INTO public.games VALUES (11, 12, 319);
INSERT INTO public.games VALUES (12, 12, 25);
INSERT INTO public.games VALUES (13, 11, 82);
INSERT INTO public.games VALUES (14, 11, 806);
INSERT INTO public.games VALUES (15, 11, 348);
INSERT INTO public.games VALUES (16, 13, 18);
INSERT INTO public.games VALUES (17, 13, 598);
INSERT INTO public.games VALUES (18, 14, 808);
INSERT INTO public.games VALUES (19, 14, 2);
INSERT INTO public.games VALUES (20, 13, 460);
INSERT INTO public.games VALUES (21, 13, 816);
INSERT INTO public.games VALUES (22, 13, 35);
INSERT INTO public.games VALUES (23, 8, 19);
INSERT INTO public.games VALUES (24, 15, 300);
INSERT INTO public.games VALUES (25, 15, 571);
INSERT INTO public.games VALUES (26, 16, 504);
INSERT INTO public.games VALUES (27, 16, 752);
INSERT INTO public.games VALUES (28, 15, 453);
INSERT INTO public.games VALUES (29, 15, 841);
INSERT INTO public.games VALUES (30, 15, 793);
INSERT INTO public.games VALUES (31, 17, 320);
INSERT INTO public.games VALUES (32, 17, 135);
INSERT INTO public.games VALUES (33, 18, 832);
INSERT INTO public.games VALUES (34, 18, 932);
INSERT INTO public.games VALUES (35, 17, 181);
INSERT INTO public.games VALUES (36, 17, 151);
INSERT INTO public.games VALUES (37, 17, 390);
INSERT INTO public.games VALUES (38, 19, 60);
INSERT INTO public.games VALUES (39, 19, 186);
INSERT INTO public.games VALUES (40, 20, 152);
INSERT INTO public.games VALUES (41, 20, 804);
INSERT INTO public.games VALUES (42, 19, 587);
INSERT INTO public.games VALUES (43, 19, 361);
INSERT INTO public.games VALUES (44, 19, 702);
INSERT INTO public.games VALUES (45, 21, 253);
INSERT INTO public.games VALUES (46, 21, 801);
INSERT INTO public.games VALUES (47, 22, 662);
INSERT INTO public.games VALUES (48, 22, 263);
INSERT INTO public.games VALUES (49, 21, 315);
INSERT INTO public.games VALUES (50, 21, 543);
INSERT INTO public.games VALUES (51, 21, 684);
INSERT INTO public.games VALUES (52, 23, 240);
INSERT INTO public.games VALUES (53, 23, 554);
INSERT INTO public.games VALUES (54, 24, 334);
INSERT INTO public.games VALUES (55, 24, 476);
INSERT INTO public.games VALUES (56, 23, 54);
INSERT INTO public.games VALUES (57, 23, 346);
INSERT INTO public.games VALUES (58, 23, 905);
INSERT INTO public.games VALUES (59, 25, 527);
INSERT INTO public.games VALUES (60, 25, 314);
INSERT INTO public.games VALUES (61, 26, 529);
INSERT INTO public.games VALUES (62, 26, 337);
INSERT INTO public.games VALUES (63, 25, 471);
INSERT INTO public.games VALUES (64, 25, 61);
INSERT INTO public.games VALUES (65, 25, 130);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (8, 'Carlos');
INSERT INTO public.users VALUES (9, 'user_1731891089307');
INSERT INTO public.users VALUES (10, 'user_1731891089306');
INSERT INTO public.users VALUES (11, 'user_1731891097708');
INSERT INTO public.users VALUES (12, 'user_1731891097707');
INSERT INTO public.users VALUES (13, 'user_1731891245290');
INSERT INTO public.users VALUES (14, 'user_1731891245289');
INSERT INTO public.users VALUES (15, 'user_1731891391238');
INSERT INTO public.users VALUES (16, 'user_1731891391237');
INSERT INTO public.users VALUES (17, 'user_1731891676510');
INSERT INTO public.users VALUES (18, 'user_1731891676509');
INSERT INTO public.users VALUES (19, 'user_1731891779755');
INSERT INTO public.users VALUES (20, 'user_1731891779754');
INSERT INTO public.users VALUES (21, 'user_1731891822758');
INSERT INTO public.users VALUES (22, 'user_1731891822757');
INSERT INTO public.users VALUES (23, 'user_1731892162265');
INSERT INTO public.users VALUES (24, 'user_1731892162264');
INSERT INTO public.users VALUES (25, 'user_1731892279293');
INSERT INTO public.users VALUES (26, 'user_1731892279292');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 65, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 26, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games fk_user_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

