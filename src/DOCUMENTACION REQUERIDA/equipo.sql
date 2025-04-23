--
-- PostgreSQL database cluster dump
--

-- Started on 2025-04-22 20:42:04

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.8
-- Dumped by pg_dump version 17.2

-- Started on 2025-04-22 20:42:04

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

-- Completed on 2025-04-22 20:42:11

--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

\connect postgres

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.8
-- Dumped by pg_dump version 17.2

-- Started on 2025-04-22 20:42:11

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 3854 (class 0 OID 16519)
-- Dependencies: 260
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY auth.audit_log_entries (instance_id, id, payload, created_at, ip_address) FROM stdin;
\.


--
-- TOC entry 3868 (class 0 OID 16907)
-- Dependencies: 277
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY auth.flow_state (id, user_id, auth_code, code_challenge_method, code_challenge, provider_type, provider_access_token, provider_refresh_token, created_at, updated_at, authentication_method, auth_code_issued_at) FROM stdin;
\.


--
-- TOC entry 3850 (class 0 OID 16489)
-- Dependencies: 256
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, invited_at, confirmation_token, confirmation_sent_at, recovery_token, recovery_sent_at, email_change_token_new, email_change, email_change_sent_at, last_sign_in_at, raw_app_meta_data, raw_user_meta_data, is_super_admin, created_at, updated_at, phone, phone_confirmed_at, phone_change, phone_change_token, phone_change_sent_at, email_change_token_current, email_change_confirm_status, banned_until, reauthentication_token, reauthentication_sent_at, is_sso_user, deleted_at, is_anonymous) FROM stdin;
\.


--
-- TOC entry 3859 (class 0 OID 16704)
-- Dependencies: 268
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY auth.identities (provider_id, user_id, identity_data, provider, last_sign_in_at, created_at, updated_at, id) FROM stdin;
\.


