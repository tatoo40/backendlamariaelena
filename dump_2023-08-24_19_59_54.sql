--
-- PostgreSQL database cluster dump
--

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Drop databases (except postgres and template1)
--

DROP DATABASE lamariaelena2;
DROP DATABASE lamariaelena3;




--
-- Drop roles
--

DROP ROLE mariaelena;


--
-- Roles
--

CREATE ROLE mariaelena;
ALTER ROLE mariaelena WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'md513b6a570c56800d6ba33a53c709dcf39';






--
-- Databases
--

--
-- Database "template1" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 13.11 (Debian 13.11-1.pgdg110+1)
-- Dumped by pg_dump version 13.11 (Debian 13.11-1.pgdg110+1)

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

UPDATE pg_catalog.pg_database SET datistemplate = false WHERE datname = 'template1';
DROP DATABASE template1;
--
-- Name: template1; Type: DATABASE; Schema: -; Owner: mariaelena
--

CREATE DATABASE template1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';


ALTER DATABASE template1 OWNER TO mariaelena;

\connect template1

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
-- Name: DATABASE template1; Type: COMMENT; Schema: -; Owner: mariaelena
--

COMMENT ON DATABASE template1 IS 'default template for new databases';


--
-- Name: template1; Type: DATABASE PROPERTIES; Schema: -; Owner: mariaelena
--

ALTER DATABASE template1 IS_TEMPLATE = true;


\connect template1

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
-- Name: DATABASE template1; Type: ACL; Schema: -; Owner: mariaelena
--

REVOKE CONNECT,TEMPORARY ON DATABASE template1 FROM PUBLIC;
GRANT CONNECT ON DATABASE template1 TO PUBLIC;


--
-- PostgreSQL database dump complete
--

--
-- Database "lamariaelena2" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 13.11 (Debian 13.11-1.pgdg110+1)
-- Dumped by pg_dump version 13.11 (Debian 13.11-1.pgdg110+1)

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
-- Name: lamariaelena2; Type: DATABASE; Schema: -; Owner: mariaelena
--

CREATE DATABASE lamariaelena2 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';


ALTER DATABASE lamariaelena2 OWNER TO mariaelena;

\connect lamariaelena2

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
-- Name: _prisma_migrations; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public._prisma_migrations (
    id character varying(36) NOT NULL,
    checksum character varying(64) NOT NULL,
    finished_at timestamp with time zone,
    migration_name character varying(255) NOT NULL,
    logs text,
    rolled_back_at timestamp with time zone,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    applied_steps_count integer DEFAULT 0 NOT NULL
);


ALTER TABLE public._prisma_migrations OWNER TO mariaelena;

--
-- Name: acciones; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.acciones (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    id_mod integer DEFAULT 0 NOT NULL,
    descripcion text
);


ALTER TABLE public.acciones OWNER TO mariaelena;

--
-- Name: acciones_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.acciones_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.acciones_id_seq OWNER TO mariaelena;

--
-- Name: acciones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.acciones_id_seq OWNED BY public.acciones.id;


--
-- Name: articulos; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.articulos (
    id integer NOT NULL,
    cod_articulo text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    nombre text NOT NULL,
    id_unidad_stk integer NOT NULL,
    id_categoria_ganado integer NOT NULL,
    id_marca_ganado integer NOT NULL,
    id_empresa integer NOT NULL,
    id_tipo_articulo integer,
    id_tasa_iva_cmp integer,
    id_tasa_iva_vta integer,
    id_unidad_cmp integer,
    id_unidad_vta integer,
    factor_conv_cmp_a_stk numeric(65,30)
);


ALTER TABLE public.articulos OWNER TO mariaelena;

--
-- Name: articulos_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.articulos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.articulos_id_seq OWNER TO mariaelena;

--
-- Name: articulos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.articulos_id_seq OWNED BY public.articulos.id;


--
-- Name: articulos_x_titular; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.articulos_x_titular (
    id integer NOT NULL,
    cod_articulo text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    id_titular integer NOT NULL,
    id_empresa integer
);


ALTER TABLE public.articulos_x_titular OWNER TO mariaelena;

--
-- Name: articulos_x_titular_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.articulos_x_titular_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.articulos_x_titular_id_seq OWNER TO mariaelena;

--
-- Name: articulos_x_titular_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.articulos_x_titular_id_seq OWNED BY public.articulos_x_titular.id;


--
-- Name: categorias_cliente; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.categorias_cliente (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    id_mod integer DEFAULT 0 NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    descripcion text NOT NULL
);


ALTER TABLE public.categorias_cliente OWNER TO mariaelena;

--
-- Name: categorias_cliente_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.categorias_cliente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categorias_cliente_id_seq OWNER TO mariaelena;

--
-- Name: categorias_cliente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.categorias_cliente_id_seq OWNED BY public.categorias_cliente.id;


--
-- Name: categorias_ganado; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.categorias_ganado (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    descripcion text NOT NULL,
    id_tipo_ganado integer NOT NULL
);


ALTER TABLE public.categorias_ganado OWNER TO mariaelena;

--
-- Name: categorias_ganado_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.categorias_ganado_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categorias_ganado_id_seq OWNER TO mariaelena;

--
-- Name: categorias_ganado_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.categorias_ganado_id_seq OWNED BY public.categorias_ganado.id;


--
-- Name: categorias_prov; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.categorias_prov (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    id_mod integer DEFAULT 0 NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    descripcion text NOT NULL
);


ALTER TABLE public.categorias_prov OWNER TO mariaelena;

--
-- Name: categorias_prov_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.categorias_prov_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categorias_prov_id_seq OWNER TO mariaelena;

--
-- Name: categorias_prov_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.categorias_prov_id_seq OWNED BY public.categorias_prov.id;


--
-- Name: control_trans; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.control_trans (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    id_mod integer DEFAULT 0 NOT NULL,
    nombre text,
    descripcion text,
    persistente boolean NOT NULL,
    mensaje_error_general text NOT NULL,
    lanzamiento integer NOT NULL
);


ALTER TABLE public.control_trans OWNER TO mariaelena;

--
-- Name: control_trans_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.control_trans_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.control_trans_id_seq OWNER TO mariaelena;

--
-- Name: control_trans_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.control_trans_id_seq OWNED BY public.control_trans.id;


--
-- Name: controles_x_seccion_accion; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.controles_x_seccion_accion (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    id_mod integer DEFAULT 0 NOT NULL,
    id_seccion integer NOT NULL,
    id_accion integer NOT NULL,
    id_control integer NOT NULL,
    mensaje_error_especifico text NOT NULL,
    lanzamiento integer NOT NULL,
    campo_form text NOT NULL
);


ALTER TABLE public.controles_x_seccion_accion OWNER TO mariaelena;

--
-- Name: controles_x_seccion_accion_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.controles_x_seccion_accion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.controles_x_seccion_accion_id_seq OWNER TO mariaelena;

--
-- Name: controles_x_seccion_accion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.controles_x_seccion_accion_id_seq OWNED BY public.controles_x_seccion_accion.id;


--
-- Name: cpf_consumos; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.cpf_consumos (
    id integer NOT NULL,
    nro_trans integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    cantidad numeric(65,30) DEFAULT 1,
    cantidad2 numeric(65,30),
    cantidad3 numeric(65,30),
    signo integer,
    fecha timestamp(3) without time zone,
    id_motivo_stk integer NOT NULL,
    cod_articulo text NOT NULL,
    id_unidad_stk integer NOT NULL,
    id_empresa integer NOT NULL,
    id_sector integer NOT NULL,
    id_estado_stock integer NOT NULL
);


ALTER TABLE public.cpf_consumos OWNER TO mariaelena;

--
-- Name: cpf_consumos_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.cpf_consumos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cpf_consumos_id_seq OWNER TO mariaelena;

--
-- Name: cpf_consumos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.cpf_consumos_id_seq OWNED BY public.cpf_consumos.id;


--
-- Name: cpf_contaux; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.cpf_contaux (
    id integer NOT NULL,
    nro_trans integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    importe_mo numeric(65,30),
    importe_mn numeric(65,30),
    importe_tr numeric(65,30),
    fecha timestamp(3) without time zone,
    nro_trans_ref integer NOT NULL,
    signo integer NOT NULL,
    serie_fact text NOT NULL,
    cod_docum text NOT NULL,
    nro_fact integer NOT NULL,
    id_moneda integer NOT NULL,
    id_titular integer NOT NULL,
    id_empresa integer DEFAULT 1 NOT NULL,
    tc numeric(65,30),
    importe_iva_mn numeric(65,30),
    importe_iva_mo numeric(65,30),
    importe_iva_tr numeric(65,30),
    importe_total_mn numeric(65,30),
    importe_total_mo numeric(65,30),
    importe_total_tr numeric(65,30)
);


ALTER TABLE public.cpf_contaux OWNER TO mariaelena;

--
-- Name: cpf_contaux_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.cpf_contaux_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cpf_contaux_id_seq OWNER TO mariaelena;

--
-- Name: cpf_contaux_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.cpf_contaux_id_seq OWNED BY public.cpf_contaux.id;


--
-- Name: cpf_costos; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.cpf_costos (
    id integer NOT NULL,
    nro_trans integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    importe_mo numeric(65,30),
    importe_mn numeric(65,30),
    importe_tr numeric(65,30),
    signo integer,
    nro_lote text,
    cod_identidad text,
    fecha timestamp(3) without time zone,
    nro_trans_ref integer DEFAULT 0,
    cod_articulo text,
    id_unidad_stk integer,
    id_empresa integer,
    id_tipo_costo integer,
    tc numeric(65,30) NOT NULL
);


ALTER TABLE public.cpf_costos OWNER TO mariaelena;

--
-- Name: cpf_costos_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.cpf_costos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cpf_costos_id_seq OWNER TO mariaelena;

--
-- Name: cpf_costos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.cpf_costos_id_seq OWNED BY public.cpf_costos.id;


--
-- Name: cpf_log; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.cpf_log (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    descripcion text,
    fecha timestamp(3) without time zone NOT NULL,
    id_registro integer,
    nro_trans integer,
    id_seccion integer NOT NULL,
    id_accion integer NOT NULL,
    observacion text,
    cod_docum text,
    id_empresa integer NOT NULL
);


ALTER TABLE public.cpf_log OWNER TO mariaelena;

--
-- Name: cpf_log_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.cpf_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cpf_log_id_seq OWNER TO mariaelena;

--
-- Name: cpf_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.cpf_log_id_seq OWNED BY public.cpf_log.id;


--
-- Name: cpf_registro_sanitario; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.cpf_registro_sanitario (
    id integer NOT NULL,
    nro_trans integer,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    cantidad numeric(65,30),
    cantidad2 numeric(65,30),
    cantidad3 numeric(65,30),
    fecha timestamp(3) without time zone,
    nro_lote text,
    cod_identidad text,
    cod_articulo text NOT NULL,
    id_empresa integer NOT NULL,
    id_motivo_sanitario integer NOT NULL,
    signo integer NOT NULL,
    id_padre integer NOT NULL
);


ALTER TABLE public.cpf_registro_sanitario OWNER TO mariaelena;

--
-- Name: cpf_registro_sanitario_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.cpf_registro_sanitario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cpf_registro_sanitario_id_seq OWNER TO mariaelena;

--
-- Name: cpf_registro_sanitario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.cpf_registro_sanitario_id_seq OWNED BY public.cpf_registro_sanitario.id;


--
-- Name: cpf_stockaux; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.cpf_stockaux (
    id integer NOT NULL,
    nro_trans integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    cantidad numeric(65,30) DEFAULT 1,
    cantidad2 numeric(65,30),
    cantidad3 numeric(65,30),
    signo integer,
    nro_lote text,
    cod_identidad text,
    fecha timestamp(3) without time zone,
    id_motivo_stk integer NOT NULL,
    cod_articulo text NOT NULL,
    id_unidad_stk integer NOT NULL,
    id_empresa integer NOT NULL,
    id_estado_stock integer NOT NULL,
    id_sector integer NOT NULL
);


ALTER TABLE public.cpf_stockaux OWNER TO mariaelena;

--
-- Name: cpf_stockaux_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.cpf_stockaux_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cpf_stockaux_id_seq OWNER TO mariaelena;

--
-- Name: cpf_stockaux_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.cpf_stockaux_id_seq OWNED BY public.cpf_stockaux.id;


--
-- Name: cpp_fact_prov; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.cpp_fact_prov (
    id integer NOT NULL,
    nro_trans integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    cantidad integer NOT NULL,
    precio_unitario numeric(65,30) NOT NULL,
    importe_mo numeric(65,30),
    importe_mn numeric(65,30),
    importe_tr numeric(65,30),
    importe_total_mo numeric(65,30),
    importe_total_mn numeric(65,30),
    importe_total_tr numeric(65,30),
    fecha timestamp(3) without time zone,
    serie_fact_prov text NOT NULL,
    nro_fact_prov integer NOT NULL,
    id_moneda integer NOT NULL,
    id_titular integer NOT NULL,
    id_empresa integer DEFAULT 1 NOT NULL,
    tc numeric(65,30),
    cod_docum text NOT NULL,
    cod_articulo text NOT NULL,
    conv_uni_cmp_a_stk numeric(65,30),
    id_tasa_iva_cmp integer,
    importe_iva_basico_mn numeric(65,30),
    importe_iva_basico_mo numeric(65,30),
    importe_iva_basico_tr numeric(65,30),
    importe_iva_excento_mn numeric(65,30),
    importe_iva_excento_mo numeric(65,30),
    importe_iva_excento_tr numeric(65,30),
    importe_iva_minimo_mn numeric(65,30),
    importe_iva_minimo_mo numeric(65,30),
    importe_iva_minimo_tr numeric(65,30),
    cantidad_stk numeric(65,30)
);


ALTER TABLE public.cpp_fact_prov OWNER TO mariaelena;

--
-- Name: cpp_fact_prov_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.cpp_fact_prov_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cpp_fact_prov_id_seq OWNER TO mariaelena;

--
-- Name: cpp_fact_prov_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.cpp_fact_prov_id_seq OWNED BY public.cpp_fact_prov.id;


--
-- Name: cpp_facturas; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.cpp_facturas (
    id integer NOT NULL,
    nro_trans integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    cantidad integer NOT NULL,
    precio_unitario numeric(65,30) NOT NULL,
    importe_mo numeric(65,30),
    importe_mn numeric(65,30),
    importe_tr numeric(65,30),
    importe_total_mo numeric(65,30),
    importe_total_mn numeric(65,30),
    importe_total_tr numeric(65,30),
    importe_iva_mo numeric(65,30),
    importe_iva_mn numeric(65,30),
    importe_iva_tr numeric(65,30),
    fecha timestamp(3) without time zone,
    serie_fact_prov text NOT NULL,
    nro_fact_prov integer NOT NULL,
    id_moneda integer NOT NULL,
    id_titular integer NOT NULL,
    id_empresa integer DEFAULT 1 NOT NULL,
    tc numeric(65,30),
    cod_docum text NOT NULL,
    nro_lote text NOT NULL,
    cod_identidad text NOT NULL,
    cod_articulo text NOT NULL
);


ALTER TABLE public.cpp_facturas OWNER TO mariaelena;

--
-- Name: cpp_facturas_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.cpp_facturas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cpp_facturas_id_seq OWNER TO mariaelena;

--
-- Name: cpp_facturas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.cpp_facturas_id_seq OWNED BY public.cpp_facturas.id;


--
-- Name: cpp_ingresoromaneo; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.cpp_ingresoromaneo (
    id integer NOT NULL,
    nro_trans integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    cantidad integer NOT NULL,
    precio_unitario numeric(65,30) NOT NULL,
    importe_mo numeric(65,30),
    importe_mn numeric(65,30),
    importe_tr numeric(65,30),
    importe_total_mo numeric(65,30),
    importe_total_mn numeric(65,30),
    importe_total_tr numeric(65,30),
    importe_iva_mo numeric(65,30),
    importe_iva_mn numeric(65,30),
    importe_iva_tr numeric(65,30),
    kilos_salida numeric(65,30),
    kilos_calc_declarado numeric(65,30),
    kilos_calc_cuarta_balanza numeric(65,30),
    fecha timestamp(3) without time zone,
    serie_fact_prov text NOT NULL,
    nro_fact_prov integer NOT NULL,
    id_moneda integer NOT NULL,
    id_titular integer NOT NULL,
    id_empresa integer DEFAULT 1 NOT NULL,
    tc numeric(65,30),
    cod_docum text NOT NULL,
    cod_articulo text NOT NULL,
    importe_mo_peso_cuarta_balanza numeric(65,30),
    importe_mo_peso_entrada numeric(65,30),
    importe_mo_peso_salida numeric(65,30),
    cod_identidad text
);


ALTER TABLE public.cpp_ingresoromaneo OWNER TO mariaelena;

--
-- Name: cpp_ingresoromaneo_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.cpp_ingresoromaneo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cpp_ingresoromaneo_id_seq OWNER TO mariaelena;

--
-- Name: cpp_ingresoromaneo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.cpp_ingresoromaneo_id_seq OWNED BY public.cpp_ingresoromaneo.id;


--
-- Name: cpp_movimiento_stock; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.cpp_movimiento_stock (
    id integer NOT NULL,
    nro_trans integer,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    cantidad numeric(65,30),
    cantidad2 numeric(65,30),
    cantidad3 numeric(65,30),
    fecha timestamp(3) without time zone,
    nro_lote text,
    cod_identidad text,
    cod_articulo text NOT NULL,
    id_empresa integer NOT NULL
);


ALTER TABLE public.cpp_movimiento_stock OWNER TO mariaelena;

--
-- Name: cpp_movimiento_stock_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.cpp_movimiento_stock_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cpp_movimiento_stock_id_seq OWNER TO mariaelena;

--
-- Name: cpp_movimiento_stock_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.cpp_movimiento_stock_id_seq OWNED BY public.cpp_movimiento_stock.id;


--
-- Name: cpp_registro_sanitario; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.cpp_registro_sanitario (
    id integer NOT NULL,
    nro_trans integer,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    cantidad numeric(65,30),
    cantidad2 numeric(65,30),
    cantidad3 numeric(65,30),
    fecha timestamp(3) without time zone,
    nro_lote text,
    cod_identidad text,
    cod_articulo text NOT NULL,
    id_empresa integer NOT NULL,
    id_motivo_sanitario integer NOT NULL,
    id_padre integer NOT NULL
);


ALTER TABLE public.cpp_registro_sanitario OWNER TO mariaelena;

--
-- Name: cpp_registro_sanitario_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.cpp_registro_sanitario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cpp_registro_sanitario_id_seq OWNER TO mariaelena;

--
-- Name: cpp_registro_sanitario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.cpp_registro_sanitario_id_seq OWNED BY public.cpp_registro_sanitario.id;


--
-- Name: cpt_evolucion_ganado; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.cpt_evolucion_ganado (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    id_mod integer DEFAULT 0 NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    cod_articulo text NOT NULL,
    cod_articulo_evoluciona text NOT NULL,
    peso_fin numeric(65,30) NOT NULL
);


ALTER TABLE public.cpt_evolucion_ganado OWNER TO mariaelena;

--
-- Name: cpt_evolucion_ganado_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.cpt_evolucion_ganado_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cpt_evolucion_ganado_id_seq OWNER TO mariaelena;

--
-- Name: cpt_evolucion_ganado_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.cpt_evolucion_ganado_id_seq OWNED BY public.cpt_evolucion_ganado.id;


--
-- Name: cpt_fact_prov; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.cpt_fact_prov (
    id integer NOT NULL,
    nro_trans integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    importe_mo numeric(65,30),
    importe_mn numeric(65,30),
    importe_tr numeric(65,30),
    fecha timestamp(3) without time zone,
    nro_trans_ref integer NOT NULL,
    serie_fact_prov text NOT NULL,
    nro_fact_prov integer NOT NULL,
    id_moneda integer NOT NULL,
    id_titular integer NOT NULL,
    id_empresa integer DEFAULT 1 NOT NULL,
    cod_docum text NOT NULL,
    tc numeric(65,30),
    importe_total_mn numeric(65,30),
    importe_total_mo numeric(65,30),
    importe_total_tr numeric(65,30),
    afecta_costo text,
    importe_iva_basico_mn numeric(65,30),
    importe_iva_basico_mo numeric(65,30),
    importe_iva_basico_tr numeric(65,30),
    importe_iva_excento_mn numeric(65,30),
    importe_iva_excento_mo numeric(65,30),
    importe_iva_excento_tr numeric(65,30),
    importe_iva_minimo_mn numeric(65,30),
    importe_iva_minimo_mo numeric(65,30),
    importe_iva_minimo_tr numeric(65,30),
    importe_iva_total_mn numeric(65,30),
    importe_iva_total_mo numeric(65,30),
    importe_iva_total_tr numeric(65,30)
);


ALTER TABLE public.cpt_fact_prov OWNER TO mariaelena;

--
-- Name: cpt_fact_prov_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.cpt_fact_prov_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cpt_fact_prov_id_seq OWNER TO mariaelena;

--
-- Name: cpt_fact_prov_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.cpt_fact_prov_id_seq OWNED BY public.cpt_fact_prov.id;


--
-- Name: cpt_facturas; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.cpt_facturas (
    id integer NOT NULL,
    nro_trans integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    importe_mo numeric(65,30),
    importe_mn numeric(65,30),
    importe_tr numeric(65,30),
    fecha timestamp(3) without time zone,
    nro_trans_ref integer NOT NULL,
    serie_fact_prov text NOT NULL,
    cod_docum text NOT NULL,
    nro_fact_prov integer NOT NULL,
    id_moneda integer NOT NULL,
    id_titular integer NOT NULL,
    id_empresa integer DEFAULT 1 NOT NULL,
    tc integer NOT NULL,
    nro_lote_salida text NOT NULL,
    nro_tropa text NOT NULL
);


ALTER TABLE public.cpt_facturas OWNER TO mariaelena;

--
-- Name: cpt_facturas_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.cpt_facturas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cpt_facturas_id_seq OWNER TO mariaelena;

--
-- Name: cpt_facturas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.cpt_facturas_id_seq OWNED BY public.cpt_facturas.id;


--
-- Name: cpt_ingresoromaneo; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.cpt_ingresoromaneo (
    id integer NOT NULL,
    nro_trans integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    importe_mo numeric(65,30),
    importe_mn numeric(65,30),
    importe_tr numeric(65,30),
    importe_total_mo numeric(65,30),
    importe_total_mn numeric(65,30),
    importe_total_tr numeric(65,30),
    importe_iva_mo numeric(65,30),
    importe_iva_mn numeric(65,30),
    importe_iva_tr numeric(65,30),
    cantidad_animales numeric(65,30),
    cantidad_kilos_declarados numeric(65,30),
    cantidad_kilos_cuarta_balanza numeric(65,30),
    porcentaje_rendimiento numeric(65,30),
    fecha timestamp(3) without time zone,
    nro_trans_ref integer NOT NULL,
    serie_fact_prov text NOT NULL,
    nro_fact_prov integer NOT NULL,
    id_moneda integer NOT NULL,
    id_titular integer NOT NULL,
    id_empresa integer DEFAULT 1 NOT NULL,
    tc numeric(65,30),
    cod_docum text NOT NULL,
    afecta_costo text,
    cantidad_kilos_salida numeric(65,30),
    nro_romaneo integer,
    nro_tropa integer
);


ALTER TABLE public.cpt_ingresoromaneo OWNER TO mariaelena;

--
-- Name: cpt_ingresoromaneo_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.cpt_ingresoromaneo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cpt_ingresoromaneo_id_seq OWNER TO mariaelena;

--
-- Name: cpt_ingresoromaneo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.cpt_ingresoromaneo_id_seq OWNED BY public.cpt_ingresoromaneo.id;


--
-- Name: cpt_movimiento_stock; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.cpt_movimiento_stock (
    id integer NOT NULL,
    nro_trans integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    peso_total_real numeric(65,30),
    peso_total_facturado numeric(65,30),
    cantidad_ganado numeric(65,30),
    fecha timestamp(3) without time zone,
    serie_guia text,
    nro_guia text,
    valor_dicose integer,
    id_propiedad_ganado integer,
    cod_articulo text,
    id_tipo_toma_peso integer,
    id_motivo_stk integer,
    id_empresa integer DEFAULT 1,
    bania_garrapata boolean,
    nro_lote text,
    observaciones text
);


ALTER TABLE public.cpt_movimiento_stock OWNER TO mariaelena;

--
-- Name: cpt_movimiento_stock_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.cpt_movimiento_stock_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cpt_movimiento_stock_id_seq OWNER TO mariaelena;

--
-- Name: cpt_movimiento_stock_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.cpt_movimiento_stock_id_seq OWNED BY public.cpt_movimiento_stock.id;


--
-- Name: cpt_pago_fact_prov; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.cpt_pago_fact_prov (
    id integer NOT NULL,
    nro_trans integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    importe_mo numeric(65,30),
    importe_mn numeric(65,30),
    importe_tr numeric(65,30),
    fecha timestamp(3) without time zone,
    nro_trans_ref integer NOT NULL,
    serie_fact_prov text NOT NULL,
    nro_fact_prov integer NOT NULL,
    id_moneda integer NOT NULL,
    id_titular integer NOT NULL,
    id_empresa integer DEFAULT 1 NOT NULL,
    tc numeric(65,30),
    cod_docum text NOT NULL,
    id_estado_pago integer NOT NULL
);


ALTER TABLE public.cpt_pago_fact_prov OWNER TO mariaelena;

--
-- Name: cpt_pago_fact_prov_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.cpt_pago_fact_prov_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cpt_pago_fact_prov_id_seq OWNER TO mariaelena;

--
-- Name: cpt_pago_fact_prov_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.cpt_pago_fact_prov_id_seq OWNED BY public.cpt_pago_fact_prov.id;


--
-- Name: cpt_parametros_x_fecha; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.cpt_parametros_x_fecha (
    id integer NOT NULL,
    nro_trans integer,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    fecha timestamp(3) without time zone NOT NULL,
    precio_vaca_cuarta_balanza numeric(65,30) NOT NULL,
    tc numeric(65,30) NOT NULL
);


ALTER TABLE public.cpt_parametros_x_fecha OWNER TO mariaelena;

--
-- Name: cpt_parametros_x_fecha_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.cpt_parametros_x_fecha_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cpt_parametros_x_fecha_id_seq OWNER TO mariaelena;

--
-- Name: cpt_parametros_x_fecha_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.cpt_parametros_x_fecha_id_seq OWNED BY public.cpt_parametros_x_fecha.id;


--
-- Name: cpt_recaravaneo; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.cpt_recaravaneo (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    id_mod integer DEFAULT 0 NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    observaciones text NOT NULL,
    fecha timestamp(3) without time zone NOT NULL,
    cod_articulo text NOT NULL,
    nro_lote text NOT NULL,
    cod_identidad text NOT NULL,
    cod_identidad_nuevo text NOT NULL,
    id_empresa integer NOT NULL
);


ALTER TABLE public.cpt_recaravaneo OWNER TO mariaelena;

--
-- Name: cpt_recaravaneo_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.cpt_recaravaneo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cpt_recaravaneo_id_seq OWNER TO mariaelena;

--
-- Name: cpt_recaravaneo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.cpt_recaravaneo_id_seq OWNED BY public.cpt_recaravaneo.id;


--
-- Name: cpt_registro_lluvias; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.cpt_registro_lluvias (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    id_mod integer DEFAULT 0 NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    cantidad_mm numeric(65,30) NOT NULL,
    fecha timestamp(3) without time zone NOT NULL,
    observacion text NOT NULL,
    id_empresa integer NOT NULL
);


ALTER TABLE public.cpt_registro_lluvias OWNER TO mariaelena;

--
-- Name: cpt_registro_lluvias_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.cpt_registro_lluvias_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cpt_registro_lluvias_id_seq OWNER TO mariaelena;

--
-- Name: cpt_registro_lluvias_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.cpt_registro_lluvias_id_seq OWNED BY public.cpt_registro_lluvias.id;


--
-- Name: cpt_registro_sanitario; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.cpt_registro_sanitario (
    id integer NOT NULL,
    nro_trans integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    peso_total_real numeric(65,30),
    peso_total_facturado numeric(65,30),
    cantidad_ganado numeric(65,30),
    fecha timestamp(3) without time zone,
    id_motivo_sanitario integer NOT NULL,
    id_empresa integer DEFAULT 1 NOT NULL,
    en_alta boolean NOT NULL,
    cod_articulo text
);


ALTER TABLE public.cpt_registro_sanitario OWNER TO mariaelena;

--
-- Name: cpt_registro_sanitario_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.cpt_registro_sanitario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cpt_registro_sanitario_id_seq OWNER TO mariaelena;

--
-- Name: cpt_registro_sanitario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.cpt_registro_sanitario_id_seq OWNED BY public.cpt_registro_sanitario.id;


--
-- Name: cpt_registros_gasto; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.cpt_registros_gasto (
    id integer NOT NULL,
    nro_trans integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    descripcion text NOT NULL,
    fecha timestamp(3) without time zone NOT NULL,
    cod_docum text NOT NULL,
    importe_mo numeric(65,30),
    importe_mn numeric(65,30),
    importe_tr numeric(65,30),
    tc numeric(65,30) NOT NULL,
    id_moneda integer NOT NULL,
    id_titular integer NOT NULL,
    id_empresa integer DEFAULT 1 NOT NULL,
    id_tipo_gasto integer NOT NULL
);


ALTER TABLE public.cpt_registros_gasto OWNER TO mariaelena;

--
-- Name: cpt_registros_gasto_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.cpt_registros_gasto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cpt_registros_gasto_id_seq OWNER TO mariaelena;

--
-- Name: cpt_registros_gasto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.cpt_registros_gasto_id_seq OWNED BY public.cpt_registros_gasto.id;


--
-- Name: departamentos; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.departamentos (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    descripcion text NOT NULL
);


ALTER TABLE public.departamentos OWNER TO mariaelena;

--
-- Name: departamentos_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.departamentos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.departamentos_id_seq OWNER TO mariaelena;

--
-- Name: departamentos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.departamentos_id_seq OWNED BY public.departamentos.id;


--
-- Name: depositos; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.depositos (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    id_mod integer DEFAULT 0 NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    nombre text NOT NULL,
    superficie integer,
    dicose text,
    latitud text,
    longitud text,
    superficie_arrendada integer,
    id_departamento integer NOT NULL,
    id_usuario integer NOT NULL,
    id_empresa integer NOT NULL
);


ALTER TABLE public.depositos OWNER TO mariaelena;

--
-- Name: depositos_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.depositos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.depositos_id_seq OWNER TO mariaelena;

--
-- Name: depositos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.depositos_id_seq OWNED BY public.depositos.id;


--
-- Name: dicoses; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.dicoses (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    descripcion text,
    valor text,
    id_empresa integer
);


ALTER TABLE public.dicoses OWNER TO mariaelena;

--
-- Name: dicoses_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.dicoses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dicoses_id_seq OWNER TO mariaelena;

--
-- Name: dicoses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.dicoses_id_seq OWNED BY public.dicoses.id;


--
-- Name: empresas; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.empresas (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    id_mod integer DEFAULT 0 NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    nombre text NOT NULL,
    razon_social text,
    rut text NOT NULL,
    direccion text NOT NULL,
    email_contacto text NOT NULL,
    telefono_contacto text NOT NULL,
    observaciones text NOT NULL
);


ALTER TABLE public.empresas OWNER TO mariaelena;

--
-- Name: empresas_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.empresas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.empresas_id_seq OWNER TO mariaelena;

--
-- Name: empresas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.empresas_id_seq OWNED BY public.empresas.id;


--
-- Name: estado_pago; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.estado_pago (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    descripcion text NOT NULL
);


ALTER TABLE public.estado_pago OWNER TO mariaelena;

--
-- Name: estado_pago_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.estado_pago_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.estado_pago_id_seq OWNER TO mariaelena;

--
-- Name: estado_pago_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.estado_pago_id_seq OWNED BY public.estado_pago.id;


--
-- Name: estados_ganado; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.estados_ganado (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    descripcion text NOT NULL
);


ALTER TABLE public.estados_ganado OWNER TO mariaelena;

--
-- Name: estados_ganado_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.estados_ganado_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.estados_ganado_id_seq OWNER TO mariaelena;

--
-- Name: estados_ganado_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.estados_ganado_id_seq OWNED BY public.estados_ganado.id;


--
-- Name: estados_stock; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.estados_stock (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    descripcion text NOT NULL,
    es_fisico text DEFAULT 'S'::text NOT NULL
);


ALTER TABLE public.estados_stock OWNER TO mariaelena;

--
-- Name: estados_stock_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.estados_stock_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.estados_stock_id_seq OWNER TO mariaelena;

--
-- Name: estados_stock_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.estados_stock_id_seq OWNED BY public.estados_stock.id;


--
-- Name: marcas_ganado; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.marcas_ganado (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    descripcion text NOT NULL,
    id_tipo_ganado integer NOT NULL
);


ALTER TABLE public.marcas_ganado OWNER TO mariaelena;

--
-- Name: marcas_ganado_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.marcas_ganado_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.marcas_ganado_id_seq OWNER TO mariaelena;

--
-- Name: marcas_ganado_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.marcas_ganado_id_seq OWNED BY public.marcas_ganado.id;


--
-- Name: monedas; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.monedas (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    id_mod integer DEFAULT 0 NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    descripcion text NOT NULL,
    simbolo text NOT NULL
);


ALTER TABLE public.monedas OWNER TO mariaelena;

--
-- Name: monedas_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.monedas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.monedas_id_seq OWNER TO mariaelena;

--
-- Name: monedas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.monedas_id_seq OWNED BY public.monedas.id;


--
-- Name: motivos_mov_stock; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.motivos_mov_stock (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    descripcion text NOT NULL,
    cod_docum text NOT NULL,
    id_tipo_mov_stk integer NOT NULL
);


ALTER TABLE public.motivos_mov_stock OWNER TO mariaelena;

--
-- Name: motivos_mov_stock_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.motivos_mov_stock_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.motivos_mov_stock_id_seq OWNER TO mariaelena;

--
-- Name: motivos_mov_stock_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.motivos_mov_stock_id_seq OWNED BY public.motivos_mov_stock.id;


--
-- Name: motivos_sanitarios; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.motivos_sanitarios (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    descripcion text NOT NULL,
    frecuencia integer,
    recurrente boolean,
    unidad_frecuencia text,
    dosis numeric(65,30),
    cod_articulo text,
    id_empresa integer
);


ALTER TABLE public.motivos_sanitarios OWNER TO mariaelena;

--
-- Name: motivos_sanitarios_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.motivos_sanitarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.motivos_sanitarios_id_seq OWNER TO mariaelena;

--
-- Name: motivos_sanitarios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.motivos_sanitarios_id_seq OWNED BY public.motivos_sanitarios.id;


--
-- Name: numeradores; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.numeradores (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    descripcion text NOT NULL,
    valor integer NOT NULL
);


ALTER TABLE public.numeradores OWNER TO mariaelena;

--
-- Name: numeradores_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.numeradores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.numeradores_id_seq OWNER TO mariaelena;

--
-- Name: numeradores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.numeradores_id_seq OWNED BY public.numeradores.id;


--
-- Name: pasturas; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.pasturas (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    id_mod integer DEFAULT 0 NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    nombre text NOT NULL,
    vida_util_dias integer NOT NULL
);


ALTER TABLE public.pasturas OWNER TO mariaelena;

--
-- Name: pasturas_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.pasturas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pasturas_id_seq OWNER TO mariaelena;

--
-- Name: pasturas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.pasturas_id_seq OWNED BY public.pasturas.id;


--
-- Name: pasturas_x_sector; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.pasturas_x_sector (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    id_mod integer DEFAULT 0 NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    descripcion text NOT NULL,
    observaciones text NOT NULL,
    fecha_siembra timestamp(3) without time zone NOT NULL,
    fecha_pastoreo timestamp(3) without time zone NOT NULL,
    fecha_estimada_fin_pastoreo timestamp(3) without time zone NOT NULL,
    fecha_fin_pastoreo timestamp(3) without time zone NOT NULL,
    id_pastura integer NOT NULL,
    id_sector integer NOT NULL,
    id_empresa integer NOT NULL
);


ALTER TABLE public.pasturas_x_sector OWNER TO mariaelena;

--
-- Name: pasturas_x_sector_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.pasturas_x_sector_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pasturas_x_sector_id_seq OWNER TO mariaelena;

--
-- Name: pasturas_x_sector_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.pasturas_x_sector_id_seq OWNED BY public.pasturas_x_sector.id;


--
-- Name: permisos_x_rol_seccion; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.permisos_x_rol_seccion (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    id_mod integer DEFAULT 0 NOT NULL,
    id_seccion integer NOT NULL,
    id_accion integer NOT NULL,
    id_rol integer NOT NULL
);


ALTER TABLE public.permisos_x_rol_seccion OWNER TO mariaelena;

--
-- Name: permisos_x_rol_seccion_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.permisos_x_rol_seccion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.permisos_x_rol_seccion_id_seq OWNER TO mariaelena;

--
-- Name: permisos_x_rol_seccion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.permisos_x_rol_seccion_id_seq OWNED BY public.permisos_x_rol_seccion.id;


