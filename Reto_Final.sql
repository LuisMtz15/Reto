toc.dat                                                                                             0000600 0004000 0002000 00000043173 14513710565 0014456 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP                       	    {         
   Reto_Final    15.3    15.3 6    @           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         A           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         B           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         C           1262    24803 
   Reto_Final    DATABASE     n   CREATE DATABASE "Reto_Final" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE "Reto_Final";
                postgres    false         �            1255    24865    eliminaralumno(integer) 	   PROCEDURE     �   CREATE PROCEDURE public.eliminaralumno(IN alumnoidparam integer)
    LANGUAGE sql
    AS $$
    DELETE FROM Alumnos
    WHERE AlumnoID = AlumnoIDParam;
$$;
 @   DROP PROCEDURE public.eliminaralumno(IN alumnoidparam integer);
       public          postgres    false         �            1255    24867    eliminargrupo(integer) 	   PROCEDURE     �   CREATE PROCEDURE public.eliminargrupo(IN grupoparam integer)
    LANGUAGE sql
    AS $$
    DELETE FROM Grupos
    WHERE Grupo = GrupoParam;
$$;
 <   DROP PROCEDURE public.eliminargrupo(IN grupoparam integer);
       public          postgres    false         �            1255    24864    eliminarprofesor(integer) 	   PROCEDURE     �   CREATE PROCEDURE public.eliminarprofesor(IN profesoridparam integer)
    LANGUAGE sql
    AS $$
    DELETE FROM Profesores
    WHERE ProfesorID = ProfesorIDParam;
$$;
 D   DROP PROCEDURE public.eliminarprofesor(IN profesoridparam integer);
       public          postgres    false         �            1255    24876    eliminarprofesoradmin(integer) 	   PROCEDURE     �   CREATE PROCEDURE public.eliminarprofesoradmin(IN profesoridparam integer)
    LANGUAGE sql
    AS $$
    DELETE FROM ProfesoresAdmin
    WHERE ProfesorID = ProfesorIDParam;
$$;
 I   DROP PROCEDURE public.eliminarprofesoradmin(IN profesoridparam integer);
       public          postgres    false         �            1255    24862    insertaralumno(character varying, character varying, character varying, character varying, character varying, integer, integer) 	   PROCEDURE     �  CREATE PROCEDURE public.insertaralumno(IN nombreparam character varying, IN apellidopparam character varying, IN apellidomparam character varying, IN correoparam character varying, IN "contraseñaparam" character varying, IN gradoparam integer, IN grupoparam integer)
    LANGUAGE sql
    AS $$
    INSERT INTO Alumnos (Nombre, ApellidoP, ApellidoM, Correo, Contraseña, Grado, Grupo)
    VALUES (NombreParam, ApellidoPParam, ApellidoMParam, CorreoParam, ContraseñaParam, GradoParam, GrupoParam)
$$;
   DROP PROCEDURE public.insertaralumno(IN nombreparam character varying, IN apellidopparam character varying, IN apellidomparam character varying, IN correoparam character varying, IN "contraseñaparam" character varying, IN gradoparam integer, IN grupoparam integer);
       public          postgres    false         �            1255    24866    insertargrupo(integer, integer) 	   PROCEDURE     �   CREATE PROCEDURE public.insertargrupo(IN grupoparam integer, IN profesoridparam integer)
    LANGUAGE sql
    AS $$
    INSERT INTO Grupos (Grupo, ProfesorID)
    VALUES (GrupoParam, ProfesorIDParam);
$$;
 X   DROP PROCEDURE public.insertargrupo(IN grupoparam integer, IN profesoridparam integer);
       public          postgres    false         �            1255    24863 o   insertarprofesor(character varying, character varying, character varying, character varying, character varying) 	   PROCEDURE     �  CREATE PROCEDURE public.insertarprofesor(IN nombreparam character varying, IN apellidopparam character varying, IN apellidomparam character varying, IN correoparam character varying, IN "contraseñaparam" character varying)
    LANGUAGE sql
    AS $$
    INSERT INTO Profesores (Nombre, ApellidoP, ApellidoM, Correo, Contraseña)
    VALUES (NombreParam, ApellidoPParam, ApellidoMParam, CorreoParam, ContraseñaParam);
$$;
 �   DROP PROCEDURE public.insertarprofesor(IN nombreparam character varying, IN apellidopparam character varying, IN apellidomparam character varying, IN correoparam character varying, IN "contraseñaparam" character varying);
       public          postgres    false         �            1255    24875 a   insertarprofesoradmin(character varying, character varying, character varying, character varying) 	   PROCEDURE     i  CREATE PROCEDURE public.insertarprofesoradmin(IN nombreparam character varying, IN apellidopparam character varying, IN apellidomparam character varying, IN correoparam character varying)
    LANGUAGE sql
    AS $$
    INSERT INTO ProfesoresAdmin (Nombre, ApellidoP, ApellidoM, Correo)
    VALUES (NombreParam, ApellidoPParam, ApellidoMParam, CorreoParam);
$$;
 �   DROP PROCEDURE public.insertarprofesoradmin(IN nombreparam character varying, IN apellidopparam character varying, IN apellidomparam character varying, IN correoparam character varying);
       public          postgres    false         �            1259    24812    admin    TABLE       CREATE TABLE public.admin (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    apellidop character varying(50) NOT NULL,
    apellidom character varying(50),
    "contraseña" character varying(100) NOT NULL,
    correo character varying(100) NOT NULL
);
    DROP TABLE public.admin;
       public         heap    postgres    false         �            1259    24811    admin_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.admin_id_seq;
       public          postgres    false    217         D           0    0    admin_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.admin_id_seq OWNED BY public.admin.id;
          public          postgres    false    216         �            1259    24838    alumnos    TABLE       CREATE TABLE public.alumnos (
    alumnoid integer NOT NULL,
    nombre character varying(50),
    apellidop character varying(50),
    apellidom character varying(50),
    correo character varying(100),
    "contraseña" character varying(20),
    grado integer,
    grupo integer
);
    DROP TABLE public.alumnos;
       public         heap    postgres    false         �            1259    24837    alumnos_alumnoid_seq    SEQUENCE     �   CREATE SEQUENCE public.alumnos_alumnoid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.alumnos_alumnoid_seq;
       public          postgres    false    220         E           0    0    alumnos_alumnoid_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.alumnos_alumnoid_seq OWNED BY public.alumnos.alumnoid;
          public          postgres    false    219         �            1259    24820    grupos    TABLE     S   CREATE TABLE public.grupos (
    grupo integer NOT NULL,
    profesorid integer
);
    DROP TABLE public.grupos;
       public         heap    postgres    false         �            1259    24805 
   profesores    TABLE     �   CREATE TABLE public.profesores (
    profesorid integer NOT NULL,
    nombre character varying(50),
    apellidop character varying(50),
    apellidom character varying(50),
    correo character varying(100),
    "contraseña" character varying(20)
);
    DROP TABLE public.profesores;
       public         heap    postgres    false         �            1259    24804    profesores_profesorid_seq    SEQUENCE     �   CREATE SEQUENCE public.profesores_profesorid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.profesores_profesorid_seq;
       public          postgres    false    215         F           0    0    profesores_profesorid_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.profesores_profesorid_seq OWNED BY public.profesores.profesorid;
          public          postgres    false    214         �            1259    24869    profesoresadmin    TABLE     �   CREATE TABLE public.profesoresadmin (
    profesorid integer NOT NULL,
    nombre character varying(50),
    apellidop character varying(50),
    apellidom character varying(50),
    correo character varying(100)
);
 #   DROP TABLE public.profesoresadmin;
       public         heap    postgres    false         �            1259    24868    profesoresadmin_profesorid_seq    SEQUENCE     �   CREATE SEQUENCE public.profesoresadmin_profesorid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.profesoresadmin_profesorid_seq;
       public          postgres    false    224         G           0    0    profesoresadmin_profesorid_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.profesoresadmin_profesorid_seq OWNED BY public.profesoresadmin.profesorid;
          public          postgres    false    223         �            1259    24850 
   resultados    TABLE     �   CREATE TABLE public.resultados (
    resultadoid integer NOT NULL,
    alumnoid integer,
    puntaje integer,
    fecha date
);
    DROP TABLE public.resultados;
       public         heap    postgres    false         �            1259    24849    resultados_resultadoid_seq    SEQUENCE     �   CREATE SEQUENCE public.resultados_resultadoid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.resultados_resultadoid_seq;
       public          postgres    false    222         H           0    0    resultados_resultadoid_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.resultados_resultadoid_seq OWNED BY public.resultados.resultadoid;
          public          postgres    false    221         �           2604    24815    admin id    DEFAULT     d   ALTER TABLE ONLY public.admin ALTER COLUMN id SET DEFAULT nextval('public.admin_id_seq'::regclass);
 7   ALTER TABLE public.admin ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217         �           2604    24841    alumnos alumnoid    DEFAULT     t   ALTER TABLE ONLY public.alumnos ALTER COLUMN alumnoid SET DEFAULT nextval('public.alumnos_alumnoid_seq'::regclass);
 ?   ALTER TABLE public.alumnos ALTER COLUMN alumnoid DROP DEFAULT;
       public          postgres    false    220    219    220         �           2604    24808    profesores profesorid    DEFAULT     ~   ALTER TABLE ONLY public.profesores ALTER COLUMN profesorid SET DEFAULT nextval('public.profesores_profesorid_seq'::regclass);
 D   ALTER TABLE public.profesores ALTER COLUMN profesorid DROP DEFAULT;
       public          postgres    false    215    214    215         �           2604    24872    profesoresadmin profesorid    DEFAULT     �   ALTER TABLE ONLY public.profesoresadmin ALTER COLUMN profesorid SET DEFAULT nextval('public.profesoresadmin_profesorid_seq'::regclass);
 I   ALTER TABLE public.profesoresadmin ALTER COLUMN profesorid DROP DEFAULT;
       public          postgres    false    224    223    224         �           2604    24853    resultados resultadoid    DEFAULT     �   ALTER TABLE ONLY public.resultados ALTER COLUMN resultadoid SET DEFAULT nextval('public.resultados_resultadoid_seq'::regclass);
 E   ALTER TABLE public.resultados ALTER COLUMN resultadoid DROP DEFAULT;
       public          postgres    false    222    221    222         6          0    24812    admin 
   TABLE DATA           X   COPY public.admin (id, nombre, apellidop, apellidom, "contraseña", correo) FROM stdin;
    public          postgres    false    217       3638.dat 9          0    24838    alumnos 
   TABLE DATA           n   COPY public.alumnos (alumnoid, nombre, apellidop, apellidom, correo, "contraseña", grado, grupo) FROM stdin;
    public          postgres    false    220       3641.dat 7          0    24820    grupos 
   TABLE DATA           3   COPY public.grupos (grupo, profesorid) FROM stdin;
    public          postgres    false    218       3639.dat 4          0    24805 
   profesores 
   TABLE DATA           e   COPY public.profesores (profesorid, nombre, apellidop, apellidom, correo, "contraseña") FROM stdin;
    public          postgres    false    215       3636.dat =          0    24869    profesoresadmin 
   TABLE DATA           [   COPY public.profesoresadmin (profesorid, nombre, apellidop, apellidom, correo) FROM stdin;
    public          postgres    false    224       3645.dat ;          0    24850 
   resultados 
   TABLE DATA           K   COPY public.resultados (resultadoid, alumnoid, puntaje, fecha) FROM stdin;
    public          postgres    false    222       3643.dat I           0    0    admin_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.admin_id_seq', 1, true);
          public          postgres    false    216         J           0    0    alumnos_alumnoid_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.alumnos_alumnoid_seq', 3, true);
          public          postgres    false    219         K           0    0    profesores_profesorid_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.profesores_profesorid_seq', 5, true);
          public          postgres    false    214         L           0    0    profesoresadmin_profesorid_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.profesoresadmin_profesorid_seq', 2, true);
          public          postgres    false    223         M           0    0    resultados_resultadoid_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.resultados_resultadoid_seq', 1, false);
          public          postgres    false    221         �           2606    24819    admin admin_correo_key 
   CONSTRAINT     S   ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_correo_key UNIQUE (correo);
 @   ALTER TABLE ONLY public.admin DROP CONSTRAINT admin_correo_key;
       public            postgres    false    217         �           2606    24817    admin admin_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.admin DROP CONSTRAINT admin_pkey;
       public            postgres    false    217         �           2606    24843    alumnos alumnos_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.alumnos
    ADD CONSTRAINT alumnos_pkey PRIMARY KEY (alumnoid);
 >   ALTER TABLE ONLY public.alumnos DROP CONSTRAINT alumnos_pkey;
       public            postgres    false    220         �           2606    24824    grupos grupos_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.grupos
    ADD CONSTRAINT grupos_pkey PRIMARY KEY (grupo);
 <   ALTER TABLE ONLY public.grupos DROP CONSTRAINT grupos_pkey;
       public            postgres    false    218         �           2606    24810    profesores profesores_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.profesores
    ADD CONSTRAINT profesores_pkey PRIMARY KEY (profesorid);
 D   ALTER TABLE ONLY public.profesores DROP CONSTRAINT profesores_pkey;
       public            postgres    false    215         �           2606    24874 $   profesoresadmin profesoresadmin_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.profesoresadmin
    ADD CONSTRAINT profesoresadmin_pkey PRIMARY KEY (profesorid);
 N   ALTER TABLE ONLY public.profesoresadmin DROP CONSTRAINT profesoresadmin_pkey;
       public            postgres    false    224         �           2606    24855    resultados resultados_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.resultados
    ADD CONSTRAINT resultados_pkey PRIMARY KEY (resultadoid);
 D   ALTER TABLE ONLY public.resultados DROP CONSTRAINT resultados_pkey;
       public            postgres    false    222         �           2606    24844    alumnos alumnos_grupo_fkey    FK CONSTRAINT     {   ALTER TABLE ONLY public.alumnos
    ADD CONSTRAINT alumnos_grupo_fkey FOREIGN KEY (grupo) REFERENCES public.grupos(grupo);
 D   ALTER TABLE ONLY public.alumnos DROP CONSTRAINT alumnos_grupo_fkey;
       public          postgres    false    3483    218    220         �           2606    24825    grupos grupos_profesorid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.grupos
    ADD CONSTRAINT grupos_profesorid_fkey FOREIGN KEY (profesorid) REFERENCES public.profesores(profesorid);
 G   ALTER TABLE ONLY public.grupos DROP CONSTRAINT grupos_profesorid_fkey;
       public          postgres    false    218    215    3477         �           2606    24856 #   resultados resultados_alumnoid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.resultados
    ADD CONSTRAINT resultados_alumnoid_fkey FOREIGN KEY (alumnoid) REFERENCES public.alumnos(alumnoid);
 M   ALTER TABLE ONLY public.resultados DROP CONSTRAINT resultados_alumnoid_fkey;
       public          postgres    false    220    222    3485                                                                                                                                                                                                                                                                                                                                                                                                             3638.dat                                                                                            0000600 0004000 0002000 00000000056 14513710565 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Luis	Martinez	Rueda	12345678	adminroot
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  3641.dat                                                                                            0000600 0004000 0002000 00000000147 14513710565 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Juan	Pérez	López	juan@example.com	clave123	2	201
3	Luis	Martinez	Rueda	prueba4.com	1234	3	202
\.


                                                                                                                                                                                                                                                                                                                                                                                                                         3639.dat                                                                                            0000600 0004000 0002000 00000000021 14513710565 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        201	1
202	2
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               3636.dat                                                                                            0000600 0004000 0002000 00000000133 14513710565 0014257 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Juan	Pérez	López	juan@example.com	clave123
2	Andrea	Ortega	Morales	prueba.com	123
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                     3645.dat                                                                                            0000600 0004000 0002000 00000000050 14513710565 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Luis	Hernandez	Rueda	prueba2.com
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        3643.dat                                                                                            0000600 0004000 0002000 00000000005 14513710565 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           restore.sql                                                                                         0000600 0004000 0002000 00000036275 14513710565 0015410 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

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

DROP DATABASE "Reto_Final";
--
-- Name: Reto_Final; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Reto_Final" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';


ALTER DATABASE "Reto_Final" OWNER TO postgres;

\connect "Reto_Final"

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

--
-- Name: eliminaralumno(integer); Type: PROCEDURE; Schema: public; Owner: postgres
--

CREATE PROCEDURE public.eliminaralumno(IN alumnoidparam integer)
    LANGUAGE sql
    AS $$
    DELETE FROM Alumnos
    WHERE AlumnoID = AlumnoIDParam;
$$;


ALTER PROCEDURE public.eliminaralumno(IN alumnoidparam integer) OWNER TO postgres;

--
-- Name: eliminargrupo(integer); Type: PROCEDURE; Schema: public; Owner: postgres
--

CREATE PROCEDURE public.eliminargrupo(IN grupoparam integer)
    LANGUAGE sql
    AS $$
    DELETE FROM Grupos
    WHERE Grupo = GrupoParam;
$$;


ALTER PROCEDURE public.eliminargrupo(IN grupoparam integer) OWNER TO postgres;

--
-- Name: eliminarprofesor(integer); Type: PROCEDURE; Schema: public; Owner: postgres
--

CREATE PROCEDURE public.eliminarprofesor(IN profesoridparam integer)
    LANGUAGE sql
    AS $$
    DELETE FROM Profesores
    WHERE ProfesorID = ProfesorIDParam;
$$;


ALTER PROCEDURE public.eliminarprofesor(IN profesoridparam integer) OWNER TO postgres;

--
-- Name: eliminarprofesoradmin(integer); Type: PROCEDURE; Schema: public; Owner: postgres
--

CREATE PROCEDURE public.eliminarprofesoradmin(IN profesoridparam integer)
    LANGUAGE sql
    AS $$
    DELETE FROM ProfesoresAdmin
    WHERE ProfesorID = ProfesorIDParam;
$$;


ALTER PROCEDURE public.eliminarprofesoradmin(IN profesoridparam integer) OWNER TO postgres;

--
-- Name: insertaralumno(character varying, character varying, character varying, character varying, character varying, integer, integer); Type: PROCEDURE; Schema: public; Owner: postgres
--

CREATE PROCEDURE public.insertaralumno(IN nombreparam character varying, IN apellidopparam character varying, IN apellidomparam character varying, IN correoparam character varying, IN "contraseñaparam" character varying, IN gradoparam integer, IN grupoparam integer)
    LANGUAGE sql
    AS $$
    INSERT INTO Alumnos (Nombre, ApellidoP, ApellidoM, Correo, Contraseña, Grado, Grupo)
    VALUES (NombreParam, ApellidoPParam, ApellidoMParam, CorreoParam, ContraseñaParam, GradoParam, GrupoParam)
$$;


ALTER PROCEDURE public.insertaralumno(IN nombreparam character varying, IN apellidopparam character varying, IN apellidomparam character varying, IN correoparam character varying, IN "contraseñaparam" character varying, IN gradoparam integer, IN grupoparam integer) OWNER TO postgres;

--
-- Name: insertargrupo(integer, integer); Type: PROCEDURE; Schema: public; Owner: postgres
--

CREATE PROCEDURE public.insertargrupo(IN grupoparam integer, IN profesoridparam integer)
    LANGUAGE sql
    AS $$
    INSERT INTO Grupos (Grupo, ProfesorID)
    VALUES (GrupoParam, ProfesorIDParam);
$$;


ALTER PROCEDURE public.insertargrupo(IN grupoparam integer, IN profesoridparam integer) OWNER TO postgres;

--
-- Name: insertarprofesor(character varying, character varying, character varying, character varying, character varying); Type: PROCEDURE; Schema: public; Owner: postgres
--

CREATE PROCEDURE public.insertarprofesor(IN nombreparam character varying, IN apellidopparam character varying, IN apellidomparam character varying, IN correoparam character varying, IN "contraseñaparam" character varying)
    LANGUAGE sql
    AS $$
    INSERT INTO Profesores (Nombre, ApellidoP, ApellidoM, Correo, Contraseña)
    VALUES (NombreParam, ApellidoPParam, ApellidoMParam, CorreoParam, ContraseñaParam);
$$;


ALTER PROCEDURE public.insertarprofesor(IN nombreparam character varying, IN apellidopparam character varying, IN apellidomparam character varying, IN correoparam character varying, IN "contraseñaparam" character varying) OWNER TO postgres;

--
-- Name: insertarprofesoradmin(character varying, character varying, character varying, character varying); Type: PROCEDURE; Schema: public; Owner: postgres
--

CREATE PROCEDURE public.insertarprofesoradmin(IN nombreparam character varying, IN apellidopparam character varying, IN apellidomparam character varying, IN correoparam character varying)
    LANGUAGE sql
    AS $$
    INSERT INTO ProfesoresAdmin (Nombre, ApellidoP, ApellidoM, Correo)
    VALUES (NombreParam, ApellidoPParam, ApellidoMParam, CorreoParam);
$$;


ALTER PROCEDURE public.insertarprofesoradmin(IN nombreparam character varying, IN apellidopparam character varying, IN apellidomparam character varying, IN correoparam character varying) OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: admin; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    apellidop character varying(50) NOT NULL,
    apellidom character varying(50),
    "contraseña" character varying(100) NOT NULL,
    correo character varying(100) NOT NULL
);


ALTER TABLE public.admin OWNER TO postgres;

--
-- Name: admin_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_id_seq OWNER TO postgres;

--
-- Name: admin_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admin_id_seq OWNED BY public.admin.id;


--
-- Name: alumnos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumnos (
    alumnoid integer NOT NULL,
    nombre character varying(50),
    apellidop character varying(50),
    apellidom character varying(50),
    correo character varying(100),
    "contraseña" character varying(20),
    grado integer,
    grupo integer
);


ALTER TABLE public.alumnos OWNER TO postgres;

--
-- Name: alumnos_alumnoid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumnos_alumnoid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumnos_alumnoid_seq OWNER TO postgres;

--
-- Name: alumnos_alumnoid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumnos_alumnoid_seq OWNED BY public.alumnos.alumnoid;


--
-- Name: grupos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.grupos (
    grupo integer NOT NULL,
    profesorid integer
);


ALTER TABLE public.grupos OWNER TO postgres;

--
-- Name: profesores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.profesores (
    profesorid integer NOT NULL,
    nombre character varying(50),
    apellidop character varying(50),
    apellidom character varying(50),
    correo character varying(100),
    "contraseña" character varying(20)
);


ALTER TABLE public.profesores OWNER TO postgres;

--
-- Name: profesores_profesorid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.profesores_profesorid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.profesores_profesorid_seq OWNER TO postgres;

--
-- Name: profesores_profesorid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.profesores_profesorid_seq OWNED BY public.profesores.profesorid;


--
-- Name: profesoresadmin; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.profesoresadmin (
    profesorid integer NOT NULL,
    nombre character varying(50),
    apellidop character varying(50),
    apellidom character varying(50),
    correo character varying(100)
);


ALTER TABLE public.profesoresadmin OWNER TO postgres;

--
-- Name: profesoresadmin_profesorid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.profesoresadmin_profesorid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.profesoresadmin_profesorid_seq OWNER TO postgres;

--
-- Name: profesoresadmin_profesorid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.profesoresadmin_profesorid_seq OWNED BY public.profesoresadmin.profesorid;


--
-- Name: resultados; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.resultados (
    resultadoid integer NOT NULL,
    alumnoid integer,
    puntaje integer,
    fecha date
);


ALTER TABLE public.resultados OWNER TO postgres;

--
-- Name: resultados_resultadoid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.resultados_resultadoid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.resultados_resultadoid_seq OWNER TO postgres;

--
-- Name: resultados_resultadoid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.resultados_resultadoid_seq OWNED BY public.resultados.resultadoid;


--
-- Name: admin id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin ALTER COLUMN id SET DEFAULT nextval('public.admin_id_seq'::regclass);


--
-- Name: alumnos alumnoid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumnos ALTER COLUMN alumnoid SET DEFAULT nextval('public.alumnos_alumnoid_seq'::regclass);


--
-- Name: profesores profesorid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profesores ALTER COLUMN profesorid SET DEFAULT nextval('public.profesores_profesorid_seq'::regclass);


--
-- Name: profesoresadmin profesorid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profesoresadmin ALTER COLUMN profesorid SET DEFAULT nextval('public.profesoresadmin_profesorid_seq'::regclass);


--
-- Name: resultados resultadoid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resultados ALTER COLUMN resultadoid SET DEFAULT nextval('public.resultados_resultadoid_seq'::regclass);


--
-- Data for Name: admin; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin (id, nombre, apellidop, apellidom, "contraseña", correo) FROM stdin;
\.
COPY public.admin (id, nombre, apellidop, apellidom, "contraseña", correo) FROM '$$PATH$$/3638.dat';

--
-- Data for Name: alumnos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.alumnos (alumnoid, nombre, apellidop, apellidom, correo, "contraseña", grado, grupo) FROM stdin;
\.
COPY public.alumnos (alumnoid, nombre, apellidop, apellidom, correo, "contraseña", grado, grupo) FROM '$$PATH$$/3641.dat';

--
-- Data for Name: grupos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.grupos (grupo, profesorid) FROM stdin;
\.
COPY public.grupos (grupo, profesorid) FROM '$$PATH$$/3639.dat';

--
-- Data for Name: profesores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.profesores (profesorid, nombre, apellidop, apellidom, correo, "contraseña") FROM stdin;
\.
COPY public.profesores (profesorid, nombre, apellidop, apellidom, correo, "contraseña") FROM '$$PATH$$/3636.dat';

--
-- Data for Name: profesoresadmin; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.profesoresadmin (profesorid, nombre, apellidop, apellidom, correo) FROM stdin;
\.
COPY public.profesoresadmin (profesorid, nombre, apellidop, apellidom, correo) FROM '$$PATH$$/3645.dat';

--
-- Data for Name: resultados; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.resultados (resultadoid, alumnoid, puntaje, fecha) FROM stdin;
\.
COPY public.resultados (resultadoid, alumnoid, puntaje, fecha) FROM '$$PATH$$/3643.dat';

--
-- Name: admin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_id_seq', 1, true);


--
-- Name: alumnos_alumnoid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumnos_alumnoid_seq', 3, true);


--
-- Name: profesores_profesorid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.profesores_profesorid_seq', 5, true);


--
-- Name: profesoresadmin_profesorid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.profesoresadmin_profesorid_seq', 2, true);


--
-- Name: resultados_resultadoid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.resultados_resultadoid_seq', 1, false);


--
-- Name: admin admin_correo_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_correo_key UNIQUE (correo);


--
-- Name: admin admin_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_pkey PRIMARY KEY (id);


--
-- Name: alumnos alumnos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumnos
    ADD CONSTRAINT alumnos_pkey PRIMARY KEY (alumnoid);


--
-- Name: grupos grupos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grupos
    ADD CONSTRAINT grupos_pkey PRIMARY KEY (grupo);


--
-- Name: profesores profesores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profesores
    ADD CONSTRAINT profesores_pkey PRIMARY KEY (profesorid);


--
-- Name: profesoresadmin profesoresadmin_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profesoresadmin
    ADD CONSTRAINT profesoresadmin_pkey PRIMARY KEY (profesorid);


--
-- Name: resultados resultados_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resultados
    ADD CONSTRAINT resultados_pkey PRIMARY KEY (resultadoid);


--
-- Name: alumnos alumnos_grupo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumnos
    ADD CONSTRAINT alumnos_grupo_fkey FOREIGN KEY (grupo) REFERENCES public.grupos(grupo);


--
-- Name: grupos grupos_profesorid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grupos
    ADD CONSTRAINT grupos_profesorid_fkey FOREIGN KEY (profesorid) REFERENCES public.profesores(profesorid);


--
-- Name: resultados resultados_alumnoid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resultados
    ADD CONSTRAINT resultados_alumnoid_fkey FOREIGN KEY (alumnoid) REFERENCES public.alumnos(alumnoid);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   