--
-- TOC entry 3853 (class 0 OID 16512)
-- Dependencies: 259
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY auth.instances (id, uuid, raw_base_config, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3860 (class 0 OID 16734)
-- Dependencies: 269
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY auth.sessions (id, user_id, created_at, updated_at, factor_id, aal, not_after, refreshed_at, user_agent, ip, tag) FROM stdin;
\.


--
-- TOC entry 3863 (class 0 OID 16794)
-- Dependencies: 272
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY auth.mfa_amr_claims (session_id, created_at, updated_at, authentication_method, id) FROM stdin;
\.


--
-- TOC entry 3861 (class 0 OID 16769)
-- Dependencies: 270
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY auth.mfa_factors (id, user_id, friendly_name, factor_type, status, created_at, updated_at, secret, phone, last_challenged_at, web_authn_credential, web_authn_aaguid) FROM stdin;
\.


--
-- TOC entry 3862 (class 0 OID 16782)
-- Dependencies: 271
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY auth.mfa_challenges (id, factor_id, created_at, verified_at, ip_address, otp_code, web_authn_session_data) FROM stdin;
\.


--
-- TOC entry 3869 (class 0 OID 16957)
-- Dependencies: 278
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY auth.one_time_tokens (id, user_id, token_type, token_hash, relates_to, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3852 (class 0 OID 16501)
-- Dependencies: 258
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY auth.refresh_tokens (instance_id, id, token, user_id, revoked, created_at, updated_at, parent, session_id) FROM stdin;
\.


--
-- TOC entry 3864 (class 0 OID 16812)
-- Dependencies: 273
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY auth.sso_providers (id, resource_id, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3866 (class 0 OID 16836)
-- Dependencies: 275
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY auth.saml_providers (id, sso_provider_id, entity_id, metadata_xml, metadata_url, attribute_mapping, created_at, updated_at, name_id_format) FROM stdin;
\.


--
-- TOC entry 3867 (class 0 OID 16854)
-- Dependencies: 276
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY auth.saml_relay_states (id, sso_provider_id, request_id, for_email, redirect_to, created_at, updated_at, flow_state_id) FROM stdin;
\.


--
-- TOC entry 3855 (class 0 OID 16527)
-- Dependencies: 261
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY auth.schema_migrations (version) FROM stdin;
20171026211738
20171026211808
20171026211834
20180103212743
20180108183307
20180119214651
20180125194653
00
20210710035447
20210722035447
20210730183235
20210909172000
20210927181326
20211122151130
20211124214934
20211202183645
20220114185221
20220114185340
20220224000811
20220323170000
20220429102000
20220531120530
20220614074223
20220811173540
20221003041349
20221003041400
20221011041400
20221020193600
20221021073300
20221021082433
20221027105023
20221114143122
20221114143410
20221125140132
20221208132122
20221215195500
20221215195800
20221215195900
20230116124310
20230116124412
20230131181311
20230322519590
20230402418590
20230411005111
20230508135423
20230523124323
20230818113222
20230914180801
20231027141322
20231114161723
20231117164230
20240115144230
20240214120130
20240306115329
20240314092811
20240427152123
20240612123726
20240729123726
20240802193726
20240806073726
20241009103726
\.


--
-- TOC entry 3865 (class 0 OID 16821)
-- Dependencies: 274
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY auth.sso_domains (id, sso_provider_id, domain, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3878 (class 0 OID 17363)
-- Dependencies: 291
-- Data for Name: equipo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.equipo (id_equipo, ciudad, fundacion, nombre) FROM stdin;
1	Bogotá	1941-02-28	Santa Fe
2	Medellín	1947-03-07	Atlético Nacional
3	Cali	1927-12-13	América de Cali
4	Barranquilla	1924-08-10	Junior FC
5	Cartagena	1971-01-15	Real Cartagena
6	Bucaramanga	1949-11-01	Atlético Bucaramanga
7	Cúcuta	1924-10-10	Cúcuta Deportivo
8	Pereira	1944-03-12	Deportivo Pereira
9	Manizales	1961-04-16	Once Caldas
10	Neiva	1990-06-29	Atlético Huila
11	Bogotá	1946-06-18	Millonarios FC
\.


--
-- TOC entry 3876 (class 0 OID 17355)
-- Dependencies: 289
-- Data for Name: entrenador; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.entrenador (id_entrenador, especialidad, nombre, id_equipo) FROM stdin;
1	Táctico	Pablo Sánchez	1
2	Ofensivo	Hernán Darío Herrera	2
3	Defensivo	Juan Carlos Osorio	3
4	Formativo	Arturo Reyes	4
5	Físico	Luis Fernando Suárez	5
6	Estratégico	Alberto Gamero	6
7	Táctico	Juan Cruz Real	7
8	Ofensivo	Jorge Luis Pinto	8
9	Defensivo	Leonel Álvarez	9
10	Formativo	Alexis García	10
11	Estratégico	Gustavo Alfaro	11
\.


--
-- TOC entry 3882 (class 0 OID 17377)
-- Dependencies: 295
-- Data for Name: jugador; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jugador (id_jugador, dorsal, fecha_nac, nacionalidad, nombre, posicion, id_equipo) FROM stdin;
1	1	1990-05-15	Colombiano	Carlos Sánchez	Portero	1
2	5	1992-08-21	Colombiano	Juan Pérez	Defensa	1
3	10	1995-03-12	Argentino	Martín Rodríguez	Mediocampista	1
4	9	1991-11-10	Colombiano	Daniel Torres	Delantero	1
5	4	1993-01-05	Colombiano	Oscar Murillo	Defensa	1
6	6	1994-07-08	Colombiano	Nicolás Hernández	Defensa	1
7	7	1992-09-17	Colombiano	Yulián Anchico	Mediocampista	1
8	11	1993-12-03	Colombiano	Jhon Arias	Delantero	1
9	2	1990-02-22	Colombiano	Andrés Roa	Defensa	1
10	3	1991-06-16	Colombiano	Kevin Salazar	Mediocampista	1
11	8	1994-04-19	Colombiano	Luis Seijas	Mediocampista	1
12	1	1992-03-14	Colombiano	Aldair Quintana	Portero	2
13	6	1991-05-18	Colombiano	Felipe Aguilar	Defensa	2
14	10	1993-09-07	Colombiano	Sebastián Gómez	Mediocampista	2
15	9	1995-07-12	Colombiano	Jefferson Duque	Delantero	2
16	3	1994-02-03	Uruguayo	Emilio Zeballos	Defensa	2
17	5	1996-10-01	Colombiano	Danovis Banguero	Defensa	2
18	2	1990-06-27	Colombiano	Jarlan Barrera	Mediocampista	2
19	4	1992-11-09	Colombiano	Andrés Andrade	Mediocampista	2
20	7	1993-08-25	Colombiano	Dorlan Pabón	Delantero	2
21	8	1991-01-20	Colombiano	Cristian Zapata	Defensa	2
22	11	1994-12-30	Colombiano	Nelson Palacio	Delantero	2
23	1	1989-09-30	Colombiano	Luis Ospina	Portero	3
24	11	1996-04-14	Brasileño	Rafael Silva	Delantero	3
25	5	1993-12-10	Colombiano	Daniel Muñoz	Defensa	3
26	6	1990-01-18	Colombiano	Juan Camilo Angulo	Defensa	3
27	2	1995-03-03	Colombiano	Yesus Cabrera	Mediocampista	3
28	8	1992-07-22	Colombiano	Carlos Sierra	Mediocampista	3
29	4	1991-04-10	Colombiano	Adrián Ramos	Delantero	3
30	3	1994-10-05	Argentino	Juan Pablo Segovia	Defensa	3
31	9	1993-02-28	Colombiano	Duván Vergara	Delantero	3
32	7	1990-08-06	Colombiano	Luis Paz	Mediocampista	3
33	10	1996-06-17	Colombiano	Rodrigo Ureña	Mediocampista	3
34	1	1991-10-30	Colombiano	Sebastián Viera	Portero	4
35	10	1994-08-03	Colombiano	Freddy Hinestroza	Mediocampista	4
36	9	1997-01-22	Venezolano	José Martínez	Delantero	4
37	3	1992-06-17	Colombiano	Miguel Ángel	Defensa	4
38	4	1995-05-24	Colombiano	Germán Gutiérrez	Defensa	4
39	6	1993-07-15	Colombiano	Luis Sandoval	Mediocampista	4
40	2	1994-02-12	Colombiano	Fabián Sambueza	Mediocampista	4
41	5	1990-09-09	Colombiano	Edwuin Cetré	Delantero	4
42	7	1991-11-25	Colombiano	Carmelo Valencia	Delantero	4
43	11	1992-01-07	Colombiano	Larry Vásquez	Mediocampista	4
44	8	1996-10-11	Colombiano	Daniel Giraldo	Defensa	4
45	1	1991-03-28	Colombiano	Roberto Díaz	Portero	5
46	7	1995-09-11	Colombiano	Javier Castro	Mediocampista	5
47	9	1998-05-20	Ecuatoriano	Enner Valencia	Delantero	5
48	4	1993-02-17	Colombiano	Mario Rodríguez	Defensa	5
49	6	1990-07-29	Colombiano	Camilo Cárdenas	Defensa	5
50	11	1996-11-13	Colombiano	Alex Mejía	Mediocampista	5
51	2	1994-10-06	Colombiano	Héctor Pérez	Mediocampista	5
52	3	1992-06-25	Colombiano	John Valencia	Defensa	5
53	8	1993-12-30	Colombiano	Cristian Díaz	Mediocampista	5
54	5	1995-01-19	Colombiano	Pedro Ríos	Defensa	5
55	10	1997-08-08	Colombiano	Jonathan Álvarez	Delantero	5
56	1	1992-04-04	Colombiano	Carlos Henao	Portero	6
57	5	1993-07-14	Paraguayo	José Ortigoza	Defensa	6
58	11	1997-04-08	Colombiano	Santiago Montoya	Delantero	6
59	3	1991-10-18	Colombiano	Brayan Fernández	Defensa	6
60	8	1996-09-09	Colombiano	Germán Gutiérrez	Mediocampista	6
61	9	1995-05-22	Colombiano	Harrison Mojica	Delantero	6
62	2	1990-01-10	Colombiano	Julián Guevara	Defensa	6
63	4	1993-06-07	Colombiano	Stiven Mendoza	Mediocampista	6
64	6	1992-08-30	Colombiano	Félix Micolta	Defensa	6
65	7	1994-03-13	Colombiano	Cristian Subero	Mediocampista	6
66	10	1996-11-21	Colombiano	Jhon Pérez	Delantero	6
67	1	1992-02-13	Colombiano	Jorge Rojas	Portero	7
68	5	1994-10-05	Colombiano	David Gómez	Defensa	7
69	10	1997-03-18	Argentino	Lucas González	Mediocampista	7
70	6	1993-12-30	Colombiano	Éder Álvarez	Defensa	7
71	8	1996-04-29	Colombiano	Carlos Ramírez	Mediocampista	7
72	2	1990-11-20	Colombiano	Julián Rojas	Defensa	7
73	3	1992-01-09	Colombiano	Hernán López	Defensa	7
74	7	1991-08-17	Colombiano	Javier Reina	Mediocampista	7
75	9	1994-06-23	Colombiano	Cristian Mafla	Delantero	7
76	4	1995-07-01	Colombiano	Manuel González	Mediocampista	7
77	11	1993-10-27	Colombiano	Harold Gómez	Delantero	7
78	1	1994-09-06	Colombiano	Andrés Mosquera	Portero	8
79	6	1993-12-12	Uruguayo	Federico López	Mediocampista	8
80	2	1991-08-19	Colombiano	Juan Moreno	Defensa	8
81	5	1996-03-17	Colombiano	Luis Rojas	Defensa	8
82	7	1995-10-14	Colombiano	Santiago Rivas	Mediocampista	8
83	10	1994-11-28	Colombiano	Cristian Arango	Delantero	8
84	9	1995-06-30	Colombiano	Andrés Ramírez	Delantero	8
85	8	1996-08-09	Colombiano	Diego Arias	Defensa	8
86	4	1993-02-15	Colombiano	Carlos Díaz	Mediocampista	8
87	3	1992-12-02	Colombiano	Julián Zea	Defensa	8
88	11	1990-07-05	Colombiano	Wilfrido de la Rosa	Delantero	8
89	1	1990-04-24	Colombiano	Fernando Montes	Portero	9
90	7	1996-01-15	Colombiano	Camilo Vargas	Mediocampista	9
91	11	1998-07-07	Peruano	Paolo Guerrero	Delantero	9
92	5	1992-03-19	Colombiano	Johan Arango	Defensa	9
93	4	1991-06-06	Colombiano	David Lemos	Mediocampista	9
94	2	1993-08-31	Colombiano	Luis Miranda	Defensa	9
95	3	1990-10-10	Colombiano	Carlos Núñez	Defensa	9
96	6	1995-12-25	Colombiano	Juan David Rodríguez	Mediocampista	9
97	10	1994-01-12	Colombiano	José Valencia	Delantero	9
98	8	1996-09-19	Colombiano	Elkin Soto	Mediocampista	9
99	9	1997-05-11	Colombiano	Luis Carlos Arias	Delantero	9
100	1	1994-05-09	Colombiano	Andrés Escobar	Portero	10
101	8	1995-11-23	Boliviano	Marcelo Martins	Mediocampista	10
102	9	1997-08-16	Colombiano	Miguel Borja	Delantero	10
103	4	1992-03-27	Colombiano	Carlos Mosquera	Defensa	10
104	6	1993-06-11	Colombiano	Cristian Higuita	Mediocampista	10
105	11	1990-01-16	Colombiano	Wilmar Barrios	Delantero	10
106	2	1994-09-30	Colombiano	Kevin Riascos	Defensa	10
107	5	1991-12-24	Colombiano	Fabián Castillo	Defensa	10
108	10	1996-07-27	Colombiano	José Enamorado	Mediocampista	10
109	7	1992-10-14	Colombiano	Brayan Perea	Mediocampista	10
110	3	1995-03-30	Colombiano	Michael Ortega	Defensa	10
111	1	1991-10-04	Colombiano	David Ospina	Portero	11
112	5	1993-03-29	Colombiano	Carlos Vargas	Defensa	11
113	10	1996-12-08	Argentino	Juan Quintero	Mediocampista	11
114	7	1990-05-05	Colombiano	Andrés Llinás	Mediocampista	11
115	9	1994-01-14	Colombiano	Diego Abadía	Delantero	11
116	3	1992-07-02	Colombiano	Elvis Perlaza	Defensa	11
117	2	1995-06-08	Colombiano	Jorge Arias	Defensa	11
118	6	1991-09-03	Colombiano	Larry Vásquez	Mediocampista	11
119	11	1996-11-17	Colombiano	Yuber Quiñones	Delantero	11
120	4	1993-08-26	Colombiano	Stiven Vega	Mediocampista	11
121	8	1997-12-15	Colombiano	Fernando Uribe	Delantero	11
\.


--
-- TOC entry 3884 (class 0 OID 17385)
-- Dependencies: 297
-- Data for Name: partido; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.partido (id_partido, estadio, fecha, goles_local, goles_visita, equipo_local, equipo_visita) FROM stdin;
1	El Campín	2025-01-15	2	1	1	2
2	Atanasio Girardot	2025-01-20	3	0	2	3
3	Pascual Guerrero	2025-01-25	1	1	3	4
4	Metropolitano	2025-01-30	0	2	4	5
5	Jaime Morón León	2025-02-04	2	2	5	6
6	Alfonso López	2025-02-09	1	0	6	7
7	General Santander	2025-02-14	0	3	7	8
8	Hernán Ramírez Villegas	2025-02-19	1	1	8	9
9	Palogrande	2025-02-24	2	1	9	10
10	Guillermo Plazas Alcid	2025-03-01	0	2	10	11
11	El Campín	2025-03-06	1	1	11	1
12	Atanasio Girardot	2025-03-11	2	0	2	4
13	Pascual Guerrero	2025-03-16	0	0	3	5
14	Metropolitano	2025-03-21	3	1	4	6
15	Jaime Morón León	2025-03-26	1	2	5	7
16	Alfonso López	2025-03-31	2	2	6	8
17	General Santander	2025-04-05	1	1	7	9
18	Hernán Ramírez Villegas	2025-04-10	2	0	8	10
19	Palogrande	2025-04-15	0	1	9	11
20	Guillermo Plazas Alcid	2025-04-20	1	3	10	1
21	\N	2025-04-23	0	4	11	1
22	\N	2025-04-24	2	0	1	2
23	\N	2025-04-25	0	3	2	3
24	\N	2025-04-26	4	4	3	4
25	\N	2025-04-27	4	1	4	5
26	\N	2025-04-28	3	3	5	6
27	\N	2025-04-29	4	2	6	7
28	\N	2025-04-30	1	0	7	8
29	\N	2025-05-01	1	0	8	9
30	\N	2025-05-02	4	2	9	10
31	\N	2025-05-03	0	0	10	11
32	\N	2025-05-04	3	1	11	1
33	\N	2025-05-05	4	4	1	2
34	\N	2025-05-06	4	3	2	3
35	\N	2025-05-07	1	4	3	4
36	\N	2025-05-08	0	0	4	5
37	\N	2025-05-09	4	0	5	6
38	\N	2025-05-10	3	3	6	7
39	\N	2025-05-11	4	0	7	8
40	\N	2025-05-12	4	3	8	9
41	\N	2025-05-13	4	3	9	10
42	\N	2025-05-14	2	4	10	11
43	\N	2025-05-15	0	0	11	1
44	\N	2025-05-16	0	0	1	2
45	\N	2025-05-17	3	0	2	3
46	\N	2025-05-18	1	4	3	4
47	\N	2025-05-19	3	4	4	5
48	\N	2025-05-20	2	1	5	6
49	\N	2025-05-21	0	4	6	7
50	\N	2025-05-22	2	2	7	8
51	\N	2025-05-23	4	3	8	9
52	\N	2025-05-24	3	0	9	10
53	\N	2025-05-25	3	4	10	11
54	\N	2025-05-26	4	4	11	1
55	\N	2025-05-27	4	2	1	2
56	\N	2025-05-28	4	0	2	3
57	\N	2025-05-29	0	2	3	4
58	\N	2025-05-30	2	4	4	5
59	\N	2025-05-31	0	3	5	6
60	\N	2025-06-01	2	4	6	7
61	\N	2025-06-02	4	1	7	8
62	\N	2025-06-03	2	4	8	9
63	\N	2025-06-04	1	4	9	10
64	\N	2025-06-05	3	0	10	11
65	\N	2025-06-06	0	0	11	1
66	\N	2025-06-07	3	4	1	2
67	\N	2025-06-08	3	0	2	3
68	\N	2025-06-09	1	1	3	4
69	\N	2025-06-10	2	2	4	5
70	\N	2025-06-11	1	4	5	6
71	\N	2025-06-12	3	0	6	7
72	\N	2025-06-13	4	4	7	8
73	\N	2025-06-14	4	2	8	9
74	\N	2025-06-15	2	3	9	10
75	\N	2025-06-16	2	2	10	11
76	\N	2025-06-17	0	3	11	1
77	\N	2025-06-18	4	3	1	2
78	\N	2025-06-19	2	4	2	3
79	\N	2025-06-20	0	4	3	4
80	\N	2025-06-21	0	2	4	5
81	\N	2025-06-22	4	2	5	6
82	\N	2025-06-23	2	2	6	7
83	\N	2025-06-24	2	0	7	8
84	\N	2025-06-25	3	0	8	9
85	\N	2025-06-26	2	0	9	10
86	\N	2025-06-27	4	2	10	11
87	\N	2025-06-28	4	1	11	1
88	\N	2025-06-29	3	1	1	2
89	\N	2025-06-30	1	4	2	3
90	\N	2025-07-01	4	3	3	4
91	\N	2025-07-02	4	2	4	5
92	\N	2025-07-03	0	4	5	6
93	\N	2025-07-04	0	2	6	7
94	\N	2025-07-05	4	1	7	8
95	\N	2025-07-06	2	3	8	9
96	\N	2025-07-07	1	3	9	10
97	\N	2025-07-08	3	0	10	11
98	\N	2025-07-09	2	2	11	1
99	\N	2025-07-10	2	0	1	2
100	\N	2025-07-11	2	0	2	3
101	\N	2025-07-12	0	0	3	4
102	\N	2025-07-13	1	2	4	5
103	\N	2025-07-14	1	4	5	6
104	\N	2025-07-15	2	1	6	7
105	\N	2025-07-16	3	2	7	8
106	\N	2025-07-17	4	1	8	9
107	\N	2025-07-18	3	4	9	10
108	\N	2025-07-19	2	2	10	11
109	\N	2025-07-20	0	2	11	1
110	\N	2025-07-21	4	0	1	2
111	\N	2025-07-22	0	0	2	3
112	\N	2025-07-23	0	0	3	4
113	\N	2025-07-24	2	4	4	5
114	\N	2025-07-25	2	3	5	6
115	\N	2025-07-26	1	3	6	7
116	\N	2025-07-27	0	3	7	8
117	\N	2025-07-28	0	4	8	9
118	\N	2025-07-29	4	1	9	10
119	\N	2025-07-30	4	3	10	11
120	\N	2025-07-31	3	4	11	1
\.


--
-- TOC entry 3880 (class 0 OID 17371)
-- Dependencies: 293
-- Data for Name: estadistica_jugador; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.estadistica_jugador (id_estadistica, asistencias, goles, minutos_jugados, tarjetas_amarillas, tarjetas_rojas, id_jugador, id_partido) FROM stdin;
1	1	0	90	0	0	1	1
2	0	1	85	1	0	2	1
3	0	0	90	0	0	3	1
4	2	1	88	0	0	4	2
5	0	2	90	1	0	5	2
6	1	0	80	0	0	6	2
7	0	1	90	0	1	7	3
8	1	0	78	1	0	8	3
9	0	0	90	0	0	9	3
10	0	1	85	1	0	10	4
11	1	0	90	0	0	11	4
12	0	0	60	0	0	12	4
13	0	0	90	0	0	13	5
14	1	1	87	1	0	14	5
15	0	2	90	0	0	15	5
16	0	0	90	1	0	16	6
17	1	0	88	0	0	17	6
18	0	1	90	1	0	18	6
19	0	0	90	0	0	19	7
20	1	1	85	0	0	20	7
21	0	1	90	1	0	21	8
22	2	0	82	0	0	22	8
23	1	0	90	1	0	23	8
24	0	0	90	0	1	24	9
25	1	2	88	0	0	25	9
26	0	1	80	1	0	26	9
27	0	0	87	0	0	27	10
28	1	0	90	1	0	28	10
29	0	2	88	0	0	29	10
30	2	0	90	0	0	30	11
31	0	1	85	1	0	31	11
32	1	0	90	0	0	32	11
33	0	0	90	0	0	33	12
34	1	1	80	0	1	34	12
35	0	2	87	1	0	35	12
36	2	0	90	0	0	36	13
37	0	1	85	0	0	37	13
38	1	0	90	1	0	38	13
39	0	1	90	0	0	39	14
40	1	0	85	1	0	40	14
41	0	2	87	0	0	41	14
42	2	0	90	0	0	42	15
43	0	1	88	0	0	43	15
44	1	0	90	1	0	44	15
45	0	0	90	0	0	45	16
46	1	0	80	0	0	46	16
47	0	1	85	1	0	47	16
48	0	0	90	1	0	48	17
49	1	1	88	0	0	49	17
50	0	2	90	0	0	50	17
51	2	0	90	0	0	51	18
52	1	0	85	0	0	52	18
53	0	1	90	1	0	53	18
54	0	0	90	0	0	54	19
55	1	1	85	0	0	55	19
56	2	0	90	0	0	56	19
57	0	1	80	1	0	57	20
58	1	0	90	1	0	58	20
59	0	0	90	0	0	59	20
60	1	0	90	0	1	60	21
61	0	2	85	1	0	61	21
62	1	1	90	0	0	62	21
63	0	1	90	0	0	63	22
64	1	0	90	1	0	64	22
65	2	0	90	0	0	65	22
66	0	1	85	0	0	66	23
67	1	0	90	0	1	67	23
68	0	0	90	1	0	68	23
69	1	1	90	0	0	69	24
70	0	0	85	0	0	70	24
71	2	0	90	1	0	71	24
72	1	0	90	0	0	72	25
73	0	1	85	0	0	73	25
74	2	0	90	0	0	74	25
75	1	0	90	0	0	75	26
76	0	2	80	1	0	76	26
77	1	1	90	0	0	77	26
78	0	0	85	1	0	78	27
79	1	0	90	0	0	79	27
80	2	0	90	1	0	80	27
81	0	1	85	1	0	81	28
82	1	0	90	0	0	82	28
83	0	0	90	0	0	83	28
84	1	1	90	0	0	84	29
85	0	2	80	0	0	85	29
86	2	0	90	0	0	86	29
87	1	0	90	0	0	87	30
88	0	1	85	1	0	88	30
89	1	0	90	0	0	89	30
90	0	0	90	1	0	90	31
91	1	1	90	0	0	91	31
92	0	2	85	0	0	92	31
93	2	0	90	0	0	93	32
94	0	1	85	0	0	94	32
95	1	0	90	1	0	95	32
96	0	0	90	0	0	96	33
97	2	0	90	0	0	97	33
98	1	1	90	0	0	98	33
99	0	2	85	0	0	99	34
100	1	0	90	1	0	100	34
\.


--
-- TOC entry 3872 (class 0 OID 17094)
-- Dependencies: 281
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: realtime; Owner: supabase_admin
--

COPY realtime.schema_migrations (version, inserted_at) FROM stdin;
20211116024918	2025-04-21 23:41:43
20211116045059	2025-04-21 23:41:43
20211116050929	2025-04-21 23:41:43
20211116051442	2025-04-21 23:41:43
20211116212300	2025-04-21 23:41:43
20211116213355	2025-04-21 23:41:43
20211116213934	2025-04-21 23:41:43
20211116214523	2025-04-21 23:41:43
20211122062447	2025-04-21 23:41:43
20211124070109	2025-04-21 23:41:43
20211202204204	2025-04-21 23:41:43
20211202204605	2025-04-21 23:41:43
20211210212804	2025-04-21 23:41:43
20211228014915	2025-04-21 23:41:43
20220107221237	2025-04-21 23:41:43
20220228202821	2025-04-21 23:41:43
20220312004840	2025-04-21 23:41:43
20220603231003	2025-04-21 23:41:43
20220603232444	2025-04-21 23:41:43
20220615214548	2025-04-21 23:41:43
20220712093339	2025-04-21 23:41:43
20220908172859	2025-04-21 23:41:43
20220916233421	2025-04-21 23:41:43
20230119133233	2025-04-21 23:41:43
20230128025114	2025-04-21 23:41:43
20230128025212	2025-04-21 23:41:43
20230227211149	2025-04-21 23:41:43
20230228184745	2025-04-21 23:41:43
20230308225145	2025-04-21 23:41:43
20230328144023	2025-04-21 23:41:43
20231018144023	2025-04-21 23:41:43
20231204144023	2025-04-21 23:41:43
20231204144024	2025-04-21 23:41:43
20231204144025	2025-04-21 23:41:43
20240108234812	2025-04-21 23:41:43
20240109165339	2025-04-21 23:41:43
20240227174441	2025-04-21 23:41:43
20240311171622	2025-04-21 23:41:43
20240321100241	2025-04-21 23:41:43
20240401105812	2025-04-21 23:41:43
20240418121054	2025-04-21 23:41:43
20240523004032	2025-04-21 23:41:43
20240618124746	2025-04-21 23:41:43
20240801235015	2025-04-21 23:41:43
20240805133720	2025-04-21 23:41:43
20240827160934	2025-04-21 23:41:43
20240919163303	2025-04-21 23:41:43
20240919163305	2025-04-21 23:41:43
20241019105805	2025-04-21 23:41:43
20241030150047	2025-04-21 23:41:43
20241108114728	2025-04-21 23:41:43
20241121104152	2025-04-21 23:41:43
20241130184212	2025-04-21 23:41:43
20241220035512	2025-04-21 23:41:43
20241220123912	2025-04-21 23:41:43
20241224161212	2025-04-21 23:41:43
20250107150512	2025-04-21 23:41:43
20250110162412	2025-04-21 23:41:44
20250123174212	2025-04-21 23:41:44
20250128220012	2025-04-21 23:41:44
\.


--
-- TOC entry 3874 (class 0 OID 17117)
-- Dependencies: 284
-- Data for Name: subscription; Type: TABLE DATA; Schema: realtime; Owner: supabase_admin
--

COPY realtime.subscription (id, subscription_id, entity, filters, claims, created_at) FROM stdin;
\.


--
-- TOC entry 3856 (class 0 OID 16540)
-- Dependencies: 262
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY storage.buckets (id, name, owner, created_at, updated_at, public, avif_autodetection, file_size_limit, allowed_mime_types, owner_id) FROM stdin;
\.


--
-- TOC entry 3858 (class 0 OID 16582)
-- Dependencies: 264
-- Data for Name: migrations; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY storage.migrations (id, name, hash, executed_at) FROM stdin;
0	create-migrations-table	e18db593bcde2aca2a408c4d1100f6abba2195df	2025-04-21 23:37:04.197996
1	initialmigration	6ab16121fbaa08bbd11b712d05f358f9b555d777	2025-04-21 23:37:04.209687
2	storage-schema	5c7968fd083fcea04050c1b7f6253c9771b99011	2025-04-21 23:37:04.213947
3	pathtoken-column	2cb1b0004b817b29d5b0a971af16bafeede4b70d	2025-04-21 23:37:04.244599
4	add-migrations-rls	427c5b63fe1c5937495d9c635c263ee7a5905058	2025-04-21 23:37:04.26972
5	add-size-functions	79e081a1455b63666c1294a440f8ad4b1e6a7f84	2025-04-21 23:37:04.273787
6	change-column-name-in-get-size	f93f62afdf6613ee5e7e815b30d02dc990201044	2025-04-21 23:37:04.278665
7	add-rls-to-buckets	e7e7f86adbc51049f341dfe8d30256c1abca17aa	2025-04-21 23:37:04.283023
8	add-public-to-buckets	fd670db39ed65f9d08b01db09d6202503ca2bab3	2025-04-21 23:37:04.287082
9	fix-search-function	3a0af29f42e35a4d101c259ed955b67e1bee6825	2025-04-21 23:37:04.291738
10	search-files-search-function	68dc14822daad0ffac3746a502234f486182ef6e	2025-04-21 23:37:04.296962
11	add-trigger-to-auto-update-updated_at-column	7425bdb14366d1739fa8a18c83100636d74dcaa2	2025-04-21 23:37:04.302182
12	add-automatic-avif-detection-flag	8e92e1266eb29518b6a4c5313ab8f29dd0d08df9	2025-04-21 23:37:04.307899
13	add-bucket-custom-limits	cce962054138135cd9a8c4bcd531598684b25e7d	2025-04-21 23:37:04.312454
14	use-bytes-for-max-size	941c41b346f9802b411f06f30e972ad4744dad27	2025-04-21 23:37:04.316906
15	add-can-insert-object-function	934146bc38ead475f4ef4b555c524ee5d66799e5	2025-04-21 23:37:04.34472
16	add-version	76debf38d3fd07dcfc747ca49096457d95b1221b	2025-04-21 23:37:04.350555
17	drop-owner-foreign-key	f1cbb288f1b7a4c1eb8c38504b80ae2a0153d101	2025-04-21 23:37:04.35474
18	add_owner_id_column_deprecate_owner	e7a511b379110b08e2f214be852c35414749fe66	2025-04-21 23:37:04.360111
19	alter-default-value-objects-id	02e5e22a78626187e00d173dc45f58fa66a4f043	2025-04-21 23:37:04.365538
20	list-objects-with-delimiter	cd694ae708e51ba82bf012bba00caf4f3b6393b7	2025-04-21 23:37:04.375041
21	s3-multipart-uploads	8c804d4a566c40cd1e4cc5b3725a664a9303657f	2025-04-21 23:37:04.385518
22	s3-multipart-uploads-big-ints	9737dc258d2397953c9953d9b86920b8be0cdb73	2025-04-21 23:37:04.415084
23	optimize-search-function	9d7e604cddc4b56a5422dc68c9313f4a1b6f132c	2025-04-21 23:37:04.440877
24	operation-function	8312e37c2bf9e76bbe841aa5fda889206d2bf8aa	2025-04-21 23:37:04.446842
25	custom-metadata	d974c6057c3db1c1f847afa0e291e6165693b990	2025-04-21 23:37:04.451254
\.


--
-- TOC entry 3857 (class 0 OID 16555)
-- Dependencies: 263
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY storage.objects (id, bucket_id, name, owner, created_at, updated_at, last_accessed_at, metadata, version, owner_id, user_metadata) FROM stdin;
\.


--
-- TOC entry 3870 (class 0 OID 17014)
-- Dependencies: 279
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY storage.s3_multipart_uploads (id, in_progress_size, upload_signature, bucket_id, key, version, owner_id, created_at, user_metadata) FROM stdin;
\.


--
-- TOC entry 3871 (class 0 OID 17028)
-- Dependencies: 280
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY storage.s3_multipart_uploads_parts (id, upload_id, size, part_number, bucket_id, key, etag, owner_id, version, created_at) FROM stdin;
\.


--
-- TOC entry 3538 (class 0 OID 16650)
-- Dependencies: 265
-- Data for Name: secrets; Type: TABLE DATA; Schema: vault; Owner: supabase_admin
--

COPY vault.secrets (id, name, description, secret, key_id, nonce, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3890 (class 0 OID 0)
-- Dependencies: 257
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('auth.refresh_tokens_id_seq', 1, false);


--
-- TOC entry 3891 (class 0 OID 0)
-- Dependencies: 288
-- Name: entrenador_id_entrenador_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.entrenador_id_entrenador_seq', 1, false);


--
-- TOC entry 3892 (class 0 OID 0)
-- Dependencies: 290
-- Name: equipo_id_equipo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.equipo_id_equipo_seq', 1, false);


--
-- TOC entry 3893 (class 0 OID 0)
-- Dependencies: 292
-- Name: estadistica_jugador_id_estadistica_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.estadistica_jugador_id_estadistica_seq', 1, false);


--
-- TOC entry 3894 (class 0 OID 0)
-- Dependencies: 294
-- Name: jugador_id_jugador_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.jugador_id_jugador_seq', 1, false);


--
-- TOC entry 3895 (class 0 OID 0)
-- Dependencies: 296
-- Name: partido_id_partido_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.partido_id_partido_seq', 1, false);


--
-- TOC entry 3896 (class 0 OID 0)
-- Dependencies: 283
-- Name: subscription_id_seq; Type: SEQUENCE SET; Schema: realtime; Owner: supabase_admin
--

SELECT pg_catalog.setval('realtime.subscription_id_seq', 1, false);


-- Completed on 2025-04-22 20:42:21

--
-- PostgreSQL database dump complete
--

-- Completed on 2025-04-22 20:42:21

--
-- PostgreSQL database cluster dump complete
--