--
-- Name: permisos_x_usuario_seccion; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.permisos_x_usuario_seccion (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    id_usuario integer NOT NULL,
    id_seccion integer NOT NULL,
    id_accion integer NOT NULL,
    id_mod integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.permisos_x_usuario_seccion OWNER TO mariaelena;

--
-- Name: permisos_x_usuario_seccion_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.permisos_x_usuario_seccion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.permisos_x_usuario_seccion_id_seq OWNER TO mariaelena;

--
-- Name: permisos_x_usuario_seccion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.permisos_x_usuario_seccion_id_seq OWNED BY public.permisos_x_usuario_seccion.id;


--
-- Name: propiedad_ganado; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.propiedad_ganado (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    descripcion text NOT NULL
);


ALTER TABLE public.propiedad_ganado OWNER TO mariaelena;

--
-- Name: propiedad_ganado_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.propiedad_ganado_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.propiedad_ganado_id_seq OWNER TO mariaelena;

--
-- Name: propiedad_ganado_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.propiedad_ganado_id_seq OWNED BY public.propiedad_ganado.id;


--
-- Name: roles; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.roles (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    id_mod integer DEFAULT 0 NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    descripcion text NOT NULL
);


ALTER TABLE public.roles OWNER TO mariaelena;

--
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.roles_id_seq OWNER TO mariaelena;

--
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;


--
-- Name: secciones; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.secciones (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    id_mod integer DEFAULT 0 NOT NULL,
    descripcion text,
    tabla text NOT NULL,
    modelo text NOT NULL,
    id_seccion_padre integer NOT NULL,
    borrado_fisico boolean,
    borrado_logico boolean,
    id_empresa integer
);


ALTER TABLE public.secciones OWNER TO mariaelena;

--
-- Name: secciones_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.secciones_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.secciones_id_seq OWNER TO mariaelena;

--
-- Name: secciones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.secciones_id_seq OWNED BY public.secciones.id;


--
-- Name: sectores; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.sectores (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    id_mod integer DEFAULT 0 NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    nombre text NOT NULL,
    superficie integer,
    id_deposito integer NOT NULL,
    id_empresa integer NOT NULL,
    embarcadero boolean
);


ALTER TABLE public.sectores OWNER TO mariaelena;

--
-- Name: sectores_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.sectores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sectores_id_seq OWNER TO mariaelena;

--
-- Name: sectores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.sectores_id_seq OWNED BY public.sectores.id;


--
-- Name: tasas_iva; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.tasas_iva (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    descripcion text NOT NULL,
    porcentaje numeric(65,30) NOT NULL
);


ALTER TABLE public.tasas_iva OWNER TO mariaelena;

--
-- Name: tasas_iva_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.tasas_iva_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tasas_iva_id_seq OWNER TO mariaelena;

--
-- Name: tasas_iva_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.tasas_iva_id_seq OWNED BY public.tasas_iva.id;


--
-- Name: tipo_articulo; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.tipo_articulo (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    descripcion text NOT NULL
);


ALTER TABLE public.tipo_articulo OWNER TO mariaelena;

--
-- Name: tipo_articulo_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.tipo_articulo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tipo_articulo_id_seq OWNER TO mariaelena;

--
-- Name: tipo_articulo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.tipo_articulo_id_seq OWNED BY public.tipo_articulo.id;


--
-- Name: tipo_cambio_diario; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.tipo_cambio_diario (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    id_mod integer DEFAULT 0 NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    valor numeric(65,30) NOT NULL,
    fecha timestamp(3) without time zone NOT NULL,
    id_moneda integer NOT NULL
);


ALTER TABLE public.tipo_cambio_diario OWNER TO mariaelena;

--
-- Name: tipo_cambio_diario_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.tipo_cambio_diario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tipo_cambio_diario_id_seq OWNER TO mariaelena;

--
-- Name: tipo_cambio_diario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.tipo_cambio_diario_id_seq OWNED BY public.tipo_cambio_diario.id;


--
-- Name: tipos_costeo; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.tipos_costeo (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    id_mod integer DEFAULT 0 NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    descripcion text NOT NULL
);


ALTER TABLE public.tipos_costeo OWNER TO mariaelena;

--
-- Name: tipos_costeo_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.tipos_costeo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tipos_costeo_id_seq OWNER TO mariaelena;

--
-- Name: tipos_costeo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.tipos_costeo_id_seq OWNED BY public.tipos_costeo.id;


--
-- Name: tipos_ganado; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.tipos_ganado (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    descripcion text NOT NULL
);


ALTER TABLE public.tipos_ganado OWNER TO mariaelena;

--
-- Name: tipos_ganado_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.tipos_ganado_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tipos_ganado_id_seq OWNER TO mariaelena;

--
-- Name: tipos_ganado_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.tipos_ganado_id_seq OWNED BY public.tipos_ganado.id;


--
-- Name: tipos_gasto; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.tipos_gasto (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    descripcion text NOT NULL
);


ALTER TABLE public.tipos_gasto OWNER TO mariaelena;

--
-- Name: tipos_gasto_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.tipos_gasto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tipos_gasto_id_seq OWNER TO mariaelena;

--
-- Name: tipos_gasto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.tipos_gasto_id_seq OWNED BY public.tipos_gasto.id;


--
-- Name: tipos_mov_stock; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.tipos_mov_stock (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    descripcion text NOT NULL,
    naturaleza integer NOT NULL
);


ALTER TABLE public.tipos_mov_stock OWNER TO mariaelena;

--
-- Name: tipos_mov_stock_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.tipos_mov_stock_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tipos_mov_stock_id_seq OWNER TO mariaelena;

--
-- Name: tipos_mov_stock_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.tipos_mov_stock_id_seq OWNED BY public.tipos_mov_stock.id;


--
-- Name: tipos_titulares; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.tipos_titulares (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    id_mod integer DEFAULT 0 NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    descripcion text NOT NULL
);


ALTER TABLE public.tipos_titulares OWNER TO mariaelena;

--
-- Name: tipos_titulares_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.tipos_titulares_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tipos_titulares_id_seq OWNER TO mariaelena;

--
-- Name: tipos_titulares_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.tipos_titulares_id_seq OWNED BY public.tipos_titulares.id;


--
-- Name: tipos_toma_peso; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.tipos_toma_peso (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    descripcion text NOT NULL
);


ALTER TABLE public.tipos_toma_peso OWNER TO mariaelena;

--
-- Name: tipos_toma_peso_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.tipos_toma_peso_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tipos_toma_peso_id_seq OWNER TO mariaelena;

--
-- Name: tipos_toma_peso_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.tipos_toma_peso_id_seq OWNED BY public.tipos_toma_peso.id;


--
-- Name: titulares; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.titulares (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    id_mod integer DEFAULT 0 NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    nombre_fantasia text NOT NULL,
    razon_social text,
    rut text NOT NULL,
    direccion text NOT NULL,
    email text NOT NULL,
    observaciones text NOT NULL,
    nombre_contacto text NOT NULL,
    telefono_contacto text NOT NULL,
    id_tipo_titular integer NOT NULL,
    id_categoria_prov integer NOT NULL,
    id_categoria_cliente integer NOT NULL,
    id_empresa integer
);


ALTER TABLE public.titulares OWNER TO mariaelena;

--
-- Name: titulares_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.titulares_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.titulares_id_seq OWNER TO mariaelena;

--
-- Name: titulares_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.titulares_id_seq OWNED BY public.titulares.id;


--
-- Name: unidades; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.unidades (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    descripcion text NOT NULL,
    descripcion_corta text NOT NULL
);


ALTER TABLE public.unidades OWNER TO mariaelena;

--
-- Name: unidades_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.unidades_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.unidades_id_seq OWNER TO mariaelena;

--
-- Name: unidades_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.unidades_id_seq OWNED BY public.unidades.id;


--
-- Name: usuarios; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.usuarios (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    id_mod integer DEFAULT 0 NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    email text NOT NULL,
    hash text NOT NULL,
    "hashRt" text,
    telefono_contacto text,
    nombre text,
    apellido text,
    "isRegisteredWithGoogle" boolean DEFAULT false NOT NULL,
    "isAdmin" boolean DEFAULT false NOT NULL,
    token_recuperacion_pass text,
    id_rol integer NOT NULL
);


ALTER TABLE public.usuarios OWNER TO mariaelena;

--
-- Name: usuarios_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.usuarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuarios_id_seq OWNER TO mariaelena;

--
-- Name: usuarios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;


--
-- Name: usuarios_x_empresas; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.usuarios_x_empresas (
    id_usuario integer NOT NULL,
    id_empresa integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL
);


ALTER TABLE public.usuarios_x_empresas OWNER TO mariaelena;

--
-- Name: acciones id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.acciones ALTER COLUMN id SET DEFAULT nextval('public.acciones_id_seq'::regclass);


--
-- Name: articulos id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.articulos ALTER COLUMN id SET DEFAULT nextval('public.articulos_id_seq'::regclass);


--
-- Name: articulos_x_titular id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.articulos_x_titular ALTER COLUMN id SET DEFAULT nextval('public.articulos_x_titular_id_seq'::regclass);


--
-- Name: categorias_cliente id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.categorias_cliente ALTER COLUMN id SET DEFAULT nextval('public.categorias_cliente_id_seq'::regclass);


--
-- Name: categorias_ganado id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.categorias_ganado ALTER COLUMN id SET DEFAULT nextval('public.categorias_ganado_id_seq'::regclass);


--
-- Name: categorias_prov id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.categorias_prov ALTER COLUMN id SET DEFAULT nextval('public.categorias_prov_id_seq'::regclass);


--
-- Name: control_trans id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.control_trans ALTER COLUMN id SET DEFAULT nextval('public.control_trans_id_seq'::regclass);


--
-- Name: controles_x_seccion_accion id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.controles_x_seccion_accion ALTER COLUMN id SET DEFAULT nextval('public.controles_x_seccion_accion_id_seq'::regclass);


--
-- Name: cpf_consumos id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_consumos ALTER COLUMN id SET DEFAULT nextval('public.cpf_consumos_id_seq'::regclass);


--
-- Name: cpf_contaux id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_contaux ALTER COLUMN id SET DEFAULT nextval('public.cpf_contaux_id_seq'::regclass);


--
-- Name: cpf_costos id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_costos ALTER COLUMN id SET DEFAULT nextval('public.cpf_costos_id_seq'::regclass);


--
-- Name: cpf_log id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_log ALTER COLUMN id SET DEFAULT nextval('public.cpf_log_id_seq'::regclass);


--
-- Name: cpf_registro_sanitario id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_registro_sanitario ALTER COLUMN id SET DEFAULT nextval('public.cpf_registro_sanitario_id_seq'::regclass);


--
-- Name: cpf_stockaux id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_stockaux ALTER COLUMN id SET DEFAULT nextval('public.cpf_stockaux_id_seq'::regclass);


--
-- Name: cpp_fact_prov id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpp_fact_prov ALTER COLUMN id SET DEFAULT nextval('public.cpp_fact_prov_id_seq'::regclass);


--
-- Name: cpp_facturas id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpp_facturas ALTER COLUMN id SET DEFAULT nextval('public.cpp_facturas_id_seq'::regclass);


--
-- Name: cpp_ingresoromaneo id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpp_ingresoromaneo ALTER COLUMN id SET DEFAULT nextval('public.cpp_ingresoromaneo_id_seq'::regclass);


--
-- Name: cpp_movimiento_stock id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpp_movimiento_stock ALTER COLUMN id SET DEFAULT nextval('public.cpp_movimiento_stock_id_seq'::regclass);


--
-- Name: cpp_registro_sanitario id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpp_registro_sanitario ALTER COLUMN id SET DEFAULT nextval('public.cpp_registro_sanitario_id_seq'::regclass);


--
-- Name: cpt_evolucion_ganado id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_evolucion_ganado ALTER COLUMN id SET DEFAULT nextval('public.cpt_evolucion_ganado_id_seq'::regclass);


--
-- Name: cpt_fact_prov id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_fact_prov ALTER COLUMN id SET DEFAULT nextval('public.cpt_fact_prov_id_seq'::regclass);


--
-- Name: cpt_facturas id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_facturas ALTER COLUMN id SET DEFAULT nextval('public.cpt_facturas_id_seq'::regclass);


--
-- Name: cpt_ingresoromaneo id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_ingresoromaneo ALTER COLUMN id SET DEFAULT nextval('public.cpt_ingresoromaneo_id_seq'::regclass);


--
-- Name: cpt_movimiento_stock id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_movimiento_stock ALTER COLUMN id SET DEFAULT nextval('public.cpt_movimiento_stock_id_seq'::regclass);


--
-- Name: cpt_pago_fact_prov id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_pago_fact_prov ALTER COLUMN id SET DEFAULT nextval('public.cpt_pago_fact_prov_id_seq'::regclass);


--
-- Name: cpt_parametros_x_fecha id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_parametros_x_fecha ALTER COLUMN id SET DEFAULT nextval('public.cpt_parametros_x_fecha_id_seq'::regclass);


--
-- Name: cpt_recaravaneo id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_recaravaneo ALTER COLUMN id SET DEFAULT nextval('public.cpt_recaravaneo_id_seq'::regclass);


--
-- Name: cpt_registro_lluvias id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_registro_lluvias ALTER COLUMN id SET DEFAULT nextval('public.cpt_registro_lluvias_id_seq'::regclass);


--
-- Name: cpt_registro_sanitario id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_registro_sanitario ALTER COLUMN id SET DEFAULT nextval('public.cpt_registro_sanitario_id_seq'::regclass);


--
-- Name: cpt_registros_gasto id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_registros_gasto ALTER COLUMN id SET DEFAULT nextval('public.cpt_registros_gasto_id_seq'::regclass);


--
-- Name: departamentos id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.departamentos ALTER COLUMN id SET DEFAULT nextval('public.departamentos_id_seq'::regclass);


--
-- Name: depositos id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.depositos ALTER COLUMN id SET DEFAULT nextval('public.depositos_id_seq'::regclass);


--
-- Name: dicoses id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.dicoses ALTER COLUMN id SET DEFAULT nextval('public.dicoses_id_seq'::regclass);


--
-- Name: empresas id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.empresas ALTER COLUMN id SET DEFAULT nextval('public.empresas_id_seq'::regclass);


--
-- Name: estado_pago id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.estado_pago ALTER COLUMN id SET DEFAULT nextval('public.estado_pago_id_seq'::regclass);


--
-- Name: estados_ganado id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.estados_ganado ALTER COLUMN id SET DEFAULT nextval('public.estados_ganado_id_seq'::regclass);


--
-- Name: estados_stock id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.estados_stock ALTER COLUMN id SET DEFAULT nextval('public.estados_stock_id_seq'::regclass);


--
-- Name: marcas_ganado id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.marcas_ganado ALTER COLUMN id SET DEFAULT nextval('public.marcas_ganado_id_seq'::regclass);


--
-- Name: monedas id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.monedas ALTER COLUMN id SET DEFAULT nextval('public.monedas_id_seq'::regclass);


--
-- Name: motivos_mov_stock id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.motivos_mov_stock ALTER COLUMN id SET DEFAULT nextval('public.motivos_mov_stock_id_seq'::regclass);


--
-- Name: motivos_sanitarios id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.motivos_sanitarios ALTER COLUMN id SET DEFAULT nextval('public.motivos_sanitarios_id_seq'::regclass);


--
-- Name: numeradores id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.numeradores ALTER COLUMN id SET DEFAULT nextval('public.numeradores_id_seq'::regclass);


--
-- Name: pasturas id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.pasturas ALTER COLUMN id SET DEFAULT nextval('public.pasturas_id_seq'::regclass);


--
-- Name: pasturas_x_sector id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.pasturas_x_sector ALTER COLUMN id SET DEFAULT nextval('public.pasturas_x_sector_id_seq'::regclass);


--
-- Name: permisos_x_rol_seccion id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.permisos_x_rol_seccion ALTER COLUMN id SET DEFAULT nextval('public.permisos_x_rol_seccion_id_seq'::regclass);


--
-- Name: permisos_x_usuario_seccion id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.permisos_x_usuario_seccion ALTER COLUMN id SET DEFAULT nextval('public.permisos_x_usuario_seccion_id_seq'::regclass);


--
-- Name: propiedad_ganado id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.propiedad_ganado ALTER COLUMN id SET DEFAULT nextval('public.propiedad_ganado_id_seq'::regclass);


--
-- Name: roles id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);


--
-- Name: secciones id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.secciones ALTER COLUMN id SET DEFAULT nextval('public.secciones_id_seq'::regclass);


--
-- Name: sectores id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.sectores ALTER COLUMN id SET DEFAULT nextval('public.sectores_id_seq'::regclass);


--
-- Name: tasas_iva id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.tasas_iva ALTER COLUMN id SET DEFAULT nextval('public.tasas_iva_id_seq'::regclass);


--
-- Name: tipo_articulo id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.tipo_articulo ALTER COLUMN id SET DEFAULT nextval('public.tipo_articulo_id_seq'::regclass);


--
-- Name: tipo_cambio_diario id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.tipo_cambio_diario ALTER COLUMN id SET DEFAULT nextval('public.tipo_cambio_diario_id_seq'::regclass);


--
-- Name: tipos_costeo id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.tipos_costeo ALTER COLUMN id SET DEFAULT nextval('public.tipos_costeo_id_seq'::regclass);


--
-- Name: tipos_ganado id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.tipos_ganado ALTER COLUMN id SET DEFAULT nextval('public.tipos_ganado_id_seq'::regclass);


--
-- Name: tipos_gasto id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.tipos_gasto ALTER COLUMN id SET DEFAULT nextval('public.tipos_gasto_id_seq'::regclass);


--
-- Name: tipos_mov_stock id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.tipos_mov_stock ALTER COLUMN id SET DEFAULT nextval('public.tipos_mov_stock_id_seq'::regclass);


--
-- Name: tipos_titulares id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.tipos_titulares ALTER COLUMN id SET DEFAULT nextval('public.tipos_titulares_id_seq'::regclass);


--
-- Name: tipos_toma_peso id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.tipos_toma_peso ALTER COLUMN id SET DEFAULT nextval('public.tipos_toma_peso_id_seq'::regclass);


--
-- Name: titulares id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.titulares ALTER COLUMN id SET DEFAULT nextval('public.titulares_id_seq'::regclass);


--
-- Name: unidades id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.unidades ALTER COLUMN id SET DEFAULT nextval('public.unidades_id_seq'::regclass);


--
-- Name: usuarios id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);


--
-- Data for Name: _prisma_migrations; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) FROM stdin;
f0651fca-ceaf-4b89-93ba-318a50d73a41	f089d4eb96d615b5eae019576fa957345169ba8bfcf8fe2c6cdfa442933b1477	2023-08-09 21:59:34.346563+00	20230722170049_sdasdsa	\N	\N	2023-08-09 21:59:34.338296+00	1
35813692-82cb-447d-a478-0781f0bada9a	c82b937b88348fed6f3b79b9868d631d8dd249c0d4f66cb9039d1c8297e2d52f	2023-08-09 21:59:33.802933+00	20230602222715_primera_nuevamente	\N	\N	2023-08-09 21:59:33.705326+00	1
912fbfa1-6c94-4f4a-8e99-cbd1c8caed7f	ca7d73f11ea893f3df14ede022e9b98b631b1dcaf3901e7c66ae710d382ad74d	2023-08-09 21:59:34.030795+00	20230703215836_lanzamiento	\N	\N	2023-08-09 21:59:34.022875+00	1
de6bd151-8846-4e9d-b25c-1d06613ea60f	5116352d3c53576e4b2d7db1104a8d53d445523f211d62f165cf86cdbe0a259a	2023-08-09 21:59:33.814188+00	20230603210518_despues_de_los_insert	\N	\N	2023-08-09 21:59:33.805517+00	1
259cb916-5701-461a-8bed-90bf1c06d0bd	ce9fe7559336487871ecc196e72aa7beb762fcc1f2b194c7c37bda20de97825c	2023-08-09 21:59:33.82344+00	20230603214022_dasdasd	\N	\N	2023-08-09 21:59:33.816567+00	1
df90023f-8569-4d73-9b81-1ddf118f8dd1	db5693f56dbe280a5d7bf5a9840aac3591337412846b0dd7c5755f3840757972	2023-08-09 21:59:34.160129+00	20230712231737_borrado_logico_si_o_no	\N	\N	2023-08-09 21:59:34.150635+00	1
da58ee47-136a-4643-900d-293a6819438b	070a964afc343269009034853f35a7aa8cf7733720cf3d21ffad7a4b2b306245	2023-08-09 21:59:33.837825+00	20230624225115_sdasdasd	\N	\N	2023-08-09 21:59:33.825999+00	1
b4077435-a3c3-49d6-95c2-9ec37de126fe	0a33b9d9500ec01940c6bff887aca993f908e481c1a52801dbf41e536457e377	2023-08-09 21:59:34.041341+00	20230703222647_sigo_con_los_controles	\N	\N	2023-08-09 21:59:34.03376+00	1
7d5c74a2-015c-4a8d-b1d8-63631eed4648	12aa6c966a63010e07708d50ad710b5b845fc5b782a854f6c6a059be3582f9ee	2023-08-09 21:59:33.848112+00	20230626202706_token_recuperacion_usuario	\N	\N	2023-08-09 21:59:33.840397+00	1
251edaae-9532-4c1c-966e-de550819f9f4	138012afb561926f5d7043b908c68ee59ba4cdf0eeb3b9c20bcef223c73a3c6c	2023-08-09 21:59:33.860221+00	20230626211144_dasdasdasdasdas1111111111111111111	\N	\N	2023-08-09 21:59:33.851351+00	1
41a54e5b-6f18-45d2-bd43-02cbb82f462a	9f4522b821d3f44f83e1af19106943f57fa76bb026d3bcf47fe5a32f68a7fb16	2023-08-09 21:59:33.871255+00	20230626211853_ultima_para_ver_si_la_toma	\N	\N	2023-08-09 21:59:33.863029+00	1
7f4fd88e-a943-4f41-b09d-bdb475b2cdc1	df89657892ef30faf65666282b8137a1cc369d155ffcfa9f194b58f39ef84b9e	2023-08-09 21:59:34.062794+00	20230704140141_parte_contable	\N	\N	2023-08-09 21:59:34.044078+00	1
e0df3939-8e64-43da-a184-19f1cb99b74c	e081e7120ef44e8f926b7437e1d3c5c59a09526d5f76a9793d8a7f674856e1bc	2023-08-09 21:59:33.932294+00	20230628152552_ultima_con_proveedores_y_titularess	\N	\N	2023-08-09 21:59:33.87397+00	1
148c49cf-d846-4086-86ba-7dc198157eb1	4e22df388d662ff6d33245e1a0ef1e807240bb284d59eb8a41f9069c3f9c9d86	2023-08-09 21:59:33.948753+00	20230701141135_error_en_la_tabal_de_usuarios_x_empresa	\N	\N	2023-08-09 21:59:33.935101+00	1
3d428c69-61da-4e49-925c-7ed0cb88e29a	66799cb8c65cdef5b51e78ea7598335d0d2e85a5774c0e3014ca16cffb472d07	2023-08-09 21:59:34.265707+00	20230717012814_dsda	\N	\N	2023-08-09 21:59:34.254637+00	1
d99b9003-ac01-4190-8186-b87b1b987d01	29b061600ca5054be8e5a862c4e996916efc10fe9b649e770c446d92b4de188d	2023-08-09 21:59:33.978383+00	20230703182454_permisos_de_usuario_y_tabla_de_log	\N	\N	2023-08-09 21:59:33.951858+00	1
cfeb3b7a-9d7a-4a8a-8386-26e70110f028	330363ee34249f9dcb1ed687c158f5b807799a5b4fb5e3ee2a91f9f7f2f3709c	2023-08-09 21:59:34.079558+00	20230705125855_asignacion_de_permisos_automatica	\N	\N	2023-08-09 21:59:34.065495+00	1
85bc2139-f788-4f03-b150-9f8862bbcac8	978f75908d2c43d496071a3cc76134084f54d6e8597b3e43c4c842c9601ff15b	2023-08-09 21:59:33.988975+00	20230703182930_usuario_mod_tabla_de_permisos	\N	\N	2023-08-09 21:59:33.981115+00	1
21cb2ec6-a5ac-4a43-ac3e-07637f2e2564	1471c815fbe29bf7e749143c0331a268717f99b8fff08262df3f07c0533e1ebf	2023-08-09 21:59:34.00996+00	20230703204353_controles	\N	\N	2023-08-09 21:59:33.992055+00	1
c2e3d892-76a2-4ace-8035-755c1c131fed	aadf281f7b1403a730a77709b93dfeefc17ac0b72f367afc9802de021bbd3817	2023-08-09 21:59:34.171668+00	20230713002343_sdasd	\N	\N	2023-08-09 21:59:34.163033+00	1
91ba6faf-8731-43ee-88cf-9375cf1328e7	640799dc660490fece341c2f75285ba1b7252102c2574006f2a06a84af8de2b2	2023-08-09 21:59:34.020408+00	20230703205411_upgrade_controles	\N	\N	2023-08-09 21:59:34.012784+00	1
b4c334d1-f3b3-48d4-81df-6575c7c6e7ac	adb18d26317804347c1b9b0324cb4758a6dde840269a0e71de4a5997bf37bf5b	2023-08-09 21:59:34.103534+00	20230712131919_cambio_de_nro_lote	\N	\N	2023-08-09 21:59:34.082175+00	1
01dd64ab-3c34-4b89-a00e-c50e40acac70	e23f5263bae4784b607b9ebb68e4c3beb0936c4fb782d714077260be75fd5156	2023-08-09 21:59:34.113391+00	20230712180705_observacion_en_la_cpf_log	\N	\N	2023-08-09 21:59:34.106244+00	1
b23eccdf-e58b-4ea9-8b96-e4958b31c35b	4a60337c1c9c02e5109a3bff6939fd6f326111845870438931beebd7ad4adc59	2023-08-09 21:59:34.136595+00	20230712195930_motivos_sanitarios	\N	\N	2023-08-09 21:59:34.115739+00	1
ff68a5f0-aeb1-493e-a4c7-04b931302861	2ab4a94102731350f0a9a86cc2b1748c5f7266f2bdbc596737e83681ce3e7a5b	2023-08-09 21:59:34.183635+00	20230713004026_asdasd	\N	\N	2023-08-09 21:59:34.175055+00	1
b36e4ba1-982f-4b69-b887-dd798b2fdebf	16b57884262030b9ed4fb09520728d3d9ef598a6de3fcfc7c7108b7973739578	2023-08-09 21:59:34.14769+00	20230712214319_bania_garrapata	\N	\N	2023-08-09 21:59:34.139699+00	1
970b7450-45e4-466a-a63f-a7cc20cebc3a	dd5323b6c68747ff5db939cb6e75c1d042ececd39e6f65331f786cd56990623f	2023-08-09 21:59:34.319178+00	20230717235525_vghf	\N	\N	2023-08-09 21:59:34.300446+00	1
8b3727a4-ca48-4420-b566-8f9de446bfc1	2056c46e7b6106da8a70ad06466c8e3791b1fb1ab3fb1acfedb47ba41874c6db	2023-08-09 21:59:34.200983+00	20230713170430_hhj	\N	\N	2023-08-09 21:59:34.187206+00	1
241892f4-dc4b-4c17-a9a8-27632b1a88ec	6c694cc11cbbc81cb6c2cd57465b673e7c3c1032c2033c3f7b46cd182e0c262c	2023-08-09 21:59:34.276219+00	20230717014340_dsdsa	\N	\N	2023-08-09 21:59:34.268722+00	1
e5ef51a6-d438-40bc-af51-d83eb98d26c8	bb81e22260ebd9c9c56f8aece0141ce17b8466ffc45f09348e2b59b4891fc279	2023-08-09 21:59:34.240323+00	20230714191106_ddas	\N	\N	2023-08-09 21:59:34.204035+00	1
2b171ae2-01f6-478b-8ac6-7e98a7edc164	bd21679539ade9ef9546b3db0cad30071596f9068d85f3d28aad658be2884aa0	2023-08-09 21:59:34.251979+00	20230717002203_sdasdasd	\N	\N	2023-08-09 21:59:34.243041+00	1
79a206f5-2fcf-4564-8597-0fc63706868e	30708cff283ba7baede9435e42367a8f39b8bfbde405381dbd64c4f6cf0f5a53	2023-08-09 21:59:34.286657+00	20230717192754_kjsfadas	\N	\N	2023-08-09 21:59:34.278738+00	1
96632f16-b186-4477-8cd7-9b8b5530fb73	4f55c76d10cf168913d5b0e115f780519e1bff1d920146484bed277a325ff3c6	2023-08-09 21:59:34.297555+00	20230717200224_dasdsad	\N	\N	2023-08-09 21:59:34.289924+00	1
0fb53942-77dd-41ef-970e-94fa422ca444	73cc6b360c7056fe43dcbed4db7bc2ee994e83f50e709fa25bde565aa4482b44	2023-08-09 21:59:34.335418+00	20230717235647_dasdas	\N	\N	2023-08-09 21:59:34.321934+00	1
4faad293-d988-4ab1-b69d-3209021f989d	0f35c497cd9e18b65e97854f752c384fa00ab0060d9583f1cadad7a01748fbb4	2023-08-09 21:59:34.424838+00	20230726005148_jhjk	\N	\N	2023-08-09 21:59:34.360728+00	1
66b6ab3f-f177-4397-8ada-c6e1cd91c616	0c0ec7b06b672290971cbbe82617fa71b826239ba94b3bc3746b8a2482ca7579	2023-08-09 21:59:34.357268+00	20230724204335_dasdas	\N	\N	2023-08-09 21:59:34.349337+00	1
9ce1f4e7-e3a1-437e-a7a2-c1095670b6e8	bb861d64910b73b4534709023c3952e46b5d88c7181fa5af397ef7921be2cbf6	2023-08-09 21:59:34.434765+00	20230727201933_sdasd	\N	\N	2023-08-09 21:59:34.427453+00	1
2287a6ad-c65e-424a-8b72-b90351d4345a	e2fc6dfab818c8951409dd801a765c7918e019d79d9d03c83130b2c9f2f672ff	2023-08-09 21:59:34.45712+00	20230728231934_romaneo	\N	\N	2023-08-09 21:59:34.43744+00	1
da1eb435-b49c-428e-af80-79e6552f0e1a	f58c4b8a3f05bf0a25df48aab67bba8c50c4388b633bdb1e5b967e52efe9187d	2023-08-09 21:59:34.471937+00	20230731185410_sdasdas	\N	\N	2023-08-09 21:59:34.460034+00	1
538546a9-0ee2-4048-a915-21878e5f40e3	27576039ceed2385f36477af10ce125ca87eb898ad19c95bb4706ba4d5e7b725	2023-08-09 21:59:34.482231+00	20230801212217_jhghjl	\N	\N	2023-08-09 21:59:34.474855+00	1
00cc174f-798e-48a4-9b21-3bd2ebd78efb	35c05c54774eced39f8ea33081c37af5ecd08827a77f1e68a1a754ef97a894fd	2023-08-09 21:59:34.492661+00	20230801214441_dsasd	\N	\N	2023-08-09 21:59:34.484948+00	1
3587d619-1112-4ebb-931d-d7e2321e7c01	ec6db84f918b762892195f8de3d1a9be5f05d6c76a3370a2eede99c1d847f8f7	2023-08-09 21:59:34.504095+00	20230802225201_	\N	\N	2023-08-09 21:59:34.495519+00	1
30d9a26b-e5a3-4832-8b4e-388e9dfbe993	b024f064f10ad80eb84c0b5ab85a315d632d1533e0f8225d1b971d183a125559	2023-08-09 21:59:34.520261+00	20230803222102_sdas	\N	\N	2023-08-09 21:59:34.507696+00	1
f70c82b7-9793-4770-b4b6-70d883e7f52d	1bb26c8e093c3c3504c4eac1610d09bea518c807bc5696f5741cfd00c1e148dc	2023-08-09 21:59:34.547613+00	20230809214522_sdasdsa	\N	\N	2023-08-09 21:59:34.52282+00	1
23cf95f7-c179-4638-ad08-d16e10ea2f4f	87414bff9c7a38b52a836a1f42f5cafe5bd454f5d04cb85363ffe74189a0b125	2023-08-09 21:59:34.558402+00	20230809215324_bjjkh	\N	\N	2023-08-09 21:59:34.550355+00	1
423f64c4-ff98-4ac5-ab78-8dfe782423b6	c36c1d4fd88927df5fd4d555fe96eb8f5c3344041c4e062a03d9749d6fa88870	2023-08-09 22:34:21.322502+00	20230809223421_dsdas	\N	\N	2023-08-09 22:34:21.314588+00	1
31d597dc-2fab-4690-aaac-94270de15c91	1a5d958f1c000b00d3e02e6d2accd17737dfec9c0dd0603fce81b6a9a0315fc3	2023-08-10 00:13:18.044129+00	20230810001317_dasdas	\N	\N	2023-08-10 00:13:18.03664+00	1
bf058285-5bf2-4c8f-831e-5b173976adfb	e77e7f0392672f84adee80fdf8f207079460733da7311c96869c3ab3e0aa7318	2023-08-10 01:51:20.028529+00	20230810015119_sdasd	\N	\N	2023-08-10 01:51:20.021332+00	1
e99087fb-fdb9-4c39-8e06-d7d001cdc298	6f4e100ae1cc151317db3b19674296f93c1bd5f713b81f4ca16a3e47d76eb57f	2023-08-11 01:28:04.308433+00	20230811012804_hghj	\N	\N	2023-08-11 01:28:04.287027+00	1
af0fd1c0-6944-40e7-a9dc-98942fc44bff	8857478ec06edbdb01b9dbe8f005c45dd79eddddab067a9379d93148cb2bbcce	2023-08-11 01:34:18.952246+00	20230811013418_sdsa	\N	\N	2023-08-11 01:34:18.94438+00	1
9cf394ad-1c3d-4062-868a-45d9dea972dd	acac53d874852e66eaf7f824427c38132041c019fd50acfef4c4176f639efa23	2023-08-11 01:34:51.866006+00	20230811013451_ssdsa	\N	\N	2023-08-11 01:34:51.859483+00	1
de4ae8c8-19cf-4c19-95e4-06cc21f45177	9c657d53070887bfca3b370eed1f16f0a2555f831c380ef26ff44c40e890d406	2023-08-15 23:14:26.751733+00	20230815231426_sdfasdf	\N	\N	2023-08-15 23:14:26.727296+00	1
980ad8ac-c806-4653-b813-4fd929bcc547	310dc47b33f70bc06532012d0a3623e7eba709d1f1744c7972e46031800d8954	\N	20230824125408_sdfasd	A migration failed to apply. New migrations cannot be applied before the error is recovered from. Read more about how to resolve migration issues in a production database: https://pris.ly/d/migrate-resolve\n\nMigration name: 20230824125408_sdfasd\n\nDatabase error code: 23503\n\nDatabase error:\nERROR: insert or update on table "cpt_pago_fact_prov" violates foreign key constraint "cpt_pago_fact_prov_id_estado_pago_fkey"\nDETAIL: Key (id_estado_pago)=(1) is not present in table "estado_pago_prov".\n\nDbError { severity: "ERROR", parsed_severity: Some(Error), code: SqlState("23503"), message: "insert or update on table \\"cpt_pago_fact_prov\\" violates foreign key constraint \\"cpt_pago_fact_prov_id_estado_pago_fkey\\"", detail: Some("Key (id_estado_pago)=(1) is not present in table \\"estado_pago_prov\\"."), hint: None, position: None, where_: None, schema: Some("public"), table: Some("cpt_pago_fact_prov"), column: None, datatype: None, constraint: Some("cpt_pago_fact_prov_id_estado_pago_fkey"), file: Some("ri_triggers.c"), line: Some(2465), routine: Some("ri_ReportViolation") }\n\n   0: sql_migration_connector::sql_database_step_applier::apply_script\n           with migration_name="20230824125408_sdfasd"\n             at migration-engine/connectors/sql-migration-connector/src/sql_database_step_applier.rs:100\n   1: migration_core::api::ApplyMigrations\n             at migration-engine/core/src/api.rs:87	\N	2023-08-24 12:54:08.335023+00	0
\.


--
-- Data for Name: acciones; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.acciones (id, "createdAt", "updatedAt", estado, id_mod, descripcion) FROM stdin;
0	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	No asignado
1	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	Alta
2	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	Baja
3	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	Editar
4	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	Visualizar
\.


--
-- Data for Name: articulos; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.articulos (id, cod_articulo, "createdAt", "updatedAt", estado, nombre, id_unidad_stk, id_categoria_ganado, id_marca_ganado, id_empresa, id_tipo_articulo, id_tasa_iva_cmp, id_tasa_iva_vta, id_unidad_cmp, id_unidad_vta, factor_conv_cmp_a_stk) FROM stdin;
3	INSGASOIL	2023-07-19 22:44:40.565	2023-07-19 22:44:40.566	S	Gasoil	3	0	0	1	2	\N	\N	\N	\N	\N
4	INSNAFTA	2023-07-19 22:45:15.039	2023-07-19 22:45:15.039	S	Nafta	3	0	0	1	2	\N	\N	\N	\N	\N
0	NOASIG	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	No asignado	1	0	0	1	1	\N	\N	\N	\N	\N
6	saSA	2023-08-09 23:23:24.026	2023-08-09 23:42:34.309	N	saSas	0	0	1	1	0	0	0	1	1	121.000000000000000000000000000000
7	INSCARBUNCO	2023-08-09 23:54:52.838	2023-08-09 23:54:52.839	S	Carbunco	4	0	0	1	4	1	0	5	0	100.000000000000000000000000000000
10	VACINVCRU	2023-08-16 00:30:08.238	2023-08-16 00:30:08.239	S	Vaca invernada cruza	1	3	5	1	1	0	0	2	2	1.000000000000000000000000000000
9	INSPOLIVAC	2023-08-10 22:03:55.552	2023-08-10 22:03:55.552	S	Polivac	4	0	0	1	4	1	0	6	0	250.000000000000000000000000000000
8	INSNITROMIC	2023-08-10 21:34:27.496	2023-08-10 21:34:27.496	S	Nitromic Iver	4	0	0	1	4	1	0	7	0	500.000000000000000000000000000000
11	VACPRECRU	2023-08-22 19:22:28.912	2023-08-22 19:22:28.913	S	Vaca preñada cruza	1	4	5	1	1	0	0	2	2	1.000000000000000000000000000000
12	VACVACCRU	2023-08-22 19:32:54.832	2023-08-22 19:32:54.833	S	Vaca vacia cruza	1	8	5	1	1	0	0	2	2	1.000000000000000000000000000000
2	SERCOMIS1	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Servicio comision 1%	1	0	1	1	3	\N	\N	\N	\N	\N
14	TERNERACRU	2023-08-22 20:36:46.072	2023-08-22 20:36:46.073	S	Ternera cruza	1	13	5	1	1	0	0	2	2	1.000000000000000000000000000000
15	VAC12CRU	2023-08-22 20:37:58.76	2023-08-22 20:37:58.76	S	Vaquillona 1 -2 años	1	14	5	1	1	0	0	2	2	1.000000000000000000000000000000
16	VAC2MASCRU	2023-08-22 20:39:04.616	2023-08-22 20:39:04.617	S	Vaquillona 2 o más años	1	15	5	1	1	0	0	2	2	1.000000000000000000000000000000
\.


