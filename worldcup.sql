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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    game_id integer NOT NULL,
    round character varying(20) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(20) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (2018, 33, 'Final', 4, 2, 88, 89);
INSERT INTO public.games VALUES (2018, 34, 'Third Place', 2, 0, 90, 91);
INSERT INTO public.games VALUES (2018, 35, 'Semi-Final', 2, 1, 89, 91);
INSERT INTO public.games VALUES (2018, 36, 'Semi-Final', 1, 0, 88, 90);
INSERT INTO public.games VALUES (2018, 37, 'Quarter-Final', 3, 2, 89, 92);
INSERT INTO public.games VALUES (2018, 38, 'Quarter-Final', 2, 0, 91, 93);
INSERT INTO public.games VALUES (2018, 39, 'Quarter-Final', 2, 1, 90, 94);
INSERT INTO public.games VALUES (2018, 40, 'Quarter-Final', 2, 0, 88, 95);
INSERT INTO public.games VALUES (2018, 41, 'Eighth-Final', 2, 1, 91, 96);
INSERT INTO public.games VALUES (2018, 42, 'Eighth-Final', 1, 0, 93, 97);
INSERT INTO public.games VALUES (2018, 43, 'Eighth-Final', 3, 2, 90, 98);
INSERT INTO public.games VALUES (2018, 44, 'Eighth-Final', 2, 0, 94, 99);
INSERT INTO public.games VALUES (2018, 45, 'Eighth-Final', 2, 1, 89, 100);
INSERT INTO public.games VALUES (2018, 46, 'Eighth-Final', 2, 1, 92, 101);
INSERT INTO public.games VALUES (2018, 47, 'Eighth-Final', 2, 1, 95, 102);
INSERT INTO public.games VALUES (2018, 48, 'Eighth-Final', 4, 3, 88, 103);
INSERT INTO public.games VALUES (2014, 49, 'Final', 1, 0, 104, 103);
INSERT INTO public.games VALUES (2014, 50, 'Third Place', 3, 0, 105, 94);
INSERT INTO public.games VALUES (2014, 51, 'Semi-Final', 1, 0, 103, 105);
INSERT INTO public.games VALUES (2014, 52, 'Semi-Final', 7, 1, 104, 94);
INSERT INTO public.games VALUES (2014, 53, 'Quarter-Final', 1, 0, 105, 106);
INSERT INTO public.games VALUES (2014, 54, 'Quarter-Final', 1, 0, 103, 90);
INSERT INTO public.games VALUES (2014, 55, 'Quarter-Final', 2, 1, 94, 96);
INSERT INTO public.games VALUES (2014, 56, 'Quarter-Final', 1, 0, 104, 88);
INSERT INTO public.games VALUES (2014, 57, 'Eighth-Final', 2, 1, 94, 107);
INSERT INTO public.games VALUES (2014, 58, 'Eighth-Final', 2, 0, 96, 95);
INSERT INTO public.games VALUES (2014, 59, 'Eighth-Final', 2, 0, 88, 108);
INSERT INTO public.games VALUES (2014, 60, 'Eighth-Final', 2, 1, 104, 109);
INSERT INTO public.games VALUES (2014, 61, 'Eighth-Final', 2, 1, 105, 99);
INSERT INTO public.games VALUES (2014, 62, 'Eighth-Final', 2, 1, 106, 110);
INSERT INTO public.games VALUES (2014, 63, 'Eighth-Final', 1, 0, 103, 97);
INSERT INTO public.games VALUES (2014, 64, 'Eighth-Final', 2, 1, 90, 111);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (88, 'France');
INSERT INTO public.teams VALUES (89, 'Croatia');
INSERT INTO public.teams VALUES (90, 'Belgium');
INSERT INTO public.teams VALUES (91, 'England');
INSERT INTO public.teams VALUES (92, 'Russia');
INSERT INTO public.teams VALUES (93, 'Sweden');
INSERT INTO public.teams VALUES (94, 'Brazil');
INSERT INTO public.teams VALUES (95, 'Uruguay');
INSERT INTO public.teams VALUES (96, 'Colombia');
INSERT INTO public.teams VALUES (97, 'Switzerland');
INSERT INTO public.teams VALUES (98, 'Japan');
INSERT INTO public.teams VALUES (99, 'Mexico');
INSERT INTO public.teams VALUES (100, 'Denmark');
INSERT INTO public.teams VALUES (101, 'Spain');
INSERT INTO public.teams VALUES (102, 'Portugal');
INSERT INTO public.teams VALUES (103, 'Argentina');
INSERT INTO public.teams VALUES (104, 'Germany');
INSERT INTO public.teams VALUES (105, 'Netherlands');
INSERT INTO public.teams VALUES (106, 'Costa Rica');
INSERT INTO public.teams VALUES (107, 'Chile');
INSERT INTO public.teams VALUES (108, 'Nigeria');
INSERT INTO public.teams VALUES (109, 'Algeria');
INSERT INTO public.teams VALUES (110, 'Greece');
INSERT INTO public.teams VALUES (111, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 64, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 111, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

