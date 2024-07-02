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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    user_name character varying(22) NOT NULL
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

INSERT INTO public.games VALUES (737, 253, 666);
INSERT INTO public.games VALUES (738, 253, 288);
INSERT INTO public.games VALUES (739, 254, 838);
INSERT INTO public.games VALUES (740, 254, 618);
INSERT INTO public.games VALUES (741, 253, 534);
INSERT INTO public.games VALUES (742, 253, 773);
INSERT INTO public.games VALUES (743, 253, 433);
INSERT INTO public.games VALUES (744, 255, 733);
INSERT INTO public.games VALUES (745, 255, 509);
INSERT INTO public.games VALUES (746, 256, 744);
INSERT INTO public.games VALUES (747, 256, 33);
INSERT INTO public.games VALUES (748, 255, 678);
INSERT INTO public.games VALUES (749, 255, 946);
INSERT INTO public.games VALUES (750, 255, 518);
INSERT INTO public.games VALUES (751, 257, 174);
INSERT INTO public.games VALUES (752, 257, 495);
INSERT INTO public.games VALUES (753, 258, 866);
INSERT INTO public.games VALUES (754, 258, 912);
INSERT INTO public.games VALUES (755, 257, 908);
INSERT INTO public.games VALUES (756, 257, 879);
INSERT INTO public.games VALUES (757, 257, 115);
INSERT INTO public.games VALUES (758, 259, 409);
INSERT INTO public.games VALUES (759, 259, 316);
INSERT INTO public.games VALUES (760, 260, 154);
INSERT INTO public.games VALUES (761, 260, 570);
INSERT INTO public.games VALUES (762, 259, 284);
INSERT INTO public.games VALUES (763, 259, 976);
INSERT INTO public.games VALUES (764, 259, 828);
INSERT INTO public.games VALUES (765, 261, 130);
INSERT INTO public.games VALUES (766, 261, 856);
INSERT INTO public.games VALUES (767, 262, 545);
INSERT INTO public.games VALUES (768, 262, 541);
INSERT INTO public.games VALUES (769, 261, 958);
INSERT INTO public.games VALUES (770, 261, 908);
INSERT INTO public.games VALUES (771, 261, 43);
INSERT INTO public.games VALUES (772, 263, 8);
INSERT INTO public.games VALUES (773, 263, 893);
INSERT INTO public.games VALUES (774, 264, 592);
INSERT INTO public.games VALUES (775, 264, 979);
INSERT INTO public.games VALUES (776, 263, 577);
INSERT INTO public.games VALUES (777, 263, 599);
INSERT INTO public.games VALUES (778, 263, 991);
INSERT INTO public.games VALUES (779, 265, 800);
INSERT INTO public.games VALUES (780, 265, 143);
INSERT INTO public.games VALUES (781, 266, 839);
INSERT INTO public.games VALUES (782, 266, 806);
INSERT INTO public.games VALUES (783, 265, 314);
INSERT INTO public.games VALUES (784, 265, 296);
INSERT INTO public.games VALUES (785, 265, 426);
INSERT INTO public.games VALUES (786, 267, 385);
INSERT INTO public.games VALUES (787, 267, 934);
INSERT INTO public.games VALUES (788, 268, 501);
INSERT INTO public.games VALUES (789, 268, 294);
INSERT INTO public.games VALUES (790, 267, 699);
INSERT INTO public.games VALUES (791, 267, 880);
INSERT INTO public.games VALUES (792, 267, 807);
INSERT INTO public.games VALUES (793, 269, 986);
INSERT INTO public.games VALUES (794, 269, 762);
INSERT INTO public.games VALUES (795, 270, 720);
INSERT INTO public.games VALUES (796, 270, 572);
INSERT INTO public.games VALUES (797, 269, 289);
INSERT INTO public.games VALUES (798, 269, 256);
INSERT INTO public.games VALUES (799, 269, 475);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (253, 'user_1719950782151');
INSERT INTO public.users VALUES (254, 'user_1719950782150');
INSERT INTO public.users VALUES (255, 'user_1719950812969');
INSERT INTO public.users VALUES (256, 'user_1719950812968');
INSERT INTO public.users VALUES (257, 'user_1719951046529');
INSERT INTO public.users VALUES (258, 'user_1719951046528');
INSERT INTO public.users VALUES (259, 'user_1719951415299');
INSERT INTO public.users VALUES (260, 'user_1719951415298');
INSERT INTO public.users VALUES (261, 'user_1719951545878');
INSERT INTO public.users VALUES (262, 'user_1719951545877');
INSERT INTO public.users VALUES (263, 'user_1719951564271');
INSERT INTO public.users VALUES (264, 'user_1719951564270');
INSERT INTO public.users VALUES (265, 'user_1719951581661');
INSERT INTO public.users VALUES (266, 'user_1719951581660');
INSERT INTO public.users VALUES (267, 'user_1719951596828');
INSERT INTO public.users VALUES (268, 'user_1719951596827');
INSERT INTO public.users VALUES (269, 'user_1719951622183');
INSERT INTO public.users VALUES (270, 'user_1719951622182');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 799, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 270, true);


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
-- Name: users users_user_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_user_name_key UNIQUE (user_name);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--