--
-- Data for Name: articulos_x_titular; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.articulos_x_titular (id, cod_articulo, "createdAt", "updatedAt", estado, id_titular, id_empresa) FROM stdin;
1	INSCARBUNCO	2023-08-10 00:00:38.047	2023-08-10 00:00:38.047	S	1	1
2	INSNITROMIC	2023-08-10 21:48:38.843	2023-08-10 21:48:38.843	S	1	1
3	INSPOLIVAC	2023-08-10 22:09:24.523	2023-08-10 22:09:24.523	S	1	1
\.


--
-- Data for Name: categorias_cliente; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.categorias_cliente (id, "createdAt", "updatedAt", id_mod, estado, descripcion) FROM stdin;
0	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	1	S	No asignado
1	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	1	S	Frigorifico
2	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	1	S	Particular
\.


--
-- Data for Name: categorias_ganado; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.categorias_ganado (id, "createdAt", "updatedAt", estado, descripcion, id_tipo_ganado) FROM stdin;
3	2023-07-19 22:10:21.8	2023-07-19 22:10:21.8	S	Vaca invernada	1
0	2023-07-19 22:40:21.485	2023-07-19 22:40:21.485	S	No asignado	1
4	2023-07-19 22:10:21.8	2023-07-19 22:10:21.8	S	Vaca preñada	1
5	2023-07-19 22:10:21.8	2023-07-19 22:10:21.8	S	Ternero al pie	1
7	2023-07-19 22:10:21.8	2023-07-19 22:10:21.8	S	Vaca parida	1
8	2023-08-22 19:34:19.605	2023-08-22 19:34:19.605	S	Vaca vacia	1
9	2023-08-22 20:24:36.978	2023-08-22 20:24:36.979	S	Ternero	1
10	2023-08-22 20:24:55.477	2023-08-22 20:24:55.478	S	Novillo 1 a 2 años	1
11	2023-08-22 20:25:05.782	2023-08-22 20:25:05.783	S	Novillo 2 a 3 años	1
12	2023-08-22 20:25:21.253	2023-08-22 20:25:21.254	S	Novillo mas de 3 años	1
13	2023-08-22 20:25:53.431	2023-08-22 20:25:53.431	S	Ternera	1
14	2023-08-22 20:26:10.656	2023-08-22 20:26:10.657	S	Vaquillona 1 a 2 años	1
15	2023-08-22 20:26:33.222	2023-08-22 20:26:33.223	S	Vaquillona mas de 2 años	1
16	2023-08-22 20:27:52.023	2023-08-22 20:27:52.024	S	Toro	1
\.


--
-- Data for Name: categorias_prov; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.categorias_prov (id, "createdAt", "updatedAt", id_mod, estado, descripcion) FROM stdin;
0	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	1	S	No asignado
1	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	1	S	Consignatario
2	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	1	S	Transportista
4	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	1	S	Veterinario
3	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	1	S	Almacen
\.


--
-- Data for Name: control_trans; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.control_trans (id, "createdAt", "updatedAt", estado, id_mod, nombre, descripcion, persistente, mensaje_error_general, lanzamiento) FROM stdin;
0	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	No asignado	No asignado	f	No asignado	1
1	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	NoRegIgualFecha	No se permite en la misma seccion 2 registros con la misma fecha	f	Se ha encontrado un error. Usted ya tiene un registro para la fecha de hoy	1
2	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	RegYaUtilizadoContabilidad	Registro ya utilizado en otras secciones	f	Se ha encontrado un error. Este registro ya se ha utilizado en transacciones posteriores	1
\.


--
-- Data for Name: controles_x_seccion_accion; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.controles_x_seccion_accion (id, "createdAt", "updatedAt", estado, id_mod, id_seccion, id_accion, id_control, mensaje_error_especifico, lanzamiento, campo_form) FROM stdin;
0	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	26	0	0	No asignado	1	
1	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	26	1	1		1	
2	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	26	2	2		1	
3	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	26	3	2		1	
4	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	26	3	2		3	fecha
\.


--
-- Data for Name: cpf_consumos; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.cpf_consumos (id, nro_trans, "createdAt", "updatedAt", estado, cantidad, cantidad2, cantidad3, signo, fecha, id_motivo_stk, cod_articulo, id_unidad_stk, id_empresa, id_sector, id_estado_stock) FROM stdin;
1	6	2023-08-21 23:10:19.305	2023-08-21 23:10:19.306	S	20.000000000000000000000000000000	0.000000000000000000000000000000	0.000000000000000000000000000000	1	2023-08-21 03:00:00	1	INSNITROMIC	4	1	7	1
2	6	2023-08-21 23:10:19.344	2023-08-21 23:10:19.345	S	4.000000000000000000000000000000	0.000000000000000000000000000000	0.000000000000000000000000000000	1	2023-08-21 03:00:00	1	INSCARBUNCO	4	1	7	1
3	6	2023-08-21 23:10:19.37	2023-08-21 23:10:19.37	S	10.000000000000000000000000000000	0.000000000000000000000000000000	0.000000000000000000000000000000	1	2023-08-21 03:00:00	1	INSPOLIVAC	4	1	7	1
4	6	2023-08-21 23:10:19.397	2023-08-21 23:10:19.398	S	20.000000000000000000000000000000	0.000000000000000000000000000000	0.000000000000000000000000000000	1	2023-08-21 03:00:00	1	INSNITROMIC	4	1	7	1
\.


--
-- Data for Name: cpf_contaux; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.cpf_contaux (id, nro_trans, "createdAt", "updatedAt", estado, importe_mo, importe_mn, importe_tr, fecha, nro_trans_ref, signo, serie_fact, cod_docum, nro_fact, id_moneda, id_titular, id_empresa, tc, importe_iva_mn, importe_iva_mo, importe_iva_tr, importe_total_mn, importe_total_mo, importe_total_tr) FROM stdin;
2	5	2023-08-21 22:59:45.277	2023-08-21 22:59:45.278	S	114.300000000000000000000000000000	4469.130000000000000000000000000000	114.300000000000000000000000000000	2023-08-21 03:00:00	-1	1	z	factprov	2221	2	1	1	39.100000000000000000000000000000	\N	\N	\N	4469.130000000000000000000000000000	114.300000000000000000000000000000	114.300000000000000000000000000000
\.


--
-- Data for Name: cpf_costos; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.cpf_costos (id, nro_trans, "createdAt", "updatedAt", estado, importe_mo, importe_mn, importe_tr, signo, nro_lote, cod_identidad, fecha, nro_trans_ref, cod_articulo, id_unidad_stk, id_empresa, id_tipo_costo, tc) FROM stdin;
1	6	2023-08-21 23:10:19.448	2023-08-21 23:10:19.449	S	1.000000000000000000000000000000	39.100000000000000000000000000000	1.000000000000000000000000000000	1	LOT-20230821-6-1	858000055905030	2023-08-21 03:00:00	0	VACINVCRU	1	1	1	39.100000000000000000000000000000
4	6	2023-08-21 23:10:19.5	2023-08-21 23:10:19.501	S	1.136000000000000000000000000000	44.420000000000000000000000000000	1.136000000000000000000000000000	1	LOT-20230821-6-1	858000055905030	2023-08-21 03:00:00	0	VACINVCRU	1	1	1	39.100000000000000000000000000000
8	6	2023-08-21 23:10:19.59	2023-08-21 23:10:19.591	S	1.136000000000000000000000000000	44.420000000000000000000000000000	1.136000000000000000000000000000	1	LOT-20230821-6-1	858000055905031	2023-08-21 03:00:00	0	VACINVCRU	1	1	1	39.100000000000000000000000000000
2	6	2023-08-21 23:10:19.468	2023-08-21 23:10:19.468	S	1.000000000000000000000000000000	39.100000000000000000000000000000	1.000000000000000000000000000000	1	LOT-20230821-6-1	858000055905030	2023-08-21 03:00:00	0	VACINVCRU	1	1	1	39.100000000000000000000000000000
5	6	2023-08-21 23:10:19.534	2023-08-21 23:10:19.535	S	1.000000000000000000000000000000	39.100000000000000000000000000000	1.000000000000000000000000000000	1	LOT-20230821-6-1	858000055905031	2023-08-21 03:00:00	0	VACINVCRU	1	1	1	39.100000000000000000000000000000
6	6	2023-08-21 23:10:19.553	2023-08-21 23:10:19.554	S	1.000000000000000000000000000000	39.100000000000000000000000000000	1.000000000000000000000000000000	1	LOT-20230821-6-1	858000055905031	2023-08-21 03:00:00	0	VACINVCRU	1	1	1	39.100000000000000000000000000000
3	6	2023-08-21 23:10:19.484	2023-08-21 23:10:19.485	S	0.150000000000000000000000000000	5.865000000000000000000000000000	0.150000000000000000000000000000	1	LOT-20230821-6-1	858000055905030	2023-08-21 03:00:00	0	VACINVCRU	1	1	1	39.100000000000000000000000000000
7	6	2023-08-21 23:10:19.57	2023-08-21 23:10:19.571	S	0.150000000000000000000000000000	5.865000000000000000000000000000	0.150000000000000000000000000000	1	LOT-20230821-6-1	858000055905031	2023-08-21 03:00:00	0	VACINVCRU	1	1	1	39.100000000000000000000000000000
\.


--
-- Data for Name: cpf_log; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.cpf_log (id, "createdAt", "updatedAt", estado, descripcion, fecha, id_registro, nro_trans, id_seccion, id_accion, observacion, cod_docum, id_empresa) FROM stdin;
1	2023-08-21 22:59:45.412	2023-08-21 22:59:45.413	S	Registro factura proveedor	2023-08-21 03:00:00	2	5	33	1	Ingreso de factura proveedor	facturaProv	1
2	2023-08-21 23:10:19.595	2023-08-21 23:10:19.596	S	Compra ganado	2023-08-21 03:00:00	4	6	48	1	Alta masiva de ganado por compra con bano	altaCmpMasivaConBano	1
\.


--
-- Data for Name: cpf_registro_sanitario; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.cpf_registro_sanitario (id, nro_trans, "createdAt", "updatedAt", estado, cantidad, cantidad2, cantidad3, fecha, nro_lote, cod_identidad, cod_articulo, id_empresa, id_motivo_sanitario, signo, id_padre) FROM stdin;
1	6	2023-08-21 23:10:19.436	2023-08-21 23:10:19.437	S	1.000000000000000000000000000000	419.000000000000000000000000000000	475.567502986857800000000000000000	2023-08-21 03:00:00	LOT-20230821-6-1	858000055905030	VACINVCRU	1	1	1	7
2	6	2023-08-21 23:10:19.461	2023-08-21 23:10:19.462	S	1.000000000000000000000000000000	419.000000000000000000000000000000	475.567502986857800000000000000000	2023-08-21 03:00:00	LOT-20230821-6-1	858000055905030	VACINVCRU	1	1	1	7
3	6	2023-08-21 23:10:19.478	2023-08-21 23:10:19.478	S	1.000000000000000000000000000000	419.000000000000000000000000000000	475.567502986857800000000000000000	2023-08-21 03:00:00	LOT-20230821-6-1	858000055905030	VACINVCRU	1	1	1	7
4	6	2023-08-21 23:10:19.494	2023-08-21 23:10:19.495	S	1.000000000000000000000000000000	419.000000000000000000000000000000	475.567502986857800000000000000000	2023-08-21 03:00:00	LOT-20230821-6-1	858000055905030	VACINVCRU	1	1	1	7
5	6	2023-08-21 23:10:19.527	2023-08-21 23:10:19.528	S	1.000000000000000000000000000000	418.000000000000000000000000000000	474.432497013142200000000000000000	2023-08-21 03:00:00	LOT-20230821-6-1	858000055905031	VACINVCRU	1	1	1	7
6	6	2023-08-21 23:10:19.547	2023-08-21 23:10:19.547	S	1.000000000000000000000000000000	418.000000000000000000000000000000	474.432497013142200000000000000000	2023-08-21 03:00:00	LOT-20230821-6-1	858000055905031	VACINVCRU	1	1	1	7
7	6	2023-08-21 23:10:19.564	2023-08-21 23:10:19.564	S	1.000000000000000000000000000000	418.000000000000000000000000000000	474.432497013142200000000000000000	2023-08-21 03:00:00	LOT-20230821-6-1	858000055905031	VACINVCRU	1	1	1	7
8	6	2023-08-21 23:10:19.582	2023-08-21 23:10:19.582	S	1.000000000000000000000000000000	418.000000000000000000000000000000	474.432497013142200000000000000000	2023-08-21 03:00:00	LOT-20230821-6-1	858000055905031	VACINVCRU	1	1	1	7
\.


--
-- Data for Name: cpf_stockaux; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.cpf_stockaux (id, nro_trans, "createdAt", "updatedAt", estado, cantidad, cantidad2, cantidad3, signo, nro_lote, cod_identidad, fecha, id_motivo_stk, cod_articulo, id_unidad_stk, id_empresa, id_estado_stock, id_sector) FROM stdin;
2	5	2023-08-21 22:59:45.33	2023-08-21 22:59:45.33	S	100.000000000000000000000000000000	0.000000000000000000000000000000	0.000000000000000000000000000000	1	0	0	2023-08-21 03:00:00	1	INSCARBUNCO	4	1	1	7
3	5	2023-08-21 22:59:45.363	2023-08-21 22:59:45.363	S	500.000000000000000000000000000000	0.000000000000000000000000000000	0.000000000000000000000000000000	1	0	0	2023-08-21 03:00:00	1	INSNITROMIC	4	1	1	7
4	5	2023-08-21 22:59:45.401	2023-08-21 22:59:45.401	S	250.000000000000000000000000000000	0.000000000000000000000000000000	0.000000000000000000000000000000	1	0	0	2023-08-21 03:00:00	1	INSPOLIVAC	4	1	1	7
5	6	2023-08-21 23:10:19.319	2023-08-21 23:10:19.32	S	20.000000000000000000000000000000	0.000000000000000000000000000000	0.000000000000000000000000000000	-1	0	0	2023-08-21 03:00:00	1	INSNITROMIC	4	1	1	7
6	6	2023-08-21 23:10:19.352	2023-08-21 23:10:19.353	S	4.000000000000000000000000000000	0.000000000000000000000000000000	0.000000000000000000000000000000	-1	0	0	2023-08-21 03:00:00	1	INSCARBUNCO	4	1	1	7
7	6	2023-08-21 23:10:19.382	2023-08-21 23:10:19.383	S	10.000000000000000000000000000000	0.000000000000000000000000000000	0.000000000000000000000000000000	-1	0	0	2023-08-21 03:00:00	1	INSPOLIVAC	4	1	1	7
8	6	2023-08-21 23:10:19.405	2023-08-21 23:10:19.405	S	20.000000000000000000000000000000	0.000000000000000000000000000000	0.000000000000000000000000000000	-1	0	0	2023-08-21 03:00:00	1	INSNITROMIC	4	1	1	7
9	6	2023-08-21 23:10:19.422	2023-08-21 23:10:19.422	S	1.000000000000000000000000000000	419.000000000000000000000000000000	475.567502986857800000000000000000	1	LOT-20230821-6-1	858000055905030	2023-08-21 03:00:00	1	VACINVCRU	1	1	1	6
10	6	2023-08-21 23:10:19.515	2023-08-21 23:10:19.515	S	1.000000000000000000000000000000	418.000000000000000000000000000000	474.432497013142200000000000000000	1	LOT-20230821-6-1	858000055905031	2023-08-21 03:00:00	1	VACINVCRU	1	1	1	6
\.


--
-- Data for Name: cpp_fact_prov; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.cpp_fact_prov (id, nro_trans, "createdAt", "updatedAt", estado, cantidad, precio_unitario, importe_mo, importe_mn, importe_tr, importe_total_mo, importe_total_mn, importe_total_tr, fecha, serie_fact_prov, nro_fact_prov, id_moneda, id_titular, id_empresa, tc, cod_docum, cod_articulo, conv_uni_cmp_a_stk, id_tasa_iva_cmp, importe_iva_basico_mn, importe_iva_basico_mo, importe_iva_basico_tr, importe_iva_excento_mn, importe_iva_excento_mo, importe_iva_excento_tr, importe_iva_minimo_mn, importe_iva_minimo_mo, importe_iva_minimo_tr, cantidad_stk) FROM stdin;
2	5	2023-08-21 22:59:45.31	2023-08-21 22:59:45.31	S	1	7.500000000000000000000000000000	7.500000000000000000000000000000	293.250000000000000000000000000000	7.500000000000000000000000000000	7.500000000000000000000000000000	293.250000000000000000000000000000	7.500000000000000000000000000000	2023-08-21 03:00:00	z	2221	2	1	1	39.100000000000000000000000000000	factprov	INSCARBUNCO	\N	\N	0.000000000000000000000000000000	0.000000000000000000000000000000	0.000000000000000000000000000000	0.000000000000000000000000000000	0.000000000000000000000000000000	0.000000000000000000000000000000	0.000000000000000000000000000000	0.000000000000000000000000000000	0.000000000000000000000000000000	100.000000000000000000000000000000
3	5	2023-08-21 22:59:45.342	2023-08-21 22:59:45.343	S	1	50.000000000000000000000000000000	50.000000000000000000000000000000	1955.000000000000000000000000000000	50.000000000000000000000000000000	50.000000000000000000000000000000	1955.000000000000000000000000000000	50.000000000000000000000000000000	2023-08-21 03:00:00	z	2221	2	1	1	39.100000000000000000000000000000	factprov	INSNITROMIC	\N	\N	0.000000000000000000000000000000	0.000000000000000000000000000000	0.000000000000000000000000000000	0.000000000000000000000000000000	0.000000000000000000000000000000	0.000000000000000000000000000000	0.000000000000000000000000000000	0.000000000000000000000000000000	0.000000000000000000000000000000	500.000000000000000000000000000000
4	5	2023-08-21 22:59:45.382	2023-08-21 22:59:45.383	S	1	56.800000000000000000000000000000	56.800000000000000000000000000000	2220.880000000000000000000000000000	56.800000000000000000000000000000	56.800000000000000000000000000000	2220.880000000000000000000000000000	56.800000000000000000000000000000	2023-08-21 03:00:00	z	2221	2	1	1	39.100000000000000000000000000000	factprov	INSPOLIVAC	\N	\N	0.000000000000000000000000000000	0.000000000000000000000000000000	0.000000000000000000000000000000	0.000000000000000000000000000000	0.000000000000000000000000000000	0.000000000000000000000000000000	0.000000000000000000000000000000	0.000000000000000000000000000000	0.000000000000000000000000000000	250.000000000000000000000000000000
\.


--
-- Data for Name: cpp_facturas; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.cpp_facturas (id, nro_trans, "createdAt", "updatedAt", estado, cantidad, precio_unitario, importe_mo, importe_mn, importe_tr, importe_total_mo, importe_total_mn, importe_total_tr, importe_iva_mo, importe_iva_mn, importe_iva_tr, fecha, serie_fact_prov, nro_fact_prov, id_moneda, id_titular, id_empresa, tc, cod_docum, nro_lote, cod_identidad, cod_articulo) FROM stdin;
\.


--
-- Data for Name: cpp_ingresoromaneo; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.cpp_ingresoromaneo (id, nro_trans, "createdAt", "updatedAt", estado, cantidad, precio_unitario, importe_mo, importe_mn, importe_tr, importe_total_mo, importe_total_mn, importe_total_tr, importe_iva_mo, importe_iva_mn, importe_iva_tr, kilos_salida, kilos_calc_declarado, kilos_calc_cuarta_balanza, fecha, serie_fact_prov, nro_fact_prov, id_moneda, id_titular, id_empresa, tc, cod_docum, cod_articulo, importe_mo_peso_cuarta_balanza, importe_mo_peso_entrada, importe_mo_peso_salida, cod_identidad) FROM stdin;
\.


--
-- Data for Name: cpp_movimiento_stock; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.cpp_movimiento_stock (id, nro_trans, "createdAt", "updatedAt", estado, cantidad, cantidad2, cantidad3, fecha, nro_lote, cod_identidad, cod_articulo, id_empresa) FROM stdin;
1	6	2023-08-21 23:10:19.412	2023-08-21 23:10:19.412	S	1.000000000000000000000000000000	419.000000000000000000000000000000	475.570000000000000000000000000000	2023-08-21 03:00:00	LOT-20230821-6-1	858000055905030	VACINVCRU	1
2	6	2023-08-21 23:10:19.506	2023-08-21 23:10:19.506	S	1.000000000000000000000000000000	418.000000000000000000000000000000	474.430000000000000000000000000000	2023-08-21 03:00:00	LOT-20230821-6-1	858000055905031	VACINVCRU	1
\.


--
-- Data for Name: cpp_registro_sanitario; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.cpp_registro_sanitario (id, nro_trans, "createdAt", "updatedAt", estado, cantidad, cantidad2, cantidad3, fecha, nro_lote, cod_identidad, cod_articulo, id_empresa, id_motivo_sanitario, id_padre) FROM stdin;
1	6	2023-08-21 23:10:19.428	2023-08-21 23:10:19.428	S	1.000000000000000000000000000000	419.000000000000000000000000000000	475.567502986857800000000000000000	2023-08-21 03:00:00	LOT-20230821-6-1	858000055905030	VACINVCRU	1	1	7
2	6	2023-08-21 23:10:19.456	2023-08-21 23:10:19.457	S	1.000000000000000000000000000000	419.000000000000000000000000000000	475.567502986857800000000000000000	2023-08-21 03:00:00	LOT-20230821-6-1	858000055905030	VACINVCRU	1	4	7
3	6	2023-08-21 23:10:19.473	2023-08-21 23:10:19.473	S	1.000000000000000000000000000000	419.000000000000000000000000000000	475.567502986857800000000000000000	2023-08-21 03:00:00	LOT-20230821-6-1	858000055905030	VACINVCRU	1	2	7
4	6	2023-08-21 23:10:19.489	2023-08-21 23:10:19.49	S	1.000000000000000000000000000000	419.000000000000000000000000000000	475.567502986857800000000000000000	2023-08-21 03:00:00	LOT-20230821-6-1	858000055905030	VACINVCRU	1	3	7
5	6	2023-08-21 23:10:19.521	2023-08-21 23:10:19.521	S	1.000000000000000000000000000000	418.000000000000000000000000000000	474.432497013142200000000000000000	2023-08-21 03:00:00	LOT-20230821-6-1	858000055905031	VACINVCRU	1	1	7
6	6	2023-08-21 23:10:19.541	2023-08-21 23:10:19.541	S	1.000000000000000000000000000000	418.000000000000000000000000000000	474.432497013142200000000000000000	2023-08-21 03:00:00	LOT-20230821-6-1	858000055905031	VACINVCRU	1	4	7
7	6	2023-08-21 23:10:19.559	2023-08-21 23:10:19.559	S	1.000000000000000000000000000000	418.000000000000000000000000000000	474.432497013142200000000000000000	2023-08-21 03:00:00	LOT-20230821-6-1	858000055905031	VACINVCRU	1	2	7
8	6	2023-08-21 23:10:19.575	2023-08-21 23:10:19.576	S	1.000000000000000000000000000000	418.000000000000000000000000000000	474.432497013142200000000000000000	2023-08-21 03:00:00	LOT-20230821-6-1	858000055905031	VACINVCRU	1	3	7
\.


--
-- Data for Name: cpt_evolucion_ganado; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.cpt_evolucion_ganado (id, "createdAt", "updatedAt", id_mod, estado, cod_articulo, cod_articulo_evoluciona, peso_fin) FROM stdin;
1	2023-08-09 23:23:24.026	2023-08-09 23:23:24.026	1	S	TERNERACRU	VAC12CRU	0.000000000000000000000000000000
0	2023-08-09 23:23:24.026	2023-08-09 23:23:24.026	1	S	NOASIG	NOASIG	0.000000000000000000000000000000
\.


--
-- Data for Name: cpt_fact_prov; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.cpt_fact_prov (id, nro_trans, "createdAt", "updatedAt", estado, importe_mo, importe_mn, importe_tr, fecha, nro_trans_ref, serie_fact_prov, nro_fact_prov, id_moneda, id_titular, id_empresa, cod_docum, tc, importe_total_mn, importe_total_mo, importe_total_tr, afecta_costo, importe_iva_basico_mn, importe_iva_basico_mo, importe_iva_basico_tr, importe_iva_excento_mn, importe_iva_excento_mo, importe_iva_excento_tr, importe_iva_minimo_mn, importe_iva_minimo_mo, importe_iva_minimo_tr, importe_iva_total_mn, importe_iva_total_mo, importe_iva_total_tr) FROM stdin;
2	5	2023-08-21 22:59:45.204	2023-08-21 22:59:45.204	S	114.300000000000000000000000000000	4469.130000000000000000000000000000	114.300000000000000000000000000000	2023-08-21 03:00:00	-1	z	2221	2	1	1	factprov	39.100000000000000000000000000000	4469.130000000000000000000000000000	114.300000000000000000000000000000	114.300000000000000000000000000000	\N	0.000000000000000000000000000000	0.000000000000000000000000000000	0.000000000000000000000000000000	0.000000000000000000000000000000	0.000000000000000000000000000000	0.000000000000000000000000000000	0.000000000000000000000000000000	0.000000000000000000000000000000	0.000000000000000000000000000000	\N	\N	\N
\.


--
-- Data for Name: cpt_facturas; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.cpt_facturas (id, nro_trans, "createdAt", "updatedAt", estado, importe_mo, importe_mn, importe_tr, fecha, nro_trans_ref, serie_fact_prov, cod_docum, nro_fact_prov, id_moneda, id_titular, id_empresa, tc, nro_lote_salida, nro_tropa) FROM stdin;
\.


--
-- Data for Name: cpt_ingresoromaneo; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.cpt_ingresoromaneo (id, nro_trans, "createdAt", "updatedAt", estado, importe_mo, importe_mn, importe_tr, importe_total_mo, importe_total_mn, importe_total_tr, importe_iva_mo, importe_iva_mn, importe_iva_tr, cantidad_animales, cantidad_kilos_declarados, cantidad_kilos_cuarta_balanza, porcentaje_rendimiento, fecha, nro_trans_ref, serie_fact_prov, nro_fact_prov, id_moneda, id_titular, id_empresa, tc, cod_docum, afecta_costo, cantidad_kilos_salida, nro_romaneo, nro_tropa) FROM stdin;
\.


--
-- Data for Name: cpt_movimiento_stock; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.cpt_movimiento_stock (id, nro_trans, "createdAt", "updatedAt", estado, peso_total_real, peso_total_facturado, cantidad_ganado, fecha, serie_guia, nro_guia, valor_dicose, id_propiedad_ganado, cod_articulo, id_tipo_toma_peso, id_motivo_stk, id_empresa, bania_garrapata, nro_lote, observaciones) FROM stdin;
4	6	2023-08-21 23:10:19.272	2023-08-21 23:10:19.272	S	837.000000000000000000000000000000	950.000000000000000000000000000000	2.000000000000000000000000000000	2023-08-21 03:00:00	A	232312	1	1	VACINVCRU	1	1	1	t	LOT-20230821-6-1	\N
\.


--
-- Data for Name: cpt_pago_fact_prov; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.cpt_pago_fact_prov (id, nro_trans, "createdAt", "updatedAt", estado, importe_mo, importe_mn, importe_tr, fecha, nro_trans_ref, serie_fact_prov, nro_fact_prov, id_moneda, id_titular, id_empresa, tc, cod_docum, id_estado_pago) FROM stdin;
1	4	2023-08-21 22:50:13.36	2023-08-21 22:50:13.361	S	114.300000000000000000000000000000	4469.130000000000000000000000000000	114.300000000000000000000000000000	2023-08-21 03:00:00	-1	A	1233	2	1	1	39.100000000000000000000000000000	factprov	1
2	5	2023-08-21 22:59:45.296	2023-08-21 22:59:45.297	S	114.300000000000000000000000000000	4469.130000000000000000000000000000	114.300000000000000000000000000000	2023-08-21 03:00:00	-1	z	2221	2	1	1	39.100000000000000000000000000000	factprov	2
\.


--
-- Data for Name: cpt_parametros_x_fecha; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.cpt_parametros_x_fecha (id, nro_trans, "createdAt", "updatedAt", estado, fecha, precio_vaca_cuarta_balanza, tc) FROM stdin;
\.


--
-- Data for Name: cpt_recaravaneo; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.cpt_recaravaneo (id, "createdAt", "updatedAt", id_mod, estado, observaciones, fecha, cod_articulo, nro_lote, cod_identidad, cod_identidad_nuevo, id_empresa) FROM stdin;
\.


--
-- Data for Name: cpt_registro_lluvias; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.cpt_registro_lluvias (id, "createdAt", "updatedAt", id_mod, estado, cantidad_mm, fecha, observacion, id_empresa) FROM stdin;
\.


--
-- Data for Name: cpt_registro_sanitario; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.cpt_registro_sanitario (id, nro_trans, "createdAt", "updatedAt", estado, peso_total_real, peso_total_facturado, cantidad_ganado, fecha, id_motivo_sanitario, id_empresa, en_alta, cod_articulo) FROM stdin;
4	6	2023-08-21 23:10:19.284	2023-08-21 23:10:19.285	S	837.000000000000000000000000000000	950.000000000000000000000000000000	2.000000000000000000000000000000	2023-08-21 03:00:00	1	1	t	\N
5	6	2023-08-21 23:10:19.332	2023-08-21 23:10:19.332	S	837.000000000000000000000000000000	950.000000000000000000000000000000	2.000000000000000000000000000000	2023-08-21 03:00:00	2	1	t	\N
6	6	2023-08-21 23:10:19.36	2023-08-21 23:10:19.36	S	837.000000000000000000000000000000	950.000000000000000000000000000000	2.000000000000000000000000000000	2023-08-21 03:00:00	3	1	t	\N
7	6	2023-08-21 23:10:19.389	2023-08-21 23:10:19.389	S	837.000000000000000000000000000000	950.000000000000000000000000000000	2.000000000000000000000000000000	2023-08-21 03:00:00	4	1	t	\N
\.


--
-- Data for Name: cpt_registros_gasto; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.cpt_registros_gasto (id, nro_trans, "createdAt", "updatedAt", estado, descripcion, fecha, cod_docum, importe_mo, importe_mn, importe_tr, tc, id_moneda, id_titular, id_empresa, id_tipo_gasto) FROM stdin;
\.


--
-- Data for Name: departamentos; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.departamentos (id, "createdAt", "updatedAt", estado, descripcion) FROM stdin;
1	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Montevideo
2	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Rivera
3	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Canelones
4	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Soriano
5	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Lavalleja
6	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Tacuarembo
7	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Artigas
8	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Salto
9	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Paysandu
10	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Rio Negro
11	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Colonia
12	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Maldonado
13	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Rocha
14	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Flores
15	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Florida
16	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Cerro Largo
17	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Durazno
18	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	San Jose
19	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Treinta y Tres
\.


--
-- Data for Name: depositos; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.depositos (id, "createdAt", "updatedAt", id_mod, estado, nombre, superficie, dicose, latitud, longitud, superficie_arrendada, id_departamento, id_usuario, id_empresa) FROM stdin;
0	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	1	S	No asignado	0	0	0	0	0	2	1	1
2	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	1	S	Isabelita	2000	2323232	-56	-32	1800	2	1	1
1	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	1	S	Estancia	2000	2323232	-56	-32	1800	2	1	1
3	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	1	S	Puesto	2000	2323232	-56	-32	1800	2	1	1
\.


--
-- Data for Name: dicoses; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.dicoses (id, "createdAt", "updatedAt", estado, descripcion, valor, id_empresa) FROM stdin;
1	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	La Maria Elena SRL	130563511	\N
0	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	No asignado	0	\N
2	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Diego Fernandez	FF0563554	\N
3	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Juan Ignacion Fernandez	FF0126871	\N
\.


--
-- Data for Name: empresas; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.empresas (id, "createdAt", "updatedAt", id_mod, estado, nombre, razon_social, rut, direccion, email_contacto, telefono_contacto, observaciones) FROM stdin;
1	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	1	S	La Maria Elena SRL	La Maria Elena SRL	217965240018	Avenida del sol 2365	jifb@gmail.com	094 099 400	Ninguna observacion
\.


--
-- Data for Name: estado_pago; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.estado_pago (id, "createdAt", "updatedAt", estado, descripcion) FROM stdin;
0	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	No asignado
1	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Pendiente
2	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Pago
\.


--
-- Data for Name: estados_ganado; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.estados_ganado (id, "createdAt", "updatedAt", estado, descripcion) FROM stdin;
1	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Propio
2	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Ajeno
0	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	No asignado
\.


--
-- Data for Name: estados_stock; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.estados_stock (id, "createdAt", "updatedAt", estado, descripcion, es_fisico) FROM stdin;
1	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Existencias	S
2	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Muerto	S
3	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Faeneado	S
\.


--
-- Data for Name: marcas_ganado; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.marcas_ganado (id, "createdAt", "updatedAt", estado, descripcion, id_tipo_ganado) FROM stdin;
1	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Hereford	1
2	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Bradford	1
3	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Jersey	1
4	2023-07-19 22:13:20.083	2023-07-19 22:13:20.084	S	Angus	1
0	2023-07-19 22:40:33.369	2023-07-19 22:40:33.37	S	No asignado	1
5	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Cruza	1
\.


--
-- Data for Name: monedas; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.monedas (id, "createdAt", "updatedAt", id_mod, estado, descripcion, simbolo) FROM stdin;
1	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	1	S	Peso uruguayo	$
2	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	1	S	Dolares americanos	U$S
0	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	1	S	No asignado	-
\.


--
-- Data for Name: motivos_mov_stock; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.motivos_mov_stock (id, "createdAt", "updatedAt", estado, descripcion, cod_docum, id_tipo_mov_stk) FROM stdin;
1	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Compra de ganado	cmpGanado	1
2	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Venta de ganado	vtaGanado	2
3	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Ajuste de stock en alta	ajustkA	1
4	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Nacimiento	ajustkA	1
5	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Ajuste de stock en baja	ajustkB	2
6	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Traslado sin motivo particular\n	traslSM	3
7	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Muerte	muerteGanado	2
12	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	registrosanitario	regSanitario	0
11	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	registropesada	regPesada	0
13	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Rotacion pastura	rotPastura	3
14	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Paricion	paricion	3
15	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Preñez	preniez	3
16	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Destete\n	destete	3
17	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Cambio de categoria	cmbCategoria	3
\.


--
-- Data for Name: motivos_sanitarios; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.motivos_sanitarios (id, "createdAt", "updatedAt", estado, descripcion, frecuencia, recurrente, unidad_frecuencia, dosis, cod_articulo, id_empresa) FROM stdin;
0	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	No asignado	0	\N	mes	\N	\N	\N
3	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Clostridiosis	1	f	dias	5.000000000000000000000000000000	INSPOLIVAC	\N
2	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Carbunco bacteridiano 	1	t	mensual	2.000000000000000000000000000000	INSCARBUNCO	\N
1	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Parasitos ext. - Garrapata	21	t	dias	10.000000000000000000000000000000	INSNITROMIC	\N
4	2023-07-24 21:09:32.991	2023-07-24 21:09:32.991	S	Parasitos Internos	1	f	dias	10.000000000000000000000000000000	INSNITROMIC	\N
5	2023-08-22 14:02:32.73	2023-08-22 14:02:46.195	N	weqwe	\N	f	semanal	\N	INSCARBUNCO	\N
6	2023-08-22 14:07:13.831	2023-08-22 14:07:13.832	S	Test preñez	0	t	mensual	0.000000000000000000000000000000	NOASIG	\N
\.


--
-- Data for Name: numeradores; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.numeradores (id, "createdAt", "updatedAt", estado, descripcion, valor) FROM stdin;
1	2023-06-01 19:20:30.451	2023-08-21 23:10:19.254	S	nro_trans	6
\.


--
-- Data for Name: pasturas; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.pasturas (id, "createdAt", "updatedAt", id_mod, estado, nombre, vida_util_dias) FROM stdin;
1	2023-07-26 21:34:38.314	2023-07-26 21:34:38.315	0	S	Ryegrass	730
\.


--
-- Data for Name: pasturas_x_sector; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.pasturas_x_sector (id, "createdAt", "updatedAt", id_mod, estado, descripcion, observaciones, fecha_siembra, fecha_pastoreo, fecha_estimada_fin_pastoreo, fecha_fin_pastoreo, id_pastura, id_sector, id_empresa) FROM stdin;
1	2023-07-26 23:46:43.95	2023-07-26 23:46:43.951	0	S	asdsadasd	sdasdasdas	2023-07-26 15:00:00	2023-07-27 15:00:00	2023-07-14 15:00:00	2023-07-07 15:00:00	1	1	1
\.


--
-- Data for Name: permisos_x_rol_seccion; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.permisos_x_rol_seccion (id, "createdAt", "updatedAt", estado, id_mod, id_seccion, id_accion, id_rol) FROM stdin;
\.


--
-- Data for Name: permisos_x_usuario_seccion; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.permisos_x_usuario_seccion (id, "createdAt", "updatedAt", estado, id_usuario, id_seccion, id_accion, id_mod) FROM stdin;
1	2023-07-17 03:00:00	2023-07-17 03:00:00	S	2	26	1	1
2	2023-07-17 03:00:00	2023-07-17 03:00:00	S	2	26	4	1
3	2023-07-17 03:00:00	2023-07-17 03:00:00	S	2	13	1	1
4	2023-07-17 03:00:00	2023-07-17 03:00:00	S	2	13	4	1
5	2023-07-17 03:00:00	2023-07-17 03:00:00	S	2	24	4	1
6	2023-07-17 03:00:00	2023-07-17 03:00:00	S	2	24	1	1
7	2023-07-17 03:00:00	2023-07-17 03:00:00	S	2	35	1	1
8	2023-07-17 03:00:00	2023-07-17 03:00:00	S	2	35	4	1
9	2023-07-19 18:58:12.52	2023-07-19 18:58:12.521	S	2	30	4	0
10	2023-07-19 18:59:01.447	2023-07-19 18:59:01.448	S	2	30	1	0
11	2023-07-19 20:07:58.874	2023-07-19 20:07:58.874	S	2	30	3	0
12	2023-07-19 20:08:15.169	2023-07-19 20:08:15.17	S	2	30	2	0
13	2023-07-19 21:44:41.299	2023-07-19 21:44:41.3	S	2	10	4	0
14	2023-07-19 21:44:52.868	2023-07-19 21:44:52.869	S	2	10	1	0
15	2023-07-19 21:45:08.664	2023-07-19 21:45:08.664	S	2	11	4	0
16	2023-07-19 21:45:17.263	2023-07-19 21:45:17.264	S	2	11	1	0
17	2023-07-19 21:45:25.118	2023-07-19 21:45:25.118	S	2	14	4	0
18	2023-07-19 21:45:33.936	2023-07-19 21:45:33.936	S	2	14	1	0
19	2023-07-20 22:57:16.626	2023-07-20 22:57:16.626	S	2	6	4	0
20	2023-07-20 22:57:28.754	2023-07-20 22:57:28.755	S	2	6	1	0
21	2023-07-20 22:57:38.071	2023-07-20 22:57:38.072	S	2	8	4	0
22	2023-07-20 22:58:50.843	2023-07-20 22:58:50.844	S	2	3	4	0
23	2023-07-20 22:58:57.05	2023-07-20 22:58:57.05	S	2	3	1	0
24	2023-07-22 16:56:28.958	2023-07-22 16:56:28.958	S	2	6	3	0
25	2023-07-24 15:23:28.263	2023-07-24 15:23:28.264	S	2	8	1	0
26	2023-07-24 20:20:58.407	2023-07-24 20:20:58.407	S	2	22	1	0
27	2023-07-24 20:21:24.271	2023-07-24 20:21:24.272	S	2	22	4	0
28	2023-07-24 20:21:32.228	2023-07-24 20:21:32.229	S	2	22	3	0
29	2023-07-24 20:40:26.676	2023-07-24 20:40:26.677	S	2	3	3	0
30	2023-07-26 20:59:59.083	2023-07-26 20:59:59.084	S	2	49	1	0
31	2023-07-26 21:00:08.297	2023-07-26 21:00:08.297	S	2	49	4	0
32	2023-07-26 21:06:56.506	2023-07-26 21:06:56.507	S	2	8	3	0
33	2023-07-26 21:30:14.104	2023-07-26 21:30:14.104	S	2	50	1	0
34	2023-07-26 21:30:23.867	2023-07-26 21:30:23.868	S	2	50	4	0
35	2023-07-26 21:30:33.399	2023-07-26 21:30:33.399	S	2	50	3	0
36	2023-07-26 23:05:09.798	2023-07-26 23:05:09.798	S	2	51	4	0
37	2023-07-26 23:05:19.57	2023-07-26 23:05:19.57	S	2	51	1	0
38	2023-07-26 23:05:28.083	2023-07-26 23:05:28.083	S	2	51	3	0
39	2023-07-27 00:12:42.271	2023-07-27 00:12:42.272	S	2	52	4	0
40	2023-07-27 00:12:53.483	2023-07-27 00:12:53.483	S	2	52	1	0
41	2023-08-09 23:25:31.422	2023-08-09 23:25:31.423	S	2	14	2	0
42	2023-08-09 23:25:31.974	2023-08-09 23:25:31.975	S	2	14	2	0
43	2023-08-09 23:34:02.202	2023-08-09 23:34:02.203	S	2	14	2	0
44	2023-08-09 23:38:18.827	2023-08-09 23:38:18.827	S	2	14	2	0
45	2023-08-10 00:00:07.945	2023-08-10 00:00:07.946	S	2	46	1	0
46	2023-08-10 00:00:17.615	2023-08-10 00:00:17.615	S	2	46	2	0
47	2023-08-10 21:36:49.376	2023-08-10 21:36:49.377	S	2	14	3	0
48	2023-08-10 21:47:53.062	2023-08-10 21:47:53.063	S	2	46	1	0
49	2023-08-10 21:48:19.97	2023-08-10 21:48:19.97	S	2	46	4	0
50	2023-08-22 21:33:13.696	2023-08-22 21:33:13.697	S	2	53	1	0
51	2023-08-22 21:33:24.419	2023-08-22 21:33:24.42	S	2	53	2	0
52	2023-08-22 21:33:34.548	2023-08-22 21:33:34.548	S	2	53	3	0
53	2023-08-22 21:33:45.347	2023-08-22 21:33:45.348	S	2	53	4	0
54	2023-08-23 21:46:27.152	2023-08-23 21:46:27.153	S	2	54	3	0
55	2023-08-23 21:46:37.902	2023-08-23 21:46:37.903	S	2	54	4	0
56	2023-08-24 21:04:55.515	2023-08-24 21:04:55.515	S	2	10	3	0
\.


--
-- Data for Name: propiedad_ganado; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.propiedad_ganado (id, "createdAt", "updatedAt", estado, descripcion) FROM stdin;
1	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Propio
2	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Ajeno
0	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	No asignado
\.


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.roles (id, "createdAt", "updatedAt", id_mod, estado, descripcion) FROM stdin;
1	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	1	S	Super-admin
2	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	1	S	Administrador
3	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	1	S	Reporte
4	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	1	S	Operario
\.


--
-- Data for Name: secciones; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.secciones (id, "createdAt", "updatedAt", estado, id_mod, descripcion, tabla, modelo, id_seccion_padre, borrado_fisico, borrado_logico, id_empresa) FROM stdin;
1	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	Estados_Ganado	estados_ganado	Estados_Ganado	0	f	\N	\N
2	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	Estados_Stock	estados_stock	Estados_Stock	0	f	\N	\N
3	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	Motivos_Sanitarios	motivos_sanitarios	Motivos_Sanitarios	0	f	\N	\N
4	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	Numeradores	numeradores	Numeradores	0	f	\N	\N
5	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	Motivos_Mov_Stock	motivos_mov_stock	Motivos_Mov_Stock	0	f	\N	\N
6	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	Empresas	empresas	Empresas	0	f	\N	\N
7	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	Departamentos	departamentos	Departamentos	0	f	\N	\N
8	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	Depositos	depositos	Depositos	0	f	\N	\N
9	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	Tipos_Ganado	tipos_ganado	Tipos_Ganado	0	f	\N	\N
10	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	Categorias_Ganado	categorias_ganado	Categorias_Ganado	0	f	\N	\N
11	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	Marcas_Ganado	marcas_ganado	Marcas_Ganado	0	f	\N	\N
12	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	Unidades_Stock	unidades_stock	Unidades_Stock	0	f	\N	\N
13	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	Usuarios	usuarios	Usuarios	0	f	\N	\N
14	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	Articulos	articulos	Articulos	0	f	\N	\N
15	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	Usuarios_X_Empresas	usuarios_x_empresas	Usuarios_X_Empresas	0	f	\N	\N
16	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	Propiedad_Ganado	propiedad_ganado	Propiedad_Ganado	0	f	\N	\N
17	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	Tipos_Toma_Peso	tipos_toma_peso	Tipos_Toma_Peso	0	f	\N	\N
18	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	Tipos_Mov_Stock	tipos_mov_stock	Tipos_Mov_Stock	0	f	\N	\N
19	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	Cpf_Stockaux	cpf_stockaux	Cpf_Stockaux	0	f	\N	\N
20	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	Cpp_Movimiento_Stock	cpp_movimiento_stock	Cpp_Movimiento_Stock	0	f	\N	\N
21	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	Cpt_Movimiento_Stock	cpt_movimiento_stock	Cpt_Movimiento_Stock	0	f	\N	\N
22	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	Dicoses	dicoses	Dicoses	0	f	\N	\N
23	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	View_Empresas_X_Usuario	view_empresas_x_usuario	View_Empresas_X_Usuario	0	f	\N	\N
24	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	Roles	roles	Roles	0	f	\N	\N
25	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	Monedas	monedas	Monedas	0	f	\N	\N
26	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	Tipo_Cambio_Diario	tipo_cambio_diario	Tipo_Cambio_Diario	0	f	\N	\N
27	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	Tipos_Titulares	tipos_titulares	Tipos_Titulares	0	f	\N	\N
28	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	Categorias_Prov	categorias_prov	Categorias_Prov	0	f	\N	\N
29	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	Categorias_Cliente	categorias_cliente	Categorias_Cliente	0	f	\N	\N
30	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	Titulares	titulares	Titulares	0	f	\N	\N
31	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	Tipos_Costeo	tipos_costeo	Tipos_Costeo	0	f	\N	\N
32	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	Cpf_Costos	cpf_costos	Cpf_Costos	0	f	\N	\N
33	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	Cpt_Fact_Prov	cpt_fact_prov	Cpt_Fact_Prov	0	f	\N	\N
34	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	Acciones	acciones	Acciones	0	f	\N	\N
35	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	Permisos_X_Usuario_Seccion	permisos_x_usuario_seccion	Permisos_X_Usuario_Seccion	0	f	\N	\N
36	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	Cpt_Facturas	cpt_facturas	Cpt_Facturas	0	f	\N	\N
37	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	Control_Trans	control_trans	Control_Trans	0	f	\N	\N
38	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	Controles_X_Seccion_Accion	controles_x_seccion_accion	Controles_X_Seccion_Accion	0	f	\N	\N
39	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	Permisos_X_Rol_Seccion	permisos_x_rol_seccion	Permisos_X_Rol_Seccion	0	f	\N	\N
40	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	Cpf_Log	cpf_log	Cpf_Log	0	f	\N	\N
41	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	Secciones	secciones	Secciones	0	f	\N	\N
42	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	Cpf_Contaux	cpf_contaux	Cpf_Contaux	0	f	\N	\N
43	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	Cpt_Registro_Sanitario	cpt_registro_sanitario	Cpt_Registro_Sanitario	0	f	\N	\N
44	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	Cpp_Registro_Sanitario	cpp_registro_sanitario	Cpp_Registro_Sanitario	0	f	\N	\N
45	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	Tipo_Articulo	tipo_articulo	Tipo_Articulo	0	f	\N	\N
46	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	Articulos_X_Titular	articulos_x_titular	Articulos_X_Titular	0	f	\N	\N
47	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	Cpp_Fact_Prov	cpp_fact_prov	Cpp_Fact_Prov	0	f	\N	\N
0	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	No asignado	No asignado	No asignado	0	f	\N	\N
48	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	Accion_x_lote	accion_x_lote	Accion_x_lote	0	t	\N	\N
52	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	Cpt_registro_lluvias	cpt_registro_lluvias	Cpt_registro_lluvias	0	f	\N	\N
49	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	Sectores	sectores	Sectores	0	f	t	\N
50	2023-06-01 19:20:30.451	2023-06-01 19:20:31.451	S	1	Pasturas	pasturas	Pasturas	0	f	t	\N
51	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	Pasturas_x_sector	pasturas_x_sector	Pasturas_x_sector	0	f	\N	\N
53	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	Cpt_evolucion_ganado	cpt_evolucion_ganado	Cpt_evolucion_ganado	0	f	\N	\N
54	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	1	Cpt_pago_fact_prov	cpt_pago_fact_prov	Cpt_pago_fact_prov	0	f	\N	\N
\.


--
-- Data for Name: sectores; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.sectores (id, "createdAt", "updatedAt", id_mod, estado, nombre, superficie, id_deposito, id_empresa, embarcadero) FROM stdin;
1	2023-07-26 21:16:50.976	2023-07-26 21:16:50.977	0	S	Esquina 5	210	1	1	\N
2	2023-07-26 21:17:07.659	2023-07-26 21:17:07.659	0	S	Piquete casa	200	1	1	\N
3	2023-07-26 21:17:51.908	2023-07-26 21:17:51.908	0	S	Baltasar	222	3	1	\N
4	2023-07-26 21:18:10.042	2023-07-26 21:18:10.043	0	S	Las Naranjeras 1	2312	3	1	\N
5	2023-07-26 21:18:29.027	2023-07-26 21:18:29.028	0	S	Potrero 1	232	2	1	\N
6	2023-07-26 21:53:53.086	2023-07-26 21:53:53.087	0	S	Embarcadero	200	1	1	t
7	2023-07-26 21:16:50.976	2023-07-26 21:16:50.976	0	S	Almacen	0	1	1	\N
\.


--
-- Data for Name: tasas_iva; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.tasas_iva (id, "createdAt", "updatedAt", estado, descripcion, porcentaje) FROM stdin;
0	2023-08-09 00:00:00	2023-08-09 00:00:00	S	No asignado	0.000000000000000000000000000000
1	2023-08-09 00:00:00	2023-08-09 00:00:00	S	Excento	0.000000000000000000000000000000
2	2023-08-09 00:00:00	2023-08-09 00:00:00	S	Minimo	10.000000000000000000000000000000
3	2023-08-09 00:00:00	2023-08-09 00:00:00	S	Basico	22.000000000000000000000000000000
\.


--
-- Data for Name: tipo_articulo; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.tipo_articulo (id, "createdAt", "updatedAt", estado, descripcion) FROM stdin;
1	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Producto termninado
2	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Insumos
3	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Servicios
0	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	No asignado
4	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Insumos veterinarios
\.


--
-- Data for Name: tipo_cambio_diario; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.tipo_cambio_diario (id, "createdAt", "updatedAt", id_mod, estado, valor, fecha, id_moneda) FROM stdin;
1	2023-08-10 00:01:31.731	2023-08-10 00:01:31.732	0	S	39.100000000000000000000000000000	2023-08-10 00:01:31.714	2
2	2023-08-21 22:42:56.293	2023-08-21 22:42:56.294	0	S	39.100000000000000000000000000000	2023-08-21 22:42:56.27	2
\.


--
-- Data for Name: tipos_costeo; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.tipos_costeo (id, "createdAt", "updatedAt", id_mod, estado, descripcion) FROM stdin;
1	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	1	S	Ultima compra
\.


--
-- Data for Name: tipos_ganado; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.tipos_ganado (id, "createdAt", "updatedAt", estado, descripcion) FROM stdin;
0	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	No asignado
1	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Vacuno
2	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Ovino
3	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Equino
\.


--
-- Data for Name: tipos_gasto; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.tipos_gasto (id, "createdAt", "updatedAt", estado, descripcion) FROM stdin;
\.


--
-- Data for Name: tipos_mov_stock; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.tipos_mov_stock (id, "createdAt", "updatedAt", estado, descripcion, naturaleza) FROM stdin;
1	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Entrada	1
2	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Salida	-1
3	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Traslado	0
0	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	no asignado	0
\.


--
-- Data for Name: tipos_titulares; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.tipos_titulares (id, "createdAt", "updatedAt", id_mod, estado, descripcion) FROM stdin;
1	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	1	S	Cliente
2	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	1	S	Proveedor
3	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	1	S	Cliente y proveedor
\.


--
-- Data for Name: tipos_toma_peso; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.tipos_toma_peso (id, "createdAt", "updatedAt", estado, descripcion) FROM stdin;
1	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Real
2	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Promedio total kg
3	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Promedio por muestra
0	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	No asignado
\.


--
-- Data for Name: titulares; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.titulares (id, "createdAt", "updatedAt", id_mod, estado, nombre_fantasia, razon_social, rut, direccion, email, observaciones, nombre_contacto, telefono_contacto, id_tipo_titular, id_categoria_prov, id_categoria_cliente, id_empresa) FROM stdin;
1	2023-08-09 23:59:42.787	2023-08-09 23:59:42.788	0	S	Veterinaria Oriental	Veterinaria Oriental	2321929292029	Ruta 5 km429	-	Veterinaria Oriental	Veterinaria Oriental	09578282	2	3	0	1
\.


--
-- Data for Name: unidades; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.unidades (id, "createdAt", "updatedAt", estado, descripcion, descripcion_corta) FROM stdin;
0	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	No asignado	-
4	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Mililitro	ml
1	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Unidad	Un.
2	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Kilogramo	Kg.
3	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Litro	lts
5	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Frasco de 100ml	F 100ml
6	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Frasco de 250ml	F 250ml
7	2023-06-01 19:20:30.451	2023-06-01 19:20:30.451	S	Frasco de 500ml	F 500ml
\.


--
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.usuarios (id, "createdAt", "updatedAt", id_mod, estado, email, hash, "hashRt", telefono_contacto, nombre, apellido, "isRegisteredWithGoogle", "isAdmin", token_recuperacion_pass, id_rol) FROM stdin;
1	2023-07-17 01:52:21.753	2023-07-29 00:41:32.87	0	S	florenciarm@gmail.com	$argon2i$v=19$m=4096,t=3,p=1$UdvVwFAa73vquCbgjzHGnQ$dnRtD9+4xl1k16OHcnoT4Va8pEXkM0K3cog+A40ATjI	$argon2i$v=19$m=4096,t=3,p=1$9nWjz9m2kb8dowHX47/iJw$qdFgb7YttLj9byqFI0c9mqOMCGRrRS9QbOrllUVslu8	\N	Florencia	Rodriguez	f	f	\N	1
2	2023-07-17 13:52:27.102	2023-08-24 21:05:04.88	0	S	jfernandezberrutti@gmail.com	$argon2i$v=19$m=4096,t=3,p=1$VPsaxxEMloZJ81Iiu4puPg$ufDTvzcZjgKvFCujcWwn1rCTAeCQQ34prqaYSKcp8AE	$argon2i$v=19$m=4096,t=3,p=1$H6z0Ayf3Dw+6hVqY39OA8Q$3050RHzx4KlFSZS2PSTnVuQ53SEZ2hPCQ30EdDPdBWs	\N	Juan	Fernandez	f	f	\N	1
\.


--
-- Data for Name: usuarios_x_empresas; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.usuarios_x_empresas (id_usuario, id_empresa, "createdAt", "updatedAt", estado) FROM stdin;
1	1	2023-07-17 01:52:21.779	2023-07-17 01:52:21.779	S
2	1	2023-07-17 13:52:27.132	2023-07-17 13:52:27.133	S
\.


--
-- Name: acciones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.acciones_id_seq', 1, false);


--
-- Name: articulos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.articulos_id_seq', 16, true);


--
-- Name: articulos_x_titular_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.articulos_x_titular_id_seq', 3, true);


--
-- Name: categorias_cliente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.categorias_cliente_id_seq', 1, false);


--
-- Name: categorias_ganado_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.categorias_ganado_id_seq', 16, true);


--
-- Name: categorias_prov_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.categorias_prov_id_seq', 1, false);


--
-- Name: control_trans_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.control_trans_id_seq', 1, false);


--
-- Name: controles_x_seccion_accion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.controles_x_seccion_accion_id_seq', 1, false);


--
-- Name: cpf_consumos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.cpf_consumos_id_seq', 4, true);


--
-- Name: cpf_contaux_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.cpf_contaux_id_seq', 2, true);


--
-- Name: cpf_costos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.cpf_costos_id_seq', 8, true);


--
-- Name: cpf_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.cpf_log_id_seq', 2, true);


--
-- Name: cpf_registro_sanitario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.cpf_registro_sanitario_id_seq', 8, true);


--
-- Name: cpf_stockaux_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.cpf_stockaux_id_seq', 10, true);


--
-- Name: cpp_fact_prov_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.cpp_fact_prov_id_seq', 4, true);


--
-- Name: cpp_facturas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.cpp_facturas_id_seq', 1, false);


--
-- Name: cpp_ingresoromaneo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.cpp_ingresoromaneo_id_seq', 1, false);


--
-- Name: cpp_movimiento_stock_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.cpp_movimiento_stock_id_seq', 2, true);


--
-- Name: cpp_registro_sanitario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.cpp_registro_sanitario_id_seq', 8, true);


--
-- Name: cpt_evolucion_ganado_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.cpt_evolucion_ganado_id_seq', 1, false);


--
-- Name: cpt_fact_prov_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.cpt_fact_prov_id_seq', 2, true);


--
-- Name: cpt_facturas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.cpt_facturas_id_seq', 1, false);


--
-- Name: cpt_ingresoromaneo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.cpt_ingresoromaneo_id_seq', 1, false);


--
-- Name: cpt_movimiento_stock_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.cpt_movimiento_stock_id_seq', 4, true);


--
-- Name: cpt_pago_fact_prov_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.cpt_pago_fact_prov_id_seq', 2, true);


--
-- Name: cpt_parametros_x_fecha_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.cpt_parametros_x_fecha_id_seq', 1, false);


--
-- Name: cpt_recaravaneo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.cpt_recaravaneo_id_seq', 1, false);


--
-- Name: cpt_registro_lluvias_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.cpt_registro_lluvias_id_seq', 1, false);


--
-- Name: cpt_registro_sanitario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.cpt_registro_sanitario_id_seq', 7, true);


--
-- Name: cpt_registros_gasto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.cpt_registros_gasto_id_seq', 1, false);


--
-- Name: departamentos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.departamentos_id_seq', 1, false);


--
-- Name: depositos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.depositos_id_seq', 1, false);


--
-- Name: dicoses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.dicoses_id_seq', 1, false);


--
-- Name: empresas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.empresas_id_seq', 1, false);


--
-- Name: estado_pago_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.estado_pago_id_seq', 1, false);


--
-- Name: estados_ganado_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.estados_ganado_id_seq', 1, false);


--
-- Name: estados_stock_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.estados_stock_id_seq', 1, false);


--
-- Name: marcas_ganado_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.marcas_ganado_id_seq', 1, false);


--
-- Name: monedas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.monedas_id_seq', 1, false);


--
-- Name: motivos_mov_stock_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.motivos_mov_stock_id_seq', 1, false);


--
-- Name: motivos_sanitarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.motivos_sanitarios_id_seq', 6, true);


--
-- Name: numeradores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.numeradores_id_seq', 1, false);


--
-- Name: pasturas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.pasturas_id_seq', 1, false);


--
-- Name: pasturas_x_sector_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.pasturas_x_sector_id_seq', 1, false);


--
-- Name: permisos_x_rol_seccion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.permisos_x_rol_seccion_id_seq', 1, false);


--
-- Name: permisos_x_usuario_seccion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.permisos_x_usuario_seccion_id_seq', 56, true);


--
-- Name: propiedad_ganado_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.propiedad_ganado_id_seq', 1, false);


--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.roles_id_seq', 1, false);


--
-- Name: secciones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.secciones_id_seq', 1, false);


--
-- Name: sectores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.sectores_id_seq', 1, false);


--
-- Name: tasas_iva_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.tasas_iva_id_seq', 1, false);


--
-- Name: tipo_articulo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.tipo_articulo_id_seq', 1, false);


--
-- Name: tipo_cambio_diario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.tipo_cambio_diario_id_seq', 2, true);


--
-- Name: tipos_costeo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.tipos_costeo_id_seq', 1, false);


--
-- Name: tipos_ganado_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.tipos_ganado_id_seq', 1, false);


--
-- Name: tipos_gasto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.tipos_gasto_id_seq', 1, false);


--
-- Name: tipos_mov_stock_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.tipos_mov_stock_id_seq', 1, false);


--
-- Name: tipos_titulares_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.tipos_titulares_id_seq', 1, false);


--
-- Name: tipos_toma_peso_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.tipos_toma_peso_id_seq', 1, false);


--
-- Name: titulares_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.titulares_id_seq', 1, true);


--
-- Name: unidades_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.unidades_id_seq', 1, false);


--
-- Name: usuarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.usuarios_id_seq', 1, false);


--
-- Name: _prisma_migrations _prisma_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public._prisma_migrations
    ADD CONSTRAINT _prisma_migrations_pkey PRIMARY KEY (id);


--
-- Name: acciones acciones_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.acciones
    ADD CONSTRAINT acciones_pkey PRIMARY KEY (id);


--
-- Name: articulos articulos_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.articulos
    ADD CONSTRAINT articulos_pkey PRIMARY KEY (id);


--
-- Name: articulos_x_titular articulos_x_titular_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.articulos_x_titular
    ADD CONSTRAINT articulos_x_titular_pkey PRIMARY KEY (id);


--
-- Name: categorias_cliente categorias_cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.categorias_cliente
    ADD CONSTRAINT categorias_cliente_pkey PRIMARY KEY (id);


--
-- Name: categorias_ganado categorias_ganado_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.categorias_ganado
    ADD CONSTRAINT categorias_ganado_pkey PRIMARY KEY (id);


--
-- Name: categorias_prov categorias_prov_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.categorias_prov
    ADD CONSTRAINT categorias_prov_pkey PRIMARY KEY (id);


--
-- Name: control_trans control_trans_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.control_trans
    ADD CONSTRAINT control_trans_pkey PRIMARY KEY (id);


--
-- Name: controles_x_seccion_accion controles_x_seccion_accion_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.controles_x_seccion_accion
    ADD CONSTRAINT controles_x_seccion_accion_pkey PRIMARY KEY (id);


--
-- Name: cpf_consumos cpf_consumos_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_consumos
    ADD CONSTRAINT cpf_consumos_pkey PRIMARY KEY (id);


--
-- Name: cpf_contaux cpf_contaux_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_contaux
    ADD CONSTRAINT cpf_contaux_pkey PRIMARY KEY (id);


--
-- Name: cpf_costos cpf_costos_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_costos
    ADD CONSTRAINT cpf_costos_pkey PRIMARY KEY (id);


--
-- Name: cpf_log cpf_log_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_log
    ADD CONSTRAINT cpf_log_pkey PRIMARY KEY (id);


--
-- Name: cpf_registro_sanitario cpf_registro_sanitario_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_registro_sanitario
    ADD CONSTRAINT cpf_registro_sanitario_pkey PRIMARY KEY (id);


--
-- Name: cpf_stockaux cpf_stockaux_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_stockaux
    ADD CONSTRAINT cpf_stockaux_pkey PRIMARY KEY (id);


--
-- Name: cpp_fact_prov cpp_fact_prov_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpp_fact_prov
    ADD CONSTRAINT cpp_fact_prov_pkey PRIMARY KEY (id);


--
-- Name: cpp_facturas cpp_facturas_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpp_facturas
    ADD CONSTRAINT cpp_facturas_pkey PRIMARY KEY (id);


--
-- Name: cpp_ingresoromaneo cpp_ingresoromaneo_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpp_ingresoromaneo
    ADD CONSTRAINT cpp_ingresoromaneo_pkey PRIMARY KEY (id);


--
-- Name: cpp_movimiento_stock cpp_movimiento_stock_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpp_movimiento_stock
    ADD CONSTRAINT cpp_movimiento_stock_pkey PRIMARY KEY (id);


--
-- Name: cpp_registro_sanitario cpp_registro_sanitario_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpp_registro_sanitario
    ADD CONSTRAINT cpp_registro_sanitario_pkey PRIMARY KEY (id);


--
-- Name: cpt_evolucion_ganado cpt_evolucion_ganado_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_evolucion_ganado
    ADD CONSTRAINT cpt_evolucion_ganado_pkey PRIMARY KEY (id);


--
-- Name: cpt_fact_prov cpt_fact_prov_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_fact_prov
    ADD CONSTRAINT cpt_fact_prov_pkey PRIMARY KEY (id);


--
-- Name: cpt_facturas cpt_facturas_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_facturas
    ADD CONSTRAINT cpt_facturas_pkey PRIMARY KEY (id);


--
-- Name: cpt_ingresoromaneo cpt_ingresoromaneo_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_ingresoromaneo
    ADD CONSTRAINT cpt_ingresoromaneo_pkey PRIMARY KEY (id);


--
-- Name: cpt_movimiento_stock cpt_movimiento_stock_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_movimiento_stock
    ADD CONSTRAINT cpt_movimiento_stock_pkey PRIMARY KEY (id);


--
-- Name: cpt_pago_fact_prov cpt_pago_fact_prov_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_pago_fact_prov
    ADD CONSTRAINT cpt_pago_fact_prov_pkey PRIMARY KEY (id);


--
-- Name: cpt_parametros_x_fecha cpt_parametros_x_fecha_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_parametros_x_fecha
    ADD CONSTRAINT cpt_parametros_x_fecha_pkey PRIMARY KEY (id);


--
-- Name: cpt_recaravaneo cpt_recaravaneo_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_recaravaneo
    ADD CONSTRAINT cpt_recaravaneo_pkey PRIMARY KEY (id);


--
-- Name: cpt_registro_lluvias cpt_registro_lluvias_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_registro_lluvias
    ADD CONSTRAINT cpt_registro_lluvias_pkey PRIMARY KEY (id);


--
-- Name: cpt_registro_sanitario cpt_registro_sanitario_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_registro_sanitario
    ADD CONSTRAINT cpt_registro_sanitario_pkey PRIMARY KEY (id);


--
-- Name: cpt_registros_gasto cpt_registros_gasto_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_registros_gasto
    ADD CONSTRAINT cpt_registros_gasto_pkey PRIMARY KEY (id);


--
-- Name: departamentos departamentos_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.departamentos
    ADD CONSTRAINT departamentos_pkey PRIMARY KEY (id);


--
-- Name: depositos depositos_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.depositos
    ADD CONSTRAINT depositos_pkey PRIMARY KEY (id);


--
-- Name: dicoses dicoses_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.dicoses
    ADD CONSTRAINT dicoses_pkey PRIMARY KEY (id);


--
-- Name: empresas empresas_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.empresas
    ADD CONSTRAINT empresas_pkey PRIMARY KEY (id);


--
-- Name: estado_pago estado_pago_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.estado_pago
    ADD CONSTRAINT estado_pago_pkey PRIMARY KEY (id);


--
-- Name: estados_ganado estados_ganado_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.estados_ganado
    ADD CONSTRAINT estados_ganado_pkey PRIMARY KEY (id);


--
-- Name: estados_stock estados_stock_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.estados_stock
    ADD CONSTRAINT estados_stock_pkey PRIMARY KEY (id);


--
-- Name: marcas_ganado marcas_ganado_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.marcas_ganado
    ADD CONSTRAINT marcas_ganado_pkey PRIMARY KEY (id);


--
-- Name: monedas monedas_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.monedas
    ADD CONSTRAINT monedas_pkey PRIMARY KEY (id);


--
-- Name: motivos_mov_stock motivos_mov_stock_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.motivos_mov_stock
    ADD CONSTRAINT motivos_mov_stock_pkey PRIMARY KEY (id);


--
-- Name: motivos_sanitarios motivos_sanitarios_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.motivos_sanitarios
    ADD CONSTRAINT motivos_sanitarios_pkey PRIMARY KEY (id);


--
-- Name: numeradores numeradores_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.numeradores
    ADD CONSTRAINT numeradores_pkey PRIMARY KEY (id);


--
-- Name: pasturas pasturas_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.pasturas
    ADD CONSTRAINT pasturas_pkey PRIMARY KEY (id);


--
-- Name: pasturas_x_sector pasturas_x_sector_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.pasturas_x_sector
    ADD CONSTRAINT pasturas_x_sector_pkey PRIMARY KEY (id);


--
-- Name: permisos_x_rol_seccion permisos_x_rol_seccion_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.permisos_x_rol_seccion
    ADD CONSTRAINT permisos_x_rol_seccion_pkey PRIMARY KEY (id);


--
-- Name: permisos_x_usuario_seccion permisos_x_usuario_seccion_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.permisos_x_usuario_seccion
    ADD CONSTRAINT permisos_x_usuario_seccion_pkey PRIMARY KEY (id);


--
-- Name: propiedad_ganado propiedad_ganado_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.propiedad_ganado
    ADD CONSTRAINT propiedad_ganado_pkey PRIMARY KEY (id);


--
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- Name: secciones secciones_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.secciones
    ADD CONSTRAINT secciones_pkey PRIMARY KEY (id);


--
-- Name: sectores sectores_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.sectores
    ADD CONSTRAINT sectores_pkey PRIMARY KEY (id);


--
-- Name: tasas_iva tasas_iva_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.tasas_iva
    ADD CONSTRAINT tasas_iva_pkey PRIMARY KEY (id);


--
-- Name: tipo_articulo tipo_articulo_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.tipo_articulo
    ADD CONSTRAINT tipo_articulo_pkey PRIMARY KEY (id);


--
-- Name: tipo_cambio_diario tipo_cambio_diario_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.tipo_cambio_diario
    ADD CONSTRAINT tipo_cambio_diario_pkey PRIMARY KEY (id);


--
-- Name: tipos_costeo tipos_costeo_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.tipos_costeo
    ADD CONSTRAINT tipos_costeo_pkey PRIMARY KEY (id);


--
-- Name: tipos_ganado tipos_ganado_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.tipos_ganado
    ADD CONSTRAINT tipos_ganado_pkey PRIMARY KEY (id);


--
-- Name: tipos_gasto tipos_gasto_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.tipos_gasto
    ADD CONSTRAINT tipos_gasto_pkey PRIMARY KEY (id);


--
-- Name: tipos_mov_stock tipos_mov_stock_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.tipos_mov_stock
    ADD CONSTRAINT tipos_mov_stock_pkey PRIMARY KEY (id);


--
-- Name: tipos_titulares tipos_titulares_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.tipos_titulares
    ADD CONSTRAINT tipos_titulares_pkey PRIMARY KEY (id);


--
-- Name: tipos_toma_peso tipos_toma_peso_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.tipos_toma_peso
    ADD CONSTRAINT tipos_toma_peso_pkey PRIMARY KEY (id);


--
-- Name: titulares titulares_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.titulares
    ADD CONSTRAINT titulares_pkey PRIMARY KEY (id);


--
-- Name: unidades unidades_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.unidades
    ADD CONSTRAINT unidades_pkey PRIMARY KEY (id);


--
-- Name: usuarios usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);


--
-- Name: usuarios_x_empresas usuarios_x_empresas_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.usuarios_x_empresas
    ADD CONSTRAINT usuarios_x_empresas_pkey PRIMARY KEY (id_usuario, id_empresa);


--
-- Name: articulos_cod_articulo_key; Type: INDEX; Schema: public; Owner: mariaelena
--

CREATE UNIQUE INDEX articulos_cod_articulo_key ON public.articulos USING btree (cod_articulo);


--
-- Name: articulos_x_titular_cod_articulo_key; Type: INDEX; Schema: public; Owner: mariaelena
--

CREATE UNIQUE INDEX articulos_x_titular_cod_articulo_key ON public.articulos_x_titular USING btree (cod_articulo);


--
-- Name: usuarios_email_key; Type: INDEX; Schema: public; Owner: mariaelena
--

CREATE UNIQUE INDEX usuarios_email_key ON public.usuarios USING btree (email);


--
-- Name: articulos articulos_id_categoria_ganado_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.articulos
    ADD CONSTRAINT articulos_id_categoria_ganado_fkey FOREIGN KEY (id_categoria_ganado) REFERENCES public.categorias_ganado(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: articulos articulos_id_empresa_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.articulos
    ADD CONSTRAINT articulos_id_empresa_fkey FOREIGN KEY (id_empresa) REFERENCES public.empresas(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: articulos articulos_id_marca_ganado_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.articulos
    ADD CONSTRAINT articulos_id_marca_ganado_fkey FOREIGN KEY (id_marca_ganado) REFERENCES public.marcas_ganado(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: articulos articulos_id_tasa_iva_cmp_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.articulos
    ADD CONSTRAINT articulos_id_tasa_iva_cmp_fkey FOREIGN KEY (id_tasa_iva_cmp) REFERENCES public.tasas_iva(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: articulos articulos_id_tasa_iva_vta_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.articulos
    ADD CONSTRAINT articulos_id_tasa_iva_vta_fkey FOREIGN KEY (id_tasa_iva_vta) REFERENCES public.tasas_iva(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: articulos articulos_id_tipo_articulo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.articulos
    ADD CONSTRAINT articulos_id_tipo_articulo_fkey FOREIGN KEY (id_tipo_articulo) REFERENCES public.tipo_articulo(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: articulos articulos_id_unidad_cmp_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.articulos
    ADD CONSTRAINT articulos_id_unidad_cmp_fkey FOREIGN KEY (id_unidad_cmp) REFERENCES public.unidades(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: articulos articulos_id_unidad_stk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.articulos
    ADD CONSTRAINT articulos_id_unidad_stk_fkey FOREIGN KEY (id_unidad_stk) REFERENCES public.unidades(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: articulos articulos_id_unidad_vta_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.articulos
    ADD CONSTRAINT articulos_id_unidad_vta_fkey FOREIGN KEY (id_unidad_vta) REFERENCES public.unidades(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: articulos_x_titular articulos_x_titular_cod_articulo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.articulos_x_titular
    ADD CONSTRAINT articulos_x_titular_cod_articulo_fkey FOREIGN KEY (cod_articulo) REFERENCES public.articulos(cod_articulo) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: articulos_x_titular articulos_x_titular_id_titular_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.articulos_x_titular
    ADD CONSTRAINT articulos_x_titular_id_titular_fkey FOREIGN KEY (id_titular) REFERENCES public.titulares(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: categorias_ganado categorias_ganado_id_tipo_ganado_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.categorias_ganado
    ADD CONSTRAINT categorias_ganado_id_tipo_ganado_fkey FOREIGN KEY (id_tipo_ganado) REFERENCES public.tipos_ganado(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: controles_x_seccion_accion controles_x_seccion_accion_id_accion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.controles_x_seccion_accion
    ADD CONSTRAINT controles_x_seccion_accion_id_accion_fkey FOREIGN KEY (id_accion) REFERENCES public.acciones(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: controles_x_seccion_accion controles_x_seccion_accion_id_control_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.controles_x_seccion_accion
    ADD CONSTRAINT controles_x_seccion_accion_id_control_fkey FOREIGN KEY (id_control) REFERENCES public.control_trans(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: controles_x_seccion_accion controles_x_seccion_accion_id_seccion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.controles_x_seccion_accion
    ADD CONSTRAINT controles_x_seccion_accion_id_seccion_fkey FOREIGN KEY (id_seccion) REFERENCES public.secciones(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpf_consumos cpf_consumos_cod_articulo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_consumos
    ADD CONSTRAINT cpf_consumos_cod_articulo_fkey FOREIGN KEY (cod_articulo) REFERENCES public.articulos(cod_articulo) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpf_consumos cpf_consumos_id_empresa_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_consumos
    ADD CONSTRAINT cpf_consumos_id_empresa_fkey FOREIGN KEY (id_empresa) REFERENCES public.empresas(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpf_consumos cpf_consumos_id_estado_stock_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_consumos
    ADD CONSTRAINT cpf_consumos_id_estado_stock_fkey FOREIGN KEY (id_estado_stock) REFERENCES public.estados_stock(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpf_consumos cpf_consumos_id_motivo_stk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_consumos
    ADD CONSTRAINT cpf_consumos_id_motivo_stk_fkey FOREIGN KEY (id_motivo_stk) REFERENCES public.motivos_mov_stock(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpf_consumos cpf_consumos_id_sector_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_consumos
    ADD CONSTRAINT cpf_consumos_id_sector_fkey FOREIGN KEY (id_sector) REFERENCES public.sectores(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpf_consumos cpf_consumos_id_unidad_stk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_consumos
    ADD CONSTRAINT cpf_consumos_id_unidad_stk_fkey FOREIGN KEY (id_unidad_stk) REFERENCES public.unidades(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpf_contaux cpf_contaux_id_moneda_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_contaux
    ADD CONSTRAINT cpf_contaux_id_moneda_fkey FOREIGN KEY (id_moneda) REFERENCES public.monedas(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpf_contaux cpf_contaux_id_titular_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_contaux
    ADD CONSTRAINT cpf_contaux_id_titular_fkey FOREIGN KEY (id_titular) REFERENCES public.titulares(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpf_costos cpf_costos_cod_articulo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_costos
    ADD CONSTRAINT cpf_costos_cod_articulo_fkey FOREIGN KEY (cod_articulo) REFERENCES public.articulos(cod_articulo) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: cpf_costos cpf_costos_id_empresa_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_costos
    ADD CONSTRAINT cpf_costos_id_empresa_fkey FOREIGN KEY (id_empresa) REFERENCES public.empresas(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: cpf_costos cpf_costos_id_tipo_costo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_costos
    ADD CONSTRAINT cpf_costos_id_tipo_costo_fkey FOREIGN KEY (id_tipo_costo) REFERENCES public.tipos_costeo(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: cpf_costos cpf_costos_id_unidad_stk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_costos
    ADD CONSTRAINT cpf_costos_id_unidad_stk_fkey FOREIGN KEY (id_unidad_stk) REFERENCES public.unidades(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: cpf_log cpf_log_id_accion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_log
    ADD CONSTRAINT cpf_log_id_accion_fkey FOREIGN KEY (id_accion) REFERENCES public.acciones(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpf_log cpf_log_id_seccion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_log
    ADD CONSTRAINT cpf_log_id_seccion_fkey FOREIGN KEY (id_seccion) REFERENCES public.secciones(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpf_registro_sanitario cpf_registro_sanitario_cod_articulo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_registro_sanitario
    ADD CONSTRAINT cpf_registro_sanitario_cod_articulo_fkey FOREIGN KEY (cod_articulo) REFERENCES public.articulos(cod_articulo) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpf_registro_sanitario cpf_registro_sanitario_id_empresa_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_registro_sanitario
    ADD CONSTRAINT cpf_registro_sanitario_id_empresa_fkey FOREIGN KEY (id_empresa) REFERENCES public.empresas(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpf_registro_sanitario cpf_registro_sanitario_id_motivo_sanitario_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_registro_sanitario
    ADD CONSTRAINT cpf_registro_sanitario_id_motivo_sanitario_fkey FOREIGN KEY (id_motivo_sanitario) REFERENCES public.motivos_sanitarios(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpf_registro_sanitario cpf_registro_sanitario_id_padre_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_registro_sanitario
    ADD CONSTRAINT cpf_registro_sanitario_id_padre_fkey FOREIGN KEY (id_padre) REFERENCES public.cpt_registro_sanitario(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpf_stockaux cpf_stockaux_cod_articulo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_stockaux
    ADD CONSTRAINT cpf_stockaux_cod_articulo_fkey FOREIGN KEY (cod_articulo) REFERENCES public.articulos(cod_articulo) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpf_stockaux cpf_stockaux_id_empresa_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_stockaux
    ADD CONSTRAINT cpf_stockaux_id_empresa_fkey FOREIGN KEY (id_empresa) REFERENCES public.empresas(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpf_stockaux cpf_stockaux_id_estado_stock_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_stockaux
    ADD CONSTRAINT cpf_stockaux_id_estado_stock_fkey FOREIGN KEY (id_estado_stock) REFERENCES public.estados_stock(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpf_stockaux cpf_stockaux_id_motivo_stk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_stockaux
    ADD CONSTRAINT cpf_stockaux_id_motivo_stk_fkey FOREIGN KEY (id_motivo_stk) REFERENCES public.motivos_mov_stock(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpf_stockaux cpf_stockaux_id_sector_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_stockaux
    ADD CONSTRAINT cpf_stockaux_id_sector_fkey FOREIGN KEY (id_sector) REFERENCES public.sectores(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpf_stockaux cpf_stockaux_id_unidad_stk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_stockaux
    ADD CONSTRAINT cpf_stockaux_id_unidad_stk_fkey FOREIGN KEY (id_unidad_stk) REFERENCES public.unidades(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpp_fact_prov cpp_fact_prov_cod_articulo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpp_fact_prov
    ADD CONSTRAINT cpp_fact_prov_cod_articulo_fkey FOREIGN KEY (cod_articulo) REFERENCES public.articulos(cod_articulo) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpp_fact_prov cpp_fact_prov_id_moneda_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpp_fact_prov
    ADD CONSTRAINT cpp_fact_prov_id_moneda_fkey FOREIGN KEY (id_moneda) REFERENCES public.monedas(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpp_fact_prov cpp_fact_prov_id_tasa_iva_cmp_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpp_fact_prov
    ADD CONSTRAINT cpp_fact_prov_id_tasa_iva_cmp_fkey FOREIGN KEY (id_tasa_iva_cmp) REFERENCES public.tasas_iva(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: cpp_fact_prov cpp_fact_prov_id_titular_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpp_fact_prov
    ADD CONSTRAINT cpp_fact_prov_id_titular_fkey FOREIGN KEY (id_titular) REFERENCES public.titulares(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpp_facturas cpp_facturas_cod_articulo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpp_facturas
    ADD CONSTRAINT cpp_facturas_cod_articulo_fkey FOREIGN KEY (cod_articulo) REFERENCES public.articulos(cod_articulo) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpp_facturas cpp_facturas_id_moneda_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpp_facturas
    ADD CONSTRAINT cpp_facturas_id_moneda_fkey FOREIGN KEY (id_moneda) REFERENCES public.monedas(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpp_facturas cpp_facturas_id_titular_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpp_facturas
    ADD CONSTRAINT cpp_facturas_id_titular_fkey FOREIGN KEY (id_titular) REFERENCES public.titulares(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpp_ingresoromaneo cpp_ingresoromaneo_cod_articulo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpp_ingresoromaneo
    ADD CONSTRAINT cpp_ingresoromaneo_cod_articulo_fkey FOREIGN KEY (cod_articulo) REFERENCES public.articulos(cod_articulo) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpp_ingresoromaneo cpp_ingresoromaneo_id_moneda_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpp_ingresoromaneo
    ADD CONSTRAINT cpp_ingresoromaneo_id_moneda_fkey FOREIGN KEY (id_moneda) REFERENCES public.monedas(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpp_ingresoromaneo cpp_ingresoromaneo_id_titular_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpp_ingresoromaneo
    ADD CONSTRAINT cpp_ingresoromaneo_id_titular_fkey FOREIGN KEY (id_titular) REFERENCES public.titulares(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpp_movimiento_stock cpp_movimiento_stock_cod_articulo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpp_movimiento_stock
    ADD CONSTRAINT cpp_movimiento_stock_cod_articulo_fkey FOREIGN KEY (cod_articulo) REFERENCES public.articulos(cod_articulo) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpp_movimiento_stock cpp_movimiento_stock_id_empresa_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpp_movimiento_stock
    ADD CONSTRAINT cpp_movimiento_stock_id_empresa_fkey FOREIGN KEY (id_empresa) REFERENCES public.empresas(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpp_registro_sanitario cpp_registro_sanitario_cod_articulo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpp_registro_sanitario
    ADD CONSTRAINT cpp_registro_sanitario_cod_articulo_fkey FOREIGN KEY (cod_articulo) REFERENCES public.articulos(cod_articulo) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpp_registro_sanitario cpp_registro_sanitario_id_empresa_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpp_registro_sanitario
    ADD CONSTRAINT cpp_registro_sanitario_id_empresa_fkey FOREIGN KEY (id_empresa) REFERENCES public.empresas(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpp_registro_sanitario cpp_registro_sanitario_id_motivo_sanitario_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpp_registro_sanitario
    ADD CONSTRAINT cpp_registro_sanitario_id_motivo_sanitario_fkey FOREIGN KEY (id_motivo_sanitario) REFERENCES public.motivos_sanitarios(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpp_registro_sanitario cpp_registro_sanitario_id_padre_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpp_registro_sanitario
    ADD CONSTRAINT cpp_registro_sanitario_id_padre_fkey FOREIGN KEY (id_padre) REFERENCES public.cpt_registro_sanitario(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpt_evolucion_ganado cpt_evolucion_ganado_cod_articulo_evoluciona_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_evolucion_ganado
    ADD CONSTRAINT cpt_evolucion_ganado_cod_articulo_evoluciona_fkey FOREIGN KEY (cod_articulo_evoluciona) REFERENCES public.articulos(cod_articulo) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpt_evolucion_ganado cpt_evolucion_ganado_cod_articulo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_evolucion_ganado
    ADD CONSTRAINT cpt_evolucion_ganado_cod_articulo_fkey FOREIGN KEY (cod_articulo) REFERENCES public.articulos(cod_articulo) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpt_fact_prov cpt_fact_prov_id_moneda_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_fact_prov
    ADD CONSTRAINT cpt_fact_prov_id_moneda_fkey FOREIGN KEY (id_moneda) REFERENCES public.monedas(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpt_fact_prov cpt_fact_prov_id_titular_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_fact_prov
    ADD CONSTRAINT cpt_fact_prov_id_titular_fkey FOREIGN KEY (id_titular) REFERENCES public.titulares(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpt_facturas cpt_facturas_id_moneda_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_facturas
    ADD CONSTRAINT cpt_facturas_id_moneda_fkey FOREIGN KEY (id_moneda) REFERENCES public.monedas(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpt_facturas cpt_facturas_id_titular_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_facturas
    ADD CONSTRAINT cpt_facturas_id_titular_fkey FOREIGN KEY (id_titular) REFERENCES public.titulares(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpt_ingresoromaneo cpt_ingresoromaneo_id_moneda_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_ingresoromaneo
    ADD CONSTRAINT cpt_ingresoromaneo_id_moneda_fkey FOREIGN KEY (id_moneda) REFERENCES public.monedas(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpt_ingresoromaneo cpt_ingresoromaneo_id_titular_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_ingresoromaneo
    ADD CONSTRAINT cpt_ingresoromaneo_id_titular_fkey FOREIGN KEY (id_titular) REFERENCES public.titulares(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpt_movimiento_stock cpt_movimiento_stock_cod_articulo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_movimiento_stock
    ADD CONSTRAINT cpt_movimiento_stock_cod_articulo_fkey FOREIGN KEY (cod_articulo) REFERENCES public.articulos(cod_articulo) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: cpt_movimiento_stock cpt_movimiento_stock_id_motivo_stk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_movimiento_stock
    ADD CONSTRAINT cpt_movimiento_stock_id_motivo_stk_fkey FOREIGN KEY (id_motivo_stk) REFERENCES public.motivos_mov_stock(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: cpt_movimiento_stock cpt_movimiento_stock_id_propiedad_ganado_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_movimiento_stock
    ADD CONSTRAINT cpt_movimiento_stock_id_propiedad_ganado_fkey FOREIGN KEY (id_propiedad_ganado) REFERENCES public.propiedad_ganado(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: cpt_movimiento_stock cpt_movimiento_stock_id_tipo_toma_peso_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_movimiento_stock
    ADD CONSTRAINT cpt_movimiento_stock_id_tipo_toma_peso_fkey FOREIGN KEY (id_tipo_toma_peso) REFERENCES public.tipos_toma_peso(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: cpt_movimiento_stock cpt_movimiento_stock_valor_dicose_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_movimiento_stock
    ADD CONSTRAINT cpt_movimiento_stock_valor_dicose_fkey FOREIGN KEY (valor_dicose) REFERENCES public.dicoses(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: cpt_pago_fact_prov cpt_pago_fact_prov_id_estado_pago_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_pago_fact_prov
    ADD CONSTRAINT cpt_pago_fact_prov_id_estado_pago_fkey FOREIGN KEY (id_estado_pago) REFERENCES public.estado_pago(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpt_pago_fact_prov cpt_pago_fact_prov_id_moneda_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_pago_fact_prov
    ADD CONSTRAINT cpt_pago_fact_prov_id_moneda_fkey FOREIGN KEY (id_moneda) REFERENCES public.monedas(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpt_pago_fact_prov cpt_pago_fact_prov_id_titular_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_pago_fact_prov
    ADD CONSTRAINT cpt_pago_fact_prov_id_titular_fkey FOREIGN KEY (id_titular) REFERENCES public.titulares(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpt_recaravaneo cpt_recaravaneo_cod_articulo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_recaravaneo
    ADD CONSTRAINT cpt_recaravaneo_cod_articulo_fkey FOREIGN KEY (cod_articulo) REFERENCES public.articulos(cod_articulo) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpt_registro_sanitario cpt_registro_sanitario_cod_articulo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_registro_sanitario
    ADD CONSTRAINT cpt_registro_sanitario_cod_articulo_fkey FOREIGN KEY (cod_articulo) REFERENCES public.articulos(cod_articulo) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: cpt_registro_sanitario cpt_registro_sanitario_id_empresa_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_registro_sanitario
    ADD CONSTRAINT cpt_registro_sanitario_id_empresa_fkey FOREIGN KEY (id_empresa) REFERENCES public.empresas(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpt_registro_sanitario cpt_registro_sanitario_id_motivo_sanitario_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_registro_sanitario
    ADD CONSTRAINT cpt_registro_sanitario_id_motivo_sanitario_fkey FOREIGN KEY (id_motivo_sanitario) REFERENCES public.motivos_sanitarios(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpt_registros_gasto cpt_registros_gasto_id_moneda_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_registros_gasto
    ADD CONSTRAINT cpt_registros_gasto_id_moneda_fkey FOREIGN KEY (id_moneda) REFERENCES public.monedas(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpt_registros_gasto cpt_registros_gasto_id_tipo_gasto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_registros_gasto
    ADD CONSTRAINT cpt_registros_gasto_id_tipo_gasto_fkey FOREIGN KEY (id_tipo_gasto) REFERENCES public.tipos_gasto(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpt_registros_gasto cpt_registros_gasto_id_titular_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_registros_gasto
    ADD CONSTRAINT cpt_registros_gasto_id_titular_fkey FOREIGN KEY (id_titular) REFERENCES public.titulares(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: depositos depositos_id_departamento_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.depositos
    ADD CONSTRAINT depositos_id_departamento_fkey FOREIGN KEY (id_departamento) REFERENCES public.departamentos(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: depositos depositos_id_usuario_id_empresa_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.depositos
    ADD CONSTRAINT depositos_id_usuario_id_empresa_fkey FOREIGN KEY (id_usuario, id_empresa) REFERENCES public.usuarios_x_empresas(id_usuario, id_empresa) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: marcas_ganado marcas_ganado_id_tipo_ganado_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.marcas_ganado
    ADD CONSTRAINT marcas_ganado_id_tipo_ganado_fkey FOREIGN KEY (id_tipo_ganado) REFERENCES public.tipos_ganado(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: motivos_mov_stock motivos_mov_stock_id_tipo_mov_stk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.motivos_mov_stock
    ADD CONSTRAINT motivos_mov_stock_id_tipo_mov_stk_fkey FOREIGN KEY (id_tipo_mov_stk) REFERENCES public.tipos_mov_stock(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: motivos_sanitarios motivos_sanitarios_cod_articulo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.motivos_sanitarios
    ADD CONSTRAINT motivos_sanitarios_cod_articulo_fkey FOREIGN KEY (cod_articulo) REFERENCES public.articulos(cod_articulo) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: pasturas_x_sector pasturas_x_sector_id_pastura_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.pasturas_x_sector
    ADD CONSTRAINT pasturas_x_sector_id_pastura_fkey FOREIGN KEY (id_pastura) REFERENCES public.pasturas(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: pasturas_x_sector pasturas_x_sector_id_sector_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.pasturas_x_sector
    ADD CONSTRAINT pasturas_x_sector_id_sector_fkey FOREIGN KEY (id_sector) REFERENCES public.sectores(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: permisos_x_rol_seccion permisos_x_rol_seccion_id_accion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.permisos_x_rol_seccion
    ADD CONSTRAINT permisos_x_rol_seccion_id_accion_fkey FOREIGN KEY (id_accion) REFERENCES public.acciones(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: permisos_x_rol_seccion permisos_x_rol_seccion_id_rol_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.permisos_x_rol_seccion
    ADD CONSTRAINT permisos_x_rol_seccion_id_rol_fkey FOREIGN KEY (id_rol) REFERENCES public.roles(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: permisos_x_rol_seccion permisos_x_rol_seccion_id_seccion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.permisos_x_rol_seccion
    ADD CONSTRAINT permisos_x_rol_seccion_id_seccion_fkey FOREIGN KEY (id_seccion) REFERENCES public.secciones(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: permisos_x_usuario_seccion permisos_x_usuario_seccion_id_accion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.permisos_x_usuario_seccion
    ADD CONSTRAINT permisos_x_usuario_seccion_id_accion_fkey FOREIGN KEY (id_accion) REFERENCES public.acciones(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: permisos_x_usuario_seccion permisos_x_usuario_seccion_id_seccion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.permisos_x_usuario_seccion
    ADD CONSTRAINT permisos_x_usuario_seccion_id_seccion_fkey FOREIGN KEY (id_seccion) REFERENCES public.secciones(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: permisos_x_usuario_seccion permisos_x_usuario_seccion_id_usuario_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.permisos_x_usuario_seccion
    ADD CONSTRAINT permisos_x_usuario_seccion_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: sectores sectores_id_deposito_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.sectores
    ADD CONSTRAINT sectores_id_deposito_fkey FOREIGN KEY (id_deposito) REFERENCES public.depositos(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: tipo_cambio_diario tipo_cambio_diario_id_moneda_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.tipo_cambio_diario
    ADD CONSTRAINT tipo_cambio_diario_id_moneda_fkey FOREIGN KEY (id_moneda) REFERENCES public.monedas(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: titulares titulares_id_categoria_cliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.titulares
    ADD CONSTRAINT titulares_id_categoria_cliente_fkey FOREIGN KEY (id_categoria_cliente) REFERENCES public.categorias_cliente(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: titulares titulares_id_categoria_prov_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.titulares
    ADD CONSTRAINT titulares_id_categoria_prov_fkey FOREIGN KEY (id_categoria_prov) REFERENCES public.categorias_prov(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: titulares titulares_id_empresa_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.titulares
    ADD CONSTRAINT titulares_id_empresa_fkey FOREIGN KEY (id_empresa) REFERENCES public.empresas(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: titulares titulares_id_tipo_titular_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.titulares
    ADD CONSTRAINT titulares_id_tipo_titular_fkey FOREIGN KEY (id_tipo_titular) REFERENCES public.tipos_titulares(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: usuarios usuarios_id_rol_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_id_rol_fkey FOREIGN KEY (id_rol) REFERENCES public.roles(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: usuarios_x_empresas usuarios_x_empresas_id_empresa_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.usuarios_x_empresas
    ADD CONSTRAINT usuarios_x_empresas_id_empresa_fkey FOREIGN KEY (id_empresa) REFERENCES public.empresas(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: usuarios_x_empresas usuarios_x_empresas_id_usuario_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.usuarios_x_empresas
    ADD CONSTRAINT usuarios_x_empresas_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- PostgreSQL database dump complete
--

--
-- Database "lamariaelena3" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 13.11 (Debian 13.11-1.pgdg110+1)
-- Dumped by pg_dump version 13.11 (Debian 13.11-1.pgdg110+1)

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
-- Name: lamariaelena3; Type: DATABASE; Schema: -; Owner: mariaelena
--

CREATE DATABASE lamariaelena3 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';


ALTER DATABASE lamariaelena3 OWNER TO mariaelena;

\connect lamariaelena3

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
-- Name: _prisma_migrations; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public._prisma_migrations (
    id character varying(36) NOT NULL,
    checksum character varying(64) NOT NULL,
    finished_at timestamp with time zone,
    migration_name character varying(255) NOT NULL,
    logs text,
    rolled_back_at timestamp with time zone,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    applied_steps_count integer DEFAULT 0 NOT NULL
);


ALTER TABLE public._prisma_migrations OWNER TO mariaelena;

--
-- Name: acciones; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.acciones (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    id_mod integer DEFAULT 0 NOT NULL,
    descripcion text
);


ALTER TABLE public.acciones OWNER TO mariaelena;

--
-- Name: acciones_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.acciones_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.acciones_id_seq OWNER TO mariaelena;

--
-- Name: acciones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.acciones_id_seq OWNED BY public.acciones.id;


--
-- Name: articulos; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.articulos (
    id integer NOT NULL,
    cod_articulo text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    nombre text NOT NULL,
    id_unidad_stk integer NOT NULL,
    id_categoria_ganado integer NOT NULL,
    id_marca_ganado integer NOT NULL,
    id_empresa integer NOT NULL,
    id_tipo_articulo integer,
    id_tasa_iva_cmp integer,
    id_tasa_iva_vta integer,
    id_unidad_cmp integer,
    id_unidad_vta integer,
    factor_conv_cmp_a_stk numeric(65,30)
);


ALTER TABLE public.articulos OWNER TO mariaelena;

--
-- Name: articulos_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.articulos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.articulos_id_seq OWNER TO mariaelena;

--
-- Name: articulos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.articulos_id_seq OWNED BY public.articulos.id;


--
-- Name: articulos_x_titular; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.articulos_x_titular (
    id integer NOT NULL,
    cod_articulo text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    id_titular integer NOT NULL,
    id_empresa integer
);


ALTER TABLE public.articulos_x_titular OWNER TO mariaelena;

--
-- Name: articulos_x_titular_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.articulos_x_titular_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.articulos_x_titular_id_seq OWNER TO mariaelena;

--
-- Name: articulos_x_titular_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.articulos_x_titular_id_seq OWNED BY public.articulos_x_titular.id;


--
-- Name: categorias_cliente; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.categorias_cliente (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    id_mod integer DEFAULT 0 NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    descripcion text NOT NULL
);


ALTER TABLE public.categorias_cliente OWNER TO mariaelena;

--
-- Name: categorias_cliente_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.categorias_cliente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categorias_cliente_id_seq OWNER TO mariaelena;

--
-- Name: categorias_cliente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.categorias_cliente_id_seq OWNED BY public.categorias_cliente.id;


--
-- Name: categorias_ganado; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.categorias_ganado (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    descripcion text NOT NULL,
    id_tipo_ganado integer NOT NULL
);


ALTER TABLE public.categorias_ganado OWNER TO mariaelena;

--
-- Name: categorias_ganado_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.categorias_ganado_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categorias_ganado_id_seq OWNER TO mariaelena;

--
-- Name: categorias_ganado_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.categorias_ganado_id_seq OWNED BY public.categorias_ganado.id;


--
-- Name: categorias_prov; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.categorias_prov (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    id_mod integer DEFAULT 0 NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    descripcion text NOT NULL
);


ALTER TABLE public.categorias_prov OWNER TO mariaelena;

--
-- Name: categorias_prov_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.categorias_prov_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categorias_prov_id_seq OWNER TO mariaelena;

--
-- Name: categorias_prov_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.categorias_prov_id_seq OWNED BY public.categorias_prov.id;


--
-- Name: control_trans; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.control_trans (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    id_mod integer DEFAULT 0 NOT NULL,
    nombre text,
    descripcion text,
    persistente boolean NOT NULL,
    mensaje_error_general text NOT NULL,
    lanzamiento integer NOT NULL
);


ALTER TABLE public.control_trans OWNER TO mariaelena;

--
-- Name: control_trans_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.control_trans_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.control_trans_id_seq OWNER TO mariaelena;

--
-- Name: control_trans_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.control_trans_id_seq OWNED BY public.control_trans.id;


--
-- Name: controles_x_seccion_accion; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.controles_x_seccion_accion (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    id_mod integer DEFAULT 0 NOT NULL,
    id_seccion integer NOT NULL,
    id_accion integer NOT NULL,
    id_control integer NOT NULL,
    mensaje_error_especifico text NOT NULL,
    lanzamiento integer NOT NULL,
    campo_form text NOT NULL
);


ALTER TABLE public.controles_x_seccion_accion OWNER TO mariaelena;

--
-- Name: controles_x_seccion_accion_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.controles_x_seccion_accion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.controles_x_seccion_accion_id_seq OWNER TO mariaelena;

--
-- Name: controles_x_seccion_accion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.controles_x_seccion_accion_id_seq OWNED BY public.controles_x_seccion_accion.id;


--
-- Name: cpf_consumos; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.cpf_consumos (
    id integer NOT NULL,
    nro_trans integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    cantidad numeric(65,30) DEFAULT 1,
    cantidad2 numeric(65,30),
    cantidad3 numeric(65,30),
    signo integer,
    fecha timestamp(3) without time zone,
    id_motivo_stk integer NOT NULL,
    cod_articulo text NOT NULL,
    id_unidad_stk integer NOT NULL,
    id_empresa integer NOT NULL,
    id_sector integer NOT NULL,
    id_estado_stock integer NOT NULL
);


ALTER TABLE public.cpf_consumos OWNER TO mariaelena;

--
-- Name: cpf_consumos_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.cpf_consumos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cpf_consumos_id_seq OWNER TO mariaelena;

--
-- Name: cpf_consumos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.cpf_consumos_id_seq OWNED BY public.cpf_consumos.id;


--
-- Name: cpf_contaux; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.cpf_contaux (
    id integer NOT NULL,
    nro_trans integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    importe_mo numeric(65,30),
    importe_mn numeric(65,30),
    importe_tr numeric(65,30),
    fecha timestamp(3) without time zone,
    nro_trans_ref integer NOT NULL,
    signo integer NOT NULL,
    serie_fact text NOT NULL,
    cod_docum text NOT NULL,
    nro_fact integer NOT NULL,
    id_moneda integer NOT NULL,
    id_titular integer NOT NULL,
    id_empresa integer DEFAULT 1 NOT NULL,
    tc numeric(65,30),
    importe_iva_mn numeric(65,30),
    importe_iva_mo numeric(65,30),
    importe_iva_tr numeric(65,30),
    importe_total_mn numeric(65,30),
    importe_total_mo numeric(65,30),
    importe_total_tr numeric(65,30)
);


ALTER TABLE public.cpf_contaux OWNER TO mariaelena;

--
-- Name: cpf_contaux_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.cpf_contaux_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cpf_contaux_id_seq OWNER TO mariaelena;

--
-- Name: cpf_contaux_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.cpf_contaux_id_seq OWNED BY public.cpf_contaux.id;


--
-- Name: cpf_costos; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.cpf_costos (
    id integer NOT NULL,
    nro_trans integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    importe_mo numeric(65,30),
    importe_mn numeric(65,30),
    importe_tr numeric(65,30),
    signo integer,
    nro_lote text,
    cod_identidad text,
    fecha timestamp(3) without time zone,
    nro_trans_ref integer DEFAULT 0,
    cod_articulo text,
    id_unidad_stk integer,
    id_empresa integer,
    id_tipo_costo integer,
    tc numeric(65,30) NOT NULL
);


ALTER TABLE public.cpf_costos OWNER TO mariaelena;

--
-- Name: cpf_costos_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.cpf_costos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cpf_costos_id_seq OWNER TO mariaelena;

--
-- Name: cpf_costos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.cpf_costos_id_seq OWNED BY public.cpf_costos.id;


--
-- Name: cpf_log; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.cpf_log (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    descripcion text,
    fecha timestamp(3) without time zone NOT NULL,
    id_registro integer,
    nro_trans integer,
    id_seccion integer NOT NULL,
    id_accion integer NOT NULL,
    observacion text,
    cod_docum text,
    id_empresa integer NOT NULL
);


ALTER TABLE public.cpf_log OWNER TO mariaelena;

--
-- Name: cpf_log_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.cpf_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cpf_log_id_seq OWNER TO mariaelena;

--
-- Name: cpf_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.cpf_log_id_seq OWNED BY public.cpf_log.id;


--
-- Name: cpf_registro_sanitario; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.cpf_registro_sanitario (
    id integer NOT NULL,
    nro_trans integer,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    cantidad numeric(65,30),
    cantidad2 numeric(65,30),
    cantidad3 numeric(65,30),
    fecha timestamp(3) without time zone,
    nro_lote text,
    cod_identidad text,
    cod_articulo text NOT NULL,
    id_empresa integer NOT NULL,
    id_motivo_sanitario integer NOT NULL,
    signo integer NOT NULL,
    id_padre integer NOT NULL
);


ALTER TABLE public.cpf_registro_sanitario OWNER TO mariaelena;

--
-- Name: cpf_registro_sanitario_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.cpf_registro_sanitario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cpf_registro_sanitario_id_seq OWNER TO mariaelena;

--
-- Name: cpf_registro_sanitario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.cpf_registro_sanitario_id_seq OWNED BY public.cpf_registro_sanitario.id;


--
-- Name: cpf_stockaux; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.cpf_stockaux (
    id integer NOT NULL,
    nro_trans integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    cantidad numeric(65,30) DEFAULT 1,
    cantidad2 numeric(65,30),
    cantidad3 numeric(65,30),
    signo integer,
    nro_lote text,
    cod_identidad text,
    fecha timestamp(3) without time zone,
    id_motivo_stk integer NOT NULL,
    cod_articulo text NOT NULL,
    id_unidad_stk integer NOT NULL,
    id_empresa integer NOT NULL,
    id_estado_stock integer NOT NULL,
    id_sector integer NOT NULL
);


ALTER TABLE public.cpf_stockaux OWNER TO mariaelena;

--
-- Name: cpf_stockaux_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.cpf_stockaux_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cpf_stockaux_id_seq OWNER TO mariaelena;

--
-- Name: cpf_stockaux_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.cpf_stockaux_id_seq OWNED BY public.cpf_stockaux.id;


--
-- Name: cpp_fact_prov; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.cpp_fact_prov (
    id integer NOT NULL,
    nro_trans integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    cantidad integer NOT NULL,
    precio_unitario numeric(65,30) NOT NULL,
    importe_mo numeric(65,30),
    importe_mn numeric(65,30),
    importe_tr numeric(65,30),
    importe_total_mo numeric(65,30),
    importe_total_mn numeric(65,30),
    importe_total_tr numeric(65,30),
    fecha timestamp(3) without time zone,
    serie_fact_prov text NOT NULL,
    nro_fact_prov integer NOT NULL,
    id_moneda integer NOT NULL,
    id_titular integer NOT NULL,
    id_empresa integer DEFAULT 1 NOT NULL,
    tc numeric(65,30),
    cod_docum text NOT NULL,
    cod_articulo text NOT NULL,
    conv_uni_cmp_a_stk numeric(65,30),
    id_tasa_iva_cmp integer,
    importe_iva_basico_mn numeric(65,30),
    importe_iva_basico_mo numeric(65,30),
    importe_iva_basico_tr numeric(65,30),
    importe_iva_excento_mn numeric(65,30),
    importe_iva_excento_mo numeric(65,30),
    importe_iva_excento_tr numeric(65,30),
    importe_iva_minimo_mn numeric(65,30),
    importe_iva_minimo_mo numeric(65,30),
    importe_iva_minimo_tr numeric(65,30),
    cantidad_stk numeric(65,30)
);


ALTER TABLE public.cpp_fact_prov OWNER TO mariaelena;

--
-- Name: cpp_fact_prov_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.cpp_fact_prov_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cpp_fact_prov_id_seq OWNER TO mariaelena;

--
-- Name: cpp_fact_prov_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.cpp_fact_prov_id_seq OWNED BY public.cpp_fact_prov.id;


--
-- Name: cpp_facturas; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.cpp_facturas (
    id integer NOT NULL,
    nro_trans integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    cantidad integer NOT NULL,
    precio_unitario numeric(65,30) NOT NULL,
    importe_mo numeric(65,30),
    importe_mn numeric(65,30),
    importe_tr numeric(65,30),
    importe_total_mo numeric(65,30),
    importe_total_mn numeric(65,30),
    importe_total_tr numeric(65,30),
    importe_iva_mo numeric(65,30),
    importe_iva_mn numeric(65,30),
    importe_iva_tr numeric(65,30),
    fecha timestamp(3) without time zone,
    serie_fact_prov text NOT NULL,
    nro_fact_prov integer NOT NULL,
    id_moneda integer NOT NULL,
    id_titular integer NOT NULL,
    id_empresa integer DEFAULT 1 NOT NULL,
    tc numeric(65,30),
    cod_docum text NOT NULL,
    nro_lote text NOT NULL,
    cod_identidad text NOT NULL,
    cod_articulo text NOT NULL
);


ALTER TABLE public.cpp_facturas OWNER TO mariaelena;

--
-- Name: cpp_facturas_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.cpp_facturas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cpp_facturas_id_seq OWNER TO mariaelena;

--
-- Name: cpp_facturas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.cpp_facturas_id_seq OWNED BY public.cpp_facturas.id;


--
-- Name: cpp_ingresoromaneo; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.cpp_ingresoromaneo (
    id integer NOT NULL,
    nro_trans integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    cantidad integer NOT NULL,
    precio_unitario numeric(65,30) NOT NULL,
    importe_mo numeric(65,30),
    importe_mn numeric(65,30),
    importe_tr numeric(65,30),
    importe_total_mo numeric(65,30),
    importe_total_mn numeric(65,30),
    importe_total_tr numeric(65,30),
    importe_iva_mo numeric(65,30),
    importe_iva_mn numeric(65,30),
    importe_iva_tr numeric(65,30),
    kilos_salida numeric(65,30),
    kilos_calc_declarado numeric(65,30),
    kilos_calc_cuarta_balanza numeric(65,30),
    fecha timestamp(3) without time zone,
    serie_fact_prov text NOT NULL,
    nro_fact_prov integer NOT NULL,
    id_moneda integer NOT NULL,
    id_titular integer NOT NULL,
    id_empresa integer DEFAULT 1 NOT NULL,
    tc numeric(65,30),
    cod_docum text NOT NULL,
    cod_articulo text NOT NULL,
    importe_mo_peso_cuarta_balanza numeric(65,30),
    importe_mo_peso_entrada numeric(65,30),
    importe_mo_peso_salida numeric(65,30),
    cod_identidad text
);


ALTER TABLE public.cpp_ingresoromaneo OWNER TO mariaelena;

--
-- Name: cpp_ingresoromaneo_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.cpp_ingresoromaneo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cpp_ingresoromaneo_id_seq OWNER TO mariaelena;

--
-- Name: cpp_ingresoromaneo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.cpp_ingresoromaneo_id_seq OWNED BY public.cpp_ingresoromaneo.id;


--
-- Name: cpp_movimiento_stock; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.cpp_movimiento_stock (
    id integer NOT NULL,
    nro_trans integer,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    cantidad numeric(65,30),
    cantidad2 numeric(65,30),
    cantidad3 numeric(65,30),
    fecha timestamp(3) without time zone,
    nro_lote text,
    cod_identidad text,
    cod_articulo text NOT NULL,
    id_empresa integer NOT NULL
);


ALTER TABLE public.cpp_movimiento_stock OWNER TO mariaelena;

--
-- Name: cpp_movimiento_stock_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.cpp_movimiento_stock_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cpp_movimiento_stock_id_seq OWNER TO mariaelena;

--
-- Name: cpp_movimiento_stock_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.cpp_movimiento_stock_id_seq OWNED BY public.cpp_movimiento_stock.id;


--
-- Name: cpp_registro_sanitario; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.cpp_registro_sanitario (
    id integer NOT NULL,
    nro_trans integer,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    cantidad numeric(65,30),
    cantidad2 numeric(65,30),
    cantidad3 numeric(65,30),
    fecha timestamp(3) without time zone,
    nro_lote text,
    cod_identidad text,
    cod_articulo text NOT NULL,
    id_empresa integer NOT NULL,
    id_motivo_sanitario integer NOT NULL,
    id_padre integer NOT NULL
);


ALTER TABLE public.cpp_registro_sanitario OWNER TO mariaelena;

--
-- Name: cpp_registro_sanitario_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.cpp_registro_sanitario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cpp_registro_sanitario_id_seq OWNER TO mariaelena;

--
-- Name: cpp_registro_sanitario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.cpp_registro_sanitario_id_seq OWNED BY public.cpp_registro_sanitario.id;


--
-- Name: cpt_evolucion_ganado; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.cpt_evolucion_ganado (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    id_mod integer DEFAULT 0 NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    cod_articulo text NOT NULL,
    cod_articulo_evoluciona text NOT NULL,
    peso_fin numeric(65,30) NOT NULL
);


ALTER TABLE public.cpt_evolucion_ganado OWNER TO mariaelena;

--
-- Name: cpt_evolucion_ganado_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.cpt_evolucion_ganado_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cpt_evolucion_ganado_id_seq OWNER TO mariaelena;

--
-- Name: cpt_evolucion_ganado_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.cpt_evolucion_ganado_id_seq OWNED BY public.cpt_evolucion_ganado.id;


--
-- Name: cpt_fact_prov; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.cpt_fact_prov (
    id integer NOT NULL,
    nro_trans integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    importe_mo numeric(65,30),
    importe_mn numeric(65,30),
    importe_tr numeric(65,30),
    fecha timestamp(3) without time zone,
    nro_trans_ref integer NOT NULL,
    serie_fact_prov text NOT NULL,
    nro_fact_prov integer NOT NULL,
    id_moneda integer NOT NULL,
    id_titular integer NOT NULL,
    id_empresa integer DEFAULT 1 NOT NULL,
    cod_docum text NOT NULL,
    tc numeric(65,30),
    importe_total_mn numeric(65,30),
    importe_total_mo numeric(65,30),
    importe_total_tr numeric(65,30),
    afecta_costo text,
    importe_iva_basico_mn numeric(65,30),
    importe_iva_basico_mo numeric(65,30),
    importe_iva_basico_tr numeric(65,30),
    importe_iva_excento_mn numeric(65,30),
    importe_iva_excento_mo numeric(65,30),
    importe_iva_excento_tr numeric(65,30),
    importe_iva_minimo_mn numeric(65,30),
    importe_iva_minimo_mo numeric(65,30),
    importe_iva_minimo_tr numeric(65,30),
    importe_iva_total_mn numeric(65,30),
    importe_iva_total_mo numeric(65,30),
    importe_iva_total_tr numeric(65,30)
);


ALTER TABLE public.cpt_fact_prov OWNER TO mariaelena;

--
-- Name: cpt_fact_prov_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.cpt_fact_prov_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cpt_fact_prov_id_seq OWNER TO mariaelena;

--
-- Name: cpt_fact_prov_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.cpt_fact_prov_id_seq OWNED BY public.cpt_fact_prov.id;


--
-- Name: cpt_facturas; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.cpt_facturas (
    id integer NOT NULL,
    nro_trans integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    importe_mo numeric(65,30),
    importe_mn numeric(65,30),
    importe_tr numeric(65,30),
    fecha timestamp(3) without time zone,
    nro_trans_ref integer NOT NULL,
    serie_fact_prov text NOT NULL,
    cod_docum text NOT NULL,
    nro_fact_prov integer NOT NULL,
    id_moneda integer NOT NULL,
    id_titular integer NOT NULL,
    id_empresa integer DEFAULT 1 NOT NULL,
    tc integer NOT NULL,
    nro_lote_salida text NOT NULL,
    nro_tropa text NOT NULL
);


ALTER TABLE public.cpt_facturas OWNER TO mariaelena;

--
-- Name: cpt_facturas_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.cpt_facturas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cpt_facturas_id_seq OWNER TO mariaelena;

--
-- Name: cpt_facturas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.cpt_facturas_id_seq OWNED BY public.cpt_facturas.id;


--
-- Name: cpt_identidad; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.cpt_identidad (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    cod_articulo text NOT NULL,
    nro_lote text NOT NULL,
    cod_identidad text NOT NULL,
    meses integer NOT NULL,
    peso_inicial numeric(65,30) NOT NULL,
    fecha_entrada timestamp(3) without time zone NOT NULL,
    "Fecha_salida" timestamp(3) without time zone NOT NULL,
    id_categoria_ganado integer NOT NULL,
    id_marca_ganado integer NOT NULL
);


ALTER TABLE public.cpt_identidad OWNER TO mariaelena;

--
-- Name: cpt_identidad_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.cpt_identidad_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cpt_identidad_id_seq OWNER TO mariaelena;

--
-- Name: cpt_identidad_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.cpt_identidad_id_seq OWNED BY public.cpt_identidad.id;


--
-- Name: cpt_ingresoromaneo; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.cpt_ingresoromaneo (
    id integer NOT NULL,
    nro_trans integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    importe_mo numeric(65,30),
    importe_mn numeric(65,30),
    importe_tr numeric(65,30),
    importe_total_mo numeric(65,30),
    importe_total_mn numeric(65,30),
    importe_total_tr numeric(65,30),
    importe_iva_mo numeric(65,30),
    importe_iva_mn numeric(65,30),
    importe_iva_tr numeric(65,30),
    cantidad_animales numeric(65,30),
    cantidad_kilos_declarados numeric(65,30),
    cantidad_kilos_cuarta_balanza numeric(65,30),
    porcentaje_rendimiento numeric(65,30),
    fecha timestamp(3) without time zone,
    nro_trans_ref integer NOT NULL,
    serie_fact_prov text NOT NULL,
    nro_fact_prov integer NOT NULL,
    id_moneda integer NOT NULL,
    id_titular integer NOT NULL,
    id_empresa integer DEFAULT 1 NOT NULL,
    tc numeric(65,30),
    cod_docum text NOT NULL,
    afecta_costo text,
    cantidad_kilos_salida numeric(65,30),
    nro_romaneo integer,
    nro_tropa integer
);


ALTER TABLE public.cpt_ingresoromaneo OWNER TO mariaelena;

--
-- Name: cpt_ingresoromaneo_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.cpt_ingresoromaneo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cpt_ingresoromaneo_id_seq OWNER TO mariaelena;

--
-- Name: cpt_ingresoromaneo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.cpt_ingresoromaneo_id_seq OWNED BY public.cpt_ingresoromaneo.id;


--
-- Name: cpt_movimiento_stock; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.cpt_movimiento_stock (
    id integer NOT NULL,
    nro_trans integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    peso_total_real numeric(65,30),
    peso_total_facturado numeric(65,30),
    cantidad_ganado numeric(65,30),
    fecha timestamp(3) without time zone,
    serie_guia text,
    nro_guia text,
    valor_dicose integer,
    id_propiedad_ganado integer,
    cod_articulo text,
    id_tipo_toma_peso integer,
    id_motivo_stk integer,
    id_empresa integer DEFAULT 1,
    bania_garrapata boolean,
    nro_lote text,
    observaciones text
);


ALTER TABLE public.cpt_movimiento_stock OWNER TO mariaelena;

--
-- Name: cpt_movimiento_stock_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.cpt_movimiento_stock_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cpt_movimiento_stock_id_seq OWNER TO mariaelena;

--
-- Name: cpt_movimiento_stock_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.cpt_movimiento_stock_id_seq OWNED BY public.cpt_movimiento_stock.id;


--
-- Name: cpt_pago_fact_prov; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.cpt_pago_fact_prov (
    id integer NOT NULL,
    nro_trans integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    importe_mo numeric(65,30),
    importe_mn numeric(65,30),
    importe_tr numeric(65,30),
    fecha timestamp(3) without time zone,
    nro_trans_ref integer NOT NULL,
    serie_fact_prov text NOT NULL,
    nro_fact_prov integer NOT NULL,
    id_moneda integer NOT NULL,
    id_titular integer NOT NULL,
    id_empresa integer DEFAULT 1 NOT NULL,
    tc numeric(65,30),
    cod_docum text NOT NULL,
    id_estado_pago integer NOT NULL
);


ALTER TABLE public.cpt_pago_fact_prov OWNER TO mariaelena;

--
-- Name: cpt_pago_fact_prov_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.cpt_pago_fact_prov_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cpt_pago_fact_prov_id_seq OWNER TO mariaelena;

--
-- Name: cpt_pago_fact_prov_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.cpt_pago_fact_prov_id_seq OWNED BY public.cpt_pago_fact_prov.id;


--
-- Name: cpt_parametros_x_fecha; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.cpt_parametros_x_fecha (
    id integer NOT NULL,
    nro_trans integer,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    fecha timestamp(3) without time zone NOT NULL,
    precio_vaca_cuarta_balanza numeric(65,30) NOT NULL,
    tc numeric(65,30) NOT NULL
);


ALTER TABLE public.cpt_parametros_x_fecha OWNER TO mariaelena;

--
-- Name: cpt_parametros_x_fecha_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.cpt_parametros_x_fecha_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cpt_parametros_x_fecha_id_seq OWNER TO mariaelena;

--
-- Name: cpt_parametros_x_fecha_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.cpt_parametros_x_fecha_id_seq OWNED BY public.cpt_parametros_x_fecha.id;


--
-- Name: cpt_recaravaneo; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.cpt_recaravaneo (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    id_mod integer DEFAULT 0 NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    observaciones text NOT NULL,
    fecha timestamp(3) without time zone NOT NULL,
    cod_articulo text NOT NULL,
    nro_lote text NOT NULL,
    cod_identidad text NOT NULL,
    cod_identidad_nuevo text NOT NULL,
    id_empresa integer NOT NULL
);


ALTER TABLE public.cpt_recaravaneo OWNER TO mariaelena;

--
-- Name: cpt_recaravaneo_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.cpt_recaravaneo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cpt_recaravaneo_id_seq OWNER TO mariaelena;

--
-- Name: cpt_recaravaneo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.cpt_recaravaneo_id_seq OWNED BY public.cpt_recaravaneo.id;


--
-- Name: cpt_registro_lluvias; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.cpt_registro_lluvias (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    id_mod integer DEFAULT 0 NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    cantidad_mm numeric(65,30) NOT NULL,
    fecha timestamp(3) without time zone NOT NULL,
    observacion text NOT NULL,
    id_empresa integer NOT NULL
);


ALTER TABLE public.cpt_registro_lluvias OWNER TO mariaelena;

--
-- Name: cpt_registro_lluvias_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.cpt_registro_lluvias_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cpt_registro_lluvias_id_seq OWNER TO mariaelena;

--
-- Name: cpt_registro_lluvias_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.cpt_registro_lluvias_id_seq OWNED BY public.cpt_registro_lluvias.id;


--
-- Name: cpt_registro_sanitario; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.cpt_registro_sanitario (
    id integer NOT NULL,
    nro_trans integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    peso_total_real numeric(65,30),
    peso_total_facturado numeric(65,30),
    cantidad_ganado numeric(65,30),
    fecha timestamp(3) without time zone,
    id_motivo_sanitario integer NOT NULL,
    id_empresa integer DEFAULT 1 NOT NULL,
    en_alta boolean NOT NULL,
    cod_articulo text
);


ALTER TABLE public.cpt_registro_sanitario OWNER TO mariaelena;

--
-- Name: cpt_registro_sanitario_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.cpt_registro_sanitario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cpt_registro_sanitario_id_seq OWNER TO mariaelena;

--
-- Name: cpt_registro_sanitario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.cpt_registro_sanitario_id_seq OWNED BY public.cpt_registro_sanitario.id;


--
-- Name: cpt_registros_gasto; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.cpt_registros_gasto (
    id integer NOT NULL,
    nro_trans integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    descripcion text NOT NULL,
    fecha timestamp(3) without time zone NOT NULL,
    cod_docum text NOT NULL,
    importe_mo numeric(65,30),
    importe_mn numeric(65,30),
    importe_tr numeric(65,30),
    tc numeric(65,30) NOT NULL,
    id_moneda integer NOT NULL,
    id_titular integer NOT NULL,
    id_empresa integer DEFAULT 1 NOT NULL,
    id_tipo_gasto integer NOT NULL
);


ALTER TABLE public.cpt_registros_gasto OWNER TO mariaelena;

--
-- Name: cpt_registros_gasto_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.cpt_registros_gasto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cpt_registros_gasto_id_seq OWNER TO mariaelena;

--
-- Name: cpt_registros_gasto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.cpt_registros_gasto_id_seq OWNED BY public.cpt_registros_gasto.id;


--
-- Name: departamentos; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.departamentos (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    descripcion text NOT NULL
);


ALTER TABLE public.departamentos OWNER TO mariaelena;

--
-- Name: departamentos_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.departamentos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.departamentos_id_seq OWNER TO mariaelena;

--
-- Name: departamentos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.departamentos_id_seq OWNED BY public.departamentos.id;


--
-- Name: depositos; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.depositos (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    id_mod integer DEFAULT 0 NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    nombre text NOT NULL,
    superficie integer,
    dicose text,
    latitud text,
    longitud text,
    superficie_arrendada integer,
    id_departamento integer NOT NULL,
    id_usuario integer NOT NULL,
    id_empresa integer NOT NULL
);


ALTER TABLE public.depositos OWNER TO mariaelena;

--
-- Name: depositos_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.depositos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.depositos_id_seq OWNER TO mariaelena;

--
-- Name: depositos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.depositos_id_seq OWNED BY public.depositos.id;


--
-- Name: dicoses; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.dicoses (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    descripcion text,
    valor text,
    id_empresa integer
);


ALTER TABLE public.dicoses OWNER TO mariaelena;

--
-- Name: dicoses_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.dicoses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dicoses_id_seq OWNER TO mariaelena;

--
-- Name: dicoses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.dicoses_id_seq OWNED BY public.dicoses.id;


--
-- Name: empresas; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.empresas (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    id_mod integer DEFAULT 0 NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    nombre text NOT NULL,
    razon_social text,
    rut text NOT NULL,
    direccion text NOT NULL,
    email_contacto text NOT NULL,
    telefono_contacto text NOT NULL,
    observaciones text NOT NULL
);


ALTER TABLE public.empresas OWNER TO mariaelena;

--
-- Name: empresas_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.empresas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.empresas_id_seq OWNER TO mariaelena;

--
-- Name: empresas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.empresas_id_seq OWNED BY public.empresas.id;


--
-- Name: estado_pago; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.estado_pago (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    descripcion text NOT NULL
);


ALTER TABLE public.estado_pago OWNER TO mariaelena;

--
-- Name: estado_pago_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.estado_pago_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.estado_pago_id_seq OWNER TO mariaelena;

--
-- Name: estado_pago_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.estado_pago_id_seq OWNED BY public.estado_pago.id;


--
-- Name: estados_ganado; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.estados_ganado (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    descripcion text NOT NULL
);


ALTER TABLE public.estados_ganado OWNER TO mariaelena;

--
-- Name: estados_ganado_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.estados_ganado_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.estados_ganado_id_seq OWNER TO mariaelena;

--
-- Name: estados_ganado_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.estados_ganado_id_seq OWNED BY public.estados_ganado.id;


--
-- Name: estados_stock; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.estados_stock (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    descripcion text NOT NULL,
    es_fisico text DEFAULT 'S'::text NOT NULL
);


ALTER TABLE public.estados_stock OWNER TO mariaelena;

--
-- Name: estados_stock_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.estados_stock_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.estados_stock_id_seq OWNER TO mariaelena;

--
-- Name: estados_stock_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.estados_stock_id_seq OWNED BY public.estados_stock.id;


--
-- Name: marcas_ganado; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.marcas_ganado (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    descripcion text NOT NULL,
    id_tipo_ganado integer NOT NULL
);


ALTER TABLE public.marcas_ganado OWNER TO mariaelena;

--
-- Name: marcas_ganado_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.marcas_ganado_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.marcas_ganado_id_seq OWNER TO mariaelena;

--
-- Name: marcas_ganado_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.marcas_ganado_id_seq OWNED BY public.marcas_ganado.id;


--
-- Name: monedas; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.monedas (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    id_mod integer DEFAULT 0 NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    descripcion text NOT NULL,
    simbolo text NOT NULL
);


ALTER TABLE public.monedas OWNER TO mariaelena;

--
-- Name: monedas_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.monedas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.monedas_id_seq OWNER TO mariaelena;

--
-- Name: monedas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.monedas_id_seq OWNED BY public.monedas.id;


--
-- Name: motivos_mov_stock; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.motivos_mov_stock (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    descripcion text NOT NULL,
    cod_docum text NOT NULL,
    id_tipo_mov_stk integer NOT NULL
);


ALTER TABLE public.motivos_mov_stock OWNER TO mariaelena;

--
-- Name: motivos_mov_stock_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.motivos_mov_stock_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.motivos_mov_stock_id_seq OWNER TO mariaelena;

--
-- Name: motivos_mov_stock_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.motivos_mov_stock_id_seq OWNED BY public.motivos_mov_stock.id;


--
-- Name: motivos_sanitarios; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.motivos_sanitarios (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    descripcion text NOT NULL,
    frecuencia integer,
    recurrente boolean,
    unidad_frecuencia text,
    dosis numeric(65,30),
    cod_articulo text,
    id_empresa integer
);


ALTER TABLE public.motivos_sanitarios OWNER TO mariaelena;

--
-- Name: motivos_sanitarios_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.motivos_sanitarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.motivos_sanitarios_id_seq OWNER TO mariaelena;

--
-- Name: motivos_sanitarios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.motivos_sanitarios_id_seq OWNED BY public.motivos_sanitarios.id;


--
-- Name: numeradores; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.numeradores (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    descripcion text NOT NULL,
    valor integer NOT NULL
);


ALTER TABLE public.numeradores OWNER TO mariaelena;

--
-- Name: numeradores_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.numeradores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.numeradores_id_seq OWNER TO mariaelena;

--
-- Name: numeradores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.numeradores_id_seq OWNED BY public.numeradores.id;


--
-- Name: pasturas; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.pasturas (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    id_mod integer DEFAULT 0 NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    nombre text NOT NULL,
    vida_util_dias integer NOT NULL
);


ALTER TABLE public.pasturas OWNER TO mariaelena;

--
-- Name: pasturas_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.pasturas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pasturas_id_seq OWNER TO mariaelena;

--
-- Name: pasturas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.pasturas_id_seq OWNED BY public.pasturas.id;


--
-- Name: pasturas_x_sector; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.pasturas_x_sector (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    id_mod integer DEFAULT 0 NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    descripcion text NOT NULL,
    observaciones text NOT NULL,
    fecha_siembra timestamp(3) without time zone NOT NULL,
    fecha_pastoreo timestamp(3) without time zone NOT NULL,
    fecha_estimada_fin_pastoreo timestamp(3) without time zone NOT NULL,
    fecha_fin_pastoreo timestamp(3) without time zone NOT NULL,
    id_pastura integer NOT NULL,
    id_sector integer NOT NULL,
    id_empresa integer NOT NULL
);


ALTER TABLE public.pasturas_x_sector OWNER TO mariaelena;

--
-- Name: pasturas_x_sector_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.pasturas_x_sector_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pasturas_x_sector_id_seq OWNER TO mariaelena;

--
-- Name: pasturas_x_sector_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.pasturas_x_sector_id_seq OWNED BY public.pasturas_x_sector.id;


--
-- Name: permisos_x_rol_seccion; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.permisos_x_rol_seccion (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    id_mod integer DEFAULT 0 NOT NULL,
    id_seccion integer NOT NULL,
    id_accion integer NOT NULL,
    id_rol integer NOT NULL
);


ALTER TABLE public.permisos_x_rol_seccion OWNER TO mariaelena;

--
-- Name: permisos_x_rol_seccion_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.permisos_x_rol_seccion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.permisos_x_rol_seccion_id_seq OWNER TO mariaelena;

--
-- Name: permisos_x_rol_seccion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.permisos_x_rol_seccion_id_seq OWNED BY public.permisos_x_rol_seccion.id;


--
-- Name: permisos_x_usuario_seccion; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.permisos_x_usuario_seccion (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    id_usuario integer NOT NULL,
    id_seccion integer NOT NULL,
    id_accion integer NOT NULL,
    id_mod integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.permisos_x_usuario_seccion OWNER TO mariaelena;

--
-- Name: permisos_x_usuario_seccion_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.permisos_x_usuario_seccion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.permisos_x_usuario_seccion_id_seq OWNER TO mariaelena;

--
-- Name: permisos_x_usuario_seccion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.permisos_x_usuario_seccion_id_seq OWNED BY public.permisos_x_usuario_seccion.id;


--
-- Name: propiedad_ganado; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.propiedad_ganado (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    descripcion text NOT NULL
);


ALTER TABLE public.propiedad_ganado OWNER TO mariaelena;

--
-- Name: propiedad_ganado_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.propiedad_ganado_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.propiedad_ganado_id_seq OWNER TO mariaelena;

--
-- Name: propiedad_ganado_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.propiedad_ganado_id_seq OWNED BY public.propiedad_ganado.id;


--
-- Name: roles; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.roles (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    id_mod integer DEFAULT 0 NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    descripcion text NOT NULL
);


ALTER TABLE public.roles OWNER TO mariaelena;

--
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.roles_id_seq OWNER TO mariaelena;

--
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;


--
-- Name: secciones; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.secciones (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    id_mod integer DEFAULT 0 NOT NULL,
    descripcion text,
    tabla text NOT NULL,
    modelo text NOT NULL,
    id_seccion_padre integer NOT NULL,
    borrado_fisico boolean,
    borrado_logico boolean,
    id_empresa integer
);


ALTER TABLE public.secciones OWNER TO mariaelena;

--
-- Name: secciones_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.secciones_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.secciones_id_seq OWNER TO mariaelena;

--
-- Name: secciones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.secciones_id_seq OWNED BY public.secciones.id;


--
-- Name: sectores; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.sectores (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    id_mod integer DEFAULT 0 NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    nombre text NOT NULL,
    superficie integer,
    id_deposito integer NOT NULL,
    id_empresa integer NOT NULL,
    embarcadero boolean
);


ALTER TABLE public.sectores OWNER TO mariaelena;

--
-- Name: sectores_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.sectores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sectores_id_seq OWNER TO mariaelena;

--
-- Name: sectores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.sectores_id_seq OWNED BY public.sectores.id;


--
-- Name: tasas_iva; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.tasas_iva (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    descripcion text NOT NULL,
    porcentaje numeric(65,30) NOT NULL
);


ALTER TABLE public.tasas_iva OWNER TO mariaelena;

--
-- Name: tasas_iva_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.tasas_iva_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tasas_iva_id_seq OWNER TO mariaelena;

--
-- Name: tasas_iva_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.tasas_iva_id_seq OWNED BY public.tasas_iva.id;


--
-- Name: tipo_articulo; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.tipo_articulo (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    descripcion text NOT NULL
);


ALTER TABLE public.tipo_articulo OWNER TO mariaelena;

--
-- Name: tipo_articulo_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.tipo_articulo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tipo_articulo_id_seq OWNER TO mariaelena;

--
-- Name: tipo_articulo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.tipo_articulo_id_seq OWNED BY public.tipo_articulo.id;


--
-- Name: tipo_cambio_diario; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.tipo_cambio_diario (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    id_mod integer DEFAULT 0 NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    valor numeric(65,30) NOT NULL,
    fecha timestamp(3) without time zone NOT NULL,
    id_moneda integer NOT NULL
);


ALTER TABLE public.tipo_cambio_diario OWNER TO mariaelena;

--
-- Name: tipo_cambio_diario_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.tipo_cambio_diario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tipo_cambio_diario_id_seq OWNER TO mariaelena;

--
-- Name: tipo_cambio_diario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.tipo_cambio_diario_id_seq OWNED BY public.tipo_cambio_diario.id;


--
-- Name: tipos_costeo; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.tipos_costeo (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    id_mod integer DEFAULT 0 NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    descripcion text NOT NULL
);


ALTER TABLE public.tipos_costeo OWNER TO mariaelena;

--
-- Name: tipos_costeo_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.tipos_costeo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tipos_costeo_id_seq OWNER TO mariaelena;

--
-- Name: tipos_costeo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.tipos_costeo_id_seq OWNED BY public.tipos_costeo.id;


--
-- Name: tipos_ganado; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.tipos_ganado (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    descripcion text NOT NULL
);


ALTER TABLE public.tipos_ganado OWNER TO mariaelena;

--
-- Name: tipos_ganado_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.tipos_ganado_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tipos_ganado_id_seq OWNER TO mariaelena;

--
-- Name: tipos_ganado_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.tipos_ganado_id_seq OWNED BY public.tipos_ganado.id;


--
-- Name: tipos_gasto; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.tipos_gasto (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    descripcion text NOT NULL
);


ALTER TABLE public.tipos_gasto OWNER TO mariaelena;

--
-- Name: tipos_gasto_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.tipos_gasto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tipos_gasto_id_seq OWNER TO mariaelena;

--
-- Name: tipos_gasto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.tipos_gasto_id_seq OWNED BY public.tipos_gasto.id;


--
-- Name: tipos_mov_stock; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.tipos_mov_stock (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    descripcion text NOT NULL,
    naturaleza integer NOT NULL
);


ALTER TABLE public.tipos_mov_stock OWNER TO mariaelena;

--
-- Name: tipos_mov_stock_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.tipos_mov_stock_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tipos_mov_stock_id_seq OWNER TO mariaelena;

--
-- Name: tipos_mov_stock_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.tipos_mov_stock_id_seq OWNED BY public.tipos_mov_stock.id;


--
-- Name: tipos_titulares; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.tipos_titulares (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    id_mod integer DEFAULT 0 NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    descripcion text NOT NULL
);


ALTER TABLE public.tipos_titulares OWNER TO mariaelena;

--
-- Name: tipos_titulares_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.tipos_titulares_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tipos_titulares_id_seq OWNER TO mariaelena;

--
-- Name: tipos_titulares_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.tipos_titulares_id_seq OWNED BY public.tipos_titulares.id;


--
-- Name: tipos_toma_peso; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.tipos_toma_peso (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    descripcion text NOT NULL
);


ALTER TABLE public.tipos_toma_peso OWNER TO mariaelena;

--
-- Name: tipos_toma_peso_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.tipos_toma_peso_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tipos_toma_peso_id_seq OWNER TO mariaelena;

--
-- Name: tipos_toma_peso_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.tipos_toma_peso_id_seq OWNED BY public.tipos_toma_peso.id;


--
-- Name: titulares; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.titulares (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    id_mod integer DEFAULT 0 NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    nombre_fantasia text NOT NULL,
    razon_social text,
    rut text NOT NULL,
    direccion text NOT NULL,
    email text NOT NULL,
    observaciones text NOT NULL,
    nombre_contacto text NOT NULL,
    telefono_contacto text NOT NULL,
    id_tipo_titular integer NOT NULL,
    id_categoria_prov integer NOT NULL,
    id_categoria_cliente integer NOT NULL,
    id_empresa integer
);


ALTER TABLE public.titulares OWNER TO mariaelena;

--
-- Name: titulares_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.titulares_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.titulares_id_seq OWNER TO mariaelena;

--
-- Name: titulares_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.titulares_id_seq OWNED BY public.titulares.id;


--
-- Name: unidades; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.unidades (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    descripcion text NOT NULL,
    descripcion_corta text NOT NULL
);


ALTER TABLE public.unidades OWNER TO mariaelena;

--
-- Name: unidades_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.unidades_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.unidades_id_seq OWNER TO mariaelena;

--
-- Name: unidades_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.unidades_id_seq OWNED BY public.unidades.id;


--
-- Name: usuarios; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.usuarios (
    id integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    id_mod integer DEFAULT 0 NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL,
    email text NOT NULL,
    hash text NOT NULL,
    "hashRt" text,
    telefono_contacto text,
    nombre text,
    apellido text,
    "isRegisteredWithGoogle" boolean DEFAULT false NOT NULL,
    "isAdmin" boolean DEFAULT false NOT NULL,
    token_recuperacion_pass text,
    id_rol integer NOT NULL
);


ALTER TABLE public.usuarios OWNER TO mariaelena;

--
-- Name: usuarios_id_seq; Type: SEQUENCE; Schema: public; Owner: mariaelena
--

CREATE SEQUENCE public.usuarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuarios_id_seq OWNER TO mariaelena;

--
-- Name: usuarios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mariaelena
--

ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;


--
-- Name: usuarios_x_empresas; Type: TABLE; Schema: public; Owner: mariaelena
--

CREATE TABLE public.usuarios_x_empresas (
    id_usuario integer NOT NULL,
    id_empresa integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    estado text DEFAULT 'S'::text NOT NULL
);


ALTER TABLE public.usuarios_x_empresas OWNER TO mariaelena;

--
-- Name: acciones id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.acciones ALTER COLUMN id SET DEFAULT nextval('public.acciones_id_seq'::regclass);


--
-- Name: articulos id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.articulos ALTER COLUMN id SET DEFAULT nextval('public.articulos_id_seq'::regclass);


--
-- Name: articulos_x_titular id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.articulos_x_titular ALTER COLUMN id SET DEFAULT nextval('public.articulos_x_titular_id_seq'::regclass);


--
-- Name: categorias_cliente id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.categorias_cliente ALTER COLUMN id SET DEFAULT nextval('public.categorias_cliente_id_seq'::regclass);


--
-- Name: categorias_ganado id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.categorias_ganado ALTER COLUMN id SET DEFAULT nextval('public.categorias_ganado_id_seq'::regclass);


--
-- Name: categorias_prov id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.categorias_prov ALTER COLUMN id SET DEFAULT nextval('public.categorias_prov_id_seq'::regclass);


--
-- Name: control_trans id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.control_trans ALTER COLUMN id SET DEFAULT nextval('public.control_trans_id_seq'::regclass);


--
-- Name: controles_x_seccion_accion id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.controles_x_seccion_accion ALTER COLUMN id SET DEFAULT nextval('public.controles_x_seccion_accion_id_seq'::regclass);


--
-- Name: cpf_consumos id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_consumos ALTER COLUMN id SET DEFAULT nextval('public.cpf_consumos_id_seq'::regclass);


--
-- Name: cpf_contaux id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_contaux ALTER COLUMN id SET DEFAULT nextval('public.cpf_contaux_id_seq'::regclass);


--
-- Name: cpf_costos id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_costos ALTER COLUMN id SET DEFAULT nextval('public.cpf_costos_id_seq'::regclass);


--
-- Name: cpf_log id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_log ALTER COLUMN id SET DEFAULT nextval('public.cpf_log_id_seq'::regclass);


--
-- Name: cpf_registro_sanitario id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_registro_sanitario ALTER COLUMN id SET DEFAULT nextval('public.cpf_registro_sanitario_id_seq'::regclass);


--
-- Name: cpf_stockaux id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_stockaux ALTER COLUMN id SET DEFAULT nextval('public.cpf_stockaux_id_seq'::regclass);


--
-- Name: cpp_fact_prov id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpp_fact_prov ALTER COLUMN id SET DEFAULT nextval('public.cpp_fact_prov_id_seq'::regclass);


--
-- Name: cpp_facturas id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpp_facturas ALTER COLUMN id SET DEFAULT nextval('public.cpp_facturas_id_seq'::regclass);


--
-- Name: cpp_ingresoromaneo id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpp_ingresoromaneo ALTER COLUMN id SET DEFAULT nextval('public.cpp_ingresoromaneo_id_seq'::regclass);


--
-- Name: cpp_movimiento_stock id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpp_movimiento_stock ALTER COLUMN id SET DEFAULT nextval('public.cpp_movimiento_stock_id_seq'::regclass);


--
-- Name: cpp_registro_sanitario id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpp_registro_sanitario ALTER COLUMN id SET DEFAULT nextval('public.cpp_registro_sanitario_id_seq'::regclass);


--
-- Name: cpt_evolucion_ganado id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_evolucion_ganado ALTER COLUMN id SET DEFAULT nextval('public.cpt_evolucion_ganado_id_seq'::regclass);


--
-- Name: cpt_fact_prov id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_fact_prov ALTER COLUMN id SET DEFAULT nextval('public.cpt_fact_prov_id_seq'::regclass);


--
-- Name: cpt_facturas id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_facturas ALTER COLUMN id SET DEFAULT nextval('public.cpt_facturas_id_seq'::regclass);


--
-- Name: cpt_identidad id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_identidad ALTER COLUMN id SET DEFAULT nextval('public.cpt_identidad_id_seq'::regclass);


--
-- Name: cpt_ingresoromaneo id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_ingresoromaneo ALTER COLUMN id SET DEFAULT nextval('public.cpt_ingresoromaneo_id_seq'::regclass);


--
-- Name: cpt_movimiento_stock id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_movimiento_stock ALTER COLUMN id SET DEFAULT nextval('public.cpt_movimiento_stock_id_seq'::regclass);


--
-- Name: cpt_pago_fact_prov id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_pago_fact_prov ALTER COLUMN id SET DEFAULT nextval('public.cpt_pago_fact_prov_id_seq'::regclass);


--
-- Name: cpt_parametros_x_fecha id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_parametros_x_fecha ALTER COLUMN id SET DEFAULT nextval('public.cpt_parametros_x_fecha_id_seq'::regclass);


--
-- Name: cpt_recaravaneo id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_recaravaneo ALTER COLUMN id SET DEFAULT nextval('public.cpt_recaravaneo_id_seq'::regclass);


--
-- Name: cpt_registro_lluvias id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_registro_lluvias ALTER COLUMN id SET DEFAULT nextval('public.cpt_registro_lluvias_id_seq'::regclass);


--
-- Name: cpt_registro_sanitario id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_registro_sanitario ALTER COLUMN id SET DEFAULT nextval('public.cpt_registro_sanitario_id_seq'::regclass);


--
-- Name: cpt_registros_gasto id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_registros_gasto ALTER COLUMN id SET DEFAULT nextval('public.cpt_registros_gasto_id_seq'::regclass);


--
-- Name: departamentos id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.departamentos ALTER COLUMN id SET DEFAULT nextval('public.departamentos_id_seq'::regclass);


--
-- Name: depositos id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.depositos ALTER COLUMN id SET DEFAULT nextval('public.depositos_id_seq'::regclass);


--
-- Name: dicoses id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.dicoses ALTER COLUMN id SET DEFAULT nextval('public.dicoses_id_seq'::regclass);


--
-- Name: empresas id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.empresas ALTER COLUMN id SET DEFAULT nextval('public.empresas_id_seq'::regclass);


--
-- Name: estado_pago id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.estado_pago ALTER COLUMN id SET DEFAULT nextval('public.estado_pago_id_seq'::regclass);


--
-- Name: estados_ganado id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.estados_ganado ALTER COLUMN id SET DEFAULT nextval('public.estados_ganado_id_seq'::regclass);


--
-- Name: estados_stock id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.estados_stock ALTER COLUMN id SET DEFAULT nextval('public.estados_stock_id_seq'::regclass);


--
-- Name: marcas_ganado id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.marcas_ganado ALTER COLUMN id SET DEFAULT nextval('public.marcas_ganado_id_seq'::regclass);


--
-- Name: monedas id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.monedas ALTER COLUMN id SET DEFAULT nextval('public.monedas_id_seq'::regclass);


--
-- Name: motivos_mov_stock id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.motivos_mov_stock ALTER COLUMN id SET DEFAULT nextval('public.motivos_mov_stock_id_seq'::regclass);


--
-- Name: motivos_sanitarios id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.motivos_sanitarios ALTER COLUMN id SET DEFAULT nextval('public.motivos_sanitarios_id_seq'::regclass);


--
-- Name: numeradores id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.numeradores ALTER COLUMN id SET DEFAULT nextval('public.numeradores_id_seq'::regclass);


--
-- Name: pasturas id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.pasturas ALTER COLUMN id SET DEFAULT nextval('public.pasturas_id_seq'::regclass);


--
-- Name: pasturas_x_sector id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.pasturas_x_sector ALTER COLUMN id SET DEFAULT nextval('public.pasturas_x_sector_id_seq'::regclass);


--
-- Name: permisos_x_rol_seccion id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.permisos_x_rol_seccion ALTER COLUMN id SET DEFAULT nextval('public.permisos_x_rol_seccion_id_seq'::regclass);


--
-- Name: permisos_x_usuario_seccion id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.permisos_x_usuario_seccion ALTER COLUMN id SET DEFAULT nextval('public.permisos_x_usuario_seccion_id_seq'::regclass);


--
-- Name: propiedad_ganado id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.propiedad_ganado ALTER COLUMN id SET DEFAULT nextval('public.propiedad_ganado_id_seq'::regclass);


--
-- Name: roles id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);


--
-- Name: secciones id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.secciones ALTER COLUMN id SET DEFAULT nextval('public.secciones_id_seq'::regclass);


--
-- Name: sectores id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.sectores ALTER COLUMN id SET DEFAULT nextval('public.sectores_id_seq'::regclass);


--
-- Name: tasas_iva id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.tasas_iva ALTER COLUMN id SET DEFAULT nextval('public.tasas_iva_id_seq'::regclass);


--
-- Name: tipo_articulo id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.tipo_articulo ALTER COLUMN id SET DEFAULT nextval('public.tipo_articulo_id_seq'::regclass);


--
-- Name: tipo_cambio_diario id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.tipo_cambio_diario ALTER COLUMN id SET DEFAULT nextval('public.tipo_cambio_diario_id_seq'::regclass);


--
-- Name: tipos_costeo id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.tipos_costeo ALTER COLUMN id SET DEFAULT nextval('public.tipos_costeo_id_seq'::regclass);


--
-- Name: tipos_ganado id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.tipos_ganado ALTER COLUMN id SET DEFAULT nextval('public.tipos_ganado_id_seq'::regclass);


--
-- Name: tipos_gasto id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.tipos_gasto ALTER COLUMN id SET DEFAULT nextval('public.tipos_gasto_id_seq'::regclass);


--
-- Name: tipos_mov_stock id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.tipos_mov_stock ALTER COLUMN id SET DEFAULT nextval('public.tipos_mov_stock_id_seq'::regclass);


--
-- Name: tipos_titulares id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.tipos_titulares ALTER COLUMN id SET DEFAULT nextval('public.tipos_titulares_id_seq'::regclass);


--
-- Name: tipos_toma_peso id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.tipos_toma_peso ALTER COLUMN id SET DEFAULT nextval('public.tipos_toma_peso_id_seq'::regclass);


--
-- Name: titulares id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.titulares ALTER COLUMN id SET DEFAULT nextval('public.titulares_id_seq'::regclass);


--
-- Name: unidades id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.unidades ALTER COLUMN id SET DEFAULT nextval('public.unidades_id_seq'::regclass);


--
-- Name: usuarios id; Type: DEFAULT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);


--
-- Data for Name: _prisma_migrations; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) FROM stdin;
f176d5bc-4e7e-4eda-a556-0e35f85aa667	f089d4eb96d615b5eae019576fa957345169ba8bfcf8fe2c6cdfa442933b1477	2023-08-24 22:35:31.080789+00	20230722170049_sdasdsa	\N	\N	2023-08-24 22:35:31.06934+00	1
47c8fd54-f183-4c48-ab98-f015709ea89c	c82b937b88348fed6f3b79b9868d631d8dd249c0d4f66cb9039d1c8297e2d52f	2023-08-24 22:35:30.334797+00	20230602222715_primera_nuevamente	\N	\N	2023-08-24 22:35:30.196445+00	1
33fcd181-dcbe-4577-a7d2-b05738c2a5a8	ca7d73f11ea893f3df14ede022e9b98b631b1dcaf3901e7c66ae710d382ad74d	2023-08-24 22:35:30.654435+00	20230703215836_lanzamiento	\N	\N	2023-08-24 22:35:30.644025+00	1
43cf321b-1e69-4ffc-a28c-66472ab572df	5116352d3c53576e4b2d7db1104a8d53d445523f211d62f165cf86cdbe0a259a	2023-08-24 22:35:30.352214+00	20230603210518_despues_de_los_insert	\N	\N	2023-08-24 22:35:30.338234+00	1
cf18e419-93b6-4d14-9931-607e2582be9d	ce9fe7559336487871ecc196e72aa7beb762fcc1f2b194c7c37bda20de97825c	2023-08-24 22:35:30.366659+00	20230603214022_dasdasd	\N	\N	2023-08-24 22:35:30.357599+00	1
2279e52b-ee0f-452a-97cf-922924a07bad	db5693f56dbe280a5d7bf5a9840aac3591337412846b0dd7c5755f3840757972	2023-08-24 22:35:30.827381+00	20230712231737_borrado_logico_si_o_no	\N	\N	2023-08-24 22:35:30.815878+00	1
394a434c-3953-4f92-b3d7-5115442f0f6f	070a964afc343269009034853f35a7aa8cf7733720cf3d21ffad7a4b2b306245	2023-08-24 22:35:30.38935+00	20230624225115_sdasdasd	\N	\N	2023-08-24 22:35:30.370435+00	1
9a686032-5036-4d8e-b214-e3bb00458a59	0a33b9d9500ec01940c6bff887aca993f908e481c1a52801dbf41e536457e377	2023-08-24 22:35:30.66804+00	20230703222647_sigo_con_los_controles	\N	\N	2023-08-24 22:35:30.658181+00	1
4411a97f-fe20-48e3-bb14-4b55d32c088c	12aa6c966a63010e07708d50ad710b5b845fc5b782a854f6c6a059be3582f9ee	2023-08-24 22:35:30.404955+00	20230626202706_token_recuperacion_usuario	\N	\N	2023-08-24 22:35:30.393201+00	1
2655857d-6bf4-497f-afc9-8c6a080d9872	138012afb561926f5d7043b908c68ee59ba4cdf0eeb3b9c20bcef223c73a3c6c	2023-08-24 22:35:30.41854+00	20230626211144_dasdasdasdasdas1111111111111111111	\N	\N	2023-08-24 22:35:30.40965+00	1
88b13dbc-3276-4feb-ae4f-947e4755976d	9f4522b821d3f44f83e1af19106943f57fa76bb026d3bcf47fe5a32f68a7fb16	2023-08-24 22:35:30.435794+00	20230626211853_ultima_para_ver_si_la_toma	\N	\N	2023-08-24 22:35:30.424988+00	1
66bffc1a-b21d-4039-b8bf-469e8b3666ee	df89657892ef30faf65666282b8137a1cc369d155ffcfa9f194b58f39ef84b9e	2023-08-24 22:35:30.700405+00	20230704140141_parte_contable	\N	\N	2023-08-24 22:35:30.673731+00	1
aff0bc58-f7a4-4e88-ae6c-b0aadf9b9036	e081e7120ef44e8f926b7437e1d3c5c59a09526d5f76a9793d8a7f674856e1bc	2023-08-24 22:35:30.523433+00	20230628152552_ultima_con_proveedores_y_titularess	\N	\N	2023-08-24 22:35:30.440403+00	1
8ddfc210-0d6d-4f97-86d8-f281492a1eca	4e22df388d662ff6d33245e1a0ef1e807240bb284d59eb8a41f9069c3f9c9d86	2023-08-24 22:35:30.543223+00	20230701141135_error_en_la_tabal_de_usuarios_x_empresa	\N	\N	2023-08-24 22:35:30.52645+00	1
579149f5-aa54-422f-bcb5-58cf969311a7	66799cb8c65cdef5b51e78ea7598335d0d2e85a5774c0e3014ca16cffb472d07	2023-08-24 22:35:30.958995+00	20230717012814_dsda	\N	\N	2023-08-24 22:35:30.943092+00	1
c108f6d0-4315-488f-b062-f8e1355dce28	29b061600ca5054be8e5a862c4e996916efc10fe9b649e770c446d92b4de188d	2023-08-24 22:35:30.582101+00	20230703182454_permisos_de_usuario_y_tabla_de_log	\N	\N	2023-08-24 22:35:30.547237+00	1
9e437793-bbad-4986-8804-11acb305cbbd	330363ee34249f9dcb1ed687c158f5b807799a5b4fb5e3ee2a91f9f7f2f3709c	2023-08-24 22:35:30.722131+00	20230705125855_asignacion_de_permisos_automatica	\N	\N	2023-08-24 22:35:30.704678+00	1
cad63ab9-e2f1-4d82-a1a9-f7765d03e0b5	978f75908d2c43d496071a3cc76134084f54d6e8597b3e43c4c842c9601ff15b	2023-08-24 22:35:30.596605+00	20230703182930_usuario_mod_tabla_de_permisos	\N	\N	2023-08-24 22:35:30.585497+00	1
61c974d8-0206-4b80-aead-310a5db60d47	1471c815fbe29bf7e749143c0331a268717f99b8fff08262df3f07c0533e1ebf	2023-08-24 22:35:30.625817+00	20230703204353_controles	\N	\N	2023-08-24 22:35:30.600232+00	1
50b70cbe-2d03-48d3-8cad-2f568eaf1eb8	aadf281f7b1403a730a77709b93dfeefc17ac0b72f367afc9802de021bbd3817	2023-08-24 22:35:30.840372+00	20230713002343_sdasd	\N	\N	2023-08-24 22:35:30.830732+00	1
f294992f-f8bb-43e9-8577-66a30b89e1e4	640799dc660490fece341c2f75285ba1b7252102c2574006f2a06a84af8de2b2	2023-08-24 22:35:30.640339+00	20230703205411_upgrade_controles	\N	\N	2023-08-24 22:35:30.629648+00	1
2eec41b1-2874-4749-9aea-00663ac620ce	adb18d26317804347c1b9b0324cb4758a6dde840269a0e71de4a5997bf37bf5b	2023-08-24 22:35:30.75597+00	20230712131919_cambio_de_nro_lote	\N	\N	2023-08-24 22:35:30.726243+00	1
ac4bd0a4-2c39-48f8-8688-4cf27352ce5e	e23f5263bae4784b607b9ebb68e4c3beb0936c4fb782d714077260be75fd5156	2023-08-24 22:35:30.769649+00	20230712180705_observacion_en_la_cpf_log	\N	\N	2023-08-24 22:35:30.759707+00	1
d702ba45-e112-4bc0-80f0-3fa800349111	4a60337c1c9c02e5109a3bff6939fd6f326111845870438931beebd7ad4adc59	2023-08-24 22:35:30.798546+00	20230712195930_motivos_sanitarios	\N	\N	2023-08-24 22:35:30.773465+00	1
e2c35f4f-6799-4464-b434-2308613dfc8c	2ab4a94102731350f0a9a86cc2b1748c5f7266f2bdbc596737e83681ce3e7a5b	2023-08-24 22:35:30.853915+00	20230713004026_asdasd	\N	\N	2023-08-24 22:35:30.843987+00	1
f6be202a-b75b-4d6f-9b89-e88f6ea7f1d2	16b57884262030b9ed4fb09520728d3d9ef598a6de3fcfc7c7108b7973739578	2023-08-24 22:35:30.812289+00	20230712214319_bania_garrapata	\N	\N	2023-08-24 22:35:30.802255+00	1
2c223984-f501-4e2b-83e6-83bf4e6ccbdc	dd5323b6c68747ff5db939cb6e75c1d042ececd39e6f65331f786cd56990623f	2023-08-24 22:35:31.042639+00	20230717235525_vghf	\N	\N	2023-08-24 22:35:31.013588+00	1
f14ca76b-73ad-442b-927c-ba1b70ce6a65	2056c46e7b6106da8a70ad06466c8e3791b1fb1ab3fb1acfedb47ba41874c6db	2023-08-24 22:35:30.873161+00	20230713170430_hhj	\N	\N	2023-08-24 22:35:30.857841+00	1
2449bd87-1a12-42f2-a05c-2daecaac6aad	6c694cc11cbbc81cb6c2cd57465b673e7c3c1032c2033c3f7b46cd182e0c262c	2023-08-24 22:35:30.977147+00	20230717014340_dsdsa	\N	\N	2023-08-24 22:35:30.964038+00	1
9a71756e-f78c-4435-be4b-7366572268ad	bb81e22260ebd9c9c56f8aece0141ce17b8466ffc45f09348e2b59b4891fc279	2023-08-24 22:35:30.922489+00	20230714191106_ddas	\N	\N	2023-08-24 22:35:30.876939+00	1
a9c7fabc-ed58-43cc-87d5-dabf73762fcf	bd21679539ade9ef9546b3db0cad30071596f9068d85f3d28aad658be2884aa0	2023-08-24 22:35:30.936457+00	20230717002203_sdasdasd	\N	\N	2023-08-24 22:35:30.92663+00	1
2d76b7c8-8560-47ed-8269-22b6bef4af2a	30708cff283ba7baede9435e42367a8f39b8bfbde405381dbd64c4f6cf0f5a53	2023-08-24 22:35:30.992855+00	20230717192754_kjsfadas	\N	\N	2023-08-24 22:35:30.980893+00	1
1cd410e1-a6bf-4a24-b1fa-5c79813140eb	4f55c76d10cf168913d5b0e115f780519e1bff1d920146484bed277a325ff3c6	2023-08-24 22:35:31.009324+00	20230717200224_dasdsad	\N	\N	2023-08-24 22:35:30.997165+00	1
5b51cd1f-f3ce-497f-bffb-6bfde9607ec1	73cc6b360c7056fe43dcbed4db7bc2ee994e83f50e709fa25bde565aa4482b44	2023-08-24 22:35:31.065076+00	20230717235647_dasdas	\N	\N	2023-08-24 22:35:31.046412+00	1
0117af93-84a8-44f8-91e1-673e1f3ebe97	0f35c497cd9e18b65e97854f752c384fa00ab0060d9583f1cadad7a01748fbb4	2023-08-24 22:35:31.194543+00	20230726005148_jhjk	\N	\N	2023-08-24 22:35:31.104228+00	1
48ab2e8d-7a9d-4323-925a-26c403f6b1ef	0c0ec7b06b672290971cbbe82617fa71b826239ba94b3bc3746b8a2482ca7579	2023-08-24 22:35:31.099184+00	20230724204335_dasdas	\N	\N	2023-08-24 22:35:31.084909+00	1
de4ee43a-35e8-4e0f-8136-5073658749b3	bb861d64910b73b4534709023c3952e46b5d88c7181fa5af397ef7921be2cbf6	2023-08-24 22:35:31.207458+00	20230727201933_sdasd	\N	\N	2023-08-24 22:35:31.197534+00	1
454059a9-a446-4adb-9b2f-be3bc152a42b	e2fc6dfab818c8951409dd801a765c7918e019d79d9d03c83130b2c9f2f672ff	2023-08-24 22:35:31.236678+00	20230728231934_romaneo	\N	\N	2023-08-24 22:35:31.211673+00	1
6cf047e0-5537-409d-b7bf-30a21516bc31	f58c4b8a3f05bf0a25df48aab67bba8c50c4388b633bdb1e5b967e52efe9187d	2023-08-24 22:35:31.259677+00	20230731185410_sdasdas	\N	\N	2023-08-24 22:35:31.242673+00	1
ae016872-3c00-4bfc-a973-f658254993b3	27576039ceed2385f36477af10ce125ca87eb898ad19c95bb4706ba4d5e7b725	2023-08-24 22:35:31.274903+00	20230801212217_jhghjl	\N	\N	2023-08-24 22:35:31.264278+00	1
d83e33a9-b837-488a-a8f8-1d3b5b627578	35c05c54774eced39f8ea33081c37af5ecd08827a77f1e68a1a754ef97a894fd	2023-08-24 22:35:31.289901+00	20230801214441_dsasd	\N	\N	2023-08-24 22:35:31.27838+00	1
52fa4860-9fd9-4f84-86d6-ed3f84906b72	ec6db84f918b762892195f8de3d1a9be5f05d6c76a3370a2eede99c1d847f8f7	2023-08-24 22:35:31.305954+00	20230802225201_	\N	\N	2023-08-24 22:35:31.293776+00	1
c3313659-ac46-4fa1-9ec7-ec031f42fd3b	b024f064f10ad80eb84c0b5ab85a315d632d1533e0f8225d1b971d183a125559	2023-08-24 22:35:31.326521+00	20230803222102_sdas	\N	\N	2023-08-24 22:35:31.309527+00	1
06357347-860e-44a0-8d66-9c6906865f64	1bb26c8e093c3c3504c4eac1610d09bea518c807bc5696f5741cfd00c1e148dc	2023-08-24 22:35:31.367953+00	20230809214522_sdasdsa	\N	\N	2023-08-24 22:35:31.330427+00	1
e38ce7df-6cd1-445b-8039-630fbe6c9b55	87414bff9c7a38b52a836a1f42f5cafe5bd454f5d04cb85363ffe74189a0b125	2023-08-24 22:35:31.385846+00	20230809215324_bjjkh	\N	\N	2023-08-24 22:35:31.37239+00	1
0f066756-7bb0-4ff5-b109-46324d518fa4	c36c1d4fd88927df5fd4d555fe96eb8f5c3344041c4e062a03d9749d6fa88870	2023-08-24 22:35:31.405599+00	20230809223421_dsdas	\N	\N	2023-08-24 22:35:31.391251+00	1
90d9109c-43df-47ef-b0e2-e11f23dff802	1a5d958f1c000b00d3e02e6d2accd17737dfec9c0dd0603fce81b6a9a0315fc3	2023-08-24 22:35:31.424795+00	20230810001317_dasdas	\N	\N	2023-08-24 22:35:31.410776+00	1
452c63b1-4225-486b-95e8-22548c717bc9	e77e7f0392672f84adee80fdf8f207079460733da7311c96869c3ab3e0aa7318	2023-08-24 22:35:31.441932+00	20230810015119_sdasd	\N	\N	2023-08-24 22:35:31.428709+00	1
167f723a-cead-43b8-9077-9a909e104499	6f4e100ae1cc151317db3b19674296f93c1bd5f713b81f4ca16a3e47d76eb57f	2023-08-24 22:35:31.471827+00	20230811012804_hghj	\N	\N	2023-08-24 22:35:31.44637+00	1
205815b5-79fe-48d3-9016-e547f2e70e1a	8857478ec06edbdb01b9dbe8f005c45dd79eddddab067a9379d93148cb2bbcce	2023-08-24 22:35:31.484694+00	20230811013418_sdsa	\N	\N	2023-08-24 22:35:31.476022+00	1
5d231dda-87c2-4214-890c-02ba670124ea	acac53d874852e66eaf7f824427c38132041c019fd50acfef4c4176f639efa23	2023-08-24 22:35:31.500713+00	20230811013451_ssdsa	\N	\N	2023-08-24 22:35:31.489217+00	1
fb858298-e8a8-453a-ac64-050dfbefa5db	9c657d53070887bfca3b370eed1f16f0a2555f831c380ef26ff44c40e890d406	2023-08-24 22:35:31.525586+00	20230815231426_sdfasdf	\N	\N	2023-08-24 22:35:31.504321+00	1
1bd2ef8f-e0f6-49b5-ac13-645907f9aba8	737c2da4e893cd3eeed60ed32437833d9c45245c848dc7fdf597b4ca70cfdfb2	2023-08-24 22:35:37.37706+00	20230824223536_sdasdas	\N	\N	2023-08-24 22:35:37.35032+00	1
\.


--
-- Data for Name: acciones; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.acciones (id, "createdAt", "updatedAt", estado, id_mod, descripcion) FROM stdin;
\.


--
-- Data for Name: articulos; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.articulos (id, cod_articulo, "createdAt", "updatedAt", estado, nombre, id_unidad_stk, id_categoria_ganado, id_marca_ganado, id_empresa, id_tipo_articulo, id_tasa_iva_cmp, id_tasa_iva_vta, id_unidad_cmp, id_unidad_vta, factor_conv_cmp_a_stk) FROM stdin;
\.


--
-- Data for Name: articulos_x_titular; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.articulos_x_titular (id, cod_articulo, "createdAt", "updatedAt", estado, id_titular, id_empresa) FROM stdin;
\.


--
-- Data for Name: categorias_cliente; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.categorias_cliente (id, "createdAt", "updatedAt", id_mod, estado, descripcion) FROM stdin;
\.


--
-- Data for Name: categorias_ganado; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.categorias_ganado (id, "createdAt", "updatedAt", estado, descripcion, id_tipo_ganado) FROM stdin;
\.


--
-- Data for Name: categorias_prov; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.categorias_prov (id, "createdAt", "updatedAt", id_mod, estado, descripcion) FROM stdin;
\.


--
-- Data for Name: control_trans; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.control_trans (id, "createdAt", "updatedAt", estado, id_mod, nombre, descripcion, persistente, mensaje_error_general, lanzamiento) FROM stdin;
\.


--
-- Data for Name: controles_x_seccion_accion; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.controles_x_seccion_accion (id, "createdAt", "updatedAt", estado, id_mod, id_seccion, id_accion, id_control, mensaje_error_especifico, lanzamiento, campo_form) FROM stdin;
\.


--
-- Data for Name: cpf_consumos; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.cpf_consumos (id, nro_trans, "createdAt", "updatedAt", estado, cantidad, cantidad2, cantidad3, signo, fecha, id_motivo_stk, cod_articulo, id_unidad_stk, id_empresa, id_sector, id_estado_stock) FROM stdin;
\.


--
-- Data for Name: cpf_contaux; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.cpf_contaux (id, nro_trans, "createdAt", "updatedAt", estado, importe_mo, importe_mn, importe_tr, fecha, nro_trans_ref, signo, serie_fact, cod_docum, nro_fact, id_moneda, id_titular, id_empresa, tc, importe_iva_mn, importe_iva_mo, importe_iva_tr, importe_total_mn, importe_total_mo, importe_total_tr) FROM stdin;
\.


--
-- Data for Name: cpf_costos; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.cpf_costos (id, nro_trans, "createdAt", "updatedAt", estado, importe_mo, importe_mn, importe_tr, signo, nro_lote, cod_identidad, fecha, nro_trans_ref, cod_articulo, id_unidad_stk, id_empresa, id_tipo_costo, tc) FROM stdin;
\.


--
-- Data for Name: cpf_log; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.cpf_log (id, "createdAt", "updatedAt", estado, descripcion, fecha, id_registro, nro_trans, id_seccion, id_accion, observacion, cod_docum, id_empresa) FROM stdin;
\.


--
-- Data for Name: cpf_registro_sanitario; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.cpf_registro_sanitario (id, nro_trans, "createdAt", "updatedAt", estado, cantidad, cantidad2, cantidad3, fecha, nro_lote, cod_identidad, cod_articulo, id_empresa, id_motivo_sanitario, signo, id_padre) FROM stdin;
\.


--
-- Data for Name: cpf_stockaux; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.cpf_stockaux (id, nro_trans, "createdAt", "updatedAt", estado, cantidad, cantidad2, cantidad3, signo, nro_lote, cod_identidad, fecha, id_motivo_stk, cod_articulo, id_unidad_stk, id_empresa, id_estado_stock, id_sector) FROM stdin;
\.


--
-- Data for Name: cpp_fact_prov; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.cpp_fact_prov (id, nro_trans, "createdAt", "updatedAt", estado, cantidad, precio_unitario, importe_mo, importe_mn, importe_tr, importe_total_mo, importe_total_mn, importe_total_tr, fecha, serie_fact_prov, nro_fact_prov, id_moneda, id_titular, id_empresa, tc, cod_docum, cod_articulo, conv_uni_cmp_a_stk, id_tasa_iva_cmp, importe_iva_basico_mn, importe_iva_basico_mo, importe_iva_basico_tr, importe_iva_excento_mn, importe_iva_excento_mo, importe_iva_excento_tr, importe_iva_minimo_mn, importe_iva_minimo_mo, importe_iva_minimo_tr, cantidad_stk) FROM stdin;
\.


--
-- Data for Name: cpp_facturas; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.cpp_facturas (id, nro_trans, "createdAt", "updatedAt", estado, cantidad, precio_unitario, importe_mo, importe_mn, importe_tr, importe_total_mo, importe_total_mn, importe_total_tr, importe_iva_mo, importe_iva_mn, importe_iva_tr, fecha, serie_fact_prov, nro_fact_prov, id_moneda, id_titular, id_empresa, tc, cod_docum, nro_lote, cod_identidad, cod_articulo) FROM stdin;
\.


--
-- Data for Name: cpp_ingresoromaneo; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.cpp_ingresoromaneo (id, nro_trans, "createdAt", "updatedAt", estado, cantidad, precio_unitario, importe_mo, importe_mn, importe_tr, importe_total_mo, importe_total_mn, importe_total_tr, importe_iva_mo, importe_iva_mn, importe_iva_tr, kilos_salida, kilos_calc_declarado, kilos_calc_cuarta_balanza, fecha, serie_fact_prov, nro_fact_prov, id_moneda, id_titular, id_empresa, tc, cod_docum, cod_articulo, importe_mo_peso_cuarta_balanza, importe_mo_peso_entrada, importe_mo_peso_salida, cod_identidad) FROM stdin;
\.


--
-- Data for Name: cpp_movimiento_stock; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.cpp_movimiento_stock (id, nro_trans, "createdAt", "updatedAt", estado, cantidad, cantidad2, cantidad3, fecha, nro_lote, cod_identidad, cod_articulo, id_empresa) FROM stdin;
\.


--
-- Data for Name: cpp_registro_sanitario; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.cpp_registro_sanitario (id, nro_trans, "createdAt", "updatedAt", estado, cantidad, cantidad2, cantidad3, fecha, nro_lote, cod_identidad, cod_articulo, id_empresa, id_motivo_sanitario, id_padre) FROM stdin;
\.


--
-- Data for Name: cpt_evolucion_ganado; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.cpt_evolucion_ganado (id, "createdAt", "updatedAt", id_mod, estado, cod_articulo, cod_articulo_evoluciona, peso_fin) FROM stdin;
\.


--
-- Data for Name: cpt_fact_prov; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.cpt_fact_prov (id, nro_trans, "createdAt", "updatedAt", estado, importe_mo, importe_mn, importe_tr, fecha, nro_trans_ref, serie_fact_prov, nro_fact_prov, id_moneda, id_titular, id_empresa, cod_docum, tc, importe_total_mn, importe_total_mo, importe_total_tr, afecta_costo, importe_iva_basico_mn, importe_iva_basico_mo, importe_iva_basico_tr, importe_iva_excento_mn, importe_iva_excento_mo, importe_iva_excento_tr, importe_iva_minimo_mn, importe_iva_minimo_mo, importe_iva_minimo_tr, importe_iva_total_mn, importe_iva_total_mo, importe_iva_total_tr) FROM stdin;
\.


--
-- Data for Name: cpt_facturas; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.cpt_facturas (id, nro_trans, "createdAt", "updatedAt", estado, importe_mo, importe_mn, importe_tr, fecha, nro_trans_ref, serie_fact_prov, cod_docum, nro_fact_prov, id_moneda, id_titular, id_empresa, tc, nro_lote_salida, nro_tropa) FROM stdin;
\.


--
-- Data for Name: cpt_identidad; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.cpt_identidad (id, "createdAt", "updatedAt", estado, cod_articulo, nro_lote, cod_identidad, meses, peso_inicial, fecha_entrada, "Fecha_salida", id_categoria_ganado, id_marca_ganado) FROM stdin;
\.


--
-- Data for Name: cpt_ingresoromaneo; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.cpt_ingresoromaneo (id, nro_trans, "createdAt", "updatedAt", estado, importe_mo, importe_mn, importe_tr, importe_total_mo, importe_total_mn, importe_total_tr, importe_iva_mo, importe_iva_mn, importe_iva_tr, cantidad_animales, cantidad_kilos_declarados, cantidad_kilos_cuarta_balanza, porcentaje_rendimiento, fecha, nro_trans_ref, serie_fact_prov, nro_fact_prov, id_moneda, id_titular, id_empresa, tc, cod_docum, afecta_costo, cantidad_kilos_salida, nro_romaneo, nro_tropa) FROM stdin;
\.


--
-- Data for Name: cpt_movimiento_stock; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.cpt_movimiento_stock (id, nro_trans, "createdAt", "updatedAt", estado, peso_total_real, peso_total_facturado, cantidad_ganado, fecha, serie_guia, nro_guia, valor_dicose, id_propiedad_ganado, cod_articulo, id_tipo_toma_peso, id_motivo_stk, id_empresa, bania_garrapata, nro_lote, observaciones) FROM stdin;
\.


--
-- Data for Name: cpt_pago_fact_prov; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.cpt_pago_fact_prov (id, nro_trans, "createdAt", "updatedAt", estado, importe_mo, importe_mn, importe_tr, fecha, nro_trans_ref, serie_fact_prov, nro_fact_prov, id_moneda, id_titular, id_empresa, tc, cod_docum, id_estado_pago) FROM stdin;
\.


--
-- Data for Name: cpt_parametros_x_fecha; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.cpt_parametros_x_fecha (id, nro_trans, "createdAt", "updatedAt", estado, fecha, precio_vaca_cuarta_balanza, tc) FROM stdin;
\.


--
-- Data for Name: cpt_recaravaneo; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.cpt_recaravaneo (id, "createdAt", "updatedAt", id_mod, estado, observaciones, fecha, cod_articulo, nro_lote, cod_identidad, cod_identidad_nuevo, id_empresa) FROM stdin;
\.


--
-- Data for Name: cpt_registro_lluvias; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.cpt_registro_lluvias (id, "createdAt", "updatedAt", id_mod, estado, cantidad_mm, fecha, observacion, id_empresa) FROM stdin;
\.


--
-- Data for Name: cpt_registro_sanitario; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.cpt_registro_sanitario (id, nro_trans, "createdAt", "updatedAt", estado, peso_total_real, peso_total_facturado, cantidad_ganado, fecha, id_motivo_sanitario, id_empresa, en_alta, cod_articulo) FROM stdin;
\.


--
-- Data for Name: cpt_registros_gasto; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.cpt_registros_gasto (id, nro_trans, "createdAt", "updatedAt", estado, descripcion, fecha, cod_docum, importe_mo, importe_mn, importe_tr, tc, id_moneda, id_titular, id_empresa, id_tipo_gasto) FROM stdin;
\.


--
-- Data for Name: departamentos; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.departamentos (id, "createdAt", "updatedAt", estado, descripcion) FROM stdin;
\.


--
-- Data for Name: depositos; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.depositos (id, "createdAt", "updatedAt", id_mod, estado, nombre, superficie, dicose, latitud, longitud, superficie_arrendada, id_departamento, id_usuario, id_empresa) FROM stdin;
\.


--
-- Data for Name: dicoses; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.dicoses (id, "createdAt", "updatedAt", estado, descripcion, valor, id_empresa) FROM stdin;
\.


--
-- Data for Name: empresas; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.empresas (id, "createdAt", "updatedAt", id_mod, estado, nombre, razon_social, rut, direccion, email_contacto, telefono_contacto, observaciones) FROM stdin;
\.


--
-- Data for Name: estado_pago; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.estado_pago (id, "createdAt", "updatedAt", estado, descripcion) FROM stdin;
\.


--
-- Data for Name: estados_ganado; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.estados_ganado (id, "createdAt", "updatedAt", estado, descripcion) FROM stdin;
\.


--
-- Data for Name: estados_stock; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.estados_stock (id, "createdAt", "updatedAt", estado, descripcion, es_fisico) FROM stdin;
\.


--
-- Data for Name: marcas_ganado; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.marcas_ganado (id, "createdAt", "updatedAt", estado, descripcion, id_tipo_ganado) FROM stdin;
\.


--
-- Data for Name: monedas; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.monedas (id, "createdAt", "updatedAt", id_mod, estado, descripcion, simbolo) FROM stdin;
\.


--
-- Data for Name: motivos_mov_stock; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.motivos_mov_stock (id, "createdAt", "updatedAt", estado, descripcion, cod_docum, id_tipo_mov_stk) FROM stdin;
\.


--
-- Data for Name: motivos_sanitarios; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.motivos_sanitarios (id, "createdAt", "updatedAt", estado, descripcion, frecuencia, recurrente, unidad_frecuencia, dosis, cod_articulo, id_empresa) FROM stdin;
\.


--
-- Data for Name: numeradores; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.numeradores (id, "createdAt", "updatedAt", estado, descripcion, valor) FROM stdin;
\.


--
-- Data for Name: pasturas; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.pasturas (id, "createdAt", "updatedAt", id_mod, estado, nombre, vida_util_dias) FROM stdin;
\.


--
-- Data for Name: pasturas_x_sector; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.pasturas_x_sector (id, "createdAt", "updatedAt", id_mod, estado, descripcion, observaciones, fecha_siembra, fecha_pastoreo, fecha_estimada_fin_pastoreo, fecha_fin_pastoreo, id_pastura, id_sector, id_empresa) FROM stdin;
\.


--
-- Data for Name: permisos_x_rol_seccion; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.permisos_x_rol_seccion (id, "createdAt", "updatedAt", estado, id_mod, id_seccion, id_accion, id_rol) FROM stdin;
\.


--
-- Data for Name: permisos_x_usuario_seccion; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.permisos_x_usuario_seccion (id, "createdAt", "updatedAt", estado, id_usuario, id_seccion, id_accion, id_mod) FROM stdin;
\.


--
-- Data for Name: propiedad_ganado; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.propiedad_ganado (id, "createdAt", "updatedAt", estado, descripcion) FROM stdin;
\.


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.roles (id, "createdAt", "updatedAt", id_mod, estado, descripcion) FROM stdin;
\.


--
-- Data for Name: secciones; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.secciones (id, "createdAt", "updatedAt", estado, id_mod, descripcion, tabla, modelo, id_seccion_padre, borrado_fisico, borrado_logico, id_empresa) FROM stdin;
\.


--
-- Data for Name: sectores; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.sectores (id, "createdAt", "updatedAt", id_mod, estado, nombre, superficie, id_deposito, id_empresa, embarcadero) FROM stdin;
\.


--
-- Data for Name: tasas_iva; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.tasas_iva (id, "createdAt", "updatedAt", estado, descripcion, porcentaje) FROM stdin;
\.


--
-- Data for Name: tipo_articulo; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.tipo_articulo (id, "createdAt", "updatedAt", estado, descripcion) FROM stdin;
\.


--
-- Data for Name: tipo_cambio_diario; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.tipo_cambio_diario (id, "createdAt", "updatedAt", id_mod, estado, valor, fecha, id_moneda) FROM stdin;
\.


--
-- Data for Name: tipos_costeo; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.tipos_costeo (id, "createdAt", "updatedAt", id_mod, estado, descripcion) FROM stdin;
\.


--
-- Data for Name: tipos_ganado; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.tipos_ganado (id, "createdAt", "updatedAt", estado, descripcion) FROM stdin;
\.


--
-- Data for Name: tipos_gasto; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.tipos_gasto (id, "createdAt", "updatedAt", estado, descripcion) FROM stdin;
\.


--
-- Data for Name: tipos_mov_stock; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.tipos_mov_stock (id, "createdAt", "updatedAt", estado, descripcion, naturaleza) FROM stdin;
\.


--
-- Data for Name: tipos_titulares; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.tipos_titulares (id, "createdAt", "updatedAt", id_mod, estado, descripcion) FROM stdin;
\.


--
-- Data for Name: tipos_toma_peso; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.tipos_toma_peso (id, "createdAt", "updatedAt", estado, descripcion) FROM stdin;
\.


--
-- Data for Name: titulares; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.titulares (id, "createdAt", "updatedAt", id_mod, estado, nombre_fantasia, razon_social, rut, direccion, email, observaciones, nombre_contacto, telefono_contacto, id_tipo_titular, id_categoria_prov, id_categoria_cliente, id_empresa) FROM stdin;
\.


--
-- Data for Name: unidades; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.unidades (id, "createdAt", "updatedAt", estado, descripcion, descripcion_corta) FROM stdin;
\.


--
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.usuarios (id, "createdAt", "updatedAt", id_mod, estado, email, hash, "hashRt", telefono_contacto, nombre, apellido, "isRegisteredWithGoogle", "isAdmin", token_recuperacion_pass, id_rol) FROM stdin;
\.


--
-- Data for Name: usuarios_x_empresas; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

COPY public.usuarios_x_empresas (id_usuario, id_empresa, "createdAt", "updatedAt", estado) FROM stdin;
\.


--
-- Name: acciones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.acciones_id_seq', 1, false);


--
-- Name: articulos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.articulos_id_seq', 1, false);


--
-- Name: articulos_x_titular_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.articulos_x_titular_id_seq', 1, false);


--
-- Name: categorias_cliente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.categorias_cliente_id_seq', 1, false);


--
-- Name: categorias_ganado_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.categorias_ganado_id_seq', 1, false);


--
-- Name: categorias_prov_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.categorias_prov_id_seq', 1, false);


--
-- Name: control_trans_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.control_trans_id_seq', 1, false);


--
-- Name: controles_x_seccion_accion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.controles_x_seccion_accion_id_seq', 1, false);


--
-- Name: cpf_consumos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.cpf_consumos_id_seq', 1, false);


--
-- Name: cpf_contaux_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.cpf_contaux_id_seq', 1, false);


--
-- Name: cpf_costos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.cpf_costos_id_seq', 1, false);


--
-- Name: cpf_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.cpf_log_id_seq', 1, false);


--
-- Name: cpf_registro_sanitario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.cpf_registro_sanitario_id_seq', 1, false);


--
-- Name: cpf_stockaux_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.cpf_stockaux_id_seq', 1, false);


--
-- Name: cpp_fact_prov_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.cpp_fact_prov_id_seq', 1, false);


--
-- Name: cpp_facturas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.cpp_facturas_id_seq', 1, false);


--
-- Name: cpp_ingresoromaneo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.cpp_ingresoromaneo_id_seq', 1, false);


--
-- Name: cpp_movimiento_stock_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.cpp_movimiento_stock_id_seq', 1, false);


--
-- Name: cpp_registro_sanitario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.cpp_registro_sanitario_id_seq', 1, false);


--
-- Name: cpt_evolucion_ganado_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.cpt_evolucion_ganado_id_seq', 1, false);


--
-- Name: cpt_fact_prov_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.cpt_fact_prov_id_seq', 1, false);


--
-- Name: cpt_facturas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.cpt_facturas_id_seq', 1, false);


--
-- Name: cpt_identidad_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.cpt_identidad_id_seq', 1, false);


--
-- Name: cpt_ingresoromaneo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.cpt_ingresoromaneo_id_seq', 1, false);


--
-- Name: cpt_movimiento_stock_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.cpt_movimiento_stock_id_seq', 1, false);


--
-- Name: cpt_pago_fact_prov_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.cpt_pago_fact_prov_id_seq', 1, false);


--
-- Name: cpt_parametros_x_fecha_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.cpt_parametros_x_fecha_id_seq', 1, false);


--
-- Name: cpt_recaravaneo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.cpt_recaravaneo_id_seq', 1, false);


--
-- Name: cpt_registro_lluvias_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.cpt_registro_lluvias_id_seq', 1, false);


--
-- Name: cpt_registro_sanitario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.cpt_registro_sanitario_id_seq', 1, false);


--
-- Name: cpt_registros_gasto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.cpt_registros_gasto_id_seq', 1, false);


--
-- Name: departamentos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.departamentos_id_seq', 1, false);


--
-- Name: depositos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.depositos_id_seq', 1, false);


--
-- Name: dicoses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.dicoses_id_seq', 1, false);


--
-- Name: empresas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.empresas_id_seq', 1, false);


--
-- Name: estado_pago_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.estado_pago_id_seq', 1, false);


--
-- Name: estados_ganado_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.estados_ganado_id_seq', 1, false);


--
-- Name: estados_stock_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.estados_stock_id_seq', 1, false);


--
-- Name: marcas_ganado_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.marcas_ganado_id_seq', 1, false);


--
-- Name: monedas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.monedas_id_seq', 1, false);


--
-- Name: motivos_mov_stock_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.motivos_mov_stock_id_seq', 1, false);


--
-- Name: motivos_sanitarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.motivos_sanitarios_id_seq', 1, false);


--
-- Name: numeradores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.numeradores_id_seq', 1, false);


--
-- Name: pasturas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.pasturas_id_seq', 1, false);


--
-- Name: pasturas_x_sector_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.pasturas_x_sector_id_seq', 1, false);


--
-- Name: permisos_x_rol_seccion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.permisos_x_rol_seccion_id_seq', 1, false);


--
-- Name: permisos_x_usuario_seccion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.permisos_x_usuario_seccion_id_seq', 1, false);


--
-- Name: propiedad_ganado_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.propiedad_ganado_id_seq', 1, false);


--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.roles_id_seq', 1, false);


--
-- Name: secciones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.secciones_id_seq', 1, false);


--
-- Name: sectores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.sectores_id_seq', 1, false);


--
-- Name: tasas_iva_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.tasas_iva_id_seq', 1, false);


--
-- Name: tipo_articulo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.tipo_articulo_id_seq', 1, false);


--
-- Name: tipo_cambio_diario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.tipo_cambio_diario_id_seq', 1, false);


--
-- Name: tipos_costeo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.tipos_costeo_id_seq', 1, false);


--
-- Name: tipos_ganado_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.tipos_ganado_id_seq', 1, false);


--
-- Name: tipos_gasto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.tipos_gasto_id_seq', 1, false);


--
-- Name: tipos_mov_stock_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.tipos_mov_stock_id_seq', 1, false);


--
-- Name: tipos_titulares_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.tipos_titulares_id_seq', 1, false);


--
-- Name: tipos_toma_peso_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.tipos_toma_peso_id_seq', 1, false);


--
-- Name: titulares_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.titulares_id_seq', 1, false);


--
-- Name: unidades_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.unidades_id_seq', 1, false);


--
-- Name: usuarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mariaelena
--

SELECT pg_catalog.setval('public.usuarios_id_seq', 1, false);


--
-- Name: _prisma_migrations _prisma_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public._prisma_migrations
    ADD CONSTRAINT _prisma_migrations_pkey PRIMARY KEY (id);


--
-- Name: acciones acciones_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.acciones
    ADD CONSTRAINT acciones_pkey PRIMARY KEY (id);


--
-- Name: articulos articulos_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.articulos
    ADD CONSTRAINT articulos_pkey PRIMARY KEY (id);


--
-- Name: articulos_x_titular articulos_x_titular_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.articulos_x_titular
    ADD CONSTRAINT articulos_x_titular_pkey PRIMARY KEY (id);


--
-- Name: categorias_cliente categorias_cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.categorias_cliente
    ADD CONSTRAINT categorias_cliente_pkey PRIMARY KEY (id);


--
-- Name: categorias_ganado categorias_ganado_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.categorias_ganado
    ADD CONSTRAINT categorias_ganado_pkey PRIMARY KEY (id);


--
-- Name: categorias_prov categorias_prov_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.categorias_prov
    ADD CONSTRAINT categorias_prov_pkey PRIMARY KEY (id);


--
-- Name: control_trans control_trans_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.control_trans
    ADD CONSTRAINT control_trans_pkey PRIMARY KEY (id);


--
-- Name: controles_x_seccion_accion controles_x_seccion_accion_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.controles_x_seccion_accion
    ADD CONSTRAINT controles_x_seccion_accion_pkey PRIMARY KEY (id);


--
-- Name: cpf_consumos cpf_consumos_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_consumos
    ADD CONSTRAINT cpf_consumos_pkey PRIMARY KEY (id);


--
-- Name: cpf_contaux cpf_contaux_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_contaux
    ADD CONSTRAINT cpf_contaux_pkey PRIMARY KEY (id);


--
-- Name: cpf_costos cpf_costos_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_costos
    ADD CONSTRAINT cpf_costos_pkey PRIMARY KEY (id);


--
-- Name: cpf_log cpf_log_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_log
    ADD CONSTRAINT cpf_log_pkey PRIMARY KEY (id);


--
-- Name: cpf_registro_sanitario cpf_registro_sanitario_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_registro_sanitario
    ADD CONSTRAINT cpf_registro_sanitario_pkey PRIMARY KEY (id);


--
-- Name: cpf_stockaux cpf_stockaux_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_stockaux
    ADD CONSTRAINT cpf_stockaux_pkey PRIMARY KEY (id);


--
-- Name: cpp_fact_prov cpp_fact_prov_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpp_fact_prov
    ADD CONSTRAINT cpp_fact_prov_pkey PRIMARY KEY (id);


--
-- Name: cpp_facturas cpp_facturas_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpp_facturas
    ADD CONSTRAINT cpp_facturas_pkey PRIMARY KEY (id);


--
-- Name: cpp_ingresoromaneo cpp_ingresoromaneo_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpp_ingresoromaneo
    ADD CONSTRAINT cpp_ingresoromaneo_pkey PRIMARY KEY (id);


--
-- Name: cpp_movimiento_stock cpp_movimiento_stock_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpp_movimiento_stock
    ADD CONSTRAINT cpp_movimiento_stock_pkey PRIMARY KEY (id);


--
-- Name: cpp_registro_sanitario cpp_registro_sanitario_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpp_registro_sanitario
    ADD CONSTRAINT cpp_registro_sanitario_pkey PRIMARY KEY (id);


--
-- Name: cpt_evolucion_ganado cpt_evolucion_ganado_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_evolucion_ganado
    ADD CONSTRAINT cpt_evolucion_ganado_pkey PRIMARY KEY (id);


--
-- Name: cpt_fact_prov cpt_fact_prov_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_fact_prov
    ADD CONSTRAINT cpt_fact_prov_pkey PRIMARY KEY (id);


--
-- Name: cpt_facturas cpt_facturas_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_facturas
    ADD CONSTRAINT cpt_facturas_pkey PRIMARY KEY (id);


--
-- Name: cpt_identidad cpt_identidad_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_identidad
    ADD CONSTRAINT cpt_identidad_pkey PRIMARY KEY (id);


--
-- Name: cpt_ingresoromaneo cpt_ingresoromaneo_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_ingresoromaneo
    ADD CONSTRAINT cpt_ingresoromaneo_pkey PRIMARY KEY (id);


--
-- Name: cpt_movimiento_stock cpt_movimiento_stock_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_movimiento_stock
    ADD CONSTRAINT cpt_movimiento_stock_pkey PRIMARY KEY (id);


--
-- Name: cpt_pago_fact_prov cpt_pago_fact_prov_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_pago_fact_prov
    ADD CONSTRAINT cpt_pago_fact_prov_pkey PRIMARY KEY (id);


--
-- Name: cpt_parametros_x_fecha cpt_parametros_x_fecha_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_parametros_x_fecha
    ADD CONSTRAINT cpt_parametros_x_fecha_pkey PRIMARY KEY (id);


--
-- Name: cpt_recaravaneo cpt_recaravaneo_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_recaravaneo
    ADD CONSTRAINT cpt_recaravaneo_pkey PRIMARY KEY (id);


--
-- Name: cpt_registro_lluvias cpt_registro_lluvias_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_registro_lluvias
    ADD CONSTRAINT cpt_registro_lluvias_pkey PRIMARY KEY (id);


--
-- Name: cpt_registro_sanitario cpt_registro_sanitario_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_registro_sanitario
    ADD CONSTRAINT cpt_registro_sanitario_pkey PRIMARY KEY (id);


--
-- Name: cpt_registros_gasto cpt_registros_gasto_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_registros_gasto
    ADD CONSTRAINT cpt_registros_gasto_pkey PRIMARY KEY (id);


--
-- Name: departamentos departamentos_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.departamentos
    ADD CONSTRAINT departamentos_pkey PRIMARY KEY (id);


--
-- Name: depositos depositos_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.depositos
    ADD CONSTRAINT depositos_pkey PRIMARY KEY (id);


--
-- Name: dicoses dicoses_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.dicoses
    ADD CONSTRAINT dicoses_pkey PRIMARY KEY (id);


--
-- Name: empresas empresas_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.empresas
    ADD CONSTRAINT empresas_pkey PRIMARY KEY (id);


--
-- Name: estado_pago estado_pago_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.estado_pago
    ADD CONSTRAINT estado_pago_pkey PRIMARY KEY (id);


--
-- Name: estados_ganado estados_ganado_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.estados_ganado
    ADD CONSTRAINT estados_ganado_pkey PRIMARY KEY (id);


--
-- Name: estados_stock estados_stock_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.estados_stock
    ADD CONSTRAINT estados_stock_pkey PRIMARY KEY (id);


--
-- Name: marcas_ganado marcas_ganado_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.marcas_ganado
    ADD CONSTRAINT marcas_ganado_pkey PRIMARY KEY (id);


--
-- Name: monedas monedas_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.monedas
    ADD CONSTRAINT monedas_pkey PRIMARY KEY (id);


--
-- Name: motivos_mov_stock motivos_mov_stock_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.motivos_mov_stock
    ADD CONSTRAINT motivos_mov_stock_pkey PRIMARY KEY (id);


--
-- Name: motivos_sanitarios motivos_sanitarios_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.motivos_sanitarios
    ADD CONSTRAINT motivos_sanitarios_pkey PRIMARY KEY (id);


--
-- Name: numeradores numeradores_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.numeradores
    ADD CONSTRAINT numeradores_pkey PRIMARY KEY (id);


--
-- Name: pasturas pasturas_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.pasturas
    ADD CONSTRAINT pasturas_pkey PRIMARY KEY (id);


--
-- Name: pasturas_x_sector pasturas_x_sector_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.pasturas_x_sector
    ADD CONSTRAINT pasturas_x_sector_pkey PRIMARY KEY (id);


--
-- Name: permisos_x_rol_seccion permisos_x_rol_seccion_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.permisos_x_rol_seccion
    ADD CONSTRAINT permisos_x_rol_seccion_pkey PRIMARY KEY (id);


--
-- Name: permisos_x_usuario_seccion permisos_x_usuario_seccion_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.permisos_x_usuario_seccion
    ADD CONSTRAINT permisos_x_usuario_seccion_pkey PRIMARY KEY (id);


--
-- Name: propiedad_ganado propiedad_ganado_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.propiedad_ganado
    ADD CONSTRAINT propiedad_ganado_pkey PRIMARY KEY (id);


--
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- Name: secciones secciones_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.secciones
    ADD CONSTRAINT secciones_pkey PRIMARY KEY (id);


--
-- Name: sectores sectores_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.sectores
    ADD CONSTRAINT sectores_pkey PRIMARY KEY (id);


--
-- Name: tasas_iva tasas_iva_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.tasas_iva
    ADD CONSTRAINT tasas_iva_pkey PRIMARY KEY (id);


--
-- Name: tipo_articulo tipo_articulo_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.tipo_articulo
    ADD CONSTRAINT tipo_articulo_pkey PRIMARY KEY (id);


--
-- Name: tipo_cambio_diario tipo_cambio_diario_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.tipo_cambio_diario
    ADD CONSTRAINT tipo_cambio_diario_pkey PRIMARY KEY (id);


--
-- Name: tipos_costeo tipos_costeo_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.tipos_costeo
    ADD CONSTRAINT tipos_costeo_pkey PRIMARY KEY (id);


--
-- Name: tipos_ganado tipos_ganado_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.tipos_ganado
    ADD CONSTRAINT tipos_ganado_pkey PRIMARY KEY (id);


--
-- Name: tipos_gasto tipos_gasto_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.tipos_gasto
    ADD CONSTRAINT tipos_gasto_pkey PRIMARY KEY (id);


--
-- Name: tipos_mov_stock tipos_mov_stock_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.tipos_mov_stock
    ADD CONSTRAINT tipos_mov_stock_pkey PRIMARY KEY (id);


--
-- Name: tipos_titulares tipos_titulares_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.tipos_titulares
    ADD CONSTRAINT tipos_titulares_pkey PRIMARY KEY (id);


--
-- Name: tipos_toma_peso tipos_toma_peso_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.tipos_toma_peso
    ADD CONSTRAINT tipos_toma_peso_pkey PRIMARY KEY (id);


--
-- Name: titulares titulares_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.titulares
    ADD CONSTRAINT titulares_pkey PRIMARY KEY (id);


--
-- Name: unidades unidades_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.unidades
    ADD CONSTRAINT unidades_pkey PRIMARY KEY (id);


--
-- Name: usuarios usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);


--
-- Name: usuarios_x_empresas usuarios_x_empresas_pkey; Type: CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.usuarios_x_empresas
    ADD CONSTRAINT usuarios_x_empresas_pkey PRIMARY KEY (id_usuario, id_empresa);


--
-- Name: articulos_cod_articulo_key; Type: INDEX; Schema: public; Owner: mariaelena
--

CREATE UNIQUE INDEX articulos_cod_articulo_key ON public.articulos USING btree (cod_articulo);


--
-- Name: articulos_x_titular_cod_articulo_key; Type: INDEX; Schema: public; Owner: mariaelena
--

CREATE UNIQUE INDEX articulos_x_titular_cod_articulo_key ON public.articulos_x_titular USING btree (cod_articulo);


--
-- Name: usuarios_email_key; Type: INDEX; Schema: public; Owner: mariaelena
--

CREATE UNIQUE INDEX usuarios_email_key ON public.usuarios USING btree (email);


--
-- Name: articulos articulos_id_categoria_ganado_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.articulos
    ADD CONSTRAINT articulos_id_categoria_ganado_fkey FOREIGN KEY (id_categoria_ganado) REFERENCES public.categorias_ganado(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: articulos articulos_id_empresa_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.articulos
    ADD CONSTRAINT articulos_id_empresa_fkey FOREIGN KEY (id_empresa) REFERENCES public.empresas(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: articulos articulos_id_marca_ganado_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.articulos
    ADD CONSTRAINT articulos_id_marca_ganado_fkey FOREIGN KEY (id_marca_ganado) REFERENCES public.marcas_ganado(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: articulos articulos_id_tasa_iva_cmp_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.articulos
    ADD CONSTRAINT articulos_id_tasa_iva_cmp_fkey FOREIGN KEY (id_tasa_iva_cmp) REFERENCES public.tasas_iva(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: articulos articulos_id_tasa_iva_vta_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.articulos
    ADD CONSTRAINT articulos_id_tasa_iva_vta_fkey FOREIGN KEY (id_tasa_iva_vta) REFERENCES public.tasas_iva(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: articulos articulos_id_tipo_articulo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.articulos
    ADD CONSTRAINT articulos_id_tipo_articulo_fkey FOREIGN KEY (id_tipo_articulo) REFERENCES public.tipo_articulo(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: articulos articulos_id_unidad_cmp_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.articulos
    ADD CONSTRAINT articulos_id_unidad_cmp_fkey FOREIGN KEY (id_unidad_cmp) REFERENCES public.unidades(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: articulos articulos_id_unidad_stk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.articulos
    ADD CONSTRAINT articulos_id_unidad_stk_fkey FOREIGN KEY (id_unidad_stk) REFERENCES public.unidades(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: articulos articulos_id_unidad_vta_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.articulos
    ADD CONSTRAINT articulos_id_unidad_vta_fkey FOREIGN KEY (id_unidad_vta) REFERENCES public.unidades(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: articulos_x_titular articulos_x_titular_cod_articulo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.articulos_x_titular
    ADD CONSTRAINT articulos_x_titular_cod_articulo_fkey FOREIGN KEY (cod_articulo) REFERENCES public.articulos(cod_articulo) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: articulos_x_titular articulos_x_titular_id_titular_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.articulos_x_titular
    ADD CONSTRAINT articulos_x_titular_id_titular_fkey FOREIGN KEY (id_titular) REFERENCES public.titulares(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: categorias_ganado categorias_ganado_id_tipo_ganado_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.categorias_ganado
    ADD CONSTRAINT categorias_ganado_id_tipo_ganado_fkey FOREIGN KEY (id_tipo_ganado) REFERENCES public.tipos_ganado(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: controles_x_seccion_accion controles_x_seccion_accion_id_accion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.controles_x_seccion_accion
    ADD CONSTRAINT controles_x_seccion_accion_id_accion_fkey FOREIGN KEY (id_accion) REFERENCES public.acciones(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: controles_x_seccion_accion controles_x_seccion_accion_id_control_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.controles_x_seccion_accion
    ADD CONSTRAINT controles_x_seccion_accion_id_control_fkey FOREIGN KEY (id_control) REFERENCES public.control_trans(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: controles_x_seccion_accion controles_x_seccion_accion_id_seccion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.controles_x_seccion_accion
    ADD CONSTRAINT controles_x_seccion_accion_id_seccion_fkey FOREIGN KEY (id_seccion) REFERENCES public.secciones(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpf_consumos cpf_consumos_cod_articulo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_consumos
    ADD CONSTRAINT cpf_consumos_cod_articulo_fkey FOREIGN KEY (cod_articulo) REFERENCES public.articulos(cod_articulo) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpf_consumos cpf_consumos_id_empresa_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_consumos
    ADD CONSTRAINT cpf_consumos_id_empresa_fkey FOREIGN KEY (id_empresa) REFERENCES public.empresas(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpf_consumos cpf_consumos_id_estado_stock_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_consumos
    ADD CONSTRAINT cpf_consumos_id_estado_stock_fkey FOREIGN KEY (id_estado_stock) REFERENCES public.estados_stock(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpf_consumos cpf_consumos_id_motivo_stk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_consumos
    ADD CONSTRAINT cpf_consumos_id_motivo_stk_fkey FOREIGN KEY (id_motivo_stk) REFERENCES public.motivos_mov_stock(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpf_consumos cpf_consumos_id_sector_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_consumos
    ADD CONSTRAINT cpf_consumos_id_sector_fkey FOREIGN KEY (id_sector) REFERENCES public.sectores(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpf_consumos cpf_consumos_id_unidad_stk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_consumos
    ADD CONSTRAINT cpf_consumos_id_unidad_stk_fkey FOREIGN KEY (id_unidad_stk) REFERENCES public.unidades(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpf_contaux cpf_contaux_id_moneda_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_contaux
    ADD CONSTRAINT cpf_contaux_id_moneda_fkey FOREIGN KEY (id_moneda) REFERENCES public.monedas(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpf_contaux cpf_contaux_id_titular_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_contaux
    ADD CONSTRAINT cpf_contaux_id_titular_fkey FOREIGN KEY (id_titular) REFERENCES public.titulares(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpf_costos cpf_costos_cod_articulo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_costos
    ADD CONSTRAINT cpf_costos_cod_articulo_fkey FOREIGN KEY (cod_articulo) REFERENCES public.articulos(cod_articulo) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: cpf_costos cpf_costos_id_empresa_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_costos
    ADD CONSTRAINT cpf_costos_id_empresa_fkey FOREIGN KEY (id_empresa) REFERENCES public.empresas(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: cpf_costos cpf_costos_id_tipo_costo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_costos
    ADD CONSTRAINT cpf_costos_id_tipo_costo_fkey FOREIGN KEY (id_tipo_costo) REFERENCES public.tipos_costeo(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: cpf_costos cpf_costos_id_unidad_stk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_costos
    ADD CONSTRAINT cpf_costos_id_unidad_stk_fkey FOREIGN KEY (id_unidad_stk) REFERENCES public.unidades(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: cpf_log cpf_log_id_accion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_log
    ADD CONSTRAINT cpf_log_id_accion_fkey FOREIGN KEY (id_accion) REFERENCES public.acciones(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpf_log cpf_log_id_seccion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_log
    ADD CONSTRAINT cpf_log_id_seccion_fkey FOREIGN KEY (id_seccion) REFERENCES public.secciones(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpf_registro_sanitario cpf_registro_sanitario_cod_articulo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_registro_sanitario
    ADD CONSTRAINT cpf_registro_sanitario_cod_articulo_fkey FOREIGN KEY (cod_articulo) REFERENCES public.articulos(cod_articulo) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpf_registro_sanitario cpf_registro_sanitario_id_empresa_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_registro_sanitario
    ADD CONSTRAINT cpf_registro_sanitario_id_empresa_fkey FOREIGN KEY (id_empresa) REFERENCES public.empresas(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpf_registro_sanitario cpf_registro_sanitario_id_motivo_sanitario_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_registro_sanitario
    ADD CONSTRAINT cpf_registro_sanitario_id_motivo_sanitario_fkey FOREIGN KEY (id_motivo_sanitario) REFERENCES public.motivos_sanitarios(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpf_registro_sanitario cpf_registro_sanitario_id_padre_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_registro_sanitario
    ADD CONSTRAINT cpf_registro_sanitario_id_padre_fkey FOREIGN KEY (id_padre) REFERENCES public.cpt_registro_sanitario(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpf_stockaux cpf_stockaux_cod_articulo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_stockaux
    ADD CONSTRAINT cpf_stockaux_cod_articulo_fkey FOREIGN KEY (cod_articulo) REFERENCES public.articulos(cod_articulo) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpf_stockaux cpf_stockaux_id_empresa_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_stockaux
    ADD CONSTRAINT cpf_stockaux_id_empresa_fkey FOREIGN KEY (id_empresa) REFERENCES public.empresas(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpf_stockaux cpf_stockaux_id_estado_stock_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_stockaux
    ADD CONSTRAINT cpf_stockaux_id_estado_stock_fkey FOREIGN KEY (id_estado_stock) REFERENCES public.estados_stock(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpf_stockaux cpf_stockaux_id_motivo_stk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_stockaux
    ADD CONSTRAINT cpf_stockaux_id_motivo_stk_fkey FOREIGN KEY (id_motivo_stk) REFERENCES public.motivos_mov_stock(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpf_stockaux cpf_stockaux_id_sector_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_stockaux
    ADD CONSTRAINT cpf_stockaux_id_sector_fkey FOREIGN KEY (id_sector) REFERENCES public.sectores(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpf_stockaux cpf_stockaux_id_unidad_stk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpf_stockaux
    ADD CONSTRAINT cpf_stockaux_id_unidad_stk_fkey FOREIGN KEY (id_unidad_stk) REFERENCES public.unidades(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpp_fact_prov cpp_fact_prov_cod_articulo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpp_fact_prov
    ADD CONSTRAINT cpp_fact_prov_cod_articulo_fkey FOREIGN KEY (cod_articulo) REFERENCES public.articulos(cod_articulo) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpp_fact_prov cpp_fact_prov_id_moneda_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpp_fact_prov
    ADD CONSTRAINT cpp_fact_prov_id_moneda_fkey FOREIGN KEY (id_moneda) REFERENCES public.monedas(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpp_fact_prov cpp_fact_prov_id_tasa_iva_cmp_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpp_fact_prov
    ADD CONSTRAINT cpp_fact_prov_id_tasa_iva_cmp_fkey FOREIGN KEY (id_tasa_iva_cmp) REFERENCES public.tasas_iva(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: cpp_fact_prov cpp_fact_prov_id_titular_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpp_fact_prov
    ADD CONSTRAINT cpp_fact_prov_id_titular_fkey FOREIGN KEY (id_titular) REFERENCES public.titulares(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpp_facturas cpp_facturas_cod_articulo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpp_facturas
    ADD CONSTRAINT cpp_facturas_cod_articulo_fkey FOREIGN KEY (cod_articulo) REFERENCES public.articulos(cod_articulo) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpp_facturas cpp_facturas_id_moneda_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpp_facturas
    ADD CONSTRAINT cpp_facturas_id_moneda_fkey FOREIGN KEY (id_moneda) REFERENCES public.monedas(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpp_facturas cpp_facturas_id_titular_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpp_facturas
    ADD CONSTRAINT cpp_facturas_id_titular_fkey FOREIGN KEY (id_titular) REFERENCES public.titulares(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpp_ingresoromaneo cpp_ingresoromaneo_cod_articulo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpp_ingresoromaneo
    ADD CONSTRAINT cpp_ingresoromaneo_cod_articulo_fkey FOREIGN KEY (cod_articulo) REFERENCES public.articulos(cod_articulo) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpp_ingresoromaneo cpp_ingresoromaneo_id_moneda_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpp_ingresoromaneo
    ADD CONSTRAINT cpp_ingresoromaneo_id_moneda_fkey FOREIGN KEY (id_moneda) REFERENCES public.monedas(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpp_ingresoromaneo cpp_ingresoromaneo_id_titular_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpp_ingresoromaneo
    ADD CONSTRAINT cpp_ingresoromaneo_id_titular_fkey FOREIGN KEY (id_titular) REFERENCES public.titulares(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpp_movimiento_stock cpp_movimiento_stock_cod_articulo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpp_movimiento_stock
    ADD CONSTRAINT cpp_movimiento_stock_cod_articulo_fkey FOREIGN KEY (cod_articulo) REFERENCES public.articulos(cod_articulo) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpp_movimiento_stock cpp_movimiento_stock_id_empresa_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpp_movimiento_stock
    ADD CONSTRAINT cpp_movimiento_stock_id_empresa_fkey FOREIGN KEY (id_empresa) REFERENCES public.empresas(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpp_registro_sanitario cpp_registro_sanitario_cod_articulo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpp_registro_sanitario
    ADD CONSTRAINT cpp_registro_sanitario_cod_articulo_fkey FOREIGN KEY (cod_articulo) REFERENCES public.articulos(cod_articulo) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpp_registro_sanitario cpp_registro_sanitario_id_empresa_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpp_registro_sanitario
    ADD CONSTRAINT cpp_registro_sanitario_id_empresa_fkey FOREIGN KEY (id_empresa) REFERENCES public.empresas(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpp_registro_sanitario cpp_registro_sanitario_id_motivo_sanitario_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpp_registro_sanitario
    ADD CONSTRAINT cpp_registro_sanitario_id_motivo_sanitario_fkey FOREIGN KEY (id_motivo_sanitario) REFERENCES public.motivos_sanitarios(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpp_registro_sanitario cpp_registro_sanitario_id_padre_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpp_registro_sanitario
    ADD CONSTRAINT cpp_registro_sanitario_id_padre_fkey FOREIGN KEY (id_padre) REFERENCES public.cpt_registro_sanitario(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpt_evolucion_ganado cpt_evolucion_ganado_cod_articulo_evoluciona_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_evolucion_ganado
    ADD CONSTRAINT cpt_evolucion_ganado_cod_articulo_evoluciona_fkey FOREIGN KEY (cod_articulo_evoluciona) REFERENCES public.articulos(cod_articulo) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpt_evolucion_ganado cpt_evolucion_ganado_cod_articulo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_evolucion_ganado
    ADD CONSTRAINT cpt_evolucion_ganado_cod_articulo_fkey FOREIGN KEY (cod_articulo) REFERENCES public.articulos(cod_articulo) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpt_fact_prov cpt_fact_prov_id_moneda_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_fact_prov
    ADD CONSTRAINT cpt_fact_prov_id_moneda_fkey FOREIGN KEY (id_moneda) REFERENCES public.monedas(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpt_fact_prov cpt_fact_prov_id_titular_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_fact_prov
    ADD CONSTRAINT cpt_fact_prov_id_titular_fkey FOREIGN KEY (id_titular) REFERENCES public.titulares(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpt_facturas cpt_facturas_id_moneda_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_facturas
    ADD CONSTRAINT cpt_facturas_id_moneda_fkey FOREIGN KEY (id_moneda) REFERENCES public.monedas(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpt_facturas cpt_facturas_id_titular_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_facturas
    ADD CONSTRAINT cpt_facturas_id_titular_fkey FOREIGN KEY (id_titular) REFERENCES public.titulares(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpt_identidad cpt_identidad_cod_articulo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_identidad
    ADD CONSTRAINT cpt_identidad_cod_articulo_fkey FOREIGN KEY (cod_articulo) REFERENCES public.articulos(cod_articulo) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpt_identidad cpt_identidad_id_categoria_ganado_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_identidad
    ADD CONSTRAINT cpt_identidad_id_categoria_ganado_fkey FOREIGN KEY (id_categoria_ganado) REFERENCES public.categorias_ganado(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpt_identidad cpt_identidad_id_marca_ganado_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_identidad
    ADD CONSTRAINT cpt_identidad_id_marca_ganado_fkey FOREIGN KEY (id_marca_ganado) REFERENCES public.marcas_ganado(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpt_ingresoromaneo cpt_ingresoromaneo_id_moneda_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_ingresoromaneo
    ADD CONSTRAINT cpt_ingresoromaneo_id_moneda_fkey FOREIGN KEY (id_moneda) REFERENCES public.monedas(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpt_ingresoromaneo cpt_ingresoromaneo_id_titular_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_ingresoromaneo
    ADD CONSTRAINT cpt_ingresoromaneo_id_titular_fkey FOREIGN KEY (id_titular) REFERENCES public.titulares(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpt_movimiento_stock cpt_movimiento_stock_cod_articulo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_movimiento_stock
    ADD CONSTRAINT cpt_movimiento_stock_cod_articulo_fkey FOREIGN KEY (cod_articulo) REFERENCES public.articulos(cod_articulo) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: cpt_movimiento_stock cpt_movimiento_stock_id_motivo_stk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_movimiento_stock
    ADD CONSTRAINT cpt_movimiento_stock_id_motivo_stk_fkey FOREIGN KEY (id_motivo_stk) REFERENCES public.motivos_mov_stock(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: cpt_movimiento_stock cpt_movimiento_stock_id_propiedad_ganado_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_movimiento_stock
    ADD CONSTRAINT cpt_movimiento_stock_id_propiedad_ganado_fkey FOREIGN KEY (id_propiedad_ganado) REFERENCES public.propiedad_ganado(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: cpt_movimiento_stock cpt_movimiento_stock_id_tipo_toma_peso_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_movimiento_stock
    ADD CONSTRAINT cpt_movimiento_stock_id_tipo_toma_peso_fkey FOREIGN KEY (id_tipo_toma_peso) REFERENCES public.tipos_toma_peso(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: cpt_movimiento_stock cpt_movimiento_stock_valor_dicose_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_movimiento_stock
    ADD CONSTRAINT cpt_movimiento_stock_valor_dicose_fkey FOREIGN KEY (valor_dicose) REFERENCES public.dicoses(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: cpt_pago_fact_prov cpt_pago_fact_prov_id_estado_pago_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_pago_fact_prov
    ADD CONSTRAINT cpt_pago_fact_prov_id_estado_pago_fkey FOREIGN KEY (id_estado_pago) REFERENCES public.estado_pago(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpt_pago_fact_prov cpt_pago_fact_prov_id_moneda_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_pago_fact_prov
    ADD CONSTRAINT cpt_pago_fact_prov_id_moneda_fkey FOREIGN KEY (id_moneda) REFERENCES public.monedas(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpt_pago_fact_prov cpt_pago_fact_prov_id_titular_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_pago_fact_prov
    ADD CONSTRAINT cpt_pago_fact_prov_id_titular_fkey FOREIGN KEY (id_titular) REFERENCES public.titulares(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpt_recaravaneo cpt_recaravaneo_cod_articulo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_recaravaneo
    ADD CONSTRAINT cpt_recaravaneo_cod_articulo_fkey FOREIGN KEY (cod_articulo) REFERENCES public.articulos(cod_articulo) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpt_registro_sanitario cpt_registro_sanitario_cod_articulo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_registro_sanitario
    ADD CONSTRAINT cpt_registro_sanitario_cod_articulo_fkey FOREIGN KEY (cod_articulo) REFERENCES public.articulos(cod_articulo) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: cpt_registro_sanitario cpt_registro_sanitario_id_empresa_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_registro_sanitario
    ADD CONSTRAINT cpt_registro_sanitario_id_empresa_fkey FOREIGN KEY (id_empresa) REFERENCES public.empresas(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpt_registro_sanitario cpt_registro_sanitario_id_motivo_sanitario_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_registro_sanitario
    ADD CONSTRAINT cpt_registro_sanitario_id_motivo_sanitario_fkey FOREIGN KEY (id_motivo_sanitario) REFERENCES public.motivos_sanitarios(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpt_registros_gasto cpt_registros_gasto_id_moneda_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_registros_gasto
    ADD CONSTRAINT cpt_registros_gasto_id_moneda_fkey FOREIGN KEY (id_moneda) REFERENCES public.monedas(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpt_registros_gasto cpt_registros_gasto_id_tipo_gasto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_registros_gasto
    ADD CONSTRAINT cpt_registros_gasto_id_tipo_gasto_fkey FOREIGN KEY (id_tipo_gasto) REFERENCES public.tipos_gasto(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cpt_registros_gasto cpt_registros_gasto_id_titular_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.cpt_registros_gasto
    ADD CONSTRAINT cpt_registros_gasto_id_titular_fkey FOREIGN KEY (id_titular) REFERENCES public.titulares(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: depositos depositos_id_departamento_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.depositos
    ADD CONSTRAINT depositos_id_departamento_fkey FOREIGN KEY (id_departamento) REFERENCES public.departamentos(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: depositos depositos_id_usuario_id_empresa_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.depositos
    ADD CONSTRAINT depositos_id_usuario_id_empresa_fkey FOREIGN KEY (id_usuario, id_empresa) REFERENCES public.usuarios_x_empresas(id_usuario, id_empresa) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: marcas_ganado marcas_ganado_id_tipo_ganado_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.marcas_ganado
    ADD CONSTRAINT marcas_ganado_id_tipo_ganado_fkey FOREIGN KEY (id_tipo_ganado) REFERENCES public.tipos_ganado(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: motivos_mov_stock motivos_mov_stock_id_tipo_mov_stk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.motivos_mov_stock
    ADD CONSTRAINT motivos_mov_stock_id_tipo_mov_stk_fkey FOREIGN KEY (id_tipo_mov_stk) REFERENCES public.tipos_mov_stock(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: motivos_sanitarios motivos_sanitarios_cod_articulo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.motivos_sanitarios
    ADD CONSTRAINT motivos_sanitarios_cod_articulo_fkey FOREIGN KEY (cod_articulo) REFERENCES public.articulos(cod_articulo) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: pasturas_x_sector pasturas_x_sector_id_pastura_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.pasturas_x_sector
    ADD CONSTRAINT pasturas_x_sector_id_pastura_fkey FOREIGN KEY (id_pastura) REFERENCES public.pasturas(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: pasturas_x_sector pasturas_x_sector_id_sector_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.pasturas_x_sector
    ADD CONSTRAINT pasturas_x_sector_id_sector_fkey FOREIGN KEY (id_sector) REFERENCES public.sectores(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: permisos_x_rol_seccion permisos_x_rol_seccion_id_accion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.permisos_x_rol_seccion
    ADD CONSTRAINT permisos_x_rol_seccion_id_accion_fkey FOREIGN KEY (id_accion) REFERENCES public.acciones(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: permisos_x_rol_seccion permisos_x_rol_seccion_id_rol_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.permisos_x_rol_seccion
    ADD CONSTRAINT permisos_x_rol_seccion_id_rol_fkey FOREIGN KEY (id_rol) REFERENCES public.roles(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: permisos_x_rol_seccion permisos_x_rol_seccion_id_seccion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.permisos_x_rol_seccion
    ADD CONSTRAINT permisos_x_rol_seccion_id_seccion_fkey FOREIGN KEY (id_seccion) REFERENCES public.secciones(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: permisos_x_usuario_seccion permisos_x_usuario_seccion_id_accion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.permisos_x_usuario_seccion
    ADD CONSTRAINT permisos_x_usuario_seccion_id_accion_fkey FOREIGN KEY (id_accion) REFERENCES public.acciones(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: permisos_x_usuario_seccion permisos_x_usuario_seccion_id_seccion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.permisos_x_usuario_seccion
    ADD CONSTRAINT permisos_x_usuario_seccion_id_seccion_fkey FOREIGN KEY (id_seccion) REFERENCES public.secciones(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: permisos_x_usuario_seccion permisos_x_usuario_seccion_id_usuario_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.permisos_x_usuario_seccion
    ADD CONSTRAINT permisos_x_usuario_seccion_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: sectores sectores_id_deposito_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.sectores
    ADD CONSTRAINT sectores_id_deposito_fkey FOREIGN KEY (id_deposito) REFERENCES public.depositos(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: tipo_cambio_diario tipo_cambio_diario_id_moneda_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.tipo_cambio_diario
    ADD CONSTRAINT tipo_cambio_diario_id_moneda_fkey FOREIGN KEY (id_moneda) REFERENCES public.monedas(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: titulares titulares_id_categoria_cliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.titulares
    ADD CONSTRAINT titulares_id_categoria_cliente_fkey FOREIGN KEY (id_categoria_cliente) REFERENCES public.categorias_cliente(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: titulares titulares_id_categoria_prov_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.titulares
    ADD CONSTRAINT titulares_id_categoria_prov_fkey FOREIGN KEY (id_categoria_prov) REFERENCES public.categorias_prov(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: titulares titulares_id_empresa_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.titulares
    ADD CONSTRAINT titulares_id_empresa_fkey FOREIGN KEY (id_empresa) REFERENCES public.empresas(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: titulares titulares_id_tipo_titular_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.titulares
    ADD CONSTRAINT titulares_id_tipo_titular_fkey FOREIGN KEY (id_tipo_titular) REFERENCES public.tipos_titulares(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: usuarios usuarios_id_rol_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_id_rol_fkey FOREIGN KEY (id_rol) REFERENCES public.roles(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: usuarios_x_empresas usuarios_x_empresas_id_empresa_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.usuarios_x_empresas
    ADD CONSTRAINT usuarios_x_empresas_id_empresa_fkey FOREIGN KEY (id_empresa) REFERENCES public.empresas(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: usuarios_x_empresas usuarios_x_empresas_id_usuario_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mariaelena
--

ALTER TABLE ONLY public.usuarios_x_empresas
    ADD CONSTRAINT usuarios_x_empresas_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 13.11 (Debian 13.11-1.pgdg110+1)
-- Dumped by pg_dump version 13.11 (Debian 13.11-1.pgdg110+1)

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

DROP DATABASE postgres;
--
-- Name: postgres; Type: DATABASE; Schema: -; Owner: mariaelena
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';


ALTER DATABASE postgres OWNER TO mariaelena;

\connect postgres

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
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: mariaelena
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database cluster dump complete
--

